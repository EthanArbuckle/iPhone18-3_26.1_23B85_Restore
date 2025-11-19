@interface SBSystemActionCoachingController
- (id)initWithHUDController:(void *)a3 ringerControl:(void *)a4 activityManager:(void *)a5 applicationController:(void *)a6 doNotDisturbStateMonitor:(void *)a7 flashlightActivityManager:(void *)a8 bannerManager:;
- (id)viewForSystemGestureRecognizer:(id)a3;
- (uint64_t)_canPresentCoachingForAction:(uint64_t)a1;
- (void)_acquireBannerWindowLevelAssertion;
- (void)_backlightLevelChanged:(id)a3;
- (void)_dismissCoaching;
- (void)_gestureRecognizerFailed:(id)a3;
- (void)_invalidateBannerWindowLevelAssertion;
- (void)_startObservingSignalsToDismissIfNeeded;
- (void)_stopObservingSignalsToDismissIfNeeded;
- (void)_systemApertureLayoutChanged:(id)a3;
- (void)dealloc;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
- (void)systemActionCoachingHUDViewController:(id)a3 didBeginTransitionToState:(int64_t)a4;
- (void)systemActionPreviewCoordinator:(id)a3 didBeginPreview:(id)a4 forAction:(id)a5;
- (void)systemActionPreviewCoordinator:(id)a3 didEndPreview:(id)a4 forAction:(id)a5 withResult:(unint64_t)a6;
- (void)systemActionPreviewCoordinator:(id)a3 didInvalidateExpansionOfPreview:(id)a4 forAction:(id)a5 withResult:(unint64_t)a6;
@end

@implementation SBSystemActionCoachingController

- (id)initWithHUDController:(void *)a3 ringerControl:(void *)a4 activityManager:(void *)a5 applicationController:(void *)a6 doNotDisturbStateMonitor:(void *)a7 flashlightActivityManager:(void *)a8 bannerManager:
{
  v16 = a2;
  v31 = a3;
  v30 = a4;
  v29 = a5;
  v28 = a6;
  v27 = a7;
  v17 = a8;
  if (a1)
  {
    if (!v16)
    {
      [SBSystemActionCoachingController initWithHUDController:? ringerControl:? activityManager:? applicationController:? doNotDisturbStateMonitor:? flashlightActivityManager:? bannerManager:?];
    }

    if (!v31)
    {
      [SBSystemActionCoachingController initWithHUDController:? ringerControl:? activityManager:? applicationController:? doNotDisturbStateMonitor:? flashlightActivityManager:? bannerManager:?];
    }

    if (!v30)
    {
      [SBSystemActionCoachingController initWithHUDController:? ringerControl:? activityManager:? applicationController:? doNotDisturbStateMonitor:? flashlightActivityManager:? bannerManager:?];
    }

    if (!v29)
    {
      [SBSystemActionCoachingController initWithHUDController:? ringerControl:? activityManager:? applicationController:? doNotDisturbStateMonitor:? flashlightActivityManager:? bannerManager:?];
    }

    if (!v28)
    {
      [SBSystemActionCoachingController initWithHUDController:? ringerControl:? activityManager:? applicationController:? doNotDisturbStateMonitor:? flashlightActivityManager:? bannerManager:?];
    }

    if (!v27)
    {
      [SBSystemActionCoachingController initWithHUDController:? ringerControl:? activityManager:? applicationController:? doNotDisturbStateMonitor:? flashlightActivityManager:? bannerManager:?];
    }

    if (!v17)
    {
      [SBSystemActionCoachingController initWithHUDController:? ringerControl:? activityManager:? applicationController:? doNotDisturbStateMonitor:? flashlightActivityManager:? bannerManager:?];
    }

    v32.receiver = a1;
    v32.super_class = SBSystemActionCoachingController;
    v18 = objc_msgSendSuper2(&v32, sel_init);
    a1 = v18;
    if (v18)
    {
      objc_storeStrong(v18 + 2, a2);
      objc_storeStrong(a1 + 3, a3);
      objc_storeStrong(a1 + 4, a4);
      objc_storeStrong(a1 + 5, a5);
      objc_storeStrong(a1 + 6, a6);
      objc_storeStrong(a1 + 7, a7);
      objc_storeStrong(a1 + 8, a8);
      v19 = +[SBSystemActionDomain rootSettings];
      v20 = [v19 coachingSettings];
      v21 = a1[9];
      a1[9] = v20;

      [a1[9] addKeyObserver:a1];
      v22 = [a1[9] policyClassName];
      v23 = objc_alloc_init(NSClassFromString(v22));
      v24 = a1[10];
      a1[10] = v23;

      v25 = [MEMORY[0x277CCAB98] defaultCenter];
      [v25 addObserver:a1 selector:sel__systemApertureLayoutChanged_ name:@"SBSystemApertureLayoutDidChangeNotification" object:0];
    }
  }

  return a1;
}

- (void)dealloc
{
  [(SBSystemActionCoachingController *)self _stopObservingSignalsToDismissIfNeeded];
  [(SBSystemActionCoachingController *)self _invalidateBannerWindowLevelAssertion];
  v3.receiver = self;
  v3.super_class = SBSystemActionCoachingController;
  [(SBSystemActionCoachingController *)&v3 dealloc];
}

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  if (self->_settings == a3 && [a4 isEqualToString:@"policyClassName"])
  {
    v7 = [(SBSystemActionCoachingSettings *)self->_settings policyClassName];
    v5 = objc_alloc_init(NSClassFromString(v7));
    policy = self->_policy;
    self->_policy = v5;
  }
}

- (void)systemActionCoachingHUDViewController:(id)a3 didBeginTransitionToState:(int64_t)a4
{
  v6 = a3;
  if ((a4 - 1) < 2)
  {
    v7 = v6;
    [(SBSystemActionCoachingController *)self _startObservingSignalsToDismissIfNeeded];
    [(SBSystemActionCoachingController *)self _acquireBannerWindowLevelAssertion];
  }

  else
  {
    if (a4)
    {
      goto LABEL_3;
    }

    v7 = v6;
    [(SBSystemActionCoachingController *)self _stopObservingSignalsToDismissIfNeeded];
    [(SBSystemActionCoachingController *)self _invalidateBannerWindowLevelAssertion];
  }

  v6 = v7;
LABEL_3:
}

- (void)systemActionPreviewCoordinator:(id)a3 didBeginPreview:(id)a4 forAction:(id)a5
{
  [(SBSystemActionCoachingPolicy *)self->_policy noteDidBeginPreview:a4 forAction:a5];
  v7 = [(SBHUDController *)self->_HUDController knownHUDControllerForIdentifier:*MEMORY[0x277D67188]];
  v6 = [v7 HUDViewController];
  if ([(SBSystemActionCoachingHUDViewController *)v6 state]== 1)
  {
    [(SBSystemActionCoachingHUDViewController *)v6 transitionToState:1 animated:0 completion:?];
  }
}

- (void)systemActionPreviewCoordinator:(id)a3 didInvalidateExpansionOfPreview:(id)a4 forAction:(id)a5 withResult:(unint64_t)a6
{
  v19 = *MEMORY[0x277D85DE8];
  v9 = a5;
  [(SBSystemActionCoachingPolicy *)self->_policy noteDidInvalidateExpansionOfPreview:a4 forAction:v9 withResult:a6];
  if (!a6)
  {
    [(SBSystemActionCoachingController *)self _dismissCoaching];
    goto LABEL_6;
  }

  v10 = *MEMORY[0x277D67188];
  v11 = [(SBHUDController *)self->_HUDController knownHUDControllerForIdentifier:*MEMORY[0x277D67188]];
  v12 = [v11 HUDViewController];
  if ([(SBSystemActionCoachingPolicy *)self->_policy wantsCoachingPresentedForAction:v9])
  {
    if (([(SBSystemActionCoachingController *)self _canPresentCoachingForAction:v9]& 1) == 0)
    {
      v14 = SBLogSystemActionCoaching();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138543618;
        v16 = self;
        v17 = 2114;
        v18 = v9;
        _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "(%{public}@) Delegate denied presentation of coaching for action %{public}@", &v15, 0x16u);
      }

      goto LABEL_5;
    }

    if (!v11)
    {
      v13 = [[SBSystemActionCoachingHUDViewController alloc] initWithRingerControl:self->_activityManager activityManager:self->_applicationController applicationController:self->_doNotDisturbStateMonitor doNotDisturbStateMonitor:self->_flashlightActivityManager flashlightActivityManager:?];

      [(SBSystemActionCoachingHUDViewController *)v13 setDelegate:?];
      [(SBSystemActionCoachingHUDViewController *)v13 setSystemApertureFrames:?];
      v11 = [(SBHUDController *)self->_HUDController HUDSessionForViewController:v13 identifier:v10];
      v12 = v13;
    }

    [(SBSystemActionCoachingHUDViewController *)v12 setAction:v9];
    [v11 presentWithDismissalInterval:0 animated:60.0];
    goto LABEL_4;
  }

  if ([(SBSystemActionCoachingHUDViewController *)v12 state]== 2)
  {
LABEL_4:
    [(SBSystemActionCoachingHUDViewController *)v12 transitionToState:1 animated:0 completion:?];
  }

LABEL_5:

LABEL_6:
}

- (void)systemActionPreviewCoordinator:(id)a3 didEndPreview:(id)a4 forAction:(id)a5 withResult:(unint64_t)a6
{
  policy = self->_policy;
  v9 = a5;
  [(SBSystemActionCoachingPolicy *)policy noteDidEndPreview:a4 forAction:v9];
  LODWORD(a4) = [(SBSystemActionCoachingPolicy *)self->_policy wantsCoachingDismissedForAction:v9];

  if (a4)
  {

    [(SBSystemActionCoachingController *)self _dismissCoaching];
  }
}

- (id)viewForSystemGestureRecognizer:(id)a3
{
  if (self->_dismissGestureRecognizer == a3)
  {
    v4 = [(SBHUDController *)self->_HUDController knownHUDControllerForIdentifier:*MEMORY[0x277D67188]];
    v5 = [v4 HUDViewController];
    v3 = [v5 view];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_gestureRecognizerFailed:(id)a3
{
  if (self->_dismissGestureRecognizer == a3)
  {
    [(SBSystemActionCoachingController *)self _dismissCoaching];
  }
}

uint64_t __52__SBSystemActionCoachingController__dismissCoaching__block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) dismiss];
  }

  return result;
}

- (void)_backlightLevelChanged:(id)a3
{
  v13 = [a3 userInfo];
  v4 = [v13 objectForKey:*MEMORY[0x277D67A10]];
  v5 = [v4 integerValue];

  v6 = [v13 objectForKey:*MEMORY[0x277D67A30]];
  [v6 floatValue];
  v8 = v7;

  v9 = [v13 objectForKey:*MEMORY[0x277D67A28]];
  [v9 floatValue];
  v11 = v10;

  if (v5 == 3 && v11 > v8)
  {
    [(SBSystemActionCoachingController *)self _dismissCoaching];
  }
}

- (void)_systemApertureLayoutChanged:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:@"SBSystemApertureFrames"];
  obj = [v5 copy];

  objc_storeStrong(&self->_systemApertureFrames, obj);
  v6 = [(SBHUDController *)self->_HUDController knownHUDControllerForIdentifier:*MEMORY[0x277D67188]];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 HUDViewController];
    [(SBSystemActionCoachingHUDViewController *)v8 setSystemApertureFrames:?];
  }
}

- (void)_stopObservingSignalsToDismissIfNeeded
{
  if (a1 && *(a1 + 96))
  {
    v2 = [*(a1 + 16) windowScene];
    v3 = [v2 systemGestureManager];
    [v3 removeGestureRecognizer:*(a1 + 96)];

    v4 = *(a1 + 96);
    *(a1 + 96) = 0;

    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 removeObserver:a1 name:*MEMORY[0x277D67A20] object:0];
    [v5 removeObserver:a1 name:*MEMORY[0x277D67AF0] object:0];
  }
}

- (void)_invalidateBannerWindowLevelAssertion
{
  if (a1)
  {
    v2 = *(a1 + 104);
    if (v2)
    {
      [v2 invalidate];
      v3 = *(a1 + 104);
      *(a1 + 104) = 0;
    }
  }
}

- (void)_startObservingSignalsToDismissIfNeeded
{
  if (a1 && !*(a1 + 96))
  {
    v2 = objc_alloc_init(SBFailingSystemGestureRecognizer);
    [(SBFailingSystemGestureRecognizer *)v2 setDelegate:a1];
    v3 = *(a1 + 96);
    *(a1 + 96) = v2;
    v4 = v2;

    v5 = [*(a1 + 16) windowScene];
    v6 = [v5 systemGestureManager];
    [v6 addGestureRecognizer:*(a1 + 96) withType:138];

    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 addObserver:a1 selector:sel__backlightLevelChanged_ name:*MEMORY[0x277D67A20] object:0];
    [v7 addObserver:a1 selector:sel__volumeButtonPressed_ name:*MEMORY[0x277D67AF0] object:0];
  }
}

- (void)_acquireBannerWindowLevelAssertion
{
  if (a1 && !*(a1 + 104))
  {
    v2 = *(a1 + 64);
    v3 = *MEMORY[0x277D76A38] + 1.0;
    v6 = [*(a1 + 16) windowScene];
    v4 = [v2 acquireWindowLevelAssertionWithPriority:1 windowLevel:v6 windowScene:@"Coaching HUD Presentation" reason:v3];
    v5 = *(a1 + 104);
    *(a1 + 104) = v4;
  }
}

- (void)_dismissCoaching
{
  if (a1)
  {
    v1 = [*(a1 + 16) knownHUDControllerForIdentifier:*MEMORY[0x277D67188]];
    v2 = [v1 HUDViewController];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __52__SBSystemActionCoachingController__dismissCoaching__block_invoke;
    v4[3] = &unk_2783A9398;
    v5 = v1;
    v3 = v1;
    [(SBSystemActionCoachingHUDViewController *)v2 transitionToState:1 animated:v4 completion:?];
  }
}

- (uint64_t)_canPresentCoachingForAction:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    v5 = WeakRetained;
    if (WeakRetained)
    {
      a1 = [WeakRetained systemActionCoachingController:a1 canPresentCoachingForAction:v3];
    }

    else
    {
      a1 = 1;
    }
  }

  return a1;
}

- (void)initWithHUDController:(char *)a1 ringerControl:activityManager:applicationController:doNotDisturbStateMonitor:flashlightActivityManager:bannerManager:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"bannerManager != ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithHUDController:(char *)a1 ringerControl:activityManager:applicationController:doNotDisturbStateMonitor:flashlightActivityManager:bannerManager:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"flashlightActivityManager != ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithHUDController:(char *)a1 ringerControl:activityManager:applicationController:doNotDisturbStateMonitor:flashlightActivityManager:bannerManager:.cold.3(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"doNotDisturbStateMonitor != ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithHUDController:(char *)a1 ringerControl:activityManager:applicationController:doNotDisturbStateMonitor:flashlightActivityManager:bannerManager:.cold.4(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"applicationController != ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithHUDController:(char *)a1 ringerControl:activityManager:applicationController:doNotDisturbStateMonitor:flashlightActivityManager:bannerManager:.cold.5(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"activityManager != ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithHUDController:(char *)a1 ringerControl:activityManager:applicationController:doNotDisturbStateMonitor:flashlightActivityManager:bannerManager:.cold.6(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"ringerControl != ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithHUDController:(char *)a1 ringerControl:activityManager:applicationController:doNotDisturbStateMonitor:flashlightActivityManager:bannerManager:.cold.7(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"HUDController != ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end