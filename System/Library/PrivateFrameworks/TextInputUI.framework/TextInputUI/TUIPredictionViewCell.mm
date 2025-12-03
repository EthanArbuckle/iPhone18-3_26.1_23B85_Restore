@interface TUIPredictionViewCell
+ (id)cellHighlightColorForDarkStyle:(BOOL)style;
+ (id)cellHighlightColorForRenderConfig:(id)config;
- (BOOL)_isEmojiCandidate:(id)candidate;
- (BOOL)_isSmartReplyCandidate:(id)candidate;
- (BOOL)_isTextEffectsCandidate:(id)candidate;
- (BOOL)_renderConfigUsesDarkStyle:(id)style;
- (BOOL)_usePadStyle;
- (BOOL)_usesMorphingLabelForCandidate:(id)candidate;
- (BOOL)candidateRequiresTruncationForBoundingWidth:(double)width;
- (BOOL)shouldUseRTLForMathEquations;
- (BOOL)useAutofillStyle;
- (BOOL)useWritingToolsStyle;
- (CGSize)intrinsicContentSize;
- (CGSize)labelTextSizeForCandidate:(id)candidate;
- (TUIPredictionViewCell)initWithFrame:(CGRect)frame;
- (UIFont)labelFont;
- (UIImage)image;
- (_NSTextAnimator)activeAnimator;
- (id)_displayLabelForCandidate:(id)candidate;
- (id)_localizedTitleForAnimationName:(id)name;
- (id)_preferredBackgroundColor;
- (id)_preferredTextColorForHighlighted:(BOOL)highlighted useDarkStyle:(BOOL)style;
- (id)_preferredTextColorForRenderConfig:(id)config highlighted:(BOOL)highlighted;
- (id)attributedStringRepresentationOfCandidate:(id)candidate;
- (id)centerTruncatedStringForString:(id)string withAttributes:(id)attributes fittingWidth:(double)width;
- (id)currentBackgroundView;
- (id)currentTextSuggestion;
- (id)displayTextAttributesForMultiline:(BOOL)multiline header:(BOOL)header shrink:(BOOL)shrink;
- (id)headerTextAttributes;
- (id)labelView;
- (id)labelViewForCandidate:(id)candidate;
- (int64_t)layoutType;
- (void)_applyTextEffectAnimationAttribute:(id)attribute attributedCandidateString:(id)string;
- (void)_applyTextEffectStyleAttribute:(id)attribute attributedCandidateString:(id)string fontDescriptor:(id)descriptor;
- (void)_resetViewForUnanimatedBackdrop:(id)backdrop;
- (void)_setMorphingLabelWithCandidate:(id)candidate animated:(BOOL)animated;
- (void)_setNormalLabelWithCandidate:(id)candidate animated:(BOOL)animated;
- (void)_setSecureCandidate:(id)candidate animated:(BOOL)animated;
- (void)_setSmartActionCandidate:(id)candidate animated:(BOOL)animated;
- (void)_setSmartReplyCandidate:(id)candidate animated:(BOOL)animated;
- (void)_setTextEffectsCandidate:(id)candidate animated:(BOOL)animated;
- (void)_updateColorsForRenderConfig:(id)config highlighted:(BOOL)highlighted;
- (void)_updateCornerRadius;
- (void)_updateForAnimatedBackdropIfNeeded:(id)needed highlighted:(BOOL)highlighted;
- (void)_updateLabelsForColorAdaptiveUI;
- (void)_updateViewForAnimatedBackdrop:(id)backdrop usingAlpha:(double)alpha darkConfiguration:(BOOL)configuration;
- (void)applySeparatorViews;
- (void)endAnimations;
- (void)layoutSubviews;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setCandidate:(id)candidate animated:(BOOL)animated;
- (void)setCustomView:(id)view;
- (void)setHighlightCornerRadius:(double)radius;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setImage:(id)image;
- (void)setImageTintColor:(id)color;
- (void)setLabelFont:(id)font;
- (void)setPredictionPosition:(unint64_t)position;
- (void)setPreferredBackgroundColor:(id)color;
- (void)setPreferredForegroundColor:(id)color;
- (void)setRenderConfig:(id)config;
- (void)setSeparatorColor:(id)color;
- (void)setSeparatorMargin:(double)margin;
- (void)setTextColor:(id)color;
- (void)setUseContinuousCornerInHighlight:(BOOL)highlight;
@end

@implementation TUIPredictionViewCell

- (void)layoutSubviews
{
  v174.receiver = self;
  v174.super_class = TUIPredictionViewCell;
  [(TUIPredictionViewCell *)&v174 layoutSubviews];
  candidate = [(TUIPredictionViewCell *)self candidate];
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
  currentBackgroundView = [(TUIPredictionViewCell *)self currentBackgroundView];
  [currentBackgroundView setFrame:{v15, v17, v19, v21}];

  candidate2 = [(TUIPredictionViewCell *)self candidate];
  v24 = [(TUIPredictionViewCell *)self _isStickerCandidate:candidate2];

  candidate3 = [(TUIPredictionViewCell *)self candidate];
  [(TUIPredictionViewCell *)self _isTextEffectsCandidate:candidate3];

  candidate4 = [(TUIPredictionViewCell *)self candidate];
  v27 = [(TUIPredictionViewCell *)self _isWritingToolsCandidate:candidate4];

  candidate5 = [(TUIPredictionViewCell *)self candidate];
  v29 = [(TUIPredictionViewCell *)self _isSmartReplyCandidate:candidate5];

  candidate6 = [(TUIPredictionViewCell *)self candidate];
  v31 = [(TUIPredictionViewCell *)self _isSmartActionCandidate:candidate6];

  if (v31 || v29)
  {
    _usePadStyle = [(TUIPredictionViewCell *)self _usePadStyle];
    [(TUIPredictionViewCell *)self highlightMargin];
    if (_usePadStyle)
    {
      v48 = v47;
    }

    else
    {
      v48 = v47 + 4.0;
    }

    gradientContentTopConstraint = [(TUIPredictionViewCell *)self gradientContentTopConstraint];
    [gradientContentTopConstraint setConstant:v48];

    gradientContentBottomConstraint = [(TUIPredictionViewCell *)self gradientContentBottomConstraint];
    [gradientContentBottomConstraint setConstant:0.0];

    textColor = [(TUIPredictionViewCell *)self textColor];
    gradientContentLabel = [(TUIPredictionViewCell *)self gradientContentLabel];
    [gradientContentLabel setTextColor:textColor];

    maskingScrollView = [(TUIPredictionViewCell *)self maskingScrollView];
    [maskingScrollView setHidden:1];

    gradientContentLabel2 = [(TUIPredictionViewCell *)self gradientContentLabel];
    [gradientContentLabel2 setHidden:0];

    [(TUIPredictionViewCell *)self applySeparatorViews];
    return;
  }

  maskingScrollView2 = [(TUIPredictionViewCell *)self maskingScrollView];
  [maskingScrollView2 setHidden:0];

  gradientContentLabel3 = [(TUIPredictionViewCell *)self gradientContentLabel];
  [gradientContentLabel3 setHidden:1];

  candidate7 = [(TUIPredictionViewCell *)self candidate];
  v35 = [(TUIPredictionViewCell *)self _usesMorphingLabelForCandidate:candidate7];

  if (!v35)
  {
    [(TUIPredictionViewCell *)self bounds];
    if ([(TUIPredictionViewCell *)self candidateRequiresTruncationForBoundingWidth:v36]|| [(TUIPredictionViewCell *)self isLabelTruncated])
    {
      candidate8 = [(TUIPredictionViewCell *)self candidate];
      v38 = [(TUIPredictionViewCell *)self attributedStringRepresentationOfCandidate:candidate8];
      normalLabel = [(TUIPredictionViewCell *)self normalLabel];
      [normalLabel setAttributedText:v38];
    }
  }

  image = [(TUIPredictionViewCell *)self image];

  if (image)
  {
    maskingScrollView3 = [(TUIPredictionViewCell *)self maskingScrollView];
    [maskingScrollView3 contentInset];
    v43 = v42;

    v44 = 6.0;
    if (v43 != 6.0)
    {
      maskingScrollView4 = [(TUIPredictionViewCell *)self maskingScrollView];
      [maskingScrollView4 setContentInset:{0.0, 6.0, 0.0, 6.0}];
    }
  }

  else
  {
    v44 = 3.0;
  }

  candidate9 = [(TUIPredictionViewCell *)self candidate];
  [(TUIPredictionViewCell *)self labelTextSizeForCandidate:candidate9];
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

  candidate10 = [(TUIPredictionViewCell *)self candidate];
  v61 = [(TUIPredictionViewCell *)self labelViewForCandidate:candidate10];

  imageView = [(TUIPredictionViewCell *)self imageView];
  [imageView sizeToFit];

  candidate11 = [(TUIPredictionViewCell *)self candidate];
  customInfoType = [candidate11 customInfoType];

  v172 = customInfoType;
  v65 = customInfoType != 0x8000 && [(TUIPredictionViewCell *)self effectiveUserInterfaceLayoutDirection]== 1;
  imageView2 = [(TUIPredictionViewCell *)self imageView];
  [imageView2 frame];
  Width = CGRectGetWidth(v175);
  v68 = v173;
  if (v57 <= 0.00000011920929)
  {
    v68 = 0.0;
  }

  if (image)
  {
    v58 = v68;
  }

  image2 = [(TUIPredictionViewCell *)self image];
  if (image2)
  {
    v70 = 1;
  }

  else
  {
    candidate12 = [(TUIPredictionViewCell *)self candidate];
    v70 = [(TUIPredictionViewCell *)self _isEmojiCandidate:candidate12];
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
      currentTextSuggestion = [(TUIPredictionViewCell *)self currentTextSuggestion];
      if (currentTextSuggestion)
      {
        image3 = [(TUIPredictionViewCell *)self image];
        v73 = image3 != 0;
      }

      else
      {
        v73 = 1;
      }
    }
  }

  candidate13 = [(TUIPredictionViewCell *)self candidate];
  v77 = [(TUIPredictionViewCell *)self _isSecureCandidate:candidate13];

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

  candidate14 = [(TUIPredictionViewCell *)self candidate];
  v81 = [(TUIPredictionViewCell *)self _isTextEffectsCandidate:candidate14];

  if (v81)
  {
    animationsLabelView = [(TUIPredictionViewCell *)self animationsLabelView];
    [animationsLabelView sizeThatFits:{1.79769313e308, 1.79769313e308}];
    v84 = v83;

    currentBackgroundView2 = [(TUIPredictionViewCell *)self currentBackgroundView];
    [currentBackgroundView2 bounds];
    v87 = v84 - v86;

    currentBackgroundView3 = [(TUIPredictionViewCell *)self currentBackgroundView];
    [currentBackgroundView3 frame];
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
      currentBackgroundView4 = [(TUIPredictionViewCell *)self currentBackgroundView];
      [currentBackgroundView4 frame];
      v91 = v93 * 0.5;
    }

    if (![(TUIPredictionViewCell *)self _usePadStyle]&& v27)
    {
      [(TUIPredictionViewCell *)self highlightMargin];
      v91 = v91 + v94 * 0.5 + 1.0;
    }

    [v61 setFrame:{0.0, v91, v79, v13}];
  }

  if (v73 && image != 0)
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

  maskingScrollView5 = [(TUIPredictionViewCell *)self maskingScrollView];
  [maskingScrollView5 setFrame:{v97, 0.0, v98, v13}];

  maskingScrollView6 = [(TUIPredictionViewCell *)self maskingScrollView];
  [maskingScrollView6 setContentSize:{MaxX, v13}];

  maskingScrollView7 = [(TUIPredictionViewCell *)self maskingScrollView];
  [maskingScrollView7 setScrollEnabled:v73];

  if (v73)
  {
    maskingScrollView8 = [(TUIPredictionViewCell *)self maskingScrollView];
    [maskingScrollView8 frame];
    v104 = v103;
    v106 = v105;
    v108 = v107;
    v110 = v109;
    maskingScrollView9 = [(TUIPredictionViewCell *)self maskingScrollView];
    [maskingScrollView9 contentInset];
    v113 = v104 + v112;
    v115 = v106 + v114;
    v117 = v108 - (v112 + v116);
    v119 = v110 - (v114 + v118);

    if ([(TUIPredictionViewCell *)self _isSmartReplyCandidate:self->_candidate])
    {
      maskingScrollView10 = [(TUIPredictionViewCell *)self maskingScrollView];
      [maskingScrollView10 contentOffset];
      v122 = v121;

      if (v122 == 0.0)
      {
LABEL_78:
        morphingLabel = [(TUIPredictionViewCell *)self morphingLabel];
        [morphingLabel setVisibleRect:{v113, v115, v117, v119}];
        goto LABEL_79;
      }

      maskingScrollView11 = [(TUIPredictionViewCell *)self maskingScrollView];
      [maskingScrollView11 setContentOffset:0 animated:{0.0, 0.0}];
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

      maskingScrollView11 = [(TUIPredictionViewCell *)self maskingScrollView];
      [maskingScrollView11 scrollRectToVisible:0 animated:{v151, v115, v117, v119}];
      v113 = v151;
    }

    goto LABEL_78;
  }

  morphingLabel2 = [(TUIPredictionViewCell *)self morphingLabel];
  [morphingLabel2 setVisibleRect:{v7, v9, v11, v13}];

  maskingScrollView12 = [(TUIPredictionViewCell *)self maskingScrollView];
  [maskingScrollView12 frame];
  UIRectCenteredXInRect();
  v127 = v126;
  v129 = v128;
  v131 = v130;
  v133 = v132;
  maskingScrollView13 = [(TUIPredictionViewCell *)self maskingScrollView];
  [maskingScrollView13 setFrame:{v127, v129, v131, v133}];

  if (image)
  {
    maskingScrollView14 = [(TUIPredictionViewCell *)self maskingScrollView];
    [maskingScrollView14 frame];
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
    maskingScrollView15 = [(TUIPredictionViewCell *)self maskingScrollView];
    [maskingScrollView15 setFrame:{v145, v139, v141, v143}];
  }

  maskingScrollView16 = [(TUIPredictionViewCell *)self maskingScrollView];
  [maskingScrollView16 contentOffset];
  v149 = v148;

  if (v149 == 0.0)
  {
    goto LABEL_80;
  }

  morphingLabel = [(TUIPredictionViewCell *)self maskingScrollView];
  [morphingLabel setContentOffset:0 animated:{0.0, 0.0}];
LABEL_79:

LABEL_80:
  imageView3 = [(TUIPredictionViewCell *)self imageView];
  [imageView3 frame];

  maskingScrollView17 = [(TUIPredictionViewCell *)self maskingScrollView];
  [maskingScrollView17 frame];

  if (v65 && v73)
  {
    [(TUIPredictionViewCell *)self bounds];
  }

  currentBackgroundView5 = [(TUIPredictionViewCell *)self currentBackgroundView];
  [currentBackgroundView5 frame];
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

  imageView4 = [(TUIPredictionViewCell *)self imageView];
  [imageView4 setFrame:{x, y, v160, height}];

  v165 = [MEMORY[0x1E69DCC90] preferredFontWithSize:17.0];
  animationsLabelView2 = [(TUIPredictionViewCell *)self animationsLabelView];
  [animationsLabelView2 bounds];
  v168 = v167;
  [v165 lineHeight];
  v170 = (v168 - v169) * 0.5;
  animationsLabelView3 = [(TUIPredictionViewCell *)self animationsLabelView];
  [animationsLabelView3 setTextContainerInset:{v170, 0.0, 0.0, 0.0}];

  [(TUIPredictionViewCell *)self applySeparatorViews];
  [(TUIPredictionViewCell *)self updateTextLabelVibrancyIfNeeded];
}

- (UIImage)image
{
  imageView = [(TUIPredictionViewCell *)self imageView];
  image = [imageView image];

  return image;
}

- (BOOL)_usePadStyle
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
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
  candidate = [(TUIPredictionViewCell *)self candidate];
  v4 = [(TUIPredictionViewCell *)self _displayLabelForCandidate:candidate];
  if ([v4 length])
  {
  }

  else
  {
    image = [(TUIPredictionViewCell *)self image];

    if (image)
    {
      return 1;
    }
  }

  customView = [(TUIPredictionViewCell *)self customView];
  v6 = customView != 0;

  return v6;
}

- (id)currentBackgroundView
{
  vibrantBackgroundView = [(TUIPredictionViewCell *)self vibrantBackgroundView];
  v4 = vibrantBackgroundView;
  if (vibrantBackgroundView)
  {
    backgroundView = vibrantBackgroundView;
  }

  else
  {
    backgroundView = [(TUIPredictionViewCell *)self backgroundView];
  }

  v6 = backgroundView;

  return v6;
}

- (id)_preferredBackgroundColor
{
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  preferredBackgroundColor = [(TUIPredictionViewCell *)self preferredBackgroundColor];

  if (preferredBackgroundColor)
  {
    preferredBackgroundColor2 = [(TUIPredictionViewCell *)self preferredBackgroundColor];

    clearColor = preferredBackgroundColor2;
  }

  return clearColor;
}

- (void)_updateCornerRadius
{
  useContinuousCornerInHighlight = [(TUIPredictionViewCell *)self useContinuousCornerInHighlight];
  [(TUIPredictionViewCell *)self highlightCornerRadius];
  v5 = v4;
  currentBackgroundView = [(TUIPredictionViewCell *)self currentBackgroundView];
  v7 = currentBackgroundView;
  if (useContinuousCornerInHighlight)
  {
    [currentBackgroundView _setContinuousCornerRadius:v5];
  }

  else
  {
    [currentBackgroundView _setCornerRadius:v5];
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

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  [(TUIPredictionViewCell *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if ([scrollCopy isScrollEnabled])
  {
    maskingScrollView = [(TUIPredictionViewCell *)self maskingScrollView];
    [maskingScrollView frame];
    v14 = v13;
    v16 = v15;
    maskingScrollView2 = [(TUIPredictionViewCell *)self maskingScrollView];
    [maskingScrollView2 contentInset];
    v9 = v14 - (v18 + v19);
    v11 = v16 - (v20 + v21);

    [scrollCopy contentOffset];
    v23 = v22;
    v7 = v24;
    maskingScrollView3 = [(TUIPredictionViewCell *)self maskingScrollView];
    [maskingScrollView3 contentInset];
    v5 = v23 + v26;
  }

  morphingLabel = [(TUIPredictionViewCell *)self morphingLabel];
  [morphingLabel setVisibleRect:{v5, v7, v9, v11}];
}

- (void)_resetViewForUnanimatedBackdrop:(id)backdrop
{
  backdropCopy = backdrop;
  [backdropCopy setAlpha:1.0];
  layer = [backdropCopy layer];
  [layer setCompositingFilter:0];

  layer2 = [backdropCopy layer];

  [layer2 setAllowsEdgeAntialiasing:0];
}

- (void)_updateViewForAnimatedBackdrop:(id)backdrop usingAlpha:(double)alpha darkConfiguration:(BOOL)configuration
{
  configurationCopy = configuration;
  backdropCopy = backdrop;
  [backdropCopy setAlpha:alpha];
  v8 = MEMORY[0x1E6979CE8];
  if (configurationCopy)
  {
    v8 = MEMORY[0x1E6979CF8];
  }

  v9 = [MEMORY[0x1E6979378] filterWithType:*v8];
  layer = [backdropCopy layer];
  [layer setCompositingFilter:v9];

  layer2 = [backdropCopy layer];

  [layer2 setAllowsEdgeAntialiasing:1];
}

- (void)_updateLabelsForColorAdaptiveUI
{
  renderConfig = [(TUIPredictionViewCell *)self renderConfig];
  animatedBackground = [renderConfig animatedBackground];

  if ((animatedBackground & 1) == 0)
  {
    renderConfig2 = [(TUIPredictionViewCell *)self renderConfig];
    colorAdaptiveBackground = [renderConfig2 colorAdaptiveBackground];

    if (colorAdaptiveBackground)
    {
      renderConfig3 = [(TUIPredictionViewCell *)self renderConfig];
      v8 = [(TUIPredictionViewCell *)self _renderConfigUsesDarkStyle:renderConfig3];

      if (v8)
      {
        v9 = 0.65;
      }

      else
      {
        v9 = 0.75;
      }

      layer = [(TUIPredictionViewCell *)self layer];
      [layer setAllowsGroupOpacity:0];

      layer2 = [(TUIPredictionViewCell *)self layer];
      [layer2 setAllowsGroupBlending:0];

      maskingScrollView = [(TUIPredictionViewCell *)self maskingScrollView];
      layer3 = [maskingScrollView layer];
      [layer3 setAllowsGroupOpacity:0];

      maskingScrollView2 = [(TUIPredictionViewCell *)self maskingScrollView];
      layer4 = [maskingScrollView2 layer];
      [layer4 setAllowsGroupBlending:0];

      candidate = [(TUIPredictionViewCell *)self candidate];
      LODWORD(layer4) = [(TUIPredictionViewCell *)self _isEmojiCandidate:candidate];

      labelView = [(TUIPredictionViewCell *)self labelView];
      if (layer4)
      {
        [(TUIPredictionViewCell *)self _resetViewForUnanimatedBackdrop:labelView];
      }

      else
      {
        [(TUIPredictionViewCell *)self _updateViewForAnimatedBackdrop:labelView usingAlpha:v8 darkConfiguration:v9];
      }

      imageView = [(TUIPredictionViewCell *)self imageView];
      [(TUIPredictionViewCell *)self _updateViewForAnimatedBackdrop:imageView usingAlpha:v8 darkConfiguration:v9];

      rightSeparatorView = [(TUIPredictionViewCell *)self rightSeparatorView];
      [(TUIPredictionViewCell *)self _updateViewForAnimatedBackdrop:rightSeparatorView usingAlpha:v8 darkConfiguration:v9];

      leftSeparatorView = [(TUIPredictionViewCell *)self leftSeparatorView];
      [TUIPredictionViewCell _updateViewForAnimatedBackdrop:"_updateViewForAnimatedBackdrop:usingAlpha:darkConfiguration:" usingAlpha:v9 darkConfiguration:?];
    }

    else
    {
      layer5 = [(TUIPredictionViewCell *)self layer];
      [layer5 setAllowsGroupOpacity:1];

      layer6 = [(TUIPredictionViewCell *)self layer];
      [layer6 setAllowsGroupBlending:1];

      maskingScrollView3 = [(TUIPredictionViewCell *)self maskingScrollView];
      layer7 = [maskingScrollView3 layer];
      [layer7 setAllowsGroupOpacity:1];

      maskingScrollView4 = [(TUIPredictionViewCell *)self maskingScrollView];
      layer8 = [maskingScrollView4 layer];
      [layer8 setAllowsGroupBlending:1];

      imageView2 = [(TUIPredictionViewCell *)self imageView];
      [(TUIPredictionViewCell *)self _resetViewForUnanimatedBackdrop:imageView2];

      morphingLabel = [(TUIPredictionViewCell *)self morphingLabel];
      [(TUIPredictionViewCell *)self _resetViewForUnanimatedBackdrop:morphingLabel];

      animationsLabelView = [(TUIPredictionViewCell *)self animationsLabelView];
      [(TUIPredictionViewCell *)self _resetViewForUnanimatedBackdrop:animationsLabelView];

      normalLabel = [(TUIPredictionViewCell *)self normalLabel];
      [(TUIPredictionViewCell *)self _resetViewForUnanimatedBackdrop:normalLabel];

      secureCandidateLabel = [(TUIPredictionViewCell *)self secureCandidateLabel];
      [(TUIPredictionViewCell *)self _resetViewForUnanimatedBackdrop:secureCandidateLabel];

      rightSeparatorView2 = [(TUIPredictionViewCell *)self rightSeparatorView];
      [(TUIPredictionViewCell *)self _resetViewForUnanimatedBackdrop:rightSeparatorView2];

      leftSeparatorView = [(TUIPredictionViewCell *)self leftSeparatorView];
      [(TUIPredictionViewCell *)self _resetViewForUnanimatedBackdrop:?];
    }
  }
}

- (void)_updateForAnimatedBackdropIfNeeded:(id)needed highlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  neededCopy = needed;
  if ([neededCopy animatedBackground])
  {
    v6 = [(TUIPredictionViewCell *)self _renderConfigUsesDarkStyle:neededCopy];
    layer = [(TUIPredictionViewCell *)self layer];
    [layer setAllowsGroupOpacity:0];

    layer2 = [(TUIPredictionViewCell *)self layer];
    [layer2 setAllowsGroupBlending:0];

    maskingScrollView = [(TUIPredictionViewCell *)self maskingScrollView];
    layer3 = [maskingScrollView layer];
    [layer3 setAllowsGroupOpacity:0];

    maskingScrollView2 = [(TUIPredictionViewCell *)self maskingScrollView];
    layer4 = [maskingScrollView2 layer];
    [layer4 setAllowsGroupBlending:0];

    labelView = [(TUIPredictionViewCell *)self labelView];
    [(TUIPredictionViewCell *)self _updateViewForAnimatedBackdrop:labelView usingAlpha:v6 darkConfiguration:0.6];

    morphingLabel = [(TUIPredictionViewCell *)self morphingLabel];
    layer5 = [morphingLabel layer];
    [layer5 setAllowsGroupOpacity:0];

    morphingLabel2 = [(TUIPredictionViewCell *)self morphingLabel];
    layer6 = [morphingLabel2 layer];
    [layer6 setAllowsGroupBlending:0];

    rightSeparatorView = [(TUIPredictionViewCell *)self rightSeparatorView];
    [(TUIPredictionViewCell *)self _updateViewForAnimatedBackdrop:rightSeparatorView usingAlpha:v6 darkConfiguration:1.0];

    leftSeparatorView = [(TUIPredictionViewCell *)self leftSeparatorView];
    [(TUIPredictionViewCell *)self _updateViewForAnimatedBackdrop:leftSeparatorView usingAlpha:v6 darkConfiguration:1.0];

    vibrantBackgroundView = [(TUIPredictionViewCell *)self vibrantBackgroundView];

    if (!vibrantBackgroundView)
    {
      v21 = objc_alloc(MEMORY[0x1E69DCB90]);
      keyBackdropStyle = [neededCopy keyBackdropStyle];
      v23 = [v21 initWithFrame:keyBackdropStyle style:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      [(TUIPredictionViewCell *)self setVibrantBackgroundView:v23];

      vibrantBackgroundView2 = [(TUIPredictionViewCell *)self vibrantBackgroundView];
      layer7 = [vibrantBackgroundView2 layer];
      [layer7 setCornerRadius:5.0];

      vibrantBackgroundView3 = [(TUIPredictionViewCell *)self vibrantBackgroundView];
      layer8 = [vibrantBackgroundView3 layer];
      [layer8 setMasksToBounds:1];

      vibrantBackgroundView4 = [(TUIPredictionViewCell *)self vibrantBackgroundView];
      [vibrantBackgroundView4 setHidden:1];

      vibrantBackgroundView5 = [(TUIPredictionViewCell *)self vibrantBackgroundView];
      maskingScrollView3 = [(TUIPredictionViewCell *)self maskingScrollView];
      [(TUIPredictionViewCell *)self insertSubview:vibrantBackgroundView5 belowSubview:maskingScrollView3];

      vibrantBackgroundView6 = [(TUIPredictionViewCell *)self vibrantBackgroundView];
      [vibrantBackgroundView6 transitionToStyle:{objc_msgSend(neededCopy, "keyBackdropStyle")}];
    }

    vibrantBackgroundView7 = [(TUIPredictionViewCell *)self vibrantBackgroundView];
    v33 = vibrantBackgroundView7;
    if (highlightedCopy)
    {
      [vibrantBackgroundView7 setHidden:0];

      v34 = [objc_opt_class() cellHighlightColorForRenderConfig:neededCopy];
      v35 = [v34 colorWithAlphaComponent:0.75];
      vibrantBackgroundView8 = [(TUIPredictionViewCell *)self vibrantBackgroundView];
      [vibrantBackgroundView8 setBackgroundColor:v35];

      v37 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CF8]];
      vibrantBackgroundView9 = [(TUIPredictionViewCell *)self vibrantBackgroundView];
      layer9 = [vibrantBackgroundView9 layer];
      [layer9 setCompositingFilter:v37];

      if (v6)
      {
        v40 = 1.0;
      }

      else
      {
        v40 = 0.15;
      }

      vibrantBackgroundView10 = [(TUIPredictionViewCell *)self vibrantBackgroundView];
      [vibrantBackgroundView10 setAlpha:v40];
    }

    else
    {
      [vibrantBackgroundView7 setHidden:1];
    }
  }

  else
  {
    vibrantBackgroundView11 = [(TUIPredictionViewCell *)self vibrantBackgroundView];

    if (vibrantBackgroundView11)
    {
      layer10 = [(TUIPredictionViewCell *)self layer];
      [layer10 setAllowsGroupOpacity:1];

      layer11 = [(TUIPredictionViewCell *)self layer];
      [layer11 setAllowsGroupBlending:1];

      maskingScrollView4 = [(TUIPredictionViewCell *)self maskingScrollView];
      layer12 = [maskingScrollView4 layer];
      [layer12 setAllowsGroupOpacity:1];

      maskingScrollView5 = [(TUIPredictionViewCell *)self maskingScrollView];
      layer13 = [maskingScrollView5 layer];
      [layer13 setAllowsGroupBlending:1];

      morphingLabel3 = [(TUIPredictionViewCell *)self morphingLabel];
      [(TUIPredictionViewCell *)self _resetViewForUnanimatedBackdrop:morphingLabel3];

      animationsLabelView = [(TUIPredictionViewCell *)self animationsLabelView];
      [(TUIPredictionViewCell *)self _resetViewForUnanimatedBackdrop:animationsLabelView];

      normalLabel = [(TUIPredictionViewCell *)self normalLabel];
      [(TUIPredictionViewCell *)self _resetViewForUnanimatedBackdrop:normalLabel];

      secureCandidateLabel = [(TUIPredictionViewCell *)self secureCandidateLabel];
      [(TUIPredictionViewCell *)self _resetViewForUnanimatedBackdrop:secureCandidateLabel];

      rightSeparatorView2 = [(TUIPredictionViewCell *)self rightSeparatorView];
      [(TUIPredictionViewCell *)self _resetViewForUnanimatedBackdrop:rightSeparatorView2];

      leftSeparatorView2 = [(TUIPredictionViewCell *)self leftSeparatorView];
      [(TUIPredictionViewCell *)self _resetViewForUnanimatedBackdrop:leftSeparatorView2];

      vibrantBackgroundView12 = [(TUIPredictionViewCell *)self vibrantBackgroundView];

      if (vibrantBackgroundView12)
      {
        vibrantBackgroundView13 = [(TUIPredictionViewCell *)self vibrantBackgroundView];
        [vibrantBackgroundView13 removeFromSuperview];

        [(TUIPredictionViewCell *)self setVibrantBackgroundView:0];
      }
    }
  }
}

- (void)_updateColorsForRenderConfig:(id)config highlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  configCopy = config;
  v6 = [(TUIPredictionViewCell *)self _renderConfigUsesDarkStyle:configCopy];
  v7 = [(TUIPredictionViewCell *)self _preferredTextColorForRenderConfig:configCopy highlighted:highlightedCopy];
  [(TUIPredictionViewCell *)self setTextColor:v7];
  [(TUIPredictionViewCell *)self setImageTintColor:v7];
  if ([objc_opt_class() _useSeparatorViews])
  {
    separatorColor = [(TUIPredictionViewCell *)self separatorColor];
    if (!separatorColor)
    {
      separatorColor = UIKeyboardGetLightCandidateSeparatorColor();
      if (v6)
      {
        v9 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.1];

        separatorColor = v9;
      }
    }

    if (highlightedCopy)
    {
      clearColor = [MEMORY[0x1E69DC888] clearColor];

      separatorColor = clearColor;
    }

    leftSeparatorView = [(TUIPredictionViewCell *)self leftSeparatorView];
    [leftSeparatorView setBackgroundColor:separatorColor];

    rightSeparatorView = [(TUIPredictionViewCell *)self rightSeparatorView];
    [rightSeparatorView setBackgroundColor:separatorColor];
  }

  _preferredBackgroundColor = [(TUIPredictionViewCell *)self _preferredBackgroundColor];
  if (highlightedCopy)
  {
    highlightColor = [(TUIPredictionViewCell *)self highlightColor];
    v15 = highlightColor;
    if (highlightColor)
    {
      v16 = highlightColor;
    }

    else
    {
      v16 = [objc_opt_class() cellHighlightColorForDarkStyle:v6];
    }

    v17 = v16;

    _preferredBackgroundColor = v17;
  }

  [(TUIPredictionViewCell *)self _updateForAnimatedBackdropIfNeeded:configCopy highlighted:highlightedCopy];
  [(TUIPredictionViewCell *)self _updateLabelsForColorAdaptiveUI];
  if (([configCopy animatedBackground] & 1) == 0)
  {
    backgroundView = [(TUIPredictionViewCell *)self backgroundView];
    [backgroundView setBackgroundColor:_preferredBackgroundColor];
  }
}

- (BOOL)_renderConfigUsesDarkStyle:(id)style
{
  if (style)
  {
    return [style lightKeyboard] ^ 1;
  }

  else
  {
    return 0;
  }
}

- (id)labelView
{
  candidate = [(TUIPredictionViewCell *)self candidate];
  v4 = [(TUIPredictionViewCell *)self labelViewForCandidate:candidate];

  return v4;
}

- (void)setRenderConfig:(id)config
{
  configCopy = config;
  if (self->_renderConfig != configCopy)
  {
    v6 = configCopy;
    objc_storeStrong(&self->_renderConfig, config);
    [(TUIPredictionViewCell *)self _updateColorsForRenderConfig:v6 highlighted:self->_highlighted];
    configCopy = v6;
  }
}

- (void)setCustomView:(id)view
{
  viewCopy = view;
  customView = [(TUIPredictionViewCell *)self customView];

  v6 = viewCopy;
  if (customView != viewCopy)
  {
    v7 = self->_customView;
    objc_storeStrong(&self->_customView, view);
    [(UIView *)v7 removeFromSuperview];
    if (viewCopy)
    {
      [(TUIPredictionViewCell *)self addSubview:viewCopy];
      [(TUIPredictionViewCell *)self setNeedsLayout];
    }

    v6 = viewCopy;
  }
}

- (void)setImage:(id)image
{
  imageCopy = image;
  imageView = [(TUIPredictionViewCell *)self imageView];
  if (imageCopy)
  {

    if (!imageView)
    {
      v5 = objc_alloc(MEMORY[0x1E69DCAE0]);
      v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      [(TUIPredictionViewCell *)self setImageView:v6];

      imageView2 = [(TUIPredictionViewCell *)self imageView];
      [(TUIPredictionViewCell *)self addSubview:imageView2];
    }
  }

  else
  {
    [imageView removeFromSuperview];

    [(TUIPredictionViewCell *)self setImageView:0];
  }

  imageView3 = [(TUIPredictionViewCell *)self imageView];
  [imageView3 setImage:imageCopy];

  [(TUIPredictionViewCell *)self setNeedsLayout];
}

- (void)setCandidate:(id)candidate animated:(BOOL)animated
{
  animatedCopy = animated;
  candidateCopy = candidate;
  candidate = [(TIKeyboardCandidate *)self->_candidate candidate];
  candidate2 = [candidateCopy candidate];
  v9 = [candidate isEqual:candidate2];

  objc_storeStrong(&self->_candidate, candidate);
  gradientContentLabel = [(TUIPredictionViewCell *)self gradientContentLabel];
  [gradientContentLabel prepareForReuse];

  morphingLabel = [(TUIPredictionViewCell *)self morphingLabel];
  [morphingLabel setHidden:1];

  normalLabel = [(TUIPredictionViewCell *)self normalLabel];
  [normalLabel setHidden:1];

  secureCandidateLabel = [(TUIPredictionViewCell *)self secureCandidateLabel];
  [secureCandidateLabel setHidden:1];

  animationsLabelView = [(TUIPredictionViewCell *)self animationsLabelView];
  [animationsLabelView setHidden:1];

  [(TUIPredictionViewCell *)self endAnimations];
  animationsLabelView2 = [(TUIPredictionViewCell *)self animationsLabelView];
  [animationsLabelView2 setText:0];

  [(TUIPredictionViewCell *)self setLabelTruncated:0];
  [(TUIPredictionViewCell *)self setAccessibilityIdentifier:0];
  if ([(TUIPredictionViewCell *)self _isSecureCandidate:candidateCopy])
  {
    [(TUIPredictionViewCell *)self _setSecureCandidate:candidateCopy animated:animatedCopy];
  }

  else if ([(TUIPredictionViewCell *)self _isTextEffectsCandidate:candidateCopy])
  {
    [(TUIPredictionViewCell *)self _setTextEffectsCandidate:candidateCopy animated:animatedCopy];
  }

  else
  {
    v16 = v9 ^ 1;
    if ([(TUIPredictionViewCell *)self _isSmartReplyCandidate:candidateCopy])
    {
      [(TUIPredictionViewCell *)self _setSmartReplyCandidate:candidateCopy animated:v16 & animatedCopy];
    }

    else if ([(TUIPredictionViewCell *)self _isSmartActionCandidate:candidateCopy])
    {
      [(TUIPredictionViewCell *)self _setSmartActionCandidate:candidateCopy animated:v16 & animatedCopy];
    }

    else if ([(TUIPredictionViewCell *)self _usesMorphingLabelForCandidate:candidateCopy])
    {
      [(TUIPredictionViewCell *)self _setMorphingLabelWithCandidate:candidateCopy animated:animatedCopy];
    }

    else
    {
      [(TUIPredictionViewCell *)self _setNormalLabelWithCandidate:candidateCopy animated:animatedCopy];
    }
  }

  [(TUIPredictionViewCell *)self _updateLabelsForColorAdaptiveUI];
  [(TUIPredictionViewCell *)self invalidateIntrinsicContentSize];
  [(TUIPredictionViewCell *)self setNeedsLayout];
}

- (void)_setSmartActionCandidate:(id)candidate animated:(BOOL)animated
{
  animatedCopy = animated;
  candidateCopy = candidate;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = candidateCopy;
  if (isKindOfClass)
  {
    v8 = candidateCopy;
    [(TUIPredictionViewCell *)self _setMorphingLabelWithCandidate:v8 animated:animatedCopy];
    gradientContentLabel = [(TUIPredictionViewCell *)self gradientContentLabel];
    v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringInDeviceLanguageForKey:@"CREATE_POLL"];
    [gradientContentLabel setPrimaryLabelText:v11];

    LODWORD(v10) = [v8 shouldSuggestTitle];
    gradientContentLabel2 = [(TUIPredictionViewCell *)self gradientContentLabel];
    v13 = gradientContentLabel2;
    if (v10)
    {
      candidate = [v8 candidate];
      [v13 setCaptionLabelText:candidate];
    }

    else
    {
      [gradientContentLabel2 setCaptionLabelText:0];
    }

    if (objc_opt_respondsToSelector())
    {
      v15 = [(TIKeyboardCandidate *)self->_candidate performSelector:sel_icon];
      gradientContentLabel3 = [(TUIPredictionViewCell *)self gradientContentLabel];
      [gradientContentLabel3 setPrimaryLabelImage:v15];
    }

    gradientContentLabel4 = [(TUIPredictionViewCell *)self gradientContentLabel];
    [gradientContentLabel4 setLightingEffectEnabled:1];

    [(TUIPredictionViewCell *)self setAccessibilityIdentifier:@"SmartAction"];
    v7 = candidateCopy;
  }

  MEMORY[0x1EEE66BB8](isKindOfClass, v7);
}

- (void)_setSmartReplyCandidate:(id)candidate animated:(BOOL)animated
{
  animatedCopy = animated;
  candidateCopy = candidate;
  [(TUIPredictionViewCell *)self _setMorphingLabelWithCandidate:candidateCopy animated:animatedCopy];
  gradientContentLabel = [(TUIPredictionViewCell *)self gradientContentLabel];
  v8 = [(TUIPredictionViewCell *)self _displayLabelForCandidate:candidateCopy];

  [gradientContentLabel setPrimaryLabelText:v8];
  gradientContentLabel2 = [(TUIPredictionViewCell *)self gradientContentLabel];
  [gradientContentLabel2 setCaptionLabelText:0];

  gradientContentLabel3 = [(TUIPredictionViewCell *)self gradientContentLabel];
  [gradientContentLabel3 setLightingEffectEnabled:1];

  [(TUIPredictionViewCell *)self setAccessibilityIdentifier:@"SmartReply"];
}

- (void)_applyTextEffectAnimationAttribute:(id)attribute attributedCandidateString:(id)string
{
  stringCopy = string;
  attributeCopy = attribute;
  candidate = [attributeCopy candidate];
  v8 = [candidate length];

  v9 = MEMORY[0x1E69DD7C0];
  textEffectName = [attributeCopy textEffectName];

  v11 = [v9 animationWithName:textEffectName];

  if (v11)
  {
    [stringCopy addAttribute:*MEMORY[0x1E69DB6D8] value:v11 range:{0, v8}];
    animationsLabelView = [(TUIPredictionViewCell *)self animationsLabelView];
    [animationsLabelView setAttributedText:stringCopy];

    animationsLabelView2 = [(TUIPredictionViewCell *)self animationsLabelView];
    v14 = [animationsLabelView2 _animatorForTextAnimation:v11 notify:&__block_literal_global_10493];
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

- (void)_applyTextEffectStyleAttribute:(id)attribute attributedCandidateString:(id)string fontDescriptor:(id)descriptor
{
  attributeCopy = attribute;
  stringCopy = string;
  descriptorCopy = descriptor;
  candidate = [attributeCopy candidate];
  v11 = [candidate length];

  textEffectName = [attributeCopy textEffectName];
  v13 = [textEffectName isEqualToString:@"bold"];

  if (v13)
  {
    v14 = descriptorCopy;
    v15 = 2;
LABEL_5:
    v18 = [v14 fontDescriptorWithSymbolicTraits:v15];
    v19 = [MEMORY[0x1E69DB878] fontWithDescriptor:v18 size:17.0];
    [stringCopy addAttribute:*MEMORY[0x1E69DB648] value:v19 range:{0, v11}];

    goto LABEL_6;
  }

  textEffectName2 = [attributeCopy textEffectName];
  v17 = [textEffectName2 isEqualToString:@"italic"];

  if (v17)
  {
    v14 = descriptorCopy;
    v15 = 1;
    goto LABEL_5;
  }

  textEffectName3 = [attributeCopy textEffectName];
  v22 = [textEffectName3 isEqualToString:@"underline"];

  if (v22)
  {
    v23 = MEMORY[0x1E69DB758];
  }

  else
  {
    textEffectName4 = [attributeCopy textEffectName];
    v25 = [textEffectName4 isEqualToString:@"strikeThrough"];

    if (!v25)
    {
      goto LABEL_6;
    }

    v23 = MEMORY[0x1E69DB6B8];
  }

  [stringCopy addAttribute:*v23 value:&unk_1F03D8D98 range:{0, v11}];
LABEL_6:
  animationsLabelView = [(TUIPredictionViewCell *)self animationsLabelView];
  [animationsLabelView setAttributedText:stringCopy];
}

- (void)_setTextEffectsCandidate:(id)candidate animated:(BOOL)animated
{
  v38[2] = *MEMORY[0x1E69E9840];
  candidateCopy = candidate;
  animationsLabelView = [(TUIPredictionViewCell *)self animationsLabelView];
  [animationsLabelView setHidden:0];

  textEffectName = [candidateCopy textEffectName];
  v8 = [(TUIPredictionViewCell *)self _localizedTitleForAnimationName:textEffectName];

  v9 = MEMORY[0x1E696AEC0];
  candidate = [candidateCopy candidate];
  v11 = [v9 stringWithFormat:@"%@\n%@", candidate, v8];

  v34 = v11;
  v12 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v11];
  v13 = [v12 length];
  candidate2 = [candidateCopy candidate];
  v33 = [candidate2 length];
  v35 = v8;
  v15 = [v8 length];

  v16 = [MEMORY[0x1E69DCC90] preferredFontWithSize:17.0];
  fontDescriptor = [v16 fontDescriptor];
  v17 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  [v17 setAlignment:1];
  [v12 addAttribute:*MEMORY[0x1E69DB688] value:v17 range:{0, v13}];
  v18 = *MEMORY[0x1E69DB648];
  [v12 addAttribute:*MEMORY[0x1E69DB648] value:v16 range:{0, v13}];
  v19 = *MEMORY[0x1E69DB650];
  textColor = [(TUIPredictionViewCell *)self textColor];
  [v12 addAttribute:v19 value:textColor range:{0, v13}];

  v21 = [MEMORY[0x1E69DB878] systemFontOfSize:11.0];
  v22 = MEMORY[0x1E695DF90];
  v37[1] = v19;
  v38[0] = v21;
  v37[0] = v18;
  systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
  v38[1] = systemGrayColor;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:2];
  v25 = [v22 dictionaryWithDictionary:v24];

  [v12 addAttributes:v25 range:{v33 + 1, v15}];
  v26 = MEMORY[0x1E699BB18];
  textEffectName2 = [candidateCopy textEffectName];
  v28 = [v26 textEffectTypeForAnimationName:textEffectName2];

  if ((v28 - 1) >= 8)
  {
    if ((v28 - 9) < 4)
    {
      [(TUIPredictionViewCell *)self _applyTextEffectStyleAttribute:candidateCopy attributedCandidateString:v12 fontDescriptor:fontDescriptor];
    }
  }

  else
  {
    [(TUIPredictionViewCell *)self _applyTextEffectAnimationAttribute:candidateCopy attributedCandidateString:v12];
  }

  v29 = MEMORY[0x1E696AEC0];
  candidate3 = [candidateCopy candidate];
  textEffectName3 = [candidateCopy textEffectName];
  v32 = [v29 stringWithFormat:@"%@-TextEffect(%@)", candidate3, textEffectName3];
  [(TUIPredictionViewCell *)self setAccessibilityIdentifier:v32];
}

- (id)_localizedTitleForAnimationName:(id)name
{
  nameCopy = name;
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [&unk_1F03D9230 objectForKeyedSubscript:nameCopy];

  v6 = [v4 localizedStringInDeviceLanguageForKey:v5];

  return v6;
}

- (void)_setSecureCandidate:(id)candidate animated:(BOOL)animated
{
  v5 = [MEMORY[0x1E6979320] objectForSlot:{objc_msgSend(candidate, "slotID")}];
  secureCandidateLabel = [(TUIPredictionViewCell *)self secureCandidateLabel];
  layer = [secureCandidateLabel layer];
  [layer setContents:v5];

  secureCandidateLabel2 = [(TUIPredictionViewCell *)self secureCandidateLabel];
  [secureCandidateLabel2 setHidden:0];
}

- (void)_setMorphingLabelWithCandidate:(id)candidate animated:(BOOL)animated
{
  animatedCopy = animated;
  candidateCopy = candidate;
  if (animatedCopy)
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
    selfCopy = self;
    v17 = candidateCopy;
    [v7 animateWithDuration:v8 delay:&v12 options:0 animations:0.0 completion:0.0];
  }

  else
  {
    v9 = [(TUIPredictionViewCell *)self _displayLabelForCandidate:candidateCopy];
    morphingLabel = [(TUIPredictionViewCell *)self morphingLabel];
    [morphingLabel setText:v9];
  }

  v11 = [(TUIPredictionViewCell *)self morphingLabel:v12];
  [v11 setHidden:0];

  if ([candidateCopy customInfoType] == 0x8000)
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

- (void)_setNormalLabelWithCandidate:(id)candidate animated:(BOOL)animated
{
  animated = [(TUIPredictionViewCell *)self attributedStringRepresentationOfCandidate:candidate, animated];
  normalLabel = [(TUIPredictionViewCell *)self normalLabel];
  [normalLabel setAttributedText:animated];

  normalLabel2 = [(TUIPredictionViewCell *)self normalLabel];
  [normalLabel2 setHidden:0];
}

- (void)setLabelFont:(id)font
{
  fontCopy = font;
  normalLabel = [(TUIPredictionViewCell *)self normalLabel];
  [normalLabel setFont:fontCopy];

  if (fontCopy)
  {
    v5 = fontCopy;
  }

  else
  {
    v5 = [MEMORY[0x1E69DCC90] preferredFontWithSize:17.0];
  }

  v6 = v5;
  morphingLabel = [(TUIPredictionViewCell *)self morphingLabel];
  [morphingLabel setFont:v6];

  animationsLabelView = [(TUIPredictionViewCell *)self animationsLabelView];
  [animationsLabelView setFont:v6];
}

- (UIFont)labelFont
{
  morphingLabel = [(TUIPredictionViewCell *)self morphingLabel];
  font = [morphingLabel font];

  return font;
}

- (void)setPredictionPosition:(unint64_t)position
{
  self->_predictionPosition = position;
  gradientContentLabel = [(TUIPredictionViewCell *)self gradientContentLabel];
  [gradientContentLabel setPredictionPosition:position];
}

- (void)setSeparatorMargin:(double)margin
{
  if (self->_separatorMargin != margin)
  {
    self->_separatorMargin = margin;
    renderConfig = [(TUIPredictionViewCell *)self renderConfig];
    [(TUIPredictionViewCell *)self _updateColorsForRenderConfig:renderConfig highlighted:[(TUIPredictionViewCell *)self highlighted]];
  }
}

- (void)setSeparatorColor:(id)color
{
  colorCopy = color;
  if (self->_separatorColor != colorCopy)
  {
    v7 = colorCopy;
    objc_storeStrong(&self->_separatorColor, color);
    renderConfig = [(TUIPredictionViewCell *)self renderConfig];
    [(TUIPredictionViewCell *)self _updateColorsForRenderConfig:renderConfig highlighted:[(TUIPredictionViewCell *)self highlighted]];

    colorCopy = v7;
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  if (self->_highlighted != highlighted)
  {
    highlightedCopy = highlighted;
    self->_highlighted = highlighted;
    renderConfig = [(TUIPredictionViewCell *)self renderConfig];
    [(TUIPredictionViewCell *)self _updateColorsForRenderConfig:renderConfig highlighted:highlightedCopy];
  }
}

- (void)setUseContinuousCornerInHighlight:(BOOL)highlight
{
  if (self->_useContinuousCornerInHighlight != highlight)
  {
    self->_useContinuousCornerInHighlight = highlight;
    [(TUIPredictionViewCell *)self _updateCornerRadius];
  }
}

- (void)setHighlightCornerRadius:(double)radius
{
  if (self->_highlightCornerRadius != radius)
  {
    self->_highlightCornerRadius = radius;
    [(TUIPredictionViewCell *)self _updateCornerRadius];
  }
}

- (void)setPreferredBackgroundColor:(id)color
{
  colorCopy = color;
  preferredBackgroundColor = self->_preferredBackgroundColor;
  if (preferredBackgroundColor != colorCopy)
  {
    v9 = colorCopy;
    if (([(UIColor *)preferredBackgroundColor isEqual:?]& 1) == 0)
    {
      objc_storeStrong(&self->_preferredBackgroundColor, color);
      _preferredBackgroundColor = v9;
      if (!v9)
      {
        _preferredBackgroundColor = [(TUIPredictionViewCell *)self _preferredBackgroundColor];
      }

      currentBackgroundView = [(TUIPredictionViewCell *)self currentBackgroundView];
      [currentBackgroundView setBackgroundColor:_preferredBackgroundColor];

      if (!v9)
      {
      }
    }
  }

  MEMORY[0x1EEE66BE0]();
}

- (void)setPreferredForegroundColor:(id)color
{
  colorCopy = color;
  preferredForegroundColor = self->_preferredForegroundColor;
  if (preferredForegroundColor != colorCopy)
  {
    v10 = colorCopy;
    preferredForegroundColor = [preferredForegroundColor isEqual:colorCopy];
    colorCopy = v10;
    if ((preferredForegroundColor & 1) == 0)
    {
      objc_storeStrong(&self->_preferredForegroundColor, color);
      renderConfig = [(TUIPredictionViewCell *)self renderConfig];
      v8 = [(TUIPredictionViewCell *)self _renderConfigUsesDarkStyle:renderConfig];

      if (v10)
      {
        preferredForegroundColor = [(TUIPredictionViewCell *)self setTextColor:v10];
      }

      else
      {
        v9 = [(TUIPredictionViewCell *)self _preferredTextColorForHighlighted:0 useDarkStyle:v8];
        [(TUIPredictionViewCell *)self setTextColor:v9];
      }

      colorCopy = v10;
    }
  }

  MEMORY[0x1EEE66BB8](preferredForegroundColor, colorCopy);
}

- (void)setImageTintColor:(id)color
{
  colorCopy = color;
  imageView = [(TUIPredictionViewCell *)self imageView];

  if (!imageView)
  {
    v6 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v7 = [v6 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [(TUIPredictionViewCell *)self setImageView:v7];

    imageView2 = [(TUIPredictionViewCell *)self imageView];
    [(TUIPredictionViewCell *)self addSubview:imageView2];
  }

  imageTintColor = self->_imageTintColor;
  self->_imageTintColor = colorCopy;
  v10 = colorCopy;

  imageView3 = [(TUIPredictionViewCell *)self imageView];
  [imageView3 setTintColor:v10];
}

- (void)setTextColor:(id)color
{
  objc_storeStrong(&self->_textColor, color);
  colorCopy = color;
  morphingLabel = [(TUIPredictionViewCell *)self morphingLabel];
  [morphingLabel setTextColor:colorCopy];

  normalLabel = [(TUIPredictionViewCell *)self normalLabel];
  [normalLabel setTextColor:colorCopy];

  animationsLabelView = [(TUIPredictionViewCell *)self animationsLabelView];
  [animationsLabelView setTextColor:colorCopy];

  imageView = [(TUIPredictionViewCell *)self imageView];
  [imageView setTintColor:colorCopy];

  gradientContentLabel = [(TUIPredictionViewCell *)self gradientContentLabel];
  [gradientContentLabel setTextColor:colorCopy];
}

- (CGSize)intrinsicContentSize
{
  v3 = *MEMORY[0x1E69DE788];
  candidate = [(TUIPredictionViewCell *)self candidate];
  customInfoType = [candidate customInfoType];

  if (customInfoType != 0x8000)
  {
    candidate2 = [(TUIPredictionViewCell *)self candidate];
    if ([candidate2 customInfoType] == 0x10000)
    {
      _useFloatingStyle = [(TUIPredictionViewCell *)self _useFloatingStyle];

      if (_useFloatingStyle)
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

    candidate3 = [(TUIPredictionViewCell *)self candidate];
    v11 = [(TUIPredictionViewCell *)self _displayLabelForCandidate:candidate3];
    if ([v11 length])
    {
    }

    else
    {
      image = [(TUIPredictionViewCell *)self image];

      if (image)
      {
        image2 = [(TUIPredictionViewCell *)self image];
        [image2 size];
        v6 = v16 + 40.0;
        goto LABEL_15;
      }
    }

    customView = [(TUIPredictionViewCell *)self customView];

    if (!customView)
    {
      *&v9 = 120.0;
      goto LABEL_17;
    }

    image2 = [(TUIPredictionViewCell *)self customView];
    [image2 intrinsicContentSize];
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
    visibleSeparatorEdges = [(TUIPredictionViewCell *)self visibleSeparatorEdges];
    leftSeparatorView = [(TUIPredictionViewCell *)self leftSeparatorView];
    leftSeparatorView3 = leftSeparatorView;
    if ((visibleSeparatorEdges & 2) != 0)
    {
      [leftSeparatorView setHidden:0];

      [(TUIPredictionViewCell *)self separatorMargin];
      v11 = v10;
      _usePadStyle = [(TUIPredictionViewCell *)self _usePadStyle];
      v13 = 0.0;
      if (!_usePadStyle)
      {
        [(TUIPredictionViewCell *)self highlightMargin];
        v13 = v14 * 0.5;
      }

      v15 = v11 + v13;
      [(TUIPredictionViewCell *)self separatorMargin];
      v17 = v6 + v16 * -2.0;
      leftSeparatorView2 = [(TUIPredictionViewCell *)self leftSeparatorView];
      [leftSeparatorView2 setFrame:{0.0, v15, 1.0, v17}];

      v19 = *&kTUISeparatorCornerRadius;
      leftSeparatorView3 = [(TUIPredictionViewCell *)self leftSeparatorView];
      [leftSeparatorView3 _setCornerRadius:v19];
    }

    else
    {
      [leftSeparatorView setHidden:1];
    }

    visibleSeparatorEdges2 = [(TUIPredictionViewCell *)self visibleSeparatorEdges];
    rightSeparatorView = [(TUIPredictionViewCell *)self rightSeparatorView];
    rightSeparatorView3 = rightSeparatorView;
    if ((visibleSeparatorEdges2 & 8) != 0)
    {
      [rightSeparatorView setHidden:0];

      v23 = v4 + -1.0;
      [(TUIPredictionViewCell *)self separatorMargin];
      v25 = v24;
      _usePadStyle2 = [(TUIPredictionViewCell *)self _usePadStyle];
      v27 = 0.0;
      if (!_usePadStyle2)
      {
        [(TUIPredictionViewCell *)self highlightMargin];
        v27 = v28 * 0.5;
      }

      v29 = v25 + v27;
      [(TUIPredictionViewCell *)self separatorMargin];
      v31 = v6 + v30 * -2.0;
      rightSeparatorView2 = [(TUIPredictionViewCell *)self rightSeparatorView];
      [rightSeparatorView2 setFrame:{v23, v29, 1.0, v31}];

      v33 = *&kTUISeparatorCornerRadius;
      rightSeparatorView3 = [(TUIPredictionViewCell *)self rightSeparatorView];
      [rightSeparatorView3 _setCornerRadius:v33];
    }

    else
    {
      [rightSeparatorView setHidden:1];
    }

    v34 = (([(TUIPredictionViewCell *)self roundedHighlightEdges]<< 62) >> 63) & 5;
    if (([(TUIPredictionViewCell *)self roundedHighlightEdges]& 8) != 0)
    {
      v34 |= 0xAuLL;
    }

    currentBackgroundView = [(TUIPredictionViewCell *)self currentBackgroundView];
    layer = [currentBackgroundView layer];
    [layer setMaskedCorners:v34];
  }
}

- (id)attributedStringRepresentationOfCandidate:(id)candidate
{
  candidateCopy = candidate;
  [(TUIPredictionViewCell *)self bounds];
  v6 = v5 + -6.0;
  v7 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:&stru_1F03BA8F8 attributes:0];
  currentTextSuggestion = [(TUIPredictionViewCell *)self currentTextSuggestion];
  headerText = [currentTextSuggestion headerText];

  v10 = [headerText length];
  if (v10)
  {
    headerTextAttributes = [(TUIPredictionViewCell *)self headerTextAttributes];
    if ([(TUIPredictionViewCell *)self candidateRequiresTruncationForBoundingWidth:v6])
    {
      v12 = [(TUIPredictionViewCell *)self centerTruncatedStringForString:headerText withAttributes:headerTextAttributes fittingWidth:v6];

      headerText = v12;
    }

    v13 = [headerText stringByAppendingString:@"\n"];

    v14 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v13 attributes:headerTextAttributes];
    [v7 appendAttributedString:v14];

    headerText = v13;
  }

  v15 = v10 != 0;
  v16 = [(TUIPredictionViewCell *)self _displayLabelForCandidate:candidateCopy];
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

- (id)centerTruncatedStringForString:(id)string withAttributes:(id)attributes fittingWidth:(double)width
{
  stringCopy = string;
  v9 = [stringCopy tui_centerTruncatedStringWithAttributes:attributes fittingWidth:width];

  isLabelTruncated = [(TUIPredictionViewCell *)self isLabelTruncated];
  v11 = v9 != stringCopy || isLabelTruncated;
  [(TUIPredictionViewCell *)self setLabelTruncated:v11];

  return v9;
}

- (BOOL)candidateRequiresTruncationForBoundingWidth:(double)width
{
  currentTextSuggestion = [(TUIPredictionViewCell *)self currentTextSuggestion];
  if (currentTextSuggestion)
  {
    v6 = currentTextSuggestion;
    currentTextSuggestion2 = [(TUIPredictionViewCell *)self currentTextSuggestion];
    headerText = [currentTextSuggestion2 headerText];
    v9 = [headerText length];

    if (v9)
    {
      currentTextSuggestion3 = [(TUIPredictionViewCell *)self currentTextSuggestion];

      if (currentTextSuggestion3)
      {
        currentTextSuggestion4 = [(TUIPredictionViewCell *)self currentTextSuggestion];
        headerText2 = [currentTextSuggestion4 headerText];
        headerTextAttributes = [(TUIPredictionViewCell *)self headerTextAttributes];
        [headerText2 sizeWithAttributes:headerTextAttributes];
        v15 = v14;
      }

      else
      {
        v15 = *MEMORY[0x1E695F060];
      }

      candidate = [(TUIPredictionViewCell *)self candidate];
      label = [candidate label];
      v18 = [label containsString:@"\n"];

      candidate2 = [(TUIPredictionViewCell *)self candidate];
      label2 = [candidate2 label];
      v21 = [(TUIPredictionViewCell *)self displayTextAttributesForMultiline:v18 header:1 shrink:[(TUIPredictionViewCell *)self candidateRequiresShrinkingForBoundingWidth:width]];
      [label2 sizeWithAttributes:v21];
      v23 = v22;

      LOBYTE(currentTextSuggestion) = fmax(v15, v23) > width;
    }

    else
    {
      LOBYTE(currentTextSuggestion) = 0;
    }
  }

  return currentTextSuggestion;
}

- (CGSize)labelTextSizeForCandidate:(id)candidate
{
  v20[1] = *MEMORY[0x1E69E9840];
  candidateCopy = candidate;
  if ([(TUIPredictionViewCell *)self _isSecureCandidate:candidateCopy])
  {
    v5 = *MEMORY[0x1E69DE788];
    v6 = *MEMORY[0x1E69DE788];
  }

  else
  {
    if ([(TUIPredictionViewCell *)self _usesMorphingLabelForCandidate:candidateCopy])
    {
      morphingLabel = [(TUIPredictionViewCell *)self morphingLabel];
      text = [morphingLabel text];
      v19 = *MEMORY[0x1E69DB648];
      morphingLabel2 = [(TUIPredictionViewCell *)self morphingLabel];
      font = [morphingLabel2 font];
      v20[0] = font;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      [text sizeWithAttributes:v11];
      v5 = v12;
      v6 = v13;
    }

    else
    {
      if ([(TUIPredictionViewCell *)self _isTextEffectsCandidate:candidateCopy])
      {
        [(TUIPredictionViewCell *)self animationsLabelView];
      }

      else
      {
        [(TUIPredictionViewCell *)self normalLabel];
      }
      morphingLabel = ;
      attributedText = [morphingLabel attributedText];
      [attributedText size];
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

  useAutofillStyle = [(TUIPredictionViewCell *)self useAutofillStyle];
  v11[0] = *MEMORY[0x1E69DB648];
  if (useAutofillStyle)
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
  textColor = [(TUIPredictionViewCell *)self textColor];
  v12[1] = textColor;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];

  return v9;
}

- (id)displayTextAttributesForMultiline:(BOOL)multiline header:(BOOL)header shrink:(BOOL)shrink
{
  v22[2] = *MEMORY[0x1E69E9840];
  if (![(TUIPredictionViewCell *)self useWritingToolsStyle:multiline]|| (v9 = [(TUIPredictionViewCell *)self _usePadStyle], v8 = 17.0, !v9))
  {
    if (multiline || (v10 = [(TUIPredictionViewCell *)self _usePadStyle], v8 = 16.0, v10))
    {
      v8 = 14.0;
    }
  }

  v11 = [MEMORY[0x1E69DB878] systemFontOfSize:v8];
  if (!multiline && !header)
  {
    defaultMetrics = [MEMORY[0x1E69DCA40] defaultMetrics];
    v13 = [defaultMetrics scaledFontForFont:v11];

    v11 = v13;
  }

  v14 = MEMORY[0x1E695DF90];
  v15 = *MEMORY[0x1E69DB648];
  v22[0] = v11;
  v16 = *MEMORY[0x1E69DB650];
  v21[0] = v15;
  v21[1] = v16;
  textColor = [(TUIPredictionViewCell *)self textColor];
  v22[1] = textColor;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
  v19 = [v14 dictionaryWithDictionary:v18];

  return v19;
}

- (BOOL)useWritingToolsStyle
{
  selfCopy = self;
  candidate = [(TUIPredictionViewCell *)self candidate];
  LOBYTE(selfCopy) = [(TUIPredictionViewCell *)selfCopy _isWritingToolsCandidate:candidate];

  return selfCopy;
}

- (BOOL)useAutofillStyle
{
  candidate = [(TUIPredictionViewCell *)self candidate];
  v4 = [candidate customInfoType] & 0x18;
  v5 = v4 != 0;

  currentTextSuggestion = [(TUIPredictionViewCell *)self currentTextSuggestion];

  if (currentTextSuggestion)
  {
    currentTextSuggestion2 = [(TUIPredictionViewCell *)self currentTextSuggestion];
    displayStylePlain = [currentTextSuggestion2 displayStylePlain];
    if (v4)
    {
      v5 = 1;
    }

    else
    {
      v5 = displayStylePlain;
    }
  }

  return v5;
}

- (id)currentTextSuggestion
{
  candidate = [(TUIPredictionViewCell *)self candidate];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    candidate2 = [(TUIPredictionViewCell *)self candidate];
    textSuggestion = [candidate2 textSuggestion];
  }

  else
  {
    textSuggestion = 0;
  }

  return textSuggestion;
}

- (id)labelViewForCandidate:(id)candidate
{
  candidateCopy = candidate;
  normalLabel = [(TUIPredictionViewCell *)self normalLabel];
  if ([(TUIPredictionViewCell *)self _isSecureCandidate:candidateCopy])
  {
    secureCandidateLabel = [(TUIPredictionViewCell *)self secureCandidateLabel];
  }

  else if ([(TUIPredictionViewCell *)self _isTextEffectsCandidate:candidateCopy])
  {
    secureCandidateLabel = [(TUIPredictionViewCell *)self animationsLabelView];
  }

  else
  {
    if (![(TUIPredictionViewCell *)self _usesMorphingLabelForCandidate:candidateCopy])
    {
      goto LABEL_8;
    }

    secureCandidateLabel = [(TUIPredictionViewCell *)self morphingLabel];
  }

  v7 = secureCandidateLabel;

  normalLabel = v7;
LABEL_8:

  return normalLabel;
}

- (id)_displayLabelForCandidate:(id)candidate
{
  candidateCopy = candidate;
  [(TUIPredictionViewCell *)self contentHuggingPriorityForAxis:0];
  if (v5 != 1000.0 && [candidateCopy customInfoType] == 32)
  {
    label = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    label2 = [label localizedStringInDeviceLanguageForKey:@"Passwords"];
LABEL_9:
    v13 = label2;
    goto LABEL_11;
  }

  if ([candidateCopy candidateProperty] == 1 && -[TUIPredictionViewCell shouldUseRTLForMathEquations](self, "shouldUseRTLForMathEquations"))
  {
    candidate = [candidateCopy candidate];
    v9 = [candidate componentsSeparatedByString:@"="];
    label = [v9 objectAtIndex:0];

    candidate2 = [candidateCopy candidate];
    v11 = [candidate2 componentsSeparatedByString:@"="];
    v12 = [v11 objectAtIndex:1];

    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", v12, @"=", label];

    goto LABEL_11;
  }

  label = [candidateCopy label];
  if ([label length])
  {
    label2 = [candidateCopy label];
    goto LABEL_9;
  }

  v13 = &stru_1F03BA8F8;
LABEL_11:

  return v13;
}

- (BOOL)shouldUseRTLForMathEquations
{
  mEMORY[0x1E69DCBF0] = [MEMORY[0x1E69DCBF0] sharedInputModeController];
  currentInputMode = [mEMORY[0x1E69DCBF0] currentInputMode];
  primaryLanguage = [currentInputMode primaryLanguage];
  v5 = [primaryLanguage isEqual:@"ar"];

  return v5;
}

- (BOOL)_isSmartReplyCandidate:(id)candidate
{
  candidateCopy = candidate;
  if (([candidateCopy candidateProperty] & 2) != 0)
  {
    candidate = [candidateCopy candidate];
    v4 = [candidate _containsEmoji] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)_isTextEffectsCandidate:(id)candidate
{
  candidateCopy = candidate;
  objc_opt_class();
  v4 = (objc_opt_isKindOfClass() & 1) != 0 && [candidateCopy candidateProperty] == 4;

  return v4;
}

- (BOOL)_isEmojiCandidate:(id)candidate
{
  label = [candidate label];
  _containsEmojiOnly = [label _containsEmojiOnly];

  return _containsEmojiOnly;
}

- (BOOL)_usesMorphingLabelForCandidate:(id)candidate
{
  candidateCopy = candidate;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) == 0 || [candidateCopy customInfoType] == 32 || objc_msgSend(candidateCopy, "customInfoType") == 0x8000 || objc_msgSend(candidateCopy, "candidateProperty") == 8;
  v6 = ![(TUIPredictionViewCell *)self _isTextEffectsCandidate:candidateCopy];

  return v6 & v5;
}

- (id)_preferredTextColorForHighlighted:(BOOL)highlighted useDarkStyle:(BOOL)style
{
  styleCopy = style;
  if (highlighted)
  {
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    if (!styleCopy)
    {
      goto LABEL_7;
    }

    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  }

  else
  {
    blackColor = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.9];
    if (!styleCopy)
    {
      goto LABEL_7;
    }

    whiteColor = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.9];
  }

  v9 = whiteColor;

  blackColor = v9;
LABEL_7:
  preferredForegroundColor = [(TUIPredictionViewCell *)self preferredForegroundColor];

  if (preferredForegroundColor)
  {
    preferredForegroundColor2 = [(TUIPredictionViewCell *)self preferredForegroundColor];
    [preferredForegroundColor2 alphaComponent];
    v13 = v12;

    preferredForegroundColor3 = [(TUIPredictionViewCell *)self preferredForegroundColor];
    v15 = preferredForegroundColor3;
    if (!highlighted)
    {
      v16 = [preferredForegroundColor3 colorWithAlphaComponent:v13 * 0.9];

      blackColor = v15;
      v15 = v16;
    }

    blackColor = v15;
  }

  return blackColor;
}

- (id)_preferredTextColorForRenderConfig:(id)config highlighted:(BOOL)highlighted
{
  configCopy = config;
  if ([(TUIPredictionViewCell *)self _renderConfigUsesDarkStyle:configCopy])
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] blackColor];
  }
  v7 = ;
  animatedBackground = [configCopy animatedBackground];

  if ((animatedBackground & 1) == 0)
  {
    preferredForegroundColor = [(TUIPredictionViewCell *)self preferredForegroundColor];

    if (preferredForegroundColor)
    {
      preferredForegroundColor2 = [(TUIPredictionViewCell *)self preferredForegroundColor];

      v7 = preferredForegroundColor2;
    }

    [v7 alphaComponent];
    if (!highlighted)
    {
      v12 = [v7 colorWithAlphaComponent:v11 * 0.9];

      v7 = v12;
    }
  }

  return v7;
}

- (TUIPredictionViewCell)initWithFrame:(CGRect)frame
{
  v89[4] = *MEMORY[0x1E69E9840];
  v88.receiver = self;
  v88.super_class = TUIPredictionViewCell;
  v3 = [(TUIPredictionViewCell *)&v88 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD250]);
    v5 = *MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 8);
    v7 = *(MEMORY[0x1E695F058] + 16);
    v8 = *(MEMORY[0x1E695F058] + 24);
    v9 = [v4 initWithFrame:{*MEMORY[0x1E695F058], v6, v7, v8}];
    [(TUIPredictionViewCell *)v3 setBackgroundView:v9];

    backgroundView = [(TUIPredictionViewCell *)v3 backgroundView];
    layer = [backgroundView layer];
    [layer setCornerRadius:5.0];

    backgroundView2 = [(TUIPredictionViewCell *)v3 backgroundView];
    layer2 = [backgroundView2 layer];
    [layer2 setMasksToBounds:1];

    backgroundView3 = [(TUIPredictionViewCell *)v3 backgroundView];
    [(TUIPredictionViewCell *)v3 addSubview:backgroundView3];

    if ([objc_opt_class() _useSeparatorViews])
    {
      v15 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v5, v6, v7, v8}];
      [(TUIPredictionViewCell *)v3 setLeftSeparatorView:v15];

      leftSeparatorView = [(TUIPredictionViewCell *)v3 leftSeparatorView];
      [(TUIPredictionViewCell *)v3 addSubview:leftSeparatorView];

      v17 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v5, v6, v7, v8}];
      [(TUIPredictionViewCell *)v3 setRightSeparatorView:v17];

      rightSeparatorView = [(TUIPredictionViewCell *)v3 rightSeparatorView];
      [(TUIPredictionViewCell *)v3 addSubview:rightSeparatorView];
    }

    v19 = [[TUICandidateGradientContentLabel alloc] initWithFrame:v5, v6, v7, v8];
    [(TUIPredictionViewCell *)v3 setGradientContentLabel:v19];

    gradientContentLabel = [(TUIPredictionViewCell *)v3 gradientContentLabel];
    [gradientContentLabel reconfigureForAlignment:1];

    gradientContentLabel2 = [(TUIPredictionViewCell *)v3 gradientContentLabel];
    [gradientContentLabel2 setHidden:1];

    gradientContentLabel3 = [(TUIPredictionViewCell *)v3 gradientContentLabel];
    [(TUIPredictionViewCell *)v3 addSubview:gradientContentLabel3];

    gradientContentLabel4 = [(TUIPredictionViewCell *)v3 gradientContentLabel];
    topAnchor = [gradientContentLabel4 topAnchor];
    topAnchor2 = [(TUIPredictionViewCell *)v3 topAnchor];
    v26 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [(TUIPredictionViewCell *)v3 setGradientContentTopConstraint:v26];

    gradientContentLabel5 = [(TUIPredictionViewCell *)v3 gradientContentLabel];
    bottomAnchor = [gradientContentLabel5 bottomAnchor];
    bottomAnchor2 = [(TUIPredictionViewCell *)v3 bottomAnchor];
    v30 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [(TUIPredictionViewCell *)v3 setGradientContentBottomConstraint:v30];

    v85 = MEMORY[0x1E696ACD8];
    gradientContentLabel6 = [(TUIPredictionViewCell *)v3 gradientContentLabel];
    leadingAnchor = [gradientContentLabel6 leadingAnchor];
    leadingAnchor2 = [(TUIPredictionViewCell *)v3 leadingAnchor];
    v32 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v89[0] = v32;
    gradientContentLabel7 = [(TUIPredictionViewCell *)v3 gradientContentLabel];
    trailingAnchor = [gradientContentLabel7 trailingAnchor];
    trailingAnchor2 = [(TUIPredictionViewCell *)v3 trailingAnchor];
    v36 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v89[1] = v36;
    gradientContentTopConstraint = [(TUIPredictionViewCell *)v3 gradientContentTopConstraint];
    v89[2] = gradientContentTopConstraint;
    gradientContentBottomConstraint = [(TUIPredictionViewCell *)v3 gradientContentBottomConstraint];
    v89[3] = gradientContentBottomConstraint;
    v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v89 count:4];
    [v85 activateConstraints:v39];

    v40 = [objc_alloc(MEMORY[0x1E69DCEF8]) initWithFrame:{v5, v6, v7, v8}];
    [(TUIPredictionViewCell *)v3 setMaskingScrollView:v40];

    maskingScrollView = [(TUIPredictionViewCell *)v3 maskingScrollView];
    [maskingScrollView setDelegate:v3];

    maskingScrollView2 = [(TUIPredictionViewCell *)v3 maskingScrollView];
    [maskingScrollView2 setShowsHorizontalScrollIndicator:0];

    maskingScrollView3 = [(TUIPredictionViewCell *)v3 maskingScrollView];
    [maskingScrollView3 setShowsVerticalScrollIndicator:0];

    maskingScrollView4 = [(TUIPredictionViewCell *)v3 maskingScrollView];
    [maskingScrollView4 setContentInset:{0.0, 3.0, 0.0, 3.0}];

    maskingScrollView5 = [(TUIPredictionViewCell *)v3 maskingScrollView];
    [(TUIPredictionViewCell *)v3 addSubview:maskingScrollView5];

    v46 = [objc_alloc(MEMORY[0x1E69DCC90]) initWithFrame:{v5, v6, v7, v8}];
    [(TUIPredictionViewCell *)v3 setMorphingLabel:v46];

    morphingLabel = [(TUIPredictionViewCell *)v3 morphingLabel];
    [morphingLabel setOpaque:0];

    morphingLabel2 = [(TUIPredictionViewCell *)v3 morphingLabel];
    [morphingLabel2 setTextAlignment:1];

    maskingScrollView6 = [(TUIPredictionViewCell *)v3 maskingScrollView];
    morphingLabel3 = [(TUIPredictionViewCell *)v3 morphingLabel];
    [maskingScrollView6 addSubview:morphingLabel3];

    v51 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v5, v6, v7, v8}];
    [(TUIPredictionViewCell *)v3 setNormalLabel:v51];

    normalLabel = [(TUIPredictionViewCell *)v3 normalLabel];
    [normalLabel setOpaque:0];

    normalLabel2 = [(TUIPredictionViewCell *)v3 normalLabel];
    [normalLabel2 setNumberOfLines:0];

    normalLabel3 = [(TUIPredictionViewCell *)v3 normalLabel];
    [normalLabel3 setTextAlignment:1];

    maskingScrollView7 = [(TUIPredictionViewCell *)v3 maskingScrollView];
    normalLabel4 = [(TUIPredictionViewCell *)v3 normalLabel];
    [maskingScrollView7 addSubview:normalLabel4];

    v57 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v5, v6, v7, v8}];
    [(TUIPredictionViewCell *)v3 setSecureCandidateLabel:v57];

    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    v60 = v59;
    secureCandidateLabel = [(TUIPredictionViewCell *)v3 secureCandidateLabel];
    layer3 = [secureCandidateLabel layer];
    [layer3 setContentsScale:v60];

    mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen2 scale];
    v65 = v64;
    secureCandidateLabel2 = [(TUIPredictionViewCell *)v3 secureCandidateLabel];
    layer4 = [secureCandidateLabel2 layer];
    [layer4 setRasterizationScale:v65];

    v68 = *MEMORY[0x1E6979DD0];
    secureCandidateLabel3 = [(TUIPredictionViewCell *)v3 secureCandidateLabel];
    layer5 = [secureCandidateLabel3 layer];
    [layer5 setContentsGravity:v68];

    maskingScrollView8 = [(TUIPredictionViewCell *)v3 maskingScrollView];
    secureCandidateLabel4 = [(TUIPredictionViewCell *)v3 secureCandidateLabel];
    [maskingScrollView8 addSubview:secureCandidateLabel4];

    v73 = [objc_alloc(MEMORY[0x1E69DD168]) initReadonlyAndUnselectableWithFrame:0 textContainer:1 textLayoutManagerEnabled:{v5, v6, v7, v8}];
    [(TUIPredictionViewCell *)v3 setAnimationsLabelView:v73];

    animationsLabelView = [(TUIPredictionViewCell *)v3 animationsLabelView];
    [animationsLabelView setUserInteractionEnabled:0];

    animationsLabelView2 = [(TUIPredictionViewCell *)v3 animationsLabelView];
    [animationsLabelView2 setAllowsTextAnimations:1];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    animationsLabelView3 = [(TUIPredictionViewCell *)v3 animationsLabelView];
    [animationsLabelView3 setBackgroundColor:clearColor];

    animationsLabelView4 = [(TUIPredictionViewCell *)v3 animationsLabelView];
    [animationsLabelView4 setTextAlignment:1];

    animationsLabelView5 = [(TUIPredictionViewCell *)v3 animationsLabelView];
    [animationsLabelView5 setScrollEnabled:0];

    animationsLabelView6 = [(TUIPredictionViewCell *)v3 animationsLabelView];
    textLayoutManager = [animationsLabelView6 textLayoutManager];
    [textLayoutManager setRequiresCTLineRef:1];

    maskingScrollView9 = [(TUIPredictionViewCell *)v3 maskingScrollView];
    animationsLabelView7 = [(TUIPredictionViewCell *)v3 animationsLabelView];
    [maskingScrollView9 addSubview:animationsLabelView7];

    [(TUIPredictionViewCell *)v3 _updateColorsForRenderConfig:0 highlighted:0];
  }

  return v3;
}

+ (id)cellHighlightColorForRenderConfig:(id)config
{
  configCopy = config;
  if ([configCopy animatedBackground])
  {
    if ([configCopy lightKeyboard])
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
    v4 = [objc_opt_class() cellHighlightColorForDarkStyle:{objc_msgSend(configCopy, "lightKeyboard") ^ 1}];
  }

  v5 = v4;

  return v5;
}

+ (id)cellHighlightColorForDarkStyle:(BOOL)style
{
  styleCopy = style;
  v4 = UIKeyboardGetLightCandidateHighlightColor();
  if (styleCopy)
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
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