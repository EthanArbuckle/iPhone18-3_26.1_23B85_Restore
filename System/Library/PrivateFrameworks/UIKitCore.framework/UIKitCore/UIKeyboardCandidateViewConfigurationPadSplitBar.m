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
  v2 = [(UIKeyboardCandidateViewConfigurationPadBar *)&v20 initialState];
  [v2 setArrowButtonPosition:2];
  [v2 setArrowButtonDirection:1];
  v3 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v4 = [v3 preferencesActions];
  [v4 rivenSizeFactor:40.0];
  v6 = v5;
  v7 = [v2 style];
  [v7 setMinimumCellWidth:v6];

  v8 = UIKBCornerRadius();
  v9 = [v2 style];
  [v9 setCornerRadius:v8];

  v10 = [v2 style];
  [v10 setMaskedCorners:10];

  v11 = [v2 style];
  [v11 setSortControlPadding:{0.0, 11.0, 0.0, 11.0}];

  v12 = [v2 style];
  [v12 setLeftEdgeSeparatorImage:0];

  v13 = [v2 style];
  [v13 setRightEdgeSeparatorImage:0];

  v14 = [v2 style];
  [v14 setArrowButtonSeparatorImage:0];

  v15 = [v2 style];
  [v15 rowHeight];
  v17 = v16;
  v18 = [v2 style];
  [v18 setGridPadding:{0.0, 5.0, 0.0, v17}];

  return v2;
}

- (id)extendedState
{
  v6.receiver = self;
  v6.super_class = UIKeyboardCandidateViewConfigurationPadSplitBar;
  v2 = [(UIKeyboardCandidateViewConfigurationPadBar *)&v6 extendedState];
  [v2 setArrowButtonDirection:0];
  v3 = [v2 style];
  [v3 setColumnsCount:4];

  v4 = [v2 style];
  [v4 setMaskedCorners:10];

  return v2;
}

- (double)candidateDefaultFontSize
{
  v2 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v3 = [v2 preferencesActions];
  [v3 rivenSizeFactor:22.0];
  v5 = v4;

  return v5;
}

@end