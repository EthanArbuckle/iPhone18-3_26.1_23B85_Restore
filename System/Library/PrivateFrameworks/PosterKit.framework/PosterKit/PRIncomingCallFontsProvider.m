@interface PRIncomingCallFontsProvider
+ ($FDC4B4C435B501E994513C5CF81DFA1D)_sampleFallbackForFont:(id)a3;
+ ($FDC4B4C435B501E994513C5CF81DFA1D)_sampleStringForFont:(id)a3;
+ ($FDC4B4C435B501E994513C5CF81DFA1D)sampleStringForFont:(id)a3 displayingText:(id)a4;
+ (BOOL)_canTextBePartiallyRenderedForFont:(id)a3 text:(id)a4;
+ (BOOL)_canTextBePartiallyRenderedForFontRef:(__CTFont *)a3 text:(id)a4;
+ (BOOL)_canTextBePartiallyRenderedForFontWithName:(id)a3 text:(id)a4;
+ (BOOL)_canTextBePartiallyRenderedForTimeFontIdentifier:(id)a3 text:(id)a4;
+ (UIFont)defaultNameFont;
+ (UIFont)defaultStatusFont;
+ (double)_deviceBasedFontSizeForSize:(double)a3;
+ (double)_idealEmphasizedFontSizeForForVerticalName:(id)a3 layout:(unint64_t)a4;
+ (double)defaultStatusFontSize;
+ (double)glyphBoundsForText:(id)a3 usingFont:(id)a4;
+ (double)idealEmphasizedFontSizeForHorizontalName:(id)a3 nonEmphasizedText:(id)a4 nonEmphasizedFont:(id)a5 emphasizedNameIsTopName:(BOOL)a6;
+ (double)idealEmphasizedFontSizeForName:(id)a3 status:(id)a4 usingLayout:(unint64_t)a5;
+ (double)idealEmphasizedFontSizeForName:(id)a3 usingLayout:(unint64_t)a4;
+ (id)_cjkFontSizeMap;
+ (id)_fallbackFontsForFont:(id)a3 displayingText:(id)a4;
+ (id)_preferredLanguageForFont:(__CTFont *)a3;
+ (id)_renderCompatibleIdentifiersForTimeFontIdentifiers:(id)a3 text:(id)a4;
+ (id)timeFontIdentifiersForText:(id)a3 availableFonts:(id)a4;
@end

@implementation PRIncomingCallFontsProvider

+ (UIFont)defaultNameFont
{
  v2 = [MEMORY[0x1E69DB878] pr_defaultTimeFontForRole:@"PRPosterRoleIncomingCall"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  }

  v5 = v4;

  return v5;
}

+ (UIFont)defaultStatusFont
{
  v2 = MEMORY[0x1E69DB878];
  [a1 defaultStatusFontSize];

  return [v2 monospacedDigitSystemFontOfSize:? weight:?];
}

+ (double)defaultStatusFontSize
{
  v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDDC0]];
  [v3 pointSize];
  v5 = v4;
  [a1 defaultSecondaryNameFontSize];
  v7 = fmin(v5, v6);

  return v7;
}

+ (double)_deviceBasedFontSizeForSize:(double)a3
{
  v4 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v4 bounds];
  if (CGRectGetWidth(v6) <= 375.0)
  {
    a3 = a3 * 0.9;
  }

  return a3;
}

+ (id)_cjkFontSizeMap
{
  if (_cjkFontSizeMap_once != -1)
  {
    +[PRIncomingCallFontsProvider _cjkFontSizeMap];
  }

  v3 = _cjkFontSizeMap_cjkFontSizeMap;

  return v3;
}

void __46__PRIncomingCallFontsProvider__cjkFontSizeMap__block_invoke()
{
  v9[2] = *MEMORY[0x1E69E9840];
  v8[0] = &unk_1F1C6B800;
  v6[0] = &unk_1F1C6B818;
  v6[1] = &unk_1F1C6B830;
  v7[0] = &unk_1F1C6BD80;
  v7[1] = &unk_1F1C6BD90;
  v6[2] = &unk_1F1C6B848;
  v6[3] = &unk_1F1C6B860;
  v7[2] = &unk_1F1C6BDA0;
  v7[3] = &unk_1F1C6BDB0;
  v6[4] = &unk_1F1C6B878;
  v6[5] = &unk_1F1C6B890;
  v7[4] = &unk_1F1C6BDB0;
  v7[5] = &unk_1F1C6BDB0;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:6];
  v8[1] = &unk_1F1C6B8A8;
  v9[0] = v0;
  v4[0] = &unk_1F1C6B818;
  v4[1] = &unk_1F1C6B830;
  v5[0] = &unk_1F1C6BD80;
  v5[1] = &unk_1F1C6BD90;
  v4[2] = &unk_1F1C6B848;
  v4[3] = &unk_1F1C6B860;
  v5[2] = &unk_1F1C6BDA0;
  v5[3] = &unk_1F1C6BDB0;
  v4[4] = &unk_1F1C6B878;
  v4[5] = &unk_1F1C6B890;
  v5[4] = &unk_1F1C6BDC0;
  v5[5] = &unk_1F1C6BDD0;
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:6];
  v9[1] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
  v3 = _cjkFontSizeMap_cjkFontSizeMap;
  _cjkFontSizeMap_cjkFontSizeMap = v2;
}

+ (double)idealEmphasizedFontSizeForName:(id)a3 usingLayout:(unint64_t)a4
{
  v6 = a3;
  if ([v6 pr_isSuitableForVerticalLayout])
  {
    [a1 _idealEmphasizedFontSizeForForVerticalName:v6 layout:a4];
  }

  else
  {
    [a1 defaultEmphasizedNameFontSize];
  }

  v8 = v7;

  return v8;
}

+ (double)idealEmphasizedFontSizeForName:(id)a3 status:(id)a4 usingLayout:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    if (![v8 pr_isSuitableForVerticalLayout])
    {
      v12 = [a1 defaultStatusFont];
      [a1 defaultStatusFontSize];
      v13 = [v12 fontWithSize:?];

      [a1 idealEmphasizedFontSizeForHorizontalName:v8 nonEmphasizedText:v9 nonEmphasizedFont:v13 emphasizedNameIsTopName:0];
      v11 = v14;

      goto LABEL_7;
    }

    [a1 _idealEmphasizedFontSizeForForVerticalName:v8 layout:a5];
  }

  else
  {
    [a1 idealEmphasizedFontSizeForName:v8 usingLayout:a5];
  }

  v11 = v10;
LABEL_7:

  return v11;
}

+ (double)idealEmphasizedFontSizeForHorizontalName:(id)a3 nonEmphasizedText:(id)a4 nonEmphasizedFont:(id)a5 emphasizedNameIsTopName:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v6)
  {
    v13 = v10;
  }

  else
  {
    v13 = v11;
  }

  if (v6)
  {
    v14 = v11;
  }

  else
  {
    v14 = v10;
  }

  v15 = v13;
  v16 = v14;
  [a1 glyphBoundsForText:v11 usingFont:v12];
  v18 = v17;
  +[PRIncomingCallMetricsProvider maximumHorizontalTextBounds];
  Height = CGRectGetHeight(v32);
  [a1 defaultEmphasizedNameFontSize];
  v21 = v20;
  if (Height < 2147483650.0)
  {
    do
    {
      [a1 defaultSecondaryNameFontSize];
      if (v21 < v22)
      {
        break;
      }

      v21 = v21 + -1.0;
      v23 = [a1 defaultNameFont];
      v24 = [v23 fontWithSize:v21];

      [a1 glyphBoundsForText:v10 usingFont:v24];
      v26 = v25;
      v27 = v6 ? v24 : v12;
      v28 = v6 ? v12 : v24;
      [PRIncomingCallTextViewConfigurationMetrics idealSpaceBetweenTopText:v15 topFont:v27 bottomText:v16 bottomFont:v28];
      v30 = v18 + v26 + v29;
    }

    while (v30 > Height);
  }

  return v21;
}

+ (double)_idealEmphasizedFontSizeForForVerticalName:(id)a3 layout:(unint64_t)a4
{
  v6 = a3;
  v7 = [a1 _cjkFontSizeMap];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  v9 = [v7 objectForKeyedSubscript:v8];

  if (v9 && ([v9 allKeys], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "count"), v10, v11))
  {
    v12 = [v9 allKeys];
    v13 = [v12 valueForKeyPath:@"@max.unsignedIntegerValue"];
    v14 = [v13 unsignedIntegerValue];

    v15 = [v6 length];
    if (v15 >= v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = v15;
    }

    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v16];
    v18 = [v9 objectForKeyedSubscript:v17];

    if (v18)
    {
      [v18 floatValue];
      [a1 _deviceBasedFontSizeForSize:v19];
    }

    else
    {
      [a1 defaultEmphasizedNameFontSize];
    }

    v22 = v20;
  }

  else
  {
    [a1 defaultEmphasizedNameFontSize];
    v22 = v21;
  }

  return v22;
}

+ (double)glyphBoundsForText:(id)a3 usingFont:(id)a4
{
  v19[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AAB0];
  v6 = a4;
  v7 = a3;
  v8 = [v5 alloc];
  v18 = *MEMORY[0x1E6965658];
  v19[0] = v6;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];

  v10 = [v8 initWithString:v7 attributes:v9];
  v11 = CTLineCreateWithAttributedString(v10);
  BoundsWithOptions = CTLineGetBoundsWithOptions(v11, 8uLL);
  x = BoundsWithOptions.origin.x;
  y = BoundsWithOptions.origin.y;
  width = BoundsWithOptions.size.width;
  height = BoundsWithOptions.size.height;
  CFRelease(v11);
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  v16 = CGRectGetHeight(v21);

  return v16;
}

+ (id)timeFontIdentifiersForText:(id)a3 availableFonts:(id)a4
{
  v28[2] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AB08];
  v7 = a4;
  v8 = a3;
  v9 = [v6 alphanumericCharacterSet];
  v10 = [v9 invertedSet];
  v11 = [v8 componentsSeparatedByCharactersInSet:v10];
  v12 = [v11 componentsJoinedByString:&stru_1F1C13D90];

  if ([v12 length])
  {
    v13 = v12;
  }

  else
  {
    v13 = v8;
  }

  v14 = v13;

  v15 = [a1 _renderCompatibleIdentifiersForTimeFontIdentifiers:v7 text:v14];

  if ([v15 count])
  {
    v16 = [v15 copy];
    goto LABEL_18;
  }

  v28[0] = @"PRTimeFontIdentifierSFArabic";
  v28[1] = @"PRTimeFontIdentifierSFArabicRounded";
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
  v18 = [a1 _renderCompatibleIdentifiersForTimeFontIdentifiers:v17 text:v14];

  if (![v18 count])
  {
    v27[0] = @"PRTimeFontIdentifierSFHebrew";
    v27[1] = @"PRTimeFontIdentifierSFHebrewRounded";
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
    v20 = [a1 _renderCompatibleIdentifiersForTimeFontIdentifiers:v19 text:v14];

    if ([v20 count])
    {
      v21 = [v20 copy];
    }

    else
    {
      if (_os_feature_enabled_impl())
      {
        v26[0] = @"PRTimeFontIdentifierNovember";
        v26[1] = @"PRTimeFontIdentifierOctober";
        v26[2] = @"PRTimeFontIdentifierNovemberCondensed";
        v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:3];
        v23 = [a1 _renderCompatibleIdentifiersForTimeFontIdentifiers:v22 text:v14];

        if ([v23 count])
        {
          v16 = [v23 copy];

          v20 = v23;
LABEL_16:

          v18 = v20;
          goto LABEL_17;
        }

        v20 = v23;
      }

      v25 = @"PRTimeFontIdentifierSFPro";
      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
    }

    v16 = v21;
    goto LABEL_16;
  }

  v16 = [v18 copy];
LABEL_17:

  v15 = v18;
LABEL_18:

  return v16;
}

+ (id)_renderCompatibleIdentifiersForTimeFontIdentifiers:(id)a3 text:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __87__PRIncomingCallFontsProvider__renderCompatibleIdentifiersForTimeFontIdentifiers_text___block_invoke;
  v10[3] = &unk_1E78445D0;
  v11 = v6;
  v12 = a1;
  v7 = v6;
  v8 = [a3 bs_filter:v10];

  return v8;
}

+ (BOOL)_canTextBePartiallyRenderedForTimeFontIdentifier:(id)a3 text:(id)a4
{
  v6 = a4;
  v7 = PRFontNameForTimeFontIdentifier(a3);
  LOBYTE(a1) = [a1 _canTextBePartiallyRenderedForFontWithName:v7 text:v6];

  return a1;
}

+ (BOOL)_canTextBePartiallyRenderedForFont:(id)a3 text:(id)a4
{
  v6 = a4;
  v7 = [a3 fontName];
  LOBYTE(a1) = [a1 _canTextBePartiallyRenderedForFontWithName:v7 text:v6];

  return a1;
}

+ (BOOL)_canTextBePartiallyRenderedForFontWithName:(id)a3 text:(id)a4
{
  v6 = MEMORY[0x1E69DB878];
  v7 = a4;
  LOBYTE(a3) = [a1 _canTextBePartiallyRenderedForFontRef:objc_msgSend(v6 text:{"pr_fontWithName:forRole:includingFallbackFonts:", a3, @"PRPosterRoleIncomingCall", 0), v7}];

  return a3;
}

+ (BOOL)_canTextBePartiallyRenderedForFontRef:(__CTFont *)a3 text:(id)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [v5 length];
  MEMORY[0x1EEE9AC00](v6);
  v7 = (2 * v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = [v5 getCharacters:v14 - v7 range:{0, v6}];
  MEMORY[0x1EEE9AC00](v8);
  v9 = (v14 - v7);
  if (CTFontGetGlyphsForCharacters(a3, (v14 - v7), (v14 - v7), v6))
  {
    LOBYTE(v6) = 1;
  }

  else if (v6)
  {
    v10 = v6 - 1;
    do
    {
      v11 = *v9++;
      LOBYTE(v6) = v11 != 0;
      if (v11)
      {
        v12 = 1;
      }

      else
      {
        v12 = v10 == 0;
      }

      --v10;
    }

    while (!v12);
  }

  return v6;
}

+ ($FDC4B4C435B501E994513C5CF81DFA1D)_sampleFallbackForFont:(id)a3
{
  v3 = a3;
  v4 = @"Aa";
  result.var1 = v3;
  result.var0 = v4;
  return result;
}

+ ($FDC4B4C435B501E994513C5CF81DFA1D)sampleStringForFont:(id)a3 displayingText:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([a1 _canTextBePartiallyRenderedForFont:v6 text:v7])
  {
    v8 = [a1 _sampleStringForFont:v6];
    v10 = v9;
  }

  else
  {
    v11 = [a1 _fallbackFontsForFont:v6 displayingText:v7];
    v12 = [v11 firstObject];

    if (v12)
    {
      v13 = [a1 _sampleStringForFont:v12];
    }

    else
    {
      v13 = [a1 _sampleFallbackForFont:v6];
    }

    v8 = v13;
    v10 = v14;
  }

  v15 = v8;
  v16 = v10;
  result.var1 = v16;
  result.var0 = v15;
  return result;
}

+ ($FDC4B4C435B501E994513C5CF81DFA1D)_sampleStringForFont:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69DB878];
  v6 = [v4 fontName];
  v7 = [v5 pr_fontWithName:v6 forRole:@"PRPosterRoleIncomingCall" includingFallbackFonts:0];

  v8 = [a1 _preferredLanguageForFont:v7];
  v9 = CTCopySampleStringForLanguage();
  v10 = v9;
  if (v9)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    v11 = [a1 _sampleFallbackForFont:v4];
    v12 = v13;
  }

  v14 = v11;
  v15 = v12;
  result.var1 = v15;
  result.var0 = v14;
  return result;
}

+ (id)_preferredLanguageForFont:(__CTFont *)a3
{
  v39[1] = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DF58] preferredLanguages];
  v5 = [v4 bs_map:&__block_literal_global_48];

  v6 = CTFontCopyAttribute(a3, *MEMORY[0x1E6965758]);
  v7 = v6;
  v8 = MEMORY[0x1E695E0F0];
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;

  if (![v9 count])
  {
    v10 = [v5 firstObject];
    v39[0] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:1];

    v9 = v11;
  }

  if ([v9 count] == 1)
  {
    v12 = [v9 firstObject];
  }

  else
  {
    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = __Block_byref_object_copy__2;
    v37 = __Block_byref_object_dispose__2;
    v38 = 0;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __57__PRIncomingCallFontsProvider__preferredLanguageForFont___block_invoke_49;
    v30[3] = &unk_1E7844618;
    v13 = v9;
    v31 = v13;
    v32 = &v33;
    [v5 enumerateObjectsUsingBlock:v30];
    v14 = v34[5];
    if (v14)
    {
      v12 = v14;
    }

    else
    {
      v15 = CTFontCopySupportedLanguages(a3);
      v24 = MEMORY[0x1E69E9820];
      v25 = 3221225472;
      v26 = __57__PRIncomingCallFontsProvider__preferredLanguageForFont___block_invoke_2;
      v27 = &unk_1E7844618;
      v16 = v15;
      v28 = v16;
      v29 = &v33;
      [v5 enumerateObjectsUsingBlock:&v24];
      v17 = v34[5];
      if (v17)
      {
        v12 = v17;
      }

      else
      {
        v18 = [v13 firstObject];
        v19 = v18;
        if (v18)
        {
          v12 = v18;
        }

        else
        {
          v20 = [(__CFArray *)v16 firstObject];
          v21 = v20;
          if (v20)
          {
            v22 = v20;
          }

          else
          {
            v22 = [v5 firstObject];
          }

          v12 = v22;
        }
      }
    }

    _Block_object_dispose(&v33, 8);
  }

  return v12;
}

id __57__PRIncomingCallFontsProvider__preferredLanguageForFont___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:a2];
  v3 = [v2 languageCode];

  return v3;
}

void __57__PRIncomingCallFontsProvider__preferredLanguageForFont___block_invoke_49(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([*(a1 + 32) containsObject:?])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void __57__PRIncomingCallFontsProvider__preferredLanguageForFont___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([*(a1 + 32) containsObject:?])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

+ (id)_fallbackFontsForFont:(id)a3 displayingText:(id)a4
{
  v23[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v22 = *MEMORY[0x1E6965658];
  v23[0] = v5;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
  v7 = CTLineCreateWithString();
  v8 = CTLineGetGlyphRuns(v7);
  v9 = [MEMORY[0x1E695DFA0] orderedSet];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = CTRunGetFont();
        [v9 addObject:{v15, v17}];
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  CFRelease(v7);

  return v9;
}

@end