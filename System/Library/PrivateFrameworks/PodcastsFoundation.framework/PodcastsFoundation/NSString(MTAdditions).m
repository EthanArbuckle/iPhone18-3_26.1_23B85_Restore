@interface NSString(MTAdditions)
+ (id)stringWithDuration:()MTAdditions unitsStyle:includeTimeRemainingPhrase:;
+ (uint64_t)mt_isEnglish;
+ (uint64_t)mt_isJapanese;
+ (uint64_t)prettyShortStringWithDuration:()MTAdditions includeTimeRemainingPhrase:abbreviated:;
- (__CFString)stringByRemovingNewlineCharacters;
- (id)cleanedTitleStringWithPrefix:()MTAdditions;
- (id)pf_localizedStringByFoldingWithOptions:()MTAdditions;
- (id)stringBySmartlyStrippingHTML;
- (id)words;
@end

@implementation NSString(MTAdditions)

- (id)stringBySmartlyStrippingHTML
{
  v1 = [a1 stringByRemovingNewlineCharacters];
  v2 = [v1 stringByReplacingOccurrencesOfString:@"<br>" withString:@"\n<br>"];

  v3 = [v2 stringByReplacingOccurrencesOfString:@"<br/>" withString:@"\n"];

  v4 = [v3 stringByReplacingOccurrencesOfString:@"<p>" withString:@"\n\n<p>"];

  v5 = [v4 stringByStrippingHTML];

  return v5;
}

- (__CFString)stringByRemovingNewlineCharacters
{
  v24[2] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = [MEMORY[0x1E696AB08] newlineCharacterSet];
    v3 = [a1 componentsSeparatedByCharactersInSet:v2];

    v4 = [v3 count];
    if (v4 == 1)
    {
      v5 = [v3 objectAtIndex:0];
    }

    else
    {
      v6 = v4;
      v7 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
      v8 = [v3 objectAtIndex:0];
      v9 = [(__CFString *)v8 length];
      v10 = &stru_1F548B930;
      v22 = v8;
      if (v9)
      {
        v10 = v8;
      }

      v5 = v10;
      for (i = 1; i != v6; ++i)
      {
        v12 = [v3 objectAtIndex:{i, v22}];
        if (-[__CFString length](v5, "length") && [v12 length])
        {
          v13 = [(__CFString *)v5 characterAtIndex:[(__CFString *)v5 length]- 1];
          v14 = [v12 characterAtIndex:0];
          if ([v7 characterIsMember:v13] && objc_msgSend(v7, "characterIsMember:", v14))
          {
            v15 = [(__CFString *)v5 stringByTrimmingCharactersInSet:v7];
            v16 = [v12 stringByTrimmingCharactersInSet:v7];
            v24[0] = v15;
            v24[1] = v16;
            v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
            v18 = [v17 componentsJoinedByString:@" "];

            v5 = v15;
          }

          else if ([v7 characterIsMember:v13] & 1) != 0 || (objc_msgSend(v7, "characterIsMember:", v14))
          {
            v18 = [(__CFString *)v5 stringByAppendingString:v12];
          }

          else
          {
            v23[0] = v5;
            v23[1] = v12;
            v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
            v18 = [(__CFString *)v19 componentsJoinedByString:@" "];

            v5 = v19;
          }

          v5 = v18;
        }
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)cleanedTitleStringWithPrefix:()MTAdditions
{
  v4 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__0;
  v25 = __Block_byref_object_dispose__0;
  v5 = a1;
  v26 = v5;
  if (v4)
  {
    v6 = v5;
    v7 = [v5 length];
    if (v7 > [v4 length])
    {
      v8 = [v4 words];
      v20[0] = 0;
      v20[1] = v20;
      v20[2] = 0x2020000000;
      v20[3] = 0;
      v19[0] = 0;
      v19[1] = v19;
      v19[2] = 0x3010000000;
      v19[4] = 0;
      v19[5] = 0;
      v19[3] = "";
      v9 = [v6 length];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __54__NSString_MTAdditions__cleanedTitleStringWithPrefix___block_invoke;
      v13[3] = &unk_1E8569C90;
      v10 = v8;
      v16 = v20;
      v17 = &v21;
      v14 = v10;
      v15 = v6;
      v18 = v19;
      [v6 enumerateSubstringsInRange:0 options:v9 usingBlock:{1027, v13}];

      _Block_object_dispose(v19, 8);
      _Block_object_dispose(v20, 8);
    }
  }

  v11 = v22[5];
  _Block_object_dispose(&v21, 8);

  return v11;
}

- (id)words
{
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = [a1 length];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __30__NSString_MTAdditions__words__block_invoke;
  v6[3] = &unk_1E8569CB8;
  v4 = v2;
  v7 = v4;
  [a1 enumerateSubstringsInRange:0 options:v3 usingBlock:{1027, v6}];

  return v4;
}

+ (uint64_t)prettyShortStringWithDuration:()MTAdditions includeTimeRemainingPhrase:abbreviated:
{
  if (a4)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  return [a1 stringWithDuration:v5 unitsStyle:a3 includeTimeRemainingPhrase:?];
}

+ (id)stringWithDuration:()MTAdditions unitsStyle:includeTimeRemainingPhrase:
{
  v8 = a2 >= 0.0 && a2 < 1.0;
  v9 = a2;
  if (v8)
  {
    v9 = 1;
  }

  v10 = v9 / 60 % 60;
  if (v9 % 60 > 29)
  {
    v11 = v10 + 1;
    v12 = v10 == -1;
    v13 = 60 * v11 + 3600 * (v9 / 3600);
    v14 = 96;
    if ((v9 + 3599) > 0x1C1E || !v12)
    {
      goto LABEL_16;
    }

LABEL_26:
    v22 = 0;
    goto LABEL_27;
  }

  v14 = 96;
  if ((v9 + 3599) <= 0x1C1E && !v10)
  {
    if (v9 % 60 < 1)
    {
      goto LABEL_26;
    }

    v14 = 224;
  }

  v13 = v9;
LABEL_16:
  if (stringWithDuration_unitsStyle_includeTimeRemainingPhrase__onceToken != -1)
  {
    +[NSString(MTAdditions) stringWithDuration:unitsStyle:includeTimeRemainingPhrase:];
  }

  v15 = stringWithDuration_unitsStyle_includeTimeRemainingPhrase__formatters;
  objc_sync_enter(v15);
  v16 = stringWithDuration_unitsStyle_includeTimeRemainingPhrase__formatters;
  v17 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v18 = [v16 objectForKeyedSubscript:v17];

  if (!v18)
  {
    v18 = objc_alloc_init(MEMORY[0x1E696AB70]);
    [v18 setUnitsStyle:a4];
    [v18 setMaximumUnitCount:2];
    v19 = stringWithDuration_unitsStyle_includeTimeRemainingPhrase__formatters;
    v20 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    [v19 setObject:v18 forKeyedSubscript:v20];
  }

  objc_sync_exit(v15);

  v21 = v18;
  objc_sync_enter(v21);
  [v21 setAllowedUnits:v14];
  [v21 setIncludesTimeRemainingPhrase:a5];
  v22 = [v21 stringFromTimeInterval:v13];
  objc_sync_exit(v21);

  if (a4 == 2)
  {
    v23 = [v22 stringByReplacingOccurrencesOfString:@" withString:{", &stru_1F548B930}];

    v22 = v23;
  }

  if (a5 && [a1 mt_isEnglish])
  {
    v24 = [v22 stringByReplacingOccurrencesOfString:@"remaining" withString:@"left"];

    v22 = v24;
  }

LABEL_27:

  return v22;
}

+ (uint64_t)mt_isEnglish
{
  if (mt_isEnglish_onceToken != -1)
  {
    +[NSString(MTAdditions) mt_isEnglish];
  }

  return mt_isEnglish_isEnglish;
}

+ (uint64_t)mt_isJapanese
{
  if (mt_isJapanese_onceToken != -1)
  {
    +[NSString(MTAdditions) mt_isJapanese];
  }

  return mt_isJapanese_isJapanese;
}

- (id)pf_localizedStringByFoldingWithOptions:()MTAdditions
{
  v5 = [MEMORY[0x1E695DF58] currentLocale];
  v6 = [a1 stringByFoldingWithOptions:a3 locale:v5];

  return v6;
}

@end