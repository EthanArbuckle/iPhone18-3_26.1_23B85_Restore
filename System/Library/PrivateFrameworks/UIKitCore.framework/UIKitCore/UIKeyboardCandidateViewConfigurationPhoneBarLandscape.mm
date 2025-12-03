@interface UIKeyboardCandidateViewConfigurationPhoneBarLandscape
- (id)extendedScrolledState;
- (id)extendedState;
- (id)initialState;
@end

@implementation UIKeyboardCandidateViewConfigurationPhoneBarLandscape

- (id)initialState
{
  v12.receiver = self;
  v12.super_class = UIKeyboardCandidateViewConfigurationPhoneBarLandscape;
  initialState = [(UIKeyboardCandidateViewConfigurationPhoneBar *)&v12 initialState];
  [initialState setBorders:0];
  style = [initialState style];
  [style setCornerRadius:4.0];

  style2 = [initialState style];
  [style2 setGridMaskedCorners:15];

  style3 = [initialState style];
  [style3 setExtraCellPadding:{2.0, 0.0, 0.0, 0.0}];

  v7 = +[UIKeyboardCandidateViewImageRenderer sharedImageRenderer];
  highlightedBackgroundColor = [(UIKeyboardCandidateViewConfiguration *)self highlightedBackgroundColor];
  v9 = [v7 highlightedBarCellBackgroundImageWithColor:highlightedBackgroundColor insets:{2.0, 2.0, 0.0, 2.0}];
  style4 = [initialState style];
  [style4 setHighlightedCellBackgroundImage:v9];

  return initialState;
}

- (id)extendedState
{
  v7.receiver = self;
  v7.super_class = UIKeyboardCandidateViewConfigurationPhoneBarLandscape;
  extendedState = [(UIKeyboardCandidateViewConfigurationPhoneBar *)&v7 extendedState];
  [extendedState setSortControlPosition:3];
  style = [extendedState style];
  [style setColumnsCount:10];

  style2 = [extendedState style];
  [style2 setSortControlPadding:{0.0, 0.0, 6.0, 0.0}];

  v5 = +[UIKeyboardImpl sharedInstance];
  [extendedState setHasBackdrop:{objc_msgSend(v5, "_isBackdropVisible")}];

  return extendedState;
}

- (id)extendedScrolledState
{
  v5.receiver = self;
  v5.super_class = UIKeyboardCandidateViewConfigurationPhoneBarLandscape;
  extendedScrolledState = [(UIKeyboardCandidateViewConfigurationPhoneBar *)&v5 extendedScrolledState];
  style = [extendedScrolledState style];
  [style setShowsIndex:0];

  return extendedScrolledState;
}

@end