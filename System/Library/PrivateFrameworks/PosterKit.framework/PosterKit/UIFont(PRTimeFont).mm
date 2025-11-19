@interface UIFont(PRTimeFont)
+ (CTFontRef)pr_fontWithPostScriptName:()PRTimeFont inBundleAtURL:relativePath:;
+ (__CFString)pr_defaultTimeFontIdentifierForRole:()PRTimeFont;
+ (id)pr_defaultTimeFont;
+ (id)pr_defaultTimeFontForRole:()PRTimeFont;
+ (id)pr_downloadableFontWithPostScriptName:()PRTimeFont;
+ (id)pr_fontWithName:()PRTimeFont forRole:includingFallbackFonts:attributes:;
+ (id)pr_fontWithPostScriptName:()PRTimeFont inBundle:relativePath:;
+ (id)pr_fontWithPostScriptName:()PRTimeFont inBundleWithIdentifier:relativePath:;
+ (id)pr_fontWithTimeFontIdentifier:()PRTimeFont forRole:includingFallbackFonts:;
+ (void)pr_clearCachesForInvalidation;
+ (void)pr_replacementFallbackFontNamesForRole:()PRTimeFont;
- (CTFontRef)pr_fontWithAttributes:()PRTimeFont options:;
- (CTFontRef)pr_fontWithFallbacks:()PRTimeFont;
- (CTFontRef)pr_maximumAllowedFontWeightFont;
- (CTFontRef)pr_minimumAllowedFontWeightFont;
- (__CFString)pr_postScriptName;
- (id)pr_defaultFontFallbacks;
- (id)pr_fontFallbacks;
- (id)pr_fontWithDefaultFallbacksForRole:()PRTimeFont;
- (id)pr_fontWithFallbacks:()PRTimeFont beforeFontContainingName:;
- (id)pr_localizedTimeFontName;
- (id)pr_referencePathRelativeToBundle:()PRTimeFont;
- (id)pr_referencePathRelativeToDirectoryAtURL:()PRTimeFont;
- (id)pr_referenceURL;
- (id)pr_replaceFallbackFontNames:()PRTimeFont;
- (id)pr_timeFontIdentifier;
- (uint64_t)pr_isReferenceFileContainedInBundle:()PRTimeFont;
- (uint64_t)pr_isReferenceFileContainedInDirectoryAtURL:()PRTimeFont;
@end

@implementation UIFont(PRTimeFont)

+ (void)pr_clearCachesForInvalidation
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

+ (id)pr_fontWithTimeFontIdentifier:()PRTimeFont forRole:includingFallbackFonts:
{
  v8 = a4;
  v9 = a3;
  v10 = PRFontNameForTimeFontIdentifier(v9);
  v11 = PRFontAttributesForTimeFontIdentifier(v9);

  v12 = [a1 pr_fontWithName:v10 forRole:v8 includingFallbackFonts:a5 attributes:v11];

  return v12;
}

+ (id)pr_fontWithName:()PRTimeFont forRole:includingFallbackFonts:attributes:
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = PRTimeFontIdentifierForFontName(v9);
  v13 = v12;
  if (!v12 || !PRTimeFontIsDownloadable(v12) || ([MEMORY[0x1E69DB878] pr_downloadableFontWithPostScriptName:v9], (v14 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if ([v10 isEqualToString:@"PRPosterRoleIncomingCall"])
    {
      v15 = 132096;
    }

    else
    {
      v15 = 0x20000;
    }

    v16 = CTFontCreateWithNameAndOptions(v9, 12.0, 0, v15);
    if ([v11 count])
    {
      v17 = [(__CTFont *)v16 pr_fontWithAttributes:v11 options:v15];

      v16 = v17;
    }

    if (a5)
    {
      v18 = [(__CTFont *)v16 pr_fontWithDefaultFallbacksForRole:v10];
    }

    else
    {
      v18 = v16;
    }

    v14 = v18;
  }

  return v14;
}

+ (id)pr_fontWithPostScriptName:()PRTimeFont inBundle:relativePath:
{
  v8 = a5;
  v9 = a3;
  v10 = [a4 bundleURL];
  v11 = [a1 pr_fontWithPostScriptName:v9 inBundleAtURL:v10 relativePath:v8];

  return v11;
}

+ (id)pr_fontWithPostScriptName:()PRTimeFont inBundleWithIdentifier:relativePath:
{
  v8 = a3;
  v9 = a5;
  v10 = MEMORY[0x1E69635D0];
  v11 = a4;
  v12 = [[v10 alloc] initWithBundleIdentifier:v11 error:0];

  v13 = [v12 URL];
  if (v13)
  {
    v14 = [a1 pr_fontWithPostScriptName:v8 inBundleAtURL:v13 relativePath:v9];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (CTFontRef)pr_fontWithPostScriptName:()PRTimeFont inBundleAtURL:relativePath:
{
  v20[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_14:
    +[UIFont(PRTimeFont) pr_fontWithPostScriptName:inBundleAtURL:relativePath:];
    if (v9)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  +[UIFont(PRTimeFont) pr_fontWithPostScriptName:inBundleAtURL:relativePath:];
  if (!v8)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (v9)
  {
    goto LABEL_4;
  }

LABEL_15:
  +[UIFont(PRTimeFont) pr_fontWithPostScriptName:inBundleAtURL:relativePath:];
LABEL_4:
  v10 = [v8 URLByAppendingPathComponent:v9];
  v11 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:v10 resolvingAgainstBaseURL:1];
  v12 = [MEMORY[0x1E696AF60] queryItemWithName:@"postscript-name" value:v7];
  v20[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  [v11 setQueryItems:v13];

  v14 = [v11 URL];
  FontsWithURL = CGFontCreateFontsWithURL();
  if (FontsWithURL)
  {
    v16 = FontsWithURL;
    if (CFArrayGetCount(FontsWithURL) == 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v16, 0);
      v18 = CTFontCreateWithGraphicsFont(ValueAtIndex, 12.0, 0, 0);
    }

    else
    {
      v18 = 0;
    }

    CFRelease(v16);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (id)pr_downloadableFontWithPostScriptName:()PRTimeFont
{
  v24[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v23 = *MEMORY[0x1E6965808];
  v24[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  v5 = CTFontDescriptorCreateWithAttributes(v4);
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v17 = 1;
  v6 = dispatch_semaphore_create(0);
  v22 = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
  progressBlock[0] = MEMORY[0x1E69E9820];
  progressBlock[1] = 3221225472;
  progressBlock[2] = __60__UIFont_PRTimeFont__pr_downloadableFontWithPostScriptName___block_invoke;
  progressBlock[3] = &unk_1E7844B60;
  v14 = &v18;
  v15 = v16;
  v8 = v6;
  v13 = v8;
  CTFontDescriptorMatchFontDescriptorsWithProgressHandler(v7, 0, progressBlock);

  v9 = dispatch_time(0, 750000000);
  dispatch_semaphore_wait(v8, v9);
  v10 = 0;
  if (v19[3])
  {
    v10 = [MEMORY[0x1E69DB878] fontWithDescriptor:v5 size:48.0];
  }

  _Block_object_dispose(v16, 8);
  _Block_object_dispose(&v18, 8);

  return v10;
}

+ (id)pr_defaultTimeFont
{
  v2 = [a1 pr_defaultTimeFontIdentifier];
  v3 = [a1 pr_fontWithTimeFontIdentifier:v2];

  return v3;
}

+ (id)pr_defaultTimeFontForRole:()PRTimeFont
{
  v4 = a3;
  v5 = [a1 pr_defaultTimeFontIdentifierForRole:v4];
  v6 = [a1 pr_fontWithTimeFontIdentifier:v5 forRole:v4];

  return v6;
}

+ (__CFString)pr_defaultTimeFontIdentifierForRole:()PRTimeFont
{
  v3 = [a3 isEqual:@"PRPosterRoleIncomingCall"];
  v4 = PRTimeFontIdentifierSFPro;
  if (!v3)
  {
    v4 = PRTimeFontIdentifierSoft;
  }

  v5 = *v4;

  return v5;
}

+ (void)pr_replacementFallbackFontNamesForRole:()PRTimeFont
{
  if ([a3 isEqual:@"PRPosterRoleIncomingCall"])
  {
    return &unk_1F1C6BE90;
  }

  else
  {
    return 0;
  }
}

- (CTFontRef)pr_minimumAllowedFontWeightFont
{
  v1 = [a1 pr_timeFontIdentifier];
  v2 = PRMinimumVariableFontNameForTimeFontIdentifier(v1);

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

- (CTFontRef)pr_maximumAllowedFontWeightFont
{
  v1 = [a1 pr_timeFontIdentifier];
  v2 = PRMaximumVariableFontNameForTimeFontIdentifier(v1);

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

- (CTFontRef)pr_fontWithAttributes:()PRTimeFont options:
{
  v6 = a3;
  CopyWithAttributes = CTFontDescriptorCreateCopyWithAttributes([a1 fontDescriptor], v6);

  v8 = CTFontCreateWithFontDescriptorAndOptions(CopyWithAttributes, 12.0, 0, a4);
  CFRelease(CopyWithAttributes);

  return v8;
}

- (id)pr_fontWithDefaultFallbacksForRole:()PRTimeFont
{
  v27[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v26[0] = a1;
    v26[1] = v4;
    v6 = MEMORY[0x1E695DEC8];
    v7 = v26;
    v8 = 2;
  }

  else
  {
    v27[0] = a1;
    v6 = MEMORY[0x1E695DEC8];
    v7 = v27;
    v8 = 1;
  }

  v9 = [v6 arrayWithObjects:v7 count:v8];
  os_unfair_lock_lock(&cachedFontLock);
  v10 = cachedFontWithDefaultFallbacks;
  if (!cachedFontWithDefaultFallbacks)
  {
    v11 = [MEMORY[0x1E695DF90] dictionary];
    v12 = cachedFontWithDefaultFallbacks;
    cachedFontWithDefaultFallbacks = v11;

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
    v15 = [a1 pr_defaultFontFallbacks];
    v14 = [a1 pr_fontWithFallbacks:v15];

    v16 = [a1 pr_timeFontIdentifier];
    if (([v16 isEqualToString:@"PRTimeFontIdentifierNewYorkAlpha"] & 1) != 0 || objc_msgSend(v16, "isEqualToString:", @"PRTimeFontIdentifierSFCondensed"))
    {
      v17 = PRFontNameForTimeFontIdentifier(@"PRTimeFontIdentifierSFArabic");
      v25[0] = v17;
      v18 = PRFontNameForTimeFontIdentifier(@"PRTimeFontIdentifierSFHebrew");
      v25[1] = v18;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];

      v20 = [v14 pr_fontWithFallbacks:v19 beforeFontContainingName:{@"TimesNewRomanPS-BoldMT", v25[0]}];

      v14 = v20;
    }

    v21 = [MEMORY[0x1E69DB878] pr_replacementFallbackFontNamesForRole:v5];
    v22 = v21;
    if (v21 && [v21 count])
    {
      v23 = [v14 pr_replaceFallbackFontNames:v22];

      v14 = v23;
    }

    os_unfair_lock_lock(&cachedFontLock);
    [cachedFontWithDefaultFallbacks setObject:v14 forKeyedSubscript:v9];
    os_unfair_lock_unlock(&cachedFontLock);
  }

  return v14;
}

- (id)pr_defaultFontFallbacks
{
  os_unfair_lock_lock(&cachedDefaultFallbacksLock);
  v2 = cachedDefaultFallbacks;
  if (!cachedDefaultFallbacks)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    v4 = cachedDefaultFallbacks;
    cachedDefaultFallbacks = v3;

    v2 = cachedDefaultFallbacks;
  }

  v5 = [v2 objectForKeyedSubscript:a1];

  if (v5)
  {
    v6 = [cachedDefaultFallbacks objectForKeyedSubscript:a1];
  }

  else
  {
    os_unfair_lock_unlock(&cachedDefaultFallbacksLock);
    v7 = CTFontCopyDefaultCascadeListForLanguages(a1, 0);
    v6 = [(__CFArray *)v7 copy];
    CFRelease(v7);
    os_unfair_lock_lock(&cachedDefaultFallbacksLock);
    [cachedDefaultFallbacks setObject:v6 forKeyedSubscript:a1];
  }

  os_unfair_lock_unlock(&cachedDefaultFallbacksLock);

  return v6;
}

- (id)pr_fontFallbacks
{
  v2 = [a1 fontDescriptor];
  v3 = [v2 objectForKey:*MEMORY[0x1E6965678]];

  if (v3 && [v3 count])
  {
    v4 = v3;
  }

  else
  {
    v4 = [a1 pr_defaultFontFallbacks];
  }

  v5 = v4;

  return v5;
}

- (CTFontRef)pr_fontWithFallbacks:()PRTimeFont
{
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObject:a3 forKey:*MEMORY[0x1E6965678]];
  v5 = CTFontDescriptorCreateWithAttributes(v4);
  CopyWithAttributes = CTFontCreateCopyWithAttributes(a1, 0.0, 0, v5);

  return CopyWithAttributes;
}

- (id)pr_fontWithFallbacks:()PRTimeFont beforeFontContainingName:
{
  v41[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v23 = a1;
  v24 = a4;
  v7 = [a1 pr_fontFallbacks];
  v26 = [v7 mutableCopy];

  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  if (v24)
  {
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __68__UIFont_PRTimeFont__pr_fontWithFallbacks_beforeFontContainingName___block_invoke;
    v31[3] = &unk_1E7844B88;
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
        v20 = [MatchingFontDescriptorsWithOptions firstObject];

        if (v20)
        {
          [v26 insertObject:v20 atIndex:v35[3]++];
        }
      }

      v12 = [obj countByEnumeratingWithState:&v27 objects:v40 count:16];
    }

    while (v12);
  }

  v21 = [v23 pr_fontWithFallbacks:v26];

  _Block_object_dispose(&v34, 8);

  return v21;
}

- (id)pr_replaceFallbackFontNames:()PRTimeFont
{
  v19[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 pr_fontFallbacks];
  v6 = [v5 mutableCopy];

  v7 = MEMORY[0x1E695DFD8];
  v19[0] = *MEMORY[0x1E69DB8B8];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  v9 = [v7 setWithArray:v8];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __50__UIFont_PRTimeFont__pr_replaceFallbackFontNames___block_invoke;
  v15[3] = &unk_1E7844BB0;
  v16 = v4;
  v17 = v9;
  v18 = v6;
  v10 = v6;
  v11 = v9;
  v12 = v4;
  [v10 enumerateObjectsUsingBlock:v15];
  v13 = [a1 pr_fontWithFallbacks:v10];

  return v13;
}

- (id)pr_timeFontIdentifier
{
  v1 = [a1 fontName];
  v2 = PRTimeFontIdentifierForFontName(v1);

  return v2;
}

- (id)pr_localizedTimeFontName
{
  v2 = [a1 pr_timeFontIdentifier];
  v3 = v2;
  if (v2)
  {
    PRLocalizedDisplayNameForTimeFontIdentifier(v2);
  }

  else
  {
    [a1 familyName];
  }
  v4 = ;

  return v4;
}

- (__CFString)pr_postScriptName
{
  v1 = CTFontCopyPostScriptName(a1);

  return v1;
}

- (id)pr_referenceURL
{
  v1 = [a1 fontDescriptor];
  v2 = CTFontDescriptorCopyAttribute(v1, *MEMORY[0x1E6965838]);

  return v2;
}

- (id)pr_referencePathRelativeToBundle:()PRTimeFont
{
  v4 = a3;
  if (!v4)
  {
    [UIFont(PRTimeFont) pr_referencePathRelativeToBundle:];
  }

  v5 = [v4 bundleURL];
  v6 = [a1 pr_referencePathRelativeToDirectoryAtURL:v5];

  return v6;
}

- (id)pr_referencePathRelativeToDirectoryAtURL:()PRTimeFont
{
  v4 = a3;
  if (!v4)
  {
    [UIFont(PRTimeFont) pr_referencePathRelativeToDirectoryAtURL:];
  }

  if ([a1 pr_isReferenceFileContainedInDirectoryAtURL:v4])
  {
    v5 = [a1 pr_referenceURL];
    v6 = [v5 path];
    v7 = [v4 path];
    if ([v6 hasPrefix:v7])
    {
      v8 = [v6 substringFromIndex:{objc_msgSend(v7, "length")}];
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

- (uint64_t)pr_isReferenceFileContainedInBundle:()PRTimeFont
{
  v4 = [a3 bundleURL];
  v5 = [a1 pr_isReferenceFileContainedInDirectoryAtURL:v4];

  return v5;
}

- (uint64_t)pr_isReferenceFileContainedInDirectoryAtURL:()PRTimeFont
{
  v4 = a3;
  v5 = [a1 pr_referenceURL];
  v6 = v5;
  v7 = 0;
  if (v4 && v5)
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

+ (void)pr_fontWithPostScriptName:()PRTimeFont inBundleAtURL:relativePath:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_4();
  [v0 handleFailureInMethod:@"postScriptName" object:? file:? lineNumber:? description:?];
}

+ (void)pr_fontWithPostScriptName:()PRTimeFont inBundleAtURL:relativePath:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_4();
  [v0 handleFailureInMethod:@"bundleURL" object:? file:? lineNumber:? description:?];
}

+ (void)pr_fontWithPostScriptName:()PRTimeFont inBundleAtURL:relativePath:.cold.3()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_4();
  [v0 handleFailureInMethod:@"bundleRelativePath" object:? file:? lineNumber:? description:?];
}

- (void)pr_referencePathRelativeToBundle:()PRTimeFont .cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_4();
  [v0 handleFailureInMethod:@"bundle != nil" object:? file:? lineNumber:? description:?];
}

- (void)pr_referencePathRelativeToDirectoryAtURL:()PRTimeFont .cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_4();
  [v0 handleFailureInMethod:@"directoryURL != nil" object:? file:? lineNumber:? description:?];
}

@end