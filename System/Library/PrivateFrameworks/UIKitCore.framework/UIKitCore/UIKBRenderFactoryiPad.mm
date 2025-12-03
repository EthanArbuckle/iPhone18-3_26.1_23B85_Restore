@interface UIKBRenderFactoryiPad
- (BOOL)_onLeftSide:(id)side onKeyplane:(id)keyplane;
- (BOOL)supportsInputTraits:(id)traits forKeyplane:(id)keyplane;
- (CGPoint)ZWNJKeyOffset;
- (CGPoint)deleteKeyOffset;
- (CGPoint)dictationKeyOffset;
- (CGPoint)dismissKeyOffset;
- (CGPoint)dualStringKeyOffset;
- (CGPoint)internationalKeyOffset;
- (CGPoint)returnKeyOffset;
- (CGPoint)shiftKeyOffset;
- (CGPoint)stringKeyOffset;
- (CGPoint)symbolImageControlKeyOffset;
- (CGPoint)tinyPunctuationGlyphOffset;
- (CGPoint)variantAnnotationTextOffset;
- (CGRect)dismissKeySymbolFrame;
- (CGRect)insetFrame:(CGRect)frame forKey:(id)key;
- (CGRect)shiftKeySymbolFrame;
- (CGSize)defaultVariantGeometrySize;
- (UIEdgeInsets)variantDisplayFrameInsets;
- (UIEdgeInsets)variantPaddedFrameInsets;
- (UIEdgeInsets)variantSymbolFrameInsets;
- (UIEdgeInsets)wideShadowPaddleInsets;
- (double)_row4ControlSegmentWidthRight;
- (double)cornerRadiusForKey:(id)key;
- (double)keyCornerRadius;
- (double)predictiveKeyCornerRadius;
- (id)_traitsForKey:(id)key onKeyplane:(id)keyplane;
- (id)displayContentsForKey:(id)key;
- (id)lowQualityLayeredBackgroundColorName;
- (id)multitapCompleteKeyImageName;
- (id)muttitapReverseKeyImageName;
- (id)variantGeometriesForGeometry:(id)geometry variantCount:(unint64_t)count rowLimit:(int64_t)limit annotationIndex:(unint64_t)index;
- (int64_t)rowLimitForKey:(id)key;
- (void)_customizeGeometry:(id)geometry forKey:(id)key contents:(id)contents;
- (void)_customizePopupTraits:(id)traits forKey:(id)key onKeyplane:(id)keyplane;
- (void)_customizeSymbolStyle:(id)style forKey:(id)key contents:(id)contents;
- (void)_customizeTraits:(id)traits forPopupForKey:(id)key withRenderingContext:(id)context keycapsFontName:(id)name fallbackFontName:(id)fontName;
- (void)setAllowsPaddles:(BOOL)paddles;
- (void)setupLayoutSegments;
@end

@implementation UIKBRenderFactoryiPad

- (void)setAllowsPaddles:(BOOL)paddles
{
  v3.receiver = self;
  v3.super_class = UIKBRenderFactoryiPad;
  [(UIKBRenderFactory *)&v3 setAllowsPaddles:1];
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

- (CGRect)shiftKeySymbolFrame
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 20.0;
  v5 = 18.0;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)dismissKeySymbolFrame
{
  v2 = 62.0;
  v3 = 60.0;
  v4 = 0.0;
  v5 = 0.0;
  result.size.height = v3;
  result.size.width = v2;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGPoint)internationalKeyOffset
{
  v2 = 0.0;
  v3 = -1.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)dictationKeyOffset
{
  v2 = 0.0;
  v3 = -1.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)deleteKeyOffset
{
  v2 = 0.0;
  v3 = -1.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)shiftKeyOffset
{
  v2 = 0.0;
  v3 = -2.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)returnKeyOffset
{
  [(UIKBRenderFactory *)self scale];
  v3 = v2 == 2.0;
  v4 = 0.0;
  if (!v3)
  {
    v4 = *MEMORY[0x1E695EFF8];
  }

  v5 = -0.5;
  if (!v3)
  {
    v5 = *(MEMORY[0x1E695EFF8] + 8);
  }

  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)symbolImageControlKeyOffset
{
  v2 = 0.0;
  v3 = -1.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)ZWNJKeyOffset
{
  v2 = 0.0;
  v3 = -1.0;
  result.y = v3;
  result.x = v2;
  return result;
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

- (double)predictiveKeyCornerRadius
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  if ([renderConfig colorAdaptiveBackground])
  {
    v3 = 10.0;
  }

  else
  {
    v3 = 4.0;
  }

  return v3;
}

- (UIEdgeInsets)wideShadowPaddleInsets
{
  v2 = 15.0;
  v3 = 5.0;
  v4 = 0.0;
  v5 = 2.0;
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
  v2 = -40.0;
  v3 = -40.0;
  v4 = -40.0;
  v5 = -40.0;
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

- (CGPoint)variantAnnotationTextOffset
{
  v2 = 6.0;
  v3 = 6.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (BOOL)_onLeftSide:(id)side onKeyplane:(id)keyplane
{
  keyplaneCopy = keyplane;
  sideCopy = side;
  if ([sideCopy dynamicLayout])
  {
    dynamicDisplayCorner = [sideCopy dynamicDisplayCorner];

    v8 = dynamicDisplayCorner != 8;
  }

  else
  {
    [sideCopy frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v19.origin.x = v10;
    v19.origin.y = v12;
    v19.size.width = v14;
    v19.size.height = v16;
    MidX = CGRectGetMidX(v19);
    [keyplaneCopy frame];
    v8 = MidX < CGRectGetMidX(v20);
  }

  return v8;
}

- (BOOL)supportsInputTraits:(id)traits forKeyplane:(id)keyplane
{
  keyplaneCopy = keyplane;
  v11 = 1;
  if ([traits keyboardType] == 12 || (+[UIKeyboardPreferencesController sharedPreferencesController](UIKeyboardPreferencesController, "sharedPreferencesController"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "preferencesActions"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "BOOLForPreferenceKey:", @"GesturesEnabled"), v7, v6, v8))
  {
    v9 = [keyplaneCopy firstCachedKeyWithName:@"International-Key"];
    displayRowHint = [v9 displayRowHint];

    if (displayRowHint == 5)
    {
      v11 = 0;
    }
  }

  return v11;
}

- (double)cornerRadiusForKey:(id)key
{
  keyCopy = key;
  displayType = [keyCopy displayType];
  if (displayType == 48)
  {
    name = [keyCopy name];
    v8 = 0.0;
    if ([name isEqualToString:@"SelectionBackground"])
    {
      [(UIKBRenderFactoryiPad *)self predictiveKeyCornerRadius];
      v8 = v9;
    }
  }

  else
  {
    if (displayType == 47)
    {
      [(UIKBRenderFactoryiPad *)self predictiveKeyCornerRadius];
    }

    else
    {
      [(UIKBRenderFactoryiPad *)self keyCornerRadius];
    }

    v8 = v6;
  }

  return v8;
}

- (CGRect)insetFrame:(CGRect)frame forKey:(id)key
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if ([key displayType] != 48)
  {
    [(UIKBRenderFactoryiPad *)self keyInsetBottom];
    x = x + 3.0;
    width = width + -6.0;
    y = y + 1.0;
    height = height - (v9 + 1.0);
  }

  v10 = x;
  v11 = y;
  v12 = width;
  v13 = height;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (id)displayContentsForKey:(id)key
{
  keyCopy = key;
  v29.receiver = self;
  v29.super_class = UIKBRenderFactoryiPad;
  v5 = [(UIKBRenderFactory *)&v29 displayContentsForKey:keyCopy];
  if ([keyCopy interactionType] == 17)
  {
    [v5 setStringKeycapOverImage:1];
    undoKeyImageName = [(UIKBRenderFactory *)self undoKeyImageName];
LABEL_20:
    v21 = undoKeyImageName;
    [v5 setDisplayStringImage:undoKeyImageName];

LABEL_21:
    [v5 setFlipImageHorizontally:{-[UIKBRenderFactory keyIsRightToLeftSensitive:](self, "keyIsRightToLeftSensitive:", keyCopy)}];
    goto LABEL_22;
  }

  if ([keyCopy interactionType] == 12)
  {
    [v5 setStringKeycapOverImage:1];
    undoKeyImageName = [(UIKBRenderFactory *)self redoKeyImageName];
    goto LABEL_20;
  }

  if ([keyCopy interactionType] == 37)
  {
    overrideDisplayString = [keyCopy overrideDisplayString];
    if (overrideDisplayString)
    {
      [v5 setDisplayString:overrideDisplayString];
    }

    else
    {
      displayString = [keyCopy displayString];
      [v5 setDisplayString:displayString];
    }

    undoKeyImageName = [(UIKBRenderFactoryiPad *)self tabKeyImageName];
    goto LABEL_20;
  }

  if ([keyCopy interactionType] == 13)
  {
    overrideDisplayString2 = [keyCopy overrideDisplayString];
    if (overrideDisplayString2 && (v9 = overrideDisplayString2, [keyCopy overrideDisplayString], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(keyCopy, "displayString"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "isEqualToString:", v11), v11, v10, v9, (v12 & 1) == 0))
    {
      [v5 setDisplayStringImage:0];
    }

    else
    {
      displayString2 = [v5 displayString];
      if (displayString2)
      {
        v14 = displayString2;
        forceImageKeycap = [v5 forceImageKeycap];

        if ((forceImageKeycap & 1) == 0)
        {
          [v5 setStringKeycapOverImage:0];
          v16 = [(UIKBRenderFactory *)self returnKeyImageNameForKey:keyCopy];
          [v5 setDisplayStringImage:v16];

          [v5 setFlipImageHorizontally:{-[UIKBRenderFactory keyIsRightToLeftSensitive:](self, "keyIsRightToLeftSensitive:", keyCopy)}];
          renderConfig = [(UIKBRenderFactory *)self renderConfig];
          colorAdaptiveBackground = [renderConfig colorAdaptiveBackground];

          if (colorAdaptiveBackground)
          {
            [v5 setForceImageKeycap:1];
          }
        }
      }
    }

    if (![v5 forceImageKeycap] || (objc_msgSend(v5, "displayStringImage"), v23 = objc_claimAutoreleasedReturnValue(), v23, !v23))
    {
      overrideDisplayString3 = [keyCopy overrideDisplayString];
      if (overrideDisplayString3)
      {
        [v5 setDisplayString:overrideDisplayString3];
      }

      else
      {
        displayString3 = [keyCopy displayString];
        [v5 setDisplayString:displayString3];
      }
    }

    v26 = ([v5 forceImageKeycap] & 1) == 0 && -[UIKBRenderFactory preferStringKeycapOverImage](self, "preferStringKeycapOverImage");
    [v5 setStringKeycapOverImage:v26];
    goto LABEL_21;
  }

  if ([keyCopy interactionType] == 38)
  {
    overrideDisplayString4 = [keyCopy overrideDisplayString];
    if (overrideDisplayString4)
    {
      [v5 setDisplayString:overrideDisplayString4];
    }

    else
    {
      displayString4 = [keyCopy displayString];
      [v5 setDisplayString:displayString4];
    }

    if ([keyCopy state] < 3)
    {
      [(UIKBRenderFactoryiPad *)self capslockKeyImageName];
    }

    else
    {
      [(UIKBRenderFactory *)self shiftLockImageName];
    }
    v28 = ;
    [v5 setDisplayStringImage:v28];
  }

LABEL_22:

  return v5;
}

- (void)_customizeGeometry:(id)geometry forKey:(id)key contents:(id)contents
{
  geometryCopy = geometry;
  keyCopy = key;
  [(UIKBRenderFactoryiPad *)self cornerRadiusForKey:keyCopy];
  [geometryCopy setRoundRectRadius:?];
  [geometryCopy paddedFrame];
  [(UIKBRenderFactoryiPad *)self insetFrame:keyCopy forKey:?];
  [geometryCopy setPaddedFrame:?];
  [(UIKBRenderFactoryiPad *)self symbolFrameInset];
  v9 = v8;
  displayType = [keyCopy displayType];

  if (displayType > 17)
  {
    if (displayType > 22)
    {
      v11 = geometryCopy;
      if (displayType != 54)
      {
        if (displayType != 23)
        {
          goto LABEL_22;
        }

        [(UIKBRenderFactoryiPad *)self shiftKeySymbolFrame];
        v21 = v20;
        [(UIKBRenderFactory *)self RivenFactor:v22];
        v24 = v23;
        [(UIKBRenderFactory *)self RivenFactor:v21];
        v26 = v25;
        [geometryCopy symbolFrame];
        [geometryCopy setSymbolFrame:{round(v28 + (v27 - v24) * 0.5), round(v30 + (v29 - v26) * 0.5), v24, v26}];
        [geometryCopy symbolFrame];
        v18 = -5.0;
        v19 = -5.0;
        goto LABEL_20;
      }
    }

    else
    {
      v11 = geometryCopy;
      if (displayType != 18)
      {
        if (displayType != 21)
        {
          goto LABEL_22;
        }

        [(UIKBRenderFactoryiPad *)self returnKeySymbolFrameInset];
        v13 = v12;
        [geometryCopy symbolFrame];
        if (v16 - v13 > v17)
        {
          v18 = v13;
        }

        else
        {
          v18 = v13 * 0.5;
        }

        v19 = 0.0;
        goto LABEL_20;
      }

      [(UIKBRenderFactory *)self rivenSizeFactor];
      v11 = geometryCopy;
      if (v31 > 1.0)
      {
        v9 = 4.0;
      }
    }

LABEL_19:
    [v11 symbolFrame];
    v19 = 0.0;
    v18 = v9;
LABEL_20:
    v42 = CGRectInset(*&v14, v18, v19);
    width = v42.size.width;
    height = v42.size.height;
LABEL_21:
    [geometryCopy setSymbolFrame:{v42.origin.x, v42.origin.y, width, height}];
    v11 = geometryCopy;
    goto LABEL_22;
  }

  if (displayType == 3)
  {
    v11 = geometryCopy;
    goto LABEL_19;
  }

  v11 = geometryCopy;
  if (displayType == 5)
  {
    [(UIKBRenderFactoryiPad *)self dismissKeySymbolFrame];
    width = v34;
    height = v35;
    [geometryCopy symbolFrame];
    v42.origin.x = round(v37 + (v36 - width) * 0.5);
    v42.origin.y = round(v39 + (v38 - height) * 0.5);
    goto LABEL_21;
  }

  if (displayType == 14)
  {
    goto LABEL_19;
  }

LABEL_22:
}

- (CGPoint)stringKeyOffset
{
  [(UIKBRenderFactory *)self scale];
  v3 = v2 == 2.0;
  v4 = 0.0;
  if (!v3)
  {
    v4 = *MEMORY[0x1E695EFF8];
  }

  v5 = 0.5;
  if (!v3)
  {
    v5 = *(MEMORY[0x1E695EFF8] + 8);
  }

  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)tinyPunctuationGlyphOffset
{
  v2 = 0.0;
  v3 = -2.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)dualStringKeyOffset
{
  v2 = *MEMORY[0x1E695EFF8];
  v3 = *(MEMORY[0x1E695EFF8] + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)dismissKeyOffset
{
  v2 = 0.0;
  v3 = -1.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (id)lowQualityLayeredBackgroundColorName
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  lightKeyboard = [renderConfig lightKeyboard];
  v4 = UIKBColorGray_Percent55;
  if (!lightKeyboard)
  {
    v4 = UIKBColorBlack;
  }

  v5 = *v4;
  v6 = *v4;

  return v5;
}

- (void)_customizeSymbolStyle:(id)style forKey:(id)key contents:(id)contents
{
  styleCopy = style;
  keyCopy = key;
  contentsCopy = contents;
  displayType = [keyCopy displayType];
  interactionType = [keyCopy interactionType];
  displayTypeHint = [keyCopy displayTypeHint];
  v13 = (displayType & 0xFFFFFFF7) == 0 || displayType == 27;
  v15 = v13 || displayType == 7;
  if (v15 == 1 && interactionType != 9 && displayTypeHint != 10)
  {
    [(UIKBRenderFactoryiPad *)self stringKeyFontSize];
    [styleCopy setFontSize:?];
    [(UIKBRenderFactory *)self scale];
    v28 = *MEMORY[0x1E695EFF8];
    v29 = *(MEMORY[0x1E695EFF8] + 8);
    v30 = v27 == 2.0;
    v31 = 0.0;
    if (!v30)
    {
      v31 = *MEMORY[0x1E695EFF8];
    }

    v32 = 0.5;
    if (!v30)
    {
      v32 = *(MEMORY[0x1E695EFF8] + 8);
    }

    [styleCopy setTextOffset:{v31, v32}];
    displayString = [keyCopy displayString];
    v34 = [displayString length];

    if (v34 != 1 && displayType != 7)
    {
      goto LABEL_37;
    }

    displayString2 = [keyCopy displayString];
    [displayString2 characterAtIndex:0];

    if ((TICharIsAlphaNumeric() & 1) == 0 && (TICharIsDevanagariPUA() & 1) == 0)
    {
      [styleCopy fontSize];
      v37 = v36;
      [(UIKBRenderFactoryiPad *)self fontSizeAdjustmentForNonAlphanumericKeycaps];
      [styleCopy setFontSize:v37 + v38];
    }

    if (displayType == 7)
    {
      [styleCopy fontSize];
      v40 = v39;
      [(UIKBRenderFactoryiPad *)self dualStringKeyFontSizeAdjustment];
      [styleCopy setFontSize:v40 + v41];
    }

    else
    {
LABEL_37:
      if (displayType == 27)
      {
LABEL_39:
        [(UIKBRenderFactoryiPad *)self bottomRowDefaultFontSize];
        [styleCopy setFontSize:?];
        [styleCopy setTextOffset:{v28, v29}];
        lightTextFontName = [(UIKBRenderFactoryiPhone *)self lightTextFontName];
        [styleCopy setFontName:lightTextFontName];

        lightTextFontFallbackName = [(UIKBRenderFactoryiPhone *)self lightTextFontFallbackName];
        [styleCopy setKeycapsFallback:lightTextFontFallbackName];

LABEL_40:
        displayString3 = [keyCopy displayString];
        v47 = [displayString3 isEqualToString:@"匹配"];

        if (v47)
        {
          [(UIKBRenderFactoryiPad *)self bottomRowDefaultFontSize];
LABEL_48:
          [styleCopy setFontSize:?];
          goto LABEL_62;
        }

        name = [keyCopy name];
        v51 = [name isEqualToString:@"Zhuyin-Letter-FIRST_TONE"];

        if (v51)
        {
          [(UIKBRenderFactoryiPad *)self zhuyinFirstToneKeyFontSize];
          goto LABEL_48;
        }

        name2 = [keyCopy name];
        v53 = [name2 isEqualToString:@"Arabic-Thousands-Separator"];

        if (v53)
        {
          [(UIKBRenderFactoryiPad *)self tinyPunctuationGlyphFontSize];
          [styleCopy setFontSize:?];
          [(UIKBRenderFactoryiPad *)self tinyPunctuationGlyphOffset];
        }

        else
        {
          representedString = [keyCopy representedString];
          v61 = [representedString isEqualToString:@"‌"];

          if (!v61)
          {
            goto LABEL_62;
          }

          [(UIKBRenderFactoryiPad *)self ZWNJKeyOffset];
        }

        goto LABEL_61;
      }
    }

    name3 = [keyCopy name];
    v43 = [name3 _containsSubstring:@"Email-Dot-"];

    if (!v43)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  v18 = displayTypeHint;
  if (displayTypeHint != 10)
  {
    v15 = 0;
  }

  if (v15 != 1)
  {
    if (displayType == 3)
    {
      lightTextFontName2 = [(UIKBRenderFactoryiPhone *)self lightTextFontName];
      [styleCopy setFontName:lightTextFontName2];

      lightTextFontFallbackName2 = [(UIKBRenderFactoryiPhone *)self lightTextFontFallbackName];
      [styleCopy setKeycapsFallback:lightTextFontFallbackName2];

      [styleCopy setUsesSymbolImage:1];
      [styleCopy setFontWeightForSymbolImage:*off_1E70ECD18];
      [(UIKBRenderFactoryiPad *)self symbolImageControlKeyFontSize];
      [styleCopy setFontSizeForSymbolImage:?];
      [(UIKBRenderFactoryiPad *)self deleteKeyFontSize];
      [(UIKBRenderFactory *)self RivenFactor:?];
      [styleCopy setFontSize:?];
      [(UIKBRenderFactoryiPad *)self deleteKeyOffset];
      goto LABEL_61;
    }

    if (displayType == 23)
    {
      lightTextFontName3 = [(UIKBRenderFactoryiPhone *)self lightTextFontName];
      [styleCopy setFontName:lightTextFontName3];

      lightTextFontFallbackName3 = [(UIKBRenderFactoryiPhone *)self lightTextFontFallbackName];
      [styleCopy setKeycapsFallback:lightTextFontFallbackName3];

      [(UIKBRenderFactoryiPad *)self shiftKeyFontSize];
      [(UIKBRenderFactory *)self RivenFactor:?];
      [styleCopy setFontSize:?];
      [styleCopy setUsesSymbolImage:1];
      [styleCopy setFontWeightForSymbolImage:*off_1E70ECD18];
      [(UIKBRenderFactoryiPad *)self symbolImageControlKeyFontSize];
      [styleCopy setFontSizeForSymbolImage:?];
      if ([keyCopy displayTypeHint])
      {
        goto LABEL_62;
      }

      [(UIKBRenderFactoryiPad *)self shiftKeyOffset];
      goto LABEL_61;
    }

    if (interactionType == 9)
    {
      [(UIKBRenderFactoryiPad *)self internationalKeyOffset];
      [styleCopy setTextOffset:?];
      if ([(UIKBRenderFactoryiPad *)self iPadFudgeLayout]|| [(UIKBRenderFactoryiPad *)self iPadSansHomeButtonLayout])
      {
        lightTextFontName4 = [(UIKBRenderFactoryiPhone *)self lightTextFontName];
        [styleCopy setFontName:lightTextFontName4];

        lightTextFontFallbackName4 = [(UIKBRenderFactoryiPhone *)self lightTextFontFallbackName];
        [styleCopy setKeycapsFallback:lightTextFontFallbackName4];

        [(UIKBRenderFactoryiPad *)self spaceKeyFontSize];
        [(UIKBRenderFactory *)self RivenFactor:?];
        [styleCopy setFontSize:?];
      }

      else
      {
        displayType2 = [keyCopy displayType];
        v58 = styleCopy;
        if (displayType2)
        {
          goto LABEL_57;
        }

        lightTextFontName5 = [(UIKBRenderFactoryiPhone *)self lightTextFontName];
        [styleCopy setFontName:lightTextFontName5];

        lightTextFontFallbackName5 = [(UIKBRenderFactoryiPhone *)self lightTextFontFallbackName];
        [styleCopy setKeycapsFallback:lightTextFontFallbackName5];

        [(UIKBRenderFactoryiPad *)self moreKeyFontSize];
        [(UIKBRenderFactory *)self RivenFactor:?];
        [styleCopy setFontSize:?];
        [(UIKBRenderFactory *)self scale];
        v68 = v67 == 2.0;
        v69 = 0.0;
        if (!v68)
        {
          v69 = *MEMORY[0x1E695EFF8];
        }

        v70 = -0.5;
        if (!v68)
        {
          v70 = *(MEMORY[0x1E695EFF8] + 8);
        }

        [styleCopy setTextOffset:{v69, v70, *(MEMORY[0x1E695EFF8] + 8)}];
      }

      v58 = styleCopy;
LABEL_57:
      v59 = v58;
LABEL_58:
      [v59 setUsesSymbolImage:1];
      [styleCopy setFontWeightForSymbolImage:*off_1E70ECD18];
LABEL_114:
      [(UIKBRenderFactoryiPad *)self symbolImageControlKeyFontSize];
      [styleCopy setFontSizeForSymbolImage:?];
      goto LABEL_62;
    }

    if (displayType <= 10)
    {
      if (displayType != 2)
      {
        if (displayType == 4)
        {
          [(UIKBRenderFactoryiPad *)self dictationKeyOffset];
          [styleCopy setTextOffset:?];
          v59 = styleCopy;
          goto LABEL_58;
        }

        if (displayType != 5)
        {
          goto LABEL_110;
        }

LABEL_113:
        [styleCopy setUsesSymbolImage:1];
        goto LABEL_114;
      }
    }

    else
    {
      if (displayType > 0x33)
      {
LABEL_105:
        if (displayType == 11)
        {
          goto LABEL_68;
        }

        if (displayType == 14)
        {
          lightTextFontName6 = [(UIKBRenderFactoryiPhone *)self lightTextFontName];
          [styleCopy setFontName:lightTextFontName6];

          lightTextFontFallbackName6 = [(UIKBRenderFactoryiPhone *)self lightTextFontFallbackName];
          [styleCopy setKeycapsFallback:lightTextFontFallbackName6];

          renderingContext = [(UIKBRenderFactory *)self renderingContext];
          keyboardType = [renderingContext keyboardType];

          [styleCopy setIgnoreTextMarginOnKey:keyboardType == 126];
          if (keyboardType == 126)
          {
            [(UIKBRenderFactoryiPad *)self messagesTypeKeyplanSwitchKeyFontSize];
          }

          else
          {
            [(UIKBRenderFactoryiPad *)self spaceKeyFontSize];
          }

          [(UIKBRenderFactory *)self RivenFactor:?];
          [styleCopy setFontSize:?];
          [(UIKBRenderFactory *)self scale];
          v26 = *(MEMORY[0x1E695EFF8] + 8);
          v95 = v94 == 2.0;
          if (v94 == 2.0)
          {
            v26 = -0.5;
          }

          v25 = 0.0;
          if (!v95)
          {
            v25 = *MEMORY[0x1E695EFF8];
          }

          goto LABEL_61;
        }

LABEL_110:
        name4 = [keyCopy name];
        v91 = [name4 _containsSubstring:@"Email-Dot-"];

        if (v91)
        {
          [(UIKBRenderFactoryiPad *)self emailDotKeyFontSize];
        }

        else
        {
          name5 = [keyCopy name];
          v93 = [name5 hasSuffix:@"Chinese-Facemark"];

          if (v93)
          {
            [(UIKBRenderFactoryiPad *)self facemarkKeyFontSize];
          }

          else if ([keyCopy displayRowHint] != 4 || v18 == 10)
          {
            [(UIKBRenderFactoryiPad *)self fallbackFontSize];
          }

          else
          {
            lightTextFontName7 = [(UIKBRenderFactoryiPhone *)self lightTextFontName];
            [styleCopy setFontName:lightTextFontName7];

            lightTextFontFallbackName7 = [(UIKBRenderFactoryiPhone *)self lightTextFontFallbackName];
            [styleCopy setKeycapsFallback:lightTextFontFallbackName7];
          }
        }

        goto LABEL_48;
      }

      if (((1 << displayType) & 0x8000006200000) != 0)
      {
LABEL_68:
        renderConfig = [(UIKBRenderFactory *)self renderConfig];
        if ([renderConfig colorAdaptiveBackground])
        {
          displayType3 = [keyCopy displayType];

          if (displayType3 == 21)
          {
            [styleCopy setUsesSymbolImage:1];
            [styleCopy setFontGrade:2];
          }
        }

        else
        {
        }

        v71 = 1;
        v72 = styleCopy;
        if (displayType != 26 && displayType != 51)
        {
          renderConfig = [contentsCopy displayStringImage];
          if (([renderConfig containsString:@"grinning"] & 1) == 0)
          {
            displayStringImage = [contentsCopy displayStringImage];
            v71 = [displayStringImage containsString:@"return"];
          }

          v72 = styleCopy;
        }

        if (displayType != 26 && displayType != 51)
        {

          v72 = styleCopy;
        }

        if (v71)
        {
          [v72 setUsesSymbolImage:1];
          [(UIKBRenderFactoryiPad *)self symbolImageControlKeyFontSize];
          [styleCopy setFontSizeForSymbolImage:?];
          [styleCopy setFontWeightForSymbolImage:*off_1E70ECD18];
          [(UIKBRenderFactoryiPad *)self symbolImageControlKeyOffset];
        }

        else
        {
          [(UIKBRenderFactory *)self scale];
          v13 = v75 == 2.0;
          v74 = 0.0;
          if (!v13)
          {
            v74 = *MEMORY[0x1E695EFF8];
          }
        }

        [styleCopy setTextOffset:v74];
        lightTextFontName8 = [(UIKBRenderFactoryiPhone *)self lightTextFontName];
        [styleCopy setFontName:lightTextFontName8];

        lightTextFontFallbackName8 = [(UIKBRenderFactoryiPhone *)self lightTextFontFallbackName];
        [styleCopy setKeycapsFallback:lightTextFontFallbackName8];

        [(UIKBRenderFactoryiPad *)self spaceKeyFontSize];
        goto LABEL_48;
      }

      if (displayType != 18)
      {
        if (displayType == 24)
        {
          [(UIKBRenderFactoryiPad *)self smallKanaKeyFontSize];
          goto LABEL_48;
        }

        goto LABEL_105;
      }
    }

    lightTextFontName9 = [(UIKBRenderFactoryiPhone *)self lightTextFontName];
    [styleCopy setFontName:lightTextFontName9];

    lightTextFontFallbackName9 = [(UIKBRenderFactoryiPhone *)self lightTextFontFallbackName];
    [styleCopy setKeycapsFallback:lightTextFontFallbackName9];

    [(UIKBRenderFactoryiPad *)self moreKeyFontSize];
    [(UIKBRenderFactory *)self RivenFactor:?];
    [styleCopy setFontSize:?];
    [(UIKBRenderFactory *)self scale];
    v80 = *(MEMORY[0x1E695EFF8] + 8);
    v82 = v81 == 2.0;
    if (v81 == 2.0)
    {
      v80 = -0.5;
    }

    v83 = 0.0;
    if (!v82)
    {
      v83 = *MEMORY[0x1E695EFF8];
    }

    [styleCopy setTextOffset:{v83, v80, *MEMORY[0x1E695EFF8]}];
    if (displayType == 18)
    {
      [(UIKBRenderFactory *)self rivenSizeFactor];
      if (v84 <= 1.0)
      {
        [styleCopy setIgnoreTextMarginOnKey:1];
      }

      else
      {
        displayString4 = [contentsCopy displayString];
        [styleCopy setIgnoreTextMarginOnKey:{objc_msgSend(displayString4, "_containsCJScripts") ^ 1}];
      }
    }

    goto LABEL_113;
  }

  [(UIKBRenderFactoryiPad *)self stringKeyFontSize];
  [styleCopy setFontSize:?];
  if (displayType == 7)
  {
    [styleCopy fontSize];
    v20 = v19;
    [(UIKBRenderFactoryiPad *)self dualStringKeyFontSizeAdjustment];
    [styleCopy setFontSize:v20 + v21];
  }

  representedString2 = [keyCopy representedString];
  v23 = [representedString2 length];

  if (v23)
  {
    representedString3 = [keyCopy representedString];
    [representedString3 characterAtIndex:0];

    if (uscript_hasScript())
    {
      v25 = 0.0;
      v26 = -2.0;
LABEL_61:
      [styleCopy setTextOffset:{v25, v26}];
    }
  }

LABEL_62:
}

- (void)_customizePopupTraits:(id)traits forKey:(id)key onKeyplane:(id)keyplane
{
  v68 = *MEMORY[0x1E69E9840];
  traitsCopy = traits;
  keyCopy = key;
  state = [keyCopy state];
  geometry = [traitsCopy geometry];
  v11 = geometry;
  if (state == 16)
  {
    [geometry setDetachedVariants:1];

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
  }

  else
  {
    [geometry setPopupBias:0];

    [traitsCopy setBlurBlending:1];
    [traitsCopy setRenderFlagsForAboveEffects:2];
  }

  [(UIKBRenderFactory *)self suppressLayoutSegments];
  if (![(UIKBRenderFactory *)self lightweightFactory])
  {
    defaultKeyBackgroundColorName = [(UIKBRenderFactory *)self defaultKeyBackgroundColorName];
    v16 = [UIKBGradient gradientWithFlatColor:defaultKeyBackgroundColorName];
    [traitsCopy setBackgroundGradient:v16];

    renderConfig4 = [(UIKBRenderFactory *)self renderConfig];
    LOBYTE(defaultKeyBackgroundColorName) = [renderConfig4 colorAdaptiveBackground];

    if ((defaultKeyBackgroundColorName & 1) == 0)
    {
      renderConfig5 = [(UIKBRenderFactory *)self renderConfig];
      lightKeyboard = [renderConfig5 lightKeyboard];

      if (lightKeyboard && ([keyCopy state] & 0x10) != 0)
      {
        v20 = [UIKBEdgeEffect effectWithColor:@"UIKBColorBlack_Alpha12" edges:15 inset:-0.25 weight:0.5];
        [traitsCopy addRenderEffect:v20];
      }

      [(UIKBRenderFactoryiPad *)self wideShadowPaddleInsets];
      v25 = [UIKBShadowEffect effectWithColor:@"UIKBColorBlack_Alpha35" offset:0.0 insets:2.0 weight:v21, v22, v23, v24, 4.5];
      [traitsCopy addRenderEffect:v25];
    }

    if (([keyCopy state] & 0x10) != 0)
    {
      lightKeycapsFontName = [(UIKBRenderFactoryiPad *)self lightKeycapsFontName];
      lightKeycapsFontFallbackName = [(UIKBRenderFactoryiPhone *)self lightKeycapsFontFallbackName];
      v28 = [UIKBTextStyle styleWithFontName:lightKeycapsFontName withFallbackFontName:lightKeycapsFontFallbackName withFontSize:22.0];

      if ([keyCopy displayType] == 27 || objc_msgSend(keyCopy, "variantType") == 4)
      {
        lightTextFontName = [(UIKBRenderFactoryiPhone *)self lightTextFontName];
        [v28 setFontName:lightTextFontName];

        lightTextFontFallbackName = [(UIKBRenderFactoryiPhone *)self lightTextFontFallbackName];
        [v28 setFontName:lightTextFontFallbackName];

        [v28 setFontSize:16.0];
      }

      [v28 setTextOffset:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
      symbolStyle = [traitsCopy symbolStyle];
      textColor = [symbolStyle textColor];
      [v28 setTextColor:textColor];

      v33 = [UIKBRenderTraits traitsWithSymbolStyle:v28];
      [traitsCopy setVariantTraits:v33];

      v34 = [UIKBRenderTraits traitsWithSymbolStyle:0];
      renderConfig6 = [(UIKBRenderFactory *)self renderConfig];
      lightKeyboard2 = [renderConfig6 lightKeyboard];
      v37 = UIKBColorKeyBlueKeyBackground;
      if (!lightKeyboard2)
      {
        v37 = UIKBColorBlack_Alpha30;
      }

      v38 = *v37;

      v39 = [UIKBGradient gradientWithFlatColor:v38];
      [v34 setLayeredForegroundGradient:v39];

      v40 = [UIKBTextStyle styleWithTextColor:@"UIKBColorWhite"];
      [v34 setSymbolStyle:v40];

      [traitsCopy setHighlightedVariantTraits:v34];
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      subtrees = [keyCopy subtrees];
      v42 = [subtrees countByEnumeratingWithState:&v61 objects:v67 count:16];
      if (v42)
      {
        v43 = v42;
        v59 = v38;
        v60 = v34;
        v44 = *v62;
        while (2)
        {
          for (i = 0; i != v43; ++i)
          {
            if (*v62 != v44)
            {
              objc_enumerationMutation(subtrees);
            }

            secondaryDisplayStrings = [*(*(&v61 + 1) + 8 * i) secondaryDisplayStrings];
            v47 = [secondaryDisplayStrings count];

            if (v47)
            {

              subtrees = [v28 copy];
              [(UIKBRenderFactoryiPhone *)self variantAnnotationTextFontSize];
              [subtrees setFontSize:?];
              renderConfig7 = [(UIKBRenderFactory *)self renderConfig];
              if ([renderConfig7 lightKeyboard])
              {
                v49 = @"UIKBColorBlack_Alpha40";
              }

              else
              {
                v49 = @"UIKBColorWhite";
              }

              [subtrees setTextColor:v49];

              [subtrees setAnchorCorner:2];
              [(UIKBRenderFactoryiPad *)self variantAnnotationTextOffset];
              [subtrees setTextOffset:?];
              v66 = subtrees;
              v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v66 count:1];
              variantTraits = [traitsCopy variantTraits];
              [variantTraits setSecondarySymbolStyles:v50];

              v52 = [UIKBTextStyle styleWithTextColor:@"UIKBColorWhite"];
              v65 = v52;
              v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v65 count:1];
              v34 = v60;
              [v60 setSecondarySymbolStyles:v53];

              goto LABEL_35;
            }
          }

          v43 = [subtrees countByEnumeratingWithState:&v61 objects:v67 count:16];
          if (v43)
          {
            continue;
          }

          break;
        }

        v34 = v60;
LABEL_35:
        v38 = v59;
      }
    }

    geometry2 = [traitsCopy geometry];
    if ([keyCopy displayTypeHint] == 10 && objc_msgSend(keyCopy, "state") == 4)
    {
      [geometry2 displayFrame];
      v56 = v55;
      v58 = v57;
      [geometry2 displayFrame];
      v70 = CGRectInset(v69, v56 * -0.5, v58 * -0.5);
      [geometry2 setDisplayFrame:{v70.origin.x, v70.origin.y, v70.size.width, v70.size.height}];
    }
  }
}

- (CGSize)defaultVariantGeometrySize
{
  v2 = 62.0;
  v3 = 66.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (int64_t)rowLimitForKey:(id)key
{
  keyCopy = key;
  name = [keyCopy name];
  v5 = [name isEqualToString:@"EmojiPopupKey"];

  if (v5)
  {
    subtrees = [keyCopy subtrees];
    v7 = [subtrees count];
  }

  else
  {
    v7 = 5;
  }

  return v7;
}

- (id)variantGeometriesForGeometry:(id)geometry variantCount:(unint64_t)count rowLimit:(int64_t)limit annotationIndex:(unint64_t)index
{
  geometryCopy = geometry;
  [geometryCopy paddedFrame];
  v11 = v10;
  [(UIKBRenderFactoryiPad *)self defaultVariantSizeThreshold];
  v12 = geometryCopy;
  if (v11 > v13)
  {
    v12 = [geometryCopy copy];

    [v12 paddedInsets];
    v43 = v15;
    v44 = v14;
    v41 = v17;
    v42 = v16;
    [v12 paddedFrame];
    v19 = v18;
    v21 = v20;
    [(UIKBRenderFactoryiPad *)self defaultVariantGeometrySize];
    v23 = v22;
    v25 = v24;
    [v12 paddedFrame];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    [(UIKBRenderFactory *)self scale];
    UIRectCenteredXInRectScale(v19, v21, v23, v25, v27, v29, v31, v33, v34);
    [v12 setPaddedFrame:?];
    [v12 paddedFrame];
    [v12 setSymbolFrame:?];
    [v12 frame];
    [v12 setFrame:{v35 - v42, v37 - v44, v36 - (-v42 - v43), v38 - (-v41 - v44)}];
  }

  v39 = [v12 iPadVariantGeometries:count rowLimit:limit];

  return v39;
}

- (id)_traitsForKey:(id)key onKeyplane:(id)keyplane
{
  keyCopy = key;
  keyplaneCopy = keyplane;
  v71.receiver = self;
  v71.super_class = UIKBRenderFactoryiPad;
  v8 = [(UIKBRenderFactoryiPhone *)&v71 _traitsForKey:keyCopy onKeyplane:keyplaneCopy];
  displayType = [keyCopy displayType];
  if ([(UIKBRenderFactoryiPhone *)self _popupMenuStyleForKey:keyCopy])
  {
    renderingContext = [(UIKBRenderFactory *)self renderingContext];
    lightKeycapsFontName = [(UIKBRenderFactoryiPad *)self lightKeycapsFontName];
    lightKeycapsFontFallbackName = [(UIKBRenderFactoryiPhone *)self lightKeycapsFontFallbackName];
    [(UIKBRenderFactoryiPad *)self _customizeTraits:v8 forPopupForKey:keyCopy withRenderingContext:renderingContext keycapsFontName:lightKeycapsFontName fallbackFontName:lightKeycapsFontFallbackName];

LABEL_3:
    goto LABEL_39;
  }

  [(UIKBRenderFactoryiPad *)self keyCornerRadius];
  v14 = v13;
  geometry = [v8 geometry];
  [geometry setRoundRectRadius:v14];

  if ([(UIKBRenderFactoryiPhone *)self _shouldConfigureSecondarySymbolStyleForSpaceKey:keyCopy])
  {
    secondarySymbolStyles = [v8 secondarySymbolStyles];
    firstObject = [secondarySymbolStyles firstObject];

    [firstObject setFontSize:15.0];
    [firstObject setTextOffset:{8.0, 8.0}];
  }

  if (([keyCopy interactionType] == 1 || objc_msgSend(keyCopy, "interactionType") == 2) && objc_msgSend(keyCopy, "state") == 4)
  {
    controlKeyTraits = [(UIKBRenderFactoryiPhone *)self controlKeyTraits];
    [v8 overlayWithTraits:controlKeyTraits];
  }

  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  if ([renderConfig colorAdaptiveBackground])
  {
    state = [keyCopy state];

    if ((state & 4) == 0)
    {
      goto LABEL_19;
    }

    renderConfig2 = [(UIKBRenderFactory *)self renderConfig];
    if ([renderConfig2 lightKeyboard])
    {
      v22 = 13;
    }

    else
    {
      v22 = 12;
    }

    [v8 setBlendForm:v22];

    renderConfig = [(UIKBRenderFactory *)self renderConfig];
    lightKeyboard = [renderConfig lightKeyboard];
    v24 = UIKBColorBlack_Alpha15;
    if (!lightKeyboard)
    {
      v24 = UIKBColorWhite_Alpha40;
    }

    v25 = [UIKBGradient gradientWithFlatColor:*v24];
    [v8 setBackgroundGradient:v25];
  }

LABEL_19:
  if (displayType <= 7)
  {
    if (displayType)
    {
      if (displayType != 7)
      {
        goto LABEL_39;
      }

      [(UIKBRenderFactoryiPad *)self dualStringKeyOffset];
      v27 = v26;
      v29 = v28;
      symbolStyle = [v8 symbolStyle];
      [symbolStyle textOffset];
      v32 = v31;
      v34 = v33;

      symbolStyle2 = [v8 symbolStyle];
      [symbolStyle2 setTextOffset:{v27 + v32, v29 + v34}];

      secondarySymbolStyles2 = [v8 secondarySymbolStyles];
      firstObject2 = [secondarySymbolStyles2 firstObject];

      [firstObject2 textOffset];
      [firstObject2 setTextOffset:{v27 + v38, v29 + v39}];
    }
  }

  else if (displayType != 8)
  {
    if (displayType == 21)
    {
      symbolStyle3 = [v8 symbolStyle];
      usesSymbolImage = [symbolStyle3 usesSymbolImage];

      if (usesSymbolImage)
      {
        [(UIKBRenderFactoryiPad *)self symbolImageControlKeyFontSize];
        v58 = v57;
        symbolStyle4 = [v8 symbolStyle];
        [symbolStyle4 setFontSizeForSymbolImage:v58];

        v60 = *off_1E70ECD18;
        symbolStyle5 = [v8 symbolStyle];
        [symbolStyle5 setFontWeightForSymbolImage:v60];

        [(UIKBRenderFactoryiPad *)self symbolImageControlKeyOffset];
        v63 = v62;
        v65 = v64;
        symbolStyle6 = [v8 symbolStyle];
        [symbolStyle6 setTextOffset:{v63, v65}];

        v67 = [keyplaneCopy cachedKeysByKeyName:@"Return-Key"];
        v68 = [v67 count];

        if (v68 >= 2)
        {
          symbolStyle7 = [v8 symbolStyle];
          [symbolStyle7 setAnchorCorner:8];

          renderingContext = [v8 symbolStyle];
          [renderingContext setTextOffset:{3.0, 10.0}];
          goto LABEL_3;
        }
      }

      goto LABEL_39;
    }

    if (displayType != 25)
    {
      goto LABEL_39;
    }
  }

  v40 = [keyplaneCopy firstCachedKeyWithName:@"International-Key"];
  displayRowHint = [v40 displayRowHint];

  if ([keyCopy displayRowHint] == displayRowHint && objc_msgSend(keyCopy, "interactionType") != 9)
  {
    [(UIKBRenderFactory *)self suppressLayoutSegments];
  }

  displayString = [keyCopy displayString];
  v43 = [displayString isEqualToString:@"kr"];

  if (v43)
  {
    lightTextFontName = [(UIKBRenderFactoryiPhone *)self lightTextFontName];
    symbolStyle8 = [v8 symbolStyle];
    [symbolStyle8 setFontName:lightTextFontName];

    lightTextFontFallbackName = [(UIKBRenderFactoryiPhone *)self lightTextFontFallbackName];
    symbolStyle9 = [v8 symbolStyle];
    [symbolStyle9 setKeycapsFallback:lightTextFontFallbackName];
  }

  else
  {
    secondaryDisplayStrings = [keyCopy secondaryDisplayStrings];
    firstObject3 = [secondaryDisplayStrings firstObject];
    v50 = [firstObject3 isEqualToString:@"kr"];

    if (!v50)
    {
      goto LABEL_39;
    }

    lightTextFontName2 = [(UIKBRenderFactoryiPhone *)self lightTextFontName];
    secondarySymbolStyles3 = [v8 secondarySymbolStyles];
    firstObject4 = [secondarySymbolStyles3 firstObject];
    [firstObject4 setFontName:lightTextFontName2];

    lightTextFontFallbackName = [(UIKBRenderFactoryiPhone *)self lightTextFontFallbackName];
    symbolStyle9 = [v8 secondarySymbolStyles];
    firstObject5 = [symbolStyle9 firstObject];
    [firstObject5 setKeycapsFallback:lightTextFontFallbackName];
  }

LABEL_39:

  return v8;
}

- (double)_row4ControlSegmentWidthRight
{
  renderingContext = [(UIKBRenderFactory *)self renderingContext];
  if ([renderingContext keyboardType] == 126)
  {
    v4 = 0.35;
  }

  else
  {
    [(UIKBRenderFactoryiPad *)self _row4ControlSegmentWidthLeft];
    v4 = v5;
  }

  return v4;
}

- (void)setupLayoutSegments
{
  [(UIKBRenderFactoryiPad *)self _row4ControlSegmentWidthLeft];
  v4 = v3;
  [(UIKBRenderFactoryiPad *)self _row4ControlSegmentWidthRight];
  v6 = 1.0 - v5;
  [(UIKBRenderFactoryiPad *)self _row4ControlSegmentWidthRight];
  v8 = v7;
  controlKeyTraits = [(UIKBRenderFactoryiPhone *)self controlKeyTraits];
  v9 = [UIKBRenderFactoryLayoutSegment segmentWithTraits:?];
  [v9 setKeyStates:3];
  [v9 addRelativeLayoutRectFromEdge:10 ofCachedKey:@"Shift-Key"];
  [v9 addRelativeLayoutRectFromEdge:2 ofCachedKey:@"Delete-Key"];
  [v9 addRelativeLayoutRectFromEdge:2 ofCachedKey:@"Return-Key"];
  v10 = 8;
  [v9 addRelativeLayoutRectFromEdge:8 ofCachedKey:@"Tab-Key"];
  [v9 addRelativeLayoutRectFromEdge:8 ofCachedKey:@"Caps-Lock-Key"];
  [v9 addRelativeLayoutRectFromEdge:8 ofCachedKey:@"Roman-to-Non-Roman-Switch-Key"];
  [v9 addRelativeLayoutRectFromEdge:8 ofCachedKey:@"Non-Roman-to-Roman-Switch-Key"];
  if (![(UIKBRenderFactoryiPad *)self iPadFudgeLayout])
  {
    if ([(UIKBRenderFactoryiPad *)self iPadSansHomeButtonLayout])
    {
      v10 = 8;
    }

    else
    {
      v10 = 2;
    }
  }

  [v9 addRelativeLayoutRectFromEdge:v10 ofCachedKey:@"Undo-Key"];
  [v9 addRelativeLayoutRectFromEdge:v10 ofCachedKey:@"Redo-Key"];
  [v9 addLayoutRect:0 asTriangle:{0.0, 0.8, v4, 0.2}];
  [v9 addLayoutRect:0 asTriangle:{v6, 0.8, v8, 0.2}];
  [(UIKBRenderFactory *)self addLayoutSegment:v9];
  shiftDeleteGlyphTraits = [(UIKBRenderFactoryiPhone *)self shiftDeleteGlyphTraits];
  v12 = [UIKBRenderFactoryLayoutSegment segmentWithTraits:shiftDeleteGlyphTraits];

  [v12 setKeyStates:3];
  [v12 addRelativeLayoutRectFromEdge:10 ofCachedKey:@"Shift-Key"];
  [v12 addRelativeLayoutRectFromEdge:2 ofCachedKey:@"Delete-Key"];
  [(UIKBRenderFactory *)self addLayoutSegment:v12];
  v13 = [UIKBRenderFactoryLayoutSegment segmentWithTraits:controlKeyTraits];
  [v13 setKeyStates:4];
  [v13 addLayoutRect:0 asTriangle:{0.0, 0.75, 1.0, 0.25}];
  [(UIKBRenderFactory *)self addLayoutSegment:v13];
  shiftedControlKeyTraits = [(UIKBRenderFactoryiPhone *)self shiftedControlKeyTraits];
  v15 = [UIKBRenderFactoryLayoutSegment segmentWithTraits:shiftedControlKeyTraits];

  [v15 setKeyStates:100];
  [v15 addRelativeLayoutRectFromEdge:10 ofCachedKey:@"Shift-Key"];
  [(UIKBRenderFactory *)self addLayoutSegment:v15];
  shiftLockControlKeyTraits = [(UIKBRenderFactoryiPhone *)self shiftLockControlKeyTraits];
  v17 = [UIKBRenderFactoryLayoutSegment segmentWithTraits:shiftLockControlKeyTraits];

  v18 = 8;
  [v17 setKeyStates:8];
  [v17 addRelativeLayoutRectFromEdge:10 ofCachedKey:@"Shift-Key"];
  [(UIKBRenderFactory *)self addLayoutSegment:v17];
  shiftLockControlKeyTraits2 = [(UIKBRenderFactoryiPhone *)self shiftLockControlKeyTraits];
  v20 = [UIKBRenderFactoryLayoutSegment segmentWithTraits:shiftLockControlKeyTraits2];

  [v20 setKeyStates:8];
  [v20 addRelativeLayoutRectFromEdge:10 ofCachedKey:@"Caps-Lock-Key"];
  [(UIKBRenderFactory *)self addLayoutSegment:v20];
  activeControlKeyTraits = [(UIKBRenderFactoryiPhone *)self activeControlKeyTraits];
  v22 = [UIKBRenderFactoryLayoutSegment segmentWithTraits:activeControlKeyTraits];
  [v22 setKeyStates:4];
  [v22 addRelativeLayoutRectFromEdge:2 ofCachedKey:@"Delete-Key"];
  [v22 addRelativeLayoutRectFromEdge:2 ofCachedKey:@"Return-Key"];
  [v22 addRelativeLayoutRectFromEdge:8 ofCachedKey:@"Tab-Key"];
  [v22 addRelativeLayoutRectFromEdge:8 ofCachedKey:@"Caps-Lock-Key"];
  [v22 addRelativeLayoutRectFromEdge:8 ofCachedKey:@"Roman-to-Non-Roman-Switch-Key"];
  [v22 addRelativeLayoutRectFromEdge:8 ofCachedKey:@"Non-Roman-to-Roman-Switch-Key"];
  if (![(UIKBRenderFactoryiPad *)self iPadFudgeLayout])
  {
    if ([(UIKBRenderFactoryiPad *)self iPadSansHomeButtonLayout])
    {
      v18 = 8;
    }

    else
    {
      v18 = 2;
    }
  }

  [v22 addRelativeLayoutRectFromEdge:v18 ofCachedKey:@"Undo-Key"];
  [v22 addRelativeLayoutRectFromEdge:v18 ofCachedKey:@"Redo-Key"];
  [v22 addLayoutRect:0 asTriangle:{0.0, 0.8, v4, 0.2}];
  [v22 addLayoutRect:0 asTriangle:{v6, 0.8, v8, 0.2}];
  [(UIKBRenderFactory *)self addLayoutSegment:v22];
}

- (void)_customizeTraits:(id)traits forPopupForKey:(id)key withRenderingContext:(id)context keycapsFontName:(id)name fallbackFontName:(id)fontName
{
  v92[1] = *MEMORY[0x1E69E9840];
  traitsCopy = traits;
  keyCopy = key;
  contextCopy = context;
  v15 = [UIKBTextStyle styleWithFontName:name withFallbackFontName:fontName withFontSize:22.0];
  [traitsCopy setSymbolStyle:v15];

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

  [traitsCopy removeAllRenderEffects];
  if ([keyCopy displayType] == 13)
  {
    symbolStyle2 = [traitsCopy symbolStyle];
    [symbolStyle2 setUsesSymbolImage:1];

    [(UIKBRenderFactoryiPad *)self symbolImageControlKeyFontSize];
    v22 = v21;
    symbolStyle3 = [traitsCopy symbolStyle];
    [symbolStyle3 setFontSizeForSymbolImage:v22];

    symbolStyle4 = [traitsCopy symbolStyle];
    symbolStyle8 = symbolStyle4;
    v26 = 0.0;
    v27 = -1.0;
LABEL_16:
    [symbolStyle4 setTextOffset:{v26, v27}];
LABEL_17:

    goto LABEL_18;
  }

  if ([keyCopy displayType] == 5)
  {
    symbolStyle5 = [traitsCopy symbolStyle];
    [symbolStyle5 setUsesSymbolImage:1];

    [(UIKBRenderFactoryiPad *)self symbolImageControlKeyFontSize];
    v30 = v29;
    symbolStyle6 = [traitsCopy symbolStyle];
    [symbolStyle6 setFontSizeForSymbolImage:v30];

    [(UIKBRenderFactory *)self scale];
    if (v32 == 2.0)
    {
      v33 = *MEMORY[0x1E695EFF8];
    }

    else
    {
      v33 = 0.0;
    }

    if (v32 == 2.0)
    {
      v34 = *(MEMORY[0x1E695EFF8] + 8);
    }

    else
    {
      v34 = -1.0;
    }

    symbolStyle4 = [traitsCopy symbolStyle];
    symbolStyle8 = symbolStyle4;
    v26 = v33;
    v27 = v34;
    goto LABEL_16;
  }

  if ([keyCopy displayType] == 4)
  {
    symbolStyle7 = [traitsCopy symbolStyle];
    [symbolStyle7 setUsesSymbolImage:1];

    [(UIKBRenderFactoryiPad *)self symbolImageControlKeyFontSize];
    v52 = v51;
    symbolStyle8 = [traitsCopy symbolStyle];
    [symbolStyle8 setFontSizeForSymbolImage:v52];
    goto LABEL_17;
  }

LABEL_18:
  geometry = [traitsCopy geometry];
  [geometry setDetachedVariants:1];

  v36 = [UIKBRenderTraits traitsWithSymbolStyle:0];
  [traitsCopy setVariantTraits:v36];

  defaultKeyBackgroundColorName = [(UIKBRenderFactory *)self defaultKeyBackgroundColorName];
  v38 = [UIKBGradient gradientWithFlatColor:defaultKeyBackgroundColorName];
  variantTraits = [traitsCopy variantTraits];
  [variantTraits setBackgroundGradient:v38];

  renderConfig2 = [contextCopy renderConfig];
  LODWORD(defaultKeyBackgroundColorName) = [renderConfig2 lightKeyboard];

  if (defaultKeyBackgroundColorName)
  {
    variantTraits2 = [traitsCopy variantTraits];
    v42 = [UIKBEdgeEffect effectWithColor:@"UIKBColorBlack_Alpha12" edges:15 inset:-0.25 weight:0.5];
    [variantTraits2 addRenderEffect:v42];
  }

  renderConfig3 = [contextCopy renderConfig];
  if ([renderConfig3 lightKeyboard])
  {
    renderConfig4 = [(UIKBRenderFactory *)self renderConfig];
    colorAdaptiveBackground = [renderConfig4 colorAdaptiveBackground];

    if (colorAdaptiveBackground)
    {
      goto LABEL_24;
    }

    renderConfig3 = [UIKBShadowEffect effectWithColor:@"UIKBColorBlack_Alpha35" offset:0.0 insets:2.0 weight:1.0, 1.0, 0.0, 1.0, 4.5];
    [traitsCopy addRenderEffect:renderConfig3];
  }

LABEL_24:
  renderConfig5 = [(UIKBRenderFactory *)self renderConfig];
  if ([renderConfig5 lightKeyboard])
  {
    renderConfig6 = [(UIKBRenderFactory *)self renderConfig];
    [traitsCopy setBlurBlending:{objc_msgSend(renderConfig6, "animatedBackground")}];
  }

  else
  {
    [traitsCopy setBlurBlending:1];
  }

  if ([keyCopy displayType] == 13 || objc_msgSend(keyCopy, "displayType") == 4)
  {
    renderingContext = [(UIKBRenderFactory *)self renderingContext];
    inputSwitcherView = [renderingContext inputSwitcherView];
  }

  else
  {
    renderingContext = [(UIKBRenderFactory *)self renderingContext];
    inputSwitcherView = [renderingContext splitControlView];
  }

  v53 = inputSwitcherView;

  [v53 popupRect];
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  renderingContext2 = [(UIKBRenderFactory *)self renderingContext];
  layoutView = [renderingContext2 layoutView];
  [layoutView convertRect:v53 fromView:{v55, v57, v59, v61}];
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v71 = v70;

  [(UIKBRenderFactoryiPad *)self keyCornerRadius];
  v73 = v72;
  [(UIKBRenderFactoryiPad *)self keyCornerRadius];
  v75 = v74;
  v93.origin.x = v65;
  v93.origin.y = v67;
  v93.size.width = v69;
  v93.size.height = v71;
  v94 = CGRectInset(v93, v73, v75);
  x = v94.origin.x;
  y = v94.origin.y;
  width = v94.size.width;
  height = v94.size.height;
  geometry2 = [traitsCopy geometry];
  [geometry2 displayFrame];
  v97.origin.x = x;
  v97.origin.y = y;
  v97.size.width = width;
  v97.size.height = height;
  v96 = CGRectUnion(v95, v97);
  v81 = v96.origin.x;
  v82 = v96.origin.y;
  v83 = v96.size.width;
  v84 = v96.size.height;

  geometry3 = [traitsCopy geometry];
  [geometry3 setDisplayFrame:{v81, v82, v83, v84}];

  height = [UIKBRenderGeometry geometryWithFrame:x paddedFrame:y, width, height, x, y, width, height];
  v92[0] = height;
  v87 = [MEMORY[0x1E695DEC8] arrayWithObjects:v92 count:1];
  [traitsCopy setVariantGeometries:v87];

  geometry4 = [traitsCopy geometry];
  [geometry4 setPopupBias:40];

  [(UIKBRenderFactoryiPad *)self keyCornerRadius];
  v90 = v89;
  geometry5 = [traitsCopy geometry];
  [geometry5 setRoundRectRadius:v90];
}

@end