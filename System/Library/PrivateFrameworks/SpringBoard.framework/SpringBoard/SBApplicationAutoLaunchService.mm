@interface SBApplicationAutoLaunchService
- (BOOL)_shouldAutoLaunchApplication:(id)application forReason:(unint64_t)reason;
- (id)_initWithWorkspace:(id)workspace applicationController:(id)controller restartManager:(id)manager syncController:(id)syncController keybag:(id)keybag;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)_applicationProcessStateDidChange:(id)change;
- (void)_autoLaunchAppsIfNecessaryAfterFirstUnlock;
- (void)_autoLaunchIfNecessary:(id)necessary forReason:(unint64_t)reason;
- (void)_installedApplicationsDidChange:(id)change;
- (void)_invalidateQueuedApplicationsThrottledForRelaunchTimer;
- (void)_launchNextQueuedApplicationThrottledForRelaunch;
- (void)_memoryPressureRelieved:(id)relieved;
- (void)_memoryPressureWarn:(id)warn;
- (void)_noteKeybagDidUnlock;
- (void)_noteTerminationAssertionRemovedForApplication:(id)application;
- (void)_recalculateVoIPBehaviorForApplication:(id)application withExitContext:(id)context;
- (void)_scheduleAutoLaunchForApplicationExited:(id)exited withExitContext:(id)context;
- (void)_scheduleThrottledApplicationRelaunchTimerIfNecessary;
- (void)autoLaunchApplicationsIfNecessaryForStartup;
- (void)dealloc;
- (void)invalidate;
- (void)keybagDidUnlockForTheFirstTime:(id)time;
@end

@implementation SBApplicationAutoLaunchService

- (id)_initWithWorkspace:(id)workspace applicationController:(id)controller restartManager:(id)manager syncController:(id)syncController keybag:(id)keybag
{
  workspaceCopy = workspace;
  controllerCopy = controller;
  managerCopy = manager;
  syncControllerCopy = syncController;
  keybagCopy = keybag;
  v24 = workspaceCopy;
  if (workspaceCopy)
  {
    if (controllerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBApplicationAutoLaunchService _initWithWorkspace:applicationController:restartManager:syncController:keybag:];
    if (controllerCopy)
    {
      goto LABEL_3;
    }
  }

  [SBApplicationAutoLaunchService _initWithWorkspace:applicationController:restartManager:syncController:keybag:];
LABEL_3:
  if (managerCopy)
  {
    if (syncControllerCopy)
    {
      goto LABEL_5;
    }

LABEL_19:
    [SBApplicationAutoLaunchService _initWithWorkspace:applicationController:restartManager:syncController:keybag:];
    if (keybagCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

  [SBApplicationAutoLaunchService _initWithWorkspace:applicationController:restartManager:syncController:keybag:];
  if (!syncControllerCopy)
  {
    goto LABEL_19;
  }

LABEL_5:
  if (keybagCopy)
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
    objc_storeStrong(&v17->_mainWorkspace, workspace);
    objc_storeStrong(p_isa + 2, controller);
    objc_storeStrong(p_isa + 3, manager);
    objc_storeStrong(p_isa + 4, syncController);
    objc_storeStrong(p_isa + 5, keybag);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:p_isa selector:sel__installedApplicationsDidChange_ name:@"SBInstalledApplicationsDidChangeNotification" object:0];
    [defaultCenter addObserver:p_isa selector:sel__applicationProcessStateDidChange_ name:@"SBApplicationProcessStateDidChange" object:0];
    [defaultCenter addObserver:p_isa selector:sel__memoryPressureRelieved_ name:@"SBMemoryPressureReturnedToNormalNotification" object:0];
    [defaultCenter addObserver:p_isa selector:sel__memoryPressureWarn_ name:@"SBMemoryPressureUnderPressureNotification" object:0];
    hasBeenUnlockedSinceBoot = [p_isa[5] hasBeenUnlockedSinceBoot];
    v21 = SBLogAutoLaunching();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    if (hasBeenUnlockedSinceBoot)
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
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
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
  allApplications = [(SBApplicationController *)self->_applicationController allApplications];
  v5 = [allApplications countByEnumeratingWithState:&v9 objects:v14 count:16];
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
          objc_enumerationMutation(allApplications);
        }

        [(SBApplicationAutoLaunchService *)self _autoLaunchIfNecessary:*(*(&v9 + 1) + 8 * v8++) forReason:1];
      }

      while (v6 != v8);
      v6 = [allApplications countByEnumeratingWithState:&v9 objects:v14 count:16];
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
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self];
  }
}

- (void)_noteTerminationAssertionRemovedForApplication:(id)application
{
  v10 = *MEMORY[0x277D85DE8];
  applicationCopy = application;
  BSDispatchQueueAssertMain();
  info = [applicationCopy info];
  if ([info supportsLegacyVOIPBackgroundMode])
  {
    wantsAutoLaunchForVOIP = [applicationCopy wantsAutoLaunchForVOIP];

    if (wantsAutoLaunchForVOIP)
    {
      v7 = SBLogAutoLaunching();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = 138543362;
        v9 = applicationCopy;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "AutoLaunch for termination assertion removed on application: %{public}@", &v8, 0xCu);
      }

      [(SBApplicationAutoLaunchService *)self _autoLaunchIfNecessary:applicationCopy forReason:2];
    }
  }

  else
  {
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBApplicationAutoLaunchService *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBApplicationAutoLaunchService *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBApplicationAutoLaunchService *)self succinctDescriptionBuilder];
  [succinctDescriptionBuilder appendArraySection:self->_queuedApplicationsThrottledForRelaunch withName:@"QueuedApplicationsThrottledForRelaunch" skipIfEmpty:1];
  v5 = [succinctDescriptionBuilder appendObject:self->_queuedApplicationsThrottledForRelaunchTimer withName:@"QueuedApplicationsThrottledForRelaunchTimer" skipIfNil:1];

  return succinctDescriptionBuilder;
}

- (void)_autoLaunchIfNecessary:(id)necessary forReason:(unint64_t)reason
{
  v20 = *MEMORY[0x277D85DE8];
  necessaryCopy = necessary;
  if (([(SBFMobileKeyBag *)self->_keybag hasBeenUnlockedSinceBoot]& 1) != 0)
  {
    if ([(SBApplicationAutoLaunchService *)self _shouldAutoLaunchApplication:necessaryCopy forReason:reason])
    {
      v7 = SBLogAutoLaunching();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        if (reason > 3)
        {
          v8 = 0;
        }

        else
        {
          v8 = off_2783BEDB0[reason];
        }

        *buf = 138543618;
        v17 = v8;
        v18 = 2114;
        v19 = necessaryCopy;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "AutoLaunching application for %{public}@: %{public}@", buf, 0x16u);
      }

      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __67__SBApplicationAutoLaunchService__autoLaunchIfNecessary_forReason___block_invoke;
      v14[3] = &unk_2783A92D8;
      v14[4] = self;
      v15 = necessaryCopy;
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
      v17 = necessaryCopy;
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

- (BOOL)_shouldAutoLaunchApplication:(id)application forReason:(unint64_t)reason
{
  applicationCopy = application;
  isSystemApplication = [applicationCopy isSystemApplication];
  lastExitContext = [applicationCopy lastExitContext];
  if ([lastExitContext exitReason])
  {
    underlyingContext = [lastExitContext underlyingContext];
    v9 = [underlyingContext legacyCode] == 0;
  }

  else
  {
    v9 = 0;
  }

  lastExitContext2 = [applicationCopy lastExitContext];
  terminationReason = [lastExitContext2 terminationReason];

  if (v9 || (v13 = terminationReason != 1, ([lastExitContext exitReason] & 0x20) != 0))
  {
    v13 = 0;
  }

  if ([applicationCopy isUninstalled])
  {
    goto LABEL_28;
  }

  if (isSystemApplication && ([applicationCopy bundleIdentifier], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isEqual:", @"com.apple.mobiletimer"), v14, v15))
  {
    v16 = +[SBDefaults localDefaults];
    notificationDefaults = [v16 notificationDefaults];
    legacyAlarmList = [notificationDefaults legacyAlarmList];

    if (!legacyAlarmList)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v19 = reason != 3;
    if (![applicationCopy wantsAutoLaunchForVOIP] || !v19 && !v13)
    {
      if (!v13)
      {
        goto LABEL_28;
      }

      if (![applicationCopy isConnectedToExternalAccessory])
      {
        goto LABEL_28;
      }

      info = [applicationCopy info];
      v24 = [info supportsBackgroundMode:@"external-accessory"];

      if (!v24)
      {
        goto LABEL_28;
      }
    }
  }

  failedLaunchCount = [applicationCopy failedLaunchCount];
  v21 = 5;
  if (isSystemApplication)
  {
    v21 = 10;
  }

  if (failedLaunchCount >= v21)
  {
    v25 = SBLogAutoLaunching();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [SBApplicationAutoLaunchService _shouldAutoLaunchApplication:applicationCopy forReason:v25];
    }

    goto LABEL_28;
  }

  if (([applicationCopy isAnyTerminationAssertionHeld] & 1) != 0 || -[SBRestartManager isPendingExit](self->_restartManager, "isPendingExit") || -[SBSyncController restoreState](self->_syncController, "restoreState"))
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

- (void)_scheduleAutoLaunchForApplicationExited:(id)exited withExitContext:(id)context
{
  v15 = *MEMORY[0x277D85DE8];
  exitedCopy = exited;
  contextCopy = context;
  v8 = SBLogAutoLaunching();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v13 = 138543362;
    v14 = exitedCopy;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_INFO, "Application exited and wants to be relaunched: %{public}@.", &v13, 0xCu);
  }

  if (([SBApp underMemoryPressure] & 1) != 0 || (objc_msgSend(contextCopy, "exitReason") & 0x10) != 0)
  {
    v9 = SBLogAutoLaunching();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SBApplicationAutoLaunchService _scheduleAutoLaunchForApplicationExited:exitedCopy withExitContext:v9];
    }

    queuedApplicationsThrottledForRelaunch = self->_queuedApplicationsThrottledForRelaunch;
    if (!queuedApplicationsThrottledForRelaunch)
    {
      v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v12 = self->_queuedApplicationsThrottledForRelaunch;
      self->_queuedApplicationsThrottledForRelaunch = v11;

      queuedApplicationsThrottledForRelaunch = self->_queuedApplicationsThrottledForRelaunch;
    }

    if (([(NSMutableArray *)queuedApplicationsThrottledForRelaunch containsObject:exitedCopy]& 1) == 0)
    {
      [(NSMutableArray *)self->_queuedApplicationsThrottledForRelaunch addObject:exitedCopy];
      [(SBApplicationAutoLaunchService *)self _scheduleThrottledApplicationRelaunchTimerIfNecessary];
    }
  }

  else
  {
    [(SBApplicationAutoLaunchService *)self _autoLaunchIfNecessary:exitedCopy forReason:3];
  }
}

- (void)_autoLaunchAppsIfNecessaryAfterFirstUnlock
{
  OUTLINED_FUNCTION_1_2();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
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

- (void)_recalculateVoIPBehaviorForApplication:(id)application withExitContext:(id)context
{
  applicationCopy = application;
  contextCopy = context;
  info = [applicationCopy info];
  supportsLegacyVOIPBackgroundMode = [info supportsLegacyVOIPBackgroundMode];

  if ((supportsLegacyVOIPBackgroundMode & 1) == 0)
  {
    [SBApplicationAutoLaunchService _recalculateVoIPBehaviorForApplication:withExitContext:];
  }

  terminationReason = [contextCopy terminationReason];
  exitReason = [contextCopy exitReason];
  v11 = exitReason;
  v12 = (terminationReason > 9) | (0x18Du >> terminationReason);
  if (exitReason)
  {
    underlyingContext = [contextCopy underlyingContext];
    legacyCode = [underlyingContext legacyCode];

    LOBYTE(v12) = v12 & (legacyCode != 0);
    if (!(terminationReason | v11 & 0x10))
    {
      if (!legacyCode)
      {
        v15 = 0;
        LOBYTE(v12) = 0;
        goto LABEL_9;
      }

LABEL_8:
      v15 = [applicationCopy failedAutoLaunchCountForVOIP] + 1;
LABEL_9:
      [applicationCopy setFailedAutoLaunchCountForVOIP:v15];
    }
  }

  else if (!(terminationReason | exitReason & 0x10))
  {
    goto LABEL_8;
  }

  if (!-[SBRestartManager isPendingExit](self->_restartManager, "isPendingExit") && (v12 & ([applicationCopy failedAutoLaunchCountForVOIP] < 6)) == 0)
  {
    [applicationCopy setWantsAutoLaunchForVOIP:0];
  }
}

- (void)_applicationProcessStateDidChange:(id)change
{
  changeCopy = change;
  object = [changeCopy object];
  userInfo = [changeCopy userInfo];

  v6 = [userInfo objectForKey:@"previousProcessState"];

  processState = [object processState];
  taskState = [v6 taskState];
  if (processState)
  {
    v9 = [processState taskState] != 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = object;
  if (taskState != 1 && !v9)
  {
    lastExitContext = [object lastExitContext];
    info = [object info];
    supportsLegacyVOIPBackgroundMode = [info supportsLegacyVOIPBackgroundMode];

    if (supportsLegacyVOIPBackgroundMode)
    {
      [(SBApplicationAutoLaunchService *)self _recalculateVoIPBehaviorForApplication:object withExitContext:lastExitContext];
    }

    if ([(SBApplicationAutoLaunchService *)self _shouldAutoLaunchApplication:object forReason:3])
    {
      [(SBApplicationAutoLaunchService *)self _scheduleAutoLaunchForApplicationExited:object withExitContext:lastExitContext];
    }

    v10 = object;
  }

  info2 = [v10 info];
  supportsLegacyVOIPBackgroundMode2 = [info2 supportsLegacyVOIPBackgroundMode];

  if (supportsLegacyVOIPBackgroundMode2)
  {
    taskState2 = [v6 taskState];
    taskState3 = [processState taskState];
    if (taskState2 == 3 && taskState3 == 3)
    {
      [object setFailedAutoLaunchCountForVOIP:0];
    }

    visibility = [v6 visibility];
    visibility2 = [processState visibility];
    if (visibility != 2 && visibility2 == 2)
    {
      [object setWantsAutoLaunchForVOIP:1];
    }
  }
}

- (void)_noteKeybagDidUnlock
{
  [(SBApplicationAutoLaunchService *)self _autoLaunchAppsIfNecessaryAfterFirstUnlock];
  keybag = self->_keybag;

  [(SBFMobileKeyBag *)keybag removeObserver:self];
}

- (void)keybagDidUnlockForTheFirstTime:(id)time
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__SBApplicationAutoLaunchService_keybagDidUnlockForTheFirstTime___block_invoke;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_installedApplicationsDidChange:(id)change
{
  v22 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  BSDispatchQueueAssertMain();
  userInfo = [changeCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"SBInstalledApplicationsAddedBundleIDs"];

  userInfo2 = [changeCopy userInfo];
  v8 = [userInfo2 objectForKeyedSubscript:@"SBInstalledApplicationsReplacedBundleIDs"];

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

- (void)_memoryPressureWarn:(id)warn
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

- (void)_memoryPressureRelieved:(id)relieved
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