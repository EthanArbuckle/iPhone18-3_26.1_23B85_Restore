@interface NSArray(WiFiKitUI)
- (id)arrayAfterFilteringOutEmptyStrings;
- (id)stringFromContentsOfArrayWithDelimiter:()WiFiKitUI;
@end

@implementation NSArray(WiFiKitUI)

- (id)stringFromContentsOfArrayWithDelimiter:()WiFiKitUI
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([a1 count])
  {
    v5 = [a1 count];
    v6 = [MEMORY[0x277CCAB68] string];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = a1;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v7);
          }

          [v6 appendString:*(*(&v15 + 1) + 8 * i)];
          if (v5 - 1 - v10 != i)
          {
            [v6 appendFormat:@"%@ ", v4];
          }
        }

        v10 += v9;
        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v6 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)arrayAfterFilteringOutEmptyStrings
{
  v1 = [a1 mutableCopy];
  v2 = v1;
  if (v1)
  {
    [v1 removeObject:&stru_288308678];
    v3 = [MEMORY[0x277CBEA60] arrayWithArray:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end