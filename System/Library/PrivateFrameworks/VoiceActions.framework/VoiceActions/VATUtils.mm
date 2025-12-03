@interface VATUtils
+ (id)formatFromTokens:(id)tokens;
@end

@implementation VATUtils

+ (id)formatFromTokens:(id)tokens
{
  v23 = *MEMORY[0x277D85DE8];
  tokensCopy = tokens;
  v4 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = tokensCopy;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    LOBYTE(hasSpaceAfter) = 0;
    v9 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        if ([v4 length] && ((hasSpaceAfter & 1) != 0 || objc_msgSend(v11, "hasSpaceBefore")))
        {
          [v4 appendString:@" "];
        }

        tokenName = [v11 tokenName];
        [v4 appendString:tokenName];

        hasSpaceAfter = [v11 hasSpaceAfter];
        [v4 appendString:@" Confidence: "];
        v13 = MEMORY[0x277CCABB0];
        [v11 confidence];
        v14 = [v13 numberWithDouble:?];
        stringValue = [v14 stringValue];
        [v4 appendString:stringValue];
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);

    if (hasSpaceAfter)
    {
      [v4 appendString:@" "];
    }
  }

  else
  {
  }

  v16 = *MEMORY[0x277D85DE8];

  return v4;
}

@end