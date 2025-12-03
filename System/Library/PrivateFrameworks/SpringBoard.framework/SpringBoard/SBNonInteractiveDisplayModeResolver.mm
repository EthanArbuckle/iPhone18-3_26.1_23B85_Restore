@interface SBNonInteractiveDisplayModeResolver
- (SBDisplayWindowingModeResolverDelegate)delegate;
- (SBNonInteractiveDisplayModeResolver)initWithRootDisplay:(id)display applicationController:(id)controller userAuthenticationProvider:(id)provider monitoredWindowScene:(id)scene;
- (void)_appProcessStateDidChange:(id)change;
- (void)_authenicationStateDidChange:(id)change;
- (void)_evaluateAndNotifyOfStateChanges;
@end

@implementation SBNonInteractiveDisplayModeResolver

- (SBNonInteractiveDisplayModeResolver)initWithRootDisplay:(id)display applicationController:(id)controller userAuthenticationProvider:(id)provider monitoredWindowScene:(id)scene
{
  displayCopy = display;
  controllerCopy = controller;
  providerCopy = provider;
  sceneCopy = scene;
  if ([displayCopy isRootIdentity])
  {
    if (controllerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBNonInteractiveDisplayModeResolver initWithRootDisplay:applicationController:userAuthenticationProvider:monitoredWindowScene:];
    if (controllerCopy)
    {
LABEL_3:
      if (providerCopy)
      {
        goto LABEL_4;
      }

LABEL_14:
      [SBNonInteractiveDisplayModeResolver initWithRootDisplay:applicationController:userAuthenticationProvider:monitoredWindowScene:];
      if (sceneCopy)
      {
        goto LABEL_5;
      }

      goto LABEL_15;
    }
  }

  [SBNonInteractiveDisplayModeResolver initWithRootDisplay:applicationController:userAuthenticationProvider:monitoredWindowScene:];
  if (!providerCopy)
  {
    goto LABEL_14;
  }

LABEL_4:
  if (sceneCopy)
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
    objc_storeStrong(&v15->_rootDisplayIdentity, display);
    objc_storeStrong(&v16->_applicationController, controller);
    objc_storeStrong(&v16->_userAuthenticationProvider, provider);
    objc_storeStrong(&v16->_monitoredWindowScene, scene);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    if ([(FBSDisplayIdentity *)v16->_rootDisplayIdentity _sb_requiresUserAuthenticationFirst])
    {
      [defaultCenter addObserver:v16 selector:sel__authenicationStateDidChange_ name:*MEMORY[0x277D66078] object:0];
    }

    if ([(FBSDisplayIdentity *)v16->_rootDisplayIdentity _sb_requiresAppRunningFirst])
    {
      [defaultCenter addObserver:v16 selector:sel__appProcessStateDidChange_ name:@"SBApplicationProcessStateDidChange" object:0];
    }

    [(SBNonInteractiveDisplayModeResolver *)v16 _evaluateAndNotifyOfStateChanges];
  }

  return v16;
}

- (void)_authenicationStateDidChange:(id)change
{
  if ([(SBFAuthenticationStatusProvider *)self->_userAuthenticationProvider isAuthenticated])
  {

    [(SBNonInteractiveDisplayModeResolver *)self _evaluateAndNotifyOfStateChanges];
  }
}

- (void)_appProcessStateDidChange:(id)change
{
  changeCopy = change;
  object = [changeCopy object];
  processState = [object processState];
  userInfo = [changeCopy userInfo];

  v7 = [userInfo objectForKey:@"previousProcessState"];

  LODWORD(userInfo) = [processState isRunning];
  if (userInfo != [v7 isRunning])
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
  switcherController = [(SBWindowScene *)self->_monitoredWindowScene switcherController];
  v5 = [(FBSDisplayIdentity *)rootDisplayIdentity _sb_nonInteractiveAvailableWithSwitcher:switcherController applicationController:self->_applicationController authenticationState:self->_haveAuthenticatedOnce];

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