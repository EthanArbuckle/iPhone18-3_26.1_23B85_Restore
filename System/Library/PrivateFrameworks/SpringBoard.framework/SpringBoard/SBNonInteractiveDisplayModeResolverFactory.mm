@interface SBNonInteractiveDisplayModeResolverFactory
- (SBNonInteractiveDisplayModeResolverFactory)initWithApplicationController:(id)controller userAuthenticationProvider:(id)provider monitoredWindowScene:(id)scene;
- (id)resolverForPhysicalDisplay:(id)display;
@end

@implementation SBNonInteractiveDisplayModeResolverFactory

- (SBNonInteractiveDisplayModeResolverFactory)initWithApplicationController:(id)controller userAuthenticationProvider:(id)provider monitoredWindowScene:(id)scene
{
  controllerCopy = controller;
  providerCopy = provider;
  sceneCopy = scene;
  if (controllerCopy)
  {
    if (providerCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    [SBNonInteractiveDisplayModeResolverFactory initWithApplicationController:userAuthenticationProvider:monitoredWindowScene:];
    if (sceneCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  [SBNonInteractiveDisplayModeResolverFactory initWithApplicationController:userAuthenticationProvider:monitoredWindowScene:];
  if (!providerCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (sceneCopy)
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
    objc_storeStrong(&v12->_applicationController, controller);
    objc_storeStrong(&v13->_userAuthenticationProvider, provider);
    objc_storeStrong(&v13->_monitoredWindowScene, scene);
  }

  return v13;
}

- (id)resolverForPhysicalDisplay:(id)display
{
  identity = [display identity];
  if (([identity isRootIdentity] & 1) == 0)
  {
    [SBNonInteractiveDisplayModeResolverFactory resolverForPhysicalDisplay:];
  }

  if ([identity sb_physicalDisplaySupportingNonInteractiveDisplayMode])
  {
    v5 = [[SBNonInteractiveDisplayModeResolver alloc] initWithRootDisplay:identity applicationController:self->_applicationController userAuthenticationProvider:self->_userAuthenticationProvider monitoredWindowScene:self->_monitoredWindowScene];
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