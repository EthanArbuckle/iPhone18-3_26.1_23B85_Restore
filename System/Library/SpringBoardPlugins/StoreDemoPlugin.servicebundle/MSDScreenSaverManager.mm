@interface MSDScreenSaverManager
+ (id)sharedInstance;
+ (void)awakeFromBundle;
- (BOOL)handleIdleTimerDidExpire;
- (BOOL)handleIdleTimerDidWarn;
- (BOOL)isInStandbyMode:(id)mode;
- (BOOL)isRetailDeviceContentUpdating;
- (BOOL)loadScreenSaverConfig;
- (BOOL)shouldHandleIdleHandler;
- (BOOL)shouldSetupIdleHandler;
- (MSDScreenSaverManager)init;
- (id)getLastAutoRebootTime;
- (id)getLastSettingsUpdatedTime;
- (id)getStoreHours;
- (id)readHubSuppliedSettings;
- (id)readLastAutoReboot;
- (id)readLastSettingsUpdated;
- (int)getDemoMode;
- (int)readDemoMode;
- (void)acquireDisableAlwaysOnTimeAssertion;
- (void)applicationsDidInstall:(id)install;
- (void)assertion:(id)assertion didFailToAcquireWithError:(id)error;
- (void)assertionWasAcquired:(id)acquired;
- (void)handleAlwaysOnTimeToggleTimerFired:(id)fired;
- (void)handleApplicationStateChanged:(id)changed;
- (void)handleSpringBoardLaunch;
- (void)handleStoreHourSettingsChanged:(id)changed;
- (void)launchScreenSaver;
- (void)launchScreenSaverTimerFired;
- (void)launchSpringBoard;
- (void)layoutMonitor:(id)monitor didUpdateDisplayLayout:(id)layout;
- (void)releaseDisableAlwaysOnTimeAssertion;
- (void)screenSaverStarted;
- (void)screenSaverStopped;
- (void)setupAlwaysOnTimeToggleTimer;
- (void)setupIdleTimerHandler;
- (void)stopScreenSaver;
- (void)stopScreenSaverTimerFired;
@end

@implementation MSDScreenSaverManager

+ (void)awakeFromBundle
{
  v2 = screenSaverLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, " ", buf, 2u);
  }

  v3 = screenSaverLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "StoreDemo plugin awake.", v5, 2u);
  }

  v4 = +[MSDScreenSaverManager sharedInstance];
}

+ (id)sharedInstance
{
  if (qword_1E0A8 != -1)
  {
    sub_C3C0();
  }

  v3 = qword_1E0A0;

  return v3;
}

- (MSDScreenSaverManager)init
{
  v13.receiver = self;
  v13.super_class = MSDScreenSaverManager;
  v2 = [(MSDScreenSaverManager *)&v13 init];
  if (v2)
  {
    if (CFPreferencesGetAppBooleanValue(@"StoreDemoMode", @"com.apple.demo-settings", 0))
    {
      v3 = dispatch_queue_create("com.apple.StoreDemoPlugin", 0);
      [(MSDScreenSaverManager *)v2 setWorkQueue:v3];

      workQueue = [(MSDScreenSaverManager *)v2 workQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_5668;
      block[3] = &unk_185D0;
      v5 = v2;
      v11 = v5;
      dispatch_async(workQueue, block);

      v6 = v5;
    }

    else
    {
      v7 = screenSaverLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Store Demo Mode bit is not on.", buf, 2u);
      }

      v8 = v2;
    }
  }

  return v2;
}

- (void)setupIdleTimerHandler
{
  if ([(MSDScreenSaverManager *)self shouldSetupIdleHandler])
  {
    v3 = +[NSUserDefaults standardUserDefaults];
    [v3 setBool:1 forKey:@"SBUsesStoreDemoPlugin"];

    v4 = screenSaverLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "SBUsesStoreDemoPlugin set!", buf, 2u);
    }

    v5 = +[MSDStoreHoursManager sharedInstance];
    [(MSDScreenSaverManager *)self setStoreHoursManager:v5];

    [(MSDScreenSaverManager *)self setStoreHourSettings:0];
    v6 = +[NSDistributedNotificationCenter defaultCenter];
    [v6 addObserver:self selector:"handleStoreHourSettingsChanged:" name:@"com.apple.MobileStoreDemo.SettingsUpdated" object:0];

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:self selector:"handleStoreHourSettingsChanged:" name:@"com.apple.MobileStoreDemo.StoreHours.Expired" object:0];

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:self selector:"handleStoreHourSettingsChanged:" name:NSSystemClockDidChangeNotification object:0];

    [(MSDScreenSaverManager *)self loadScreenSaverConfig];
    v9 = [SBIdleTimerRequestConfiguration configurationWithIdleEventHandler:self];
    v10 = +[ITIdleTimerState sharedInstance];
    v11 = [v10 newIdleTimerAssertionWithConfiguration:v9 forReason:@"MSD - Screen saver idle timer"];
    [(MSDScreenSaverManager *)self setIdleTimerAssertion:v11];

    v12 = screenSaverLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v23 = "[MSDScreenSaverManager setupIdleTimerHandler]";
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%s - Idle timer assertion acquired.", buf, 0xCu);
    }

    [(MSDScreenSaverManager *)self setBacklightLevel:-1];
    v13 = [FBSDisplayLayoutMonitor sharedMonitorForDisplayType:0];
    [v13 addObserver:self];
    monitor = [(MSDScreenSaverManager *)self monitor];

    if (monitor)
    {
      monitor2 = [(MSDScreenSaverManager *)self monitor];
      [monitor2 invalidate];

      [(MSDScreenSaverManager *)self setMonitor:0];
    }

    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_5F54;
    v21[3] = &unk_18820;
    v21[4] = self;
    v16 = [RBSProcessMonitor monitorWithConfiguration:v21];
    [(MSDScreenSaverManager *)self setMonitor:v16];

    v17 = screenSaverLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v23 = "[MSDScreenSaverManager setupIdleTimerHandler]";
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "%s - RBSProcessMonitor initialized.", buf, 0xCu);
    }

    if ([(MSDScreenSaverManager *)self turnOffAlwaysOnTimeAtNight])
    {
      [(MSDScreenSaverManager *)self setupAlwaysOnTimeToggleTimer];
    }

    v18 = +[NSDate now];
    [(MSDScreenSaverManager *)self setSessionStartTime:v18];

    if ([(MSDScreenSaverManager *)self deviceType]== &dword_4 + 2)
    {
      v19 = +[MSDKManagedDevice sharedInstance];
      [v19 stashCurrentWallpaperSettingsIfNeeded];

      v20 = +[MSDKManagedDevice sharedInstance];
      [v20 initializeAppSwitcherContent];
    }
  }
}

- (BOOL)handleIdleTimerDidWarn
{
  v3 = screenSaverLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[MSDScreenSaverManager handleIdleTimerDidWarn]";
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%s get called.", &v5, 0xCu);
  }

  return [(MSDScreenSaverManager *)self shouldHandleIdleHandler];
}

- (BOOL)handleIdleTimerDidExpire
{
  v3 = screenSaverLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[MSDScreenSaverManager handleIdleTimerDidExpire]";
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%s get called.", buf, 0xCu);
  }

  shouldHandleIdleHandler = [(MSDScreenSaverManager *)self shouldHandleIdleHandler];
  if (shouldHandleIdleHandler)
  {
    workQueue = [(MSDScreenSaverManager *)self workQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_62AC;
    block[3] = &unk_185D0;
    block[4] = self;
    dispatch_async(workQueue, block);
  }

  return shouldHandleIdleHandler;
}

- (void)layoutMonitor:(id)monitor didUpdateDisplayLayout:(id)layout
{
  layoutCopy = layout;
  workQueue = [(MSDScreenSaverManager *)self workQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_6368;
  v8[3] = &unk_187D0;
  v9 = layoutCopy;
  selfCopy = self;
  v7 = layoutCopy;
  dispatch_async(workQueue, v8);
}

- (void)assertionWasAcquired:(id)acquired
{
  v3 = screenSaverLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Backlight assertion was acquired!", v4, 2u);
  }
}

- (void)assertion:(id)assertion didFailToAcquireWithError:(id)error
{
  errorCopy = error;
  v5 = screenSaverLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_C3D4(errorCopy, v5);
  }
}

- (void)applicationsDidInstall:(id)install
{
  installCopy = install;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v22 = [installCopy countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v22)
  {
    v6 = *v26;
    v21 = v24;
    *&v5 = 138543362;
    v20 = v5;
    do
    {
      v7 = 0;
      do
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(installCopy);
        }

        v8 = *(*(&v25 + 1) + 8 * v7);
        bundleIdentifier = [v8 bundleIdentifier];
        if (([bundleIdentifier isEqualToString:@"com.apple.ist.demoloop"] & 1) == 0)
        {
          bundleIdentifier2 = [v8 bundleIdentifier];
          if (([bundleIdentifier2 isEqualToString:@"com.apple.ist.windward"] & 1) == 0)
          {
            bundleIdentifier3 = [v8 bundleIdentifier];
            if (![bundleIdentifier3 isEqualToString:@"com.apple.ist.DemoDiscoveryApp"])
            {
              [v8 bundleIdentifier];
              v15 = v6;
              v17 = v16 = installCopy;
              v18 = [v17 isEqualToString:@"com.retailtech.arkenstone"];

              installCopy = v16;
              v6 = v15;

              if ((v18 & 1) == 0)
              {
                goto LABEL_15;
              }

              goto LABEL_12;
            }
          }
        }

LABEL_12:
        v12 = screenSaverLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          bundleIdentifier4 = [v8 bundleIdentifier];
          *buf = v20;
          v30 = bundleIdentifier4;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "StoreDemo plugin: %{public}@ app installed", buf, 0xCu);
        }

        workQueue = [(MSDScreenSaverManager *)self workQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        v24[0] = sub_6B6C;
        v24[1] = &unk_187D0;
        v24[2] = self;
        v24[3] = v8;
        dispatch_async(workQueue, block);

LABEL_15:
        v7 = v7 + 1;
      }

      while (v22 != v7);
      v19 = [installCopy countByEnumeratingWithState:&v25 objects:v31 count:16];
      v22 = v19;
    }

    while (v19);
  }
}

- (BOOL)isRetailDeviceContentUpdating
{
  screenSaverAppID = [(MSDScreenSaverManager *)self screenSaverAppID];
  if ([screenSaverAppID isEqualToString:@"com.apple.ist.windward"])
  {
  }

  else
  {
    screenSaverAppID2 = [(MSDScreenSaverManager *)self screenSaverAppID];
    v5 = [screenSaverAppID2 isEqualToString:@"com.apple.ist.DemoDiscoveryApp"];

    if (!v5)
    {
      return 0;
    }
  }

  getDemoMode = [(MSDScreenSaverManager *)self getDemoMode];
  return getDemoMode == 2 || getDemoMode == 4;
}

- (BOOL)shouldHandleIdleHandler
{
  if (BYSetupAssistantNeedsToRun())
  {
    v3 = screenSaverLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Buddy is still running, will not launch screen saver.", v5, 2u);
    }

    return 0;
  }

  else
  {

    return [(MSDScreenSaverManager *)self shouldSetupIdleHandler];
  }
}

- (BOOL)shouldSetupIdleHandler
{
  getDemoMode = [(MSDScreenSaverManager *)self getDemoMode];
  result = 1;
  if (getDemoMode && getDemoMode != 5)
  {
    if ([(MSDScreenSaverManager *)self isRetailDeviceContentUpdating])
    {
      return 1;
    }

    else
    {
      v5 = screenSaverLogHandle();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        screenSaverAppID = [(MSDScreenSaverManager *)self screenSaverAppID];
        v7[0] = 67109378;
        v7[1] = getDemoMode;
        v8 = 2114;
        v9 = screenSaverAppID;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Device in mode %d, screensaver: %{public}@, will not launch screen saver.", v7, 0x12u);
      }

      return 0;
    }
  }

  return result;
}

- (void)handleApplicationStateChanged:(id)changed
{
  changedCopy = changed;
  workQueue = [(MSDScreenSaverManager *)self workQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_6EA0;
  v7[3] = &unk_187D0;
  v8 = changedCopy;
  selfCopy = self;
  v6 = changedCopy;
  dispatch_async(workQueue, v7);
}

- (void)handleStoreHourSettingsChanged:(id)changed
{
  changedCopy = changed;
  workQueue = [(MSDScreenSaverManager *)self workQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_70B8;
  v7[3] = &unk_187D0;
  v8 = changedCopy;
  selfCopy = self;
  v6 = changedCopy;
  dispatch_async(workQueue, v7);
}

- (BOOL)loadScreenSaverConfig
{
  getStoreHours = [(MSDScreenSaverManager *)self getStoreHours];
  getLastSettingsUpdatedTime = [(MSDScreenSaverManager *)self getLastSettingsUpdatedTime];
  storeHourSettings = [(MSDScreenSaverManager *)self storeHourSettings];
  if (storeHourSettings)
  {
    v6 = storeHourSettings;
    lastSettingsUpdated = [(MSDScreenSaverManager *)self lastSettingsUpdated];
    if (lastSettingsUpdated)
    {
      v8 = lastSettingsUpdated;
      storeHourSettings2 = [(MSDScreenSaverManager *)self storeHourSettings];
      if ([storeHourSettings2 isEqualToArray:getStoreHours])
      {
        lastSettingsUpdated2 = [(MSDScreenSaverManager *)self lastSettingsUpdated];
        v11 = [lastSettingsUpdated2 isEqualToDate:getLastSettingsUpdatedTime];

        if (v11)
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      }
    }
  }

LABEL_8:
  storeHoursManager = [(MSDScreenSaverManager *)self storeHoursManager];
  [storeHoursManager updateStoreHours:getStoreHours lastSettingsUpdatedDate:getLastSettingsUpdatedTime];

  [(MSDScreenSaverManager *)self setStoreHourSettings:getStoreHours];
  [(MSDScreenSaverManager *)self setLastSettingsUpdated:getLastSettingsUpdatedTime];
LABEL_9:
  storeHoursManager2 = [(MSDScreenSaverManager *)self storeHoursManager];
  evaluateStoreStatusAgainstCurrentTime = [storeHoursManager2 evaluateStoreStatusAgainstCurrentTime];

  return evaluateStoreStatusAgainstCurrentTime;
}

- (void)handleSpringBoardLaunch
{
  if ([(MSDScreenSaverManager *)self turnOffDisplayAtNight])
  {
    getLastAutoRebootTime = [(MSDScreenSaverManager *)self getLastAutoRebootTime];
    [(MSDScreenSaverManager *)self loadScreenSaverConfig];
    storeHoursManager = [(MSDScreenSaverManager *)self storeHoursManager];
    if (([storeHoursManager isStoreOpenNow] & 1) != 0 || !getLastAutoRebootTime || (objc_msgSend(getLastAutoRebootTime, "timeIntervalSinceNow"), v5 <= -180.0))
    {
    }

    else
    {
      screenSaverAppID = [(MSDScreenSaverManager *)self screenSaverAppID];
      v7 = [screenSaverAppID isEqualToString:@"com.apple.ist.demoloop"];

      if (v7)
      {
        v8 = screenSaverLogHandle();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Channel device auto-rebooted during close hour, will not launch screensaver.", buf, 2u);
        }

        [(MSDScreenSaverManager *)self stopScreenSaver];
        return;
      }
    }
  }

  if ([(MSDScreenSaverManager *)self shouldHandleIdleHandler])
  {
    v9 = screenSaverLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Launching screen saver right after system boot.", v10, 2u);
    }

    [(MSDScreenSaverManager *)self launchScreenSaver];
  }
}

- (void)launchSpringBoard
{
  v2 = objc_alloc_init(FBSOpenApplicationService);
  v3 = screenSaverLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "StoreDemo plugin: launching SpringBoard.", v6, 2u);
  }

  v7 = FBSOpenApplicationOptionKeyUnlockDevice;
  v8 = &__kCFBooleanTrue;
  v4 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v5 = [FBSOpenApplicationOptions optionsWithDictionary:v4];

  [v2 openApplication:@"com.apple.springboard" withOptions:v5 completion:&stru_18860];
}

- (void)launchScreenSaver
{
  v3 = objc_alloc_init(FBSOpenApplicationService);
  if ([(MSDScreenSaverManager *)self screenSaverRunning])
  {
    goto LABEL_13;
  }

  v4 = screenSaverLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v20 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "StoreDemo plugin: launching screen saver.", v20, 2u);
  }

  v26 = FBSOpenApplicationOptionKeyUnlockDevice;
  v27 = &__kCFBooleanTrue;
  v5 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  v6 = [NSMutableDictionary dictionaryWithDictionary:v5];

  v7 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v7 userInterfaceIdiom];

  if (userInterfaceIdiom == &dword_0 + 1)
  {
    v24[0] = SBSOpenApplicationOptionKeyLaunchBundleIdentifiers;
    screenSaverAppID = [(MSDScreenSaverManager *)self screenSaverAppID];
    v23 = screenSaverAppID;
    v10 = [NSArray arrayWithObjects:&v23 count:1];
    v25[0] = v10;
    v25[1] = @"[A<center,maximized>]";
    v24[1] = SBSOpenApplicationOptionKeyWindowingFormat;
    v24[2] = FBSOpenApplicationOptionKeyLaunchIntent;
    v25[2] = &off_19430;
    v11 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:3];
    [v6 addEntriesFromDictionary:v11];
  }

  screenSaverAppID2 = [(MSDScreenSaverManager *)self screenSaverAppID];
  if ([screenSaverAppID2 isEqualToString:@"com.apple.ist.windward"])
  {

LABEL_9:
    v21 = FBSOpenApplicationOptionKeyPayloadURL;
    v15 = [NSURL URLWithString:@"msdss://"];
    v22 = v15;
    v16 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    [v6 addEntriesFromDictionary:v16];

    goto LABEL_10;
  }

  screenSaverAppID3 = [(MSDScreenSaverManager *)self screenSaverAppID];
  v14 = [screenSaverAppID3 isEqualToString:@"com.apple.ist.DemoDiscoveryApp"];

  if (v14)
  {
    goto LABEL_9;
  }

LABEL_10:
  v17 = [FBSOpenApplicationOptions optionsWithDictionary:v6];
  v18 = screenSaverLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    sub_C46C(v6, v18);
  }

  screenSaverAppID4 = [(MSDScreenSaverManager *)self screenSaverAppID];
  [v3 openApplication:screenSaverAppID4 withOptions:v17 completion:&stru_18880];

LABEL_13:
}

- (void)screenSaverStopped
{
  if ([(MSDScreenSaverManager *)self screenSaverRunning])
  {
    v3 = +[NSDate now];
    [(MSDScreenSaverManager *)self setSessionStartTime:v3];

    timer = [(MSDScreenSaverManager *)self timer];

    if (timer)
    {
      timer2 = [(MSDScreenSaverManager *)self timer];
      userInfo = [timer2 userInfo];
      v7 = [userInfo objectForKey:@"LaunchScreenSaver"];

      if (v7 && [v7 BOOLValue])
      {
        v8 = screenSaverLogHandle();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Timer will be kept alive since its purpose is to relaunch screen saver later.", buf, 2u);
        }
      }

      else
      {
        v9 = screenSaverLogHandle();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *v11 = 0;
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Timer will be canceled because screen saver stopped.", v11, 2u);
        }

        timer3 = [(MSDScreenSaverManager *)self timer];
        [timer3 invalidate];

        [(MSDScreenSaverManager *)self setTimer:0];
      }
    }
  }

  [(MSDScreenSaverManager *)self setScreenSaverRunning:0];
}

- (void)screenSaverStarted
{
  if (![(MSDScreenSaverManager *)self screenSaverRunning])
  {
    [(MSDScreenSaverManager *)self setScreenSaverRunning:1];
    sessionStartTime = [(MSDScreenSaverManager *)self sessionStartTime];

    if (sessionStartTime)
    {
      v4 = +[MSDKManagedDevice sharedInstance];
      sessionStartTime2 = [(MSDScreenSaverManager *)self sessionStartTime];
      v6 = +[NSDate now];
      [v4 collectAppUsageWithSessionStart:sessionStartTime2 andEnd:v6];
    }

    if ([(MSDScreenSaverManager *)self isRetailDeviceContentUpdating]|| ![(MSDScreenSaverManager *)self turnOffDisplayAtNight])
    {
      screenSaverShouldRunUntil = screenSaverLogHandle();
      if (os_log_type_enabled(screenSaverShouldRunUntil, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, screenSaverShouldRunUntil, OS_LOG_TYPE_DEFAULT, "DemoUpdate on retail device, will run Pricing app till reboot (or it get killed).", buf, 2u);
      }
    }

    else
    {
      [(MSDScreenSaverManager *)self loadScreenSaverConfig];
      storeHoursManager = [(MSDScreenSaverManager *)self storeHoursManager];
      screenSaverShouldRunUntil = [storeHoursManager screenSaverShouldRunUntil];

      [screenSaverShouldRunUntil timeIntervalSinceNow];
      v10 = v9;
      v11 = screenSaverLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        toString = [screenSaverShouldRunUntil toString];
        *buf = 134218242;
        v21 = v10;
        v22 = 2114;
        v23 = toString;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "The app should run for %td seconds (till %{public}@).", buf, 0x16u);
      }

      v13 = [[PCPersistentTimer alloc] initWithTimeInterval:@"com.apple.StoreDemoPlugin.stopScreenSaver" serviceIdentifier:self target:"stopScreenSaverTimerFired" selector:0 userInfo:v10];
      [(MSDScreenSaverManager *)self setTimer:v13];

      timer = [(MSDScreenSaverManager *)self timer];
      [timer setMinimumEarlyFireProportion:1.0];

      timer2 = [(MSDScreenSaverManager *)self timer];
      workQueue = [(MSDScreenSaverManager *)self workQueue];
      [timer2 scheduleInQueue:workQueue];
    }

    v17 = dispatch_time(0, 5000000000);
    workQueue2 = [(MSDScreenSaverManager *)self workQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_8118;
    block[3] = &unk_185D0;
    block[4] = self;
    dispatch_after(v17, workQueue2, block);
  }
}

- (void)stopScreenSaverTimerFired
{
  v3 = screenSaverLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Timer to stop screen saver fired.", v4, 2u);
  }

  [(MSDScreenSaverManager *)self stopScreenSaver];
}

- (void)stopScreenSaver
{
  [(MSDScreenSaverManager *)self loadScreenSaverConfig];
  storeHoursManager = [(MSDScreenSaverManager *)self storeHoursManager];
  screenSaverShouldLaunchAt = [storeHoursManager screenSaverShouldLaunchAt];

  [screenSaverShouldLaunchAt timeIntervalSinceNow];
  v6 = v5;
  timer = [(MSDScreenSaverManager *)self timer];

  if (timer)
  {
    timer2 = [(MSDScreenSaverManager *)self timer];
    [timer2 invalidate];
  }

  v9 = [[PCPersistentTimer alloc] initWithTimeInterval:@"com.apple.StoreDemoPlugin.launchScreenSaver" serviceIdentifier:self target:"launchScreenSaverTimerFired" selector:&off_19448 userInfo:v6];
  [(MSDScreenSaverManager *)self setTimer:v9];

  timer3 = [(MSDScreenSaverManager *)self timer];
  [timer3 setMinimumEarlyFireProportion:1.0];

  timer4 = [(MSDScreenSaverManager *)self timer];
  workQueue = [(MSDScreenSaverManager *)self workQueue];
  [timer4 scheduleInQueue:workQueue];

  v13 = screenSaverLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    toString = [screenSaverShouldLaunchAt toString];
    v15 = 138543362;
    v16 = toString;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Timer scheduled to run screen saver at %{public}@", &v15, 0xCu);
  }

  dispatch_async(&_dispatch_main_q, &stru_188C0);
}

- (void)launchScreenSaverTimerFired
{
  v3 = screenSaverLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Timer to launch screen saver fired.", v4, 2u);
  }

  [(MSDScreenSaverManager *)self launchScreenSaver];
}

- (void)setupAlwaysOnTimeToggleTimer
{
  [(MSDScreenSaverManager *)self loadScreenSaverConfig];
  storeHoursManager = [(MSDScreenSaverManager *)self storeHoursManager];
  isStoreOpenNow = [storeHoursManager isStoreOpenNow];

  storeHoursManager2 = [(MSDScreenSaverManager *)self storeHoursManager];
  nextStoreOpenDate = [storeHoursManager2 nextStoreOpenDate];

  storeHoursManager3 = [(MSDScreenSaverManager *)self storeHoursManager];
  nextStoreClosedDate = [storeHoursManager3 nextStoreClosedDate];

  [nextStoreOpenDate timeIntervalSinceNow];
  v10 = v9;
  [nextStoreClosedDate timeIntervalSinceNow];
  if (v10 <= 0.0 || v11 <= 0.0)
  {
    v14 = screenSaverLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_C4E4(v14);
    }

    v12 = 0;
    v13 = 0;
    isStoreOpenNow = 1;
  }

  else
  {
    v12 = v10 < 60.0;
    v13 = v11 < 60.0;
  }

  v15 = screenSaverLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v28 = 67109632;
    *v29 = isStoreOpenNow;
    *&v29[4] = 1024;
    *&v29[6] = v12;
    LOWORD(v30) = 1024;
    *(&v30 + 2) = v13;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Setting up AOT toggle timer: Store open=%{BOOL}d, Soon open=%{BOOL}d, Soon close=%{BOOL}d", &v28, 0x14u);
  }

  if (isStoreOpenNow)
  {
    if (v13)
    {
LABEL_11:
      v16 = [nextStoreOpenDate dateByAddingTimeInterval:-30.0];
      [(MSDScreenSaverManager *)self acquireDisableAlwaysOnTimeAssertion];
      goto LABEL_14;
    }
  }

  else if (!v12)
  {
    goto LABEL_11;
  }

  v16 = [nextStoreClosedDate dateByAddingTimeInterval:-30.0];
  [(MSDScreenSaverManager *)self releaseDisableAlwaysOnTimeAssertion];
LABEL_14:
  [v16 timeIntervalSinceNow];
  v18 = v17;
  if (v17 <= 0.0)
  {
    v19 = screenSaverLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v28) = 0;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "AOT toggle timer interval is negative. Use default value of 3600 seconds.", &v28, 2u);
    }

    v18 = 3600.0;
  }

  v20 = screenSaverLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    toString = [v16 toString];
    v28 = 134218242;
    *v29 = v18;
    *&v29[8] = 2114;
    v30 = toString;
    _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "AOT toggle timer will fire in %f seconds (at %{public}@).", &v28, 0x16u);
  }

  aotTimer = [(MSDScreenSaverManager *)self aotTimer];

  if (aotTimer)
  {
    aotTimer2 = [(MSDScreenSaverManager *)self aotTimer];
    [aotTimer2 invalidate];

    [(MSDScreenSaverManager *)self setAotTimer:0];
  }

  v24 = [[PCPersistentTimer alloc] initWithTimeInterval:@"com.apple.StoreDemoPlugin.AlwaysOnTimeToggle" serviceIdentifier:self target:"handleAlwaysOnTimeToggleTimerFired:" selector:0 userInfo:v18];
  [(MSDScreenSaverManager *)self setAotTimer:v24];

  aotTimer3 = [(MSDScreenSaverManager *)self aotTimer];
  [aotTimer3 setMinimumEarlyFireProportion:1.0];

  aotTimer4 = [(MSDScreenSaverManager *)self aotTimer];
  workQueue = [(MSDScreenSaverManager *)self workQueue];
  [aotTimer4 scheduleInQueue:workQueue];
}

- (void)handleAlwaysOnTimeToggleTimerFired:(id)fired
{
  v4 = screenSaverLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "AOT toggle timer fired to toggle AOT!", v5, 2u);
  }

  [(MSDScreenSaverManager *)self launchSpringBoard];
  [(MSDScreenSaverManager *)self setupAlwaysOnTimeToggleTimer];
}

- (void)acquireDisableAlwaysOnTimeAssertion
{
  v3 = screenSaverLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Acquiring backlight assertion for disabling always-on time.", v9, 2u);
  }

  backlightAssertion = [(MSDScreenSaverManager *)self backlightAssertion];

  if (backlightAssertion)
  {
    v5 = screenSaverLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Backlight assertion is already acquired!", v9, 2u);
    }
  }

  else
  {
    v6 = +[BLSDisableAlwaysOnAttribute disableAlwaysOn];
    v10[0] = v6;
    v7 = +[BLSValidWhenBacklightInactiveAttribute ignoreWhenBacklightInactivates];
    v10[1] = v7;
    v5 = [NSArray arrayWithObjects:v10 count:2];

    v8 = [BLSAssertion acquireWithExplanation:@"Store Demo - Night Time Disable" observer:self attributes:v5];
    [(MSDScreenSaverManager *)self setBacklightAssertion:v8];
  }
}

- (void)releaseDisableAlwaysOnTimeAssertion
{
  v3 = screenSaverLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Releasing backlight assertion for disabling always-on time.", buf, 2u);
  }

  backlightAssertion = [(MSDScreenSaverManager *)self backlightAssertion];

  if (backlightAssertion)
  {
    backlightAssertion2 = [(MSDScreenSaverManager *)self backlightAssertion];
    [backlightAssertion2 invalidate];

    [(MSDScreenSaverManager *)self setBacklightAssertion:0];
  }

  else
  {
    v6 = screenSaverLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Backlight assertion is already released!", v7, 2u);
    }
  }
}

- (int)getDemoMode
{
  v3 = +[MSDKManagedDevice sharedInstance];
  preferencesFileExists = [v3 preferencesFileExists];

  if (!preferencesFileExists)
  {
    return 0;
  }

  return [(MSDScreenSaverManager *)self readDemoMode];
}

- (id)getLastAutoRebootTime
{
  v3 = +[MSDKManagedDevice sharedInstance];
  preferencesFileExists = [v3 preferencesFileExists];

  if (preferencesFileExists)
  {
    readLastAutoReboot = [(MSDScreenSaverManager *)self readLastAutoReboot];
    v6 = readLastAutoReboot;
    if (readLastAutoReboot)
    {
      v7 = +[NSDate dateWithTimeIntervalSinceReferenceDate:](NSDate, "dateWithTimeIntervalSinceReferenceDate:", [readLastAutoReboot integerValue]);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)getLastSettingsUpdatedTime
{
  v3 = +[MSDKManagedDevice sharedInstance];
  preferencesFileExists = [v3 preferencesFileExists];

  if (preferencesFileExists)
  {
    readLastSettingsUpdated = [(MSDScreenSaverManager *)self readLastSettingsUpdated];
    if (readLastSettingsUpdated && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v6 = readLastSettingsUpdated;
    }

    else
    {
      v6 = +[NSDate distantPast];
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)getStoreHours
{
  v3 = +[MSDKManagedDevice sharedInstance];
  preferencesFileExists = [v3 preferencesFileExists];

  if (preferencesFileExists)
  {
    readHubSuppliedSettings = [(MSDScreenSaverManager *)self readHubSuppliedSettings];
    if (readHubSuppliedSettings && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v6 = [readHubSuppliedSettings objectForKey:@"StoreHours"];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int)readDemoMode
{
  v2 = +[MSDKManagedDevice sharedInstance];
  getDemoInstallState = [v2 getDemoInstallState];

  return getDemoInstallState;
}

- (id)readLastAutoReboot
{
  v2 = +[MSDKManagedDevice sharedInstance];
  v3 = [v2 readPreferencesFileObjectForKey:@"msd-last-auto-reboot"];

  return v3;
}

- (id)readLastSettingsUpdated
{
  v2 = +[MSDKManagedDevice sharedInstance];
  v3 = [v2 readPreferencesFileObjectForKey:@"LastSettingsUpdatedTime"];

  return v3;
}

- (id)readHubSuppliedSettings
{
  v2 = +[MSDKManagedDevice sharedInstance];
  v3 = [v2 readPreferencesFileObjectForKey:@"HubSuppliedSettings"];

  return v3;
}

- (BOOL)isInStandbyMode:(id)mode
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  elements = [mode elements];
  v4 = [elements countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    v7 = SBSDisplayLayoutElementStandByIdentifier;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(elements);
        }

        identifier = [*(*(&v13 + 1) + 8 * i) identifier];
        v10 = [identifier isEqualToString:v7];

        if (v10)
        {
          v11 = 1;
          goto LABEL_11;
        }
      }

      v5 = [elements countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

@end