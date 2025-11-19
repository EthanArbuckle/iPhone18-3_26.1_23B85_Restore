@interface SBApplication(Classic)
@end

@implementation SBApplication(Classic)

+ (void)restrictedClassicModeDisplayConfigurationForDisplayConfiguration:()Classic classicMode:.cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedDescription];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "Error building custom display mode: %{public}@", &v4, 0xCu);
}

@end