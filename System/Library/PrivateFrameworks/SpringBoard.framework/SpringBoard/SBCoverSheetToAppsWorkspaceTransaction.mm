@interface SBCoverSheetToAppsWorkspaceTransaction
- (BOOL)canInterruptForTransitionRequest:(id)request;
- (SBCoverSheetToAppsWorkspaceTransaction)initWithTransitionRequest:(id)request forSecureAppTransition:(BOOL)transition;
- (id)_setupAnimation;
- (unint64_t)_dismissOverlaysOptions;
- (void)_autoPIPIfNeeded;
- (void)_begin;
- (void)_didComplete;
- (void)_dismissOverlaysIfNeeded;
- (void)_logForInterruptAttemptReason:(id)reason;
- (void)dealloc;
@end

@implementation SBCoverSheetToAppsWorkspaceTransaction

- (SBCoverSheetToAppsWorkspaceTransaction)initWithTransitionRequest:(id)request forSecureAppTransition:(BOOL)transition
{
  requestCopy = request;
  if (!requestCopy)
  {
    [SBCoverSheetToAppsWorkspaceTransaction initWithTransitionRequest:a2 forSecureAppTransition:self];
  }

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __91__SBCoverSheetToAppsWorkspaceTransaction_initWithTransitionRequest_forSecureAppTransition___block_invoke;
  v26[3] = &__block_descriptor_33_e54_v16__0__SBWorkspaceApplicationSceneTransitionContext_8l;
  transitionCopy = transition;
  [requestCopy modifyApplicationContext:v26];
  v25.receiver = self;
  v25.super_class = SBCoverSheetToAppsWorkspaceTransaction;
  v8 = [(SBToAppsWorkspaceTransaction *)&v25 initWithTransitionRequest:requestCopy];
  if (v8)
  {
    if (SBMainWorkspaceTransitionSourceIsUserEventDriven([requestCopy source]))
    {
      layoutTransaction = [(SBToAppsWorkspaceTransaction *)v8 layoutTransaction];
      options = [layoutTransaction options];

      layoutTransaction2 = [(SBToAppsWorkspaceTransaction *)v8 layoutTransaction];
      [layoutTransaction2 setOptions:options | 2];
    }

    v12 = +[SBWorkspace mainWorkspace];
    transientOverlayPresentationManager = [v12 transientOverlayPresentationManager];

    v14 = +[SBWorkspace mainWorkspace];
    v15 = [v14 createRequestWithOptions:0];

    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __91__SBCoverSheetToAppsWorkspaceTransaction_initWithTransitionRequest_forSecureAppTransition___block_invoke_2;
    v23 = &unk_2783AC2E0;
    v16 = transientOverlayPresentationManager;
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
  lockState = [v3 lockState];

  transientOverlayTransaction = self->_transientOverlayTransaction;
  if (transientOverlayTransaction)
  {
    [(SBCoverSheetToAppsWorkspaceTransaction *)self addChildTransaction:self->_transientOverlayTransaction];
  }

  v6 = +[SBCoverSheetPresentationManager sharedInstance];
  v7 = v6;
  if ((lockState & 2) == 0 && [v6 isVisible] && (objc_msgSend(v7, "isAnyGestureActivelyRecognized") & 1) == 0)
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
  _transitionContext = [(SBToAppsWorkspaceTransaction *)self _transitionContext];
  windowScene = [(SBWorkspaceTransaction *)self windowScene];
  homeScreenController = [windowScene homeScreenController];
  homeScreenViewController = [homeScreenController homeScreenViewController];

  if ([(SBToAppsWorkspaceTransaction *)self isGoingToLauncher]|| [(SBToAppsWorkspaceTransaction *)self isGoingToMainSwitcher])
  {
    [homeScreenViewController setHomeScreenAutorotatesEvenWhenIconIsDragging:1];
    [SBApp updateNativeOrientationWithOrientation:objc_msgSend(_transitionContext logMessage:{"interfaceOrientationOrPreferredOrientation"), @"AppToApp setting up animation to launcher / switcher"}];
  }

  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [homeScreenViewController setAllowIconRotation:0 forReason:v8];

  switcherController = [windowScene switcherController];
  switcherCoordinator = [switcherController switcherCoordinator];

  transitionRequest = [(SBWorkspaceTransaction *)self transitionRequest];
  ancillaryTransitionRequests = [(SBToAppsWorkspaceTransaction *)self ancillaryTransitionRequests];
  v13 = [switcherCoordinator animationControllerForTransitionRequest:transitionRequest ancillaryTransitionRequests:ancillaryTransitionRequests];

  transitionRequest2 = [(SBWorkspaceTransaction *)self transitionRequest];
  transitionCoordinator = [v13 transitionCoordinator];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __57__SBCoverSheetToAppsWorkspaceTransaction__setupAnimation__block_invoke;
  v18[3] = &unk_2783BE428;
  v19 = transitionRequest2;
  v16 = transitionRequest2;
  [transitionCoordinator animateAlongsideTransition:v18 completion:0];

  return v13;
}

void __57__SBCoverSheetToAppsWorkspaceTransaction__setupAnimation__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SBSceneLayoutWhitePointAdaptationController sharedInstance];
  [v4 updateWhitePointAdaptationStrengthWithWorkspaceTransitionRequest:*(a1 + 32) animationTransitionContext:v3];
}

- (BOOL)canInterruptForTransitionRequest:(id)request
{
  requestCopy = request;
  transitionRequest = [(SBWorkspaceTransaction *)self transitionRequest];
  applicationContext = [transitionRequest applicationContext];

  if (([applicationContext waitsForSceneUpdates] & 1) == 0 && objc_msgSend(applicationContext, "animationDisabled") && (objc_msgSend(requestCopy, "applicationContext"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "coverSheetFlyInContext"), v8 = objc_claimAutoreleasedReturnValue(), v7, v8))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [(SBCoverSheetToAppsWorkspaceTransaction *)self _logForInterruptAttemptReason:@"<%@:%p> not waiting for scene updates and not animating, so not interrupting for Cover Sheet fly-in", v10, self];

    v11 = 0;
  }

  else
  {
    v11 = [objc_opt_class() canInterruptTransaction:self forTransitionRequest:requestCopy];
  }

  return v11;
}

- (void)_dismissOverlaysIfNeeded
{
  v14 = *MEMORY[0x277D85DE8];
  _dismissOverlaysOptions = [(SBCoverSheetToAppsWorkspaceTransaction *)self _dismissOverlaysOptions];
  windowScene = [(SBWorkspaceTransaction *)self windowScene];
  if ([SBDismissOverlaysAnimationController willDismissOverlaysForDismissOptions:_dismissOverlaysOptions windowScene:?])
  {
    dismissOverlaysAnimationController = self->_dismissOverlaysAnimationController;

    if (!dismissOverlaysAnimationController)
    {
      v5 = [SBDismissOverlaysAnimationController alloc];
      transitionRequest = [(SBWorkspaceTransaction *)self transitionRequest];
      v7 = [(SBDismissOverlaysAnimationController *)v5 initWithTransitionContextProvider:transitionRequest options:_dismissOverlaysOptions];
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
  transitionRequest = [(SBWorkspaceTransaction *)self transitionRequest];
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
    transitionRequest2 = [(SBWorkspaceTransaction *)self transitionRequest];
    v6 = [(SBAutoPIPWorkspaceTransaction *)v4 initWithTransitionRequest:transitionRequest2];

    entityToPIP = [(SBAutoPIPWorkspaceTransaction *)v6 entityToPIP];
    if (entityToPIP)
    {
      objc_storeStrong(&self->_autoPIPTransaction, v6);
      [(SBCoverSheetToAppsWorkspaceTransaction *)self addChildTransaction:self->_autoPIPTransaction withSchedulingPolicy:0];
    }
  }
}

- (void)_logForInterruptAttemptReason:(id)reason
{
  v4 = MEMORY[0x277CCACA8];
  reasonCopy = reason;
  v6 = [[v4 alloc] initWithFormat:reasonCopy arguments:&v7];

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