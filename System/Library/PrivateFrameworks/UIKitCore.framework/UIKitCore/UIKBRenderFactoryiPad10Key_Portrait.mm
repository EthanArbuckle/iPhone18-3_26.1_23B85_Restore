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
- (id)_traitsForKey:(id)a3 onKeyplane:(id)a4;
- (id)backgroundTraitsForKeyplane:(id)a3;
- (id)multitapCompleteKeyImageName;
- (id)muttitapReverseKeyImageName;
- (unint64_t)edgesAdjustedForTranslucentGapsForGeometry:(id)a3 key:(id)a4 onKeyplane:(id)a5;
- (void)_customizeTraits:(id)a3 forPopupForKey:(id)a4 withRenderingContext:(id)a5 keycapsFontName:(id)a6 fallbackFontName:(id)a7;
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

- (unint64_t)edgesAdjustedForTranslucentGapsForGeometry:(id)a3 key:(id)a4 onKeyplane:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v48.receiver = self;
  v48.super_class = UIKBRenderFactoryiPad10Key_Portrait;
  v11 = [(UIKBRenderFactory10Key *)&v48 edgesAdjustedForTranslucentGapsForGeometry:v8 key:v9 onKeyplane:v10];
  [(UIKBRenderFactory *)self RivenFactor:1.0];
  if (v12 > 1.0)
  {
    [v9 frame];
    v14 = v13;
    [(UIKBRenderFactory *)self RivenFactor:1.0];
    if (v14 <= v15)
    {
      [v9 frame];
      v16 = 1.0 - v18;
      if ([v10 isSplit])
      {
        [(UIKBRenderFactory *)self translucentGapWidth];
        v16 = v16 + v19;
      }

      if ([v10 isSplit])
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
      if ([v10 isSplit])
      {
        [(UIKBRenderFactory *)self translucentGapWidth];
        v16 = -v17;
      }
    }

    [v8 paddedFrame];
    [v8 setPaddedFrame:{v21 + 0.0, v16 + v22}];
    [v8 displayFrame];
    [v8 setDisplayFrame:{v23 + 0.0, v16 + v24}];
  }

  [(UIKBRenderFactory *)self RivenFactor:1.0];
  if (v25 > 1.0)
  {
    [v9 frame];
    v27 = v26;
    [v10 frameForKeylayoutName:@"split-right"];
    if (v27 == v28)
    {
      [v8 paddedFrame];
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v36 = v35;
      [(UIKBRenderFactory *)self translucentGapWidth];
      [v8 setPaddedFrame:{v37 + v30, v32 + 0.0, v34 - (v37 + 0.0), v36}];
      [v8 displayFrame];
      v39 = v38;
      v41 = v40;
      v43 = v42;
      v45 = v44;
      [(UIKBRenderFactory *)self translucentGapWidth];
      [v8 setDisplayFrame:{v46 + v39, v41 + 0.0, v43 - (v46 + 0.0), v45}];
    }
  }

  return v11;
}

- (id)backgroundTraitsForKeyplane:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = UIKBRenderFactoryiPad10Key_Portrait;
  v5 = [(UIKBRenderFactory *)&v13 backgroundTraitsForKeyplane:v4];
  if (([v4 visualStyling] & 0x80) != 0)
  {
    v6 = MEMORY[0x1E696B098];
    [v4 frameForKeylayoutName:@"split-left"];
    v7 = [v6 valueWithCGRect:?];
    v8 = [v5 geometry];
    [v8 setSplitLeftRect:v7];

    v9 = MEMORY[0x1E696B098];
    [v4 frameForKeylayoutName:@"split-right"];
    v10 = [v9 valueWithCGRect:?];
    v11 = [v5 geometry];
    [v11 setSplitRightRect:v10];
  }

  return v5;
}

- (void)_customizeTraits:(id)a3 forPopupForKey:(id)a4 withRenderingContext:(id)a5 keycapsFontName:(id)a6 fallbackFontName:(id)a7
{
  v32 = a3;
  v12 = a4;
  v13 = a7;
  v14 = a6;
  v15 = a5;
  [v32 removeAllRenderEffects];
  v16 = [UIKBTextStyle styleWithFontName:v14 withFallbackFontName:v13 withFontSize:22.0];

  [v32 setSymbolStyle:v16];
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

  v20 = [v32 symbolStyle];
  [v20 setTextColor:v19];

  if (v18)
  {
  }

  if ([v12 displayType] == 13)
  {
    v21 = [v32 symbolStyle];
    [v21 setTextOffset:{0.0, -1.0}];

    v22 = [v32 symbolStyle];
    [v22 setUsesSymbolImage:1];

    [(UIKBRenderFactory10Key *)self symbolImageControlKeyFontSize];
    v24 = v23;
    v25 = [v32 symbolStyle];
    [v25 setFontSizeForSymbolImage:v24];
  }

  if ([v12 displayType] == 4 || objc_msgSend(v12, "displayType") == 5)
  {
    v26 = [v32 symbolStyle];
    [v26 setUsesSymbolImage:1];

    [(UIKBRenderFactory10Key *)self symbolImageControlKeyFontSize];
    v28 = v27;
    v29 = [v32 symbolStyle];
    [v29 setFontSizeForSymbolImage:v28];
  }

  v30 = [(UIKBRenderFactory *)self defaultKeyBackgroundColorName];
  v31 = [UIKBGradient gradientWithFlatColor:v30];
  [v32 setBackgroundGradient:v31];

  [(UIKBRenderFactory10Key *)self modifyTraitsForDetachedInputSwitcher:v32 withKey:v12];
}

- (id)_traitsForKey:(id)a3 onKeyplane:(id)a4
{
  v6 = a3;
  v7 = a4;
  v46.receiver = self;
  v46.super_class = UIKBRenderFactoryiPad10Key_Portrait;
  v8 = [(UIKBRenderFactory10Key *)&v46 _traitsForKey:v6 onKeyplane:v7];
  if ([v6 displayType] == 35)
  {
    [(UIKBRenderFactory *)self translucentGapWidth];
    v10 = v9;
    v11 = [v8 geometry];
    [v11 symbolFrame];
    v13 = v12;
    v14 = -2.0 - v10;
    v15 = v10 + -2.0;
    v17 = v10 + -2.0 + v16;
    v19 = v18 - (v14 + v15);
    v21 = v20 + 0.0;
    v22 = [v8 geometry];
    [v22 setSymbolFrame:{v17, v21, v19, v13}];
LABEL_3:

LABEL_15:
    goto LABEL_16;
  }

  if ([v6 displayType] == 1)
  {
    v11 = [v8 geometry];
    [v11 frame];
    [v11 setFrame:{v23 + 0.0, v24 + 0.0, v25 + -0.5}];
    [v11 paddedFrame];
    [v11 setPaddedFrame:{v26 + 0.0, v27 + 0.0, v28 + -0.5}];
    [v11 displayFrame];
    [v11 setDisplayFrame:{v29 + 0.0, v30 + 0.0, v31 + -0.5}];
    goto LABEL_15;
  }

  if (([v7 visualStyling] & 0x80) != 0 && objc_msgSend(v6, "state") == 20)
  {
    v32 = [v8 variantTraits];
    v33 = [v32 symbolStyle];
    [v33 setFontSize:27.0];

    v34 = [(UIKBRenderFactory *)self renderConfig];
    LOBYTE(v33) = [v34 lightKeyboard];

    if (v33)
    {
      goto LABEL_16;
    }

    v11 = [(UIKBRenderFactory *)self renderConfig];
    v35 = [v11 colorAdaptiveBackground];
    v36 = UIKBColorWhite_Alpha30;
    if (!v35)
    {
      v36 = UIKBColorClear;
    }

    v22 = [UIKBGradient gradientWithFlatColor:*v36];
    [v8 setBackgroundGradient:v22];
    goto LABEL_3;
  }

  v37 = [v6 name];
  v38 = [v37 containsString:@"Facemark"];

  if (v38 || ([v6 name], v39 = objc_claimAutoreleasedReturnValue(), v40 = objc_msgSend(v39, "containsString:", @"Fullwidth"), v39, v40))
  {
    v41 = [(UIKBRenderFactoryiPad10Key_Portrait *)self lightKeycapsFontName];
    v42 = [v8 symbolStyle];
    [v42 setFontName:v41];

    v43 = [(UIKBRenderFactory10Key *)self lightKeycapsFontFallbackName];
    v44 = [v8 symbolStyle];
    [v44 setKeycapsFallback:v43];

    v11 = [v8 symbolStyle];
    [v11 setFontSize:20.0];
    goto LABEL_15;
  }

LABEL_16:
  [(UIKBRenderFactory *)self scaleTraits:v8];

  return v8;
}

@end