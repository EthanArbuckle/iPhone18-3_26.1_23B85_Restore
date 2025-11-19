@interface TUIPredictionViewCell
+ (id)cellHighlightColorForDarkStyle:(BOOL)a3;
+ (id)cellHighlightColorForRenderConfig:(id)a3;
- (BOOL)_isEmojiCandidate:(id)a3;
- (BOOL)_isSmartReplyCandidate:(id)a3;
- (BOOL)_isTextEffectsCandidate:(id)a3;
- (BOOL)_renderConfigUsesDarkStyle:(id)a3;
- (BOOL)_usePadStyle;
- (BOOL)_usesMorphingLabelForCandidate:(id)a3;
- (BOOL)candidateRequiresTruncationForBoundingWidth:(double)a3;
- (BOOL)shouldUseRTLForMathEquations;
- (BOOL)useAutofillStyle;
- (BOOL)useWritingToolsStyle;
- (CGSize)intrinsicContentSize;
- (CGSize)labelTextSizeForCandidate:(id)a3;
- (TUIPredictionViewCell)initWithFrame:(CGRect)a3;
- (UIFont)labelFont;
- (UIImage)image;
- (_NSTextAnimator)activeAnimator;
- (id)_displayLabelForCandidate:(id)a3;
- (id)_localizedTitleForAnimationName:(id)a3;
- (id)_preferredBackgroundColor;
- (id)_preferredTextColorForHighlighted:(BOOL)a3 useDarkStyle:(BOOL)a4;
- (id)_preferredTextColorForRenderConfig:(id)a3 highlighted:(BOOL)a4;
- (id)attributedStringRepresentationOfCandidate:(id)a3;
- (id)centerTruncatedStringForString:(id)a3 withAttributes:(id)a4 fittingWidth:(double)a5;
- (id)currentBackgroundView;
- (id)currentTextSuggestion;
- (id)displayTextAttributesForMultiline:(BOOL)a3 header:(BOOL)a4 shrink:(BOOL)a5;
- (id)headerTextAttributes;
- (id)labelView;
- (id)labelViewForCandidate:(id)a3;
- (int64_t)layoutType;
- (void)_applyTextEffectAnimationAttribute:(id)a3 attributedCandidateString:(id)a4;
- (void)_applyTextEffectStyleAttribute:(id)a3 attributedCandidateString:(id)a4 fontDescriptor:(id)a5;
- (void)_resetViewForUnanimatedBackdrop:(id)a3;
- (void)_setMorphingLabelWithCandidate:(id)a3 animated:(BOOL)a4;
- (void)_setNormalLabelWithCandidate:(id)a3 animated:(BOOL)a4;
- (void)_setSecureCandidate:(id)a3 animated:(BOOL)a4;
- (void)_setSmartActionCandidate:(id)a3 animated:(BOOL)a4;
- (void)_setSmartReplyCandidate:(id)a3 animated:(BOOL)a4;
- (void)_setTextEffectsCandidate:(id)a3 animated:(BOOL)a4;
- (void)_updateColorsForRenderConfig:(id)a3 highlighted:(BOOL)a4;
- (void)_updateCornerRadius;
- (void)_updateForAnimatedBackdropIfNeeded:(id)a3 highlighted:(BOOL)a4;
- (void)_updateLabelsForColorAdaptiveUI;
- (void)_updateViewForAnimatedBackdrop:(id)a3 usingAlpha:(double)a4 darkConfiguration:(BOOL)a5;
- (void)applySeparatorViews;
- (void)endAnimations;
- (void)layoutSubviews;
- (void)scrollViewDidScroll:(id)a3;
- (void)setCandidate:(id)a3 animated:(BOOL)a4;
- (void)setCustomView:(id)a3;
- (void)setHighlightCornerRadius:(double)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setImage:(id)a3;
- (void)setImageTintColor:(id)a3;
- (void)setLabelFont:(id)a3;
- (void)setPredictionPosition:(unint64_t)a3;
- (void)setPreferredBackgroundColor:(id)a3;
- (void)setPreferredForegroundColor:(id)a3;
- (void)setRenderConfig:(id)a3;
- (void)setSeparatorColor:(id)a3;
- (void)setSeparatorMargin:(double)a3;
- (void)setTextColor:(id)a3;
- (void)setUseContinuousCornerInHighlight:(BOOL)a3;
@end

@implementation TUIPredictionViewCell

- (void)layoutSubviews
{
  v174.receiver = self;
  v174.super_class = TUIPredictionViewCell;
  [(TUIPredictionViewCell *)&v174 layoutSubviews];
  v3 = [(TUIPredictionViewCell *)self candidate];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v5 = 6.0;
  if (isKindOfClass)
  {
    v5 = 0.0;
  }

  v173 = v5;
  [(TUIPredictionViewCell *)self bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(TUIPredictionViewCell *)self _usePadStyle];
  [(TUIPredictionViewCell *)self highlightMargin];
  UIRectInsetEdges();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = [(TUIPredictionViewCell *)self currentBackgroundView];
  [v22 setFrame:{v15, v17, v19, v21}];

  v23 = [(TUIPredictionViewCell *)self candidate];
  v24 = [(TUIPredictionViewCell *)self _isStickerCandidate:v23];

  v25 = [(TUIPredictionViewCell *)self candidate];
  [(TUIPredictionViewCell *)self _isTextEffectsCandidate:v25];

  v26 = [(TUIPredictionViewCell *)self candidate];
  v27 = [(TUIPredictionViewCell *)self _isWritingToolsCandidate:v26];

  v28 = [(TUIPredictionViewCell *)self candidate];
  v29 = [(TUIPredictionViewCell *)self _isSmartReplyCandidate:v28];

  v30 = [(TUIPredictionViewCell *)self candidate];
  v31 = [(TUIPredictionViewCell *)self _isSmartActionCandidate:v30];

  if (v31 || v29)
  {
    v46 = [(TUIPredictionViewCell *)self _usePadStyle];
    [(TUIPredictionViewCell *)self highlightMargin];
    if (v46)
    {
      v48 = v47;
    }

    else
    {
      v48 = v47 + 4.0;
    }

    v49 = [(TUIPredictionViewCell *)self gradientContentTopConstraint];
    [v49 setConstant:v48];

    v50 = [(TUIPredictionViewCell *)self gradientContentBottomConstraint];
    [v50 setConstant:0.0];

    v51 = [(TUIPredictionViewCell *)self textColor];
    v52 = [(TUIPredictionViewCell *)self gradientContentLabel];
    [v52 setTextColor:v51];

    v53 = [(TUIPredictionViewCell *)self maskingScrollView];
    [v53 setHidden:1];

    v54 = [(TUIPredictionViewCell *)self gradientContentLabel];
    [v54 setHidden:0];

    [(TUIPredictionViewCell *)self applySeparatorViews];
    return;
  }

  v32 = [(TUIPredictionViewCell *)self maskingScrollView];
  [v32 setHidden:0];

  v33 = [(TUIPredictionViewCell *)self gradientContentLabel];
  [v33 setHidden:1];

  v34 = [(TUIPredictionViewCell *)self candidate];
  v35 = [(TUIPredictionViewCell *)self _usesMorphingLabelForCandidate:v34];

  if (!v35)
  {
    [(TUIPredictionViewCell *)self bounds];
    if ([(TUIPredictionViewCell *)self candidateRequiresTruncationForBoundingWidth:v36]|| [(TUIPredictionViewCell *)self isLabelTruncated])
    {
      v37 = [(TUIPredictionViewCell *)self candidate];
      v38 = [(TUIPredictionViewCell *)self attributedStringRepresentationOfCandidate:v37];
      v39 = [(TUIPredictionViewCell *)self normalLabel];
      [v39 setAttributedText:v38];
    }
  }

  v40 = [(TUIPredictionViewCell *)self image];

  if (v40)
  {
    v41 = [(TUIPredictionViewCell *)self maskingScrollView];
    [v41 contentInset];
    v43 = v42;

    v44 = 6.0;
    if (v43 != 6.0)
    {
      v45 = [(TUIPredictionViewCell *)self maskingScrollView];
      [v45 setContentInset:{0.0, 6.0, 0.0, 6.0}];
    }
  }

  else
  {
    v44 = 3.0;
  }

  v55 = [(TUIPredictionViewCell *)self candidate];
  [(TUIPredictionViewCell *)self labelTextSizeForCandidate:v55];
  v57 = v56;

  v58 = 0.0;
  if (v11 + v44 * -2.0 >= 0.0)
  {
    v59 = v11 + v44 * -2.0;
  }

  else
  {
    v59 = 0.0;
  }

  v60 = [(TUIPredictionViewCell *)self candidate];
  v61 = [(TUIPredictionViewCell *)self labelViewForCandidate:v60];

  v62 = [(TUIPredictionViewCell *)self imageView];
  [v62 sizeToFit];

  v63 = [(TUIPredictionViewCell *)self candidate];
  v64 = [v63 customInfoType];

  v172 = v64;
  v65 = v64 != 0x8000 && [(TUIPredictionViewCell *)self effectiveUserInterfaceLayoutDirection]== 1;
  v66 = [(TUIPredictionViewCell *)self imageView];
  [v66 frame];
  Width = CGRectGetWidth(v175);
  v68 = v173;
  if (v57 <= 0.00000011920929)
  {
    v68 = 0.0;
  }

  if (v40)
  {
    v58 = v68;
  }

  v69 = [(TUIPredictionViewCell *)self image];
  if (v69)
  {
    v70 = 1;
  }

  else
  {
    v71 = [(TUIPredictionViewCell *)self candidate];
    v70 = [(TUIPredictionViewCell *)self _isEmojiCandidate:v71];
  }

  v72 = v58 + Width;

  v73 = 0;
  if (v57 > 0.00000011920929 && v59 > 0.0)
  {
    if (v57 + v72 + 2.0 <= v59)
    {
      v73 = 0;
    }

    else
    {
      v74 = [(TUIPredictionViewCell *)self currentTextSuggestion];
      if (v74)
      {
        v75 = [(TUIPredictionViewCell *)self image];
        v73 = v75 != 0;
      }

      else
      {
        v73 = 1;
      }
    }
  }

  v76 = [(TUIPredictionViewCell *)self candidate];
  v77 = [(TUIPredictionViewCell *)self _isSecureCandidate:v76];

  if (v77)
  {
    v78 = v59;
  }

  else
  {
    v78 = v57;
  }

  if (v70 || v73)
  {
    v79 = v78;
  }

  else
  {
    v79 = v59;
  }

  v80 = [(TUIPredictionViewCell *)self candidate];
  v81 = [(TUIPredictionViewCell *)self _isTextEffectsCandidate:v80];

  if (v81)
  {
    v82 = [(TUIPredictionViewCell *)self animationsLabelView];
    [v82 sizeThatFits:{1.79769313e308, 1.79769313e308}];
    v84 = v83;

    v85 = [(TUIPredictionViewCell *)self currentBackgroundView];
    [v85 bounds];
    v87 = v84 - v86;

    v88 = [(TUIPredictionViewCell *)self currentBackgroundView];
    [v88 frame];
    v90 = 0.0;
    if (v87 > 0.0)
    {
      v90 = v87;
    }

    [v61 setFrame:{0.0, v89 - v90 + -3.0, v79, v84}];
  }

  else
  {
    v91 = 0.0;
    if (![(TUIPredictionViewCell *)self _usePadStyle]&& ((v77 & ~v24 | v27) & 1) == 0)
    {
      v92 = [(TUIPredictionViewCell *)self currentBackgroundView];
      [v92 frame];
      v91 = v93 * 0.5;
    }

    if (![(TUIPredictionViewCell *)self _usePadStyle]&& v27)
    {
      [(TUIPredictionViewCell *)self highlightMargin];
      v91 = v91 + v94 * 0.5 + 1.0;
    }

    [v61 setFrame:{0.0, v91, v79, v13}];
  }

  if (v73 && v40 != 0)
  {
    v95 = v173 + v72;
  }

  else
  {
    v95 = v72;
  }

  [v61 frame];
  MaxX = CGRectGetMaxX(v176);
  if (v65)
  {
    v97 = 0.0;
  }

  else
  {
    v97 = v95;
  }

  if (v73)
  {
    v98 = v11 - v95;
  }

  else
  {
    v98 = MaxX;
  }

  v99 = [(TUIPredictionViewCell *)self maskingScrollView];
  [v99 setFrame:{v97, 0.0, v98, v13}];

  v100 = [(TUIPredictionViewCell *)self maskingScrollView];
  [v100 setContentSize:{MaxX, v13}];

  v101 = [(TUIPredictionViewCell *)self maskingScrollView];
  [v101 setScrollEnabled:v73];

  if (v73)
  {
    v102 = [(TUIPredictionViewCell *)self maskingScrollView];
    [v102 frame];
    v104 = v103;
    v106 = v105;
    v108 = v107;
    v110 = v109;
    v111 = [(TUIPredictionViewCell *)self maskingScrollView];
    [v111 contentInset];
    v113 = v104 + v112;
    v115 = v106 + v114;
    v117 = v108 - (v112 + v116);
    v119 = v110 - (v114 + v118);

    if ([(TUIPredictionViewCell *)self _isSmartReplyCandidate:self->_candidate])
    {
      v120 = [(TUIPredictionViewCell *)self maskingScrollView];
      [v120 contentOffset];
      v122 = v121;

      if (v122 == 0.0)
      {
LABEL_78:
        v150 = [(TUIPredictionViewCell *)self morphingLabel];
        [v150 setVisibleRect:{v113, v115, v117, v119}];
        goto LABEL_79;
      }

      v123 = [(TUIPredictionViewCell *)self maskingScrollView];
      [v123 setContentOffset:0 animated:{0.0, 0.0}];
    }

    else
    {
      v151 = 0.0;
      if (!v65)
      {
        v177.origin.x = v113;
        v177.origin.y = v115;
        v177.size.width = v117;
        v177.size.height = v119;
        v151 = ceil(MaxX - CGRectGetWidth(v177));
      }

      v123 = [(TUIPredictionViewCell *)self maskingScrollView];
      [v123 scrollRectToVisible:0 animated:{v151, v115, v117, v119}];
      v113 = v151;
    }

    goto LABEL_78;
  }

  v124 = [(TUIPredictionViewCell *)self morphingLabel];
  [v124 setVisibleRect:{v7, v9, v11, v13}];

  v125 = [(TUIPredictionViewCell *)self maskingScrollView];
  [v125 frame];
  UIRectCenteredXInRect();
  v127 = v126;
  v129 = v128;
  v131 = v130;
  v133 = v132;
  v134 = [(TUIPredictionViewCell *)self maskingScrollView];
  [v134 setFrame:{v127, v129, v131, v133}];

  if (v40)
  {
    v135 = [(TUIPredictionViewCell *)self maskingScrollView];
    [v135 frame];
    v137 = v136;
    v139 = v138;
    v141 = v140;
    v143 = v142;

    v144 = 0.5;
    if (v65)
    {
      v144 = -0.5;
    }

    v145 = v144 * v72 + v137;
    v146 = [(TUIPredictionViewCell *)self maskingScrollView];
    [v146 setFrame:{v145, v139, v141, v143}];
  }

  v147 = [(TUIPredictionViewCell *)self maskingScrollView];
  [v147 contentOffset];
  v149 = v148;

  if (v149 == 0.0)
  {
    goto LABEL_80;
  }

  v150 = [(TUIPredictionViewCell *)self maskingScrollView];
  [v150 setContentOffset:0 animated:{0.0, 0.0}];
LABEL_79:

LABEL_80:
  v152 = [(TUIPredictionViewCell *)self imageView];
  [v152 frame];

  v153 = [(TUIPredictionViewCell *)self maskingScrollView];
  [v153 frame];

  if (v65 && v73)
  {
    [(TUIPredictionViewCell *)self bounds];
  }

  v154 = [(TUIPredictionViewCell *)self currentBackgroundView];
  [v154 frame];
  UIRectCenteredYInRect();
  x = v155;
  y = v157;
  v160 = v159;
  height = v161;

  if (v172 == 0x8000)
  {
    if ([(TUIPredictionViewCell *)self _usePadStyle])
    {
      v163 = 8.0;
    }

    else
    {
      v163 = 4.0;
    }

    v178.origin.x = x;
    v178.origin.y = y;
    v178.size.width = v160;
    v178.size.height = height;
    v179 = CGRectOffset(v178, 0.0, v163);
    x = v179.origin.x;
    y = v179.origin.y;
    v160 = v179.size.width;
    height = v179.size.height;
  }

  v164 = [(TUIPredictionViewCell *)self imageView];
  [v164 setFrame:{x, y, v160, height}];

  v165 = [MEMORY[0x1E69DCC90] preferredFontWithSize:17.0];
  v166 = [(TUIPredictionViewCell *)self animationsLabelView];
  [v166 bounds];
  v168 = v167;
  [v165 lineHeight];
  v170 = (v168 - v169) * 0.5;
  v171 = [(TUIPredictionViewCell *)self animationsLabelView];
  [v171 setTextContainerInset:{v170, 0.0, 0.0, 0.0}];

  [(TUIPredictionViewCell *)self applySeparatorViews];
  [(TUIPredictionViewCell *)self updateTextLabelVibrancyIfNeeded];
}

- (UIImage)image
{
  v2 = [(TUIPredictionViewCell *)self imageView];
  v3 = [v2 image];

  return v3;
}

- (BOOL)_usePadStyle
{
  v2 = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if ((v3 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    return [MEMORY[0x1E69DCBE0] isFloating] ^ 1;
  }

  else
  {
    return 0;
  }
}

- (int64_t)layoutType
{
  v3 = [(TUIPredictionViewCell *)self candidate];
  v4 = [(TUIPredictionViewCell *)self _displayLabelForCandidate:v3];
  if ([v4 length])
  {
  }

  else
  {
    v7 = [(TUIPredictionViewCell *)self image];

    if (v7)
    {
      return 1;
    }
  }

  v5 = [(TUIPredictionViewCell *)self customView];
  v6 = v5 != 0;

  return v6;
}

- (id)currentBackgroundView
{
  v3 = [(TUIPredictionViewCell *)self vibrantBackgroundView];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(TUIPredictionViewCell *)self backgroundView];
  }

  v6 = v5;

  return v6;
}

- (id)_preferredBackgroundColor
{
  v3 = [MEMORY[0x1E69DC888] clearColor];
  v4 = [(TUIPredictionViewCell *)self preferredBackgroundColor];

  if (v4)
  {
    v5 = [(TUIPredictionViewCell *)self preferredBackgroundColor];

    v3 = v5;
  }

  return v3;
}

- (void)_updateCornerRadius
{
  v3 = [(TUIPredictionViewCell *)self useContinuousCornerInHighlight];
  [(TUIPredictionViewCell *)self highlightCornerRadius];
  v5 = v4;
  v6 = [(TUIPredictionViewCell *)self currentBackgroundView];
  v7 = v6;
  if (v3)
  {
    [v6 _setContinuousCornerRadius:v5];
  }

  else
  {
    [v6 _setCornerRadius:v5];
  }
}

- (void)endAnimations
{
  WeakRetained = objc_loadWeakRetained(&self->_activeAnimator);
  [WeakRetained invalidate];

  objc_storeWeak(&self->_activeAnimator, 0);
}

- (_NSTextAnimator)activeAnimator
{
  WeakRetained = objc_loadWeakRetained(&self->_activeAnimator);

  return WeakRetained;
}

- (void)scrollViewDidScroll:(id)a3
{
  v28 = a3;
  [(TUIPredictionViewCell *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if ([v28 isScrollEnabled])
  {
    v12 = [(TUIPredictionViewCell *)self maskingScrollView];
    [v12 frame];
    v14 = v13;
    v16 = v15;
    v17 = [(TUIPredictionViewCell *)self maskingScrollView];
    [v17 contentInset];
    v9 = v14 - (v18 + v19);
    v11 = v16 - (v20 + v21);

    [v28 contentOffset];
    v23 = v22;
    v7 = v24;
    v25 = [(TUIPredictionViewCell *)self maskingScrollView];
    [v25 contentInset];
    v5 = v23 + v26;
  }

  v27 = [(TUIPredictionViewCell *)self morphingLabel];
  [v27 setVisibleRect:{v5, v7, v9, v11}];
}

- (void)_resetViewForUnanimatedBackdrop:(id)a3
{
  v3 = a3;
  [v3 setAlpha:1.0];
  v4 = [v3 layer];
  [v4 setCompositingFilter:0];

  v5 = [v3 layer];

  [v5 setAllowsEdgeAntialiasing:0];
}

- (void)_updateViewForAnimatedBackdrop:(id)a3 usingAlpha:(double)a4 darkConfiguration:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  [v7 setAlpha:a4];
  v8 = MEMORY[0x1E6979CE8];
  if (v5)
  {
    v8 = MEMORY[0x1E6979CF8];
  }

  v9 = [MEMORY[0x1E6979378] filterWithType:*v8];
  v10 = [v7 layer];
  [v10 setCompositingFilter:v9];

  v11 = [v7 layer];

  [v11 setAllowsEdgeAntialiasing:1];
}

- (void)_updateLabelsForColorAdaptiveUI
{
  v3 = [(TUIPredictionViewCell *)self renderConfig];
  v4 = [v3 animatedBackground];

  if ((v4 & 1) == 0)
  {
    v5 = [(TUIPredictionViewCell *)self renderConfig];
    v6 = [v5 colorAdaptiveBackground];

    if (v6)
    {
      v7 = [(TUIPredictionViewCell *)self renderConfig];
      v8 = [(TUIPredictionViewCell *)self _renderConfigUsesDarkStyle:v7];

      if (v8)
      {
        v9 = 0.65;
      }

      else
      {
        v9 = 0.75;
      }

      v10 = [(TUIPredictionViewCell *)self layer];
      [v10 setAllowsGroupOpacity:0];

      v11 = [(TUIPredictionViewCell *)self layer];
      [v11 setAllowsGroupBlending:0];

      v12 = [(TUIPredictionViewCell *)self maskingScrollView];
      v13 = [v12 layer];
      [v13 setAllowsGroupOpacity:0];

      v14 = [(TUIPredictionViewCell *)self maskingScrollView];
      v15 = [v14 layer];
      [v15 setAllowsGroupBlending:0];

      v16 = [(TUIPredictionViewCell *)self candidate];
      LODWORD(v15) = [(TUIPredictionViewCell *)self _isEmojiCandidate:v16];

      v17 = [(TUIPredictionViewCell *)self labelView];
      if (v15)
      {
        [(TUIPredictionViewCell *)self _resetViewForUnanimatedBackdrop:v17];
      }

      else
      {
        [(TUIPredictionViewCell *)self _updateViewForAnimatedBackdrop:v17 usingAlpha:v8 darkConfiguration:v9];
      }

      v30 = [(TUIPredictionViewCell *)self imageView];
      [(TUIPredictionViewCell *)self _updateViewForAnimatedBackdrop:v30 usingAlpha:v8 darkConfiguration:v9];

      v31 = [(TUIPredictionViewCell *)self rightSeparatorView];
      [(TUIPredictionViewCell *)self _updateViewForAnimatedBackdrop:v31 usingAlpha:v8 darkConfiguration:v9];

      v32 = [(TUIPredictionViewCell *)self leftSeparatorView];
      [TUIPredictionViewCell _updateViewForAnimatedBackdrop:"_updateViewForAnimatedBackdrop:usingAlpha:darkConfiguration:" usingAlpha:v9 darkConfiguration:?];
    }

    else
    {
      v18 = [(TUIPredictionViewCell *)self layer];
      [v18 setAllowsGroupOpacity:1];

      v19 = [(TUIPredictionViewCell *)self layer];
      [v19 setAllowsGroupBlending:1];

      v20 = [(TUIPredictionViewCell *)self maskingScrollView];
      v21 = [v20 layer];
      [v21 setAllowsGroupOpacity:1];

      v22 = [(TUIPredictionViewCell *)self maskingScrollView];
      v23 = [v22 layer];
      [v23 setAllowsGroupBlending:1];

      v24 = [(TUIPredictionViewCell *)self imageView];
      [(TUIPredictionViewCell *)self _resetViewForUnanimatedBackdrop:v24];

      v25 = [(TUIPredictionViewCell *)self morphingLabel];
      [(TUIPredictionViewCell *)self _resetViewForUnanimatedBackdrop:v25];

      v26 = [(TUIPredictionViewCell *)self animationsLabelView];
      [(TUIPredictionViewCell *)self _resetViewForUnanimatedBackdrop:v26];

      v27 = [(TUIPredictionViewCell *)self normalLabel];
      [(TUIPredictionViewCell *)self _resetViewForUnanimatedBackdrop:v27];

      v28 = [(TUIPredictionViewCell *)self secureCandidateLabel];
      [(TUIPredictionViewCell *)self _resetViewForUnanimatedBackdrop:v28];

      v29 = [(TUIPredictionViewCell *)self rightSeparatorView];
      [(TUIPredictionViewCell *)self _resetViewForUnanimatedBackdrop:v29];

      v32 = [(TUIPredictionViewCell *)self leftSeparatorView];
      [(TUIPredictionViewCell *)self _resetViewForUnanimatedBackdrop:?];
    }
  }
}

- (void)_updateForAnimatedBackdropIfNeeded:(id)a3 highlighted:(BOOL)a4
{
  v4 = a4;
  v57 = a3;
  if ([v57 animatedBackground])
  {
    v6 = [(TUIPredictionViewCell *)self _renderConfigUsesDarkStyle:v57];
    v7 = [(TUIPredictionViewCell *)self layer];
    [v7 setAllowsGroupOpacity:0];

    v8 = [(TUIPredictionViewCell *)self layer];
    [v8 setAllowsGroupBlending:0];

    v9 = [(TUIPredictionViewCell *)self maskingScrollView];
    v10 = [v9 layer];
    [v10 setAllowsGroupOpacity:0];

    v11 = [(TUIPredictionViewCell *)self maskingScrollView];
    v12 = [v11 layer];
    [v12 setAllowsGroupBlending:0];

    v13 = [(TUIPredictionViewCell *)self labelView];
    [(TUIPredictionViewCell *)self _updateViewForAnimatedBackdrop:v13 usingAlpha:v6 darkConfiguration:0.6];

    v14 = [(TUIPredictionViewCell *)self morphingLabel];
    v15 = [v14 layer];
    [v15 setAllowsGroupOpacity:0];

    v16 = [(TUIPredictionViewCell *)self morphingLabel];
    v17 = [v16 layer];
    [v17 setAllowsGroupBlending:0];

    v18 = [(TUIPredictionViewCell *)self rightSeparatorView];
    [(TUIPredictionViewCell *)self _updateViewForAnimatedBackdrop:v18 usingAlpha:v6 darkConfiguration:1.0];

    v19 = [(TUIPredictionViewCell *)self leftSeparatorView];
    [(TUIPredictionViewCell *)self _updateViewForAnimatedBackdrop:v19 usingAlpha:v6 darkConfiguration:1.0];

    v20 = [(TUIPredictionViewCell *)self vibrantBackgroundView];

    if (!v20)
    {
      v21 = objc_alloc(MEMORY[0x1E69DCB90]);
      v22 = [v57 keyBackdropStyle];
      v23 = [v21 initWithFrame:v22 style:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      [(TUIPredictionViewCell *)self setVibrantBackgroundView:v23];

      v24 = [(TUIPredictionViewCell *)self vibrantBackgroundView];
      v25 = [v24 layer];
      [v25 setCornerRadius:5.0];

      v26 = [(TUIPredictionViewCell *)self vibrantBackgroundView];
      v27 = [v26 layer];
      [v27 setMasksToBounds:1];

      v28 = [(TUIPredictionViewCell *)self vibrantBackgroundView];
      [v28 setHidden:1];

      v29 = [(TUIPredictionViewCell *)self vibrantBackgroundView];
      v30 = [(TUIPredictionViewCell *)self maskingScrollView];
      [(TUIPredictionViewCell *)self insertSubview:v29 belowSubview:v30];

      v31 = [(TUIPredictionViewCell *)self vibrantBackgroundView];
      [v31 transitionToStyle:{objc_msgSend(v57, "keyBackdropStyle")}];
    }

    v32 = [(TUIPredictionViewCell *)self vibrantBackgroundView];
    v33 = v32;
    if (v4)
    {
      [v32 setHidden:0];

      v34 = [objc_opt_class() cellHighlightColorForRenderConfig:v57];
      v35 = [v34 colorWithAlphaComponent:0.75];
      v36 = [(TUIPredictionViewCell *)self vibrantBackgroundView];
      [v36 setBackgroundColor:v35];

      v37 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CF8]];
      v38 = [(TUIPredictionViewCell *)self vibrantBackgroundView];
      v39 = [v38 layer];
      [v39 setCompositingFilter:v37];

      if (v6)
      {
        v40 = 1.0;
      }

      else
      {
        v40 = 0.15;
      }

      v41 = [(TUIPredictionViewCell *)self vibrantBackgroundView];
      [v41 setAlpha:v40];
    }

    else
    {
      [v32 setHidden:1];
    }
  }

  else
  {
    v42 = [(TUIPredictionViewCell *)self vibrantBackgroundView];

    if (v42)
    {
      v43 = [(TUIPredictionViewCell *)self layer];
      [v43 setAllowsGroupOpacity:1];

      v44 = [(TUIPredictionViewCell *)self layer];
      [v44 setAllowsGroupBlending:1];

      v45 = [(TUIPredictionViewCell *)self maskingScrollView];
      v46 = [v45 layer];
      [v46 setAllowsGroupOpacity:1];

      v47 = [(TUIPredictionViewCell *)self maskingScrollView];
      v48 = [v47 layer];
      [v48 setAllowsGroupBlending:1];

      v49 = [(TUIPredictionViewCell *)self morphingLabel];
      [(TUIPredictionViewCell *)self _resetViewForUnanimatedBackdrop:v49];

      v50 = [(TUIPredictionViewCell *)self animationsLabelView];
      [(TUIPredictionViewCell *)self _resetViewForUnanimatedBackdrop:v50];

      v51 = [(TUIPredictionViewCell *)self normalLabel];
      [(TUIPredictionViewCell *)self _resetViewForUnanimatedBackdrop:v51];

      v52 = [(TUIPredictionViewCell *)self secureCandidateLabel];
      [(TUIPredictionViewCell *)self _resetViewForUnanimatedBackdrop:v52];

      v53 = [(TUIPredictionViewCell *)self rightSeparatorView];
      [(TUIPredictionViewCell *)self _resetViewForUnanimatedBackdrop:v53];

      v54 = [(TUIPredictionViewCell *)self leftSeparatorView];
      [(TUIPredictionViewCell *)self _resetViewForUnanimatedBackdrop:v54];

      v55 = [(TUIPredictionViewCell *)self vibrantBackgroundView];

      if (v55)
      {
        v56 = [(TUIPredictionViewCell *)self vibrantBackgroundView];
        [v56 removeFromSuperview];

        [(TUIPredictionViewCell *)self setVibrantBackgroundView:0];
      }
    }
  }
}

- (void)_updateColorsForRenderConfig:(id)a3 highlighted:(BOOL)a4
{
  v4 = a4;
  v19 = a3;
  v6 = [(TUIPredictionViewCell *)self _renderConfigUsesDarkStyle:v19];
  v7 = [(TUIPredictionViewCell *)self _preferredTextColorForRenderConfig:v19 highlighted:v4];
  [(TUIPredictionViewCell *)self setTextColor:v7];
  [(TUIPredictionViewCell *)self setImageTintColor:v7];
  if ([objc_opt_class() _useSeparatorViews])
  {
    v8 = [(TUIPredictionViewCell *)self separatorColor];
    if (!v8)
    {
      v8 = UIKeyboardGetLightCandidateSeparatorColor();
      if (v6)
      {
        v9 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.1];

        v8 = v9;
      }
    }

    if (v4)
    {
      v10 = [MEMORY[0x1E69DC888] clearColor];

      v8 = v10;
    }

    v11 = [(TUIPredictionViewCell *)self leftSeparatorView];
    [v11 setBackgroundColor:v8];

    v12 = [(TUIPredictionViewCell *)self rightSeparatorView];
    [v12 setBackgroundColor:v8];
  }

  v13 = [(TUIPredictionViewCell *)self _preferredBackgroundColor];
  if (v4)
  {
    v14 = [(TUIPredictionViewCell *)self highlightColor];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = [objc_opt_class() cellHighlightColorForDarkStyle:v6];
    }

    v17 = v16;

    v13 = v17;
  }

  [(TUIPredictionViewCell *)self _updateForAnimatedBackdropIfNeeded:v19 highlighted:v4];
  [(TUIPredictionViewCell *)self _updateLabelsForColorAdaptiveUI];
  if (([v19 animatedBackground] & 1) == 0)
  {
    v18 = [(TUIPredictionViewCell *)self backgroundView];
    [v18 setBackgroundColor:v13];
  }
}

- (BOOL)_renderConfigUsesDarkStyle:(id)a3
{
  if (a3)
  {
    return [a3 lightKeyboard] ^ 1;
  }

  else
  {
    return 0;
  }
}

- (id)labelView
{
  v3 = [(TUIPredictionViewCell *)self candidate];
  v4 = [(TUIPredictionViewCell *)self labelViewForCandidate:v3];

  return v4;
}

- (void)setRenderConfig:(id)a3
{
  v5 = a3;
  if (self->_renderConfig != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_renderConfig, a3);
    [(TUIPredictionViewCell *)self _updateColorsForRenderConfig:v6 highlighted:self->_highlighted];
    v5 = v6;
  }
}

- (void)setCustomView:(id)a3
{
  v8 = a3;
  v5 = [(TUIPredictionViewCell *)self customView];

  v6 = v8;
  if (v5 != v8)
  {
    v7 = self->_customView;
    objc_storeStrong(&self->_customView, a3);
    [(UIView *)v7 removeFromSuperview];
    if (v8)
    {
      [(TUIPredictionViewCell *)self addSubview:v8];
      [(TUIPredictionViewCell *)self setNeedsLayout];
    }

    v6 = v8;
  }
}

- (void)setImage:(id)a3
{
  v9 = a3;
  v4 = [(TUIPredictionViewCell *)self imageView];
  if (v9)
  {

    if (!v4)
    {
      v5 = objc_alloc(MEMORY[0x1E69DCAE0]);
      v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      [(TUIPredictionViewCell *)self setImageView:v6];

      v7 = [(TUIPredictionViewCell *)self imageView];
      [(TUIPredictionViewCell *)self addSubview:v7];
    }
  }

  else
  {
    [v4 removeFromSuperview];

    [(TUIPredictionViewCell *)self setImageView:0];
  }

  v8 = [(TUIPredictionViewCell *)self imageView];
  [v8 setImage:v9];

  [(TUIPredictionViewCell *)self setNeedsLayout];
}

- (void)setCandidate:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v17 = a3;
  v7 = [(TIKeyboardCandidate *)self->_candidate candidate];
  v8 = [v17 candidate];
  v9 = [v7 isEqual:v8];

  objc_storeStrong(&self->_candidate, a3);
  v10 = [(TUIPredictionViewCell *)self gradientContentLabel];
  [v10 prepareForReuse];

  v11 = [(TUIPredictionViewCell *)self morphingLabel];
  [v11 setHidden:1];

  v12 = [(TUIPredictionViewCell *)self normalLabel];
  [v12 setHidden:1];

  v13 = [(TUIPredictionViewCell *)self secureCandidateLabel];
  [v13 setHidden:1];

  v14 = [(TUIPredictionViewCell *)self animationsLabelView];
  [v14 setHidden:1];

  [(TUIPredictionViewCell *)self endAnimations];
  v15 = [(TUIPredictionViewCell *)self animationsLabelView];
  [v15 setText:0];

  [(TUIPredictionViewCell *)self setLabelTruncated:0];
  [(TUIPredictionViewCell *)self setAccessibilityIdentifier:0];
  if ([(TUIPredictionViewCell *)self _isSecureCandidate:v17])
  {
    [(TUIPredictionViewCell *)self _setSecureCandidate:v17 animated:v4];
  }

  else if ([(TUIPredictionViewCell *)self _isTextEffectsCandidate:v17])
  {
    [(TUIPredictionViewCell *)self _setTextEffectsCandidate:v17 animated:v4];
  }

  else
  {
    v16 = v9 ^ 1;
    if ([(TUIPredictionViewCell *)self _isSmartReplyCandidate:v17])
    {
      [(TUIPredictionViewCell *)self _setSmartReplyCandidate:v17 animated:v16 & v4];
    }

    else if ([(TUIPredictionViewCell *)self _isSmartActionCandidate:v17])
    {
      [(TUIPredictionViewCell *)self _setSmartActionCandidate:v17 animated:v16 & v4];
    }

    else if ([(TUIPredictionViewCell *)self _usesMorphingLabelForCandidate:v17])
    {
      [(TUIPredictionViewCell *)self _setMorphingLabelWithCandidate:v17 animated:v4];
    }

    else
    {
      [(TUIPredictionViewCell *)self _setNormalLabelWithCandidate:v17 animated:v4];
    }
  }

  [(TUIPredictionViewCell *)self _updateLabelsForColorAdaptiveUI];
  [(TUIPredictionViewCell *)self invalidateIntrinsicContentSize];
  [(TUIPredictionViewCell *)self setNeedsLayout];
}

- (void)_setSmartActionCandidate:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v18 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = v18;
  if (isKindOfClass)
  {
    v8 = v18;
    [(TUIPredictionViewCell *)self _setMorphingLabelWithCandidate:v8 animated:v4];
    v9 = [(TUIPredictionViewCell *)self gradientContentLabel];
    v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringInDeviceLanguageForKey:@"CREATE_POLL"];
    [v9 setPrimaryLabelText:v11];

    LODWORD(v10) = [v8 shouldSuggestTitle];
    v12 = [(TUIPredictionViewCell *)self gradientContentLabel];
    v13 = v12;
    if (v10)
    {
      v14 = [v8 candidate];
      [v13 setCaptionLabelText:v14];
    }

    else
    {
      [v12 setCaptionLabelText:0];
    }

    if (objc_opt_respondsToSelector())
    {
      v15 = [(TIKeyboardCandidate *)self->_candidate performSelector:sel_icon];
      v16 = [(TUIPredictionViewCell *)self gradientContentLabel];
      [v16 setPrimaryLabelImage:v15];
    }

    v17 = [(TUIPredictionViewCell *)self gradientContentLabel];
    [v17 setLightingEffectEnabled:1];

    [(TUIPredictionViewCell *)self setAccessibilityIdentifier:@"SmartAction"];
    v7 = v18;
  }

  MEMORY[0x1EEE66BB8](isKindOfClass, v7);
}

- (void)_setSmartReplyCandidate:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(TUIPredictionViewCell *)self _setMorphingLabelWithCandidate:v6 animated:v4];
  v7 = [(TUIPredictionViewCell *)self gradientContentLabel];
  v8 = [(TUIPredictionViewCell *)self _displayLabelForCandidate:v6];

  [v7 setPrimaryLabelText:v8];
  v9 = [(TUIPredictionViewCell *)self gradientContentLabel];
  [v9 setCaptionLabelText:0];

  v10 = [(TUIPredictionViewCell *)self gradientContentLabel];
  [v10 setLightingEffectEnabled:1];

  [(TUIPredictionViewCell *)self setAccessibilityIdentifier:@"SmartReply"];
}

- (void)_applyTextEffectAnimationAttribute:(id)a3 attributedCandidateString:(id)a4
{
  v17 = a4;
  v6 = a3;
  v7 = [v6 candidate];
  v8 = [v7 length];

  v9 = MEMORY[0x1E69DD7C0];
  v10 = [v6 textEffectName];

  v11 = [v9 animationWithName:v10];

  if (v11)
  {
    [v17 addAttribute:*MEMORY[0x1E69DB6D8] value:v11 range:{0, v8}];
    v12 = [(TUIPredictionViewCell *)self animationsLabelView];
    [v12 setAttributedText:v17];

    v13 = [(TUIPredictionViewCell *)self animationsLabelView];
    v14 = [v13 _animatorForTextAnimation:v11 notify:&__block_literal_global_10493];
    objc_storeWeak(&self->_activeAnimator, v14);

    WeakRetained = objc_loadWeakRetained(&self->_activeAnimator);
    if (WeakRetained)
    {
      v16 = objc_loadWeakRetained(&self->_activeAnimator);
      [v16 start];
    }
  }
}

void __86__TUIPredictionViewCell__applyTextEffectAnimationAttribute_attributedCandidateString___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 state] == 1)
  {
    [v2 start];
  }
}

- (void)_applyTextEffectStyleAttribute:(id)a3 attributedCandidateString:(id)a4 fontDescriptor:(id)a5
{
  v26 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v26 candidate];
  v11 = [v10 length];

  v12 = [v26 textEffectName];
  v13 = [v12 isEqualToString:@"bold"];

  if (v13)
  {
    v14 = v9;
    v15 = 2;
LABEL_5:
    v18 = [v14 fontDescriptorWithSymbolicTraits:v15];
    v19 = [MEMORY[0x1E69DB878] fontWithDescriptor:v18 size:17.0];
    [v8 addAttribute:*MEMORY[0x1E69DB648] value:v19 range:{0, v11}];

    goto LABEL_6;
  }

  v16 = [v26 textEffectName];
  v17 = [v16 isEqualToString:@"italic"];

  if (v17)
  {
    v14 = v9;
    v15 = 1;
    goto LABEL_5;
  }

  v21 = [v26 textEffectName];
  v22 = [v21 isEqualToString:@"underline"];

  if (v22)
  {
    v23 = MEMORY[0x1E69DB758];
  }

  else
  {
    v24 = [v26 textEffectName];
    v25 = [v24 isEqualToString:@"strikeThrough"];

    if (!v25)
    {
      goto LABEL_6;
    }

    v23 = MEMORY[0x1E69DB6B8];
  }

  [v8 addAttribute:*v23 value:&unk_1F03D8D98 range:{0, v11}];
LABEL_6:
  v20 = [(TUIPredictionViewCell *)self animationsLabelView];
  [v20 setAttributedText:v8];
}

- (void)_setTextEffectsCandidate:(id)a3 animated:(BOOL)a4
{
  v38[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(TUIPredictionViewCell *)self animationsLabelView];
  [v6 setHidden:0];

  v7 = [v5 textEffectName];
  v8 = [(TUIPredictionViewCell *)self _localizedTitleForAnimationName:v7];

  v9 = MEMORY[0x1E696AEC0];
  v10 = [v5 candidate];
  v11 = [v9 stringWithFormat:@"%@\n%@", v10, v8];

  v34 = v11;
  v12 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v11];
  v13 = [v12 length];
  v14 = [v5 candidate];
  v33 = [v14 length];
  v35 = v8;
  v15 = [v8 length];

  v16 = [MEMORY[0x1E69DCC90] preferredFontWithSize:17.0];
  v36 = [v16 fontDescriptor];
  v17 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  [v17 setAlignment:1];
  [v12 addAttribute:*MEMORY[0x1E69DB688] value:v17 range:{0, v13}];
  v18 = *MEMORY[0x1E69DB648];
  [v12 addAttribute:*MEMORY[0x1E69DB648] value:v16 range:{0, v13}];
  v19 = *MEMORY[0x1E69DB650];
  v20 = [(TUIPredictionViewCell *)self textColor];
  [v12 addAttribute:v19 value:v20 range:{0, v13}];

  v21 = [MEMORY[0x1E69DB878] systemFontOfSize:11.0];
  v22 = MEMORY[0x1E695DF90];
  v37[1] = v19;
  v38[0] = v21;
  v37[0] = v18;
  v23 = [MEMORY[0x1E69DC888] systemGrayColor];
  v38[1] = v23;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:2];
  v25 = [v22 dictionaryWithDictionary:v24];

  [v12 addAttributes:v25 range:{v33 + 1, v15}];
  v26 = MEMORY[0x1E699BB18];
  v27 = [v5 textEffectName];
  v28 = [v26 textEffectTypeForAnimationName:v27];

  if ((v28 - 1) >= 8)
  {
    if ((v28 - 9) < 4)
    {
      [(TUIPredictionViewCell *)self _applyTextEffectStyleAttribute:v5 attributedCandidateString:v12 fontDescriptor:v36];
    }
  }

  else
  {
    [(TUIPredictionViewCell *)self _applyTextEffectAnimationAttribute:v5 attributedCandidateString:v12];
  }

  v29 = MEMORY[0x1E696AEC0];
  v30 = [v5 candidate];
  v31 = [v5 textEffectName];
  v32 = [v29 stringWithFormat:@"%@-TextEffect(%@)", v30, v31];
  [(TUIPredictionViewCell *)self setAccessibilityIdentifier:v32];
}

- (id)_localizedTitleForAnimationName:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [&unk_1F03D9230 objectForKeyedSubscript:v3];

  v6 = [v4 localizedStringInDeviceLanguageForKey:v5];

  return v6;
}

- (void)_setSecureCandidate:(id)a3 animated:(BOOL)a4
{
  v5 = [MEMORY[0x1E6979320] objectForSlot:{objc_msgSend(a3, "slotID")}];
  v6 = [(TUIPredictionViewCell *)self secureCandidateLabel];
  v7 = [v6 layer];
  [v7 setContents:v5];

  v8 = [(TUIPredictionViewCell *)self secureCandidateLabel];
  [v8 setHidden:0];
}

- (void)_setMorphingLabelWithCandidate:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4)
  {
    v7 = MEMORY[0x1E69DD250];
    if (PredictionViewAnimationFrameRateOptions_onceToken != -1)
    {
      dispatch_once(&PredictionViewAnimationFrameRateOptions_onceToken, &__block_literal_global_482);
    }

    v8 = PredictionViewAnimationFrameRateOptions_frameRateOptions;
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __65__TUIPredictionViewCell__setMorphingLabelWithCandidate_animated___block_invoke;
    v15 = &unk_1E72D85E0;
    v16 = self;
    v17 = v6;
    [v7 animateWithDuration:v8 delay:&v12 options:0 animations:0.0 completion:0.0];
  }

  else
  {
    v9 = [(TUIPredictionViewCell *)self _displayLabelForCandidate:v6];
    v10 = [(TUIPredictionViewCell *)self morphingLabel];
    [v10 setText:v9];
  }

  v11 = [(TUIPredictionViewCell *)self morphingLabel:v12];
  [v11 setHidden:0];

  if ([v6 customInfoType] == 0x8000)
  {
    [(TUIPredictionViewCell *)self setAccessibilityIdentifier:@"Text Effects Button"];
  }
}

void __65__TUIPredictionViewCell__setMorphingLabelWithCandidate_animated___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _displayLabelForCandidate:*(a1 + 40)];
  v2 = [*(a1 + 32) morphingLabel];
  [v2 setText:v3];
}

- (void)_setNormalLabelWithCandidate:(id)a3 animated:(BOOL)a4
{
  v5 = [(TUIPredictionViewCell *)self attributedStringRepresentationOfCandidate:a3, a4];
  v6 = [(TUIPredictionViewCell *)self normalLabel];
  [v6 setAttributedText:v5];

  v7 = [(TUIPredictionViewCell *)self normalLabel];
  [v7 setHidden:0];
}

- (void)setLabelFont:(id)a3
{
  v9 = a3;
  v4 = [(TUIPredictionViewCell *)self normalLabel];
  [v4 setFont:v9];

  if (v9)
  {
    v5 = v9;
  }

  else
  {
    v5 = [MEMORY[0x1E69DCC90] preferredFontWithSize:17.0];
  }

  v6 = v5;
  v7 = [(TUIPredictionViewCell *)self morphingLabel];
  [v7 setFont:v6];

  v8 = [(TUIPredictionViewCell *)self animationsLabelView];
  [v8 setFont:v6];
}

- (UIFont)labelFont
{
  v2 = [(TUIPredictionViewCell *)self morphingLabel];
  v3 = [v2 font];

  return v3;
}

- (void)setPredictionPosition:(unint64_t)a3
{
  self->_predictionPosition = a3;
  v4 = [(TUIPredictionViewCell *)self gradientContentLabel];
  [v4 setPredictionPosition:a3];
}

- (void)setSeparatorMargin:(double)a3
{
  if (self->_separatorMargin != a3)
  {
    self->_separatorMargin = a3;
    v5 = [(TUIPredictionViewCell *)self renderConfig];
    [(TUIPredictionViewCell *)self _updateColorsForRenderConfig:v5 highlighted:[(TUIPredictionViewCell *)self highlighted]];
  }
}

- (void)setSeparatorColor:(id)a3
{
  v5 = a3;
  if (self->_separatorColor != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_separatorColor, a3);
    v6 = [(TUIPredictionViewCell *)self renderConfig];
    [(TUIPredictionViewCell *)self _updateColorsForRenderConfig:v6 highlighted:[(TUIPredictionViewCell *)self highlighted]];

    v5 = v7;
  }
}

- (void)setHighlighted:(BOOL)a3
{
  if (self->_highlighted != a3)
  {
    v4 = a3;
    self->_highlighted = a3;
    v6 = [(TUIPredictionViewCell *)self renderConfig];
    [(TUIPredictionViewCell *)self _updateColorsForRenderConfig:v6 highlighted:v4];
  }
}

- (void)setUseContinuousCornerInHighlight:(BOOL)a3
{
  if (self->_useContinuousCornerInHighlight != a3)
  {
    self->_useContinuousCornerInHighlight = a3;
    [(TUIPredictionViewCell *)self _updateCornerRadius];
  }
}

- (void)setHighlightCornerRadius:(double)a3
{
  if (self->_highlightCornerRadius != a3)
  {
    self->_highlightCornerRadius = a3;
    [(TUIPredictionViewCell *)self _updateCornerRadius];
  }
}

- (void)setPreferredBackgroundColor:(id)a3
{
  v5 = a3;
  preferredBackgroundColor = self->_preferredBackgroundColor;
  if (preferredBackgroundColor != v5)
  {
    v9 = v5;
    if (([(UIColor *)preferredBackgroundColor isEqual:?]& 1) == 0)
    {
      objc_storeStrong(&self->_preferredBackgroundColor, a3);
      v7 = v9;
      if (!v9)
      {
        v7 = [(TUIPredictionViewCell *)self _preferredBackgroundColor];
      }

      v8 = [(TUIPredictionViewCell *)self currentBackgroundView];
      [v8 setBackgroundColor:v7];

      if (!v9)
      {
      }
    }
  }

  MEMORY[0x1EEE66BE0]();
}

- (void)setPreferredForegroundColor:(id)a3
{
  v5 = a3;
  preferredForegroundColor = self->_preferredForegroundColor;
  if (preferredForegroundColor != v5)
  {
    v10 = v5;
    preferredForegroundColor = [preferredForegroundColor isEqual:v5];
    v5 = v10;
    if ((preferredForegroundColor & 1) == 0)
    {
      objc_storeStrong(&self->_preferredForegroundColor, a3);
      v7 = [(TUIPredictionViewCell *)self renderConfig];
      v8 = [(TUIPredictionViewCell *)self _renderConfigUsesDarkStyle:v7];

      if (v10)
      {
        preferredForegroundColor = [(TUIPredictionViewCell *)self setTextColor:v10];
      }

      else
      {
        v9 = [(TUIPredictionViewCell *)self _preferredTextColorForHighlighted:0 useDarkStyle:v8];
        [(TUIPredictionViewCell *)self setTextColor:v9];
      }

      v5 = v10;
    }
  }

  MEMORY[0x1EEE66BB8](preferredForegroundColor, v5);
}

- (void)setImageTintColor:(id)a3
{
  v4 = a3;
  v5 = [(TUIPredictionViewCell *)self imageView];

  if (!v5)
  {
    v6 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v7 = [v6 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [(TUIPredictionViewCell *)self setImageView:v7];

    v8 = [(TUIPredictionViewCell *)self imageView];
    [(TUIPredictionViewCell *)self addSubview:v8];
  }

  imageTintColor = self->_imageTintColor;
  self->_imageTintColor = v4;
  v10 = v4;

  v11 = [(TUIPredictionViewCell *)self imageView];
  [v11 setTintColor:v10];
}

- (void)setTextColor:(id)a3
{
  objc_storeStrong(&self->_textColor, a3);
  v5 = a3;
  v6 = [(TUIPredictionViewCell *)self morphingLabel];
  [v6 setTextColor:v5];

  v7 = [(TUIPredictionViewCell *)self normalLabel];
  [v7 setTextColor:v5];

  v8 = [(TUIPredictionViewCell *)self animationsLabelView];
  [v8 setTextColor:v5];

  v9 = [(TUIPredictionViewCell *)self imageView];
  [v9 setTintColor:v5];

  v10 = [(TUIPredictionViewCell *)self gradientContentLabel];
  [v10 setTextColor:v5];
}

- (CGSize)intrinsicContentSize
{
  v3 = *MEMORY[0x1E69DE788];
  v4 = [(TUIPredictionViewCell *)self candidate];
  v5 = [v4 customInfoType];

  if (v5 != 0x8000)
  {
    v7 = [(TUIPredictionViewCell *)self candidate];
    if ([v7 customInfoType] == 0x10000)
    {
      v8 = [(TUIPredictionViewCell *)self _useFloatingStyle];

      if (v8)
      {
        *&v9 = 48.0;
LABEL_17:
        v6 = *&v9;
        goto LABEL_18;
      }
    }

    else
    {
    }

    v10 = [(TUIPredictionViewCell *)self candidate];
    v11 = [(TUIPredictionViewCell *)self _displayLabelForCandidate:v10];
    if ([v11 length])
    {
    }

    else
    {
      v15 = [(TUIPredictionViewCell *)self image];

      if (v15)
      {
        v13 = [(TUIPredictionViewCell *)self image];
        [v13 size];
        v6 = v16 + 40.0;
        goto LABEL_15;
      }
    }

    v12 = [(TUIPredictionViewCell *)self customView];

    if (!v12)
    {
      *&v9 = 120.0;
      goto LABEL_17;
    }

    v13 = [(TUIPredictionViewCell *)self customView];
    [v13 intrinsicContentSize];
    v6 = v14;
LABEL_15:

    goto LABEL_18;
  }

  if ([(TUIPredictionViewCell *)self _usePadStyle])
  {
    v6 = 62.0;
  }

  else
  {
    v6 = 48.0;
  }

LABEL_18:
  v17 = v6;
  v18 = v3;
  result.height = v18;
  result.width = v17;
  return result;
}

- (void)applySeparatorViews
{
  if ([objc_opt_class() _useSeparatorViews])
  {
    [(TUIPredictionViewCell *)self bounds];
    v4 = v3;
    v6 = v5;
    v7 = [(TUIPredictionViewCell *)self visibleSeparatorEdges];
    v8 = [(TUIPredictionViewCell *)self leftSeparatorView];
    v9 = v8;
    if ((v7 & 2) != 0)
    {
      [v8 setHidden:0];

      [(TUIPredictionViewCell *)self separatorMargin];
      v11 = v10;
      v12 = [(TUIPredictionViewCell *)self _usePadStyle];
      v13 = 0.0;
      if (!v12)
      {
        [(TUIPredictionViewCell *)self highlightMargin];
        v13 = v14 * 0.5;
      }

      v15 = v11 + v13;
      [(TUIPredictionViewCell *)self separatorMargin];
      v17 = v6 + v16 * -2.0;
      v18 = [(TUIPredictionViewCell *)self leftSeparatorView];
      [v18 setFrame:{0.0, v15, 1.0, v17}];

      v19 = *&kTUISeparatorCornerRadius;
      v9 = [(TUIPredictionViewCell *)self leftSeparatorView];
      [v9 _setCornerRadius:v19];
    }

    else
    {
      [v8 setHidden:1];
    }

    v20 = [(TUIPredictionViewCell *)self visibleSeparatorEdges];
    v21 = [(TUIPredictionViewCell *)self rightSeparatorView];
    v22 = v21;
    if ((v20 & 8) != 0)
    {
      [v21 setHidden:0];

      v23 = v4 + -1.0;
      [(TUIPredictionViewCell *)self separatorMargin];
      v25 = v24;
      v26 = [(TUIPredictionViewCell *)self _usePadStyle];
      v27 = 0.0;
      if (!v26)
      {
        [(TUIPredictionViewCell *)self highlightMargin];
        v27 = v28 * 0.5;
      }

      v29 = v25 + v27;
      [(TUIPredictionViewCell *)self separatorMargin];
      v31 = v6 + v30 * -2.0;
      v32 = [(TUIPredictionViewCell *)self rightSeparatorView];
      [v32 setFrame:{v23, v29, 1.0, v31}];

      v33 = *&kTUISeparatorCornerRadius;
      v22 = [(TUIPredictionViewCell *)self rightSeparatorView];
      [v22 _setCornerRadius:v33];
    }

    else
    {
      [v21 setHidden:1];
    }

    v34 = (([(TUIPredictionViewCell *)self roundedHighlightEdges]<< 62) >> 63) & 5;
    if (([(TUIPredictionViewCell *)self roundedHighlightEdges]& 8) != 0)
    {
      v34 |= 0xAuLL;
    }

    v36 = [(TUIPredictionViewCell *)self currentBackgroundView];
    v35 = [v36 layer];
    [v35 setMaskedCorners:v34];
  }
}

- (id)attributedStringRepresentationOfCandidate:(id)a3
{
  v4 = a3;
  [(TUIPredictionViewCell *)self bounds];
  v6 = v5 + -6.0;
  v7 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:&stru_1F03BA8F8 attributes:0];
  v8 = [(TUIPredictionViewCell *)self currentTextSuggestion];
  v9 = [v8 headerText];

  v10 = [v9 length];
  if (v10)
  {
    v11 = [(TUIPredictionViewCell *)self headerTextAttributes];
    if ([(TUIPredictionViewCell *)self candidateRequiresTruncationForBoundingWidth:v6])
    {
      v12 = [(TUIPredictionViewCell *)self centerTruncatedStringForString:v9 withAttributes:v11 fittingWidth:v6];

      v9 = v12;
    }

    v13 = [v9 stringByAppendingString:@"\n"];

    v14 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v13 attributes:v11];
    [v7 appendAttributedString:v14];

    v9 = v13;
  }

  v15 = v10 != 0;
  v16 = [(TUIPredictionViewCell *)self _displayLabelForCandidate:v4];
  v17 = -[TUIPredictionViewCell displayTextAttributesForMultiline:header:shrink:](self, "displayTextAttributesForMultiline:header:shrink:", [v16 containsString:@"\n"], v15, -[TUIPredictionViewCell candidateRequiresShrinkingForBoundingWidth:](self, "candidateRequiresShrinkingForBoundingWidth:", v6));
  if ([(TUIPredictionViewCell *)self candidateRequiresTruncationForBoundingWidth:v6])
  {
    v18 = [(TUIPredictionViewCell *)self centerTruncatedStringForString:v16 withAttributes:v17 fittingWidth:v6];

    v16 = v18;
  }

  v19 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v16 attributes:v17];
  [v7 appendAttributedString:v19];

  return v7;
}

- (id)centerTruncatedStringForString:(id)a3 withAttributes:(id)a4 fittingWidth:(double)a5
{
  v8 = a3;
  v9 = [v8 tui_centerTruncatedStringWithAttributes:a4 fittingWidth:a5];

  v10 = [(TUIPredictionViewCell *)self isLabelTruncated];
  v11 = v9 != v8 || v10;
  [(TUIPredictionViewCell *)self setLabelTruncated:v11];

  return v9;
}

- (BOOL)candidateRequiresTruncationForBoundingWidth:(double)a3
{
  v5 = [(TUIPredictionViewCell *)self currentTextSuggestion];
  if (v5)
  {
    v6 = v5;
    v7 = [(TUIPredictionViewCell *)self currentTextSuggestion];
    v8 = [v7 headerText];
    v9 = [v8 length];

    if (v9)
    {
      v10 = [(TUIPredictionViewCell *)self currentTextSuggestion];

      if (v10)
      {
        v11 = [(TUIPredictionViewCell *)self currentTextSuggestion];
        v12 = [v11 headerText];
        v13 = [(TUIPredictionViewCell *)self headerTextAttributes];
        [v12 sizeWithAttributes:v13];
        v15 = v14;
      }

      else
      {
        v15 = *MEMORY[0x1E695F060];
      }

      v16 = [(TUIPredictionViewCell *)self candidate];
      v17 = [v16 label];
      v18 = [v17 containsString:@"\n"];

      v19 = [(TUIPredictionViewCell *)self candidate];
      v20 = [v19 label];
      v21 = [(TUIPredictionViewCell *)self displayTextAttributesForMultiline:v18 header:1 shrink:[(TUIPredictionViewCell *)self candidateRequiresShrinkingForBoundingWidth:a3]];
      [v20 sizeWithAttributes:v21];
      v23 = v22;

      LOBYTE(v5) = fmax(v15, v23) > a3;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (CGSize)labelTextSizeForCandidate:(id)a3
{
  v20[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(TUIPredictionViewCell *)self _isSecureCandidate:v4])
  {
    v5 = *MEMORY[0x1E69DE788];
    v6 = *MEMORY[0x1E69DE788];
  }

  else
  {
    if ([(TUIPredictionViewCell *)self _usesMorphingLabelForCandidate:v4])
    {
      v7 = [(TUIPredictionViewCell *)self morphingLabel];
      v8 = [v7 text];
      v19 = *MEMORY[0x1E69DB648];
      v9 = [(TUIPredictionViewCell *)self morphingLabel];
      v10 = [v9 font];
      v20[0] = v10;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      [v8 sizeWithAttributes:v11];
      v5 = v12;
      v6 = v13;
    }

    else
    {
      if ([(TUIPredictionViewCell *)self _isTextEffectsCandidate:v4])
      {
        [(TUIPredictionViewCell *)self animationsLabelView];
      }

      else
      {
        [(TUIPredictionViewCell *)self normalLabel];
      }
      v7 = ;
      v14 = [v7 attributedText];
      [v14 size];
      v5 = v15;
      v6 = v16;
    }
  }

  v17 = v5;
  v18 = v6;
  result.height = v18;
  result.width = v17;
  return result;
}

- (id)headerTextAttributes
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = 12.0;
  if ([(TUIPredictionViewCell *)self _usePadStyle])
  {
    v4 = 11.0;
  }

  else
  {
    v4 = 12.0;
  }

  if (![(TUIPredictionViewCell *)self _usePadStyle])
  {
    v3 = 14.0;
  }

  v5 = [(TUIPredictionViewCell *)self useAutofillStyle];
  v11[0] = *MEMORY[0x1E69DB648];
  if (v5)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  v7 = [MEMORY[0x1E69DB878] systemFontOfSize:v6];
  v12[0] = v7;
  v11[1] = *MEMORY[0x1E69DB650];
  v8 = [(TUIPredictionViewCell *)self textColor];
  v12[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];

  return v9;
}

- (id)displayTextAttributesForMultiline:(BOOL)a3 header:(BOOL)a4 shrink:(BOOL)a5
{
  v22[2] = *MEMORY[0x1E69E9840];
  if (![(TUIPredictionViewCell *)self useWritingToolsStyle:a3]|| (v9 = [(TUIPredictionViewCell *)self _usePadStyle], v8 = 17.0, !v9))
  {
    if (a3 || (v10 = [(TUIPredictionViewCell *)self _usePadStyle], v8 = 16.0, v10))
    {
      v8 = 14.0;
    }
  }

  v11 = [MEMORY[0x1E69DB878] systemFontOfSize:v8];
  if (!a3 && !a4)
  {
    v12 = [MEMORY[0x1E69DCA40] defaultMetrics];
    v13 = [v12 scaledFontForFont:v11];

    v11 = v13;
  }

  v14 = MEMORY[0x1E695DF90];
  v15 = *MEMORY[0x1E69DB648];
  v22[0] = v11;
  v16 = *MEMORY[0x1E69DB650];
  v21[0] = v15;
  v21[1] = v16;
  v17 = [(TUIPredictionViewCell *)self textColor];
  v22[1] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
  v19 = [v14 dictionaryWithDictionary:v18];

  return v19;
}

- (BOOL)useWritingToolsStyle
{
  v2 = self;
  v3 = [(TUIPredictionViewCell *)self candidate];
  LOBYTE(v2) = [(TUIPredictionViewCell *)v2 _isWritingToolsCandidate:v3];

  return v2;
}

- (BOOL)useAutofillStyle
{
  v3 = [(TUIPredictionViewCell *)self candidate];
  v4 = [v3 customInfoType] & 0x18;
  v5 = v4 != 0;

  v6 = [(TUIPredictionViewCell *)self currentTextSuggestion];

  if (v6)
  {
    v7 = [(TUIPredictionViewCell *)self currentTextSuggestion];
    v8 = [v7 displayStylePlain];
    if (v4)
    {
      v5 = 1;
    }

    else
    {
      v5 = v8;
    }
  }

  return v5;
}

- (id)currentTextSuggestion
{
  v3 = [(TUIPredictionViewCell *)self candidate];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(TUIPredictionViewCell *)self candidate];
    v6 = [v5 textSuggestion];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)labelViewForCandidate:(id)a3
{
  v4 = a3;
  v5 = [(TUIPredictionViewCell *)self normalLabel];
  if ([(TUIPredictionViewCell *)self _isSecureCandidate:v4])
  {
    v6 = [(TUIPredictionViewCell *)self secureCandidateLabel];
  }

  else if ([(TUIPredictionViewCell *)self _isTextEffectsCandidate:v4])
  {
    v6 = [(TUIPredictionViewCell *)self animationsLabelView];
  }

  else
  {
    if (![(TUIPredictionViewCell *)self _usesMorphingLabelForCandidate:v4])
    {
      goto LABEL_8;
    }

    v6 = [(TUIPredictionViewCell *)self morphingLabel];
  }

  v7 = v6;

  v5 = v7;
LABEL_8:

  return v5;
}

- (id)_displayLabelForCandidate:(id)a3
{
  v4 = a3;
  [(TUIPredictionViewCell *)self contentHuggingPriorityForAxis:0];
  if (v5 != 1000.0 && [v4 customInfoType] == 32)
  {
    v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringInDeviceLanguageForKey:@"Passwords"];
LABEL_9:
    v13 = v7;
    goto LABEL_11;
  }

  if ([v4 candidateProperty] == 1 && -[TUIPredictionViewCell shouldUseRTLForMathEquations](self, "shouldUseRTLForMathEquations"))
  {
    v8 = [v4 candidate];
    v9 = [v8 componentsSeparatedByString:@"="];
    v6 = [v9 objectAtIndex:0];

    v10 = [v4 candidate];
    v11 = [v10 componentsSeparatedByString:@"="];
    v12 = [v11 objectAtIndex:1];

    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", v12, @"=", v6];

    goto LABEL_11;
  }

  v6 = [v4 label];
  if ([v6 length])
  {
    v7 = [v4 label];
    goto LABEL_9;
  }

  v13 = &stru_1F03BA8F8;
LABEL_11:

  return v13;
}

- (BOOL)shouldUseRTLForMathEquations
{
  v2 = [MEMORY[0x1E69DCBF0] sharedInputModeController];
  v3 = [v2 currentInputMode];
  v4 = [v3 primaryLanguage];
  v5 = [v4 isEqual:@"ar"];

  return v5;
}

- (BOOL)_isSmartReplyCandidate:(id)a3
{
  v3 = a3;
  if (([v3 candidateProperty] & 2) != 0)
  {
    v5 = [v3 candidate];
    v4 = [v5 _containsEmoji] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)_isTextEffectsCandidate:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = (objc_opt_isKindOfClass() & 1) != 0 && [v3 candidateProperty] == 4;

  return v4;
}

- (BOOL)_isEmojiCandidate:(id)a3
{
  v3 = [a3 label];
  v4 = [v3 _containsEmojiOnly];

  return v4;
}

- (BOOL)_usesMorphingLabelForCandidate:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) == 0 || [v4 customInfoType] == 32 || objc_msgSend(v4, "customInfoType") == 0x8000 || objc_msgSend(v4, "candidateProperty") == 8;
  v6 = ![(TUIPredictionViewCell *)self _isTextEffectsCandidate:v4];

  return v6 & v5;
}

- (id)_preferredTextColorForHighlighted:(BOOL)a3 useDarkStyle:(BOOL)a4
{
  v4 = a4;
  if (a3)
  {
    v7 = [MEMORY[0x1E69DC888] blackColor];
    if (!v4)
    {
      goto LABEL_7;
    }

    v8 = [MEMORY[0x1E69DC888] whiteColor];
  }

  else
  {
    v7 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.9];
    if (!v4)
    {
      goto LABEL_7;
    }

    v8 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.9];
  }

  v9 = v8;

  v7 = v9;
LABEL_7:
  v10 = [(TUIPredictionViewCell *)self preferredForegroundColor];

  if (v10)
  {
    v11 = [(TUIPredictionViewCell *)self preferredForegroundColor];
    [v11 alphaComponent];
    v13 = v12;

    v14 = [(TUIPredictionViewCell *)self preferredForegroundColor];
    v15 = v14;
    if (!a3)
    {
      v16 = [v14 colorWithAlphaComponent:v13 * 0.9];

      v7 = v15;
      v15 = v16;
    }

    v7 = v15;
  }

  return v7;
}

- (id)_preferredTextColorForRenderConfig:(id)a3 highlighted:(BOOL)a4
{
  v6 = a3;
  if ([(TUIPredictionViewCell *)self _renderConfigUsesDarkStyle:v6])
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] blackColor];
  }
  v7 = ;
  v8 = [v6 animatedBackground];

  if ((v8 & 1) == 0)
  {
    v9 = [(TUIPredictionViewCell *)self preferredForegroundColor];

    if (v9)
    {
      v10 = [(TUIPredictionViewCell *)self preferredForegroundColor];

      v7 = v10;
    }

    [v7 alphaComponent];
    if (!a4)
    {
      v12 = [v7 colorWithAlphaComponent:v11 * 0.9];

      v7 = v12;
    }
  }

  return v7;
}

- (TUIPredictionViewCell)initWithFrame:(CGRect)a3
{
  v89[4] = *MEMORY[0x1E69E9840];
  v88.receiver = self;
  v88.super_class = TUIPredictionViewCell;
  v3 = [(TUIPredictionViewCell *)&v88 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD250]);
    v5 = *MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 8);
    v7 = *(MEMORY[0x1E695F058] + 16);
    v8 = *(MEMORY[0x1E695F058] + 24);
    v9 = [v4 initWithFrame:{*MEMORY[0x1E695F058], v6, v7, v8}];
    [(TUIPredictionViewCell *)v3 setBackgroundView:v9];

    v10 = [(TUIPredictionViewCell *)v3 backgroundView];
    v11 = [v10 layer];
    [v11 setCornerRadius:5.0];

    v12 = [(TUIPredictionViewCell *)v3 backgroundView];
    v13 = [v12 layer];
    [v13 setMasksToBounds:1];

    v14 = [(TUIPredictionViewCell *)v3 backgroundView];
    [(TUIPredictionViewCell *)v3 addSubview:v14];

    if ([objc_opt_class() _useSeparatorViews])
    {
      v15 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v5, v6, v7, v8}];
      [(TUIPredictionViewCell *)v3 setLeftSeparatorView:v15];

      v16 = [(TUIPredictionViewCell *)v3 leftSeparatorView];
      [(TUIPredictionViewCell *)v3 addSubview:v16];

      v17 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v5, v6, v7, v8}];
      [(TUIPredictionViewCell *)v3 setRightSeparatorView:v17];

      v18 = [(TUIPredictionViewCell *)v3 rightSeparatorView];
      [(TUIPredictionViewCell *)v3 addSubview:v18];
    }

    v19 = [[TUICandidateGradientContentLabel alloc] initWithFrame:v5, v6, v7, v8];
    [(TUIPredictionViewCell *)v3 setGradientContentLabel:v19];

    v20 = [(TUIPredictionViewCell *)v3 gradientContentLabel];
    [v20 reconfigureForAlignment:1];

    v21 = [(TUIPredictionViewCell *)v3 gradientContentLabel];
    [v21 setHidden:1];

    v22 = [(TUIPredictionViewCell *)v3 gradientContentLabel];
    [(TUIPredictionViewCell *)v3 addSubview:v22];

    v23 = [(TUIPredictionViewCell *)v3 gradientContentLabel];
    v24 = [v23 topAnchor];
    v25 = [(TUIPredictionViewCell *)v3 topAnchor];
    v26 = [v24 constraintEqualToAnchor:v25];
    [(TUIPredictionViewCell *)v3 setGradientContentTopConstraint:v26];

    v27 = [(TUIPredictionViewCell *)v3 gradientContentLabel];
    v28 = [v27 bottomAnchor];
    v29 = [(TUIPredictionViewCell *)v3 bottomAnchor];
    v30 = [v28 constraintEqualToAnchor:v29];
    [(TUIPredictionViewCell *)v3 setGradientContentBottomConstraint:v30];

    v85 = MEMORY[0x1E696ACD8];
    v87 = [(TUIPredictionViewCell *)v3 gradientContentLabel];
    v86 = [v87 leadingAnchor];
    v31 = [(TUIPredictionViewCell *)v3 leadingAnchor];
    v32 = [v86 constraintEqualToAnchor:v31];
    v89[0] = v32;
    v33 = [(TUIPredictionViewCell *)v3 gradientContentLabel];
    v34 = [v33 trailingAnchor];
    v35 = [(TUIPredictionViewCell *)v3 trailingAnchor];
    v36 = [v34 constraintEqualToAnchor:v35];
    v89[1] = v36;
    v37 = [(TUIPredictionViewCell *)v3 gradientContentTopConstraint];
    v89[2] = v37;
    v38 = [(TUIPredictionViewCell *)v3 gradientContentBottomConstraint];
    v89[3] = v38;
    v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v89 count:4];
    [v85 activateConstraints:v39];

    v40 = [objc_alloc(MEMORY[0x1E69DCEF8]) initWithFrame:{v5, v6, v7, v8}];
    [(TUIPredictionViewCell *)v3 setMaskingScrollView:v40];

    v41 = [(TUIPredictionViewCell *)v3 maskingScrollView];
    [v41 setDelegate:v3];

    v42 = [(TUIPredictionViewCell *)v3 maskingScrollView];
    [v42 setShowsHorizontalScrollIndicator:0];

    v43 = [(TUIPredictionViewCell *)v3 maskingScrollView];
    [v43 setShowsVerticalScrollIndicator:0];

    v44 = [(TUIPredictionViewCell *)v3 maskingScrollView];
    [v44 setContentInset:{0.0, 3.0, 0.0, 3.0}];

    v45 = [(TUIPredictionViewCell *)v3 maskingScrollView];
    [(TUIPredictionViewCell *)v3 addSubview:v45];

    v46 = [objc_alloc(MEMORY[0x1E69DCC90]) initWithFrame:{v5, v6, v7, v8}];
    [(TUIPredictionViewCell *)v3 setMorphingLabel:v46];

    v47 = [(TUIPredictionViewCell *)v3 morphingLabel];
    [v47 setOpaque:0];

    v48 = [(TUIPredictionViewCell *)v3 morphingLabel];
    [v48 setTextAlignment:1];

    v49 = [(TUIPredictionViewCell *)v3 maskingScrollView];
    v50 = [(TUIPredictionViewCell *)v3 morphingLabel];
    [v49 addSubview:v50];

    v51 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v5, v6, v7, v8}];
    [(TUIPredictionViewCell *)v3 setNormalLabel:v51];

    v52 = [(TUIPredictionViewCell *)v3 normalLabel];
    [v52 setOpaque:0];

    v53 = [(TUIPredictionViewCell *)v3 normalLabel];
    [v53 setNumberOfLines:0];

    v54 = [(TUIPredictionViewCell *)v3 normalLabel];
    [v54 setTextAlignment:1];

    v55 = [(TUIPredictionViewCell *)v3 maskingScrollView];
    v56 = [(TUIPredictionViewCell *)v3 normalLabel];
    [v55 addSubview:v56];

    v57 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v5, v6, v7, v8}];
    [(TUIPredictionViewCell *)v3 setSecureCandidateLabel:v57];

    v58 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v58 scale];
    v60 = v59;
    v61 = [(TUIPredictionViewCell *)v3 secureCandidateLabel];
    v62 = [v61 layer];
    [v62 setContentsScale:v60];

    v63 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v63 scale];
    v65 = v64;
    v66 = [(TUIPredictionViewCell *)v3 secureCandidateLabel];
    v67 = [v66 layer];
    [v67 setRasterizationScale:v65];

    v68 = *MEMORY[0x1E6979DD0];
    v69 = [(TUIPredictionViewCell *)v3 secureCandidateLabel];
    v70 = [v69 layer];
    [v70 setContentsGravity:v68];

    v71 = [(TUIPredictionViewCell *)v3 maskingScrollView];
    v72 = [(TUIPredictionViewCell *)v3 secureCandidateLabel];
    [v71 addSubview:v72];

    v73 = [objc_alloc(MEMORY[0x1E69DD168]) initReadonlyAndUnselectableWithFrame:0 textContainer:1 textLayoutManagerEnabled:{v5, v6, v7, v8}];
    [(TUIPredictionViewCell *)v3 setAnimationsLabelView:v73];

    v74 = [(TUIPredictionViewCell *)v3 animationsLabelView];
    [v74 setUserInteractionEnabled:0];

    v75 = [(TUIPredictionViewCell *)v3 animationsLabelView];
    [v75 setAllowsTextAnimations:1];

    v76 = [MEMORY[0x1E69DC888] clearColor];
    v77 = [(TUIPredictionViewCell *)v3 animationsLabelView];
    [v77 setBackgroundColor:v76];

    v78 = [(TUIPredictionViewCell *)v3 animationsLabelView];
    [v78 setTextAlignment:1];

    v79 = [(TUIPredictionViewCell *)v3 animationsLabelView];
    [v79 setScrollEnabled:0];

    v80 = [(TUIPredictionViewCell *)v3 animationsLabelView];
    v81 = [v80 textLayoutManager];
    [v81 setRequiresCTLineRef:1];

    v82 = [(TUIPredictionViewCell *)v3 maskingScrollView];
    v83 = [(TUIPredictionViewCell *)v3 animationsLabelView];
    [v82 addSubview:v83];

    [(TUIPredictionViewCell *)v3 _updateColorsForRenderConfig:0 highlighted:0];
  }

  return v3;
}

+ (id)cellHighlightColorForRenderConfig:(id)a3
{
  v3 = a3;
  if ([v3 animatedBackground])
  {
    if ([v3 lightKeyboard])
    {
      [MEMORY[0x1E69DC888] whiteColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] blackColor];
    }
    v4 = ;
  }

  else
  {
    v4 = [objc_opt_class() cellHighlightColorForDarkStyle:{objc_msgSend(v3, "lightKeyboard") ^ 1}];
  }

  v5 = v4;

  return v5;
}

+ (id)cellHighlightColorForDarkStyle:(BOOL)a3
{
  v3 = a3;
  v4 = UIKeyboardGetLightCandidateHighlightColor();
  if (v3)
  {
    v5 = [MEMORY[0x1E69DC938] currentDevice];
    v6 = [v5 userInterfaceIdiom];

    if ((v6 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v7 = 0.337254902;
      v8 = 0.329411765;
      v9 = 0.333333333;
      v10 = 1.0;
    }

    else
    {
      v7 = 0.450980392;
      v10 = 1.0;
      v8 = 0.450980392;
      v9 = 0.450980392;
    }

    v11 = [MEMORY[0x1E69DC888] colorWithRed:v7 green:v8 blue:v9 alpha:v10];

    v4 = v11;
  }

  return v4;
}

@end