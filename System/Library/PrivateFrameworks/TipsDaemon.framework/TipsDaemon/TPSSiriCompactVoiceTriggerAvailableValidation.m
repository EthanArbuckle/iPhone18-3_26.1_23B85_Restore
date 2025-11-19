@interface TPSSiriCompactVoiceTriggerAvailableValidation
- (void)validateWithCompletion:(id)a3;
@end

@implementation TPSSiriCompactVoiceTriggerAvailableValidation

- (void)validateWithCompletion:(id)a3
{
  v4 = MEMORY[0x277CEF368];
  v5 = a3;
  v6 = [v4 sharedPreferences];
  v7 = [v6 languageCode];

  v8 = [MEMORY[0x277D7A8D0] sharedPreferences];
  v9 = [v8 isCompactVoiceTriggerAvailableForLanguageCode:v7];
  v10 = v9 ^ [(TPSTargetingValidation *)self BOOLValue];
  v11 = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [(TPSDictationLanguageValidation *)self validateWithCompletion:v11];
  }

  (*(v5 + 2))(v5, v10 ^ 1u, 0);
}

@end