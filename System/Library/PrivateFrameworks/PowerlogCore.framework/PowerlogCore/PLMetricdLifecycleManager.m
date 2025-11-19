@interface PLMetricdLifecycleManager
+ (id)sharedManager;
- (PLMetricdLifecycleManager)init;
- (void)signalActive;
- (void)signalInactive;
- (void)stopMetricd;
@end

@implementation PLMetricdLifecycleManager

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[PLMetricdLifecycleManager sharedManager];
  }

  v3 = sharedManager_metricdLifecycleManagerInstance;

  return v3;
}

uint64_t __42__PLMetricdLifecycleManager_sharedManager__block_invoke()
{
  sharedManager_metricdLifecycleManagerInstance = objc_alloc_init(PLMetricdLifecycleManager);

  return MEMORY[0x1EEE66BB8]();
}

- (PLMetricdLifecycleManager)init
{
  v5.receiver = self;
  v5.super_class = PLMetricdLifecycleManager;
  v2 = [(PLMetricdLifecycleManager *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PLMetricdLifecycleManager *)v2 setIsActive:0];
  }

  return v3;
}

- (void)signalActive
{
  if (![(PLMetricdLifecycleManager *)self isActive])
  {
    v3 = PLLogMetricdLifecycleManager();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_1D8611000, v3, OS_LOG_TYPE_INFO, "metric monitor became active", v4, 2u);
    }

    [(PLMetricdLifecycleManager *)self setIsActive:1];
  }
}

- (void)signalInactive
{
  v11 = *MEMORY[0x1E69E9840];
  if ([(PLMetricdLifecycleManager *)self isActive])
  {
    v3 = PLLogMetricdLifecycleManager();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1D8611000, v3, OS_LOG_TYPE_INFO, "metric monitor became inactive", buf, 2u);
    }

    [(PLMetricdLifecycleManager *)self setIsActive:0];
    v4 = PLLogMetricdLifecycleManager();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v10 = 1;
      _os_log_impl(&dword_1D8611000, v4, OS_LOG_TYPE_INFO, "Will attempt to stop perfpowermetricd after %d seconds", buf, 8u);
    }

    v5 = dispatch_time(0, 1000000000);
    v6 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__PLMetricdLifecycleManager_signalInactive__block_invoke;
    block[3] = &unk_1E85190B8;
    block[4] = self;
    dispatch_after(v5, v6, block);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)stopMetricd
{
  v2 = [(PLMetricdLifecycleManager *)self isActive];
  v3 = PLLogMetricdLifecycleManager();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);
  if (v2)
  {
    if (v4)
    {
      *v5 = 0;
      _os_log_impl(&dword_1D8611000, v3, OS_LOG_TYPE_INFO, "Attempted to stop perfpowermetricd but metric monitor is still active", v5, 2u);
    }
  }

  else
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_1D8611000, v3, OS_LOG_TYPE_INFO, "Stopping perfpowermetricd", buf, 2u);
    }

    [PLUtilities exitWithReason:6];
  }
}

@end