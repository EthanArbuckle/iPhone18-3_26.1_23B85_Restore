@interface NSString(CRStringUtilities)
- (id)_crArrayOfComposedCharacters;
- (id)_crReplacedUkrainianApostrophes;
- (id)_crStringByRemovingInvalidArabicDiacritics;
- (id)_crStringByRemovingParenthesizedText;
- (id)_crStringByReplacingCharactersInSet:()CRStringUtilities withString:;
- (id)_crStringByReversingComposedCharacterSequences;
- (uint64_t)_crContainsText;
- (uint64_t)_crConvertToUnicode32;
- (uint64_t)_crCountConsecutiveCharactersAtIndex:()CRStringUtilities fromSet:;
- (uint64_t)_crEndsWithHyphen;
- (uint64_t)_crIsAllCaps;
- (uint64_t)_crStartsWithLowercase;
- (uint64_t)_crStartsWithUppercase;
@end

@implementation NSString(CRStringUtilities)

- (uint64_t)_crConvertToUnicode32
{
  if ([a1 length] == 1)
  {
    return [a1 characterAtIndex:0];
  }

  if ([a1 length] != 2)
  {
    return 0;
  }

  v3 = [a1 characterAtIndex:0];
  return ([a1 characterAtIndex:1] + (v3 << 10) - 56613888);
}

- (uint64_t)_crContainsText
{
  v2 = [MEMORY[0x1E696AB08] letterCharacterSet];
  v3 = [a1 _crContainsCharactersInSet:v2];

  return v3;
}

- (uint64_t)_crStartsWithUppercase
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [a1 length];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__NSString_CRStringUtilities___crStartsWithUppercase__block_invoke;
  v5[3] = &unk_1E7BC1FB8;
  v5[4] = &v6;
  [a1 enumerateSubstringsInRange:0 options:v2 usingBlock:{2, v5}];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (uint64_t)_crStartsWithLowercase
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [a1 length];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__NSString_CRStringUtilities___crStartsWithLowercase__block_invoke;
  v5[3] = &unk_1E7BC1FB8;
  v5[4] = &v6;
  [a1 enumerateSubstringsInRange:0 options:v2 usingBlock:{2, v5}];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (uint64_t)_crIsAllCaps
{
  v2 = [a1 uppercaseString];
  if ([v2 isEqualToString:a1])
  {
    v3 = [a1 lowercaseString];
    v4 = [v3 isEqualToString:a1] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (uint64_t)_crEndsWithHyphen
{
  if (qword_1ED95FEB8 != -1)
  {
    dispatch_once(&qword_1ED95FEB8, &__block_literal_global_8);
  }

  if (![a1 length])
  {
    return 0;
  }

  v2 = [a1 stringByTrimmingCharactersInSet:_MergedGlobals_15];
  v3 = [a1 hasSuffix:v2] ^ 1;

  return v3;
}

- (uint64_t)_crCountConsecutiveCharactersAtIndex:()CRStringUtilities fromSet:
{
  v6 = a4;
  if ([a1 length] <= a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    do
    {
      if (![v6 characterIsMember:{objc_msgSend(a1, "characterAtIndex:", a3)}])
      {
        break;
      }

      ++v7;
      ++a3;
    }

    while (a3 < [a1 length]);
  }

  return v7;
}

- (id)_crStringByReplacingCharactersInSet:()CRStringUtilities withString:
{
  v6 = a4;
  v7 = [a1 componentsSeparatedByCharactersInSet:a3];
  v8 = [v7 componentsJoinedByString:v6];

  return v8;
}

- (id)_crArrayOfComposedCharacters
{
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = [a1 length];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__NSString_CRStringUtilities___crArrayOfComposedCharacters__block_invoke;
  v6[3] = &unk_1E7BC2828;
  v4 = v2;
  v7 = v4;
  [a1 enumerateSubstringsInRange:0 options:v3 usingBlock:{2, v6}];

  return v4;
}

- (id)_crReplacedUkrainianApostrophes
{
  if ([a1 length] > 2)
  {
    v3 = [a1 mutableCopy];
    if (([a1 length] - 3) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v4 = 1;
      do
      {
        v5 = [v3 characterAtIndex:v4 - 1];
        v6 = [v3 characterAtIndex:v4];
        v7 = v4 + 1;
        v8 = [v3 characterAtIndex:v4 + 1];
        if (v6 == 39 && (v5 - 1024) <= 0x12F && (v8 - 1024) <= 0x12F)
        {
          [v3 replaceCharactersInRange:v4 withString:{1, @"ʼ"}];
        }

        ++v4;
      }

      while (v7 < [a1 length] - 1);
    }

    v2 = [MEMORY[0x1E696AEC0] stringWithString:v3];
  }

  else
  {
    v2 = a1;
  }

  return v2;
}

- (id)_crStringByRemovingInvalidArabicDiacritics
{
  v55 = *MEMORY[0x1E69E9840];
  if ([a1 length] <= 1)
  {
    v45 = a1;
    goto LABEL_60;
  }

  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = 0x1E696A000uLL;
  if ([a1 length])
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v53 = [a1 characterAtIndex:v6];
      v7 = [*(v4 + 2824) _crBasicArabicCharacterSet];
      if ([v7 characterIsMember:v53])
      {
        v8 = 1;
      }

      else
      {
        v9 = [*(v4 + 2824) _crArabicDiacriticCharacterSet];
        v8 = [v9 characterIsMember:v53];

        v4 = 0x1E696A000;
      }

      if ((v5 & v8) == 1)
      {
        v10 = [MEMORY[0x1E696AEC0] stringWithCharacters:&v53 length:1];
        [v3 appendString:v10];
      }

      else
      {
        if ([v3 length])
        {
          v11 = [v3 copy];
          [v2 addObject:v11];
        }

        v10 = [MEMORY[0x1E696AD60] stringWithCharacters:&v53 length:1];
        [v3 setString:v10];
      }

      ++v6;
      v5 = v8;
    }

    while (v6 < [a1 length]);
  }

  if ([v3 length])
  {
    v12 = [v3 copy];
    [v2 addObject:v12];
  }

  v38 = v3;
  v45 = [MEMORY[0x1E696AD60] string];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v2;
  v41 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (v41)
  {
    v40 = *v50;
    v13 = 32;
    do
    {
      v14 = 0;
      do
      {
        if (*v50 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v42 = v14;
        v15 = *(*(&v49 + 1) + 8 * v14);
        v16 = [MEMORY[0x1E696AB08] _crBasicArabicCharacterSet];
        v48 = [v16 characterIsMember:v13];

        v17 = [MEMORY[0x1E696AB08] _crArabicDiacriticCharacterSet];
        v18 = [v17 characterIsMember:v13];

        if ([v15 length])
        {
          v19 = 0;
          v20 = -1;
          v21 = v13;
          while (1)
          {
            v13 = [v15 characterAtIndex:v19];
            v22 = [MEMORY[0x1E696AB08] _crBasicArabicCharacterSet];
            v23 = [v22 characterIsMember:v13];

            v24 = [MEMORY[0x1E696AB08] _crArabicDiacriticCharacterSet];
            v25 = [v24 characterIsMember:v13];

            v26 = [MEMORY[0x1E696AB08] _crArabicTanweenDiacriticCharacterSet];
            v27 = [v26 characterIsMember:v13];

            if (((v19 != 0) & (v48 | v18)) == 0)
            {
              if (v25)
              {
                break;
              }
            }

            if (v27 && v19 < [v15 length] - 1)
            {
              if (v19 != [v15 length] - 2 || v13 != 1611 || objc_msgSend(v15, "characterAtIndex:", v19 + 1) != 1575)
              {
                break;
              }

              v28 = 0;
              v29 = 1611;
            }

            else
            {
              v28 = v13 == 1617;
              v29 = v13;
              if (v19 == 1 && v13 == 1617)
              {
                break;
              }
            }

            v46 = v28;
            v47 = v29;
            if (v19 < [v15 length] - 1 && (v13 == 1609 || v13 == 1577))
            {
              v43 = [v15 length];
              v30 = [v15 characterAtIndex:{objc_msgSend(v15, "length") - 1}];
              if (v19 + 1 < [v15 length])
              {
                v44 = v43 - (v30 == 1569);
                v31 = [MEMORY[0x1E696AB08] _crBasicArabicCharacterSet];
                v32 = [v15 rangeOfCharacterFromSet:v31 options:2 range:{v19 + 1, v20 + v44}];

                if (v32 != 0x7FFFFFFFFFFFFFFFLL)
                {
                  break;
                }
              }
            }

            if (v13 == v21)
            {
              switch(v21)
              {
                case 0x650u:
                  v13 = 1613;
                  goto LABEL_54;
                case 0x64Fu:
                  v13 = 1612;
                  goto LABEL_54;
                case 0x64Eu:
                  v13 = 1611;
LABEL_54:
                  v53 = v13;
                  [v45 replaceCharactersInRange:objc_msgSend(v45 withCharacters:"length") - 1 length:{1, &v53, 1}];
                  v25 = v18;
                  goto LABEL_35;
              }

              if ((v18 & v25 & 1) == 0)
              {
LABEL_51:
                [v45 appendFormat:@"%C", v47];
                v48 = v23;
                goto LABEL_35;
              }
            }

            else
            {
              if ((v18 & v25 & 1) == 0)
              {
                goto LABEL_51;
              }

              v33 = [MEMORY[0x1E696AB08] _crArabicCombiningDiacriticCharacterSet];
              v34 = [v33 characterIsMember:v13];

              if (v21 == 1617 && (v34 & 1) != 0)
              {
                goto LABEL_51;
              }

              v35 = [MEMORY[0x1E696AB08] _crArabicCombiningDiacriticCharacterSet];
              v36 = [v35 characterIsMember:v21];

              if ((v46 & v36) == 1)
              {
                goto LABEL_51;
              }
            }

            v25 = 1;
LABEL_34:
            v13 = v21;
LABEL_35:
            ++v19;
            --v20;
            v21 = v13;
            v18 = v25;
            if (v19 >= [v15 length])
            {
              goto LABEL_57;
            }
          }

          v25 = v18;
          goto LABEL_34;
        }

LABEL_57:
        v14 = v42 + 1;
      }

      while (v42 + 1 != v41);
      v41 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
    }

    while (v41);
  }

LABEL_60:

  return v45;
}

- (id)_crStringByRemovingParenthesizedText
{
  if (a1 && [a1 length] > 1)
  {
    if (qword_1ED95FEC8 != -1)
    {
      dispatch_once(&qword_1ED95FEC8, &__block_literal_global_32);
    }

    v2 = [a1 mutableCopy];
    v4 = [v2 rangeOfCharacterFromSet:qword_1ED95FEC0 options:0 range:{0, objc_msgSend(v2, "length")}];
    if (v4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = v4;
      v6 = 0;
      do
      {
        if (v5 == [v2 length] - 1)
        {
          break;
        }

        v7 = [v2 characterAtIndex:v5];
        v11 = 0;
        if ([@"([{<（［｛＜" "length")]
        {
          v8 = 0;
          do
          {
            if ([@"([{<（［｛＜" characterAtIndex:v8) == v7]
            {
              v11 = objc_msgSend(@"]}>）］｝＞"), "characterAtIndex:", v8);
            }

            ++v8;
          }

          while (v8 < [@"([{<（［｛＜" "length")];
        }

        v9 = [MEMORY[0x1E696AEC0] stringWithCharacters:&v11 length:1];
        v10 = [v2 rangeOfString:v9 options:0 range:{v5 + 1, objc_msgSend(v2, "length") + ~v5}];

        if (v10 == 0x7FFFFFFFFFFFFFFFLL)
        {
          ++v6;
        }

        else
        {
          [v2 deleteCharactersInRange:{v5, v10 - v5 + 1}];
        }

        v5 = [v2 rangeOfCharacterFromSet:qword_1ED95FEC0 options:0 range:{v6, objc_msgSend(v2, "length") - v6}];
      }

      while (v5 != 0x7FFFFFFFFFFFFFFFLL);
    }
  }

  else
  {
    v2 = [a1 copy];
  }

  return v2;
}

- (id)_crStringByReversingComposedCharacterSequences
{
  v2 = [MEMORY[0x1E696AD60] stringWithCapacity:{objc_msgSend(a1, "length")}];
  v3 = [a1 length];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __77__NSString_CRStringUtilities___crStringByReversingComposedCharacterSequences__block_invoke;
  v7[3] = &unk_1E7BC2828;
  v8 = v2;
  v4 = v2;
  [a1 enumerateSubstringsInRange:0 options:v3 usingBlock:{258, v7}];
  v5 = [v4 copy];

  return v5;
}

@end