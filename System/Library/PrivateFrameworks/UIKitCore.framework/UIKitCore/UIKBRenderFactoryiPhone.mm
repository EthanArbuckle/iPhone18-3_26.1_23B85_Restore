@interface UIKBRenderFactoryiPhone
+ (id)_textOffsetHints;
- ($89C9DF7554150EC42DA90319EED2ADED)customizedOffsetForString:(SEL)string isPrimary:(id)primary isLandscape:(BOOL)landscape withFrame:(BOOL)frame;
- (BOOL)_popupMenuStyleForKey:(id)key;
- (BOOL)_popupStyleForKey:(id)key;
- (BOOL)_shouldConfigureSecondarySymbolStyleForSpaceKey:(id)key;
- (BOOL)isCustomizedKeyStyle;
- (BOOL)needsSmallerFontSizeForKey:(id)key;
- (BOOL)shouldOverlayAlternateTagKey:(id)key onKeyplane:(id)keyplane;
- (CGPoint)ZWNJKeyOffset;
- (CGPoint)boldKeyOffset;
- (CGPoint)conjunctStringKeyOffsetTelugu;
- (CGPoint)copyKeyOffset;
- (CGPoint)cutKeyOffset;
- (CGPoint)deleteKeyOffset;
- (CGPoint)dictationKeyOffset;
- (CGPoint)dismissKeyOffset;
- (CGPoint)gurmukhiEkOnkarOffset;
- (CGPoint)internationalKeyOffset;
- (CGPoint)leftArrowKeyOffset;
- (CGPoint)more123KeyOffset;
- (CGPoint)moreABCKeyOffset;
- (CGPoint)moreABCKeyWideCellOffset;
- (CGPoint)pasteKeyOffset;
- (CGPoint)popupSymbolTextOffset;
- (CGPoint)realEmojiKeyOffset;
- (CGPoint)returnKeyOffset;
- (CGPoint)rightArrowKeyOffset;
- (CGPoint)secondaryShiftKeyOffset;
- (CGPoint)shiftKeyOffset;
- (CGPoint)stringKeyOffset;
- (CGPoint)stringKeyOffsetBengali;
- (CGPoint)stringKeyOffsetDevanagari;
- (CGPoint)stringKeyOffsetGujarati;
- (CGPoint)stringKeyOffsetGurmukhi;
- (CGPoint)stringKeyOffsetKannada;
- (CGPoint)stringKeyOffsetMalayalam;
- (CGPoint)stringKeyOffsetOriya;
- (CGPoint)stringKeyOffsetTamil;
- (CGPoint)stringKeyOffsetTelugu;
- (CGPoint)symbolImageControlKeyOffset;
- (CGPoint)undoKeyOffset;
- (CGPoint)variantAnnotationTextOffset;
- (CGPoint)variantSymbolTextOffset;
- (CGPoint)zhuyinFirstToneKeyOffset;
- (UIEdgeInsets)dynamicInsets;
- (UIEdgeInsets)dynamicInsetsForNumberOfRows:(unint64_t)rows;
- (UIEdgeInsets)variantDisplayFrameInsets;
- (UIEdgeInsets)variantPaddedFrameInsets;
- (UIEdgeInsets)variantSymbolFrameInsets;
- (UIEdgeInsets)wideShadowPaddleInsets;
- (double)deleteKeyFontSize;
- (double)dualStringBottomAdditionalOffsetForDisplayContents:(id)contents;
- (double)hintNoneKeyFontSize;
- (double)keyCornerRadius;
- (double)moreABCKeyFontSize;
- (double)moreABCKeyWideCellFontSize;
- (double)moreKeyFontSize;
- (double)returnKeyFontSize;
- (double)shiftKeyFontSize;
- (double)stringKeyFontSize;
- (id)_textStyleForSpaceKey;
- (id)_traitsForKey:(id)key onKeyplane:(id)keyplane;
- (id)activeControlKeyTraits;
- (id)controlKeyTraits;
- (id)lightKeycapsFontFallbackName;
- (id)lightKeycapsFontName;
- (id)lightPadKeycapsFontFallbackName;
- (id)lightPadKeycapsFontName;
- (id)lightTextFontName;
- (id)shiftDeleteGlyphTraits;
- (id)shiftLockControlKeyTraits;
- (id)shiftedControlKeyTraits;
- (id)thinKeycapsFontFallbackName;
- (id)thinKeycapsFontName;
- (id)thinTextFontName;
- (id)variantGeometriesForGeometry:(id)geometry variantCount:(unint64_t)count rowLimit:(int64_t)limit annotationIndex:(unint64_t)index;
- (void)_configureTraitsForPopupStyle:(id)style withKey:(id)key onKeyplane:(id)keyplane;
- (void)_customizeGeometry:(id)geometry forKey:(id)key contents:(id)contents;
- (void)_customizeLetterSymbolStyle:(id)style forKey:(id)key;
- (void)_customizePopupTraits:(id)traits forKey:(id)key onKeyplane:(id)keyplane;
- (void)_customizeSymbolStyle:(id)style forKey:(id)key contents:(id)contents;
- (void)_customizeTraits:(id)traits forMultiscriptKey:(id)key style:(int64_t)style;
- (void)_customizeTraits:(id)traits forPredictionCellKey:(id)key;
- (void)_customizeTraits:(id)traits forThaiMultiKey:(id)key;
- (void)_customizeTraits:(id)traits forZhuyinGridDualStringKey:(id)key;
- (void)setupLayoutSegments;
@end

@implementation UIKBRenderFactoryiPhone

- (double)stringKeyFontSize
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

- (double)keyCornerRadius
{
  renderingContext = [(UIKBRenderFactory *)self renderingContext];
  isColorAdaptiveNonLinearCarplayKeyboard = [renderingContext isColorAdaptiveNonLinearCarplayKeyboard];

  v5 = 6.0;
  if ((isColorAdaptiveNonLinearCarplayKeyboard & 1) == 0)
  {
    renderConfig = [(UIKBRenderFactory *)self renderConfig];
    if ([renderConfig colorAdaptiveBackground])
    {
      v5 = 8.0;
    }

    else
    {
      v5 = 5.0;
    }
  }

  return v5;
}

- (double)shiftKeyFontSize
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  if ([renderConfig usesCompactKeycapsFont])
  {
    v3 = 23.0;
  }

  else
  {
    v3 = 18.0;
  }

  return v3;
}

- (double)hintNoneKeyFontSize
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  if ([renderConfig usesCompactKeycapsFont])
  {
    v3 = 23.0;
  }

  else
  {
    v3 = 15.0;
  }

  return v3;
}

- (double)deleteKeyFontSize
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  if ([renderConfig usesCompactKeycapsFont])
  {
    v3 = 23.0;
  }

  else
  {
    v3 = 15.0;
  }

  return v3;
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

- (double)moreKeyFontSize
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  if ([renderConfig usesCompactKeycapsFont])
  {
    v3 = 19.0;
  }

  else
  {
    v3 = 16.0;
  }

  return v3;
}

- (double)returnKeyFontSize
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  if ([renderConfig usesCompactKeycapsFont])
  {
    v3 = 19.0;
  }

  else
  {
    v3 = 16.0;
  }

  return v3;
}

- (CGPoint)symbolImageControlKeyOffset
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  usesCompactKeycapsFont = [renderConfig usesCompactKeycapsFont];
  if (usesCompactKeycapsFont)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = *MEMORY[0x1E695EFF8];
  }

  if (usesCompactKeycapsFont)
  {
    v5 = -1.0;
  }

  else
  {
    v5 = *(MEMORY[0x1E695EFF8] + 8);
  }

  v6 = v4;
  v7 = v5;
  result.y = v7;
  result.x = v6;
  return result;
}

- (CGPoint)shiftKeyOffset
{
  v2 = 0.0;
  v3 = 0.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (id)_textStyleForSpaceKey
{
  spaceKeySecondarySymbolFontName = [(UIKBRenderFactoryiPhone *)self spaceKeySecondarySymbolFontName];
  v3 = [UIKBTextStyle styleWithFontName:spaceKeySecondarySymbolFontName withFontSize:13.5];

  return v3;
}

- (id)shiftedControlKeyTraits
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  lightKeyboard = [renderConfig lightKeyboard];

  if (lightKeyboard)
  {
    renderConfig2 = [(UIKBRenderFactory *)self renderConfig];
    if ([renderConfig2 lightKeyboard])
    {
      [(UIKBRenderFactoryiPhone *)self activeControlKeyTraits];
    }

    else
    {
      [(UIKBRenderFactoryiPhone *)self controlKeyTraits];
    }
    shiftLockControlKeyTraits = ;

    renderConfig3 = [(UIKBRenderFactory *)self renderConfig];
    animatedBackground = [renderConfig3 animatedBackground];

    if (animatedBackground)
    {
      [shiftLockControlKeyTraits setBlurBlending:1];
      v9 = [UIKBGradient gradientWithFlatColor:@"UIKBColorWhite_Alpha25"];
      [shiftLockControlKeyTraits setLayeredForegroundGradient:v9];
    }

    renderConfig4 = [(UIKBRenderFactory *)self renderConfig];
    if ([renderConfig4 lightKeyboard])
    {
      blackKeycapColor = [(UIKBRenderFactory *)self blackKeycapColor];
    }

    else
    {
      blackKeycapColor = @"UIKBColorWhite_Alpha20";
    }

    v12 = blackKeycapColor;

    v13 = [UIKBTextStyle styleWithTextColor:v12];
    [shiftLockControlKeyTraits setSymbolStyle:v13];
  }

  else
  {
    shiftLockControlKeyTraits = [(UIKBRenderFactoryiPhone *)self shiftLockControlKeyTraits];
  }

  return shiftLockControlKeyTraits;
}

- (void)setupLayoutSegments
{
  [(UIKBRenderFactoryiPhone *)self _row4ControlSegmentWidthLeft];
  v4 = v3;
  [(UIKBRenderFactoryiPhone *)self _row4ControlSegmentWidthRight];
  v6 = 1.0 - v5;
  [(UIKBRenderFactoryiPhone *)self _row4ControlSegmentWidthRight];
  v8 = v7;
  controlKeyTraits = [(UIKBRenderFactoryiPhone *)self controlKeyTraits];
  v9 = [UIKBRenderFactoryLayoutSegment segmentWithTraits:controlKeyTraits];
  [v9 setKeyStates:3];
  [v9 addRelativeLayoutRectFromEdge:10 ofCachedKey:@"Shift-Key"];
  [v9 addRelativeLayoutRectFromEdge:10 ofCachedKey:@"Delete-Key"];
  [v9 addLayoutRect:0 asTriangle:{0.0, 0.8, v4, 0.2}];
  [v9 addLayoutRect:0 asTriangle:{v6, 0.8, v8, 0.2}];
  [(UIKBRenderFactory *)self addLayoutSegment:v9];
  shiftDeleteGlyphTraits = [(UIKBRenderFactoryiPhone *)self shiftDeleteGlyphTraits];
  v11 = [UIKBRenderFactoryLayoutSegment segmentWithTraits:shiftDeleteGlyphTraits];

  [v11 setKeyStates:3];
  [v11 addRelativeLayoutRectFromEdge:10 ofCachedKey:@"Shift-Key"];
  [v11 addRelativeLayoutRectFromEdge:10 ofCachedKey:@"Delete-Key"];
  [(UIKBRenderFactory *)self addLayoutSegment:v11];
  v12 = [UIKBRenderFactoryLayoutSegment segmentWithTraits:controlKeyTraits];
  [v12 setKeyStates:4];
  [v12 addLayoutRect:0 asTriangle:{0.0, 0.75, 1.0, 0.25}];
  [(UIKBRenderFactory *)self addLayoutSegment:v12];
  shiftedControlKeyTraits = [(UIKBRenderFactoryiPhone *)self shiftedControlKeyTraits];
  v14 = [UIKBRenderFactoryLayoutSegment segmentWithTraits:shiftedControlKeyTraits];

  [v14 setKeyStates:100];
  [v14 addRelativeLayoutRectFromEdge:10 ofCachedKey:@"Shift-Key"];
  [(UIKBRenderFactory *)self addLayoutSegment:v14];
  shiftLockControlKeyTraits = [(UIKBRenderFactoryiPhone *)self shiftLockControlKeyTraits];
  v16 = [UIKBRenderFactoryLayoutSegment segmentWithTraits:shiftLockControlKeyTraits];

  [v16 setKeyStates:8];
  [v16 addRelativeLayoutRectFromEdge:10 ofCachedKey:@"Shift-Key"];
  [(UIKBRenderFactory *)self addLayoutSegment:v16];
  activeControlKeyTraits = [(UIKBRenderFactoryiPhone *)self activeControlKeyTraits];
  v18 = [UIKBRenderFactoryLayoutSegment segmentWithTraits:activeControlKeyTraits];
  [v18 setKeyStates:4];
  [v18 addRelativeLayoutRectFromEdge:10 ofCachedKey:@"Delete-Key"];
  [v18 addLayoutRect:0 asTriangle:{0.0, 0.8, v4, 0.2}];
  [v18 addLayoutRect:0 asTriangle:{v6, 0.8, v8, 0.2}];
  [(UIKBRenderFactory *)self addLayoutSegment:v18];
}

- (id)controlKeyTraits
{
  v3 = [UIKBRenderTraits traitsWithSymbolStyle:0];
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  colorAdaptiveBackground = [renderConfig colorAdaptiveBackground];

  if ((colorAdaptiveBackground & 1) == 0)
  {
    [v3 setControlOpacities:1];
    controlKeyBackgroundColorName = [(UIKBRenderFactory *)self controlKeyBackgroundColorName];
    v7 = [UIKBGradient gradientWithFlatColor:controlKeyBackgroundColorName];
    [v3 setBackgroundGradient:v7];

    controlKeyForegroundColorName = [(UIKBRenderFactory *)self controlKeyForegroundColorName];
    if (controlKeyForegroundColorName)
    {
      v9 = [UIKBGradient gradientWithFlatColor:controlKeyForegroundColorName];
      [v3 setLayeredForegroundGradient:v9];
    }

    else
    {
      [v3 setLayeredForegroundGradient:0];
    }

    renderConfig2 = [(UIKBRenderFactory *)self renderConfig];
    colorAdaptiveBackground2 = [renderConfig2 colorAdaptiveBackground];

    if ((colorAdaptiveBackground2 & 1) == 0)
    {
      controlKeyShadowColorName = [(UIKBRenderFactory *)self controlKeyShadowColorName];
      v13 = [UIKBEdgeEffect effectWithColor:controlKeyShadowColorName edges:4 inset:-1.0 weight:1.0];
      [v3 addRenderEffect:v13];
    }
  }

  return v3;
}

- (id)shiftDeleteGlyphTraits
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = [UIKBRenderTraits traitsWithSymbolStyle:0];
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  lightKeyboard = [renderConfig lightKeyboard];

  if (lightKeyboard)
  {
    v6 = [UIKBTextStyle styleWithTextColor:@"UIKBColorBlack_Alpha10"];
    [v6 setTextOffset:{2.0, 0.0}];
    v9[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    [v3 setSecondarySymbolStyles:v7];
  }

  return v3;
}

- (id)shiftLockControlKeyTraits
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  lightKeyboard = [renderConfig lightKeyboard];

  if (lightKeyboard)
  {
    shiftedControlKeyTraits = [(UIKBRenderFactoryiPhone *)self shiftedControlKeyTraits];
  }

  else
  {
    shiftedControlKeyTraits = +[UIKBRenderTraits emptyTraits];
    [shiftedControlKeyTraits setControlOpacities:1];
    v6 = [UIKBGradient gradientWithFlatColor:@"UIKBColorWhite_Alpha80"];
    [shiftedControlKeyTraits setBackgroundGradient:v6];

    renderConfig2 = [(UIKBRenderFactory *)self renderConfig];
    LODWORD(v6) = [renderConfig2 animatedBackground];

    if (v6)
    {
      [shiftedControlKeyTraits setBlurBlending:1];
      v8 = [UIKBGradient gradientWithFlatColor:@"UIKBColorWhite_Alpha75"];
      [shiftedControlKeyTraits setLayeredForegroundGradient:v8];
    }

    v9 = [UIKBEdgeEffect effectWithColor:@"UIKBColorBlack_Alpha45" edges:4 inset:-1.0 weight:1.0];
    [shiftedControlKeyTraits addRenderEffect:v9];
  }

  return shiftedControlKeyTraits;
}

- (id)activeControlKeyTraits
{
  v3 = [UIKBRenderTraits traitsWithSymbolStyle:0];
  [v3 setControlOpacities:0];
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  if ([renderConfig lightKeyboard])
  {
    defaultKeyBackgroundColorName = [(UIKBRenderFactory *)self defaultKeyBackgroundColorName];
  }

  else
  {
    defaultKeyBackgroundColorName = @"UIKBColorKeyGrayKeyLightBackground";
  }

  v6 = defaultKeyBackgroundColorName;

  v7 = [UIKBGradient gradientWithFlatColor:v6];
  [v3 setBackgroundGradient:v7];

  v8 = [UIKBGradient gradientWithFlatColor:@"UIKBColorClear"];
  [v3 setLayeredForegroundGradient:v8];

  renderConfig2 = [(UIKBRenderFactory *)self renderConfig];
  colorAdaptiveBackground = [renderConfig2 colorAdaptiveBackground];

  if ((colorAdaptiveBackground & 1) == 0)
  {
    controlKeyShadowColorName = [(UIKBRenderFactory *)self controlKeyShadowColorName];
    v12 = [UIKBEdgeEffect effectWithColor:controlKeyShadowColorName edges:4 inset:-1.0 weight:1.0];
    [v3 addRenderEffect:v12];
  }

  return v3;
}

- (BOOL)shouldOverlayAlternateTagKey:(id)key onKeyplane:(id)keyplane
{
  keyCopy = key;
  v6 = [keyplane subtreeWithType:3];
  v7 = [v6 rowSetOfType:9];
  if (v7)
  {
    name = [keyCopy name];
    v9 = [name hasSuffix:@"Tag-Symbol"];
  }

  else
  {
    v9 = 0;
  }

  return v9;
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

- (double)moreABCKeyFontSize
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  if ([renderConfig usesCompactKeycapsFont])
  {
    v3 = 19.0;
  }

  else
  {
    v3 = 13.0;
  }

  return v3;
}

- (double)moreABCKeyWideCellFontSize
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  if ([renderConfig usesCompactKeycapsFont])
  {
    v3 = 19.0;
  }

  else
  {
    v3 = 16.0;
  }

  return v3;
}

- (CGPoint)stringKeyOffset
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  if ([renderConfig usesCompactKeycapsFont])
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 1.0;
  }

  v4 = 0.0;
  v5 = v3;
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)returnKeyOffset
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  if ([renderConfig usesCompactKeycapsFont])
  {
    v3 = -2.0;
  }

  else
  {
    v3 = -0.5;
  }

  v4 = 0.0;
  v5 = v3;
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)leftArrowKeyOffset
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  if ([renderConfig usesCompactKeycapsFont])
  {
    v3 = -1.0;
  }

  else
  {
    v3 = 0.0;
  }

  v4 = 0.0;
  v5 = v3;
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)rightArrowKeyOffset
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  if ([renderConfig usesCompactKeycapsFont])
  {
    v3 = -1.0;
  }

  else
  {
    v3 = 0.0;
  }

  v4 = 0.0;
  v5 = v3;
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)cutKeyOffset
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  if ([renderConfig usesCompactKeycapsFont])
  {
    v3 = -1.0;
  }

  else
  {
    v3 = 0.0;
  }

  v4 = 0.0;
  v5 = v3;
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)copyKeyOffset
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  if ([renderConfig usesCompactKeycapsFont])
  {
    v3 = -1.0;
  }

  else
  {
    v3 = 0.0;
  }

  v4 = 0.0;
  v5 = v3;
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)pasteKeyOffset
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  if ([renderConfig usesCompactKeycapsFont])
  {
    v3 = -1.0;
  }

  else
  {
    v3 = 0.0;
  }

  v4 = 0.0;
  v5 = v3;
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)boldKeyOffset
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  if ([renderConfig usesCompactKeycapsFont])
  {
    v3 = -1.0;
  }

  else
  {
    v3 = 0.0;
  }

  v4 = 0.0;
  v5 = v3;
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)undoKeyOffset
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  if ([renderConfig usesCompactKeycapsFont])
  {
    v3 = -1.0;
  }

  else
  {
    v3 = 0.0;
  }

  v4 = 0.0;
  v5 = v3;
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)dismissKeyOffset
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  if ([renderConfig usesCompactKeycapsFont])
  {
    v3 = -1.0;
  }

  else
  {
    v3 = 0.0;
  }

  v4 = 0.0;
  v5 = v3;
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)internationalKeyOffset
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  if ([renderConfig usesCompactKeycapsFont])
  {
    v3 = -1.0;
  }

  else
  {
    v3 = -0.5;
  }

  v4 = 0.0;
  v5 = v3;
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)realEmojiKeyOffset
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  if ([renderConfig usesCompactKeycapsFont])
  {
    v3 = -1.0;
  }

  else
  {
    v3 = 0.0;
  }

  v4 = 0.0;
  v5 = v3;
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)dictationKeyOffset
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  usesCompactKeycapsFont = [renderConfig usesCompactKeycapsFont];
  if (usesCompactKeycapsFont)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = -0.5;
  }

  if (usesCompactKeycapsFont)
  {
    v5 = -1.0;
  }

  else
  {
    v5 = 0.0;
  }

  v6 = v4;
  v7 = v5;
  result.y = v7;
  result.x = v6;
  return result;
}

- (CGPoint)more123KeyOffset
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  if ([renderConfig usesCompactKeycapsFont])
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 1.0;
  }

  v4 = 0.0;
  v5 = v3;
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)moreABCKeyOffset
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  if ([renderConfig usesCompactKeycapsFont])
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 0.5;
  }

  v4 = 0.0;
  v5 = v3;
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)moreABCKeyWideCellOffset
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  if ([renderConfig usesCompactKeycapsFont])
  {
    v3 = -1.0;
  }

  else
  {
    v3 = 1.0;
  }

  v4 = 0.0;
  v5 = v3;
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)secondaryShiftKeyOffset
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  if ([renderConfig usesCompactKeycapsFont])
  {
    v3 = 0.0;
  }

  else
  {
    v3 = -0.5;
  }

  v4 = 0.0;
  v5 = v3;
  result.y = v4;
  result.x = v5;
  return result;
}

- (CGPoint)deleteKeyOffset
{
  v2 = 0.0;
  v3 = 0.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)ZWNJKeyOffset
{
  v2 = 0.0;
  v3 = 0.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)zhuyinFirstToneKeyOffset
{
  v2 = -1.0;
  v3 = 1.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)gurmukhiEkOnkarOffset
{
  v2 = -2.0;
  v3 = 1.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)stringKeyOffsetBengali
{
  v2 = 0.0;
  v3 = 0.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)stringKeyOffsetDevanagari
{
  v2 = 0.0;
  v3 = 0.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)stringKeyOffsetGujarati
{
  v2 = 0.0;
  v3 = 0.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)stringKeyOffsetGurmukhi
{
  v2 = 0.0;
  v3 = 0.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)stringKeyOffsetKannada
{
  v2 = 0.0;
  v3 = 0.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)stringKeyOffsetMalayalam
{
  v2 = 0.0;
  v3 = 0.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)stringKeyOffsetOriya
{
  v2 = 0.0;
  v3 = 0.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)stringKeyOffsetTamil
{
  v2 = 0.0;
  v3 = 0.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)stringKeyOffsetTelugu
{
  v2 = 0.0;
  v3 = 0.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)conjunctStringKeyOffsetTelugu
{
  v2 = 0.0;
  v3 = -3.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (UIEdgeInsets)dynamicInsets
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 12.0;
  v5 = 2.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (UIEdgeInsets)dynamicInsetsForNumberOfRows:(unint64_t)rows
{
  if (rows > 4)
  {
    dynamicFactory = [(UIKBRenderFactory *)self dynamicFactory];
    v3 = 0.0;
    v9 = 1.0;
    if (dynamicFactory)
    {
      v6 = 1.0;
    }

    else
    {
      v6 = 0.0;
    }

    if (dynamicFactory)
    {
      v9 = 2.0;
    }

    if (rows == 5)
    {
      v5 = v9;
    }

    else
    {
      v5 = v6;
    }

    if (rows == 5)
    {
      v6 = v9;
    }

    v4 = 0.0;
  }

  else
  {
    [(UIKBRenderFactoryiPhone *)self dynamicInsets];
  }

  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (BOOL)needsSmallerFontSizeForKey:(id)key
{
  keyCopy = key;
  renderingContext = [(UIKBRenderFactory *)self renderingContext];
  isColorAdaptiveNonLinearCarplayKeyboard = [renderingContext isColorAdaptiveNonLinearCarplayKeyboard];

  if ((isColorAdaptiveNonLinearCarplayKeyboard & 1) == 0 && ([keyCopy displayType] == 3 || objc_msgSend(keyCopy, "displayType") == 23 || objc_msgSend(keyCopy, "displayType") == 51 || objc_msgSend(keyCopy, "interactionType") == 38) && (-[UIKBRenderFactoryiPhone skinnyKeyThreshold](self, "skinnyKeyThreshold"), v7 > 0.0))
  {
    [keyCopy paddedFrame];
    v9 = v8;
    [(UIKBRenderFactoryiPhone *)self skinnyKeyThreshold];
    v11 = v9 < v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_customizeGeometry:(id)geometry forKey:(id)key contents:(id)contents
{
  geometryCopy = geometry;
  keyCopy = key;
  contentsCopy = contents;
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  colorAdaptiveBackground = [renderConfig colorAdaptiveBackground];

  if ((colorAdaptiveBackground & 1) != 0 || (-[UIKBRenderFactory scale](self, "scale"), v12 > 2.0) || ([keyCopy paddedFrame], v13 = 4.0, v14 > 42.0))
  {
    [(UIKBRenderFactoryiPhone *)self keyCornerRadius];
  }

  [geometryCopy setRoundRectRadius:v13];
  if ([keyCopy displayTypeHint] == 12)
  {
    renderConfig2 = [(UIKBRenderFactory *)self renderConfig];
    colorAdaptiveBackground2 = [renderConfig2 colorAdaptiveBackground];
    v17 = 8.0;
    if (colorAdaptiveBackground2)
    {
      v17 = 24.0;
    }

    [geometryCopy setRoundRectRadius:v17];
  }

  [geometryCopy paddedFrame];
  [geometryCopy setSymbolFrame:{v18 + 2.0, v20 + 1.0, v19 + -4.0, v21 + -3.0}];
  [geometryCopy symbolFrame];
  [geometryCopy setPaddedFrame:{v22 + 0.0, v23 + 0.0}];
  if ([keyCopy displayType] == 23 || objc_msgSend(keyCopy, "displayType") == 3)
  {
    displayString = [contentsCopy displayString];

    [geometryCopy paddedFrame];
    if (displayString)
    {
      [geometryCopy setSymbolFrame:{round(v25 + (v27 + -20.0) * 0.5), round(v26 + (v28 + -20.0) * 0.5), 20.0, 20.0}];
      [geometryCopy symbolFrame];
      v29 = -5.0;
      v30 = -5.0;
    }

    else
    {
      v29 = 3.0;
      v30 = 3.0;
    }

    v33 = CGRectInset(*&v25, v29, v30);
    [geometryCopy setSymbolFrame:{v33.origin.x, v33.origin.y, v33.size.width, v33.size.height}];
  }

  if (![keyCopy displayType] || objc_msgSend(keyCopy, "displayType") == 7 || objc_msgSend(keyCopy, "displayType") == 8)
  {
    [geometryCopy symbolFrame];
    v35 = CGRectInset(v34, -2.0, 0.0);
    [geometryCopy setSymbolFrame:{v35.origin.x, v35.origin.y, v35.size.width, v35.size.height}];
  }
}

- (void)_customizeSymbolStyle:(id)style forKey:(id)key contents:(id)contents
{
  styleCopy = style;
  keyCopy = key;
  contentsCopy = contents;
  renderingContext = [(UIKBRenderFactory *)self renderingContext];
  if ([renderingContext isColorAdaptiveNonLinearCarplayKeyboard])
  {
    [(UIKBRenderFactoryiPhone *)self carPlayFontSize];
  }

  else
  {
    [(UIKBRenderFactoryiPhone *)self symbolImageControlKeyFontSize];
  }

  v12 = v11;

  v13 = *off_1E70ECD28;
  [styleCopy setNeedsFontCase:1];
  if ([keyCopy displayType] == 13)
  {
    [(UIKBRenderFactoryiPhone *)self internationalKeyOffset];
LABEL_10:
    [styleCopy setTextOffset:?];
LABEL_11:
    [styleCopy setUsesSymbolImage:1];
    [styleCopy setFontGrade:2];
    goto LABEL_12;
  }

  if ([keyCopy displayType] == 9)
  {
    [(UIKBRenderFactoryiPhone *)self realEmojiKeyOffset];
    goto LABEL_10;
  }

  if ([keyCopy displayType] == 4)
  {
    [(UIKBRenderFactoryiPhone *)self dictationKeyOffset];
    goto LABEL_10;
  }

  if ([keyCopy displayType] == 3)
  {
    renderingContext2 = [(UIKBRenderFactory *)self renderingContext];
    if ([renderingContext2 isColorAdaptiveNonLinearCarplayKeyboard])
    {
      [(UIKBRenderFactoryiPhone *)self carPlayFontSize];
    }

    else
    {
      [(UIKBRenderFactoryiPhone *)self deleteKeyFontSize];
    }

    [styleCopy setFontSize:?];

    [(UIKBRenderFactoryiPhone *)self deleteKeyOffset];
    [styleCopy setTextOffset:?];
    goto LABEL_27;
  }

  if ([keyCopy displayType] != 23)
  {
    if ([keyCopy displayType] == 51 || objc_msgSend(keyCopy, "interactionType") == 38)
    {
LABEL_27:
      [styleCopy setUsesSymbolImage:1];
      goto LABEL_44;
    }

    name = [keyCopy name];
    v19 = [name hasSuffix:@"Chinese-Facemark"];

    if (v19)
    {
      renderingContext3 = [(UIKBRenderFactory *)self renderingContext];
      if ([renderingContext3 isColorAdaptiveNonLinearCarplayKeyboard])
      {
        [(UIKBRenderFactoryiPhone *)self carPlayFontSize];
      }

      else
      {
        [(UIKBRenderFactoryiPhone *)self stringKeyFontSize];
      }

      [styleCopy setFontSize:?];

      goto LABEL_51;
    }

    if ([keyCopy displayType] == 18)
    {
      lightTextFontName = [(UIKBRenderFactoryiPhone *)self lightTextFontName];
      [styleCopy setFontName:lightTextFontName];

      lightTextFontFallbackName = [(UIKBRenderFactoryiPhone *)self lightTextFontFallbackName];
      [styleCopy setKeycapsFallback:lightTextFontFallbackName];

      renderingContext4 = [(UIKBRenderFactory *)self renderingContext];
      if ([renderingContext4 isColorAdaptiveNonLinearCarplayKeyboard])
      {
        [(UIKBRenderFactoryiPhone *)self carPlayFontSize];
      }

      else
      {
        [(UIKBRenderFactoryiPhone *)self moreKeyFontSize];
      }

      [styleCopy setFontSize:?];

      [(UIKBRenderFactoryiPhone *)self more123KeyOffset];
      v35 = v34;
      v37 = v36;
      if ([keyCopy displayTypeHint] == 1)
      {
        v38 = [keyCopy BOOLForProperty:@"More-Key-Merged"];
        renderingContext5 = [(UIKBRenderFactory *)self renderingContext];
        isColorAdaptiveNonLinearCarplayKeyboard = [renderingContext5 isColorAdaptiveNonLinearCarplayKeyboard];
        if (v38)
        {
          if (isColorAdaptiveNonLinearCarplayKeyboard)
          {
            [(UIKBRenderFactoryiPhone *)self carPlayFontSize];
          }

          else
          {
            [(UIKBRenderFactoryiPhone *)self moreABCKeyWideCellFontSize];
          }

          [styleCopy setFontSize:?];

          [(UIKBRenderFactoryiPhone *)self moreABCKeyWideCellOffset];
        }

        else
        {
          if (isColorAdaptiveNonLinearCarplayKeyboard)
          {
            [(UIKBRenderFactoryiPhone *)self carPlayFontSize];
          }

          else
          {
            [(UIKBRenderFactoryiPhone *)self moreABCKeyFontSize];
          }

          [styleCopy setFontSize:?];

          [(UIKBRenderFactoryiPhone *)self moreABCKeyOffset];
        }

        v35 = v57;
        v37 = v58;
      }

      displayString = [keyCopy displayString];

      if (displayString == @"")
      {
        [styleCopy setUsesSymbolImage:1];
        [styleCopy setFontGrade:2];
      }

      v54 = styleCopy;
      v29 = v35;
      v30 = v37;
      goto LABEL_90;
    }

    if ([keyCopy displayType] != 21 && objc_msgSend(keyCopy, "displayType") != 25 && objc_msgSend(keyCopy, "displayType") != 27)
    {
      if ([keyCopy displayType] == 42)
      {
        lightTextFontName2 = [(UIKBRenderFactoryiPhone *)self lightTextFontName];
        [styleCopy setFontName:lightTextFontName2];

        lightTextFontFallbackName2 = [(UIKBRenderFactoryiPhone *)self lightTextFontFallbackName];
        [styleCopy setKeycapsFallback:lightTextFontFallbackName2];

        [(UIKBRenderFactoryiPhone *)self assistKeyFontSize];
        [styleCopy setFontSize:?];
        [(UIKBRenderFactoryiPhone *)self cutKeyOffset];
      }

      else if ([keyCopy displayType] == 43)
      {
        lightTextFontName3 = [(UIKBRenderFactoryiPhone *)self lightTextFontName];
        [styleCopy setFontName:lightTextFontName3];

        lightTextFontFallbackName3 = [(UIKBRenderFactoryiPhone *)self lightTextFontFallbackName];
        [styleCopy setKeycapsFallback:lightTextFontFallbackName3];

        [(UIKBRenderFactoryiPhone *)self assistKeyFontSize];
        [styleCopy setFontSize:?];
        [(UIKBRenderFactoryiPhone *)self copyKeyOffset];
      }

      else if ([keyCopy displayType] == 44)
      {
        lightTextFontName4 = [(UIKBRenderFactoryiPhone *)self lightTextFontName];
        [styleCopy setFontName:lightTextFontName4];

        lightTextFontFallbackName4 = [(UIKBRenderFactoryiPhone *)self lightTextFontFallbackName];
        [styleCopy setKeycapsFallback:lightTextFontFallbackName4];

        [(UIKBRenderFactoryiPhone *)self assistKeyFontSize];
        [styleCopy setFontSize:?];
        [(UIKBRenderFactoryiPhone *)self pasteKeyOffset];
      }

      else if ([keyCopy displayType] == 39)
      {
        lightTextFontName5 = [(UIKBRenderFactoryiPhone *)self lightTextFontName];
        [styleCopy setFontName:lightTextFontName5];

        lightTextFontFallbackName5 = [(UIKBRenderFactoryiPhone *)self lightTextFontFallbackName];
        [styleCopy setKeycapsFallback:lightTextFontFallbackName5];

        [(UIKBRenderFactoryiPhone *)self assistKeyFontSize];
        [styleCopy setFontSize:?];
        [(UIKBRenderFactoryiPhone *)self boldKeyOffset];
      }

      else
      {
        if ([keyCopy interactionType] != 17)
        {
          if ([keyCopy displayType] == 45)
          {
            [(UIKBRenderFactoryiPhone *)self leftArrowKeyOffset];
            goto LABEL_10;
          }

          if ([keyCopy displayType] == 46)
          {
            [(UIKBRenderFactoryiPhone *)self rightArrowKeyOffset];
            goto LABEL_10;
          }

          if ([keyCopy displayType] == 5)
          {
            [(UIKBRenderFactoryiPhone *)self dismissKeyOffset];
            goto LABEL_10;
          }

          name2 = [keyCopy name];
          v69 = [name2 isEqualToString:@"Zhuyin-Letter-FIRST_TONE"];

          if (v69)
          {
            renderingContext6 = [(UIKBRenderFactory *)self renderingContext];
            if ([renderingContext6 isColorAdaptiveNonLinearCarplayKeyboard])
            {
              [(UIKBRenderFactoryiPhone *)self carPlayFontSize];
            }

            else
            {
              [(UIKBRenderFactoryiPhone *)self zhuyinFirstToneKeyFontSize];
            }

            [styleCopy setFontSize:?];

            [(UIKBRenderFactoryiPhone *)self zhuyinFirstToneKeyOffset];
            goto LABEL_77;
          }

          representedString = [keyCopy representedString];
          v72 = [representedString isEqualToString:@"‌"];

          if (v72)
          {
            [(UIKBRenderFactoryiPhone *)self ZWNJKeyOffset];
            goto LABEL_77;
          }

          representedString2 = [keyCopy representedString];
          v74 = [representedString2 isEqualToString:@"ੴ"];

          if (v74)
          {
            renderingContext7 = [(UIKBRenderFactory *)self renderingContext];
            if ([renderingContext7 isColorAdaptiveNonLinearCarplayKeyboard])
            {
              [(UIKBRenderFactoryiPhone *)self carPlayFontSize];
            }

            else
            {
              [(UIKBRenderFactoryiPhone *)self gurmukhiEkOnkarFontSize];
            }

            [styleCopy setFontSize:?];

            [(UIKBRenderFactoryiPhone *)self gurmukhiEkOnkarOffset];
            goto LABEL_77;
          }

          name3 = [keyCopy name];
          v77 = [name3 hasPrefix:@"Bengali"];

          if (v77)
          {
            renderingContext8 = [(UIKBRenderFactory *)self renderingContext];
            if ([renderingContext8 isColorAdaptiveNonLinearCarplayKeyboard])
            {
              [(UIKBRenderFactoryiPhone *)self carPlayFontSize];
            }

            else
            {
              [(UIKBRenderFactoryiPhone *)self stringKeyFontSizeBengali];
            }

            [styleCopy setFontSize:?];

            [(UIKBRenderFactoryiPhone *)self stringKeyOffsetBengali];
            goto LABEL_77;
          }

          name4 = [keyCopy name];
          v80 = [name4 hasPrefix:@"Devanagari"];

          if (v80)
          {
            renderingContext9 = [(UIKBRenderFactory *)self renderingContext];
            if ([renderingContext9 isColorAdaptiveNonLinearCarplayKeyboard])
            {
              [(UIKBRenderFactoryiPhone *)self carPlayFontSize];
            }

            else
            {
              [(UIKBRenderFactoryiPhone *)self stringKeyFontSizeDevanagari];
            }

            [styleCopy setFontSize:?];

            [(UIKBRenderFactoryiPhone *)self stringKeyOffsetDevanagari];
            goto LABEL_77;
          }

          name5 = [keyCopy name];
          v83 = [name5 hasPrefix:@"Gujarati"];

          if (v83)
          {
            renderingContext10 = [(UIKBRenderFactory *)self renderingContext];
            if ([renderingContext10 isColorAdaptiveNonLinearCarplayKeyboard])
            {
              [(UIKBRenderFactoryiPhone *)self carPlayFontSize];
            }

            else
            {
              [(UIKBRenderFactoryiPhone *)self stringKeyFontSizeGujarati];
            }

            [styleCopy setFontSize:?];

            [(UIKBRenderFactoryiPhone *)self stringKeyOffsetGujarati];
            goto LABEL_77;
          }

          name6 = [keyCopy name];
          v86 = [name6 hasPrefix:@"Gurmukhi"];

          if (v86)
          {
            renderingContext11 = [(UIKBRenderFactory *)self renderingContext];
            if ([renderingContext11 isColorAdaptiveNonLinearCarplayKeyboard])
            {
              [(UIKBRenderFactoryiPhone *)self carPlayFontSize];
            }

            else
            {
              [(UIKBRenderFactoryiPhone *)self stringKeyFontSizeGurmukhi];
            }

            [styleCopy setFontSize:?];

            [(UIKBRenderFactoryiPhone *)self stringKeyOffsetGurmukhi];
            goto LABEL_77;
          }

          name7 = [keyCopy name];
          v89 = [name7 hasPrefix:@"Kannada"];

          if (v89)
          {
            renderingContext12 = [(UIKBRenderFactory *)self renderingContext];
            if ([renderingContext12 isColorAdaptiveNonLinearCarplayKeyboard])
            {
              [(UIKBRenderFactoryiPhone *)self carPlayFontSize];
            }

            else
            {
              [(UIKBRenderFactoryiPhone *)self stringKeyFontSizeKannada];
            }

            [styleCopy setFontSize:?];

            [(UIKBRenderFactoryiPhone *)self stringKeyOffsetKannada];
            goto LABEL_77;
          }

          name8 = [keyCopy name];
          v92 = [name8 hasPrefix:@"Malayalam"];

          if (v92)
          {
            renderingContext13 = [(UIKBRenderFactory *)self renderingContext];
            if ([renderingContext13 isColorAdaptiveNonLinearCarplayKeyboard])
            {
              [(UIKBRenderFactoryiPhone *)self carPlayFontSize];
            }

            else
            {
              [(UIKBRenderFactoryiPhone *)self stringKeyFontSizeMalayalam];
            }

            [styleCopy setFontSize:?];

            [(UIKBRenderFactoryiPhone *)self stringKeyOffsetMalayalam];
            goto LABEL_77;
          }

          name9 = [keyCopy name];
          v95 = [name9 hasPrefix:@"Oriya"];

          if (v95)
          {
            renderingContext14 = [(UIKBRenderFactory *)self renderingContext];
            if ([renderingContext14 isColorAdaptiveNonLinearCarplayKeyboard])
            {
              [(UIKBRenderFactoryiPhone *)self carPlayFontSize];
            }

            else
            {
              [(UIKBRenderFactoryiPhone *)self stringKeyFontSizeOriya];
            }

            [styleCopy setFontSize:?];

            [(UIKBRenderFactoryiPhone *)self stringKeyOffsetOriya];
            goto LABEL_77;
          }

          name10 = [keyCopy name];
          v98 = [name10 hasPrefix:@"Tamil"];

          if (v98)
          {
            renderingContext15 = [(UIKBRenderFactory *)self renderingContext];
            if ([renderingContext15 isColorAdaptiveNonLinearCarplayKeyboard])
            {
              [(UIKBRenderFactoryiPhone *)self carPlayFontSize];
            }

            else
            {
              [(UIKBRenderFactoryiPhone *)self stringKeyFontSizeTamil];
            }

            [styleCopy setFontSize:?];

            [(UIKBRenderFactoryiPhone *)self stringKeyOffsetTamil];
            goto LABEL_77;
          }

          name11 = [keyCopy name];
          v101 = [name11 hasPrefix:@"Telugu"];

          if (v101)
          {
            renderingContext16 = [(UIKBRenderFactory *)self renderingContext];
            if ([renderingContext16 isColorAdaptiveNonLinearCarplayKeyboard])
            {
              [(UIKBRenderFactoryiPhone *)self carPlayFontSize];
            }

            else
            {
              [(UIKBRenderFactoryiPhone *)self stringKeyFontSizeTelugu];
            }

            [styleCopy setFontSize:?];

            overrideDisplayString = [keyCopy overrideDisplayString];
            if (overrideDisplayString && (v105 = overrideDisplayString, [keyCopy overrideDisplayString], v106 = objc_claimAutoreleasedReturnValue(), v107 = objc_msgSend(v106, "rangeOfString:options:", @"్", 2), v106, v105, v107 != 0x7FFFFFFFFFFFFFFFLL))
            {
              [(UIKBRenderFactoryiPhone *)self conjunctStringKeyOffsetTelugu];
            }

            else
            {
              [(UIKBRenderFactoryiPhone *)self stringKeyOffsetTelugu];
            }

            goto LABEL_77;
          }

          if (![keyCopy isChineseKey])
          {
            [(UIKBRenderFactoryiPhone *)self _customizeLetterSymbolStyle:styleCopy forKey:keyCopy];
            goto LABEL_12;
          }

          lightTextFontFallbackName6 = [(UIKBRenderFactoryiPhone *)self lightTextFontFallbackName];
          [styleCopy setFontName:lightTextFontFallbackName6];

          [(UIKBRenderFactoryiPhone *)self stringKeyFontSize];
          [styleCopy setFontSize:?];
LABEL_51:
          [(UIKBRenderFactoryiPhone *)self stringKeyOffset];
LABEL_77:
          v54 = styleCopy;
LABEL_90:
          [v54 setTextOffset:{v29, v30}];
          goto LABEL_12;
        }

        lightTextFontName6 = [(UIKBRenderFactoryiPhone *)self lightTextFontName];
        [styleCopy setFontName:lightTextFontName6];

        lightTextFontFallbackName7 = [(UIKBRenderFactoryiPhone *)self lightTextFontFallbackName];
        [styleCopy setKeycapsFallback:lightTextFontFallbackName7];

        [(UIKBRenderFactoryiPhone *)self assistKeyFontSize];
        [styleCopy setFontSize:?];
        [(UIKBRenderFactoryiPhone *)self undoKeyOffset];
      }

      [styleCopy setTextOffset:?];
      [styleCopy setKerning:0.0];
      goto LABEL_11;
    }

    lightTextFontName7 = [(UIKBRenderFactoryiPhone *)self lightTextFontName];
    [styleCopy setFontName:lightTextFontName7];

    lightTextFontFallbackName8 = [(UIKBRenderFactoryiPhone *)self lightTextFontFallbackName];
    [styleCopy setKeycapsFallback:lightTextFontFallbackName8];

    renderingContext17 = [(UIKBRenderFactory *)self renderingContext];
    if ([renderingContext17 isColorAdaptiveNonLinearCarplayKeyboard])
    {
      [(UIKBRenderFactoryiPhone *)self carPlayFontSize];
    }

    else
    {
      [(UIKBRenderFactoryiPhone *)self returnKeyFontSize];
    }

    [styleCopy setFontSize:?];

    [(UIKBRenderFactoryiPhone *)self returnKeyOffset];
    [styleCopy setTextOffset:?];
    [styleCopy setKerning:0.0];
    renderConfig = [(UIKBRenderFactory *)self renderConfig];
    colorAdaptiveBackground = [renderConfig colorAdaptiveBackground];

    if (colorAdaptiveBackground)
    {
      [styleCopy setUsesSymbolImage:1];
      [styleCopy setFontGrade:2];
    }

    if ([keyCopy variantType] == 4)
    {
      lightKeycapsFontName = [(UIKBRenderFactoryiPhone *)self lightKeycapsFontName];
      [styleCopy setFontName:lightKeycapsFontName];

      lightKeycapsFontFallbackName = [(UIKBRenderFactoryiPhone *)self lightKeycapsFontFallbackName];
      [styleCopy setKeycapsFallback:lightKeycapsFontFallbackName];

      [(UIKBRenderFactoryiPhone *)self returnKeyFontSize];
      [styleCopy setFontSize:?];
      v45 = styleCopy;
      v46 = -0.5;
      v47 = -0.25;
    }

    else
    {
      displayString2 = [contentsCopy displayString];
      _isIdeographicGlyphs = [displayString2 _isIdeographicGlyphs];

      if (!_isIdeographicGlyphs)
      {
LABEL_70:
        displayStringImage = [contentsCopy displayStringImage];
        if ([displayStringImage containsString:@"grinning"])
        {
        }

        else
        {
          displayStringImage2 = [contentsCopy displayStringImage];
          v52 = [displayStringImage2 containsString:@"return"];

          if (!v52)
          {
            goto LABEL_12;
          }
        }

        [styleCopy setUsesSymbolImage:1];
        [styleCopy setFontGrade:2];
        renderingContext18 = [(UIKBRenderFactory *)self renderingContext];
        if ([renderingContext18 isColorAdaptiveNonLinearCarplayKeyboard])
        {
          [(UIKBRenderFactoryiPhone *)self carPlayFontSize];
        }

        else
        {
          [(UIKBRenderFactoryiPhone *)self symbolImageControlKeyFontSize];
        }

        [styleCopy setFontSizeForSymbolImage:?];

        [styleCopy setFontWeightForSymbolImage:*off_1E70ECD18];
        [(UIKBRenderFactoryiPhone *)self symbolImageControlKeyOffset];
        goto LABEL_77;
      }

      [(UIKBRenderFactoryiPhone *)self stringKeyOffset];
      v45 = styleCopy;
    }

    [v45 setTextOffset:{v47, v46}];
    goto LABEL_70;
  }

  renderingContext19 = [(UIKBRenderFactory *)self renderingContext];
  if ([renderingContext19 isColorAdaptiveNonLinearCarplayKeyboard])
  {
    [(UIKBRenderFactoryiPhone *)self carPlayFontSize];
  }

  else
  {
    [(UIKBRenderFactoryiPhone *)self shiftKeyFontSize];
  }

  [styleCopy setFontSize:?];

  [(UIKBRenderFactoryiPhone *)self shiftKeyOffset];
  [styleCopy setTextOffset:?];
  displayTypeHint = [keyCopy displayTypeHint];
  if (!displayTypeHint)
  {
    renderingContext20 = [(UIKBRenderFactory *)self renderingContext];
    if ([renderingContext20 isColorAdaptiveNonLinearCarplayKeyboard])
    {
      [(UIKBRenderFactoryiPhone *)self carPlayFontSize];
    }

    else
    {
      [(UIKBRenderFactoryiPhone *)self hintNoneKeyFontSize];
    }

    [styleCopy setFontSize:?];

    goto LABEL_43;
  }

  if (displayTypeHint == 2)
  {
    lightTextFontName8 = [(UIKBRenderFactoryiPhone *)self lightTextFontName];
    [styleCopy setFontName:lightTextFontName8];

    lightTextFontFallbackName9 = [(UIKBRenderFactoryiPhone *)self lightTextFontFallbackName];
    [styleCopy setKeycapsFallback:lightTextFontFallbackName9];

LABEL_40:
    [(UIKBRenderFactoryiPhone *)self stringKeyOffset];
    [styleCopy setTextOffset:?];
    goto LABEL_43;
  }

  if ((displayTypeHint & 0xFFFFFFFE) == 2)
  {
    goto LABEL_40;
  }

LABEL_43:
  [styleCopy setUsesSymbolImage:1];
  [styleCopy setFontGrade:2];
LABEL_44:
  if ([(UIKBRenderFactoryiPhone *)self needsSmallerFontSizeForKey:keyCopy])
  {
    [(UIKBRenderFactoryiPhone *)self smallSymbolImageFontSize];
    v12 = v25;
    v13 = *off_1E70ECD20;
  }

LABEL_12:
  if ([styleCopy usesSymbolImage])
  {
    renderingContext21 = [(UIKBRenderFactory *)self renderingContext];
    if ([renderingContext21 isColorAdaptiveNonLinearCarplayKeyboard])
    {
      [(UIKBRenderFactoryiPhone *)self carPlayFontSize];
      v12 = v15;
    }

    [styleCopy setFontSizeForSymbolImage:v12];

    [styleCopy setFontWeightForSymbolImage:v13];
  }
}

- (void)_customizeLetterSymbolStyle:(id)style forKey:(id)key
{
  styleCopy = style;
  keyCopy = key;
  renderingContext = [(UIKBRenderFactory *)self renderingContext];
  if ([renderingContext isColorAdaptiveNonLinearCarplayKeyboard])
  {
    [(UIKBRenderFactoryiPhone *)self carPlayFontSize];
  }

  else
  {
    [(UIKBRenderFactoryiPhone *)self stringKeyFontSize];
  }

  [styleCopy setFontSize:?];

  [(UIKBRenderFactoryiPhone *)self stringKeyOffset];
  [styleCopy setTextOffset:?];
  if ([keyCopy dynamicLayout])
  {
    [keyCopy frame];
    if (v9 < 35.0)
    {
      [styleCopy fontSize];
      [styleCopy setFontSize:round(v10 * 0.8)];
    }
  }

  if (qword_1ED49F130 != -1)
  {
    dispatch_once(&qword_1ED49F130, &__block_literal_global_677_1);
  }

  displayString = [keyCopy displayString];
  [displayString rangeOfCharacterFromSet:qword_1ED49F128];
  v13 = v12;

  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  if (![renderConfig usesCompactKeycapsFont])
  {
    goto LABEL_17;
  }

  name = [keyCopy name];
  v16 = [name containsString:@"Number-Sign"];
  if ((v16 & 1) == 0)
  {
    name2 = [keyCopy name];
    if (([name2 containsString:@"Colon"] & 1) == 0)
    {

LABEL_17:
      goto LABEL_18;
    }
  }

  renderingContext2 = [(UIKBRenderFactory *)self renderingContext];
  isColorAdaptiveNonLinearCarplayKeyboard = [renderingContext2 isColorAdaptiveNonLinearCarplayKeyboard];

  if ((v16 & 1) == 0)
  {
  }

  if ((isColorAdaptiveNonLinearCarplayKeyboard & 1) == 0)
  {
    [styleCopy fontSize];
    [styleCopy setFontSize:v19 + 4.0];
LABEL_40:
    [styleCopy setFontWeight:*off_1E70ECD18];
    [styleCopy setNeedsFontCase:0];
    [styleCopy setFontGrade:3];
    goto LABEL_42;
  }

LABEL_18:
  renderConfig2 = [(UIKBRenderFactory *)self renderConfig];
  if (![renderConfig2 usesCompactKeycapsFont])
  {
LABEL_33:

    goto LABEL_34;
  }

  name3 = [keyCopy name];
  v22 = [name3 containsString:@"Full-Stop"];
  if (v22)
  {
    v23 = v13;
    v24 = 0;
LABEL_23:
    [(UIKBRenderFactory *)self renderingContext];
    goto LABEL_24;
  }

  name2 = [keyCopy name];
  if ([name2 containsString:@"Low-Line"])
  {
    v23 = v13;
    v24 = 0;
    goto LABEL_23;
  }

  name4 = [keyCopy name];
  if (([name4 containsString:@"Comma"] & 1) == 0)
  {

    goto LABEL_33;
  }

  v43 = name4;
  v23 = v13;
  v24 = 1;
  [(UIKBRenderFactory *)self renderingContext];
  v25 = LABEL_24:;
  isColorAdaptiveNonLinearCarplayKeyboard2 = [v25 isColorAdaptiveNonLinearCarplayKeyboard];

  if (v24)
  {
  }

  if ((v22 & 1) == 0)
  {
  }

  v13 = v23;
  if ((isColorAdaptiveNonLinearCarplayKeyboard2 & 1) == 0)
  {
    [styleCopy fontSize];
    [styleCopy setFontSize:v27 + 4.0];
    [styleCopy setTextOffset:{0.0, 2.0}];
    goto LABEL_40;
  }

LABEL_34:
  displayString2 = [keyCopy displayString];
  if (v13 == [displayString2 length])
  {
    renderingContext3 = [(UIKBRenderFactory *)self renderingContext];
    isColorAdaptiveNonLinearCarplayKeyboard3 = [renderingContext3 isColorAdaptiveNonLinearCarplayKeyboard];

    if (isColorAdaptiveNonLinearCarplayKeyboard3)
    {
      goto LABEL_42;
    }

    [styleCopy textOffset];
    v33 = v32;
    v35 = v34;
    renderConfig3 = [(UIKBRenderFactory *)self renderConfig];
    v37 = [renderConfig3 usesCompactKeycapsFont] ? -1.0 : -2.0;

    [styleCopy setTextOffset:{v33, v35 + v37}];
    [styleCopy fontSize];
    [styleCopy setFontSize:v38 + 2.0];
    renderConfig4 = [(UIKBRenderFactory *)self renderConfig];
    usesCompactKeycapsFont = [renderConfig4 usesCompactKeycapsFont];

    if (!usesCompactKeycapsFont)
    {
      goto LABEL_42;
    }

    goto LABEL_40;
  }

LABEL_42:
}

void __62__UIKBRenderFactoryiPhone__customizeLetterSymbolStyle_forKey___block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] lowercaseLetterCharacterSet];
  v1 = qword_1ED49F128;
  qword_1ED49F128 = v0;
}

- (UIEdgeInsets)wideShadowPaddleInsets
{
  v2 = 18.0;
  v3 = 6.0;
  v4 = 28.0;
  v5 = 6.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (UIEdgeInsets)variantPaddedFrameInsets
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (UIEdgeInsets)variantDisplayFrameInsets
{
  v2 = -2.0;
  v3 = 0.0;
  v4 = 1.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (UIEdgeInsets)variantSymbolFrameInsets
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (CGPoint)variantSymbolTextOffset
{
  v2 = 0.0;
  v3 = 0.5;
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)variantAnnotationTextOffset
{
  v2 = 2.0;
  v3 = 2.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)popupSymbolTextOffset
{
  v2 = 0.0;
  v3 = -2.5;
  result.y = v3;
  result.x = v2;
  return result;
}

- (double)dualStringBottomAdditionalOffsetForDisplayContents:(id)contents
{
  displayString = [contents displayString];
  if ([displayString isEqualToString:@"।"])
  {
    v4 = 1.5;
  }

  else
  {
    v4 = -0.5;
  }

  return v4;
}

- (void)_customizePopupTraits:(id)traits forKey:(id)key onKeyplane:(id)keyplane
{
  v114 = *MEMORY[0x1E69E9840];
  traitsCopy = traits;
  keyCopy = key;
  keyplaneCopy = keyplane;
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  if ([renderConfig lightKeyboard])
  {
    renderConfig2 = [(UIKBRenderFactory *)self renderConfig];
    if ([renderConfig2 animatedBackground])
    {
      [traitsCopy setBlurBlending:1];
    }

    else
    {
      renderConfig3 = [(UIKBRenderFactory *)self renderConfig];
      [traitsCopy setBlurBlending:{objc_msgSend(renderConfig3, "colorAdaptiveBackground")}];
    }
  }

  else
  {
    [traitsCopy setBlurBlending:1];
  }

  [(UIKBRenderFactory *)self suppressLayoutSegments];
  if ([(UIKBRenderFactory *)self lightweightFactory])
  {
    goto LABEL_59;
  }

  thinKeycapsFontName = [(UIKBRenderFactoryiPhone *)self thinKeycapsFontName];
  symbolStyle = [traitsCopy symbolStyle];
  [symbolStyle setFontName:thinKeycapsFontName];

  thinKeycapsFontFallbackName = [(UIKBRenderFactoryiPhone *)self thinKeycapsFontFallbackName];
  symbolStyle2 = [traitsCopy symbolStyle];
  [symbolStyle2 setKeycapsFallback:thinKeycapsFontFallbackName];

  [(UIKBRenderFactoryiPhone *)self popupFontSize];
  v19 = v18;
  symbolStyle3 = [traitsCopy symbolStyle];
  [symbolStyle3 setFontSize:v19];

  [(UIKBRenderFactoryiPhone *)self popupSymbolTextOffset];
  v22 = v21;
  v24 = v23;
  symbolStyle4 = [traitsCopy symbolStyle];
  [symbolStyle4 setTextOffset:{v22, v24}];

  if ([keyCopy displayType] == 27)
  {
    thinTextFontName = [(UIKBRenderFactoryiPhone *)self thinTextFontName];
    symbolStyle5 = [traitsCopy symbolStyle];
    [symbolStyle5 setFontName:thinTextFontName];

    thinTextFontFallbackName = [(UIKBRenderFactoryiPhone *)self thinTextFontFallbackName];
    symbolStyle6 = [traitsCopy symbolStyle];
    [symbolStyle6 setKeycapsFallback:thinTextFontFallbackName];

    symbolStyle7 = [traitsCopy symbolStyle];
    [symbolStyle7 setFontSize:22.0];
  }

  if (![keyCopy displayType])
  {
    name = [keyCopy name];
    v32 = [name hasPrefix:@"Burmese-Letter-"];

    if (v32)
    {
      symbolStyle8 = [traitsCopy symbolStyle];
      [symbolStyle8 fontSize];
      v35 = round(v34 * 0.85);
      symbolStyle9 = [traitsCopy symbolStyle];
      [symbolStyle9 setFontSize:v35];
    }
  }

  if ([keyCopy dynamicLayout])
  {
    [keyCopy frame];
    if (v37 >= 35.0)
    {
      [keyCopy frame];
      if (v39 >= 45.0)
      {
        goto LABEL_19;
      }

      v38 = 0.8;
    }

    else
    {
      v38 = 0.7;
    }

    symbolStyle10 = [traitsCopy symbolStyle];
    [symbolStyle10 fontSize];
    v42 = round(v38 * v41);
    symbolStyle11 = [traitsCopy symbolStyle];
    [symbolStyle11 setFontSize:v42];
  }

LABEL_19:
  if ([(UIKBRenderFactoryiPhone *)self _popupMenuStyleForKey:keyCopy])
  {
    [(UIKBRenderFactoryiPhone *)self wideShadowPopupMenuInsets];
  }

  else
  {
    [(UIKBRenderFactoryiPhone *)self wideShadowPaddleInsets];
  }

  v48 = v44;
  v49 = v45;
  v50 = v46;
  v51 = v47;
  renderingContext = [(UIKBRenderFactory *)self renderingContext];
  if (([renderingContext isFloating] & 1) == 0)
  {
    renderConfig4 = [(UIKBRenderFactory *)self renderConfig];
    colorAdaptiveBackground = [renderConfig4 colorAdaptiveBackground];

    if (colorAdaptiveBackground)
    {
      goto LABEL_29;
    }

    popupDirection = [keyCopy popupDirection];
    v56 = @"UIKBColorBlack_Alpha35";
    if (popupDirection == 3)
    {
      v57 = *MEMORY[0x1E695F060];
      v58 = *(MEMORY[0x1E695F060] + 8);
      v59 = 32.0;
      v60 = 1.0;
      v61 = 1.0;
      v62 = 1.0;
      v63 = 1.0;
    }

    else
    {
      v64 = [UIKBShadowEffect effectWithColor:@"UIKBColorBlack_Alpha35" offset:0.0 insets:2.5 weight:1.0, 0.0, 1.0, 0.0, 3.0];
      [traitsCopy addRenderEffect:v64];

      [(UIKBRenderFactoryiPhone *)self variantWideShadowWeight];
      v59 = v65;
      v57 = *MEMORY[0x1E695F060];
      v58 = *(MEMORY[0x1E695F060] + 8);
      v56 = @"UIKBColorBlack_Alpha55";
      v60 = v48;
      v61 = v49;
      v62 = v50;
      v63 = v51;
    }

    renderingContext = [UIKBShadowEffect effectWithColor:v56 offset:v57 insets:v58 weight:v60, v61, v62, v63, v59];
    [traitsCopy addRenderEffect:renderingContext];
  }

LABEL_29:
  [traitsCopy setBlendForm:{-[UIKBRenderFactory enabledBlendForm](self, "enabledBlendForm")}];
  defaultKeyBackgroundColorName = [(UIKBRenderFactory *)self defaultKeyBackgroundColorName];
  v67 = [UIKBGradient gradientWithFlatColor:defaultKeyBackgroundColorName];
  [traitsCopy setBackgroundGradient:v67];

  renderConfig5 = [(UIKBRenderFactory *)self renderConfig];
  if (![renderConfig5 lightKeyboard])
  {
LABEL_32:

    goto LABEL_33;
  }

  renderConfig6 = [(UIKBRenderFactory *)self renderConfig];
  colorAdaptiveBackground2 = [renderConfig6 colorAdaptiveBackground];

  if ((colorAdaptiveBackground2 & 1) == 0)
  {
    renderConfig5 = [UIKBEdgeEffect effectWithColor:@"UIKBColorBlack_Alpha12" edges:15 inset:-0.25 weight:0.5];
    [traitsCopy addRenderEffect:renderConfig5];
    goto LABEL_32;
  }

LABEL_33:
  if (([keyCopy state] & 0x10) != 0)
  {
    renderingContext2 = [(UIKBRenderFactory *)self renderingContext];
    isFloating = [renderingContext2 isFloating];

    if (isFloating)
    {
      geometry = [traitsCopy geometry];
      [geometry setLayoutMargins:{0.0, 800.0, 0.0, 0.0}];
    }

    lightKeycapsFontName = [(UIKBRenderFactoryiPhone *)self lightKeycapsFontName];
    lightTextFontFallbackName = [(UIKBRenderFactoryiPhone *)self lightTextFontFallbackName];
    v76 = [UIKBTextStyle styleWithFontName:lightKeycapsFontName withFallbackFontName:lightTextFontFallbackName withFontSize:22.0];

    [(UIKBRenderFactoryiPhone *)self variantSymbolTextOffset];
    [v76 setTextOffset:?];
    v106 = keyplaneCopy;
    if ([keyCopy displayType] == 27)
    {
      lightTextFontName = [(UIKBRenderFactoryiPhone *)self lightTextFontName];
      [v76 setFontName:lightTextFontName];

      lightTextFontFallbackName2 = [(UIKBRenderFactoryiPhone *)self lightTextFontFallbackName];
      [v76 setKeycapsFallback:lightTextFontFallbackName2];

      [v76 setFontSize:16.0];
    }

    else if ([keyCopy isChineseKey])
    {
      lightTextFontFallbackName3 = [(UIKBRenderFactoryiPhone *)self lightTextFontFallbackName];
      [v76 setFontName:lightTextFontFallbackName3];

      [(UIKBRenderFactoryiPhone *)self stringKeyFontSize];
      [v76 setFontSize:?];
      [(UIKBRenderFactoryiPhone *)self stringKeyOffset];
      [v76 setTextOffset:?];
    }

    symbolStyle12 = [traitsCopy symbolStyle];
    textColor = [symbolStyle12 textColor];
    [v76 setTextColor:textColor];

    v82 = [UIKBRenderTraits traitsWithSymbolStyle:v76];
    [traitsCopy setVariantTraits:v82];

    v83 = [UIKBRenderTraits traitsWithSymbolStyle:0];
    increasedContrastEnabled = [(UIKBRenderFactory *)self increasedContrastEnabled];
    v85 = UIKBColorBlue;
    if (!increasedContrastEnabled)
    {
      v85 = UIKBColorKeyBlueKeyBackground;
    }

    v86 = [UIKBGradient gradientWithFlatColor:*v85];
    [v83 setLayeredForegroundGradient:v86];

    v87 = [UIKBTextStyle styleWithTextColor:@"UIKBColorWhite"];
    [v83 setSymbolStyle:v87];

    [traitsCopy setHighlightedVariantTraits:v83];
    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    subtrees = [keyCopy subtrees];
    v89 = [subtrees countByEnumeratingWithState:&v107 objects:v113 count:16];
    if (v89)
    {
      v90 = v89;
      v105 = v76;
      v91 = *v108;
      while (2)
      {
        for (i = 0; i != v90; ++i)
        {
          if (*v108 != v91)
          {
            objc_enumerationMutation(subtrees);
          }

          secondaryDisplayStrings = [*(*(&v107 + 1) + 8 * i) secondaryDisplayStrings];
          v94 = [secondaryDisplayStrings count];

          if (v94)
          {

            v76 = v105;
            subtrees = [v105 copy];
            [(UIKBRenderFactoryiPhone *)self variantAnnotationTextFontSize];
            [subtrees setFontSize:?];
            renderConfig7 = [(UIKBRenderFactory *)self renderConfig];
            if ([renderConfig7 lightKeyboard])
            {
              v96 = @"UIKBColorBlack_Alpha40";
            }

            else
            {
              v96 = @"UIKBColorWhite";
            }

            [subtrees setTextColor:v96];

            [subtrees setAnchorCorner:2];
            [(UIKBRenderFactoryiPhone *)self variantAnnotationTextOffset];
            [subtrees setTextOffset:?];
            v112 = subtrees;
            v97 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v112 count:1];
            variantTraits = [traitsCopy variantTraits];
            [variantTraits setSecondarySymbolStyles:v97];

            v99 = [UIKBTextStyle styleWithTextColor:@"UIKBColorWhite"];
            v111 = v99;
            v100 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v111 count:1];
            [v83 setSecondarySymbolStyles:v100];

            goto LABEL_55;
          }
        }

        v90 = [subtrees countByEnumeratingWithState:&v107 objects:v113 count:16];
        if (v90)
        {
          continue;
        }

        break;
      }

      v76 = v105;
    }

LABEL_55:

    keyplaneCopy = v106;
  }

  if (([keyCopy renderKeyInKeyplane:keyplaneCopy] & 1) == 0)
  {
    renderConfig8 = [(UIKBRenderFactory *)self renderConfig];
    colorAdaptiveBackground3 = [renderConfig8 colorAdaptiveBackground];

    if ((colorAdaptiveBackground3 & 1) == 0)
    {
      defaultKeyShadowColorName = [(UIKBRenderFactory *)self defaultKeyShadowColorName];
      v104 = [UIKBEdgeEffect effectWithColor:defaultKeyShadowColorName edges:4 inset:-1.0 weight:1.0];
      [traitsCopy addRenderEffect:v104];
    }
  }

LABEL_59:
}

- (void)_customizeTraits:(id)traits forPredictionCellKey:(id)key
{
  traitsCopy = traits;
  keyCopy = key;
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  lightKeyboard = [renderConfig lightKeyboard];

  state = [keyCopy state];
  if (lightKeyboard)
  {
    if (state == 2)
    {
      v10 = UIKBPredictionCandidateActiveBackground;
    }

    else
    {
      if (+[UIKBRenderFactory _graphicsQuality]== 100)
      {
        v12 = @"UIKBColorGray_Percent65";
        controlKeyForegroundColorName = [(UIKBRenderFactory *)self controlKeyForegroundColorName];
LABEL_12:
        v14 = [keyCopy state] == 4;
        goto LABEL_15;
      }

      v10 = UIKBColorKeyGrayKeyLightBackgroundMedium;
    }

    v12 = *v10;
    controlKeyForegroundColorName = 0;
    goto LABEL_12;
  }

  if (state == 2)
  {
    v11 = UIKBPredictionCandidateActiveBackground;
  }

  else if (+[UIKBRenderFactory _graphicsQuality]== 100)
  {
    [traitsCopy setBlendForm:6];
    v11 = UIKBColorKeyGrayKeyActiveDarkBackground;
  }

  else
  {
    v11 = UIKBColorKeyGrayKeyDarkBackground;
  }

  v12 = *v11;
  v14 = 0;
  controlKeyForegroundColorName = 0;
LABEL_15:
  [traitsCopy setControlOpacities:v14];
  if (v12)
  {
    v15 = [UIKBGradient gradientWithFlatColor:v12];
    [traitsCopy setBackgroundGradient:v15];

    if (controlKeyForegroundColorName)
    {
LABEL_17:
      v16 = [UIKBGradient gradientWithFlatColor:controlKeyForegroundColorName];
      [traitsCopy setLayeredForegroundGradient:v16];

      goto LABEL_20;
    }
  }

  else
  {
    [traitsCopy setBackgroundGradient:0];
    if (controlKeyForegroundColorName)
    {
      goto LABEL_17;
    }
  }

  [traitsCopy setLayeredForegroundGradient:0];
LABEL_20:
}

- (void)_customizeTraits:(id)traits forMultiscriptKey:(id)key style:(int64_t)style
{
  v69[2] = *MEMORY[0x1E69E9840];
  traitsCopy = traits;
  keyCopy = key;
  if ([keyCopy dynamicLayout])
  {
    isKindOfClass = ![(UIKBRenderFactory *)self dynamicFactory];
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  symbolStyle = [traitsCopy symbolStyle];
  secondarySymbolStyles = [traitsCopy secondarySymbolStyles];
  firstObject = [secondarySymbolStyles firstObject];

  [symbolStyle fontSize];
  v15 = v14;
  [firstObject fontSize];
  v17 = v16;
  [firstObject fontSize];
  v19 = v18;
  secondaryDisplayStrings = [keyCopy secondaryDisplayStrings];
  v21 = [secondaryDisplayStrings count];

  if (style == 2)
  {
    v68 = v17;
    displayString = [keyCopy displayString];
    secondaryDisplayStrings2 = [keyCopy secondaryDisplayStrings];
    firstObject2 = [secondaryDisplayStrings2 firstObject];

    geometry = [traitsCopy geometry];
    [geometry paddedFrame];
    v65 = v31;
    v33 = v32;
    v35 = v34;
    v37 = v36;

    v25 = 0.0;
    v22 = 0.0;
    v23 = 0.0;
    if ([displayString length])
    {
      [(UIKBRenderFactoryiPhone *)self customizedOffsetForString:displayString isPrimary:1 withFrame:v65, v33, v35, v37];
      v23 = v38;
      v22 = v39;
      v15 = v40;
    }

    v62 = v37;
    v63 = v35;
    v64 = v33;
    v24 = 0.0;
    v17 = v68;
    if ([firstObject2 length])
    {
      [(UIKBRenderFactoryiPhone *)self customizedOffsetForString:firstObject2 isPrimary:0 withFrame:v65, v64, v35, v62];
      v24 = v41;
      v25 = v42;
      v17 = v43;
    }

    v67 = 0.0;
    v26 = 0.0;
    if (v21 >= 2)
    {
      secondaryDisplayStrings3 = [keyCopy secondaryDisplayStrings];
      lastObject = [secondaryDisplayStrings3 lastObject];

      [(UIKBRenderFactoryiPhone *)self customizedOffsetForString:lastObject isPrimary:0 withFrame:v65, v64, v63, v62];
      v26 = v46;
      v67 = v47;
      v19 = v48;
    }

    v66 = v19;
  }

  else
  {
    v66 = v19;
    v67 = 0.0;
    if (style == 1)
    {
      if (isKindOfClass)
      {
        v22 = 2.0;
      }

      else
      {
        v22 = 4.0;
      }

      if (isKindOfClass)
      {
        v23 = -15.0;
      }

      else
      {
        v23 = -8.0;
      }

      if (isKindOfClass)
      {
        v24 = 20.0;
      }

      else
      {
        v24 = 13.0;
      }

      if (isKindOfClass)
      {
        v25 = -15.0;
      }

      else
      {
        v25 = -19.0;
      }

      v17 = 25.0;
      goto LABEL_33;
    }

    if (!style)
    {
      if (isKindOfClass)
      {
        v22 = 5.0;
      }

      else
      {
        v22 = 8.0;
      }

      if (isKindOfClass)
      {
        v23 = -15.0;
      }

      else
      {
        v23 = -5.0;
      }

      if (isKindOfClass)
      {
        v24 = 20.0;
      }

      else
      {
        v24 = 8.5;
      }

      if (isKindOfClass)
      {
        v25 = -7.0;
      }

      else
      {
        v25 = -10.0;
      }

      v17 = 15.0;
LABEL_33:
      v26 = 0.0;
      goto LABEL_42;
    }

    v26 = 0.0;
    v25 = 0.0;
    v24 = 0.0;
    v22 = 0.0;
    v23 = 0.0;
  }

LABEL_42:
  v49 = [(UIKBRenderFactory *)self keyIsRightToLeftSensitive:keyCopy];
  v50 = -v24;
  if (v49)
  {
    v26 = -v26;
    v51 = -v24;
  }

  else
  {
    v51 = v24;
  }

  if (v49)
  {
    v52 = -v23;
  }

  else
  {
    v52 = v23;
  }

  [symbolStyle setTextOpacity:{1.0, v50}];
  [symbolStyle setTextOffset:{v52, v22}];
  [symbolStyle setFontSize:v15];
  lightKeycapsFontFallbackName = [(UIKBRenderFactoryiPhone *)self lightKeycapsFontFallbackName];
  [symbolStyle setKeycapsFallback:lightKeycapsFontFallbackName];

  [firstObject setTextOpacity:0.4];
  [firstObject setTextOffset:{v51, v25}];
  [firstObject setFontSize:v17];
  lightKeycapsFontFallbackName2 = [(UIKBRenderFactoryiPhone *)self lightKeycapsFontFallbackName];
  [firstObject setKeycapsFallback:lightKeycapsFontFallbackName2];

  if (v21 >= 2)
  {
    secondarySymbolStyles2 = [traitsCopy secondarySymbolStyles];
    v56 = [secondarySymbolStyles2 count];

    secondarySymbolStyles3 = [traitsCopy secondarySymbolStyles];
    v58 = secondarySymbolStyles3;
    if (v56 > 1)
    {
      lastObject2 = [secondarySymbolStyles3 lastObject];
    }

    else
    {
      firstObject3 = [secondarySymbolStyles3 firstObject];
      lastObject2 = [firstObject3 copy];

      v69[0] = firstObject;
      v69[1] = lastObject2;
      v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:2];
      [traitsCopy setSecondarySymbolStyles:v58];
    }

    [lastObject2 setTextOffset:{v26, v67}];
    [lastObject2 setTextOpacity:0.4];
    [lastObject2 setFontSize:v66];
    lightKeycapsFontFallbackName3 = [(UIKBRenderFactoryiPhone *)self lightKeycapsFontFallbackName];
    [lastObject2 setKeycapsFallback:lightKeycapsFontFallbackName3];
  }
}

- (void)_customizeTraits:(id)traits forThaiMultiKey:(id)key
{
  traitsCopy = traits;
  keyCopy = key;
  dynamicFactory = [(UIKBRenderFactory *)self dynamicFactory];
  symbolStyle = [traitsCopy symbolStyle];
  secondarySymbolStyles = [traitsCopy secondarySymbolStyles];
  v10 = [secondarySymbolStyles mutableCopy];
  secondarySymbolStyles2 = [traitsCopy secondarySymbolStyles];
  v12 = [secondarySymbolStyles2 count];

  if (v12 <= 2)
  {
    v13 = 3;
    do
    {
      v14 = [symbolStyle copy];
      [v10 addObject:v14];

      --v13;
    }

    while (v13);
  }

  v15 = [v10 objectAtIndex:0];
  v16 = [v10 objectAtIndex:1];
  v17 = [v10 objectAtIndex:2];
  displayString = [keyCopy displayString];
  v19 = [displayString containsString:@"ผ"];

  if (dynamicFactory)
  {
    v20 = 13.0;
  }

  else
  {
    v20 = 20.0;
  }

  if (dynamicFactory)
  {
    v21 = 10.0;
  }

  else
  {
    v21 = 6.0;
  }

  if (dynamicFactory)
  {
    v22 = 15.0;
  }

  else
  {
    v22 = 12.0;
  }

  if (dynamicFactory)
  {
    v23 = 22.0;
  }

  else
  {
    v23 = 16.0;
  }

  if (v19)
  {
    v24 = v20;
  }

  else
  {
    v24 = -v20;
  }

  [symbolStyle setTextOffset:{v24, v21}];
  [symbolStyle setFontSize:v23];
  [v15 setTextOffset:{v20, v21}];
  [v15 setFontSize:v23];
  [v16 setTextOffset:{-v20, -v21}];
  [v16 setFontSize:v22];
  [v17 setTextOffset:{v20, -v21}];
  [v17 setFontSize:v22];
  [traitsCopy setSecondarySymbolStyles:v10];
}

- (void)_customizeTraits:(id)traits forZhuyinGridDualStringKey:(id)key
{
  v31[2] = *MEMORY[0x1E69E9840];
  traitsCopy = traits;
  dynamicFactory = [(UIKBRenderFactory *)self dynamicFactory];
  symbolStyle = [traitsCopy symbolStyle];
  v8 = symbolStyle;
  if (dynamicFactory)
  {
    [symbolStyle setFontSize:16.0];

    symbolStyle2 = [traitsCopy symbolStyle];
    [symbolStyle2 setAlignment:0];

    symbolStyle3 = [traitsCopy symbolStyle];
    [symbolStyle3 setAnchorCorner:4];

    symbolStyle4 = [traitsCopy symbolStyle];
    [symbolStyle4 setTextOffset:{5.0, 5.0}];

    lightTextFontName = [(UIKBRenderFactoryiPhone *)self lightTextFontName];
    lightTextFontFallbackName = [(UIKBRenderFactoryiPhone *)self lightTextFontFallbackName];
    firstObject = [UIKBTextStyle styleWithFontName:lightTextFontName withFallbackFontName:lightTextFontFallbackName withFontSize:14.0];

    renderConfig = [(UIKBRenderFactory *)self renderConfig];
    if ([renderConfig lightKeyboard])
    {
      blackKeycapColor = [(UIKBRenderFactory *)self blackKeycapColor];
      [firstObject setTextColor:blackKeycapColor];
    }

    else
    {
      [firstObject setTextColor:@"UIKBColorWhite"];
    }

    [firstObject setAlignment:2];
    [firstObject setAnchorCorner:2];
    [firstObject setTextOffset:{5.0, 5.0}];
    lightTextFontName2 = [(UIKBRenderFactoryiPhone *)self lightTextFontName];
    lightTextFontFallbackName2 = [(UIKBRenderFactoryiPhone *)self lightTextFontFallbackName];
    v20 = [UIKBTextStyle styleWithFontName:lightTextFontName2 withFallbackFontName:lightTextFontFallbackName2 withFontSize:18.0];

    renderConfig2 = [(UIKBRenderFactory *)self renderConfig];
    if ([renderConfig2 lightKeyboard])
    {
      v28 = @"UIKBColorBlack_Alpha25";
    }

    else
    {
      v28 = @"UIKBColorWhite";
    }

    [v20 setTextColor:v28];

    [v20 setAlignment:1];
    v31[0] = firstObject;
    v24 = v31;
  }

  else
  {
    [symbolStyle setTextOffset:{-12.0, 0.0}];

    secondarySymbolStyles = [traitsCopy secondarySymbolStyles];
    firstObject = [secondarySymbolStyles firstObject];

    [firstObject setTextOffset:{12.0, 0.0}];
    lightTextFontName3 = [(UIKBRenderFactoryiPhone *)self lightTextFontName];
    lightTextFontFallbackName3 = [(UIKBRenderFactoryiPhone *)self lightTextFontFallbackName];
    v20 = [UIKBTextStyle styleWithFontName:lightTextFontName3 withFallbackFontName:lightTextFontFallbackName3 withFontSize:14.0];

    renderConfig3 = [(UIKBRenderFactory *)self renderConfig];
    lightKeyboard = [renderConfig3 lightKeyboard];
    v23 = UIKBColorBlack_Alpha25;
    if (!lightKeyboard)
    {
      v23 = UIKBColorWhite;
    }

    [v20 setTextColor:*v23];

    [v20 setAlignment:1];
    v30 = firstObject;
    v24 = &v30;
  }

  v24[1] = v20;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
  [traitsCopy setSecondarySymbolStyles:v29];
}

- (BOOL)_popupStyleForKey:(id)key
{
  keyCopy = key;
  if ([(UIKBRenderFactory *)self allowsPaddleForKey:keyCopy])
  {
    v5 = 20;
  }

  else
  {
    v5 = 16;
  }

  if (([keyCopy interactionType] == 1 || objc_msgSend(keyCopy, "interactionType") == 2) && (objc_msgSend(keyCopy, "state") & v5) != 0)
  {
    name = [keyCopy name];
    v7 = [name hasPrefix:@"Assist"] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (BOOL)_popupMenuStyleForKey:(id)key
{
  keyCopy = key;
  v4 = [keyCopy state] == 16 && (objc_msgSend(keyCopy, "displayType") == 13 || objc_msgSend(keyCopy, "displayType") == 4 || objc_msgSend(keyCopy, "displayTypeHint") == 12 || objc_msgSend(keyCopy, "displayType") == 5);

  return v4;
}

- (id)variantGeometriesForGeometry:(id)geometry variantCount:(unint64_t)count rowLimit:(int64_t)limit annotationIndex:(unint64_t)index
{
  v8 = [geometry copy];
  [v8 paddedFrame];
  [v8 setPaddedFrame:{v9 + 0.0, v10 + 0.0}];
  v11 = [v8 iPhoneVariantGeometries:count annotationIndex:index];

  return v11;
}

- (void)_configureTraitsForPopupStyle:(id)style withKey:(id)key onKeyplane:(id)keyplane
{
  v168[1] = *MEMORY[0x1E69E9840];
  styleCopy = style;
  keyCopy = key;
  keyplaneCopy = keyplane;
  aClassName = [(UIKBRenderFactory *)self contentViewClassNameForPopupKey:keyCopy];
  v10 = NSClassFromString(aClassName);
  if (!v10 || (v11 = v10, [keyCopy state] != 16))
  {
    if (-[UIKBRenderFactory dynamicFactory](self, "dynamicFactory") && [keyCopy dynamicLayout])
    {
      [(UIKBRenderFactoryiPhone *)self _customizePopupTraits:styleCopy forKey:keyCopy onKeyplane:keyplaneCopy];
      goto LABEL_59;
    }

    v29 = UIKBRectsCreate(keyplaneCopy, keyCopy, [keyCopy state]);
    v30 = UIKBPopupBiasForKey(keyplaneCopy, keyCopy);
    v31 = v30;
    v32 = v29[12];
    v151 = v29[15];
    v149 = v29[13];
    v150 = v29[14];
    if (v30 == 21)
    {
      v33 = -10.5;
    }

    else
    {
      if (v30 != 29)
      {
        goto LABEL_14;
      }

      v33 = 10.5;
    }

    if ([keyCopy state] == 4)
    {
      v32 = v32 + v33;
    }

LABEL_14:
    v153 = v29[8];
    v154 = v29[9];
    v156 = v29[10];
    v158 = v29[11];
    if (([keyCopy state] & 0x10) != 0)
    {
      [(UIKBRenderFactoryiPhone *)self variantDisplayFrameInsets];
      v35 = v34;
      v37 = v36;
      v148 = v38;
      v146 = v39;
      [(UIKBRenderFactoryiPhone *)self variantSymbolFrameInsets];
      v41 = v40;
      v43 = v42;
      v147 = v44;
      v145 = v45;
      geometry = [styleCopy geometry];
      [geometry paddedFrame];
      v141 = v48;
      v142 = v47;
      v143 = v49;
      v144 = v50;
      [(UIKBRenderFactoryiPhone *)self variantPaddedFrameInsets];
      v52 = v51;
      v54 = v53;
      v140 = v55;
      v57 = v56;
      geometry2 = [styleCopy geometry];
      v153 = v153 + v37;
      v154 = v154 + v35;
      v156 = v156 - (v37 + v146);
      v158 = v158 - (v35 + v148);
      v32 = v32 + v43;
      v149 = v149 + v41;
      v150 = v150 - (v43 + v145);
      v151 = v151 - (v41 + v147);
      [geometry2 setPaddedFrame:{v142 + v54, v141 + v52, v143 - (v54 + v57), v144 - (v52 + v140)}];
    }

    geometry3 = [styleCopy geometry];
    [geometry3 setDisplayFrame:{v153, v154, v156, v158}];

    geometry4 = [styleCopy geometry];
    [geometry4 setSymbolFrame:{v32, v149, v150, v151}];

    free(v29);
    if (v31 <= 0)
    {
      v61 = 2;
    }

    else
    {
      v61 = v31;
    }

    geometry5 = [styleCopy geometry];
    [geometry5 setPopupBias:v61];

    isTallPopup = [(UIKBRenderFactoryiPhone *)self isTallPopup];
    geometry6 = [styleCopy geometry];
    [geometry6 setTallPopup:isTallPopup];

    v159 = [(UIKBRenderFactory *)self displayContentsForKey:keyCopy];
    variantDisplayContents = [v159 variantDisplayContents];
    v66 = [variantDisplayContents count];

    if (!v66)
    {
      goto LABEL_36;
    }

    v164 = 0;
    v165 = &v164;
    v166 = 0x2020000000;
    v167 = 0x7FFFFFFFFFFFFFFFLL;
    variantDisplayContents2 = [v159 variantDisplayContents];
    v163[0] = MEMORY[0x1E69E9820];
    v163[1] = 3221225472;
    v163[2] = __76__UIKBRenderFactoryiPhone__configureTraitsForPopupStyle_withKey_onKeyplane___block_invoke;
    v163[3] = &unk_1E71142E0;
    v163[4] = &v164;
    [variantDisplayContents2 enumerateObjectsUsingBlock:v163];

    geometry7 = [styleCopy geometry];
    v69 = [(UIKBRenderFactoryiPhone *)self rowLimitForKey:keyCopy];
    v70 = [(UIKBRenderFactoryiPhone *)self variantGeometriesForGeometry:geometry7 variantCount:v66 rowLimit:v69 annotationIndex:v165[3]];
    [styleCopy setVariantGeometries:v70];

    variantPopupBias = [keyCopy variantPopupBias];
    LODWORD(v70) = variantPopupBias == @"fixed-right";

    if (v70)
    {
      variantGeometries = [styleCopy variantGeometries];
      v75 = [UIKBRenderGeometry sortedGeometries:variantGeometries leftToRight:1];
      [styleCopy setVariantGeometries:v75];
    }

    else
    {
      variantPopupBias2 = [keyCopy variantPopupBias];
      v73 = variantPopupBias2 == @"fixed-left";

      if (!v73)
      {
LABEL_31:
        name = [keyplaneCopy name];
        v83 = [name containsString:@"Emoji"];

        if (v83)
        {
          [(UIKBRenderFactory *)self modifyTraitsForDividerVariant:styleCopy withKey:keyCopy];
        }

        for (i = 0; i != v66; ++i)
        {
          subtrees = [keyCopy subtrees];
          v86 = [subtrees objectAtIndex:i];
          variantGeometries2 = [styleCopy variantGeometries];
          v88 = [variantGeometries2 objectAtIndex:i];
          similarShape = [v88 similarShape];
          [v86 setShape:similarShape];
        }

        _Block_object_dispose(&v164, 8);
LABEL_36:
        [(UIKBRenderFactoryiPhone *)self _customizePopupTraits:styleCopy forKey:keyCopy onKeyplane:keyplaneCopy];

        goto LABEL_59;
      }

      variantGeometries = [styleCopy variantGeometries];
      v75 = [UIKBRenderGeometry sortedGeometries:variantGeometries leftToRight:0];
      [styleCopy setVariantGeometries:v75];
    }

    goto LABEL_31;
  }

  [(UIKBRenderFactoryiPhone *)self _customizePopupTraits:styleCopy forKey:keyCopy onKeyplane:keyplaneCopy];
  [(objc_class *)v11 preferredContentViewSizeForKey:keyCopy withTraits:styleCopy];
  v13 = v12;
  v15 = v14;
  geometry8 = [styleCopy geometry];
  detachedVariants = [geometry8 detachedVariants];

  [keyCopy paddedFrame];
  v20 = round(v19 + (v18 - v13) * 0.5);
  [keyCopy paddedFrame];
  v22 = v21;
  if ([keyCopy popupDirection] == 2)
  {
    [keyCopy paddedFrame];
    v24 = v23;
    v26 = v25;
    geometry9 = [styleCopy geometry];
    v28 = v24 + v26;
    [geometry9 setPopupDirection:2];
  }

  else
  {
    if (detachedVariants)
    {
      v76 = 2.0;
    }

    else
    {
      v76 = 0.0;
    }

    if ([keyCopy popupDirection] != 3)
    {
      v28 = v22 - v15 - v76;
      goto LABEL_38;
    }

    [keyplaneCopy frame];
    v78 = v77;
    [keyplaneCopy frame];
    v80 = v79;
    geometry10 = [styleCopy geometry];
    [geometry10 setPopupDirection:3];

    geometry9 = [styleCopy geometry];
    v20 = round((v78 - v13) * 0.5 + 0.0);
    v28 = round((v80 - v15) * 0.5 + 0.0);
    [geometry9 setRoundRectRadius:15.0];
  }

LABEL_38:
  v90 = UIKBPopupBiasForKey(keyplaneCopy, keyCopy);
  if (v90 <= 0)
  {
    v91 = 2;
  }

  else
  {
    v91 = v90;
  }

  geometry11 = [styleCopy geometry];
  [geometry11 setPopupBias:v91];

  [(UIKBRenderFactoryiPhone *)self wideShadowPaddleInsets];
  v94 = v93;
  v96 = v95;
  v98 = v97;
  v100 = v99;
  if ([keyCopy popupDirection] == 3)
  {
    geometry12 = [styleCopy geometry];
    [geometry12 setPaddedFrame:{v20, v28, v13, v15}];

    v94 = 12.0;
    v96 = 12.0;
    v98 = 12.0;
    v100 = 12.0;
  }

  v157 = v96;
  v160 = v13;
  v102 = -v98;
  v103 = v20 - v96;
  v104 = -v96;
  width = v160 - (-v96 - v100);
  y = v28 - v94;
  height = v15 - (v102 - v94);
  if (v103 >= 0.0)
  {
    v169.origin.x = v103;
    v169.origin.y = y;
    v169.size.width = width;
    v169.size.height = height;
    v108 = y;
    MaxX = CGRectGetMaxX(v169);
    [keyplaneCopy frame];
    if (MaxX <= CGRectGetWidth(v170))
    {
      v104 = v103;
    }

    else
    {
      [keyplaneCopy frame];
      v110 = CGRectGetMaxX(v171);
      v172.origin.x = v103;
      v172.origin.y = v108;
      v172.size.width = width;
      v172.size.height = height;
      v104 = v110 - CGRectGetWidth(v172) - v157;
    }

    y = v108;
  }

  [styleCopy geometry];
  v112 = v111 = v160;
  x = v104;
  detachedVariants2 = [v112 detachedVariants];

  if (detachedVariants2)
  {
    geometry13 = [styleCopy geometry];
    v155 = v94;
    [geometry13 roundRectRadius];
    v117 = (width - v160) * 0.5 + v104 + v116;
    v118 = v160 - v116 - v116;
    v119 = y + (height - v15) * 0.5 + v116;
    v152 = height;
    v120 = v15;
    v121 = v15 - v116 - v116;

    v122 = v117;
    v123 = v119;
    v124 = v118;
    v125 = v121;
    v126 = v117;
    v111 = v160;
    v127 = v119;
    v94 = v155;
    v128 = v118;
    x = v104;
    v129 = v121;
    v15 = v120;
    height = v152;
    v129 = [UIKBRenderGeometry geometryWithFrame:v122 paddedFrame:v123, v124, v125, v126, v127, v128, v129];
    v168[0] = v129;
    v131 = [MEMORY[0x1E695DEC8] arrayWithObjects:v168 count:1];
    [styleCopy setVariantGeometries:v131];
  }

  if ([keyCopy popupDirection] != 3)
  {
    [keyCopy paddedFrame];
    v175.origin.x = x;
    v175.origin.y = y;
    v175.size.width = width;
    v175.size.height = height;
    v174 = CGRectUnion(v173, v175);
    x = v174.origin.x;
    y = v174.origin.y;
    width = v174.size.width;
    height = v174.size.height;
  }

  geometry14 = [styleCopy geometry];
  [geometry14 setDisplayFrame:{x, y, width, height}];

  v133 = [UIKBRenderGeometry geometryWithFrame:*MEMORY[0x1E695EFF8] paddedFrame:*(MEMORY[0x1E695EFF8] + 8), v111, v15, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v111, v15];
  if ([keyCopy popupDirection] == 2)
  {
    [keyCopy paddedFrame];
    v135 = v134;
    v136 = 5.0;
  }

  else
  {
    v135 = 0.0;
    v136 = -5.0;
  }

  if ([keyCopy popupDirection] == 3)
  {
    v137 = v157;
  }

  else
  {
    v137 = v157 + 3.0;
    v138 = v15 - v94;
    v94 = v94 + v136 + v135;
    v111 = v111 - v157 + -3.0;
    v15 = v138 - v136;
  }

  [v133 setSymbolFrame:{v137, v94, v111, v15}];
  v139 = [UIKBRenderTraits traitsWithGeometry:v133];
  [styleCopy setVariantTraits:v139];

LABEL_59:
}

void __76__UIKBRenderFactoryiPhone__configureTraitsForPopupStyle_withKey_onKeyplane___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 secondaryDisplayStrings];
  v8 = [v7 count];

  if (v8)
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
    *a4 = 1;
  }
}

- (BOOL)_shouldConfigureSecondarySymbolStyleForSpaceKey:(id)key
{
  keyCopy = key;
  if ([keyCopy displayType] == 25)
  {
    renderConfig = [(UIKBRenderFactory *)self renderConfig];
    colorAdaptiveBackground = [renderConfig colorAdaptiveBackground];

    if (colorAdaptiveBackground)
    {
      name = UIKeyboardActiveInputModes;
      v8 = [name count];
      v9 = [name indexOfObjectPassingTest:&__block_literal_global_708];
      LOBYTE(v10) = v8 != 1 && (v8 != 2 || v9 == 0x7FFFFFFFFFFFFFFFLL);
      goto LABEL_11;
    }
  }

  if ([keyCopy displayType] == 25)
  {
    name = [keyCopy name];
    v10 = [name hasSuffix:@"LanguageIndicator"] ^ 1;
LABEL_11:

    goto LABEL_12;
  }

  LOBYTE(v10) = 0;
LABEL_12:

  return v10;
}

uint64_t __75__UIKBRenderFactoryiPhone__shouldConfigureSecondarySymbolStyleForSpaceKey___block_invoke()
{
  v0 = TIInputModeGetNormalizedIdentifier();
  v1 = [v0 isEqualToString:@"emoji"];

  return v1;
}

- (id)_traitsForKey:(id)key onKeyplane:(id)keyplane
{
  v328[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  keyplaneCopy = keyplane;
  v322.receiver = self;
  v322.super_class = UIKBRenderFactoryiPhone;
  v8 = [(UIKBRenderFactory *)&v322 _traitsForKey:keyCopy onKeyplane:keyplaneCopy];
  [v8 setBlendForm:{-[UIKBRenderFactory enabledBlendForm](self, "enabledBlendForm")}];
  geometry = [v8 geometry];
  [geometry setRoundRectCorners:-1];

  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  [v8 setUsesDarkAppearance:{objc_msgSend(renderConfig, "lightKeyboard") ^ 1}];

  v11 = v8;
  renderingContext5 = [(UIKBRenderFactory *)self displayContentsForKey:keyCopy];
  lightKeycapsFontName = [(UIKBRenderFactoryiPhone *)self lightKeycapsFontName];
  lightKeycapsFontFallbackName = [(UIKBRenderFactoryiPhone *)self lightKeycapsFontFallbackName];
  v15 = [UIKBTextStyle styleWithFontName:lightKeycapsFontName withFallbackFontName:lightKeycapsFontFallbackName withFontSize:0.0];
  [v8 setSymbolStyle:v15];

  symbolStyle = [v8 symbolStyle];
  [symbolStyle setMinFontSize:9.0];

  renderConfig2 = [(UIKBRenderFactory *)self renderConfig];
  whiteText = [renderConfig2 whiteText];
  v19 = whiteText;
  if (whiteText)
  {
    blackKeycapColor = @"UIKBColorWhite";
  }

  else
  {
    blackKeycapColor = [(UIKBRenderFactory *)self blackKeycapColor];
  }

  symbolStyle2 = [v8 symbolStyle];
  [symbolStyle2 setTextColor:blackKeycapColor];

  if ((v19 & 1) == 0)
  {
  }

  symbolStyle3 = [v8 symbolStyle];
  [(UIKBRenderFactoryiPhone *)self _customizeSymbolStyle:symbolStyle3 forKey:keyCopy contents:renderingContext5];

  geometry2 = [v8 geometry];
  [(UIKBRenderFactoryiPhone *)self _customizeGeometry:geometry2 forKey:keyCopy contents:renderingContext5];

  if ([(UIKBRenderFactoryiPhone *)self _shouldConfigureSecondarySymbolStyleForSpaceKey:keyCopy])
  {
    _textStyleForSpaceKey = [(UIKBRenderFactoryiPhone *)self _textStyleForSpaceKey];
    renderConfig3 = [(UIKBRenderFactory *)self renderConfig];
    lightKeyboard = [renderConfig3 lightKeyboard];
    v27 = UIKBColorBlack_Alpha20;
    if (!lightKeyboard)
    {
      v27 = UIKBColorWhite_Alpha30;
    }

    [_textStyleForSpaceKey setTextColor:*v27];

    if ((UIKeyboardCurrentInputModeIsMultiscript() & 1) == 0)
    {
      [_textStyleForSpaceKey setFontWidth:*off_1E70ECD40];
    }

    [_textStyleForSpaceKey setAlignment:2];
    [_textStyleForSpaceKey setAnchorCorner:8];
    [_textStyleForSpaceKey setTextOffset:{5.0, 4.0}];
    v328[0] = _textStyleForSpaceKey;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v328 count:1];
    [v8 setSecondarySymbolStyles:v28];
  }

  if ([(UIKBRenderFactoryiPhone *)self _popupMenuStyleForKey:keyCopy])
  {
    displayType = [keyCopy displayType];
    geometry3 = [v8 geometry];
    [geometry3 setPopupBias:40];

    geometry4 = [v8 geometry];
    [geometry4 setTallPopup:0];

    renderingContext = [(UIKBRenderFactory *)self renderingContext];
    v33 = renderingContext;
    if (displayType == 5)
    {
      [renderingContext splitControlView];
    }

    else
    {
      [renderingContext inputSwitcherView];
    }
    v38 = ;

    [v38 popupRect];
    x = v39;
    y = v41;
    width = v43;
    height = v45;
    if ([v38 isPopupMode])
    {
      [keyCopy paddedFrame];
      v48 = v47;
      v50 = v49;
      v52 = v51;
      v54 = v53;
      renderingContext2 = [(UIKBRenderFactory *)self renderingContext];
      layoutView = [renderingContext2 layoutView];
      [layoutView convertRect:v38 fromView:{x, y, width, height}];
      v58 = v57;
      v60 = v59;
      v62 = v61;
      v64 = v63;

      v330.origin.x = v48;
      v330.origin.y = v50;
      v330.size.width = v52;
      v330.size.height = v54;
      v347.origin.x = v58;
      v347.origin.y = v60;
      v347.size.width = v62;
      v347.size.height = v64;
      v331 = CGRectUnion(v330, v347);
      x = v331.origin.x;
      y = v331.origin.y;
      width = v331.size.width;
      height = v331.size.height;
    }

    else
    {
      geometry5 = [v11 geometry];
      [geometry5 setPopupBias:0];
    }

    v332.origin.x = x;
    v332.origin.y = y;
    v332.size.width = width;
    v332.size.height = height;
    v333 = CGRectInset(v332, -12.0, -5.0);
    v66 = v333.origin.x;
    v67 = v333.size.width;
    v68 = v333.size.height;
    v69 = v333.origin.y + -2.0;
    geometry6 = [v11 geometry];
    [geometry6 setDisplayFrame:{v66, v69, v67, v68}];

    [(UIKBRenderFactoryiPhone *)self _customizePopupTraits:v11 forKey:keyCopy onKeyplane:keyplaneCopy];
    if (+[UIKBRenderFactory _graphicsQuality]== 10)
    {
      [v11 removeAllRenderEffects];
    }

    symbolStyle4 = [v11 symbolStyle];
    [symbolStyle4 setTextColor:@"UIKBColorClear"];

    v72 = v11;
    goto LABEL_201;
  }

  rect_12 = [(UIKBRenderFactoryiPhone *)self _popupStyleForKey:keyCopy];
  if (rect_12)
  {
    [(UIKBRenderFactoryiPhone *)self _configureTraitsForPopupStyle:v8 withKey:keyCopy onKeyplane:keyplaneCopy];
  }

  if ([keyCopy state] == 1)
  {
    symbolStyle5 = [v8 symbolStyle];
    [symbolStyle5 setTextOpacity:0.32];
  }

  renderingContext3 = [(UIKBRenderFactory *)self renderingContext];
  keyboardType = [renderingContext3 keyboardType];

  rect_24 = keyplaneCopy;
  if ([keyCopy displayTypeHint] == 10)
  {
    if (keyboardType == 12)
    {
      v37 = [keyplaneCopy isShiftKeyplane] ^ 1;
    }

    else
    {
      v37 = 1;
    }
  }

  else
  {
    v37 = 0;
  }

  v300 = [keyCopy stringForProperty:@"KBhint"];
  supportsSupplementalDisplayString = [keyCopy supportsSupplementalDisplayString];
  rect_16 = renderingContext5;
  if ([keyCopy displayType] == 7 && (v37 & 1) == 0)
  {
    symbolStyle6 = [v8 symbolStyle];
    lastObject = [symbolStyle6 copy];

    geometry7 = [v8 geometry];
    [geometry7 symbolFrame];
    v78 = v77;
    v80 = v79;
    v82 = v81;
    v84 = v83;

    v334.size.height = v84 * 0.275;
    v334.origin.y = v80 + v84 * 0.18;
    v334.origin.x = v78;
    v334.size.width = v82;
    v335 = CGRectIntegral(v334);
    rectb = v335.origin.x;
    v85 = v335.origin.y;
    v86 = v335.size.width;
    v87 = v335.size.height;
    v335.origin.y = v80 + v84 * 0.455;
    v335.origin.x = v78;
    v335.size.width = v82;
    v335.size.height = v84 * 0.315;
    v336 = CGRectIntegral(v335);
    v88 = v336.origin.x;
    v89 = v336.origin.y;
    v90 = v336.size.width;
    v91 = v336.size.height;
    v336.origin.x = rectb;
    v336.origin.y = v85;
    v336.size.width = v86;
    v336.size.height = v87;
    v337 = CGRectInset(v336, -3.0, -3.0);
    v92 = v337.origin.x;
    v93 = v337.origin.y;
    v94 = v337.size.width;
    v95 = v337.size.height;
    v337.origin.x = v88;
    v337.origin.y = v89;
    v337.size.width = v90;
    v337.size.height = v91;
    v338 = CGRectInset(v337, -3.0, -3.0);
    rect = v338.origin.x;
    v96 = v338.origin.y;
    v97 = v338.size.width;
    v98 = v338.size.height;
    if ([keyCopy BOOLForProperty:@"slide-down"])
    {
      v96 = v93 + v95;
    }

    v339.origin.x = v92;
    v339.origin.y = v93;
    v339.size.width = v94;
    v339.size.height = v95;
    MidY = CGRectGetMidY(v339);
    geometry8 = [v8 geometry];
    [geometry8 symbolFrame];
    v101 = MidY - CGRectGetMidY(v340);

    geometry9 = [v8 geometry];
    [geometry9 symbolFrame];
    CGRectGetMinX(v341);
    v342.origin.x = v92;
    v342.origin.y = v93;
    v342.size.width = v94;
    v342.size.height = v95;
    CGRectGetMinX(v342);

    geometry10 = [v8 geometry];
    [geometry10 symbolFrame];
    CGRectGetMaxX(v343);
    v344.origin.x = rect;
    v344.origin.y = v96;
    v344.size.width = v97;
    v344.size.height = v98;
    CGRectGetMaxX(v344);

    v345.origin.x = rect;
    v345.origin.y = v96;
    v345.size.width = v97;
    v345.size.height = v98;
    v104 = CGRectGetMidY(v345);
    geometry11 = [v8 geometry];
    [geometry11 symbolFrame];
    v106 = CGRectGetMidY(v346);

    [(UIKBRenderFactoryiPhone *)self dualStringBottomAdditionalOffsetForDisplayContents:renderingContext5];
    v108 = v107;
    [lastObject setTextOffset:{0.0, v101 + 1.5}];
    if (([(UIKBRenderFactoryiPhone *)self iPadFudgeLayout]| supportsSupplementalDisplayString))
    {
      goto LABEL_36;
    }

    renderingContext4 = [(UIKBRenderFactory *)self renderingContext];
    shiftState = [renderingContext4 shiftState];
    if (shiftState != 4)
    {
      renderingContext5 = [(UIKBRenderFactory *)self renderingContext];
      if ([renderingContext5 shiftState] == 1)
      {
        if (UIKeyboardCurrentInputModeIsMultiscript())
        {

          renderingContext5 = rect_16;
          goto LABEL_36;
        }

        supportsSupplementalDisplayString2 = [keyCopy supportsSupplementalDisplayString];

        renderingContext5 = rect_16;
        if ((supportsSupplementalDisplayString2 & 1) == 0)
        {
          goto LABEL_80;
        }

LABEL_36:
        if ([keyCopy displayTypeHint] != 10)
        {
          symbolStyle7 = [v8 symbolStyle];
          [symbolStyle7 setTextOffset:{0.0, v104 - v106 + v108}];

          v326 = lastObject;
          v110 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v326 count:1];
          [v8 setSecondarySymbolStyles:v110];
        }

        goto LABEL_86;
      }
    }

    renderingContext6 = [(UIKBRenderFactory *)self renderingContext];
    if ([renderingContext6 shiftState] == 4 && objc_msgSend(rect_24, "isShiftKeyplane") && (UIKeyboardCurrentInputModeIsMultiscript() & 1) == 0)
    {
      v157 = [keyCopy supportsSupplementalDisplayString] ^ 1;
    }

    else
    {
      v157 = 0;
    }

    if (shiftState == 4)
    {

      renderingContext5 = rect_16;
      if (!v157)
      {
        goto LABEL_36;
      }
    }

    else
    {

      renderingContext5 = rect_16;
      if ((v157 & 1) == 0)
      {
        goto LABEL_36;
      }
    }

LABEL_80:
    symbolStyle8 = [v8 symbolStyle];
    v185 = [symbolStyle8 copy];
    v327 = v185;
    v186 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v327 count:1];
    [v8 setSecondarySymbolStyles:v186];

    [v8 setSymbolStyle:0];
LABEL_86:

    goto LABEL_87;
  }

  if ([keyCopy displayTypeHint] == 10)
  {
    if ([keyCopy state] == 4)
    {
      [v8 setRenderSecondarySymbolsSeparately:1];
    }

    secondaryDisplayStrings = [renderingContext5 secondaryDisplayStrings];
    v112 = [secondaryDisplayStrings count];

    if ([keyCopy state] != 16 && v112)
    {
      array = [MEMORY[0x1E695DF70] array];
      v318 = 0u;
      v319 = 0u;
      v320 = 0u;
      v321 = 0u;
      secondaryDisplayStrings2 = [renderingContext5 secondaryDisplayStrings];
      v115 = [secondaryDisplayStrings2 countByEnumeratingWithState:&v318 objects:v325 count:16];
      if (v115)
      {
        v116 = v115;
        v117 = *v319;
        while (1)
        {
          if (*v319 != v117)
          {
            objc_enumerationMutation(secondaryDisplayStrings2);
          }

          symbolStyle9 = [v11 symbolStyle];
          v119 = [symbolStyle9 copy];
          [array addObject:v119];

          if (!--v116)
          {
            v116 = [secondaryDisplayStrings2 countByEnumeratingWithState:&v318 objects:v325 count:16];
            if (!v116)
            {
              break;
            }
          }
        }
      }

      [v11 setSecondarySymbolStyles:array];
      renderingContext5 = rect_16;
    }

    if ([keyCopy state] <= 2)
    {
      displayType2 = [keyCopy displayType];
      renderConfig4 = [(UIKBRenderFactory *)self renderConfig];
      if ([renderConfig4 lightKeyboard])
      {
        v122 = 0.25;
      }

      else
      {
        v122 = 0.3;
      }

      v123 = dbl_18A67EF60[displayType2 == 7];
      if (displayType2 == 7)
      {
        v124 = 1.0;
      }

      else
      {
        v124 = 0.65;
      }

      v125 = dbl_18A67EF70[displayType2 == 7];
      symbolStyle10 = [v11 symbolStyle];
      [symbolStyle10 textOffset];
      v128 = v127;
      v130 = v129;

      geometry12 = [v11 geometry];
      [geometry12 displayFrame];
      v133 = v123 * v132;

      v134 = [keyCopy BOOLForProperty:@"slide-down"];
      v135 = v133 + v133;
      if (!v134)
      {
        v135 = v133;
      }

      v136 = v130 + v135;
      symbolStyle11 = [v11 symbolStyle];
      [symbolStyle11 setTextOffset:{v128, v136}];

      if (v112 == 2)
      {
        geometry13 = [v11 geometry];
        [geometry13 displayFrame];
        v160 = v125 * v159;

        secondarySymbolStyles = [v11 secondarySymbolStyles];
        firstObject = [secondarySymbolStyles firstObject];

        [firstObject setTextOpacity:v122];
        [firstObject fontSize];
        [firstObject setFontSize:v124 * v163];
        [firstObject textOffset];
        v165 = v164;
        v167 = v166 - v160;
        geometry14 = [v11 geometry];
        [geometry14 displayFrame];
        v170 = v165 - v169 * 0.24;

        [firstObject setTextOffset:{v170, v167}];
        secondarySymbolStyles2 = [v11 secondarySymbolStyles];
        lastObject = [secondarySymbolStyles2 lastObject];

        [lastObject setTextOpacity:v122];
        [lastObject fontSize];
        [lastObject setFontSize:v124 * v172];
        [lastObject textOffset];
        v174 = v173;
        v176 = v175 - v160;
        geometry15 = [v11 geometry];
        [geometry15 displayFrame];
        v179 = v174 + v178 * 0.24;

        v180 = lastObject;
        v181 = v179;
        v182 = v176;
LABEL_85:
        [v180 setTextOffset:{v181, v182}];
        goto LABEL_86;
      }

      if (v112 == 1)
      {
        secondarySymbolStyles3 = [v11 secondarySymbolStyles];
        lastObject = [secondarySymbolStyles3 firstObject];

        if ([keyCopy displayType] != 7)
        {
          [lastObject setTextOpacity:v122];
        }

        [lastObject setImageScale:v124];
        [lastObject textOffset];
        v140 = v139;
        v142 = v141;
        geometry16 = [v11 geometry];
        [geometry16 displayFrame];
        v145 = v144;

        [lastObject fontSize];
        v147 = v146;
        [lastObject setFontSize:v124 * v146];
        secondaryDisplayStrings3 = [keyCopy secondaryDisplayStrings];
        firstObject2 = [secondaryDisplayStrings3 firstObject];
        v150 = [firstObject2 isEqualToString:@"٬"];

        if (v150)
        {
          [lastObject setFontSize:v147 * 1.1];
          geometry17 = [v11 geometry];
          [geometry17 displayFrame];
          v153 = v152 * 0.27;
        }

        else
        {
          v153 = v125 * v145;
          secondaryDisplayStrings4 = [keyCopy secondaryDisplayStrings];
          firstObject3 = [secondaryDisplayStrings4 firstObject];
          decimalDigitCharacterSet = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
          v190 = [firstObject3 rangeOfCharacterFromSet:decimalDigitCharacterSet];

          if (v190 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [lastObject fontSize];
            [lastObject setFontSize:v191 * 0.9];
          }
        }

        v182 = v142 - v153;
        v180 = lastObject;
        v181 = v140;
        goto LABEL_85;
      }
    }
  }

LABEL_87:
  if ([keyCopy displayType] == 23 || objc_msgSend(keyCopy, "displayType") == 51 || objc_msgSend(renderingContext5, "displayPathType"))
  {
    if (_UISolariumEnabled())
    {
      v192 = +[UIKeyboardPreferencesController sharedPreferencesController];
      preferencesActions = [v192 preferencesActions];
      if ([preferencesActions showSensitiveUI])
      {
        v194 = +[UIKeyboardPreferencesController sharedPreferencesController];
        preferencesActions2 = [v194 preferencesActions];
        colorAdaptiveKeyboardEnabled = [preferencesActions2 colorAdaptiveKeyboardEnabled];

        if (colorAdaptiveKeyboardEnabled)
        {
          renderConfig5 = [(UIKBRenderFactory *)self renderConfig];
          lightKeyboard2 = [renderConfig5 lightKeyboard];
          v199 = lightKeyboard2;
          if (lightKeyboard2)
          {
            blackKeycapColor2 = [(UIKBRenderFactory *)self blackKeycapColor];
          }

          else
          {
            blackKeycapColor2 = @"UIKBColorWhite";
          }

          symbolStyle12 = [v11 symbolStyle];
          [symbolStyle12 setTextColor:blackKeycapColor2];

          if ((v199 & 1) == 0)
          {
            goto LABEL_102;
          }

          goto LABEL_101;
        }
      }

      else
      {
      }
    }

    renderConfig5 = [(UIKBRenderFactory *)self renderConfig];
    if (([renderConfig5 lightKeyboard] & 1) != 0 || objc_msgSend(keyCopy, "state") >= 3)
    {
      blackKeycapColor2 = [(UIKBRenderFactory *)self blackKeycapColor];
      v201 = 1;
    }

    else
    {
      v201 = 0;
      blackKeycapColor2 = @"UIKBColorWhite";
    }

    symbolStyle13 = [v11 symbolStyle];
    [symbolStyle13 setTextColor:blackKeycapColor2];

    if (!v201)
    {
      goto LABEL_102;
    }

LABEL_101:

LABEL_102:
  }

  if ([keyCopy displayType] == 3)
  {
    renderConfig6 = [(UIKBRenderFactory *)self renderConfig];
    lightKeyboard3 = [renderConfig6 lightKeyboard];
    if (lightKeyboard3)
    {
      blackKeycapColor3 = [(UIKBRenderFactory *)self blackKeycapColor];
    }

    else
    {
      blackKeycapColor3 = @"UIKBColorWhite";
    }

    symbolStyle14 = [v11 symbolStyle];
    [symbolStyle14 setTextColor:blackKeycapColor3];

    if (lightKeyboard3)
    {
    }
  }

  if (-[UIKBRenderFactory drawsOneHandedAffordance](self, "drawsOneHandedAffordance") && [keyCopy displayType] == 25)
  {
    v207 = objc_alloc_init(UIKBDivotedEffect);
    [v11 addRenderEffect:v207];
    [v11 setRenderFlagsForAboveEffects:{objc_msgSend(v11, "renderFlagsForAboveEffects") | 1}];
  }

  recta = v11;
  if (rect_12)
  {
    goto LABEL_140;
  }

  if (!-[UIKBRenderFactory useBlueThemingForKey:](self, "useBlueThemingForKey:", keyCopy) || [keyCopy state] != 2)
  {
    if (-[UIKBRenderFactory useBlueThemingForKey:](self, "useBlueThemingForKey:", keyCopy) && [keyCopy state] == 1 && (-[UIKBRenderFactory renderConfig](self, "renderConfig"), v217 = objc_claimAutoreleasedReturnValue(), v218 = objc_msgSend(v217, "colorAdaptiveBackground"), v217, v218))
    {
      renderConfig7 = [(UIKBRenderFactory *)self renderConfig];
      lightKeyboard4 = [(__CFString *)renderConfig7 lightKeyboard];
      v220 = UIKBColorBlack_Alpha15;
      if (!lightKeyboard4)
      {
        v220 = UIKBColorWhite_Alpha40;
      }

      v221 = [UIKBGradient gradientWithFlatColor:*v220];
      [v11 setLayeredForegroundGradient:v221];
    }

    else
    {
      renderConfig7 = [(UIKBRenderFactory *)self defaultKeyShadowColorName];
      displayType3 = [keyCopy displayType];
      if (displayType3 == 47)
      {
        [(UIKBRenderFactoryiPhone *)self _customizeTraits:v11 forPredictionCellKey:keyCopy];
        goto LABEL_139;
      }

      if (displayType3 == 48)
      {
        name = [keyCopy name];
        v224 = [name isEqualToString:@"DividerLine"];

        if (!v224)
        {
          name2 = [keyCopy name];
          v261 = [name2 isEqualToString:@"SelectionBackground"];

          if (v261)
          {
            renderConfig8 = [(UIKBRenderFactory *)self renderConfig];
            lightKeyboard5 = [renderConfig8 lightKeyboard];
            v264 = UIKBPredictionCandidateEnabledBackground;
            if (!lightKeyboard5)
            {
              v264 = UIKBColorKeyGrayKeyLightBackground;
            }

            v265 = [UIKBGradient gradientWithFlatColor:*v264];
            [v11 setBackgroundGradient:v265];
          }

          goto LABEL_139;
        }

        v221 = [UIKBGradient gradientWithFlatColor:@"UIKBPredictionCandidateEnabledBackground"];
        [v11 setBackgroundGradient:v221];
      }

      else
      {
        defaultKeyBackgroundColorName = [(UIKBRenderFactory *)self defaultKeyBackgroundColorName];
        v226 = [UIKBGradient gradientWithFlatColor:defaultKeyBackgroundColorName];
        [v11 setBackgroundGradient:v226];

        if (([keyCopy state] & 4) != 0 && objc_msgSend(keyCopy, "displayType") != 23 && !-[UIKBRenderFactory useBlueThemingForKey:](self, "useBlueThemingForKey:", keyCopy))
        {
          if (-[UIKBRenderFactory allowsPaddleForKey:](self, "allowsPaddleForKey:", keyCopy) && (-[UIKBRenderFactory renderConfig](self, "renderConfig"), v278 = objc_claimAutoreleasedReturnValue(), v279 = [v278 colorAdaptiveBackground], v278, (v279 & 1) == 0))
          {
            [v11 setControlOpacities:1];
            controlKeyBackgroundColorName = [(UIKBRenderFactory *)self controlKeyBackgroundColorName];
            v296 = [UIKBGradient gradientWithFlatColor:controlKeyBackgroundColorName];
            [v11 setBackgroundGradient:v296];

            [(UIKBRenderFactory *)self controlKeyShadowColorName];
            renderConfig7 = defaultKeyBackgroundColorName2 = renderConfig7;
          }

          else
          {
            renderConfig9 = [(UIKBRenderFactory *)self renderConfig];
            animatedBackground = [renderConfig9 animatedBackground];

            if (animatedBackground)
            {
              v282 = v11;
              [v11 setBlurBlending:1];
              defaultKeyBackgroundColorName2 = [(UIKBRenderFactory *)self defaultKeyBackgroundColorName];
              v284 = [UIKBGradient gradientWithFlatColor:@"UIKBColorWhite_Alpha10"];
              [v11 setLayeredForegroundGradient:v284];

              [v11 setBlendForm:9];
            }

            else
            {
              renderConfig10 = [(UIKBRenderFactory *)self renderConfig];
              colorAdaptiveBackground = [renderConfig10 colorAdaptiveBackground];

              renderConfig11 = [(UIKBRenderFactory *)self renderConfig];
              lightKeyboard6 = [renderConfig11 lightKeyboard];
              v289 = lightKeyboard6;
              if (colorAdaptiveBackground)
              {
                if (lightKeyboard6)
                {
                  v290 = 13;
                }

                else
                {
                  v290 = 12;
                }

                v282 = v11;
                [v11 setBlendForm:v290];

                renderConfig12 = [(UIKBRenderFactory *)self renderConfig];
                lightKeyboard7 = [renderConfig12 lightKeyboard];
                v293 = UIKBColorBlack_Alpha15;
                if (!lightKeyboard7)
                {
                  v293 = UIKBColorWhite_Alpha40;
                }

                defaultKeyBackgroundColorName2 = *v293;

                v294 = [UIKBGradient gradientWithFlatColor:defaultKeyBackgroundColorName2];
                [v11 setLayeredForegroundGradient:v294];
              }

              else
              {

                if (v289)
                {
                  defaultKeyBackgroundColorName2 = @"UIKBColorLightGrayPressState";
                  v282 = v11;
                }

                else
                {
                  v282 = v11;
                  [v11 setBlurBlending:1];
                  if ([objc_opt_class() _graphicsQuality] == 100)
                  {
                    [v11 setBlendForm:6];
                    v297 = UIKBColorKeyGrayKeyActiveDarkBackground;
                  }

                  else
                  {
                    v297 = UIKBColorKeyGrayKeyDarkBackground;
                  }

                  defaultKeyBackgroundColorName2 = *v297;
                }
              }
            }

            v298 = [UIKBGradient gradientWithFlatColor:defaultKeyBackgroundColorName2];
            [v282 setBackgroundGradient:v298];

            v11 = v282;
          }
        }

        renderConfig13 = [(UIKBRenderFactory *)self renderConfig];
        colorAdaptiveBackground2 = [renderConfig13 colorAdaptiveBackground];

        if (colorAdaptiveBackground2)
        {
          goto LABEL_139;
        }

        v221 = [UIKBEdgeEffect effectWithColor:renderConfig7 edges:4 inset:-1.0 weight:1.0];
        [v11 addRenderEffect:v221];
      }
    }

    goto LABEL_139;
  }

  [(UIKBRenderFactory *)self suppressLayoutSegments];
  increasedContrastEnabled = [(UIKBRenderFactory *)self increasedContrastEnabled];
  v209 = UIKBColorBlue;
  if (!increasedContrastEnabled)
  {
    v209 = UIKBColorKeyBlueKeyBackground;
  }

  v210 = [UIKBGradient gradientWithFlatColor:*v209];
  [v11 setLayeredForegroundGradient:v210];

  renderConfig14 = [(UIKBRenderFactory *)self renderConfig];
  colorAdaptiveBackground3 = [renderConfig14 colorAdaptiveBackground];

  if ((colorAdaptiveBackground3 & 1) == 0)
  {
    v213 = [UIKBEdgeEffect effectWithColor:@"UIKBColorBlack_Alpha50" edges:4 inset:-1.0 weight:1.0];
    [v11 addRenderEffect:v213];
  }

  renderConfig15 = [(UIKBRenderFactory *)self renderConfig];
  lightKeyboard8 = [renderConfig15 lightKeyboard];

  if (!lightKeyboard8)
  {
    goto LABEL_140;
  }

  renderConfig7 = [v11 symbolStyle];
  [(__CFString *)renderConfig7 setTextColor:@"UIKBColorWhite"];
LABEL_139:

LABEL_140:
  displayString = [renderingContext5 displayString];
  v230 = [(UIKBRenderFactory *)self glyphSelectorForDisplayString:displayString];

  if (v230)
  {
    symbolStyle15 = [v11 symbolStyle];
    [symbolStyle15 setSelector:v230];
  }

  secondaryDisplayStrings5 = [renderingContext5 secondaryDisplayStrings];
  v315[0] = MEMORY[0x1E69E9820];
  v315[1] = 3221225472;
  v315[2] = __52__UIKBRenderFactoryiPhone__traitsForKey_onKeyplane___block_invoke;
  v315[3] = &unk_1E70FF4D0;
  v233 = v11;
  v316 = v233;
  selfCopy = self;
  [secondaryDisplayStrings5 enumerateObjectsUsingBlock:v315];

  v313 = 0u;
  v314 = 0u;
  v311 = 0u;
  v312 = 0u;
  variantDisplayContents = [renderingContext5 variantDisplayContents];
  v235 = [variantDisplayContents countByEnumeratingWithState:&v311 objects:v324 count:16];
  if (v235)
  {
    v236 = v235;
    v237 = *v312;
    do
    {
      for (i = 0; i != v236; ++i)
      {
        if (*v312 != v237)
        {
          objc_enumerationMutation(variantDisplayContents);
        }

        displayString2 = [*(*(&v311 + 1) + 8 * i) displayString];
        v240 = [(UIKBRenderFactory *)self glyphSelectorForDisplayString:displayString2];

        if (v240)
        {
          variantTraits = [v233 variantTraits];
          symbolStyle16 = [variantTraits symbolStyle];
          [symbolStyle16 setSelector:v240];

          highlightedVariantTraits = [v233 highlightedVariantTraits];
          symbolStyle17 = [highlightedVariantTraits symbolStyle];
          [symbolStyle17 setSelector:v240];
        }
      }

      v236 = [variantDisplayContents countByEnumeratingWithState:&v311 objects:v324 count:16];
    }

    while (v236);
  }

  keyplaneCopy = rect_24;
  if ([keyCopy displayType] == 27 && objc_msgSend(keyCopy, "variantType") == 4)
  {
    v245 = [rect_24 firstCachedKeyWithName:@"International-Key"];
    displayRowHint = [v245 displayRowHint];

    if ([keyCopy displayRowHint] == displayRowHint)
    {
      [(UIKBRenderFactory *)self suppressLayoutSegments];
    }
  }

  renderConfig16 = [(UIKBRenderFactory *)self renderConfig];
  lightKeyboard9 = [renderConfig16 lightKeyboard];

  if (lightKeyboard9)
  {
    v309 = 0u;
    v310 = 0u;
    v307 = 0u;
    v308 = 0u;
    subtrees = [rect_24 subtrees];
    v250 = [subtrees countByEnumeratingWithState:&v307 objects:v323 count:16];
    if (v250)
    {
      v299 = keyCopy;
      v251 = *v308;
LABEL_158:
      v252 = 0;
      while (1)
      {
        if (*v308 != v251)
        {
          objc_enumerationMutation(subtrees);
        }

        v253 = *(*(&v307 + 1) + 8 * v252);
        name3 = [v253 name];
        v255 = [name3 _containsSubstring:@"Assist"];

        if (v255)
        {
          break;
        }

        if (v250 == ++v252)
        {
          v250 = [subtrees countByEnumeratingWithState:&v307 objects:v323 count:16];
          if (v250)
          {
            goto LABEL_158;
          }

          keyCopy = v299;
          keyplaneCopy = rect_24;
          goto LABEL_180;
        }
      }

      v250 = v253;

      if (!v250)
      {
        keyCopy = v299;
        keyplaneCopy = rect_24;
        goto LABEL_181;
      }

      keys = [v250 keys];
      keyCopy = v299;
      v257 = [keys containsObject:v299];

      keyplaneCopy = rect_24;
      if (!v257)
      {
        goto LABEL_181;
      }

      if (([v299 state] & 3) != 0)
      {
        shiftedControlKeyTraits = [(UIKBRenderFactoryiPhone *)self shiftedControlKeyTraits];
      }

      else
      {
        if (([v299 state] & 4) == 0)
        {
          goto LABEL_181;
        }

        shiftedControlKeyTraits = [(UIKBRenderFactoryiPhone *)self controlKeyTraits];
      }

      subtrees = shiftedControlKeyTraits;
      [v233 overlayWithTraits:shiftedControlKeyTraits];
    }

LABEL_180:

LABEL_181:
  }

  renderingContext5 = rect_16;
  if ([keyCopy supportsSupplementalDisplayString] && objc_msgSend(keyCopy, "displayType") == 7)
  {
    if (rect_12)
    {
      v266 = 1;
    }

    else if ([(UIKBRenderFactoryiPhone *)self isCustomizedKeyStyle])
    {
      v266 = 2;
    }

    else
    {
      v266 = 0;
    }

    name4 = [keyplaneCopy name];
    v268 = [name4 containsString:@"Thai-24-Key"];

    if (v268)
    {
      [(UIKBRenderFactoryiPhone *)self _customizeTraits:v233 forThaiMultiKey:keyCopy];
    }

    else
    {
      [(UIKBRenderFactoryiPhone *)self _customizeTraits:v233 forMultiscriptKey:keyCopy style:v266];
    }
  }

  if ([keyCopy displayType] == 7)
  {
    displayString3 = [keyCopy displayString];
    if ([displayString3 isEqualToString:@"ㄢ"])
    {
      secondaryDisplayStrings6 = [keyCopy secondaryDisplayStrings];
      firstObject4 = [secondaryDisplayStrings6 firstObject];
      v272 = [firstObject4 isEqualToString:@"ㄦ"];

      if (v272)
      {
        [(UIKBRenderFactoryiPhone *)self _customizeTraits:v233 forZhuyinGridDualStringKey:keyCopy];
      }
    }

    else
    {
    }
  }

  if (![keyCopy interactionType])
  {
    name5 = [keyCopy name];
    v274 = [name5 containsString:@"Empty-Key"];

    if (v274)
    {
      v275 = [UIKBGradient gradientWithFlatColor:@"UIKBColorClear"];
      [v233 setBackgroundGradient:v275];
    }
  }

  v276 = v233;

  v38 = v300;
  v11 = recta;
LABEL_201:

  return v11;
}

void __52__UIKBRenderFactoryiPhone__traitsForKey_onKeyplane___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v11 = a2;
  v5 = [*(a1 + 32) secondarySymbolStyles];
  v6 = [v5 count];

  if (v6 > a3)
  {
    v7 = [*(a1 + 40) glyphSelectorForDisplayString:v11];
    if (v7)
    {
      v8 = v7;
      v9 = [*(a1 + 32) secondarySymbolStyles];
      v10 = [v9 objectAtIndex:a3];

      [v10 setSelector:v8];
    }
  }
}

- (BOOL)isCustomizedKeyStyle
{
  v2 = +[UIKeyboardInputModeController sharedInputModeController];
  currentInputMode = [v2 currentInputMode];
  softwareLayout = [currentInputMode softwareLayout];

  if ([softwareLayout containsString:@"Thai"] & 1) != 0 || (objc_msgSend(softwareLayout, "isEqualToString:", @"Korean-With-QWERTY"))
  {
    v5 = 1;
  }

  else
  {
    v5 = [softwareLayout containsString:@"Arabic-With-QWERTY"];
  }

  return v5;
}

+ (id)_textOffsetHints
{
  if (qword_1ED49F138 != -1)
  {
    dispatch_once(&qword_1ED49F138, &__block_literal_global_746);
  }

  v2 = +[UIKeyboardInputModeController sharedInputModeController];
  currentInputMode = [v2 currentInputMode];
  softwareLayout = [currentInputMode softwareLayout];

  v5 = [qword_1ED49F140 objectForKeyedSubscript:softwareLayout];

  if (!v5)
  {
    if ([softwareLayout containsString:@"Thai"])
    {
      v6 = @"TUI-Thai-TextOffsets.plist";
    }

    else if ([softwareLayout isEqualToString:@"Korean-With-QWERTY"])
    {
      v6 = @"TUI-Korean-With-QWERTY-TextOffsets.plist";
    }

    else if ([softwareLayout containsString:@"Arabic-With-QWERTY"])
    {
      v6 = @"TUI-Arabic-With-QWERTY-TextOffsets.plist";
    }

    else
    {
      v6 = 0;
    }

    v7 = TextInputUIBundle();
    bundlePath = [v7 bundlePath];
    v9 = [bundlePath stringByAppendingPathComponent:v6];

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    LODWORD(bundlePath) = [defaultManager fileExistsAtPath:v9];

    if (bundlePath)
    {
      v11 = qword_1ED49F140;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v9];
      [v11 setObject:v12 forKey:softwareLayout];
    }
  }

  v13 = [qword_1ED49F140 objectForKeyedSubscript:softwareLayout];

  return v13;
}

void __43__UIKBRenderFactoryiPhone__textOffsetHints__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = qword_1ED49F140;
  qword_1ED49F140 = v0;
}

- ($89C9DF7554150EC42DA90319EED2ADED)customizedOffsetForString:(SEL)string isPrimary:(id)primary isLandscape:(BOOL)landscape withFrame:(BOOL)frame
{
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  frameCopy = frame;
  landscapeCopy = landscape;
  primaryCopy = primary;
  _textOffsetHints = [objc_opt_class() _textOffsetHints];
  v54 = landscapeCopy;
  v53 = frameCopy;
  if (landscapeCopy)
  {
    v14 = @"primaryX";
    v15 = !frameCopy;
    if (frameCopy)
    {
      v14 = @"primaryLandscapeX";
      v16 = @"primaryLandscapeY";
    }

    else
    {
      v16 = @"primaryY";
    }

    if (frameCopy)
    {
      v17 = @"primaryLandscapeDeltaX";
    }

    else
    {
      v17 = @"primaryDeltaX";
    }

    if (frameCopy)
    {
      v18 = @"primaryLandscapeDeltaY";
    }

    else
    {
      v18 = @"primaryDeltaY";
    }

    v19 = @"primaryFontSize";
    v20 = @"primaryLandscapeFontSize";
  }

  else
  {
    v14 = @"secondaryX";
    v15 = !frameCopy;
    if (frameCopy)
    {
      v14 = @"secondaryLandscapeX";
      v16 = @"secondaryLandscapeY";
    }

    else
    {
      v16 = @"secondaryY";
    }

    if (frameCopy)
    {
      v17 = @"secondaryLandscapeDeltaX";
    }

    else
    {
      v17 = @"secondaryDeltaX";
    }

    if (frameCopy)
    {
      v18 = @"secondaryLandscapeDeltaY";
    }

    else
    {
      v18 = @"secondaryDeltaY";
    }

    v19 = @"secondaryFontSize";
    v20 = @"secondaryLandscapeFontSize";
  }

  if (v15)
  {
    v21 = v19;
  }

  else
  {
    v21 = v20;
  }

  v22 = v14;
  v23 = v16;
  v24 = v17;
  v25 = v18;
  v55 = v21;
  v26 = [_textOffsetHints objectForKeyedSubscript:@"Configuration"];
  v56 = v22;
  v27 = [v26 objectForKeyedSubscript:v22];
  [v27 floatValue];
  v28 = primaryCopy;
  v29 = [_textOffsetHints objectForKeyedSubscript:primaryCopy];
  v30 = [v29 objectForKeyedSubscript:v24];
  [v30 floatValue];

  v31 = [_textOffsetHints objectForKeyedSubscript:@"Configuration"];
  v32 = [v31 objectForKeyedSubscript:v23];
  [v32 floatValue];
  v33 = [_textOffsetHints objectForKeyedSubscript:primaryCopy];
  v34 = [v33 objectForKeyedSubscript:v25];
  [v34 floatValue];

  v35 = [_textOffsetHints objectForKeyedSubscript:@"Configuration"];
  v36 = [v35 objectForKeyedSubscript:@"minPortraitSmallKeyWidth"];
  [v36 floatValue];
  v52 = v37;

  v38 = [_textOffsetHints objectForKeyedSubscript:@"Configuration"];
  v39 = [v38 objectForKeyedSubscript:@"minLandscapeSmallKeyWidth"];
  [v39 floatValue];
  v41 = v40;

  if (v54)
  {
    v42 = v56;
    v43 = v25;
    goto LABEL_36;
  }

  if (v53 && v41 > 0.0)
  {
    v58.origin.x = x;
    v58.origin.y = y;
    v58.size.width = width;
    v58.size.height = height;
    if (CGRectGetWidth(v58) < v41)
    {
      v44 = @"secondaryLandscapeSmallKeyDeltaX";
      v42 = v56;
      v43 = v25;
LABEL_35:
      v45 = [_textOffsetHints objectForKeyedSubscript:@"Configuration"];
      v46 = [v45 objectForKeyedSubscript:v44];
      [v46 floatValue];

      v28 = primaryCopy;
      goto LABEL_36;
    }
  }

  v42 = v56;
  v43 = v25;
  if (!v53 && v41 > 0.0)
  {
    v59.origin.x = x;
    v59.origin.y = y;
    v59.size.width = width;
    v59.size.height = height;
    if (CGRectGetWidth(v59) < v52)
    {
      v44 = @"secondarySmallKeyDeltaX";
      goto LABEL_35;
    }
  }

LABEL_36:
  v47 = [_textOffsetHints objectForKeyedSubscript:@"Configuration"];
  v48 = [v47 objectForKeyedSubscript:v55];
  [v48 floatValue];

  v49 = [_textOffsetHints objectForKeyedSubscript:v28];
  v50 = [v49 objectForKeyedSubscript:@"deltaFontSize"];
  [v50 floatValue];

  return result;
}

@end