@interface UIKeyboardCandidateViewConfigurationPadInlineLiveConversion
- (CGSize)preferredInlineFloatingViewSize;
- (id)extendedState;
- (id)initialState;
@end

@implementation UIKeyboardCandidateViewConfigurationPadInlineLiveConversion

- (id)initialState
{
  v34.receiver = self;
  v34.super_class = UIKeyboardCandidateViewConfigurationPadInlineLiveConversion;
  v3 = [(UIKeyboardCandidateViewConfigurationPhoneInline *)&v34 initialState];
  [v3 setPrimaryGridRowType:1];
  [v3 setArrowButtonPosition:4];
  [v3 setSortControlPosition:5];
  v4 = [v3 style];
  [v4 setColumnsCount:1];

  v5 = [v3 style];
  [v5 setCellTextAlignment:0];

  v6 = [v3 style];
  [v6 setRowHeight:44.0];

  v7 = [v3 style];
  [v7 setMinimumCellPadding:24.0];

  v8 = [v3 style];
  [v8 setHighlightedRowBackgroundColor:0];

  if (_os_feature_enabled_impl())
  {
    v9 = +[UIColor insertionPointColor];
    v10 = [v3 style];
    [v10 setHighlightedBackgroundColor:v9];

    if ([(UIKeyboardCandidateViewConfiguration *)self darkKeyboard])
    {
      +[UIColor clearColor];
    }

    else
    {
      [UIColor colorWithWhite:0.96 alpha:1.0];
    }
    v16 = ;
    v17 = [v3 style];
    [v17 setGridBackgroundColor:v16];

    v18 = [v3 style];
    [v18 setCornerRadius:14.0];

    v13 = [v3 style];
    [v13 setRoundsArrowButtonEdge:0];
    v15 = 1.0;
  }

  else
  {
    v11 = +[UIColor secondarySystemFillColor];
    v12 = [v3 style];
    [v12 setHighlightedBackgroundColor:v11];

    v13 = +[UIColor clearColor];
    v14 = [v3 style];
    [v14 setGridBackgroundColor:v13];

    v15 = 43.0;
  }

  v19 = [v3 style];
  [v19 setArrowButtonHeight:v15];

  v20 = [v3 style];
  [v20 setHighlightedCellBackgroundImage:0];

  v21 = [v3 style];
  [v21 setGridPadding:{0.0, 0.0, 0.0, 0.0}];

  v22 = [v3 style];
  [v22 setDontSelectLastItemByBackwardMoving:1];

  v23 = [v3 style];
  [v23 setShowOneMoreCandidate:1];

  v24 = [v3 style];
  [v24 setDisableSwitchingSortingMethodByTabKey:1];

  v25 = +[UIColor quaternarySystemFillColor];
  v26 = [v3 style];
  [v26 setTransliterationCandidateBackgroundColor:v25];

  v27 = [v3 style];
  [v27 setHidesPartialCandidates:1];

  v28 = [v3 style];
  [v28 setSkipInlineCandidate:1];

  v29 = [v3 style];
  [v29 setMinimumNumberOfCandidates:2];

  v30 = [v3 style];
  [v30 setFillGridWithLines:1];

  v31 = [v3 style];
  [v31 setScrollDisabled:0];

  v32 = [v3 style];
  [v32 setAllowCandidateGridExpanding:1];

  [v3 setArrowButtonDirection:1];

  return v3;
}

- (id)extendedState
{
  v2 = [(UIKeyboardCandidateViewConfigurationPadInlineLiveConversion *)self initialState];
  [v2 setArrowButtonPosition:0];
  [v2 setSortControlPosition:2];
  v3 = [v2 style];
  [v3 rowHeight];
  [v2 setAdditionalHeight:v4 * 5.0 + -1.0];

  v5 = [v2 style];
  [v5 setScrollDisabled:0];

  [v2 setArrowButtonDirection:0];
  v6 = [v2 style];
  [v6 setHidesPartialCandidates:0];

  v7 = [v2 style];
  [v7 setAllowCandidateGridExpanding:0];

  return v2;
}

- (CGSize)preferredInlineFloatingViewSize
{
  v2 = 250.0;
  v3 = 220.0;
  result.height = v3;
  result.width = v2;
  return result;
}

@end