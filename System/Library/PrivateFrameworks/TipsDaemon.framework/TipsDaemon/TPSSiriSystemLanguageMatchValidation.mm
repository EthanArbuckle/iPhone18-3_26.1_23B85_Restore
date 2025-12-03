@interface TPSSiriSystemLanguageMatchValidation
- (BOOL)getCurrentState;
- (void)getCurrentStateWithCompletion:(id)completion;
- (void)validateWithCompletion:(id)completion;
@end

@implementation TPSSiriSystemLanguageMatchValidation

- (void)validateWithCompletion:(id)completion
{
  completionCopy = completion;
  getCurrentState = [(TPSSiriSystemLanguageMatchValidation *)self getCurrentState];
  v6 = getCurrentState ^ [(TPSTargetingValidation *)self BOOLValue];
  targeting = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(targeting, OS_LOG_TYPE_DEBUG))
  {
    [(TPSDictationLanguageValidation *)self validateWithCompletion:targeting];
  }

  (*(completionCopy + 2))(completionCopy, v6 ^ 1u, 0);
}

- (BOOL)getCurrentState
{
  v16[1] = *MEMORY[0x277D85DE8];
  if (AFAssistantRestricted())
  {
    v2 = 0;
  }

  else
  {
    systemLanguages = [MEMORY[0x277CBEAF8] systemLanguages];
    if ([systemLanguages count])
    {
      mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
      languageCode = [mEMORY[0x277CEF368] languageCode];

      if ([languageCode length])
      {
        v6 = MEMORY[0x277CCA8D8];
        preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
        v8 = [v6 preferredLocalizationsFromArray:systemLanguages forPreferences:preferredLanguages];
        firstObject = [v8 firstObject];

        v10 = MEMORY[0x277CCA8D8];
        v16[0] = languageCode;
        v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
        v12 = [v10 preferredLocalizationsFromArray:systemLanguages forPreferences:v11];
        firstObject2 = [v12 firstObject];

        v2 = [firstObject isEqualToString:firstObject2];
      }

      else
      {
        v2 = 0;
      }
    }

    else
    {
      v2 = 0;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)getCurrentStateWithCompletion:(id)completion
{
  v5 = MEMORY[0x277CCABB0];
  completionCopy = completion;
  v7 = [v5 numberWithBool:{-[TPSSiriSystemLanguageMatchValidation getCurrentState](self, "getCurrentState")}];
  (*(completion + 2))(completionCopy, v7, 0);
}

@end