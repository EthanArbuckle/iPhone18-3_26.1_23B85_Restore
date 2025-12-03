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
  initialState = [(UIKeyboardCandidateViewConfigurationPhoneInline *)&v11 initialState];
  style = [initialState style];
  [style setGridPadding:{0.0, 0.0, 0.0, 0.0}];

  style2 = [initialState style];
  [style2 setScrollDisabled:0];

  style3 = [initialState style];
  [style3 setHighlightedRowBackgroundColor:0];

  style4 = [initialState style];
  [style4 setCellTextAlignment:0];

  style5 = [initialState style];
  [style5 setColumnsCount:1];

  style6 = [initialState style];
  [style6 setLayoutOrientation:1];

  style7 = [initialState style];
  [style7 setFillGridWithLines:0];

  [initialState setSortControlPosition:2];
  [initialState setArrowButtonPosition:0];

  return initialState;
}

- (id)extendedState
{
  v4.receiver = self;
  v4.super_class = UIKeyboardCandidateViewConfigurationPhoneVerticalInline;
  extendedState = [(UIKeyboardCandidateViewConfigurationPhoneInline *)&v4 extendedState];
  [extendedState setAdditionalHeight:0.0];

  return extendedState;
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