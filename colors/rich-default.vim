if exists('g:colors_name')
    highlight clear
    if exists('syntax_on')
        syntax reset
    endif
endif
let g:colors_name='rich-default'

" By default do not color the cursor.
let g:moonflyCursorColor = get(g:, 'moonflyCursorColor', 0)


" By default use the moonfly color palette in the `:terminal`
let g:moonflyTerminalColors = get(g:, 'moonflyTerminalColors', 1)

" By default do display vertical split columns.
let g:moonflyWinSeparator = get(g:, 'moonflyWinSeparator', 1)

" By default do not use a transparent background in GUI versions of Vim.
let g:moonflyTransparent = get(g:, 'moonflyTransparent', 0)

" By default do not underline matching parentheses.
let g:moonflyUnderlineMatchParen = get(g:, 'moonflyUnderlineMatchParen', 0)

" By default do not use a customized 'NormalFloat' highlight group (for Neovim

" floating windows).
let g:moonflyNormalFloat = get(g:, 'moonflyNormalFloat', 0)

" Background and foreground
let s:black     = {"hex": '#080808', "term": 232}
let s:white     = {"hex": '#c6c6c6', "term": 251}
" Variations of charcoal-grey
let s:grey0     = {"hex": '#323437', "term": 0  }
let s:grey254   = {"hex": '#e4e4e4', "term": 254}
let s:grey249   = {"hex": '#b2b2b2', "term": 249}
let s:grey247   = {"hex": '#9e9e9e', "term": 247}
let s:grey246   = {"hex": '#949494', "term": 246}
let s:grey244   = {"hex": '#808080', "term": 244}
let s:grey241   = {"hex": '#626262', "term": 241}
let s:grey237   = {"hex": '#3a3a3a', "term": 237}
let s:grey236   = {"hex": '#303030', "term": 236}
let s:grey235   = {"hex": '#262626', "term": 235}
let s:grey234   = {"hex": '#1c1c1c', "term": 234}
let s:grey233   = {"hex": '#121212', "term": 233}
" Core theme colors
let s:khaki     = {"hex": '#c2c292', "term": 11}
let s:yellow    = {"hex": '#e3c78a', "term": 3 }
let s:orange    = {"hex": '#de935f', "term": 7 }
let s:coral     = {"hex": '#f09479', "term": 8 }
let s:lime      = {"hex": '#85dc85', "term": 14}
let s:green     = {"hex": '#8cc85f', "term": 2 }
let s:emerald   = {"hex": '#36c692', "term": 10}
let s:blue      = {"hex": '#80a0ff', "term": 4 }
let s:sky       = {"hex": '#74b2ff', "term": 12}
let s:turquoise = {"hex": '#79dac8', "term": 6 }
let s:purple    = {"hex": '#ae81ff', "term": 13}
let s:cranberry = {"hex": '#e2637f', "term": 15}
let s:violet    = {"hex": '#d183e8', "term": 5 }
let s:crimson   = {"hex": '#ff5189', "term": 9 }
let s:red       = {"hex": '#ff5454', "term": 1 }
" Extra colors
let s:spring    = {"hex": '#00875f', "term": 29}


" Specify the colors used by the inbuilt terminal of Neovim and Vim
if g:moonflyTerminalColors
    if has('nvim')
        let g:terminal_color_0  = s:grey0.hex
        let g:terminal_color_1  = s:red.hex
        let g:terminal_color_2  = s:green.hex
        let g:terminal_color_3  = s:yellow.hex
        let g:terminal_color_4  = s:blue.hex
        let g:terminal_color_5  = s:violet.hex
        let g:terminal_color_6  = s:turquoise.hex
        let g:terminal_color_7  = s:white.hex
        let g:terminal_color_8  = s:grey246.hex
        let g:terminal_color_9  = s:crimson.hex
        let g:terminal_color_10 = s:emerald.hex
        let g:terminal_color_11 = s:khaki.hex
        let g:terminal_color_12 = s:sky.hex
        let g:terminal_color_13 = s:purple.hex
        let g:terminal_color_14 = s:lime.hex
        let g:terminal_color_15 = s:grey254.hex
    else
        let g:terminal_ansi_colors = [
                    \ s:grey0.hex, s:red.hex, s:green.hex, s:yellow.hex,
                    \ s:blue.hex, s:violet.hex, s:turquoise.hex, s:white.hex,
                    \ s:grey246.hex, s:crimson.hex, s:emerald.hex, s:khaki.hex,
                    \ s:sky.hex, s:purple.hex, s:lime.hex, s:grey254.hex
                    \]
    endif
endif

" Background and text
if g:moonflyTransparent
    exec 'highlight Normal ctermbg=' . s:black.term . ' ctermfg=' . s:white.term . ' guibg=NONE guifg=' . s:white.hex
else
    exec 'highlight Normal ctermbg=' . s:black.term . ' ctermfg=' . s:white.term . ' guibg=' . s:black.hex . ' guifg=' . s:white.hex
endif


" Custom moonfly highlight groups
exec 'highlight MoonflyReset ctermfg=fg guifg=fg'
exec 'highlight MoonflyVisual ctermbg=' . s:grey0.term . ' guibg=' . s:grey0.hex
exec 'highlight MoonflyWhite ctermfg=' . s:white.term . ' guifg=' . s:white.hex
exec 'highlight MoonflyGrey0 ctermfg=' . s:grey0.term . ' guifg=' . s:grey0.hex
exec 'highlight MoonflyGrey254 ctermfg=' . s:grey254.term . ' guifg=' . s:grey254.hex
exec 'highlight MoonflyGrey249 ctermfg=' . s:grey249.term . ' guifg=' . s:grey249.hex
exec 'highlight MoonflyGrey247 ctermfg=' . s:grey247.term . ' guifg=' . s:grey247.hex
exec 'highlight MoonflyGrey246 ctermfg=' . s:grey246.term . ' guifg=' . s:grey246.hex
exec 'highlight MoonflyGrey241 ctermfg=' . s:grey241.term . ' guifg=' . s:grey241.hex
exec 'highlight MoonflyGrey236 ctermfg=' . s:grey236.term . ' guifg=' . s:grey236.hex
exec 'highlight MoonflyKhaki ctermfg=' . s:khaki.term . ' guifg=' . s:khaki.hex
exec 'highlight MoonflyYellow ctermfg=' . s:yellow.term . ' guifg=' . s:yellow.hex
exec 'highlight MoonflyOrange ctermfg=' . s:orange.term . ' guifg=' . s:orange.hex
exec 'highlight MoonflyCoral ctermfg=' . s:coral.term . ' guifg=' . s:coral.hex
exec 'highlight MoonflyLime ctermfg=' . s:lime.term . ' guifg=' . s:lime.hex
exec 'highlight MoonflyGreen ctermfg=' . s:green.term . ' guifg=' . s:green.hex
exec 'highlight MoonflyEmerald ctermfg=' . s:emerald.term . ' guifg=' . s:emerald.hex
exec 'highlight MoonflyBlue ctermfg=' . s:blue.term . ' guifg=' . s:blue.hex
exec 'highlight MoonflySky ctermfg=' . s:sky.term . ' guifg=' . s:sky.hex
exec 'highlight MoonflyTurquoise ctermfg=' . s:turquoise.term . ' guifg=' . s:turquoise.hex
exec 'highlight MoonflyPurple ctermfg=' . s:purple.term . ' guifg=' . s:purple.hex
exec 'highlight MoonflyCranberry ctermfg=' . s:cranberry.term . ' guifg=' . s:cranberry.hex
exec 'highlight MoonflyViolet ctermfg=' . s:violet.term . ' guifg=' . s:violet.hex
exec 'highlight MoonflyCrimson ctermfg=' . s:crimson.term . ' guifg=' . s:crimson.hex
exec 'highlight MoonflyRed ctermfg=' . s:red.term . ' guifg=' . s:red.hex
exec 'highlight MoonflyWhiteAlert ctermbg=bg ctermfg=' . s:white.term . ' guibg=bg guifg=' . s:white.hex
exec 'highlight MoonflyYellowAlert ctermbg=bg ctermfg=' . s:yellow.term . ' guibg=bg guifg=' . s:yellow.hex
exec 'highlight MoonflyCoralAlert ctermbg=bg ctermfg=' . s:coral.term . ' guibg=bg guifg=' . s:coral.hex
exec 'highlight MoonflyEmeraldAlert ctermbg=bg ctermfg=' . s:emerald.term . ' guibg=bg guifg=' . s:emerald.hex
exec 'highlight MoonflyPurpleAlert ctermbg=bg ctermfg=' . s:purple.term . ' guibg=bg guifg=' . s:purple.hex
exec 'highlight MoonflySkyAlert ctermbg=bg ctermfg=' . s:sky.term . ' guibg=bg guifg=' . s:sky.hex
exec 'highlight MoonflyRedAlert ctermbg=bg ctermfg=' . s:red.term . ' guibg=bg guifg=' . s:red.hex



" Status, split and tab lines
exec 'highlight StatusLine ctermbg=' . s:grey236.term . '  ctermfg=' . s:white.term . ' cterm=none guibg=' . s:grey236.hex . ' guifg=' . s:white.hex . ' gui=none'
exec 'highlight StatusLineNC ctermbg=' . s:grey236.term . ' ctermfg=' . s:grey247.term . ' cterm=none guibg=' . s:grey236.hex . ' guifg=' . s:grey247.hex . ' gui=none'

exec 'highlight Tabline ctermbg=' . s:grey236.term . ' ctermfg=' . s:grey247.term . ' cterm=none guibg=' . s:grey236.hex . ' guifg=' . s:grey247.hex . ' gui=none'
exec 'highlight TablineSel ctermbg=' . s:grey236.term . ' ctermfg=' . s:blue.term . ' cterm=none guibg=' . s:grey236.hex . ' guifg=' . s:blue.hex . ' gui=none'
exec 'highlight TablineFill ctermbg=' . s:grey236.term . ' ctermfg=' . s:grey236.term . ' cterm=none guibg=' . s:grey236.hex . ' guifg=' . s:grey236.hex . ' gui=none'
exec 'highlight StatusLineTerm ctermbg=' . s:grey236.term . ' ctermfg=' . s:white.term . ' cterm=none guibg=' . s:grey236.hex . ' guifg=' . s:white.hex . ' gui=none'
exec 'highlight StatusLineTermNC ctermbg=' . s:grey236.term . ' ctermfg=' . s:grey247.term . ' cterm=none guibg=' . s:grey236.hex . ' guifg=' . s:grey247.hex . ' gui=none'
if g:moonflyWinSeparator == 0
    exec 'highlight VertSplit ctermbg=' . s:black.term . ' ctermfg=' . s:black.term . ' cterm=none guibg=' . s:black.hex . ' guifg=' . s:black.hex . ' gui=none'
elseif g:moonflyWinSeparator == 1
    exec 'highlight VertSplit ctermbg=' . s:grey236.term . ' ctermfg=' . s:grey236.term . ' cterm=none guibg=' . s:grey236.hex . ' guifg=' . s:grey236.hex . ' gui=none'
else
    exec 'highlight VertSplit ctermbg=NONE ctermfg=' . s:grey236.term . ' cterm=none guibg=NONE guifg=' . s:grey236.hex . ' gui=none'
end

" Visual selection
highlight! link Visual MoonflyVisual
exec 'highlight VisualNOS ctermbg=' . s:grey0.term . ' ctermfg=fg cterm=none guibg=' . s:grey0.hex . ' guifg=fg gui=none'
exec 'highlight VisualInDiff ctermbg=' . s:grey0.term . ' ctermfg=' . s:white.term . ' guibg=' . s:grey0.hex . ' guifg=' . s:white.hex

" Errors, warnings and whitespace-eol
exec 'highlight Error ctermbg=bg ctermfg=' . s:red.term . ' guibg=bg guifg=' . s:red.hex
exec 'highlight ErrorMsg ctermbg=bg ctermfg=' . s:red.term . ' guibg=bg guifg=' . s:red.hex
exec 'highlight WarningMsg ctermbg=bg ctermfg=' . s:orange.term . ' guibg=bg guifg=' . s:orange.hex

" Auto-text-completion menu
exec 'highlight Pmenu ctermbg=' . s:grey235.term . ' ctermfg=fg guibg=' . s:grey235.hex . ' guifg=fg'
exec 'highlight PmenuSel ctermbg=' . s:spring.term . ' ctermfg=' . s:grey254.term . ' guibg=' . s:spring.hex . ' guifg=' . s:grey254.hex
exec 'highlight PmenuSbar ctermbg=' . s:grey235.term . ' guibg=' . s:grey235.hex
exec 'highlight PmenuThumb ctermbg=' . s:grey244.term . ' guibg=' . s:grey244.hex
exec 'highlight WildMenu ctermbg=' . s:spring.term . ' ctermfg=' . s:grey254.term . ' guibg=' . s:spring.hex . ' guifg=' . s:grey254.hex

" Misc
exec 'highlight Question ctermfg=' . s:lime.term . ' guifg=' . s:lime.hex . ' gui=none'
exec 'highlight MoreMsg ctermfg=' . s:red.term . ' guifg=' . s:red.hex . ' gui=none'
exec 'highlight LineNr ctermbg=bg ctermfg=' . s:grey241.term . ' guibg=bg guifg=' . s:grey241.hex . ' gui=none'
if g:moonflyCursorColor
    exec 'highlight Cursor ctermfg=bg ctermbg=' . s:blue.term . ' guifg=bg guibg=' . s:blue.hex
else
    exec 'highlight Cursor ctermfg=bg ctermbg=' . s:grey247.term . ' guifg=bg guibg=' . s:grey247.hex
endif
exec 'highlight lCursor ctermfg=bg ctermbg=' . s:grey247.term . ' guifg=bg guibg=' . s:grey247.hex
exec 'highlight CursorLineNr ctermbg=' . s:grey234.term . ' ctermfg=' . s:blue.term . ' cterm=none guibg=' . s:grey234.hex . ' guifg=' . s:blue.hex . ' gui=none'
exec 'highlight CursorColumn ctermbg=' . s:grey234.term . ' cterm=none guibg=' . s:grey234.hex
exec 'highlight CursorLine ctermbg=' . s:grey234.term . ' cterm=none guibg=' . s:grey234.hex
exec 'highlight Folded ctermbg=' . s:grey234.term . ' ctermfg=' . s:lime.term . ' guibg=' . s:grey234.hex . ' guifg='. s:lime.hex
exec 'highlight FoldColumn ctermbg=' . s:grey236.term . ' ctermfg=' . s:lime.term . ' guibg=' . s:grey236.hex . ' guifg=' . s:lime.hex
exec 'highlight SignColumn ctermbg=bg ctermfg=' . s:lime.term . ' guibg=bg guifg=' . s:lime.hex
exec 'highlight Todo ctermbg=' . s:yellow.term . ' ctermfg=' . s:black.term . ' guibg=' . s:yellow.hex . ' guifg=' . s:black.hex
exec 'highlight SpecialKey ctermbg=bg ctermfg=' . s:sky.term . ' guibg=bg guifg=' . s:sky.hex
if g:moonflyUnderlineMatchParen
    exec 'highlight MatchParen ctermbg=bg cterm=underline guibg=bg gui=underline'
else
    highlight! link MatchParen MoonflyVisual
endif
exec 'highlight Ignore ctermfg=' . s:sky.term . ' guifg=' . s:sky.hex
exec 'highlight Underlined ctermfg=' . s:emerald.term . ' cterm=none guifg=' . s:emerald.hex . ' gui=none'
exec 'highlight QuickFixLine ctermbg=' . s:grey237.term . ' cterm=none guibg=' . s:grey237.hex
highlight! link Delimiter MoonflyWhite
highlight! link qfFileName MoonflyEmerald

" Color column (after line 80)
exec 'highlight ColorColumn ctermbg=' . s:grey233.term . ' guibg=' . s:grey233.hex

" Conceal color
exec 'highlight Conceal ctermbg=NONE ctermfg=' . s:grey249.term . ' guibg=NONE guifg=' . s:grey249.hex

" Neovim only highlight groups
if has('nvim')
    exec 'highlight Whitespace ctermfg=' . s:grey235.term . ' guifg=' . s:grey235.hex
    exec 'highlight TermCursor ctermbg=' . s:grey247.term . ' ctermfg=bg cterm=none guibg=' . s:grey247.hex . ' guifg=bg gui=none'
    if g:moonflyNormalFloat
        exec 'highlight NormalFloat ctermbg=bg ctermfg=' . s:grey249.term . ' guibg=bg guifg=' . s:grey249.hex
    else
        exec 'highlight NormalFloat ctermbg=' . s:grey234.term . ' ctermfg=fg guibg=' . s:grey234.hex . ' guifg=fg'
    endif
    exec 'highlight FloatBorder ctermbg=bg ctermfg=' . s:grey236.term . ' guibg=bg guifg=' . s:grey236.hex
    exec 'highlight WinBar ctermbg=' . s:grey235.term . '  ctermfg=' . s:white.term . ' cterm=none guibg=' . s:grey235.hex . ' guifg=' . s:white.hex . ' gui=none'
    exec 'highlight WinBarNC ctermbg=' . s:grey235.term . ' ctermfg=' . s:grey247.term . ' cterm=none guibg=' . s:grey235.hex . ' guifg=' . s:grey247.hex . ' gui=none'
    highlight! link WinSeparator VertSplit

    " Neovim Treesitter
    highlight! link TSAnnotation MoonflyViolet
    highlight! link TSAttribute MoonflySky
    highlight! link TSConstant MoonflyTurquoise
    highlight! link TSConstBuiltin MoonflyGreen
    highlight! link TSConstMacro MoonflyViolet
    highlight! link TSConstructor MoonflyEmerald
    highlight! link TSFuncBuiltin MoonflySky
    highlight! link TSFuncMacro MoonflySky
    highlight! link TSInclude MoonflyCranberry
    highlight! link TSKeywordOperator MoonflyViolet
    highlight! link TSNamespace MoonflyBlue
    highlight! link TSParameter MoonflyWhite
    highlight! link TSPunctSpecial MoonflyCranberry
    highlight! link TSSymbol MoonflyPurple
    highlight! link TSTag MoonflyBlue
    highlight! link TSTagDelimiter MoonflyLime
    highlight! link TSVariableBuiltin MoonflyLime
    highlight! link bashTSParameter MoonflyTurquoise
    highlight! link cssTSPunctDelimiter MoonflyCranberry
    highlight! link cssTSType MoonflyBlue
    highlight! link scssTSPunctDelimiter MoonflyCranberry
    highlight! link scssTSType MoonflyBlue
    highlight! link scssTSVariable MoonflyTurquoise
    highlight! link yamlTSField MoonflySky
    highlight! link yamlTSPunctDelimiter MoonflyCranberry
endif


" Git commits
highlight! link gitCommitBranch MoonflySky
highlight! link gitCommitDiscardedFile MoonflyCrimson
highlight! link gitCommitDiscardedType MoonflySky
highlight! link gitCommitHeader MoonflyPurple
highlight! link gitCommitSelectedFile MoonflyEmerald
highlight! link gitCommitSelectedType MoonflySky
highlight! link gitCommitUntrackedFile MoonflyCranberry

highlight! link gitEmail MoonflyBlue

" Git commit diffs
highlight! link diffAdded MoonflyGreen
highlight! link diffChanged MoonflyCrimson
highlight! link diffIndexLine MoonflyCrimson
highlight! link diffLine MoonflySky
highlight! link diffRemoved MoonflyRed
highlight! link diffSubname MoonflySky

" Tagbar plugin
highlight! link TagbarFoldIcon MoonflyGrey247
highlight! link TagbarVisibilityPublic MoonflyLime
highlight! link TagbarVisibilityProtected MoonflyLime
highlight! link TagbarVisibilityPrivate MoonflyLime
highlight! link TagbarKind MoonflyEmerald

" NERDTree plugin
highlight! link NERDTreeClosable MoonflyEmerald
highlight! link NERDTreeCWD MoonflyPurple
highlight! link NERDTreeDir MoonflySky
highlight! link NERDTreeDirSlash MoonflyCranberry
highlight! link NERDTreeExecFile MoonflyKhaki
highlight! link NERDTreeFile MoonflyWhite
highlight! link NERDTreeHelp MoonflyGrey247
highlight! link NERDTreeLinkDir MoonflyBlue
highlight! link NERDTreeLinkFile MoonflyBlue
highlight! link NERDTreeLinkTarget MoonflyTurquoise
highlight! link NERDTreeOpenable MoonflyEmerald
highlight! link NERDTreePart MoonflyGrey0
highlight! link NERDTreePartFile MoonflyGrey0
highlight! link NERDTreeUp MoonflyBlue

" NERDTree Git plugin
highlight! link NERDTreeGitStatusDirDirty MoonflyKhaki
highlight! link NERDTreeGitStatusModified MoonflyCrimson
highlight! link NERDTreeGitStatusRenamed MoonflySky
highlight! link NERDTreeGitStatusStaged MoonflySky
highlight! link NERDTreeGitStatusUntracked MoonflyRed

" Neovim only plugins
if has('nvim')
    " NvimTree plugin
    highlight! link NvimTreeFolderIcon MoonflyBlue
    highlight! link NvimTreeFolderName MoonflyBlue
    highlight! link NvimTreeIndentMarker MoonflyGrey236
    highlight! link NvimTreeOpenedFolderName MoonflyBlue
    highlight! link NvimTreeRootFolder MoonflyPurple
    highlight! link NvimTreeSpecialFile MoonflyYellow
    highlight! link NvimTreeWindowPicker DiffChange
    exec 'highlight NvimTreeExecFile ctermfg=' . s:green.term . ' guifg=' . s:green.hex . ' gui=none'
    exec 'highlight NvimTreeImageFile ctermfg=' . s:violet.term . ' guifg=' . s:violet.hex . ' gui=none'
    exec 'highlight NvimTreeOpenedFile ctermfg=' . s:yellow.term . ' guifg=' . s:yellow.hex . ' gui=none'

    exec 'highlight NvimTreeSymlink ctermfg=' . s:turquoise.term . ' guifg=' . s:turquoise.hex . ' gui=none'

    " Telescope plugin
    highlight! link TelescopeBorder MoonflyGrey236
    highlight! link TelescopeMatching MoonflyCoral
    highlight! link TelescopeMultiSelection MoonflyCrimson
    highlight! link TelescopeNormal MoonflyGrey249
    highlight! link TelescopePreviewDate MoonflyGrey246
    highlight! link TelescopePreviewGroup MoonflyGrey246
    highlight! link TelescopePreviewLink MoonflyTurquoise
    highlight! link TelescopePreviewMatch MoonflyVisual
    highlight! link TelescopePreviewRead MoonflyOrange
    highlight! link TelescopePreviewSize MoonflyEmerald
    highlight! link TelescopePreviewUser MoonflyGrey246
    highlight! link TelescopePromptPrefix MoonflyBlue
    highlight! link TelescopeResultsDiffAdd MoonflyGreen
    highlight! link TelescopeResultsDiffChange MoonflyRed
    highlight! link TelescopeResultsSpecialComment MoonflyGrey241
    highlight! link TelescopeSelectionCaret MoonflyCrimson
    highlight! link TelescopeTitle MoonflyGrey241
    exec 'highlight TelescopeSelection ctermbg=' . s:grey0.term . ' ctermfg=' . s:grey254.term . ' guibg=' . s:grey0.hex . ' guifg=' . s:grey254.hex

    " gitsigns.nvim plugin
    highlight! link GitSignsAdd MoonflyEmeraldAlert
    highlight! link GitSignsChange MoonflyYellowAlert
    highlight! link GitSignsChangeNr MoonflyYellowAlert
    highlight! link GitSignsChangeLn MoonflyYellowAlert
    highlight! link GitSignsChangeDelete MoonflyCoralAlert
    highlight! link GitSignsDelete MoonflyRedAlert

    " Hop plugin
    highlight! link HopCursor IncSearch
    highlight! link HopNextKey MoonflyYellow
    highlight! link HopNextKey1 MoonflyBlue
    highlight! link HopNextKey2 MoonflyCrimson
    highlight! link HopUnmatched MoonflyGrey247

    " Barbar plugin
    exec 'highlight BufferCurrent      ctermbg=' . s:grey234.term . ' ctermfg=' . s:white.term . '   guibg=' . s:grey234.hex . ' guifg=' . s:white.hex
    exec 'highlight BufferCurrentIndex ctermbg=' . s:grey234.term . ' ctermfg=' . s:white.term . '   guibg=' . s:grey234.hex . ' guifg=' . s:white.hex
    exec 'highlight BufferCurrentMod   ctermbg=' . s:grey234.term . ' ctermfg=' . s:khaki.term . '   guibg=' . s:grey234.hex . ' guifg=' . s:khaki.hex
    exec 'highlight BufferCurrentSign  ctermbg=' . s:grey234.term . ' ctermfg=' . s:blue.term . '    guibg=' . s:grey234.hex . ' guifg=' . s:blue.hex
    exec 'highlight BufferVisible      ctermbg=' . s:grey234.term . ' ctermfg=' . s:grey246.term . ' guibg=' . s:grey234.hex . ' guifg=' . s:grey246.hex
    exec 'highlight BufferVisibleIndex ctermbg=' . s:grey234.term . ' ctermfg=' . s:grey246.term . ' guibg=' . s:grey234.hex . ' guifg=' . s:grey246.hex
    exec 'highlight BufferVisibleMod   ctermbg=' . s:grey234.term . ' ctermfg=' . s:khaki.term . '   guibg=' . s:grey234.hex . ' guifg=' . s:khaki.hex
    exec 'highlight BufferVisibleSign  ctermbg=' . s:grey234.term . ' ctermfg=' . s:grey246.term . ' guibg=' . s:grey234.hex . ' guifg=' . s:grey246.hex
    exec 'highlight BufferInactive     ctermbg=' . s:grey236.term . ' ctermfg=' . s:grey246.term . ' guibg=' . s:grey236.hex . ' guifg=' . s:grey246.hex
    exec 'highlight BufferInactiveMod  ctermbg=' . s:grey236.term . ' ctermfg=' . s:khaki.term . '   guibg=' . s:grey236.hex . ' guifg=' . s:khaki.hex
    exec 'highlight BufferInactiveSign ctermbg=' . s:grey236.term . ' ctermfg=' . s:grey247.term . ' guibg=' . s:grey236.hex . ' guifg=' . s:grey247.hex

    " nvim-cmp plugin
    highlight! link CmpItemAbbrMatch MoonflyYellow
    highlight! link CmpItemAbbrMatchFuzzy MoonflyCoral
    highlight! link CmpItemKindDefault MoonflyWhite
    highlight! link CmpItemKindClass MoonflyEmerald
    highlight! link CmpItemKindColor MoonflyTurquoise
    highlight! link CmpItemKindConstant MoonflyPurple
    highlight! link CmpItemKindConstructor MoonflySky
    highlight! link CmpItemKindEnum MoonflyViolet
    highlight! link CmpItemKindEnumMember MoonflyTurquoise
    highlight! link CmpItemKindEvent MoonflyViolet
    highlight! link CmpItemKindField MoonflyTurquoise
    highlight! link CmpItemKindFile MoonflyBlue
    highlight! link CmpItemKindFolder MoonflyBlue
    highlight! link CmpItemKindFunction MoonflySky
    highlight! link CmpItemKindInterface MoonflyEmerald
    highlight! link CmpItemKindKeyword MoonflyViolet
    highlight! link CmpItemKindMethod MoonflySky
    highlight! link CmpItemKindModule MoonflyEmerald
    highlight! link CmpItemKindOperator MoonflyViolet
    highlight! link CmpItemKindProperty MoonflyTurquoise
    highlight! link CmpItemKindReference MoonflyTurquoise
    highlight! link CmpItemKindStruct MoonflyEmerald
    highlight! link CmpItemKindTypeParameter MoonflyEmerald
    highlight! link CmpItemKindUnit MoonflyTurquoise
    highlight! link CmpItemKindValue MoonflyTurquoise
    highlight! link CmpItemKindVariable MoonflyTurquoise
    highlight! link CmpItemMenu MoonflyGrey247
endif
