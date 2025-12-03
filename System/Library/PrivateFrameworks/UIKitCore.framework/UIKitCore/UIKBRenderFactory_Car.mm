@interface UIKBRenderFactory_Car
- (double)carScale;
- (double)defaultKeyFontSize;
- (id)_traitsForKey:(id)key onKeyplane:(id)keyplane;
- (id)activeKeyColor;
- (id)backgroundTraitsForKeyplane:(id)keyplane;
- (id)displayContentsForKey:(id)key;
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
- (void)_customizeGeometry:(id)geometry forKey:(id)key contents:(id)contents onKeyplane:(id)keyplane;
- (void)customizeLanguageIndicatorTraitsForTraits:(id)traits;
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
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  lightKeyboard = [renderConfig lightKeyboard];
  v4 = UIKBColorCarLightDivider;
  if (!lightKeyboard)
  {
    v4 = UIKBColorCarDarkDivider;
  }

  v5 = *v4;
  v6 = *v4;

  return v5;
}

- (id)enabledKeyColor
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  colorAdaptiveBackground = [renderConfig colorAdaptiveBackground];

  renderConfig2 = [(UIKBRenderFactory *)self renderConfig];
  lightKeyboard = [renderConfig2 lightKeyboard];
  v7 = UIKBColorWhite;
  if (!colorAdaptiveBackground)
  {
    v7 = UIKBColorBlack_Alpha18;
  }

  v8 = UIKBColorWhite_Alpha30;
  if (!colorAdaptiveBackground)
  {
    v8 = UIKBColorWhite_Alpha15;
  }

  if (!lightKeyboard)
  {
    v7 = v8;
  }

  v9 = *v7;
  v10 = *v7;

  return v9;
}

- (id)activeKeyColor
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  lightKeyboard = [renderConfig lightKeyboard];
  v4 = UIKBColorKeyBlueKeyBackground;
  if (!lightKeyboard)
  {
    v4 = UIKBColorCarTeal;
  }

  v5 = *v4;
  v6 = *v4;

  return v5;
}

- (id)highlightedKeyColor
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  lightKeyboard = [renderConfig lightKeyboard];
  v4 = UIKBColorWhite;
  if (!lightKeyboard)
  {
    v4 = UIKBColorBlack;
  }

  v5 = *v4;
  v6 = *v4;

  return v5;
}

- (double)defaultKeyFontSize
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  if ([renderConfig usesCompactKeycapsFont])
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
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  usesCompactKeycapsFont = [renderConfig usesCompactKeycapsFont];

  boldTextEnabled = [(UIKBRenderFactory *)self boldTextEnabled];
  v6 = @".Keycaps-Keys";
  if (boldTextEnabled)
  {
    v6 = @".PhoneKeyCaps";
  }

  v7 = UIKBRenderFactorySystemBoldCompactFontName;
  if (!boldTextEnabled)
  {
    v7 = UIKBRenderFactorySystemCompactFontName;
  }

  v8 = *v7;
  if (usesCompactKeycapsFont)
  {
    v6 = v8;
  }

  v9 = v6;

  return v9;
}

- (id)thinKeycapsFontName
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  usesCompactKeycapsFont = [renderConfig usesCompactKeycapsFont];

  boldTextEnabled = [(UIKBRenderFactory *)self boldTextEnabled];
  v6 = @".Keycaps-Popups";
  if (boldTextEnabled)
  {
    v6 = @".PhoneKeyCaps";
  }

  v7 = UIKBRenderFactorySystemBoldCompactFontName;
  if (!boldTextEnabled)
  {
    v7 = UIKBRenderFactorySystemCompactFontName;
  }

  v8 = *v7;
  if (usesCompactKeycapsFont)
  {
    v6 = v8;
  }

  v9 = v6;

  return v9;
}

- (id)lightPadKeycapsFontName
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  usesCompactKeycapsFont = [renderConfig usesCompactKeycapsFont];

  boldTextEnabled = [(UIKBRenderFactory *)self boldTextEnabled];
  v6 = @".KeycapsPad-Keys";
  if (boldTextEnabled)
  {
    v6 = @".PhoneKeyCaps";
  }

  v7 = UIKBRenderFactorySystemBoldCompactFontName;
  if (!boldTextEnabled)
  {
    v7 = UIKBRenderFactorySystemCompactFontName;
  }

  v8 = *v7;
  if (usesCompactKeycapsFont)
  {
    v6 = v8;
  }

  v9 = v6;

  return v9;
}

- (id)lightTextFontName
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  usesCompactKeycapsFont = [renderConfig usesCompactKeycapsFont];

  v4 = UIKBRenderFactorySystemCompactFontName;
  if (!usesCompactKeycapsFont)
  {
    v4 = UIKBRenderFactorySystemFontName;
  }

  v5 = *v4;

  return v5;
}

- (id)thinTextFontName
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  usesCompactKeycapsFont = [renderConfig usesCompactKeycapsFont];

  v4 = UIKBRenderFactorySystemCompactFontName;
  if (!usesCompactKeycapsFont)
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

- (id)displayContentsForKey:(id)key
{
  v10.receiver = self;
  v10.super_class = UIKBRenderFactory_Car;
  v4 = [(UIKBRenderFactory *)&v10 displayContentsForKey:key];
  displayStringImage = [v4 displayStringImage];
  if (displayStringImage)
  {
    v6 = displayStringImage;
    [(UIKBRenderFactory *)self scale];
    v8 = v7;

    if (v8 == 1.0)
    {
      [v4 setForce1xImages:1];
    }
  }

  return v4;
}

- (id)backgroundTraitsForKeyplane:(id)keyplane
{
  v8.receiver = self;
  v8.super_class = UIKBRenderFactory_Car;
  v4 = [(UIKBRenderFactory *)&v8 backgroundTraitsForKeyplane:keyplane];
  dividerColor = [(UIKBRenderFactory_Car *)self dividerColor];
  v6 = [UIKBGradient gradientWithFlatColor:dividerColor];
  [v4 setBackgroundGradient:v6];

  return v4;
}

- (void)_customizeGeometry:(id)geometry forKey:(id)key contents:(id)contents onKeyplane:(id)keyplane
{
  geometryCopy = geometry;
  [geometryCopy symbolFrame];
  [geometryCopy setSymbolFrame:{v7 + 2.0, v9 + 3.0, v8 + -4.0, v10 + -6.0}];
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  colorAdaptiveBackground = [renderConfig colorAdaptiveBackground];

  if (colorAdaptiveBackground)
  {
    [geometryCopy paddedFrame];
    [geometryCopy setFrame:{v13 + 1.5, v15 + 1.5, v14 + -3.0, v16 + -3.0}];
    [geometryCopy frame];
    [geometryCopy setPaddedFrame:?];
    [geometryCopy frame];
    [geometryCopy setDisplayFrame:?];
    [(UIKBRenderFactory_Car *)self carKeyRadius];
    [geometryCopy setRoundRectRadius:?];
    [geometryCopy setRoundRectCorners:-1];
  }
}

- (void)customizeLanguageIndicatorTraitsForTraits:(id)traits
{
  traitsCopy = traits;
  enabledKeyColor = [(UIKBRenderFactory_Car *)self enabledKeyColor];
  v5 = [UIKBGradient gradientWithFlatColor:enabledKeyColor];
  [traitsCopy setBackgroundGradient:v5];

  dividerColor = [(UIKBRenderFactory_Car *)self dividerColor];
  v7 = [UIKBGradient gradientWithFlatColor:dividerColor];
  [traitsCopy setLayeredBackgroundGradient:v7];

  [traitsCopy setBlurBlending:1];
}

- (id)_traitsForKey:(id)key onKeyplane:(id)keyplane
{
  keyCopy = key;
  keyplaneCopy = keyplane;
  shape = [keyCopy shape];
  v9 = [UIKBRenderGeometry geometryWithShape:shape];
  v10 = [UIKBRenderTraits traitsWithGeometry:v9];

  v11 = [keyCopy state] & 0xC;
  v12 = [keyCopy state] & 0x60;
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
    renderConfig = [(UIKBRenderFactory *)self renderConfig];
    lightKeyboard = [renderConfig lightKeyboard];
    v16 = UIKBColorCarLightShift;
    if (!lightKeyboard)
    {
      v16 = UIKBColorCarDarkShift;
    }

    v17 = *v16;

    v13 = v17;
  }

  renderConfig2 = [(UIKBRenderFactory *)self renderConfig];
  if ([renderConfig2 colorAdaptiveBackground])
  {
    interactionType = [keyCopy interactionType];

    if (interactionType)
    {
      goto LABEL_12;
    }

    renderConfig2 = v13;
    v13 = @"UIKBColorClear";
  }

LABEL_12:
  v20 = [UIKBGradient gradientWithFlatColor:v13];
  [v10 setBackgroundGradient:v20];

  lightTextFontName = [(UIKBRenderFactory_Car *)self lightTextFontName];
  [(UIKBRenderFactory_Car *)self defaultKeyFontSize];
  v22 = [UIKBTextStyle styleWithFontName:lightTextFontName withFontSize:?];

  if ([(UIKBRenderFactory *)self useBlueThemingForKey:keyCopy])
  {
    activeKeyColor = [(UIKBRenderFactory_Car *)self activeKeyColor];
    if (!v11)
    {
      goto LABEL_20;
    }

LABEL_19:
    highlightedKeyColor = [(UIKBRenderFactory_Car *)self highlightedKeyColor];

    activeKeyColor = highlightedKeyColor;
    goto LABEL_20;
  }

  renderConfig3 = [(UIKBRenderFactory *)self renderConfig];
  if ([renderConfig3 lightKeyboard])
  {
    blackKeycapColor = [(UIKBRenderFactory *)self blackKeycapColor];
  }

  else
  {
    blackKeycapColor = @"UIKBColorWhite";
  }

  activeKeyColor = blackKeycapColor;

  if (v11)
  {
    goto LABEL_19;
  }

LABEL_20:
  if (v12)
  {
    dividerColor = [(UIKBRenderFactory_Car *)self dividerColor];

    activeKeyColor = dividerColor;
  }

  v28 = [(UIKBRenderFactory_Car *)self displayContentsForKey:keyCopy];
  if (![keyCopy displayType] || (objc_msgSend(v28, "displayString"), v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E696AB08], "alphanumericCharacterSet"), v44 = self, v30 = activeKeyColor, v31 = v28, v32 = keyCopy, v33 = v22, v34 = v10, v35 = v13, v36 = keyplaneCopy, v37 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v29, "rangeOfCharacterFromSet:", v37), v39 = v38, v37, keyplaneCopy = v36, v13 = v35, v10 = v34, v22 = v33, keyCopy = v32, v28 = v31, activeKeyColor = v30, self = v44, v29, !v39))
  {
    lightKeycapsFontName = [(UIKBRenderFactory_Car *)self lightKeycapsFontName];
    [v22 setFontName:lightKeycapsFontName];
  }

  [v22 setTextColor:activeKeyColor];
  [v10 setSymbolStyle:v22];
  if ([keyCopy state] == 1)
  {
    symbolStyle = [v10 symbolStyle];
    [symbolStyle setTextOpacity:0.35];
  }

  geometry = [v10 geometry];
  [(UIKBRenderFactory_Car *)self _customizeGeometry:geometry forKey:keyCopy contents:v28 onKeyplane:keyplaneCopy];

  return v10;
}

@end