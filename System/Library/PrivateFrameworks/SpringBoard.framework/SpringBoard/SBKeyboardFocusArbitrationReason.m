@interface SBKeyboardFocusArbitrationReason
+ (id)accessibility:(id)a3;
+ (id)appFocusRedirections;
+ (id)assistantControllerVisibility;
+ (id)backlightControllerDidAnimate;
+ (id)controlCenterDidAppear;
+ (id)deferAdditionalEnvironments;
+ (id)didChangeShowingSystemModalAlert;
+ (id)didDismissTransientOverlayScene;
+ (id)didRemoveKeyboardFocusFromScene;
+ (id)didResetCoalition;
+ (id)displayDidBecomeActive;
+ (id)dsahBoardAppViewControllerDidAppear;
+ (id)dsahBoardAppViewControllerDidDisappear;
+ (id)focusLockAssertionsDidChange;
+ (id)focusRedirectAssertionsDidChange;
+ (id)keyWindowNotification;
+ (id)keyboardArbiterSuggestion;
+ (id)keyboardFocusEvaluationSuppression;
+ (id)longLookDidDismissForNotificationViewController;
+ (id)longLookDidPresentForNotificationViewController;
+ (id)modalUIFluidDismissGestureDidFinish;
+ (id)preventFocusForPID;
+ (id)quickCameraDidAppear;
+ (id)removedCoalitionMember;
+ (id)removedKeyboardArbiterSceneDidRemove;
+ (id)removedKeyboardArbiterSceneWillRemove;
+ (id)showWindowedAccessoryWindow;
+ (id)spotlightMultiplexingDidBecomeActiveDelegate;
+ (id)spotlightMultiplexingDidCreateScene;
+ (id)spotlightMultiplexingDidDestroyScene;
+ (id)spotlightMultiplexingViewDidDisappear;
+ (id)transientOverlayDismissAllToAppsWorkspaceTransactionDidComplete;
+ (id)transientOverlayDismissWorkspaceTransactionDidBegin;
+ (id)willPresentTransientOverlayScene;
+ (id)workspaceDidFinishInitialization;
- (BOOL)isEqual:(id)a3;
- (id)_initForKeyboardArbiterWithLabel:(id)a3;
- (id)_initWithLabel:(id)a3;
- (id)_initWithName:(id)a3 source:(id)a4;
- (id)annotatedWithSourceName:(id)a3;
- (void)appendDescriptionToStream:(id)a3;
@end

@implementation SBKeyboardFocusArbitrationReason

+ (id)keyWindowNotification
{
  v2 = [[SBKeyboardFocusArbitrationReason alloc] _initWithLabel:@"keyWindowNotification"];

  return v2;
}

+ (id)keyboardArbiterSuggestion
{
  v2 = [[SBKeyboardFocusArbitrationReason alloc] _initForKeyboardArbiterWithLabel:@"keyboardArbiterSuggestion"];

  return v2;
}

+ (id)spotlightMultiplexingDidBecomeActiveDelegate
{
  v2 = [[SBKeyboardFocusArbitrationReason alloc] _initWithLabel:@"spotlightMultiplexingDidBecomeActiveDelegate"];

  return v2;
}

+ (id)displayDidBecomeActive
{
  v2 = [[SBKeyboardFocusArbitrationReason alloc] _initWithLabel:@"displayDidBecomeActive"];

  return v2;
}

+ (id)spotlightMultiplexingDidCreateScene
{
  v2 = [[SBKeyboardFocusArbitrationReason alloc] _initWithLabel:@"spotlightMultiplexingDidCreateScene"];

  return v2;
}

+ (id)focusLockAssertionsDidChange
{
  v2 = [[SBKeyboardFocusArbitrationReason alloc] _initWithLabel:@"focusLockAssertionsDidChange"];

  return v2;
}

- (id)_initWithLabel:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBKeyboardFocusArbitrationReason;
  v5 = [(SBKeyboardFocusArbitrationReason *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    label = v5->_label;
    v5->_label = v6;
  }

  return v5;
}

- (id)_initWithName:(id)a3 source:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = SBKeyboardFocusArbitrationReason;
  v8 = [(SBKeyboardFocusArbitrationReason *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    label = v8->_label;
    v8->_label = v9;

    v11 = [v7 copy];
    sourceName = v8->_sourceName;
    v8->_sourceName = v11;
  }

  return v8;
}

- (id)_initForKeyboardArbiterWithLabel:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBKeyboardFocusArbitrationReason;
  v5 = [(SBKeyboardFocusArbitrationReason *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    label = v5->_label;
    v5->_label = v6;

    v5->_fromKeyboardArbiter = 1;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(NSString *)self->_label isEqual:v4[3]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)didChangeShowingSystemModalAlert
{
  v2 = [[SBKeyboardFocusArbitrationReason alloc] _initWithLabel:@"didChangeShowingSystemModalAlert"];

  return v2;
}

+ (id)dsahBoardAppViewControllerDidAppear
{
  v2 = [[SBKeyboardFocusArbitrationReason alloc] _initWithLabel:@"dsahBoardAppViewControllerDidAppear"];

  return v2;
}

+ (id)dsahBoardAppViewControllerDidDisappear
{
  v2 = [[SBKeyboardFocusArbitrationReason alloc] _initWithLabel:@"dsahBoardAppViewControllerDidDisappear"];

  return v2;
}

+ (id)quickCameraDidAppear
{
  v2 = [[SBKeyboardFocusArbitrationReason alloc] _initWithLabel:@"quickCameraDidAppear"];

  return v2;
}

+ (id)controlCenterDidAppear
{
  v2 = [[SBKeyboardFocusArbitrationReason alloc] _initWithLabel:@"controlCenterDidAppear"];

  return v2;
}

+ (id)longLookDidDismissForNotificationViewController
{
  v2 = [[SBKeyboardFocusArbitrationReason alloc] _initWithLabel:@"longLookDidDismissForNotificationViewController"];

  return v2;
}

+ (id)longLookDidPresentForNotificationViewController
{
  v2 = [[SBKeyboardFocusArbitrationReason alloc] _initWithLabel:@"longLookDidPresentForNotificationViewController"];

  return v2;
}

+ (id)modalUIFluidDismissGestureDidFinish
{
  v2 = [[SBKeyboardFocusArbitrationReason alloc] _initWithLabel:@"modalUIFluidDismissGestureDidFinish"];

  return v2;
}

+ (id)showWindowedAccessoryWindow
{
  v2 = [[SBKeyboardFocusArbitrationReason alloc] _initWithLabel:@"showWindowedAccessoryWindow"];

  return v2;
}

+ (id)spotlightMultiplexingDidDestroyScene
{
  v2 = [[SBKeyboardFocusArbitrationReason alloc] _initWithLabel:@"spotlightMultiplexingDidDestroyScene"];

  return v2;
}

+ (id)spotlightMultiplexingViewDidDisappear
{
  v2 = [[SBKeyboardFocusArbitrationReason alloc] _initWithLabel:@"spotlightMultiplexingViewDidDisappear"];

  return v2;
}

+ (id)transientOverlayDismissAllToAppsWorkspaceTransactionDidComplete
{
  v2 = [[SBKeyboardFocusArbitrationReason alloc] _initWithLabel:@"transientOverlayDismissAllToAppsWorkspaceTransactionDidComplete"];

  return v2;
}

+ (id)transientOverlayDismissWorkspaceTransactionDidBegin
{
  v2 = [[SBKeyboardFocusArbitrationReason alloc] _initWithLabel:@"transientOverlayDismissWorkspaceTransactionDidBegin"];

  return v2;
}

+ (id)willPresentTransientOverlayScene
{
  v2 = [[SBKeyboardFocusArbitrationReason alloc] _initWithLabel:@"willPresentTransientOverlayScene"];

  return v2;
}

+ (id)didDismissTransientOverlayScene
{
  v2 = [[SBKeyboardFocusArbitrationReason alloc] _initWithLabel:@"didDismissTransientOverlayScene"];

  return v2;
}

+ (id)workspaceDidFinishInitialization
{
  v2 = [[SBKeyboardFocusArbitrationReason alloc] _initWithLabel:@"workspaceDidFinishInitialization"];

  return v2;
}

+ (id)assistantControllerVisibility
{
  v2 = [[SBKeyboardFocusArbitrationReason alloc] _initWithLabel:@"assistantControllerVisibility"];

  return v2;
}

+ (id)backlightControllerDidAnimate
{
  v2 = [[SBKeyboardFocusArbitrationReason alloc] _initWithLabel:@"backlightControllerDidAnimate"];

  return v2;
}

+ (id)didResetCoalition
{
  v2 = [[SBKeyboardFocusArbitrationReason alloc] _initForKeyboardArbiterWithLabel:@"didResetCoalition"];

  return v2;
}

+ (id)didRemoveKeyboardFocusFromScene
{
  v2 = [[SBKeyboardFocusArbitrationReason alloc] _initForKeyboardArbiterWithLabel:@"didRemoveKeyboardFocusFromScene"];

  return v2;
}

+ (id)deferAdditionalEnvironments
{
  v2 = [[SBKeyboardFocusArbitrationReason alloc] _initWithLabel:@"deferAdditionalEnvironments"];

  return v2;
}

+ (id)preventFocusForPID
{
  v2 = [[SBKeyboardFocusArbitrationReason alloc] _initWithLabel:@"preventFocusForPID"];

  return v2;
}

+ (id)appFocusRedirections
{
  v2 = [[SBKeyboardFocusArbitrationReason alloc] _initWithLabel:@"appFocusRedirections"];

  return v2;
}

+ (id)accessibility:(id)a3
{
  v5 = a3;
  v6 = MEMORY[0x277CCACA8];
  objc_opt_class();
  v7 = objc_opt_class();
  if (!v5)
  {
    v12 = NSStringFromClass(v7);
    v13 = [v6 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"subreason", v12];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [(SBKeyboardFocusArbitrationReason *)a2 accessibility:a1, v13];
    }

    [v13 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x21EF3E5E4);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(SBKeyboardFocusArbitrationReason *)v5 accessibility:a2, a1];
  }

  v8 = [SBKeyboardFocusArbitrationReason alloc];
  v9 = [@"accessibility-" stringByAppendingString:v5];
  v10 = [(SBKeyboardFocusArbitrationReason *)v8 _initWithLabel:v9];

  return v10;
}

+ (id)keyboardFocusEvaluationSuppression
{
  v2 = [[SBKeyboardFocusArbitrationReason alloc] _initWithLabel:@"keyboardFocusEvaluationSuppression"];

  return v2;
}

+ (id)removedCoalitionMember
{
  v2 = [[SBKeyboardFocusArbitrationReason alloc] _initWithLabel:@"removedCoalitionMember"];

  return v2;
}

+ (id)focusRedirectAssertionsDidChange
{
  v2 = [[SBKeyboardFocusArbitrationReason alloc] _initWithLabel:@"focusRedirectAssertionsDidChange"];

  return v2;
}

+ (id)removedKeyboardArbiterSceneDidRemove
{
  v2 = [[SBKeyboardFocusArbitrationReason alloc] _initWithLabel:@"removedKeyboardArbiterSceneDidRemove"];

  return v2;
}

+ (id)removedKeyboardArbiterSceneWillRemove
{
  v2 = [[SBKeyboardFocusArbitrationReason alloc] _initWithLabel:@"removedKeyboardArbiterSceneWillRemove"];

  return v2;
}

- (id)annotatedWithSourceName:(id)a3
{
  v4 = a3;
  v5 = [[SBKeyboardFocusArbitrationReason alloc] _initWithName:self->_label source:v4];

  return v5;
}

- (void)appendDescriptionToStream:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__SBKeyboardFocusArbitrationReason_appendDescriptionToStream___block_invoke;
  v6[3] = &unk_2783A92D8;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [v5 appendProem:0 block:v6];
}

uint64_t __62__SBKeyboardFocusArbitrationReason_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) appendString:*(*(a1 + 40) + 24) withName:0];
  if (*(*(a1 + 40) + 8))
  {
    v3 = *(a1 + 32);

    return [v3 appendString:? withName:?];
  }

  return result;
}

+ (void)accessibility:(uint64_t)a3 .cold.1(void *a1, const char *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCACA8];
  v6 = [a1 classForCoder];
  if (!v6)
  {
    v6 = objc_opt_class();
  }

  v7 = NSStringFromClass(v6);
  objc_opt_class();
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v5 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"subreason", v7, v9];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v11 = NSStringFromSelector(a2);
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    *buf = 138544642;
    v15 = v11;
    v16 = 2114;
    v17 = v13;
    v18 = 2048;
    v19 = a3;
    v20 = 2114;
    v21 = @"SBKeyboardFocusArbitrationReason.m";
    v22 = 1024;
    v23 = 185;
    v24 = 2114;
    v25 = v10;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v10 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)accessibility:(uint64_t)a3 .cold.2(const char *a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = NSStringFromSelector(a1);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = 138544642;
  v9 = v5;
  v10 = 2114;
  v11 = v7;
  v12 = 2048;
  v13 = a2;
  v14 = 2114;
  v15 = @"SBKeyboardFocusArbitrationReason.m";
  v16 = 1024;
  v17 = 185;
  v18 = 2114;
  v19 = a3;
  _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
}

@end