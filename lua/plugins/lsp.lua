return {
  -- lspconfig
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "mason.nvim",
      { "mason-org/mason-lspconfig.nvim", config = function() end },
    },
    opts = {
      diagnostics = {
        virtual_text = {},
      },
    },
    config = function(_, opts)
      vim.diagnostic.config(vim.deepcopy(opts.diagnostics))
    end,
  },

  -- cmdline tools and lsp servers
  {
    "mason-org/mason.nvim",
    opts = {}
  },
}
