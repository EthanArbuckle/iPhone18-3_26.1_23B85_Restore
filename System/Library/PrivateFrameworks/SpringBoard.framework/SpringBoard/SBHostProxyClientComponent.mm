@interface SBHostProxyClientComponent
- (void)_setSceneRenderingEnvironmentParticipant:(id)participant;
- (void)_windowManagementStyleDidChange:(id)change;
- (void)continuitySessionDidUpdateScreenRecordingState:(id)state;
- (void)invalidate;
- (void)scene:(id)scene didUpdateSettings:(id)settings;
- (void)sceneManager:(id)manager didUpdateUserInterfaceStyle:(int64_t)style withAnimationSettings:(id)settings fence:(id)fence;
- (void)sceneWillInvalidate:(id)invalidate;
- (void)setScene:(id)scene;
@end

@implementation SBHostProxyClientComponent

- (void)setScene:(id)scene
{
  v12.receiver = self;
  v12.super_class = SBHostProxyClientComponent;
  sceneCopy = scene;
  [(FBSSceneComponent *)&v12 setScene:sceneCopy];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__SBHostProxyClientComponent_setScene___block_invoke;
  block[3] = &unk_2783A8BC8;
  block[4] = self;
  block[5] = a2;
  dispatch_async(MEMORY[0x277D85CD0], block);
  settings = [sceneCopy settings];

  displayIdentity = [settings displayIdentity];
  LODWORD(sceneCopy) = [displayIdentity isContinuityDisplay];

  if (sceneCopy)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __39__SBHostProxyClientComponent_setScene___block_invoke_2;
    v10[3] = &unk_2783BF900;
    v10[4] = self;
    v8 = [MEMORY[0x277CF3290] injectorWithConfigurator:v10];
    openAppInstanceInjector = self->_openAppInstanceInjector;
    self->_openAppInstanceInjector = v8;
  }
}

void __39__SBHostProxyClientComponent_setScene___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  if ([*(a1 + 32) isValid])
  {
    v3 = +[SBSceneManagerCoordinator sharedInstance];
    v4 = [*v2 scene];
    v5 = [v4 settings];
    v6 = [v5 displayIdentity];
    v7 = [v3 sceneManagerForDisplayIdentity:v6];
    v8 = *(*v2 + 3);
    *(*v2 + 3) = v7;

    [*(*v2 + 3) addUserInterfaceStyleObserver:?];
    [*v2 sceneManager:*(*v2 + 3) didUpdateUserInterfaceStyle:objc_msgSend(*(*v2 + 3) withAnimationSettings:"userInterfaceStyle") fence:{0, 0}];
    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    [v9 addObserver:*v2 selector:sel__windowManagementStyleDidChange_ name:@"SBSwitcherControllerWindowManagementStyleDidChangeNotification" object:0];

    v17 = [SBApp sceneRenderingEnvironmentManager];
    if (!v17)
    {
      __39__SBHostProxyClientComponent_setScene___block_invoke_cold_1(a1, v2);
    }

    v10 = *v2;
    v11 = [*v2 scene];
    v12 = [v11 loggingIdentifier];
    v13 = [*v2 scene];
    v14 = [v13 settings];
    v15 = [v14 displayConfiguration];
    v16 = [v17 registerParticipantForSceneWithIdentifier:v12 displayConfiguration:v15];
    [v10 _setSceneRenderingEnvironmentParticipant:v16];
  }
}

void __39__SBHostProxyClientComponent_setScene___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D47008];
  v10 = a2;
  v4 = getpid();
  v5 = [*(a1 + 32) clientScene];
  v6 = [v5 identityToken];
  v7 = _UIVisibilityEnvironmentForSceneIdentityToken();
  v8 = [v3 targetWithPid:v4 environmentIdentifier:v7];
  [v10 setTarget:v8];

  [v10 setDomain:@"com.apple.frontboard"];
  v9 = [MEMORY[0x277D0AD78] serviceName];
  [v10 setService:v9];

  [v10 setInstance:*MEMORY[0x277D66EF8]];
}

- (void)invalidate
{
  sceneManager = self->_sceneManager;
  if (sceneManager)
  {
    [(SBSceneManager *)sceneManager removeUserInterfaceStyleObserver:self];
    v4 = self->_sceneManager;
    self->_sceneManager = 0;
  }

  [(BSServiceConnectionEndpointInjector *)self->_openAppInstanceInjector invalidate];
  v5.receiver = self;
  v5.super_class = SBHostProxyClientComponent;
  [(FBSSceneComponent *)&v5 invalidate];
}

- (void)_setSceneRenderingEnvironmentParticipant:(id)participant
{
  participantCopy = participant;
  sceneRenderingEnvironmentParticipant = self->_sceneRenderingEnvironmentParticipant;
  if (sceneRenderingEnvironmentParticipant != participantCopy)
  {
    [(SBSceneRenderingEnvironmentParticipant *)sceneRenderingEnvironmentParticipant invalidate];
    objc_storeStrong(&self->_sceneRenderingEnvironmentParticipant, participant);
    clientScene = [(FBSSceneComponent *)self clientScene];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __71__SBHostProxyClientComponent__setSceneRenderingEnvironmentParticipant___block_invoke;
    v8[3] = &unk_2783BF928;
    v9 = participantCopy;
    [clientScene updateClientSettings:v8];
  }
}

void __71__SBHostProxyClientComponent__setSceneRenderingEnvironmentParticipant___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 renderingEnvironmentIdentifier];
  [v3 setHostProxySceneRenderingEnvironmentIdentifier:v4];
}

- (void)_windowManagementStyleDidChange:(id)change
{
  changeCopy = change;
  v5 = objc_opt_class();
  object = [changeCopy object];

  v7 = SBSafeCast(v5, object);

  windowScene = [v7 windowScene];
  _fbsDisplayIdentity = [windowScene _fbsDisplayIdentity];
  scene = [(FBSSceneComponent *)self scene];
  settings = [scene settings];
  displayIdentity = [settings displayIdentity];
  v13 = [_fbsDisplayIdentity isEqual:displayIdentity];

  if (v13)
  {
    clientScene = [(FBSSceneComponent *)self clientScene];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __62__SBHostProxyClientComponent__windowManagementStyleDidChange___block_invoke;
    v15[3] = &unk_2783BF928;
    v16 = v7;
    [clientScene updateClientSettings:v15];
  }
}

void __62__SBHostProxyClientComponent__windowManagementStyleDidChange___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 windowManagementContext];
  [v3 setHostProxyEnhancedWindowingEnabled:{objc_msgSend(v4, "isChamoisOrFlexibleWindowing")}];
}

- (void)sceneManager:(id)manager didUpdateUserInterfaceStyle:(int64_t)style withAnimationSettings:(id)settings fence:(id)fence
{
  settingsCopy = settings;
  fenceCopy = fence;
  clientScene = [(FBSSceneComponent *)self clientScene];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __99__SBHostProxyClientComponent_sceneManager_didUpdateUserInterfaceStyle_withAnimationSettings_fence___block_invoke;
  v14[3] = &unk_2783BF950;
  v16 = fenceCopy;
  styleCopy = style;
  v15 = settingsCopy;
  v12 = fenceCopy;
  v13 = settingsCopy;
  [clientScene updateClientSettings:v14];
}

void __99__SBHostProxyClientComponent_sceneManager_didUpdateUserInterfaceStyle_withAnimationSettings_fence___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a3;
  [a2 setHostProxyUserInterfaceStyle:a1[6]];
  if (a1[4])
  {
    [v5 setAnimationSettings:?];
  }

  if (a1[5])
  {
    [v5 setAnimationFence:?];
  }
}

- (void)continuitySessionDidUpdateScreenRecordingState:(id)state
{
  stateCopy = state;
  v5 = SBLogContinuitySession();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(SBHostProxyClientComponent *)self continuitySessionDidUpdateScreenRecordingState:stateCopy, v5];
  }

  clientScene = [(FBSSceneComponent *)self clientScene];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __77__SBHostProxyClientComponent_continuitySessionDidUpdateScreenRecordingState___block_invoke;
  v8[3] = &unk_2783BF928;
  v9 = stateCopy;
  v7 = stateCopy;
  [clientScene updateClientSettings:v8];
}

void __77__SBHostProxyClientComponent_continuitySessionDidUpdateScreenRecordingState___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setHostProxyIsCapturingContentForAdditionalRenderingDestination:{objc_msgSend(v2, "isActivelyScreenRecording")}];
}

- (void)scene:(id)scene didUpdateSettings:(id)settings
{
  settingsCopy = settings;
  settings = [settingsCopy settings];
  displayConfiguration = [settings displayConfiguration];

  previousSettings = [settingsCopy previousSettings];

  displayConfiguration2 = [previousSettings displayConfiguration];

  v10 = displayConfiguration;
  if (displayConfiguration != displayConfiguration2)
  {
    sceneRenderingEnvironmentManager = [SBApp sceneRenderingEnvironmentManager];
    if (!sceneRenderingEnvironmentManager)
    {
      [SBHostProxyClientComponent scene:a2 didUpdateSettings:self];
    }

    clientScene = [(FBSSceneComponent *)self clientScene];
    loggingIdentifier = [clientScene loggingIdentifier];
    v14 = [sceneRenderingEnvironmentManager registerParticipantForSceneWithIdentifier:loggingIdentifier displayConfiguration:displayConfiguration];
    [(SBHostProxyClientComponent *)self _setSceneRenderingEnvironmentParticipant:v14];

    v10 = displayConfiguration;
  }
}

- (void)sceneWillInvalidate:(id)invalidate
{
  [(SBSceneRenderingEnvironmentParticipant *)self->_sceneRenderingEnvironmentParticipant invalidate];
  sceneRenderingEnvironmentParticipant = self->_sceneRenderingEnvironmentParticipant;
  self->_sceneRenderingEnvironmentParticipant = 0;
}

void __39__SBHostProxyClientComponent_setScene___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:*(a1 + 40) object:*a2 file:@"SBHostProxyClientComponent.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"manager"}];
}

- (void)continuitySessionDidUpdateScreenRecordingState:(NSObject *)a3 .cold.1(void *a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a1 clientScene];
  v6 = [v5 identifier];
  v7 = 138543618;
  v8 = v6;
  v9 = 1024;
  v10 = [a2 isActivelyScreenRecording];
  _os_log_debug_impl(&dword_21ED4E000, a3, OS_LOG_TYPE_DEBUG, "Scene %{public}@ notified the session actively recording: %{BOOL}u", &v7, 0x12u);
}

- (void)scene:(uint64_t)a1 didUpdateSettings:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBHostProxyClientComponent.m" lineNumber:129 description:{@"Invalid parameter not satisfying: %@", @"manager"}];
}

@end