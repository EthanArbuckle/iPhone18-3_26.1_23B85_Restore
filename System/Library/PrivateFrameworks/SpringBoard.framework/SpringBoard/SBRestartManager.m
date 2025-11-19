@interface SBRestartManager
- (BOOL)_isPendingExitIncludingExternallyControlledReasons:(BOOL)a3;
- (BOOL)isPendingExit;
- (SBRestartManager)init;
- (SBRestartManager)initWithWorkspaceDataSource:(id)a3 initialRestartState:(id)a4;
- (SBRestartManagerDelegate)delegate;
- (SBStartupTransition)startupTransition;
- (id)_initWithWorkspaceDataSource:(id)a3 initialRestartState:(id)a4 startupController:(id)a5 systemService:(id)a6;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)___waitForeverForRunningBoardKill;
- (void)_addPendingExternallyControlledRestartReason:(id)a3;
- (void)_doRestartForTransition:(int)a3;
- (void)_exitIsImminent;
- (void)_killAllAppsForPendingExitWithReason:(int64_t)a3 description:(id)a4 expiration:(double)a5 completion:(id)a6;
- (void)_persistStartupTransitionContextFromRebootContext:(id)a3;
- (void)_persistStartupTransitionContextFromRestartRequest:(id)a3;
- (void)_persistStartupTransitionContextFromShutdownContext:(id)a3;
- (void)_playShutdownSound:(id)a3;
- (void)_postShutdownNotification;
- (void)_reallyRestartWithTransitionRequest:(id)a3;
- (void)_removePendingExternallyControlledRestartReason:(id)a3;
- (void)_restartWithTransitionRequest:(id)a3;
- (void)_shutdownSoundDidComplete:(id)a3 completion:(id)a4;
- (void)_shutdownUsingOptions:(id)a3;
- (void)initializeAndRunStartupTransition:(id)a3;
- (void)rebootForReason:(id)a3;
- (void)rebootWithContext:(id)a3;
- (void)restartWithTransitionRequest:(id)a3;
- (void)shutdownForReason:(id)a3;
- (void)shutdownWithContext:(id)a3;
@end

@implementation SBRestartManager

- (BOOL)isPendingExit
{
  BSDispatchQueueAssertMain();

  return [(SBRestartManager *)self _isPendingExitIncludingExternallyControlledReasons:1];
}

- (SBStartupTransition)startupTransition
{
  BSDispatchQueueAssertMain();
  startupController = self->_startupController;

  return [(SBStartupTransitionController *)startupController startupTransition];
}

- (SBRestartManager)init
{
  [MEMORY[0x277CBEAD8] raise:@"UnsupportedInitializerException" format:@"init is unsupported on SBRestartManager"];

  return 0;
}

- (id)_initWithWorkspaceDataSource:(id)a3 initialRestartState:(id)a4 startupController:(id)a5 systemService:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = SBRestartManager;
  v15 = [(SBRestartManager *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_workspaceDataSource, a3);
    objc_storeStrong(&v16->_initialRestartState, a4);
    objc_storeStrong(&v16->_startupController, a5);
    objc_storeStrong(&v16->_systemService, a6);
    v17 = [MEMORY[0x277CBEB58] set];
    pendingExternallyControlledRestartReasons = v16->_pendingExternallyControlledRestartReasons;
    v16->_pendingExternallyControlledRestartReasons = v17;
  }

  return v16;
}

- (SBRestartManager)initWithWorkspaceDataSource:(id)a3 initialRestartState:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[SBStartupTransitionController alloc] initWithInitialRestartState:v6];
  v9 = [MEMORY[0x277D0AB08] sharedInstance];
  v10 = [(SBRestartManager *)self _initWithWorkspaceDataSource:v7 initialRestartState:v6 startupController:v8 systemService:v9];

  return v10;
}

- (void)initializeAndRunStartupTransition:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  [(SBStartupTransitionController *)self->_startupController initializeAndRunStartupTransition:v4];

  v5 = SBLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Posting startup notification.", v7, 2u);
  }

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 postNotificationName:@"SBRestartManagerDidBeginStartupTransitionNotification" object:self];
}

- (void)shutdownForReason:(id)a3
{
  v4 = a3;
  v5 = [[SBShutdownContext alloc] initWithReason:v4];

  [(SBRestartManager *)self shutdownWithContext:v5];
}

- (void)shutdownWithContext:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  BSDispatchQueueAssertMain();
  if (![(SBRestartManager *)self isPendingExit])
  {
    v5 = SBLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v10 = v4;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Shutdown requested for with context: %{public}@", buf, 0xCu);
    }

    [(SBRestartManager *)self _persistStartupTransitionContextFromShutdownContext:v4];
    v6 = objc_alloc(MEMORY[0x277D0AE10]);
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Shutdown (%@)", v4];
    v8 = [v6 initWithReason:v7];

    [v8 setRebootType:0];
    if ([v4 fromUserPowerDown])
    {
      [v8 setSource:1];
    }

    [(SBRestartManager *)self _shutdownUsingOptions:v8];
  }
}

- (void)rebootForReason:(id)a3
{
  v4 = a3;
  v5 = [[SBRebootContext alloc] initWithReason:v4];

  [(SBRestartManager *)self rebootWithContext:v5];
}

- (void)rebootWithContext:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  BSDispatchQueueAssertMain();
  if (![(SBRestartManager *)self isPendingExit])
  {
    v5 = [v4 copy];
    v6 = SBLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v12 = v5;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Reboot requested with context: %{public}@", buf, 0xCu);
    }

    [(SBRestartManager *)self _persistStartupTransitionContextFromRebootContext:v5];
    v7 = objc_alloc(MEMORY[0x277D0AE10]);
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Reboot (%@)", v5];
    v9 = [v7 initWithReason:v8];

    if ([v5 isDark])
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    [v9 setRebootType:v10];
    [(SBRestartManager *)self _shutdownUsingOptions:v9];
  }
}

- (void)restartWithTransitionRequest:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  if (!v4)
  {
    [SBRestartManager restartWithTransitionRequest:];
  }

  if (![(SBRestartManager *)self _isPendingExitIncludingExternallyControlledReasons:0])
  {
    [(SBRestartManager *)self _restartWithTransitionRequest:v4];
  }
}

- (id)succinctDescription
{
  v2 = [(SBRestartManager *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBRestartManager *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBRestartManager *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__SBRestartManager_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783A92D8;
  v5 = v4;
  v10 = v5;
  v11 = self;
  v6 = [v5 modifyBody:v9];
  v7 = v5;

  return v5;
}

id __58__SBRestartManager_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 49) withName:@"isRestartImminent"];
  v3 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 32) withName:@"pendingRestartTransitionRequest"];
  v4 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 16) withName:@"initialResetState"];
  return [*(a1 + 32) appendObject:*(*(a1 + 40) + 24) withName:@"startupController"];
}

- (void)_addPendingExternallyControlledRestartReason:(id)a3
{
  v5 = a3;
  BSDispatchQueueAssertMain();
  v4 = v5;
  if (!v5)
  {
    [SBRestartManager _addPendingExternallyControlledRestartReason:];
    v4 = 0;
  }

  [(NSMutableSet *)self->_pendingExternallyControlledRestartReasons addObject:v4];
}

- (void)_removePendingExternallyControlledRestartReason:(id)a3
{
  v5 = a3;
  BSDispatchQueueAssertMain();
  v4 = v5;
  if (!v5)
  {
    [SBRestartManager _removePendingExternallyControlledRestartReason:];
    v4 = 0;
  }

  [(NSMutableSet *)self->_pendingExternallyControlledRestartReasons removeObject:v4];
}

- (void)_exitIsImminent
{
  if ([(SBRestartTransitionRequest *)self->_pendingRestartTransitionRequest restartType]== 3)
  {
    [(SBRestartManager *)self _postShutdownNotification];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v4 = WeakRetained;
    WeakRetained = objc_opt_respondsToSelector();
    if (WeakRetained)
    {
      WeakRetained = [v4 restartManagerExitImminent:self];
    }
  }

  MEMORY[0x2821F9730](WeakRetained);
}

- (BOOL)_isPendingExitIncludingExternallyControlledReasons:(BOOL)a3
{
  if (self->_isShuttingDown || self->_isRestartImminent)
  {
    return 1;
  }

  pendingRestartTransitionRequest = self->_pendingRestartTransitionRequest;
  result = pendingRestartTransitionRequest != 0;
  if (pendingRestartTransitionRequest)
  {
    v8 = 1;
  }

  else
  {
    v8 = !a3;
  }

  if (!v8)
  {
    return [(NSMutableSet *)self->_pendingExternallyControlledRestartReasons count:a3]!= 0;
  }

  return result;
}

- (void)_killAllAppsForPendingExitWithReason:(int64_t)a3 description:(id)a4 expiration:(double)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = objc_opt_new();
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __91__SBRestartManager__killAllAppsForPendingExitWithReason_description_expiration_completion___block_invoke;
  v23[3] = &unk_2783A98A0;
  v13 = v12;
  v24 = v13;
  v14 = v10;
  v25 = v14;
  v15 = MEMORY[0x223D6F7F0](v23);
  workspaceDataSource = self->_workspaceDataSource;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __91__SBRestartManager__killAllAppsForPendingExitWithReason_description_expiration_completion___block_invoke_2;
  v21[3] = &unk_2783A9C70;
  v17 = v15;
  v22 = v17;
  [(SBRestartManagerWorkspaceDataSource *)workspaceDataSource terminateAllApplicationsForReason:a3 description:v11 completion:v21];

  if (a5 > 2.22044605e-16)
  {
    v18 = dispatch_time(0, (a5 * 1000000000.0));
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __91__SBRestartManager__killAllAppsForPendingExitWithReason_description_expiration_completion___block_invoke_3;
    v19[3] = &unk_2783A9348;
    v20 = v17;
    dispatch_after(v18, MEMORY[0x277D85CD0], v19);
  }
}

uint64_t __91__SBRestartManager__killAllAppsForPendingExitWithReason_description_expiration_completion___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) signal];
  if (result)
  {
    result = *(a1 + 40);
    if (result)
    {
      v3 = *(result + 16);

      return v3();
    }
  }

  return result;
}

- (void)_shutdownUsingOptions:(id)a3
{
  v4 = a3;
  if (!self->_isShuttingDown)
  {
    self->_isShuttingDown = 1;
    [(SBRestartManager *)self _postShutdownNotification];
    v5 = [v4 isReboot];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v7 = WeakRetained;
    if (v5)
    {
      if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [v7 restartManagerWillReboot:self];
      }
    }

    else if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v7 restartManagerWillShutdown:self];
    }

    v8 = [v4 reason];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __42__SBRestartManager__shutdownUsingOptions___block_invoke;
    v9[3] = &unk_2783A8BF0;
    v9[4] = self;
    v10 = v4;
    [(SBRestartManager *)self _killAllAppsForPendingExitWithReason:6 description:v8 expiration:v9 completion:4.0];
  }
}

uint64_t __42__SBRestartManager__shutdownUsingOptions___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 64) prepareForExitAndRelaunch:1];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 64);

  return [v3 shutdownUsingOptions:v2];
}

- (void)_postShutdownNotification
{
  v3 = SBLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Posting shutdown notification.", v6, 2u);
  }

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:@"SBRestartManagerWillRebootNotification" object:self];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.springboard.deviceWillShutDown", 0, 0, 1u);
}

- (void)_playShutdownSound:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CE7E20] sharedInstance];
  v6 = [v5 startupSoundEnabled];

  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CF0B78]);
    v8 = dispatch_time(0, 3000000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__SBRestartManager__playShutdownSound___block_invoke;
    block[3] = &unk_2783AA1E8;
    block[4] = self;
    v9 = v7;
    v16 = v9;
    v10 = v4;
    v17 = v10;
    dispatch_after(v8, MEMORY[0x277D85CD0], block);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __39__SBRestartManager__playShutdownSound___block_invoke_2;
    v12[3] = &unk_2783AA1E8;
    v12[4] = self;
    v13 = v9;
    v14 = v10;
    v11 = v9;
    AudioServicesPlaySystemSoundWithCompletion(0x4E5u, v12);
  }

  else
  {
    v4[2](v4);
  }
}

- (void)_shutdownSoundDidComplete:(id)a3 completion:(id)a4
{
  v5 = a4;
  if ([a3 setFlag:1])
  {
    v5[2]();
  }
}

- (void)_restartWithTransitionRequest:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  BSDispatchQueueAssertMain();
  if (!v4)
  {
    [SBRestartManager _restartWithTransitionRequest:];
  }

  v5 = SBLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v14 = v4;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Restart with transition request: %{public}@", buf, 0xCu);
  }

  v6 = [v4 copy];
  pendingRestartTransitionRequest = self->_pendingRestartTransitionRequest;
  self->_pendingRestartTransitionRequest = v6;

  [v4 delay];
  v9 = v8;
  if (BSFloatGreaterThanFloat())
  {
    v10 = dispatch_time(0, (v9 * 1000000000.0));
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __50__SBRestartManager__restartWithTransitionRequest___block_invoke;
    v11[3] = &unk_2783A92D8;
    v11[4] = self;
    v12 = v4;
    dispatch_after(v10, MEMORY[0x277D85CD0], v11);
  }

  else
  {
    [(SBRestartManager *)self _reallyRestartWithTransitionRequest:v4];
  }
}

- (void)_reallyRestartWithTransitionRequest:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  BSDispatchQueueAssertMain();
  if (!v4)
  {
    [SBRestartManager _reallyRestartWithTransitionRequest:];
  }

  v5 = SBLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 reason];
    v7 = [v4 requester];
    *buf = 138543618;
    v20 = v6;
    v21 = 2114;
    v22 = v7;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Really restarting for reason %{public}@ on behalf of %{public}@", buf, 0x16u);
  }

  self->_isRestartImminent = 1;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained restartManager:self willRestartWithTransitionRequest:v4];
  }

  v9 = [v4 restartType];
  v10 = [v4 customOverlayDescriptor];
  if ([v4 wantsPersistentSnapshot])
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = [v4 reason];
    v13 = [v4 requester];
    v14 = [v11 stringWithFormat:@"RelaunchingSpringBoard-reason:%@-requester:%@", v12, v13];

    v15 = MEMORY[0x277CF05F0];
    v16 = [MEMORY[0x277CD9E40] mainDisplay];
    v17 = [v15 descriptorWithName:v14 display:v16];

    [v17 setInterfaceOrientation:{objc_msgSend(*MEMORY[0x277D76620], "activeInterfaceOrientation")}];
    [v17 setLockBacklight:1];

    v10 = v17;
  }

  if (v10)
  {
    v18 = [objc_alloc(MEMORY[0x277CF05E8]) initWithDescriptor:v10];
    [v18 present];
    if (v9 == 2)
    {
      [v18 freeze];
    }
  }

  [(SBRestartManager *)self _persistStartupTransitionContextFromRestartRequest:v4];
  [(SBRestartManager *)self _doRestartForTransition:v9];
}

- (void)_persistStartupTransitionContextFromRestartRequest:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  if (!v4)
  {
    [SBRestartManager _persistStartupTransitionContextFromRestartRequest:];
  }

  v6 = [(SBRestartManagerWorkspaceDataSource *)self->_workspaceDataSource activePrimaryApplicationBundleID];
  v5 = [[SBStartupTransitionContext alloc] _initWithRestartRequest:v4 fromLocked:[(SBRestartManagerWorkspaceDataSource *)self->_workspaceDataSource isUILocked] fromApplication:v6];

  [(SBStartupTransitionController *)self->_startupController _saveContextFromTransitionContext:v5];
}

- (void)_persistStartupTransitionContextFromRebootContext:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  if (!v4)
  {
    [SBRestartManager _persistStartupTransitionContextFromRebootContext:];
  }

  v5 = [[SBStartupTransitionContext alloc] _initWithRebootContext:v4];

  [(SBStartupTransitionController *)self->_startupController _saveContextFromTransitionContext:v5];
}

- (void)_persistStartupTransitionContextFromShutdownContext:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  if (!v4)
  {
    [SBRestartManager _persistStartupTransitionContextFromShutdownContext:];
  }

  v5 = [[SBStartupTransitionContext alloc] _initWithShutdownContext:v4];

  [(SBStartupTransitionController *)self->_startupController _saveContextFromTransitionContext:v5];
}

- (void)_doRestartForTransition:(int)a3
{
  v27[2] = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertMain();
  if (a3 > 1)
  {
    if (a3 != 2)
    {
      if (a3 == 3)
      {
        systemService = self->_systemService;

        [(FBSystemService *)systemService prepareForExitAndRelaunch:1];
      }

      else if (a3 == 4)
      {
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __44__SBRestartManager__doRestartForTransition___block_invoke_3;
        v21[3] = &unk_2783A9398;
        v21[4] = self;
        [(SBRestartManager *)self _killAllAppsForPendingExitWithReason:5 description:@"Obliteration" expiration:v21 completion:4.0];
      }

      return;
    }

    [(FBSystemService *)self->_systemService prepareForExitAndRelaunch:1];
    v5 = [MEMORY[0x277CF0768] actionWithOptions:1];
    v17 = [MEMORY[0x277D0AB10] sharedInstance];
    v18 = [MEMORY[0x277CBEB98] setWithObject:v5];
    [v17 sendActionsToBackBoard:v18];

    v6 = dispatch_get_global_queue(33, 0);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __44__SBRestartManager__doRestartForTransition___block_invoke_2;
    v22[3] = &unk_2783A8C18;
    v22[4] = self;
    dispatch_async(v6, v22);
LABEL_14:

    return;
  }

  if (a3)
  {
    if (a3 != 1)
    {
      return;
    }

    [(FBSystemService *)self->_systemService prepareForExitAndRelaunch:1];
    v5 = [MEMORY[0x277D46F50] identifierForCurrentProcess];
    v6 = [MEMORY[0x277D46FA0] predicateMatchingIdentifier:v5];
    v7 = [MEMORY[0x277D46FA0] predicateForClearTheBoard];
    v8 = MEMORY[0x277D46FA0];
    v27[0] = v6;
    v27[1] = v7;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
    v10 = [v8 predicateMatchingAnyPredicate:v9];

    v11 = [objc_alloc(MEMORY[0x277D47010]) initWithExplanation:@"SBRestartManager"];
    [v11 setReportType:0];
    [v11 setExceptionDomain:10];
    [v11 setExceptionCode:1539435076];
    [v11 setMaximumTerminationResistance:40];
    v12 = [objc_alloc(MEMORY[0x277D47018]) initWithPredicate:v10 context:v11];
    v24 = 0;
    v13 = [v12 execute:&v24];
    v14 = v24;
    if ((v13 & 1) == 0)
    {
      v15 = SBLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v26 = v14;
        _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "restart manager failed to clear the board: %@", buf, 0xCu);
      }
    }

    v16 = dispatch_get_global_queue(33, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __44__SBRestartManager__doRestartForTransition___block_invoke;
    block[3] = &unk_2783A8C18;
    block[4] = self;
    dispatch_async(v16, block);

    goto LABEL_14;
  }

  v20 = self->_systemService;

  [(FBSystemService *)v20 exitAndRelaunch:1];
}

- (void)___waitForeverForRunningBoardKill
{
  v2 = dispatch_semaphore_create(0);
  dispatch_semaphore_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
}

- (SBRestartManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)restartWithTransitionRequest:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"transitionRequest" object:? file:? lineNumber:? description:?];
}

- (void)_addPendingExternallyControlledRestartReason:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"reason" object:? file:? lineNumber:? description:?];
}

- (void)_removePendingExternallyControlledRestartReason:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"reason" object:? file:? lineNumber:? description:?];
}

- (void)_restartWithTransitionRequest:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"transitionRequest" object:? file:? lineNumber:? description:?];
}

- (void)_reallyRestartWithTransitionRequest:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"transitionRequest" object:? file:? lineNumber:? description:?];
}

- (void)_persistStartupTransitionContextFromRestartRequest:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"transitionRequest" object:? file:? lineNumber:? description:?];
}

- (void)_persistStartupTransitionContextFromRebootContext:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"rebootContext" object:? file:? lineNumber:? description:?];
}

- (void)_persistStartupTransitionContextFromShutdownContext:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"shutdownContext" object:? file:? lineNumber:? description:?];
}

@end