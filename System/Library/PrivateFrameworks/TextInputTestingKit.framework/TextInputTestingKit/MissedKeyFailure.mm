@interface MissedKeyFailure
- (BOOL)doesMatchResult:(id)result;
@end

@implementation MissedKeyFailure

- (BOOL)doesMatchResult:(id)result
{
  v22 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  corrected = [resultCopy corrected];
  v5 = [corrected componentsJoinedByString:&stru_287EC4808];

  intended = [resultCopy intended];
  v7 = [intended componentsJoinedByString:&stru_287EC4808];

  if ([v5 isEqualToString:v7])
  {
    v8 = 0;
  }

  else
  {
    string = [MEMORY[0x277CCAB68] string];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    touched = [resultCopy touched];
    v11 = [touched countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(touched);
          }

          v15 = [*(*(&v17 + 1) + 8 * i) componentsJoinedByString:&stru_287EC4808];
          [string appendString:v15];
        }

        v12 = [touched countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }

    v8 = [string rangeOfString:@"<NoKey>"] != 0x7FFFFFFFFFFFFFFFLL;
  }

  return v8;
}

@end