@interface SBApplicationAutoLaunchService
- (BOOL)_shouldAutoLaunchApplication:(id)a3 forReason:(unint64_t)a4;
- (id)_initWithWorkspace:(id)a3 applicationController:(id)a4 restartManager:(id)a5 syncController:(id)a6 keybag:(id)a7;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)_applicationProcessStateDidChange:(id)a3;
- (void)_autoLaunchAppsIfNecessaryAfterFirstUnlock;
- (void)_autoLaunchIfNecessary:(id)a3 forReason:(unint64_t)a4;
- (void)_installedApplicationsDidChange:(id)a3;
- (void)_invalidateQueuedApplicationsThrottledForRelaunchTimer;
- (void)_launchNextQueuedApplicationThrottledForRelaunch;
- (void)_memoryPressureRelieved:(id)a3;
- (void)_memoryPressureWarn:(id)a3;
- (void)_noteKeybagDidUnlock;
- (void)_noteTerminationAssertionRemovedForApplication:(id)a3;
- (void)_recalculateVoIPBehaviorForApplication:(id)a3 withExitContext:(id)a4;
- (void)_scheduleAutoLaunchForApplicationExited:(id)a3 withExitContext:(id)a4;
- (void)_scheduleThrottledApplicationRelaunchTimerIfNecessary;
- (void)autoLaunchApplicationsIfNecessaryForStartup;
- (void)dealloc;
- (void)invalidate;
- (void)keybagDidUnlockForTheFirstTime:(id)a3;
@end

@implementation SBApplicationAutoLaunchService

- (id)_initWithWorkspace:(id)a3 applicationController:(id)a4 restartManager:(id)a5 syncController:(id)a6 keybag:(id)a7
{
  v13 = a3;
  v14 = a4;
  v25 = a5;
  v15 = a6;
  v16 = a7;
  v24 = v13;
  if (v13)
  {
    if (v14)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBApplicationAutoLaunchService _initWithWorkspace:applicationController:restartManager:syncController:keybag:];
    if (v14)
    {
      goto LABEL_3;
    }
  }

  [SBApplicationAutoLaunchService _initWithWorkspace:applicationController:restartManager:syncController:keybag:];
LABEL_3:
  if (v25)
  {
    if (v15)
    {
      goto LABEL_5;
    }

LABEL_19:
    [SBApplicationAutoLaunchService _initWithWorkspace:applicationController:restartManager:syncController:keybag:];
    if (v16)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

  [SBApplicationAutoLaunchService _initWithWorkspace:applicationController:restartManager:syncController:keybag:];
  if (!v15)
  {
    goto LABEL_19;
  }

LABEL_5:
  if (v16)
  {
    goto LABEL_6;
  }

LABEL_20:
  [SBApplicationAutoLaunchService _initWithWorkspace:applicationController:restartManager:syncController:keybag:];
LABEL_6:
  v27.receiver = self;
  v27.super_class = SBApplicationAutoLaunchService;
  v17 = [(SBApplicationAutoLaunchService *)&v27 init];
  p_isa = &v17->super.isa;
  if (v17)
  {
    objc_storeStrong(&v17->_mainWorkspace, a3);
    objc_storeStrong(p_isa + 2, a4);
    objc_storeStrong(p_isa + 3, a5);
    objc_storeStrong(p_isa + 4, a6);
    objc_storeStrong(p_isa + 5, a7);
    v19 = [MEMORY[0x277CCAB98] defaultCenter];
    [v19 addObserver:p_isa selector:sel__installedApplicationsDidChange_ name:@"SBInstalledApplicationsDidChangeNotification" object:0];
    [v19 addObserver:p_isa selector:sel__applicationProcessStateDidChange_ name:@"SBApplicationProcessStateDidChange" object:0];
    [v19 addObserver:p_isa selector:sel__memoryPressureRelieved_ name:@"SBMemoryPressureReturnedToNormalNotification" object:0];
    [v19 addObserver:p_isa selector:sel__memoryPressureWarn_ name:@"SBMemoryPressureUnderPressureNotification" object:0];
    v20 = [p_isa[5] hasBeenUnlockedSinceBoot];
    v21 = SBLogAutoLaunching();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    if (v20)
    {
      if (v22)
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v21, OS_LOG_TYPE_DEFAULT, "Service initialized: already unlocked.", buf, 2u);
      }
    }

    else
    {
      if (v22)
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v21, OS_LOG_TYPE_DEFAULT, "Service initialized: waiting for first unlock.", buf, 2u);
      }

      [p_isa[5] addObserver:p_isa];
    }
  }

  return p_isa;
}

- (void)dealloc
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)autoLaunchApplicationsIfNecessaryForStartup
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = SBLogAutoLaunching();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_INFO, "AutoLaunch for startup.", buf, 2u);
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = [(SBApplicationController *)self->_applicationController allApplications];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(SBApplicationAutoLaunchService *)self _autoLaunchIfNecessary:*(*(&v9 + 1) + 8 * v8++) forReason:1];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)invalidate
{
  if (!self->_invalidated)
  {
    self->_invalidated = 1;
    [(SBFMobileKeyBag *)self->_keybag removeObserver:self];
    [(NSTimer *)self->_queuedApplicationsThrottledForRelaunchTimer invalidate];
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 removeObserver:self];
  }
}

- (void)_noteTerminationAssertionRemovedForApplication:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  BSDispatchQueueAssertMain();
  v5 = [v4 info];
  if ([v5 supportsLegacyVOIPBackgroundMode])
  {
    v6 = [v4 wantsAutoLaunchForVOIP];

    if (v6)
    {
      v7 = SBLogAutoLaunching();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = 138543362;
        v9 = v4;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "AutoLaunch for termination assertion removed on application: %{public}@", &v8, 0xCu);
      }

      [(SBApplicationAutoLaunchService *)self _autoLaunchIfNecessary:v4 forReason:2];
    }
  }

  else
  {
  }
}

- (id)succinctDescription
{
  v2 = [(SBApplicationAutoLaunchService *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBApplicationAutoLaunchService *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBApplicationAutoLaunchService *)self succinctDescriptionBuilder];
  [v4 appendArraySection:self->_queuedApplicationsThrottledForRelaunch withName:@"QueuedApplicationsThrottledForRelaunch" skipIfEmpty:1];
  v5 = [v4 appendObject:self->_queuedApplicationsThrottledForRelaunchTimer withName:@"QueuedApplicationsThrottledForRelaunchTimer" skipIfNil:1];

  return v4;
}

- (void)_autoLaunchIfNecessary:(id)a3 forReason:(unint64_t)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (([(SBFMobileKeyBag *)self->_keybag hasBeenUnlockedSinceBoot]& 1) != 0)
  {
    if ([(SBApplicationAutoLaunchService *)self _shouldAutoLaunchApplication:v6 forReason:a4])
    {
      v7 = SBLogAutoLaunching();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        if (a4 > 3)
        {
          v8 = 0;
        }

        else
        {
          v8 = off_2783BEDB0[a4];
        }

        *buf = 138543618;
        v17 = v8;
        v18 = 2114;
        v19 = v6;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "AutoLaunching application for %{public}@: %{public}@", buf, 0x16u);
      }

      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __67__SBApplicationAutoLaunchService__autoLaunchIfNecessary_forReason___block_invoke;
      v14[3] = &unk_2783A92D8;
      v14[4] = self;
      v15 = v6;
      v10 = MEMORY[0x223D6F7F0](v14);
      v11 = v10;
      if (self->_autoLaunchSynchronously)
      {
        v10[2](v10);
      }

      else
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __67__SBApplicationAutoLaunchService__autoLaunchIfNecessary_forReason___block_invoke_4;
        block[3] = &unk_2783A9348;
        v13 = v10;
        dispatch_async(MEMORY[0x277D85CD0], block);
      }
    }
  }

  else
  {
    v9 = SBLogAutoLaunching();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v17 = v6;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_INFO, "Pre-empting auto launch because we haven't had first unlock yet: %{public}@", buf, 0xCu);
    }
  }
}

void __67__SBApplicationAutoLaunchService__autoLaunchIfNecessary_forReason___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __67__SBApplicationAutoLaunchService__autoLaunchIfNecessary_forReason___block_invoke_2;
  v2[3] = &unk_2783A98F0;
  v3 = *(a1 + 40);
  [v1 requestTransitionWithBuilder:v2];
}

void __67__SBApplicationAutoLaunchService__autoLaunchIfNecessary_forReason___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setSource:58];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __67__SBApplicationAutoLaunchService__autoLaunchIfNecessary_forReason___block_invoke_3;
  v4[3] = &unk_2783A98C8;
  v5 = *(a1 + 32);
  [v3 modifyApplicationContext:v4];
}

void __67__SBApplicationAutoLaunchService__autoLaunchIfNecessary_forReason___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = [[SBDeviceApplicationSceneEntity alloc] initWithApplicationForMainDisplay:*(a1 + 32)];
  if ([*(a1 + 32) wantsAutoLaunchForVOIP])
  {
    v4 = [objc_alloc(MEMORY[0x277D75148]) initWithInfo:0 responder:0];
    v5 = [MEMORY[0x277CBEB98] setWithObject:v4];
    [(SBApplicationSceneEntity *)v6 addActions:v5];
  }

  [v3 setBackground:1];
  [v3 setEntity:v6 forLayoutRole:1];
}

- (BOOL)_shouldAutoLaunchApplication:(id)a3 forReason:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 isSystemApplication];
  v8 = [v6 lastExitContext];
  if ([v8 exitReason])
  {
    v10 = [v8 underlyingContext];
    v9 = [v10 legacyCode] == 0;
  }

  else
  {
    v9 = 0;
  }

  v11 = [v6 lastExitContext];
  v12 = [v11 terminationReason];

  if (v9 || (v13 = v12 != 1, ([v8 exitReason] & 0x20) != 0))
  {
    v13 = 0;
  }

  if ([v6 isUninstalled])
  {
    goto LABEL_28;
  }

  if (v7 && ([v6 bundleIdentifier], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isEqual:", @"com.apple.mobiletimer"), v14, v15))
  {
    v16 = +[SBDefaults localDefaults];
    v17 = [v16 notificationDefaults];
    v18 = [v17 legacyAlarmList];

    if (!v18)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v19 = a4 != 3;
    if (![v6 wantsAutoLaunchForVOIP] || !v19 && !v13)
    {
      if (!v13)
      {
        goto LABEL_28;
      }

      if (![v6 isConnectedToExternalAccessory])
      {
        goto LABEL_28;
      }

      v23 = [v6 info];
      v24 = [v23 supportsBackgroundMode:@"external-accessory"];

      if (!v24)
      {
        goto LABEL_28;
      }
    }
  }

  v20 = [v6 failedLaunchCount];
  v21 = 5;
  if (v7)
  {
    v21 = 10;
  }

  if (v20 >= v21)
  {
    v25 = SBLogAutoLaunching();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [SBApplicationAutoLaunchService _shouldAutoLaunchApplication:v6 forReason:v25];
    }

    goto LABEL_28;
  }

  if (([v6 isAnyTerminationAssertionHeld] & 1) != 0 || -[SBRestartManager isPendingExit](self->_restartManager, "isPendingExit") || -[SBSyncController restoreState](self->_syncController, "restoreState"))
  {
LABEL_28:
    LOBYTE(v22) = 0;
    goto LABEL_29;
  }

  v22 = ![(SBSyncController *)self->_syncController isResetting];
LABEL_29:

  return v22;
}

- (void)_launchNextQueuedApplicationThrottledForRelaunch
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [(NSMutableArray *)self->_queuedApplicationsThrottledForRelaunch objectAtIndex:0];
  [(NSMutableArray *)self->_queuedApplicationsThrottledForRelaunch removeObjectAtIndex:0];
  if (v3)
  {
    v4 = SBLogAutoLaunching();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_INFO, "AutoLaunch throttled application for relaunch: %{public}@.", &v6, 0xCu);
    }

    [(SBApplicationAutoLaunchService *)self _autoLaunchIfNecessary:v3 forReason:3];
  }

  if (![(NSMutableArray *)self->_queuedApplicationsThrottledForRelaunch count])
  {
    queuedApplicationsThrottledForRelaunch = self->_queuedApplicationsThrottledForRelaunch;
    self->_queuedApplicationsThrottledForRelaunch = 0;

    [(SBApplicationAutoLaunchService *)self _invalidateQueuedApplicationsThrottledForRelaunchTimer];
  }
}

- (void)_scheduleThrottledApplicationRelaunchTimerIfNecessary
{
  v7 = *MEMORY[0x277D85DE8];
  if (([SBApp underMemoryPressure] & 1) == 0 && self->_queuedApplicationsThrottledForRelaunch && !self->_queuedApplicationsThrottledForRelaunchTimer)
  {
    v3 = SBLogAutoLaunching();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v6[0] = 67109120;
      v6[1] = 15;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_INFO, "Scheduling throttled relaunch of queued applications in %d seconds.", v6, 8u);
    }

    v4 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__launchNextQueuedApplicationThrottledForRelaunch selector:0 userInfo:1 repeats:15.0];
    queuedApplicationsThrottledForRelaunchTimer = self->_queuedApplicationsThrottledForRelaunchTimer;
    self->_queuedApplicationsThrottledForRelaunchTimer = v4;
  }
}

- (void)_invalidateQueuedApplicationsThrottledForRelaunchTimer
{
  [(NSTimer *)self->_queuedApplicationsThrottledForRelaunchTimer invalidate];
  queuedApplicationsThrottledForRelaunchTimer = self->_queuedApplicationsThrottledForRelaunchTimer;
  self->_queuedApplicationsThrottledForRelaunchTimer = 0;
}

- (void)_scheduleAutoLaunchForApplicationExited:(id)a3 withExitContext:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = SBLogAutoLaunching();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v13 = 138543362;
    v14 = v6;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_INFO, "Application exited and wants to be relaunched: %{public}@.", &v13, 0xCu);
  }

  if (([SBApp underMemoryPressure] & 1) != 0 || (objc_msgSend(v7, "exitReason") & 0x10) != 0)
  {
    v9 = SBLogAutoLaunching();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SBApplicationAutoLaunchService _scheduleAutoLaunchForApplicationExited:v6 withExitContext:v9];
    }

    queuedApplicationsThrottledForRelaunch = self->_queuedApplicationsThrottledForRelaunch;
    if (!queuedApplicationsThrottledForRelaunch)
    {
      v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v12 = self->_queuedApplicationsThrottledForRelaunch;
      self->_queuedApplicationsThrottledForRelaunch = v11;

      queuedApplicationsThrottledForRelaunch = self->_queuedApplicationsThrottledForRelaunch;
    }

    if (([(NSMutableArray *)queuedApplicationsThrottledForRelaunch containsObject:v6]& 1) == 0)
    {
      [(NSMutableArray *)self->_queuedApplicationsThrottledForRelaunch addObject:v6];
      [(SBApplicationAutoLaunchService *)self _scheduleThrottledApplicationRelaunchTimerIfNecessary];
    }
  }

  else
  {
    [(SBApplicationAutoLaunchService *)self _autoLaunchIfNecessary:v6 forReason:3];
  }
}

- (void)_autoLaunchAppsIfNecessaryAfterFirstUnlock
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __76__SBApplicationAutoLaunchService__autoLaunchAppsIfNecessaryAfterFirstUnlock__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = [*(*(a1 + 32) + 16) allApplications];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 32) _autoLaunchIfNecessary:*(*(&v7 + 1) + 8 * v6++) forReason:1];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_recalculateVoIPBehaviorForApplication:(id)a3 withExitContext:(id)a4
{
  v16 = a3;
  v6 = a4;
  v7 = [v16 info];
  v8 = [v7 supportsLegacyVOIPBackgroundMode];

  if ((v8 & 1) == 0)
  {
    [SBApplicationAutoLaunchService _recalculateVoIPBehaviorForApplication:withExitContext:];
  }

  v9 = [v6 terminationReason];
  v10 = [v6 exitReason];
  v11 = v10;
  v12 = (v9 > 9) | (0x18Du >> v9);
  if (v10)
  {
    v13 = [v6 underlyingContext];
    v14 = [v13 legacyCode];

    LOBYTE(v12) = v12 & (v14 != 0);
    if (!(v9 | v11 & 0x10))
    {
      if (!v14)
      {
        v15 = 0;
        LOBYTE(v12) = 0;
        goto LABEL_9;
      }

LABEL_8:
      v15 = [v16 failedAutoLaunchCountForVOIP] + 1;
LABEL_9:
      [v16 setFailedAutoLaunchCountForVOIP:v15];
    }
  }

  else if (!(v9 | v10 & 0x10))
  {
    goto LABEL_8;
  }

  if (!-[SBRestartManager isPendingExit](self->_restartManager, "isPendingExit") && (v12 & ([v16 failedAutoLaunchCountForVOIP] < 6)) == 0)
  {
    [v16 setWantsAutoLaunchForVOIP:0];
  }
}

- (void)_applicationProcessStateDidChange:(id)a3
{
  v4 = a3;
  v21 = [v4 object];
  v5 = [v4 userInfo];

  v6 = [v5 objectForKey:@"previousProcessState"];

  v7 = [v21 processState];
  v8 = [v6 taskState];
  if (v7)
  {
    v9 = [v7 taskState] != 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = v21;
  if (v8 != 1 && !v9)
  {
    v11 = [v21 lastExitContext];
    v12 = [v21 info];
    v13 = [v12 supportsLegacyVOIPBackgroundMode];

    if (v13)
    {
      [(SBApplicationAutoLaunchService *)self _recalculateVoIPBehaviorForApplication:v21 withExitContext:v11];
    }

    if ([(SBApplicationAutoLaunchService *)self _shouldAutoLaunchApplication:v21 forReason:3])
    {
      [(SBApplicationAutoLaunchService *)self _scheduleAutoLaunchForApplicationExited:v21 withExitContext:v11];
    }

    v10 = v21;
  }

  v14 = [v10 info];
  v15 = [v14 supportsLegacyVOIPBackgroundMode];

  if (v15)
  {
    v16 = [v6 taskState];
    v17 = [v7 taskState];
    if (v16 == 3 && v17 == 3)
    {
      [v21 setFailedAutoLaunchCountForVOIP:0];
    }

    v19 = [v6 visibility];
    v20 = [v7 visibility];
    if (v19 != 2 && v20 == 2)
    {
      [v21 setWantsAutoLaunchForVOIP:1];
    }
  }
}

- (void)_noteKeybagDidUnlock
{
  [(SBApplicationAutoLaunchService *)self _autoLaunchAppsIfNecessaryAfterFirstUnlock];
  keybag = self->_keybag;

  [(SBFMobileKeyBag *)keybag removeObserver:self];
}

- (void)keybagDidUnlockForTheFirstTime:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__SBApplicationAutoLaunchService_keybagDidUnlockForTheFirstTime___block_invoke;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_installedApplicationsDidChange:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  BSDispatchQueueAssertMain();
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"SBInstalledApplicationsAddedBundleIDs"];

  v7 = [v4 userInfo];
  v8 = [v7 objectForKeyedSubscript:@"SBInstalledApplicationsReplacedBundleIDs"];

  if (v6 | v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v10 = v9;
    if (v6)
    {
      [v9 unionSet:v6];
    }

    if (v8)
    {
      [v10 unionSet:v8];
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v18;
      do
      {
        v15 = 0;
        do
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [(SBApplicationController *)self->_applicationController applicationWithBundleIdentifier:*(*(&v17 + 1) + 8 * v15), v17];
          if (v16)
          {
            [(SBApplicationAutoLaunchService *)self _autoLaunchIfNecessary:v16 forReason:0];
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v13);
    }
  }
}

- (void)_memoryPressureWarn:(id)a3
{
  BSDispatchQueueAssertMain();
  v4 = SBLogAutoLaunching();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Memory pressure warning; unscheduling queued throttled applications to relaunch.", v5, 2u);
  }

  [(SBApplicationAutoLaunchService *)self _invalidateQueuedApplicationsThrottledForRelaunchTimer];
}

- (void)_memoryPressureRelieved:(id)a3
{
  BSDispatchQueueAssertMain();
  v4 = SBLogAutoLaunching();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Memory pressure relieved; scheduling relaunch of queued throttled applications to relaunch if necessary.", v5, 2u);
  }

  [(SBApplicationAutoLaunchService *)self _scheduleThrottledApplicationRelaunchTimerIfNecessary];
}

- (void)_initWithWorkspace:applicationController:restartManager:syncController:keybag:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"workspace" object:? file:? lineNumber:? description:?];
}

- (void)_initWithWorkspace:applicationController:restartManager:syncController:keybag:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"applicationController" object:? file:? lineNumber:? description:?];
}

- (void)_initWithWorkspace:applicationController:restartManager:syncController:keybag:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"restartManager" object:? file:? lineNumber:? description:?];
}

- (void)_initWithWorkspace:applicationController:restartManager:syncController:keybag:.cold.4()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"syncController" object:? file:? lineNumber:? description:?];
}

- (void)_initWithWorkspace:applicationController:restartManager:syncController:keybag:.cold.5()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"keybag" object:? file:? lineNumber:? description:?];
}

- (void)_shouldAutoLaunchApplication:(void *)a1 forReason:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 bundleIdentifier];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "Application '%{public}@' has failed to launch too many times. Not relaunching.", &v4, 0xCu);
}

- (void)_scheduleAutoLaunchForApplicationExited:(uint64_t)a1 withExitContext:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "Queueing application for throttled auto launch due to memory-pressure or jetsam exit: %{public}@.", &v2, 0xCu);
}

- (void)_recalculateVoIPBehaviorForApplication:withExitContext:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end