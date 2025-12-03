@interface UIKeyboardCandidateViewConfigurationPhoneInline
- (id)extendedState;
- (id)initialState;
@end

@implementation UIKeyboardCandidateViewConfigurationPhoneInline

- (id)initialState
{
  v3 = objc_alloc_init(UIKeyboardCandidateViewState);
  v4 = [UIKeyboardCandidateViewStyle styleForDarkKeyboard:0];
  [(UIKeyboardCandidateViewState *)v3 setStyle:v4];

  [(UIKeyboardCandidateViewState *)v3 setPrimaryGridRowType:1];
  [(UIKeyboardCandidateViewState *)v3 setHasBackdrop:0];
  [(UIKeyboardCandidateViewConfiguration *)self candidateDefaultFontSize];
  v5 = [(UIKeyboardCandidateViewConfiguration *)self candidateFontWithSize:?];
  style = [(UIKeyboardCandidateViewState *)v3 style];
  [style setCandidateFont:v5];

  style2 = [(UIKeyboardCandidateViewState *)v3 style];
  candidateFont = [style2 candidateFont];
  CopyWithSymbolicTraits = CTFontCreateCopyWithSymbolicTraits(candidateFont, 0.0, 0, 2u, 2u);
  style3 = [(UIKeyboardCandidateViewState *)v3 style];
  [style3 setSupplementalLexiconCandidateFont:CopyWithSymbolicTraits];

  style4 = [(UIKeyboardCandidateViewState *)v3 style];
  [style4 setMaxNumberOfProactiveCells:2];

  if (_os_feature_enabled_impl())
  {
    v12 = +[UIColor insertionPointColor];
    style5 = [(UIKeyboardCandidateViewState *)v3 style];
    [style5 setHighlightedBackgroundColor:v12];

    style6 = [(UIKeyboardCandidateViewState *)v3 style];
    [style6 setHasShadow:1];

    style7 = [(UIKeyboardCandidateViewState *)v3 style];
    [style7 setRoundsArrowButtonEdge:1];
  }

  else
  {
    style7 = [(UIKeyboardCandidateViewState *)v3 style];
    [style7 setHighlightedBackgroundColor:0];
  }

  style8 = [(UIKeyboardCandidateViewState *)v3 style];
  [style8 setColumnsCount:9];

  style9 = [(UIKeyboardCandidateViewState *)v3 style];
  [style9 setRowHeight:41.0];

  style10 = [(UIKeyboardCandidateViewState *)v3 style];
  [style10 setGridPadding:{0.0, 0.0, 0.0, 42.0}];

  style11 = [(UIKeyboardCandidateViewState *)v3 style];
  [style11 setGridLinePadding:{0.0, 0.0, 0.0, 0.0}];

  style12 = [(UIKeyboardCandidateViewState *)v3 style];
  [style12 setScrollDisabled:1];

  style13 = [(UIKeyboardCandidateViewState *)v3 style];
  [style13 setShowExtraLineBeforeFirstRow:1];

  v22 = _os_feature_enabled_impl();
  style14 = [(UIKeyboardCandidateViewState *)v3 style];
  v24 = style14;
  if (v22)
  {
    [style14 setCornerRadius:10.0];

    style15 = [(UIKeyboardCandidateViewState *)v3 style];
    [style15 setArrowButtonImageName:@"chevron.up"];

    style17 = +[UIKeyboardCandidateViewImageRenderer sharedImageRenderer];
    v27 = [style17 pocketShadowImageForDarkKeyboard:-[UIKeyboardCandidateViewConfiguration darkKeyboard](self fadesToBottom:"darkKeyboard") drawShadow:0 topPadding:0 bottomPadding:1.0 height:{1.0, 42.0}];
    style16 = [(UIKeyboardCandidateViewState *)v3 style];
    [style16 setArrowButtonSeparatorImage:v27];
  }

  else
  {
    [style14 setCornerRadius:8.0];

    style17 = [(UIKeyboardCandidateViewState *)v3 style];
    [style17 setArrowButtonImageName:@"kb-extend-arrow"];
  }

  [(UIKeyboardCandidateViewState *)v3 setSortControlPosition:5];
  [(UIKeyboardCandidateViewState *)v3 setArrowButtonPosition:7];
  [(UIKeyboardCandidateViewState *)v3 setArrowButtonDirection:1];
  [(UIKeyboardCandidateViewState *)v3 setBorders:15];
  v29 = +[UIKeyboardImpl activeInstance];
  -[UIKeyboardCandidateViewState setCandidateNumberEnabled:](v3, "setCandidateNumberEnabled:", [v29 supportsNumberKeySelection]);

  if (!_os_feature_enabled_impl())
  {
    v30 = +[UIColor separatorColor];
    style18 = [(UIKeyboardCandidateViewState *)v3 style];
    [style18 setLineColor:v30];

    v32 = +[UIColor systemBackgroundColor];
    style19 = [(UIKeyboardCandidateViewState *)v3 style];
    [style19 setBackgroundColor:v32];

    v34 = +[UIColor systemBackgroundColor];
    style20 = [(UIKeyboardCandidateViewState *)v3 style];
    [style20 setArrowButtonBackgroundColor:v34];

LABEL_19:
    v42 = +[UIColor systemBackgroundColor];
    goto LABEL_21;
  }

  if ([(UIKeyboardCandidateViewConfiguration *)self darkKeyboard])
  {
    +[UIColor separatorColor];
  }

  else
  {
    +[UIColor lineSeparatorColor];
  }
  v36 = ;
  style21 = [(UIKeyboardCandidateViewState *)v3 style];
  [style21 setLineColor:v36];

  if ([(UIKeyboardCandidateViewConfiguration *)self darkKeyboard])
  {
    +[UIColor systemBackgroundColor];
  }

  else
  {
    +[UIColor candidateRowBackgroundColor];
  }
  v38 = ;
  style22 = [(UIKeyboardCandidateViewState *)v3 style];
  [style22 setBackgroundColor:v38];

  if ([(UIKeyboardCandidateViewConfiguration *)self darkKeyboard])
  {
    +[UIColor systemBackgroundColor];
  }

  else
  {
    +[UIColor candidateRowHighlightedColor];
  }
  v40 = ;
  style23 = [(UIKeyboardCandidateViewState *)v3 style];
  [style23 setArrowButtonBackgroundColor:v40];

  if ([(UIKeyboardCandidateViewConfiguration *)self darkKeyboard])
  {
    goto LABEL_19;
  }

  v42 = +[UIColor candidateRowHighlightedColor];
LABEL_21:
  v43 = v42;
  style24 = [(UIKeyboardCandidateViewState *)v3 style];
  [style24 setHighlightedRowBackgroundColor:v43];

  v45 = +[UIColor systemBackgroundColor];
  style25 = [(UIKeyboardCandidateViewState *)v3 style];
  [style25 setSortControlBackgroundColor:v45];

  v47 = +[UIColor secondarySystemFillColor];
  style26 = [(UIKeyboardCandidateViewState *)v3 style];
  [style26 setGroupHeaderBackgroundColor:v47];

  v80 = 0.0;
  v49 = +[UIColor tertiarySystemFillColor];
  [v49 getRed:0 green:0 blue:0 alpha:&v80];

  v50 = +[UIColor tertiarySystemFillColor];
  v51 = [v50 colorWithAlphaComponent:v80 * 0.5];
  style27 = [(UIKeyboardCandidateViewState *)v3 style];
  [style27 setGridBackgroundColor:v51];

  v53 = +[UIColor labelColor];
  style28 = [(UIKeyboardCandidateViewState *)v3 style];
  [style28 setTextColor:v53];

  v55 = +[UIColor tertiaryLabelColor];
  style29 = [(UIKeyboardCandidateViewState *)v3 style];
  [style29 setCandidateNumberColor:v55];

  if (_os_feature_enabled_impl())
  {
    v57 = [off_1E70ECC18 systemFontOfSize:14.0 weight:*off_1E70ECD08];
    style30 = [(UIKeyboardCandidateViewState *)v3 style];
    [style30 setCandidateNumberFont:v57];
  }

  v59 = +[UIColor tertiaryLabelColor];
  style31 = [(UIKeyboardCandidateViewState *)v3 style];
  [style31 setAlternativeTextColor:v59];

  style32 = [(UIKeyboardCandidateViewState *)v3 style];
  [style32 setSortControlColor:0];

  if (_os_feature_enabled_impl())
  {
    style33 = [(UIKeyboardCandidateViewState *)v3 style];
    candidateNumberColor = [style33 candidateNumberColor];
    style34 = [(UIKeyboardCandidateViewState *)v3 style];
    [style34 setArrowButtonColor:candidateNumberColor];

    v65 = +[UIColor candidateRowHighlightedColor];
    style35 = [(UIKeyboardCandidateViewState *)v3 style];
    [style35 setHighlightedTextColor:v65];

    v67 = +[UIColor candidateRowHighlightedColor];
    style36 = [(UIKeyboardCandidateViewState *)v3 style];
    [style36 setHighlightedCandidateNumberColor:v67];

    +[UIColor candidateRowHighlightedColor];
  }

  else
  {
    v69 = +[UIColor labelColor];
    style37 = [(UIKeyboardCandidateViewState *)v3 style];
    [style37 setHighlightedTextColor:v69];

    v71 = +[UIColor tertiaryLabelColor];
    style38 = [(UIKeyboardCandidateViewState *)v3 style];
    [style38 setHighlightedCandidateNumberColor:v71];

    +[UIColor tertiaryLabelColor];
  }
  v73 = ;
  style39 = [(UIKeyboardCandidateViewState *)v3 style];
  [style39 setHighlightedAlternativeTextColor:v73];

  if (_os_feature_enabled_impl())
  {
    style40 = [(UIKeyboardCandidateViewState *)v3 style];
    [style40 setHighlightedCellBackgroundImage:0];
  }

  else
  {
    style40 = +[UIKeyboardCandidateViewImageRenderer sharedImageRenderer];
    v76 = +[UIColor secondarySystemFillColor];
    v77 = [style40 highlightedBarCellBackgroundImageWithColor:v76 insets:{3.0, 3.0, 3.0, 3.0}];
    style41 = [(UIKeyboardCandidateViewState *)v3 style];
    [style41 setHighlightedCellBackgroundImage:v77];
  }

  return v3;
}

- (id)extendedState
{
  initialState = [(UIKeyboardCandidateViewConfigurationPhoneInline *)self initialState];
  [initialState setPrimaryGridRowType:1];
  [initialState setArrowButtonDirection:0];
  [initialState setArrowButtonPosition:0];
  [initialState setSortControlPosition:2];
  style = [initialState style];
  [style rowHeight];
  [initialState setAdditionalHeight:v4 * 4.0 + -1.0];

  style2 = [initialState style];
  [style2 setScrollDisabled:0];

  return initialState;
}

@end