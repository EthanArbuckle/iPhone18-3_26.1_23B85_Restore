@interface SBWidgetDebuggingTestRecipe
+ (id)__systemService;
- (void)_openNotificationCenter;
@end

@implementation SBWidgetDebuggingTestRecipe

+ (id)__systemService
{
  if (__systemService_onceToken != -1)
  {
    +[SBWidgetDebuggingTestRecipe __systemService];
  }

  v3 = __systemService___systemService;

  return v3;
}

void __46__SBWidgetDebuggingTestRecipe___systemService__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277D0AE18]);
  v1 = __systemService___systemService;
  __systemService___systemService = v0;
}

- (void)_openNotificationCenter
{
  v3 = dispatch_get_global_queue(2, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__SBWidgetDebuggingTestRecipe__openNotificationCenter__block_invoke;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  dispatch_async(v3, block);
}

void __54__SBWidgetDebuggingTestRecipe__openNotificationCenter__block_invoke()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_class() __systemService];
  v6 = *MEMORY[0x277D0AC08];
  v1 = *MEMORY[0x277D0AB68];
  v4[0] = *MEMORY[0x277D0AB60];
  v4[1] = v1;
  v5[0] = @"com.apple.TodayViewWidget";
  v5[1] = @"com.apple.widget-extension";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:2];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [v0 openApplication:@"com.apple.springboard" options:v3 withResult:&__block_literal_global_14_4];
}

void __54__SBWidgetDebuggingTestRecipe__openNotificationCenter__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = SBLogCommon();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
  if (v2)
  {
    if (v4)
    {
      __54__SBWidgetDebuggingTestRecipe__openNotificationCenter__block_invoke_2_cold_1(v2, v3);
    }
  }

  else if (v4)
  {
    __54__SBWidgetDebuggingTestRecipe__openNotificationCenter__block_invoke_2_cold_2(v3);
  }
}

void __54__SBWidgetDebuggingTestRecipe__openNotificationCenter__block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "Failed to launch Notification Center for testing: %{public}@", &v2, 0xCu);
}

@end