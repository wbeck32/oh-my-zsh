PROMPT="%{$fg[red]%}%n%{$reset_color%} @ %{$fg[blue]%}%M %{$fg[yellow]%}%/ %{$reset_color%}%# %a"
# PROMPT="%{$F[green]%}%~%{$reset_color%} ${vcs_info_msg_0_}\n%(?.%{%F{white}%}.%{red%})%(!.#.❯)%{$reset_color%} '"
# PROMPT=$"%{$fg{red}%}%n%{$reset_color%} @ %{$fg{blue}%}%M %{$fg{yellow}%}%/ %{$reset_color%}%# %a"


autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{240}(%b)%r%f'
zstyle ':vcs_info:*' enable git