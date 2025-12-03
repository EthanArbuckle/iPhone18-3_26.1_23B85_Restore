@interface WBSPasswordBreachSettings
+ (BOOL)isPasswordBreachDetectionEnabled;
@end

@implementation WBSPasswordBreachSettings

+ (BOOL)isPasswordBreachDetectionEnabled
{
  safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
  v3 = [safari_browserDefaults safari_BOOLForKey:@"PasswordBreachDetectionOn" defaultValue:1];

  return v3;
}

uint64_t __63__WBSPasswordBreachSettings_setPasswordBreachDetectionEnabled___block_invoke(uint64_t a1, int a2)
{
  v4 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_1B8447000, v5, OS_LOG_TYPE_INFO, "Password Monitoring turned off. Cleared all Password Monitoring records.", v7, 2u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __63__WBSPasswordBreachSettings_setPasswordBreachDetectionEnabled___block_invoke_cold_1(v5);
  }

  return [*(a1 + 32) invalidate];
}

@end