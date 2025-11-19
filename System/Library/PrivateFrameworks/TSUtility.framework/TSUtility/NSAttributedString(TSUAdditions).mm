@interface NSAttributedString(TSUAdditions)
+ (uint64_t)tsu_carriageReturnAttributedString;
- (id)tsu_stringWithoutAttachments;
- (uint64_t)tsu_RTFDFromRange:()TSUAdditions documentAttributes:;
- (uint64_t)tsu_RTFFromRange:()TSUAdditions documentAttributes:;
- (uint64_t)tsu_nextTableStringFromIndex:()TSUAdditions tableRange:;
- (uint64_t)tsu_numberOfTables;
- (void)tsu_stringByFixingBrokenSurrogatePairs;
@end

@implementation NSAttributedString(TSUAdditions)

- (uint64_t)tsu_RTFFromRange:()TSUAdditions documentAttributes:
{
  v8 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:a5];
  [v8 setObject:*MEMORY[0x277D74130] forKey:*MEMORY[0x277D74090]];

  return [a1 dataFromRange:a3 documentAttributes:a4 error:{v8, 0}];
}

- (uint64_t)tsu_RTFDFromRange:()TSUAdditions documentAttributes:
{
  v8 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:a5];
  [v8 setObject:*MEMORY[0x277D74128] forKey:*MEMORY[0x277D74090]];

  return [a1 dataFromRange:a3 documentAttributes:a4 error:{v8, 0}];
}

- (void)tsu_stringByFixingBrokenSurrogatePairs
{
  v1 = a1;
  v2 = [a1 string];
  Length = CFStringGetLength(v2);
  theString = v2;
  v32 = 0;
  v33 = Length;
  CharactersPtr = CFStringGetCharactersPtr(v2);
  CStringPtr = 0;
  v30 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(v2, 0x600u);
  }

  v34 = 0;
  v35 = 0;
  v31 = CStringPtr;
  if (Length >= 1)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    do
    {
      if ((v8 & 0x8000000000000000) == 0)
      {
        v9 = v33;
        if (v33 > v8)
        {
          if (v30)
          {
            v10 = v30[v32 + v8];
          }

          else if (v31)
          {
            v10 = v31[v32 + v8];
          }

          else
          {
            if (v35 <= v8 || v6 > v8)
            {
              v11 = v8 - 4;
              if (v8 < 4)
              {
                v11 = 0;
              }

              if (v11 + 64 < v33)
              {
                v9 = v11 + 64;
              }

              v34 = v11;
              v35 = v9;
              v36.length = v9 - v11;
              v36.location = v32 + v11;
              CFStringGetCharacters(theString, v36, &v21);
              v6 = v34;
            }

            v10 = *(&v21 + v8 - v6);
          }

          v12 = v10 & 0xFC00;
          if (v12 == 56320)
          {
LABEL_37:
            if (!v7)
            {
              v7 = [v1 mutableCopyWithZone:{0, v21, v22, v23, v24, v25, v26, v27, v28}];
              v1 = v7;
            }

            [v7 replaceCharactersInRange:v8 withString:{1, @"\uFFFD", v21, v22, v23, v24, v25, v26, v27, v28}];
            v17 = [v1 string];
            Length = CFStringGetLength(v17);
            theString = v17;
            v32 = 0;
            v33 = Length;
            v18 = CFStringGetCharactersPtr(v17);
            v19 = 0;
            v30 = v18;
            if (!v18)
            {
              v19 = CFStringGetCStringPtr(v17, 0x600u);
            }

            v6 = 0;
            v31 = v19;
            v34 = 0;
            v35 = 0;
            goto LABEL_42;
          }

          if (v12 == 55296)
          {
            v13 = v8 + 1;
            if (v8 + 1 >= Length)
            {
              goto LABEL_37;
            }

            v14 = v33;
            if (v33 <= v13)
            {
              goto LABEL_37;
            }

            if (v30)
            {
              v15 = v30[v32 + v13];
            }

            else if (v31)
            {
              v15 = v31[v32 + v13];
            }

            else
            {
              if (v35 <= v13 || v6 > v13)
              {
                v16 = v8 - 3;
                if (v8 < 3)
                {
                  v16 = 0;
                }

                if (v16 + 64 < v33)
                {
                  v14 = v16 + 64;
                }

                v34 = v16;
                v35 = v14;
                v37.length = v14 - v16;
                v37.location = v32 + v16;
                CFStringGetCharacters(theString, v37, &v21);
                v6 = v34;
              }

              v15 = *(&v21 + v13 - v6);
            }

            if (v15 >> 10 != 55)
            {
              goto LABEL_37;
            }

            ++v8;
          }
        }
      }

LABEL_42:
      ++v8;
    }

    while (v8 < Length);
  }

  return v1;
}

- (id)tsu_stringWithoutAttachments
{
  v2 = [objc_alloc(MEMORY[0x277CCAB48]) initWithAttributedString:a1];
  v12 = 0;
  v13 = 0;
  v3 = [a1 length];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = 0;
    v7 = *MEMORY[0x277D74060];
    do
    {
      v8 = [a1 attribute:v7 atIndex:v6 effectiveRange:&v12];
      v10 = v12;
      v9 = v13;
      if (v8)
      {
        [v2 deleteCharactersInRange:{v12 - v5, v13}];
        v5 += v13;
      }

      v6 = v9 + v10;
    }

    while (v9 + v10 < v4);
  }

  return v2;
}

- (uint64_t)tsu_nextTableStringFromIndex:()TSUAdditions tableRange:
{
  v6 = [a1 length];
  if (a4)
  {
    v7 = v6 - a3;
    if (v6 < a3)
    {
      v7 = 0;
    }

    *a4 = a3;
    a4[1] = v7;
  }

  return 0;
}

- (uint64_t)tsu_numberOfTables
{
  if (![a1 length])
  {
    return 0;
  }

  v2 = [a1 length];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = 0;
  v5 = 0;
  do
  {
    v7 = 0;
    v8 = 0;
    if ([a1 tsu_nextTableStringFromIndex:v5 tableRange:&v7])
    {
      ++v4;
    }

    v5 = v8 + v7;
  }

  while (v8 + v7 < v3);
  return v4;
}

+ (uint64_t)tsu_carriageReturnAttributedString
{
  result = tsu_carriageReturnAttributedString_sCarriageReturnAttributedString;
  if (!tsu_carriageReturnAttributedString_sCarriageReturnAttributedString)
  {
    v2 = 13;
    v1 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharacters:&v2 length:1];
    tsu_carriageReturnAttributedString_sCarriageReturnAttributedString = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v1];

    return tsu_carriageReturnAttributedString_sCarriageReturnAttributedString;
  }

  return result;
}

@end