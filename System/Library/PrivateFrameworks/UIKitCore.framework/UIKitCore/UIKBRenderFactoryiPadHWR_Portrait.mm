@interface UIKBRenderFactoryiPadHWR_Portrait
- (BOOL)_displaysAsControlKeyStyle:(id)a3;
- (BOOL)shouldUseRoundCornerForKey:(id)a3;
- (CGPoint)_controlKeyOffset;
- (CGPoint)dismissKeyOffset;
- (CGPoint)spaceReturnKeyTextOffset;
- (UIEdgeInsets)symbolFrameInsets;
- (double)keyCornerRadius;
- (id)_traitsForKey:(id)a3 onKeyplane:(id)a4;
- (id)shortClassNameForCaching;
- (void)_customizeTraits:(id)a3 forPopupForKey:(id)a4 withRenderingContext:(id)a5 keycapsFontName:(id)a6 fallbackFontName:(id)a7;
- (void)setupLayoutSegments;
@end

@implementation UIKBRenderFactoryiPadHWR_Portrait

- (id)shortClassNameForCaching
{
  v5.receiver = self;
  v5.super_class = UIKBRenderFactoryiPadHWR_Portrait;
  v2 = [(UIKBRenderFactory *)&v5 shortClassNameForCaching];
  v3 = [v2 stringByReplacingOccurrencesOfString:@"SansHomeButton" withString:@"SHB"];

  return v3;
}

- (double)keyCornerRadius
{
  v2 = [(UIKBRenderFactory *)self renderConfig];
  if ([v2 colorAdaptiveBackground])
  {
    v3 = 10.0;
  }

  else
  {
    v3 = 5.0;
  }

  return v3;
}

- (CGPoint)dismissKeyOffset
{
  v2 = 0.0;
  v3 = 6.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)spaceReturnKeyTextOffset
{
  [(UIKBRenderFactory *)self scale];
  v2 = 1.5;
  if (v3 != 2.0)
  {
    v2 = 1.0;
  }

  v4 = 0.0;
  result.y = v2;
  result.x = v4;
  return result;
}

- (UIEdgeInsets)symbolFrameInsets
{
  v2 = 7.0;
  v3 = 2.0;
  v4 = 7.0;
  v5 = 2.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (CGPoint)_controlKeyOffset
{
  [(UIKBRenderFactory *)self RivenFactor:9.0];
  v4 = v3;
  [(UIKBRenderFactory *)self RivenFactor:8.0];
  v6 = v5;
  v7 = v4;
  result.y = v6;
  result.x = v7;
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
    v7.super_class = UIKBRenderFactoryiPadHWR_Portrait;
    v5 = [(UIKBRenderFactory10Key_Round *)&v7 shouldUseRoundCornerForKey:v4];
  }

  return v5;
}

- (BOOL)_displaysAsControlKeyStyle:(id)a3
{
  v3 = a3;
  v4 = [v3 displayType];
  v5 = v4;
  v6 = v4 < 0x16;
  v7 = [v3 interactionType];

  if (v7 == 40 || v7 == 9)
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    return v6 & (0x242030u >> v5);
  }

  return v8;
}

- (void)_customizeTraits:(id)a3 forPopupForKey:(id)a4 withRenderingContext:(id)a5 keycapsFontName:(id)a6 fallbackFontName:(id)a7
{
  v50 = a3;
  v12 = a4;
  v13 = a7;
  v14 = a6;
  v15 = a5;
  [v50 removeAllRenderEffects];
  v16 = [UIKBTextStyle styleWithFontName:v14 withFallbackFontName:v13 withFontSize:22.0];

  [v50 setSymbolStyle:v16];
  v17 = [v15 renderConfig];

  v18 = [v17 lightKeyboard];
  if (v18)
  {
    v19 = [(UIKBRenderFactory *)self blackKeycapColor];
  }

  else
  {
    v19 = @"UIKBColorWhite";
  }

  v20 = [v50 symbolStyle];
  [v20 setTextColor:v19];

  if (v18)
  {
  }

  if ([v12 displayType] == 5)
  {
    v21 = [v50 geometry];
    [v21 paddedFrame];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
    [(UIKBRenderFactory *)self translucentGapWidth];
    v31 = v30 + v25;
    v32 = v29 - (v30 + 0.0);
    v33 = [v50 geometry];
    [v33 setPaddedFrame:{v23 + 0.0, v31, v27, v32}];

    v34 = [v50 geometry];
    [v34 paddedFrame];
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v43 = [v50 geometry];
    [v43 setDisplayFrame:{v36, v38, v40, v42}];

LABEL_10:
    v44 = [v50 symbolStyle];
    [v44 setUsesSymbolImage:1];

    [(UIKBRenderFactory10Key *)self symbolImageControlKeyFontSize];
    v46 = v45;
    v47 = [v50 symbolStyle];
    [v47 setFontSizeForSymbolImage:v46];

    goto LABEL_11;
  }

  if ([v12 displayType] == 13 || objc_msgSend(v12, "displayType") == 4)
  {
    goto LABEL_10;
  }

LABEL_11:
  v48 = [(UIKBRenderFactory *)self defaultKeyBackgroundColorName];
  v49 = [UIKBGradient gradientWithFlatColor:v48];
  [v50 setBackgroundGradient:v49];

  [(UIKBRenderFactory10Key *)self modifyTraitsForDetachedInputSwitcher:v50 withKey:v12];
}

- (id)_traitsForKey:(id)a3 onKeyplane:(id)a4
{
  v83[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v82.receiver = self;
  v82.super_class = UIKBRenderFactoryiPadHWR_Portrait;
  v8 = [(UIKBRenderFactory10Key_Round *)&v82 _traitsForKey:v6 onKeyplane:v7];
  v9 = [v6 displayType];
  if (v9 == 25 || (v10 = v9, v9 == 21))
  {
    v11 = [(UIKBRenderFactory10Key *)self lightTextFontName];
    v12 = [v8 symbolStyle];
    [v12 setFontName:v11];

    v13 = [(UIKBRenderFactory10Key *)self lightTextFontFallbackName];
    v14 = [v8 symbolStyle];
    [v14 setKeycapsFallback:v13];

    [(UIKBRenderFactoryiPadHWR_Portrait *)self spaceKeyFontSize];
    v16 = v15;
    v17 = [v8 symbolStyle];
    [v17 setFontSize:v16];

    [(UIKBRenderFactoryiPadHWR_Portrait *)self spaceReturnKeyTextOffset];
    v19 = v18;
    v21 = v20;
    v22 = [v8 symbolStyle];
    [v22 setTextOffset:{v19, v21}];

    v23 = [v8 symbolStyle];
    LODWORD(v14) = [v23 usesSymbolImage];

    if (v14)
    {
      v24 = [(UIKBRenderFactoryiPadHWR_Portrait *)self lightKeycapsFontName];
      v25 = [v8 symbolStyle];
      [v25 setFontName:v24];

      v26 = [(UIKBRenderFactory10Key *)self lightKeycapsFontFallbackName];
      v27 = [v8 symbolStyle];
      [v27 setKeycapsFallback:v26];

      v28 = *off_1E70ECD18;
      v29 = [v8 symbolStyle];
      [v29 setFontWeight:v28];

      [(UIKBRenderFactory10Key *)self symbolImageControlKeyFontSize];
      v31 = v30;
      v32 = [v8 symbolStyle];
      [v32 setFontSize:v31];

      [(UIKBRenderFactory10Key *)self symbolImageControlKeyOffset];
      v34 = v33;
      v36 = v35;
      v37 = [v8 symbolStyle];
      [v37 setTextOffset:{v34, v36}];
LABEL_8:
    }
  }

  else
  {
    if ((v9 & 0xFFFFFFEF) == 2 || ([v6 localizationKey], v38 = objc_claimAutoreleasedReturnValue(), v39 = objc_msgSend(v38, "isEqualToString:", @"UI-abc"), v38, v39))
    {
      v40 = [(UIKBRenderFactory10Key *)self lightTextFontName];
      v41 = [v8 symbolStyle];
      [v41 setFontName:v40];

      v42 = [(UIKBRenderFactory10Key *)self lightTextFontFallbackName];
      v43 = [v8 symbolStyle];
      [v43 setKeycapsFallback:v42];

      [(UIKBRenderFactoryiPadHWR_Portrait *)self moreKeyFontSize];
      v45 = v44;
      v46 = [v8 symbolStyle];
      [v46 setFontSize:v45];

      [(UIKBRenderFactoryiPadHWR_Portrait *)self spaceReturnKeyTextOffset];
      v48 = v47;
      v50 = v49;
      v51 = [v8 symbolStyle];
      [v51 setTextOffset:{v48, v50}];

      v37 = [v8 symbolStyle];
      [v37 setUsesSymbolImage:1];
      goto LABEL_8;
    }

    if (v10 <= 11)
    {
      if (v10 == 3)
      {
        [(UIKBRenderFactoryiPadHWR_Portrait *)self deleteKeyFontSize];
        v67 = v66;
        v68 = [v8 symbolStyle];
        [v68 setFontSize:v67];

        if (([v6 state] & 4) != 0)
        {
          v70 = [(UIKBRenderFactory *)self renderConfig];
          v71 = [v70 lightKeyboard];
          v72 = UIKBColorHWRCellLightBackground;
          if (!v71)
          {
            v72 = UIKBColorHWRCellDarkBackground;
          }

          v69 = *v72;

          v73 = [(UIKBRenderFactory *)self renderConfig];
          v74 = [v73 lightKeyboard];
          v75 = UIKBColorHWRCellLightBackgroundClear;
          if (!v74)
          {
            v75 = UIKBColorHWRCellDarkBackgroundClear;
          }

          v76 = *v75;

          v83[0] = v69;
          v83[1] = v69;
          v83[2] = v76;
          v77 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:3];
          v78 = [UIKBGradient gradientWith3Colors:v77 middleLocation:0.5];

          [v8 setBackgroundGradient:v78];
        }

        else
        {
          v69 = [UIKBGradient gradientWithFlatColor:@"UIKBColorClear"];
          [v8 setBackgroundGradient:v69];
        }

        [v8 removeAllRenderEffects];
      }

      else if (v10 != 5)
      {
        goto LABEL_9;
      }

      v79 = [v8 symbolStyle];
      [v79 setUsesSymbolImage:1];

      [(UIKBRenderFactory10Key *)self symbolImageControlKeyFontSize];
      v81 = v80;
      v37 = [v8 symbolStyle];
      [v37 setFontSizeForSymbolImage:v81];
      goto LABEL_8;
    }

    if (v10 == 12)
    {
      [v8 setBackgroundGradient:0];
      goto LABEL_9;
    }

    if (v10 == 13)
    {
      v61 = [v8 symbolStyle];
      [v61 setUsesSymbolImage:1];

      [(UIKBRenderFactory10Key *)self symbolImageControlKeyFontSize];
      v63 = v62;
      v64 = [v8 symbolStyle];
      [v64 setFontSizeForSymbolImage:v63];

      v65 = *off_1E70ECD18;
      v37 = [v8 symbolStyle];
      [v37 setFontWeightForSymbolImage:v65];
      goto LABEL_8;
    }
  }

LABEL_9:
  if ([(UIKBRenderFactoryiPadHWR_Portrait *)self _anchorControlKeys]&& [(UIKBRenderFactoryiPadHWR_Portrait *)self _displaysAsControlKeyStyle:v6])
  {
    [v6 frame];
    MidX = CGRectGetMidX(v85);
    [v7 frame];
    if (MidX >= CGRectGetMidX(v86))
    {
      v53 = 8;
    }

    else
    {
      v53 = 4;
    }

    v54 = [v8 symbolStyle];
    [v54 setAnchorCorner:v53];

    [(UIKBRenderFactoryiPadHWR_Portrait *)self _controlKeyOffset];
    v56 = v55;
    v58 = v57;
    v59 = [v8 symbolStyle];
    [v59 setTextOffset:{v56, v58}];
  }

  return v8;
}

- (void)setupLayoutSegments
{
  [(UIKBRenderFactoryiPadHWR_Portrait *)self controlColumnWidthFactor];
  v4 = v3;
  v5 = [(UIKBRenderFactory10Key_Round *)self controlKeyTraits];
  v8 = [UIKBRenderFactoryLayoutSegment segmentWithTraits:v5];

  [v8 setKeyStates:3];
  [v8 addLayoutRect:0 asTriangle:{0.0, 0.75, v4, 0.25}];
  [v8 addLayoutRect:0 asTriangle:{1.0 - v4, 0.75, v4, 0.25}];
  [(UIKBRenderFactory *)self addLayoutSegment:v8];
  v6 = [(UIKBRenderFactory10Key_Round *)self activeControlKeyTraits];
  v7 = [UIKBRenderFactoryLayoutSegment segmentWithTraits:v6];

  [v7 setKeyStates:4];
  [v7 addLayoutRect:0 asTriangle:{0.0, 0.75, v4, 0.25}];
  [v7 addLayoutRect:0 asTriangle:{1.0 - v4, 0.75, v4, 0.25}];
  [(UIKBRenderFactory *)self addLayoutSegment:v7];
}

@end