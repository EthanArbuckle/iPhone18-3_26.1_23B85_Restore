@interface UIKBRenderFactoryiPhone
+ (id)_textOffsetHints;
- ($89C9DF7554150EC42DA90319EED2ADED)customizedOffsetForString:(SEL)a3 isPrimary:(id)a4 isLandscape:(BOOL)a5 withFrame:(BOOL)a6;
- (BOOL)_popupMenuStyleForKey:(id)a3;
- (BOOL)_popupStyleForKey:(id)a3;
- (BOOL)_shouldConfigureSecondarySymbolStyleForSpaceKey:(id)a3;
- (BOOL)isCustomizedKeyStyle;
- (BOOL)needsSmallerFontSizeForKey:(id)a3;
- (BOOL)shouldOverlayAlternateTagKey:(id)a3 onKeyplane:(id)a4;
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
- (UIEdgeInsets)dynamicInsetsForNumberOfRows:(unint64_t)a3;
- (UIEdgeInsets)variantDisplayFrameInsets;
- (UIEdgeInsets)variantPaddedFrameInsets;
- (UIEdgeInsets)variantSymbolFrameInsets;
- (UIEdgeInsets)wideShadowPaddleInsets;
- (double)deleteKeyFontSize;
- (double)dualStringBottomAdditionalOffsetForDisplayContents:(id)a3;
- (double)hintNoneKeyFontSize;
- (double)keyCornerRadius;
- (double)moreABCKeyFontSize;
- (double)moreABCKeyWideCellFontSize;
- (double)moreKeyFontSize;
- (double)returnKeyFontSize;
- (double)shiftKeyFontSize;
- (double)stringKeyFontSize;
- (id)_textStyleForSpaceKey;
- (id)_traitsForKey:(id)a3 onKeyplane:(id)a4;
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
- (id)variantGeometriesForGeometry:(id)a3 variantCount:(unint64_t)a4 rowLimit:(int64_t)a5 annotationIndex:(unint64_t)a6;
- (void)_configureTraitsForPopupStyle:(id)a3 withKey:(id)a4 onKeyplane:(id)a5;
- (void)_customizeGeometry:(id)a3 forKey:(id)a4 contents:(id)a5;
- (void)_customizeLetterSymbolStyle:(id)a3 forKey:(id)a4;
- (void)_customizePopupTraits:(id)a3 forKey:(id)a4 onKeyplane:(id)a5;
- (void)_customizeSymbolStyle:(id)a3 forKey:(id)a4 contents:(id)a5;
- (void)_customizeTraits:(id)a3 forMultiscriptKey:(id)a4 style:(int64_t)a5;
- (void)_customizeTraits:(id)a3 forPredictionCellKey:(id)a4;
- (void)_customizeTraits:(id)a3 forThaiMultiKey:(id)a4;
- (void)_customizeTraits:(id)a3 forZhuyinGridDualStringKey:(id)a4;
- (void)setupLayoutSegments;
@end

@implementation UIKBRenderFactoryiPhone

- (double)stringKeyFontSize
{
  v2 = [(UIKBRenderFactory *)self renderConfig];
  if ([v2 usesCompactKeycapsFont])
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
  v3 = [(UIKBRenderFactory *)self renderingContext];
  v4 = [v3 isColorAdaptiveNonLinearCarplayKeyboard];

  v5 = 6.0;
  if ((v4 & 1) == 0)
  {
    v6 = [(UIKBRenderFactory *)self renderConfig];
    if ([v6 colorAdaptiveBackground])
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
  v2 = [(UIKBRenderFactory *)self renderConfig];
  if ([v2 usesCompactKeycapsFont])
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
  v2 = [(UIKBRenderFactory *)self renderConfig];
  if ([v2 usesCompactKeycapsFont])
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
  v2 = [(UIKBRenderFactory *)self renderConfig];
  if ([v2 usesCompactKeycapsFont])
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
  v2 = [(UIKBRenderFactory *)self renderConfig];
  v3 = [v2 usesCompactKeycapsFont];

  if (v3)
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
  v2 = [(UIKBRenderFactory *)self renderConfig];
  if ([v2 usesCompactKeycapsFont])
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
  v2 = [(UIKBRenderFactory *)self renderConfig];
  if ([v2 usesCompactKeycapsFont])
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
  v2 = [(UIKBRenderFactory *)self renderConfig];
  v3 = [v2 usesCompactKeycapsFont];
  if (v3)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = *MEMORY[0x1E695EFF8];
  }

  if (v3)
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
  v2 = [(UIKBRenderFactoryiPhone *)self spaceKeySecondarySymbolFontName];
  v3 = [UIKBTextStyle styleWithFontName:v2 withFontSize:13.5];

  return v3;
}

- (id)shiftedControlKeyTraits
{
  v3 = [(UIKBRenderFactory *)self renderConfig];
  v4 = [v3 lightKeyboard];

  if (v4)
  {
    v5 = [(UIKBRenderFactory *)self renderConfig];
    if ([v5 lightKeyboard])
    {
      [(UIKBRenderFactoryiPhone *)self activeControlKeyTraits];
    }

    else
    {
      [(UIKBRenderFactoryiPhone *)self controlKeyTraits];
    }
    v6 = ;

    v7 = [(UIKBRenderFactory *)self renderConfig];
    v8 = [v7 animatedBackground];

    if (v8)
    {
      [v6 setBlurBlending:1];
      v9 = [UIKBGradient gradientWithFlatColor:@"UIKBColorWhite_Alpha25"];
      [v6 setLayeredForegroundGradient:v9];
    }

    v10 = [(UIKBRenderFactory *)self renderConfig];
    if ([v10 lightKeyboard])
    {
      v11 = [(UIKBRenderFactory *)self blackKeycapColor];
    }

    else
    {
      v11 = @"UIKBColorWhite_Alpha20";
    }

    v12 = v11;

    v13 = [UIKBTextStyle styleWithTextColor:v12];
    [v6 setSymbolStyle:v13];
  }

  else
  {
    v6 = [(UIKBRenderFactoryiPhone *)self shiftLockControlKeyTraits];
  }

  return v6;
}

- (void)setupLayoutSegments
{
  [(UIKBRenderFactoryiPhone *)self _row4ControlSegmentWidthLeft];
  v4 = v3;
  [(UIKBRenderFactoryiPhone *)self _row4ControlSegmentWidthRight];
  v6 = 1.0 - v5;
  [(UIKBRenderFactoryiPhone *)self _row4ControlSegmentWidthRight];
  v8 = v7;
  v19 = [(UIKBRenderFactoryiPhone *)self controlKeyTraits];
  v9 = [UIKBRenderFactoryLayoutSegment segmentWithTraits:v19];
  [v9 setKeyStates:3];
  [v9 addRelativeLayoutRectFromEdge:10 ofCachedKey:@"Shift-Key"];
  [v9 addRelativeLayoutRectFromEdge:10 ofCachedKey:@"Delete-Key"];
  [v9 addLayoutRect:0 asTriangle:{0.0, 0.8, v4, 0.2}];
  [v9 addLayoutRect:0 asTriangle:{v6, 0.8, v8, 0.2}];
  [(UIKBRenderFactory *)self addLayoutSegment:v9];
  v10 = [(UIKBRenderFactoryiPhone *)self shiftDeleteGlyphTraits];
  v11 = [UIKBRenderFactoryLayoutSegment segmentWithTraits:v10];

  [v11 setKeyStates:3];
  [v11 addRelativeLayoutRectFromEdge:10 ofCachedKey:@"Shift-Key"];
  [v11 addRelativeLayoutRectFromEdge:10 ofCachedKey:@"Delete-Key"];
  [(UIKBRenderFactory *)self addLayoutSegment:v11];
  v12 = [UIKBRenderFactoryLayoutSegment segmentWithTraits:v19];
  [v12 setKeyStates:4];
  [v12 addLayoutRect:0 asTriangle:{0.0, 0.75, 1.0, 0.25}];
  [(UIKBRenderFactory *)self addLayoutSegment:v12];
  v13 = [(UIKBRenderFactoryiPhone *)self shiftedControlKeyTraits];
  v14 = [UIKBRenderFactoryLayoutSegment segmentWithTraits:v13];

  [v14 setKeyStates:100];
  [v14 addRelativeLayoutRectFromEdge:10 ofCachedKey:@"Shift-Key"];
  [(UIKBRenderFactory *)self addLayoutSegment:v14];
  v15 = [(UIKBRenderFactoryiPhone *)self shiftLockControlKeyTraits];
  v16 = [UIKBRenderFactoryLayoutSegment segmentWithTraits:v15];

  [v16 setKeyStates:8];
  [v16 addRelativeLayoutRectFromEdge:10 ofCachedKey:@"Shift-Key"];
  [(UIKBRenderFactory *)self addLayoutSegment:v16];
  v17 = [(UIKBRenderFactoryiPhone *)self activeControlKeyTraits];
  v18 = [UIKBRenderFactoryLayoutSegment segmentWithTraits:v17];
  [v18 setKeyStates:4];
  [v18 addRelativeLayoutRectFromEdge:10 ofCachedKey:@"Delete-Key"];
  [v18 addLayoutRect:0 asTriangle:{0.0, 0.8, v4, 0.2}];
  [v18 addLayoutRect:0 asTriangle:{v6, 0.8, v8, 0.2}];
  [(UIKBRenderFactory *)self addLayoutSegment:v18];
}

- (id)controlKeyTraits
{
  v3 = [UIKBRenderTraits traitsWithSymbolStyle:0];
  v4 = [(UIKBRenderFactory *)self renderConfig];
  v5 = [v4 colorAdaptiveBackground];

  if ((v5 & 1) == 0)
  {
    [v3 setControlOpacities:1];
    v6 = [(UIKBRenderFactory *)self controlKeyBackgroundColorName];
    v7 = [UIKBGradient gradientWithFlatColor:v6];
    [v3 setBackgroundGradient:v7];

    v8 = [(UIKBRenderFactory *)self controlKeyForegroundColorName];
    if (v8)
    {
      v9 = [UIKBGradient gradientWithFlatColor:v8];
      [v3 setLayeredForegroundGradient:v9];
    }

    else
    {
      [v3 setLayeredForegroundGradient:0];
    }

    v10 = [(UIKBRenderFactory *)self renderConfig];
    v11 = [v10 colorAdaptiveBackground];

    if ((v11 & 1) == 0)
    {
      v12 = [(UIKBRenderFactory *)self controlKeyShadowColorName];
      v13 = [UIKBEdgeEffect effectWithColor:v12 edges:4 inset:-1.0 weight:1.0];
      [v3 addRenderEffect:v13];
    }
  }

  return v3;
}

- (id)shiftDeleteGlyphTraits
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = [UIKBRenderTraits traitsWithSymbolStyle:0];
  v4 = [(UIKBRenderFactory *)self renderConfig];
  v5 = [v4 lightKeyboard];

  if (v5)
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
  v3 = [(UIKBRenderFactory *)self renderConfig];
  v4 = [v3 lightKeyboard];

  if (v4)
  {
    v5 = [(UIKBRenderFactoryiPhone *)self shiftedControlKeyTraits];
  }

  else
  {
    v5 = +[UIKBRenderTraits emptyTraits];
    [v5 setControlOpacities:1];
    v6 = [UIKBGradient gradientWithFlatColor:@"UIKBColorWhite_Alpha80"];
    [v5 setBackgroundGradient:v6];

    v7 = [(UIKBRenderFactory *)self renderConfig];
    LODWORD(v6) = [v7 animatedBackground];

    if (v6)
    {
      [v5 setBlurBlending:1];
      v8 = [UIKBGradient gradientWithFlatColor:@"UIKBColorWhite_Alpha75"];
      [v5 setLayeredForegroundGradient:v8];
    }

    v9 = [UIKBEdgeEffect effectWithColor:@"UIKBColorBlack_Alpha45" edges:4 inset:-1.0 weight:1.0];
    [v5 addRenderEffect:v9];
  }

  return v5;
}

- (id)activeControlKeyTraits
{
  v3 = [UIKBRenderTraits traitsWithSymbolStyle:0];
  [v3 setControlOpacities:0];
  v4 = [(UIKBRenderFactory *)self renderConfig];
  if ([v4 lightKeyboard])
  {
    v5 = [(UIKBRenderFactory *)self defaultKeyBackgroundColorName];
  }

  else
  {
    v5 = @"UIKBColorKeyGrayKeyLightBackground";
  }

  v6 = v5;

  v7 = [UIKBGradient gradientWithFlatColor:v6];
  [v3 setBackgroundGradient:v7];

  v8 = [UIKBGradient gradientWithFlatColor:@"UIKBColorClear"];
  [v3 setLayeredForegroundGradient:v8];

  v9 = [(UIKBRenderFactory *)self renderConfig];
  v10 = [v9 colorAdaptiveBackground];

  if ((v10 & 1) == 0)
  {
    v11 = [(UIKBRenderFactory *)self controlKeyShadowColorName];
    v12 = [UIKBEdgeEffect effectWithColor:v11 edges:4 inset:-1.0 weight:1.0];
    [v3 addRenderEffect:v12];
  }

  return v3;
}

- (BOOL)shouldOverlayAlternateTagKey:(id)a3 onKeyplane:(id)a4
{
  v5 = a3;
  v6 = [a4 subtreeWithType:3];
  v7 = [v6 rowSetOfType:9];
  if (v7)
  {
    v8 = [v5 name];
    v9 = [v8 hasSuffix:@"Tag-Symbol"];
  }

  else
  {
    v9 = 0;
  }

  return v9;
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

  v7 = @"UIKBRenderFactorySystemCompactFontName";
  if (v5)
  {
    v7 = @".SFCompact-Bold";
  }

  if (v4)
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
  v3 = [(UIKBRenderFactory *)self renderConfig];
  v4 = [v3 usesCompactKeycapsFont];

  v5 = [(UIKBRenderFactory *)self boldTextEnabled];
  v6 = @".Keycaps-Popups";
  if (v5)
  {
    v6 = @".PhoneKeyCaps";
  }

  v7 = @"UIKBRenderFactorySystemCompactFontName";
  if (v5)
  {
    v7 = @".SFCompact-Bold";
  }

  if (v4)
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
  v3 = [(UIKBRenderFactory *)self renderConfig];
  v4 = [v3 usesCompactKeycapsFont];

  v5 = [(UIKBRenderFactory *)self boldTextEnabled];
  v6 = @".KeycapsPad-Keys";
  if (v5)
  {
    v6 = @".PhoneKeyCaps";
  }

  v7 = @"UIKBRenderFactorySystemCompactFontName";
  if (v5)
  {
    v7 = @".SFCompact-Bold";
  }

  if (v4)
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
  v2 = [(UIKBRenderFactory *)self renderConfig];
  v3 = [v2 usesCompactKeycapsFont];

  if (v3)
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
  v2 = [(UIKBRenderFactory *)self renderConfig];
  if ([v2 usesCompactKeycapsFont])
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
  v2 = [(UIKBRenderFactory *)self renderConfig];
  if ([v2 usesCompactKeycapsFont])
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
  v2 = [(UIKBRenderFactory *)self renderConfig];
  if ([v2 usesCompactKeycapsFont])
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
  v2 = [(UIKBRenderFactory *)self renderConfig];
  if ([v2 usesCompactKeycapsFont])
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
  v2 = [(UIKBRenderFactory *)self renderConfig];
  if ([v2 usesCompactKeycapsFont])
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
  v2 = [(UIKBRenderFactory *)self renderConfig];
  if ([v2 usesCompactKeycapsFont])
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
  v2 = [(UIKBRenderFactory *)self renderConfig];
  if ([v2 usesCompactKeycapsFont])
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
  v2 = [(UIKBRenderFactory *)self renderConfig];
  if ([v2 usesCompactKeycapsFont])
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
  v2 = [(UIKBRenderFactory *)self renderConfig];
  if ([v2 usesCompactKeycapsFont])
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
  v2 = [(UIKBRenderFactory *)self renderConfig];
  if ([v2 usesCompactKeycapsFont])
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
  v2 = [(UIKBRenderFactory *)self renderConfig];
  if ([v2 usesCompactKeycapsFont])
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
  v2 = [(UIKBRenderFactory *)self renderConfig];
  if ([v2 usesCompactKeycapsFont])
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
  v2 = [(UIKBRenderFactory *)self renderConfig];
  if ([v2 usesCompactKeycapsFont])
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
  v2 = [(UIKBRenderFactory *)self renderConfig];
  if ([v2 usesCompactKeycapsFont])
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
  v2 = [(UIKBRenderFactory *)self renderConfig];
  v3 = [v2 usesCompactKeycapsFont];
  if (v3)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = -0.5;
  }

  if (v3)
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
  v2 = [(UIKBRenderFactory *)self renderConfig];
  if ([v2 usesCompactKeycapsFont])
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
  v2 = [(UIKBRenderFactory *)self renderConfig];
  if ([v2 usesCompactKeycapsFont])
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
  v2 = [(UIKBRenderFactory *)self renderConfig];
  if ([v2 usesCompactKeycapsFont])
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
  v2 = [(UIKBRenderFactory *)self renderConfig];
  if ([v2 usesCompactKeycapsFont])
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

- (UIEdgeInsets)dynamicInsetsForNumberOfRows:(unint64_t)a3
{
  if (a3 > 4)
  {
    v8 = [(UIKBRenderFactory *)self dynamicFactory];
    v3 = 0.0;
    v9 = 1.0;
    if (v8)
    {
      v6 = 1.0;
    }

    else
    {
      v6 = 0.0;
    }

    if (v8)
    {
      v9 = 2.0;
    }

    if (a3 == 5)
    {
      v5 = v9;
    }

    else
    {
      v5 = v6;
    }

    if (a3 == 5)
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

- (BOOL)needsSmallerFontSizeForKey:(id)a3
{
  v4 = a3;
  v5 = [(UIKBRenderFactory *)self renderingContext];
  v6 = [v5 isColorAdaptiveNonLinearCarplayKeyboard];

  if ((v6 & 1) == 0 && ([v4 displayType] == 3 || objc_msgSend(v4, "displayType") == 23 || objc_msgSend(v4, "displayType") == 51 || objc_msgSend(v4, "interactionType") == 38) && (-[UIKBRenderFactoryiPhone skinnyKeyThreshold](self, "skinnyKeyThreshold"), v7 > 0.0))
  {
    [v4 paddedFrame];
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

- (void)_customizeGeometry:(id)a3 forKey:(id)a4 contents:(id)a5
{
  v31 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(UIKBRenderFactory *)self renderConfig];
  v11 = [v10 colorAdaptiveBackground];

  if ((v11 & 1) != 0 || (-[UIKBRenderFactory scale](self, "scale"), v12 > 2.0) || ([v8 paddedFrame], v13 = 4.0, v14 > 42.0))
  {
    [(UIKBRenderFactoryiPhone *)self keyCornerRadius];
  }

  [v31 setRoundRectRadius:v13];
  if ([v8 displayTypeHint] == 12)
  {
    v15 = [(UIKBRenderFactory *)self renderConfig];
    v16 = [v15 colorAdaptiveBackground];
    v17 = 8.0;
    if (v16)
    {
      v17 = 24.0;
    }

    [v31 setRoundRectRadius:v17];
  }

  [v31 paddedFrame];
  [v31 setSymbolFrame:{v18 + 2.0, v20 + 1.0, v19 + -4.0, v21 + -3.0}];
  [v31 symbolFrame];
  [v31 setPaddedFrame:{v22 + 0.0, v23 + 0.0}];
  if ([v8 displayType] == 23 || objc_msgSend(v8, "displayType") == 3)
  {
    v24 = [v9 displayString];

    [v31 paddedFrame];
    if (v24)
    {
      [v31 setSymbolFrame:{round(v25 + (v27 + -20.0) * 0.5), round(v26 + (v28 + -20.0) * 0.5), 20.0, 20.0}];
      [v31 symbolFrame];
      v29 = -5.0;
      v30 = -5.0;
    }

    else
    {
      v29 = 3.0;
      v30 = 3.0;
    }

    v33 = CGRectInset(*&v25, v29, v30);
    [v31 setSymbolFrame:{v33.origin.x, v33.origin.y, v33.size.width, v33.size.height}];
  }

  if (![v8 displayType] || objc_msgSend(v8, "displayType") == 7 || objc_msgSend(v8, "displayType") == 8)
  {
    [v31 symbolFrame];
    v35 = CGRectInset(v34, -2.0, 0.0);
    [v31 setSymbolFrame:{v35.origin.x, v35.origin.y, v35.size.width, v35.size.height}];
  }
}

- (void)_customizeSymbolStyle:(id)a3 forKey:(id)a4 contents:(id)a5
{
  v108 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(UIKBRenderFactory *)self renderingContext];
  if ([v10 isColorAdaptiveNonLinearCarplayKeyboard])
  {
    [(UIKBRenderFactoryiPhone *)self carPlayFontSize];
  }

  else
  {
    [(UIKBRenderFactoryiPhone *)self symbolImageControlKeyFontSize];
  }

  v12 = v11;

  v13 = *off_1E70ECD28;
  [v108 setNeedsFontCase:1];
  if ([v8 displayType] == 13)
  {
    [(UIKBRenderFactoryiPhone *)self internationalKeyOffset];
LABEL_10:
    [v108 setTextOffset:?];
LABEL_11:
    [v108 setUsesSymbolImage:1];
    [v108 setFontGrade:2];
    goto LABEL_12;
  }

  if ([v8 displayType] == 9)
  {
    [(UIKBRenderFactoryiPhone *)self realEmojiKeyOffset];
    goto LABEL_10;
  }

  if ([v8 displayType] == 4)
  {
    [(UIKBRenderFactoryiPhone *)self dictationKeyOffset];
    goto LABEL_10;
  }

  if ([v8 displayType] == 3)
  {
    v16 = [(UIKBRenderFactory *)self renderingContext];
    if ([v16 isColorAdaptiveNonLinearCarplayKeyboard])
    {
      [(UIKBRenderFactoryiPhone *)self carPlayFontSize];
    }

    else
    {
      [(UIKBRenderFactoryiPhone *)self deleteKeyFontSize];
    }

    [v108 setFontSize:?];

    [(UIKBRenderFactoryiPhone *)self deleteKeyOffset];
    [v108 setTextOffset:?];
    goto LABEL_27;
  }

  if ([v8 displayType] != 23)
  {
    if ([v8 displayType] == 51 || objc_msgSend(v8, "interactionType") == 38)
    {
LABEL_27:
      [v108 setUsesSymbolImage:1];
      goto LABEL_44;
    }

    v18 = [v8 name];
    v19 = [v18 hasSuffix:@"Chinese-Facemark"];

    if (v19)
    {
      v20 = [(UIKBRenderFactory *)self renderingContext];
      if ([v20 isColorAdaptiveNonLinearCarplayKeyboard])
      {
        [(UIKBRenderFactoryiPhone *)self carPlayFontSize];
      }

      else
      {
        [(UIKBRenderFactoryiPhone *)self stringKeyFontSize];
      }

      [v108 setFontSize:?];

      goto LABEL_51;
    }

    if ([v8 displayType] == 18)
    {
      v26 = [(UIKBRenderFactoryiPhone *)self lightTextFontName];
      [v108 setFontName:v26];

      v27 = [(UIKBRenderFactoryiPhone *)self lightTextFontFallbackName];
      [v108 setKeycapsFallback:v27];

      v28 = [(UIKBRenderFactory *)self renderingContext];
      if ([v28 isColorAdaptiveNonLinearCarplayKeyboard])
      {
        [(UIKBRenderFactoryiPhone *)self carPlayFontSize];
      }

      else
      {
        [(UIKBRenderFactoryiPhone *)self moreKeyFontSize];
      }

      [v108 setFontSize:?];

      [(UIKBRenderFactoryiPhone *)self more123KeyOffset];
      v35 = v34;
      v37 = v36;
      if ([v8 displayTypeHint] == 1)
      {
        v38 = [v8 BOOLForProperty:@"More-Key-Merged"];
        v39 = [(UIKBRenderFactory *)self renderingContext];
        v40 = [v39 isColorAdaptiveNonLinearCarplayKeyboard];
        if (v38)
        {
          if (v40)
          {
            [(UIKBRenderFactoryiPhone *)self carPlayFontSize];
          }

          else
          {
            [(UIKBRenderFactoryiPhone *)self moreABCKeyWideCellFontSize];
          }

          [v108 setFontSize:?];

          [(UIKBRenderFactoryiPhone *)self moreABCKeyWideCellOffset];
        }

        else
        {
          if (v40)
          {
            [(UIKBRenderFactoryiPhone *)self carPlayFontSize];
          }

          else
          {
            [(UIKBRenderFactoryiPhone *)self moreABCKeyFontSize];
          }

          [v108 setFontSize:?];

          [(UIKBRenderFactoryiPhone *)self moreABCKeyOffset];
        }

        v35 = v57;
        v37 = v58;
      }

      v59 = [v8 displayString];

      if (v59 == @"")
      {
        [v108 setUsesSymbolImage:1];
        [v108 setFontGrade:2];
      }

      v54 = v108;
      v29 = v35;
      v30 = v37;
      goto LABEL_90;
    }

    if ([v8 displayType] != 21 && objc_msgSend(v8, "displayType") != 25 && objc_msgSend(v8, "displayType") != 27)
    {
      if ([v8 displayType] == 42)
      {
        v55 = [(UIKBRenderFactoryiPhone *)self lightTextFontName];
        [v108 setFontName:v55];

        v56 = [(UIKBRenderFactoryiPhone *)self lightTextFontFallbackName];
        [v108 setKeycapsFallback:v56];

        [(UIKBRenderFactoryiPhone *)self assistKeyFontSize];
        [v108 setFontSize:?];
        [(UIKBRenderFactoryiPhone *)self cutKeyOffset];
      }

      else if ([v8 displayType] == 43)
      {
        v60 = [(UIKBRenderFactoryiPhone *)self lightTextFontName];
        [v108 setFontName:v60];

        v61 = [(UIKBRenderFactoryiPhone *)self lightTextFontFallbackName];
        [v108 setKeycapsFallback:v61];

        [(UIKBRenderFactoryiPhone *)self assistKeyFontSize];
        [v108 setFontSize:?];
        [(UIKBRenderFactoryiPhone *)self copyKeyOffset];
      }

      else if ([v8 displayType] == 44)
      {
        v62 = [(UIKBRenderFactoryiPhone *)self lightTextFontName];
        [v108 setFontName:v62];

        v63 = [(UIKBRenderFactoryiPhone *)self lightTextFontFallbackName];
        [v108 setKeycapsFallback:v63];

        [(UIKBRenderFactoryiPhone *)self assistKeyFontSize];
        [v108 setFontSize:?];
        [(UIKBRenderFactoryiPhone *)self pasteKeyOffset];
      }

      else if ([v8 displayType] == 39)
      {
        v64 = [(UIKBRenderFactoryiPhone *)self lightTextFontName];
        [v108 setFontName:v64];

        v65 = [(UIKBRenderFactoryiPhone *)self lightTextFontFallbackName];
        [v108 setKeycapsFallback:v65];

        [(UIKBRenderFactoryiPhone *)self assistKeyFontSize];
        [v108 setFontSize:?];
        [(UIKBRenderFactoryiPhone *)self boldKeyOffset];
      }

      else
      {
        if ([v8 interactionType] != 17)
        {
          if ([v8 displayType] == 45)
          {
            [(UIKBRenderFactoryiPhone *)self leftArrowKeyOffset];
            goto LABEL_10;
          }

          if ([v8 displayType] == 46)
          {
            [(UIKBRenderFactoryiPhone *)self rightArrowKeyOffset];
            goto LABEL_10;
          }

          if ([v8 displayType] == 5)
          {
            [(UIKBRenderFactoryiPhone *)self dismissKeyOffset];
            goto LABEL_10;
          }

          v68 = [v8 name];
          v69 = [v68 isEqualToString:@"Zhuyin-Letter-FIRST_TONE"];

          if (v69)
          {
            v70 = [(UIKBRenderFactory *)self renderingContext];
            if ([v70 isColorAdaptiveNonLinearCarplayKeyboard])
            {
              [(UIKBRenderFactoryiPhone *)self carPlayFontSize];
            }

            else
            {
              [(UIKBRenderFactoryiPhone *)self zhuyinFirstToneKeyFontSize];
            }

            [v108 setFontSize:?];

            [(UIKBRenderFactoryiPhone *)self zhuyinFirstToneKeyOffset];
            goto LABEL_77;
          }

          v71 = [v8 representedString];
          v72 = [v71 isEqualToString:@"‌"];

          if (v72)
          {
            [(UIKBRenderFactoryiPhone *)self ZWNJKeyOffset];
            goto LABEL_77;
          }

          v73 = [v8 representedString];
          v74 = [v73 isEqualToString:@"ੴ"];

          if (v74)
          {
            v75 = [(UIKBRenderFactory *)self renderingContext];
            if ([v75 isColorAdaptiveNonLinearCarplayKeyboard])
            {
              [(UIKBRenderFactoryiPhone *)self carPlayFontSize];
            }

            else
            {
              [(UIKBRenderFactoryiPhone *)self gurmukhiEkOnkarFontSize];
            }

            [v108 setFontSize:?];

            [(UIKBRenderFactoryiPhone *)self gurmukhiEkOnkarOffset];
            goto LABEL_77;
          }

          v76 = [v8 name];
          v77 = [v76 hasPrefix:@"Bengali"];

          if (v77)
          {
            v78 = [(UIKBRenderFactory *)self renderingContext];
            if ([v78 isColorAdaptiveNonLinearCarplayKeyboard])
            {
              [(UIKBRenderFactoryiPhone *)self carPlayFontSize];
            }

            else
            {
              [(UIKBRenderFactoryiPhone *)self stringKeyFontSizeBengali];
            }

            [v108 setFontSize:?];

            [(UIKBRenderFactoryiPhone *)self stringKeyOffsetBengali];
            goto LABEL_77;
          }

          v79 = [v8 name];
          v80 = [v79 hasPrefix:@"Devanagari"];

          if (v80)
          {
            v81 = [(UIKBRenderFactory *)self renderingContext];
            if ([v81 isColorAdaptiveNonLinearCarplayKeyboard])
            {
              [(UIKBRenderFactoryiPhone *)self carPlayFontSize];
            }

            else
            {
              [(UIKBRenderFactoryiPhone *)self stringKeyFontSizeDevanagari];
            }

            [v108 setFontSize:?];

            [(UIKBRenderFactoryiPhone *)self stringKeyOffsetDevanagari];
            goto LABEL_77;
          }

          v82 = [v8 name];
          v83 = [v82 hasPrefix:@"Gujarati"];

          if (v83)
          {
            v84 = [(UIKBRenderFactory *)self renderingContext];
            if ([v84 isColorAdaptiveNonLinearCarplayKeyboard])
            {
              [(UIKBRenderFactoryiPhone *)self carPlayFontSize];
            }

            else
            {
              [(UIKBRenderFactoryiPhone *)self stringKeyFontSizeGujarati];
            }

            [v108 setFontSize:?];

            [(UIKBRenderFactoryiPhone *)self stringKeyOffsetGujarati];
            goto LABEL_77;
          }

          v85 = [v8 name];
          v86 = [v85 hasPrefix:@"Gurmukhi"];

          if (v86)
          {
            v87 = [(UIKBRenderFactory *)self renderingContext];
            if ([v87 isColorAdaptiveNonLinearCarplayKeyboard])
            {
              [(UIKBRenderFactoryiPhone *)self carPlayFontSize];
            }

            else
            {
              [(UIKBRenderFactoryiPhone *)self stringKeyFontSizeGurmukhi];
            }

            [v108 setFontSize:?];

            [(UIKBRenderFactoryiPhone *)self stringKeyOffsetGurmukhi];
            goto LABEL_77;
          }

          v88 = [v8 name];
          v89 = [v88 hasPrefix:@"Kannada"];

          if (v89)
          {
            v90 = [(UIKBRenderFactory *)self renderingContext];
            if ([v90 isColorAdaptiveNonLinearCarplayKeyboard])
            {
              [(UIKBRenderFactoryiPhone *)self carPlayFontSize];
            }

            else
            {
              [(UIKBRenderFactoryiPhone *)self stringKeyFontSizeKannada];
            }

            [v108 setFontSize:?];

            [(UIKBRenderFactoryiPhone *)self stringKeyOffsetKannada];
            goto LABEL_77;
          }

          v91 = [v8 name];
          v92 = [v91 hasPrefix:@"Malayalam"];

          if (v92)
          {
            v93 = [(UIKBRenderFactory *)self renderingContext];
            if ([v93 isColorAdaptiveNonLinearCarplayKeyboard])
            {
              [(UIKBRenderFactoryiPhone *)self carPlayFontSize];
            }

            else
            {
              [(UIKBRenderFactoryiPhone *)self stringKeyFontSizeMalayalam];
            }

            [v108 setFontSize:?];

            [(UIKBRenderFactoryiPhone *)self stringKeyOffsetMalayalam];
            goto LABEL_77;
          }

          v94 = [v8 name];
          v95 = [v94 hasPrefix:@"Oriya"];

          if (v95)
          {
            v96 = [(UIKBRenderFactory *)self renderingContext];
            if ([v96 isColorAdaptiveNonLinearCarplayKeyboard])
            {
              [(UIKBRenderFactoryiPhone *)self carPlayFontSize];
            }

            else
            {
              [(UIKBRenderFactoryiPhone *)self stringKeyFontSizeOriya];
            }

            [v108 setFontSize:?];

            [(UIKBRenderFactoryiPhone *)self stringKeyOffsetOriya];
            goto LABEL_77;
          }

          v97 = [v8 name];
          v98 = [v97 hasPrefix:@"Tamil"];

          if (v98)
          {
            v99 = [(UIKBRenderFactory *)self renderingContext];
            if ([v99 isColorAdaptiveNonLinearCarplayKeyboard])
            {
              [(UIKBRenderFactoryiPhone *)self carPlayFontSize];
            }

            else
            {
              [(UIKBRenderFactoryiPhone *)self stringKeyFontSizeTamil];
            }

            [v108 setFontSize:?];

            [(UIKBRenderFactoryiPhone *)self stringKeyOffsetTamil];
            goto LABEL_77;
          }

          v100 = [v8 name];
          v101 = [v100 hasPrefix:@"Telugu"];

          if (v101)
          {
            v102 = [(UIKBRenderFactory *)self renderingContext];
            if ([v102 isColorAdaptiveNonLinearCarplayKeyboard])
            {
              [(UIKBRenderFactoryiPhone *)self carPlayFontSize];
            }

            else
            {
              [(UIKBRenderFactoryiPhone *)self stringKeyFontSizeTelugu];
            }

            [v108 setFontSize:?];

            v104 = [v8 overrideDisplayString];
            if (v104 && (v105 = v104, [v8 overrideDisplayString], v106 = objc_claimAutoreleasedReturnValue(), v107 = objc_msgSend(v106, "rangeOfString:options:", @"్", 2), v106, v105, v107 != 0x7FFFFFFFFFFFFFFFLL))
            {
              [(UIKBRenderFactoryiPhone *)self conjunctStringKeyOffsetTelugu];
            }

            else
            {
              [(UIKBRenderFactoryiPhone *)self stringKeyOffsetTelugu];
            }

            goto LABEL_77;
          }

          if (![v8 isChineseKey])
          {
            [(UIKBRenderFactoryiPhone *)self _customizeLetterSymbolStyle:v108 forKey:v8];
            goto LABEL_12;
          }

          v103 = [(UIKBRenderFactoryiPhone *)self lightTextFontFallbackName];
          [v108 setFontName:v103];

          [(UIKBRenderFactoryiPhone *)self stringKeyFontSize];
          [v108 setFontSize:?];
LABEL_51:
          [(UIKBRenderFactoryiPhone *)self stringKeyOffset];
LABEL_77:
          v54 = v108;
LABEL_90:
          [v54 setTextOffset:{v29, v30}];
          goto LABEL_12;
        }

        v66 = [(UIKBRenderFactoryiPhone *)self lightTextFontName];
        [v108 setFontName:v66];

        v67 = [(UIKBRenderFactoryiPhone *)self lightTextFontFallbackName];
        [v108 setKeycapsFallback:v67];

        [(UIKBRenderFactoryiPhone *)self assistKeyFontSize];
        [v108 setFontSize:?];
        [(UIKBRenderFactoryiPhone *)self undoKeyOffset];
      }

      [v108 setTextOffset:?];
      [v108 setKerning:0.0];
      goto LABEL_11;
    }

    v31 = [(UIKBRenderFactoryiPhone *)self lightTextFontName];
    [v108 setFontName:v31];

    v32 = [(UIKBRenderFactoryiPhone *)self lightTextFontFallbackName];
    [v108 setKeycapsFallback:v32];

    v33 = [(UIKBRenderFactory *)self renderingContext];
    if ([v33 isColorAdaptiveNonLinearCarplayKeyboard])
    {
      [(UIKBRenderFactoryiPhone *)self carPlayFontSize];
    }

    else
    {
      [(UIKBRenderFactoryiPhone *)self returnKeyFontSize];
    }

    [v108 setFontSize:?];

    [(UIKBRenderFactoryiPhone *)self returnKeyOffset];
    [v108 setTextOffset:?];
    [v108 setKerning:0.0];
    v41 = [(UIKBRenderFactory *)self renderConfig];
    v42 = [v41 colorAdaptiveBackground];

    if (v42)
    {
      [v108 setUsesSymbolImage:1];
      [v108 setFontGrade:2];
    }

    if ([v8 variantType] == 4)
    {
      v43 = [(UIKBRenderFactoryiPhone *)self lightKeycapsFontName];
      [v108 setFontName:v43];

      v44 = [(UIKBRenderFactoryiPhone *)self lightKeycapsFontFallbackName];
      [v108 setKeycapsFallback:v44];

      [(UIKBRenderFactoryiPhone *)self returnKeyFontSize];
      [v108 setFontSize:?];
      v45 = v108;
      v46 = -0.5;
      v47 = -0.25;
    }

    else
    {
      v48 = [v9 displayString];
      v49 = [v48 _isIdeographicGlyphs];

      if (!v49)
      {
LABEL_70:
        v50 = [v9 displayStringImage];
        if ([v50 containsString:@"grinning"])
        {
        }

        else
        {
          v51 = [v9 displayStringImage];
          v52 = [v51 containsString:@"return"];

          if (!v52)
          {
            goto LABEL_12;
          }
        }

        [v108 setUsesSymbolImage:1];
        [v108 setFontGrade:2];
        v53 = [(UIKBRenderFactory *)self renderingContext];
        if ([v53 isColorAdaptiveNonLinearCarplayKeyboard])
        {
          [(UIKBRenderFactoryiPhone *)self carPlayFontSize];
        }

        else
        {
          [(UIKBRenderFactoryiPhone *)self symbolImageControlKeyFontSize];
        }

        [v108 setFontSizeForSymbolImage:?];

        [v108 setFontWeightForSymbolImage:*off_1E70ECD18];
        [(UIKBRenderFactoryiPhone *)self symbolImageControlKeyOffset];
        goto LABEL_77;
      }

      [(UIKBRenderFactoryiPhone *)self stringKeyOffset];
      v45 = v108;
    }

    [v45 setTextOffset:{v47, v46}];
    goto LABEL_70;
  }

  v17 = [(UIKBRenderFactory *)self renderingContext];
  if ([v17 isColorAdaptiveNonLinearCarplayKeyboard])
  {
    [(UIKBRenderFactoryiPhone *)self carPlayFontSize];
  }

  else
  {
    [(UIKBRenderFactoryiPhone *)self shiftKeyFontSize];
  }

  [v108 setFontSize:?];

  [(UIKBRenderFactoryiPhone *)self shiftKeyOffset];
  [v108 setTextOffset:?];
  v21 = [v8 displayTypeHint];
  if (!v21)
  {
    v24 = [(UIKBRenderFactory *)self renderingContext];
    if ([v24 isColorAdaptiveNonLinearCarplayKeyboard])
    {
      [(UIKBRenderFactoryiPhone *)self carPlayFontSize];
    }

    else
    {
      [(UIKBRenderFactoryiPhone *)self hintNoneKeyFontSize];
    }

    [v108 setFontSize:?];

    goto LABEL_43;
  }

  if (v21 == 2)
  {
    v22 = [(UIKBRenderFactoryiPhone *)self lightTextFontName];
    [v108 setFontName:v22];

    v23 = [(UIKBRenderFactoryiPhone *)self lightTextFontFallbackName];
    [v108 setKeycapsFallback:v23];

LABEL_40:
    [(UIKBRenderFactoryiPhone *)self stringKeyOffset];
    [v108 setTextOffset:?];
    goto LABEL_43;
  }

  if ((v21 & 0xFFFFFFFE) == 2)
  {
    goto LABEL_40;
  }

LABEL_43:
  [v108 setUsesSymbolImage:1];
  [v108 setFontGrade:2];
LABEL_44:
  if ([(UIKBRenderFactoryiPhone *)self needsSmallerFontSizeForKey:v8])
  {
    [(UIKBRenderFactoryiPhone *)self smallSymbolImageFontSize];
    v12 = v25;
    v13 = *off_1E70ECD20;
  }

LABEL_12:
  if ([v108 usesSymbolImage])
  {
    v14 = [(UIKBRenderFactory *)self renderingContext];
    if ([v14 isColorAdaptiveNonLinearCarplayKeyboard])
    {
      [(UIKBRenderFactoryiPhone *)self carPlayFontSize];
      v12 = v15;
    }

    [v108 setFontSizeForSymbolImage:v12];

    [v108 setFontWeightForSymbolImage:v13];
  }
}

- (void)_customizeLetterSymbolStyle:(id)a3 forKey:(id)a4
{
  v44 = a3;
  v7 = a4;
  v8 = [(UIKBRenderFactory *)self renderingContext];
  if ([v8 isColorAdaptiveNonLinearCarplayKeyboard])
  {
    [(UIKBRenderFactoryiPhone *)self carPlayFontSize];
  }

  else
  {
    [(UIKBRenderFactoryiPhone *)self stringKeyFontSize];
  }

  [v44 setFontSize:?];

  [(UIKBRenderFactoryiPhone *)self stringKeyOffset];
  [v44 setTextOffset:?];
  if ([v7 dynamicLayout])
  {
    [v7 frame];
    if (v9 < 35.0)
    {
      [v44 fontSize];
      [v44 setFontSize:round(v10 * 0.8)];
    }
  }

  if (qword_1ED49F130 != -1)
  {
    dispatch_once(&qword_1ED49F130, &__block_literal_global_677_1);
  }

  v11 = [v7 displayString];
  [v11 rangeOfCharacterFromSet:qword_1ED49F128];
  v13 = v12;

  v14 = [(UIKBRenderFactory *)self renderConfig];
  if (![v14 usesCompactKeycapsFont])
  {
    goto LABEL_17;
  }

  v15 = [v7 name];
  v16 = [v15 containsString:@"Number-Sign"];
  if ((v16 & 1) == 0)
  {
    v4 = [v7 name];
    if (([v4 containsString:@"Colon"] & 1) == 0)
    {

LABEL_17:
      goto LABEL_18;
    }
  }

  v17 = [(UIKBRenderFactory *)self renderingContext];
  v18 = [v17 isColorAdaptiveNonLinearCarplayKeyboard];

  if ((v16 & 1) == 0)
  {
  }

  if ((v18 & 1) == 0)
  {
    [v44 fontSize];
    [v44 setFontSize:v19 + 4.0];
LABEL_40:
    [v44 setFontWeight:*off_1E70ECD18];
    [v44 setNeedsFontCase:0];
    [v44 setFontGrade:3];
    goto LABEL_42;
  }

LABEL_18:
  v20 = [(UIKBRenderFactory *)self renderConfig];
  if (![v20 usesCompactKeycapsFont])
  {
LABEL_33:

    goto LABEL_34;
  }

  v21 = [v7 name];
  v22 = [v21 containsString:@"Full-Stop"];
  if (v22)
  {
    v23 = v13;
    v24 = 0;
LABEL_23:
    [(UIKBRenderFactory *)self renderingContext];
    goto LABEL_24;
  }

  v4 = [v7 name];
  if ([v4 containsString:@"Low-Line"])
  {
    v23 = v13;
    v24 = 0;
    goto LABEL_23;
  }

  v28 = [v7 name];
  if (([v28 containsString:@"Comma"] & 1) == 0)
  {

    goto LABEL_33;
  }

  v43 = v28;
  v23 = v13;
  v24 = 1;
  [(UIKBRenderFactory *)self renderingContext];
  v25 = LABEL_24:;
  v26 = [v25 isColorAdaptiveNonLinearCarplayKeyboard];

  if (v24)
  {
  }

  if ((v22 & 1) == 0)
  {
  }

  v13 = v23;
  if ((v26 & 1) == 0)
  {
    [v44 fontSize];
    [v44 setFontSize:v27 + 4.0];
    [v44 setTextOffset:{0.0, 2.0}];
    goto LABEL_40;
  }

LABEL_34:
  v29 = [v7 displayString];
  if (v13 == [v29 length])
  {
    v30 = [(UIKBRenderFactory *)self renderingContext];
    v31 = [v30 isColorAdaptiveNonLinearCarplayKeyboard];

    if (v31)
    {
      goto LABEL_42;
    }

    [v44 textOffset];
    v33 = v32;
    v35 = v34;
    v36 = [(UIKBRenderFactory *)self renderConfig];
    v37 = [v36 usesCompactKeycapsFont] ? -1.0 : -2.0;

    [v44 setTextOffset:{v33, v35 + v37}];
    [v44 fontSize];
    [v44 setFontSize:v38 + 2.0];
    v39 = [(UIKBRenderFactory *)self renderConfig];
    v40 = [v39 usesCompactKeycapsFont];

    if (!v40)
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

- (double)dualStringBottomAdditionalOffsetForDisplayContents:(id)a3
{
  v3 = [a3 displayString];
  if ([v3 isEqualToString:@"।"])
  {
    v4 = 1.5;
  }

  else
  {
    v4 = -0.5;
  }

  return v4;
}

- (void)_customizePopupTraits:(id)a3 forKey:(id)a4 onKeyplane:(id)a5
{
  v114 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(UIKBRenderFactory *)self renderConfig];
  if ([v11 lightKeyboard])
  {
    v12 = [(UIKBRenderFactory *)self renderConfig];
    if ([v12 animatedBackground])
    {
      [v8 setBlurBlending:1];
    }

    else
    {
      v13 = [(UIKBRenderFactory *)self renderConfig];
      [v8 setBlurBlending:{objc_msgSend(v13, "colorAdaptiveBackground")}];
    }
  }

  else
  {
    [v8 setBlurBlending:1];
  }

  [(UIKBRenderFactory *)self suppressLayoutSegments];
  if ([(UIKBRenderFactory *)self lightweightFactory])
  {
    goto LABEL_59;
  }

  v14 = [(UIKBRenderFactoryiPhone *)self thinKeycapsFontName];
  v15 = [v8 symbolStyle];
  [v15 setFontName:v14];

  v16 = [(UIKBRenderFactoryiPhone *)self thinKeycapsFontFallbackName];
  v17 = [v8 symbolStyle];
  [v17 setKeycapsFallback:v16];

  [(UIKBRenderFactoryiPhone *)self popupFontSize];
  v19 = v18;
  v20 = [v8 symbolStyle];
  [v20 setFontSize:v19];

  [(UIKBRenderFactoryiPhone *)self popupSymbolTextOffset];
  v22 = v21;
  v24 = v23;
  v25 = [v8 symbolStyle];
  [v25 setTextOffset:{v22, v24}];

  if ([v9 displayType] == 27)
  {
    v26 = [(UIKBRenderFactoryiPhone *)self thinTextFontName];
    v27 = [v8 symbolStyle];
    [v27 setFontName:v26];

    v28 = [(UIKBRenderFactoryiPhone *)self thinTextFontFallbackName];
    v29 = [v8 symbolStyle];
    [v29 setKeycapsFallback:v28];

    v30 = [v8 symbolStyle];
    [v30 setFontSize:22.0];
  }

  if (![v9 displayType])
  {
    v31 = [v9 name];
    v32 = [v31 hasPrefix:@"Burmese-Letter-"];

    if (v32)
    {
      v33 = [v8 symbolStyle];
      [v33 fontSize];
      v35 = round(v34 * 0.85);
      v36 = [v8 symbolStyle];
      [v36 setFontSize:v35];
    }
  }

  if ([v9 dynamicLayout])
  {
    [v9 frame];
    if (v37 >= 35.0)
    {
      [v9 frame];
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

    v40 = [v8 symbolStyle];
    [v40 fontSize];
    v42 = round(v38 * v41);
    v43 = [v8 symbolStyle];
    [v43 setFontSize:v42];
  }

LABEL_19:
  if ([(UIKBRenderFactoryiPhone *)self _popupMenuStyleForKey:v9])
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
  v52 = [(UIKBRenderFactory *)self renderingContext];
  if (([v52 isFloating] & 1) == 0)
  {
    v53 = [(UIKBRenderFactory *)self renderConfig];
    v54 = [v53 colorAdaptiveBackground];

    if (v54)
    {
      goto LABEL_29;
    }

    v55 = [v9 popupDirection];
    v56 = @"UIKBColorBlack_Alpha35";
    if (v55 == 3)
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
      [v8 addRenderEffect:v64];

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

    v52 = [UIKBShadowEffect effectWithColor:v56 offset:v57 insets:v58 weight:v60, v61, v62, v63, v59];
    [v8 addRenderEffect:v52];
  }

LABEL_29:
  [v8 setBlendForm:{-[UIKBRenderFactory enabledBlendForm](self, "enabledBlendForm")}];
  v66 = [(UIKBRenderFactory *)self defaultKeyBackgroundColorName];
  v67 = [UIKBGradient gradientWithFlatColor:v66];
  [v8 setBackgroundGradient:v67];

  v68 = [(UIKBRenderFactory *)self renderConfig];
  if (![v68 lightKeyboard])
  {
LABEL_32:

    goto LABEL_33;
  }

  v69 = [(UIKBRenderFactory *)self renderConfig];
  v70 = [v69 colorAdaptiveBackground];

  if ((v70 & 1) == 0)
  {
    v68 = [UIKBEdgeEffect effectWithColor:@"UIKBColorBlack_Alpha12" edges:15 inset:-0.25 weight:0.5];
    [v8 addRenderEffect:v68];
    goto LABEL_32;
  }

LABEL_33:
  if (([v9 state] & 0x10) != 0)
  {
    v71 = [(UIKBRenderFactory *)self renderingContext];
    v72 = [v71 isFloating];

    if (v72)
    {
      v73 = [v8 geometry];
      [v73 setLayoutMargins:{0.0, 800.0, 0.0, 0.0}];
    }

    v74 = [(UIKBRenderFactoryiPhone *)self lightKeycapsFontName];
    v75 = [(UIKBRenderFactoryiPhone *)self lightTextFontFallbackName];
    v76 = [UIKBTextStyle styleWithFontName:v74 withFallbackFontName:v75 withFontSize:22.0];

    [(UIKBRenderFactoryiPhone *)self variantSymbolTextOffset];
    [v76 setTextOffset:?];
    v106 = v10;
    if ([v9 displayType] == 27)
    {
      v77 = [(UIKBRenderFactoryiPhone *)self lightTextFontName];
      [v76 setFontName:v77];

      v78 = [(UIKBRenderFactoryiPhone *)self lightTextFontFallbackName];
      [v76 setKeycapsFallback:v78];

      [v76 setFontSize:16.0];
    }

    else if ([v9 isChineseKey])
    {
      v79 = [(UIKBRenderFactoryiPhone *)self lightTextFontFallbackName];
      [v76 setFontName:v79];

      [(UIKBRenderFactoryiPhone *)self stringKeyFontSize];
      [v76 setFontSize:?];
      [(UIKBRenderFactoryiPhone *)self stringKeyOffset];
      [v76 setTextOffset:?];
    }

    v80 = [v8 symbolStyle];
    v81 = [v80 textColor];
    [v76 setTextColor:v81];

    v82 = [UIKBRenderTraits traitsWithSymbolStyle:v76];
    [v8 setVariantTraits:v82];

    v83 = [UIKBRenderTraits traitsWithSymbolStyle:0];
    v84 = [(UIKBRenderFactory *)self increasedContrastEnabled];
    v85 = UIKBColorBlue;
    if (!v84)
    {
      v85 = UIKBColorKeyBlueKeyBackground;
    }

    v86 = [UIKBGradient gradientWithFlatColor:*v85];
    [v83 setLayeredForegroundGradient:v86];

    v87 = [UIKBTextStyle styleWithTextColor:@"UIKBColorWhite"];
    [v83 setSymbolStyle:v87];

    [v8 setHighlightedVariantTraits:v83];
    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    v88 = [v9 subtrees];
    v89 = [v88 countByEnumeratingWithState:&v107 objects:v113 count:16];
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
            objc_enumerationMutation(v88);
          }

          v93 = [*(*(&v107 + 1) + 8 * i) secondaryDisplayStrings];
          v94 = [v93 count];

          if (v94)
          {

            v76 = v105;
            v88 = [v105 copy];
            [(UIKBRenderFactoryiPhone *)self variantAnnotationTextFontSize];
            [v88 setFontSize:?];
            v95 = [(UIKBRenderFactory *)self renderConfig];
            if ([v95 lightKeyboard])
            {
              v96 = @"UIKBColorBlack_Alpha40";
            }

            else
            {
              v96 = @"UIKBColorWhite";
            }

            [v88 setTextColor:v96];

            [v88 setAnchorCorner:2];
            [(UIKBRenderFactoryiPhone *)self variantAnnotationTextOffset];
            [v88 setTextOffset:?];
            v112 = v88;
            v97 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v112 count:1];
            v98 = [v8 variantTraits];
            [v98 setSecondarySymbolStyles:v97];

            v99 = [UIKBTextStyle styleWithTextColor:@"UIKBColorWhite"];
            v111 = v99;
            v100 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v111 count:1];
            [v83 setSecondarySymbolStyles:v100];

            goto LABEL_55;
          }
        }

        v90 = [v88 countByEnumeratingWithState:&v107 objects:v113 count:16];
        if (v90)
        {
          continue;
        }

        break;
      }

      v76 = v105;
    }

LABEL_55:

    v10 = v106;
  }

  if (([v9 renderKeyInKeyplane:v10] & 1) == 0)
  {
    v101 = [(UIKBRenderFactory *)self renderConfig];
    v102 = [v101 colorAdaptiveBackground];

    if ((v102 & 1) == 0)
    {
      v103 = [(UIKBRenderFactory *)self defaultKeyShadowColorName];
      v104 = [UIKBEdgeEffect effectWithColor:v103 edges:4 inset:-1.0 weight:1.0];
      [v8 addRenderEffect:v104];
    }
  }

LABEL_59:
}

- (void)_customizeTraits:(id)a3 forPredictionCellKey:(id)a4
{
  v17 = a3;
  v6 = a4;
  v7 = [(UIKBRenderFactory *)self renderConfig];
  v8 = [v7 lightKeyboard];

  v9 = [v6 state];
  if (v8)
  {
    if (v9 == 2)
    {
      v10 = UIKBPredictionCandidateActiveBackground;
    }

    else
    {
      if (+[UIKBRenderFactory _graphicsQuality]== 100)
      {
        v12 = @"UIKBColorGray_Percent65";
        v13 = [(UIKBRenderFactory *)self controlKeyForegroundColorName];
LABEL_12:
        v14 = [v6 state] == 4;
        goto LABEL_15;
      }

      v10 = UIKBColorKeyGrayKeyLightBackgroundMedium;
    }

    v12 = *v10;
    v13 = 0;
    goto LABEL_12;
  }

  if (v9 == 2)
  {
    v11 = UIKBPredictionCandidateActiveBackground;
  }

  else if (+[UIKBRenderFactory _graphicsQuality]== 100)
  {
    [v17 setBlendForm:6];
    v11 = UIKBColorKeyGrayKeyActiveDarkBackground;
  }

  else
  {
    v11 = UIKBColorKeyGrayKeyDarkBackground;
  }

  v12 = *v11;
  v14 = 0;
  v13 = 0;
LABEL_15:
  [v17 setControlOpacities:v14];
  if (v12)
  {
    v15 = [UIKBGradient gradientWithFlatColor:v12];
    [v17 setBackgroundGradient:v15];

    if (v13)
    {
LABEL_17:
      v16 = [UIKBGradient gradientWithFlatColor:v13];
      [v17 setLayeredForegroundGradient:v16];

      goto LABEL_20;
    }
  }

  else
  {
    [v17 setBackgroundGradient:0];
    if (v13)
    {
      goto LABEL_17;
    }
  }

  [v17 setLayeredForegroundGradient:0];
LABEL_20:
}

- (void)_customizeTraits:(id)a3 forMultiscriptKey:(id)a4 style:(int64_t)a5
{
  v69[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if ([v9 dynamicLayout])
  {
    isKindOfClass = ![(UIKBRenderFactory *)self dynamicFactory];
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  v11 = [v8 symbolStyle];
  v12 = [v8 secondarySymbolStyles];
  v13 = [v12 firstObject];

  [v11 fontSize];
  v15 = v14;
  [v13 fontSize];
  v17 = v16;
  [v13 fontSize];
  v19 = v18;
  v20 = [v9 secondaryDisplayStrings];
  v21 = [v20 count];

  if (a5 == 2)
  {
    v68 = v17;
    v27 = [v9 displayString];
    v28 = [v9 secondaryDisplayStrings];
    v29 = [v28 firstObject];

    v30 = [v8 geometry];
    [v30 paddedFrame];
    v65 = v31;
    v33 = v32;
    v35 = v34;
    v37 = v36;

    v25 = 0.0;
    v22 = 0.0;
    v23 = 0.0;
    if ([v27 length])
    {
      [(UIKBRenderFactoryiPhone *)self customizedOffsetForString:v27 isPrimary:1 withFrame:v65, v33, v35, v37];
      v23 = v38;
      v22 = v39;
      v15 = v40;
    }

    v62 = v37;
    v63 = v35;
    v64 = v33;
    v24 = 0.0;
    v17 = v68;
    if ([v29 length])
    {
      [(UIKBRenderFactoryiPhone *)self customizedOffsetForString:v29 isPrimary:0 withFrame:v65, v64, v35, v62];
      v24 = v41;
      v25 = v42;
      v17 = v43;
    }

    v67 = 0.0;
    v26 = 0.0;
    if (v21 >= 2)
    {
      v44 = [v9 secondaryDisplayStrings];
      v45 = [v44 lastObject];

      [(UIKBRenderFactoryiPhone *)self customizedOffsetForString:v45 isPrimary:0 withFrame:v65, v64, v63, v62];
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
    if (a5 == 1)
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

    if (!a5)
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
  v49 = [(UIKBRenderFactory *)self keyIsRightToLeftSensitive:v9];
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

  [v11 setTextOpacity:{1.0, v50}];
  [v11 setTextOffset:{v52, v22}];
  [v11 setFontSize:v15];
  v53 = [(UIKBRenderFactoryiPhone *)self lightKeycapsFontFallbackName];
  [v11 setKeycapsFallback:v53];

  [v13 setTextOpacity:0.4];
  [v13 setTextOffset:{v51, v25}];
  [v13 setFontSize:v17];
  v54 = [(UIKBRenderFactoryiPhone *)self lightKeycapsFontFallbackName];
  [v13 setKeycapsFallback:v54];

  if (v21 >= 2)
  {
    v55 = [v8 secondarySymbolStyles];
    v56 = [v55 count];

    v57 = [v8 secondarySymbolStyles];
    v58 = v57;
    if (v56 > 1)
    {
      v60 = [v57 lastObject];
    }

    else
    {
      v59 = [v57 firstObject];
      v60 = [v59 copy];

      v69[0] = v13;
      v69[1] = v60;
      v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:2];
      [v8 setSecondarySymbolStyles:v58];
    }

    [v60 setTextOffset:{v26, v67}];
    [v60 setTextOpacity:0.4];
    [v60 setFontSize:v66];
    v61 = [(UIKBRenderFactoryiPhone *)self lightKeycapsFontFallbackName];
    [v60 setKeycapsFallback:v61];
  }
}

- (void)_customizeTraits:(id)a3 forThaiMultiKey:(id)a4
{
  v25 = a3;
  v6 = a4;
  v7 = [(UIKBRenderFactory *)self dynamicFactory];
  v8 = [v25 symbolStyle];
  v9 = [v25 secondarySymbolStyles];
  v10 = [v9 mutableCopy];
  v11 = [v25 secondarySymbolStyles];
  v12 = [v11 count];

  if (v12 <= 2)
  {
    v13 = 3;
    do
    {
      v14 = [v8 copy];
      [v10 addObject:v14];

      --v13;
    }

    while (v13);
  }

  v15 = [v10 objectAtIndex:0];
  v16 = [v10 objectAtIndex:1];
  v17 = [v10 objectAtIndex:2];
  v18 = [v6 displayString];
  v19 = [v18 containsString:@"ผ"];

  if (v7)
  {
    v20 = 13.0;
  }

  else
  {
    v20 = 20.0;
  }

  if (v7)
  {
    v21 = 10.0;
  }

  else
  {
    v21 = 6.0;
  }

  if (v7)
  {
    v22 = 15.0;
  }

  else
  {
    v22 = 12.0;
  }

  if (v7)
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

  [v8 setTextOffset:{v24, v21}];
  [v8 setFontSize:v23];
  [v15 setTextOffset:{v20, v21}];
  [v15 setFontSize:v23];
  [v16 setTextOffset:{-v20, -v21}];
  [v16 setFontSize:v22];
  [v17 setTextOffset:{v20, -v21}];
  [v17 setFontSize:v22];
  [v25 setSecondarySymbolStyles:v10];
}

- (void)_customizeTraits:(id)a3 forZhuyinGridDualStringKey:(id)a4
{
  v31[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(UIKBRenderFactory *)self dynamicFactory];
  v7 = [v5 symbolStyle];
  v8 = v7;
  if (v6)
  {
    [v7 setFontSize:16.0];

    v9 = [v5 symbolStyle];
    [v9 setAlignment:0];

    v10 = [v5 symbolStyle];
    [v10 setAnchorCorner:4];

    v11 = [v5 symbolStyle];
    [v11 setTextOffset:{5.0, 5.0}];

    v12 = [(UIKBRenderFactoryiPhone *)self lightTextFontName];
    v13 = [(UIKBRenderFactoryiPhone *)self lightTextFontFallbackName];
    v14 = [UIKBTextStyle styleWithFontName:v12 withFallbackFontName:v13 withFontSize:14.0];

    v15 = [(UIKBRenderFactory *)self renderConfig];
    if ([v15 lightKeyboard])
    {
      v16 = [(UIKBRenderFactory *)self blackKeycapColor];
      [v14 setTextColor:v16];
    }

    else
    {
      [v14 setTextColor:@"UIKBColorWhite"];
    }

    [v14 setAlignment:2];
    [v14 setAnchorCorner:2];
    [v14 setTextOffset:{5.0, 5.0}];
    v25 = [(UIKBRenderFactoryiPhone *)self lightTextFontName];
    v26 = [(UIKBRenderFactoryiPhone *)self lightTextFontFallbackName];
    v20 = [UIKBTextStyle styleWithFontName:v25 withFallbackFontName:v26 withFontSize:18.0];

    v27 = [(UIKBRenderFactory *)self renderConfig];
    if ([v27 lightKeyboard])
    {
      v28 = @"UIKBColorBlack_Alpha25";
    }

    else
    {
      v28 = @"UIKBColorWhite";
    }

    [v20 setTextColor:v28];

    [v20 setAlignment:1];
    v31[0] = v14;
    v24 = v31;
  }

  else
  {
    [v7 setTextOffset:{-12.0, 0.0}];

    v17 = [v5 secondarySymbolStyles];
    v14 = [v17 firstObject];

    [v14 setTextOffset:{12.0, 0.0}];
    v18 = [(UIKBRenderFactoryiPhone *)self lightTextFontName];
    v19 = [(UIKBRenderFactoryiPhone *)self lightTextFontFallbackName];
    v20 = [UIKBTextStyle styleWithFontName:v18 withFallbackFontName:v19 withFontSize:14.0];

    v21 = [(UIKBRenderFactory *)self renderConfig];
    v22 = [v21 lightKeyboard];
    v23 = UIKBColorBlack_Alpha25;
    if (!v22)
    {
      v23 = UIKBColorWhite;
    }

    [v20 setTextColor:*v23];

    [v20 setAlignment:1];
    v30 = v14;
    v24 = &v30;
  }

  v24[1] = v20;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
  [v5 setSecondarySymbolStyles:v29];
}

- (BOOL)_popupStyleForKey:(id)a3
{
  v4 = a3;
  if ([(UIKBRenderFactory *)self allowsPaddleForKey:v4])
  {
    v5 = 20;
  }

  else
  {
    v5 = 16;
  }

  if (([v4 interactionType] == 1 || objc_msgSend(v4, "interactionType") == 2) && (objc_msgSend(v4, "state") & v5) != 0)
  {
    v6 = [v4 name];
    v7 = [v6 hasPrefix:@"Assist"] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (BOOL)_popupMenuStyleForKey:(id)a3
{
  v3 = a3;
  v4 = [v3 state] == 16 && (objc_msgSend(v3, "displayType") == 13 || objc_msgSend(v3, "displayType") == 4 || objc_msgSend(v3, "displayTypeHint") == 12 || objc_msgSend(v3, "displayType") == 5);

  return v4;
}

- (id)variantGeometriesForGeometry:(id)a3 variantCount:(unint64_t)a4 rowLimit:(int64_t)a5 annotationIndex:(unint64_t)a6
{
  v8 = [a3 copy];
  [v8 paddedFrame];
  [v8 setPaddedFrame:{v9 + 0.0, v10 + 0.0}];
  v11 = [v8 iPhoneVariantGeometries:a4 annotationIndex:a6];

  return v11;
}

- (void)_configureTraitsForPopupStyle:(id)a3 withKey:(id)a4 onKeyplane:(id)a5
{
  v168[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v162 = a5;
  aClassName = [(UIKBRenderFactory *)self contentViewClassNameForPopupKey:v9];
  v10 = NSClassFromString(aClassName);
  if (!v10 || (v11 = v10, [v9 state] != 16))
  {
    if (-[UIKBRenderFactory dynamicFactory](self, "dynamicFactory") && [v9 dynamicLayout])
    {
      [(UIKBRenderFactoryiPhone *)self _customizePopupTraits:v8 forKey:v9 onKeyplane:v162];
      goto LABEL_59;
    }

    v29 = UIKBRectsCreate(v162, v9, [v9 state]);
    v30 = UIKBPopupBiasForKey(v162, v9);
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

    if ([v9 state] == 4)
    {
      v32 = v32 + v33;
    }

LABEL_14:
    v153 = v29[8];
    v154 = v29[9];
    v156 = v29[10];
    v158 = v29[11];
    if (([v9 state] & 0x10) != 0)
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
      v46 = [v8 geometry];
      [v46 paddedFrame];
      v141 = v48;
      v142 = v47;
      v143 = v49;
      v144 = v50;
      [(UIKBRenderFactoryiPhone *)self variantPaddedFrameInsets];
      v52 = v51;
      v54 = v53;
      v140 = v55;
      v57 = v56;
      v58 = [v8 geometry];
      v153 = v153 + v37;
      v154 = v154 + v35;
      v156 = v156 - (v37 + v146);
      v158 = v158 - (v35 + v148);
      v32 = v32 + v43;
      v149 = v149 + v41;
      v150 = v150 - (v43 + v145);
      v151 = v151 - (v41 + v147);
      [v58 setPaddedFrame:{v142 + v54, v141 + v52, v143 - (v54 + v57), v144 - (v52 + v140)}];
    }

    v59 = [v8 geometry];
    [v59 setDisplayFrame:{v153, v154, v156, v158}];

    v60 = [v8 geometry];
    [v60 setSymbolFrame:{v32, v149, v150, v151}];

    free(v29);
    if (v31 <= 0)
    {
      v61 = 2;
    }

    else
    {
      v61 = v31;
    }

    v62 = [v8 geometry];
    [v62 setPopupBias:v61];

    v63 = [(UIKBRenderFactoryiPhone *)self isTallPopup];
    v64 = [v8 geometry];
    [v64 setTallPopup:v63];

    v159 = [(UIKBRenderFactory *)self displayContentsForKey:v9];
    v65 = [v159 variantDisplayContents];
    v66 = [v65 count];

    if (!v66)
    {
      goto LABEL_36;
    }

    v164 = 0;
    v165 = &v164;
    v166 = 0x2020000000;
    v167 = 0x7FFFFFFFFFFFFFFFLL;
    v67 = [v159 variantDisplayContents];
    v163[0] = MEMORY[0x1E69E9820];
    v163[1] = 3221225472;
    v163[2] = __76__UIKBRenderFactoryiPhone__configureTraitsForPopupStyle_withKey_onKeyplane___block_invoke;
    v163[3] = &unk_1E71142E0;
    v163[4] = &v164;
    [v67 enumerateObjectsUsingBlock:v163];

    v68 = [v8 geometry];
    v69 = [(UIKBRenderFactoryiPhone *)self rowLimitForKey:v9];
    v70 = [(UIKBRenderFactoryiPhone *)self variantGeometriesForGeometry:v68 variantCount:v66 rowLimit:v69 annotationIndex:v165[3]];
    [v8 setVariantGeometries:v70];

    v71 = [v9 variantPopupBias];
    LODWORD(v70) = v71 == @"fixed-right";

    if (v70)
    {
      v74 = [v8 variantGeometries];
      v75 = [UIKBRenderGeometry sortedGeometries:v74 leftToRight:1];
      [v8 setVariantGeometries:v75];
    }

    else
    {
      v72 = [v9 variantPopupBias];
      v73 = v72 == @"fixed-left";

      if (!v73)
      {
LABEL_31:
        v82 = [v162 name];
        v83 = [v82 containsString:@"Emoji"];

        if (v83)
        {
          [(UIKBRenderFactory *)self modifyTraitsForDividerVariant:v8 withKey:v9];
        }

        for (i = 0; i != v66; ++i)
        {
          v85 = [v9 subtrees];
          v86 = [v85 objectAtIndex:i];
          v87 = [v8 variantGeometries];
          v88 = [v87 objectAtIndex:i];
          v89 = [v88 similarShape];
          [v86 setShape:v89];
        }

        _Block_object_dispose(&v164, 8);
LABEL_36:
        [(UIKBRenderFactoryiPhone *)self _customizePopupTraits:v8 forKey:v9 onKeyplane:v162];

        goto LABEL_59;
      }

      v74 = [v8 variantGeometries];
      v75 = [UIKBRenderGeometry sortedGeometries:v74 leftToRight:0];
      [v8 setVariantGeometries:v75];
    }

    goto LABEL_31;
  }

  [(UIKBRenderFactoryiPhone *)self _customizePopupTraits:v8 forKey:v9 onKeyplane:v162];
  [(objc_class *)v11 preferredContentViewSizeForKey:v9 withTraits:v8];
  v13 = v12;
  v15 = v14;
  v16 = [v8 geometry];
  v17 = [v16 detachedVariants];

  [v9 paddedFrame];
  v20 = round(v19 + (v18 - v13) * 0.5);
  [v9 paddedFrame];
  v22 = v21;
  if ([v9 popupDirection] == 2)
  {
    [v9 paddedFrame];
    v24 = v23;
    v26 = v25;
    v27 = [v8 geometry];
    v28 = v24 + v26;
    [v27 setPopupDirection:2];
  }

  else
  {
    if (v17)
    {
      v76 = 2.0;
    }

    else
    {
      v76 = 0.0;
    }

    if ([v9 popupDirection] != 3)
    {
      v28 = v22 - v15 - v76;
      goto LABEL_38;
    }

    [v162 frame];
    v78 = v77;
    [v162 frame];
    v80 = v79;
    v81 = [v8 geometry];
    [v81 setPopupDirection:3];

    v27 = [v8 geometry];
    v20 = round((v78 - v13) * 0.5 + 0.0);
    v28 = round((v80 - v15) * 0.5 + 0.0);
    [v27 setRoundRectRadius:15.0];
  }

LABEL_38:
  v90 = UIKBPopupBiasForKey(v162, v9);
  if (v90 <= 0)
  {
    v91 = 2;
  }

  else
  {
    v91 = v90;
  }

  v92 = [v8 geometry];
  [v92 setPopupBias:v91];

  [(UIKBRenderFactoryiPhone *)self wideShadowPaddleInsets];
  v94 = v93;
  v96 = v95;
  v98 = v97;
  v100 = v99;
  if ([v9 popupDirection] == 3)
  {
    v101 = [v8 geometry];
    [v101 setPaddedFrame:{v20, v28, v13, v15}];

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
    [v162 frame];
    if (MaxX <= CGRectGetWidth(v170))
    {
      v104 = v103;
    }

    else
    {
      [v162 frame];
      v110 = CGRectGetMaxX(v171);
      v172.origin.x = v103;
      v172.origin.y = v108;
      v172.size.width = width;
      v172.size.height = height;
      v104 = v110 - CGRectGetWidth(v172) - v157;
    }

    y = v108;
  }

  [v8 geometry];
  v112 = v111 = v160;
  x = v104;
  v114 = [v112 detachedVariants];

  if (v114)
  {
    v115 = [v8 geometry];
    v155 = v94;
    [v115 roundRectRadius];
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
    v130 = [UIKBRenderGeometry geometryWithFrame:v122 paddedFrame:v123, v124, v125, v126, v127, v128, v129];
    v168[0] = v130;
    v131 = [MEMORY[0x1E695DEC8] arrayWithObjects:v168 count:1];
    [v8 setVariantGeometries:v131];
  }

  if ([v9 popupDirection] != 3)
  {
    [v9 paddedFrame];
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

  v132 = [v8 geometry];
  [v132 setDisplayFrame:{x, y, width, height}];

  v133 = [UIKBRenderGeometry geometryWithFrame:*MEMORY[0x1E695EFF8] paddedFrame:*(MEMORY[0x1E695EFF8] + 8), v111, v15, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v111, v15];
  if ([v9 popupDirection] == 2)
  {
    [v9 paddedFrame];
    v135 = v134;
    v136 = 5.0;
  }

  else
  {
    v135 = 0.0;
    v136 = -5.0;
  }

  if ([v9 popupDirection] == 3)
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
  [v8 setVariantTraits:v139];

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

- (BOOL)_shouldConfigureSecondarySymbolStyleForSpaceKey:(id)a3
{
  v4 = a3;
  if ([v4 displayType] == 25)
  {
    v5 = [(UIKBRenderFactory *)self renderConfig];
    v6 = [v5 colorAdaptiveBackground];

    if (v6)
    {
      v7 = UIKeyboardActiveInputModes;
      v8 = [v7 count];
      v9 = [v7 indexOfObjectPassingTest:&__block_literal_global_708];
      LOBYTE(v10) = v8 != 1 && (v8 != 2 || v9 == 0x7FFFFFFFFFFFFFFFLL);
      goto LABEL_11;
    }
  }

  if ([v4 displayType] == 25)
  {
    v7 = [v4 name];
    v10 = [v7 hasSuffix:@"LanguageIndicator"] ^ 1;
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

- (id)_traitsForKey:(id)a3 onKeyplane:(id)a4
{
  v328[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v322.receiver = self;
  v322.super_class = UIKBRenderFactoryiPhone;
  v8 = [(UIKBRenderFactory *)&v322 _traitsForKey:v6 onKeyplane:v7];
  [v8 setBlendForm:{-[UIKBRenderFactory enabledBlendForm](self, "enabledBlendForm")}];
  v9 = [v8 geometry];
  [v9 setRoundRectCorners:-1];

  v10 = [(UIKBRenderFactory *)self renderConfig];
  [v8 setUsesDarkAppearance:{objc_msgSend(v10, "lightKeyboard") ^ 1}];

  v11 = v8;
  v12 = [(UIKBRenderFactory *)self displayContentsForKey:v6];
  v13 = [(UIKBRenderFactoryiPhone *)self lightKeycapsFontName];
  v14 = [(UIKBRenderFactoryiPhone *)self lightKeycapsFontFallbackName];
  v15 = [UIKBTextStyle styleWithFontName:v13 withFallbackFontName:v14 withFontSize:0.0];
  [v8 setSymbolStyle:v15];

  v16 = [v8 symbolStyle];
  [v16 setMinFontSize:9.0];

  v17 = [(UIKBRenderFactory *)self renderConfig];
  v18 = [v17 whiteText];
  v19 = v18;
  if (v18)
  {
    v20 = @"UIKBColorWhite";
  }

  else
  {
    v20 = [(UIKBRenderFactory *)self blackKeycapColor];
  }

  v21 = [v8 symbolStyle];
  [v21 setTextColor:v20];

  if ((v19 & 1) == 0)
  {
  }

  v22 = [v8 symbolStyle];
  [(UIKBRenderFactoryiPhone *)self _customizeSymbolStyle:v22 forKey:v6 contents:v12];

  v23 = [v8 geometry];
  [(UIKBRenderFactoryiPhone *)self _customizeGeometry:v23 forKey:v6 contents:v12];

  if ([(UIKBRenderFactoryiPhone *)self _shouldConfigureSecondarySymbolStyleForSpaceKey:v6])
  {
    v24 = [(UIKBRenderFactoryiPhone *)self _textStyleForSpaceKey];
    v25 = [(UIKBRenderFactory *)self renderConfig];
    v26 = [v25 lightKeyboard];
    v27 = UIKBColorBlack_Alpha20;
    if (!v26)
    {
      v27 = UIKBColorWhite_Alpha30;
    }

    [v24 setTextColor:*v27];

    if ((UIKeyboardCurrentInputModeIsMultiscript() & 1) == 0)
    {
      [v24 setFontWidth:*off_1E70ECD40];
    }

    [v24 setAlignment:2];
    [v24 setAnchorCorner:8];
    [v24 setTextOffset:{5.0, 4.0}];
    v328[0] = v24;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v328 count:1];
    [v8 setSecondarySymbolStyles:v28];
  }

  if ([(UIKBRenderFactoryiPhone *)self _popupMenuStyleForKey:v6])
  {
    v29 = [v6 displayType];
    v30 = [v8 geometry];
    [v30 setPopupBias:40];

    v31 = [v8 geometry];
    [v31 setTallPopup:0];

    v32 = [(UIKBRenderFactory *)self renderingContext];
    v33 = v32;
    if (v29 == 5)
    {
      [v32 splitControlView];
    }

    else
    {
      [v32 inputSwitcherView];
    }
    v38 = ;

    [v38 popupRect];
    x = v39;
    y = v41;
    width = v43;
    height = v45;
    if ([v38 isPopupMode])
    {
      [v6 paddedFrame];
      v48 = v47;
      v50 = v49;
      v52 = v51;
      v54 = v53;
      v55 = [(UIKBRenderFactory *)self renderingContext];
      v56 = [v55 layoutView];
      [v56 convertRect:v38 fromView:{x, y, width, height}];
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
      v65 = [v11 geometry];
      [v65 setPopupBias:0];
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
    v70 = [v11 geometry];
    [v70 setDisplayFrame:{v66, v69, v67, v68}];

    [(UIKBRenderFactoryiPhone *)self _customizePopupTraits:v11 forKey:v6 onKeyplane:v7];
    if (+[UIKBRenderFactory _graphicsQuality]== 10)
    {
      [v11 removeAllRenderEffects];
    }

    v71 = [v11 symbolStyle];
    [v71 setTextColor:@"UIKBColorClear"];

    v72 = v11;
    goto LABEL_201;
  }

  rect_12 = [(UIKBRenderFactoryiPhone *)self _popupStyleForKey:v6];
  if (rect_12)
  {
    [(UIKBRenderFactoryiPhone *)self _configureTraitsForPopupStyle:v8 withKey:v6 onKeyplane:v7];
  }

  if ([v6 state] == 1)
  {
    v34 = [v8 symbolStyle];
    [v34 setTextOpacity:0.32];
  }

  v35 = [(UIKBRenderFactory *)self renderingContext];
  v36 = [v35 keyboardType];

  rect_24 = v7;
  if ([v6 displayTypeHint] == 10)
  {
    if (v36 == 12)
    {
      v37 = [v7 isShiftKeyplane] ^ 1;
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

  v300 = [v6 stringForProperty:@"KBhint"];
  v73 = [v6 supportsSupplementalDisplayString];
  rect_16 = v12;
  if ([v6 displayType] == 7 && (v37 & 1) == 0)
  {
    v74 = [v8 symbolStyle];
    v75 = [v74 copy];

    v76 = [v8 geometry];
    [v76 symbolFrame];
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
    if ([v6 BOOLForProperty:@"slide-down"])
    {
      v96 = v93 + v95;
    }

    v339.origin.x = v92;
    v339.origin.y = v93;
    v339.size.width = v94;
    v339.size.height = v95;
    MidY = CGRectGetMidY(v339);
    v100 = [v8 geometry];
    [v100 symbolFrame];
    v101 = MidY - CGRectGetMidY(v340);

    v102 = [v8 geometry];
    [v102 symbolFrame];
    CGRectGetMinX(v341);
    v342.origin.x = v92;
    v342.origin.y = v93;
    v342.size.width = v94;
    v342.size.height = v95;
    CGRectGetMinX(v342);

    v103 = [v8 geometry];
    [v103 symbolFrame];
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
    v105 = [v8 geometry];
    [v105 symbolFrame];
    v106 = CGRectGetMidY(v346);

    [(UIKBRenderFactoryiPhone *)self dualStringBottomAdditionalOffsetForDisplayContents:v12];
    v108 = v107;
    [v75 setTextOffset:{0.0, v101 + 1.5}];
    if (([(UIKBRenderFactoryiPhone *)self iPadFudgeLayout]| v73))
    {
      goto LABEL_36;
    }

    v154 = [(UIKBRenderFactory *)self renderingContext];
    v155 = [v154 shiftState];
    if (v155 != 4)
    {
      v12 = [(UIKBRenderFactory *)self renderingContext];
      if ([v12 shiftState] == 1)
      {
        if (UIKeyboardCurrentInputModeIsMultiscript())
        {

          v12 = rect_16;
          goto LABEL_36;
        }

        v183 = [v6 supportsSupplementalDisplayString];

        v12 = rect_16;
        if ((v183 & 1) == 0)
        {
          goto LABEL_80;
        }

LABEL_36:
        if ([v6 displayTypeHint] != 10)
        {
          v109 = [v8 symbolStyle];
          [v109 setTextOffset:{0.0, v104 - v106 + v108}];

          v326 = v75;
          v110 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v326 count:1];
          [v8 setSecondarySymbolStyles:v110];
        }

        goto LABEL_86;
      }
    }

    v156 = [(UIKBRenderFactory *)self renderingContext];
    if ([v156 shiftState] == 4 && objc_msgSend(rect_24, "isShiftKeyplane") && (UIKeyboardCurrentInputModeIsMultiscript() & 1) == 0)
    {
      v157 = [v6 supportsSupplementalDisplayString] ^ 1;
    }

    else
    {
      v157 = 0;
    }

    if (v155 == 4)
    {

      v12 = rect_16;
      if (!v157)
      {
        goto LABEL_36;
      }
    }

    else
    {

      v12 = rect_16;
      if ((v157 & 1) == 0)
      {
        goto LABEL_36;
      }
    }

LABEL_80:
    v184 = [v8 symbolStyle];
    v185 = [v184 copy];
    v327 = v185;
    v186 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v327 count:1];
    [v8 setSecondarySymbolStyles:v186];

    [v8 setSymbolStyle:0];
LABEL_86:

    goto LABEL_87;
  }

  if ([v6 displayTypeHint] == 10)
  {
    if ([v6 state] == 4)
    {
      [v8 setRenderSecondarySymbolsSeparately:1];
    }

    v111 = [v12 secondaryDisplayStrings];
    v112 = [v111 count];

    if ([v6 state] != 16 && v112)
    {
      v113 = [MEMORY[0x1E695DF70] array];
      v318 = 0u;
      v319 = 0u;
      v320 = 0u;
      v321 = 0u;
      v114 = [v12 secondaryDisplayStrings];
      v115 = [v114 countByEnumeratingWithState:&v318 objects:v325 count:16];
      if (v115)
      {
        v116 = v115;
        v117 = *v319;
        while (1)
        {
          if (*v319 != v117)
          {
            objc_enumerationMutation(v114);
          }

          v118 = [v11 symbolStyle];
          v119 = [v118 copy];
          [v113 addObject:v119];

          if (!--v116)
          {
            v116 = [v114 countByEnumeratingWithState:&v318 objects:v325 count:16];
            if (!v116)
            {
              break;
            }
          }
        }
      }

      [v11 setSecondarySymbolStyles:v113];
      v12 = rect_16;
    }

    if ([v6 state] <= 2)
    {
      v120 = [v6 displayType];
      v121 = [(UIKBRenderFactory *)self renderConfig];
      if ([v121 lightKeyboard])
      {
        v122 = 0.25;
      }

      else
      {
        v122 = 0.3;
      }

      v123 = dbl_18A67EF60[v120 == 7];
      if (v120 == 7)
      {
        v124 = 1.0;
      }

      else
      {
        v124 = 0.65;
      }

      v125 = dbl_18A67EF70[v120 == 7];
      v126 = [v11 symbolStyle];
      [v126 textOffset];
      v128 = v127;
      v130 = v129;

      v131 = [v11 geometry];
      [v131 displayFrame];
      v133 = v123 * v132;

      v134 = [v6 BOOLForProperty:@"slide-down"];
      v135 = v133 + v133;
      if (!v134)
      {
        v135 = v133;
      }

      v136 = v130 + v135;
      v137 = [v11 symbolStyle];
      [v137 setTextOffset:{v128, v136}];

      if (v112 == 2)
      {
        v158 = [v11 geometry];
        [v158 displayFrame];
        v160 = v125 * v159;

        v161 = [v11 secondarySymbolStyles];
        v162 = [v161 firstObject];

        [v162 setTextOpacity:v122];
        [v162 fontSize];
        [v162 setFontSize:v124 * v163];
        [v162 textOffset];
        v165 = v164;
        v167 = v166 - v160;
        v168 = [v11 geometry];
        [v168 displayFrame];
        v170 = v165 - v169 * 0.24;

        [v162 setTextOffset:{v170, v167}];
        v171 = [v11 secondarySymbolStyles];
        v75 = [v171 lastObject];

        [v75 setTextOpacity:v122];
        [v75 fontSize];
        [v75 setFontSize:v124 * v172];
        [v75 textOffset];
        v174 = v173;
        v176 = v175 - v160;
        v177 = [v11 geometry];
        [v177 displayFrame];
        v179 = v174 + v178 * 0.24;

        v180 = v75;
        v181 = v179;
        v182 = v176;
LABEL_85:
        [v180 setTextOffset:{v181, v182}];
        goto LABEL_86;
      }

      if (v112 == 1)
      {
        v138 = [v11 secondarySymbolStyles];
        v75 = [v138 firstObject];

        if ([v6 displayType] != 7)
        {
          [v75 setTextOpacity:v122];
        }

        [v75 setImageScale:v124];
        [v75 textOffset];
        v140 = v139;
        v142 = v141;
        v143 = [v11 geometry];
        [v143 displayFrame];
        v145 = v144;

        [v75 fontSize];
        v147 = v146;
        [v75 setFontSize:v124 * v146];
        v148 = [v6 secondaryDisplayStrings];
        v149 = [v148 firstObject];
        v150 = [v149 isEqualToString:@"٬"];

        if (v150)
        {
          [v75 setFontSize:v147 * 1.1];
          v151 = [v11 geometry];
          [v151 displayFrame];
          v153 = v152 * 0.27;
        }

        else
        {
          v153 = v125 * v145;
          v187 = [v6 secondaryDisplayStrings];
          v188 = [v187 firstObject];
          v189 = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
          v190 = [v188 rangeOfCharacterFromSet:v189];

          if (v190 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [v75 fontSize];
            [v75 setFontSize:v191 * 0.9];
          }
        }

        v182 = v142 - v153;
        v180 = v75;
        v181 = v140;
        goto LABEL_85;
      }
    }
  }

LABEL_87:
  if ([v6 displayType] == 23 || objc_msgSend(v6, "displayType") == 51 || objc_msgSend(v12, "displayPathType"))
  {
    if (_UISolariumEnabled())
    {
      v192 = +[UIKeyboardPreferencesController sharedPreferencesController];
      v193 = [v192 preferencesActions];
      if ([v193 showSensitiveUI])
      {
        v194 = +[UIKeyboardPreferencesController sharedPreferencesController];
        v195 = [v194 preferencesActions];
        v196 = [v195 colorAdaptiveKeyboardEnabled];

        if (v196)
        {
          v197 = [(UIKBRenderFactory *)self renderConfig];
          v198 = [v197 lightKeyboard];
          v199 = v198;
          if (v198)
          {
            v200 = [(UIKBRenderFactory *)self blackKeycapColor];
          }

          else
          {
            v200 = @"UIKBColorWhite";
          }

          v259 = [v11 symbolStyle];
          [v259 setTextColor:v200];

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

    v197 = [(UIKBRenderFactory *)self renderConfig];
    if (([v197 lightKeyboard] & 1) != 0 || objc_msgSend(v6, "state") >= 3)
    {
      v200 = [(UIKBRenderFactory *)self blackKeycapColor];
      v201 = 1;
    }

    else
    {
      v201 = 0;
      v200 = @"UIKBColorWhite";
    }

    v202 = [v11 symbolStyle];
    [v202 setTextColor:v200];

    if (!v201)
    {
      goto LABEL_102;
    }

LABEL_101:

LABEL_102:
  }

  if ([v6 displayType] == 3)
  {
    v203 = [(UIKBRenderFactory *)self renderConfig];
    v204 = [v203 lightKeyboard];
    if (v204)
    {
      v205 = [(UIKBRenderFactory *)self blackKeycapColor];
    }

    else
    {
      v205 = @"UIKBColorWhite";
    }

    v206 = [v11 symbolStyle];
    [v206 setTextColor:v205];

    if (v204)
    {
    }
  }

  if (-[UIKBRenderFactory drawsOneHandedAffordance](self, "drawsOneHandedAffordance") && [v6 displayType] == 25)
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

  if (!-[UIKBRenderFactory useBlueThemingForKey:](self, "useBlueThemingForKey:", v6) || [v6 state] != 2)
  {
    if (-[UIKBRenderFactory useBlueThemingForKey:](self, "useBlueThemingForKey:", v6) && [v6 state] == 1 && (-[UIKBRenderFactory renderConfig](self, "renderConfig"), v217 = objc_claimAutoreleasedReturnValue(), v218 = objc_msgSend(v217, "colorAdaptiveBackground"), v217, v218))
    {
      v216 = [(UIKBRenderFactory *)self renderConfig];
      v219 = [(__CFString *)v216 lightKeyboard];
      v220 = UIKBColorBlack_Alpha15;
      if (!v219)
      {
        v220 = UIKBColorWhite_Alpha40;
      }

      v221 = [UIKBGradient gradientWithFlatColor:*v220];
      [v11 setLayeredForegroundGradient:v221];
    }

    else
    {
      v216 = [(UIKBRenderFactory *)self defaultKeyShadowColorName];
      v222 = [v6 displayType];
      if (v222 == 47)
      {
        [(UIKBRenderFactoryiPhone *)self _customizeTraits:v11 forPredictionCellKey:v6];
        goto LABEL_139;
      }

      if (v222 == 48)
      {
        v223 = [v6 name];
        v224 = [v223 isEqualToString:@"DividerLine"];

        if (!v224)
        {
          v260 = [v6 name];
          v261 = [v260 isEqualToString:@"SelectionBackground"];

          if (v261)
          {
            v262 = [(UIKBRenderFactory *)self renderConfig];
            v263 = [v262 lightKeyboard];
            v264 = UIKBPredictionCandidateEnabledBackground;
            if (!v263)
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
        v225 = [(UIKBRenderFactory *)self defaultKeyBackgroundColorName];
        v226 = [UIKBGradient gradientWithFlatColor:v225];
        [v11 setBackgroundGradient:v226];

        if (([v6 state] & 4) != 0 && objc_msgSend(v6, "displayType") != 23 && !-[UIKBRenderFactory useBlueThemingForKey:](self, "useBlueThemingForKey:", v6))
        {
          if (-[UIKBRenderFactory allowsPaddleForKey:](self, "allowsPaddleForKey:", v6) && (-[UIKBRenderFactory renderConfig](self, "renderConfig"), v278 = objc_claimAutoreleasedReturnValue(), v279 = [v278 colorAdaptiveBackground], v278, (v279 & 1) == 0))
          {
            [v11 setControlOpacities:1];
            v295 = [(UIKBRenderFactory *)self controlKeyBackgroundColorName];
            v296 = [UIKBGradient gradientWithFlatColor:v295];
            [v11 setBackgroundGradient:v296];

            [(UIKBRenderFactory *)self controlKeyShadowColorName];
            v216 = v283 = v216;
          }

          else
          {
            v280 = [(UIKBRenderFactory *)self renderConfig];
            v281 = [v280 animatedBackground];

            if (v281)
            {
              v282 = v11;
              [v11 setBlurBlending:1];
              v283 = [(UIKBRenderFactory *)self defaultKeyBackgroundColorName];
              v284 = [UIKBGradient gradientWithFlatColor:@"UIKBColorWhite_Alpha10"];
              [v11 setLayeredForegroundGradient:v284];

              [v11 setBlendForm:9];
            }

            else
            {
              v285 = [(UIKBRenderFactory *)self renderConfig];
              v286 = [v285 colorAdaptiveBackground];

              v287 = [(UIKBRenderFactory *)self renderConfig];
              v288 = [v287 lightKeyboard];
              v289 = v288;
              if (v286)
              {
                if (v288)
                {
                  v290 = 13;
                }

                else
                {
                  v290 = 12;
                }

                v282 = v11;
                [v11 setBlendForm:v290];

                v291 = [(UIKBRenderFactory *)self renderConfig];
                v292 = [v291 lightKeyboard];
                v293 = UIKBColorBlack_Alpha15;
                if (!v292)
                {
                  v293 = UIKBColorWhite_Alpha40;
                }

                v283 = *v293;

                v294 = [UIKBGradient gradientWithFlatColor:v283];
                [v11 setLayeredForegroundGradient:v294];
              }

              else
              {

                if (v289)
                {
                  v283 = @"UIKBColorLightGrayPressState";
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

                  v283 = *v297;
                }
              }
            }

            v298 = [UIKBGradient gradientWithFlatColor:v283];
            [v282 setBackgroundGradient:v298];

            v11 = v282;
          }
        }

        v227 = [(UIKBRenderFactory *)self renderConfig];
        v228 = [v227 colorAdaptiveBackground];

        if (v228)
        {
          goto LABEL_139;
        }

        v221 = [UIKBEdgeEffect effectWithColor:v216 edges:4 inset:-1.0 weight:1.0];
        [v11 addRenderEffect:v221];
      }
    }

    goto LABEL_139;
  }

  [(UIKBRenderFactory *)self suppressLayoutSegments];
  v208 = [(UIKBRenderFactory *)self increasedContrastEnabled];
  v209 = UIKBColorBlue;
  if (!v208)
  {
    v209 = UIKBColorKeyBlueKeyBackground;
  }

  v210 = [UIKBGradient gradientWithFlatColor:*v209];
  [v11 setLayeredForegroundGradient:v210];

  v211 = [(UIKBRenderFactory *)self renderConfig];
  v212 = [v211 colorAdaptiveBackground];

  if ((v212 & 1) == 0)
  {
    v213 = [UIKBEdgeEffect effectWithColor:@"UIKBColorBlack_Alpha50" edges:4 inset:-1.0 weight:1.0];
    [v11 addRenderEffect:v213];
  }

  v214 = [(UIKBRenderFactory *)self renderConfig];
  v215 = [v214 lightKeyboard];

  if (!v215)
  {
    goto LABEL_140;
  }

  v216 = [v11 symbolStyle];
  [(__CFString *)v216 setTextColor:@"UIKBColorWhite"];
LABEL_139:

LABEL_140:
  v229 = [v12 displayString];
  v230 = [(UIKBRenderFactory *)self glyphSelectorForDisplayString:v229];

  if (v230)
  {
    v231 = [v11 symbolStyle];
    [v231 setSelector:v230];
  }

  v232 = [v12 secondaryDisplayStrings];
  v315[0] = MEMORY[0x1E69E9820];
  v315[1] = 3221225472;
  v315[2] = __52__UIKBRenderFactoryiPhone__traitsForKey_onKeyplane___block_invoke;
  v315[3] = &unk_1E70FF4D0;
  v233 = v11;
  v316 = v233;
  v317 = self;
  [v232 enumerateObjectsUsingBlock:v315];

  v313 = 0u;
  v314 = 0u;
  v311 = 0u;
  v312 = 0u;
  v234 = [v12 variantDisplayContents];
  v235 = [v234 countByEnumeratingWithState:&v311 objects:v324 count:16];
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
          objc_enumerationMutation(v234);
        }

        v239 = [*(*(&v311 + 1) + 8 * i) displayString];
        v240 = [(UIKBRenderFactory *)self glyphSelectorForDisplayString:v239];

        if (v240)
        {
          v241 = [v233 variantTraits];
          v242 = [v241 symbolStyle];
          [v242 setSelector:v240];

          v243 = [v233 highlightedVariantTraits];
          v244 = [v243 symbolStyle];
          [v244 setSelector:v240];
        }
      }

      v236 = [v234 countByEnumeratingWithState:&v311 objects:v324 count:16];
    }

    while (v236);
  }

  v7 = rect_24;
  if ([v6 displayType] == 27 && objc_msgSend(v6, "variantType") == 4)
  {
    v245 = [rect_24 firstCachedKeyWithName:@"International-Key"];
    v246 = [v245 displayRowHint];

    if ([v6 displayRowHint] == v246)
    {
      [(UIKBRenderFactory *)self suppressLayoutSegments];
    }
  }

  v247 = [(UIKBRenderFactory *)self renderConfig];
  v248 = [v247 lightKeyboard];

  if (v248)
  {
    v309 = 0u;
    v310 = 0u;
    v307 = 0u;
    v308 = 0u;
    v249 = [rect_24 subtrees];
    v250 = [v249 countByEnumeratingWithState:&v307 objects:v323 count:16];
    if (v250)
    {
      v299 = v6;
      v251 = *v308;
LABEL_158:
      v252 = 0;
      while (1)
      {
        if (*v308 != v251)
        {
          objc_enumerationMutation(v249);
        }

        v253 = *(*(&v307 + 1) + 8 * v252);
        v254 = [v253 name];
        v255 = [v254 _containsSubstring:@"Assist"];

        if (v255)
        {
          break;
        }

        if (v250 == ++v252)
        {
          v250 = [v249 countByEnumeratingWithState:&v307 objects:v323 count:16];
          if (v250)
          {
            goto LABEL_158;
          }

          v6 = v299;
          v7 = rect_24;
          goto LABEL_180;
        }
      }

      v250 = v253;

      if (!v250)
      {
        v6 = v299;
        v7 = rect_24;
        goto LABEL_181;
      }

      v256 = [v250 keys];
      v6 = v299;
      v257 = [v256 containsObject:v299];

      v7 = rect_24;
      if (!v257)
      {
        goto LABEL_181;
      }

      if (([v299 state] & 3) != 0)
      {
        v258 = [(UIKBRenderFactoryiPhone *)self shiftedControlKeyTraits];
      }

      else
      {
        if (([v299 state] & 4) == 0)
        {
          goto LABEL_181;
        }

        v258 = [(UIKBRenderFactoryiPhone *)self controlKeyTraits];
      }

      v249 = v258;
      [v233 overlayWithTraits:v258];
    }

LABEL_180:

LABEL_181:
  }

  v12 = rect_16;
  if ([v6 supportsSupplementalDisplayString] && objc_msgSend(v6, "displayType") == 7)
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

    v267 = [v7 name];
    v268 = [v267 containsString:@"Thai-24-Key"];

    if (v268)
    {
      [(UIKBRenderFactoryiPhone *)self _customizeTraits:v233 forThaiMultiKey:v6];
    }

    else
    {
      [(UIKBRenderFactoryiPhone *)self _customizeTraits:v233 forMultiscriptKey:v6 style:v266];
    }
  }

  if ([v6 displayType] == 7)
  {
    v269 = [v6 displayString];
    if ([v269 isEqualToString:@"ㄢ"])
    {
      v270 = [v6 secondaryDisplayStrings];
      v271 = [v270 firstObject];
      v272 = [v271 isEqualToString:@"ㄦ"];

      if (v272)
      {
        [(UIKBRenderFactoryiPhone *)self _customizeTraits:v233 forZhuyinGridDualStringKey:v6];
      }
    }

    else
    {
    }
  }

  if (![v6 interactionType])
  {
    v273 = [v6 name];
    v274 = [v273 containsString:@"Empty-Key"];

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
  v3 = [v2 currentInputMode];
  v4 = [v3 softwareLayout];

  if ([v4 containsString:@"Thai"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"Korean-With-QWERTY"))
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 containsString:@"Arabic-With-QWERTY"];
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
  v3 = [v2 currentInputMode];
  v4 = [v3 softwareLayout];

  v5 = [qword_1ED49F140 objectForKeyedSubscript:v4];

  if (!v5)
  {
    if ([v4 containsString:@"Thai"])
    {
      v6 = @"TUI-Thai-TextOffsets.plist";
    }

    else if ([v4 isEqualToString:@"Korean-With-QWERTY"])
    {
      v6 = @"TUI-Korean-With-QWERTY-TextOffsets.plist";
    }

    else if ([v4 containsString:@"Arabic-With-QWERTY"])
    {
      v6 = @"TUI-Arabic-With-QWERTY-TextOffsets.plist";
    }

    else
    {
      v6 = 0;
    }

    v7 = TextInputUIBundle();
    v8 = [v7 bundlePath];
    v9 = [v8 stringByAppendingPathComponent:v6];

    v10 = [MEMORY[0x1E696AC08] defaultManager];
    LODWORD(v8) = [v10 fileExistsAtPath:v9];

    if (v8)
    {
      v11 = qword_1ED49F140;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v9];
      [v11 setObject:v12 forKey:v4];
    }
  }

  v13 = [qword_1ED49F140 objectForKeyedSubscript:v4];

  return v13;
}

void __43__UIKBRenderFactoryiPhone__textOffsetHints__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = qword_1ED49F140;
  qword_1ED49F140 = v0;
}

- ($89C9DF7554150EC42DA90319EED2ADED)customizedOffsetForString:(SEL)a3 isPrimary:(id)a4 isLandscape:(BOOL)a5 withFrame:(BOOL)a6
{
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v11 = a6;
  v12 = a5;
  v57 = a4;
  v13 = [objc_opt_class() _textOffsetHints];
  v54 = v12;
  v53 = v11;
  if (v12)
  {
    v14 = @"primaryX";
    v15 = !v11;
    if (v11)
    {
      v14 = @"primaryLandscapeX";
      v16 = @"primaryLandscapeY";
    }

    else
    {
      v16 = @"primaryY";
    }

    if (v11)
    {
      v17 = @"primaryLandscapeDeltaX";
    }

    else
    {
      v17 = @"primaryDeltaX";
    }

    if (v11)
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
    v15 = !v11;
    if (v11)
    {
      v14 = @"secondaryLandscapeX";
      v16 = @"secondaryLandscapeY";
    }

    else
    {
      v16 = @"secondaryY";
    }

    if (v11)
    {
      v17 = @"secondaryLandscapeDeltaX";
    }

    else
    {
      v17 = @"secondaryDeltaX";
    }

    if (v11)
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
  v26 = [v13 objectForKeyedSubscript:@"Configuration"];
  v56 = v22;
  v27 = [v26 objectForKeyedSubscript:v22];
  [v27 floatValue];
  v28 = v57;
  v29 = [v13 objectForKeyedSubscript:v57];
  v30 = [v29 objectForKeyedSubscript:v24];
  [v30 floatValue];

  v31 = [v13 objectForKeyedSubscript:@"Configuration"];
  v32 = [v31 objectForKeyedSubscript:v23];
  [v32 floatValue];
  v33 = [v13 objectForKeyedSubscript:v57];
  v34 = [v33 objectForKeyedSubscript:v25];
  [v34 floatValue];

  v35 = [v13 objectForKeyedSubscript:@"Configuration"];
  v36 = [v35 objectForKeyedSubscript:@"minPortraitSmallKeyWidth"];
  [v36 floatValue];
  v52 = v37;

  v38 = [v13 objectForKeyedSubscript:@"Configuration"];
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
      v45 = [v13 objectForKeyedSubscript:@"Configuration"];
      v46 = [v45 objectForKeyedSubscript:v44];
      [v46 floatValue];

      v28 = v57;
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
  v47 = [v13 objectForKeyedSubscript:@"Configuration"];
  v48 = [v47 objectForKeyedSubscript:v55];
  [v48 floatValue];

  v49 = [v13 objectForKeyedSubscript:v28];
  v50 = [v49 objectForKeyedSubscript:@"deltaFontSize"];
  [v50 floatValue];

  return result;
}

@end