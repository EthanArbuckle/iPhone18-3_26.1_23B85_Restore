@interface TPSSiriCompactVoiceTriggerAvailableValidation
- (void)validateWithCompletion:(id)completion;
@end

@implementation TPSSiriCompactVoiceTriggerAvailableValidation

- (void)validateWithCompletion:(id)completion
{
  v4 = MEMORY[0x277CEF368];
  completionCopy = completion;
  sharedPreferences = [v4 sharedPreferences];
  languageCode = [sharedPreferences languageCode];

  mEMORY[0x277D7A8D0] = [MEMORY[0x277D7A8D0] sharedPreferences];
  v9 = [mEMORY[0x277D7A8D0] isCompactVoiceTriggerAvailableForLanguageCode:languageCode];
  v10 = v9 ^ [(TPSTargetingValidation *)self BOOLValue];
  targeting = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(targeting, OS_LOG_TYPE_DEBUG))
  {
    [(TPSDictationLanguageValidation *)self validateWithCompletion:targeting];
  }

  (*(completionCopy + 2))(completionCopy, v10 ^ 1u, 0);
}

@end