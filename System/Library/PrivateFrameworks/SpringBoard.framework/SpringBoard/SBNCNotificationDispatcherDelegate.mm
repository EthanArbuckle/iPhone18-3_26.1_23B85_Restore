@interface SBNCNotificationDispatcherDelegate
- (SBNotificationBannerDestination)bannerDestination;
- (void)_requestAuthenticationWithCompletion:(id)a3;
- (void)dispatcher:(id)a3 requestPermissionToExecuteAction:(id)a4 forDestination:(id)a5 notificationRequest:(id)a6 withParameters:(id)a7 completionBlock:(id)a8;
- (void)dispatcher:(id)a3 willExecuteAction:(id)a4 forDestination:(id)a5 notificationRequest:(id)a6 requestAuthentication:(BOOL)a7 withParameters:(id)a8 completionBlock:(id)a9;
@end

@implementation SBNCNotificationDispatcherDelegate

- (void)dispatcher:(id)a3 requestPermissionToExecuteAction:(id)a4 forDestination:(id)a5 notificationRequest:(id)a6 withParameters:(id)a7 completionBlock:(id)a8
{
  v15 = a5;
  v10 = a8;
  if ([a4 requiresAuthentication])
  {
    v11 = objc_alloc_init(SBLockScreenUnlockRequest);
    v12 = [v15 identifier];
    if ([v12 isEqualToString:*MEMORY[0x277D77FE8]])
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
    [v14 unlockWithRequest:v11 completion:v10];
  }

  else
  {
    v10[2](v10, 1);
  }
}

- (void)dispatcher:(id)a3 willExecuteAction:(id)a4 forDestination:(id)a5 notificationRequest:(id)a6 requestAuthentication:(BOOL)a7 withParameters:(id)a8 completionBlock:(id)a9
{
  v10 = a7;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a8;
  v20 = a9;
  if (v10 && [v16 activationMode] != 1 && objc_msgSend(v16, "requiresAuthentication"))
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __155__SBNCNotificationDispatcherDelegate_dispatcher_willExecuteAction_forDestination_notificationRequest_requestAuthentication_withParameters_completionBlock___block_invoke;
    v21[3] = &unk_2783A9C70;
    v22 = v20;
    [(SBNCNotificationDispatcherDelegate *)self _requestAuthenticationWithCompletion:v21];
  }

  else
  {
    (*(v20 + 2))(v20, 1);
  }
}

- (void)_requestAuthenticationWithCompletion:(id)a3
{
  v3 = a3;
  v5 = objc_alloc_init(SBLockScreenUnlockRequest);
  [(SBLockScreenUnlockRequest *)v5 setSource:10];
  [(SBLockScreenUnlockRequest *)v5 setIntent:2];
  [(SBLockScreenUnlockRequest *)v5 setName:@"SBNCNotificationDispatcherDelegate"];
  [(SBLockScreenUnlockRequest *)v5 setWantsBiometricPresentation:1];
  v4 = +[SBLockScreenManager sharedInstance];
  [v4 unlockWithRequest:v5 completion:v3];
}

- (SBNotificationBannerDestination)bannerDestination
{
  WeakRetained = objc_loadWeakRetained(&self->_bannerDestination);

  return WeakRetained;
}

@end