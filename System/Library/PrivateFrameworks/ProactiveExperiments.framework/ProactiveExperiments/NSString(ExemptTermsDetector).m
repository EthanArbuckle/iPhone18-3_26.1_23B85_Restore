@interface NSString(ExemptTermsDetector)
- (id)removeApostrophes;
- (id)removeCharactersWithCharacterSet:()ExemptTermsDetector;
- (id)tokens;
@end

@implementation NSString(ExemptTermsDetector)

- (id)tokens
{
  v2 = objc_opt_new();
  v3 = [a1 length];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__NSString_ExemptTermsDetector__tokens__block_invoke;
  v6[3] = &unk_279ABAE00;
  v4 = v2;
  v7 = v4;
  [a1 enumerateSubstringsInRange:0 options:v3 usingBlock:{3, v6}];

  return v4;
}

- (id)removeApostrophes
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = [a1 copy];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [&unk_287341BF8 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v10;
    do
    {
      v5 = 0;
      v6 = v1;
      do
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(&unk_287341BF8);
        }

        v1 = [v6 stringByReplacingOccurrencesOfString:*(*(&v9 + 1) + 8 * v5) withString:&stru_28733D8C0];

        ++v5;
        v6 = v1;
      }

      while (v3 != v5);
      v3 = [&unk_287341BF8 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v3);
  }

  v7 = *MEMORY[0x277D85DE8];

  return v1;
}

- (id)removeCharactersWithCharacterSet:()ExemptTermsDetector
{
  v1 = [a1 componentsSeparatedByCharactersInSet:?];
  v2 = [v1 componentsJoinedByString:&stru_28733D8C0];

  return v2;
}

@end