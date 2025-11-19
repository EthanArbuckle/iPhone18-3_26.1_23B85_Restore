@interface UIKBRenderFactory50On_Portrait
- (UIEdgeInsets)symbolFrameInsets;
- (double)keyCornerRadius;
- (id)_traitsForKey:(id)a3 onKeyplane:(id)a4;
- (unint64_t)roundCornersForKey:(id)a3 onKeyplane:(id)a4;
- (void)_customizeTraits:(id)a3 forPopupForKey:(id)a4 withRenderingContext:(id)a5 keycapsFontName:(id)a6 fallbackFontName:(id)a7;
- (void)setupLayoutSegments;
@end

@implementation UIKBRenderFactory50On_Portrait

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

- (UIEdgeInsets)symbolFrameInsets
{
  v2 = 4.0;
  v3 = 4.0;
  v4 = 4.0;
  v5 = 4.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (unint64_t)roundCornersForKey:(id)a3 onKeyplane:(id)a4
{
  v4 = ~[(UIKBRenderFactory50On_Portrait *)self edgesWithInsetsForKey:a3 onKeyplane:a4];
  v5 = (v4 & 3) == 0;
  v6 = 2;
  if ((v4 & 3) == 0)
  {
    v6 = 3;
  }

  if ((v4 & 9) == 0)
  {
    v5 = v6;
  }

  if ((v4 & 6) == 0)
  {
    v5 |= 4uLL;
  }

  if ((v4 & 0xC) != 0)
  {
    return v5;
  }

  else
  {
    return v5 | 8;
  }
}

- (void)_customizeTraits:(id)a3 forPopupForKey:(id)a4 withRenderingContext:(id)a5 keycapsFontName:(id)a6 fallbackFontName:(id)a7
{
  v27 = a3;
  v12 = a4;
  v13 = a7;
  v14 = a6;
  v15 = a5;
  [v27 removeAllRenderEffects];
  v16 = [UIKBTextStyle styleWithFontName:v14 withFallbackFontName:v13 withFontSize:22.0];

  [v27 setSymbolStyle:v16];
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

  v20 = [v27 symbolStyle];
  [v20 setTextColor:v19];

  if (v18)
  {
  }

  v21 = [(UIKBRenderFactory *)self defaultKeyBackgroundColorName];
  v22 = [UIKBGradient gradientWithFlatColor:v21];
  [v27 setBackgroundGradient:v22];

  if ([v12 displayType] == 13 || objc_msgSend(v12, "displayType") == 4 || objc_msgSend(v12, "displayType") == 5)
  {
    v23 = [v27 symbolStyle];
    [v23 setUsesSymbolImage:1];

    [(UIKBRenderFactory10Key *)self symbolImageControlKeyFontSize];
    v25 = v24;
    v26 = [v27 symbolStyle];
    [v26 setFontSizeForSymbolImage:v25];
  }

  [(UIKBRenderFactory10Key *)self modifyTraitsForDetachedInputSwitcher:v27 withKey:v12];
}

- (id)_traitsForKey:(id)a3 onKeyplane:(id)a4
{
  v6 = a3;
  v50.receiver = self;
  v50.super_class = UIKBRenderFactory50On_Portrait;
  v7 = [(UIKBRenderFactory10Key_Round *)&v50 _traitsForKey:v6 onKeyplane:a4];
  if ([v6 state] <= 3)
  {
    v8 = [v7 geometry];
    [v8 frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = [v7 geometry];
    [v17 setDisplayFrame:{v10, v12, v14, v16}];
  }

  v18 = [v6 displayType];
  v19 = [v6 name];
  v20 = [v19 isEqualToString:@"Facemark"];

  if (v20)
  {
    v21 = [(UIKBRenderFactory50On_Portrait *)self lightKeycapsFontName];
    v22 = [v7 symbolStyle];
    [v22 setFontName:v21];

    v23 = [(UIKBRenderFactory10Key *)self lightKeycapsFontFallbackName];
    v24 = [v7 symbolStyle];
    [v24 setKeycapsFallback:v23];

    v25 = [v7 symbolStyle];
    v26 = v25;
    v27 = 20.0;
LABEL_24:
    [v25 setFontSize:v27];
    goto LABEL_25;
  }

  v28 = [v6 displayString];
  if ([v28 length] == 1)
  {
    v29 = [v6 displayString];
    v30 = [@"年月日時分" rangeOfString:v29];

    if (v30 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v31 = [v7 symbolStyle];
      [v31 setFontName:@"HiraKakuProN-W3"];

      v26 = [v7 symbolStyle];
      [v26 setKeycapsFallback:@"HiraKakuProN-W3"];
LABEL_25:

      goto LABEL_26;
    }
  }

  else
  {
  }

  if (v18 > 13)
  {
    if (v18 > 22)
    {
      if (v18 == 23)
      {
        v40 = [(UIKBRenderFactory *)self renderConfig];
        v41 = [v40 lightKeyboard];

        if (v41)
        {
          v42 = [(UIKBRenderFactory *)self blackKeycapColor];
          v43 = [UIKBTextStyle styleWithTextColor:v42];
          [v7 setSymbolStyle:v43];
        }

        goto LABEL_34;
      }

      if (v18 == 25)
      {
        [(UIKBRenderFactory50On_Portrait *)self spaceKeyFontSize];
        goto LABEL_23;
      }

      goto LABEL_32;
    }

    if (v18 != 14)
    {
      if (v18 == 21)
      {
        [(UIKBRenderFactory50On_Portrait *)self returnKeyFontSize];
        v34 = v33;
        v35 = [v7 symbolStyle];
        [v35 setFontSize:v34];

        v36 = [v7 symbolStyle];
        v37 = [v36 usesSymbolImage];

        if (!v37)
        {
          goto LABEL_26;
        }

        [(UIKBRenderFactory10Key *)self symbolImageControlKeyFontSize];
        goto LABEL_23;
      }

      goto LABEL_32;
    }

LABEL_19:
    [(UIKBRenderFactory50On_Portrait *)self keyplaneSwitchKeyFontSize];
    goto LABEL_23;
  }

  if ((v18 - 10) < 2)
  {
    goto LABEL_19;
  }

  if (v18 == 2)
  {
    [(UIKBRenderFactory50On_Portrait *)self keyplaneSwitchKeyFontSize];
    v45 = v44;
    v46 = [v7 symbolStyle];
    [v46 setFontSize:v45];

LABEL_34:
    v47 = [v7 symbolStyle];
    [v47 setUsesSymbolImage:1];

    [(UIKBRenderFactory10Key *)self symbolImageControlKeyFontSize];
    v49 = v48;
    v26 = [v7 symbolStyle];
    [v26 setFontSizeForSymbolImage:v49];
    goto LABEL_25;
  }

  if (v18 == 3)
  {
    [(UIKBRenderFactory50On_Portrait *)self deleteKeyFontSize];
LABEL_23:
    v38 = v32;
    v25 = [v7 symbolStyle];
    v26 = v25;
    v27 = v38;
    goto LABEL_24;
  }

LABEL_32:
  if ([v6 interactionType] == 12 || objc_msgSend(v6, "interactionType") == 17)
  {
    goto LABEL_34;
  }

LABEL_26:

  return v7;
}

- (void)setupLayoutSegments
{
  [(UIKBRenderFactory50On_Portrait *)self controlColumnWidthFactor];

  [(UIKBRenderFactory10Key *)self setupColumnLayoutSegmentsWithControlWidth:?];
}

@end