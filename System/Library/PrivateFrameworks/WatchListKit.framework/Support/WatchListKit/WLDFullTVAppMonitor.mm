@interface WLDFullTVAppMonitor
+ (id)sharedInstance;
- (WLDFullTVAppMonitor)init;
- (void)_activeAccountChangedNotification:(id)notification;
- (void)dealloc;
@end

@implementation WLDFullTVAppMonitor

+ (id)sharedInstance
{
  if (sharedInstance___once != -1)
  {
    +[WLDFullTVAppMonitor sharedInstance];
  }

  v3 = sharedInstance___sharedInstance;

  return v3;
}

void __37__WLDFullTVAppMonitor_sharedInstance__block_invoke(id a1)
{
  sharedInstance___sharedInstance = objc_alloc_init(WLDFullTVAppMonitor);

  _objc_release_x1();
}

- (WLDFullTVAppMonitor)init
{
  v7.receiver = self;
  v7.super_class = WLDFullTVAppMonitor;
  v2 = [(WLDFullTVAppMonitor *)&v7 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    v4 = WLKAccountMonitorAccountDidChange;
    v5 = +[WLKAccountMonitor sharedInstance];
    [v3 addObserver:v2 selector:"_activeAccountChangedNotification:" name:v4 object:v5];

    [WLKURLBagUtilities isFullTVAppEnabledwithCompletion:&__block_literal_global_8];
  }

  return v2;
}

void __27__WLDFullTVAppMonitor_init__block_invoke(id a1, BOOL a2)
{
  v2 = a2;
  v3 = WLKSystemLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"Disabled";
    if (v2)
    {
      v4 = @"Enabled";
    }

    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "WLDFullTVAppMonitor - Full TV App %@", &v5, 0xCu);
  }
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = WLDFullTVAppMonitor;
  [(WLDFullTVAppMonitor *)&v4 dealloc];
}

- (void)_activeAccountChangedNotification:(id)notification
{
  v3 = dispatch_time(0, 5000000000);

  dispatch_after(v3, &_dispatch_main_q, &__block_literal_global_16);
}

void __57__WLDFullTVAppMonitor__activeAccountChangedNotification___block_invoke_2(id a1, BOOL a2)
{
  v2 = a2;
  v3 = WLKSystemLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"Disabled";
    if (v2)
    {
      v4 = @"Enabled";
    }

    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "WLDFullTVAppMonitor - Account changes. Full TV App %@", &v5, 0xCu);
  }
}

@end