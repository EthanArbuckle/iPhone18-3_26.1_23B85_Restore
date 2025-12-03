@interface UIKeyboardCandidateViewConfigurationPhoneBarDown
- (id)extendedState;
- (id)initialState;
@end

@implementation UIKeyboardCandidateViewConfigurationPhoneBarDown

- (id)initialState
{
  v18.receiver = self;
  v18.super_class = UIKeyboardCandidateViewConfigurationPhoneBarDown;
  initialState = [(UIKeyboardCandidateViewConfigurationPhoneBar *)&v18 initialState];
  [initialState setArrowButtonDirection:1];
  [initialState setSortControlPosition:4];
  style = [initialState style];
  [style rowHeight];
  v5 = v4;
  style2 = [initialState style];
  [style2 setGridPadding:{0.0, 1.0, 0.0, v5}];

  style3 = [initialState style];
  [style3 rowHeight];
  v9 = v8;
  style4 = [initialState style];
  [style4 setGridLinePadding:{0.0, 0.0, 0.0, v9}];

  style5 = [initialState style];
  [style5 rowHeight];
  v13 = v12;
  style6 = [initialState style];
  [style6 setSortControlPadding:{0.0, 0.0, 0.0, v13}];

  style7 = [initialState style];
  [style7 setGridLineOffset:{0.0, 4.0}];

  style8 = [initialState style];
  [style8 setDoNotClipToBounds:1];

  return initialState;
}

- (id)extendedState
{
  v13.receiver = self;
  v13.super_class = UIKeyboardCandidateViewConfigurationPhoneBarDown;
  extendedState = [(UIKeyboardCandidateViewConfigurationPhoneBar *)&v13 extendedState];
  [extendedState setArrowButtonDirection:0];
  [extendedState setInlineTextViewPosition:0];
  [extendedState setArrowButtonPosition:7];
  [extendedState setSortControlPosition:4];
  style = [extendedState style];
  [style setExtraCellPadding:{8.0, 0.0, 0.0, 0.0}];

  v5 = +[UIKeyboardImpl sharedInstance];
  [extendedState setHasBackdrop:{objc_msgSend(v5, "_isBackdropVisible")}];

  style2 = [extendedState style];
  [style2 setDoNotClipToBounds:1];

  LODWORD(style2) = _UISolariumEnabled();
  v7 = +[UIKeyboardCandidateViewImageRenderer sharedImageRenderer];
  highlightedBackgroundColor = [(UIKeyboardCandidateViewConfiguration *)self highlightedBackgroundColor];
  v9 = 6.0;
  if (!style2)
  {
    v9 = 2.0;
  }

  v10 = [v7 highlightedBarCellBackgroundImageWithColor:highlightedBackgroundColor insets:{8.0, v9, 0.0, v9}];
  style3 = [extendedState style];
  [style3 setHighlightedCellBackgroundImage:v10];

  return extendedState;
}

@end