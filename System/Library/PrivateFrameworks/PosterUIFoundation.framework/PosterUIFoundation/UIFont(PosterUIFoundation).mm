@interface UIFont(PosterUIFoundation)
+ (CTFontRef)pui_UIFontWithPostScriptName:()PosterUIFoundation inBundleAtURL:relativePath:;
+ (__CFString)pui_defaultFontIdentifierForRole:()PosterUIFoundation;
+ (const)pui_UIFontWithName:()PosterUIFoundation forRole:includingFallbackFonts:attributes:;
+ (id)pui_UIFontWithPUIFontIdentifier:()PosterUIFoundation forRole:includingFallbackFonts:;
+ (id)pui_UIFontWithPostScriptName:()PosterUIFoundation inBundle:relativePath:;
+ (id)pui_UIFontWithPostScriptName:()PosterUIFoundation inBundleWithIdentifier:relativePath:;
+ (id)pui_defaultFont;
+ (id)pui_defaultFontForRole:()PosterUIFoundation;
+ (void)pui_clearCachesForInvalidation;
+ (void)pui_replacementFallbackFontNamesForRole:()PosterUIFoundation;
- (CTFontRef)pui_fontWithAttributes:()PosterUIFoundation options:;
- (CTFontRef)pui_fontWithFallbacks:()PosterUIFoundation;
- (CTFontRef)pui_maximumAllowedFontWeightFont;
- (CTFontRef)pui_minimumAllowedFontWeightFont;
- (__CFString)pui_postScriptName;
- (id)pui_UIFontWithDefaultFallbacksForRole:()PosterUIFoundation;
- (id)pui_UIFontWithVariantWeight:()PosterUIFoundation forRole:;
- (id)pui_defaultFontFallbacks;
- (id)pui_fontFallbacks;
- (id)pui_fontWithFallbacks:()PosterUIFoundation beforeFontContainingName:;
- (id)pui_localizedTimeFontName;
- (id)pui_referencePathRelativeToBundle:()PosterUIFoundation;
- (id)pui_referencePathRelativeToDirectoryAtURL:()PosterUIFoundation;
- (id)pui_referenceURL;
- (id)pui_replaceFallbackFontNames:()PosterUIFoundation;
- (id)pui_timeFontIdentifier;
- (uint64_t)pui_isReferenceFileContainedInBundle:()PosterUIFoundation;
- (uint64_t)pui_isReferenceFileContainedInDirectoryAtURL:()PosterUIFoundation;
- (uint64_t)pui_variantWeight;
- (uint64_t)pui_variantWeightRange;
@end

@implementation UIFont(PosterUIFoundation)

+ (void)pui_clearCachesForInvalidation
{
  os_unfair_lock_lock(&cachedFontLock);
  v0 = cachedFontWithDefaultFallbacks;
  cachedFontWithDefaultFallbacks = 0;

  os_unfair_lock_unlock(&cachedFontLock);
  os_unfair_lock_lock(&cachedDefaultFallbacksLock);
  v1 = cachedDefaultFallbacks;
  cachedDefaultFallbacks = 0;

  os_unfair_lock_unlock(&cachedDefaultFallbacksLock);
}

+ (id)pui_UIFontWithPUIFontIdentifier:()PosterUIFoundation forRole:includingFallbackFonts:
{
  v8 = a4;
  v9 = a3;
  v10 = UIFontNameForPUIFontIdentifier(v9);
  v11 = PUIFontAttributesForPUIFontIdentifier(v9);

  v12 = [self pui_UIFontWithName:v10 forRole:v8 includingFallbackFonts:a5 attributes:v11];

  return v12;
}

+ (const)pui_UIFontWithName:()PosterUIFoundation forRole:includingFallbackFonts:attributes:
{
  v9 = a4;
  v10 = a6;
  v11 = *MEMORY[0x1E69C5218];
  v12 = a3;
  if ([v9 isEqualToString:v11])
  {
    v13 = 132096;
  }

  else
  {
    v13 = 0x20000;
  }

  v14 = CTFontCreateWithNameAndOptions(v12, 12.0, 0, v13);

  if ([v10 count])
  {
    v15 = [(__CTFont *)v14 pui_fontWithAttributes:v10 options:v13];

    v14 = v15;
  }

  if (a5)
  {
    v16 = [(__CTFont *)v14 pui_UIFontWithDefaultFallbacksForRole:v9];
  }

  else
  {
    v16 = v14;
  }

  v17 = v16;

  return v17;
}

+ (id)pui_UIFontWithPostScriptName:()PosterUIFoundation inBundle:relativePath:
{
  v8 = a5;
  v9 = a3;
  bundleURL = [a4 bundleURL];
  v11 = [self pui_UIFontWithPostScriptName:v9 inBundleAtURL:bundleURL relativePath:v8];

  return v11;
}

+ (id)pui_UIFontWithPostScriptName:()PosterUIFoundation inBundleWithIdentifier:relativePath:
{
  v8 = a3;
  v9 = a5;
  v10 = MEMORY[0x1E69635D0];
  v11 = a4;
  v12 = [[v10 alloc] initWithBundleIdentifier:v11 error:0];

  v13 = [v12 URL];
  if (v13)
  {
    v14 = [self pui_UIFontWithPostScriptName:v8 inBundleAtURL:v13 relativePath:v9];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (CTFontRef)pui_UIFontWithPostScriptName:()PosterUIFoundation inBundleAtURL:relativePath:
{
  v18[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [a4 URLByAppendingPathComponent:a5];
  v9 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:v8 resolvingAgainstBaseURL:1];
  v10 = [MEMORY[0x1E696AF60] queryItemWithName:@"postscript-name" value:v7];

  v18[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  [v9 setQueryItems:v11];

  v12 = [v9 URL];
  FontsWithURL = CGFontCreateFontsWithURL();
  if (FontsWithURL)
  {
    v14 = FontsWithURL;
    if (CFArrayGetCount(FontsWithURL) == 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v14, 0);
      v16 = CTFontCreateWithGraphicsFont(ValueAtIndex, 12.0, 0, 0);
    }

    else
    {
      v16 = 0;
    }

    CFRelease(v14);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)pui_defaultFont
{
  pui_defaultFontIdentifier = [self pui_defaultFontIdentifier];
  v3 = [self pui_UIFontWithPUIFontIdentifier:pui_defaultFontIdentifier];

  return v3;
}

+ (id)pui_defaultFontForRole:()PosterUIFoundation
{
  v4 = a3;
  v5 = [self pui_defaultFontIdentifierForRole:v4];
  v6 = [self pui_UIFontWithPUIFontIdentifier:v5 forRole:v4];

  return v6;
}

+ (__CFString)pui_defaultFontIdentifierForRole:()PosterUIFoundation
{
  v3 = [a3 isEqual:*MEMORY[0x1E69C5218]];
  v4 = PUIFontIdentifierSFPro;
  if (!v3)
  {
    v4 = PUIFontIdentifierSoft;
  }

  v5 = *v4;

  return v5;
}

+ (void)pui_replacementFallbackFontNamesForRole:()PosterUIFoundation
{
  if ([a3 isEqual:*MEMORY[0x1E69C5218]])
  {
    return &unk_1F1C92678;
  }

  else
  {
    return 0;
  }
}

- (CTFontRef)pui_minimumAllowedFontWeightFont
{
  pui_timeFontIdentifier = [self pui_timeFontIdentifier];
  v2 = PUIMinimumVariableFontNameForTimeFontIdentifier(pui_timeFontIdentifier);

  if (v2)
  {
    v3 = CTFontCreateWithNameAndOptions(v2, 12.0, 0, 0x20000uLL);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CTFontRef)pui_maximumAllowedFontWeightFont
{
  pui_timeFontIdentifier = [self pui_timeFontIdentifier];
  v2 = PUIMaximumVariableFontNameForTimeFontIdentifier(pui_timeFontIdentifier);

  if (v2)
  {
    v3 = CTFontCreateWithNameAndOptions(v2, 12.0, 0, 0x20000uLL);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CTFontRef)pui_fontWithAttributes:()PosterUIFoundation options:
{
  v6 = a3;
  CopyWithAttributes = CTFontDescriptorCreateCopyWithAttributes([self fontDescriptor], v6);

  v8 = CTFontCreateWithFontDescriptorAndOptions(CopyWithAttributes, 12.0, 0, a4);
  CFRelease(CopyWithAttributes);

  return v8;
}

- (id)pui_UIFontWithDefaultFallbacksForRole:()PosterUIFoundation
{
  v27[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v26[0] = self;
    v26[1] = v4;
    v6 = MEMORY[0x1E695DEC8];
    v7 = v26;
    v8 = 2;
  }

  else
  {
    v27[0] = self;
    v6 = MEMORY[0x1E695DEC8];
    v7 = v27;
    v8 = 1;
  }

  v9 = [v6 arrayWithObjects:v7 count:v8];
  os_unfair_lock_lock(&cachedFontLock);
  v10 = cachedFontWithDefaultFallbacks;
  if (!cachedFontWithDefaultFallbacks)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v12 = cachedFontWithDefaultFallbacks;
    cachedFontWithDefaultFallbacks = dictionary;

    v10 = cachedFontWithDefaultFallbacks;
  }

  v13 = [v10 objectForKeyedSubscript:v9];

  if (v13)
  {
    v14 = [cachedFontWithDefaultFallbacks objectForKeyedSubscript:v9];
    os_unfair_lock_unlock(&cachedFontLock);
  }

  else
  {
    os_unfair_lock_unlock(&cachedFontLock);
    pui_defaultFontFallbacks = [self pui_defaultFontFallbacks];
    v14 = [self pui_fontWithFallbacks:pui_defaultFontFallbacks];

    pui_timeFontIdentifier = [self pui_timeFontIdentifier];
    if (([pui_timeFontIdentifier isEqualToString:@"PRTimeFontIdentifierNewYorkAlpha"] & 1) != 0 || objc_msgSend(pui_timeFontIdentifier, "isEqualToString:", @"PRTimeFontIdentifierSFCondensed"))
    {
      v17 = UIFontNameForPUIFontIdentifier(@"PRTimeFontIdentifierSFArabic");
      v25[0] = v17;
      v18 = UIFontNameForPUIFontIdentifier(@"PRTimeFontIdentifierSFHebrew");
      v25[1] = v18;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];

      v20 = [v14 pui_fontWithFallbacks:v19 beforeFontContainingName:{@"TimesNewRomanPS-BoldMT", v25[0]}];

      v14 = v20;
    }

    v21 = [MEMORY[0x1E69DB878] pui_replacementFallbackFontNamesForRole:v5];
    v22 = v21;
    if (v21 && [v21 count])
    {
      v23 = [v14 pui_replaceFallbackFontNames:v22];

      v14 = v23;
    }

    os_unfair_lock_lock(&cachedFontLock);
    [cachedFontWithDefaultFallbacks setObject:v14 forKeyedSubscript:v9];
    os_unfair_lock_unlock(&cachedFontLock);
  }

  return v14;
}

- (id)pui_defaultFontFallbacks
{
  os_unfair_lock_lock(&cachedDefaultFallbacksLock);
  v2 = cachedDefaultFallbacks;
  if (!cachedDefaultFallbacks)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v4 = cachedDefaultFallbacks;
    cachedDefaultFallbacks = dictionary;

    v2 = cachedDefaultFallbacks;
  }

  v5 = [v2 objectForKeyedSubscript:self];

  if (v5)
  {
    v6 = [cachedDefaultFallbacks objectForKeyedSubscript:self];
  }

  else
  {
    os_unfair_lock_unlock(&cachedDefaultFallbacksLock);
    v7 = CTFontCopyDefaultCascadeListForLanguages(self, 0);
    v6 = [(__CFArray *)v7 copy];
    CFRelease(v7);
    os_unfair_lock_lock(&cachedDefaultFallbacksLock);
    [cachedDefaultFallbacks setObject:v6 forKeyedSubscript:self];
  }

  os_unfair_lock_unlock(&cachedDefaultFallbacksLock);

  return v6;
}

- (id)pui_fontFallbacks
{
  fontDescriptor = [self fontDescriptor];
  v3 = [fontDescriptor objectForKey:*MEMORY[0x1E6965678]];

  if (v3 && [v3 count])
  {
    pui_defaultFontFallbacks = v3;
  }

  else
  {
    pui_defaultFontFallbacks = [self pui_defaultFontFallbacks];
  }

  v5 = pui_defaultFontFallbacks;

  return v5;
}

- (CTFontRef)pui_fontWithFallbacks:()PosterUIFoundation
{
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObject:a3 forKey:*MEMORY[0x1E6965678]];
  v5 = CTFontDescriptorCreateWithAttributes(v4);
  CopyWithAttributes = CTFontCreateCopyWithAttributes(self, 0.0, 0, v5);

  return CopyWithAttributes;
}

- (id)pui_fontWithFallbacks:()PosterUIFoundation beforeFontContainingName:
{
  v41[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  selfCopy = self;
  v24 = a4;
  pui_fontFallbacks = [self pui_fontFallbacks];
  v26 = [pui_fontFallbacks mutableCopy];

  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  if (v24)
  {
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __77__UIFont_PosterUIFoundation__pui_fontWithFallbacks_beforeFontContainingName___block_invoke;
    v31[3] = &unk_1E78543A8;
    v32 = v24;
    v33 = &v34;
    [v26 enumerateObjectsUsingBlock:v31];
  }

  v8 = MEMORY[0x1E695DFD8];
  v9 = *MEMORY[0x1E69DB8B8];
  v41[0] = *MEMORY[0x1E69DB8B8];
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:1];
  v11 = [v8 setWithArray:v10];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v6;
  v12 = [obj countByEnumeratingWithState:&v27 objects:v40 count:16];
  if (v12)
  {
    v13 = *v28;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v27 + 1) + 8 * i);
        v16 = MEMORY[0x1E69DB880];
        v38 = v9;
        v39 = v15;
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
        v18 = [v16 fontDescriptorWithFontAttributes:v17];

        MatchingFontDescriptorsWithOptions = CTFontDescriptorCreateMatchingFontDescriptorsWithOptions();
        firstObject = [MatchingFontDescriptorsWithOptions firstObject];

        if (firstObject)
        {
          [v26 insertObject:firstObject atIndex:v35[3]++];
        }
      }

      v12 = [obj countByEnumeratingWithState:&v27 objects:v40 count:16];
    }

    while (v12);
  }

  v21 = [selfCopy pui_fontWithFallbacks:v26];

  _Block_object_dispose(&v34, 8);

  return v21;
}

- (id)pui_replaceFallbackFontNames:()PosterUIFoundation
{
  v19[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  pui_fontFallbacks = [self pui_fontFallbacks];
  v6 = [pui_fontFallbacks mutableCopy];

  v7 = MEMORY[0x1E695DFD8];
  v19[0] = *MEMORY[0x1E69DB8B8];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  v9 = [v7 setWithArray:v8];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __59__UIFont_PosterUIFoundation__pui_replaceFallbackFontNames___block_invoke;
  v15[3] = &unk_1E78543D0;
  v16 = v4;
  v17 = v9;
  v18 = v6;
  v10 = v6;
  v11 = v9;
  v12 = v4;
  [v10 enumerateObjectsUsingBlock:v15];
  v13 = [self pui_fontWithFallbacks:v10];

  return v13;
}

- (id)pui_timeFontIdentifier
{
  fontName = [self fontName];
  v2 = PUIFontIdentifierForFontName(fontName);

  return v2;
}

- (id)pui_localizedTimeFontName
{
  pui_timeFontIdentifier = [self pui_timeFontIdentifier];
  v3 = pui_timeFontIdentifier;
  if (pui_timeFontIdentifier)
  {
    PUILocalizedDisplayNameForTimeFontIdentifier(pui_timeFontIdentifier);
  }

  else
  {
    [self familyName];
  }
  v4 = ;

  return v4;
}

- (__CFString)pui_postScriptName
{
  v1 = CTFontCopyPostScriptName(self);

  return v1;
}

- (id)pui_referenceURL
{
  fontDescriptor = [self fontDescriptor];
  v2 = CTFontDescriptorCopyAttribute(fontDescriptor, *MEMORY[0x1E6965838]);

  return v2;
}

- (id)pui_referencePathRelativeToBundle:()PosterUIFoundation
{
  bundleURL = [a3 bundleURL];
  v5 = [self pui_referencePathRelativeToDirectoryAtURL:bundleURL];

  return v5;
}

- (id)pui_referencePathRelativeToDirectoryAtURL:()PosterUIFoundation
{
  v4 = a3;
  if ([self pui_isReferenceFileContainedInDirectoryAtURL:v4])
  {
    pui_referenceURL = [self pui_referenceURL];
    path = [pui_referenceURL path];
    path2 = [v4 path];
    if ([path hasPrefix:path2])
    {
      v8 = [path substringFromIndex:{objc_msgSend(path2, "length")}];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (uint64_t)pui_isReferenceFileContainedInBundle:()PosterUIFoundation
{
  bundleURL = [a3 bundleURL];
  v5 = [self pui_isReferenceFileContainedInDirectoryAtURL:bundleURL];

  return v5;
}

- (uint64_t)pui_isReferenceFileContainedInDirectoryAtURL:()PosterUIFoundation
{
  v4 = a3;
  pui_referenceURL = [self pui_referenceURL];
  v6 = pui_referenceURL;
  v7 = 0;
  if (v4 && pui_referenceURL)
  {
    v8 = objc_alloc_init(MEMORY[0x1E696AC08]);
    v11 = 0;
    v9 = [v8 getRelationship:&v11 ofDirectoryAtURL:v4 toItemAtURL:v6 error:0];
    if (v11)
    {
      v7 = 0;
    }

    else
    {
      v7 = v9;
    }
  }

  return v7;
}

- (uint64_t)pui_variantWeight
{
  v28 = *MEMORY[0x1E69E9840];
  pui_cachedVariantWeight = [self pui_cachedVariantWeight];

  if (pui_cachedVariantWeight)
  {
    pui_cachedVariantWeight2 = [self pui_cachedVariantWeight];
    unsignedIntegerValue = [pui_cachedVariantWeight2 unsignedIntegerValue];

    return unsignedIntegerValue;
  }

  else
  {
    v6 = CTFontCopyVariation(self);
    if (v6 && ([MEMORY[0x1E696AD98] numberWithDouble:2003265650.0], v7 = objc_claimAutoreleasedReturnValue(), -[__CFDictionary objectForKeyedSubscript:](v6, "objectForKeyedSubscript:", v7), v8 = objc_claimAutoreleasedReturnValue(), v7, v8))
    {
      [self pui_setCachedVariantWeight:v8];
      unsignedIntegerValue2 = [v8 unsignedIntegerValue];
    }

    else
    {
      v22 = v6;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v10 = CTFontCopyVariationAxesInternal();
      v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v24;
        v14 = *MEMORY[0x1E6965910];
        v15 = *MEMORY[0x1E6965908];
        while (2)
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v24 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v17 = *(*(&v23 + 1) + 8 * i);
            v18 = [v17 objectForKeyedSubscript:v14];
            v19 = v18;
            if (v18)
            {
              if ([v18 unsignedIntegerValue] == 2003265652)
              {
                v20 = [v17 objectForKeyedSubscript:v15];
                if (v20)
                {
                  v21 = v20;
                  [self pui_setCachedVariantWeight:v20];
                  unsignedIntegerValue2 = [v21 unsignedIntegerValue];

                  goto LABEL_18;
                }
              }
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

      [self pui_setCachedVariantWeight:&unk_1F1C926A0];
      unsignedIntegerValue2 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_18:

      v6 = v22;
    }

    return unsignedIntegerValue2;
  }
}

- (uint64_t)pui_variantWeightRange
{
  v28 = *MEMORY[0x1E69E9840];
  pui_minimumAllowedFontWeightFont = [self pui_minimumAllowedFontWeightFont];
  pui_maximumAllowedFontWeightFont = [self pui_maximumAllowedFontWeightFont];
  v4 = pui_maximumAllowedFontWeightFont;
  if (pui_minimumAllowedFontWeightFont && pui_maximumAllowedFontWeightFont)
  {
    v5 = [pui_minimumAllowedFontWeightFont pui_variantWeight] + 1;
    [v4 pui_variantWeight];
  }

  else
  {
    v21 = pui_maximumAllowedFontWeightFont;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v6 = CTFontCopyVariationAxesInternal();
    v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v24;
      v10 = *MEMORY[0x1E6965910];
      v22 = *MEMORY[0x1E6965920];
      v11 = *MEMORY[0x1E6965918];
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v13 = *(*(&v23 + 1) + 8 * i);
          v14 = [v13 objectForKeyedSubscript:v10];
          v15 = v14;
          if (v14 && [v14 unsignedIntegerValue] == 2003265652)
          {
            v16 = [v13 objectForKeyedSubscript:v22];
            v17 = [v13 objectForKeyedSubscript:v11];
            v18 = v17;
            if (v16)
            {
              v19 = v17 == 0;
            }

            else
            {
              v19 = 1;
            }

            if (!v19)
            {
              v5 = [v16 unsignedIntValue] + 1;
              [v18 unsignedIntValue];

              goto LABEL_20;
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v8);
    }

    v5 = 0;
LABEL_20:
    v4 = v21;
  }

  return v5;
}

- (id)pui_UIFontWithVariantWeight:()PosterUIFoundation forRole:
{
  v20[1] = *MEMORY[0x1E69E9840];
  v19 = *MEMORY[0x1E69658F8];
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  v8 = [v6 numberWithDouble:2003265650.0];
  v17 = v8;
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v18 = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v20[0] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];

  v12 = CTFontDescriptorCreateWithAttributes(v11);
  [self pointSize];
  CopyWithAttributes = CTFontCreateCopyWithAttributes(self, v13, 0, v12);
  CFRelease(v12);
  v15 = [(__CTFont *)CopyWithAttributes pui_UIFontWithDefaultFallbacksForRole:v7];

  return v15;
}

@end