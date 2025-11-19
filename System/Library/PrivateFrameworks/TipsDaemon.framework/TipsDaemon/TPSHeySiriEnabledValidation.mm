@interface TPSHeySiriEnabledValidation
- (BOOL)getCurrentState;
- (void)getCurrentStateWithCompletion:(id)a3;
- (void)validateWithCompletion:(id)a3;
@end

@implementation TPSHeySiriEnabledValidation

- (void)validateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(TPSHeySiriEnabledValidation *)self getCurrentState];
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

- (void)getCurrentStateWithCompletion:(id)a3
{
  v5 = MEMORY[0x277CCABB0];
  v6 = a3;
  v7 = [v5 numberWithBool:{-[TPSHeySiriEnabledValidation getCurrentState](self, "getCurrentState")}];
  (*(a3 + 2))(v6, v7, 0);
}

@end