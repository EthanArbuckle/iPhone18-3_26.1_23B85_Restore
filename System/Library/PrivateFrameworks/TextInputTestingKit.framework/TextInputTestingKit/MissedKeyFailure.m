@interface MissedKeyFailure
- (BOOL)doesMatchResult:(id)a3;
@end

@implementation MissedKeyFailure

- (BOOL)doesMatchResult:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 corrected];
  v5 = [v4 componentsJoinedByString:&stru_287EC4808];

  v6 = [v3 intended];
  v7 = [v6 componentsJoinedByString:&stru_287EC4808];

  if ([v5 isEqualToString:v7])
  {
    v8 = 0;
  }

  else
  {
    v9 = [MEMORY[0x277CCAB68] string];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = [v3 touched];
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v17 + 1) + 8 * i) componentsJoinedByString:&stru_287EC4808];
          [v9 appendString:v15];
        }

        v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }

    v8 = [v9 rangeOfString:@"<NoKey>"] != 0x7FFFFFFFFFFFFFFFLL;
  }

  return v8;
}

@end