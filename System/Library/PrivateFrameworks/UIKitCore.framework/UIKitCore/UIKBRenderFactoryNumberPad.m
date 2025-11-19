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
- (id)_traitsForKey:(id)a3 onKeyplane:(id)a4;
- (id)lightKeycapsFontFallbackName;
- (id)lightKeycapsFontName;
- (id)lightPadKeycapsFontFallbackName;
- (id)lightPadKeycapsFontName;
- (id)lightTextFontName;
- (id)thinKeycapsFontFallbackName;
- (id)thinKeycapsFontName;
- (id)thinTextFontName;
- (void)_customizeSymbolStyle:(id)a3 secondaryStyle:(id)a4 forKey:(id)a5 contents:(id)a6;
- (void)setupLayoutSegments;
@end

@implementation UIKBRenderFactoryNumberPad

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

- (double)numberFontSize
{
  v2 = [(UIKBRenderFactory *)self renderConfig];
  if ([v2 usesCompactKeycapsFont])
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
  v2 = [(UIKBRenderFactory *)self renderConfig];
  [v2 usesCompactKeycapsFont];

  return 10.0;
}

- (double)symbolImageControlKeyFontSize
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

- (CGPoint)deleteGlyphOffset
{
  v2 = [(UIKBRenderFactory *)self renderConfig];
  v3 = [v2 usesCompactKeycapsFont];
  if (v3)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = 1.0;
  }

  if (v3)
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
  v2 = [(UIKBRenderFactory *)self renderConfig];
  [v2 usesCompactKeycapsFont];

  v3 = 0.0;
  v4 = 0.0;
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)leftColumnNumberOffset
{
  v2 = [(UIKBRenderFactory *)self renderConfig];
  if ([v2 usesCompactKeycapsFont])
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
  v2 = [(UIKBRenderFactory *)self renderConfig];
  if ([v2 usesCompactKeycapsFont])
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
  v2 = [(UIKBRenderFactory *)self renderConfig];
  [v2 usesCompactKeycapsFont];

  v3 = 0.0;
  v4 = -3.5;
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)centerColumnLetterOffset
{
  v2 = [(UIKBRenderFactory *)self renderConfig];
  [v2 usesCompactKeycapsFont];

  v3 = 0.0;
  v4 = 15.0;
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)rightColumnNumberOffset
{
  v2 = [(UIKBRenderFactory *)self renderConfig];
  [v2 usesCompactKeycapsFont];

  v3 = 0.0;
  v4 = -3.5;
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)rightColumnLetterOffset
{
  v2 = [(UIKBRenderFactory *)self renderConfig];
  [v2 usesCompactKeycapsFont];

  v3 = 0.0;
  v4 = 15.0;
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)loneZeroOffset
{
  v2 = [(UIKBRenderFactory *)self renderConfig];
  if ([v2 usesCompactKeycapsFont])
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
  v2 = [(UIKBRenderFactory *)self renderConfig];
  [v2 usesCompactKeycapsFont];

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

- (void)_customizeSymbolStyle:(id)a3 secondaryStyle:(id)a4 forKey:(id)a5 contents:(id)a6
{
  v77 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([v11 interactionType] == 4)
  {
    v13 = [(UIKBRenderFactory *)self renderConfig];
    v14 = [v13 usesCompactKeycapsFont];
    v15 = 15.0;
    if (v14)
    {
      v15 = 23.0;
    }

    [v77 setFontSize:v15];

    [(UIKBRenderFactoryNumberPad *)self deleteGlyphOffset];
    [v77 setTextOffset:?];
    [v77 setUsesSymbolImage:1];
  }

  if ([v11 interactionType] == 5)
  {
    v16 = [(UIKBRenderFactory *)self renderConfig];
    v17 = [v16 usesCompactKeycapsFont];
    v18 = 15.0;
    if (v17)
    {
      v18 = 23.0;
    }

    [v77 setFontSize:v18];

    [(UIKBRenderFactoryNumberPad *)self dictationGlyphOffset];
    [v77 setTextOffset:?];
LABEL_9:
    v19 = v77;
    v20 = 1;
LABEL_17:
    [v19 setUsesSymbolImage:v20];
    goto LABEL_18;
  }

  if ([v11 interactionType] == 11 || objc_msgSend(v11, "interactionType") == 9)
  {
    v21 = [(UIKBRenderFactory *)self renderConfig];
    v22 = [v21 usesCompactKeycapsFont];
    v23 = 22.0;
    if (v22)
    {
      v23 = 23.0;
    }

    [v77 setFontSize:v23];

    v24 = [(UIKBRenderFactory *)self renderConfig];
    v25 = [v24 usesCompactKeycapsFont];
    v26 = 0.0;
    if (!v25)
    {
      v26 = 2.0;
    }

    [v77 setTextOffset:{0.0, v26}];

    v20 = [v11 interactionType] == 9;
    v19 = v77;
    goto LABEL_17;
  }

  if ([v11 interactionType] == 14)
  {
    v40 = [v12 displayString];
    v41 = [v40 isEqualToString:@"+*#"];

    if (v41)
    {
      v42 = [(UIKBRenderFactory *)self renderConfig];
      v43 = [v42 usesCompactKeycapsFont];

      if (v43)
      {
        [v77 setNeedsFontCase:1];
        [v77 setFontWeight:*off_1E70ECD28];
      }

      v44 = [(UIKBRenderFactoryNumberPad *)self lightKeycapsFontName];
      [v77 setFontName:v44];

      v45 = [(UIKBRenderFactoryNumberPad *)self lightKeycapsFontFallbackName];
      [v77 setKeycapsFallback:v45];

      if (_AXSEnhanceTextLegibilityEnabled())
      {
        [v77 setFontName:@"PhonepadTwo"];
      }

      [v77 setKerning:3.0];
      v46 = [(UIKBRenderFactory *)self renderConfig];
      if ([v46 usesCompactKeycapsFont])
      {
        v47 = 0.0;
      }

      else
      {
        v47 = 3.0;
      }

      [v77 setTextOffset:{0.0, v47}];

      [v77 setSelector:1];
    }

    else
    {
      v57 = [(UIKBRenderFactoryNumberPad *)self lightTextFontName];
      [v77 setFontName:v57];

      v58 = [(UIKBRenderFactoryNumberPad *)self lightTextFontFallbackName];
      [v77 setKeycapsFallback:v58];

      v59 = [(UIKBRenderFactory *)self renderConfig];
      v60 = [v59 usesCompactKeycapsFont];
      v61 = 20.0;
      if (v60)
      {
        v61 = 23.0;
      }

      [v77 setFontSize:v61];

      v62 = [(UIKBRenderFactory *)self renderConfig];
      v63 = [v62 usesCompactKeycapsFont];
      v64 = 0.0;
      if (!v63)
      {
        v64 = 1.0;
      }

      [v77 setTextOffset:{0.0, v64}];
    }

    goto LABEL_9;
  }

  v56 = [v11 name];
  if ([v56 hasSuffix:@"Pause"])
  {
  }

  else
  {
    v70 = [v11 name];
    v71 = [v70 hasSuffix:@"Wait"];

    if (!v71)
    {
      goto LABEL_18;
    }
  }

  [v77 setFontSize:16.0];
  v72 = [(UIKBRenderFactoryNumberPad *)self lightTextFontName];
  [v77 setFontName:v72];

  [v77 setFontGrade:2];
  v73 = [(UIKBRenderFactoryNumberPad *)self lightTextFontFallbackName];
  [v77 setKeycapsFallback:v73];

  v74 = [(UIKBRenderFactory *)self renderConfig];
  v75 = [v74 usesCompactKeycapsFont];
  v76 = 0.0;
  if (!v75)
  {
    v76 = 1.0;
  }

  [v77 setTextOffset:{0.0, v76}];

LABEL_18:
  v27 = [v12 displayString];
  v28 = [v27 isEqualToString:@"."];

  if (v28)
  {
    v29 = 0.0;
    v30 = -1.0;
LABEL_20:
    [v77 setTextOffset:{v29, v30}];
    goto LABEL_31;
  }

  v31 = [v12 displayString];
  if ([v31 isEqualToString:@"#"])
  {
    goto LABEL_24;
  }

  v32 = [v12 displayString];
  if ([v32 isEqualToString:@"*"])
  {

LABEL_24:
LABEL_25:
    v33 = [(UIKBRenderFactory *)self renderConfig];
    v34 = [v33 usesCompactKeycapsFont];
    v35 = 42.0;
    if (v34)
    {
      v35 = 30.0;
    }

    [v77 setFontSize:v35];

    v36 = [(UIKBRenderFactoryNumberPad *)self lightKeycapsFontName];
    [v77 setFontName:v36];

    v37 = [(UIKBRenderFactoryNumberPad *)self lightKeycapsFontFallbackName];
    [v77 setKeycapsFallback:v37];

    v38 = [(UIKBRenderFactory *)self renderConfig];
    v39 = [v38 usesCompactKeycapsFont];

    if (v39)
    {
      [v77 setNeedsFontCase:1];
      [v77 setFontWeight:*off_1E70ECD18];
    }

    [(UIKBRenderFactoryNumberPad *)self specialSymbolOffset];
    [v77 setTextOffset:?];
    [v77 setSelector:1];
    if (_AXSEnhanceTextLegibilityEnabled())
    {
      [v77 setFontName:@"PhonepadTwo"];
    }

    goto LABEL_31;
  }

  v48 = [v12 displayString];
  v49 = [v48 isEqualToString:@"+"];

  if (v49)
  {
    goto LABEL_25;
  }

  v50 = [v11 name];
  if ([v50 hasPrefix:@"NumberPad-"])
  {
    v51 = [v11 name];
    v52 = [v51 hasSuffix:@"-0-Plus"];

    if (v52)
    {
      v53 = [(UIKBRenderFactory *)self renderConfig];
      v54 = [v53 usesCompactKeycapsFont];
      v55 = 0.0;
      if (!v54)
      {
        v55 = 3.0;
      }

      [v77 setTextOffset:{0.0, v55}];

      [v10 setTextOffset:{18.0, 1.0}];
      [v10 setFontSize:22.0];
      goto LABEL_31;
    }
  }

  else
  {
  }

  v65 = [v11 name];
  if ([v65 hasPrefix:@"NumberPad-"])
  {
    v66 = [v12 secondaryDisplayStrings];
    v67 = [v66 count];

    if (!v67)
    {
      v68 = [v11 name];
      v69 = [v68 hasSuffix:@"-0"];

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
  if ([v77 usesSymbolImage])
  {
    [(UIKBRenderFactoryNumberPad *)self symbolImageControlKeyFontSize];
    [v77 setFontSizeForSymbolImage:?];
    [v77 setFontWeightForSymbolImage:*off_1E70ECD18];
  }
}

- (id)_traitsForKey:(id)a3 onKeyplane:(id)a4
{
  v73[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v72.receiver = self;
  v72.super_class = UIKBRenderFactoryNumberPad;
  v8 = [(UIKBRenderFactory *)&v72 _traitsForKey:v6 onKeyplane:v7];
  [v8 setBlendForm:{-[UIKBRenderFactory enabledBlendForm](self, "enabledBlendForm")}];
  v9 = [(UIKBRenderFactory *)self renderConfig];
  [v8 setUsesDarkAppearance:{objc_msgSend(v9, "lightKeyboard") ^ 1}];

  v10 = [v8 geometry];
  [(UIKBRenderFactory *)self keyCornerRadius];
  [v10 setRoundRectRadius:?];
  [v10 setRoundRectCorners:-1];
  [v7 frame];
  [v10 adjustForConsistentGapsWithSize:6.0 inFrame:{6.0, v11, v12, v13, v14}];
  v15 = [(UIKBRenderFactory *)self displayContentsForKey:v6];
  v16 = [(UIKBRenderFactoryNumberPad *)self lightTextFontName];
  v17 = [(UIKBRenderFactoryNumberPad *)self lightTextFontFallbackName];
  [(UIKBRenderFactoryNumberPad *)self numberFontSize];
  v18 = [UIKBTextStyle styleWithFontName:v16 withFallbackFontName:v17 withFontSize:?];
  [v8 setSymbolStyle:v18];

  v19 = [v8 symbolStyle];
  [v19 setMinFontSize:9.0];

  v20 = [(UIKBRenderFactoryNumberPad *)self lightTextFontName];
  v21 = [(UIKBRenderFactoryNumberPad *)self lightTextFontFallbackName];
  [(UIKBRenderFactoryNumberPad *)self letterFontSize];
  v22 = [UIKBTextStyle styleWithFontName:v20 withFallbackFontName:v21 withFontSize:?];

  v23 = [(UIKBRenderFactory *)self renderConfig];
  LODWORD(v21) = [v23 usesCompactKeycapsFont];

  if (v21)
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

  [v7 frame];
  v26 = v25;
  [v6 frame];
  v29 = v26 * 0.5;
  if (v27 + v28 >= v29)
  {
    [v6 frame];
    if (v35 <= v29)
    {
      [(UIKBRenderFactoryNumberPad *)self centerColumnNumberOffset];
      v42 = v41;
      v44 = v43;
      v45 = [v8 symbolStyle];
      [v45 setTextOffset:{v42, v44}];

      [(UIKBRenderFactoryNumberPad *)self centerColumnLetterOffset];
    }

    else
    {
      [(UIKBRenderFactoryNumberPad *)self rightColumnNumberOffset];
      v37 = v36;
      v39 = v38;
      v40 = [v8 symbolStyle];
      [v40 setTextOffset:{v37, v39}];

      [(UIKBRenderFactoryNumberPad *)self rightColumnLetterOffset];
    }
  }

  else
  {
    [(UIKBRenderFactoryNumberPad *)self leftColumnNumberOffset];
    v31 = v30;
    v33 = v32;
    v34 = [v8 symbolStyle];
    [v34 setTextOffset:{v31, v33}];

    [(UIKBRenderFactoryNumberPad *)self leftColumnLetterOffset];
  }

  [v22 setTextOffset:?];
  v46 = [v8 symbolStyle];
  v71 = v15;
  [(UIKBRenderFactoryNumberPad *)self _customizeSymbolStyle:v46 secondaryStyle:v22 forKey:v6 contents:v15];

  v47 = [(UIKBRenderFactory *)self renderConfig];
  v48 = [v47 whiteText];
  v49 = v48;
  if (v48)
  {
    v50 = @"UIKBColorWhite";
  }

  else
  {
    v50 = [(UIKBRenderFactory *)self blackKeycapColor];
  }

  v51 = [v8 symbolStyle];
  [v51 setTextColor:v50];

  if ((v49 & 1) == 0)
  {
  }

  if ([v6 state] == 1)
  {
    v52 = [v8 symbolStyle];
    [v52 setTextOpacity:0.35];
  }

  v53 = [v8 symbolStyle];
  v54 = [v53 textColor];
  [v22 setTextColor:v54];

  v55 = [v8 symbolStyle];
  [v55 textOpacity];
  [v22 setTextOpacity:?];

  v56 = [v6 state];
  v57 = [(UIKBRenderFactory *)self defaultKeyBackgroundColorName];
  if ((v56 & 4) != 0)
  {
    v58 = [(UIKBRenderFactory *)self renderConfig];
    v59 = [v58 lightKeyboard];
    v60 = UIKBColorKeyGrayKeyLightBackgroundMedium;
    if (!v59)
    {
      v60 = UIKBColorKeyGrayKeyDarkBackground;
    }

    v61 = *v60;

    v57 = v61;
  }

  v62 = [(UIKBRenderFactory *)self renderConfig];
  if (![v62 colorAdaptiveBackground])
  {
    goto LABEL_29;
  }

  if ([v6 interactionType] == 11 || objc_msgSend(v6, "interactionType") == 14 || objc_msgSend(v6, "interactionType") == 4 || !objc_msgSend(v6, "interactionType"))
  {

    goto LABEL_28;
  }

  v63 = [v71 displayString];
  v70 = [v63 isEqualToString:@"."];

  if (v70)
  {
LABEL_28:
    v62 = v57;
    v57 = @"UIKBColorClear";
LABEL_29:
  }

  v64 = (v56 >> 2) & 1;
  v65 = [UIKBGradient gradientWithFlatColor:v57];
  [v8 setBackgroundGradient:v65];

  [v8 setControlOpacities:v64];
  v66 = [(UIKBRenderFactory *)self renderConfig];
  LOBYTE(v65) = [v66 colorAdaptiveBackground];

  if ((v65 & 1) == 0)
  {
    v67 = [(UIKBRenderFactory *)self defaultKeyShadowColorName];
    v68 = [UIKBEdgeEffect effectWithColor:v67 edges:4 inset:-1.0 weight:1.0];
    [v8 addRenderEffect:v68];
  }

  return v8;
}

- (void)setupLayoutSegments
{
  v12 = [UIKBRenderTraits traitsWithSymbolStyle:0];
  [v12 setControlOpacities:1];
  v3 = [(UIKBRenderFactoryNumberPad *)self controlKeyBackgroundColorName];
  v4 = [UIKBGradient gradientWithFlatColor:v3];
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
  v8 = [(UIKBRenderFactoryNumberPad *)self controlKeyBackgroundColorName];
  v9 = [UIKBGradient gradientWithFlatColor:v8];
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