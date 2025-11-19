@interface UIKeyboardCandidateViewConfigurationPhoneBarDown
- (id)extendedState;
- (id)initialState;
@end

@implementation UIKeyboardCandidateViewConfigurationPhoneBarDown

- (id)initialState
{
  v18.receiver = self;
  v18.super_class = UIKeyboardCandidateViewConfigurationPhoneBarDown;
  v2 = [(UIKeyboardCandidateViewConfigurationPhoneBar *)&v18 initialState];
  [v2 setArrowButtonDirection:1];
  [v2 setSortControlPosition:4];
  v3 = [v2 style];
  [v3 rowHeight];
  v5 = v4;
  v6 = [v2 style];
  [v6 setGridPadding:{0.0, 1.0, 0.0, v5}];

  v7 = [v2 style];
  [v7 rowHeight];
  v9 = v8;
  v10 = [v2 style];
  [v10 setGridLinePadding:{0.0, 0.0, 0.0, v9}];

  v11 = [v2 style];
  [v11 rowHeight];
  v13 = v12;
  v14 = [v2 style];
  [v14 setSortControlPadding:{0.0, 0.0, 0.0, v13}];

  v15 = [v2 style];
  [v15 setGridLineOffset:{0.0, 4.0}];

  v16 = [v2 style];
  [v16 setDoNotClipToBounds:1];

  return v2;
}

- (id)extendedState
{
  v13.receiver = self;
  v13.super_class = UIKeyboardCandidateViewConfigurationPhoneBarDown;
  v3 = [(UIKeyboardCandidateViewConfigurationPhoneBar *)&v13 extendedState];
  [v3 setArrowButtonDirection:0];
  [v3 setInlineTextViewPosition:0];
  [v3 setArrowButtonPosition:7];
  [v3 setSortControlPosition:4];
  v4 = [v3 style];
  [v4 setExtraCellPadding:{8.0, 0.0, 0.0, 0.0}];

  v5 = +[UIKeyboardImpl sharedInstance];
  [v3 setHasBackdrop:{objc_msgSend(v5, "_isBackdropVisible")}];

  v6 = [v3 style];
  [v6 setDoNotClipToBounds:1];

  LODWORD(v6) = _UISolariumEnabled();
  v7 = +[UIKeyboardCandidateViewImageRenderer sharedImageRenderer];
  v8 = [(UIKeyboardCandidateViewConfiguration *)self highlightedBackgroundColor];
  v9 = 6.0;
  if (!v6)
  {
    v9 = 2.0;
  }

  v10 = [v7 highlightedBarCellBackgroundImageWithColor:v8 insets:{8.0, v9, 0.0, v9}];
  v11 = [v3 style];
  [v11 setHighlightedCellBackgroundImage:v10];

  return v3;
}

@end