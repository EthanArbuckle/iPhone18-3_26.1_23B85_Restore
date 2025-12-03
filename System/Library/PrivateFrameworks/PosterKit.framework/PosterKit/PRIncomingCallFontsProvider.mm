@interface PRIncomingCallFontsProvider
+ ($FDC4B4C435B501E994513C5CF81DFA1D)_sampleFallbackForFont:(id)font;
+ ($FDC4B4C435B501E994513C5CF81DFA1D)_sampleStringForFont:(id)font;
+ ($FDC4B4C435B501E994513C5CF81DFA1D)sampleStringForFont:(id)font displayingText:(id)text;
+ (BOOL)_canTextBePartiallyRenderedForFont:(id)font text:(id)text;
+ (BOOL)_canTextBePartiallyRenderedForFontRef:(__CTFont *)ref text:(id)text;
+ (BOOL)_canTextBePartiallyRenderedForFontWithName:(id)name text:(id)text;
+ (BOOL)_canTextBePartiallyRenderedForTimeFontIdentifier:(id)identifier text:(id)text;
+ (UIFont)defaultNameFont;
+ (UIFont)defaultStatusFont;
+ (double)_deviceBasedFontSizeForSize:(double)size;
+ (double)_idealEmphasizedFontSizeForForVerticalName:(id)name layout:(unint64_t)layout;
+ (double)defaultStatusFontSize;
+ (double)glyphBoundsForText:(id)text usingFont:(id)font;
+ (double)idealEmphasizedFontSizeForHorizontalName:(id)name nonEmphasizedText:(id)text nonEmphasizedFont:(id)font emphasizedNameIsTopName:(BOOL)topName;
+ (double)idealEmphasizedFontSizeForName:(id)name status:(id)status usingLayout:(unint64_t)layout;
+ (double)idealEmphasizedFontSizeForName:(id)name usingLayout:(unint64_t)layout;
+ (id)_cjkFontSizeMap;
+ (id)_fallbackFontsForFont:(id)font displayingText:(id)text;
+ (id)_preferredLanguageForFont:(__CTFont *)font;
+ (id)_renderCompatibleIdentifiersForTimeFontIdentifiers:(id)identifiers text:(id)text;
+ (id)timeFontIdentifiersForText:(id)text availableFonts:(id)fonts;
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
  [self defaultStatusFontSize];

  return [v2 monospacedDigitSystemFontOfSize:? weight:?];
}

+ (double)defaultStatusFontSize
{
  v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDDC0]];
  [v3 pointSize];
  v5 = v4;
  [self defaultSecondaryNameFontSize];
  v7 = fmin(v5, v6);

  return v7;
}

+ (double)_deviceBasedFontSizeForSize:(double)size
{
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
  if (CGRectGetWidth(v6) <= 375.0)
  {
    size = size * 0.9;
  }

  return size;
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

+ (double)idealEmphasizedFontSizeForName:(id)name usingLayout:(unint64_t)layout
{
  nameCopy = name;
  if ([nameCopy pr_isSuitableForVerticalLayout])
  {
    [self _idealEmphasizedFontSizeForForVerticalName:nameCopy layout:layout];
  }

  else
  {
    [self defaultEmphasizedNameFontSize];
  }

  v8 = v7;

  return v8;
}

+ (double)idealEmphasizedFontSizeForName:(id)name status:(id)status usingLayout:(unint64_t)layout
{
  nameCopy = name;
  statusCopy = status;
  if (statusCopy)
  {
    if (![nameCopy pr_isSuitableForVerticalLayout])
    {
      defaultStatusFont = [self defaultStatusFont];
      [self defaultStatusFontSize];
      v13 = [defaultStatusFont fontWithSize:?];

      [self idealEmphasizedFontSizeForHorizontalName:nameCopy nonEmphasizedText:statusCopy nonEmphasizedFont:v13 emphasizedNameIsTopName:0];
      v11 = v14;

      goto LABEL_7;
    }

    [self _idealEmphasizedFontSizeForForVerticalName:nameCopy layout:layout];
  }

  else
  {
    [self idealEmphasizedFontSizeForName:nameCopy usingLayout:layout];
  }

  v11 = v10;
LABEL_7:

  return v11;
}

+ (double)idealEmphasizedFontSizeForHorizontalName:(id)name nonEmphasizedText:(id)text nonEmphasizedFont:(id)font emphasizedNameIsTopName:(BOOL)topName
{
  topNameCopy = topName;
  nameCopy = name;
  textCopy = text;
  fontCopy = font;
  if (topNameCopy)
  {
    v13 = nameCopy;
  }

  else
  {
    v13 = textCopy;
  }

  if (topNameCopy)
  {
    v14 = textCopy;
  }

  else
  {
    v14 = nameCopy;
  }

  v15 = v13;
  v16 = v14;
  [self glyphBoundsForText:textCopy usingFont:fontCopy];
  v18 = v17;
  +[PRIncomingCallMetricsProvider maximumHorizontalTextBounds];
  Height = CGRectGetHeight(v32);
  [self defaultEmphasizedNameFontSize];
  v21 = v20;
  if (Height < 2147483650.0)
  {
    do
    {
      [self defaultSecondaryNameFontSize];
      if (v21 < v22)
      {
        break;
      }

      v21 = v21 + -1.0;
      defaultNameFont = [self defaultNameFont];
      v24 = [defaultNameFont fontWithSize:v21];

      [self glyphBoundsForText:nameCopy usingFont:v24];
      v26 = v25;
      v27 = topNameCopy ? v24 : fontCopy;
      v28 = topNameCopy ? fontCopy : v24;
      [PRIncomingCallTextViewConfigurationMetrics idealSpaceBetweenTopText:v15 topFont:v27 bottomText:v16 bottomFont:v28];
      v30 = v18 + v26 + v29;
    }

    while (v30 > Height);
  }

  return v21;
}

+ (double)_idealEmphasizedFontSizeForForVerticalName:(id)name layout:(unint64_t)layout
{
  nameCopy = name;
  _cjkFontSizeMap = [self _cjkFontSizeMap];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:layout];
  v9 = [_cjkFontSizeMap objectForKeyedSubscript:v8];

  if (v9 && ([v9 allKeys], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "count"), v10, v11))
  {
    allKeys = [v9 allKeys];
    v13 = [allKeys valueForKeyPath:@"@max.unsignedIntegerValue"];
    unsignedIntegerValue = [v13 unsignedIntegerValue];

    v15 = [nameCopy length];
    if (v15 >= unsignedIntegerValue)
    {
      v16 = unsignedIntegerValue;
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
      [self _deviceBasedFontSizeForSize:v19];
    }

    else
    {
      [self defaultEmphasizedNameFontSize];
    }

    v22 = v20;
  }

  else
  {
    [self defaultEmphasizedNameFontSize];
    v22 = v21;
  }

  return v22;
}

+ (double)glyphBoundsForText:(id)text usingFont:(id)font
{
  v19[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AAB0];
  fontCopy = font;
  textCopy = text;
  v8 = [v5 alloc];
  v18 = *MEMORY[0x1E6965658];
  v19[0] = fontCopy;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];

  v10 = [v8 initWithString:textCopy attributes:v9];
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

+ (id)timeFontIdentifiersForText:(id)text availableFonts:(id)fonts
{
  v28[2] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AB08];
  fontsCopy = fonts;
  textCopy = text;
  alphanumericCharacterSet = [v6 alphanumericCharacterSet];
  invertedSet = [alphanumericCharacterSet invertedSet];
  v11 = [textCopy componentsSeparatedByCharactersInSet:invertedSet];
  v12 = [v11 componentsJoinedByString:&stru_1F1C13D90];

  if ([v12 length])
  {
    v13 = v12;
  }

  else
  {
    v13 = textCopy;
  }

  v14 = v13;

  v15 = [self _renderCompatibleIdentifiersForTimeFontIdentifiers:fontsCopy text:v14];

  if ([v15 count])
  {
    v16 = [v15 copy];
    goto LABEL_18;
  }

  v28[0] = @"PRTimeFontIdentifierSFArabic";
  v28[1] = @"PRTimeFontIdentifierSFArabicRounded";
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
  v18 = [self _renderCompatibleIdentifiersForTimeFontIdentifiers:v17 text:v14];

  if (![v18 count])
  {
    v27[0] = @"PRTimeFontIdentifierSFHebrew";
    v27[1] = @"PRTimeFontIdentifierSFHebrewRounded";
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
    v20 = [self _renderCompatibleIdentifiersForTimeFontIdentifiers:v19 text:v14];

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
        v23 = [self _renderCompatibleIdentifiersForTimeFontIdentifiers:v22 text:v14];

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

+ (id)_renderCompatibleIdentifiersForTimeFontIdentifiers:(id)identifiers text:(id)text
{
  textCopy = text;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __87__PRIncomingCallFontsProvider__renderCompatibleIdentifiersForTimeFontIdentifiers_text___block_invoke;
  v10[3] = &unk_1E78445D0;
  v11 = textCopy;
  selfCopy = self;
  v7 = textCopy;
  v8 = [identifiers bs_filter:v10];

  return v8;
}

+ (BOOL)_canTextBePartiallyRenderedForTimeFontIdentifier:(id)identifier text:(id)text
{
  textCopy = text;
  v7 = PRFontNameForTimeFontIdentifier(identifier);
  LOBYTE(self) = [self _canTextBePartiallyRenderedForFontWithName:v7 text:textCopy];

  return self;
}

+ (BOOL)_canTextBePartiallyRenderedForFont:(id)font text:(id)text
{
  textCopy = text;
  fontName = [font fontName];
  LOBYTE(self) = [self _canTextBePartiallyRenderedForFontWithName:fontName text:textCopy];

  return self;
}

+ (BOOL)_canTextBePartiallyRenderedForFontWithName:(id)name text:(id)text
{
  v6 = MEMORY[0x1E69DB878];
  textCopy = text;
  LOBYTE(name) = [self _canTextBePartiallyRenderedForFontRef:objc_msgSend(v6 text:{"pr_fontWithName:forRole:includingFallbackFonts:", name, @"PRPosterRoleIncomingCall", 0), textCopy}];

  return name;
}

+ (BOOL)_canTextBePartiallyRenderedForFontRef:(__CTFont *)ref text:(id)text
{
  v14[1] = *MEMORY[0x1E69E9840];
  textCopy = text;
  v6 = [textCopy length];
  MEMORY[0x1EEE9AC00](v6);
  v7 = (2 * v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = [textCopy getCharacters:v14 - v7 range:{0, v6}];
  MEMORY[0x1EEE9AC00](v8);
  v9 = (v14 - v7);
  if (CTFontGetGlyphsForCharacters(ref, (v14 - v7), (v14 - v7), v6))
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

+ ($FDC4B4C435B501E994513C5CF81DFA1D)_sampleFallbackForFont:(id)font
{
  fontCopy = font;
  v4 = @"Aa";
  result.var1 = fontCopy;
  result.var0 = v4;
  return result;
}

+ ($FDC4B4C435B501E994513C5CF81DFA1D)sampleStringForFont:(id)font displayingText:(id)text
{
  fontCopy = font;
  textCopy = text;
  if ([self _canTextBePartiallyRenderedForFont:fontCopy text:textCopy])
  {
    v8 = [self _sampleStringForFont:fontCopy];
    v10 = v9;
  }

  else
  {
    v11 = [self _fallbackFontsForFont:fontCopy displayingText:textCopy];
    firstObject = [v11 firstObject];

    if (firstObject)
    {
      v13 = [self _sampleStringForFont:firstObject];
    }

    else
    {
      v13 = [self _sampleFallbackForFont:fontCopy];
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

+ ($FDC4B4C435B501E994513C5CF81DFA1D)_sampleStringForFont:(id)font
{
  fontCopy = font;
  v5 = MEMORY[0x1E69DB878];
  fontName = [fontCopy fontName];
  v7 = [v5 pr_fontWithName:fontName forRole:@"PRPosterRoleIncomingCall" includingFallbackFonts:0];

  v8 = [self _preferredLanguageForFont:v7];
  v9 = CTCopySampleStringForLanguage();
  v10 = v9;
  if (v9)
  {
    v11 = v9;
    v12 = fontCopy;
  }

  else
  {
    v11 = [self _sampleFallbackForFont:fontCopy];
    v12 = v13;
  }

  v14 = v11;
  v15 = v12;
  result.var1 = v15;
  result.var0 = v14;
  return result;
}

+ (id)_preferredLanguageForFont:(__CTFont *)font
{
  v39[1] = *MEMORY[0x1E69E9840];
  preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
  v5 = [preferredLanguages bs_map:&__block_literal_global_48];

  v6 = CTFontCopyAttribute(font, *MEMORY[0x1E6965758]);
  v7 = v6;
  v8 = MEMORY[0x1E695E0F0];
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;

  if (![v9 count])
  {
    firstObject = [v5 firstObject];
    v39[0] = firstObject;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:1];

    v9 = v11;
  }

  if ([v9 count] == 1)
  {
    firstObject2 = [v9 firstObject];
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
      firstObject2 = v14;
    }

    else
    {
      v15 = CTFontCopySupportedLanguages(font);
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
        firstObject2 = v17;
      }

      else
      {
        firstObject3 = [v13 firstObject];
        v19 = firstObject3;
        if (firstObject3)
        {
          firstObject2 = firstObject3;
        }

        else
        {
          firstObject4 = [(__CFArray *)v16 firstObject];
          v21 = firstObject4;
          if (firstObject4)
          {
            firstObject5 = firstObject4;
          }

          else
          {
            firstObject5 = [v5 firstObject];
          }

          firstObject2 = firstObject5;
        }
      }
    }

    _Block_object_dispose(&v33, 8);
  }

  return firstObject2;
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

+ (id)_fallbackFontsForFont:(id)font displayingText:(id)text
{
  v23[1] = *MEMORY[0x1E69E9840];
  fontCopy = font;
  textCopy = text;
  v22 = *MEMORY[0x1E6965658];
  v23[0] = fontCopy;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
  v7 = CTLineCreateWithString();
  v8 = CTLineGetGlyphRuns(v7);
  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
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
        [orderedSet addObject:{v15, v17}];
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  CFRelease(v7);

  return orderedSet;
}

@end