@interface SBVideoOutController
+ (id)sharedInstance;
- (BOOL)_displayMonitorHasAConnectedExternalIdentity;
- (SBVideoOutController)init;
- (void)_authenticationStateChanged:(id)changed;
- (void)_main_clearScreenSharingBackgroundActivityAssertion;
- (void)_main_clearVideoOutBackgroundActivityAssertion;
- (void)_main_startVideoOutBackgroundActivityAssertion;
- (void)_main_updateScreenSharingBackgroundActivityAssertion;
- (void)_main_updateScreenSharingBackgroundActivityAssertionSuppressionPreference:(id)preference;
- (void)_main_updateVideoOutBackgroundActivityAssertion;
- (void)_notifyThatScreenSharingChanged;
- (void)_registerForNotifications;
- (void)_unregisterForNotifications;
- (void)_updateAVRoutes;
- (void)_updateDisplayMonitorState;
- (void)_updateScreenMirroringObserverWithSuppressionPreferenceFromDefaults:(id)defaults;
- (void)cacheDidRebuildAfterServerDeath:(id)death;
- (void)dealloc;
- (void)displayMonitor:(id)monitor didConnectIdentity:(id)identity withConfiguration:(id)configuration;
- (void)displayMonitor:(id)monitor willDisconnectIdentity:(id)identity;
@end

@implementation SBVideoOutController

- (void)_main_clearScreenSharingBackgroundActivityAssertion
{
  BSDispatchQueueAssertMain();
  [(NSTimer *)self->_screenSharingBackgroundActivityTimer invalidate];
  screenSharingBackgroundActivityTimer = self->_screenSharingBackgroundActivityTimer;
  self->_screenSharingBackgroundActivityTimer = 0;

  if (self->_screenSharingBackgroundActivityAssertion)
  {
    if (!-[SBVideoOutController isScreenSharing](self, "isScreenSharing") || ([SBApp authenticationController], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isAuthenticated"), v4, v5))
    {
      [(SBSBackgroundActivityAssertion *)self->_screenSharingBackgroundActivityAssertion invalidate];
      screenSharingBackgroundActivityAssertion = self->_screenSharingBackgroundActivityAssertion;
      self->_screenSharingBackgroundActivityAssertion = 0;
    }
  }
}

- (void)_main_updateScreenSharingBackgroundActivityAssertion
{
  BSDispatchQueueAssertMain();
  if (self->_screenSharingViaAVSystemController && self->_screenSharingSetsBackgroundActivity)
  {
    if (!self->_screenSharingBackgroundActivityAssertion)
    {
      v3 = [MEMORY[0x277D669F0] assertionWithBackgroundActivityIdentifier:*MEMORY[0x277D6BCC8] forPID:getpid() exclusive:1 showsWhenForeground:1];
      screenSharingBackgroundActivityAssertion = self->_screenSharingBackgroundActivityAssertion;
      self->_screenSharingBackgroundActivityAssertion = v3;

      objc_initWeak(&location, self);
      v5 = self->_screenSharingBackgroundActivityAssertion;
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __76__SBVideoOutController__main_updateScreenSharingBackgroundActivityAssertion__block_invoke_18;
      v11[3] = &unk_2783A8C68;
      objc_copyWeak(&v12, &location);
      [(SBSBackgroundActivityAssertion *)v5 acquireWithHandler:&__block_literal_global_13 invalidationHandler:v11];
      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);
    }

    [(NSTimer *)self->_screenSharingBackgroundActivityTimer invalidate];
    objc_initWeak(&location, self);
    v6 = MEMORY[0x277CBEBB8];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __76__SBVideoOutController__main_updateScreenSharingBackgroundActivityAssertion__block_invoke_3;
    v9[3] = &unk_2783AA438;
    objc_copyWeak(&v10, &location);
    v7 = [v6 scheduledTimerWithTimeInterval:0 repeats:v9 block:30.0];
    screenSharingBackgroundActivityTimer = self->_screenSharingBackgroundActivityTimer;
    self->_screenSharingBackgroundActivityTimer = v7;

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  else
  {

    [(SBVideoOutController *)self _main_clearScreenSharingBackgroundActivityAssertion];
  }
}

+ (id)sharedInstance
{
  if ([MEMORY[0x277D244C8] inUserSessionLoginUI])
  {
    v3 = 0;
  }

  else
  {
    v4 = __controllerInstance_0;
    if (!__controllerInstance_0)
    {
      kdebug_trace();
      v5 = objc_alloc_init(self);
      v6 = __controllerInstance_0;
      __controllerInstance_0 = v5;

      kdebug_trace();
      v4 = __controllerInstance_0;
    }

    v3 = v4;
  }

  return v3;
}

- (SBVideoOutController)init
{
  v24.receiver = self;
  v24.super_class = SBVideoOutController;
  v2 = [(SBVideoOutController *)&v24 init];
  v3 = v2;
  if (v2)
  {
    [(SBVideoOutController *)v2 _registerForNotifications];
    v4 = objc_alloc_init(SBDisplayPortObserver);
    displayPortObserver = v3->_displayPortObserver;
    v3->_displayPortObserver = v4;

    [(SBDisplayPortObserver *)v3->_displayPortObserver startMatchingNotifications];
    [(SBDisplayPortObserver *)v3->_displayPortObserver setDelegate:v3];
    v6 = +[SBAVSystemControllerCache sharedInstance];
    avCache = v3->_avCache;
    v3->_avCache = v6;

    [(SBAVSystemControllerCache *)v3->_avCache addObserver:v3];
    mEMORY[0x277D0AA90] = [MEMORY[0x277D0AA90] sharedInstance];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __28__SBVideoOutController_init__block_invoke;
    block[3] = &unk_2783A92D8;
    v22 = mEMORY[0x277D0AA90];
    v9 = v3;
    v23 = v9;
    v10 = mEMORY[0x277D0AA90];
    v11 = MEMORY[0x277D85CD0];
    dispatch_async(MEMORY[0x277D85CD0], block);
    v12 = +[SBDefaults localDefaults];
    statusBarDefaults = [v12 statusBarDefaults];

    v9->_screenSharingSetsBackgroundActivity = [statusBarDefaults suppressStatusBarOverrideForScreenSharing] ^ 1;
    [(SBVideoOutController *)v9 _updateScreenMirroringObserverWithSuppressionPreferenceFromDefaults:statusBarDefaults];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"suppressStatusBarOverrideForScreenSharing"];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __28__SBVideoOutController_init__block_invoke_2;
    v18[3] = &unk_2783A92D8;
    v19 = v9;
    v20 = statusBarDefaults;
    v15 = statusBarDefaults;
    v16 = [v15 observeDefault:v14 onQueue:v11 withBlock:v18];
  }

  return v3;
}

uint64_t __28__SBVideoOutController_init__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) addObserver:*(a1 + 40)];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 32) connectedIdentities];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v9 = *(a1 + 32);
        v8 = *(a1 + 40);
        v10 = [v9 configurationForIdentity:v7];
        [v8 displayMonitor:v9 didConnectIdentity:v7 withConfiguration:v10];
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  return [*(a1 + 40) _updateAVRoutes];
}

uint64_t __28__SBVideoOutController_init__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _main_updateScreenSharingBackgroundActivityAssertionSuppressionPreference:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _updateScreenMirroringObserverWithSuppressionPreferenceFromDefaults:v3];
}

- (void)dealloc
{
  [(SBVideoOutController *)self _unregisterForNotifications];
  [(NSTimer *)self->_videoOutBackgroundActivityTimer invalidate];
  [(SBSBackgroundActivityAssertion *)self->_videoOutBackgroundActivityAssertion invalidate];
  [(NSTimer *)self->_screenSharingBackgroundActivityTimer invalidate];
  [(SBSBackgroundActivityAssertion *)self->_screenSharingBackgroundActivityAssertion invalidate];
  v3.receiver = self;
  v3.super_class = SBVideoOutController;
  [(SBVideoOutController *)&v3 dealloc];
}

- (void)_registerForNotifications
{
  [(SBVideoOutController *)self _unregisterForNotifications];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__authenticationStateChanged_ name:*MEMORY[0x277D66078] object:0];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, SBVideoOutController_DisplayPortAccessoryConnected, @"com.apple.private.restrict-post.HaywireAccessoryAttached", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)_unregisterForNotifications
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
}

- (BOOL)_displayMonitorHasAConnectedExternalIdentity
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  mEMORY[0x277D0AA90] = [MEMORY[0x277D0AA90] sharedInstance];
  connectedIdentities = [mEMORY[0x277D0AA90] connectedIdentities];

  v4 = [connectedIdentities countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(connectedIdentities);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([v7 isExternal])
        {
          type = [v7 type];

          if (type == 1)
          {
            LOBYTE(v4) = 1;
            goto LABEL_12;
          }
        }

        else
        {
        }
      }

      v4 = [connectedIdentities countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

LABEL_12:

  return v4;
}

- (void)_updateAVRoutes
{
  isAirplayDisplayActive = [(SBAVSystemControllerCache *)self->_avCache isAirplayDisplayActive];
  if (self->_screenSharingViaAVSystemController != isAirplayDisplayActive)
  {
    self->_screenSharingViaAVSystemController = isAirplayDisplayActive;
    [(SBVideoOutController *)self updateScreenSharingBackgroundActivityAssertion];

    [(SBVideoOutController *)self _notifyThatScreenSharingChanged];
  }
}

- (void)_updateDisplayMonitorState
{
  _displayMonitorHasAConnectedExternalIdentity = [(SBVideoOutController *)self _displayMonitorHasAConnectedExternalIdentity];
  if (self->_screenSharingViaDisplayMonitor != _displayMonitorHasAConnectedExternalIdentity)
  {
    self->_screenSharingViaDisplayMonitor = _displayMonitorHasAConnectedExternalIdentity;
    BSDispatchMain();
    [(SBVideoOutController *)self _notifyThatScreenSharingChanged];
  }
}

- (void)_notifyThatScreenSharingChanged
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"SBAirPlayScreenSharingStatusChangedNotificationName" object:self userInfo:0];
}

- (void)_authenticationStateChanged:(id)changed
{
  authenticationController = [SBApp authenticationController];
  isAuthenticated = [authenticationController isAuthenticated];

  if (isAuthenticated)
  {

    [(SBVideoOutController *)self updateScreenSharingBackgroundActivityAssertion];
  }
}

- (void)displayMonitor:(id)monitor didConnectIdentity:(id)identity withConfiguration:(id)configuration
{
  identityCopy = identity;
  if ([identityCopy isExternal] && objc_msgSend(identityCopy, "type") == 1)
  {
    [(SBVideoOutController *)self _updateDisplayMonitorState];
  }
}

- (void)displayMonitor:(id)monitor willDisconnectIdentity:(id)identity
{
  identityCopy = identity;
  if ([identityCopy isExternal] && objc_msgSend(identityCopy, "type") == 1)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__SBVideoOutController_displayMonitor_willDisconnectIdentity___block_invoke;
    block[3] = &unk_2783A8C18;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)cacheDidRebuildAfterServerDeath:(id)death
{
  [(SBVideoOutController *)self _registerForNotifications];

  [(SBVideoOutController *)self _updateAVRoutes];
}

uint64_t __67__SBVideoOutController_displayPortObserver_connectionStateChanged___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  if (v1 == 1)
  {
    return [v2 _main_startVideoOutBackgroundActivityAssertion];
  }

  else
  {
    return [v2 _main_clearVideoOutBackgroundActivityAssertion];
  }
}

void __76__SBVideoOutController__main_updateScreenSharingBackgroundActivityAssertion__block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = SBLogVideoOut();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v3 = 0;
      _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_INFO, "Failed to acquire screen sharing background activity assertion", v3, 2u);
    }
  }
}

void __76__SBVideoOutController__main_updateScreenSharingBackgroundActivityAssertion__block_invoke_18(uint64_t a1)
{
  objc_copyWeak(&v1, (a1 + 32));
  BSDispatchMain();
  objc_destroyWeak(&v1);
}

void __76__SBVideoOutController__main_updateScreenSharingBackgroundActivityAssertion__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _main_clearScreenSharingBackgroundActivityAssertion];
}

void __76__SBVideoOutController__main_updateScreenSharingBackgroundActivityAssertion__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v4, (a1 + 32));
  BSDispatchMain();
  objc_destroyWeak(&v4);
}

void __76__SBVideoOutController__main_updateScreenSharingBackgroundActivityAssertion__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _main_clearScreenSharingBackgroundActivityAssertion];
}

- (void)_main_updateScreenSharingBackgroundActivityAssertionSuppressionPreference:(id)preference
{
  preferenceCopy = preference;
  BSDispatchQueueAssertMain();
  suppressStatusBarOverrideForScreenSharing = [preferenceCopy suppressStatusBarOverrideForScreenSharing];

  self->_screenSharingSetsBackgroundActivity = suppressStatusBarOverrideForScreenSharing ^ 1;
  if (((suppressStatusBarOverrideForScreenSharing ^ 1) & 1) == 0)
  {
    [(SBVideoOutController *)self _main_clearScreenSharingBackgroundActivityAssertion];
  }

  [(SBVideoOutController *)self _updateAVRoutes];
}

- (void)_updateScreenMirroringObserverWithSuppressionPreferenceFromDefaults:(id)defaults
{
  suppressStatusBarOverrideForScreenSharing = [defaults suppressStatusBarOverrideForScreenSharing];
  screenMirroringObserver = self->_screenMirroringObserver;
  if (suppressStatusBarOverrideForScreenSharing)
  {
    if (!screenMirroringObserver)
    {
      return;
    }

    uIControllingObserver = 0;
  }

  else
  {
    if (screenMirroringObserver || !SBSIsSystemApertureAvailable())
    {
      return;
    }

    uIControllingObserver = [MEMORY[0x277D27A00] UIControllingObserver];
    screenMirroringObserver = self->_screenMirroringObserver;
  }

  self->_screenMirroringObserver = uIControllingObserver;
}

- (void)_main_clearVideoOutBackgroundActivityAssertion
{
  BSDispatchQueueAssertMain();
  [(NSTimer *)self->_videoOutBackgroundActivityTimer invalidate];
  videoOutBackgroundActivityTimer = self->_videoOutBackgroundActivityTimer;
  self->_videoOutBackgroundActivityTimer = 0;

  videoOutBackgroundActivityAssertion = self->_videoOutBackgroundActivityAssertion;
  if (videoOutBackgroundActivityAssertion)
  {
    [(SBSBackgroundActivityAssertion *)videoOutBackgroundActivityAssertion invalidate];
    v5 = self->_videoOutBackgroundActivityAssertion;
    self->_videoOutBackgroundActivityAssertion = 0;
  }
}

- (void)_main_startVideoOutBackgroundActivityAssertion
{
  BSDispatchQueueAssertMain();
  videoOutBackgroundActivityTimer = self->_videoOutBackgroundActivityTimer;
  if (videoOutBackgroundActivityTimer)
  {
    [(NSTimer *)videoOutBackgroundActivityTimer invalidate];
  }

  else if (!self->_videoOutBackgroundActivityAssertion)
  {
    v4 = [MEMORY[0x277D669F0] assertionWithBackgroundActivityIdentifier:*MEMORY[0x277D6BD10] forPID:getpid() exclusive:1 showsWhenForeground:1];
    videoOutBackgroundActivityAssertion = self->_videoOutBackgroundActivityAssertion;
    self->_videoOutBackgroundActivityAssertion = v4;

    objc_initWeak(&location, self);
    v6 = self->_videoOutBackgroundActivityAssertion;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __70__SBVideoOutController__main_startVideoOutBackgroundActivityAssertion__block_invoke_24;
    v12[3] = &unk_2783A8C68;
    objc_copyWeak(&v13, &location);
    [(SBSBackgroundActivityAssertion *)v6 acquireWithHandler:&__block_literal_global_23 invalidationHandler:v12];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  objc_initWeak(&location, self);
  v7 = MEMORY[0x277CBEBB8];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70__SBVideoOutController__main_startVideoOutBackgroundActivityAssertion__block_invoke_3;
  v10[3] = &unk_2783AA438;
  objc_copyWeak(&v11, &location);
  v8 = [v7 scheduledTimerWithTimeInterval:0 repeats:v10 block:10.0];
  v9 = self->_videoOutBackgroundActivityTimer;
  self->_videoOutBackgroundActivityTimer = v8;

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __70__SBVideoOutController__main_startVideoOutBackgroundActivityAssertion__block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = SBLogVideoOut();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v3 = 0;
      _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_INFO, "Failed to acquire video out background activity assertion", v3, 2u);
    }
  }
}

void __70__SBVideoOutController__main_startVideoOutBackgroundActivityAssertion__block_invoke_24(uint64_t a1)
{
  objc_copyWeak(&v1, (a1 + 32));
  BSDispatchMain();
  objc_destroyWeak(&v1);
}

void __70__SBVideoOutController__main_startVideoOutBackgroundActivityAssertion__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _main_clearVideoOutBackgroundActivityAssertion];
}

void __70__SBVideoOutController__main_startVideoOutBackgroundActivityAssertion__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v4, (a1 + 32));
  BSDispatchMain();
  objc_destroyWeak(&v4);
}

void __70__SBVideoOutController__main_startVideoOutBackgroundActivityAssertion__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _main_clearVideoOutBackgroundActivityAssertion];
}

- (void)_main_updateVideoOutBackgroundActivityAssertion
{
  BSDispatchQueueAssertMain();
  if (self->_screenSharingViaDisplayMonitor && !self->_screenSharingViaAVSystemController)
  {

    [(SBVideoOutController *)self _main_startVideoOutBackgroundActivityAssertion];
  }

  else
  {

    [(SBVideoOutController *)self _main_clearVideoOutBackgroundActivityAssertion];
  }
}

@end