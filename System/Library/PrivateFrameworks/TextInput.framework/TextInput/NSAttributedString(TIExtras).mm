@interface NSAttributedString(TIExtras)
+ (id)_ti_decodeWithCoder:()TIExtras forKey:attributeIterator:;
+ (uint64_t)_attributedString:()TIExtras matchesAttributedString:;
+ (uint64_t)_ti_attributedString:()TIExtras matchesAttributedStringIgnoringNullity:;
- (id)_UIKBStringWideAttributeValueForKey:()TIExtras;
- (id)_ti_attributedStringByAppendingAttributedString:()TIExtras;
- (id)_ti_attributedStringByAppendingString:()TIExtras;
- (id)_ti_attributedStringByKeepingAttributes:()TIExtras;
- (id)_ti_attributedStringByRemovingAttributes:()TIExtras;
- (id)_ti_attributedStringWithIterator:()TIExtras;
- (id)_ti_stringByReplacingCharactersInRange:()TIExtras withString:;
- (uint64_t)_ti_attributedSubstringFromIndex:()TIExtras;
- (uint64_t)_ti_attributedSubstringToIndex:()TIExtras;
- (void)_ti_encodeWithCoder:()TIExtras forKey:attributeIterator:;
- (void)_ti_encodeWithCoder:()TIExtras forKey:keepingAttributes:;
- (void)_ti_encodeWithCoder:()TIExtras forKey:removingAttributes:;
- (void)_ti_stringByReplacingOccurrencesOfString:()TIExtras withString:options:range:;
@end

@implementation NSAttributedString(TIExtras)

- (id)_UIKBStringWideAttributeValueForKey:()TIExtras
{
  v4 = a3;
  if ([a1 length])
  {
    v5 = [a1 length];
    v12 = 0;
    v13 = 0;
    v6 = [a1 attribute:v4 atIndex:0 effectiveRange:&v12];
    v7 = v6;
    if (v5 == v13 && v12 == 0)
    {
      v9 = v6;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_ti_attributedStringByKeepingAttributes:()TIExtras
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [a1 mutableCopy];
    v6 = [a1 length];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __72__NSAttributedString_TIExtras___ti_attributedStringByKeepingAttributes___block_invoke;
    v11[3] = &unk_1E6F4BAB8;
    v12 = v4;
    v7 = v5;
    v13 = v7;
    v14 = 0;
    v15 = v6;
    [a1 enumerateAttributesInRange:0 options:v6 usingBlock:{0, v11}];
    v8 = v13;
    v9 = v7;
  }

  else
  {
    v9 = a1;
  }

  return v9;
}

- (id)_ti_attributedStringByRemovingAttributes:()TIExtras
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    v5 = [a1 mutableCopy];
    v6 = [a1 length];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = v4;
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

          [v5 removeAttribute:*(*(&v13 + 1) + 8 * i) range:{0, v6, v13}];
        }

        v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v5 = a1;
  }

  return v5;
}

- (id)_ti_attributedStringByAppendingAttributedString:()TIExtras
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [a1 mutableCopy];
    [v5 appendAttributedString:v4];
  }

  else
  {
    v5 = a1;
  }

  return v5;
}

- (id)_ti_attributedStringByAppendingString:()TIExtras
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = objc_alloc(MEMORY[0x1E696AAB0]);
    v6 = [a1 attributesAtIndex:objc_msgSend(a1 effectiveRange:{"length") - 1, 0}];
    v7 = [v5 initWithString:v4 attributes:v6];

    v8 = [a1 mutableCopy];
    [v8 appendAttributedString:v7];
  }

  else
  {
    v8 = a1;
  }

  return v8;
}

- (uint64_t)_ti_attributedSubstringToIndex:()TIExtras
{
  v5 = [a1 length];
  if (v5 < a3)
  {
    v6 = v5;
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695DA20];
    v9 = _NSMethodExceptionProem();
    [v7 raise:v8 format:{@"%@: Index %lu out of bounds; string length %lu", v9, a3, v6}];
  }

  return [a1 attributedSubstringFromRange:{0, a3}];
}

- (uint64_t)_ti_attributedSubstringFromIndex:()TIExtras
{
  v5 = [a1 length];
  v6 = v5 - a3;
  if (v5 < a3)
  {
    v7 = v5;
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695DA20];
    v10 = _NSMethodExceptionProem();
    [v8 raise:v9 format:{@"%@: Index %lu out of bounds; string length %lu", v10, a3, v7}];
  }

  return [a1 attributedSubstringFromRange:{a3, v6}];
}

- (id)_ti_stringByReplacingCharactersInRange:()TIExtras withString:
{
  v8 = a5;
  v9 = [a1 mutableCopy];
  [v9 replaceCharactersInRange:a3 withAttributedString:{a4, v8}];

  return v9;
}

- (void)_ti_stringByReplacingOccurrencesOfString:()TIExtras withString:options:range:
{
  v12 = a3;
  v13 = a4;
  if (!v13)
  {
    v14 = MEMORY[0x1E695DF30];
    v15 = *MEMORY[0x1E695D940];
    v16 = _NSMethodExceptionProem();
    [v14 raise:v15 format:{@"%@: nil argument", v16}];
  }

  v17 = [a1 mutableCopy];
  if ([v17 _ti_replaceOccurrencesOfString:v12 withString:v13 options:a5 range:{a6, a7}])
  {
    v18 = v17;
  }

  else
  {
    v18 = a1;
  }

  v19 = v18;

  return v18;
}

- (id)_ti_attributedStringWithIterator:()TIExtras
{
  v4 = a3;
  v5 = [a1 mutableCopy];
  v6 = [a1 length];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__NSAttributedString_TIExtras___ti_attributedStringWithIterator___block_invoke;
  v12[3] = &unk_1E6F4BA68;
  v14 = v4;
  v7 = v5;
  v13 = v7;
  v8 = v4;
  [a1 enumerateAttributesInRange:0 options:v6 usingBlock:{0, v12}];
  v9 = v13;
  v10 = v7;

  return v7;
}

- (void)_ti_encodeWithCoder:()TIExtras forKey:attributeIterator:
{
  v8 = a4;
  v9 = a3;
  v10 = [a1 _ti_attributedStringWithIterator:a5];
  [v9 encodeObject:v10 forKey:v8];
}

- (void)_ti_encodeWithCoder:()TIExtras forKey:keepingAttributes:
{
  v8 = a4;
  v9 = a3;
  v10 = [a1 _ti_attributedStringByKeepingAttributes:a5];
  [v9 encodeObject:v10 forKey:v8];
}

- (void)_ti_encodeWithCoder:()TIExtras forKey:removingAttributes:
{
  v8 = a4;
  v9 = a3;
  v10 = [a1 _ti_attributedStringByRemovingAttributes:a5];
  [v9 encodeObject:v10 forKey:v8];
}

+ (uint64_t)_ti_attributedString:()TIExtras matchesAttributedStringIgnoringNullity:
{
  v5 = a3;
  v6 = a4;
  if ([v5 length] || objc_msgSend(v6, "length"))
  {
    if (v6)
    {
      v7 = [v5 isEqualToAttributedString:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

+ (uint64_t)_attributedString:()TIExtras matchesAttributedString:
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 | v6)
  {
    v8 = 0;
    if (v5 && v6)
    {
      v8 = [v5 isEqualToAttributedString:v6];
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

+ (id)_ti_decodeWithCoder:()TIExtras forKey:attributeIterator:
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [v9 decodeObjectOfClass:objc_opt_class() forKey:v8];

  v11 = [v10 _ti_attributedStringWithIterator:v7];

  return v11;
}

@end