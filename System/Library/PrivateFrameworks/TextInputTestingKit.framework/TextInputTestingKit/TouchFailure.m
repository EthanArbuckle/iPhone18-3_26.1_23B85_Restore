@interface TouchFailure
- (BOOL)doesMatchResult:(id)a3;
@end

@implementation TouchFailure

- (BOOL)doesMatchResult:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CCAB68] string];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v3 touched];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v14 + 1) + 8 * v9) componentsJoinedByString:&stru_287EC4808];
        [v4 appendString:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = [v3 intended];
  v12 = [v11 componentsJoinedByString:&stru_287EC4808];

  LOBYTE(v11) = [v4 isEqualToString:v12];
  return v11;
}

@end