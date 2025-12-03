@interface NSString(CSVTUIEditDistance)
- (BOOL)_matchesRegularExpression:()CSVTUIEditDistance;
- (id)_firstMatchesForRegularExpression:()CSVTUIEditDistance;
- (id)_firstMatchesForRegularExpressions:()CSVTUIEditDistance;
- (id)_stringByFixingNamePattern:()CSVTUIEditDistance;
- (id)_stringByStrippingLeadingNoise:()CSVTUIEditDistance;
- (id)_stringByStrippingNoiseLeadingNoise:()CSVTUIEditDistance TrailingNoise:;
- (id)_stringByStrippingTrailingNoise:()CSVTUIEditDistance;
- (uint64_t)_caseInsensitiveHasMatchInEnumeration:()CSVTUIEditDistance;
@end

@implementation NSString(CSVTUIEditDistance)

- (id)_firstMatchesForRegularExpression:()CSVTUIEditDistance
{
  v12 = 0;
  v4 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:a3 options:1 error:&v12];
  array = 0;
  if (!v12)
  {
    v6 = [v4 firstMatchInString:self options:0 range:{0, objc_msgSend(self, "length")}];
    if (v6)
    {
      array = [MEMORY[0x277CBEB18] array];
      if ([v6 numberOfRanges])
      {
        v7 = 0;
        do
        {
          if ([v6 rangeAtIndex:v7] == 0x7FFFFFFFFFFFFFFFLL)
          {
            [array addObject:&stru_283923FC0];
          }

          else
          {
            v8 = [v6 rangeAtIndex:v7];
            v10 = [self substringWithRange:{v8, v9}];
            [array addObject:v10];
          }

          ++v7;
        }

        while (v7 < [v6 numberOfRanges]);
      }
    }

    else
    {
      array = 0;
    }
  }

  return array;
}

- (id)_firstMatchesForRegularExpressions:()CSVTUIEditDistance
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [self _firstMatchesForRegularExpression:{*(*(&v13 + 1) + 8 * i), v13}];
        if (v9)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (uint64_t)_caseInsensitiveHasMatchInEnumeration:()CSVTUIEditDistance
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    v8 = &selRef_setPageNumber_;
    while (2)
    {
      v9 = 0;
      v10 = v8[131];
      do
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v19 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v11 stringValue];
        }

        else
        {
          [v11 description];
        }
        v12 = ;
        lowercaseString = [v12 lowercaseString];
        lowercaseString2 = [self lowercaseString];
        v15 = [lowercaseString isEqualToString:lowercaseString2];

        if (v15)
        {
          v16 = 1;
          goto LABEL_14;
        }

        ++v9;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
      v8 = &selRef_setPageNumber_;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_14:

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (BOOL)_matchesRegularExpression:()CSVTUIEditDistance
{
  v7 = 0;
  v4 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:a3 options:1 error:&v7];
  if (v7)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v4 numberOfMatchesInString:self options:0 range:{0, objc_msgSend(self, "length")}] != 0;
  }

  return v5;
}

- (id)_stringByStrippingNoiseLeadingNoise:()CSVTUIEditDistance TrailingNoise:
{
  v6 = a4;
  v7 = [self _stringByStrippingLeadingNoise:a3];
  v8 = [v7 _stringByStrippingTrailingNoise:v6];

  return v8;
}

- (id)_stringByStrippingTrailingNoise:()CSVTUIEditDistance
{
  v7 = 0;
  v4 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:a3 options:1 error:&v7];
  v5 = [self mutableCopy];
  [v4 replaceMatchesInString:v5 options:0 range:0 withTemplate:{objc_msgSend(v5, "length"), &stru_283923FC0}];

  return v5;
}

- (id)_stringByStrippingLeadingNoise:()CSVTUIEditDistance
{
  v7 = 0;
  v4 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:a3 options:1 error:&v7];
  v5 = [self mutableCopy];
  [v4 replaceMatchesInString:v5 options:0 range:0 withTemplate:{objc_msgSend(v5, "length"), &stru_283923FC0}];

  return v5;
}

- (id)_stringByFixingNamePattern:()CSVTUIEditDistance
{
  v4 = a3;
  lowercaseString = [self lowercaseString];
  v6 = [lowercaseString hasPrefix:v4];

  if (v6)
  {
    selfCopy = [self substringFromIndex:{objc_msgSend(v4, "length")}];
  }

  else
  {
    selfCopy = self;
  }

  v8 = selfCopy;

  return v8;
}

@end