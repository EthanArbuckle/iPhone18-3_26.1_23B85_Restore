@interface PLPhotosApplication
+ (void)initialize;
- (void)_applicationDidBecomeActive:(id)active;
- (void)_applicationDidEnterBackground:(id)background;
- (void)_applicationWillEnterForeground:(id)foreground;
- (void)_networkReachabilityDidChange:(id)change;
- (void)_registerForPhotoStreamActivityNotifications;
- (void)_startObservingReachabilityChanges;
- (void)_stopObservingReachabilityChanges;
- (void)_unregisterForPhotoStreamActivityNotifications;
- (void)_updateSuspensionSettings;
- (void)applicationDidFinishLaunching:(id)launching;
- (void)dealloc;
- (void)disableNetworkObservation;
- (void)enableNetworkObservation;
- (void)photosPreferencesChanged;
- (void)setReceivingRemoteControlEvents:(BOOL)events;
@end

@implementation PLPhotosApplication

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    srandomdev();
    originalUncaughtExceptionHandler = NSGetUncaughtExceptionHandler();

    NSSetUncaughtExceptionHandler(myUncaughtExceptionHandler);
  }
}

- (void)_registerForPhotoStreamActivityNotifications
{
  v3 = MEMORY[0x277D85DD0];
  v2 = pl_notify_register_dispatch();
  if (v2)
  {
    NSLog(&cfstr_FailedToRegist.isa, v2, v3, 3221225472, __67__PLPhotosApplication__registerForPhotoStreamActivityNotifications__block_invoke, &unk_2782A1BE8, self);
  }
}

- (void)_unregisterForPhotoStreamActivityNotifications
{
  v2 = notify_cancel(self->_sharedPhotoStreamInvitationFailureToken);
  if (v2)
  {
    NSLog(&cfstr_NotifyCancelFa.isa, v2);
  }
}

- (void)disableNetworkObservation
{
  v2 = self->_observeForRechabilityChanges - 1;
  self->_observeForRechabilityChanges = v2;
  if (!v2)
  {
    [(PLPhotosApplication *)self _stopObservingReachabilityChanges];
  }
}

- (void)enableNetworkObservation
{
  observeForRechabilityChanges = self->_observeForRechabilityChanges;
  self->_observeForRechabilityChanges = observeForRechabilityChanges + 1;
  if (!observeForRechabilityChanges)
  {
    [(PLPhotosApplication *)self _startObservingReachabilityChanges];
  }
}

- (void)_stopObservingReachabilityChanges
{
  mEMORY[0x277CEC5B8] = [MEMORY[0x277CEC5B8] sharedNetworkObserver];

  [mEMORY[0x277CEC5B8] removeObserver:self forHostname:@"0.0.0.0"];
}

- (void)_startObservingReachabilityChanges
{
  mEMORY[0x277CEC5B8] = [MEMORY[0x277CEC5B8] sharedNetworkObserver];

  [mEMORY[0x277CEC5B8] addObserver:self selector:sel__networkReachabilityDidChange_ forHostname:@"0.0.0.0"];
}

- (void)_networkReachabilityDidChange:(id)change
{
  userInfo = [change userInfo];
  v6 = [userInfo objectForKey:*MEMORY[0x277CEC518]];
  userInfo2 = [change userInfo];
  self->_isReachable = [objc_msgSend(userInfo2 objectForKey:{*MEMORY[0x277CEC510]), "BOOLValue"}];
  v8 = (*([v6 bytes] + 2) & 4) == 0 && self->_isReachable;
  self->_isOnWifi = v8;
  v9 = [objc_alloc(MEMORY[0x277CCABB0]) initWithBool:self->_isReachable];
  v10 = [objc_alloc(MEMORY[0x277CCABB0]) initWithBool:self->_isOnWifi];
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v9, *MEMORY[0x277D3AE00], v10, *MEMORY[0x277D3ADF8], 0}];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v13 = *MEMORY[0x277D3ADF0];

  [defaultCenter postNotificationName:v13 object:0 userInfo:v11];
}

- (void)setReceivingRemoteControlEvents:(BOOL)events
{
  if (events)
  {
    if (!self->_receivingRemoteControlEvents)
    {
      PLMRMediaRemoteSetNowPlayingApplicationOverrideEnabled(1);
      [(PLPhotosApplication *)self beginReceivingRemoteControlEvents];
      self->_receivingRemoteControlEvents = 1;
    }
  }

  else if (self->_receivingRemoteControlEvents)
  {
    self->_receivingRemoteControlEvents = 0;
    [(PLPhotosApplication *)self endReceivingRemoteControlEvents];

    PLMRMediaRemoteSetNowPlayingApplicationOverrideEnabled(0);
  }
}

- (void)_updateSuspensionSettings
{
  if (([MEMORY[0x277D75128] shouldMakeUIForDefaultPNG] & 1) == 0)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v3 setObject:*MEMORY[0x277D76628] forKey:*MEMORY[0x277D77730]];
    [(PLPhotosApplication *)self updateSuspendedSettings:v3];
  }
}

- (void)_applicationDidBecomeActive:(id)active
{
  [(PLPhotosApplication *)self _displayAndRemovePhoneInvitationFailures];

  [(PLPhotosApplication *)self prepareForApplicationDidBecomeActive];
}

- (void)_applicationDidEnterBackground:(id)background
{
  [(PLPhotosApplication *)self setReceivingRemoteControlEvents:0];
  [(PLPhotosApplication *)self setStatusBarShowsProgress:0];
  [(PLPhotosApplication *)self _updateSuspensionSettings];
  [(PLPhotosApplication *)self _unregisterForPhotoStreamActivityNotifications];
  [MEMORY[0x277D3AD48] applicationIsInForeground:0 photoLibraryURL:{objc_msgSend(MEMORY[0x277D3B238], "systemLibraryURL")}];
  [MEMORY[0x277D3AD90] userDidLeavePhotosApplication];

  [(PLPhotosApplication *)self prepareForApplicationDidEnterBackground];
}

- (void)_applicationWillEnterForeground:(id)foreground
{
  [(PLPhotosApplication *)self _registerForPhotoStreamActivityNotifications];
  [(PLPhotosApplication *)self prepareForApplicationWillEnterForeground];
  [MEMORY[0x277D3AD48] applicationIsInForeground:1 photoLibraryURL:{objc_msgSend(MEMORY[0x277D3B238], "systemLibraryURL")}];
  if (_applicationWillEnterForeground__isInitialLaunch)
  {
    systemPhotoLibrary = [MEMORY[0x277D3AD38] systemPhotoLibrary];

    [systemPhotoLibrary clientApplicationWillEnterForeground];
  }

  else
  {
    _applicationWillEnterForeground__isInitialLaunch = 1;
  }
}

- (void)photosPreferencesChanged
{
  CFPreferencesAppSynchronize(@"com.apple.mobileslideshow");
  v2 = +[PLPhotosDefaults sharedInstance];

  [(PLPhotosDefaults *)v2 reloadPhotoDefaultValues];
}

- (void)applicationDidFinishLaunching:(id)launching
{
  PLDebugEnableCoreDataMultithreadedAsserts();
  dispatch_get_global_queue(25, 0);
  pl_dispatch_async();
  if (MGGetBoolAnswer())
  {
    [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
  }

  PLSetShouldCacheIOSurfaces();
  CFPreferencesGetAppBooleanValue(@"LogJPEGDecodeTime", @"com.apple.mobileslideshow", 0);
  PLSetShouldLogImageDecodeTime();
  [objc_msgSend(MEMORY[0x277D75128] "sharedApplication")];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, photosPreferenceChanged, @"com.apple.mobileslideshow.PreferenceChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  _signal_nobind();
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__applicationWillEnterForeground_ name:*MEMORY[0x277D76758] object:0];
  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__applicationDidEnterBackground_ name:*MEMORY[0x277D76660] object:0];
  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  v8 = *MEMORY[0x277D76648];

  [defaultCenter3 addObserver:self selector:sel__applicationDidBecomeActive_ name:v8 object:0];
}

uint64_t __53__PLPhotosApplication_applicationDidFinishLaunching___block_invoke()
{
  v0 = MEMORY[0x277D3AD48];
  v1 = [MEMORY[0x277D3B238] systemLibraryURL];

  return [v0 sharedStreamsExplictlyDisabledForPhotoLibraryURL:v1];
}

- (void)dealloc
{
  [(PLPhotosApplication *)self _stopObservingReachabilityChanges];
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);

  v4.receiver = self;
  v4.super_class = PLPhotosApplication;
  [(PLPhotosApplication *)&v4 dealloc];
}

@end