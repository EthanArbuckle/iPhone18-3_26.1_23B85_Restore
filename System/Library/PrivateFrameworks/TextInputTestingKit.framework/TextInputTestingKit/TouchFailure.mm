@interface TouchFailure
- (BOOL)doesMatchResult:(id)result;
@end

@implementation TouchFailure

- (BOOL)doesMatchResult:(id)result
{
  v19 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  string = [MEMORY[0x277CCAB68] string];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  touched = [resultCopy touched];
  v6 = [touched countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(touched);
        }

        v10 = [*(*(&v14 + 1) + 8 * v9) componentsJoinedByString:&stru_287EC4808];
        [string appendString:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [touched countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  intended = [resultCopy intended];
  v12 = [intended componentsJoinedByString:&stru_287EC4808];

  LOBYTE(intended) = [string isEqualToString:v12];
  return intended;
}

@end