"--------------------------------------------------------------------------
" General settings
"--------------------------------------------------------------------------

set expandtab
set shiftwidth=4
set tabstop=4
set hidden
set relativenumber
set number
set termguicolors
set undofile
" set spell
set title
set ignorecase
set smartcase
set wildmode=longest:full,full
set nowrap
set list
set listchars=tab:▸\ ,trail:·
set mouse=a
set scrolloff=8
set sidescrolloff=8
set nojoinspaces
set splitright
set clipboard=unnamedplus
set confirm
set exrc
set backup
set updatetime=300 " Reduce time for highlighting other references
set redrawtime=10000 " Allow more time for loading syntax on large files

"--------------------------------------------------------------------------
" Key maps
"--------------------------------------------------------------------------

let mapleader = "\<space>"

" Reselect visual selection after indenting
vnoremap < <gv
vnoremap > >gv

" Maintain the cursor position when yanking a visual selection
" http://ddrscott.github.io/blog/2016/yank-without-jank/
vnoremap y myy`y
vnoremap Y myY`y

" Allow gf to open non-existent files
map gf :edit <cfile><cr>

" Quicky escape to normal mode
imap jj <esc>

"--------------------------------------------------------------------------
" Plugins
"--------------------------------------------------------------------------

call plug#begin('~/.config/nvim/plugins')

source ~/.config/nvim/plugins/dracula.vim
source ~/.config/nvim/plugins/afterglow.vim
source ~/.config/nvim/plugins/airline.vim
source ~/.config/nvim/plugins/editorconfig.vim
source ~/.config/nvim/plugins/markdown-preview.vim
source ~/.config/nvim/plugins/nerdtree.vim
source ~/.config/nvim/plugins/coc.vim
source ~/.config/nvim/plugins/quick-scope.vim
source ~/.config/nvim/plugins/commentary.vim
source ~/.config/nvim/plugins/fzf-vim.vim
source ~/.config/nvim/plugins/floaterm.vim
" source ~/.config/nvim/plugins/fugitive.vim
" source ~/.config/nvim/plugins/ipythonslime.vim
source ~/.config/nvim/plugins/tagbar.vim
source ~/.config/nvim/plugins/dashboard.vim

call plug#end()
doautocmd User PlugLoaded

"--------------------------------------------------------------------------
" Miscellaneous
"--------------------------------------------------------------------------

augroup FileTypeOverrides
    autocmd!
    " Use '//' instead of '/* */' comments
    autocmd FileType php setlocal commentstring=//%s
    autocmd TermOpen * setlocal nospell
augroup END

