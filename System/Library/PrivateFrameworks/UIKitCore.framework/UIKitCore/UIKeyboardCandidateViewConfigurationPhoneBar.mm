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
  v3 = [(UIKeyboardCandidateViewConfiguration *)&v30 initialState];
  [v3 setSortControlPosition:5];
  [v3 setDisambiguationGridPosition:2];
  [v3 setArrowButtonPosition:7];
  [v3 setArrowButtonDirection:0];
  [v3 setBorders:0];
  v4 = +[UIKeyboardImpl sharedInstance];
  if (([v4 _isBackdropVisible] & 1) == 0)
  {

    goto LABEL_5;
  }

  v5 = +[UIKeyboardImpl activeInstance];
  v6 = [v5 textInputTraits];
  v7 = [v6 keyboardAppearance];

  if (v7 == 13)
  {
LABEL_5:
    [v3 setHasBackdrop:0];
    v8 = [v3 style];
    [v8 setArrowButtonBackgroundHidden:1];

    v9 = +[UIKeyboardImpl activeInstance];
    v10 = [v9 textInputTraits];
    v11 = [v10 keyboardAppearance] == 13;
    v12 = [v3 style];
    [v12 setArrowButtonHighlightBackgroundHidden:v11];
  }

  v13 = [v3 style];
  [v13 setExtraCellPadding:{8.0, 0.0, 0.0, 0.0}];

  v14 = +[UIKeyboardCandidateViewImageRenderer sharedImageRenderer];
  v15 = [v14 pocketShadowImageForDarkKeyboard:-[UIKeyboardCandidateViewConfiguration darkKeyboard](self fadesToBottom:"darkKeyboard") drawShadow:0 topPadding:1 bottomPadding:6.0 height:{4.0, 42.0}];
  v16 = [v3 style];
  [v16 setArrowButtonSeparatorImage:v15];

  v17 = +[UIKeyboardCandidateViewImageRenderer sharedImageRenderer];
  v18 = [v17 pocketShadowImageForDarkKeyboard:-[UIKeyboardCandidateViewConfiguration darkKeyboard](self fadesToBottom:"darkKeyboard") drawShadow:0 topPadding:0 bottomPadding:6.0 height:{4.0, 42.0}];
  v19 = [v3 style];
  [v19 setSlottedCellSeparatorImage:v18];

  LODWORD(v17) = _UISolariumEnabled();
  v20 = +[UIKeyboardCandidateViewImageRenderer sharedImageRenderer];
  v21 = [(UIKeyboardCandidateViewConfiguration *)self highlightedBackgroundColor];
  if (v17)
  {
    v22 = 6.0;
  }

  else
  {
    v22 = 2.0;
  }

  v23 = [v20 highlightedBarCellBackgroundImageWithColor:v21 insets:{8.0, v22, 0.0, v22}];
  v24 = [v3 style];
  [v24 setHighlightedCellBackgroundImage:v23];

  v25 = +[UIKeyboardCandidateViewImageRenderer sharedImageRenderer];
  v26 = [(UIKeyboardCandidateViewConfiguration *)self highlightedBackgroundColor];
  v27 = [v25 highlightedBarCellBackgroundImageWithColor:v26 insets:{4.0, 3.0, 4.0, 3.0}];
  v28 = [v3 disambiguationStyle];
  [v28 setHighlightedCellBackgroundImage:v27];

  return v3;
}

- (id)extendedState
{
  v3 = [(UIKeyboardCandidateViewConfigurationPhoneBar *)self initialState];
  [v3 setPrimaryGridRowType:1];
  [v3 setArrowButtonDirection:1];
  [v3 setInlineTextViewPosition:1];
  [v3 setSortControlPosition:2];
  [v3 setBorders:0];
  v4 = [v3 style];
  [v4 setColumnsCount:6];

  v5 = [v3 style];
  [v5 setExtraCellPadding:{0.0, 0.0, 0.0, 0.0}];

  v6 = [v3 style];
  [v6 setArrowButtonSeparatorImage:0];

  v7 = +[UIKeyboardCandidateViewImageRenderer sharedImageRenderer];
  v8 = [(UIKeyboardCandidateViewConfiguration *)self highlightedBackgroundColor];
  v9 = [v7 highlightedBarCellBackgroundImageWithColor:v8 insets:{4.0, 2.0, 4.0, 2.0}];
  v10 = [v3 style];
  [v10 setHighlightedCellBackgroundImage:v9];

  v11 = [UIColor colorWithCGColor:UIKBGetNamedColor(@"UIKBColorBlack_Alpha8")];
  v12 = [v3 style];
  [v12 setGroupHeaderBackgroundColor:v11];

  return v3;
}

- (id)extendedScrolledState
{
  v2 = [(UIKeyboardCandidateViewConfigurationPhoneBar *)self extendedState];
  v3 = [v2 style];
  [v3 setShowsIndex:1];

  return v2;
}

@end