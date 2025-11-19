@interface SBDashBoardCaptureApplicationTransitionRequest
- (SBDashBoardCaptureApplicationTransitionRequest)initWithCaptureApplication:(id)a3;
- (SBDashBoardCaptureApplicationTransitionRequestDelegate)delegate;
- (id)_errorWithCode:(int64_t)a3 underlyingError:(id)a4;
- (void)_unlock;
- (void)initiate;
@end

@implementation SBDashBoardCaptureApplicationTransitionRequest

- (SBDashBoardCaptureApplicationTransitionRequest)initWithCaptureApplication:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBDashBoardCaptureApplicationTransitionRequest;
  v6 = [(SBDashBoardCaptureApplicationTransitionRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_captureApplication, a3);
  }

  return v7;
}

- (void)initiate
{
  v12 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertMain();
  v3 = SBLogDashBoard();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(SBDashBoardCaptureApplicationTransitionRequest *)self captureApplication];
    v5 = [v4 bundleIdentifier];
    v6 = [(NSSet *)self->_launchActions debugDescription];
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Transition initiated for capture application (%@), launch actions: %@", &v8, 0x16u);
  }

  v7 = [(SBDashBoardCaptureApplicationTransitionRequest *)self delegate];
  [v7 captureApplicationTransitionRequestWillLaunchApplication:self];

  [(SBDashBoardCaptureApplicationTransitionRequest *)self _unlock];
}

- (id)_errorWithCode:(int64_t)a3 underlyingError:(id)a4
{
  v5 = a4;
  v6 = [MEMORY[0x277CBEB38] dictionary];
  v7 = v6;
  if (v5)
  {
    [v6 setObject:v5 forKey:*MEMORY[0x277CCA7E8]];
  }

  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:SBCaptureApplicationTransitionErrorDomain code:a3 userInfo:v7];

  return v8;
}

- (void)_unlock
{
  BSDispatchQueueAssertMain();
  v3 = [(LCSCaptureApplicationDescribing *)self->_captureApplication bundleIdentifier];
  v4 = objc_alloc_init(SBLockScreenUnlockAndLaunchCaptureApplicationRequest);
  [(SBLockScreenUnlockRequest *)v4 setSource:34];
  [(SBLockScreenUnlockRequest *)v4 setIntent:3];
  [(SBLockScreenUnlockRequest *)v4 setName:@"Capture Extension Request"];
  [(SBLockScreenUnlockRequest *)v4 setProcess:0];
  [(SBLockScreenUnlockRequest *)v4 setWantsBiometricPresentation:0];
  [(SBLockScreenUnlockRequest *)v4 setConfirmedNotInPocket:1];
  v5 = [(NSSet *)self->_launchActions copy];
  [(SBLockScreenUnlockAndLaunchCaptureApplicationRequest *)v4 setLaunchActions:v5];

  v6 = +[SBApplicationController sharedInstanceIfExists];
  v7 = [v6 applicationWithBundleIdentifier:v3];

  [(SBLockScreenUnlockRequest *)v4 setDestinationApplication:v7];
  v8 = +[SBLockScreenManager sharedInstance];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__SBDashBoardCaptureApplicationTransitionRequest__unlock__block_invoke;
  v9[3] = &unk_2783A9398;
  v9[4] = self;
  [v8 unlockWithRequest:v4 completion:v9];
}

void __57__SBDashBoardCaptureApplicationTransitionRequest__unlock__block_invoke(uint64_t a1, int a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = SBLogDashBoard();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(*(a1 + 32) + 8) extension];
      v7 = [v6 bundleIdentifier];
      v8 = [*(*(a1 + 32) + 8) bundleIdentifier];
      v15 = 138543618;
      v16 = v7;
      v17 = 2114;
      v18 = v8;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Transitioning from capture extension [%{public}@] to application [%{public}@] succeeded.", &v15, 0x16u);
    }

    v9 = 0;
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __57__SBDashBoardCaptureApplicationTransitionRequest__unlock__block_invoke_cold_1(a1, v5);
    }

    v9 = FBSOpenApplicationErrorCreate();
    v10 = +[SBCaptureApplicationCenter sharedInstance];
    v11 = [*(*(a1 + 32) + 8) bundleIdentifier];
    [v10 suspendCaptureApplication:v11];

    if (v9)
    {
      v12 = [*(a1 + 32) _errorWithCode:2 underlyingError:v9];
      goto LABEL_10;
    }
  }

  v12 = 0;
LABEL_10:
  v13 = [*(a1 + 32) delegate];
  [v13 captureApplicationTransitionRequest:*(a1 + 32) didCompleteWithError:v12];

  v14 = *(*(a1 + 32) + 24);
  if (v14)
  {
    (*(v14 + 16))(v14, v9);
  }
}

- (SBDashBoardCaptureApplicationTransitionRequestDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __57__SBDashBoardCaptureApplicationTransitionRequest__unlock__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = [*(*(a1 + 32) + 8) extension];
  v5 = [v4 bundleIdentifier];
  v6 = [*(*(a1 + 32) + 8) bundleIdentifier];
  v7 = 138543618;
  v8 = v5;
  v9 = 2114;
  v10 = v6;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "Transitioning from capture extension [%{public}@] to application [%{public}@] failed.", &v7, 0x16u);
}

@end