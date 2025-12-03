@interface UIKeyboardCandidateViewConfigurationPadSplitBar
- (double)candidateDefaultFontSize;
- (id)extendedState;
- (id)initialState;
@end

@implementation UIKeyboardCandidateViewConfigurationPadSplitBar

- (id)initialState
{
  v20.receiver = self;
  v20.super_class = UIKeyboardCandidateViewConfigurationPadSplitBar;
  initialState = [(UIKeyboardCandidateViewConfigurationPadBar *)&v20 initialState];
  [initialState setArrowButtonPosition:2];
  [initialState setArrowButtonDirection:1];
  v3 = +[UIKeyboardPreferencesController sharedPreferencesController];
  preferencesActions = [v3 preferencesActions];
  [preferencesActions rivenSizeFactor:40.0];
  v6 = v5;
  style = [initialState style];
  [style setMinimumCellWidth:v6];

  v8 = UIKBCornerRadius();
  style2 = [initialState style];
  [style2 setCornerRadius:v8];

  style3 = [initialState style];
  [style3 setMaskedCorners:10];

  style4 = [initialState style];
  [style4 setSortControlPadding:{0.0, 11.0, 0.0, 11.0}];

  style5 = [initialState style];
  [style5 setLeftEdgeSeparatorImage:0];

  style6 = [initialState style];
  [style6 setRightEdgeSeparatorImage:0];

  style7 = [initialState style];
  [style7 setArrowButtonSeparatorImage:0];

  style8 = [initialState style];
  [style8 rowHeight];
  v17 = v16;
  style9 = [initialState style];
  [style9 setGridPadding:{0.0, 5.0, 0.0, v17}];

  return initialState;
}

- (id)extendedState
{
  v6.receiver = self;
  v6.super_class = UIKeyboardCandidateViewConfigurationPadSplitBar;
  extendedState = [(UIKeyboardCandidateViewConfigurationPadBar *)&v6 extendedState];
  [extendedState setArrowButtonDirection:0];
  style = [extendedState style];
  [style setColumnsCount:4];

  style2 = [extendedState style];
  [style2 setMaskedCorners:10];

  return extendedState;
}

- (double)candidateDefaultFontSize
{
  v2 = +[UIKeyboardPreferencesController sharedPreferencesController];
  preferencesActions = [v2 preferencesActions];
  [preferencesActions rivenSizeFactor:22.0];
  v5 = v4;

  return v5;
}

@end