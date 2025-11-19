@interface SBNonInteractiveDisplayModeResolver
- (SBDisplayWindowingModeResolverDelegate)delegate;
- (SBNonInteractiveDisplayModeResolver)initWithRootDisplay:(id)a3 applicationController:(id)a4 userAuthenticationProvider:(id)a5 monitoredWindowScene:(id)a6;
- (void)_appProcessStateDidChange:(id)a3;
- (void)_authenicationStateDidChange:(id)a3;
- (void)_evaluateAndNotifyOfStateChanges;
@end

@implementation SBNonInteractiveDisplayModeResolver

- (SBNonInteractiveDisplayModeResolver)initWithRootDisplay:(id)a3 applicationController:(id)a4 userAuthenticationProvider:(id)a5 monitoredWindowScene:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if ([v11 isRootIdentity])
  {
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBNonInteractiveDisplayModeResolver initWithRootDisplay:applicationController:userAuthenticationProvider:monitoredWindowScene:];
    if (v12)
    {
LABEL_3:
      if (v13)
      {
        goto LABEL_4;
      }

LABEL_14:
      [SBNonInteractiveDisplayModeResolver initWithRootDisplay:applicationController:userAuthenticationProvider:monitoredWindowScene:];
      if (v14)
      {
        goto LABEL_5;
      }

      goto LABEL_15;
    }
  }

  [SBNonInteractiveDisplayModeResolver initWithRootDisplay:applicationController:userAuthenticationProvider:monitoredWindowScene:];
  if (!v13)
  {
    goto LABEL_14;
  }

LABEL_4:
  if (v14)
  {
    goto LABEL_5;
  }

LABEL_15:
  [SBNonInteractiveDisplayModeResolver initWithRootDisplay:applicationController:userAuthenticationProvider:monitoredWindowScene:];
LABEL_5:
  v19.receiver = self;
  v19.super_class = SBNonInteractiveDisplayModeResolver;
  v15 = [(SBNonInteractiveDisplayModeResolver *)&v19 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_rootDisplayIdentity, a3);
    objc_storeStrong(&v16->_applicationController, a4);
    objc_storeStrong(&v16->_userAuthenticationProvider, a5);
    objc_storeStrong(&v16->_monitoredWindowScene, a6);
    v17 = [MEMORY[0x277CCAB98] defaultCenter];
    if ([(FBSDisplayIdentity *)v16->_rootDisplayIdentity _sb_requiresUserAuthenticationFirst])
    {
      [v17 addObserver:v16 selector:sel__authenicationStateDidChange_ name:*MEMORY[0x277D66078] object:0];
    }

    if ([(FBSDisplayIdentity *)v16->_rootDisplayIdentity _sb_requiresAppRunningFirst])
    {
      [v17 addObserver:v16 selector:sel__appProcessStateDidChange_ name:@"SBApplicationProcessStateDidChange" object:0];
    }

    [(SBNonInteractiveDisplayModeResolver *)v16 _evaluateAndNotifyOfStateChanges];
  }

  return v16;
}

- (void)_authenicationStateDidChange:(id)a3
{
  if ([(SBFAuthenticationStatusProvider *)self->_userAuthenticationProvider isAuthenticated])
  {

    [(SBNonInteractiveDisplayModeResolver *)self _evaluateAndNotifyOfStateChanges];
  }
}

- (void)_appProcessStateDidChange:(id)a3
{
  v4 = a3;
  v8 = [v4 object];
  v5 = [v8 processState];
  v6 = [v4 userInfo];

  v7 = [v6 objectForKey:@"previousProcessState"];

  LODWORD(v6) = [v5 isRunning];
  if (v6 != [v7 isRunning])
  {
    [(SBNonInteractiveDisplayModeResolver *)self _evaluateAndNotifyOfStateChanges];
  }
}

- (void)_evaluateAndNotifyOfStateChanges
{
  v13 = *MEMORY[0x277D85DE8];
  if (!self->_haveAuthenticatedOnce)
  {
    self->_haveAuthenticatedOnce = [(SBFAuthenticationStatusProvider *)self->_userAuthenticationProvider isAuthenticated];
  }

  rootDisplayIdentity = self->_rootDisplayIdentity;
  v4 = [(SBWindowScene *)self->_monitoredWindowScene switcherController];
  v5 = [(FBSDisplayIdentity *)rootDisplayIdentity _sb_nonInteractiveAvailableWithSwitcher:v4 applicationController:self->_applicationController authenticationState:self->_haveAuthenticatedOnce];

  if (self->_nonInteractiveModeAvailableOnPhysicalDisplay != v5)
  {
    self->_nonInteractiveModeAvailableOnPhysicalDisplay = v5;
    v6 = SBLogDisplayControlling();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = self->_rootDisplayIdentity;
      v9 = 138543618;
      v10 = v7;
      v11 = 1024;
      v12 = v5;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "change in availability for root display: %{public}@; available: %{BOOL}u", &v9, 0x12u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained resolver:self rootDisplay:? didUpdateAvailability:?];
  }
}

- (SBDisplayWindowingModeResolverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithRootDisplay:applicationController:userAuthenticationProvider:monitoredWindowScene:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"[rootDisplayIdentity isRootIdentity]" object:? file:? lineNumber:? description:?];
}

- (void)initWithRootDisplay:applicationController:userAuthenticationProvider:monitoredWindowScene:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"applicationController" object:? file:? lineNumber:? description:?];
}

- (void)initWithRootDisplay:applicationController:userAuthenticationProvider:monitoredWindowScene:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"userAuthenticationProvider" object:? file:? lineNumber:? description:?];
}

- (void)initWithRootDisplay:applicationController:userAuthenticationProvider:monitoredWindowScene:.cold.4()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"monitoredWindowScene" object:? file:? lineNumber:? description:?];
}

@end