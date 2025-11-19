@interface SBSyncController
+ (SBSyncController)sharedInstance;
- (BOOL)_isBackupAgentRunning;
- (BOOL)isInUse;
- (SBIdleTimerCoordinating)_idleTimerCoordinator;
- (id)_idleTimerBehavior;
- (void)_delayedQuitApplications;
- (void)_didEndRestoring:(int)a3;
- (void)_invalidateRestoreTimer;
- (void)_killApplicationsIfNecessary;
- (void)_notifyRestoreCanProceed;
- (void)_rebootNow;
- (void)_restoreTimerFired:(id)a3;
- (void)_setRestoreState:(int)a3;
- (void)_setupRestoreTimer;
- (void)_syncSessionDidEnd;
- (void)beginRestoring;
- (void)cancelRestoring;
- (void)dealloc;
- (void)finishedTerminatingApplications;
- (void)resetService:(id)a3 didBeginDataResetWithMode:(int64_t)a4;
- (void)resetService:(id)a3 didCompleteDataResetMode:(int64_t)a4 withError:(id)a5 completion:(id)a6;
- (void)resetService:(id)a3 willBeginDataResetWithMode:(int64_t)a4;
- (void)startObserving;
- (void)stopObserving;
@end

@implementation SBSyncController

+ (SBSyncController)sharedInstance
{
  if (sharedInstance___once_0 != -1)
  {
    +[SBSyncController sharedInstance];
  }

  v3 = sharedInstance___sharedSyncController;

  return v3;
}

- (BOOL)isInUse
{
  if ([(SBSyncController *)self isRestoring])
  {
    return 1;
  }

  return [(SBSyncController *)self isResetting];
}

uint64_t __34__SBSyncController_sharedInstance__block_invoke()
{
  kdebug_trace();
  v0 = objc_alloc_init(SBSyncController);
  v1 = sharedInstance___sharedSyncController;
  sharedInstance___sharedSyncController = v0;

  return kdebug_trace();
}

- (void)dealloc
{
  [(SBWindowSceneStatusBarSettingsAssertion *)self->_hideStatusBarAssertion invalidate];
  [(SBSyncController *)self stopObserving];
  v3.receiver = self;
  v3.super_class = SBSyncController;
  [(SBSyncController *)&v3 dealloc];
}

- (void)startObserving
{
  v3 = [*MEMORY[0x277D28A28] UTF8String];
  notify_register_dispatch(v3, &self->_restoreStartedNotifyToken, MEMORY[0x277D85CD0], &__block_literal_global_7);
  state64 = 0;
  notify_get_state(self->_restoreStartedNotifyToken, &state64);
  if (state64)
  {
    v4 = SBLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "SB RESTORE: SBRestoreStarted", v10, 2u);
    }

    v5 = +[SBSyncController sharedInstance];
    [v5 beginRestoring];
  }

  v6 = [*MEMORY[0x277D28A20] UTF8String];
  v7 = MEMORY[0x277D85CD0];
  notify_register_dispatch(v6, &self->_restoreEndedNotifyToken, MEMORY[0x277D85CD0], &__block_literal_global_10);

  v8 = [MEMORY[0x277D072C0] sharedInstance];
  [v8 addOberver:self];

  v9 = [MEMORY[0x277CCAB98] defaultCenter];
  [v9 addObserver:self selector:sel__wirelessSyncEnded_ name:@"kSBWirelessAppSyncEnded" object:0];
  [v9 addObserver:self selector:sel__wirelessSyncBegan_ name:@"kSBWirelessAppSyncBegan" object:0];
  [v9 addObserver:self selector:sel__appInstallationNotification name:@"SBInstalledApplicationsDidChangeNotification" object:0];
}

void __34__SBSyncController_startObserving__block_invoke()
{
  v0 = SBLogCommon();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_21ED4E000, v0, OS_LOG_TYPE_DEFAULT, "SB RESTORE: SBRestoreStarted", v2, 2u);
  }

  v1 = +[SBSyncController sharedInstance];
  [v1 beginRestoring];
}

void __34__SBSyncController_startObserving__block_invoke_8()
{
  v0 = SBLogCommon();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_21ED4E000, v0, OS_LOG_TYPE_DEFAULT, "SB RESTORE: SBRestoreEnded", v2, 2u);
  }

  v1 = +[SBSyncController sharedInstance];
  [v1 _didEndRestoring:2];
}

- (void)stopObserving
{
  v3 = [MEMORY[0x277D072C0] sharedInstance];
  [v3 removeObserver:self];

  notify_cancel(self->_restoreStartedNotifyToken);
  notify_cancel(self->_restoreEndedNotifyToken);
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self];
}

- (void)finishedTerminatingApplications
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"SBResetOrRestoreStateDidChangeNotification" object:self];

  [SBSyncController cancelPreviousPerformRequestsWithTarget:self selector:sel_finishedTerminatingApplications object:0];

  [(SBSyncController *)self _notifyRestoreCanProceed];
}

- (void)beginRestoring
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = SBLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    restoreState = self->_restoreState;
    v11[0] = 67109120;
    v11[1] = restoreState;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "SB RESTORE: beginRestoring %d", v11, 8u);
  }

  if (!self->_restoreState)
  {
    v5 = +[SBTelephonyManager sharedTelephonyManager];
    [(SBSyncController *)self _setRestoreState:1];
    [(SBSyncController *)self _setupRestoreTimer];
    v6 = [MEMORY[0x277D0AB08] sharedInstance];
    [v6 prepareDisplaysForExit];

    v7 = +[SBMainStatusBarStateProvider sharedInstance];
    [v7 setTelephonyAndBluetoothItemsCloaked:1];

    [v5 disconnectAllCalls];
    v8 = +[SBAirplaneModeController sharedInstance];
    [v8 setInAirplaneMode:0];

    if ([MEMORY[0x277D75128] isRunningInStoreDemoMode])
    {
      v9 = [MEMORY[0x277D75D70] webClips];
      v10 = [v9 copy];

      [v10 makeObjectsPerformSelector:sel_removeFromDisk];
    }

    [v5 setNetworkRegistrationEnabled:0];
    [(SBSyncController *)self _killApplicationsIfNecessary];
  }
}

- (void)cancelRestoring
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = SBLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    restoreState = self->_restoreState;
    v5[0] = 67109120;
    v5[1] = restoreState;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "SB RESTORE: cancelRestoring %d", v5, 8u);
  }

  [(SBSyncController *)self _setRestoreState:3];
}

- (void)resetService:(id)a3 willBeginDataResetWithMode:(int64_t)a4
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = SBLogDataReset();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v7 = a4;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Received willBeginDataResetWithMode:%ld in springboard", buf, 0xCu);
  }

  BSDispatchMain();
}

void __60__SBSyncController_resetService_willBeginDataResetWithMode___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  if (!*(v3 + 12))
  {
    v23 = v1;
    v24 = v2;
    *(v3 + 12) = 1;
    v5 = [MEMORY[0x277D0AB08] sharedInstance];
    [v5 prepareDisplaysForExit];

    v6 = +[SBMainStatusBarStateProvider sharedInstance];
    [v6 setTelephonyAndBluetoothItemsCloaked:1];

    if (!*(*(a1 + 32) + 64))
    {
      v7 = SBLogDataReset();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Hiding the status bar", buf, 2u);
      }

      v8 = [SBApp windowSceneManager];
      v9 = [v8 embeddedDisplayWindowScene];

      v10 = [v9 statusBarManager];
      v11 = [v10 assertionManager];

      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[SBSyncController resetService:willBeginDataResetWithMode:]_block_invoke"];
      v13 = [v11 newSettingsAssertionWithStatusBarHidden:1 atLevel:10 reason:v12];
      v14 = *(a1 + 32);
      v15 = *(v14 + 64);
      *(v14 + 64) = v13;

      [*(*(a1 + 32) + 64) acquire];
    }

    v16 = SBLogDataReset();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_DEFAULT, "Disabling the idle timer", v21, 2u);
    }

    v17 = [*(a1 + 32) _idleTimerCoordinator];
    v18 = *(a1 + 32);
    v19 = [v18 _idleTimerBehavior];
    v20 = [v17 idleTimerProvider:v18 didProposeBehavior:v19 forReason:@"SBSyncControllerReset"];
  }
}

- (void)resetService:(id)a3 didBeginDataResetWithMode:(int64_t)a4
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = SBLogDataReset();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = a4;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Received didBeginDataResetWithMode:%ld in springboard", &v6, 0xCu);
  }
}

- (void)resetService:(id)a3 didCompleteDataResetMode:(int64_t)a4 withError:(id)a5 completion:(id)a6
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = a6;
  v8 = SBLogDataReset();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v11 = a4;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Received didCompleteDataResetMode:%ld in springboard", buf, 0xCu);
  }

  v9 = v7;
  BSDispatchMain();
}

uint64_t __79__SBSyncController_resetService_didCompleteDataResetMode_withError_completion___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 12) = 2;
  v2 = [*(a1 + 32) _idleTimerCoordinator];
  v3 = *(a1 + 32);
  v4 = [v3 _idleTimerBehavior];
  v5 = [v2 idleTimerProvider:v3 didProposeBehavior:v4 forReason:@"SBSyncControllerReset"];

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 postNotificationName:@"SBResetOrRestoreStateDidChangeNotification" object:*(a1 + 32)];

  result = *(a1 + 40);
  if (result)
  {
    v8 = *(result + 16);

    return v8();
  }

  return result;
}

- (void)_setRestoreState:(int)a3
{
  if (self->_restoreState != a3)
  {
    self->_restoreState = a3;
    if (a3 == 1 || self->_resetState == 1)
    {
      if (!self->_disableDeviceLockAssertion)
      {
        v5 = [SBApp authenticationController];
        v6 = [v5 createKeybagUnlockAssertionWithReason:@"Sync restore or reset"];
        disableDeviceLockAssertion = self->_disableDeviceLockAssertion;
        self->_disableDeviceLockAssertion = v6;

        [(SBFAuthenticationAssertion *)self->_disableDeviceLockAssertion activate];
      }
    }

    else
    {
      [(SBFAuthenticationAssertion *)self->_disableDeviceLockAssertion invalidate];
      v8 = self->_disableDeviceLockAssertion;
      self->_disableDeviceLockAssertion = 0;

      [(SBWindowSceneStatusBarSettingsAssertion *)self->_hideStatusBarAssertion invalidate];
      hideStatusBarAssertion = self->_hideStatusBarAssertion;
      self->_hideStatusBarAssertion = 0;
    }

    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 postNotificationName:@"SBITunesRestoreStateDidChangeNotification" object:0];
  }
}

- (void)_syncSessionDidEnd
{
  *&self->_isAppSyncing = 256;
  v3 = dispatch_time(0, 1000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__SBSyncController__syncSessionDidEnd__block_invoke;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  dispatch_after(v3, MEMORY[0x277D85CD0], block);
}

void __38__SBSyncController__syncSessionDidEnd__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 73) = 0;
  v2 = *(a1 + 32);
  if (*(v2 + 40) == 1 && (*(v2 + 72) & 1) == 0)
  {
    *(v2 + 40) = 0;
    v3 = objc_alloc_init(MEMORY[0x277D69C70]);
    [v3 start];
  }
}

- (void)_notifyRestoreCanProceed
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = SBLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    restoreState = self->_restoreState;
    v5[0] = 67109120;
    v5[1] = restoreState;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "SB RESTORE: _notifyRestoreCanProceed %d", v5, 8u);
  }

  notify_post([*MEMORY[0x277D67158] UTF8String]);
}

- (void)_killApplicationsIfNecessary
{
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v14 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __48__SBSyncController__killApplicationsIfNecessary__block_invoke;
  v12[3] = &unk_2783A8CE0;
  v12[4] = self;
  v12[5] = v13;
  v2 = MEMORY[0x223D6F7F0](v12, a2);
  v3 = SBLogDataReset();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Start killing all applications", buf, 2u);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__SBSyncController__killApplicationsIfNecessary__block_invoke_43;
  v9[3] = &unk_2783A9C70;
  v4 = v2;
  v10 = v4;
  SBWorkspaceTerminateAllApps(5, 0, @"device reset", v9);
  v5 = dispatch_time(0, 4000000000);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__SBSyncController__killApplicationsIfNecessary__block_invoke_45;
  v7[3] = &unk_2783A9348;
  v8 = v4;
  v6 = v4;
  dispatch_after(v5, MEMORY[0x277D85CD0], v7);

  _Block_object_dispose(v13, 8);
}

uint64_t __48__SBSyncController__killApplicationsIfNecessary__block_invoke(uint64_t result)
{
  v1 = *(*(result + 40) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    return [*(result + 32) finishedTerminatingApplications];
  }

  return result;
}

uint64_t __48__SBSyncController__killApplicationsIfNecessary__block_invoke_43(uint64_t a1)
{
  v2 = SBLogDataReset();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "Completed killing all applications", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t __48__SBSyncController__killApplicationsIfNecessary__block_invoke_45(uint64_t a1)
{
  v2 = SBLogDataReset();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "Killing all applications watchdog fired: continuing anyway.", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)_rebootNow
{
  v2 = +[SBTelephonyManager sharedTelephonyManager];
  [v2 setNetworkRegistrationEnabled:1];

  v3 = [SBApp restartManager];
  [v3 rebootForReason:@"ResetOrRestoreComplete"];
}

- (void)_didEndRestoring:(int)a3
{
  v3 = *&a3;
  v13 = *MEMORY[0x277D85DE8];
  v5 = SBLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v12 = v3;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "SB RESTORE: didEndRestoring %d", buf, 8u);
  }

  [(SBSyncController *)self _setRestoreState:v3];
  [(SBSyncController *)self _invalidateRestoreTimer];
  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 postNotificationName:@"SBResetOrRestoreStateDidChangeNotification" object:self];

  if (v3 == 4)
  {
    v7 = objc_alloc_init(SBRestoreFailureAlertItem);
    v8 = +[SBAlertItemsController sharedInstance];
    [v8 activateAlertItem:v7];
  }

  else
  {
    v9 = dispatch_time(0, 2000000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__SBSyncController__didEndRestoring___block_invoke;
    block[3] = &unk_2783A8C18;
    block[4] = self;
    dispatch_after(v9, MEMORY[0x277D85CD0], block);
  }
}

- (void)_delayedQuitApplications
{
  [(SBSyncController *)self _killApplicationsIfNecessary];
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"com.apple.springboard.reset-ready" object:0];
}

- (void)_invalidateRestoreTimer
{
  restoreTimer = self->_restoreTimer;
  self->_restoreTimer = 0;
}

- (BOOL)_isBackupAgentRunning
{
  v11 = *MEMORY[0x277D85DE8];
  *v9 = xmmword_21F8A5FB0;
  v10 = 0;
  size = 0;
  if (sysctl(v9, 3u, 0, &size, 0, 0))
  {
    v2 = SBLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      [(SBSyncController *)v2 _isBackupAgentRunning];
    }

    v3 = 0;
LABEL_8:

LABEL_9:
    v4 = 0;
    goto LABEL_10;
  }

  v3 = malloc_type_malloc(size, 0x10B2040B74D5165uLL);
  if (sysctl(v9, 3u, v3, &size, 0, 0))
  {
    v2 = SBLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      [(SBSyncController *)v2 _isBackupAgentRunning];
    }

    goto LABEL_8;
  }

  if ((size / 0x288uLL) < 1)
  {
    goto LABEL_9;
  }

  v6 = (size / 0x288uLL) & 0x7FFFFFFF;
  v7 = v3 + 243;
  while (*(v7 - 203) < 1 || !strstr(v7, "BackupAgent"))
  {
    v7 += 648;
    if (!--v6)
    {
      goto LABEL_9;
    }
  }

  v4 = 1;
LABEL_10:
  free(v3);
  return v4;
}

- (void)_restoreTimerFired:(id)a3
{
  v4 = a3;
  restoreTimerState = self->_restoreTimerState;
  if (restoreTimerState == 1)
  {
    v7 = [(SBSyncController *)self _isBackupAgentRunning];
    v8 = SBLogCommon();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v9)
      {
        *v11 = 0;
        _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "SB RESTORE: BackupAgent restarted", v11, 2u);
      }

      self->_restoreTimerState = 0;
    }

    else
    {
      if (v9)
      {
        *v10 = 0;
        _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "SB RESTORE: BackupAgent failed", v10, 2u);
      }

      self->_restoreTimerState = 2;
      [(SBSyncController *)self _didEndRestoring:4];
    }
  }

  else if (!restoreTimerState && ![(SBSyncController *)self _isBackupAgentRunning])
  {
    v6 = SBLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "SB RESTORE: BackupAgent not running", buf, 2u);
    }

    self->_restoreTimerState = 1;
  }
}

- (void)_setupRestoreTimer
{
  self->_restoreTimerState = 0;
  v3 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__restoreTimerFired_ selector:0 userInfo:1 repeats:5.0];
  restoreTimer = self->_restoreTimer;
  self->_restoreTimer = v3;
}

- (id)_idleTimerBehavior
{
  if ([(SBSyncController *)self isResetting])
  {
    +[SBIdleTimerBehavior disabledBehavior];
  }

  else
  {
    +[SBIdleTimerBehavior defaultBehavior];
  }
  v2 = ;

  return v2;
}

- (SBIdleTimerCoordinating)_idleTimerCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_idleTimerCoordinator);

  return WeakRetained;
}

@end