@interface SBNonInteractiveDisplayModeResolverFactory
- (SBNonInteractiveDisplayModeResolverFactory)initWithApplicationController:(id)a3 userAuthenticationProvider:(id)a4 monitoredWindowScene:(id)a5;
- (id)resolverForPhysicalDisplay:(id)a3;
@end

@implementation SBNonInteractiveDisplayModeResolverFactory

- (SBNonInteractiveDisplayModeResolverFactory)initWithApplicationController:(id)a3 userAuthenticationProvider:(id)a4 monitoredWindowScene:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_8:
    [SBNonInteractiveDisplayModeResolverFactory initWithApplicationController:userAuthenticationProvider:monitoredWindowScene:];
    if (v11)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  [SBNonInteractiveDisplayModeResolverFactory initWithApplicationController:userAuthenticationProvider:monitoredWindowScene:];
  if (!v10)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v11)
  {
    goto LABEL_4;
  }

LABEL_9:
  [SBNonInteractiveDisplayModeResolverFactory initWithApplicationController:userAuthenticationProvider:monitoredWindowScene:];
LABEL_4:
  v15.receiver = self;
  v15.super_class = SBNonInteractiveDisplayModeResolverFactory;
  v12 = [(SBNonInteractiveDisplayModeResolverFactory *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_applicationController, a3);
    objc_storeStrong(&v13->_userAuthenticationProvider, a4);
    objc_storeStrong(&v13->_monitoredWindowScene, a5);
  }

  return v13;
}

- (id)resolverForPhysicalDisplay:(id)a3
{
  v4 = [a3 identity];
  if (([v4 isRootIdentity] & 1) == 0)
  {
    [SBNonInteractiveDisplayModeResolverFactory resolverForPhysicalDisplay:];
  }

  if ([v4 sb_physicalDisplaySupportingNonInteractiveDisplayMode])
  {
    v5 = [[SBNonInteractiveDisplayModeResolver alloc] initWithRootDisplay:v4 applicationController:self->_applicationController userAuthenticationProvider:self->_userAuthenticationProvider monitoredWindowScene:self->_monitoredWindowScene];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)initWithApplicationController:userAuthenticationProvider:monitoredWindowScene:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"applicationController" object:? file:? lineNumber:? description:?];
}

- (void)initWithApplicationController:userAuthenticationProvider:monitoredWindowScene:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"userAuthenticationProvider" object:? file:? lineNumber:? description:?];
}

- (void)initWithApplicationController:userAuthenticationProvider:monitoredWindowScene:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"monitoredWindowScene" object:? file:? lineNumber:? description:?];
}

- (void)resolverForPhysicalDisplay:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"[rootDisplayIdentity isRootIdentity]" object:? file:? lineNumber:? description:?];
}

@end