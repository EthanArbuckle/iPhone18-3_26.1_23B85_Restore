@interface VUIApplicationNotificationManager
+ (id)sharedInstance;
- (void)_applicationDidBecomeActiveNotification:(id)notification;
- (void)_applicationDidEnterBackgroundNotification:(id)notification;
- (void)_applicationWillEnterForegroundNotification:(id)notification;
- (void)_applicationWillResignActiveNotification:(id)notification;
- (void)_applicationWillTerminateNotification:(id)notification;
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
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__applicationDidBecomeActiveNotification_ name:*MEMORY[0x277D76648] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__applicationDidEnterBackgroundNotification_ name:*MEMORY[0x277D76660] object:0];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel__applicationWillResignActiveNotification_ name:*MEMORY[0x277D76768] object:0];

  defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter4 addObserver:self selector:sel__applicationWillTerminateNotification_ name:*MEMORY[0x277D76770] object:0];

  defaultCenter5 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter5 addObserver:self selector:sel__applicationWillEnterForegroundNotification_ name:*MEMORY[0x277D76758] object:0];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = VUIApplicationNotificationManager;
  [(VUIApplicationNotificationManager *)&v4 dealloc];
}

- (void)_applicationDidBecomeActiveNotification:(id)notification
{
  v3 = VUICDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_270E6E000, v3, OS_LOG_TYPE_DEFAULT, "VUIApplicationNotificationManager:: activated", v5, 2u);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"VUIApplicationDidBecomeActiveNotification" object:0];
}

- (void)_applicationDidEnterBackgroundNotification:(id)notification
{
  v3 = VUICDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_270E6E000, v3, OS_LOG_TYPE_DEFAULT, "VUIApplicationNotificationManager:: backgrounded", v5, 2u);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"VUIApplicationDidEnterBackgroundNotification" object:0];
}

- (void)_applicationWillResignActiveNotification:(id)notification
{
  v3 = VUICDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_270E6E000, v3, OS_LOG_TYPE_DEFAULT, "VUIApplicationNotificationManager:: deactivated", v5, 2u);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"VUIApplicationWillResignActiveNotification" object:0];
}

- (void)_applicationWillTerminateNotification:(id)notification
{
  v3 = VUICDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_270E6E000, v3, OS_LOG_TYPE_DEFAULT, "VUIApplicationNotificationManager:: terminated", v5, 2u);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"VUIApplicationWillTerminateNotification" object:0];
}

- (void)_applicationWillEnterForegroundNotification:(id)notification
{
  v3 = VUICDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_270E6E000, v3, OS_LOG_TYPE_DEFAULT, "VUIApplicationNotificationManager:: foregrounded", v5, 2u);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"VUIApplicationWillEnterForegroundNotification" object:0];
}

@end