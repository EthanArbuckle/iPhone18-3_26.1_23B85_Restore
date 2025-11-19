@interface TPSSiriSystemLanguageMatchValidation
- (BOOL)getCurrentState;
- (void)getCurrentStateWithCompletion:(id)a3;
- (void)validateWithCompletion:(id)a3;
@end

@implementation TPSSiriSystemLanguageMatchValidation

- (void)validateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(TPSSiriSystemLanguageMatchValidation *)self getCurrentState];
  v6 = v5 ^ [(TPSTargetingValidation *)self BOOLValue];
  v7 = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(TPSDictationLanguageValidation *)self validateWithCompletion:v7];
  }

  (*(v4 + 2))(v4, v6 ^ 1u, 0);
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
    v3 = [MEMORY[0x277CBEAF8] systemLanguages];
    if ([v3 count])
    {
      v4 = [MEMORY[0x277CEF368] sharedPreferences];
      v5 = [v4 languageCode];

      if ([v5 length])
      {
        v6 = MEMORY[0x277CCA8D8];
        v7 = [MEMORY[0x277CBEAF8] preferredLanguages];
        v8 = [v6 preferredLocalizationsFromArray:v3 forPreferences:v7];
        v9 = [v8 firstObject];

        v10 = MEMORY[0x277CCA8D8];
        v16[0] = v5;
        v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
        v12 = [v10 preferredLocalizationsFromArray:v3 forPreferences:v11];
        v13 = [v12 firstObject];

        v2 = [v9 isEqualToString:v13];
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

- (void)getCurrentStateWithCompletion:(id)a3
{
  v5 = MEMORY[0x277CCABB0];
  v6 = a3;
  v7 = [v5 numberWithBool:{-[TPSSiriSystemLanguageMatchValidation getCurrentState](self, "getCurrentState")}];
  (*(a3 + 2))(v6, v7, 0);
}

@end