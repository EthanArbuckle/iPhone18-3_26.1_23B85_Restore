@interface VUIPerfMetricsAppLaunchController
+ (id)sharedInstance;
- (VUIPerfMetricsAppLaunchController)init;
- (void)_setAppLaunchFieldWithData:(id)a3;
- (void)recordAppLaunchEventWithEventType:(id)a3;
@end

@implementation VUIPerfMetricsAppLaunchController

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__VUIPerfMetricsAppLaunchController_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_once_1 != -1)
  {
    dispatch_once(&sharedInstance_once_1, block);
  }

  v2 = sharedInstance_sharedInstance_10;

  return v2;
}

void __51__VUIPerfMetricsAppLaunchController_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance_10;
  sharedInstance_sharedInstance_10 = v1;
}

- (VUIPerfMetricsAppLaunchController)init
{
  v17 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = VUIPerfMetricsAppLaunchController;
  v2 = [(VUIPerfMetricsAppLaunchController *)&v10 init];
  if (v2)
  {
    *v14 = 0xE00000001;
    v15 = 1;
    v16 = getpid();
    memset(v13, 0, 512);
    v9 = 648;
    if (sysctl(v14, 4u, v13, &v9, 0, 0))
    {
      v3 = VUIDefaultLogObject();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *v8 = 0;
        _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_INFO, "Could not read processStartTime", v8, 2u);
      }

      v4 = 0;
    }

    else
    {
      v4 = ((SDWORD2(v13[0]) / 1000000.0 + *&v13[0]) * 1000.0);
    }

    v11 = @"processStartTime";
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v4];
    v12 = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    [(VUIPerfMetricsAppLaunchController *)v2 _setAppLaunchFieldWithData:v6];
  }

  return v2;
}

- (void)recordAppLaunchEventWithEventType:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DF00];
  v5 = a3;
  v6 = [v4 date];
  [v6 timeIntervalSince1970];
  v8 = v7 * 1000.0;

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:vcvtad_u64_f64(v8)];
  v11 = v5;
  v12[0] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];

  [(VUIPerfMetricsAppLaunchController *)self _setAppLaunchFieldWithData:v10];
}

- (void)_setAppLaunchFieldWithData:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(VUIPerfMetricsAppLaunchController *)v5 appLaunchData];

  if (!v6)
  {
    v12 = @"isAppLaunch";
    v7 = [MEMORY[0x1E696AD98] numberWithBool:1];
    v13[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    [(VUIPerfMetricsAppLaunchController *)v5 setAppLaunchData:v8];
  }

  v9 = [(VUIPerfMetricsAppLaunchController *)v5 appLaunchData];
  v10 = [v9 mutableCopy];

  [v10 addEntriesFromDictionary:v4];
  v11 = [v10 copy];
  [(VUIPerfMetricsAppLaunchController *)v5 setAppLaunchData:v11];

  objc_sync_exit(v5);
}

@end