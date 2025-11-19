@interface SBUIHostProxyHostComponent
- (void)scene:(id)a3 didUpdateClientSettings:(id)a4;
- (void)scene:(id)a3 willUpdateSettings:(id)a4;
- (void)sceneDidInvalidate:(id)a3 withContext:(id)a4;
- (void)setScene:(id)a3;
@end

@implementation SBUIHostProxyHostComponent

- (void)setScene:(id)a3
{
  v8.receiver = self;
  v8.super_class = SBUIHostProxyHostComponent;
  [(FBSSceneComponent *)&v8 setScene:a3];
  v4 = +[SBUIAccessorySceneManager sharedInstance];
  v5 = [(FBSSceneComponent *)self hostScene];
  v6 = [v4 registerPrimaryScene:v5];
  sceneRegistration = self->_sceneRegistration;
  self->_sceneRegistration = v6;
}

- (void)scene:(id)a3 willUpdateSettings:(id)a4
{
  v14 = a3;
  v5 = a4;
  v6 = [v5 settings];
  v7 = [v6 displayConfiguration];

  v8 = [v5 previousSettings];

  v9 = [v8 displayConfiguration];

  if (v7 != v9)
  {
    v10 = [v14 _keyboardHostComponent];
    v11 = [v7 hardwareIdentifier];
    [v10 setHardwareKeyboardExclusivityIdentifier:v11];

    v12 = [v14 systemShellHostingEnvironment];
    v13 = SBUISystemShellHostingSpaceIdentifierForDisplayConfiguration(v7);
    [v12 setSystemShellHostingSpaceIdentifier:v13];
  }
}

- (void)sceneDidInvalidate:(id)a3 withContext:(id)a4
{
  [(BSInvalidatable *)self->_sceneRegistration invalidate:a3];
  sceneRegistration = self->_sceneRegistration;
  self->_sceneRegistration = 0;
}

- (void)scene:(id)a3 didUpdateClientSettings:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = [v5 uiSettings];
    if (!v7)
    {
LABEL_9:

      goto LABEL_10;
    }

    v8 = [v5 clientSettings];
    v9 = [v8 hostProxyUserInterfaceStyle];

    v10 = [v5 clientSettings];
    v11 = [v10 hostProxyEnhancedWindowingEnabled];

    v12 = [v5 clientSettings];
    v13 = [v12 hostProxySceneRenderingEnvironmentIdentifier];

    v14 = [v5 clientSettings];
    v15 = [v14 hostProxyIsCapturingContentForAdditionalRenderingDestination];

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __60__SBUIHostProxyHostComponent_scene_didUpdateClientSettings___block_invoke;
    v25[3] = &unk_1E789FA50;
    v28 = v9;
    v29 = v11;
    v16 = v5;
    v26 = v16;
    v17 = v13;
    v27 = v17;
    v30 = v15;
    v18 = MEMORY[0x1AC58E960](v25);
    if ([v16 isActive])
    {
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __60__SBUIHostProxyHostComponent_scene_didUpdateClientSettings___block_invoke_2;
      v22[3] = &unk_1E789EB80;
      v19 = &v24;
      v24 = v18;
      v23 = v6;
      [v16 performUpdate:v22];
    }

    else
    {
      if ([v7 userInterfaceStyle] == v9)
      {
LABEL_8:

        goto LABEL_9;
      }

      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __60__SBUIHostProxyHostComponent_scene_didUpdateClientSettings___block_invoke_3;
      v20[3] = &unk_1E789EBA8;
      v19 = &v21;
      v21 = v18;
      [v16 updateSettings:v20];
    }

    goto LABEL_8;
  }

LABEL_10:
}

void __60__SBUIHostProxyHostComponent_scene_didUpdateClientSettings___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = a2;
  [v4 setUserInterfaceStyle:v3];
  [v4 setEnhancedWindowingEnabled:*(a1 + 56)];

  v5 = [*(a1 + 32) renderingEnvironment];
  [v5 setSystemDisplayIdentifier:*(a1 + 40)];

  v6 = [*(a1 + 32) settings];
  v7 = [v6 displayIdentity];
  v8 = [v7 isContinuityDisplay];

  if (v8)
  {
    v9 = [*(a1 + 32) renderingEnvironment];
    [v9 setIsCapturingContentForAdditionalRenderingDestination:*(a1 + 57)];
  }
}

void __60__SBUIHostProxyHostComponent_scene_didUpdateClientSettings___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  (*(*(a1 + 40) + 16))();
  v4 = [*(a1 + 32) transitionContext];
  v5 = [v4 animationSettings];
  if (v5)
  {
    [v7 setAnimationSettings:v5];
  }

  v6 = [v4 animationFence];
  if (v6)
  {
    [v7 setAnimationFence:v6];
  }
}

@end