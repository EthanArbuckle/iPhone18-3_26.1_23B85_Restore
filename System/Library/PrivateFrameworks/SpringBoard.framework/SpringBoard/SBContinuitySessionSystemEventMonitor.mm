@interface SBContinuitySessionSystemEventMonitor
- (BOOL)_calculateIsInCall;
- (BOOL)_calculateLockScreenSearchPresented;
- (BOOL)_calculateUserInitiatedRemoteTransientOverlayPresented;
- (BOOL)handleEvent:(id)event;
- (BOOL)isAirplayMirroring;
- (BOOL)isInStoreDemoMode;
- (BOOL)isPresentingStoreDemoLoop;
- (NSString)coverSheetIdentifier;
- (SBContinuitySessionSystemEventMonitor)init;
- (id)_coverSheetTodayViewController;
- (void)_aggregateLockStateChanged:(id)changed;
- (void)_passcodeVisibilityUpdated:(id)updated;
- (void)_postEvent:(id)event;
- (void)_reevaluateSecureAppUsage;
- (void)_setInCall:(BOOL)call;
- (void)_setLockScreenSearchPresented:(BOOL)presented;
- (void)_setPasscodeVisible:(BOOL)visible;
- (void)_setSOSActive:(BOOL)active;
- (void)_setUIBlocked:(BOOL)blocked;
- (void)_setUILocked:(BOOL)locked;
- (void)_setUserInitiatedRemoteTransientOverlayPresented:(BOOL)presented;
- (void)_setUsingSecureApp:(BOOL)app;
- (void)coverSheetViewControllerDidDismissSearch:(id)search;
- (void)coverSheetViewControllerDidPresentModalView:(id)view;
- (void)coverSheetViewControllerDidPresentSearch:(id)search;
- (void)coverSheetViewControllerDidSettleOnPage:(id)page mainPage:(BOOL)mainPage;
- (void)dealloc;
- (void)displayManager:(id)manager didConnectIdentity:(id)identity withConfiguration:(id)configuration;
- (void)displayManager:(id)manager didDisconnectIdentity:(id)identity;
- (void)remoteTransientOverlaySession:(id)session didInvalidateWithReason:(int64_t)reason error:(id)error;
- (void)remoteTransientOverlaySessionDidDeactivate:(id)deactivate;
- (void)remoteTransientOverlaySessionManager:(id)manager didActivateSession:(id)session;
- (void)todayViewControllerDidDismissSearch:(id)search;
- (void)todayViewControllerDidPresentSearch:(id)search;
@end

@implementation SBContinuitySessionSystemEventMonitor

- (SBContinuitySessionSystemEventMonitor)init
{
  v20.receiver = self;
  v20.super_class = SBContinuitySessionSystemEventMonitor;
  v2 = [(SBContinuitySessionSystemEventMonitor *)&v20 init];
  if (v2)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = weakObjectsHashTable;

    v5 = +[SBLockScreenManager sharedInstanceIfExists];
    v6 = +[SBLockStateAggregator sharedInstance];
    lockState = [v6 lockState];

    v2->_isUILocked = lockState & 1;
    v2->_isUIBlocked = (lockState & 4) != 0;
    v2->_inCall = [(SBContinuitySessionSystemEventMonitor *)v2 _calculateIsInCall];
    v2->_isPasscodeVisible = [v5 isPasscodeEntryVisible];
    mEMORY[0x277D495A0] = [MEMORY[0x277D495A0] sharedInstance];
    [mEMORY[0x277D495A0] addObserver:v2 queue:MEMORY[0x277D85CD0]];
    v2->_isSOSActive = [mEMORY[0x277D495A0] currentSOSInitiationState] == 1;
    v9 = +[SBCoverSheetPresentationManager sharedInstance];
    v2->_usingSecureApp = [v9 isCoverSheetHostingAnApp];

    coverSheetViewController = [v5 coverSheetViewController];
    [coverSheetViewController addCoverSheetObserver:v2];
    [coverSheetViewController registerExternalEventHandler:v2];
    _coverSheetTodayViewController = [(SBContinuitySessionSystemEventMonitor *)v2 _coverSheetTodayViewController];
    [_coverSheetTodayViewController addObserver:v2];
    coverSheetSpotlightPresenter = [coverSheetViewController coverSheetSpotlightPresenter];
    if ([coverSheetSpotlightPresenter isSpotlightPresented])
    {
      isSpotlightVisible = 1;
    }

    else
    {
      isSpotlightVisible = [_coverSheetTodayViewController isSpotlightVisible];
    }

    v2->_lockScreenSearchPresented = isSpotlightVisible;

    v2->_userInitiatedRemoteTransientOverlayPresented = [(SBContinuitySessionSystemEventMonitor *)v2 _calculateUserInitiatedRemoteTransientOverlayPresented];
    remoteTransientOverlaySessionManager = [SBApp remoteTransientOverlaySessionManager];
    [remoteTransientOverlaySessionManager addObserver:v2];

    displayManager = [SBApp displayManager];
    v16 = [displayManager addObserver:v2];
    displayManagerObserver = v2->_displayManagerObserver;
    v2->_displayManagerObserver = v16;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__passcodeVisibilityUpdated_ name:@"SBLockScreenPasscodeUIVisibilityUpdatedNotification" object:0];
    [defaultCenter addObserver:v2 selector:sel__aggregateLockStateChanged_ name:@"SBAggregateLockStateDidChangeNotification" object:0];
    [defaultCenter addObserver:v2 selector:sel__callStatusChanged_ name:*MEMORY[0x277D6EFF0] object:0];
    [defaultCenter addObserver:v2 selector:sel__callStatusChanged_ name:*MEMORY[0x277D6F038] object:0];
    [defaultCenter addObserver:v2 selector:sel__coverSheetSecureAppChanged_ name:@"BCoverSheetSecureAppChangedNotification" object:0];
  }

  return v2;
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_displayManagerObserver invalidate];
  displayManagerObserver = self->_displayManagerObserver;
  self->_displayManagerObserver = 0;

  v4 = +[SBLockScreenManager sharedInstance];
  coverSheetViewController = [v4 coverSheetViewController];

  [coverSheetViewController unregisterExternalEventHandler:self];
  [coverSheetViewController removeCoverSheetObserver:self];
  _coverSheetTodayViewController = [(SBContinuitySessionSystemEventMonitor *)self _coverSheetTodayViewController];
  [_coverSheetTodayViewController removeObserver:self];

  remoteTransientOverlaySessionManager = [SBApp remoteTransientOverlaySessionManager];
  [remoteTransientOverlaySessionManager removeObserver:self];

  v8.receiver = self;
  v8.super_class = SBContinuitySessionSystemEventMonitor;
  [(SBContinuitySessionSystemEventMonitor *)&v8 dealloc];
}

- (BOOL)isAirplayMirroring
{
  v19 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  mEMORY[0x277D0AA90] = [MEMORY[0x277D0AA90] sharedInstance];
  connectedIdentities = [mEMORY[0x277D0AA90] connectedIdentities];

  v4 = [connectedIdentities countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(connectedIdentities);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if (([v8 isAirPlayDisplay] & 1) != 0 || (objc_msgSend(v8, "isRestrictedAirPlayDisplay") & 1) != 0 || (objc_msgSend(v8, "isMusicOnlyDisplay") & 1) != 0 || objc_msgSend(v8, "isiPodOnlyDisplay"))
        {
          v10 = SBLogContinuityDisplay();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            *buf = 138543362;
            v17 = v8;
            _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_INFO, "Found airplay display: %{public}@", buf, 0xCu);
          }

          v9 = 1;
          goto LABEL_17;
        }
      }

      v5 = [connectedIdentities countByEnumeratingWithState:&v12 objects:v18 count:16];
      v9 = 0;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_17:

  return v9;
}

- (BOOL)isInStoreDemoMode
{
  mEMORY[0x277D65ED8] = [MEMORY[0x277D65ED8] sharedInstance];
  isInStoreDemoMode = [mEMORY[0x277D65ED8] isInStoreDemoMode];

  return isInStoreDemoMode;
}

- (BOOL)isPresentingStoreDemoLoop
{
  v2 = +[SBMainSwitcherControllerCoordinator _shim_activeSwitcherController];
  layoutStatePrimaryElement = [v2 layoutStatePrimaryElement];
  workspaceEntity = [layoutStatePrimaryElement workspaceEntity];
  applicationSceneEntity = [workspaceEntity applicationSceneEntity];
  sceneHandle = [applicationSceneEntity sceneHandle];
  application = [sceneHandle application];
  bundleIdentifier = [application bundleIdentifier];
  v9 = [bundleIdentifier isEqualToString:@"com.apple.ist.demoloop"];

  return v9;
}

- (void)coverSheetViewControllerDidPresentModalView:(id)view
{
  v4 = [SBContinuitySessionSystemEvent eventWithType:4];
  [(SBContinuitySessionSystemEventMonitor *)self _postEvent:v4];
}

- (void)coverSheetViewControllerDidSettleOnPage:(id)page mainPage:(BOOL)mainPage
{
  if (mainPage)
  {

    [(SBContinuitySessionSystemEventMonitor *)self _setUsingSecureApp:0];
  }

  else
  {
    v5 = [SBContinuitySessionSystemEvent eventWithType:4];
    [(SBContinuitySessionSystemEventMonitor *)self _postEvent:v5];

    [(SBContinuitySessionSystemEventMonitor *)self _reevaluateSecureAppUsage];
  }
}

- (void)coverSheetViewControllerDidPresentSearch:(id)search
{
  _calculateLockScreenSearchPresented = [(SBContinuitySessionSystemEventMonitor *)self _calculateLockScreenSearchPresented];

  [(SBContinuitySessionSystemEventMonitor *)self _setLockScreenSearchPresented:_calculateLockScreenSearchPresented];
}

- (void)coverSheetViewControllerDidDismissSearch:(id)search
{
  _calculateLockScreenSearchPresented = [(SBContinuitySessionSystemEventMonitor *)self _calculateLockScreenSearchPresented];

  [(SBContinuitySessionSystemEventMonitor *)self _setLockScreenSearchPresented:_calculateLockScreenSearchPresented];
}

- (void)todayViewControllerDidPresentSearch:(id)search
{
  _calculateLockScreenSearchPresented = [(SBContinuitySessionSystemEventMonitor *)self _calculateLockScreenSearchPresented];

  [(SBContinuitySessionSystemEventMonitor *)self _setLockScreenSearchPresented:_calculateLockScreenSearchPresented];
}

- (void)todayViewControllerDidDismissSearch:(id)search
{
  _calculateLockScreenSearchPresented = [(SBContinuitySessionSystemEventMonitor *)self _calculateLockScreenSearchPresented];

  [(SBContinuitySessionSystemEventMonitor *)self _setLockScreenSearchPresented:_calculateLockScreenSearchPresented];
}

- (NSString)coverSheetIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (BOOL)handleEvent:(id)event
{
  if (([event type] & 0xFFFFFFFFFFFFFFFELL) == 0x28)
  {
    [(SBContinuitySessionSystemEventMonitor *)self _reevaluateSecureAppUsage];
  }

  return 0;
}

- (void)displayManager:(id)manager didConnectIdentity:(id)identity withConfiguration:(id)configuration
{
  configuration = [SBContinuitySessionSystemEvent eventWithType:11, identity, configuration];
  [(SBContinuitySessionSystemEventMonitor *)self _postEvent:configuration];
}

- (void)displayManager:(id)manager didDisconnectIdentity:(id)identity
{
  identity = [SBContinuitySessionSystemEvent eventWithType:11, identity];
  [(SBContinuitySessionSystemEventMonitor *)self _postEvent:identity];
}

- (void)remoteTransientOverlaySessionManager:(id)manager didActivateSession:(id)session
{
  sessionCopy = session;
  windowSceneManager = [SBApp windowSceneManager];
  embeddedDisplayWindowScene = [windowSceneManager embeddedDisplayWindowScene];

  if ([sessionCopy isPresentedOnWindowScene:embeddedDisplayWindowScene])
  {
    [sessionCopy addSessionObserver:self];
    [(SBContinuitySessionSystemEventMonitor *)self _setUserInitiatedRemoteTransientOverlayPresented:[(SBContinuitySessionSystemEventMonitor *)self _calculateUserInitiatedRemoteTransientOverlayPresented]];
  }
}

- (void)remoteTransientOverlaySessionDidDeactivate:(id)deactivate
{
  [deactivate removeSessionObserver:self];
  _calculateUserInitiatedRemoteTransientOverlayPresented = [(SBContinuitySessionSystemEventMonitor *)self _calculateUserInitiatedRemoteTransientOverlayPresented];

  [(SBContinuitySessionSystemEventMonitor *)self _setUserInitiatedRemoteTransientOverlayPresented:_calculateUserInitiatedRemoteTransientOverlayPresented];
}

- (void)remoteTransientOverlaySession:(id)session didInvalidateWithReason:(int64_t)reason error:(id)error
{
  [session removeSessionObserver:{self, reason, error}];
  _calculateUserInitiatedRemoteTransientOverlayPresented = [(SBContinuitySessionSystemEventMonitor *)self _calculateUserInitiatedRemoteTransientOverlayPresented];

  [(SBContinuitySessionSystemEventMonitor *)self _setUserInitiatedRemoteTransientOverlayPresented:_calculateUserInitiatedRemoteTransientOverlayPresented];
}

- (void)_postEvent:(id)event
{
  v15 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(NSHashTable *)self->_observers copy];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) continuitySessionSystemEventMonitor:self eventOccurred:eventCopy];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_passcodeVisibilityUpdated:(id)updated
{
  v4 = +[SBLockScreenManager sharedInstanceIfExists];
  -[SBContinuitySessionSystemEventMonitor _setPasscodeVisible:](self, "_setPasscodeVisible:", [v4 isPasscodeEntryVisible]);
}

- (void)_aggregateLockStateChanged:(id)changed
{
  userInfo = [changed userInfo];
  v5 = [userInfo objectForKey:@"SBAggregateLockStateKey"];
  integerValue = [v5 integerValue];

  [(SBContinuitySessionSystemEventMonitor *)self _setUILocked:integerValue & 1];

  [(SBContinuitySessionSystemEventMonitor *)self _setUIBlocked:(integerValue >> 2) & 1];
}

uint64_t __60__SBContinuitySessionSystemEventMonitor__callStatusChanged___block_invoke(uint64_t a1)
{
  v2 = SBLogContinuityDisplay();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_INFO, "Call status changed", v4, 2u);
  }

  return [*(a1 + 32) _setInCall:{objc_msgSend(*(a1 + 32), "_calculateIsInCall")}];
}

- (void)_setPasscodeVisible:(BOOL)visible
{
  if (self->_isPasscodeVisible != visible)
  {
    self->_isPasscodeVisible = visible;
    if (visible)
    {
      v5 = 2;
    }

    else
    {
      v5 = 3;
    }

    v6 = [SBContinuitySessionSystemEvent eventWithType:v5];
    [(SBContinuitySessionSystemEventMonitor *)self _postEvent:v6];
  }
}

- (void)_setUILocked:(BOOL)locked
{
  if (self->_isUILocked != locked)
  {
    self->_isUILocked = locked;
    v5 = [SBContinuitySessionSystemEvent eventWithType:locked];
    [(SBContinuitySessionSystemEventMonitor *)self _postEvent:v5];
  }
}

- (void)_setUIBlocked:(BOOL)blocked
{
  if (self->_isUIBlocked != blocked)
  {
    self->_isUIBlocked = blocked;
    if (blocked)
    {
      v5 = 5;
    }

    else
    {
      v5 = 6;
    }

    v6 = [SBContinuitySessionSystemEvent eventWithType:v5];
    [(SBContinuitySessionSystemEventMonitor *)self _postEvent:v6];
  }
}

- (void)_setInCall:(BOOL)call
{
  if (self->_inCall != call)
  {
    self->_inCall = call;
    v5 = [SBContinuitySessionSystemEvent eventWithType:7];
    [(SBContinuitySessionSystemEventMonitor *)self _postEvent:v5];
  }
}

- (BOOL)_calculateIsInCall
{
  v33 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  mEMORY[0x277D6EDF8] = [MEMORY[0x277D6EDF8] sharedInstance];
  currentAudioAndVideoCalls = [mEMORY[0x277D6EDF8] currentAudioAndVideoCalls];

  obj = currentAudioAndVideoCalls;
  v4 = [currentAudioAndVideoCalls countByEnumeratingWithState:&v18 objects:v32 count:16];
  if (v4)
  {
    v5 = *v19;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v18 + 1) + 8 * i);
        v8 = SBLogContinuityDisplay();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          callUUID = [v7 callUUID];
          uniqueProxyIdentifier = [v7 uniqueProxyIdentifier];
          *buf = 134218498;
          v23 = v7;
          v24 = 2114;
          v25 = callUUID;
          v26 = 2114;
          v27 = uniqueProxyIdentifier;
          _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_INFO, "Found current call: <%p:%{public}@ - %{public}@>", buf, 0x20u);
        }

        if ([v7 status] == 1 && (objc_msgSend(v7, "isEndpointOnCurrentDevice") & 1) != 0)
        {
          LOBYTE(v4) = 1;
          goto LABEL_16;
        }

        v11 = SBLogContinuityDisplay();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          callUUID2 = [v7 callUUID];
          uniqueProxyIdentifier2 = [v7 uniqueProxyIdentifier];
          status = [v7 status];
          isEndpointOnCurrentDevice = [v7 isEndpointOnCurrentDevice];
          *buf = 134219010;
          v23 = v7;
          v24 = 2114;
          v25 = callUUID2;
          v26 = 2114;
          v27 = uniqueProxyIdentifier2;
          v28 = 1024;
          v29 = status;
          v30 = 1024;
          v31 = isEndpointOnCurrentDevice;
          _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_INFO, "Call <%p:%{public}@ - %{public}@> doesn't meet criteria -> call status: %d, isEndpointOnCurrentDevice: %{BOOL}u", buf, 0x2Cu);
        }
      }

      v4 = [obj countByEnumeratingWithState:&v18 objects:v32 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  return v4;
}

- (void)_setSOSActive:(BOOL)active
{
  if (self->_isSOSActive != active)
  {
    self->_isSOSActive = active;
    v5 = [SBContinuitySessionSystemEvent eventWithType:8];
    [(SBContinuitySessionSystemEventMonitor *)self _postEvent:v5];
  }
}

- (BOOL)_calculateLockScreenSearchPresented
{
  v3 = +[SBLockScreenManager sharedInstance];
  coverSheetViewController = [v3 coverSheetViewController];
  coverSheetSpotlightPresenter = [coverSheetViewController coverSheetSpotlightPresenter];
  if ([coverSheetSpotlightPresenter isSpotlightPresented])
  {
    isSpotlightVisible = 1;
  }

  else
  {
    _coverSheetTodayViewController = [(SBContinuitySessionSystemEventMonitor *)self _coverSheetTodayViewController];
    isSpotlightVisible = [_coverSheetTodayViewController isSpotlightVisible];
  }

  return isSpotlightVisible;
}

- (void)_setLockScreenSearchPresented:(BOOL)presented
{
  if (self->_lockScreenSearchPresented != presented)
  {
    self->_lockScreenSearchPresented = presented;
    v5 = [SBContinuitySessionSystemEvent eventWithType:9];
    [(SBContinuitySessionSystemEventMonitor *)self _postEvent:v5];
  }
}

- (void)_reevaluateSecureAppUsage
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = +[SBCoverSheetPresentationManager sharedInstance];
  isCoverSheetHostingAnApp = [v3 isCoverSheetHostingAnApp];

  v5 = SBLogContinuityDisplay();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6[0] = 67109120;
    v6[1] = isCoverSheetHostingAnApp;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "Reevaluating secure app usage... cover sheet hosting an app: %{BOOL}u", v6, 8u);
  }

  [(SBContinuitySessionSystemEventMonitor *)self _setUsingSecureApp:isCoverSheetHostingAnApp];
}

- (void)_setUsingSecureApp:(BOOL)app
{
  if (self->_usingSecureApp != app)
  {
    self->_usingSecureApp = app;
    v5 = [SBContinuitySessionSystemEvent eventWithType:10];
    [(SBContinuitySessionSystemEventMonitor *)self _postEvent:v5];
  }
}

- (BOOL)_calculateUserInitiatedRemoteTransientOverlayPresented
{
  if (_calculateUserInitiatedRemoteTransientOverlayPresented_onceToken != -1)
  {
    [SBContinuitySessionSystemEventMonitor _calculateUserInitiatedRemoteTransientOverlayPresented];
  }

  windowSceneManager = [SBApp windowSceneManager];
  embeddedDisplayWindowScene = [windowSceneManager embeddedDisplayWindowScene];

  remoteTransientOverlaySessionManager = [SBApp remoteTransientOverlaySessionManager];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __95__SBContinuitySessionSystemEventMonitor__calculateUserInitiatedRemoteTransientOverlayPresented__block_invoke_2;
  v8[3] = &unk_2783B4C50;
  v9 = embeddedDisplayWindowScene;
  v5 = embeddedDisplayWindowScene;
  v6 = [remoteTransientOverlaySessionManager hasActiveSessionMatchingPredicate:v8 options:0];

  return v6;
}

void __95__SBContinuitySessionSystemEventMonitor__calculateUserInitiatedRemoteTransientOverlayPresented__block_invoke()
{
  v2[1] = *MEMORY[0x277D85DE8];
  v2[0] = @"com.apple.PassbookUIService";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:1];
  v1 = _calculateUserInitiatedRemoteTransientOverlayPresented_allowedBundleIdentifiers;
  _calculateUserInitiatedRemoteTransientOverlayPresented_allowedBundleIdentifiers = v0;
}

uint64_t __95__SBContinuitySessionSystemEventMonitor__calculateUserInitiatedRemoteTransientOverlayPresented__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isPresentedOnWindowScene:*(a1 + 32)])
  {
    v4 = _calculateUserInitiatedRemoteTransientOverlayPresented_allowedBundleIdentifiers;
    v5 = [v3 serviceBundleIdentifier];
    v6 = [v4 containsObject:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_setUserInitiatedRemoteTransientOverlayPresented:(BOOL)presented
{
  if (self->_userInitiatedRemoteTransientOverlayPresented != presented)
  {
    self->_userInitiatedRemoteTransientOverlayPresented = presented;
    v5 = [SBContinuitySessionSystemEvent eventWithType:12];
    [(SBContinuitySessionSystemEventMonitor *)self _postEvent:v5];
  }
}

- (id)_coverSheetTodayViewController
{
  windowSceneManager = [SBApp windowSceneManager];
  embeddedDisplayWindowScene = [windowSceneManager embeddedDisplayWindowScene];

  homeScreenController = [embeddedDisplayWindowScene homeScreenController];
  coverSheetTodayViewController = [homeScreenController coverSheetTodayViewController];

  return coverSheetTodayViewController;
}

@end