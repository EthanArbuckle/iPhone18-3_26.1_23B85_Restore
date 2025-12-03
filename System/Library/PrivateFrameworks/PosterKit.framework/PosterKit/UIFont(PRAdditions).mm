@interface UIFont(PRAdditions)
- (id)pr_fontWithVariantWeight:()PRAdditions forRole:;
- (uint64_t)pr_variantWeight;
- (uint64_t)pr_variantWeightRange;
@end

@implementation UIFont(PRAdditions)

- (uint64_t)pr_variantWeight
{
  v28 = *MEMORY[0x1E69E9840];
  pr_cachedVariantWeight = [self pr_cachedVariantWeight];

  if (pr_cachedVariantWeight)
  {
    pr_cachedVariantWeight2 = [self pr_cachedVariantWeight];
    unsignedIntegerValue = [pr_cachedVariantWeight2 unsignedIntegerValue];

    return unsignedIntegerValue;
  }

  else
  {
    v6 = CTFontCopyVariation(self);
    if (v6 && ([MEMORY[0x1E696AD98] numberWithDouble:2003265650.0], v7 = objc_claimAutoreleasedReturnValue(), -[__CFDictionary objectForKeyedSubscript:](v6, "objectForKeyedSubscript:", v7), v8 = objc_claimAutoreleasedReturnValue(), v7, v8))
    {
      [self pr_setCachedVariantWeight:v8];
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
                  [self pr_setCachedVariantWeight:v20];
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

      [self pr_setCachedVariantWeight:&unk_1F1C6B908];
      unsignedIntegerValue2 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_18:

      v6 = v22;
    }

    return unsignedIntegerValue2;
  }
}

- (uint64_t)pr_variantWeightRange
{
  v28 = *MEMORY[0x1E69E9840];
  pr_minimumAllowedFontWeightFont = [self pr_minimumAllowedFontWeightFont];
  pr_maximumAllowedFontWeightFont = [self pr_maximumAllowedFontWeightFont];
  v4 = pr_maximumAllowedFontWeightFont;
  if (pr_minimumAllowedFontWeightFont && pr_maximumAllowedFontWeightFont)
  {
    pr_variantWeight = [pr_minimumAllowedFontWeightFont pr_variantWeight];
    [v4 pr_variantWeight];
  }

  else
  {
    v21 = pr_maximumAllowedFontWeightFont;
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
              pr_variantWeight = [v16 unsignedIntValue];
              [v18 unsignedIntValue];

              goto LABEL_20;
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v8);
    }

    pr_variantWeight = 0;
LABEL_20:
    v4 = v21;
  }

  return pr_variantWeight;
}

- (id)pr_fontWithVariantWeight:()PRAdditions forRole:
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
  v15 = [(__CTFont *)CopyWithAttributes pr_fontWithDefaultFallbacksForRole:v7];

  return v15;
}

@end