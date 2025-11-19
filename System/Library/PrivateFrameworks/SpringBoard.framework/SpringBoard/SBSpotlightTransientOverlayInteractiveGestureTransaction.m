@interface SBSpotlightTransientOverlayInteractiveGestureTransaction
- (BOOL)canInterruptForTransitionRequest:(id)a3;
- (SBSpotlightTransientOverlayInteractiveGestureTransaction)initWithTransitionRequest:(id)a3 spotlightTransientOverlayViewController:(id)a4;
- (id)_homeScreenAnimator;
- (void)_begin;
- (void)_didComplete;
- (void)_dismissSpotlightTransientOverlayViewController;
- (void)_logForInterruptAttemptReason:(id)a3;
- (void)_presentTransientOverlayViewController:(id)a3;
- (void)endPresentation:(BOOL)a3;
- (void)transactionDidComplete:(id)a3;
- (void)updatePresentationWithProgress:(double)a3 translation:(double)a4;
@end

@implementation SBSpotlightTransientOverlayInteractiveGestureTransaction

- (SBSpotlightTransientOverlayInteractiveGestureTransaction)initWithTransitionRequest:(id)a3 spotlightTransientOverlayViewController:(id)a4
{
  v7 = a4;
  v13.receiver = self;
  v13.super_class = SBSpotlightTransientOverlayInteractiveGestureTransaction;
  v8 = [(SBMainWorkspaceTransaction *)&v13 initWithTransitionRequest:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_spotlightTransientOverlayViewController, a4);
    v10 = +[SBSpotlightDomain rootSettings];
    settings = v9->_settings;
    v9->_settings = v10;
  }

  return v9;
}

- (void)_begin
{
  if (!self->_gestureFinishedBeforeTransactionBegan)
  {
    [(SBSpotlightTransientOverlayInteractiveGestureTransaction *)self addMilestone:@"trackingGesture"];
    v3 = +[SBKeyboardSuppressionManager sharedInstance];
    v4 = [(SBWorkspaceTransaction *)self transitionRequest];
    v5 = [v4 displayIdentity];
    [v3 startSuppressingKeyboardWithReason:@"SBSpotlightInteractiveGestureKeyboardSuppressionReason" predicate:0 displayIdentity:v5];
  }

  v9.receiver = self;
  v9.super_class = SBSpotlightTransientOverlayInteractiveGestureTransaction;
  [(SBSpotlightTransientOverlayInteractiveGestureTransaction *)&v9 _begin];
  if (!self->_gestureFinishedBeforeTransactionBegan)
  {
    [(SBSpotlightTransientOverlayViewController *)self->_spotlightTransientOverlayViewController beginInteractivePresentation];
    spotlightTransientOverlayViewController = self->_spotlightTransientOverlayViewController;
    v7 = [(SBWorkspaceTransaction *)self transitionRequest];
    v8 = [v7 displayConfiguration];
    [(SBSpotlightTransientOverlayViewController *)spotlightTransientOverlayViewController setTargetDisplayConfiguration:v8];

    [(SBSpotlightTransientOverlayInteractiveGestureTransaction *)self _presentTransientOverlayViewController:self->_spotlightTransientOverlayViewController];
  }
}

- (void)_didComplete
{
  v3 = +[SBKeyboardSuppressionManager sharedInstance];
  [v3 stopSuppressingKeyboardWithReason:@"SBSpotlightInteractiveGestureKeyboardSuppressionReason"];

  v4.receiver = self;
  v4.super_class = SBSpotlightTransientOverlayInteractiveGestureTransaction;
  [(SBMainWorkspaceTransaction *)&v4 _didComplete];
}

- (BOOL)canInterruptForTransitionRequest:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = SBSafeCast(v5, v4);

  v7 = [v6 copyMainWorkspaceTransitionRequest];
  if ([v7 source] == 11)
  {
    v8 = [v7 workspace];
    v9 = [v8 transactionForTransitionRequest:v7];

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      [(SBSpotlightTransientOverlayInteractiveGestureTransaction *)self _logForInterruptAttemptReason:@"<%@:%p> interruptible because:  next request is also interactive spotlight gesture", v12, self];
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (void)_logForInterruptAttemptReason:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogCommon();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);

  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v4 arguments:&v12];
    if ([(SBSpotlightTransientOverlayInteractiveGestureTransaction *)self isAuditHistoryEnabled])
    {
      [(SBSpotlightTransientOverlayInteractiveGestureTransaction *)self _addAuditHistoryItem:@"%@", v7];
    }

    v8 = SBLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v10 = v7;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_INFO, "%{public}@", buf, 0xCu);
    }
  }
}

- (void)updatePresentationWithProgress:(double)a3 translation:(double)a4
{
  if (!SBReduceMotion())
  {
    [(SBSpotlightSettings *)self->_settings maxTranslationForHomeScreenScale];
    [(SBSpotlightSettings *)self->_settings homeScreenScaleRubberbandingMin];
    v8 = v7;
    [(SBSpotlightSettings *)self->_settings homeScreenScaleRubberbandingMax];
    [(SBSpotlightSettings *)self->_settings homeScreenScaleRubberbandingRange:v8];
    BSUIConstrainValueToIntervalWithRubberBand();
    v11 = v10;
    v12 = +[SBLockScreenManager sharedInstance];
    v13 = [v12 isLockScreenVisible];

    if (v13)
    {
      v14 = +[SBUIController sharedInstance];
      [v14 setLockScreenScale:5 withDuration:0 behaviorMode:v11 completion:0.0];
    }

    else
    {
      v14 = [(SBSpotlightTransientOverlayInteractiveGestureTransaction *)self _homeScreenAnimator];
      [v14 setHomeScreenScale:5 behaviorMode:0 completion:v11];
    }
  }

  [(SBSpotlightTransientOverlayViewController *)self->_spotlightTransientOverlayViewController updateInteractivePresentationWithProgress:a3 translation:a4];
}

- (void)endPresentation:(BOOL)a3
{
  v3 = a3;
  v5 = +[SBLockScreenManager sharedInstance];
  v6 = [v5 isLockScreenVisible];

  if (v6)
  {
    v7 = +[SBUIController sharedInstance];
    [v7 setLockScreenScale:3 withDuration:0 behaviorMode:1.0 completion:0.3];
  }

  else
  {
    v7 = [(SBSpotlightTransientOverlayInteractiveGestureTransaction *)self _homeScreenAnimator];
    [v7 setHomeScreenScale:3 behaviorMode:0 completion:1.0];
  }

  [(SBSpotlightTransientOverlayViewController *)self->_spotlightTransientOverlayViewController endInteractivePresentation:v3];
  if (!v3)
  {
    [(SBSpotlightTransientOverlayInteractiveGestureTransaction *)self _dismissSpotlightTransientOverlayViewController];
  }

  [(SBSpotlightTransientOverlayInteractiveGestureTransaction *)self removeMilestone:@"trackingGesture"];
}

- (void)_presentTransientOverlayViewController:(id)a3
{
  v5 = a3;
  if (self->_presentTransientOverlayTransaction)
  {
    [(SBSpotlightTransientOverlayInteractiveGestureTransaction *)a2 _presentTransientOverlayViewController:?];
  }

  v6 = v5;
  v7 = [[SBWorkspaceTransientOverlay alloc] initWithViewController:v5];
  v8 = [(SBWorkspaceTransaction *)self transitionRequest];
  v9 = [v8 workspace];

  v10 = [v9 createRequestWithOptions:0];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  [v10 setEventLabelWithFormat:@"PresentTransientOverlay = %@", v12];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __99__SBSpotlightTransientOverlayInteractiveGestureTransaction__presentTransientOverlayViewController___block_invoke;
  v16[3] = &unk_2783AC2E0;
  v17 = v7;
  v13 = v7;
  [v10 modifyTransientOverlayContext:v16];
  [v10 modifyApplicationContext:&__block_literal_global_45];
  v14 = [v9 transactionForTransitionRequest:v10];
  presentTransientOverlayTransaction = self->_presentTransientOverlayTransaction;
  self->_presentTransientOverlayTransaction = v14;

  [(SBMainWorkspaceTransaction *)self->_presentTransientOverlayTransaction addObserver:self];
  [(SBSpotlightTransientOverlayInteractiveGestureTransaction *)self addChildTransaction:self->_presentTransientOverlayTransaction];
}

void __99__SBSpotlightTransientOverlayInteractiveGestureTransaction__presentTransientOverlayViewController___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setTransitionType:0];
  [v3 setTransientOverlay:*(a1 + 32)];
  [v3 setAnimated:1];
}

- (void)_dismissSpotlightTransientOverlayViewController
{
  v3 = [[SBWorkspaceTransientOverlay alloc] initWithViewController:self->_spotlightTransientOverlayViewController];
  v4 = [(SBWorkspaceTransaction *)self transitionRequest];
  v5 = [v4 workspace];

  v6 = [v5 createRequestWithOptions:0];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v6 setEventLabelWithFormat:@"DismissSearchOverlay", v8];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __107__SBSpotlightTransientOverlayInteractiveGestureTransaction__dismissSpotlightTransientOverlayViewController__block_invoke;
  v12[3] = &unk_2783AC2E0;
  v9 = v3;
  v13 = v9;
  [v6 modifyTransientOverlayContext:v12];
  [v6 modifyApplicationContext:&__block_literal_global_53_0];
  presentTransientOverlayTransaction = self->_presentTransientOverlayTransaction;
  if (presentTransientOverlayTransaction && [(SBWorkspaceTransaction *)presentTransientOverlayTransaction canInterruptForTransitionRequest:v6])
  {
    [(SBWorkspaceTransaction *)self->_presentTransientOverlayTransaction interruptForTransitionRequest:v6];
  }

  v11 = [v5 transactionForTransitionRequest:v6];
  [(SBSpotlightTransientOverlayInteractiveGestureTransaction *)self addChildTransaction:v11 withSchedulingPolicy:1];
}

void __107__SBSpotlightTransientOverlayInteractiveGestureTransaction__dismissSpotlightTransientOverlayViewController__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setTransitionType:1];
  [v3 setTransientOverlay:*(a1 + 32)];
  [v3 setAnimated:1];
}

- (id)_homeScreenAnimator
{
  v2 = [(SBTransientOverlayViewController *)self->_spotlightTransientOverlayViewController _sbWindowScene];
  v3 = [v2 homeScreenController];

  return v3;
}

- (void)transactionDidComplete:(id)a3
{
  presentTransientOverlayTransaction = self->_presentTransientOverlayTransaction;
  if (presentTransientOverlayTransaction == a3)
  {
    self->_presentTransientOverlayTransaction = 0;
  }
}

- (void)_presentTransientOverlayViewController:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"_presentTransientOverlayTransaction == nil"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"SBSpotlightTransientOverlayInteractiveGestureTransaction.m";
    v16 = 1024;
    v17 = 150;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end