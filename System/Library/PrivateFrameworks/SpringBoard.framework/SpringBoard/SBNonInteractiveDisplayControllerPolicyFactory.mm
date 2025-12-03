@interface SBNonInteractiveDisplayControllerPolicyFactory
- (SBNonInteractiveDisplayControllerPolicyFactory)initWithFBSceneManager:(id)manager monitoredWindowScene:(id)scene applicationController:(id)controller;
- (id)policyForConnectingDisplay:(id)display;
- (void)transformDisplayConfiguration:(id)configuration forControllersWithBuilder:(id)builder;
@end

@implementation SBNonInteractiveDisplayControllerPolicyFactory

- (SBNonInteractiveDisplayControllerPolicyFactory)initWithFBSceneManager:(id)manager monitoredWindowScene:(id)scene applicationController:(id)controller
{
  managerCopy = manager;
  sceneCopy = scene;
  controllerCopy = controller;
  if (managerCopy)
  {
    if (sceneCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    [SBNonInteractiveDisplayControllerPolicyFactory initWithFBSceneManager:a2 monitoredWindowScene:self applicationController:?];
    if (controllerCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  [SBNonInteractiveDisplayControllerPolicyFactory initWithFBSceneManager:a2 monitoredWindowScene:self applicationController:?];
  if (!sceneCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (controllerCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  [SBNonInteractiveDisplayControllerPolicyFactory initWithFBSceneManager:a2 monitoredWindowScene:self applicationController:?];
LABEL_4:
  v16.receiver = self;
  v16.super_class = SBNonInteractiveDisplayControllerPolicyFactory;
  v13 = [(SBNonInteractiveDisplayControllerPolicyFactory *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_fbSceneManager, manager);
    objc_storeStrong(&v14->_monitoredWindowScene, scene);
    objc_storeStrong(&v14->_applicationController, controller);
  }

  return v14;
}

- (id)policyForConnectingDisplay:(id)display
{
  v3 = [[SBNonInteractiveDisplayControllerPolicy alloc] initWithFBSceneManager:self->_fbSceneManager monitoredWindowScene:self->_monitoredWindowScene applicationController:self->_applicationController];

  return v3;
}

- (void)transformDisplayConfiguration:(id)configuration forControllersWithBuilder:(id)builder
{
  builderCopy = builder;
  identity = [configuration identity];
  isRestrictedAirPlayDisplay = [identity isRestrictedAirPlayDisplay];

  if (isRestrictedAirPlayDisplay)
  {
    v7 = @"com.apple.springboard.noninteractive.PA2D";
  }

  else
  {
    v7 = @"com.apple.springboard.noninteractive";
  }

  [builderCopy setUniqueIdentifier:v7];
  [builderCopy setCloningSupported:isRestrictedAirPlayDisplay ^ 1u];
}

- (void)initWithFBSceneManager:(uint64_t)a1 monitoredWindowScene:(uint64_t)a2 applicationController:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBNonInteractiveDisplayControllerPolicyFactory.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"fbSceneManager"}];
}

- (void)initWithFBSceneManager:(uint64_t)a1 monitoredWindowScene:(uint64_t)a2 applicationController:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBNonInteractiveDisplayControllerPolicyFactory.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"monitoredWindowScene"}];
}

- (void)initWithFBSceneManager:(uint64_t)a1 monitoredWindowScene:(uint64_t)a2 applicationController:.cold.3(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBNonInteractiveDisplayControllerPolicyFactory.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"applicationController"}];
}

@end