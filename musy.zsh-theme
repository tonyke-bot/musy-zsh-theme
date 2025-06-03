#!/usr/bin/env zsh
local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
setopt promptsubst
autoload -U add-zsh-hook
autoload -U colors && colors

PROMPT_USERNAME_COLOR=$fg_bold[cyan]
PROMPT_HOSTNAME_COLOR=$fg_bold[blue]
PROMPT_SUCCESS_COLOR=$FG[117]
PROMPT_FAILURE_COLOR=$FG[124]
PROMPT_VCS_INFO_COLOR=$FG[242]
PROMPT_PROMPT=$FG[077]
GIT_DIRTY_COLOR=$FG[133]
GIT_CLEAN_COLOR=$FG[118]
GIT_PROMPT_INFO=$FG[012]

PROMPT=':: %{$PROMPT_SUCCESS_COLOR%}%~%{$reset_color%}%{$GIT_PROMPT_INFO%}$(git_prompt_info) %{$PROMPT_PROMPT%}$ret_status %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX=" ("
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$GIT_PROMPT_INFO%})"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$GIT_DIRTY_COLOR%}✘"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$GIT_CLEAN_COLOR%}"

ZSH_THEME_VIRTUALENV_PREFIX=" ["
ZSH_THEME_VIRTUALENV_SUFFIX="]"
