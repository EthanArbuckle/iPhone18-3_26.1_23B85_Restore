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
  v3 = [(UIKeyboardCandidateViewConfigurationPhoneBar *)&v12 initialState];
  [v3 setBorders:0];
  v4 = [v3 style];
  [v4 setCornerRadius:4.0];

  v5 = [v3 style];
  [v5 setGridMaskedCorners:15];

  v6 = [v3 style];
  [v6 setExtraCellPadding:{2.0, 0.0, 0.0, 0.0}];

  v7 = +[UIKeyboardCandidateViewImageRenderer sharedImageRenderer];
  v8 = [(UIKeyboardCandidateViewConfiguration *)self highlightedBackgroundColor];
  v9 = [v7 highlightedBarCellBackgroundImageWithColor:v8 insets:{2.0, 2.0, 0.0, 2.0}];
  v10 = [v3 style];
  [v10 setHighlightedCellBackgroundImage:v9];

  return v3;
}

- (id)extendedState
{
  v7.receiver = self;
  v7.super_class = UIKeyboardCandidateViewConfigurationPhoneBarLandscape;
  v2 = [(UIKeyboardCandidateViewConfigurationPhoneBar *)&v7 extendedState];
  [v2 setSortControlPosition:3];
  v3 = [v2 style];
  [v3 setColumnsCount:10];

  v4 = [v2 style];
  [v4 setSortControlPadding:{0.0, 0.0, 6.0, 0.0}];

  v5 = +[UIKeyboardImpl sharedInstance];
  [v2 setHasBackdrop:{objc_msgSend(v5, "_isBackdropVisible")}];

  return v2;
}

- (id)extendedScrolledState
{
  v5.receiver = self;
  v5.super_class = UIKeyboardCandidateViewConfigurationPhoneBarLandscape;
  v2 = [(UIKeyboardCandidateViewConfigurationPhoneBar *)&v5 extendedScrolledState];
  v3 = [v2 style];
  [v3 setShowsIndex:0];

  return v2;
}

@end