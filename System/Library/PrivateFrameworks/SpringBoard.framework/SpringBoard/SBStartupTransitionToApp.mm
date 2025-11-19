@interface SBStartupTransitionToApp
- (void)performTransitionWithCompletionBlock:(id)a3;
@end

@implementation SBStartupTransitionToApp

- (void)performTransitionWithCompletionBlock:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(SBStartupTransitionToApp *)a2 performTransitionWithCompletionBlock:?];
  }

  v6 = [(SBBaseStartupTransition *)self context];
  v7 = [v6 applicationLaunchURL];
  if (!v7)
  {
    [(SBStartupTransitionToApp *)a2 performTransitionWithCompletionBlock:?];
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__SBStartupTransitionToApp_performTransitionWithCompletionBlock___block_invoke;
  v10[3] = &unk_2783AB410;
  v11 = v6;
  v12 = v5;
  v8 = v5;
  v9 = v6;
  SBWorkspaceActivateApplicationFromURL(v7, 0, v10);
}

void __65__SBStartupTransitionToApp_performTransitionWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setSource:31];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__SBStartupTransitionToApp_performTransitionWithCompletionBlock___block_invoke_2;
  v7[3] = &unk_2783A98C8;
  v8 = *(a1 + 32);
  [v3 modifyApplicationContext:v7];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __65__SBStartupTransitionToApp_performTransitionWithCompletionBlock___block_invoke_12;
  v4[3] = &unk_2783B8D68;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  [v3 setTransactionConfigurator:v4];
}

void __65__SBStartupTransitionToApp_performTransitionWithCompletionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 activatingEntity];
  v5 = [v4 deviceApplicationSceneEntity];

  if (v5)
  {
    v6 = [v5 sceneHandle];
    v7 = [v6 activationInterfaceOrientationForOrientation:0];

    [v3 setInterfaceOrientation:v7];
  }

  v8 = [v3 applicationSceneEntityForLayoutRole:1];
  v9 = [v8 application];

  v10 = [[SBDeviceApplicationSceneEntity alloc] initWithApplicationForMainDisplay:v9];
  v11 = [*(a1 + 32) overlay];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 interfaceOrientation];
    v14 = [(SBApplicationSceneEntity *)v10 sceneHandle];
    v15 = [v14 activationInterfaceOrientationForOrientation:v13];

    if (v13)
    {
      if (v15 == v13 && v13 == [*MEMORY[0x277D76620] activeInterfaceOrientation])
      {
        [v3 setInterfaceOrientation:v13];
        v16 = SBLogWorkspace();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17[0] = 67109378;
          v17[1] = v13;
          v18 = 2112;
          v19 = v10;
          _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_INFO, "Setting interface orientation for app at launch to %d for %@", v17, 0x12u);
        }
      }
    }
  }

  [(SBWorkspaceEntity *)v10 setFlag:1 forActivationSetting:7];
  [v3 setEntity:v10 forLayoutRole:1];
}

void __65__SBStartupTransitionToApp_performTransitionWithCompletionBlock___block_invoke_12(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CF0B70] settingsWithDuration:0.5];
  v5 = [*(a1 + 32) overlay];

  if (v5)
  {
    v6 = [SBUIStartupFromOverlayAnimationController alloc];
    v7 = [v3 transitionRequest];
    v8 = [*(a1 + 32) overlay];
    v9 = [(SBUIStartupFromOverlayAnimationController *)v6 initWithTransitionContextProvider:v7 overlay:v8];
  }

  else
  {
    v10 = [SBUIStartupFromBlackAnimationController alloc];
    v7 = [v3 transitionRequest];
    v9 = [(SBUIStartupFromBlackAnimationController *)v10 initWithTransitionContextProvider:v7];
  }

  [(SBUIStartupFromOverlayAnimationController *)v9 setWaitsForAppActivation:1];
  [(SBUIStartupFromOverlayAnimationController *)v9 setAnimationSettings:v4];
  [v3 setSuggestedAnimationController:v9];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__SBStartupTransitionToApp_performTransitionWithCompletionBlock___block_invoke_2_16;
  v11[3] = &unk_2783A9C70;
  v12 = *(a1 + 40);
  [v3 setCompletionBlock:v11];
}

- (void)performTransitionWithCompletionBlock:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBStartupTransitionToApp.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"completionBlock"}];
}

- (void)performTransitionWithCompletionBlock:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBStartupTransitionToApp.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"applicationLaunchURL"}];
}

@end