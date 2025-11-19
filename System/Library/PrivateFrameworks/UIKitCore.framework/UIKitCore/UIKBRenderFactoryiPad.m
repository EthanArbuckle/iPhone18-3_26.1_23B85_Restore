@interface UIKBRenderFactoryiPad
- (BOOL)_onLeftSide:(id)a3 onKeyplane:(id)a4;
- (BOOL)supportsInputTraits:(id)a3 forKeyplane:(id)a4;
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
- (CGRect)insetFrame:(CGRect)a3 forKey:(id)a4;
- (CGRect)shiftKeySymbolFrame;
- (CGSize)defaultVariantGeometrySize;
- (UIEdgeInsets)variantDisplayFrameInsets;
- (UIEdgeInsets)variantPaddedFrameInsets;
- (UIEdgeInsets)variantSymbolFrameInsets;
- (UIEdgeInsets)wideShadowPaddleInsets;
- (double)_row4ControlSegmentWidthRight;
- (double)cornerRadiusForKey:(id)a3;
- (double)keyCornerRadius;
- (double)predictiveKeyCornerRadius;
- (id)_traitsForKey:(id)a3 onKeyplane:(id)a4;
- (id)displayContentsForKey:(id)a3;
- (id)lowQualityLayeredBackgroundColorName;
- (id)multitapCompleteKeyImageName;
- (id)muttitapReverseKeyImageName;
- (id)variantGeometriesForGeometry:(id)a3 variantCount:(unint64_t)a4 rowLimit:(int64_t)a5 annotationIndex:(unint64_t)a6;
- (int64_t)rowLimitForKey:(id)a3;
- (void)_customizeGeometry:(id)a3 forKey:(id)a4 contents:(id)a5;
- (void)_customizePopupTraits:(id)a3 forKey:(id)a4 onKeyplane:(id)a5;
- (void)_customizeSymbolStyle:(id)a3 forKey:(id)a4 contents:(id)a5;
- (void)_customizeTraits:(id)a3 forPopupForKey:(id)a4 withRenderingContext:(id)a5 keycapsFontName:(id)a6 fallbackFontName:(id)a7;
- (void)setAllowsPaddles:(BOOL)a3;
- (void)setupLayoutSegments;
@end

@implementation UIKBRenderFactoryiPad

- (void)setAllowsPaddles:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = UIKBRenderFactoryiPad;
  [(UIKBRenderFactory *)&v3 setAllowsPaddles:1];
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
  v2 = [(UIKBRenderFactory *)self renderConfig];
  if ([v2 colorAdaptiveBackground])
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

- (BOOL)_onLeftSide:(id)a3 onKeyplane:(id)a4
{
  v5 = a4;
  v6 = a3;
  if ([v6 dynamicLayout])
  {
    v7 = [v6 dynamicDisplayCorner];

    v8 = v7 != 8;
  }

  else
  {
    [v6 frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v19.origin.x = v10;
    v19.origin.y = v12;
    v19.size.width = v14;
    v19.size.height = v16;
    MidX = CGRectGetMidX(v19);
    [v5 frame];
    v8 = MidX < CGRectGetMidX(v20);
  }

  return v8;
}

- (BOOL)supportsInputTraits:(id)a3 forKeyplane:(id)a4
{
  v5 = a4;
  v11 = 1;
  if ([a3 keyboardType] == 12 || (+[UIKeyboardPreferencesController sharedPreferencesController](UIKeyboardPreferencesController, "sharedPreferencesController"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "preferencesActions"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "BOOLForPreferenceKey:", @"GesturesEnabled"), v7, v6, v8))
  {
    v9 = [v5 firstCachedKeyWithName:@"International-Key"];
    v10 = [v9 displayRowHint];

    if (v10 == 5)
    {
      v11 = 0;
    }
  }

  return v11;
}

- (double)cornerRadiusForKey:(id)a3
{
  v4 = a3;
  v5 = [v4 displayType];
  if (v5 == 48)
  {
    v7 = [v4 name];
    v8 = 0.0;
    if ([v7 isEqualToString:@"SelectionBackground"])
    {
      [(UIKBRenderFactoryiPad *)self predictiveKeyCornerRadius];
      v8 = v9;
    }
  }

  else
  {
    if (v5 == 47)
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

- (CGRect)insetFrame:(CGRect)a3 forKey:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if ([a4 displayType] != 48)
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

- (id)displayContentsForKey:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = UIKBRenderFactoryiPad;
  v5 = [(UIKBRenderFactory *)&v29 displayContentsForKey:v4];
  if ([v4 interactionType] == 17)
  {
    [v5 setStringKeycapOverImage:1];
    v6 = [(UIKBRenderFactory *)self undoKeyImageName];
LABEL_20:
    v21 = v6;
    [v5 setDisplayStringImage:v6];

LABEL_21:
    [v5 setFlipImageHorizontally:{-[UIKBRenderFactory keyIsRightToLeftSensitive:](self, "keyIsRightToLeftSensitive:", v4)}];
    goto LABEL_22;
  }

  if ([v4 interactionType] == 12)
  {
    [v5 setStringKeycapOverImage:1];
    v6 = [(UIKBRenderFactory *)self redoKeyImageName];
    goto LABEL_20;
  }

  if ([v4 interactionType] == 37)
  {
    v7 = [v4 overrideDisplayString];
    if (v7)
    {
      [v5 setDisplayString:v7];
    }

    else
    {
      v20 = [v4 displayString];
      [v5 setDisplayString:v20];
    }

    v6 = [(UIKBRenderFactoryiPad *)self tabKeyImageName];
    goto LABEL_20;
  }

  if ([v4 interactionType] == 13)
  {
    v8 = [v4 overrideDisplayString];
    if (v8 && (v9 = v8, [v4 overrideDisplayString], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "displayString"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "isEqualToString:", v11), v11, v10, v9, (v12 & 1) == 0))
    {
      [v5 setDisplayStringImage:0];
    }

    else
    {
      v13 = [v5 displayString];
      if (v13)
      {
        v14 = v13;
        v15 = [v5 forceImageKeycap];

        if ((v15 & 1) == 0)
        {
          [v5 setStringKeycapOverImage:0];
          v16 = [(UIKBRenderFactory *)self returnKeyImageNameForKey:v4];
          [v5 setDisplayStringImage:v16];

          [v5 setFlipImageHorizontally:{-[UIKBRenderFactory keyIsRightToLeftSensitive:](self, "keyIsRightToLeftSensitive:", v4)}];
          v17 = [(UIKBRenderFactory *)self renderConfig];
          v18 = [v17 colorAdaptiveBackground];

          if (v18)
          {
            [v5 setForceImageKeycap:1];
          }
        }
      }
    }

    if (![v5 forceImageKeycap] || (objc_msgSend(v5, "displayStringImage"), v23 = objc_claimAutoreleasedReturnValue(), v23, !v23))
    {
      v24 = [v4 overrideDisplayString];
      if (v24)
      {
        [v5 setDisplayString:v24];
      }

      else
      {
        v25 = [v4 displayString];
        [v5 setDisplayString:v25];
      }
    }

    v26 = ([v5 forceImageKeycap] & 1) == 0 && -[UIKBRenderFactory preferStringKeycapOverImage](self, "preferStringKeycapOverImage");
    [v5 setStringKeycapOverImage:v26];
    goto LABEL_21;
  }

  if ([v4 interactionType] == 38)
  {
    v19 = [v4 overrideDisplayString];
    if (v19)
    {
      [v5 setDisplayString:v19];
    }

    else
    {
      v27 = [v4 displayString];
      [v5 setDisplayString:v27];
    }

    if ([v4 state] < 3)
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

- (void)_customizeGeometry:(id)a3 forKey:(id)a4 contents:(id)a5
{
  v40 = a3;
  v7 = a4;
  [(UIKBRenderFactoryiPad *)self cornerRadiusForKey:v7];
  [v40 setRoundRectRadius:?];
  [v40 paddedFrame];
  [(UIKBRenderFactoryiPad *)self insetFrame:v7 forKey:?];
  [v40 setPaddedFrame:?];
  [(UIKBRenderFactoryiPad *)self symbolFrameInset];
  v9 = v8;
  v10 = [v7 displayType];

  if (v10 > 17)
  {
    if (v10 > 22)
    {
      v11 = v40;
      if (v10 != 54)
      {
        if (v10 != 23)
        {
          goto LABEL_22;
        }

        [(UIKBRenderFactoryiPad *)self shiftKeySymbolFrame];
        v21 = v20;
        [(UIKBRenderFactory *)self RivenFactor:v22];
        v24 = v23;
        [(UIKBRenderFactory *)self RivenFactor:v21];
        v26 = v25;
        [v40 symbolFrame];
        [v40 setSymbolFrame:{round(v28 + (v27 - v24) * 0.5), round(v30 + (v29 - v26) * 0.5), v24, v26}];
        [v40 symbolFrame];
        v18 = -5.0;
        v19 = -5.0;
        goto LABEL_20;
      }
    }

    else
    {
      v11 = v40;
      if (v10 != 18)
      {
        if (v10 != 21)
        {
          goto LABEL_22;
        }

        [(UIKBRenderFactoryiPad *)self returnKeySymbolFrameInset];
        v13 = v12;
        [v40 symbolFrame];
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
      v11 = v40;
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
    [v40 setSymbolFrame:{v42.origin.x, v42.origin.y, width, height}];
    v11 = v40;
    goto LABEL_22;
  }

  if (v10 == 3)
  {
    v11 = v40;
    goto LABEL_19;
  }

  v11 = v40;
  if (v10 == 5)
  {
    [(UIKBRenderFactoryiPad *)self dismissKeySymbolFrame];
    width = v34;
    height = v35;
    [v40 symbolFrame];
    v42.origin.x = round(v37 + (v36 - width) * 0.5);
    v42.origin.y = round(v39 + (v38 - height) * 0.5);
    goto LABEL_21;
  }

  if (v10 == 14)
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
  v2 = [(UIKBRenderFactory *)self renderConfig];
  v3 = [v2 lightKeyboard];
  v4 = UIKBColorGray_Percent55;
  if (!v3)
  {
    v4 = UIKBColorBlack;
  }

  v5 = *v4;
  v6 = *v4;

  return v5;
}

- (void)_customizeSymbolStyle:(id)a3 forKey:(id)a4 contents:(id)a5
{
  v98 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 displayType];
  v11 = [v8 interactionType];
  v12 = [v8 displayTypeHint];
  v13 = (v10 & 0xFFFFFFF7) == 0 || v10 == 27;
  v15 = v13 || v10 == 7;
  if (v15 == 1 && v11 != 9 && v12 != 10)
  {
    [(UIKBRenderFactoryiPad *)self stringKeyFontSize];
    [v98 setFontSize:?];
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

    [v98 setTextOffset:{v31, v32}];
    v33 = [v8 displayString];
    v34 = [v33 length];

    if (v34 != 1 && v10 != 7)
    {
      goto LABEL_37;
    }

    v35 = [v8 displayString];
    [v35 characterAtIndex:0];

    if ((TICharIsAlphaNumeric() & 1) == 0 && (TICharIsDevanagariPUA() & 1) == 0)
    {
      [v98 fontSize];
      v37 = v36;
      [(UIKBRenderFactoryiPad *)self fontSizeAdjustmentForNonAlphanumericKeycaps];
      [v98 setFontSize:v37 + v38];
    }

    if (v10 == 7)
    {
      [v98 fontSize];
      v40 = v39;
      [(UIKBRenderFactoryiPad *)self dualStringKeyFontSizeAdjustment];
      [v98 setFontSize:v40 + v41];
    }

    else
    {
LABEL_37:
      if (v10 == 27)
      {
LABEL_39:
        [(UIKBRenderFactoryiPad *)self bottomRowDefaultFontSize];
        [v98 setFontSize:?];
        [v98 setTextOffset:{v28, v29}];
        v44 = [(UIKBRenderFactoryiPhone *)self lightTextFontName];
        [v98 setFontName:v44];

        v45 = [(UIKBRenderFactoryiPhone *)self lightTextFontFallbackName];
        [v98 setKeycapsFallback:v45];

LABEL_40:
        v46 = [v8 displayString];
        v47 = [v46 isEqualToString:@"匹配"];

        if (v47)
        {
          [(UIKBRenderFactoryiPad *)self bottomRowDefaultFontSize];
LABEL_48:
          [v98 setFontSize:?];
          goto LABEL_62;
        }

        v50 = [v8 name];
        v51 = [v50 isEqualToString:@"Zhuyin-Letter-FIRST_TONE"];

        if (v51)
        {
          [(UIKBRenderFactoryiPad *)self zhuyinFirstToneKeyFontSize];
          goto LABEL_48;
        }

        v52 = [v8 name];
        v53 = [v52 isEqualToString:@"Arabic-Thousands-Separator"];

        if (v53)
        {
          [(UIKBRenderFactoryiPad *)self tinyPunctuationGlyphFontSize];
          [v98 setFontSize:?];
          [(UIKBRenderFactoryiPad *)self tinyPunctuationGlyphOffset];
        }

        else
        {
          v60 = [v8 representedString];
          v61 = [v60 isEqualToString:@"‌"];

          if (!v61)
          {
            goto LABEL_62;
          }

          [(UIKBRenderFactoryiPad *)self ZWNJKeyOffset];
        }

        goto LABEL_61;
      }
    }

    v42 = [v8 name];
    v43 = [v42 _containsSubstring:@"Email-Dot-"];

    if (!v43)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  v18 = v12;
  if (v12 != 10)
  {
    v15 = 0;
  }

  if (v15 != 1)
  {
    if (v10 == 3)
    {
      v54 = [(UIKBRenderFactoryiPhone *)self lightTextFontName];
      [v98 setFontName:v54];

      v55 = [(UIKBRenderFactoryiPhone *)self lightTextFontFallbackName];
      [v98 setKeycapsFallback:v55];

      [v98 setUsesSymbolImage:1];
      [v98 setFontWeightForSymbolImage:*off_1E70ECD18];
      [(UIKBRenderFactoryiPad *)self symbolImageControlKeyFontSize];
      [v98 setFontSizeForSymbolImage:?];
      [(UIKBRenderFactoryiPad *)self deleteKeyFontSize];
      [(UIKBRenderFactory *)self RivenFactor:?];
      [v98 setFontSize:?];
      [(UIKBRenderFactoryiPad *)self deleteKeyOffset];
      goto LABEL_61;
    }

    if (v10 == 23)
    {
      v48 = [(UIKBRenderFactoryiPhone *)self lightTextFontName];
      [v98 setFontName:v48];

      v49 = [(UIKBRenderFactoryiPhone *)self lightTextFontFallbackName];
      [v98 setKeycapsFallback:v49];

      [(UIKBRenderFactoryiPad *)self shiftKeyFontSize];
      [(UIKBRenderFactory *)self RivenFactor:?];
      [v98 setFontSize:?];
      [v98 setUsesSymbolImage:1];
      [v98 setFontWeightForSymbolImage:*off_1E70ECD18];
      [(UIKBRenderFactoryiPad *)self symbolImageControlKeyFontSize];
      [v98 setFontSizeForSymbolImage:?];
      if ([v8 displayTypeHint])
      {
        goto LABEL_62;
      }

      [(UIKBRenderFactoryiPad *)self shiftKeyOffset];
      goto LABEL_61;
    }

    if (v11 == 9)
    {
      [(UIKBRenderFactoryiPad *)self internationalKeyOffset];
      [v98 setTextOffset:?];
      if ([(UIKBRenderFactoryiPad *)self iPadFudgeLayout]|| [(UIKBRenderFactoryiPad *)self iPadSansHomeButtonLayout])
      {
        v56 = [(UIKBRenderFactoryiPhone *)self lightTextFontName];
        [v98 setFontName:v56];

        v57 = [(UIKBRenderFactoryiPhone *)self lightTextFontFallbackName];
        [v98 setKeycapsFallback:v57];

        [(UIKBRenderFactoryiPad *)self spaceKeyFontSize];
        [(UIKBRenderFactory *)self RivenFactor:?];
        [v98 setFontSize:?];
      }

      else
      {
        v64 = [v8 displayType];
        v58 = v98;
        if (v64)
        {
          goto LABEL_57;
        }

        v65 = [(UIKBRenderFactoryiPhone *)self lightTextFontName];
        [v98 setFontName:v65];

        v66 = [(UIKBRenderFactoryiPhone *)self lightTextFontFallbackName];
        [v98 setKeycapsFallback:v66];

        [(UIKBRenderFactoryiPad *)self moreKeyFontSize];
        [(UIKBRenderFactory *)self RivenFactor:?];
        [v98 setFontSize:?];
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

        [v98 setTextOffset:{v69, v70, *(MEMORY[0x1E695EFF8] + 8)}];
      }

      v58 = v98;
LABEL_57:
      v59 = v58;
LABEL_58:
      [v59 setUsesSymbolImage:1];
      [v98 setFontWeightForSymbolImage:*off_1E70ECD18];
LABEL_114:
      [(UIKBRenderFactoryiPad *)self symbolImageControlKeyFontSize];
      [v98 setFontSizeForSymbolImage:?];
      goto LABEL_62;
    }

    if (v10 <= 10)
    {
      if (v10 != 2)
      {
        if (v10 == 4)
        {
          [(UIKBRenderFactoryiPad *)self dictationKeyOffset];
          [v98 setTextOffset:?];
          v59 = v98;
          goto LABEL_58;
        }

        if (v10 != 5)
        {
          goto LABEL_110;
        }

LABEL_113:
        [v98 setUsesSymbolImage:1];
        goto LABEL_114;
      }
    }

    else
    {
      if (v10 > 0x33)
      {
LABEL_105:
        if (v10 == 11)
        {
          goto LABEL_68;
        }

        if (v10 == 14)
        {
          v86 = [(UIKBRenderFactoryiPhone *)self lightTextFontName];
          [v98 setFontName:v86];

          v87 = [(UIKBRenderFactoryiPhone *)self lightTextFontFallbackName];
          [v98 setKeycapsFallback:v87];

          v88 = [(UIKBRenderFactory *)self renderingContext];
          v89 = [v88 keyboardType];

          [v98 setIgnoreTextMarginOnKey:v89 == 126];
          if (v89 == 126)
          {
            [(UIKBRenderFactoryiPad *)self messagesTypeKeyplanSwitchKeyFontSize];
          }

          else
          {
            [(UIKBRenderFactoryiPad *)self spaceKeyFontSize];
          }

          [(UIKBRenderFactory *)self RivenFactor:?];
          [v98 setFontSize:?];
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
        v90 = [v8 name];
        v91 = [v90 _containsSubstring:@"Email-Dot-"];

        if (v91)
        {
          [(UIKBRenderFactoryiPad *)self emailDotKeyFontSize];
        }

        else
        {
          v92 = [v8 name];
          v93 = [v92 hasSuffix:@"Chinese-Facemark"];

          if (v93)
          {
            [(UIKBRenderFactoryiPad *)self facemarkKeyFontSize];
          }

          else if ([v8 displayRowHint] != 4 || v18 == 10)
          {
            [(UIKBRenderFactoryiPad *)self fallbackFontSize];
          }

          else
          {
            v96 = [(UIKBRenderFactoryiPhone *)self lightTextFontName];
            [v98 setFontName:v96];

            v97 = [(UIKBRenderFactoryiPhone *)self lightTextFontFallbackName];
            [v98 setKeycapsFallback:v97];
          }
        }

        goto LABEL_48;
      }

      if (((1 << v10) & 0x8000006200000) != 0)
      {
LABEL_68:
        v62 = [(UIKBRenderFactory *)self renderConfig];
        if ([v62 colorAdaptiveBackground])
        {
          v63 = [v8 displayType];

          if (v63 == 21)
          {
            [v98 setUsesSymbolImage:1];
            [v98 setFontGrade:2];
          }
        }

        else
        {
        }

        v71 = 1;
        v72 = v98;
        if (v10 != 26 && v10 != 51)
        {
          v62 = [v9 displayStringImage];
          if (([v62 containsString:@"grinning"] & 1) == 0)
          {
            v73 = [v9 displayStringImage];
            v71 = [v73 containsString:@"return"];
          }

          v72 = v98;
        }

        if (v10 != 26 && v10 != 51)
        {

          v72 = v98;
        }

        if (v71)
        {
          [v72 setUsesSymbolImage:1];
          [(UIKBRenderFactoryiPad *)self symbolImageControlKeyFontSize];
          [v98 setFontSizeForSymbolImage:?];
          [v98 setFontWeightForSymbolImage:*off_1E70ECD18];
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

        [v98 setTextOffset:v74];
        v76 = [(UIKBRenderFactoryiPhone *)self lightTextFontName];
        [v98 setFontName:v76];

        v77 = [(UIKBRenderFactoryiPhone *)self lightTextFontFallbackName];
        [v98 setKeycapsFallback:v77];

        [(UIKBRenderFactoryiPad *)self spaceKeyFontSize];
        goto LABEL_48;
      }

      if (v10 != 18)
      {
        if (v10 == 24)
        {
          [(UIKBRenderFactoryiPad *)self smallKanaKeyFontSize];
          goto LABEL_48;
        }

        goto LABEL_105;
      }
    }

    v78 = [(UIKBRenderFactoryiPhone *)self lightTextFontName];
    [v98 setFontName:v78];

    v79 = [(UIKBRenderFactoryiPhone *)self lightTextFontFallbackName];
    [v98 setKeycapsFallback:v79];

    [(UIKBRenderFactoryiPad *)self moreKeyFontSize];
    [(UIKBRenderFactory *)self RivenFactor:?];
    [v98 setFontSize:?];
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

    [v98 setTextOffset:{v83, v80, *MEMORY[0x1E695EFF8]}];
    if (v10 == 18)
    {
      [(UIKBRenderFactory *)self rivenSizeFactor];
      if (v84 <= 1.0)
      {
        [v98 setIgnoreTextMarginOnKey:1];
      }

      else
      {
        v85 = [v9 displayString];
        [v98 setIgnoreTextMarginOnKey:{objc_msgSend(v85, "_containsCJScripts") ^ 1}];
      }
    }

    goto LABEL_113;
  }

  [(UIKBRenderFactoryiPad *)self stringKeyFontSize];
  [v98 setFontSize:?];
  if (v10 == 7)
  {
    [v98 fontSize];
    v20 = v19;
    [(UIKBRenderFactoryiPad *)self dualStringKeyFontSizeAdjustment];
    [v98 setFontSize:v20 + v21];
  }

  v22 = [v8 representedString];
  v23 = [v22 length];

  if (v23)
  {
    v24 = [v8 representedString];
    [v24 characterAtIndex:0];

    if (uscript_hasScript())
    {
      v25 = 0.0;
      v26 = -2.0;
LABEL_61:
      [v98 setTextOffset:{v25, v26}];
    }
  }

LABEL_62:
}

- (void)_customizePopupTraits:(id)a3 forKey:(id)a4 onKeyplane:(id)a5
{
  v68 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [v8 state];
  v10 = [v7 geometry];
  v11 = v10;
  if (v9 == 16)
  {
    [v10 setDetachedVariants:1];

    v12 = [(UIKBRenderFactory *)self renderConfig];
    if ([v12 lightKeyboard])
    {
      v13 = [(UIKBRenderFactory *)self renderConfig];
      if ([v13 animatedBackground])
      {
        [v7 setBlurBlending:1];
      }

      else
      {
        v14 = [(UIKBRenderFactory *)self renderConfig];
        [v7 setBlurBlending:{objc_msgSend(v14, "colorAdaptiveBackground")}];
      }
    }

    else
    {
      [v7 setBlurBlending:1];
    }
  }

  else
  {
    [v10 setPopupBias:0];

    [v7 setBlurBlending:1];
    [v7 setRenderFlagsForAboveEffects:2];
  }

  [(UIKBRenderFactory *)self suppressLayoutSegments];
  if (![(UIKBRenderFactory *)self lightweightFactory])
  {
    v15 = [(UIKBRenderFactory *)self defaultKeyBackgroundColorName];
    v16 = [UIKBGradient gradientWithFlatColor:v15];
    [v7 setBackgroundGradient:v16];

    v17 = [(UIKBRenderFactory *)self renderConfig];
    LOBYTE(v15) = [v17 colorAdaptiveBackground];

    if ((v15 & 1) == 0)
    {
      v18 = [(UIKBRenderFactory *)self renderConfig];
      v19 = [v18 lightKeyboard];

      if (v19 && ([v8 state] & 0x10) != 0)
      {
        v20 = [UIKBEdgeEffect effectWithColor:@"UIKBColorBlack_Alpha12" edges:15 inset:-0.25 weight:0.5];
        [v7 addRenderEffect:v20];
      }

      [(UIKBRenderFactoryiPad *)self wideShadowPaddleInsets];
      v25 = [UIKBShadowEffect effectWithColor:@"UIKBColorBlack_Alpha35" offset:0.0 insets:2.0 weight:v21, v22, v23, v24, 4.5];
      [v7 addRenderEffect:v25];
    }

    if (([v8 state] & 0x10) != 0)
    {
      v26 = [(UIKBRenderFactoryiPad *)self lightKeycapsFontName];
      v27 = [(UIKBRenderFactoryiPhone *)self lightKeycapsFontFallbackName];
      v28 = [UIKBTextStyle styleWithFontName:v26 withFallbackFontName:v27 withFontSize:22.0];

      if ([v8 displayType] == 27 || objc_msgSend(v8, "variantType") == 4)
      {
        v29 = [(UIKBRenderFactoryiPhone *)self lightTextFontName];
        [v28 setFontName:v29];

        v30 = [(UIKBRenderFactoryiPhone *)self lightTextFontFallbackName];
        [v28 setFontName:v30];

        [v28 setFontSize:16.0];
      }

      [v28 setTextOffset:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
      v31 = [v7 symbolStyle];
      v32 = [v31 textColor];
      [v28 setTextColor:v32];

      v33 = [UIKBRenderTraits traitsWithSymbolStyle:v28];
      [v7 setVariantTraits:v33];

      v34 = [UIKBRenderTraits traitsWithSymbolStyle:0];
      v35 = [(UIKBRenderFactory *)self renderConfig];
      v36 = [v35 lightKeyboard];
      v37 = UIKBColorKeyBlueKeyBackground;
      if (!v36)
      {
        v37 = UIKBColorBlack_Alpha30;
      }

      v38 = *v37;

      v39 = [UIKBGradient gradientWithFlatColor:v38];
      [v34 setLayeredForegroundGradient:v39];

      v40 = [UIKBTextStyle styleWithTextColor:@"UIKBColorWhite"];
      [v34 setSymbolStyle:v40];

      [v7 setHighlightedVariantTraits:v34];
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v41 = [v8 subtrees];
      v42 = [v41 countByEnumeratingWithState:&v61 objects:v67 count:16];
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
              objc_enumerationMutation(v41);
            }

            v46 = [*(*(&v61 + 1) + 8 * i) secondaryDisplayStrings];
            v47 = [v46 count];

            if (v47)
            {

              v41 = [v28 copy];
              [(UIKBRenderFactoryiPhone *)self variantAnnotationTextFontSize];
              [v41 setFontSize:?];
              v48 = [(UIKBRenderFactory *)self renderConfig];
              if ([v48 lightKeyboard])
              {
                v49 = @"UIKBColorBlack_Alpha40";
              }

              else
              {
                v49 = @"UIKBColorWhite";
              }

              [v41 setTextColor:v49];

              [v41 setAnchorCorner:2];
              [(UIKBRenderFactoryiPad *)self variantAnnotationTextOffset];
              [v41 setTextOffset:?];
              v66 = v41;
              v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v66 count:1];
              v51 = [v7 variantTraits];
              [v51 setSecondarySymbolStyles:v50];

              v52 = [UIKBTextStyle styleWithTextColor:@"UIKBColorWhite"];
              v65 = v52;
              v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v65 count:1];
              v34 = v60;
              [v60 setSecondarySymbolStyles:v53];

              goto LABEL_35;
            }
          }

          v43 = [v41 countByEnumeratingWithState:&v61 objects:v67 count:16];
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

    v54 = [v7 geometry];
    if ([v8 displayTypeHint] == 10 && objc_msgSend(v8, "state") == 4)
    {
      [v54 displayFrame];
      v56 = v55;
      v58 = v57;
      [v54 displayFrame];
      v70 = CGRectInset(v69, v56 * -0.5, v58 * -0.5);
      [v54 setDisplayFrame:{v70.origin.x, v70.origin.y, v70.size.width, v70.size.height}];
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

- (int64_t)rowLimitForKey:(id)a3
{
  v3 = a3;
  v4 = [v3 name];
  v5 = [v4 isEqualToString:@"EmojiPopupKey"];

  if (v5)
  {
    v6 = [v3 subtrees];
    v7 = [v6 count];
  }

  else
  {
    v7 = 5;
  }

  return v7;
}

- (id)variantGeometriesForGeometry:(id)a3 variantCount:(unint64_t)a4 rowLimit:(int64_t)a5 annotationIndex:(unint64_t)a6
{
  v9 = a3;
  [v9 paddedFrame];
  v11 = v10;
  [(UIKBRenderFactoryiPad *)self defaultVariantSizeThreshold];
  v12 = v9;
  if (v11 > v13)
  {
    v12 = [v9 copy];

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

  v39 = [v12 iPadVariantGeometries:a4 rowLimit:a5];

  return v39;
}

- (id)_traitsForKey:(id)a3 onKeyplane:(id)a4
{
  v6 = a3;
  v7 = a4;
  v71.receiver = self;
  v71.super_class = UIKBRenderFactoryiPad;
  v8 = [(UIKBRenderFactoryiPhone *)&v71 _traitsForKey:v6 onKeyplane:v7];
  v9 = [v6 displayType];
  if ([(UIKBRenderFactoryiPhone *)self _popupMenuStyleForKey:v6])
  {
    v10 = [(UIKBRenderFactory *)self renderingContext];
    v11 = [(UIKBRenderFactoryiPad *)self lightKeycapsFontName];
    v12 = [(UIKBRenderFactoryiPhone *)self lightKeycapsFontFallbackName];
    [(UIKBRenderFactoryiPad *)self _customizeTraits:v8 forPopupForKey:v6 withRenderingContext:v10 keycapsFontName:v11 fallbackFontName:v12];

LABEL_3:
    goto LABEL_39;
  }

  [(UIKBRenderFactoryiPad *)self keyCornerRadius];
  v14 = v13;
  v15 = [v8 geometry];
  [v15 setRoundRectRadius:v14];

  if ([(UIKBRenderFactoryiPhone *)self _shouldConfigureSecondarySymbolStyleForSpaceKey:v6])
  {
    v16 = [v8 secondarySymbolStyles];
    v17 = [v16 firstObject];

    [v17 setFontSize:15.0];
    [v17 setTextOffset:{8.0, 8.0}];
  }

  if (([v6 interactionType] == 1 || objc_msgSend(v6, "interactionType") == 2) && objc_msgSend(v6, "state") == 4)
  {
    v18 = [(UIKBRenderFactoryiPhone *)self controlKeyTraits];
    [v8 overlayWithTraits:v18];
  }

  v19 = [(UIKBRenderFactory *)self renderConfig];
  if ([v19 colorAdaptiveBackground])
  {
    v20 = [v6 state];

    if ((v20 & 4) == 0)
    {
      goto LABEL_19;
    }

    v21 = [(UIKBRenderFactory *)self renderConfig];
    if ([v21 lightKeyboard])
    {
      v22 = 13;
    }

    else
    {
      v22 = 12;
    }

    [v8 setBlendForm:v22];

    v19 = [(UIKBRenderFactory *)self renderConfig];
    v23 = [v19 lightKeyboard];
    v24 = UIKBColorBlack_Alpha15;
    if (!v23)
    {
      v24 = UIKBColorWhite_Alpha40;
    }

    v25 = [UIKBGradient gradientWithFlatColor:*v24];
    [v8 setBackgroundGradient:v25];
  }

LABEL_19:
  if (v9 <= 7)
  {
    if (v9)
    {
      if (v9 != 7)
      {
        goto LABEL_39;
      }

      [(UIKBRenderFactoryiPad *)self dualStringKeyOffset];
      v27 = v26;
      v29 = v28;
      v30 = [v8 symbolStyle];
      [v30 textOffset];
      v32 = v31;
      v34 = v33;

      v35 = [v8 symbolStyle];
      [v35 setTextOffset:{v27 + v32, v29 + v34}];

      v36 = [v8 secondarySymbolStyles];
      v37 = [v36 firstObject];

      [v37 textOffset];
      [v37 setTextOffset:{v27 + v38, v29 + v39}];
    }
  }

  else if (v9 != 8)
  {
    if (v9 == 21)
    {
      v55 = [v8 symbolStyle];
      v56 = [v55 usesSymbolImage];

      if (v56)
      {
        [(UIKBRenderFactoryiPad *)self symbolImageControlKeyFontSize];
        v58 = v57;
        v59 = [v8 symbolStyle];
        [v59 setFontSizeForSymbolImage:v58];

        v60 = *off_1E70ECD18;
        v61 = [v8 symbolStyle];
        [v61 setFontWeightForSymbolImage:v60];

        [(UIKBRenderFactoryiPad *)self symbolImageControlKeyOffset];
        v63 = v62;
        v65 = v64;
        v66 = [v8 symbolStyle];
        [v66 setTextOffset:{v63, v65}];

        v67 = [v7 cachedKeysByKeyName:@"Return-Key"];
        v68 = [v67 count];

        if (v68 >= 2)
        {
          v69 = [v8 symbolStyle];
          [v69 setAnchorCorner:8];

          v10 = [v8 symbolStyle];
          [v10 setTextOffset:{3.0, 10.0}];
          goto LABEL_3;
        }
      }

      goto LABEL_39;
    }

    if (v9 != 25)
    {
      goto LABEL_39;
    }
  }

  v40 = [v7 firstCachedKeyWithName:@"International-Key"];
  v41 = [v40 displayRowHint];

  if ([v6 displayRowHint] == v41 && objc_msgSend(v6, "interactionType") != 9)
  {
    [(UIKBRenderFactory *)self suppressLayoutSegments];
  }

  v42 = [v6 displayString];
  v43 = [v42 isEqualToString:@"kr"];

  if (v43)
  {
    v44 = [(UIKBRenderFactoryiPhone *)self lightTextFontName];
    v45 = [v8 symbolStyle];
    [v45 setFontName:v44];

    v46 = [(UIKBRenderFactoryiPhone *)self lightTextFontFallbackName];
    v47 = [v8 symbolStyle];
    [v47 setKeycapsFallback:v46];
  }

  else
  {
    v48 = [v6 secondaryDisplayStrings];
    v49 = [v48 firstObject];
    v50 = [v49 isEqualToString:@"kr"];

    if (!v50)
    {
      goto LABEL_39;
    }

    v51 = [(UIKBRenderFactoryiPhone *)self lightTextFontName];
    v52 = [v8 secondarySymbolStyles];
    v53 = [v52 firstObject];
    [v53 setFontName:v51];

    v46 = [(UIKBRenderFactoryiPhone *)self lightTextFontFallbackName];
    v47 = [v8 secondarySymbolStyles];
    v54 = [v47 firstObject];
    [v54 setKeycapsFallback:v46];
  }

LABEL_39:

  return v8;
}

- (double)_row4ControlSegmentWidthRight
{
  v3 = [(UIKBRenderFactory *)self renderingContext];
  if ([v3 keyboardType] == 126)
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
  v23 = [(UIKBRenderFactoryiPhone *)self controlKeyTraits];
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
  v11 = [(UIKBRenderFactoryiPhone *)self shiftDeleteGlyphTraits];
  v12 = [UIKBRenderFactoryLayoutSegment segmentWithTraits:v11];

  [v12 setKeyStates:3];
  [v12 addRelativeLayoutRectFromEdge:10 ofCachedKey:@"Shift-Key"];
  [v12 addRelativeLayoutRectFromEdge:2 ofCachedKey:@"Delete-Key"];
  [(UIKBRenderFactory *)self addLayoutSegment:v12];
  v13 = [UIKBRenderFactoryLayoutSegment segmentWithTraits:v23];
  [v13 setKeyStates:4];
  [v13 addLayoutRect:0 asTriangle:{0.0, 0.75, 1.0, 0.25}];
  [(UIKBRenderFactory *)self addLayoutSegment:v13];
  v14 = [(UIKBRenderFactoryiPhone *)self shiftedControlKeyTraits];
  v15 = [UIKBRenderFactoryLayoutSegment segmentWithTraits:v14];

  [v15 setKeyStates:100];
  [v15 addRelativeLayoutRectFromEdge:10 ofCachedKey:@"Shift-Key"];
  [(UIKBRenderFactory *)self addLayoutSegment:v15];
  v16 = [(UIKBRenderFactoryiPhone *)self shiftLockControlKeyTraits];
  v17 = [UIKBRenderFactoryLayoutSegment segmentWithTraits:v16];

  v18 = 8;
  [v17 setKeyStates:8];
  [v17 addRelativeLayoutRectFromEdge:10 ofCachedKey:@"Shift-Key"];
  [(UIKBRenderFactory *)self addLayoutSegment:v17];
  v19 = [(UIKBRenderFactoryiPhone *)self shiftLockControlKeyTraits];
  v20 = [UIKBRenderFactoryLayoutSegment segmentWithTraits:v19];

  [v20 setKeyStates:8];
  [v20 addRelativeLayoutRectFromEdge:10 ofCachedKey:@"Caps-Lock-Key"];
  [(UIKBRenderFactory *)self addLayoutSegment:v20];
  v21 = [(UIKBRenderFactoryiPhone *)self activeControlKeyTraits];
  v22 = [UIKBRenderFactoryLayoutSegment segmentWithTraits:v21];
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

- (void)_customizeTraits:(id)a3 forPopupForKey:(id)a4 withRenderingContext:(id)a5 keycapsFontName:(id)a6 fallbackFontName:(id)a7
{
  v92[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = [UIKBTextStyle styleWithFontName:a6 withFallbackFontName:a7 withFontSize:22.0];
  [v12 setSymbolStyle:v15];

  v16 = [v14 renderConfig];
  v17 = [v16 lightKeyboard];
  if (v17)
  {
    v18 = [(UIKBRenderFactory *)self blackKeycapColor];
  }

  else
  {
    v18 = @"UIKBColorWhite";
  }

  v19 = [v12 symbolStyle];
  [v19 setTextColor:v18];

  if (v17)
  {
  }

  [v12 removeAllRenderEffects];
  if ([v13 displayType] == 13)
  {
    v20 = [v12 symbolStyle];
    [v20 setUsesSymbolImage:1];

    [(UIKBRenderFactoryiPad *)self symbolImageControlKeyFontSize];
    v22 = v21;
    v23 = [v12 symbolStyle];
    [v23 setFontSizeForSymbolImage:v22];

    v24 = [v12 symbolStyle];
    v25 = v24;
    v26 = 0.0;
    v27 = -1.0;
LABEL_16:
    [v24 setTextOffset:{v26, v27}];
LABEL_17:

    goto LABEL_18;
  }

  if ([v13 displayType] == 5)
  {
    v28 = [v12 symbolStyle];
    [v28 setUsesSymbolImage:1];

    [(UIKBRenderFactoryiPad *)self symbolImageControlKeyFontSize];
    v30 = v29;
    v31 = [v12 symbolStyle];
    [v31 setFontSizeForSymbolImage:v30];

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

    v24 = [v12 symbolStyle];
    v25 = v24;
    v26 = v33;
    v27 = v34;
    goto LABEL_16;
  }

  if ([v13 displayType] == 4)
  {
    v50 = [v12 symbolStyle];
    [v50 setUsesSymbolImage:1];

    [(UIKBRenderFactoryiPad *)self symbolImageControlKeyFontSize];
    v52 = v51;
    v25 = [v12 symbolStyle];
    [v25 setFontSizeForSymbolImage:v52];
    goto LABEL_17;
  }

LABEL_18:
  v35 = [v12 geometry];
  [v35 setDetachedVariants:1];

  v36 = [UIKBRenderTraits traitsWithSymbolStyle:0];
  [v12 setVariantTraits:v36];

  v37 = [(UIKBRenderFactory *)self defaultKeyBackgroundColorName];
  v38 = [UIKBGradient gradientWithFlatColor:v37];
  v39 = [v12 variantTraits];
  [v39 setBackgroundGradient:v38];

  v40 = [v14 renderConfig];
  LODWORD(v37) = [v40 lightKeyboard];

  if (v37)
  {
    v41 = [v12 variantTraits];
    v42 = [UIKBEdgeEffect effectWithColor:@"UIKBColorBlack_Alpha12" edges:15 inset:-0.25 weight:0.5];
    [v41 addRenderEffect:v42];
  }

  v43 = [v14 renderConfig];
  if ([v43 lightKeyboard])
  {
    v44 = [(UIKBRenderFactory *)self renderConfig];
    v45 = [v44 colorAdaptiveBackground];

    if (v45)
    {
      goto LABEL_24;
    }

    v43 = [UIKBShadowEffect effectWithColor:@"UIKBColorBlack_Alpha35" offset:0.0 insets:2.0 weight:1.0, 1.0, 0.0, 1.0, 4.5];
    [v12 addRenderEffect:v43];
  }

LABEL_24:
  v46 = [(UIKBRenderFactory *)self renderConfig];
  if ([v46 lightKeyboard])
  {
    v47 = [(UIKBRenderFactory *)self renderConfig];
    [v12 setBlurBlending:{objc_msgSend(v47, "animatedBackground")}];
  }

  else
  {
    [v12 setBlurBlending:1];
  }

  if ([v13 displayType] == 13 || objc_msgSend(v13, "displayType") == 4)
  {
    v48 = [(UIKBRenderFactory *)self renderingContext];
    v49 = [v48 inputSwitcherView];
  }

  else
  {
    v48 = [(UIKBRenderFactory *)self renderingContext];
    v49 = [v48 splitControlView];
  }

  v53 = v49;

  [v53 popupRect];
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v62 = [(UIKBRenderFactory *)self renderingContext];
  v63 = [v62 layoutView];
  [v63 convertRect:v53 fromView:{v55, v57, v59, v61}];
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
  v80 = [v12 geometry];
  [v80 displayFrame];
  v97.origin.x = x;
  v97.origin.y = y;
  v97.size.width = width;
  v97.size.height = height;
  v96 = CGRectUnion(v95, v97);
  v81 = v96.origin.x;
  v82 = v96.origin.y;
  v83 = v96.size.width;
  v84 = v96.size.height;

  v85 = [v12 geometry];
  [v85 setDisplayFrame:{v81, v82, v83, v84}];

  v86 = [UIKBRenderGeometry geometryWithFrame:x paddedFrame:y, width, height, x, y, width, height];
  v92[0] = v86;
  v87 = [MEMORY[0x1E695DEC8] arrayWithObjects:v92 count:1];
  [v12 setVariantGeometries:v87];

  v88 = [v12 geometry];
  [v88 setPopupBias:40];

  [(UIKBRenderFactoryiPad *)self keyCornerRadius];
  v90 = v89;
  v91 = [v12 geometry];
  [v91 setRoundRectRadius:v90];
}

@end