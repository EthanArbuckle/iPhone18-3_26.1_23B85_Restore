@interface UIKBRenderFactoryHWR_Portrait
- (BOOL)shouldUseRoundCornerForKey:(id)key;
- (CGPoint)deleteGlyphOffset;
- (CGPoint)globeKeyTextOffset;
- (CGPoint)moreKeyTextOffset;
- (CGPoint)spaceKeyTextOffset;
- (UIEdgeInsets)handwritingAreaInsets;
- (UIEdgeInsets)symbolFrameInsets;
- (id)_traitsForKey:(id)key onKeyplane:(id)keyplane;
- (void)setupLayoutSegments;
@end

@implementation UIKBRenderFactoryHWR_Portrait

- (UIEdgeInsets)handwritingAreaInsets
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 5.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (CGPoint)deleteGlyphOffset
{
  v2 = 0.5;
  v3 = 2.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)spaceKeyTextOffset
{
  v2 = 0.0;
  v3 = 1.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)moreKeyTextOffset
{
  v2 = 0.5;
  v3 = 1.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)globeKeyTextOffset
{
  v2 = 0.0;
  v3 = -0.5;
  result.y = v3;
  result.x = v2;
  return result;
}

- (UIEdgeInsets)symbolFrameInsets
{
  v2 = 1.0;
  v3 = 2.0;
  v4 = 3.0;
  v5 = 2.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (BOOL)shouldUseRoundCornerForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy displayType] == 3)
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UIKBRenderFactoryHWR_Portrait;
    v5 = [(UIKBRenderFactory10Key_Round *)&v7 shouldUseRoundCornerForKey:keyCopy];
  }

  return v5;
}

- (id)_traitsForKey:(id)key onKeyplane:(id)keyplane
{
  v107[3] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v102.receiver = self;
  v102.super_class = UIKBRenderFactoryHWR_Portrait;
  v7 = [(UIKBRenderFactory10Key_Round *)&v102 _traitsForKey:keyCopy onKeyplane:keyplane];
  displayType = [keyCopy displayType];
  if (displayType > 17)
  {
    if (displayType == 18)
    {
      lightTextFontName = [(UIKBRenderFactory10Key *)self lightTextFontName];
      symbolStyle = [v7 symbolStyle];
      [symbolStyle setFontName:lightTextFontName];

      lightTextFontFallbackName = [(UIKBRenderFactory10Key *)self lightTextFontFallbackName];
      symbolStyle2 = [v7 symbolStyle];
      [symbolStyle2 setKeycapsFallback:lightTextFontFallbackName];

      symbolStyle3 = [v7 symbolStyle];
      [symbolStyle3 setFontSize:16.0];

      [(UIKBRenderFactoryHWR_Portrait *)self moreKeyTextOffset];
      v47 = v46;
      v49 = v48;
      symbolStyle4 = [v7 symbolStyle];
      [symbolStyle4 setTextOffset:{v47, v49}];

      symbolStyle5 = [v7 symbolStyle];
      [symbolStyle5 setKerning:0.0];
    }

    else
    {
      if (displayType != 25 && displayType != 21)
      {
        goto LABEL_36;
      }

      [(UIKBRenderFactoryHWR_Portrait *)self spaceKeyFontSize];
      v16 = v15;
      symbolStyle6 = [v7 symbolStyle];
      [symbolStyle6 setFontSize:v16];

      [(UIKBRenderFactoryHWR_Portrait *)self spaceKeyTextOffset];
      v19 = v18;
      v21 = v20;
      symbolStyle7 = [v7 symbolStyle];
      [symbolStyle7 setTextOffset:{v19, v21}];

      if ([(UIKBRenderFactory10Key_Round *)self useRoundCorner])
      {
        symbolStyle8 = [v7 symbolStyle];
        [symbolStyle8 setKerning:0.0];
      }

      displayString = [keyCopy displayString];
      v25 = [displayString containsString:@"Emoji"];

      if (!v25)
      {
        goto LABEL_36;
      }

      symbolStyle9 = [v7 symbolStyle];
      [symbolStyle9 setUsesSymbolImage:1];

      lightKeycapsFontName = [(UIKBRenderFactory10Key *)self lightKeycapsFontName];
      symbolStyle10 = [v7 symbolStyle];
      [symbolStyle10 setFontName:lightKeycapsFontName];

      lightKeycapsFontFallbackName = [(UIKBRenderFactory10Key *)self lightKeycapsFontFallbackName];
      symbolStyle11 = [v7 symbolStyle];
      [symbolStyle11 setKeycapsFallback:lightKeycapsFontFallbackName];

      [(UIKBRenderFactoryHWR_Portrait *)self symbolImageControlKeyFontSize];
      v32 = v31;
      symbolStyle12 = [v7 symbolStyle];
      [symbolStyle12 setFontSize:v32];

      v34 = *off_1E70ECD18;
      symbolStyle13 = [v7 symbolStyle];
      [symbolStyle13 setFontWeight:v34];

      [(UIKBRenderFactory10Key *)self symbolImageControlKeyOffset];
      v37 = v36;
      v39 = v38;
      symbolStyle5 = [v7 symbolStyle];
      [symbolStyle5 setTextOffset:{v37, v39}];
    }

LABEL_16:

    goto LABEL_36;
  }

  if (displayType == 3)
  {
    if (([keyCopy state] & 4) != 0)
    {
      renderConfig = [(UIKBRenderFactory *)self renderConfig];
      lightKeyboard = [renderConfig lightKeyboard];
      v71 = UIKBColorHWRCellLightBackground;
      if (!lightKeyboard)
      {
        v71 = UIKBColorHWRCellDarkBackground;
      }

      v72 = *v71;

      renderConfig2 = [(UIKBRenderFactory *)self renderConfig];
      lightKeyboard2 = [renderConfig2 lightKeyboard];
      v75 = UIKBColorHWRCellLightBackgroundClear;
      if (!lightKeyboard2)
      {
        v75 = UIKBColorHWRCellDarkBackgroundClear;
      }

      v76 = *v75;

      v107[0] = v72;
      v107[1] = v72;
      v107[2] = v76;
      v77 = [MEMORY[0x1E695DEC8] arrayWithObjects:v107 count:3];
      v78 = [UIKBGradient gradientWith3Colors:v77 middleLocation:0.5];

      [v7 setBackgroundGradient:v78];
    }

    else
    {
      v40 = [UIKBGradient gradientWithFlatColor:@"UIKBColorClear"];
      [v7 setBackgroundGradient:v40];
    }

    [v7 removeAllRenderEffects];
    renderConfig3 = [(UIKBRenderFactory *)self renderConfig];
    whiteText = [renderConfig3 whiteText];
    v81 = UIKBColorWhite_Alpha10;
    if (!whiteText)
    {
      v81 = UIKBColorBlack_Alpha10;
    }

    v61 = *v81;

    renderConfig4 = [(UIKBRenderFactory *)self renderConfig];
    whiteText2 = [renderConfig4 whiteText];
    v84 = @"UIKBColorWhite_Alpha0";
    if (!whiteText2)
    {
      v84 = @"UIKBColorClear";
    }

    v85 = v84;

    v106[0] = v61;
    v106[1] = v61;
    v106[2] = v85;
    v86 = [MEMORY[0x1E695DEC8] arrayWithObjects:v106 count:3];
    v87 = [UIKBGradient gradientWith3Colors:v86 middleLocation:0.5];

    v88 = [UIKBEdgeEffect effectWithColor:0 edges:2 inset:-0.5 weight:0.5];

    [v88 setGradient:v87];
    [v7 addRenderEffect:v88];
    symbolStyle14 = [v7 symbolStyle];
    [symbolStyle14 setTextOffset:{0.5, 2.0}];

    goto LABEL_33;
  }

  if (displayType != 12)
  {
    if (displayType != 13)
    {
      goto LABEL_36;
    }

    symbolStyle15 = [v7 symbolStyle];
    [symbolStyle15 setUsesSymbolImage:1];

    [(UIKBRenderFactoryHWR_Portrait *)self symbolImageControlKeyFontSize];
    v11 = v10;
    symbolStyle16 = [v7 symbolStyle];
    [symbolStyle16 setFontSizeForSymbolImage:v11];

    v13 = *off_1E70ECD28;
    symbolStyle5 = [v7 symbolStyle];
    [symbolStyle5 setFontWeightForSymbolImage:v13];
    goto LABEL_16;
  }

  geometry = [v7 geometry];
  [(UIKBRenderFactoryHWR_Portrait *)self handwritingAreaInsets];
  [geometry applyInsets:?];

  renderConfig5 = [(UIKBRenderFactory *)self renderConfig];
  lightKeyboard3 = [renderConfig5 lightKeyboard];

  if (lightKeyboard3)
  {
    [keyCopy originalFrame];
    v55 = v54;
    [keyCopy frame];
    v57 = v56;
    renderConfig6 = [(UIKBRenderFactory *)self renderConfig];
    colorAdaptiveBackground = [renderConfig6 colorAdaptiveBackground];
    v60 = UIKBColorWhite_Alpha0;
    if (!colorAdaptiveBackground)
    {
      v60 = UIKBColorWhite_Alpha87_60;
    }

    v61 = *v60;

    if (v55 <= 0.0 || v57 <= v55)
    {
      v103[0] = @"UIKBColorWhite_Alpha87";
      v103[1] = @"UIKBColorWhite_Alpha87";
      v103[2] = v61;
      v62 = [MEMORY[0x1E695DEC8] arrayWithObjects:v103 count:3];
      [(UIKBRenderFactoryHWR_Portrait *)self handwritingGradientStartLocation];
      v65 = [UIKBGradient gradientWith3Colors:v62 middleLocation:?];
      [v7 setBackgroundGradient:v65];
    }

    else
    {
      v105[0] = @"UIKBColorWhite_Alpha87";
      v105[1] = @"UIKBColorWhite_Alpha87";
      v105[2] = v61;
      v105[3] = v61;
      v62 = [MEMORY[0x1E695DEC8] arrayWithObjects:v105 count:4];
      v63 = MEMORY[0x1E696AD98];
      [(UIKBRenderFactoryHWR_Portrait *)self handwritingGradientStartLocation];
      v65 = [v63 numberWithDouble:v55 * v64 / v57];
      v104[0] = v65;
      v66 = [MEMORY[0x1E696AD98] numberWithDouble:v55 / v57];
      v104[1] = v66;
      v67 = [MEMORY[0x1E695DEC8] arrayWithObjects:v104 count:2];
      v68 = [UIKBGradient gradientWithColors:v62 middleLocations:v67];
      [v7 setBackgroundGradient:v68];
    }

    geometry2 = [v7 geometry];
    [geometry2 paddedFrame];
    v93 = v92;
    v95 = v94 + 0.0;
    v97 = v96 + 0.5;
    v99 = v98 + -0.5;
    geometry3 = [v7 geometry];
    [geometry3 setPaddedFrame:{v95, v97, v93, v99}];

    renderConfig7 = [(UIKBRenderFactory *)self renderConfig];
    LOBYTE(geometry2) = [renderConfig7 colorAdaptiveBackground];

    if (geometry2)
    {
      goto LABEL_34;
    }

    v87 = [UIKBEdgeEffect effectWithColor:@"UIKBColorBlack_Alpha20" edges:1 inset:-0.5 weight:0.5];
    [v7 addRenderEffect:v87];
LABEL_33:

LABEL_34:
    goto LABEL_36;
  }

  [v7 setBackgroundGradient:0];
LABEL_36:

  return v7;
}

- (void)setupLayoutSegments
{
  controlKeyTraits = [(UIKBRenderFactory10Key_Round *)self controlKeyTraits];
  v6 = [UIKBRenderFactoryLayoutSegment segmentWithTraits:controlKeyTraits];

  [v6 setKeyStates:3];
  [v6 addLayoutRect:0 asTriangle:{0.0, 0.75, 0.26, 0.25}];
  [v6 addLayoutRect:0 asTriangle:{0.66, 0.75, 0.33, 0.25}];
  [(UIKBRenderFactory *)self addLayoutSegment:v6];
  activeControlKeyTraits = [(UIKBRenderFactory10Key_Round *)self activeControlKeyTraits];
  v5 = [UIKBRenderFactoryLayoutSegment segmentWithTraits:activeControlKeyTraits];

  [v5 setKeyStates:4];
  [v5 addLayoutRect:0 asTriangle:{0.0, 0.75, 0.26, 0.25}];
  [v5 addLayoutRect:0 asTriangle:{0.66, 0.75, 0.33, 0.25}];
  [(UIKBRenderFactory *)self addLayoutSegment:v5];
}

@end