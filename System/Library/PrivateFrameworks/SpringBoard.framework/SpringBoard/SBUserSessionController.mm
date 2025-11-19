@interface SBUserSessionController
- (BOOL)canLogout;
- (CGPoint)_portraitOrientedProgressLocationForOrientation:(int64_t)a3;
- (SBMainDisplayPolicyAggregator)policyAggregator;
- (SBUserSessionController)init;
- (UMUser)user;
- (id)_iconController;
- (id)_initWithUserManager:(id)a3;
- (id)_massageApplicationListForDisplay:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (int64_t)sessionType;
- (void)_displayProgressTransientOverlayIfNeeded;
- (void)_evaluateRunningApplications;
- (void)_noteApplicationDidExit:(id)a3;
- (void)_noteApplicationDidExitFromNotification:(id)a3;
- (void)_readyToSwitchToUser:(id)a3;
- (void)dealloc;
- (void)disableCurrentUser;
- (void)logout;
- (void)logoutProgressTransientOverlayPresentationTransitionCoordinatorDidComplete:(id)a3;
- (void)logoutProgressTransientOverlayViewControllerDidDisappear:(id)a3;
- (void)logoutWithLogoutSupport:(id)a3;
- (void)readyToSwitchToLoginSession:(id)a3;
- (void)readyToSwitchToUser:(id)a3;
- (void)setLoggingOut:(BOOL)a3;
- (void)userSwitchBlockingTasksDidUpdate:(id)a3;
- (void)willSwitchToUser:(id)a3;
@end

@implementation SBUserSessionController

- (int64_t)sessionType
{
  if (![(SBUserSessionController *)self isMultiUserSupported])
  {
    return 0;
  }

  v3 = [(SBUserSessionController *)self user];
  v4 = [v3 userType];

  if (v4)
  {
    return 2 * (v4 == 1);
  }

  else
  {
    return 1;
  }
}

- (BOOL)canLogout
{
  v3 = [(SBUserSessionController *)self policyAggregator];
  v4 = [v3 allowsCapability:16];

  if (v4 && ![(SBUserSessionController *)self isLoggingOut])
  {
    v5 = [(SBUserSessionController *)self isMultiUserSupported];
    if (v5)
    {
      LOBYTE(v5) = ![(SBUserSessionController *)self isLoginSession];
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (SBMainDisplayPolicyAggregator)policyAggregator
{
  lazy_policyAggregator = self->_lazy_policyAggregator;
  if (!lazy_policyAggregator)
  {
    v4 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
    v5 = [v4 policyAggregator];
    v6 = self->_lazy_policyAggregator;
    self->_lazy_policyAggregator = v5;

    lazy_policyAggregator = self->_lazy_policyAggregator;
  }

  return lazy_policyAggregator;
}

- (SBUserSessionController)init
{
  v3 = [MEMORY[0x277D77BF8] sharedManager];
  v4 = [(SBUserSessionController *)self _initWithUserManager:v3];

  return v4;
}

- (id)_initWithUserManager:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = SBUserSessionController;
  v6 = [(SBUserSessionController *)&v10 init];
  p_isa = &v6->super.isa;
  if (v6)
  {
    objc_storeStrong(&v6->_userManager, a3);
    [p_isa[1] registerCriticalUserSwitchStakeHolder:p_isa];
    v8 = SBLogUserSession();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [(SBUserSessionController *)p_isa + 1 _initWithUserManager:?];
    }
  }

  return p_isa;
}

- (void)dealloc
{
  [(UMUserManager *)self->_userManager unregisterStakeHolder:self status:0 reason:0];
  v3.receiver = self;
  v3.super_class = SBUserSessionController;
  [(SBUserSessionController *)&v3 dealloc];
}

- (void)setLoggingOut:(BOOL)a3
{
  if (self->_loggingOut != a3)
  {
    v4 = a3;
    self->_loggingOut = a3;
    v5 = [SBApp restartManager];
    v6 = v5;
    if (v4)
    {
      [v5 _addPendingExternallyControlledRestartReason:@"user-switch"];
    }

    else
    {
      [v5 _removePendingExternallyControlledRestartReason:@"user-switch"];
    }
  }
}

- (UMUser)user
{
  lazy_user = self->_lazy_user;
  if (!lazy_user)
  {
    v4 = [(UMUserManager *)self->_userManager currentUser];
    v5 = self->_lazy_user;
    self->_lazy_user = v4;

    lazy_user = self->_lazy_user;
  }

  return lazy_user;
}

- (void)logout
{
  logoutSupport = self->_logoutSupport;
  if (!logoutSupport)
  {
    v4 = objc_opt_new();
    v5 = self->_logoutSupport;
    self->_logoutSupport = v4;

    logoutSupport = self->_logoutSupport;
  }

  [(SBUserSessionController *)self logoutWithLogoutSupport:logoutSupport];
}

- (void)logoutWithLogoutSupport:(id)a3
{
  if ([(SBUserSessionController *)self canLogout])
  {
    v4 = +[SBLockScreenManager sharedInstance];
    v5 = [v4 isInLostMode];

    v6 = SBLogUserSession();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
    if (v5)
    {
      if (v7)
      {
        [SBUserSessionController logoutWithLogoutSupport:];
      }
    }

    else if (v7)
    {
      [SBUserSessionController logoutWithLogoutSupport:];
    }

    [(SBUserSessionController *)self _displayProgressTransientOverlayIfNeeded];
  }

  else
  {
    v8 = SBLogUserSession();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [SBUserSessionController logoutWithLogoutSupport:];
    }
  }
}

- (void)disableCurrentUser
{
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __45__SBUserSessionController_disableCurrentUser__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = SBLogUserSession();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __45__SBUserSessionController_disableCurrentUser__block_invoke_cold_1(v2, v3);
  }
}

- (id)succinctDescription
{
  v2 = [(SBUserSessionController *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBUserSessionController *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBUserSessionController *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __65__SBUserSessionController_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783A92D8;
  v5 = v4;
  v10 = v5;
  v11 = self;
  v6 = [v5 modifyBody:v9];
  v7 = v5;

  return v5;
}

id __65__SBUserSessionController_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) user];
  v4 = [v2 appendObject:v3 withName:@"userAccount"];

  v5 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isMultiUserSupported"), @"multiUserSupported"}];
  return [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"canLogout"), @"canLogout"}];
}

- (void)logoutProgressTransientOverlayViewControllerDidDisappear:(id)a3
{
  progressTransientOverlayViewController = self->_progressTransientOverlayViewController;
  self->_progressTransientOverlayViewController = 0;

  self->_loggingOut = 0;
}

- (void)logoutProgressTransientOverlayPresentationTransitionCoordinatorDidComplete:(id)a3
{
  logoutSupport = self->_logoutSupport;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __102__SBUserSessionController_logoutProgressTransientOverlayPresentationTransitionCoordinatorDidComplete___block_invoke;
  v4[3] = &unk_2783B0F28;
  v4[4] = self;
  [(LKLogoutSupport *)logoutSupport logoutToLoginWindowWithCompletionHandler:v4];
}

void __102__SBUserSessionController_logoutProgressTransientOverlayPresentationTransitionCoordinatorDidComplete___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __102__SBUserSessionController_logoutProgressTransientOverlayPresentationTransitionCoordinatorDidComplete___block_invoke_2;
  v6[3] = &unk_2783A92D8;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __102__SBUserSessionController_logoutProgressTransientOverlayPresentationTransitionCoordinatorDidComplete___block_invoke_2(uint64_t a1)
{
  v2 = SBLogUserSession();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __102__SBUserSessionController_logoutProgressTransientOverlayPresentationTransitionCoordinatorDidComplete___block_invoke_2_cold_1(a1, v2);
  }

  if (*(a1 + 32))
  {
    v3 = +[SBWorkspace mainWorkspace];
    [v3 dismissTransientOverlayViewController:*(*(a1 + 40) + 32) animated:1 completion:0];

    v4 = *(a1 + 40);
    v5 = *(v4 + 32);
    *(v4 + 32) = 0;

    [*(a1 + 40) setLoggingOut:0];
  }
}

- (void)willSwitchToUser:(id)a3
{
  v4 = a3;
  kdebug_trace();
  v5 = SBLogUserSession();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SBUserSessionController willSwitchToUser:?];
  }

  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    [SBUserSessionController willSwitchToUser:];
  }

  if ([(SBUserSessionController *)self isLoginSession])
  {
    v6 = SBLogUserSession();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[SBUserSessionController] willSwitchToUser: Exiting early for login session. User switch pending... ", buf, 2u);
    }

    dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_43_0);
  }

  else
  {
    v7 = [MEMORY[0x277D77C20] taskWithName:@"terminate running tasks" reason:@"terminate running tasks"];
    terminateApplicationsTask = self->_terminateApplicationsTask;
    self->_terminateApplicationsTask = v7;

    [(UMUserSwitchBlockingTask *)self->_terminateApplicationsTask begin];
    v9 = objc_opt_new();
    terminateApplicationsStartDate = self->_terminateApplicationsStartDate;
    self->_terminateApplicationsStartDate = v9;

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __44__SBUserSessionController_willSwitchToUser___block_invoke_2;
    block[3] = &unk_2783A8C18;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
    kdebug_trace();
  }
}

void __44__SBUserSessionController_willSwitchToUser___block_invoke()
{
  v0 = [SBApp restartManager];
  [v0 _addPendingExternallyControlledRestartReason:@"user-switch"];
}

void __44__SBUserSessionController_willSwitchToUser___block_invoke_2(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setLoggingOut:1];
  v2 = SBLogUserSession();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "LOGOUT: Terminating running applications.", buf, 2u);
  }

  kdebug_trace();
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:*(a1 + 32) selector:sel__noteApplicationDidExitFromNotification_ name:@"SBApplicationDidExitNotification" object:0];

  v4 = +[SBApplicationController sharedInstance];
  v5 = [v4 runningApplications];

  v6 = [MEMORY[0x277CBEB58] setWithArray:v5];
  v7 = *(a1 + 32);
  v8 = *(v7 + 48);
  *(v7 + 48) = v6;

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * v13);
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __44__SBUserSessionController_willSwitchToUser___block_invoke_57;
        v15[3] = &unk_2783A8BF0;
        v15[4] = *(a1 + 32);
        v15[5] = v14;
        SBWorkspaceTerminateApplication(v14, 9, 0, @"Logout", v15);
        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v11);
  }

  [*(a1 + 32) _displayProgressTransientOverlayIfNeeded];
  [*(a1 + 32) _evaluateRunningApplications];
}

- (void)readyToSwitchToUser:(id)a3
{
  v4 = a3;
  kdebug_trace();
  kdebug_trace();
  v5 = SBLogUserSession();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SBUserSessionController readyToSwitchToUser:?];
  }

  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    [SBUserSessionController readyToSwitchToUser:];
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__SBUserSessionController_readyToSwitchToUser___block_invoke;
  v7[3] = &unk_2783A92D8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(MEMORY[0x277D85CD0], v7);
}

void __47__SBUserSessionController_readyToSwitchToUser___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _readyToSwitchToUser:*(a1 + 40)];
  v1 = SBLogUserSession();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    __47__SBUserSessionController_readyToSwitchToUser___block_invoke_cold_1();
  }

  kdebug_trace();
  v2 = [[SBRestartTransitionRequest alloc] initWithRequester:@"SBUserSessionController" reason:@"switchToUser"];
  [(SBRestartTransitionRequest *)v2 setRestartType:3];
  v3 = [SBApp restartManager];
  [v3 restartWithTransitionRequest:v2];
}

- (void)readyToSwitchToLoginSession:(id)a3
{
  v4 = a3;
  v5 = SBLogUserSession();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SBUserSessionController readyToSwitchToLoginSession:?];
  }

  kdebug_trace();
  kdebug_trace();
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    [SBUserSessionController readyToSwitchToLoginSession:];
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__SBUserSessionController_readyToSwitchToLoginSession___block_invoke;
  v7[3] = &unk_2783A92D8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(MEMORY[0x277D85CD0], v7);
}

void __55__SBUserSessionController_readyToSwitchToLoginSession___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _readyToSwitchToUser:*(a1 + 40)];
  v1 = SBLogUserSession();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    __55__SBUserSessionController_readyToSwitchToLoginSession___block_invoke_cold_1();
  }

  kdebug_trace();
  v2 = [[SBRestartTransitionRequest alloc] initWithRequester:@"SBUserSessionController" reason:@"switchToLoginSession"];
  [(SBRestartTransitionRequest *)v2 setRestartType:2];
  v3 = [SBApp restartManager];
  [v3 restartWithTransitionRequest:v2];

  kdebug_trace();
}

- (void)_readyToSwitchToUser:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  debugBlockingTasks = self->_debugBlockingTasks;
  self->_debugBlockingTasks = 0;

  if ([(SBUserSessionController *)self isLoginSession])
  {
    v6 = [v4 isLoginUser] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  if ([(SBUserSessionController *)self isLoginSession])
  {
    v7 = [v4 isLoginUser];
    v8 = @"login";
    if (!v7)
    {
      v9 = 0;
      v10 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v8 = @"login";
  }

  v10 = @"logout";
  v9 = 1;
LABEL_9:
  if (!v6)
  {
    v8 = v10;
  }

  v11 = v8;
  v12 = SBLogUserSession();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v22 = [(UMUserManager *)self->_userManager currentUser];
    v23[0] = 67109890;
    v23[1] = v6;
    v24 = 1024;
    v25 = v9;
    v26 = 2112;
    v27 = v22;
    v28 = 2112;
    v29 = v4;
    _os_log_debug_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEBUG, "[SBUserSessionController] _readyToSwitchToUser: (isLogin: %d, isLogout: %d, currentUser? %@) switching to user: %@", v23, 0x22u);
  }

  if (v11)
  {
    [(SBLogoutProgressTransientOverlayViewController *)self->_progressTransientOverlayViewController prepareForRestart];
    kdebug_trace();
    v13 = [SBApp activeInterfaceOrientation];
    v14 = MEMORY[0x277CF05E0];
    [(SBUserSessionController *)self _portraitOrientedProgressLocationForOrientation:v13];
    v15 = [v14 progressIndicatorWithStyle:1 position:?];
    v16 = MEMORY[0x277CF05F0];
    v17 = [MEMORY[0x277CD9E40] mainDisplay];
    v18 = [v16 descriptorWithName:v11 display:v17];

    [v18 setProgressIndicatorProperties:v15];
    [v18 setInterfaceOrientation:v13];
    v19 = +[SBBacklightController sharedInstance];
    if ([v19 shouldTurnOnScreenForBacklightSource:21])
    {
      v20 = +[SBBacklightController sharedInstance];
      [v20 setBacklightState:1 source:21];
    }

    v21 = [objc_alloc(MEMORY[0x277CF05E8]) initWithDescriptor:v18];
    [v21 present];
    [v21 freeze];
    kdebug_trace();
    kdebug_trace();
  }
}

- (void)userSwitchBlockingTasksDidUpdate:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__SBUserSessionController_userSwitchBlockingTasksDidUpdate___block_invoke;
  v6[3] = &unk_2783A92D8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __60__SBUserSessionController_userSwitchBlockingTasksDidUpdate___block_invoke(uint64_t a1)
{
  v1 = a1 + 40;
  objc_storeStrong((*(a1 + 32) + 72), *(a1 + 40));
  [*(*(v1 - 8) + 32) refreshData];
  v2 = SBLogUserSession();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __60__SBUserSessionController_userSwitchBlockingTasksDidUpdate___block_invoke_cold_1();
  }
}

- (id)_iconController
{
  v2 = [(SBUserSessionController *)self policyAggregator];
  v3 = [v2 _windowScene];

  v4 = [v3 iconController];

  return v4;
}

- (void)_noteApplicationDidExitFromNotification:(id)a3
{
  v4 = [a3 object];
  [(SBUserSessionController *)self _noteApplicationDidExit:v4];
}

- (void)_noteApplicationDidExit:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [SBUserSessionController _noteApplicationDidExit:];
  }

  v5 = SBLogUserSession();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SBUserSessionController _noteApplicationDidExit:];
  }

  [(NSMutableSet *)self->_terminatingApplications removeObject:v4];
  [(NSMutableArray *)self->_displayApplications removeObject:v4];
  [(SBLogoutProgressTransientOverlayViewController *)self->_progressTransientOverlayViewController refreshData];
  [(SBUserSessionController *)self _evaluateRunningApplications];
}

- (void)_evaluateRunningApplications
{
  v3 = [(NSMutableSet *)self->_terminatingApplications count];
  v4 = SBLogUserSession();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [SBUserSessionController _evaluateRunningApplications];
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "LOGOUT: no more running applications pending; droping user switch assertion.", v8, 2u);
    }

    kdebug_trace();
    [(UMUserSwitchBlockingTask *)self->_terminateApplicationsTask end];
    terminateApplicationsTask = self->_terminateApplicationsTask;
    self->_terminateApplicationsTask = 0;

    terminateApplicationsStartDate = self->_terminateApplicationsStartDate;
    self->_terminateApplicationsStartDate = 0;

    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 removeObserver:self name:@"SBApplicationDidExitNotification" object:0];
  }
}

- (void)_displayProgressTransientOverlayIfNeeded
{
  v18[3] = *MEMORY[0x277D85DE8];
  if (!self->_progressTransientOverlayViewController)
  {
    v3 = SBLogUserSession();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "LOGOUT: displaying logout transient overlay.", v16, 2u);
    }

    kdebug_trace();
    v4 = +[SBApplicationController sharedInstance];
    v5 = [v4 runningApplications];
    v6 = [(SBUserSessionController *)self _massageApplicationListForDisplay:v5];
    v7 = [v6 mutableCopy];
    displayApplications = self->_displayApplications;
    self->_displayApplications = v7;

    v9 = [SBLogoutProgressTransientOverlayViewController alloc];
    v10 = [(SBUserSessionController *)self user];
    v11 = [(SBLogoutProgressTransientOverlayViewController *)v9 initWithUserAccount:v10];
    progressTransientOverlayViewController = self->_progressTransientOverlayViewController;
    self->_progressTransientOverlayViewController = v11;

    [(SBLogoutProgressTransientOverlayViewController *)self->_progressTransientOverlayViewController setDataSource:self];
    [(SBLogoutProgressTransientOverlayViewController *)self->_progressTransientOverlayViewController setDelegate:self];
    v13 = +[SBLockScreenManager sharedInstanceIfExists];
    v17[0] = @"SBUILockOptionsForceLockKey";
    v17[1] = @"SBUILockOptionsAnimateLockScreenActivationKey";
    v18[0] = MEMORY[0x277CBEC38];
    v18[1] = MEMORY[0x277CBEC28];
    v17[2] = @"SBUILockOptionsUseScreenOffModeKey";
    v18[2] = MEMORY[0x277CBEC28];
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];
    [v13 lockUIFromSource:17 withOptions:v14];

    v15 = +[SBWorkspace mainWorkspace];
    [v15 presentTransientOverlayViewController:self->_progressTransientOverlayViewController animated:1 completion:0];

    kdebug_trace();
  }
}

- (id)_massageApplicationListForDisplay:(id)a3
{
  v4 = a3;
  v5 = [v4 mutableCopy];
  v6 = [(SBUserSessionController *)self _iconController];
  v7 = [v6 visibleIconStateDisplayIdentifiers];

  v8 = MEMORY[0x277CCAC30];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __61__SBUserSessionController__massageApplicationListForDisplay___block_invoke;
  v27[3] = &unk_2783B1998;
  v9 = v7;
  v28 = v9;
  v10 = [v8 predicateWithBlock:v27];
  [v5 filterUsingPredicate:v10];

  v11 = +[SBMainSwitcherControllerCoordinator sharedInstance];
  v12 = [v11 recentAppLayouts];

  v13 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v12, "count")}];
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v26[3] = 0;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __61__SBUserSessionController__massageApplicationListForDisplay___block_invoke_2;
  v23[3] = &unk_2783B19E8;
  v14 = v13;
  v24 = v14;
  v25 = v26;
  [v12 enumerateObjectsUsingBlock:v23];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __61__SBUserSessionController__massageApplicationListForDisplay___block_invoke_4;
  v21 = &unk_2783B1A10;
  v15 = v14;
  v22 = v15;
  [v5 sortUsingComparator:&v18];
  v16 = [v5 copy];

  _Block_object_dispose(v26, 8);

  return v16;
}

uint64_t __61__SBUserSessionController__massageApplicationListForDisplay___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 bundleIdentifier];
  v4 = [v2 containsObject:v3];

  return v4;
}

void __61__SBUserSessionController__massageApplicationListForDisplay___block_invoke_2(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__SBUserSessionController__massageApplicationListForDisplay___block_invoke_3;
  v6[3] = &unk_2783B19C0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  [a2 enumerate:v6];
}

void __61__SBUserSessionController__massageApplicationListForDisplay___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  if (![v8 type])
  {
    v4 = MEMORY[0x277CCABB0];
    ++*(*(*(a1 + 40) + 8) + 24);
    v5 = [v4 numberWithInteger:?];
    v6 = *(a1 + 32);
    v7 = [v8 bundleIdentifier];
    [v6 setObject:v5 forKeyedSubscript:v7];
  }
}

uint64_t __61__SBUserSessionController__massageApplicationListForDisplay___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [v5 bundleIdentifier];
  v9 = [v7 objectForKey:v8];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = &unk_283370928;
  }

  v12 = v11;

  v13 = *(a1 + 32);
  v14 = [v6 bundleIdentifier];
  v15 = [v13 objectForKey:v14];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = &unk_283370928;
  }

  v18 = v17;

  v19 = [v12 compare:v18];
  if (!v19)
  {
    v20 = [v5 displayName];
    v21 = [v6 displayName];
    v19 = [v20 localizedCompare:v21];
  }

  return v19;
}

- (CGPoint)_portraitOrientedProgressLocationForOrientation:(int64_t)a3
{
  v3 = [MEMORY[0x277D759A0] mainScreen];
  [v3 _referenceBounds];

  _UIWindowConvertPointFromOrientationToOrientation();
  result.y = v5;
  result.x = v4;
  return result;
}

- (void)_initWithUserManager:(id *)a1 .cold.1(id *a1, void *a2)
{
  v3 = [*a1 currentUser];
  [a2 isMultiUserSupported];
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)logoutWithLogoutSupport:.cold.1()
{
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logoutWithLogoutSupport:.cold.2()
{
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logoutWithLogoutSupport:.cold.3()
{
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __45__SBUserSessionController_disableCurrentUser__block_invoke_cold_1(uint64_t a1, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"with error: %@", a1];
  }

  else
  {
    v4 = @"successfully";
  }

  *buf = 138412290;
  v6 = v4;
  _os_log_debug_impl(&dword_21ED4E000, log, OS_LOG_TYPE_DEBUG, "LOGOUT: disable current user call completed %@", buf, 0xCu);
  if (a1)
  {
  }
}

void __102__SBUserSessionController_logoutProgressTransientOverlayPresentationTransitionCoordinatorDidComplete___block_invoke_2_cold_1(uint64_t a1, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"with error: %@", v3];
  }

  else
  {
    v4 = @"successfully";
  }

  *buf = 138412290;
  v6 = v4;
  _os_log_debug_impl(&dword_21ED4E000, log, OS_LOG_TYPE_DEBUG, "LOGOUT completed: %@", buf, 0xCu);
  if (v3)
  {
  }
}

- (void)willSwitchToUser:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = [*(a1 + 8) currentUser];
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)willSwitchToUser:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)readyToSwitchToUser:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = [*(a1 + 8) currentUser];
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)readyToSwitchToUser:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __47__SBUserSessionController_readyToSwitchToUser___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)readyToSwitchToLoginSession:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v6 = [*(a1 + 8) currentUser];
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)readyToSwitchToLoginSession:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __55__SBUserSessionController_readyToSwitchToLoginSession___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_noteApplicationDidExit:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"application" object:? file:? lineNumber:? description:?];
}

@end