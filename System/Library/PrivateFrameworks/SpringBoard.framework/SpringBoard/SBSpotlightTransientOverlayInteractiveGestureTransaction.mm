@interface SBSpotlightTransientOverlayInteractiveGestureTransaction
- (BOOL)canInterruptForTransitionRequest:(id)request;
- (SBSpotlightTransientOverlayInteractiveGestureTransaction)initWithTransitionRequest:(id)request spotlightTransientOverlayViewController:(id)controller;
- (id)_homeScreenAnimator;
- (void)_begin;
- (void)_didComplete;
- (void)_dismissSpotlightTransientOverlayViewController;
- (void)_logForInterruptAttemptReason:(id)reason;
- (void)_presentTransientOverlayViewController:(id)controller;
- (void)endPresentation:(BOOL)presentation;
- (void)transactionDidComplete:(id)complete;
- (void)updatePresentationWithProgress:(double)progress translation:(double)translation;
@end

@implementation SBSpotlightTransientOverlayInteractiveGestureTransaction

- (SBSpotlightTransientOverlayInteractiveGestureTransaction)initWithTransitionRequest:(id)request spotlightTransientOverlayViewController:(id)controller
{
  controllerCopy = controller;
  v13.receiver = self;
  v13.super_class = SBSpotlightTransientOverlayInteractiveGestureTransaction;
  v8 = [(SBMainWorkspaceTransaction *)&v13 initWithTransitionRequest:request];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_spotlightTransientOverlayViewController, controller);
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
    transitionRequest = [(SBWorkspaceTransaction *)self transitionRequest];
    displayIdentity = [transitionRequest displayIdentity];
    [v3 startSuppressingKeyboardWithReason:@"SBSpotlightInteractiveGestureKeyboardSuppressionReason" predicate:0 displayIdentity:displayIdentity];
  }

  v9.receiver = self;
  v9.super_class = SBSpotlightTransientOverlayInteractiveGestureTransaction;
  [(SBSpotlightTransientOverlayInteractiveGestureTransaction *)&v9 _begin];
  if (!self->_gestureFinishedBeforeTransactionBegan)
  {
    [(SBSpotlightTransientOverlayViewController *)self->_spotlightTransientOverlayViewController beginInteractivePresentation];
    spotlightTransientOverlayViewController = self->_spotlightTransientOverlayViewController;
    transitionRequest2 = [(SBWorkspaceTransaction *)self transitionRequest];
    displayConfiguration = [transitionRequest2 displayConfiguration];
    [(SBSpotlightTransientOverlayViewController *)spotlightTransientOverlayViewController setTargetDisplayConfiguration:displayConfiguration];

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

- (BOOL)canInterruptForTransitionRequest:(id)request
{
  requestCopy = request;
  v5 = objc_opt_class();
  v6 = SBSafeCast(v5, requestCopy);

  copyMainWorkspaceTransitionRequest = [v6 copyMainWorkspaceTransitionRequest];
  if ([copyMainWorkspaceTransitionRequest source] == 11)
  {
    workspace = [copyMainWorkspaceTransitionRequest workspace];
    v9 = [workspace transactionForTransitionRequest:copyMainWorkspaceTransitionRequest];

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

- (void)_logForInterruptAttemptReason:(id)reason
{
  v11 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v5 = SBLogCommon();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);

  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:reasonCopy arguments:&v12];
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

- (void)updatePresentationWithProgress:(double)progress translation:(double)translation
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
    isLockScreenVisible = [v12 isLockScreenVisible];

    if (isLockScreenVisible)
    {
      _homeScreenAnimator = +[SBUIController sharedInstance];
      [_homeScreenAnimator setLockScreenScale:5 withDuration:0 behaviorMode:v11 completion:0.0];
    }

    else
    {
      _homeScreenAnimator = [(SBSpotlightTransientOverlayInteractiveGestureTransaction *)self _homeScreenAnimator];
      [_homeScreenAnimator setHomeScreenScale:5 behaviorMode:0 completion:v11];
    }
  }

  [(SBSpotlightTransientOverlayViewController *)self->_spotlightTransientOverlayViewController updateInteractivePresentationWithProgress:progress translation:translation];
}

- (void)endPresentation:(BOOL)presentation
{
  presentationCopy = presentation;
  v5 = +[SBLockScreenManager sharedInstance];
  isLockScreenVisible = [v5 isLockScreenVisible];

  if (isLockScreenVisible)
  {
    _homeScreenAnimator = +[SBUIController sharedInstance];
    [_homeScreenAnimator setLockScreenScale:3 withDuration:0 behaviorMode:1.0 completion:0.3];
  }

  else
  {
    _homeScreenAnimator = [(SBSpotlightTransientOverlayInteractiveGestureTransaction *)self _homeScreenAnimator];
    [_homeScreenAnimator setHomeScreenScale:3 behaviorMode:0 completion:1.0];
  }

  [(SBSpotlightTransientOverlayViewController *)self->_spotlightTransientOverlayViewController endInteractivePresentation:presentationCopy];
  if (!presentationCopy)
  {
    [(SBSpotlightTransientOverlayInteractiveGestureTransaction *)self _dismissSpotlightTransientOverlayViewController];
  }

  [(SBSpotlightTransientOverlayInteractiveGestureTransaction *)self removeMilestone:@"trackingGesture"];
}

- (void)_presentTransientOverlayViewController:(id)controller
{
  controllerCopy = controller;
  if (self->_presentTransientOverlayTransaction)
  {
    [(SBSpotlightTransientOverlayInteractiveGestureTransaction *)a2 _presentTransientOverlayViewController:?];
  }

  v6 = controllerCopy;
  v7 = [[SBWorkspaceTransientOverlay alloc] initWithViewController:controllerCopy];
  transitionRequest = [(SBWorkspaceTransaction *)self transitionRequest];
  workspace = [transitionRequest workspace];

  v10 = [workspace createRequestWithOptions:0];
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
  v14 = [workspace transactionForTransitionRequest:v10];
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
  transitionRequest = [(SBWorkspaceTransaction *)self transitionRequest];
  workspace = [transitionRequest workspace];

  v6 = [workspace createRequestWithOptions:0];
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

  v11 = [workspace transactionForTransitionRequest:v6];
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
  _sbWindowScene = [(SBTransientOverlayViewController *)self->_spotlightTransientOverlayViewController _sbWindowScene];
  homeScreenController = [_sbWindowScene homeScreenController];

  return homeScreenController;
}

- (void)transactionDidComplete:(id)complete
{
  presentTransientOverlayTransaction = self->_presentTransientOverlayTransaction;
  if (presentTransientOverlayTransaction == complete)
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