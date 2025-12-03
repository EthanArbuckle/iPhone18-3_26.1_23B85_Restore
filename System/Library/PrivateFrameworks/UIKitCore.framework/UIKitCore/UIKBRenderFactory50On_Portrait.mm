@interface UIKBRenderFactory50On_Portrait
- (UIEdgeInsets)symbolFrameInsets;
- (double)keyCornerRadius;
- (id)_traitsForKey:(id)key onKeyplane:(id)keyplane;
- (unint64_t)roundCornersForKey:(id)key onKeyplane:(id)keyplane;
- (void)_customizeTraits:(id)traits forPopupForKey:(id)key withRenderingContext:(id)context keycapsFontName:(id)name fallbackFontName:(id)fontName;
- (void)setupLayoutSegments;
@end

@implementation UIKBRenderFactory50On_Portrait

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

- (unint64_t)roundCornersForKey:(id)key onKeyplane:(id)keyplane
{
  v4 = ~[(UIKBRenderFactory50On_Portrait *)self edgesWithInsetsForKey:key onKeyplane:keyplane];
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

  defaultKeyBackgroundColorName = [(UIKBRenderFactory *)self defaultKeyBackgroundColorName];
  v22 = [UIKBGradient gradientWithFlatColor:defaultKeyBackgroundColorName];
  [traitsCopy setBackgroundGradient:v22];

  if ([keyCopy displayType] == 13 || objc_msgSend(keyCopy, "displayType") == 4 || objc_msgSend(keyCopy, "displayType") == 5)
  {
    symbolStyle2 = [traitsCopy symbolStyle];
    [symbolStyle2 setUsesSymbolImage:1];

    [(UIKBRenderFactory10Key *)self symbolImageControlKeyFontSize];
    v25 = v24;
    symbolStyle3 = [traitsCopy symbolStyle];
    [symbolStyle3 setFontSizeForSymbolImage:v25];
  }

  [(UIKBRenderFactory10Key *)self modifyTraitsForDetachedInputSwitcher:traitsCopy withKey:keyCopy];
}

- (id)_traitsForKey:(id)key onKeyplane:(id)keyplane
{
  keyCopy = key;
  v50.receiver = self;
  v50.super_class = UIKBRenderFactory50On_Portrait;
  v7 = [(UIKBRenderFactory10Key_Round *)&v50 _traitsForKey:keyCopy onKeyplane:keyplane];
  if ([keyCopy state] <= 3)
  {
    geometry = [v7 geometry];
    [geometry frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    geometry2 = [v7 geometry];
    [geometry2 setDisplayFrame:{v10, v12, v14, v16}];
  }

  displayType = [keyCopy displayType];
  name = [keyCopy name];
  v20 = [name isEqualToString:@"Facemark"];

  if (v20)
  {
    lightKeycapsFontName = [(UIKBRenderFactory50On_Portrait *)self lightKeycapsFontName];
    symbolStyle = [v7 symbolStyle];
    [symbolStyle setFontName:lightKeycapsFontName];

    lightKeycapsFontFallbackName = [(UIKBRenderFactory10Key *)self lightKeycapsFontFallbackName];
    symbolStyle2 = [v7 symbolStyle];
    [symbolStyle2 setKeycapsFallback:lightKeycapsFontFallbackName];

    symbolStyle3 = [v7 symbolStyle];
    symbolStyle5 = symbolStyle3;
    v27 = 20.0;
LABEL_24:
    [symbolStyle3 setFontSize:v27];
    goto LABEL_25;
  }

  displayString = [keyCopy displayString];
  if ([displayString length] == 1)
  {
    displayString2 = [keyCopy displayString];
    v30 = [@"年月日時分" rangeOfString:displayString2];

    if (v30 != 0x7FFFFFFFFFFFFFFFLL)
    {
      symbolStyle4 = [v7 symbolStyle];
      [symbolStyle4 setFontName:@"HiraKakuProN-W3"];

      symbolStyle5 = [v7 symbolStyle];
      [symbolStyle5 setKeycapsFallback:@"HiraKakuProN-W3"];
LABEL_25:

      goto LABEL_26;
    }
  }

  else
  {
  }

  if (displayType > 13)
  {
    if (displayType > 22)
    {
      if (displayType == 23)
      {
        renderConfig = [(UIKBRenderFactory *)self renderConfig];
        lightKeyboard = [renderConfig lightKeyboard];

        if (lightKeyboard)
        {
          blackKeycapColor = [(UIKBRenderFactory *)self blackKeycapColor];
          v43 = [UIKBTextStyle styleWithTextColor:blackKeycapColor];
          [v7 setSymbolStyle:v43];
        }

        goto LABEL_34;
      }

      if (displayType == 25)
      {
        [(UIKBRenderFactory50On_Portrait *)self spaceKeyFontSize];
        goto LABEL_23;
      }

      goto LABEL_32;
    }

    if (displayType != 14)
    {
      if (displayType == 21)
      {
        [(UIKBRenderFactory50On_Portrait *)self returnKeyFontSize];
        v34 = v33;
        symbolStyle6 = [v7 symbolStyle];
        [symbolStyle6 setFontSize:v34];

        symbolStyle7 = [v7 symbolStyle];
        usesSymbolImage = [symbolStyle7 usesSymbolImage];

        if (!usesSymbolImage)
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

  if ((displayType - 10) < 2)
  {
    goto LABEL_19;
  }

  if (displayType == 2)
  {
    [(UIKBRenderFactory50On_Portrait *)self keyplaneSwitchKeyFontSize];
    v45 = v44;
    symbolStyle8 = [v7 symbolStyle];
    [symbolStyle8 setFontSize:v45];

LABEL_34:
    symbolStyle9 = [v7 symbolStyle];
    [symbolStyle9 setUsesSymbolImage:1];

    [(UIKBRenderFactory10Key *)self symbolImageControlKeyFontSize];
    v49 = v48;
    symbolStyle5 = [v7 symbolStyle];
    [symbolStyle5 setFontSizeForSymbolImage:v49];
    goto LABEL_25;
  }

  if (displayType == 3)
  {
    [(UIKBRenderFactory50On_Portrait *)self deleteKeyFontSize];
LABEL_23:
    v38 = v32;
    symbolStyle3 = [v7 symbolStyle];
    symbolStyle5 = symbolStyle3;
    v27 = v38;
    goto LABEL_24;
  }

LABEL_32:
  if ([keyCopy interactionType] == 12 || objc_msgSend(keyCopy, "interactionType") == 17)
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