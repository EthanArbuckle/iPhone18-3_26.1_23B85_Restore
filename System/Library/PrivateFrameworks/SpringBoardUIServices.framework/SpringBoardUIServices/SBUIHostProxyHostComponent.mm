@interface SBUIHostProxyHostComponent
- (void)scene:(id)scene didUpdateClientSettings:(id)settings;
- (void)scene:(id)scene willUpdateSettings:(id)settings;
- (void)sceneDidInvalidate:(id)invalidate withContext:(id)context;
- (void)setScene:(id)scene;
@end

@implementation SBUIHostProxyHostComponent

- (void)setScene:(id)scene
{
  v8.receiver = self;
  v8.super_class = SBUIHostProxyHostComponent;
  [(FBSSceneComponent *)&v8 setScene:scene];
  v4 = +[SBUIAccessorySceneManager sharedInstance];
  hostScene = [(FBSSceneComponent *)self hostScene];
  v6 = [v4 registerPrimaryScene:hostScene];
  sceneRegistration = self->_sceneRegistration;
  self->_sceneRegistration = v6;
}

- (void)scene:(id)scene willUpdateSettings:(id)settings
{
  sceneCopy = scene;
  settingsCopy = settings;
  settings = [settingsCopy settings];
  displayConfiguration = [settings displayConfiguration];

  previousSettings = [settingsCopy previousSettings];

  displayConfiguration2 = [previousSettings displayConfiguration];

  if (displayConfiguration != displayConfiguration2)
  {
    _keyboardHostComponent = [sceneCopy _keyboardHostComponent];
    hardwareIdentifier = [displayConfiguration hardwareIdentifier];
    [_keyboardHostComponent setHardwareKeyboardExclusivityIdentifier:hardwareIdentifier];

    systemShellHostingEnvironment = [sceneCopy systemShellHostingEnvironment];
    v13 = SBUISystemShellHostingSpaceIdentifierForDisplayConfiguration(displayConfiguration);
    [systemShellHostingEnvironment setSystemShellHostingSpaceIdentifier:v13];
  }
}

- (void)sceneDidInvalidate:(id)invalidate withContext:(id)context
{
  [(BSInvalidatable *)self->_sceneRegistration invalidate:invalidate];
  sceneRegistration = self->_sceneRegistration;
  self->_sceneRegistration = 0;
}

- (void)scene:(id)scene didUpdateClientSettings:(id)settings
{
  sceneCopy = scene;
  settingsCopy = settings;
  if (sceneCopy)
  {
    uiSettings = [sceneCopy uiSettings];
    if (!uiSettings)
    {
LABEL_9:

      goto LABEL_10;
    }

    clientSettings = [sceneCopy clientSettings];
    hostProxyUserInterfaceStyle = [clientSettings hostProxyUserInterfaceStyle];

    clientSettings2 = [sceneCopy clientSettings];
    hostProxyEnhancedWindowingEnabled = [clientSettings2 hostProxyEnhancedWindowingEnabled];

    clientSettings3 = [sceneCopy clientSettings];
    hostProxySceneRenderingEnvironmentIdentifier = [clientSettings3 hostProxySceneRenderingEnvironmentIdentifier];

    clientSettings4 = [sceneCopy clientSettings];
    hostProxyIsCapturingContentForAdditionalRenderingDestination = [clientSettings4 hostProxyIsCapturingContentForAdditionalRenderingDestination];

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __60__SBUIHostProxyHostComponent_scene_didUpdateClientSettings___block_invoke;
    v25[3] = &unk_1E789FA50;
    v28 = hostProxyUserInterfaceStyle;
    v29 = hostProxyEnhancedWindowingEnabled;
    v16 = sceneCopy;
    v26 = v16;
    v17 = hostProxySceneRenderingEnvironmentIdentifier;
    v27 = v17;
    v30 = hostProxyIsCapturingContentForAdditionalRenderingDestination;
    v18 = MEMORY[0x1AC58E960](v25);
    if ([v16 isActive])
    {
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __60__SBUIHostProxyHostComponent_scene_didUpdateClientSettings___block_invoke_2;
      v22[3] = &unk_1E789EB80;
      v19 = &v24;
      v24 = v18;
      v23 = settingsCopy;
      [v16 performUpdate:v22];
    }

    else
    {
      if ([uiSettings userInterfaceStyle] == hostProxyUserInterfaceStyle)
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