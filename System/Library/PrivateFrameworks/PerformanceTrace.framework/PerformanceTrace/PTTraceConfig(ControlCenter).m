@interface PTTraceConfig(ControlCenter)
+ (void)globalSettingsAreLocked;
+ (void)userSelectedTracePlanName;
@end

@implementation PTTraceConfig(ControlCenter)

+ (void)userSelectedTracePlanName
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)setUserSelectedTracePlanName:()ControlCenter .cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)globalSettingsAreLocked
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedDescription];
  v4 = v3;
  v5 = @"Unknown";
  if (v3)
  {
    v5 = v3;
  }

  v7 = 138543362;
  v8 = v5;
  _os_log_error_impl(&dword_25E3D3000, a2, OS_LOG_TYPE_ERROR, "Failed to get global settings, so defaulting to unlocked. Passive config error: %{public}@", &v7, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

@end