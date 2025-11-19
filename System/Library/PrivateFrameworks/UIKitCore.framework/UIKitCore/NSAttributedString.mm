@interface NSAttributedString
- (id)_ui_fontsInRange:(uint64_t)a3 usingDefaultFont:(void *)a4;
- (id)_ui_synthesizeAttributedSubstringFromRange:(uint64_t)a3 usingDefaultAttributes:(void *)a4;
@end

@implementation NSAttributedString

void __93__NSAttributedString_UIKitAdditions_Internal___ui_attributedStringAdjustedToTraitCollection___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v20 = a2;
  v7 = [v20 objectForKeyedSubscript:*off_1E70EC978];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [v20 objectForKeyedSubscript:*off_1E70EC918];
  }

  v10 = v9;

  v11 = [v10 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:*(a1 + 32)];
  v12 = v11;
  if (v10)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13 && ([v10 isEqual:v11] & 1) == 0)
  {
    v14 = *(*(a1 + 48) + 8);
    v15 = *(v14 + 40);
    if (v15)
    {
      v16 = v15;
      v17 = *(v14 + 40);
      *(v14 + 40) = v16;
    }

    else
    {
      v18 = [*(a1 + 40) mutableCopy];
      v19 = *(*(a1 + 48) + 8);
      v17 = *(v19 + 40);
      *(v19 + 40) = v18;
    }

    [*(*(*(a1 + 48) + 8) + 40) addAttribute:*off_1E70EC918 value:v12 range:{a3, a4}];
  }
}

void __65__NSAttributedString_UIKitAdditions_Internal___ui_containsTables__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a2;
  if (objc_opt_respondsToSelector())
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = [v7 textBlocks];
    v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(v8);
          }

          if ([*(*(&v13 + 1) + 8 * i) isMemberOfClass:*(a1 + 40)])
          {
            *(*(*(a1 + 32) + 8) + 24) = 1;
            *a5 = 1;
            goto LABEL_12;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }
}

- (id)_ui_fontsInRange:(uint64_t)a3 usingDefaultFont:(void *)a4
{
  v7 = a4;
  if (a1)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v15 = 0;
    v16 = 0;
    v9 = [a1 length];
    if (v9 >= a2 + a3)
    {
      v10 = a2 + a3;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      v11 = 0;
      v12 = *off_1E70EC918;
      do
      {
        v13 = [a1 attribute:v12 atIndex:v11 effectiveRange:&v15];
        if (!v13)
        {
          v13 = v7;
        }

        [v8 addObject:v13];
        v15 += v16;
        v16 = 0;

        v11 = v15;
      }

      while (v16 + v15 < v10);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_ui_synthesizeAttributedSubstringFromRange:(uint64_t)a3 usingDefaultAttributes:(void *)a4
{
  if (a1)
  {
    v7 = MEMORY[0x1E696AD40];
    v8 = a4;
    v9 = [v7 alloc];
    v10 = [a1 string];
    v11 = [v9 initWithString:v10 attributes:v8];

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __117__NSAttributedString_NSAttributedStringAdditions___ui_synthesizeAttributedSubstringFromRange_usingDefaultAttributes___block_invoke;
    v14[3] = &unk_1E70F30C8;
    v12 = v11;
    v15 = v12;
    [a1 enumerateAttributesInRange:a2 options:a3 usingBlock:{0, v14}];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void __102__NSAttributedString_UINSItemProvider___objectWithItemProviderFileURL_typeIdentifier_isInPlace_error___block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[6];
  v4 = *(a1[5] + 8);
  obj = *(v4 + 40);
  v5 = [v3 _objectWithRTFDAtURL:a2 userInfo:MEMORY[0x1E695E0F8] error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[4] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

uint64_t __67__NSAttributedString__UILabelContentAdditions__containsAttributes___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (a2)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    *a5 = 1;
  }

  return result;
}

void __80__NSAttributedString__UILabelContentAdditions__supportedMonochromaticTreatment___block_invoke(void *a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v9 = a2;
  if (v9)
  {
    if (a1[6] == a3 && a1[7] == a4)
    {
      v13 = v9;
      v11 = v9;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v11 isEqual:a1[4]])
        {
          v12 = 1;
        }

        else
        {
          v12 = [v11 _isDynamicTintColor];
        }

        *(*(a1[5] + 8) + 24) = v12;
      }

      if ((*(*(a1[5] + 8) + 24) & 1) == 0)
      {
        *a5 = 1;
      }

      v9 = v13;
    }
  }
}

@end