@interface SBPrivacyPreflightController
- (SBPrivacyPreflightController)init;
- (void)preflightLaunchForApplication:(id)a3 sceneIdentifier:(id)a4 withCompletionHandler:(id)a5;
@end

@implementation SBPrivacyPreflightController

- (SBPrivacyPreflightController)init
{
  v9.receiver = self;
  v9.super_class = SBPrivacyPreflightController;
  v2 = [(SBPrivacyPreflightController *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277D412D0]);
    v4 = [v3 initWithTargetQueue:MEMORY[0x277D85CD0]];
    privacyPreflightManager = v2->_privacyPreflightManager;
    v2->_privacyPreflightManager = v4;

    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    applicationPreflightControllers = v2->_applicationPreflightControllers;
    v2->_applicationPreflightControllers = v6;
  }

  return v2;
}

- (void)preflightLaunchForApplication:(id)a3 sceneIdentifier:(id)a4 withCompletionHandler:(id)a5
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  if (v12)
  {
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_10:
    [SBPrivacyPreflightController preflightLaunchForApplication:a2 sceneIdentifier:self withCompletionHandler:?];
    if (v10)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  [SBPrivacyPreflightController preflightLaunchForApplication:a2 sceneIdentifier:self withCompletionHandler:?];
  if (!v9)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v10)
  {
    goto LABEL_4;
  }

LABEL_11:
  [SBPrivacyPreflightController preflightLaunchForApplication:a2 sceneIdentifier:self withCompletionHandler:?];
LABEL_4:
  v11 = [(NSMutableDictionary *)self->_applicationPreflightControllers objectForKey:?];
  if (!v11)
  {
    v11 = [[SBApplicationPrivacyPreflightController alloc] initWithPreflightManager:self->_privacyPreflightManager applicationIdentity:v12];
    [(NSMutableDictionary *)self->_applicationPreflightControllers setObject:v11 forKey:v12];
  }

  [(SBApplicationPrivacyPreflightController *)v11 addPendingCompletion:v10 forSceneIdentifier:v9];
}

- (void)preflightLaunchForApplication:(uint64_t)a1 sceneIdentifier:(uint64_t)a2 withCompletionHandler:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBPrivacyPreflightController.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"application"}];
}

- (void)preflightLaunchForApplication:(uint64_t)a1 sceneIdentifier:(uint64_t)a2 withCompletionHandler:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBPrivacyPreflightController.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"sceneIdentifier"}];
}

- (void)preflightLaunchForApplication:(uint64_t)a1 sceneIdentifier:(uint64_t)a2 withCompletionHandler:.cold.3(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBPrivacyPreflightController.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
}

@end