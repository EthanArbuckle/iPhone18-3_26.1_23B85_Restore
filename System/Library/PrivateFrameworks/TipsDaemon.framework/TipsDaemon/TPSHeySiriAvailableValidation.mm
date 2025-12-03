@interface TPSHeySiriAvailableValidation
- (BOOL)getCurrentState;
- (void)getCurrentStateWithCompletion:(id)completion;
- (void)validateWithCompletion:(id)completion;
@end

@implementation TPSHeySiriAvailableValidation

- (void)validateWithCompletion:(id)completion
{
  completionCopy = completion;
  getCurrentState = [(TPSHeySiriAvailableValidation *)self getCurrentState];
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
  mEMORY[0x277D7A8D0] = [MEMORY[0x277D7A8D0] sharedPreferences];
  isVoiceTriggerAvailable = [mEMORY[0x277D7A8D0] isVoiceTriggerAvailable];

  return isVoiceTriggerAvailable;
}

- (void)getCurrentStateWithCompletion:(id)completion
{
  v5 = MEMORY[0x277CCABB0];
  completionCopy = completion;
  v7 = [v5 numberWithBool:{-[TPSHeySiriAvailableValidation getCurrentState](self, "getCurrentState")}];
  (*(completion + 2))(completionCopy, v7, 0);
}

@end