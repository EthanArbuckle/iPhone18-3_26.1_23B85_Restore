@interface SBTransientOverlayDismissWorkspaceTransaction
+ (BOOL)isValidForTransitionRequest:(id)request;
- (void)_begin;
- (void)_didComplete;
- (void)_sendActivationResultWithError:(id)error;
@end

@implementation SBTransientOverlayDismissWorkspaceTransaction

- (void)_begin
{
  v22.receiver = self;
  v22.super_class = SBTransientOverlayDismissWorkspaceTransaction;
  [(SBTransientOverlayDismissWorkspaceTransaction *)&v22 _begin];
  transitionRequest = [(SBWorkspaceTransaction *)self transitionRequest];
  transientOverlayContext = [transitionRequest transientOverlayContext];
  transientOverlay = [transientOverlayContext transientOverlay];
  viewController = [transientOverlay viewController];
  presentationManager = [transientOverlayContext presentationManager];
  windowScene = [(SBWorkspaceTransaction *)self windowScene];
  switcherController = [windowScene switcherController];

  v10 = [switcherController appLayoutForWorkspaceTransientOverlay:transientOverlay];

  if (v10)
  {
    [(SBTransientOverlayDismissWorkspaceTransaction *)self addMilestone:@"_SBTransientOverlayDismissWorkspaceTransactionMilestoneSwitcherTransition"];
    applicationContext = [transitionRequest applicationContext];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __55__SBTransientOverlayDismissWorkspaceTransaction__begin__block_invoke;
    v21[3] = &unk_2783A9398;
    v21[4] = self;
    [switcherController performTransitionWithContext:applicationContext animated:0 completion:v21];
  }

  v12 = [(SBTransientOverlayDismissalRequest *)SBMutableTransientOverlayDismissalRequest dismissalRequestForViewController:viewController];
  [v12 setAnimated:{objc_msgSend(transientOverlayContext, "isAnimated")}];
  [(SBTransientOverlayDismissWorkspaceTransaction *)self addMilestone:@"_SBTransientOverlayDismissWorkspaceTransactionMilestoneDismissalAnimation"];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __55__SBTransientOverlayDismissWorkspaceTransaction__begin__block_invoke_2;
  v16[3] = &unk_2783A9BD8;
  v17 = switcherController;
  v18 = transientOverlay;
  v19 = viewController;
  selfCopy = self;
  v13 = viewController;
  v14 = transientOverlay;
  v15 = switcherController;
  [v12 setCompletionHandler:v16];
  [presentationManager performDismissalRequest:v12];
}

void __55__SBTransientOverlayDismissWorkspaceTransaction__begin__block_invoke_2(uint64_t a1)
{
  v5 = [*(a1 + 32) appLayoutForWorkspaceTransientOverlay:*(a1 + 40)];
  if (v5)
  {
    [*(a1 + 32) addAcquiredTransientOverlayViewController:*(a1 + 48) forAppLayout:v5];
  }

  v2 = +[SBKeyboardFocusCoordinator sharedInstance];
  v3 = [*(a1 + 56) windowScene];
  v4 = +[SBKeyboardFocusArbitrationReason transientOverlayDismissWorkspaceTransactionDidBegin];
  [v2 requestArbitrationForSBWindowScene:v3 forReason:v4];

  [*(a1 + 56) removeMilestone:@"_SBTransientOverlayDismissWorkspaceTransactionMilestoneDismissalAnimation"];
}

- (void)_didComplete
{
  v4.receiver = self;
  v4.super_class = SBTransientOverlayDismissWorkspaceTransaction;
  [(SBMainWorkspaceTransaction *)&v4 _didComplete];
  v3 = SBWTErrorCreateForTransaction(self);
  [(SBTransientOverlayDismissWorkspaceTransaction *)self _sendActivationResultWithError:v3];
}

- (void)_sendActivationResultWithError:(id)error
{
  errorCopy = error;
  transitionRequest = [(SBWorkspaceTransaction *)self transitionRequest];
  applicationContext = [transitionRequest applicationContext];

  if ([applicationContext needsToSendActivationResult])
  {
    [applicationContext sendActivationResultError:errorCopy];
    if ([(SBTransientOverlayDismissWorkspaceTransaction *)self isAuditHistoryEnabled])
    {
      localizedFailureReason = [errorCopy localizedFailureReason];
      [(SBTransientOverlayDismissWorkspaceTransaction *)self _addAuditHistoryItem:@"Sent activation result; error = %@", localizedFailureReason];
    }
  }
}

+ (BOOL)isValidForTransitionRequest:(id)request
{
  requestCopy = request;
  transientOverlayContext = [requestCopy transientOverlayContext];
  if ([transientOverlayContext transitionType] == 1)
  {
    presentationManager = [transientOverlayContext presentationManager];
    transientOverlay = [transientOverlayContext transientOverlay];
    if (transientOverlay)
    {
      windowSceneManager = [SBApp windowSceneManager];
      displayIdentity = [requestCopy displayIdentity];
      v9 = [windowSceneManager windowSceneForDisplayIdentity:displayIdentity];

      switcherController = [v9 switcherController];
      viewController = [transientOverlay viewController];
      if ([switcherController hasAppLayoutForTransientOverlayViewController:viewController])
      {
        v12 = 1;
      }

      else
      {
        v12 = [presentationManager isPresentingViewController:viewController];
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end