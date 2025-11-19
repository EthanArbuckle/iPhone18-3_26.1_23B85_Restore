@interface SBCoverSheetToAppsWorkspaceTransaction
- (BOOL)canInterruptForTransitionRequest:(id)a3;
- (SBCoverSheetToAppsWorkspaceTransaction)initWithTransitionRequest:(id)a3 forSecureAppTransition:(BOOL)a4;
- (id)_setupAnimation;
- (unint64_t)_dismissOverlaysOptions;
- (void)_autoPIPIfNeeded;
- (void)_begin;
- (void)_didComplete;
- (void)_dismissOverlaysIfNeeded;
- (void)_logForInterruptAttemptReason:(id)a3;
- (void)dealloc;
@end

@implementation SBCoverSheetToAppsWorkspaceTransaction

- (SBCoverSheetToAppsWorkspaceTransaction)initWithTransitionRequest:(id)a3 forSecureAppTransition:(BOOL)a4
{
  v7 = a3;
  if (!v7)
  {
    [SBCoverSheetToAppsWorkspaceTransaction initWithTransitionRequest:a2 forSecureAppTransition:self];
  }

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __91__SBCoverSheetToAppsWorkspaceTransaction_initWithTransitionRequest_forSecureAppTransition___block_invoke;
  v26[3] = &__block_descriptor_33_e54_v16__0__SBWorkspaceApplicationSceneTransitionContext_8l;
  v27 = a4;
  [v7 modifyApplicationContext:v26];
  v25.receiver = self;
  v25.super_class = SBCoverSheetToAppsWorkspaceTransaction;
  v8 = [(SBToAppsWorkspaceTransaction *)&v25 initWithTransitionRequest:v7];
  if (v8)
  {
    if (SBMainWorkspaceTransitionSourceIsUserEventDriven([v7 source]))
    {
      v9 = [(SBToAppsWorkspaceTransaction *)v8 layoutTransaction];
      v10 = [v9 options];

      v11 = [(SBToAppsWorkspaceTransaction *)v8 layoutTransaction];
      [v11 setOptions:v10 | 2];
    }

    v12 = +[SBWorkspace mainWorkspace];
    v13 = [v12 transientOverlayPresentationManager];

    v14 = +[SBWorkspace mainWorkspace];
    v15 = [v14 createRequestWithOptions:0];

    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __91__SBCoverSheetToAppsWorkspaceTransaction_initWithTransitionRequest_forSecureAppTransition___block_invoke_2;
    v23 = &unk_2783AC2E0;
    v16 = v13;
    v24 = v16;
    [v15 modifyTransientOverlayContext:&v20];
    if ([SBTransientOverlayDismissAllWorkspaceTransaction isValidForTransitionRequest:v15, v20, v21, v22, v23])
    {
      v17 = [[SBTransientOverlayDismissAllWorkspaceTransaction alloc] initWithTransitionRequest:v15];
      transientOverlayTransaction = v8->_transientOverlayTransaction;
      v8->_transientOverlayTransaction = v17;
    }

    [(SBToAppsWorkspaceTransaction *)v8 _setShouldSerialDismissOverlays:0];
  }

  return v8;
}

void __91__SBCoverSheetToAppsWorkspaceTransaction_initWithTransitionRequest_forSecureAppTransition___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setWaitsForSceneUpdates:0];
  if (*(a1 + 32) == 1)
  {
    [v3 setAnimationDisabled:1];
  }

  [v3 setAlwaysRunsWatchdog:1];
}

void __91__SBCoverSheetToAppsWorkspaceTransaction_initWithTransitionRequest_forSecureAppTransition___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setAnimated:1];
  [v3 setPresentationManager:*(a1 + 32)];
  [v3 setTransitionType:1];
}

- (void)dealloc
{
  [(SBAutoPIPWorkspaceTransaction *)self->_autoPIPTransaction setCompletionBlock:0];
  v3.receiver = self;
  v3.super_class = SBCoverSheetToAppsWorkspaceTransaction;
  [(SBToAppsWorkspaceTransaction *)&v3 dealloc];
}

- (void)_begin
{
  v3 = +[SBLockStateAggregator sharedInstance];
  v4 = [v3 lockState];

  transientOverlayTransaction = self->_transientOverlayTransaction;
  if (transientOverlayTransaction)
  {
    [(SBCoverSheetToAppsWorkspaceTransaction *)self addChildTransaction:self->_transientOverlayTransaction];
  }

  v6 = +[SBCoverSheetPresentationManager sharedInstance];
  v7 = v6;
  if ((v4 & 2) == 0 && [v6 isVisible] && (objc_msgSend(v7, "isAnyGestureActivelyRecognized") & 1) == 0)
  {
    v8 = +[SBCoverSheetPresentationManager sharedInstance];
    [v8 setCoverSheetPresented:0 animated:transientOverlayTransaction == 0 options:2 withCompletion:0];
  }

  [(SBCoverSheetToAppsWorkspaceTransaction *)self _dismissOverlaysIfNeeded];
  [(SBToAppsWorkspaceTransaction *)self activateApplications];
  [(SBCoverSheetToAppsWorkspaceTransaction *)self _autoPIPIfNeeded];
  v9.receiver = self;
  v9.super_class = SBCoverSheetToAppsWorkspaceTransaction;
  [(SBCoverSheetToAppsWorkspaceTransaction *)&v9 _begin];
}

- (void)_didComplete
{
  [(SBAutoPIPWorkspaceTransaction *)self->_autoPIPTransaction setCompletionBlock:0];
  v3.receiver = self;
  v3.super_class = SBCoverSheetToAppsWorkspaceTransaction;
  [(SBToAppsWorkspaceTransaction *)&v3 _didComplete];
}

- (id)_setupAnimation
{
  v3 = [(SBToAppsWorkspaceTransaction *)self _transitionContext];
  v4 = [(SBWorkspaceTransaction *)self windowScene];
  v5 = [v4 homeScreenController];
  v6 = [v5 homeScreenViewController];

  if ([(SBToAppsWorkspaceTransaction *)self isGoingToLauncher]|| [(SBToAppsWorkspaceTransaction *)self isGoingToMainSwitcher])
  {
    [v6 setHomeScreenAutorotatesEvenWhenIconIsDragging:1];
    [SBApp updateNativeOrientationWithOrientation:objc_msgSend(v3 logMessage:{"interfaceOrientationOrPreferredOrientation"), @"AppToApp setting up animation to launcher / switcher"}];
  }

  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v6 setAllowIconRotation:0 forReason:v8];

  v9 = [v4 switcherController];
  v10 = [v9 switcherCoordinator];

  v11 = [(SBWorkspaceTransaction *)self transitionRequest];
  v12 = [(SBToAppsWorkspaceTransaction *)self ancillaryTransitionRequests];
  v13 = [v10 animationControllerForTransitionRequest:v11 ancillaryTransitionRequests:v12];

  v14 = [(SBWorkspaceTransaction *)self transitionRequest];
  v15 = [v13 transitionCoordinator];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __57__SBCoverSheetToAppsWorkspaceTransaction__setupAnimation__block_invoke;
  v18[3] = &unk_2783BE428;
  v19 = v14;
  v16 = v14;
  [v15 animateAlongsideTransition:v18 completion:0];

  return v13;
}

void __57__SBCoverSheetToAppsWorkspaceTransaction__setupAnimation__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SBSceneLayoutWhitePointAdaptationController sharedInstance];
  [v4 updateWhitePointAdaptationStrengthWithWorkspaceTransitionRequest:*(a1 + 32) animationTransitionContext:v3];
}

- (BOOL)canInterruptForTransitionRequest:(id)a3
{
  v4 = a3;
  v5 = [(SBWorkspaceTransaction *)self transitionRequest];
  v6 = [v5 applicationContext];

  if (([v6 waitsForSceneUpdates] & 1) == 0 && objc_msgSend(v6, "animationDisabled") && (objc_msgSend(v4, "applicationContext"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "coverSheetFlyInContext"), v8 = objc_claimAutoreleasedReturnValue(), v7, v8))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [(SBCoverSheetToAppsWorkspaceTransaction *)self _logForInterruptAttemptReason:@"<%@:%p> not waiting for scene updates and not animating, so not interrupting for Cover Sheet fly-in", v10, self];

    v11 = 0;
  }

  else
  {
    v11 = [objc_opt_class() canInterruptTransaction:self forTransitionRequest:v4];
  }

  return v11;
}

- (void)_dismissOverlaysIfNeeded
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(SBCoverSheetToAppsWorkspaceTransaction *)self _dismissOverlaysOptions];
  v11 = [(SBWorkspaceTransaction *)self windowScene];
  if ([SBDismissOverlaysAnimationController willDismissOverlaysForDismissOptions:v3 windowScene:?])
  {
    dismissOverlaysAnimationController = self->_dismissOverlaysAnimationController;

    if (!dismissOverlaysAnimationController)
    {
      v5 = [SBDismissOverlaysAnimationController alloc];
      v6 = [(SBWorkspaceTransaction *)self transitionRequest];
      v7 = [(SBDismissOverlaysAnimationController *)v5 initWithTransitionContextProvider:v6 options:v3];
      v8 = self->_dismissOverlaysAnimationController;
      self->_dismissOverlaysAnimationController = v7;

      [(SBCoverSheetToAppsWorkspaceTransaction *)self addChildTransaction:self->_dismissOverlaysAnimationController withSchedulingPolicy:0];
      v9 = SBLogDashBoard();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [(SBDismissOverlaysAnimationController *)self->_dismissOverlaysAnimationController debugDescription];
        *buf = 138412290;
        v13 = v10;
        _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_INFO, "dismissOverlaysAnimationController: %@", buf, 0xCu);
      }
    }
  }

  else
  {
  }
}

- (unint64_t)_dismissOverlaysOptions
{
  if ([(SBCoverSheetToAppsWorkspaceTransaction *)self preservesBanners])
  {
    return -33;
  }

  else
  {
    return -1;
  }
}

- (void)_autoPIPIfNeeded
{
  v8 = [(SBWorkspaceTransaction *)self transitionRequest];
  if ([SBAutoPIPWorkspaceTransaction shouldAutoPIPEnteringBackgroundForRequest:"shouldAutoPIPEnteringBackgroundForRequest:reason:" reason:?])
  {
    [(SBAutoPIPWorkspaceTransaction *)self->_autoPIPTransaction setCompletionBlock:0];
    if ([(SBAutoPIPWorkspaceTransaction *)self->_autoPIPTransaction isRunning])
    {
      [(SBAutoPIPWorkspaceTransaction *)self->_autoPIPTransaction interruptWithReason:@"NewTransition"];
    }

    autoPIPTransaction = self->_autoPIPTransaction;
    self->_autoPIPTransaction = 0;

    v4 = [SBAutoPIPWorkspaceTransaction alloc];
    v5 = [(SBWorkspaceTransaction *)self transitionRequest];
    v6 = [(SBAutoPIPWorkspaceTransaction *)v4 initWithTransitionRequest:v5];

    v7 = [(SBAutoPIPWorkspaceTransaction *)v6 entityToPIP];
    if (v7)
    {
      objc_storeStrong(&self->_autoPIPTransaction, v6);
      [(SBCoverSheetToAppsWorkspaceTransaction *)self addChildTransaction:self->_autoPIPTransaction withSchedulingPolicy:0];
    }
  }
}

- (void)_logForInterruptAttemptReason:(id)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v6 = [[v4 alloc] initWithFormat:v5 arguments:&v7];

  if ([(SBCoverSheetToAppsWorkspaceTransaction *)self isAuditHistoryEnabled])
  {
    [(SBCoverSheetToAppsWorkspaceTransaction *)self _addAuditHistoryItem:@"%@", v6];
  }
}

- (void)initWithTransitionRequest:(uint64_t)a1 forSecureAppTransition:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBCoverSheetToAppsWorkspaceTransaction.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"request"}];
}

@end