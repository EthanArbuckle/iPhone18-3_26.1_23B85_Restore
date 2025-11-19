@interface UIKBRenderFactory_Car
- (double)carScale;
- (double)defaultKeyFontSize;
- (id)_traitsForKey:(id)a3 onKeyplane:(id)a4;
- (id)activeKeyColor;
- (id)backgroundTraitsForKeyplane:(id)a3;
- (id)displayContentsForKey:(id)a3;
- (id)dividerColor;
- (id)enabledKeyColor;
- (id)highlightedKeyColor;
- (id)lightKeycapsFontFallbackName;
- (id)lightKeycapsFontName;
- (id)lightPadKeycapsFontFallbackName;
- (id)lightPadKeycapsFontName;
- (id)lightTextFontName;
- (id)thinKeycapsFontFallbackName;
- (id)thinKeycapsFontName;
- (id)thinTextFontName;
- (void)_customizeGeometry:(id)a3 forKey:(id)a4 contents:(id)a5 onKeyplane:(id)a6;
- (void)customizeLanguageIndicatorTraitsForTraits:(id)a3;
@end

@implementation UIKBRenderFactory_Car

- (double)carScale
{
  [(UIKBRenderFactory *)self scale];
  v4 = v3;
  result = 2.0;
  if (v4 != 3.0)
  {
    [(UIKBRenderFactory *)self scale];
    return fmax(v6, 1.0);
  }

  return result;
}

- (id)dividerColor
{
  v2 = [(UIKBRenderFactory *)self renderConfig];
  v3 = [v2 lightKeyboard];
  v4 = UIKBColorCarLightDivider;
  if (!v3)
  {
    v4 = UIKBColorCarDarkDivider;
  }

  v5 = *v4;
  v6 = *v4;

  return v5;
}

- (id)enabledKeyColor
{
  v3 = [(UIKBRenderFactory *)self renderConfig];
  v4 = [v3 colorAdaptiveBackground];

  v5 = [(UIKBRenderFactory *)self renderConfig];
  v6 = [v5 lightKeyboard];
  v7 = UIKBColorWhite;
  if (!v4)
  {
    v7 = UIKBColorBlack_Alpha18;
  }

  v8 = UIKBColorWhite_Alpha30;
  if (!v4)
  {
    v8 = UIKBColorWhite_Alpha15;
  }

  if (!v6)
  {
    v7 = v8;
  }

  v9 = *v7;
  v10 = *v7;

  return v9;
}

- (id)activeKeyColor
{
  v2 = [(UIKBRenderFactory *)self renderConfig];
  v3 = [v2 lightKeyboard];
  v4 = UIKBColorKeyBlueKeyBackground;
  if (!v3)
  {
    v4 = UIKBColorCarTeal;
  }

  v5 = *v4;
  v6 = *v4;

  return v5;
}

- (id)highlightedKeyColor
{
  v2 = [(UIKBRenderFactory *)self renderConfig];
  v3 = [v2 lightKeyboard];
  v4 = UIKBColorWhite;
  if (!v3)
  {
    v4 = UIKBColorBlack;
  }

  v5 = *v4;
  v6 = *v4;

  return v5;
}

- (double)defaultKeyFontSize
{
  v3 = [(UIKBRenderFactory *)self renderConfig];
  if ([v3 usesCompactKeycapsFont])
  {
    v4 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleCallout"];
    [v4 pointSize];
    v6 = v5;
    [(UIKBRenderFactory_Car *)self carScale];
    v8 = v7;
  }

  else
  {
    [(UIKBRenderFactory_Car *)self carScale];
    v8 = v9;
    v6 = 32.0;
  }

  return v6 / v8;
}

- (id)lightKeycapsFontName
{
  v3 = [(UIKBRenderFactory *)self renderConfig];
  v4 = [v3 usesCompactKeycapsFont];

  v5 = [(UIKBRenderFactory *)self boldTextEnabled];
  v6 = @".Keycaps-Keys";
  if (v5)
  {
    v6 = @".PhoneKeyCaps";
  }

  v7 = UIKBRenderFactorySystemBoldCompactFontName;
  if (!v5)
  {
    v7 = UIKBRenderFactorySystemCompactFontName;
  }

  v8 = *v7;
  if (v4)
  {
    v6 = v8;
  }

  v9 = v6;

  return v9;
}

- (id)thinKeycapsFontName
{
  v3 = [(UIKBRenderFactory *)self renderConfig];
  v4 = [v3 usesCompactKeycapsFont];

  v5 = [(UIKBRenderFactory *)self boldTextEnabled];
  v6 = @".Keycaps-Popups";
  if (v5)
  {
    v6 = @".PhoneKeyCaps";
  }

  v7 = UIKBRenderFactorySystemBoldCompactFontName;
  if (!v5)
  {
    v7 = UIKBRenderFactorySystemCompactFontName;
  }

  v8 = *v7;
  if (v4)
  {
    v6 = v8;
  }

  v9 = v6;

  return v9;
}

- (id)lightPadKeycapsFontName
{
  v3 = [(UIKBRenderFactory *)self renderConfig];
  v4 = [v3 usesCompactKeycapsFont];

  v5 = [(UIKBRenderFactory *)self boldTextEnabled];
  v6 = @".KeycapsPad-Keys";
  if (v5)
  {
    v6 = @".PhoneKeyCaps";
  }

  v7 = UIKBRenderFactorySystemBoldCompactFontName;
  if (!v5)
  {
    v7 = UIKBRenderFactorySystemCompactFontName;
  }

  v8 = *v7;
  if (v4)
  {
    v6 = v8;
  }

  v9 = v6;

  return v9;
}

- (id)lightTextFontName
{
  v2 = [(UIKBRenderFactory *)self renderConfig];
  v3 = [v2 usesCompactKeycapsFont];

  v4 = UIKBRenderFactorySystemCompactFontName;
  if (!v3)
  {
    v4 = UIKBRenderFactorySystemFontName;
  }

  v5 = *v4;

  return v5;
}

- (id)thinTextFontName
{
  v2 = [(UIKBRenderFactory *)self renderConfig];
  v3 = [v2 usesCompactKeycapsFont];

  v4 = UIKBRenderFactorySystemCompactFontName;
  if (!v3)
  {
    v4 = UIKBRenderFactorySystemFontName;
  }

  v5 = *v4;

  return v5;
}

- (id)lightKeycapsFontFallbackName
{
  if ([(UIKBRenderFactory *)self boldTextEnabled])
  {
    v2 = @".PhoneKeyCaps";
  }

  else
  {
    v2 = @".Keycaps-Keys";
  }

  return v2;
}

- (id)thinKeycapsFontFallbackName
{
  if ([(UIKBRenderFactory *)self boldTextEnabled])
  {
    v2 = @".PhoneKeyCaps";
  }

  else
  {
    v2 = @".Keycaps-Popups";
  }

  return v2;
}

- (id)lightPadKeycapsFontFallbackName
{
  if ([(UIKBRenderFactory *)self boldTextEnabled])
  {
    v2 = @".PhoneKeyCaps";
  }

  else
  {
    v2 = @".KeycapsPad-Keys";
  }

  return v2;
}

- (id)displayContentsForKey:(id)a3
{
  v10.receiver = self;
  v10.super_class = UIKBRenderFactory_Car;
  v4 = [(UIKBRenderFactory *)&v10 displayContentsForKey:a3];
  v5 = [v4 displayStringImage];
  if (v5)
  {
    v6 = v5;
    [(UIKBRenderFactory *)self scale];
    v8 = v7;

    if (v8 == 1.0)
    {
      [v4 setForce1xImages:1];
    }
  }

  return v4;
}

- (id)backgroundTraitsForKeyplane:(id)a3
{
  v8.receiver = self;
  v8.super_class = UIKBRenderFactory_Car;
  v4 = [(UIKBRenderFactory *)&v8 backgroundTraitsForKeyplane:a3];
  v5 = [(UIKBRenderFactory_Car *)self dividerColor];
  v6 = [UIKBGradient gradientWithFlatColor:v5];
  [v4 setBackgroundGradient:v6];

  return v4;
}

- (void)_customizeGeometry:(id)a3 forKey:(id)a4 contents:(id)a5 onKeyplane:(id)a6
{
  v17 = a3;
  [v17 symbolFrame];
  [v17 setSymbolFrame:{v7 + 2.0, v9 + 3.0, v8 + -4.0, v10 + -6.0}];
  v11 = [(UIKBRenderFactory *)self renderConfig];
  v12 = [v11 colorAdaptiveBackground];

  if (v12)
  {
    [v17 paddedFrame];
    [v17 setFrame:{v13 + 1.5, v15 + 1.5, v14 + -3.0, v16 + -3.0}];
    [v17 frame];
    [v17 setPaddedFrame:?];
    [v17 frame];
    [v17 setDisplayFrame:?];
    [(UIKBRenderFactory_Car *)self carKeyRadius];
    [v17 setRoundRectRadius:?];
    [v17 setRoundRectCorners:-1];
  }
}

- (void)customizeLanguageIndicatorTraitsForTraits:(id)a3
{
  v8 = a3;
  v4 = [(UIKBRenderFactory_Car *)self enabledKeyColor];
  v5 = [UIKBGradient gradientWithFlatColor:v4];
  [v8 setBackgroundGradient:v5];

  v6 = [(UIKBRenderFactory_Car *)self dividerColor];
  v7 = [UIKBGradient gradientWithFlatColor:v6];
  [v8 setLayeredBackgroundGradient:v7];

  [v8 setBlurBlending:1];
}

- (id)_traitsForKey:(id)a3 onKeyplane:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 shape];
  v9 = [UIKBRenderGeometry geometryWithShape:v8];
  v10 = [UIKBRenderTraits traitsWithGeometry:v9];

  v11 = [v6 state] & 0xC;
  v12 = [v6 state] & 0x60;
  if (v11)
  {
    [(UIKBRenderFactory_Car *)self activeKeyColor];
  }

  else
  {
    [(UIKBRenderFactory_Car *)self enabledKeyColor];
  }
  v13 = ;
  if (v12)
  {
    v14 = [(UIKBRenderFactory *)self renderConfig];
    v15 = [v14 lightKeyboard];
    v16 = UIKBColorCarLightShift;
    if (!v15)
    {
      v16 = UIKBColorCarDarkShift;
    }

    v17 = *v16;

    v13 = v17;
  }

  v18 = [(UIKBRenderFactory *)self renderConfig];
  if ([v18 colorAdaptiveBackground])
  {
    v19 = [v6 interactionType];

    if (v19)
    {
      goto LABEL_12;
    }

    v18 = v13;
    v13 = @"UIKBColorClear";
  }

LABEL_12:
  v20 = [UIKBGradient gradientWithFlatColor:v13];
  [v10 setBackgroundGradient:v20];

  v21 = [(UIKBRenderFactory_Car *)self lightTextFontName];
  [(UIKBRenderFactory_Car *)self defaultKeyFontSize];
  v22 = [UIKBTextStyle styleWithFontName:v21 withFontSize:?];

  if ([(UIKBRenderFactory *)self useBlueThemingForKey:v6])
  {
    v23 = [(UIKBRenderFactory_Car *)self activeKeyColor];
    if (!v11)
    {
      goto LABEL_20;
    }

LABEL_19:
    v26 = [(UIKBRenderFactory_Car *)self highlightedKeyColor];

    v23 = v26;
    goto LABEL_20;
  }

  v24 = [(UIKBRenderFactory *)self renderConfig];
  if ([v24 lightKeyboard])
  {
    v25 = [(UIKBRenderFactory *)self blackKeycapColor];
  }

  else
  {
    v25 = @"UIKBColorWhite";
  }

  v23 = v25;

  if (v11)
  {
    goto LABEL_19;
  }

LABEL_20:
  if (v12)
  {
    v27 = [(UIKBRenderFactory_Car *)self dividerColor];

    v23 = v27;
  }

  v28 = [(UIKBRenderFactory_Car *)self displayContentsForKey:v6];
  if (![v6 displayType] || (objc_msgSend(v28, "displayString"), v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E696AB08], "alphanumericCharacterSet"), v44 = self, v30 = v23, v31 = v28, v32 = v6, v33 = v22, v34 = v10, v35 = v13, v36 = v7, v37 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v29, "rangeOfCharacterFromSet:", v37), v39 = v38, v37, v7 = v36, v13 = v35, v10 = v34, v22 = v33, v6 = v32, v28 = v31, v23 = v30, self = v44, v29, !v39))
  {
    v40 = [(UIKBRenderFactory_Car *)self lightKeycapsFontName];
    [v22 setFontName:v40];
  }

  [v22 setTextColor:v23];
  [v10 setSymbolStyle:v22];
  if ([v6 state] == 1)
  {
    v41 = [v10 symbolStyle];
    [v41 setTextOpacity:0.35];
  }

  v42 = [v10 geometry];
  [(UIKBRenderFactory_Car *)self _customizeGeometry:v42 forKey:v6 contents:v28 onKeyplane:v7];

  return v10;
}

@end