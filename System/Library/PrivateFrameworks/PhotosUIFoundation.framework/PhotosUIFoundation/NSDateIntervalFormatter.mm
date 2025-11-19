@interface NSDateIntervalFormatter
@end

@implementation NSDateIntervalFormatter

void __58__NSDateIntervalFormatter_PhotosUICore___px_substitutions__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__NSDateIntervalFormatter_PhotosUICore___px_substitutions__block_invoke_2;
  v6[3] = &unk_1E7BB8178;
  v7 = v2;
  v8 = *(a1 + 32);
  v3 = v2;
  [&unk_1F2BACD80 enumerateKeysAndObjectsUsingBlock:v6];
  v4 = [v3 copy];
  v5 = _px_substitutions_substitutionsByLocaleIdentifier;
  _px_substitutions_substitutionsByLocaleIdentifier = v4;
}

void __58__NSDateIntervalFormatter_PhotosUICore___px_substitutions__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:*(a1 + 48) object:*(a1 + 40) file:@"NSDateIntervalFormatter+PhotosUIFoundation.m" lineNumber:299 description:{@"unsupported substitution key %@", v5}];

      abort();
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(a1 + 32) setObject:v6 forKeyedSubscript:*(*(&v13 + 1) + 8 * i)];
        }

        v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }
}

void __72__NSDateIntervalFormatter_PhotosUICore___px_localizedCapitalizedString___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = a2;
  v11 = *(*(a1 + 56) + 8);
  if (*(v11 + 24) == 1)
  {
    *(v11 + 24) = 0;
    v12 = *(a1 + 32);
    v13 = [v14 capitalizedStringWithLocale:*(a1 + 40)];
    [v12 replaceCharactersInRange:a3 withString:{a4, v13}];
  }

  if ([*(a1 + 48) rangeOfCharacterFromSet:_px_localizedCapitalizedString__wordSeparatorCharacterSet options:0 range:{a3 + a4, a5 + a6 - (a3 + a4)}] != 0x7FFFFFFFFFFFFFFFLL)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }
}

void __72__NSDateIntervalFormatter_PhotosUICore___px_localizedCapitalizedString___block_invoke_2()
{
  v0 = [MEMORY[0x1E696AB08] punctuationCharacterSet];
  v3 = [v0 mutableCopy];

  [v3 removeCharactersInString:@"."];
  v1 = [v3 copy];
  v2 = _px_localizedCapitalizedString__wordSeparatorCharacterSet;
  _px_localizedCapitalizedString__wordSeparatorCharacterSet = v1;
}

uint64_t __72__NSDateIntervalFormatter_PhotosUICore___px_localizedCapitalizedString___block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{@"af", @"ca", @"cs", @"da", @"es", @"fr", @"it", @"nb", @"nl", @"nn", @"pt", @"ru", @"uk", @"vi", 0}];
  v1 = _px_localizedCapitalizedString__languagesWithCustomCapitalization;
  _px_localizedCapitalizedString__languagesWithCustomCapitalization = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void __116__NSDateIntervalFormatter_PhotosUICore__px_attributedStringFromDateInterval_defaultAttributes_emphasizedAttributes___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 replaceOccurrencesOfString:v6 withString:v10 options:0 range:{0, objc_msgSend(v5, "length")}];

  v8 = v10;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0 && v7)
  {
    if ([v10 hasPrefix:@" "])
    {
      v9 = 1;
    }

    else
    {
      v9 = [v10 hasSuffix:@" "];
    }

    *(*(*(a1 + 40) + 8) + 24) = v9;
    v8 = v10;
  }
}

void __116__NSDateIntervalFormatter_PhotosUICore__px_attributedStringFromDateInterval_defaultAttributes_emphasizedAttributes___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 replaceOccurrencesOfString:v3 withString:@" " options:0 range:{0, objc_msgSend(v2, "length")}];
}

uint64_t __116__NSDateIntervalFormatter_PhotosUICore__px_attributedStringFromDateInterval_defaultAttributes_emphasizedAttributes___block_invoke_4(uint64_t a1, uint64_t a2, int a3)
{
  v32 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (a2 + 1 > [*(a1 + 32) length] || (objc_msgSend(px_attributedStringFromDateInterval_defaultAttributes_emphasizedAttributes__decorationCharacterSet, "characterIsMember:", objc_msgSend(*(a1 + 32), "characterAtIndex:", a2)) & 1) == 0)
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v5 = *(a1 + 40);
      v6 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v27;
LABEL_6:
        v9 = 0;
        while (1)
        {
          if (*v27 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v26 + 1) + 8 * v9);
          v11 = [v10 length] + a2;
          if (v11 <= [*(a1 + 32) length])
          {
            v12 = [*(a1 + 32) substringWithRange:{a2, objc_msgSend(v10, "length")}];
            v13 = [v12 isEqualToString:v10];

            if (v13)
            {
              break;
            }
          }

          if (v7 == ++v9)
          {
            v7 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
            if (v7)
            {
              goto LABEL_6;
            }

            goto LABEL_26;
          }
        }

LABEL_27:
        v14 = [v10 length];
        goto LABEL_28;
      }

      goto LABEL_26;
    }
  }

  else if (a2 < 1 || ([px_attributedStringFromDateInterval_defaultAttributes_emphasizedAttributes__decorationCharacterSet characterIsMember:{objc_msgSend(*(a1 + 32), "characterAtIndex:", a2 - 1)}] & 1) == 0)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v5 = *(a1 + 40);
    v15 = [v5 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v23;
LABEL_19:
      v18 = 0;
      while (1)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * v18);
        if ([v10 length] <= a2)
        {
          v19 = [*(a1 + 32) substringWithRange:{a2 - objc_msgSend(v10, "length"), objc_msgSend(v10, "length")}];
          v20 = [v19 isEqualToString:v10];

          if (v20)
          {
            goto LABEL_27;
          }
        }

        if (v16 == ++v18)
        {
          v16 = [v5 countByEnumeratingWithState:&v22 objects:v30 count:16];
          if (v16)
          {
            goto LABEL_19;
          }

          break;
        }
      }
    }

LABEL_26:
    v14 = 0;
LABEL_28:

    return v14;
  }

  return 1;
}

void __116__NSDateIntervalFormatter_PhotosUICore__px_attributedStringFromDateInterval_defaultAttributes_emphasizedAttributes___block_invoke_5(uint64_t a1, void *a2)
{
  v14 = a2;
  v3 = [*(a1 + 32) length];
  if (v3)
  {
    v4 = v3;
    for (i = 0; i != v13; v4 = v13 - i)
    {
      v6 = [*(a1 + 32) rangeOfString:v14 options:385 range:{i, v4}];
      if (v6 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v8 = v6;
      for (j = v7; ; j += v10)
      {
        v10 = (*(*(a1 + 56) + 16))();
        if (!v10)
        {
          break;
        }

        v8 -= v10;
      }

      do
      {
        v11 = j;
        i = j + v8;
        v12 = (*(*(a1 + 56) + 16))();
        j += v12;
      }

      while (v12);
      [*(a1 + 40) setAttributes:*(a1 + 48) range:{v8, v11}];
      v13 = [*(a1 + 32) length];
    }
  }
}

void __116__NSDateIntervalFormatter_PhotosUICore__px_attributedStringFromDateInterval_defaultAttributes_emphasizedAttributes___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    v4 = [MEMORY[0x1E695DFD8] setWithArray:v3];
    v5 = *(a1 + 32);
    v6 = [v5 length];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __116__NSDateIntervalFormatter_PhotosUICore__px_attributedStringFromDateInterval_defaultAttributes_emphasizedAttributes___block_invoke_7;
    v8[3] = &unk_1E7BB80B0;
    v9 = v4;
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v7 = v4;
    [v5 enumerateSubstringsInRange:0 options:v6 usingBlock:{3, v8}];
  }
}

uint64_t __116__NSDateIntervalFormatter_PhotosUICore__px_attributedStringFromDateInterval_defaultAttributes_emphasizedAttributes___block_invoke_8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2 || (result = [px_attributedStringFromDateInterval_defaultAttributes_emphasizedAttributes__decorationCharacterSet characterIsMember:{objc_msgSend(*(a1 + 32), "characterAtIndex:", a2)}], result))
  {
    v7 = a3 + a2 - 1;
    if (v7 >= [*(a1 + 32) length] - 1)
    {
      return 1;
    }

    result = [px_attributedStringFromDateInterval_defaultAttributes_emphasizedAttributes__decorationCharacterSet characterIsMember:{objc_msgSend(*(a1 + 32), "characterAtIndex:", v7)}];
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t __116__NSDateIntervalFormatter_PhotosUICore__px_attributedStringFromDateInterval_defaultAttributes_emphasizedAttributes___block_invoke_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = [*(a1 + 32) isEqualToDictionary:a2];
  if (result)
  {
    result = (*(*(a1 + 56) + 16))();
    if ((result & 1) == 0)
    {
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);

      return [v8 setAttributes:v9 range:{a3, a4}];
    }
  }

  return result;
}

uint64_t __116__NSDateIntervalFormatter_PhotosUICore__px_attributedStringFromDateInterval_defaultAttributes_emphasizedAttributes___block_invoke_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = [*(a1 + 32) containsObject:a2];
  if (result)
  {
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);

    return [v8 setAttributes:v9 range:{a3, a4}];
  }

  return result;
}

void __116__NSDateIntervalFormatter_PhotosUICore__px_attributedStringFromDateInterval_defaultAttributes_emphasizedAttributes___block_invoke_3()
{
  v6 = objc_alloc_init(MEMORY[0x1E696AD48]);
  v0 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  [v6 formUnionWithCharacterSet:v0];

  v1 = [MEMORY[0x1E696AB08] punctuationCharacterSet];
  [v6 formUnionWithCharacterSet:v1];

  v2 = [MEMORY[0x1E696AB08] symbolCharacterSet];
  [v6 formUnionWithCharacterSet:v2];

  v3 = [v6 copy];
  v4 = px_attributedStringFromDateInterval_defaultAttributes_emphasizedAttributes__decorationCharacterSet;
  px_attributedStringFromDateInterval_defaultAttributes_emphasizedAttributes__decorationCharacterSet = v3;

  v5 = px_attributedStringFromDateInterval_defaultAttributes_emphasizedAttributes__decorationWordsByLanguages;
  px_attributedStringFromDateInterval_defaultAttributes_emphasizedAttributes__decorationWordsByLanguages = &unk_1F2BACC40;
}

@end