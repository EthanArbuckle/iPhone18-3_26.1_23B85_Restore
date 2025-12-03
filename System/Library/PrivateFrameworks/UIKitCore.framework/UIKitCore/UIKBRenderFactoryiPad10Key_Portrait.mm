@interface UIKBRenderFactoryiPad10Key_Portrait
- (CGPoint)abcKeyTextOffset;
- (CGPoint)dictationKeyTextOffset;
- (CGPoint)globeKeyTextOffset;
- (CGPoint)numberPadKeyPrimaryTextOffset;
- (CGPoint)numberPadKeySecondaryTextOffset;
- (CGPoint)numberPadVBarSecondaryTextOffset;
- (UIEdgeInsets)topEdgeAdjustmentInsets;
- (UIEdgeInsets)wideShadowPaddleInsets;
- (double)keyCornerRadius;
- (id)_traitsForKey:(id)key onKeyplane:(id)keyplane;
- (id)backgroundTraitsForKeyplane:(id)keyplane;
- (id)multitapCompleteKeyImageName;
- (id)muttitapReverseKeyImageName;
- (unint64_t)edgesAdjustedForTranslucentGapsForGeometry:(id)geometry key:(id)key onKeyplane:(id)keyplane;
- (void)_customizeTraits:(id)traits forPopupForKey:(id)key withRenderingContext:(id)context keycapsFontName:(id)name fallbackFontName:(id)fontName;
- (void)setupLayoutSegments;
@end

@implementation UIKBRenderFactoryiPad10Key_Portrait

- (CGPoint)globeKeyTextOffset
{
  v2 = 0.0;
  v3 = -1.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)dictationKeyTextOffset
{
  v2 = 0.0;
  v3 = -1.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (UIEdgeInsets)wideShadowPaddleInsets
{
  v2 = 18.0;
  v3 = 6.0;
  v4 = 22.0;
  v5 = 6.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (CGPoint)abcKeyTextOffset
{
  v2 = 0.0;
  v3 = 0.5;
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)numberPadKeyPrimaryTextOffset
{
  v2 = 0.0;
  v3 = -7.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)numberPadKeySecondaryTextOffset
{
  v2 = 1.0;
  v3 = 9.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)numberPadVBarSecondaryTextOffset
{
  [(UIKBRenderFactory *)self scale];
  v2 = 9.5;
  if (v3 != 2.0)
  {
    v2 = 10.0;
  }

  v4 = 1.0;
  result.y = v2;
  result.x = v4;
  return result;
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

- (id)multitapCompleteKeyImageName
{
  [(UIKBRenderFactory *)self RivenFactor:1.0];
  if (v2 <= 1.0)
  {
    v3 = @"kana_multitap_complete_arrow.png";
  }

  else
  {
    v3 = @"kana_multitap_complete_arrow-163r.png";
  }

  return v3;
}

- (id)muttitapReverseKeyImageName
{
  [(UIKBRenderFactory *)self RivenFactor:1.0];
  if (v2 <= 1.0)
  {
    v3 = @"kana_multitap_reverse_arrow.png";
  }

  else
  {
    v3 = @"kana_multitap_reverse_arrow-163r.png";
  }

  return v3;
}

- (void)setupLayoutSegments
{
  [(UIKBRenderFactoryiPad10Key_Portrait *)self controlColumnWidthFactor];

  [(UIKBRenderFactory10Key *)self setupColumnLayoutSegmentsWithControlWidth:?];
}

- (UIEdgeInsets)topEdgeAdjustmentInsets
{
  [(UIKBRenderFactory *)self translucentGapWidth];
  v3 = v2;
  v4 = -v2;
  v5 = 0.0;
  v6 = 0.0;
  result.right = v6;
  result.bottom = v3;
  result.left = v5;
  result.top = v4;
  return result;
}

- (unint64_t)edgesAdjustedForTranslucentGapsForGeometry:(id)geometry key:(id)key onKeyplane:(id)keyplane
{
  geometryCopy = geometry;
  keyCopy = key;
  keyplaneCopy = keyplane;
  v48.receiver = self;
  v48.super_class = UIKBRenderFactoryiPad10Key_Portrait;
  v11 = [(UIKBRenderFactory10Key *)&v48 edgesAdjustedForTranslucentGapsForGeometry:geometryCopy key:keyCopy onKeyplane:keyplaneCopy];
  [(UIKBRenderFactory *)self RivenFactor:1.0];
  if (v12 > 1.0)
  {
    [keyCopy frame];
    v14 = v13;
    [(UIKBRenderFactory *)self RivenFactor:1.0];
    if (v14 <= v15)
    {
      [keyCopy frame];
      v16 = 1.0 - v18;
      if ([keyplaneCopy isSplit])
      {
        [(UIKBRenderFactory *)self translucentGapWidth];
        v16 = v16 + v19;
      }

      if ([keyplaneCopy isSplit])
      {
        [(UIKBRenderFactory *)self stretchFactor];
        if (v20 != 1.0)
        {
          [(UIKBRenderFactory *)self translucentGapWidth];
        }
      }
    }

    else
    {
      v16 = -1.0;
      if ([keyplaneCopy isSplit])
      {
        [(UIKBRenderFactory *)self translucentGapWidth];
        v16 = -v17;
      }
    }

    [geometryCopy paddedFrame];
    [geometryCopy setPaddedFrame:{v21 + 0.0, v16 + v22}];
    [geometryCopy displayFrame];
    [geometryCopy setDisplayFrame:{v23 + 0.0, v16 + v24}];
  }

  [(UIKBRenderFactory *)self RivenFactor:1.0];
  if (v25 > 1.0)
  {
    [keyCopy frame];
    v27 = v26;
    [keyplaneCopy frameForKeylayoutName:@"split-right"];
    if (v27 == v28)
    {
      [geometryCopy paddedFrame];
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v36 = v35;
      [(UIKBRenderFactory *)self translucentGapWidth];
      [geometryCopy setPaddedFrame:{v37 + v30, v32 + 0.0, v34 - (v37 + 0.0), v36}];
      [geometryCopy displayFrame];
      v39 = v38;
      v41 = v40;
      v43 = v42;
      v45 = v44;
      [(UIKBRenderFactory *)self translucentGapWidth];
      [geometryCopy setDisplayFrame:{v46 + v39, v41 + 0.0, v43 - (v46 + 0.0), v45}];
    }
  }

  return v11;
}

- (id)backgroundTraitsForKeyplane:(id)keyplane
{
  keyplaneCopy = keyplane;
  v13.receiver = self;
  v13.super_class = UIKBRenderFactoryiPad10Key_Portrait;
  v5 = [(UIKBRenderFactory *)&v13 backgroundTraitsForKeyplane:keyplaneCopy];
  if (([keyplaneCopy visualStyling] & 0x80) != 0)
  {
    v6 = MEMORY[0x1E696B098];
    [keyplaneCopy frameForKeylayoutName:@"split-left"];
    v7 = [v6 valueWithCGRect:?];
    geometry = [v5 geometry];
    [geometry setSplitLeftRect:v7];

    v9 = MEMORY[0x1E696B098];
    [keyplaneCopy frameForKeylayoutName:@"split-right"];
    v10 = [v9 valueWithCGRect:?];
    geometry2 = [v5 geometry];
    [geometry2 setSplitRightRect:v10];
  }

  return v5;
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

  if ([keyCopy displayType] == 13)
  {
    symbolStyle2 = [traitsCopy symbolStyle];
    [symbolStyle2 setTextOffset:{0.0, -1.0}];

    symbolStyle3 = [traitsCopy symbolStyle];
    [symbolStyle3 setUsesSymbolImage:1];

    [(UIKBRenderFactory10Key *)self symbolImageControlKeyFontSize];
    v24 = v23;
    symbolStyle4 = [traitsCopy symbolStyle];
    [symbolStyle4 setFontSizeForSymbolImage:v24];
  }

  if ([keyCopy displayType] == 4 || objc_msgSend(keyCopy, "displayType") == 5)
  {
    symbolStyle5 = [traitsCopy symbolStyle];
    [symbolStyle5 setUsesSymbolImage:1];

    [(UIKBRenderFactory10Key *)self symbolImageControlKeyFontSize];
    v28 = v27;
    symbolStyle6 = [traitsCopy symbolStyle];
    [symbolStyle6 setFontSizeForSymbolImage:v28];
  }

  defaultKeyBackgroundColorName = [(UIKBRenderFactory *)self defaultKeyBackgroundColorName];
  v31 = [UIKBGradient gradientWithFlatColor:defaultKeyBackgroundColorName];
  [traitsCopy setBackgroundGradient:v31];

  [(UIKBRenderFactory10Key *)self modifyTraitsForDetachedInputSwitcher:traitsCopy withKey:keyCopy];
}

- (id)_traitsForKey:(id)key onKeyplane:(id)keyplane
{
  keyCopy = key;
  keyplaneCopy = keyplane;
  v46.receiver = self;
  v46.super_class = UIKBRenderFactoryiPad10Key_Portrait;
  v8 = [(UIKBRenderFactory10Key *)&v46 _traitsForKey:keyCopy onKeyplane:keyplaneCopy];
  if ([keyCopy displayType] == 35)
  {
    [(UIKBRenderFactory *)self translucentGapWidth];
    v10 = v9;
    geometry = [v8 geometry];
    [geometry symbolFrame];
    v13 = v12;
    v14 = -2.0 - v10;
    v15 = v10 + -2.0;
    v17 = v10 + -2.0 + v16;
    v19 = v18 - (v14 + v15);
    v21 = v20 + 0.0;
    geometry2 = [v8 geometry];
    [geometry2 setSymbolFrame:{v17, v21, v19, v13}];
LABEL_3:

LABEL_15:
    goto LABEL_16;
  }

  if ([keyCopy displayType] == 1)
  {
    geometry = [v8 geometry];
    [geometry frame];
    [geometry setFrame:{v23 + 0.0, v24 + 0.0, v25 + -0.5}];
    [geometry paddedFrame];
    [geometry setPaddedFrame:{v26 + 0.0, v27 + 0.0, v28 + -0.5}];
    [geometry displayFrame];
    [geometry setDisplayFrame:{v29 + 0.0, v30 + 0.0, v31 + -0.5}];
    goto LABEL_15;
  }

  if (([keyplaneCopy visualStyling] & 0x80) != 0 && objc_msgSend(keyCopy, "state") == 20)
  {
    variantTraits = [v8 variantTraits];
    symbolStyle = [variantTraits symbolStyle];
    [symbolStyle setFontSize:27.0];

    renderConfig = [(UIKBRenderFactory *)self renderConfig];
    LOBYTE(symbolStyle) = [renderConfig lightKeyboard];

    if (symbolStyle)
    {
      goto LABEL_16;
    }

    geometry = [(UIKBRenderFactory *)self renderConfig];
    colorAdaptiveBackground = [geometry colorAdaptiveBackground];
    v36 = UIKBColorWhite_Alpha30;
    if (!colorAdaptiveBackground)
    {
      v36 = UIKBColorClear;
    }

    geometry2 = [UIKBGradient gradientWithFlatColor:*v36];
    [v8 setBackgroundGradient:geometry2];
    goto LABEL_3;
  }

  name = [keyCopy name];
  v38 = [name containsString:@"Facemark"];

  if (v38 || ([keyCopy name], v39 = objc_claimAutoreleasedReturnValue(), v40 = objc_msgSend(v39, "containsString:", @"Fullwidth"), v39, v40))
  {
    lightKeycapsFontName = [(UIKBRenderFactoryiPad10Key_Portrait *)self lightKeycapsFontName];
    symbolStyle2 = [v8 symbolStyle];
    [symbolStyle2 setFontName:lightKeycapsFontName];

    lightKeycapsFontFallbackName = [(UIKBRenderFactory10Key *)self lightKeycapsFontFallbackName];
    symbolStyle3 = [v8 symbolStyle];
    [symbolStyle3 setKeycapsFallback:lightKeycapsFontFallbackName];

    geometry = [v8 symbolStyle];
    [geometry setFontSize:20.0];
    goto LABEL_15;
  }

LABEL_16:
  [(UIKBRenderFactory *)self scaleTraits:v8];

  return v8;
}

@end