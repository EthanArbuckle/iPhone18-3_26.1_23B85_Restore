@interface UIKeyboardCandidateViewConfigurationTenKeyCarPlay
- (id)initialState;
@end

@implementation UIKeyboardCandidateViewConfigurationTenKeyCarPlay

- (id)initialState
{
  v25.receiver = self;
  v25.super_class = UIKeyboardCandidateViewConfigurationTenKeyCarPlay;
  v3 = [(UIKeyboardCandidateViewConfigurationTenKey *)&v25 initialState];
  [v3 setSortControlPosition:0];
  [v3 setDisambiguationGridPosition:0];
  [(UIKeyboardCandidateViewConfiguration *)self candidateDefaultFontSize];
  v5 = round(v4 * 0.8);
  v6 = [(UIKeyboardCandidateViewConfiguration *)self candidateFontWithSize:v5];
  v7 = [v3 style];
  [v7 setCandidateFont:v6];

  v8 = [v3 style];
  v9 = [v8 candidateFont];
  CopyWithSymbolicTraits = CTFontCreateCopyWithSymbolicTraits(v9, 0.0, 0, 2u, 2u);
  v11 = [v3 style];
  [v11 setSupplementalLexiconCandidateFont:CopyWithSymbolicTraits];

  v12 = [(UIKeyboardCandidateViewConfiguration *)self candidateFontWithSize:v5];
  v13 = [v3 style];
  [v13 setAlternativeTextFont:v12];

  v14 = +[UIColor clearColor];
  v15 = [v3 style];
  [v15 setGridBackgroundColor:v14];

  if ([(UIKeyboardCandidateViewConfiguration *)self darkKeyboard])
  {
    [UIColor colorWithCGColor:UIKBGetNamedColor(@"UIKBColorCarDarkDivider")];
  }

  else
  {
    +[UIColor whiteColor];
  }
  v16 = ;
  v17 = [v3 style];
  [v17 setLineColor:v16];

  v18 = [(UIKeyboardCandidateViewConfiguration *)self darkKeyboard];
  v19 = UIKBColorCarTeal;
  if (!v18)
  {
    v19 = UIKBColorKeyBlueKeyBackground;
  }

  v20 = [UIColor colorWithCGColor:UIKBGetNamedColor(*v19)];
  v21 = [v3 style];
  [v21 setHighlightedBackgroundColor:v20];

  if ([(UIKeyboardCandidateViewConfiguration *)self darkKeyboard])
  {
    +[UIColor darkTextColor];
  }

  else
  {
    +[UIColor whiteColor];
  }
  v22 = ;
  v23 = [v3 style];
  [v23 setHighlightedTextColor:v22];

  return v3;
}

@end