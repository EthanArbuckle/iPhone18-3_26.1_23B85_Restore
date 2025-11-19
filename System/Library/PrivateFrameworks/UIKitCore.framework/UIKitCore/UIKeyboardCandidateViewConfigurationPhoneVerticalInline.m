@interface UIKeyboardCandidateViewConfigurationPhoneVerticalInline
- (CGSize)preferredInlineFloatingViewSize;
- (id)extendedState;
- (id)initialState;
@end

@implementation UIKeyboardCandidateViewConfigurationPhoneVerticalInline

- (id)initialState
{
  v11.receiver = self;
  v11.super_class = UIKeyboardCandidateViewConfigurationPhoneVerticalInline;
  v2 = [(UIKeyboardCandidateViewConfigurationPhoneInline *)&v11 initialState];
  v3 = [v2 style];
  [v3 setGridPadding:{0.0, 0.0, 0.0, 0.0}];

  v4 = [v2 style];
  [v4 setScrollDisabled:0];

  v5 = [v2 style];
  [v5 setHighlightedRowBackgroundColor:0];

  v6 = [v2 style];
  [v6 setCellTextAlignment:0];

  v7 = [v2 style];
  [v7 setColumnsCount:1];

  v8 = [v2 style];
  [v8 setLayoutOrientation:1];

  v9 = [v2 style];
  [v9 setFillGridWithLines:0];

  [v2 setSortControlPosition:2];
  [v2 setArrowButtonPosition:0];

  return v2;
}

- (id)extendedState
{
  v4.receiver = self;
  v4.super_class = UIKeyboardCandidateViewConfigurationPhoneVerticalInline;
  v2 = [(UIKeyboardCandidateViewConfigurationPhoneInline *)&v4 extendedState];
  [v2 setAdditionalHeight:0.0];

  return v2;
}

- (CGSize)preferredInlineFloatingViewSize
{
  v2 = 250.0;
  v3 = 205.0;
  result.height = v3;
  result.width = v2;
  return result;
}

@end