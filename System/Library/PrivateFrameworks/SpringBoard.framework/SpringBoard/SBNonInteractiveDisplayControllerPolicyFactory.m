@interface SBNonInteractiveDisplayControllerPolicyFactory
- (SBNonInteractiveDisplayControllerPolicyFactory)initWithFBSceneManager:(id)a3 monitoredWindowScene:(id)a4 applicationController:(id)a5;
- (id)policyForConnectingDisplay:(id)a3;
- (void)transformDisplayConfiguration:(id)a3 forControllersWithBuilder:(id)a4;
@end

@implementation SBNonInteractiveDisplayControllerPolicyFactory

- (SBNonInteractiveDisplayControllerPolicyFactory)initWithFBSceneManager:(id)a3 monitoredWindowScene:(id)a4 applicationController:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_8:
    [SBNonInteractiveDisplayControllerPolicyFactory initWithFBSceneManager:a2 monitoredWindowScene:self applicationController:?];
    if (v12)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  [SBNonInteractiveDisplayControllerPolicyFactory initWithFBSceneManager:a2 monitoredWindowScene:self applicationController:?];
  if (!v11)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v12)
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
    objc_storeStrong(&v13->_fbSceneManager, a3);
    objc_storeStrong(&v14->_monitoredWindowScene, a4);
    objc_storeStrong(&v14->_applicationController, a5);
  }

  return v14;
}

- (id)policyForConnectingDisplay:(id)a3
{
  v3 = [[SBNonInteractiveDisplayControllerPolicy alloc] initWithFBSceneManager:self->_fbSceneManager monitoredWindowScene:self->_monitoredWindowScene applicationController:self->_applicationController];

  return v3;
}

- (void)transformDisplayConfiguration:(id)a3 forControllersWithBuilder:(id)a4
{
  v8 = a4;
  v5 = [a3 identity];
  v6 = [v5 isRestrictedAirPlayDisplay];

  if (v6)
  {
    v7 = @"com.apple.springboard.noninteractive.PA2D";
  }

  else
  {
    v7 = @"com.apple.springboard.noninteractive";
  }

  [v8 setUniqueIdentifier:v7];
  [v8 setCloningSupported:v6 ^ 1u];
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