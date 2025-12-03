@interface UIKeyboardCandidateViewStyle
+ (id)darkKeyboardStyle;
+ (id)darkKeyboardStyleForDisambiguation;
+ (id)disambiguationStyleForDarkKeyboard:(BOOL)keyboard;
+ (id)lightKeyboardStyle;
+ (id)lightKeyboardStyleForDisambiguation;
+ (id)styleForDarkKeyboard:(BOOL)keyboard;
+ (id)tvGridStyleForDarkKeyboard:(BOOL)keyboard;
+ (id)tvLinearStyleForDarkKeyboard:(BOOL)keyboard;
+ (id)visionInlineStyle;
- (BOOL)isEqual:(id)equal;
- (CGPoint)gridLineOffset;
- (UIEdgeInsets)arrowButtonPadding;
- (UIEdgeInsets)extraCellPadding;
- (UIEdgeInsets)gridLinePadding;
- (UIEdgeInsets)gridPadding;
- (UIEdgeInsets)groupHeaderPadding;
- (UIEdgeInsets)outerGridPadding;
- (UIEdgeInsets)sortControlPadding;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation UIKeyboardCandidateViewStyle

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  objc_storeStrong(v4 + 5, self->_candidateFont);
  objc_storeStrong(v4 + 8, self->_candidateFont);
  objc_storeStrong(v4 + 7, self->_annotationTextFont);
  objc_storeStrong(v4 + 9, self->_candidateNumberFont);
  objc_storeStrong(v4 + 10, self->_sortControlFont);
  objc_storeStrong(v4 + 11, self->_textColor);
  objc_storeStrong(v4 + 12, self->_highlightedTextColor);
  objc_storeStrong(v4 + 13, self->_alternativeTextColor);
  objc_storeStrong(v4 + 14, self->_highlightedAlternativeTextColor);
  objc_storeStrong(v4 + 15, self->_candidateNumberColor);
  objc_storeStrong(v4 + 16, self->_highlightedCandidateNumberColor);
  objc_storeStrong(v4 + 20, self->_cellBackgroundColor);
  objc_storeStrong(v4 + 17, self->_backgroundMaterial);
  objc_storeStrong(v4 + 18, self->_backgroundColor);
  objc_storeStrong(v4 + 21, self->_arrowButtonBackgroundColor);
  v4[8] = self->_arrowButtonBackgroundHidden;
  objc_storeStrong(v4 + 22, self->_arrowButtonColor);
  objc_storeStrong(v4 + 23, self->_gridBackgroundColor);
  objc_storeStrong(v4 + 24, self->_highlightedBackgroundColor);
  objc_storeStrong(v4 + 26, self->_groupHeaderBackgroundColor);
  objc_storeStrong(v4 + 28, self->_lineColor);
  objc_storeStrong(v4 + 29, self->_sortControlColor);
  objc_storeStrong(v4 + 30, self->_sortControlBackgroundColor);
  v5 = [(NSString *)self->_arrowButtonImageName copy];
  v6 = *(v4 + 31);
  *(v4 + 31) = v5;

  objc_storeStrong(v4 + 19, self->_borderColor);
  objc_storeStrong(v4 + 32, self->_cellSeparatorImage);
  objc_storeStrong(v4 + 33, self->_slottedCellSeparatorImage);
  objc_storeStrong(v4 + 34, self->_leftEdgeSeparatorImage);
  objc_storeStrong(v4 + 35, self->_rightEdgeSeparatorImage);
  objc_storeStrong(v4 + 31, self->_arrowButtonImageName);
  objc_storeStrong(v4 + 37, self->_leftEdgeMaskImage);
  objc_storeStrong(v4 + 38, self->_rightEdgeMaskImage);
  objc_storeStrong(v4 + 39, self->_cellBackgroundImage);
  objc_storeStrong(v4 + 40, self->_highlightedCellBackgroundImage);
  *(v4 + 42) = *&self->_rowHeight;
  *(v4 + 44) = *&self->_cornerRadius;
  *(v4 + 47) = self->_maskedCorners;
  *(v4 + 49) = *&self->_foregroundOpacity;
  *(v4 + 50) = *&self->_backgroundOpacity;
  v4[10] = self->_hasShadow;
  v4[11] = self->_roundsArrowButtonEdge;
  *(v4 + 45) = *&self->_borderWidth;
  *(v4 + 51) = self->_layoutOrientation;
  *(v4 + 52) = self->_columnsCount;
  *(v4 + 53) = self->_maxNumberOfProactiveCells;
  *(v4 + 54) = *&self->_minimumCellPadding;
  *(v4 + 55) = *&self->_minimumCellWidth;
  *(v4 + 56) = *&self->_minimumInterItemSpacing;
  *(v4 + 57) = *&self->_maximumIconWidth;
  v4[12] = self->_shouldJustifyRow;
  *(v4 + 58) = *&self->_singleSlottedCellMargin;
  v7 = *&self->_extraCellPadding.bottom;
  *(v4 + 616) = *&self->_extraCellPadding.top;
  *(v4 + 632) = v7;
  v8 = *&self->_gridPadding.bottom;
  *(v4 + 680) = *&self->_gridPadding.top;
  *(v4 + 696) = v8;
  v9 = *&self->_gridLinePadding.bottom;
  *(v4 + 712) = *&self->_gridLinePadding.top;
  *(v4 + 728) = v9;
  *(v4 + 600) = self->_gridLineOffset;
  v10 = *&self->_sortControlPadding.bottom;
  *(v4 + 744) = *&self->_sortControlPadding.top;
  *(v4 + 760) = v10;
  *(v4 + 59) = self->_cellTextAlignment;
  *(v4 + 61) = self->_lineBreakMode;
  v4[13] = self->_darkBackdrop;
  v4[14] = self->_scrollDisabled;
  v4[15] = self->_dragGestureDisabled;
  v4[17] = self->_showsIndex;
  v4[20] = self->_dontSelectLastItemByBackwardMoving;
  v4[21] = self->_showOneMoreCandidate;
  v4[22] = self->_disableSwitchingSortingMethodByTabKey;
  v4[23] = self->_skipInlineCandidate;
  v4[24] = self->_hidesPartialCandidates;
  *(v4 + 64) = self->_minimumNumberOfCandidates;
  *(v4 + 65) = *&self->_widthOfGridGradient;
  v4[25] = self->_showCellBorderForSpaceConfirmationCandidate;
  v4[26] = self->_performScalingAnimationOnCellHighlight;
  v4[27] = self->_arrowButtonHighlightBackgroundHidden;
  objc_storeStrong(v4 + 66, self->_arrowButtonConfig);
  objc_storeStrong(v4 + 67, self->_spaceConfirmationCandidateCellBackgroundColor);
  v4[28] = self->_hideLinesOnDisambiguationGridEdges;
  v4[29] = self->_maximizeSortControlWidthWithPadding;
  *(v4 + 68) = *&self->_alternativeTextLeftSpacing;
  v11 = *&self->_groupHeaderPadding.bottom;
  *(v4 + 808) = *&self->_groupHeaderPadding.top;
  *(v4 + 824) = v11;
  *(v4 + 69) = *&self->_interRowSpacing;
  v4[30] = self->_applyCornerRadiusToAllCandidates;
  objc_storeStrong(v4 + 70, self->_autofillExtraCandidateImage);
  *(v4 + 71) = *&self->_slottedCandidatesIterItemSpacing;
  objc_storeStrong(v4 + 72, self->_suggestionCandidateHeaderFontAttributes);
  objc_storeStrong(v4 + 73, self->_suggestionCandidateBodyFontAttributes);
  v4[31] = self->_shouldUpdateCollectionViewWidthForArrowButtonVisibility;
  v4[32] = self->_hideSlottedCellSeparators;
  objc_storeStrong(v4 + 74, self->_proactiveCandidateContentsGravity);
  v4[33] = self->_shouldScrollIfShowingLastVisibleRow;
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    candidateFont = self->_candidateFont;
    if (candidateFont == v6[5])
    {
      v8 = 1;
    }

    else
    {
      v8 = [(UIFont *)candidateFont isEqual:?];
    }

    alternativeTextFont = self->_alternativeTextFont;
    if (alternativeTextFont == v6[8])
    {
      v11 = 1;
    }

    else
    {
      v11 = [(UIFont *)alternativeTextFont isEqual:?];
    }

    v12 = v8 & v11;
    annotationTextFont = self->_annotationTextFont;
    if (annotationTextFont == v6[7])
    {
      v14 = 1;
    }

    else
    {
      v14 = [(UIFont *)annotationTextFont isEqual:?];
    }

    v15 = v12 & v14;
    candidateNumberFont = self->_candidateNumberFont;
    if (candidateNumberFont == v6[9])
    {
      v17 = 1;
    }

    else
    {
      v17 = [(UIFont *)candidateNumberFont isEqual:?];
    }

    v18 = v15 & v17;
    sortControlFont = self->_sortControlFont;
    if (sortControlFont == v6[10])
    {
      v20 = 1;
    }

    else
    {
      v20 = [(UIFont *)sortControlFont isEqual:?];
    }

    v21 = v18 & v20;
    textColor = self->_textColor;
    if (textColor == v6[11])
    {
      v23 = 1;
    }

    else
    {
      v23 = [(UIColor *)textColor isEqual:?];
    }

    v24 = v21 & v23;
    highlightedTextColor = self->_highlightedTextColor;
    if (highlightedTextColor == v6[12])
    {
      v26 = 1;
    }

    else
    {
      v26 = [(UIColor *)highlightedTextColor isEqual:?];
    }

    v27 = v24 & v26;
    alternativeTextColor = self->_alternativeTextColor;
    if (alternativeTextColor == v6[13])
    {
      v29 = 1;
    }

    else
    {
      v29 = [(UIColor *)alternativeTextColor isEqual:?];
    }

    v30 = v27 & v29;
    highlightedAlternativeTextColor = self->_highlightedAlternativeTextColor;
    if (highlightedAlternativeTextColor == v6[14])
    {
      v32 = 1;
    }

    else
    {
      v32 = [(UIColor *)highlightedAlternativeTextColor isEqual:?];
    }

    v33 = v30 & v32;
    candidateNumberColor = self->_candidateNumberColor;
    if (candidateNumberColor == v6[15])
    {
      v35 = 1;
    }

    else
    {
      v35 = [(UIColor *)candidateNumberColor isEqual:?];
    }

    v36 = v33 & v35;
    highlightedCandidateNumberColor = self->_highlightedCandidateNumberColor;
    if (highlightedCandidateNumberColor == v6[16])
    {
      v38 = 1;
    }

    else
    {
      v38 = [(UIColor *)highlightedCandidateNumberColor isEqual:?];
    }

    v39 = v36 & v38;
    backgroundMaterial = self->_backgroundMaterial;
    if (backgroundMaterial == v6[17])
    {
      v41 = 1;
    }

    else
    {
      v41 = [(_UIViewMaterial *)backgroundMaterial isEqual:?];
    }

    v42 = v39 & v41;
    backgroundColor = self->_backgroundColor;
    if (backgroundColor == v6[18])
    {
      v44 = 1;
    }

    else
    {
      v44 = [(UIColor *)backgroundColor isEqual:?];
    }

    v45 = v42 & v44;
    arrowButtonBackgroundColor = self->_arrowButtonBackgroundColor;
    if (arrowButtonBackgroundColor == v6[21])
    {
      v47 = 1;
    }

    else
    {
      v47 = [(UIColor *)arrowButtonBackgroundColor isEqual:?];
    }

    if (self->_arrowButtonBackgroundHidden == *(v6 + 8))
    {
      v48 = v45 & v47;
    }

    else
    {
      v48 = 0;
    }

    arrowButtonColor = self->_arrowButtonColor;
    if (arrowButtonColor == v6[22])
    {
      v50 = 1;
    }

    else
    {
      v50 = [(UIColor *)arrowButtonColor isEqual:?];
    }

    v51 = v48 & v50;
    cellBackgroundColor = self->_cellBackgroundColor;
    if (cellBackgroundColor == v6[20])
    {
      v53 = 1;
    }

    else
    {
      v53 = [(UIColor *)cellBackgroundColor isEqual:?];
    }

    v54 = v51 & v53;
    gridBackgroundColor = self->_gridBackgroundColor;
    if (gridBackgroundColor == v6[23])
    {
      v56 = 1;
    }

    else
    {
      v56 = [(UIColor *)gridBackgroundColor isEqual:?];
    }

    v57 = v54 & v56;
    highlightedBackgroundColor = self->_highlightedBackgroundColor;
    if (highlightedBackgroundColor == v6[24])
    {
      v59 = 1;
    }

    else
    {
      v59 = [(UIColor *)highlightedBackgroundColor isEqual:?];
    }

    v60 = v57 & v59;
    groupHeaderBackgroundColor = self->_groupHeaderBackgroundColor;
    if (groupHeaderBackgroundColor == v6[26])
    {
      v62 = 1;
    }

    else
    {
      v62 = [(UIColor *)groupHeaderBackgroundColor isEqual:?];
    }

    v63 = v60 & v62;
    lineColor = self->_lineColor;
    if (lineColor == v6[28])
    {
      v65 = 1;
    }

    else
    {
      v65 = [(UIColor *)lineColor isEqual:?];
    }

    v66 = v63 & v65;
    sortControlColor = self->_sortControlColor;
    if (sortControlColor == v6[29])
    {
      v68 = 1;
    }

    else
    {
      v68 = [(UIColor *)sortControlColor isEqual:?];
    }

    v69 = v66 & v68;
    sortControlBackgroundColor = self->_sortControlBackgroundColor;
    if (sortControlBackgroundColor == v6[30])
    {
      v71 = 1;
    }

    else
    {
      v71 = [(UIColor *)sortControlBackgroundColor isEqual:?];
    }

    v72 = v69 & v71;
    arrowButtonImageName = self->_arrowButtonImageName;
    if (arrowButtonImageName == v6[31])
    {
      v74 = 1;
    }

    else
    {
      v74 = [(NSString *)arrowButtonImageName isEqual:?];
    }

    v75 = v72 & v74;
    borderColor = self->_borderColor;
    if (borderColor == v6[19])
    {
      v77 = 1;
    }

    else
    {
      v77 = [(UIColor *)borderColor isEqual:?];
    }

    v78 = v75 & v77;
    if (self->_cellSeparatorImage != v6[32])
    {
      v78 = 0;
    }

    if (self->_slottedCellSeparatorImage != v6[33])
    {
      v78 = 0;
    }

    if (self->_leftEdgeSeparatorImage != v6[34])
    {
      v78 = 0;
    }

    if (self->_rightEdgeSeparatorImage != v6[35])
    {
      v78 = 0;
    }

    if (self->_leftEdgeMaskImage != v6[37])
    {
      v78 = 0;
    }

    if (self->_rightEdgeMaskImage != v6[38])
    {
      v78 = 0;
    }

    if (self->_arrowButtonImageName != v6[31])
    {
      v78 = 0;
    }

    if (self->_cellBackgroundImage != v6[39])
    {
      v78 = 0;
    }

    if (self->_highlightedCellBackgroundImage != v6[40])
    {
      v78 = 0;
    }

    if (self->_rowHeight != *(v6 + 42))
    {
      v78 = 0;
    }

    if (self->_cornerRadius != *(v6 + 44))
    {
      v78 = 0;
    }

    if (self->_maskedCorners != v6[47])
    {
      v78 = 0;
    }

    if (self->_foregroundOpacity != *(v6 + 49))
    {
      v78 = 0;
    }

    if (self->_backgroundOpacity != *(v6 + 50))
    {
      v78 = 0;
    }

    if (self->_hasShadow != *(v6 + 10))
    {
      v78 = 0;
    }

    if (self->_roundsArrowButtonEdge != *(v6 + 11))
    {
      v78 = 0;
    }

    if (self->_borderWidth != *(v6 + 45))
    {
      v78 = 0;
    }

    if (self->_layoutOrientation != v6[51])
    {
      v78 = 0;
    }

    if (self->_columnsCount != v6[52])
    {
      v78 = 0;
    }

    if (self->_maxNumberOfProactiveCells != v6[53])
    {
      v78 = 0;
    }

    if (self->_minimumCellPadding != *(v6 + 54))
    {
      v78 = 0;
    }

    if (self->_minimumCellWidth != *(v6 + 55))
    {
      v78 = 0;
    }

    if (self->_minimumInterItemSpacing != *(v6 + 56))
    {
      v78 = 0;
    }

    if (self->_maximumIconWidth != *(v6 + 57))
    {
      v78 = 0;
    }

    if (self->_shouldJustifyRow != *(v6 + 12))
    {
      v78 = 0;
    }

    if (self->_singleSlottedCellMargin != *(v6 + 58))
    {
      v78 = 0;
    }

    v79 = self->_extraCellPadding.left == *(v6 + 78);
    if (self->_extraCellPadding.top != *(v6 + 77))
    {
      v79 = 0;
    }

    if (self->_extraCellPadding.right != *(v6 + 80))
    {
      v79 = 0;
    }

    if (self->_extraCellPadding.bottom != *(v6 + 79))
    {
      v79 = 0;
    }

    v80 = self->_gridPadding.left == *(v6 + 86);
    if (self->_gridPadding.top != *(v6 + 85))
    {
      v80 = 0;
    }

    if (self->_gridPadding.right != *(v6 + 88))
    {
      v80 = 0;
    }

    if (self->_gridPadding.bottom != *(v6 + 87))
    {
      v80 = 0;
    }

    v81 = v79 && v80;
    v82 = self->_gridLinePadding.left == *(v6 + 90);
    if (self->_gridLinePadding.top != *(v6 + 89))
    {
      v82 = 0;
    }

    if (self->_gridLinePadding.right != *(v6 + 92))
    {
      v82 = 0;
    }

    if (self->_gridLinePadding.bottom != *(v6 + 91))
    {
      v82 = 0;
    }

    v83 = v81 && v82;
    v84 = self->_gridLineOffset.x == *(v6 + 75);
    if (self->_gridLineOffset.y != *(v6 + 76))
    {
      v84 = 0;
    }

    v85 = v83 && v84;
    v86 = self->_sortControlPadding.left == *(v6 + 94);
    if (self->_sortControlPadding.top != *(v6 + 93))
    {
      v86 = 0;
    }

    if (self->_sortControlPadding.right != *(v6 + 96))
    {
      v86 = 0;
    }

    if (self->_sortControlPadding.bottom != *(v6 + 95))
    {
      v86 = 0;
    }

    v87 = v78 & (v85 && v86);
    if (self->_cellTextAlignment != v6[59])
    {
      v87 = 0;
    }

    if (self->_lineBreakMode != v6[61])
    {
      v87 = 0;
    }

    if (self->_darkBackdrop != *(v6 + 13))
    {
      v87 = 0;
    }

    if (self->_scrollDisabled != *(v6 + 14))
    {
      v87 = 0;
    }

    if (self->_dragGestureDisabled != *(v6 + 15))
    {
      v87 = 0;
    }

    if (self->_showsIndex != *(v6 + 17))
    {
      v87 = 0;
    }

    if (self->_dontSelectLastItemByBackwardMoving != *(v6 + 20))
    {
      v87 = 0;
    }

    if (self->_showOneMoreCandidate != *(v6 + 21))
    {
      v87 = 0;
    }

    if (self->_disableSwitchingSortingMethodByTabKey != *(v6 + 22))
    {
      v87 = 0;
    }

    if (self->_skipInlineCandidate != *(v6 + 23))
    {
      v87 = 0;
    }

    if (self->_hidesPartialCandidates != *(v6 + 24))
    {
      v87 = 0;
    }

    if (self->_minimumNumberOfCandidates != v6[64])
    {
      v87 = 0;
    }

    if (self->_widthOfGridGradient != *(v6 + 65))
    {
      v87 = 0;
    }

    if (self->_showCellBorderForSpaceConfirmationCandidate != *(v6 + 25))
    {
      v87 = 0;
    }

    if (self->_performScalingAnimationOnCellHighlight != *(v6 + 26))
    {
      v87 = 0;
    }

    if (self->_arrowButtonHighlightBackgroundHidden == *(v6 + 27))
    {
      v88 = v87;
    }

    else
    {
      v88 = 0;
    }

    arrowButtonConfig = self->_arrowButtonConfig;
    if (arrowButtonConfig == v6[66])
    {
      v90 = 1;
    }

    else
    {
      v90 = [(UIButtonConfiguration *)arrowButtonConfig isEqual:?];
    }

    v91 = v88 & v90;
    spaceConfirmationCandidateCellBackgroundColor = self->_spaceConfirmationCandidateCellBackgroundColor;
    if (spaceConfirmationCandidateCellBackgroundColor == v6[67])
    {
      v93 = 1;
    }

    else
    {
      v93 = [(UIColor *)spaceConfirmationCandidateCellBackgroundColor isEqual:?];
    }

    v94 = v91 & v93;
    if (self->_hideLinesOnDisambiguationGridEdges != *(v6 + 28))
    {
      v94 = 0;
    }

    if (self->_maximizeSortControlWidthWithPadding != *(v6 + 29))
    {
      v94 = 0;
    }

    if (self->_alternativeTextLeftSpacing != *(v6 + 68))
    {
      v94 = 0;
    }

    v95 = self->_groupHeaderPadding.left == *(v6 + 102);
    if (self->_groupHeaderPadding.top != *(v6 + 101))
    {
      v95 = 0;
    }

    if (self->_groupHeaderPadding.right != *(v6 + 104))
    {
      v95 = 0;
    }

    if (self->_groupHeaderPadding.bottom != *(v6 + 103))
    {
      v95 = 0;
    }

    v96 = v94 & v95;
    if (self->_interRowSpacing != *(v6 + 69))
    {
      v96 = 0;
    }

    if (self->_applyCornerRadiusToAllCandidates != *(v6 + 30))
    {
      v96 = 0;
    }

    if (self->_autofillExtraCandidateImage != v6[70])
    {
      v96 = 0;
    }

    if (self->_slottedCandidatesIterItemSpacing == *(v6 + 71))
    {
      v97 = v96;
    }

    else
    {
      v97 = 0;
    }

    suggestionCandidateHeaderFontAttributes = self->_suggestionCandidateHeaderFontAttributes;
    if (suggestionCandidateHeaderFontAttributes == v6[72])
    {
      v99 = 1;
    }

    else
    {
      v99 = [(NSDictionary *)suggestionCandidateHeaderFontAttributes isEqual:?];
    }

    v100 = v97 & v99;
    suggestionCandidateBodyFontAttributes = self->_suggestionCandidateBodyFontAttributes;
    if (suggestionCandidateBodyFontAttributes == v6[73])
    {
      v102 = 1;
    }

    else
    {
      v102 = [(NSDictionary *)suggestionCandidateBodyFontAttributes isEqual:?];
    }

    v103 = v100 & v102;
    if (self->_shouldUpdateCollectionViewWidthForArrowButtonVisibility != *(v6 + 31))
    {
      v103 = 0;
    }

    if (self->_hideSlottedCellSeparators == *(v6 + 32))
    {
      v104 = v103;
    }

    else
    {
      v104 = 0;
    }

    proactiveCandidateContentsGravity = self->_proactiveCandidateContentsGravity;
    if (proactiveCandidateContentsGravity == v6[74])
    {
      v106 = 1;
    }

    else
    {
      v106 = [(NSString *)proactiveCandidateContentsGravity isEqual:?];
    }

    if (self->_shouldScrollIfShowingLastVisibleRow == *(v6 + 33))
    {
      v9 = v104 & v106;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)lightKeyboardStyle
{
  v4 = objc_alloc_init(UIKeyboardCandidateViewStyle);
  v5 = _UISolariumEnabled();
  if (v5)
  {
    v2 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions = [v2 preferencesActions];
    colorAdaptiveKeyboardEnabled = [preferencesActions colorAdaptiveKeyboardEnabled];
    v7 = 20.0;
    if (colorAdaptiveKeyboardEnabled)
    {
      v7 = 17.0;
    }
  }

  else
  {
    v7 = 20.0;
  }

  v8 = [off_1E70ECC18 systemFontOfSize:v7];
  candidateFont = v4->_candidateFont;
  v4->_candidateFont = v8;

  if (v5)
  {
  }

  v10 = [off_1E70ECC18 systemFontOfSize:14.0];
  alternativeTextFont = v4->_alternativeTextFont;
  v4->_alternativeTextFont = v10;

  v12 = [off_1E70ECC18 systemFontOfSize:10.0];
  annotationTextFont = v4->_annotationTextFont;
  v4->_annotationTextFont = v12;

  v14 = [off_1E70ECC18 systemFontOfSize:14.0];
  candidateNumberFont = v4->_candidateNumberFont;
  v4->_candidateNumberFont = v14;

  v16 = [off_1E70ECC18 systemFontOfSize:14.0];
  sortControlFont = v4->_sortControlFont;
  v4->_sortControlFont = v16;

  v18 = +[UIColor blackColor];
  textColor = v4->_textColor;
  v4->_textColor = v18;

  textColor = [(UIKeyboardCandidateViewStyle *)v4 textColor];
  highlightedTextColor = v4->_highlightedTextColor;
  v4->_highlightedTextColor = textColor;

  v22 = [UIColor colorWithCGColor:UIKBGetNamedColor(@"UIKBColorBlack_Alpha35")];
  alternativeTextColor = v4->_alternativeTextColor;
  v4->_alternativeTextColor = v22;

  alternativeTextColor = [(UIKeyboardCandidateViewStyle *)v4 alternativeTextColor];
  highlightedAlternativeTextColor = v4->_highlightedAlternativeTextColor;
  v4->_highlightedAlternativeTextColor = alternativeTextColor;

  v26 = [UIColor colorWithCGColor:UIKBGetNamedColor(@"UIKBLegacyCandidateGridPadCellCandidateNumber")];
  candidateNumberColor = v4->_candidateNumberColor;
  v4->_candidateNumberColor = v26;

  candidateNumberColor = [(UIKeyboardCandidateViewStyle *)v4 candidateNumberColor];
  highlightedCandidateNumberColor = v4->_highlightedCandidateNumberColor;
  v4->_highlightedCandidateNumberColor = candidateNumberColor;

  v30 = +[UIColor clearColor];
  backgroundColor = v4->_backgroundColor;
  v4->_backgroundColor = v30;

  v32 = +[UIColor clearColor];
  cellBackgroundColor = v4->_cellBackgroundColor;
  v4->_cellBackgroundColor = v32;

  v34 = +[UIColor clearColor];
  arrowButtonBackgroundColor = v4->_arrowButtonBackgroundColor;
  v4->_arrowButtonBackgroundColor = v34;

  v36 = +[UIColor blackColor];
  arrowButtonColor = v4->_arrowButtonColor;
  v4->_arrowButtonColor = v36;

  *&v4->_arrowButtonPadding.top = 0u;
  *&v4->_arrowButtonPadding.bottom = 0u;
  v38 = +[UIColor clearColor];
  gridBackgroundColor = v4->_gridBackgroundColor;
  v4->_gridBackgroundColor = v38;

  v40 = [UIColor colorWithCGColor:UIKBGetNamedColor(@"UIKBLightCandidateBarCellHighlightedBackground")];
  highlightedBackgroundColor = v4->_highlightedBackgroundColor;
  v4->_highlightedBackgroundColor = v40;

  v42 = [UIColor colorWithCGColor:UIKBGetNamedColor(@"UIKBColorCandidateCellGroupHeaderLight")];
  groupHeaderBackgroundColor = v4->_groupHeaderBackgroundColor;
  v4->_groupHeaderBackgroundColor = v42;

  v44 = [UIColor colorWithCGColor:UIKBGetNamedColor(@"UIKBColorGray_Percent55")];
  lineColor = v4->_lineColor;
  v4->_lineColor = v44;

  v46 = [UIColor colorWithCGColor:UIKBGetNamedColor(@"UIKBColorKeyGrayKeyLightBackground")];
  sortControlColor = v4->_sortControlColor;
  v4->_sortControlColor = v46;

  v48 = +[UIColor clearColor];
  sortControlBackgroundColor = v4->_sortControlBackgroundColor;
  v4->_sortControlBackgroundColor = v48;

  v4->_rowHeight = 44.0;
  v4->_maskedCorners = 15;
  *&v4->_minimumCellPadding = xmmword_18A67E410;
  v4->_maximumIconWidth = 20.0;
  v4->_singleSlottedCellMargin = 50.0;
  v4->_foregroundOpacity = 1.0;
  v4->_backgroundOpacity = 1.0;
  v4->_cellTextAlignment = 1;
  v4->_lineBreakMode = 4;
  *&v4->_hasShadow = 0x10000;
  v4->_alternativeTextLeftSpacing = 5.0;

  return v4;
}

+ (id)darkKeyboardStyle
{
  v4 = objc_alloc_init(UIKeyboardCandidateViewStyle);
  v5 = _UISolariumEnabled();
  if (v5)
  {
    v2 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions = [v2 preferencesActions];
    colorAdaptiveKeyboardEnabled = [preferencesActions colorAdaptiveKeyboardEnabled];
    v7 = 20.0;
    if (colorAdaptiveKeyboardEnabled)
    {
      v7 = 17.0;
    }
  }

  else
  {
    v7 = 20.0;
  }

  v8 = [off_1E70ECC18 systemFontOfSize:v7];
  candidateFont = v4->_candidateFont;
  v4->_candidateFont = v8;

  if (v5)
  {
  }

  v10 = [off_1E70ECC18 systemFontOfSize:14.0];
  alternativeTextFont = v4->_alternativeTextFont;
  v4->_alternativeTextFont = v10;

  v12 = [off_1E70ECC18 systemFontOfSize:10.0];
  annotationTextFont = v4->_annotationTextFont;
  v4->_annotationTextFont = v12;

  v14 = [off_1E70ECC18 systemFontOfSize:14.0];
  candidateNumberFont = v4->_candidateNumberFont;
  v4->_candidateNumberFont = v14;

  v16 = [off_1E70ECC18 systemFontOfSize:14.0];
  sortControlFont = v4->_sortControlFont;
  v4->_sortControlFont = v16;

  v18 = +[UIColor whiteColor];
  textColor = v4->_textColor;
  v4->_textColor = v18;

  textColor = [(UIKeyboardCandidateViewStyle *)v4 textColor];
  highlightedTextColor = v4->_highlightedTextColor;
  v4->_highlightedTextColor = textColor;

  v22 = [UIColor colorWithCGColor:UIKBGetNamedColor(@"UIKBColorWhite_Alpha35")];
  alternativeTextColor = v4->_alternativeTextColor;
  v4->_alternativeTextColor = v22;

  alternativeTextColor = [(UIKeyboardCandidateViewStyle *)v4 alternativeTextColor];
  highlightedAlternativeTextColor = v4->_highlightedAlternativeTextColor;
  v4->_highlightedAlternativeTextColor = alternativeTextColor;

  v26 = [UIColor colorWithCGColor:UIKBGetNamedColor(@"UIKBLegacyCandidateGridPadCellCandidateNumber")];
  candidateNumberColor = v4->_candidateNumberColor;
  v4->_candidateNumberColor = v26;

  candidateNumberColor = [(UIKeyboardCandidateViewStyle *)v4 candidateNumberColor];
  highlightedCandidateNumberColor = v4->_highlightedCandidateNumberColor;
  v4->_highlightedCandidateNumberColor = candidateNumberColor;

  v30 = +[UIColor clearColor];
  backgroundColor = v4->_backgroundColor;
  v4->_backgroundColor = v30;

  v32 = +[UIColor clearColor];
  cellBackgroundColor = v4->_cellBackgroundColor;
  v4->_cellBackgroundColor = v32;

  v34 = +[UIColor clearColor];
  arrowButtonBackgroundColor = v4->_arrowButtonBackgroundColor;
  v4->_arrowButtonBackgroundColor = v34;

  v36 = +[UIColor whiteColor];
  arrowButtonColor = v4->_arrowButtonColor;
  v4->_arrowButtonColor = v36;

  *&v4->_arrowButtonPadding.top = 0u;
  *&v4->_arrowButtonPadding.bottom = 0u;
  v38 = +[UIColor clearColor];
  gridBackgroundColor = v4->_gridBackgroundColor;
  v4->_gridBackgroundColor = v38;

  v40 = [UIColor colorWithCGColor:UIKBGetNamedColor(@"UIKBDarkCandidateBarCellHighlightedBackground")];
  highlightedBackgroundColor = v4->_highlightedBackgroundColor;
  v4->_highlightedBackgroundColor = v40;

  v42 = [UIColor colorWithCGColor:UIKBGetNamedColor(@"UIKBColorWhite_Alpha40")];
  groupHeaderBackgroundColor = v4->_groupHeaderBackgroundColor;
  v4->_groupHeaderBackgroundColor = v42;

  v44 = [UIColor colorWithCGColor:UIKBGetNamedColor(@"UIKBColorBlack_Alpha70")];
  lineColor = v4->_lineColor;
  v4->_lineColor = v44;

  v46 = [UIColor colorWithCGColor:UIKBGetNamedColor(@"UIKBColorKeyGrayKeyDarkBackground")];
  sortControlColor = v4->_sortControlColor;
  v4->_sortControlColor = v46;

  v48 = +[UIColor clearColor];
  sortControlBackgroundColor = v4->_sortControlBackgroundColor;
  v4->_sortControlBackgroundColor = v48;

  v4->_rowHeight = 44.0;
  v4->_maskedCorners = 15;
  *&v4->_minimumCellPadding = xmmword_18A67E410;
  v4->_maximumIconWidth = 20.0;
  v4->_singleSlottedCellMargin = 50.0;
  v4->_foregroundOpacity = 1.0;
  v4->_backgroundOpacity = 1.0;
  v4->_cellTextAlignment = 1;
  v4->_lineBreakMode = 4;
  *&v4->_hasShadow = 16842752;
  v4->_alternativeTextLeftSpacing = 5.0;

  return v4;
}

+ (id)visionInlineStyle
{
  v2 = objc_alloc_init(UIKeyboardCandidateViewStyle);
  v3 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleBody"];
  candidateFont = v2->_candidateFont;
  v2->_candidateFont = v3;

  v5 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleBody"];
  alternativeTextFont = v2->_alternativeTextFont;
  v2->_alternativeTextFont = v5;

  v7 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleFootnote"];
  annotationTextFont = v2->_annotationTextFont;
  v2->_annotationTextFont = v7;

  v9 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleCaption1"];
  candidateNumberFont = v2->_candidateNumberFont;
  v2->_candidateNumberFont = v9;

  v11 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleBody"];
  sortControlFont = v2->_sortControlFont;
  v2->_sortControlFont = v11;

  v13 = +[UIColor labelColor];
  textColor = v2->_textColor;
  v2->_textColor = v13;

  v15 = +[UIColor blackColor];
  highlightedTextColor = v2->_highlightedTextColor;
  v2->_highlightedTextColor = v15;

  v17 = +[UIColor secondaryLabelColor];
  alternativeTextColor = v2->_alternativeTextColor;
  v2->_alternativeTextColor = v17;

  v19 = +[UIColor blackColor];
  v20 = [v19 colorWithAlphaComponent:0.4];
  highlightedAlternativeTextColor = v2->_highlightedAlternativeTextColor;
  v2->_highlightedAlternativeTextColor = v20;

  v22 = +[UIColor secondaryLabelColor];
  candidateNumberColor = v2->_candidateNumberColor;
  v2->_candidateNumberColor = v22;

  v24 = +[UIColor blackColor];
  v25 = [v24 colorWithAlphaComponent:0.4];
  highlightedCandidateNumberColor = v2->_highlightedCandidateNumberColor;
  v2->_highlightedCandidateNumberColor = v25;

  v27 = +[UIColor clearColor];
  cellBackgroundColor = v2->_cellBackgroundColor;
  v2->_cellBackgroundColor = v27;

  v29 = +[UIColor clearColor];
  arrowButtonBackgroundColor = v2->_arrowButtonBackgroundColor;
  v2->_arrowButtonBackgroundColor = v29;

  v31 = +[UIColor labelColor];
  arrowButtonColor = v2->_arrowButtonColor;
  v2->_arrowButtonColor = v31;

  v2->_arrowButtonBackgroundHidden = 1;
  v2->_arrowButtonHeight = 36.0;
  *&v2->_arrowButtonPadding.top = 0u;
  *&v2->_arrowButtonPadding.bottom = 0u;
  v2->_arrowButtonHighlightBackgroundHidden = 1;
  v33 = +[UIColor clearColor];
  backgroundColor = v2->_backgroundColor;
  v2->_backgroundColor = v33;

  v35 = +[UIColor clearColor];
  gridBackgroundColor = v2->_gridBackgroundColor;
  v2->_gridBackgroundColor = v35;

  v2->_sortControlPadding.top = 15.0;
  __asm { FMOV            V0.2D, #4.0 }

  *&v2->_sortControlPadding.left = _Q0;
  v2->_sortControlPadding.right = 4.0;
  v42 = +[UIColor whiteColor];
  highlightedBackgroundColor = v2->_highlightedBackgroundColor;
  v2->_highlightedBackgroundColor = v42;

  v44 = +[UIColor clearColor];
  groupHeaderBackgroundColor = v2->_groupHeaderBackgroundColor;
  v2->_groupHeaderBackgroundColor = v44;

  v46 = +[UIColor clearColor];
  sortControlBackgroundColor = v2->_sortControlBackgroundColor;
  v2->_sortControlBackgroundColor = v46;

  v2->_rowHeight = 36.0;
  [(UIKeyboardCandidateViewStyle *)v2 rowHeight];
  v2->_cellCornerRadius = v48 * 0.5;
  *&v2->_extraCellPadding.top = 0u;
  *&v2->_extraCellPadding.bottom = 0u;
  v2->_maskedCorners = 15;
  *&v2->_gridPadding.top = 0u;
  v2->_gridPadding.bottom = 8.0;
  v2->_gridPadding.right = 5.0;
  v2->_foregroundOpacity = 1.0;
  v2->_backgroundOpacity = 1.0;
  v2->_singleSlottedCellMargin = 50.0;
  v2->_cellTextAlignment = 1;
  v2->_lineBreakMode = 4;
  *&v2->_hasShadow = 0x10000;
  v2->_scrollDisabled = 1;
  *&v2->_alternativeTextLeftSpacing = xmmword_18A67E430;
  *&v2->_minimumCellPadding = xmmword_18A67E420;
  *&v2->_minimumInterItemSpacing = xmmword_18A67E440;
  v2->_columnsCount = 9;

  return v2;
}

+ (id)lightKeyboardStyleForDisambiguation
{
  v4 = objc_alloc_init(UIKeyboardCandidateViewStyle);
  v5 = _UISolariumEnabled();
  if (v5)
  {
    v2 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions = [v2 preferencesActions];
    colorAdaptiveKeyboardEnabled = [preferencesActions colorAdaptiveKeyboardEnabled];
    v7 = 16.0;
    if (colorAdaptiveKeyboardEnabled)
    {
      v7 = 17.0;
    }
  }

  else
  {
    v7 = 16.0;
  }

  v8 = [off_1E70ECC18 systemFontOfSize:v7];
  candidateFont = v4->_candidateFont;
  v4->_candidateFont = v8;

  if (v5)
  {
  }

  v10 = +[UIColor blackColor];
  textColor = v4->_textColor;
  v4->_textColor = v10;

  objc_storeStrong(&v4->_highlightedTextColor, v4->_textColor);
  v12 = [UIColor colorWithCGColor:UIKBGetNamedColor(@"UIKBColorBlack_Alpha35")];
  alternativeTextColor = v4->_alternativeTextColor;
  v4->_alternativeTextColor = v12;

  alternativeTextColor = [(UIKeyboardCandidateViewStyle *)v4 alternativeTextColor];
  highlightedAlternativeTextColor = v4->_highlightedAlternativeTextColor;
  v4->_highlightedAlternativeTextColor = alternativeTextColor;

  v16 = [UIColor colorWithCGColor:UIKBGetNamedColor(@"UIKBLegacyCandidateGridPadCellCandidateNumber")];
  candidateNumberColor = v4->_candidateNumberColor;
  v4->_candidateNumberColor = v16;

  candidateNumberColor = [(UIKeyboardCandidateViewStyle *)v4 candidateNumberColor];
  highlightedCandidateNumberColor = v4->_highlightedCandidateNumberColor;
  v4->_highlightedCandidateNumberColor = candidateNumberColor;

  v20 = +[UIColor clearColor];
  backgroundColor = v4->_backgroundColor;
  v4->_backgroundColor = v20;

  v22 = +[UIColor clearColor];
  gridBackgroundColor = v4->_gridBackgroundColor;
  v4->_gridBackgroundColor = v22;

  v24 = +[UIColor clearColor];
  highlightedBackgroundColor = v4->_highlightedBackgroundColor;
  v4->_highlightedBackgroundColor = v24;

  lineColor = v4->_lineColor;
  v4->_lineColor = 0;

  if (_UISolariumEnabled())
  {
    v27 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions2 = [v27 preferencesActions];
    colorAdaptiveKeyboardEnabled2 = [preferencesActions2 colorAdaptiveKeyboardEnabled];
    v30 = 32.0;
    if (colorAdaptiveKeyboardEnabled2)
    {
      v30 = 38.0;
    }

    v4->_rowHeight = v30;
  }

  else
  {
    v4->_rowHeight = 32.0;
  }

  *&v4->_minimumCellPadding = xmmword_18A67E410;
  v4->_maximumIconWidth = 20.0;
  v4->_foregroundOpacity = 1.0;
  v4->_backgroundOpacity = 1.0;
  v4->_cellTextAlignment = 1;
  v4->_lineBreakMode = 4;
  *&v4->_hasShadow = 0x10000;
  v4->_alternativeTextLeftSpacing = 5.0;

  return v4;
}

+ (id)darkKeyboardStyleForDisambiguation
{
  v4 = objc_alloc_init(UIKeyboardCandidateViewStyle);
  v5 = _UISolariumEnabled();
  if (v5)
  {
    v2 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions = [v2 preferencesActions];
    colorAdaptiveKeyboardEnabled = [preferencesActions colorAdaptiveKeyboardEnabled];
    v7 = 16.0;
    if (colorAdaptiveKeyboardEnabled)
    {
      v7 = 17.0;
    }
  }

  else
  {
    v7 = 16.0;
  }

  v8 = [off_1E70ECC18 systemFontOfSize:v7];
  candidateFont = v4->_candidateFont;
  v4->_candidateFont = v8;

  if (v5)
  {
  }

  v10 = +[UIColor whiteColor];
  textColor = v4->_textColor;
  v4->_textColor = v10;

  v12 = [UIColor colorWithCGColor:UIKBGetNamedColor(@"UIKBColorWhite")];
  highlightedTextColor = v4->_highlightedTextColor;
  v4->_highlightedTextColor = v12;

  v14 = [UIColor colorWithCGColor:UIKBGetNamedColor(@"UIKBColorBlack_Alpha35")];
  alternativeTextColor = v4->_alternativeTextColor;
  v4->_alternativeTextColor = v14;

  alternativeTextColor = [(UIKeyboardCandidateViewStyle *)v4 alternativeTextColor];
  highlightedAlternativeTextColor = v4->_highlightedAlternativeTextColor;
  v4->_highlightedAlternativeTextColor = alternativeTextColor;

  v18 = [UIColor colorWithCGColor:UIKBGetNamedColor(@"UIKBLegacyCandidateGridPadCellCandidateNumber")];
  candidateNumberColor = v4->_candidateNumberColor;
  v4->_candidateNumberColor = v18;

  candidateNumberColor = [(UIKeyboardCandidateViewStyle *)v4 candidateNumberColor];
  highlightedCandidateNumberColor = v4->_highlightedCandidateNumberColor;
  v4->_highlightedCandidateNumberColor = candidateNumberColor;

  v22 = +[UIColor clearColor];
  backgroundColor = v4->_backgroundColor;
  v4->_backgroundColor = v22;

  v24 = +[UIColor clearColor];
  cellBackgroundColor = v4->_cellBackgroundColor;
  v4->_cellBackgroundColor = v24;

  v26 = +[UIColor clearColor];
  gridBackgroundColor = v4->_gridBackgroundColor;
  v4->_gridBackgroundColor = v26;

  v28 = +[UIColor clearColor];
  highlightedBackgroundColor = v4->_highlightedBackgroundColor;
  v4->_highlightedBackgroundColor = v28;

  lineColor = v4->_lineColor;
  v4->_lineColor = 0;

  if (_UISolariumEnabled())
  {
    v31 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions2 = [v31 preferencesActions];
    colorAdaptiveKeyboardEnabled2 = [preferencesActions2 colorAdaptiveKeyboardEnabled];
    v34 = 32.0;
    if (colorAdaptiveKeyboardEnabled2)
    {
      v34 = 38.0;
    }

    v4->_rowHeight = v34;
  }

  else
  {
    v4->_rowHeight = 32.0;
  }

  *&v4->_minimumCellPadding = xmmword_18A67E410;
  v4->_maximumIconWidth = 20.0;
  v4->_foregroundOpacity = 1.0;
  v4->_backgroundOpacity = 1.0;
  v4->_cellTextAlignment = 1;
  v4->_lineBreakMode = 4;
  *&v4->_hasShadow = 16842752;
  v4->_alternativeTextLeftSpacing = 5.0;

  return v4;
}

+ (id)styleForDarkKeyboard:(BOOL)keyboard
{
  if (keyboard)
  {
    [self darkKeyboardStyle];
  }

  else
  {
    [self lightKeyboardStyle];
  }
  v3 = ;

  return v3;
}

+ (id)disambiguationStyleForDarkKeyboard:(BOOL)keyboard
{
  if (keyboard)
  {
    [self darkKeyboardStyleForDisambiguation];
  }

  else
  {
    [self lightKeyboardStyleForDisambiguation];
  }
  v3 = ;

  return v3;
}

+ (id)tvLinearStyleForDarkKeyboard:(BOOL)keyboard
{
  v4 = objc_alloc_init(UIKeyboardCandidateViewStyle);
  v5 = [off_1E70ECC18 systemFontOfSize:36.0];
  candidateFont = v4->_candidateFont;
  v4->_candidateFont = v5;

  v7 = [off_1E70ECC18 systemFontOfSize:10.0];
  alternativeTextFont = v4->_alternativeTextFont;
  v4->_alternativeTextFont = v7;

  v9 = [off_1E70ECC18 systemFontOfSize:10.0];
  annotationTextFont = v4->_annotationTextFont;
  v4->_annotationTextFont = v9;

  v11 = [off_1E70ECC18 systemFontOfSize:14.0];
  candidateNumberFont = v4->_candidateNumberFont;
  v4->_candidateNumberFont = v11;

  v13 = [off_1E70ECC18 systemFontOfSize:14.0];
  sortControlFont = v4->_sortControlFont;
  v4->_sortControlFont = v13;

  if (keyboard)
  {
    +[UIColor whiteColor];
  }

  else
  {
    +[UIColor blackColor];
  }
  v15 = ;
  textColor = v4->_textColor;
  v4->_textColor = v15;

  v17 = +[UIColor blackColor];
  highlightedTextColor = v4->_highlightedTextColor;
  v4->_highlightedTextColor = v17;

  textColor = [(UIKeyboardCandidateViewStyle *)v4 textColor];
  v20 = [textColor colorWithAlphaComponent:0.4];
  alternativeTextColor = v4->_alternativeTextColor;
  v4->_alternativeTextColor = v20;

  highlightedTextColor = [(UIKeyboardCandidateViewStyle *)v4 highlightedTextColor];
  v23 = [highlightedTextColor colorWithAlphaComponent:0.4];
  highlightedAlternativeTextColor = v4->_highlightedAlternativeTextColor;
  v4->_highlightedAlternativeTextColor = v23;

  v25 = +[UIColor clearColor];
  candidateNumberColor = v4->_candidateNumberColor;
  v4->_candidateNumberColor = v25;

  candidateNumberColor = [(UIKeyboardCandidateViewStyle *)v4 candidateNumberColor];
  highlightedCandidateNumberColor = v4->_highlightedCandidateNumberColor;
  v4->_highlightedCandidateNumberColor = candidateNumberColor;

  v29 = +[UIColor clearColor];
  backgroundColor = v4->_backgroundColor;
  v4->_backgroundColor = v29;

  v31 = +[UIColor clearColor];
  gridBackgroundColor = v4->_gridBackgroundColor;
  v4->_gridBackgroundColor = v31;

  v33 = [UIColor colorWithWhite:1.0 alpha:0.9];
  highlightedBackgroundColor = v4->_highlightedBackgroundColor;
  v4->_highlightedBackgroundColor = v33;

  v35 = +[UIColor clearColor];
  groupHeaderBackgroundColor = v4->_groupHeaderBackgroundColor;
  v4->_groupHeaderBackgroundColor = v35;

  v37 = +[UIColor clearColor];
  lineColor = v4->_lineColor;
  v4->_lineColor = v37;

  v39 = +[UIColor clearColor];
  sortControlColor = v4->_sortControlColor;
  v4->_sortControlColor = v39;

  v4->_columnsCount = 6;
  *&v4->_minimumCellPadding = xmmword_18A67E450;
  v4->_maximumIconWidth = 20.0;
  v4->_cellCornerRadius = 12.0;
  v4->_foregroundOpacity = 1.0;
  v4->_backgroundOpacity = 1.0;
  v4->_cellTextAlignment = 1;
  v4->_lineBreakMode = 5;
  v4->_rowHeight = 75.0;
  *&v4->_hasShadow = 0;
  v4->_alternativeTextLeftSpacing = 5.0;

  return v4;
}

+ (id)tvGridStyleForDarkKeyboard:(BOOL)keyboard
{
  v4 = objc_alloc_init(UIKeyboardCandidateViewStyle);
  v5 = [off_1E70ECC18 systemFontOfSize:34.0];
  candidateFont = v4->_candidateFont;
  v4->_candidateFont = v5;

  v7 = [off_1E70ECC18 systemFontOfSize:10.0];
  alternativeTextFont = v4->_alternativeTextFont;
  v4->_alternativeTextFont = v7;

  v9 = [off_1E70ECC18 systemFontOfSize:10.0];
  annotationTextFont = v4->_annotationTextFont;
  v4->_annotationTextFont = v9;

  v11 = [off_1E70ECC18 systemFontOfSize:14.0];
  candidateNumberFont = v4->_candidateNumberFont;
  v4->_candidateNumberFont = v11;

  v13 = [off_1E70ECC18 systemFontOfSize:14.0];
  sortControlFont = v4->_sortControlFont;
  v4->_sortControlFont = v13;

  if (keyboard)
  {
    +[UIColor whiteColor];
  }

  else
  {
    +[UIColor blackColor];
  }
  v15 = ;
  textColor = v4->_textColor;
  v4->_textColor = v15;

  v17 = +[UIColor blackColor];
  highlightedTextColor = v4->_highlightedTextColor;
  v4->_highlightedTextColor = v17;

  textColor = [(UIKeyboardCandidateViewStyle *)v4 textColor];
  v20 = [textColor colorWithAlphaComponent:0.4];
  alternativeTextColor = v4->_alternativeTextColor;
  v4->_alternativeTextColor = v20;

  highlightedTextColor = [(UIKeyboardCandidateViewStyle *)v4 highlightedTextColor];
  v23 = [highlightedTextColor colorWithAlphaComponent:0.4];
  highlightedAlternativeTextColor = v4->_highlightedAlternativeTextColor;
  v4->_highlightedAlternativeTextColor = v23;

  v25 = +[UIColor clearColor];
  candidateNumberColor = v4->_candidateNumberColor;
  v4->_candidateNumberColor = v25;

  candidateNumberColor = [(UIKeyboardCandidateViewStyle *)v4 candidateNumberColor];
  highlightedCandidateNumberColor = v4->_highlightedCandidateNumberColor;
  v4->_highlightedCandidateNumberColor = candidateNumberColor;

  v29 = +[UIColor clearColor];
  backgroundColor = v4->_backgroundColor;
  v4->_backgroundColor = v29;

  v31 = +[UIColor clearColor];
  gridBackgroundColor = v4->_gridBackgroundColor;
  v4->_gridBackgroundColor = v31;

  v33 = [UIColor colorWithWhite:1.0 alpha:0.9];
  highlightedBackgroundColor = v4->_highlightedBackgroundColor;
  v4->_highlightedBackgroundColor = v33;

  v35 = +[UIColor clearColor];
  groupHeaderBackgroundColor = v4->_groupHeaderBackgroundColor;
  v4->_groupHeaderBackgroundColor = v35;

  v37 = +[UIColor clearColor];
  lineColor = v4->_lineColor;
  v4->_lineColor = v37;

  v39 = +[UIColor clearColor];
  sortControlColor = v4->_sortControlColor;
  v4->_sortControlColor = v39;

  v4->_columnsCount = 5;
  *&v4->_minimumCellPadding = xmmword_18A67E460;
  v4->_minimumInterItemSpacing = 20.0;
  v4->_cellCornerRadius = 12.0;
  v4->_foregroundOpacity = 1.0;
  v4->_backgroundOpacity = 1.0;
  v4->_gridPadding.top = 0.0;
  *&v4->_gridPadding.left = 0u;
  v4->_gridPadding.right = 20.0;
  *&v4->_gridLinePadding.top = 0u;
  v4->_gridLinePadding.bottom = 12.0;
  v4->_gridLinePadding.right = 0.0;
  v4->_cellTextAlignment = 1;
  v4->_lineBreakMode = 5;
  v4->_rowHeight = 64.0;
  v4->_darkBackdrop = 0;
  v4->_alternativeTextLeftSpacing = 5.0;
  *&v4->_doNotClipToBounds = 1;

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

- (UIEdgeInsets)outerGridPadding
{
  top = self->_outerGridPadding.top;
  left = self->_outerGridPadding.left;
  bottom = self->_outerGridPadding.bottom;
  right = self->_outerGridPadding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)groupHeaderPadding
{
  top = self->_groupHeaderPadding.top;
  left = self->_groupHeaderPadding.left;
  bottom = self->_groupHeaderPadding.bottom;
  right = self->_groupHeaderPadding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end