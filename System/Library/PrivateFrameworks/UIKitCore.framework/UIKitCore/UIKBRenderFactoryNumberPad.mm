@interface UIKBRenderFactoryNumberPad
- (CGPoint)centerColumnLetterOffset;
- (CGPoint)centerColumnNumberOffset;
- (CGPoint)deleteGlyphOffset;
- (CGPoint)dictationGlyphOffset;
- (CGPoint)leftColumnLetterOffset;
- (CGPoint)leftColumnNumberOffset;
- (CGPoint)loneZeroOffset;
- (CGPoint)rightColumnLetterOffset;
- (CGPoint)rightColumnNumberOffset;
- (CGPoint)specialSymbolOffset;
- (UIEdgeInsets)dynamicInsets;
- (double)letterFontSize;
- (double)numberFontSize;
- (double)symbolImageControlKeyFontSize;
- (id)_traitsForKey:(id)key onKeyplane:(id)keyplane;
- (id)lightKeycapsFontFallbackName;
- (id)lightKeycapsFontName;
- (id)lightPadKeycapsFontFallbackName;
- (id)lightPadKeycapsFontName;
- (id)lightTextFontName;
- (id)thinKeycapsFontFallbackName;
- (id)thinKeycapsFontName;
- (id)thinTextFontName;
- (void)_customizeSymbolStyle:(id)style secondaryStyle:(id)secondaryStyle forKey:(id)key contents:(id)contents;
- (void)setupLayoutSegments;
@end

@implementation UIKBRenderFactoryNumberPad

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

  v7 = @"UIKBRenderFactorySystemCompactFontName";
  if (boldTextEnabled)
  {
    v7 = @".SFCompact-Bold";
  }

  if (usesCompactKeycapsFont)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  return v8;
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

  v7 = @"UIKBRenderFactorySystemCompactFontName";
  if (boldTextEnabled)
  {
    v7 = @".SFCompact-Bold";
  }

  if (usesCompactKeycapsFont)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  return v8;
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

  v7 = @"UIKBRenderFactorySystemCompactFontName";
  if (boldTextEnabled)
  {
    v7 = @".SFCompact-Bold";
  }

  if (usesCompactKeycapsFont)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  return v8;
}

- (id)lightTextFontName
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  usesCompactKeycapsFont = [renderConfig usesCompactKeycapsFont];

  if (usesCompactKeycapsFont)
  {
    return @"UIKBRenderFactoryWordsSystemCompactFontName";
  }

  else
  {
    return @"UIKBRenderFactorySystemFontName";
  }
}

- (id)thinTextFontName
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  usesCompactKeycapsFont = [renderConfig usesCompactKeycapsFont];

  if (usesCompactKeycapsFont)
  {
    return @"UIKBRenderFactoryWordsSystemCompactFontName";
  }

  else
  {
    return @"UIKBRenderFactorySystemFontName";
  }
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

- (double)numberFontSize
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  if ([renderConfig usesCompactKeycapsFont])
  {
    v3 = 23.0;
  }

  else
  {
    v3 = 25.0;
  }

  return v3;
}

- (double)letterFontSize
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  [renderConfig usesCompactKeycapsFont];

  return 10.0;
}

- (double)symbolImageControlKeyFontSize
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  if ([renderConfig usesCompactKeycapsFont])
  {
    v3 = 23.0;
  }

  else
  {
    v3 = 22.0;
  }

  return v3;
}

- (CGPoint)deleteGlyphOffset
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  usesCompactKeycapsFont = [renderConfig usesCompactKeycapsFont];
  if (usesCompactKeycapsFont)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = 1.0;
  }

  if (usesCompactKeycapsFont)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 1.5;
  }

  v6 = v4;
  v7 = v5;
  result.y = v7;
  result.x = v6;
  return result;
}

- (CGPoint)dictationGlyphOffset
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  [renderConfig usesCompactKeycapsFont];

  v3 = 0.0;
  v4 = 0.0;
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)leftColumnNumberOffset
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  if ([renderConfig usesCompactKeycapsFont])
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 2.0;
  }

  v4 = -3.5;
  v5 = v3;
  result.y = v4;
  result.x = v5;
  return result;
}

- (CGPoint)leftColumnLetterOffset
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  if ([renderConfig usesCompactKeycapsFont])
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 2.0;
  }

  v4 = 15.0;
  v5 = v3;
  result.y = v4;
  result.x = v5;
  return result;
}

- (CGPoint)centerColumnNumberOffset
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  [renderConfig usesCompactKeycapsFont];

  v3 = 0.0;
  v4 = -3.5;
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)centerColumnLetterOffset
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  [renderConfig usesCompactKeycapsFont];

  v3 = 0.0;
  v4 = 15.0;
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)rightColumnNumberOffset
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  [renderConfig usesCompactKeycapsFont];

  v3 = 0.0;
  v4 = -3.5;
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)rightColumnLetterOffset
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  [renderConfig usesCompactKeycapsFont];

  v3 = 0.0;
  v4 = 15.0;
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)loneZeroOffset
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  if ([renderConfig usesCompactKeycapsFont])
  {
    v3 = -3.5;
  }

  else
  {
    v3 = 2.0;
  }

  v4 = 0.0;
  v5 = v3;
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)specialSymbolOffset
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  [renderConfig usesCompactKeycapsFont];

  v3 = 0.0;
  v4 = 3.0;
  result.y = v4;
  result.x = v3;
  return result;
}

- (UIEdgeInsets)dynamicInsets
{
  v2 = 3.0;
  v3 = 3.0;
  v4 = 3.0;
  v5 = 3.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)_customizeSymbolStyle:(id)style secondaryStyle:(id)secondaryStyle forKey:(id)key contents:(id)contents
{
  styleCopy = style;
  secondaryStyleCopy = secondaryStyle;
  keyCopy = key;
  contentsCopy = contents;
  if ([keyCopy interactionType] == 4)
  {
    renderConfig = [(UIKBRenderFactory *)self renderConfig];
    usesCompactKeycapsFont = [renderConfig usesCompactKeycapsFont];
    v15 = 15.0;
    if (usesCompactKeycapsFont)
    {
      v15 = 23.0;
    }

    [styleCopy setFontSize:v15];

    [(UIKBRenderFactoryNumberPad *)self deleteGlyphOffset];
    [styleCopy setTextOffset:?];
    [styleCopy setUsesSymbolImage:1];
  }

  if ([keyCopy interactionType] == 5)
  {
    renderConfig2 = [(UIKBRenderFactory *)self renderConfig];
    usesCompactKeycapsFont2 = [renderConfig2 usesCompactKeycapsFont];
    v18 = 15.0;
    if (usesCompactKeycapsFont2)
    {
      v18 = 23.0;
    }

    [styleCopy setFontSize:v18];

    [(UIKBRenderFactoryNumberPad *)self dictationGlyphOffset];
    [styleCopy setTextOffset:?];
LABEL_9:
    v19 = styleCopy;
    v20 = 1;
LABEL_17:
    [v19 setUsesSymbolImage:v20];
    goto LABEL_18;
  }

  if ([keyCopy interactionType] == 11 || objc_msgSend(keyCopy, "interactionType") == 9)
  {
    renderConfig3 = [(UIKBRenderFactory *)self renderConfig];
    usesCompactKeycapsFont3 = [renderConfig3 usesCompactKeycapsFont];
    v23 = 22.0;
    if (usesCompactKeycapsFont3)
    {
      v23 = 23.0;
    }

    [styleCopy setFontSize:v23];

    renderConfig4 = [(UIKBRenderFactory *)self renderConfig];
    usesCompactKeycapsFont4 = [renderConfig4 usesCompactKeycapsFont];
    v26 = 0.0;
    if (!usesCompactKeycapsFont4)
    {
      v26 = 2.0;
    }

    [styleCopy setTextOffset:{0.0, v26}];

    v20 = [keyCopy interactionType] == 9;
    v19 = styleCopy;
    goto LABEL_17;
  }

  if ([keyCopy interactionType] == 14)
  {
    displayString = [contentsCopy displayString];
    v41 = [displayString isEqualToString:@"+*#"];

    if (v41)
    {
      renderConfig5 = [(UIKBRenderFactory *)self renderConfig];
      usesCompactKeycapsFont5 = [renderConfig5 usesCompactKeycapsFont];

      if (usesCompactKeycapsFont5)
      {
        [styleCopy setNeedsFontCase:1];
        [styleCopy setFontWeight:*off_1E70ECD28];
      }

      lightKeycapsFontName = [(UIKBRenderFactoryNumberPad *)self lightKeycapsFontName];
      [styleCopy setFontName:lightKeycapsFontName];

      lightKeycapsFontFallbackName = [(UIKBRenderFactoryNumberPad *)self lightKeycapsFontFallbackName];
      [styleCopy setKeycapsFallback:lightKeycapsFontFallbackName];

      if (_AXSEnhanceTextLegibilityEnabled())
      {
        [styleCopy setFontName:@"PhonepadTwo"];
      }

      [styleCopy setKerning:3.0];
      renderConfig6 = [(UIKBRenderFactory *)self renderConfig];
      if ([renderConfig6 usesCompactKeycapsFont])
      {
        v47 = 0.0;
      }

      else
      {
        v47 = 3.0;
      }

      [styleCopy setTextOffset:{0.0, v47}];

      [styleCopy setSelector:1];
    }

    else
    {
      lightTextFontName = [(UIKBRenderFactoryNumberPad *)self lightTextFontName];
      [styleCopy setFontName:lightTextFontName];

      lightTextFontFallbackName = [(UIKBRenderFactoryNumberPad *)self lightTextFontFallbackName];
      [styleCopy setKeycapsFallback:lightTextFontFallbackName];

      renderConfig7 = [(UIKBRenderFactory *)self renderConfig];
      usesCompactKeycapsFont6 = [renderConfig7 usesCompactKeycapsFont];
      v61 = 20.0;
      if (usesCompactKeycapsFont6)
      {
        v61 = 23.0;
      }

      [styleCopy setFontSize:v61];

      renderConfig8 = [(UIKBRenderFactory *)self renderConfig];
      usesCompactKeycapsFont7 = [renderConfig8 usesCompactKeycapsFont];
      v64 = 0.0;
      if (!usesCompactKeycapsFont7)
      {
        v64 = 1.0;
      }

      [styleCopy setTextOffset:{0.0, v64}];
    }

    goto LABEL_9;
  }

  name = [keyCopy name];
  if ([name hasSuffix:@"Pause"])
  {
  }

  else
  {
    name2 = [keyCopy name];
    v71 = [name2 hasSuffix:@"Wait"];

    if (!v71)
    {
      goto LABEL_18;
    }
  }

  [styleCopy setFontSize:16.0];
  lightTextFontName2 = [(UIKBRenderFactoryNumberPad *)self lightTextFontName];
  [styleCopy setFontName:lightTextFontName2];

  [styleCopy setFontGrade:2];
  lightTextFontFallbackName2 = [(UIKBRenderFactoryNumberPad *)self lightTextFontFallbackName];
  [styleCopy setKeycapsFallback:lightTextFontFallbackName2];

  renderConfig9 = [(UIKBRenderFactory *)self renderConfig];
  usesCompactKeycapsFont8 = [renderConfig9 usesCompactKeycapsFont];
  v76 = 0.0;
  if (!usesCompactKeycapsFont8)
  {
    v76 = 1.0;
  }

  [styleCopy setTextOffset:{0.0, v76}];

LABEL_18:
  displayString2 = [contentsCopy displayString];
  v28 = [displayString2 isEqualToString:@"."];

  if (v28)
  {
    v29 = 0.0;
    v30 = -1.0;
LABEL_20:
    [styleCopy setTextOffset:{v29, v30}];
    goto LABEL_31;
  }

  displayString3 = [contentsCopy displayString];
  if ([displayString3 isEqualToString:@"#"])
  {
    goto LABEL_24;
  }

  displayString4 = [contentsCopy displayString];
  if ([displayString4 isEqualToString:@"*"])
  {

LABEL_24:
LABEL_25:
    renderConfig10 = [(UIKBRenderFactory *)self renderConfig];
    usesCompactKeycapsFont9 = [renderConfig10 usesCompactKeycapsFont];
    v35 = 42.0;
    if (usesCompactKeycapsFont9)
    {
      v35 = 30.0;
    }

    [styleCopy setFontSize:v35];

    lightKeycapsFontName2 = [(UIKBRenderFactoryNumberPad *)self lightKeycapsFontName];
    [styleCopy setFontName:lightKeycapsFontName2];

    lightKeycapsFontFallbackName2 = [(UIKBRenderFactoryNumberPad *)self lightKeycapsFontFallbackName];
    [styleCopy setKeycapsFallback:lightKeycapsFontFallbackName2];

    renderConfig11 = [(UIKBRenderFactory *)self renderConfig];
    usesCompactKeycapsFont10 = [renderConfig11 usesCompactKeycapsFont];

    if (usesCompactKeycapsFont10)
    {
      [styleCopy setNeedsFontCase:1];
      [styleCopy setFontWeight:*off_1E70ECD18];
    }

    [(UIKBRenderFactoryNumberPad *)self specialSymbolOffset];
    [styleCopy setTextOffset:?];
    [styleCopy setSelector:1];
    if (_AXSEnhanceTextLegibilityEnabled())
    {
      [styleCopy setFontName:@"PhonepadTwo"];
    }

    goto LABEL_31;
  }

  displayString5 = [contentsCopy displayString];
  v49 = [displayString5 isEqualToString:@"+"];

  if (v49)
  {
    goto LABEL_25;
  }

  name3 = [keyCopy name];
  if ([name3 hasPrefix:@"NumberPad-"])
  {
    name4 = [keyCopy name];
    v52 = [name4 hasSuffix:@"-0-Plus"];

    if (v52)
    {
      renderConfig12 = [(UIKBRenderFactory *)self renderConfig];
      usesCompactKeycapsFont11 = [renderConfig12 usesCompactKeycapsFont];
      v55 = 0.0;
      if (!usesCompactKeycapsFont11)
      {
        v55 = 3.0;
      }

      [styleCopy setTextOffset:{0.0, v55}];

      [secondaryStyleCopy setTextOffset:{18.0, 1.0}];
      [secondaryStyleCopy setFontSize:22.0];
      goto LABEL_31;
    }
  }

  else
  {
  }

  name5 = [keyCopy name];
  if ([name5 hasPrefix:@"NumberPad-"])
  {
    secondaryDisplayStrings = [contentsCopy secondaryDisplayStrings];
    v67 = [secondaryDisplayStrings count];

    if (!v67)
    {
      name6 = [keyCopy name];
      v69 = [name6 hasSuffix:@"-0"];

      if (v69)
      {
        [(UIKBRenderFactoryNumberPad *)self loneZeroOffset];
      }

      else
      {
        v29 = 0.0;
        v30 = 0.0;
      }

      goto LABEL_20;
    }
  }

  else
  {
  }

LABEL_31:
  if ([styleCopy usesSymbolImage])
  {
    [(UIKBRenderFactoryNumberPad *)self symbolImageControlKeyFontSize];
    [styleCopy setFontSizeForSymbolImage:?];
    [styleCopy setFontWeightForSymbolImage:*off_1E70ECD18];
  }
}

- (id)_traitsForKey:(id)key onKeyplane:(id)keyplane
{
  v73[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  keyplaneCopy = keyplane;
  v72.receiver = self;
  v72.super_class = UIKBRenderFactoryNumberPad;
  v8 = [(UIKBRenderFactory *)&v72 _traitsForKey:keyCopy onKeyplane:keyplaneCopy];
  [v8 setBlendForm:{-[UIKBRenderFactory enabledBlendForm](self, "enabledBlendForm")}];
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  [v8 setUsesDarkAppearance:{objc_msgSend(renderConfig, "lightKeyboard") ^ 1}];

  geometry = [v8 geometry];
  [(UIKBRenderFactory *)self keyCornerRadius];
  [geometry setRoundRectRadius:?];
  [geometry setRoundRectCorners:-1];
  [keyplaneCopy frame];
  [geometry adjustForConsistentGapsWithSize:6.0 inFrame:{6.0, v11, v12, v13, v14}];
  v15 = [(UIKBRenderFactory *)self displayContentsForKey:keyCopy];
  lightTextFontName = [(UIKBRenderFactoryNumberPad *)self lightTextFontName];
  lightTextFontFallbackName = [(UIKBRenderFactoryNumberPad *)self lightTextFontFallbackName];
  [(UIKBRenderFactoryNumberPad *)self numberFontSize];
  v18 = [UIKBTextStyle styleWithFontName:lightTextFontName withFallbackFontName:lightTextFontFallbackName withFontSize:?];
  [v8 setSymbolStyle:v18];

  symbolStyle = [v8 symbolStyle];
  [symbolStyle setMinFontSize:9.0];

  lightTextFontName2 = [(UIKBRenderFactoryNumberPad *)self lightTextFontName];
  lightTextFontFallbackName2 = [(UIKBRenderFactoryNumberPad *)self lightTextFontFallbackName];
  [(UIKBRenderFactoryNumberPad *)self letterFontSize];
  v22 = [UIKBTextStyle styleWithFontName:lightTextFontName2 withFallbackFontName:lightTextFontFallbackName2 withFontSize:?];

  renderConfig2 = [(UIKBRenderFactory *)self renderConfig];
  LODWORD(lightTextFontFallbackName2) = [renderConfig2 usesCompactKeycapsFont];

  if (lightTextFontFallbackName2)
  {
    [v22 setFontWeight:*off_1E70ECD20];
    [v22 setNeedsFontCase:0];
  }

  else
  {
    [v22 setFontWeight:*off_1E70ECD08];
  }

  [v22 setKerning:2.0];
  v73[0] = v22;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:1];
  [v8 setSecondarySymbolStyles:v24];

  [keyplaneCopy frame];
  v26 = v25;
  [keyCopy frame];
  v29 = v26 * 0.5;
  if (v27 + v28 >= v29)
  {
    [keyCopy frame];
    if (v35 <= v29)
    {
      [(UIKBRenderFactoryNumberPad *)self centerColumnNumberOffset];
      v42 = v41;
      v44 = v43;
      symbolStyle2 = [v8 symbolStyle];
      [symbolStyle2 setTextOffset:{v42, v44}];

      [(UIKBRenderFactoryNumberPad *)self centerColumnLetterOffset];
    }

    else
    {
      [(UIKBRenderFactoryNumberPad *)self rightColumnNumberOffset];
      v37 = v36;
      v39 = v38;
      symbolStyle3 = [v8 symbolStyle];
      [symbolStyle3 setTextOffset:{v37, v39}];

      [(UIKBRenderFactoryNumberPad *)self rightColumnLetterOffset];
    }
  }

  else
  {
    [(UIKBRenderFactoryNumberPad *)self leftColumnNumberOffset];
    v31 = v30;
    v33 = v32;
    symbolStyle4 = [v8 symbolStyle];
    [symbolStyle4 setTextOffset:{v31, v33}];

    [(UIKBRenderFactoryNumberPad *)self leftColumnLetterOffset];
  }

  [v22 setTextOffset:?];
  symbolStyle5 = [v8 symbolStyle];
  v71 = v15;
  [(UIKBRenderFactoryNumberPad *)self _customizeSymbolStyle:symbolStyle5 secondaryStyle:v22 forKey:keyCopy contents:v15];

  renderConfig3 = [(UIKBRenderFactory *)self renderConfig];
  whiteText = [renderConfig3 whiteText];
  v49 = whiteText;
  if (whiteText)
  {
    blackKeycapColor = @"UIKBColorWhite";
  }

  else
  {
    blackKeycapColor = [(UIKBRenderFactory *)self blackKeycapColor];
  }

  symbolStyle6 = [v8 symbolStyle];
  [symbolStyle6 setTextColor:blackKeycapColor];

  if ((v49 & 1) == 0)
  {
  }

  if ([keyCopy state] == 1)
  {
    symbolStyle7 = [v8 symbolStyle];
    [symbolStyle7 setTextOpacity:0.35];
  }

  symbolStyle8 = [v8 symbolStyle];
  textColor = [symbolStyle8 textColor];
  [v22 setTextColor:textColor];

  symbolStyle9 = [v8 symbolStyle];
  [symbolStyle9 textOpacity];
  [v22 setTextOpacity:?];

  state = [keyCopy state];
  defaultKeyBackgroundColorName = [(UIKBRenderFactory *)self defaultKeyBackgroundColorName];
  if ((state & 4) != 0)
  {
    renderConfig4 = [(UIKBRenderFactory *)self renderConfig];
    lightKeyboard = [renderConfig4 lightKeyboard];
    v60 = UIKBColorKeyGrayKeyLightBackgroundMedium;
    if (!lightKeyboard)
    {
      v60 = UIKBColorKeyGrayKeyDarkBackground;
    }

    v61 = *v60;

    defaultKeyBackgroundColorName = v61;
  }

  renderConfig5 = [(UIKBRenderFactory *)self renderConfig];
  if (![renderConfig5 colorAdaptiveBackground])
  {
    goto LABEL_29;
  }

  if ([keyCopy interactionType] == 11 || objc_msgSend(keyCopy, "interactionType") == 14 || objc_msgSend(keyCopy, "interactionType") == 4 || !objc_msgSend(keyCopy, "interactionType"))
  {

    goto LABEL_28;
  }

  displayString = [v71 displayString];
  v70 = [displayString isEqualToString:@"."];

  if (v70)
  {
LABEL_28:
    renderConfig5 = defaultKeyBackgroundColorName;
    defaultKeyBackgroundColorName = @"UIKBColorClear";
LABEL_29:
  }

  v64 = (state >> 2) & 1;
  v65 = [UIKBGradient gradientWithFlatColor:defaultKeyBackgroundColorName];
  [v8 setBackgroundGradient:v65];

  [v8 setControlOpacities:v64];
  renderConfig6 = [(UIKBRenderFactory *)self renderConfig];
  LOBYTE(v65) = [renderConfig6 colorAdaptiveBackground];

  if ((v65 & 1) == 0)
  {
    defaultKeyShadowColorName = [(UIKBRenderFactory *)self defaultKeyShadowColorName];
    v68 = [UIKBEdgeEffect effectWithColor:defaultKeyShadowColorName edges:4 inset:-1.0 weight:1.0];
    [v8 addRenderEffect:v68];
  }

  return v8;
}

- (void)setupLayoutSegments
{
  v12 = [UIKBRenderTraits traitsWithSymbolStyle:0];
  [v12 setControlOpacities:1];
  controlKeyBackgroundColorName = [(UIKBRenderFactoryNumberPad *)self controlKeyBackgroundColorName];
  v4 = [UIKBGradient gradientWithFlatColor:controlKeyBackgroundColorName];
  [v12 setBackgroundGradient:v4];

  v5 = +[UIKBNullEffect nullEffect];
  [v12 addRenderEffect:v5];

  v6 = [UIKBRenderFactoryLayoutSegment segmentWithTraits:v12];
  [v6 setKeyStates:2];
  [v6 addLayoutRect:0 asTriangle:{0.0, 0.75, 0.33, 0.25}];
  [v6 addLayoutRect:0 asTriangle:{0.66, 0.75, 0.33, 0.25}];
  [(UIKBRenderFactory *)self addLayoutSegment:v6];
  v7 = [UIKBRenderTraits traitsWithSymbolStyle:0];
  [v7 setControlOpacities:0];
  controlKeyBackgroundColorName2 = [(UIKBRenderFactoryNumberPad *)self controlKeyBackgroundColorName];
  v9 = [UIKBGradient gradientWithFlatColor:controlKeyBackgroundColorName2];
  [v7 setBackgroundGradient:v9];

  v10 = +[UIKBNullEffect nullEffect];
  [v7 addRenderEffect:v10];

  v11 = [UIKBRenderFactoryLayoutSegment segmentWithTraits:v7];
  [v11 setKeyStates:4];
  [v11 addLayoutRect:0 asTriangle:{0.0, 0.75, 0.33, 0.25}];
  [v11 addLayoutRect:0 asTriangle:{0.66, 0.75, 0.33, 0.25}];
  [(UIKBRenderFactory *)self addLayoutSegment:v11];
}

@end