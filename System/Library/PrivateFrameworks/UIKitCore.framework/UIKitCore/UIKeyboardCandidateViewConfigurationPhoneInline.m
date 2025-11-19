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
  v6 = [(UIKeyboardCandidateViewState *)v3 style];
  [v6 setCandidateFont:v5];

  v7 = [(UIKeyboardCandidateViewState *)v3 style];
  v8 = [v7 candidateFont];
  CopyWithSymbolicTraits = CTFontCreateCopyWithSymbolicTraits(v8, 0.0, 0, 2u, 2u);
  v10 = [(UIKeyboardCandidateViewState *)v3 style];
  [v10 setSupplementalLexiconCandidateFont:CopyWithSymbolicTraits];

  v11 = [(UIKeyboardCandidateViewState *)v3 style];
  [v11 setMaxNumberOfProactiveCells:2];

  if (_os_feature_enabled_impl())
  {
    v12 = +[UIColor insertionPointColor];
    v13 = [(UIKeyboardCandidateViewState *)v3 style];
    [v13 setHighlightedBackgroundColor:v12];

    v14 = [(UIKeyboardCandidateViewState *)v3 style];
    [v14 setHasShadow:1];

    v15 = [(UIKeyboardCandidateViewState *)v3 style];
    [v15 setRoundsArrowButtonEdge:1];
  }

  else
  {
    v15 = [(UIKeyboardCandidateViewState *)v3 style];
    [v15 setHighlightedBackgroundColor:0];
  }

  v16 = [(UIKeyboardCandidateViewState *)v3 style];
  [v16 setColumnsCount:9];

  v17 = [(UIKeyboardCandidateViewState *)v3 style];
  [v17 setRowHeight:41.0];

  v18 = [(UIKeyboardCandidateViewState *)v3 style];
  [v18 setGridPadding:{0.0, 0.0, 0.0, 42.0}];

  v19 = [(UIKeyboardCandidateViewState *)v3 style];
  [v19 setGridLinePadding:{0.0, 0.0, 0.0, 0.0}];

  v20 = [(UIKeyboardCandidateViewState *)v3 style];
  [v20 setScrollDisabled:1];

  v21 = [(UIKeyboardCandidateViewState *)v3 style];
  [v21 setShowExtraLineBeforeFirstRow:1];

  v22 = _os_feature_enabled_impl();
  v23 = [(UIKeyboardCandidateViewState *)v3 style];
  v24 = v23;
  if (v22)
  {
    [v23 setCornerRadius:10.0];

    v25 = [(UIKeyboardCandidateViewState *)v3 style];
    [v25 setArrowButtonImageName:@"chevron.up"];

    v26 = +[UIKeyboardCandidateViewImageRenderer sharedImageRenderer];
    v27 = [v26 pocketShadowImageForDarkKeyboard:-[UIKeyboardCandidateViewConfiguration darkKeyboard](self fadesToBottom:"darkKeyboard") drawShadow:0 topPadding:0 bottomPadding:1.0 height:{1.0, 42.0}];
    v28 = [(UIKeyboardCandidateViewState *)v3 style];
    [v28 setArrowButtonSeparatorImage:v27];
  }

  else
  {
    [v23 setCornerRadius:8.0];

    v26 = [(UIKeyboardCandidateViewState *)v3 style];
    [v26 setArrowButtonImageName:@"kb-extend-arrow"];
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
    v31 = [(UIKeyboardCandidateViewState *)v3 style];
    [v31 setLineColor:v30];

    v32 = +[UIColor systemBackgroundColor];
    v33 = [(UIKeyboardCandidateViewState *)v3 style];
    [v33 setBackgroundColor:v32];

    v34 = +[UIColor systemBackgroundColor];
    v35 = [(UIKeyboardCandidateViewState *)v3 style];
    [v35 setArrowButtonBackgroundColor:v34];

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
  v37 = [(UIKeyboardCandidateViewState *)v3 style];
  [v37 setLineColor:v36];

  if ([(UIKeyboardCandidateViewConfiguration *)self darkKeyboard])
  {
    +[UIColor systemBackgroundColor];
  }

  else
  {
    +[UIColor candidateRowBackgroundColor];
  }
  v38 = ;
  v39 = [(UIKeyboardCandidateViewState *)v3 style];
  [v39 setBackgroundColor:v38];

  if ([(UIKeyboardCandidateViewConfiguration *)self darkKeyboard])
  {
    +[UIColor systemBackgroundColor];
  }

  else
  {
    +[UIColor candidateRowHighlightedColor];
  }
  v40 = ;
  v41 = [(UIKeyboardCandidateViewState *)v3 style];
  [v41 setArrowButtonBackgroundColor:v40];

  if ([(UIKeyboardCandidateViewConfiguration *)self darkKeyboard])
  {
    goto LABEL_19;
  }

  v42 = +[UIColor candidateRowHighlightedColor];
LABEL_21:
  v43 = v42;
  v44 = [(UIKeyboardCandidateViewState *)v3 style];
  [v44 setHighlightedRowBackgroundColor:v43];

  v45 = +[UIColor systemBackgroundColor];
  v46 = [(UIKeyboardCandidateViewState *)v3 style];
  [v46 setSortControlBackgroundColor:v45];

  v47 = +[UIColor secondarySystemFillColor];
  v48 = [(UIKeyboardCandidateViewState *)v3 style];
  [v48 setGroupHeaderBackgroundColor:v47];

  v80 = 0.0;
  v49 = +[UIColor tertiarySystemFillColor];
  [v49 getRed:0 green:0 blue:0 alpha:&v80];

  v50 = +[UIColor tertiarySystemFillColor];
  v51 = [v50 colorWithAlphaComponent:v80 * 0.5];
  v52 = [(UIKeyboardCandidateViewState *)v3 style];
  [v52 setGridBackgroundColor:v51];

  v53 = +[UIColor labelColor];
  v54 = [(UIKeyboardCandidateViewState *)v3 style];
  [v54 setTextColor:v53];

  v55 = +[UIColor tertiaryLabelColor];
  v56 = [(UIKeyboardCandidateViewState *)v3 style];
  [v56 setCandidateNumberColor:v55];

  if (_os_feature_enabled_impl())
  {
    v57 = [off_1E70ECC18 systemFontOfSize:14.0 weight:*off_1E70ECD08];
    v58 = [(UIKeyboardCandidateViewState *)v3 style];
    [v58 setCandidateNumberFont:v57];
  }

  v59 = +[UIColor tertiaryLabelColor];
  v60 = [(UIKeyboardCandidateViewState *)v3 style];
  [v60 setAlternativeTextColor:v59];

  v61 = [(UIKeyboardCandidateViewState *)v3 style];
  [v61 setSortControlColor:0];

  if (_os_feature_enabled_impl())
  {
    v62 = [(UIKeyboardCandidateViewState *)v3 style];
    v63 = [v62 candidateNumberColor];
    v64 = [(UIKeyboardCandidateViewState *)v3 style];
    [v64 setArrowButtonColor:v63];

    v65 = +[UIColor candidateRowHighlightedColor];
    v66 = [(UIKeyboardCandidateViewState *)v3 style];
    [v66 setHighlightedTextColor:v65];

    v67 = +[UIColor candidateRowHighlightedColor];
    v68 = [(UIKeyboardCandidateViewState *)v3 style];
    [v68 setHighlightedCandidateNumberColor:v67];

    +[UIColor candidateRowHighlightedColor];
  }

  else
  {
    v69 = +[UIColor labelColor];
    v70 = [(UIKeyboardCandidateViewState *)v3 style];
    [v70 setHighlightedTextColor:v69];

    v71 = +[UIColor tertiaryLabelColor];
    v72 = [(UIKeyboardCandidateViewState *)v3 style];
    [v72 setHighlightedCandidateNumberColor:v71];

    +[UIColor tertiaryLabelColor];
  }
  v73 = ;
  v74 = [(UIKeyboardCandidateViewState *)v3 style];
  [v74 setHighlightedAlternativeTextColor:v73];

  if (_os_feature_enabled_impl())
  {
    v75 = [(UIKeyboardCandidateViewState *)v3 style];
    [v75 setHighlightedCellBackgroundImage:0];
  }

  else
  {
    v75 = +[UIKeyboardCandidateViewImageRenderer sharedImageRenderer];
    v76 = +[UIColor secondarySystemFillColor];
    v77 = [v75 highlightedBarCellBackgroundImageWithColor:v76 insets:{3.0, 3.0, 3.0, 3.0}];
    v78 = [(UIKeyboardCandidateViewState *)v3 style];
    [v78 setHighlightedCellBackgroundImage:v77];
  }

  return v3;
}

- (id)extendedState
{
  v2 = [(UIKeyboardCandidateViewConfigurationPhoneInline *)self initialState];
  [v2 setPrimaryGridRowType:1];
  [v2 setArrowButtonDirection:0];
  [v2 setArrowButtonPosition:0];
  [v2 setSortControlPosition:2];
  v3 = [v2 style];
  [v3 rowHeight];
  [v2 setAdditionalHeight:v4 * 4.0 + -1.0];

  v5 = [v2 style];
  [v5 setScrollDisabled:0];

  return v2;
}

@end