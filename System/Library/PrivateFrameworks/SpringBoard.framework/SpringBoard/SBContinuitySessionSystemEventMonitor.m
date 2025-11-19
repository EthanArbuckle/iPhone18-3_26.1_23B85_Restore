@interface SBContinuitySessionSystemEventMonitor
- (BOOL)_calculateIsInCall;
- (BOOL)_calculateLockScreenSearchPresented;
- (BOOL)_calculateUserInitiatedRemoteTransientOverlayPresented;
- (BOOL)handleEvent:(id)a3;
- (BOOL)isAirplayMirroring;
- (BOOL)isInStoreDemoMode;
- (BOOL)isPresentingStoreDemoLoop;
- (NSString)coverSheetIdentifier;
- (SBContinuitySessionSystemEventMonitor)init;
- (id)_coverSheetTodayViewController;
- (void)_aggregateLockStateChanged:(id)a3;
- (void)_passcodeVisibilityUpdated:(id)a3;
- (void)_postEvent:(id)a3;
- (void)_reevaluateSecureAppUsage;
- (void)_setInCall:(BOOL)a3;
- (void)_setLockScreenSearchPresented:(BOOL)a3;
- (void)_setPasscodeVisible:(BOOL)a3;
- (void)_setSOSActive:(BOOL)a3;
- (void)_setUIBlocked:(BOOL)a3;
- (void)_setUILocked:(BOOL)a3;
- (void)_setUserInitiatedRemoteTransientOverlayPresented:(BOOL)a3;
- (void)_setUsingSecureApp:(BOOL)a3;
- (void)coverSheetViewControllerDidDismissSearch:(id)a3;
- (void)coverSheetViewControllerDidPresentModalView:(id)a3;
- (void)coverSheetViewControllerDidPresentSearch:(id)a3;
- (void)coverSheetViewControllerDidSettleOnPage:(id)a3 mainPage:(BOOL)a4;
- (void)dealloc;
- (void)displayManager:(id)a3 didConnectIdentity:(id)a4 withConfiguration:(id)a5;
- (void)displayManager:(id)a3 didDisconnectIdentity:(id)a4;
- (void)remoteTransientOverlaySession:(id)a3 didInvalidateWithReason:(int64_t)a4 error:(id)a5;
- (void)remoteTransientOverlaySessionDidDeactivate:(id)a3;
- (void)remoteTransientOverlaySessionManager:(id)a3 didActivateSession:(id)a4;
- (void)todayViewControllerDidDismissSearch:(id)a3;
- (void)todayViewControllerDidPresentSearch:(id)a3;
@end

@implementation SBContinuitySessionSystemEventMonitor

- (SBContinuitySessionSystemEventMonitor)init
{
  v20.receiver = self;
  v20.super_class = SBContinuitySessionSystemEventMonitor;
  v2 = [(SBContinuitySessionSystemEventMonitor *)&v20 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = v3;

    v5 = +[SBLockScreenManager sharedInstanceIfExists];
    v6 = +[SBLockStateAggregator sharedInstance];
    v7 = [v6 lockState];

    v2->_isUILocked = v7 & 1;
    v2->_isUIBlocked = (v7 & 4) != 0;
    v2->_inCall = [(SBContinuitySessionSystemEventMonitor *)v2 _calculateIsInCall];
    v2->_isPasscodeVisible = [v5 isPasscodeEntryVisible];
    v8 = [MEMORY[0x277D495A0] sharedInstance];
    [v8 addObserver:v2 queue:MEMORY[0x277D85CD0]];
    v2->_isSOSActive = [v8 currentSOSInitiationState] == 1;
    v9 = +[SBCoverSheetPresentationManager sharedInstance];
    v2->_usingSecureApp = [v9 isCoverSheetHostingAnApp];

    v10 = [v5 coverSheetViewController];
    [v10 addCoverSheetObserver:v2];
    [v10 registerExternalEventHandler:v2];
    v11 = [(SBContinuitySessionSystemEventMonitor *)v2 _coverSheetTodayViewController];
    [v11 addObserver:v2];
    v12 = [v10 coverSheetSpotlightPresenter];
    if ([v12 isSpotlightPresented])
    {
      v13 = 1;
    }

    else
    {
      v13 = [v11 isSpotlightVisible];
    }

    v2->_lockScreenSearchPresented = v13;

    v2->_userInitiatedRemoteTransientOverlayPresented = [(SBContinuitySessionSystemEventMonitor *)v2 _calculateUserInitiatedRemoteTransientOverlayPresented];
    v14 = [SBApp remoteTransientOverlaySessionManager];
    [v14 addObserver:v2];

    v15 = [SBApp displayManager];
    v16 = [v15 addObserver:v2];
    displayManagerObserver = v2->_displayManagerObserver;
    v2->_displayManagerObserver = v16;

    v18 = [MEMORY[0x277CCAB98] defaultCenter];
    [v18 addObserver:v2 selector:sel__passcodeVisibilityUpdated_ name:@"SBLockScreenPasscodeUIVisibilityUpdatedNotification" object:0];
    [v18 addObserver:v2 selector:sel__aggregateLockStateChanged_ name:@"SBAggregateLockStateDidChangeNotification" object:0];
    [v18 addObserver:v2 selector:sel__callStatusChanged_ name:*MEMORY[0x277D6EFF0] object:0];
    [v18 addObserver:v2 selector:sel__callStatusChanged_ name:*MEMORY[0x277D6F038] object:0];
    [v18 addObserver:v2 selector:sel__coverSheetSecureAppChanged_ name:@"BCoverSheetSecureAppChangedNotification" object:0];
  }

  return v2;
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_displayManagerObserver invalidate];
  displayManagerObserver = self->_displayManagerObserver;
  self->_displayManagerObserver = 0;

  v4 = +[SBLockScreenManager sharedInstance];
  v5 = [v4 coverSheetViewController];

  [v5 unregisterExternalEventHandler:self];
  [v5 removeCoverSheetObserver:self];
  v6 = [(SBContinuitySessionSystemEventMonitor *)self _coverSheetTodayViewController];
  [v6 removeObserver:self];

  v7 = [SBApp remoteTransientOverlaySessionManager];
  [v7 removeObserver:self];

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
  v2 = [MEMORY[0x277D0AA90] sharedInstance];
  v3 = [v2 connectedIdentities];

  v4 = [v3 countByEnumeratingWithState:&v12 objects:v18 count:16];
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
          objc_enumerationMutation(v3);
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

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v18 count:16];
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
  v2 = [MEMORY[0x277D65ED8] sharedInstance];
  v3 = [v2 isInStoreDemoMode];

  return v3;
}

- (BOOL)isPresentingStoreDemoLoop
{
  v2 = +[SBMainSwitcherControllerCoordinator _shim_activeSwitcherController];
  v3 = [v2 layoutStatePrimaryElement];
  v4 = [v3 workspaceEntity];
  v5 = [v4 applicationSceneEntity];
  v6 = [v5 sceneHandle];
  v7 = [v6 application];
  v8 = [v7 bundleIdentifier];
  v9 = [v8 isEqualToString:@"com.apple.ist.demoloop"];

  return v9;
}

- (void)coverSheetViewControllerDidPresentModalView:(id)a3
{
  v4 = [SBContinuitySessionSystemEvent eventWithType:4];
  [(SBContinuitySessionSystemEventMonitor *)self _postEvent:v4];
}

- (void)coverSheetViewControllerDidSettleOnPage:(id)a3 mainPage:(BOOL)a4
{
  if (a4)
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

- (void)coverSheetViewControllerDidPresentSearch:(id)a3
{
  v4 = [(SBContinuitySessionSystemEventMonitor *)self _calculateLockScreenSearchPresented];

  [(SBContinuitySessionSystemEventMonitor *)self _setLockScreenSearchPresented:v4];
}

- (void)coverSheetViewControllerDidDismissSearch:(id)a3
{
  v4 = [(SBContinuitySessionSystemEventMonitor *)self _calculateLockScreenSearchPresented];

  [(SBContinuitySessionSystemEventMonitor *)self _setLockScreenSearchPresented:v4];
}

- (void)todayViewControllerDidPresentSearch:(id)a3
{
  v4 = [(SBContinuitySessionSystemEventMonitor *)self _calculateLockScreenSearchPresented];

  [(SBContinuitySessionSystemEventMonitor *)self _setLockScreenSearchPresented:v4];
}

- (void)todayViewControllerDidDismissSearch:(id)a3
{
  v4 = [(SBContinuitySessionSystemEventMonitor *)self _calculateLockScreenSearchPresented];

  [(SBContinuitySessionSystemEventMonitor *)self _setLockScreenSearchPresented:v4];
}

- (NSString)coverSheetIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (BOOL)handleEvent:(id)a3
{
  if (([a3 type] & 0xFFFFFFFFFFFFFFFELL) == 0x28)
  {
    [(SBContinuitySessionSystemEventMonitor *)self _reevaluateSecureAppUsage];
  }

  return 0;
}

- (void)displayManager:(id)a3 didConnectIdentity:(id)a4 withConfiguration:(id)a5
{
  v6 = [SBContinuitySessionSystemEvent eventWithType:11, a4, a5];
  [(SBContinuitySessionSystemEventMonitor *)self _postEvent:v6];
}

- (void)displayManager:(id)a3 didDisconnectIdentity:(id)a4
{
  v5 = [SBContinuitySessionSystemEvent eventWithType:11, a4];
  [(SBContinuitySessionSystemEventMonitor *)self _postEvent:v5];
}

- (void)remoteTransientOverlaySessionManager:(id)a3 didActivateSession:(id)a4
{
  v7 = a4;
  v5 = [SBApp windowSceneManager];
  v6 = [v5 embeddedDisplayWindowScene];

  if ([v7 isPresentedOnWindowScene:v6])
  {
    [v7 addSessionObserver:self];
    [(SBContinuitySessionSystemEventMonitor *)self _setUserInitiatedRemoteTransientOverlayPresented:[(SBContinuitySessionSystemEventMonitor *)self _calculateUserInitiatedRemoteTransientOverlayPresented]];
  }
}

- (void)remoteTransientOverlaySessionDidDeactivate:(id)a3
{
  [a3 removeSessionObserver:self];
  v4 = [(SBContinuitySessionSystemEventMonitor *)self _calculateUserInitiatedRemoteTransientOverlayPresented];

  [(SBContinuitySessionSystemEventMonitor *)self _setUserInitiatedRemoteTransientOverlayPresented:v4];
}

- (void)remoteTransientOverlaySession:(id)a3 didInvalidateWithReason:(int64_t)a4 error:(id)a5
{
  [a3 removeSessionObserver:{self, a4, a5}];
  v6 = [(SBContinuitySessionSystemEventMonitor *)self _calculateUserInitiatedRemoteTransientOverlayPresented];

  [(SBContinuitySessionSystemEventMonitor *)self _setUserInitiatedRemoteTransientOverlayPresented:v6];
}

- (void)_postEvent:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
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

        [*(*(&v10 + 1) + 8 * v9++) continuitySessionSystemEventMonitor:self eventOccurred:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_passcodeVisibilityUpdated:(id)a3
{
  v4 = +[SBLockScreenManager sharedInstanceIfExists];
  -[SBContinuitySessionSystemEventMonitor _setPasscodeVisible:](self, "_setPasscodeVisible:", [v4 isPasscodeEntryVisible]);
}

- (void)_aggregateLockStateChanged:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:@"SBAggregateLockStateKey"];
  v6 = [v5 integerValue];

  [(SBContinuitySessionSystemEventMonitor *)self _setUILocked:v6 & 1];

  [(SBContinuitySessionSystemEventMonitor *)self _setUIBlocked:(v6 >> 2) & 1];
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

- (void)_setPasscodeVisible:(BOOL)a3
{
  if (self->_isPasscodeVisible != a3)
  {
    self->_isPasscodeVisible = a3;
    if (a3)
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

- (void)_setUILocked:(BOOL)a3
{
  if (self->_isUILocked != a3)
  {
    self->_isUILocked = a3;
    v5 = [SBContinuitySessionSystemEvent eventWithType:a3];
    [(SBContinuitySessionSystemEventMonitor *)self _postEvent:v5];
  }
}

- (void)_setUIBlocked:(BOOL)a3
{
  if (self->_isUIBlocked != a3)
  {
    self->_isUIBlocked = a3;
    if (a3)
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

- (void)_setInCall:(BOOL)a3
{
  if (self->_inCall != a3)
  {
    self->_inCall = a3;
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
  v2 = [MEMORY[0x277D6EDF8] sharedInstance];
  v3 = [v2 currentAudioAndVideoCalls];

  obj = v3;
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v32 count:16];
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
          v9 = [v7 callUUID];
          v10 = [v7 uniqueProxyIdentifier];
          *buf = 134218498;
          v23 = v7;
          v24 = 2114;
          v25 = v9;
          v26 = 2114;
          v27 = v10;
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
          v12 = [v7 callUUID];
          v13 = [v7 uniqueProxyIdentifier];
          v14 = [v7 status];
          v15 = [v7 isEndpointOnCurrentDevice];
          *buf = 134219010;
          v23 = v7;
          v24 = 2114;
          v25 = v12;
          v26 = 2114;
          v27 = v13;
          v28 = 1024;
          v29 = v14;
          v30 = 1024;
          v31 = v15;
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

- (void)_setSOSActive:(BOOL)a3
{
  if (self->_isSOSActive != a3)
  {
    self->_isSOSActive = a3;
    v5 = [SBContinuitySessionSystemEvent eventWithType:8];
    [(SBContinuitySessionSystemEventMonitor *)self _postEvent:v5];
  }
}

- (BOOL)_calculateLockScreenSearchPresented
{
  v3 = +[SBLockScreenManager sharedInstance];
  v4 = [v3 coverSheetViewController];
  v5 = [v4 coverSheetSpotlightPresenter];
  if ([v5 isSpotlightPresented])
  {
    v6 = 1;
  }

  else
  {
    v7 = [(SBContinuitySessionSystemEventMonitor *)self _coverSheetTodayViewController];
    v6 = [v7 isSpotlightVisible];
  }

  return v6;
}

- (void)_setLockScreenSearchPresented:(BOOL)a3
{
  if (self->_lockScreenSearchPresented != a3)
  {
    self->_lockScreenSearchPresented = a3;
    v5 = [SBContinuitySessionSystemEvent eventWithType:9];
    [(SBContinuitySessionSystemEventMonitor *)self _postEvent:v5];
  }
}

- (void)_reevaluateSecureAppUsage
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = +[SBCoverSheetPresentationManager sharedInstance];
  v4 = [v3 isCoverSheetHostingAnApp];

  v5 = SBLogContinuityDisplay();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6[0] = 67109120;
    v6[1] = v4;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "Reevaluating secure app usage... cover sheet hosting an app: %{BOOL}u", v6, 8u);
  }

  [(SBContinuitySessionSystemEventMonitor *)self _setUsingSecureApp:v4];
}

- (void)_setUsingSecureApp:(BOOL)a3
{
  if (self->_usingSecureApp != a3)
  {
    self->_usingSecureApp = a3;
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

  v2 = [SBApp windowSceneManager];
  v3 = [v2 embeddedDisplayWindowScene];

  v4 = [SBApp remoteTransientOverlaySessionManager];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __95__SBContinuitySessionSystemEventMonitor__calculateUserInitiatedRemoteTransientOverlayPresented__block_invoke_2;
  v8[3] = &unk_2783B4C50;
  v9 = v3;
  v5 = v3;
  v6 = [v4 hasActiveSessionMatchingPredicate:v8 options:0];

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

- (void)_setUserInitiatedRemoteTransientOverlayPresented:(BOOL)a3
{
  if (self->_userInitiatedRemoteTransientOverlayPresented != a3)
  {
    self->_userInitiatedRemoteTransientOverlayPresented = a3;
    v5 = [SBContinuitySessionSystemEvent eventWithType:12];
    [(SBContinuitySessionSystemEventMonitor *)self _postEvent:v5];
  }
}

- (id)_coverSheetTodayViewController
{
  v2 = [SBApp windowSceneManager];
  v3 = [v2 embeddedDisplayWindowScene];

  v4 = [v3 homeScreenController];
  v5 = [v4 coverSheetTodayViewController];

  return v5;
}

@end