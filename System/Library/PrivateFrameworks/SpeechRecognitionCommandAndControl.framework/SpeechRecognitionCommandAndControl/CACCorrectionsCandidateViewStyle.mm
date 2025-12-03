@interface CACCorrectionsCandidateViewStyle
+ (id)cacDarkStyle;
+ (id)cacLightStyle;
+ (id)darkKeyboardStyleForDisambiguation;
+ (id)defaultDarkKeyboardStyle;
+ (id)defaultLightKeyboardStyle;
+ (id)lightKeyboardStyleForDisambiguation;
+ (id)lightTVStyle;
+ (id)onePixelImageWithColor:(id)color;
- (CGPoint)gridLineOffset;
- (UIEdgeInsets)arrowButtonPadding;
- (UIEdgeInsets)extraCellPadding;
- (UIEdgeInsets)gridLinePadding;
- (UIEdgeInsets)gridPadding;
- (UIEdgeInsets)sortControlPadding;
@end

@implementation CACCorrectionsCandidateViewStyle

+ (id)cacLightStyle
{
  v2 = objc_alloc_init(CACCorrectionsCandidateViewStyle);
  v3 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
  candidateFont = v2->_candidateFont;
  v2->_candidateFont = v3;

  v5 = [MEMORY[0x277D74300] systemFontOfSize:2.0];
  alternativeTextFont = v2->_alternativeTextFont;
  v2->_alternativeTextFont = v5;

  v7 = [MEMORY[0x277D74300] systemFontOfSize:2.0];
  annotationTextFont = v2->_annotationTextFont;
  v2->_annotationTextFont = v7;

  v9 = [MEMORY[0x277D74300] systemFontOfSize:2.0];
  candidateNumberFont = v2->_candidateNumberFont;
  v2->_candidateNumberFont = v9;

  v11 = [MEMORY[0x277D74300] systemFontOfSize:2.0];
  sortControlFont = v2->_sortControlFont;
  v2->_sortControlFont = v11;

  blackColor = [MEMORY[0x277D75348] blackColor];
  textColor = v2->_textColor;
  v2->_textColor = blackColor;

  textColor = [(CACCorrectionsCandidateViewStyle *)v2 textColor];
  highlightedTextColor = v2->_highlightedTextColor;
  v2->_highlightedTextColor = textColor;

  v17 = [MEMORY[0x277D75348] colorWithCGColor:UIKBGetNamedColor()];
  alternativeTextColor = v2->_alternativeTextColor;
  v2->_alternativeTextColor = v17;

  alternativeTextColor = [(CACCorrectionsCandidateViewStyle *)v2 alternativeTextColor];
  highlightedAlternativeTextColor = v2->_highlightedAlternativeTextColor;
  v2->_highlightedAlternativeTextColor = alternativeTextColor;

  v21 = [MEMORY[0x277D75348] colorWithCGColor:UIKBGetNamedColor()];
  candidateNumberColor = v2->_candidateNumberColor;
  v2->_candidateNumberColor = v21;

  candidateNumberColor = [(CACCorrectionsCandidateViewStyle *)v2 candidateNumberColor];
  highlightedCandidateNumberColor = v2->_highlightedCandidateNumberColor;
  v2->_highlightedCandidateNumberColor = candidateNumberColor;

  clearColor = [MEMORY[0x277D75348] clearColor];
  backgroundColor = v2->_backgroundColor;
  v2->_backgroundColor = clearColor;

  clearColor2 = [MEMORY[0x277D75348] clearColor];
  cellBackgroundColor = v2->_cellBackgroundColor;
  v2->_cellBackgroundColor = clearColor2;

  clearColor3 = [MEMORY[0x277D75348] clearColor];
  arrowButtonBackgroundColor = v2->_arrowButtonBackgroundColor;
  v2->_arrowButtonBackgroundColor = clearColor3;

  clearColor4 = [MEMORY[0x277D75348] clearColor];
  gridBackgroundColor = v2->_gridBackgroundColor;
  v2->_gridBackgroundColor = clearColor4;

  v33 = [MEMORY[0x277D75348] colorWithCGColor:UIKBGetNamedColor()];
  highlightedBackgroundColor = v2->_highlightedBackgroundColor;
  v2->_highlightedBackgroundColor = v33;

  v35 = [MEMORY[0x277D75348] colorWithCGColor:UIKBGetNamedColor()];
  groupHeaderBackgroundColor = v2->_groupHeaderBackgroundColor;
  v2->_groupHeaderBackgroundColor = v35;

  clearColor5 = [MEMORY[0x277D75348] clearColor];
  lineColor = v2->_lineColor;
  v2->_lineColor = clearColor5;

  v39 = [MEMORY[0x277D75348] colorWithCGColor:UIKBGetNamedColor()];
  sortControlColor = v2->_sortControlColor;
  v2->_sortControlColor = v39;

  clearColor6 = [MEMORY[0x277D75348] clearColor];
  sortControlBackgroundColor = v2->_sortControlBackgroundColor;
  v2->_sortControlBackgroundColor = clearColor6;

  v2->_gridLineOffset = *MEMORY[0x277CBF348];
  v2->_maskedCorners = 15;
  *&v2->_minimumCellPadding = xmmword_26B404E80;
  v2->_singleSlottedCellMargin = 10.0;
  v2->_foregroundOpacity = 1.0;
  v2->_backgroundOpacity = 1.0;
  defaultMetrics = [MEMORY[0x277D75520] defaultMetrics];
  [defaultMetrics scaledValueForValue:32.0];
  v2->_rowHeight = v44;

  v2->_cellTextAlignment = 0;
  v2->_maxNumberOfProactiveCells = 3;
  v2->_darkBackdrop = 0;

  return v2;
}

+ (id)cacDarkStyle
{
  v2 = objc_alloc_init(CACCorrectionsCandidateViewStyle);
  v3 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
  candidateFont = v2->_candidateFont;
  v2->_candidateFont = v3;

  v5 = [MEMORY[0x277D74300] systemFontOfSize:2.0];
  alternativeTextFont = v2->_alternativeTextFont;
  v2->_alternativeTextFont = v5;

  v7 = [MEMORY[0x277D74300] systemFontOfSize:2.0];
  annotationTextFont = v2->_annotationTextFont;
  v2->_annotationTextFont = v7;

  v9 = [MEMORY[0x277D74300] systemFontOfSize:2.0];
  candidateNumberFont = v2->_candidateNumberFont;
  v2->_candidateNumberFont = v9;

  v11 = [MEMORY[0x277D74300] systemFontOfSize:2.0];
  sortControlFont = v2->_sortControlFont;
  v2->_sortControlFont = v11;

  whiteColor = [MEMORY[0x277D75348] whiteColor];
  textColor = v2->_textColor;
  v2->_textColor = whiteColor;

  textColor = [(CACCorrectionsCandidateViewStyle *)v2 textColor];
  highlightedTextColor = v2->_highlightedTextColor;
  v2->_highlightedTextColor = textColor;

  v17 = [MEMORY[0x277D75348] colorWithCGColor:UIKBGetNamedColor()];
  alternativeTextColor = v2->_alternativeTextColor;
  v2->_alternativeTextColor = v17;

  alternativeTextColor = [(CACCorrectionsCandidateViewStyle *)v2 alternativeTextColor];
  highlightedAlternativeTextColor = v2->_highlightedAlternativeTextColor;
  v2->_highlightedAlternativeTextColor = alternativeTextColor;

  v21 = [MEMORY[0x277D75348] colorWithCGColor:UIKBGetNamedColor()];
  candidateNumberColor = v2->_candidateNumberColor;
  v2->_candidateNumberColor = v21;

  candidateNumberColor = [(CACCorrectionsCandidateViewStyle *)v2 candidateNumberColor];
  highlightedCandidateNumberColor = v2->_highlightedCandidateNumberColor;
  v2->_highlightedCandidateNumberColor = candidateNumberColor;

  backgroundColor = v2->_backgroundColor;
  v2->_backgroundColor = 0;

  clearColor = [MEMORY[0x277D75348] clearColor];
  cellBackgroundColor = v2->_cellBackgroundColor;
  v2->_cellBackgroundColor = clearColor;

  v28 = [MEMORY[0x277D75348] colorWithCGColor:UIKBGetNamedColor()];
  arrowButtonBackgroundColor = v2->_arrowButtonBackgroundColor;
  v2->_arrowButtonBackgroundColor = v28;

  clearColor2 = [MEMORY[0x277D75348] clearColor];
  gridBackgroundColor = v2->_gridBackgroundColor;
  v2->_gridBackgroundColor = clearColor2;

  v32 = [MEMORY[0x277D75348] colorWithCGColor:UIKBGetNamedColor()];
  highlightedBackgroundColor = v2->_highlightedBackgroundColor;
  v2->_highlightedBackgroundColor = v32;

  v34 = [MEMORY[0x277D75348] colorWithCGColor:UIKBGetNamedColor()];
  groupHeaderBackgroundColor = v2->_groupHeaderBackgroundColor;
  v2->_groupHeaderBackgroundColor = v34;

  clearColor3 = [MEMORY[0x277D75348] clearColor];
  lineColor = v2->_lineColor;
  v2->_lineColor = clearColor3;

  v38 = [MEMORY[0x277D75348] colorWithCGColor:UIKBGetNamedColor()];
  sortControlColor = v2->_sortControlColor;
  v2->_sortControlColor = v38;

  clearColor4 = [MEMORY[0x277D75348] clearColor];
  sortControlBackgroundColor = v2->_sortControlBackgroundColor;
  v2->_sortControlBackgroundColor = clearColor4;

  v2->_gridLineOffset = *MEMORY[0x277CBF348];
  v2->_maskedCorners = 15;
  *&v2->_minimumCellPadding = xmmword_26B404E80;
  v2->_singleSlottedCellMargin = 50.0;
  v2->_foregroundOpacity = 1.0;
  v2->_backgroundOpacity = 1.0;
  defaultMetrics = [MEMORY[0x277D75520] defaultMetrics];
  [defaultMetrics scaledValueForValue:32.0];
  v2->_rowHeight = v43;

  v2->_cellTextAlignment = 0;
  v2->_maxNumberOfProactiveCells = 3;
  v2->_darkBackdrop = 1;

  return v2;
}

+ (id)defaultLightKeyboardStyle
{
  v2 = objc_alloc_init(CACCorrectionsCandidateViewStyle);
  v3 = [MEMORY[0x277D74300] systemFontOfSize:17.0];
  candidateFont = v2->_candidateFont;
  v2->_candidateFont = v3;

  v5 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
  alternativeTextFont = v2->_alternativeTextFont;
  v2->_alternativeTextFont = v5;

  v7 = [MEMORY[0x277D74300] systemFontOfSize:10.0];
  annotationTextFont = v2->_annotationTextFont;
  v2->_annotationTextFont = v7;

  v9 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
  candidateNumberFont = v2->_candidateNumberFont;
  v2->_candidateNumberFont = v9;

  v11 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
  sortControlFont = v2->_sortControlFont;
  v2->_sortControlFont = v11;

  blackColor = [MEMORY[0x277D75348] blackColor];
  textColor = v2->_textColor;
  v2->_textColor = blackColor;

  textColor = [(CACCorrectionsCandidateViewStyle *)v2 textColor];
  highlightedTextColor = v2->_highlightedTextColor;
  v2->_highlightedTextColor = textColor;

  v17 = [MEMORY[0x277D75348] colorWithCGColor:UIKBGetNamedColor()];
  alternativeTextColor = v2->_alternativeTextColor;
  v2->_alternativeTextColor = v17;

  alternativeTextColor = [(CACCorrectionsCandidateViewStyle *)v2 alternativeTextColor];
  highlightedAlternativeTextColor = v2->_highlightedAlternativeTextColor;
  v2->_highlightedAlternativeTextColor = alternativeTextColor;

  v21 = [MEMORY[0x277D75348] colorWithCGColor:UIKBGetNamedColor()];
  candidateNumberColor = v2->_candidateNumberColor;
  v2->_candidateNumberColor = v21;

  candidateNumberColor = [(CACCorrectionsCandidateViewStyle *)v2 candidateNumberColor];
  highlightedCandidateNumberColor = v2->_highlightedCandidateNumberColor;
  v2->_highlightedCandidateNumberColor = candidateNumberColor;

  clearColor = [MEMORY[0x277D75348] clearColor];
  backgroundColor = v2->_backgroundColor;
  v2->_backgroundColor = clearColor;

  clearColor2 = [MEMORY[0x277D75348] clearColor];
  cellBackgroundColor = v2->_cellBackgroundColor;
  v2->_cellBackgroundColor = clearColor2;

  clearColor3 = [MEMORY[0x277D75348] clearColor];
  arrowButtonBackgroundColor = v2->_arrowButtonBackgroundColor;
  v2->_arrowButtonBackgroundColor = clearColor3;

  clearColor4 = [MEMORY[0x277D75348] clearColor];
  gridBackgroundColor = v2->_gridBackgroundColor;
  v2->_gridBackgroundColor = clearColor4;

  v33 = [MEMORY[0x277D75348] colorWithCGColor:UIKBGetNamedColor()];
  highlightedBackgroundColor = v2->_highlightedBackgroundColor;
  v2->_highlightedBackgroundColor = v33;

  v35 = [MEMORY[0x277D75348] colorWithCGColor:UIKBGetNamedColor()];
  groupHeaderBackgroundColor = v2->_groupHeaderBackgroundColor;
  v2->_groupHeaderBackgroundColor = v35;

  clearColor5 = [MEMORY[0x277D75348] clearColor];
  lineColor = v2->_lineColor;
  v2->_lineColor = clearColor5;

  v39 = [MEMORY[0x277D75348] colorWithCGColor:UIKBGetNamedColor()];
  sortControlColor = v2->_sortControlColor;
  v2->_sortControlColor = v39;

  clearColor6 = [MEMORY[0x277D75348] clearColor];
  sortControlBackgroundColor = v2->_sortControlBackgroundColor;
  v2->_sortControlBackgroundColor = clearColor6;

  v2->_rowHeight = 44.0;
  v2->_maskedCorners = 15;
  *&v2->_minimumCellPadding = xmmword_26B404E90;
  v2->_foregroundOpacity = 1.0;
  v2->_backgroundOpacity = 1.0;
  v2->_singleSlottedCellMargin = 50.0;
  v2->_cellTextAlignment = 1;
  v2->_columnsCount = 3;
  v2->_darkBackdrop = 0;

  return v2;
}

+ (id)defaultDarkKeyboardStyle
{
  v3 = objc_alloc_init(CACCorrectionsCandidateViewStyle);
  v4 = [MEMORY[0x277D74300] systemFontOfSize:20.0];
  candidateFont = v3->_candidateFont;
  v3->_candidateFont = v4;

  v6 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
  alternativeTextFont = v3->_alternativeTextFont;
  v3->_alternativeTextFont = v6;

  v8 = [MEMORY[0x277D74300] systemFontOfSize:10.0];
  annotationTextFont = v3->_annotationTextFont;
  v3->_annotationTextFont = v8;

  v10 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
  candidateNumberFont = v3->_candidateNumberFont;
  v3->_candidateNumberFont = v10;

  v12 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
  sortControlFont = v3->_sortControlFont;
  v3->_sortControlFont = v12;

  whiteColor = [MEMORY[0x277D75348] whiteColor];
  textColor = v3->_textColor;
  v3->_textColor = whiteColor;

  textColor = [(CACCorrectionsCandidateViewStyle *)v3 textColor];
  highlightedTextColor = v3->_highlightedTextColor;
  v3->_highlightedTextColor = textColor;

  v18 = [MEMORY[0x277D75348] colorWithCGColor:UIKBGetNamedColor()];
  alternativeTextColor = v3->_alternativeTextColor;
  v3->_alternativeTextColor = v18;

  alternativeTextColor = [(CACCorrectionsCandidateViewStyle *)v3 alternativeTextColor];
  highlightedAlternativeTextColor = v3->_highlightedAlternativeTextColor;
  v3->_highlightedAlternativeTextColor = alternativeTextColor;

  v22 = [MEMORY[0x277D75348] colorWithCGColor:UIKBGetNamedColor()];
  candidateNumberColor = v3->_candidateNumberColor;
  v3->_candidateNumberColor = v22;

  candidateNumberColor = [(CACCorrectionsCandidateViewStyle *)v3 candidateNumberColor];
  highlightedCandidateNumberColor = v3->_highlightedCandidateNumberColor;
  v3->_highlightedCandidateNumberColor = candidateNumberColor;

  backgroundColor = v3->_backgroundColor;
  v3->_backgroundColor = 0;

  v27 = [MEMORY[0x277D75348] colorWithCGColor:UIKBGetNamedColor()];
  arrowButtonBackgroundColor = v3->_arrowButtonBackgroundColor;
  v3->_arrowButtonBackgroundColor = v27;

  v29 = [MEMORY[0x277D75348] colorWithCGColor:UIKBGetNamedColor()];
  gridBackgroundColor = v3->_gridBackgroundColor;
  v3->_gridBackgroundColor = v29;

  v31 = [MEMORY[0x277D75348] colorWithCGColor:UIKBGetNamedColor()];
  highlightedBackgroundColor = v3->_highlightedBackgroundColor;
  v3->_highlightedBackgroundColor = v31;

  v33 = [MEMORY[0x277D75348] colorWithCGColor:UIKBGetNamedColor()];
  groupHeaderBackgroundColor = v3->_groupHeaderBackgroundColor;
  v3->_groupHeaderBackgroundColor = v33;

  v35 = [MEMORY[0x277D75348] colorWithCGColor:UIKBGetNamedColor()];
  lineColor = v3->_lineColor;
  v3->_lineColor = v35;

  v37 = [MEMORY[0x277D75348] colorWithCGColor:UIKBGetNamedColor()];
  sortControlColor = v3->_sortControlColor;
  v3->_sortControlColor = v37;

  v39 = [MEMORY[0x277D75348] colorWithCGColor:UIKBGetNamedColor()];
  sortControlBackgroundColor = v3->_sortControlBackgroundColor;
  v3->_sortControlBackgroundColor = v39;

  v41 = [self onePixelImageWithColor:v3->_lineColor];
  slottedCellSeparatorImage = v3->_slottedCellSeparatorImage;
  v3->_slottedCellSeparatorImage = v41;

  *&v3->_columnsCount = xmmword_26B404EA0;
  *&v3->_minimumCellPadding = xmmword_26B404E90;
  v3->_singleSlottedCellMargin = 30.0;
  v3->_foregroundOpacity = 1.0;
  v3->_backgroundOpacity = 1.0;
  v3->_rowHeight = 41.0;
  v3->_darkBackdrop = 1;

  return v3;
}

+ (id)lightKeyboardStyleForDisambiguation
{
  v2 = objc_alloc_init(CACCorrectionsCandidateViewStyle);
  v3 = [MEMORY[0x277D74300] systemFontOfSize:16.0];
  candidateFont = v2->_candidateFont;
  v2->_candidateFont = v3;

  blackColor = [MEMORY[0x277D75348] blackColor];
  textColor = v2->_textColor;
  v2->_textColor = blackColor;

  objc_storeStrong(&v2->_highlightedTextColor, v2->_textColor);
  v7 = [MEMORY[0x277D75348] colorWithCGColor:UIKBGetNamedColor()];
  alternativeTextColor = v2->_alternativeTextColor;
  v2->_alternativeTextColor = v7;

  alternativeTextColor = [(CACCorrectionsCandidateViewStyle *)v2 alternativeTextColor];
  highlightedAlternativeTextColor = v2->_highlightedAlternativeTextColor;
  v2->_highlightedAlternativeTextColor = alternativeTextColor;

  v11 = [MEMORY[0x277D75348] colorWithCGColor:UIKBGetNamedColor()];
  candidateNumberColor = v2->_candidateNumberColor;
  v2->_candidateNumberColor = v11;

  candidateNumberColor = [(CACCorrectionsCandidateViewStyle *)v2 candidateNumberColor];
  highlightedCandidateNumberColor = v2->_highlightedCandidateNumberColor;
  v2->_highlightedCandidateNumberColor = candidateNumberColor;

  clearColor = [MEMORY[0x277D75348] clearColor];
  backgroundColor = v2->_backgroundColor;
  v2->_backgroundColor = clearColor;

  clearColor2 = [MEMORY[0x277D75348] clearColor];
  gridBackgroundColor = v2->_gridBackgroundColor;
  v2->_gridBackgroundColor = clearColor2;

  clearColor3 = [MEMORY[0x277D75348] clearColor];
  highlightedBackgroundColor = v2->_highlightedBackgroundColor;
  v2->_highlightedBackgroundColor = clearColor3;

  lineColor = v2->_lineColor;
  v2->_lineColor = 0;

  v2->_rowHeight = 32.0;
  *&v2->_minimumCellPadding = xmmword_26B404E90;
  v2->_foregroundOpacity = 1.0;
  v2->_backgroundOpacity = 1.0;
  v2->_cellTextAlignment = 0;
  v2->_darkBackdrop = 0;

  return v2;
}

+ (id)darkKeyboardStyleForDisambiguation
{
  v2 = objc_alloc_init(CACCorrectionsCandidateViewStyle);
  v3 = [MEMORY[0x277D74300] systemFontOfSize:16.0];
  candidateFont = v2->_candidateFont;
  v2->_candidateFont = v3;

  v5 = [MEMORY[0x277D75348] colorWithCGColor:UIKBGetNamedColor()];
  textColor = v2->_textColor;
  v2->_textColor = v5;

  v7 = [MEMORY[0x277D75348] colorWithCGColor:UIKBGetNamedColor()];
  highlightedTextColor = v2->_highlightedTextColor;
  v2->_highlightedTextColor = v7;

  v9 = [MEMORY[0x277D75348] colorWithCGColor:UIKBGetNamedColor()];
  alternativeTextColor = v2->_alternativeTextColor;
  v2->_alternativeTextColor = v9;

  alternativeTextColor = [(CACCorrectionsCandidateViewStyle *)v2 alternativeTextColor];
  highlightedAlternativeTextColor = v2->_highlightedAlternativeTextColor;
  v2->_highlightedAlternativeTextColor = alternativeTextColor;

  v13 = [MEMORY[0x277D75348] colorWithCGColor:UIKBGetNamedColor()];
  candidateNumberColor = v2->_candidateNumberColor;
  v2->_candidateNumberColor = v13;

  candidateNumberColor = [(CACCorrectionsCandidateViewStyle *)v2 candidateNumberColor];
  highlightedCandidateNumberColor = v2->_highlightedCandidateNumberColor;
  v2->_highlightedCandidateNumberColor = candidateNumberColor;

  backgroundColor = v2->_backgroundColor;
  v2->_backgroundColor = 0;

  v18 = [MEMORY[0x277D75348] colorWithCGColor:UIKBGetNamedColor()];
  gridBackgroundColor = v2->_gridBackgroundColor;
  v2->_gridBackgroundColor = v18;

  objc_storeStrong(&v2->_highlightedBackgroundColor, v2->_backgroundColor);
  lineColor = v2->_lineColor;
  v2->_lineColor = 0;

  v2->_columnsCount = 6;
  *&v2->_minimumCellPadding = xmmword_26B404E90;
  v2->_foregroundOpacity = 1.0;
  v2->_backgroundOpacity = 1.0;
  v2->_rowHeight = 32.0;
  v2->_darkBackdrop = 1;

  return v2;
}

+ (id)lightTVStyle
{
  v2 = objc_alloc_init(CACCorrectionsCandidateViewStyle);
  v3 = [MEMORY[0x277D74300] systemFontOfSize:36.0];
  candidateFont = v2->_candidateFont;
  v2->_candidateFont = v3;

  v5 = [MEMORY[0x277D74300] systemFontOfSize:10.0];
  alternativeTextFont = v2->_alternativeTextFont;
  v2->_alternativeTextFont = v5;

  v7 = [MEMORY[0x277D74300] systemFontOfSize:10.0];
  annotationTextFont = v2->_annotationTextFont;
  v2->_annotationTextFont = v7;

  v9 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
  candidateNumberFont = v2->_candidateNumberFont;
  v2->_candidateNumberFont = v9;

  v11 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
  sortControlFont = v2->_sortControlFont;
  v2->_sortControlFont = v11;

  v13 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
  textColor = v2->_textColor;
  v2->_textColor = v13;

  textColor = [(CACCorrectionsCandidateViewStyle *)v2 textColor];
  highlightedTextColor = v2->_highlightedTextColor;
  v2->_highlightedTextColor = textColor;

  textColor2 = [(CACCorrectionsCandidateViewStyle *)v2 textColor];
  v18 = [textColor2 colorWithAlphaComponent:0.4];
  alternativeTextColor = v2->_alternativeTextColor;
  v2->_alternativeTextColor = v18;

  alternativeTextColor = [(CACCorrectionsCandidateViewStyle *)v2 alternativeTextColor];
  highlightedAlternativeTextColor = v2->_highlightedAlternativeTextColor;
  v2->_highlightedAlternativeTextColor = alternativeTextColor;

  clearColor = [MEMORY[0x277D75348] clearColor];
  candidateNumberColor = v2->_candidateNumberColor;
  v2->_candidateNumberColor = clearColor;

  candidateNumberColor = [(CACCorrectionsCandidateViewStyle *)v2 candidateNumberColor];
  highlightedCandidateNumberColor = v2->_highlightedCandidateNumberColor;
  v2->_highlightedCandidateNumberColor = candidateNumberColor;

  clearColor2 = [MEMORY[0x277D75348] clearColor];
  backgroundColor = v2->_backgroundColor;
  v2->_backgroundColor = clearColor2;

  clearColor3 = [MEMORY[0x277D75348] clearColor];
  gridBackgroundColor = v2->_gridBackgroundColor;
  v2->_gridBackgroundColor = clearColor3;

  clearColor4 = [MEMORY[0x277D75348] clearColor];
  highlightedBackgroundColor = v2->_highlightedBackgroundColor;
  v2->_highlightedBackgroundColor = clearColor4;

  clearColor5 = [MEMORY[0x277D75348] clearColor];
  groupHeaderBackgroundColor = v2->_groupHeaderBackgroundColor;
  v2->_groupHeaderBackgroundColor = clearColor5;

  clearColor6 = [MEMORY[0x277D75348] clearColor];
  lineColor = v2->_lineColor;
  v2->_lineColor = clearColor6;

  clearColor7 = [MEMORY[0x277D75348] clearColor];
  sortControlColor = v2->_sortControlColor;
  v2->_sortControlColor = clearColor7;

  v2->_columnsCount = 6;
  *&v2->_minimumCellPadding = xmmword_26B404EB0;
  v2->_foregroundOpacity = 1.0;
  v2->_backgroundOpacity = 1.0;
  v2->_rowHeight = 75.0;
  v2->_darkBackdrop = 0;

  return v2;
}

+ (id)onePixelImageWithColor:(id)color
{
  v7.width = 1.0;
  v7.height = 1.0;
  UIGraphicsBeginImageContextWithOptions(v7, 0, 1.0);
  UIGraphicsGetCurrentContext();
  CGContextClear();
  CurrentContext = UIGraphicsGetCurrentContext();
  v8.origin.x = 0.0;
  v8.origin.y = 0.0;
  v8.size.width = 1.0;
  v8.size.height = 1.0;
  CGContextFillRect(CurrentContext, v8);
  v4 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v4;
}

- (UIEdgeInsets)extraCellPadding
{
  top = self->_extraCellPadding.top;
  left = self->_extraCellPadding.left;
  bottom = self->_extraCellPadding.bottom;
  right = self->_extraCellPadding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)arrowButtonPadding
{
  top = self->_arrowButtonPadding.top;
  left = self->_arrowButtonPadding.left;
  bottom = self->_arrowButtonPadding.bottom;
  right = self->_arrowButtonPadding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)gridPadding
{
  top = self->_gridPadding.top;
  left = self->_gridPadding.left;
  bottom = self->_gridPadding.bottom;
  right = self->_gridPadding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)gridLinePadding
{
  top = self->_gridLinePadding.top;
  left = self->_gridLinePadding.left;
  bottom = self->_gridLinePadding.bottom;
  right = self->_gridLinePadding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGPoint)gridLineOffset
{
  x = self->_gridLineOffset.x;
  y = self->_gridLineOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (UIEdgeInsets)sortControlPadding
{
  top = self->_sortControlPadding.top;
  left = self->_sortControlPadding.left;
  bottom = self->_sortControlPadding.bottom;
  right = self->_sortControlPadding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end