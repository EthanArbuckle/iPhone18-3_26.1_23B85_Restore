@interface TPSHeySiriEnabledValidation
- (BOOL)getCurrentState;
- (void)getCurrentStateWithCompletion:(id)completion;
- (void)validateWithCompletion:(id)completion;
@end

@implementation TPSHeySiriEnabledValidation

- (void)validateWithCompletion:(id)completion
{
  completionCopy = completion;
  getCurrentState = [(TPSHeySiriEnabledValidation *)self getCurrentState];
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
  if (AFAssistantRestricted())
  {
    return 0;
  }

  v2 = CFPreferencesCopyAppValue(@"VoiceTrigger Enabled", @"com.apple.voicetrigger");
  if (!v2)
  {
    return 0;
  }

  v3 = v2 == *MEMORY[0x277CBED28];
  CFRelease(v2);
  return v3;
}

- (void)getCurrentStateWithCompletion:(id)completion
{
  v5 = MEMORY[0x277CCABB0];
  completionCopy = completion;
  v7 = [v5 numberWithBool:{-[TPSHeySiriEnabledValidation getCurrentState](self, "getCurrentState")}];
  (*(completion + 2))(completionCopy, v7, 0);
}

@end