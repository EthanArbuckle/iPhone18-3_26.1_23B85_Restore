@interface SBTransientOverlayDismissToAppsWorkspaceTransaction
+ (BOOL)isValidForTransitionRequest:(id)request;
- (BOOL)canInterruptForTransitionRequest:(id)request;
- (void)_begin;
- (void)_didComplete;
- (void)_sendActivationResultWithError:(id)error;
@end

@implementation SBTransientOverlayDismissToAppsWorkspaceTransaction

- (void)_begin
{
  v10.receiver = self;
  v10.super_class = SBTransientOverlayDismissToAppsWorkspaceTransaction;
  [(SBTransientOverlayDismissToAppsWorkspaceTransaction *)&v10 _begin];
  transitionRequest = [(SBWorkspaceTransaction *)self transitionRequest];
  if (![objc_opt_class() isValidForTransitionRequest:transitionRequest])
  {
    goto LABEL_9;
  }

  transientOverlayContext = [transitionRequest transientOverlayContext];
  transientOverlay = [transientOverlayContext transientOverlay];
  if (transientOverlay)
  {
    presentationManager = [transientOverlayContext presentationManager];
    presentedViewControllerCount = [presentationManager presentedViewControllerCount];
    v8 = off_2783A28A8;
    if (presentedViewControllerCount <= 1)
    {
      v8 = off_2783A2890;
    }

    v9 = [objc_alloc(*v8) initWithTransitionRequest:transitionRequest];
  }

  else
  {
    v9 = [[SBTransientOverlayDismissAllToAppsWorkspaceTransaction alloc] initWithTransitionRequest:transitionRequest];
  }

  if (v9)
  {
    [(SBTransientOverlayDismissToAppsWorkspaceTransaction *)self addChildTransaction:v9 withSchedulingPolicy:0];
  }

  else
  {
LABEL_9:
    [(SBTransientOverlayDismissToAppsWorkspaceTransaction *)self _evaluateCompletion];
  }
}

- (void)_didComplete
{
  v4.receiver = self;
  v4.super_class = SBTransientOverlayDismissToAppsWorkspaceTransaction;
  [(SBMainWorkspaceTransaction *)&v4 _didComplete];
  v3 = SBWTErrorCreateForTransaction(self);
  [(SBTransientOverlayDismissToAppsWorkspaceTransaction *)self _sendActivationResultWithError:v3];
}

- (void)_sendActivationResultWithError:(id)error
{
  errorCopy = error;
  transitionRequest = [(SBWorkspaceTransaction *)self transitionRequest];
  applicationContext = [transitionRequest applicationContext];

  if ([applicationContext needsToSendActivationResult])
  {
    [applicationContext sendActivationResultError:errorCopy];
    if ([(SBTransientOverlayDismissToAppsWorkspaceTransaction *)self isAuditHistoryEnabled])
    {
      localizedFailureReason = [errorCopy localizedFailureReason];
      [(SBTransientOverlayDismissToAppsWorkspaceTransaction *)self _addAuditHistoryItem:@"Sent activation result; error = %@", localizedFailureReason];
    }
  }
}

- (BOOL)canInterruptForTransitionRequest:(id)request
{
  v18 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  childTransactions = [(SBTransientOverlayDismissToAppsWorkspaceTransaction *)self childTransactions];
  v6 = [childTransactions countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(childTransactions);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && ![v10 canInterruptForTransitionRequest:requestCopy])
        {
          v11 = 0;
          goto LABEL_12;
        }
      }

      v7 = [childTransactions countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 1;
LABEL_12:

  return v11;
}

+ (BOOL)isValidForTransitionRequest:(id)request
{
  requestCopy = request;
  transientOverlayContext = [requestCopy transientOverlayContext];
  transientOverlay = [transientOverlayContext transientOverlay];
  v6 = off_2783A2898;
  if (transientOverlay)
  {
    v6 = off_2783A28A8;
  }

  v7 = [(__objc2_class *)*v6 isValidForTransitionRequest:requestCopy];

  return v7;
}

@end