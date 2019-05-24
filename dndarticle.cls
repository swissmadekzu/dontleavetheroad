\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{dndarticle}[2019/02/09 v0.7.0 Template for DnD 5e material]

\RequirePackage{xkeyval}
\RequirePackage{xstring}

% Pass these class options to the core dnd package.
\newcommand{\dnd@packageoptions}{bg=,justified,nomultitoc}

% Pass package options to dnd package; pass all other options to book class.
\DeclareOptionX*{
  \@for \option:=\dnd@packageoptions \do{
    \IfBeginWith{\CurrentOption}{\option}{
      \PassOptionsToPackage{\CurrentOption}{dnd}
    }{
      \PassOptionsToClass{\CurrentOption}{article}
    }
  }
}
\ProcessOptionsX*\relax

\LoadClass{article}

\PassOptionsToPackage{layout=true}{dnd}
\RequirePackage{dnd}