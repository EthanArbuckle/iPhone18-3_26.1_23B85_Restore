@interface UIKeyboardCandidateViewConfigurationPhoneBar
- (id)extendedScrolledState;
- (id)extendedState;
- (id)initialState;
@end

@implementation UIKeyboardCandidateViewConfigurationPhoneBar

- (id)initialState
{
  v30.receiver = self;
  v30.super_class = UIKeyboardCandidateViewConfigurationPhoneBar;
  initialState = [(UIKeyboardCandidateViewConfiguration *)&v30 initialState];
  [initialState setSortControlPosition:5];
  [initialState setDisambiguationGridPosition:2];
  [initialState setArrowButtonPosition:7];
  [initialState setArrowButtonDirection:0];
  [initialState setBorders:0];
  v4 = +[UIKeyboardImpl sharedInstance];
  if (([v4 _isBackdropVisible] & 1) == 0)
  {

    goto LABEL_5;
  }

  v5 = +[UIKeyboardImpl activeInstance];
  textInputTraits = [v5 textInputTraits];
  keyboardAppearance = [textInputTraits keyboardAppearance];

  if (keyboardAppearance == 13)
  {
LABEL_5:
    [initialState setHasBackdrop:0];
    style = [initialState style];
    [style setArrowButtonBackgroundHidden:1];

    v9 = +[UIKeyboardImpl activeInstance];
    textInputTraits2 = [v9 textInputTraits];
    v11 = [textInputTraits2 keyboardAppearance] == 13;
    style2 = [initialState style];
    [style2 setArrowButtonHighlightBackgroundHidden:v11];
  }

  style3 = [initialState style];
  [style3 setExtraCellPadding:{8.0, 0.0, 0.0, 0.0}];

  v14 = +[UIKeyboardCandidateViewImageRenderer sharedImageRenderer];
  v15 = [v14 pocketShadowImageForDarkKeyboard:-[UIKeyboardCandidateViewConfiguration darkKeyboard](self fadesToBottom:"darkKeyboard") drawShadow:0 topPadding:1 bottomPadding:6.0 height:{4.0, 42.0}];
  style4 = [initialState style];
  [style4 setArrowButtonSeparatorImage:v15];

  v17 = +[UIKeyboardCandidateViewImageRenderer sharedImageRenderer];
  v18 = [v17 pocketShadowImageForDarkKeyboard:-[UIKeyboardCandidateViewConfiguration darkKeyboard](self fadesToBottom:"darkKeyboard") drawShadow:0 topPadding:0 bottomPadding:6.0 height:{4.0, 42.0}];
  style5 = [initialState style];
  [style5 setSlottedCellSeparatorImage:v18];

  LODWORD(v17) = _UISolariumEnabled();
  v20 = +[UIKeyboardCandidateViewImageRenderer sharedImageRenderer];
  highlightedBackgroundColor = [(UIKeyboardCandidateViewConfiguration *)self highlightedBackgroundColor];
  if (v17)
  {
    v22 = 6.0;
  }

  else
  {
    v22 = 2.0;
  }

  v23 = [v20 highlightedBarCellBackgroundImageWithColor:highlightedBackgroundColor insets:{8.0, v22, 0.0, v22}];
  style6 = [initialState style];
  [style6 setHighlightedCellBackgroundImage:v23];

  v25 = +[UIKeyboardCandidateViewImageRenderer sharedImageRenderer];
  highlightedBackgroundColor2 = [(UIKeyboardCandidateViewConfiguration *)self highlightedBackgroundColor];
  v27 = [v25 highlightedBarCellBackgroundImageWithColor:highlightedBackgroundColor2 insets:{4.0, 3.0, 4.0, 3.0}];
  disambiguationStyle = [initialState disambiguationStyle];
  [disambiguationStyle setHighlightedCellBackgroundImage:v27];

  return initialState;
}

- (id)extendedState
{
  initialState = [(UIKeyboardCandidateViewConfigurationPhoneBar *)self initialState];
  [initialState setPrimaryGridRowType:1];
  [initialState setArrowButtonDirection:1];
  [initialState setInlineTextViewPosition:1];
  [initialState setSortControlPosition:2];
  [initialState setBorders:0];
  style = [initialState style];
  [style setColumnsCount:6];

  style2 = [initialState style];
  [style2 setExtraCellPadding:{0.0, 0.0, 0.0, 0.0}];

  style3 = [initialState style];
  [style3 setArrowButtonSeparatorImage:0];

  v7 = +[UIKeyboardCandidateViewImageRenderer sharedImageRenderer];
  highlightedBackgroundColor = [(UIKeyboardCandidateViewConfiguration *)self highlightedBackgroundColor];
  v9 = [v7 highlightedBarCellBackgroundImageWithColor:highlightedBackgroundColor insets:{4.0, 2.0, 4.0, 2.0}];
  style4 = [initialState style];
  [style4 setHighlightedCellBackgroundImage:v9];

  v11 = [UIColor colorWithCGColor:UIKBGetNamedColor(@"UIKBColorBlack_Alpha8")];
  style5 = [initialState style];
  [style5 setGroupHeaderBackgroundColor:v11];

  return initialState;
}

- (id)extendedScrolledState
{
  extendedState = [(UIKeyboardCandidateViewConfigurationPhoneBar *)self extendedState];
  style = [extendedState style];
  [style setShowsIndex:1];

  return extendedState;
}

@end