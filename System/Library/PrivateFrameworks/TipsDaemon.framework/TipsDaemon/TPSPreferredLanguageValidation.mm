@interface TPSPreferredLanguageValidation
- (void)validateWithCompletion:(id)completion;
@end

@implementation TPSPreferredLanguageValidation

- (void)validateWithCompletion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  stringValue = [(TPSTargetingValidation *)self stringValue];
  [MEMORY[0x277CBEAF8] preferredLanguages];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v15 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        if ([*(*(&v12 + 1) + 8 * i) hasPrefix:{stringValue, v12}])
        {
          v7 = 1;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  targeting = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(targeting, OS_LOG_TYPE_DEBUG))
  {
    [(TPSDictationLanguageValidation *)self validateWithCompletion:v7, targeting];
  }

  completionCopy[2](completionCopy, v7, 0);
  v11 = *MEMORY[0x277D85DE8];
}

@end