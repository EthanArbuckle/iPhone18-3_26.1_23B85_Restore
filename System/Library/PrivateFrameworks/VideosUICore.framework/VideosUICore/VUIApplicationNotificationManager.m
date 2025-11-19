@interface VUIApplicationNotificationManager
+ (id)sharedInstance;
- (void)_applicationDidBecomeActiveNotification:(id)a3;
- (void)_applicationDidEnterBackgroundNotification:(id)a3;
- (void)_applicationWillEnterForegroundNotification:(id)a3;
- (void)_applicationWillResignActiveNotification:(id)a3;
- (void)_applicationWillTerminateNotification:(id)a3;
- (void)dealloc;
- (void)listenForApplicationNotifications;
@end

@implementation VUIApplicationNotificationManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_4 != -1)
  {
    +[VUIApplicationNotificationManager sharedInstance];
  }

  v3 = sharedInstance___sharedInstance_1;

  return v3;
}

uint64_t __51__VUIApplicationNotificationManager_sharedInstance__block_invoke()
{
  sharedInstance___sharedInstance_1 = objc_alloc_init(VUIApplicationNotificationManager);

  return MEMORY[0x2821F96F8]();
}

- (void)listenForApplicationNotifications
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel__applicationDidBecomeActiveNotification_ name:*MEMORY[0x277D76648] object:0];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 addObserver:self selector:sel__applicationDidEnterBackgroundNotification_ name:*MEMORY[0x277D76660] object:0];

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 addObserver:self selector:sel__applicationWillResignActiveNotification_ name:*MEMORY[0x277D76768] object:0];

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 addObserver:self selector:sel__applicationWillTerminateNotification_ name:*MEMORY[0x277D76770] object:0];

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 addObserver:self selector:sel__applicationWillEnterForegroundNotification_ name:*MEMORY[0x277D76758] object:0];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = VUIApplicationNotificationManager;
  [(VUIApplicationNotificationManager *)&v4 dealloc];
}

- (void)_applicationDidBecomeActiveNotification:(id)a3
{
  v3 = VUICDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_270E6E000, v3, OS_LOG_TYPE_DEFAULT, "VUIApplicationNotificationManager:: activated", v5, 2u);
  }

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:@"VUIApplicationDidBecomeActiveNotification" object:0];
}

- (void)_applicationDidEnterBackgroundNotification:(id)a3
{
  v3 = VUICDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_270E6E000, v3, OS_LOG_TYPE_DEFAULT, "VUIApplicationNotificationManager:: backgrounded", v5, 2u);
  }

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:@"VUIApplicationDidEnterBackgroundNotification" object:0];
}

- (void)_applicationWillResignActiveNotification:(id)a3
{
  v3 = VUICDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_270E6E000, v3, OS_LOG_TYPE_DEFAULT, "VUIApplicationNotificationManager:: deactivated", v5, 2u);
  }

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:@"VUIApplicationWillResignActiveNotification" object:0];
}

- (void)_applicationWillTerminateNotification:(id)a3
{
  v3 = VUICDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_270E6E000, v3, OS_LOG_TYPE_DEFAULT, "VUIApplicationNotificationManager:: terminated", v5, 2u);
  }

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:@"VUIApplicationWillTerminateNotification" object:0];
}

- (void)_applicationWillEnterForegroundNotification:(id)a3
{
  v3 = VUICDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_270E6E000, v3, OS_LOG_TYPE_DEFAULT, "VUIApplicationNotificationManager:: foregrounded", v5, 2u);
  }

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:@"VUIApplicationWillEnterForegroundNotification" object:0];
}

@end