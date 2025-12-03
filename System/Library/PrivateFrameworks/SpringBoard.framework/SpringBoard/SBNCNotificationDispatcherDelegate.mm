@interface SBNCNotificationDispatcherDelegate
- (SBNotificationBannerDestination)bannerDestination;
- (void)_requestAuthenticationWithCompletion:(id)completion;
- (void)dispatcher:(id)dispatcher requestPermissionToExecuteAction:(id)action forDestination:(id)destination notificationRequest:(id)request withParameters:(id)parameters completionBlock:(id)block;
- (void)dispatcher:(id)dispatcher willExecuteAction:(id)action forDestination:(id)destination notificationRequest:(id)request requestAuthentication:(BOOL)authentication withParameters:(id)parameters completionBlock:(id)block;
@end

@implementation SBNCNotificationDispatcherDelegate

- (void)dispatcher:(id)dispatcher requestPermissionToExecuteAction:(id)action forDestination:(id)destination notificationRequest:(id)request withParameters:(id)parameters completionBlock:(id)block
{
  destinationCopy = destination;
  blockCopy = block;
  if ([action requiresAuthentication])
  {
    v11 = objc_alloc_init(SBLockScreenUnlockRequest);
    identifier = [destinationCopy identifier];
    if ([identifier isEqualToString:*MEMORY[0x277D77FE8]])
    {
      v13 = 4;
    }

    else
    {
      v13 = 10;
    }

    [(SBLockScreenUnlockRequest *)v11 setSource:v13];
    [(SBLockScreenUnlockRequest *)v11 setIntent:2];
    [(SBLockScreenUnlockRequest *)v11 setName:@"SBNCNotificationDispatcherDelegate"];
    [(SBLockScreenUnlockRequest *)v11 setWantsBiometricPresentation:1];
    v14 = +[SBLockScreenManager sharedInstance];
    [v14 unlockWithRequest:v11 completion:blockCopy];
  }

  else
  {
    blockCopy[2](blockCopy, 1);
  }
}

- (void)dispatcher:(id)dispatcher willExecuteAction:(id)action forDestination:(id)destination notificationRequest:(id)request requestAuthentication:(BOOL)authentication withParameters:(id)parameters completionBlock:(id)block
{
  authenticationCopy = authentication;
  dispatcherCopy = dispatcher;
  actionCopy = action;
  destinationCopy = destination;
  requestCopy = request;
  parametersCopy = parameters;
  blockCopy = block;
  if (authenticationCopy && [actionCopy activationMode] != 1 && objc_msgSend(actionCopy, "requiresAuthentication"))
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __155__SBNCNotificationDispatcherDelegate_dispatcher_willExecuteAction_forDestination_notificationRequest_requestAuthentication_withParameters_completionBlock___block_invoke;
    v21[3] = &unk_2783A9C70;
    v22 = blockCopy;
    [(SBNCNotificationDispatcherDelegate *)self _requestAuthenticationWithCompletion:v21];
  }

  else
  {
    (*(blockCopy + 2))(blockCopy, 1);
  }
}

- (void)_requestAuthenticationWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_alloc_init(SBLockScreenUnlockRequest);
  [(SBLockScreenUnlockRequest *)v5 setSource:10];
  [(SBLockScreenUnlockRequest *)v5 setIntent:2];
  [(SBLockScreenUnlockRequest *)v5 setName:@"SBNCNotificationDispatcherDelegate"];
  [(SBLockScreenUnlockRequest *)v5 setWantsBiometricPresentation:1];
  v4 = +[SBLockScreenManager sharedInstance];
  [v4 unlockWithRequest:v5 completion:completionCopy];
}

- (SBNotificationBannerDestination)bannerDestination
{
  WeakRetained = objc_loadWeakRetained(&self->_bannerDestination);

  return WeakRetained;
}

@end