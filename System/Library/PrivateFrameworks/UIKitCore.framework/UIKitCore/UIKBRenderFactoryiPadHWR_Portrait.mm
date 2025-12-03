@interface UIKBRenderFactoryiPadHWR_Portrait
- (BOOL)_displaysAsControlKeyStyle:(id)style;
- (BOOL)shouldUseRoundCornerForKey:(id)key;
- (CGPoint)_controlKeyOffset;
- (CGPoint)dismissKeyOffset;
- (CGPoint)spaceReturnKeyTextOffset;
- (UIEdgeInsets)symbolFrameInsets;
- (double)keyCornerRadius;
- (id)_traitsForKey:(id)key onKeyplane:(id)keyplane;
- (id)shortClassNameForCaching;
- (void)_customizeTraits:(id)traits forPopupForKey:(id)key withRenderingContext:(id)context keycapsFontName:(id)name fallbackFontName:(id)fontName;
- (void)setupLayoutSegments;
@end

@implementation UIKBRenderFactoryiPadHWR_Portrait

- (id)shortClassNameForCaching
{
  v5.receiver = self;
  v5.super_class = UIKBRenderFactoryiPadHWR_Portrait;
  shortClassNameForCaching = [(UIKBRenderFactory *)&v5 shortClassNameForCaching];
  v3 = [shortClassNameForCaching stringByReplacingOccurrencesOfString:@"SansHomeButton" withString:@"SHB"];

  return v3;
}

- (double)keyCornerRadius
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  if ([renderConfig colorAdaptiveBackground])
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
    v7.super_class = UIKBRenderFactoryiPadHWR_Portrait;
    v5 = [(UIKBRenderFactory10Key_Round *)&v7 shouldUseRoundCornerForKey:keyCopy];
  }

  return v5;
}

- (BOOL)_displaysAsControlKeyStyle:(id)style
{
  styleCopy = style;
  displayType = [styleCopy displayType];
  v5 = displayType;
  v6 = displayType < 0x16;
  interactionType = [styleCopy interactionType];

  if (interactionType == 40 || interactionType == 9)
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    return v6 & (0x242030u >> v5);
  }

  return v8;
}

- (void)_customizeTraits:(id)traits forPopupForKey:(id)key withRenderingContext:(id)context keycapsFontName:(id)name fallbackFontName:(id)fontName
{
  traitsCopy = traits;
  keyCopy = key;
  fontNameCopy = fontName;
  nameCopy = name;
  contextCopy = context;
  [traitsCopy removeAllRenderEffects];
  v16 = [UIKBTextStyle styleWithFontName:nameCopy withFallbackFontName:fontNameCopy withFontSize:22.0];

  [traitsCopy setSymbolStyle:v16];
  renderConfig = [contextCopy renderConfig];

  lightKeyboard = [renderConfig lightKeyboard];
  if (lightKeyboard)
  {
    blackKeycapColor = [(UIKBRenderFactory *)self blackKeycapColor];
  }

  else
  {
    blackKeycapColor = @"UIKBColorWhite";
  }

  symbolStyle = [traitsCopy symbolStyle];
  [symbolStyle setTextColor:blackKeycapColor];

  if (lightKeyboard)
  {
  }

  if ([keyCopy displayType] == 5)
  {
    geometry = [traitsCopy geometry];
    [geometry paddedFrame];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
    [(UIKBRenderFactory *)self translucentGapWidth];
    v31 = v30 + v25;
    v32 = v29 - (v30 + 0.0);
    geometry2 = [traitsCopy geometry];
    [geometry2 setPaddedFrame:{v23 + 0.0, v31, v27, v32}];

    geometry3 = [traitsCopy geometry];
    [geometry3 paddedFrame];
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;
    geometry4 = [traitsCopy geometry];
    [geometry4 setDisplayFrame:{v36, v38, v40, v42}];

LABEL_10:
    symbolStyle2 = [traitsCopy symbolStyle];
    [symbolStyle2 setUsesSymbolImage:1];

    [(UIKBRenderFactory10Key *)self symbolImageControlKeyFontSize];
    v46 = v45;
    symbolStyle3 = [traitsCopy symbolStyle];
    [symbolStyle3 setFontSizeForSymbolImage:v46];

    goto LABEL_11;
  }

  if ([keyCopy displayType] == 13 || objc_msgSend(keyCopy, "displayType") == 4)
  {
    goto LABEL_10;
  }

LABEL_11:
  defaultKeyBackgroundColorName = [(UIKBRenderFactory *)self defaultKeyBackgroundColorName];
  v49 = [UIKBGradient gradientWithFlatColor:defaultKeyBackgroundColorName];
  [traitsCopy setBackgroundGradient:v49];

  [(UIKBRenderFactory10Key *)self modifyTraitsForDetachedInputSwitcher:traitsCopy withKey:keyCopy];
}

- (id)_traitsForKey:(id)key onKeyplane:(id)keyplane
{
  v83[3] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  keyplaneCopy = keyplane;
  v82.receiver = self;
  v82.super_class = UIKBRenderFactoryiPadHWR_Portrait;
  v8 = [(UIKBRenderFactory10Key_Round *)&v82 _traitsForKey:keyCopy onKeyplane:keyplaneCopy];
  displayType = [keyCopy displayType];
  if (displayType == 25 || (v10 = displayType, displayType == 21))
  {
    lightTextFontName = [(UIKBRenderFactory10Key *)self lightTextFontName];
    symbolStyle = [v8 symbolStyle];
    [symbolStyle setFontName:lightTextFontName];

    lightTextFontFallbackName = [(UIKBRenderFactory10Key *)self lightTextFontFallbackName];
    symbolStyle2 = [v8 symbolStyle];
    [symbolStyle2 setKeycapsFallback:lightTextFontFallbackName];

    [(UIKBRenderFactoryiPadHWR_Portrait *)self spaceKeyFontSize];
    v16 = v15;
    symbolStyle3 = [v8 symbolStyle];
    [symbolStyle3 setFontSize:v16];

    [(UIKBRenderFactoryiPadHWR_Portrait *)self spaceReturnKeyTextOffset];
    v19 = v18;
    v21 = v20;
    symbolStyle4 = [v8 symbolStyle];
    [symbolStyle4 setTextOffset:{v19, v21}];

    symbolStyle5 = [v8 symbolStyle];
    LODWORD(symbolStyle2) = [symbolStyle5 usesSymbolImage];

    if (symbolStyle2)
    {
      lightKeycapsFontName = [(UIKBRenderFactoryiPadHWR_Portrait *)self lightKeycapsFontName];
      symbolStyle6 = [v8 symbolStyle];
      [symbolStyle6 setFontName:lightKeycapsFontName];

      lightKeycapsFontFallbackName = [(UIKBRenderFactory10Key *)self lightKeycapsFontFallbackName];
      symbolStyle7 = [v8 symbolStyle];
      [symbolStyle7 setKeycapsFallback:lightKeycapsFontFallbackName];

      v28 = *off_1E70ECD18;
      symbolStyle8 = [v8 symbolStyle];
      [symbolStyle8 setFontWeight:v28];

      [(UIKBRenderFactory10Key *)self symbolImageControlKeyFontSize];
      v31 = v30;
      symbolStyle9 = [v8 symbolStyle];
      [symbolStyle9 setFontSize:v31];

      [(UIKBRenderFactory10Key *)self symbolImageControlKeyOffset];
      v34 = v33;
      v36 = v35;
      symbolStyle10 = [v8 symbolStyle];
      [symbolStyle10 setTextOffset:{v34, v36}];
LABEL_8:
    }
  }

  else
  {
    if ((displayType & 0xFFFFFFEF) == 2 || ([keyCopy localizationKey], v38 = objc_claimAutoreleasedReturnValue(), v39 = objc_msgSend(v38, "isEqualToString:", @"UI-abc"), v38, v39))
    {
      lightTextFontName2 = [(UIKBRenderFactory10Key *)self lightTextFontName];
      symbolStyle11 = [v8 symbolStyle];
      [symbolStyle11 setFontName:lightTextFontName2];

      lightTextFontFallbackName2 = [(UIKBRenderFactory10Key *)self lightTextFontFallbackName];
      symbolStyle12 = [v8 symbolStyle];
      [symbolStyle12 setKeycapsFallback:lightTextFontFallbackName2];

      [(UIKBRenderFactoryiPadHWR_Portrait *)self moreKeyFontSize];
      v45 = v44;
      symbolStyle13 = [v8 symbolStyle];
      [symbolStyle13 setFontSize:v45];

      [(UIKBRenderFactoryiPadHWR_Portrait *)self spaceReturnKeyTextOffset];
      v48 = v47;
      v50 = v49;
      symbolStyle14 = [v8 symbolStyle];
      [symbolStyle14 setTextOffset:{v48, v50}];

      symbolStyle10 = [v8 symbolStyle];
      [symbolStyle10 setUsesSymbolImage:1];
      goto LABEL_8;
    }

    if (v10 <= 11)
    {
      if (v10 == 3)
      {
        [(UIKBRenderFactoryiPadHWR_Portrait *)self deleteKeyFontSize];
        v67 = v66;
        symbolStyle15 = [v8 symbolStyle];
        [symbolStyle15 setFontSize:v67];

        if (([keyCopy state] & 4) != 0)
        {
          renderConfig = [(UIKBRenderFactory *)self renderConfig];
          lightKeyboard = [renderConfig lightKeyboard];
          v72 = UIKBColorHWRCellLightBackground;
          if (!lightKeyboard)
          {
            v72 = UIKBColorHWRCellDarkBackground;
          }

          v69 = *v72;

          renderConfig2 = [(UIKBRenderFactory *)self renderConfig];
          lightKeyboard2 = [renderConfig2 lightKeyboard];
          v75 = UIKBColorHWRCellLightBackgroundClear;
          if (!lightKeyboard2)
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

      symbolStyle16 = [v8 symbolStyle];
      [symbolStyle16 setUsesSymbolImage:1];

      [(UIKBRenderFactory10Key *)self symbolImageControlKeyFontSize];
      v81 = v80;
      symbolStyle10 = [v8 symbolStyle];
      [symbolStyle10 setFontSizeForSymbolImage:v81];
      goto LABEL_8;
    }

    if (v10 == 12)
    {
      [v8 setBackgroundGradient:0];
      goto LABEL_9;
    }

    if (v10 == 13)
    {
      symbolStyle17 = [v8 symbolStyle];
      [symbolStyle17 setUsesSymbolImage:1];

      [(UIKBRenderFactory10Key *)self symbolImageControlKeyFontSize];
      v63 = v62;
      symbolStyle18 = [v8 symbolStyle];
      [symbolStyle18 setFontSizeForSymbolImage:v63];

      v65 = *off_1E70ECD18;
      symbolStyle10 = [v8 symbolStyle];
      [symbolStyle10 setFontWeightForSymbolImage:v65];
      goto LABEL_8;
    }
  }

LABEL_9:
  if ([(UIKBRenderFactoryiPadHWR_Portrait *)self _anchorControlKeys]&& [(UIKBRenderFactoryiPadHWR_Portrait *)self _displaysAsControlKeyStyle:keyCopy])
  {
    [keyCopy frame];
    MidX = CGRectGetMidX(v85);
    [keyplaneCopy frame];
    if (MidX >= CGRectGetMidX(v86))
    {
      v53 = 8;
    }

    else
    {
      v53 = 4;
    }

    symbolStyle19 = [v8 symbolStyle];
    [symbolStyle19 setAnchorCorner:v53];

    [(UIKBRenderFactoryiPadHWR_Portrait *)self _controlKeyOffset];
    v56 = v55;
    v58 = v57;
    symbolStyle20 = [v8 symbolStyle];
    [symbolStyle20 setTextOffset:{v56, v58}];
  }

  return v8;
}

- (void)setupLayoutSegments
{
  [(UIKBRenderFactoryiPadHWR_Portrait *)self controlColumnWidthFactor];
  v4 = v3;
  controlKeyTraits = [(UIKBRenderFactory10Key_Round *)self controlKeyTraits];
  v8 = [UIKBRenderFactoryLayoutSegment segmentWithTraits:controlKeyTraits];

  [v8 setKeyStates:3];
  [v8 addLayoutRect:0 asTriangle:{0.0, 0.75, v4, 0.25}];
  [v8 addLayoutRect:0 asTriangle:{1.0 - v4, 0.75, v4, 0.25}];
  [(UIKBRenderFactory *)self addLayoutSegment:v8];
  activeControlKeyTraits = [(UIKBRenderFactory10Key_Round *)self activeControlKeyTraits];
  v7 = [UIKBRenderFactoryLayoutSegment segmentWithTraits:activeControlKeyTraits];

  [v7 setKeyStates:4];
  [v7 addLayoutRect:0 asTriangle:{0.0, 0.75, v4, 0.25}];
  [v7 addLayoutRect:0 asTriangle:{1.0 - v4, 0.75, v4, 0.25}];
  [(UIKBRenderFactory *)self addLayoutSegment:v7];
}

@end