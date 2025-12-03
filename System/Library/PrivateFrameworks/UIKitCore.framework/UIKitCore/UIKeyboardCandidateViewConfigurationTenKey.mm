@interface UIKeyboardCandidateViewConfigurationTenKey
- (id)initialState;
@end

@implementation UIKeyboardCandidateViewConfigurationTenKey

- (id)initialState
{
  v20.receiver = self;
  v20.super_class = UIKeyboardCandidateViewConfigurationTenKey;
  initialState = [(UIKeyboardCandidateViewConfiguration *)&v20 initialState];
  [initialState setSortControlPosition:4];
  [initialState setPrimaryGridRowType:1];
  [initialState setDisambiguationGridRowType:1];
  [initialState setDisambiguationGridPosition:1];
  v4 = +[UIColor clearColor];
  style = [initialState style];
  [style setSortControlBackgroundColor:v4];

  if ([(UIKeyboardCandidateViewConfiguration *)self darkKeyboard])
  {
    [UIColor colorWithCGColor:UIKBGetNamedColor(@"UIKBColorWhite_Alpha30")];
  }

  else
  {
    +[UIColor whiteColor];
  }
  v6 = ;
  style2 = [initialState style];
  [style2 setGridBackgroundColor:v6];

  if ([(UIKeyboardCandidateViewConfiguration *)self darkKeyboard])
  {
    [UIColor colorWithCGColor:UIKBGetNamedColor(@"UIKBColorWhite_Alpha30")];
  }

  else
  {
    +[UIColor whiteColor];
  }
  v8 = ;
  disambiguationStyle = [initialState disambiguationStyle];
  [disambiguationStyle setGridBackgroundColor:v8];

  darkKeyboard = [(UIKeyboardCandidateViewConfiguration *)self darkKeyboard];
  v11 = UIKBColorWhite_Alpha60;
  if (!darkKeyboard)
  {
    v11 = UIKBCandidateBarCellSecondaryCandidateText;
  }

  v12 = [UIColor colorWithCGColor:UIKBGetNamedColor(*v11)];
  disambiguationStyle2 = [initialState disambiguationStyle];
  [disambiguationStyle2 setTextColor:v12];

  if ([(UIKeyboardCandidateViewConfiguration *)self darkKeyboard])
  {
    +[UIColor whiteColor];
  }

  else
  {
    +[UIColor systemBlueColor];
  }
  v14 = ;
  disambiguationStyle3 = [initialState disambiguationStyle];
  [disambiguationStyle3 setHighlightedTextColor:v14];

  disambiguationStyle4 = [initialState disambiguationStyle];
  [disambiguationStyle4 setHighlightedCellBackgroundImage:0];

  style3 = [initialState style];
  [style3 setFillGridWithLines:1];

  style4 = [initialState style];
  [style4 setMaxNumberOfProactiveCells:1];

  return initialState;
}

@end