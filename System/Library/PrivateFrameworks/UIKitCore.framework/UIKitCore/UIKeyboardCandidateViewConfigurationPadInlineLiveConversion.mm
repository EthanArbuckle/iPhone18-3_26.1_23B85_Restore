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
  initialState = [(UIKeyboardCandidateViewConfigurationPhoneInline *)&v34 initialState];
  [initialState setPrimaryGridRowType:1];
  [initialState setArrowButtonPosition:4];
  [initialState setSortControlPosition:5];
  style = [initialState style];
  [style setColumnsCount:1];

  style2 = [initialState style];
  [style2 setCellTextAlignment:0];

  style3 = [initialState style];
  [style3 setRowHeight:44.0];

  style4 = [initialState style];
  [style4 setMinimumCellPadding:24.0];

  style5 = [initialState style];
  [style5 setHighlightedRowBackgroundColor:0];

  if (_os_feature_enabled_impl())
  {
    v9 = +[UIColor insertionPointColor];
    style6 = [initialState style];
    [style6 setHighlightedBackgroundColor:v9];

    if ([(UIKeyboardCandidateViewConfiguration *)self darkKeyboard])
    {
      +[UIColor clearColor];
    }

    else
    {
      [UIColor colorWithWhite:0.96 alpha:1.0];
    }
    v16 = ;
    style7 = [initialState style];
    [style7 setGridBackgroundColor:v16];

    style8 = [initialState style];
    [style8 setCornerRadius:14.0];

    style9 = [initialState style];
    [style9 setRoundsArrowButtonEdge:0];
    v15 = 1.0;
  }

  else
  {
    v11 = +[UIColor secondarySystemFillColor];
    style10 = [initialState style];
    [style10 setHighlightedBackgroundColor:v11];

    style9 = +[UIColor clearColor];
    style11 = [initialState style];
    [style11 setGridBackgroundColor:style9];

    v15 = 43.0;
  }

  style12 = [initialState style];
  [style12 setArrowButtonHeight:v15];

  style13 = [initialState style];
  [style13 setHighlightedCellBackgroundImage:0];

  style14 = [initialState style];
  [style14 setGridPadding:{0.0, 0.0, 0.0, 0.0}];

  style15 = [initialState style];
  [style15 setDontSelectLastItemByBackwardMoving:1];

  style16 = [initialState style];
  [style16 setShowOneMoreCandidate:1];

  style17 = [initialState style];
  [style17 setDisableSwitchingSortingMethodByTabKey:1];

  v25 = +[UIColor quaternarySystemFillColor];
  style18 = [initialState style];
  [style18 setTransliterationCandidateBackgroundColor:v25];

  style19 = [initialState style];
  [style19 setHidesPartialCandidates:1];

  style20 = [initialState style];
  [style20 setSkipInlineCandidate:1];

  style21 = [initialState style];
  [style21 setMinimumNumberOfCandidates:2];

  style22 = [initialState style];
  [style22 setFillGridWithLines:1];

  style23 = [initialState style];
  [style23 setScrollDisabled:0];

  style24 = [initialState style];
  [style24 setAllowCandidateGridExpanding:1];

  [initialState setArrowButtonDirection:1];

  return initialState;
}

- (id)extendedState
{
  initialState = [(UIKeyboardCandidateViewConfigurationPadInlineLiveConversion *)self initialState];
  [initialState setArrowButtonPosition:0];
  [initialState setSortControlPosition:2];
  style = [initialState style];
  [style rowHeight];
  [initialState setAdditionalHeight:v4 * 5.0 + -1.0];

  style2 = [initialState style];
  [style2 setScrollDisabled:0];

  [initialState setArrowButtonDirection:0];
  style3 = [initialState style];
  [style3 setHidesPartialCandidates:0];

  style4 = [initialState style];
  [style4 setAllowCandidateGridExpanding:0];

  return initialState;
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