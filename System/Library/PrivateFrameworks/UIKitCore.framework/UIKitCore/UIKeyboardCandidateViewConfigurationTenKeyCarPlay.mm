@interface UIKeyboardCandidateViewConfigurationTenKeyCarPlay
- (id)initialState;
@end

@implementation UIKeyboardCandidateViewConfigurationTenKeyCarPlay

- (id)initialState
{
  v25.receiver = self;
  v25.super_class = UIKeyboardCandidateViewConfigurationTenKeyCarPlay;
  initialState = [(UIKeyboardCandidateViewConfigurationTenKey *)&v25 initialState];
  [initialState setSortControlPosition:0];
  [initialState setDisambiguationGridPosition:0];
  [(UIKeyboardCandidateViewConfiguration *)self candidateDefaultFontSize];
  v5 = round(v4 * 0.8);
  v6 = [(UIKeyboardCandidateViewConfiguration *)self candidateFontWithSize:v5];
  style = [initialState style];
  [style setCandidateFont:v6];

  style2 = [initialState style];
  candidateFont = [style2 candidateFont];
  CopyWithSymbolicTraits = CTFontCreateCopyWithSymbolicTraits(candidateFont, 0.0, 0, 2u, 2u);
  style3 = [initialState style];
  [style3 setSupplementalLexiconCandidateFont:CopyWithSymbolicTraits];

  v12 = [(UIKeyboardCandidateViewConfiguration *)self candidateFontWithSize:v5];
  style4 = [initialState style];
  [style4 setAlternativeTextFont:v12];

  v14 = +[UIColor clearColor];
  style5 = [initialState style];
  [style5 setGridBackgroundColor:v14];

  if ([(UIKeyboardCandidateViewConfiguration *)self darkKeyboard])
  {
    [UIColor colorWithCGColor:UIKBGetNamedColor(@"UIKBColorCarDarkDivider")];
  }

  else
  {
    +[UIColor whiteColor];
  }
  v16 = ;
  style6 = [initialState style];
  [style6 setLineColor:v16];

  darkKeyboard = [(UIKeyboardCandidateViewConfiguration *)self darkKeyboard];
  v19 = UIKBColorCarTeal;
  if (!darkKeyboard)
  {
    v19 = UIKBColorKeyBlueKeyBackground;
  }

  v20 = [UIColor colorWithCGColor:UIKBGetNamedColor(*v19)];
  style7 = [initialState style];
  [style7 setHighlightedBackgroundColor:v20];

  if ([(UIKeyboardCandidateViewConfiguration *)self darkKeyboard])
  {
    +[UIColor darkTextColor];
  }

  else
  {
    +[UIColor whiteColor];
  }
  v22 = ;
  style8 = [initialState style];
  [style8 setHighlightedTextColor:v22];

  return initialState;
}

@end