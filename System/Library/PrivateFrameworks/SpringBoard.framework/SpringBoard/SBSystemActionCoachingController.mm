@interface SBSystemActionCoachingController
- (id)initWithHUDController:(void *)controller ringerControl:(void *)control activityManager:(void *)manager applicationController:(void *)applicationController doNotDisturbStateMonitor:(void *)monitor flashlightActivityManager:(void *)activityManager bannerManager:;
- (id)viewForSystemGestureRecognizer:(id)recognizer;
- (uint64_t)_canPresentCoachingForAction:(uint64_t)action;
- (void)_acquireBannerWindowLevelAssertion;
- (void)_backlightLevelChanged:(id)changed;
- (void)_dismissCoaching;
- (void)_gestureRecognizerFailed:(id)failed;
- (void)_invalidateBannerWindowLevelAssertion;
- (void)_startObservingSignalsToDismissIfNeeded;
- (void)_stopObservingSignalsToDismissIfNeeded;
- (void)_systemApertureLayoutChanged:(id)changed;
- (void)dealloc;
- (void)settings:(id)settings changedValueForKey:(id)key;
- (void)systemActionCoachingHUDViewController:(id)controller didBeginTransitionToState:(int64_t)state;
- (void)systemActionPreviewCoordinator:(id)coordinator didBeginPreview:(id)preview forAction:(id)action;
- (void)systemActionPreviewCoordinator:(id)coordinator didEndPreview:(id)preview forAction:(id)action withResult:(unint64_t)result;
- (void)systemActionPreviewCoordinator:(id)coordinator didInvalidateExpansionOfPreview:(id)preview forAction:(id)action withResult:(unint64_t)result;
@end

@implementation SBSystemActionCoachingController

- (id)initWithHUDController:(void *)controller ringerControl:(void *)control activityManager:(void *)manager applicationController:(void *)applicationController doNotDisturbStateMonitor:(void *)monitor flashlightActivityManager:(void *)activityManager bannerManager:
{
  v16 = a2;
  controllerCopy = controller;
  controlCopy = control;
  managerCopy = manager;
  applicationControllerCopy = applicationController;
  monitorCopy = monitor;
  activityManagerCopy = activityManager;
  if (self)
  {
    if (!v16)
    {
      [SBSystemActionCoachingController initWithHUDController:? ringerControl:? activityManager:? applicationController:? doNotDisturbStateMonitor:? flashlightActivityManager:? bannerManager:?];
    }

    if (!controllerCopy)
    {
      [SBSystemActionCoachingController initWithHUDController:? ringerControl:? activityManager:? applicationController:? doNotDisturbStateMonitor:? flashlightActivityManager:? bannerManager:?];
    }

    if (!controlCopy)
    {
      [SBSystemActionCoachingController initWithHUDController:? ringerControl:? activityManager:? applicationController:? doNotDisturbStateMonitor:? flashlightActivityManager:? bannerManager:?];
    }

    if (!managerCopy)
    {
      [SBSystemActionCoachingController initWithHUDController:? ringerControl:? activityManager:? applicationController:? doNotDisturbStateMonitor:? flashlightActivityManager:? bannerManager:?];
    }

    if (!applicationControllerCopy)
    {
      [SBSystemActionCoachingController initWithHUDController:? ringerControl:? activityManager:? applicationController:? doNotDisturbStateMonitor:? flashlightActivityManager:? bannerManager:?];
    }

    if (!monitorCopy)
    {
      [SBSystemActionCoachingController initWithHUDController:? ringerControl:? activityManager:? applicationController:? doNotDisturbStateMonitor:? flashlightActivityManager:? bannerManager:?];
    }

    if (!activityManagerCopy)
    {
      [SBSystemActionCoachingController initWithHUDController:? ringerControl:? activityManager:? applicationController:? doNotDisturbStateMonitor:? flashlightActivityManager:? bannerManager:?];
    }

    v32.receiver = self;
    v32.super_class = SBSystemActionCoachingController;
    v18 = objc_msgSendSuper2(&v32, sel_init);
    self = v18;
    if (v18)
    {
      objc_storeStrong(v18 + 2, a2);
      objc_storeStrong(self + 3, controller);
      objc_storeStrong(self + 4, control);
      objc_storeStrong(self + 5, manager);
      objc_storeStrong(self + 6, applicationController);
      objc_storeStrong(self + 7, monitor);
      objc_storeStrong(self + 8, activityManager);
      v19 = +[SBSystemActionDomain rootSettings];
      coachingSettings = [v19 coachingSettings];
      v21 = self[9];
      self[9] = coachingSettings;

      [self[9] addKeyObserver:self];
      policyClassName = [self[9] policyClassName];
      v23 = objc_alloc_init(NSClassFromString(policyClassName));
      v24 = self[10];
      self[10] = v23;

      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:self selector:sel__systemApertureLayoutChanged_ name:@"SBSystemApertureLayoutDidChangeNotification" object:0];
    }
  }

  return self;
}

- (void)dealloc
{
  [(SBSystemActionCoachingController *)self _stopObservingSignalsToDismissIfNeeded];
  [(SBSystemActionCoachingController *)self _invalidateBannerWindowLevelAssertion];
  v3.receiver = self;
  v3.super_class = SBSystemActionCoachingController;
  [(SBSystemActionCoachingController *)&v3 dealloc];
}

- (void)settings:(id)settings changedValueForKey:(id)key
{
  if (self->_settings == settings && [key isEqualToString:@"policyClassName"])
  {
    policyClassName = [(SBSystemActionCoachingSettings *)self->_settings policyClassName];
    v5 = objc_alloc_init(NSClassFromString(policyClassName));
    policy = self->_policy;
    self->_policy = v5;
  }
}

- (void)systemActionCoachingHUDViewController:(id)controller didBeginTransitionToState:(int64_t)state
{
  controllerCopy = controller;
  if ((state - 1) < 2)
  {
    v7 = controllerCopy;
    [(SBSystemActionCoachingController *)self _startObservingSignalsToDismissIfNeeded];
    [(SBSystemActionCoachingController *)self _acquireBannerWindowLevelAssertion];
  }

  else
  {
    if (state)
    {
      goto LABEL_3;
    }

    v7 = controllerCopy;
    [(SBSystemActionCoachingController *)self _stopObservingSignalsToDismissIfNeeded];
    [(SBSystemActionCoachingController *)self _invalidateBannerWindowLevelAssertion];
  }

  controllerCopy = v7;
LABEL_3:
}

- (void)systemActionPreviewCoordinator:(id)coordinator didBeginPreview:(id)preview forAction:(id)action
{
  [(SBSystemActionCoachingPolicy *)self->_policy noteDidBeginPreview:preview forAction:action];
  v7 = [(SBHUDController *)self->_HUDController knownHUDControllerForIdentifier:*MEMORY[0x277D67188]];
  hUDViewController = [v7 HUDViewController];
  if ([(SBSystemActionCoachingHUDViewController *)hUDViewController state]== 1)
  {
    [(SBSystemActionCoachingHUDViewController *)hUDViewController transitionToState:1 animated:0 completion:?];
  }
}

- (void)systemActionPreviewCoordinator:(id)coordinator didInvalidateExpansionOfPreview:(id)preview forAction:(id)action withResult:(unint64_t)result
{
  v19 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  [(SBSystemActionCoachingPolicy *)self->_policy noteDidInvalidateExpansionOfPreview:preview forAction:actionCopy withResult:result];
  if (!result)
  {
    [(SBSystemActionCoachingController *)self _dismissCoaching];
    goto LABEL_6;
  }

  v10 = *MEMORY[0x277D67188];
  v11 = [(SBHUDController *)self->_HUDController knownHUDControllerForIdentifier:*MEMORY[0x277D67188]];
  hUDViewController = [v11 HUDViewController];
  if ([(SBSystemActionCoachingPolicy *)self->_policy wantsCoachingPresentedForAction:actionCopy])
  {
    if (([(SBSystemActionCoachingController *)self _canPresentCoachingForAction:actionCopy]& 1) == 0)
    {
      v14 = SBLogSystemActionCoaching();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138543618;
        selfCopy = self;
        v17 = 2114;
        v18 = actionCopy;
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
      hUDViewController = v13;
    }

    [(SBSystemActionCoachingHUDViewController *)hUDViewController setAction:actionCopy];
    [v11 presentWithDismissalInterval:0 animated:60.0];
    goto LABEL_4;
  }

  if ([(SBSystemActionCoachingHUDViewController *)hUDViewController state]== 2)
  {
LABEL_4:
    [(SBSystemActionCoachingHUDViewController *)hUDViewController transitionToState:1 animated:0 completion:?];
  }

LABEL_5:

LABEL_6:
}

- (void)systemActionPreviewCoordinator:(id)coordinator didEndPreview:(id)preview forAction:(id)action withResult:(unint64_t)result
{
  policy = self->_policy;
  actionCopy = action;
  [(SBSystemActionCoachingPolicy *)policy noteDidEndPreview:preview forAction:actionCopy];
  LODWORD(preview) = [(SBSystemActionCoachingPolicy *)self->_policy wantsCoachingDismissedForAction:actionCopy];

  if (preview)
  {

    [(SBSystemActionCoachingController *)self _dismissCoaching];
  }
}

- (id)viewForSystemGestureRecognizer:(id)recognizer
{
  if (self->_dismissGestureRecognizer == recognizer)
  {
    v4 = [(SBHUDController *)self->_HUDController knownHUDControllerForIdentifier:*MEMORY[0x277D67188]];
    hUDViewController = [v4 HUDViewController];
    view = [hUDViewController view];
  }

  else
  {
    view = 0;
  }

  return view;
}

- (void)_gestureRecognizerFailed:(id)failed
{
  if (self->_dismissGestureRecognizer == failed)
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

- (void)_backlightLevelChanged:(id)changed
{
  userInfo = [changed userInfo];
  v4 = [userInfo objectForKey:*MEMORY[0x277D67A10]];
  integerValue = [v4 integerValue];

  v6 = [userInfo objectForKey:*MEMORY[0x277D67A30]];
  [v6 floatValue];
  v8 = v7;

  v9 = [userInfo objectForKey:*MEMORY[0x277D67A28]];
  [v9 floatValue];
  v11 = v10;

  if (integerValue == 3 && v11 > v8)
  {
    [(SBSystemActionCoachingController *)self _dismissCoaching];
  }
}

- (void)_systemApertureLayoutChanged:(id)changed
{
  userInfo = [changed userInfo];
  v5 = [userInfo objectForKey:@"SBSystemApertureFrames"];
  obj = [v5 copy];

  objc_storeStrong(&self->_systemApertureFrames, obj);
  v6 = [(SBHUDController *)self->_HUDController knownHUDControllerForIdentifier:*MEMORY[0x277D67188]];
  v7 = v6;
  if (v6)
  {
    hUDViewController = [v6 HUDViewController];
    [(SBSystemActionCoachingHUDViewController *)hUDViewController setSystemApertureFrames:?];
  }
}

- (void)_stopObservingSignalsToDismissIfNeeded
{
  if (self && *(self + 96))
  {
    windowScene = [*(self + 16) windowScene];
    systemGestureManager = [windowScene systemGestureManager];
    [systemGestureManager removeGestureRecognizer:*(self + 96)];

    v4 = *(self + 96);
    *(self + 96) = 0;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self name:*MEMORY[0x277D67A20] object:0];
    [defaultCenter removeObserver:self name:*MEMORY[0x277D67AF0] object:0];
  }
}

- (void)_invalidateBannerWindowLevelAssertion
{
  if (self)
  {
    v2 = *(self + 104);
    if (v2)
    {
      [v2 invalidate];
      v3 = *(self + 104);
      *(self + 104) = 0;
    }
  }
}

- (void)_startObservingSignalsToDismissIfNeeded
{
  if (self && !*(self + 96))
  {
    v2 = objc_alloc_init(SBFailingSystemGestureRecognizer);
    [(SBFailingSystemGestureRecognizer *)v2 setDelegate:self];
    v3 = *(self + 96);
    *(self + 96) = v2;
    v4 = v2;

    windowScene = [*(self + 16) windowScene];
    systemGestureManager = [windowScene systemGestureManager];
    [systemGestureManager addGestureRecognizer:*(self + 96) withType:138];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel__backlightLevelChanged_ name:*MEMORY[0x277D67A20] object:0];
    [defaultCenter addObserver:self selector:sel__volumeButtonPressed_ name:*MEMORY[0x277D67AF0] object:0];
  }
}

- (void)_acquireBannerWindowLevelAssertion
{
  if (self && !*(self + 104))
  {
    v2 = *(self + 64);
    v3 = *MEMORY[0x277D76A38] + 1.0;
    windowScene = [*(self + 16) windowScene];
    v4 = [v2 acquireWindowLevelAssertionWithPriority:1 windowLevel:windowScene windowScene:@"Coaching HUD Presentation" reason:v3];
    v5 = *(self + 104);
    *(self + 104) = v4;
  }
}

- (void)_dismissCoaching
{
  if (self)
  {
    v1 = [*(self + 16) knownHUDControllerForIdentifier:*MEMORY[0x277D67188]];
    hUDViewController = [v1 HUDViewController];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __52__SBSystemActionCoachingController__dismissCoaching__block_invoke;
    v4[3] = &unk_2783A9398;
    v5 = v1;
    v3 = v1;
    [(SBSystemActionCoachingHUDViewController *)hUDViewController transitionToState:1 animated:v4 completion:?];
  }
}

- (uint64_t)_canPresentCoachingForAction:(uint64_t)action
{
  v3 = a2;
  if (action)
  {
    WeakRetained = objc_loadWeakRetained((action + 8));
    v5 = WeakRetained;
    if (WeakRetained)
    {
      action = [WeakRetained systemActionCoachingController:action canPresentCoachingForAction:v3];
    }

    else
    {
      action = 1;
    }
  }

  return action;
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