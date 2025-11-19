@interface UIFont(Variant)
- (id)_fontWithVariantWeight:()Variant;
- (uint64_t)_variantWeight;
@end

@implementation UIFont(Variant)

- (uint64_t)_variantWeight
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = [a1 _cachedVariantWeight];

  if (v2)
  {
    v3 = [a1 _cachedVariantWeight];
    v4 = [v3 unsignedIntegerValue];

    return v4;
  }

  else
  {
    v6 = CTFontCopyVariation(a1);
    v7 = v6;
    if (v6 && ([(__CFDictionary *)v6 objectForKeyedSubscript:&unk_1EFE30328], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v9 = v8;
      [a1 _setCachedVariantWeight:v8];
      v10 = [v9 unsignedIntegerValue];
    }

    else
    {
      v23 = v7;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v11 = CTFontCopyVariationAxes(a1);
      v12 = [(__CFArray *)v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v25;
        v15 = *MEMORY[0x1E6965910];
        v16 = *MEMORY[0x1E6965908];
        while (2)
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v25 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v18 = *(*(&v24 + 1) + 8 * i);
            v19 = [v18 objectForKeyedSubscript:v15];
            v20 = v19;
            if (v19)
            {
              if ([v19 unsignedIntegerValue] == 2003265652)
              {
                v21 = [v18 objectForKeyedSubscript:v16];
                if (v21)
                {
                  v22 = v21;
                  [a1 _setCachedVariantWeight:v21];
                  v10 = [v22 unsignedIntegerValue];

                  goto LABEL_18;
                }
              }
            }
          }

          v13 = [(__CFArray *)v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

      [a1 _setCachedVariantWeight:&unk_1EFE30340];
      v10 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_18:

      v7 = v23;
    }

    return v10;
  }
}

- (id)_fontWithVariantWeight:()Variant
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11 = *MEMORY[0x1E69658F8];
  v9 = &unk_1EFE30328;
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  v10 = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v12[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];

  v5 = [a1 fontDescriptor];
  v6 = [v5 fontDescriptorByAddingAttributes:v4];

  [a1 pointSize];
  v7 = [off_1E70ECC18 fontWithDescriptor:v6 size:?];

  return v7;
}

@end