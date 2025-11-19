@interface UIKBRenderFactoryHWR_Portrait
- (BOOL)shouldUseRoundCornerForKey:(id)a3;
- (CGPoint)deleteGlyphOffset;
- (CGPoint)globeKeyTextOffset;
- (CGPoint)moreKeyTextOffset;
- (CGPoint)spaceKeyTextOffset;
- (UIEdgeInsets)handwritingAreaInsets;
- (UIEdgeInsets)symbolFrameInsets;
- (id)_traitsForKey:(id)a3 onKeyplane:(id)a4;
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

- (BOOL)shouldUseRoundCornerForKey:(id)a3
{
  v4 = a3;
  if ([v4 displayType] == 3)
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UIKBRenderFactoryHWR_Portrait;
    v5 = [(UIKBRenderFactory10Key_Round *)&v7 shouldUseRoundCornerForKey:v4];
  }

  return v5;
}

- (id)_traitsForKey:(id)a3 onKeyplane:(id)a4
{
  v107[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v102.receiver = self;
  v102.super_class = UIKBRenderFactoryHWR_Portrait;
  v7 = [(UIKBRenderFactory10Key_Round *)&v102 _traitsForKey:v6 onKeyplane:a4];
  v8 = [v6 displayType];
  if (v8 > 17)
  {
    if (v8 == 18)
    {
      v41 = [(UIKBRenderFactory10Key *)self lightTextFontName];
      v42 = [v7 symbolStyle];
      [v42 setFontName:v41];

      v43 = [(UIKBRenderFactory10Key *)self lightTextFontFallbackName];
      v44 = [v7 symbolStyle];
      [v44 setKeycapsFallback:v43];

      v45 = [v7 symbolStyle];
      [v45 setFontSize:16.0];

      [(UIKBRenderFactoryHWR_Portrait *)self moreKeyTextOffset];
      v47 = v46;
      v49 = v48;
      v50 = [v7 symbolStyle];
      [v50 setTextOffset:{v47, v49}];

      v14 = [v7 symbolStyle];
      [v14 setKerning:0.0];
    }

    else
    {
      if (v8 != 25 && v8 != 21)
      {
        goto LABEL_36;
      }

      [(UIKBRenderFactoryHWR_Portrait *)self spaceKeyFontSize];
      v16 = v15;
      v17 = [v7 symbolStyle];
      [v17 setFontSize:v16];

      [(UIKBRenderFactoryHWR_Portrait *)self spaceKeyTextOffset];
      v19 = v18;
      v21 = v20;
      v22 = [v7 symbolStyle];
      [v22 setTextOffset:{v19, v21}];

      if ([(UIKBRenderFactory10Key_Round *)self useRoundCorner])
      {
        v23 = [v7 symbolStyle];
        [v23 setKerning:0.0];
      }

      v24 = [v6 displayString];
      v25 = [v24 containsString:@"Emoji"];

      if (!v25)
      {
        goto LABEL_36;
      }

      v26 = [v7 symbolStyle];
      [v26 setUsesSymbolImage:1];

      v27 = [(UIKBRenderFactory10Key *)self lightKeycapsFontName];
      v28 = [v7 symbolStyle];
      [v28 setFontName:v27];

      v29 = [(UIKBRenderFactory10Key *)self lightKeycapsFontFallbackName];
      v30 = [v7 symbolStyle];
      [v30 setKeycapsFallback:v29];

      [(UIKBRenderFactoryHWR_Portrait *)self symbolImageControlKeyFontSize];
      v32 = v31;
      v33 = [v7 symbolStyle];
      [v33 setFontSize:v32];

      v34 = *off_1E70ECD18;
      v35 = [v7 symbolStyle];
      [v35 setFontWeight:v34];

      [(UIKBRenderFactory10Key *)self symbolImageControlKeyOffset];
      v37 = v36;
      v39 = v38;
      v14 = [v7 symbolStyle];
      [v14 setTextOffset:{v37, v39}];
    }

LABEL_16:

    goto LABEL_36;
  }

  if (v8 == 3)
  {
    if (([v6 state] & 4) != 0)
    {
      v69 = [(UIKBRenderFactory *)self renderConfig];
      v70 = [v69 lightKeyboard];
      v71 = UIKBColorHWRCellLightBackground;
      if (!v70)
      {
        v71 = UIKBColorHWRCellDarkBackground;
      }

      v72 = *v71;

      v73 = [(UIKBRenderFactory *)self renderConfig];
      v74 = [v73 lightKeyboard];
      v75 = UIKBColorHWRCellLightBackgroundClear;
      if (!v74)
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
    v79 = [(UIKBRenderFactory *)self renderConfig];
    v80 = [v79 whiteText];
    v81 = UIKBColorWhite_Alpha10;
    if (!v80)
    {
      v81 = UIKBColorBlack_Alpha10;
    }

    v61 = *v81;

    v82 = [(UIKBRenderFactory *)self renderConfig];
    v83 = [v82 whiteText];
    v84 = @"UIKBColorWhite_Alpha0";
    if (!v83)
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
    v89 = [v7 symbolStyle];
    [v89 setTextOffset:{0.5, 2.0}];

    goto LABEL_33;
  }

  if (v8 != 12)
  {
    if (v8 != 13)
    {
      goto LABEL_36;
    }

    v9 = [v7 symbolStyle];
    [v9 setUsesSymbolImage:1];

    [(UIKBRenderFactoryHWR_Portrait *)self symbolImageControlKeyFontSize];
    v11 = v10;
    v12 = [v7 symbolStyle];
    [v12 setFontSizeForSymbolImage:v11];

    v13 = *off_1E70ECD28;
    v14 = [v7 symbolStyle];
    [v14 setFontWeightForSymbolImage:v13];
    goto LABEL_16;
  }

  v51 = [v7 geometry];
  [(UIKBRenderFactoryHWR_Portrait *)self handwritingAreaInsets];
  [v51 applyInsets:?];

  v52 = [(UIKBRenderFactory *)self renderConfig];
  v53 = [v52 lightKeyboard];

  if (v53)
  {
    [v6 originalFrame];
    v55 = v54;
    [v6 frame];
    v57 = v56;
    v58 = [(UIKBRenderFactory *)self renderConfig];
    v59 = [v58 colorAdaptiveBackground];
    v60 = UIKBColorWhite_Alpha0;
    if (!v59)
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

    v91 = [v7 geometry];
    [v91 paddedFrame];
    v93 = v92;
    v95 = v94 + 0.0;
    v97 = v96 + 0.5;
    v99 = v98 + -0.5;
    v100 = [v7 geometry];
    [v100 setPaddedFrame:{v95, v97, v93, v99}];

    v101 = [(UIKBRenderFactory *)self renderConfig];
    LOBYTE(v91) = [v101 colorAdaptiveBackground];

    if (v91)
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
  v3 = [(UIKBRenderFactory10Key_Round *)self controlKeyTraits];
  v6 = [UIKBRenderFactoryLayoutSegment segmentWithTraits:v3];

  [v6 setKeyStates:3];
  [v6 addLayoutRect:0 asTriangle:{0.0, 0.75, 0.26, 0.25}];
  [v6 addLayoutRect:0 asTriangle:{0.66, 0.75, 0.33, 0.25}];
  [(UIKBRenderFactory *)self addLayoutSegment:v6];
  v4 = [(UIKBRenderFactory10Key_Round *)self activeControlKeyTraits];
  v5 = [UIKBRenderFactoryLayoutSegment segmentWithTraits:v4];

  [v5 setKeyStates:4];
  [v5 addLayoutRect:0 asTriangle:{0.0, 0.75, 0.26, 0.25}];
  [v5 addLayoutRect:0 asTriangle:{0.66, 0.75, 0.33, 0.25}];
  [(UIKBRenderFactory *)self addLayoutSegment:v5];
}

@end