@interface SBTodayWidgetXCodeDebuggingUtility
- (SBTodayWidgetXCodeDebuggingUtility)init;
- (void)_reallyLaunchTodayViewFromCurrentContextWithCompletion:(id)a3;
- (void)launchTodayViewFromCurrentContextWithCompletion:(id)a3;
@end

@implementation SBTodayWidgetXCodeDebuggingUtility

- (SBTodayWidgetXCodeDebuggingUtility)init
{
  v9.receiver = self;
  v9.super_class = SBTodayWidgetXCodeDebuggingUtility;
  v2 = [(SBTodayWidgetXCodeDebuggingUtility *)&v9 init];
  if (v2)
  {
    v3 = +[SBLockScreenManager sharedInstance];
    lockScreenManager = v2->_lockScreenManager;
    v2->_lockScreenManager = v3;

    v5 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
    v6 = [v5 policyAggregator];
    policyAggregator = v2->_policyAggregator;
    v2->_policyAggregator = v6;
  }

  return v2;
}

- (void)launchTodayViewFromCurrentContextWithCompletion:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [[SBDismissOverlaysAnimationController alloc] initWithTransitionContextProvider:0 options:-1];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __86__SBTodayWidgetXCodeDebuggingUtility_launchTodayViewFromCurrentContextWithCompletion___block_invoke;
  v12 = &unk_2783A9C98;
  v13 = self;
  v14 = v4;
  v6 = v4;
  [(SBDismissOverlaysAnimationController *)v5 setCompletionBlock:&v9];
  [(SBDismissOverlaysAnimationController *)v5 begin:v9];
  v7 = SBLogDashBoard();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [(SBDismissOverlaysAnimationController *)v5 debugDescription];
    *buf = 138412290;
    v16 = v8;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "dismissOverlaysAnimationController: %@", buf, 0xCu);
  }
}

uint64_t __86__SBTodayWidgetXCodeDebuggingUtility_launchTodayViewFromCurrentContextWithCompletion___block_invoke(uint64_t a1)
{
  v2 = SBLogDashBoard();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_INFO, "dismiss overlays animation controller finished.", v4, 2u);
  }

  return [*(a1 + 32) _reallyLaunchTodayViewFromCurrentContextWithCompletion:*(a1 + 40)];
}

- (void)_reallyLaunchTodayViewFromCurrentContextWithCompletion:(id)a3
{
  v32[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SBLockScreenManager *)self->_lockScreenManager isUILocked];
  policyAggregator = self->_policyAggregator;
  if (!v5)
  {
    if ([(SBMainDisplayPolicyAggregator *)policyAggregator allowsCapability:24])
    {
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __93__SBTodayWidgetXCodeDebuggingUtility__reallyLaunchTodayViewFromCurrentContextWithCompletion___block_invoke_3;
      v22[3] = &unk_2783A9C98;
      v22[4] = self;
      v23 = v4;
      SBWorkspaceForceToSpringBoard(v22);

      goto LABEL_17;
    }

    if (!v4)
    {
      goto LABEL_17;
    }

    v16 = MEMORY[0x277CCA9B8];
    v27 = *MEMORY[0x277CCA450];
    v28 = @"Today view is restricted.";
    v17 = MEMORY[0x277CBEAC0];
    v18 = &v28;
    v19 = &v27;
LABEL_14:
    v20 = [v17 dictionaryWithObjects:v18 forKeys:v19 count:1];
    v21 = [v16 errorWithDomain:@"SBTodayWidgetLaunchErrorDomain" code:1 userInfo:v20];
    (*(v4 + 2))(v4, 0, v21);

    goto LABEL_17;
  }

  if (![(SBMainDisplayPolicyAggregator *)policyAggregator allowsCapability:23])
  {
    if (!v4)
    {
      goto LABEL_17;
    }

    v16 = MEMORY[0x277CCA9B8];
    v31 = *MEMORY[0x277CCA450];
    v32[0] = @"Today view is restricted.";
    v17 = MEMORY[0x277CBEAC0];
    v18 = v32;
    v19 = &v31;
    goto LABEL_14;
  }

  v7 = [(SBLockScreenManager *)self->_lockScreenManager lockScreenEnvironment];
  v8 = [v7 rootViewController];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (v4 && (isKindOfClass & 1) == 0)
  {
    v10 = MEMORY[0x277CCA9B8];
    v29 = *MEMORY[0x277CCA450];
    v30 = @"DashBoard is required to work in the lock-screen.";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v12 = [v10 errorWithDomain:@"SBTodayWidgetLaunchErrorDomain" code:2 userInfo:v11];
    (*(v4 + 2))(v4, 0, v12);
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __93__SBTodayWidgetXCodeDebuggingUtility__reallyLaunchTodayViewFromCurrentContextWithCompletion___block_invoke;
  v24[3] = &unk_2783A98A0;
  v13 = v8;
  v25 = v13;
  v26 = v4;
  v14 = MEMORY[0x223D6F7F0](v24);
  v15 = +[SBCoverSheetPresentationManager sharedInstance];
  if ([v15 isCoverSheetHostingAnApp])
  {
    [v15 setCoverSheetPresented:1 animated:1 withCompletion:v14];
  }

  else
  {
    v14[2](v14);
  }

LABEL_17:
}

void __93__SBTodayWidgetXCodeDebuggingUtility__reallyLaunchTodayViewFromCurrentContextWithCompletion___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __93__SBTodayWidgetXCodeDebuggingUtility__reallyLaunchTodayViewFromCurrentContextWithCompletion___block_invoke_2;
  v3[3] = &unk_2783A9348;
  v1 = *(a1 + 32);
  v4 = *(a1 + 40);
  v2 = v1;
  [v2 activateTodayViewWithCompletion:v3];
}

uint64_t __93__SBTodayWidgetXCodeDebuggingUtility__reallyLaunchTodayViewFromCurrentContextWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, 0);
  }

  return result;
}

void __93__SBTodayWidgetXCodeDebuggingUtility__reallyLaunchTodayViewFromCurrentContextWithCompletion___block_invoke_3(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) coverSheetViewController];
  v3 = [v2 _sbWindowScene];
  v4 = [v3 homeScreenController];

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __93__SBTodayWidgetXCodeDebuggingUtility__reallyLaunchTodayViewFromCurrentContextWithCompletion___block_invoke_4;
  v5[3] = &unk_2783A9348;
  v6 = *(a1 + 40);
  [v4 activateTodayViewWithCompletion:v5];
}

uint64_t __93__SBTodayWidgetXCodeDebuggingUtility__reallyLaunchTodayViewFromCurrentContextWithCompletion___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, 0);
  }

  return result;
}

@end