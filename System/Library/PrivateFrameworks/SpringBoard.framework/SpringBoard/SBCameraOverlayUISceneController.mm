@interface SBCameraOverlayUISceneController
+ (id)_setupInfo;
- (SBCameraOverlayUISceneController)initWithSceneWorkspaceIdentifier:(id)identifier clientProcessIdentity:(id)identity sceneVendingPolicy:(int64_t)policy traitsRole:(id)role jobLabel:(id)label level:(double)level;
- (id)_reasonToDropCameraOverlaySessionRequest;
- (void)_activateSession:(id)session;
- (void)_reevaluteCameraOverlaySessionRequestForReason:(id)reason;
- (void)_setActiveOverlayRequest:(id)request;
- (void)_updateActiveOverlayRequestSceneSettingsOnOverlayScene;
- (void)_updateForegroundScenes;
- (void)cameraViewfinderMonitorSessionDidBegin:(id)begin auditToken:(id)token;
- (void)cameraViewfinderMonitorSessionDidEnd:(id)end auditToken:(id)token;
- (void)cameraViewfinderMonitorSessionWillBegin:(id)begin auditToken:(id)token;
- (void)dealloc;
- (void)destroyScenesWithPersistentIdentifiers:(id)identifiers processIdentity:(id)identity completion:(id)completion;
- (void)physicalButtonSceneOverridesDidChange:(id)change;
- (void)scenePresenter:(id)presenter didPresentScene:(id)scene;
- (void)scenePresenter:(id)presenter willDismissScene:(id)scene;
- (void)setDefaultPresenter:(id)presenter;
- (void)windowSceneDidConnect:(id)connect;
- (void)windowSceneDidDisconnect:(id)disconnect;
- (void)zStackParticipant:(id)participant updatePreferences:(id)preferences;
@end

@implementation SBCameraOverlayUISceneController

+ (id)_setupInfo
{
  v9[9] = *MEMORY[0x277D85DE8];
  v8[0] = @"class";
  v9[0] = objc_opt_class();
  v8[1] = @"enabled";
  v2 = MEMORY[0x277CCABB0];
  if (CAMIsCameraOverlayAvailable())
  {
    v3 = CAMIsCameraOverlayEnabled();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 numberWithInt:v3];
  v9[1] = v4;
  v9[2] = MEMORY[0x277CBEC28];
  v8[2] = @"isDaemon";
  v8[3] = @"jobLabel";
  v9[3] = @"com.apple.CameraOverlayAngel";
  v8[4] = @"hostLevel";
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D76EE8] + 255.0 + 1.0];
  v9[4] = v5;
  v9[5] = &unk_283370EB0;
  v8[5] = @"presentationStyle";
  v8[6] = @"traitsRole";
  v9[6] = @"SBTraitsParticipantRoleSystemUIScene";
  v9[7] = &unk_283370EC8;
  v8[7] = @"vendingStrategy";
  v8[8] = @"workspaceID";
  v9[8] = @"com.apple.SpringBoard.SceneWorkspace.CameraOverlayUI";
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:9];

  return v6;
}

- (void)setDefaultPresenter:(id)presenter
{
  presenterCopy = presenter;
  v5.receiver = self;
  v5.super_class = SBCameraOverlayUISceneController;
  [(SBSystemUISceneController *)&v5 setDefaultPresenter:presenterCopy];
  if (objc_opt_respondsToSelector())
  {
    [presenterCopy setPresentingDelegate:self];
  }
}

- (SBCameraOverlayUISceneController)initWithSceneWorkspaceIdentifier:(id)identifier clientProcessIdentity:(id)identity sceneVendingPolicy:(int64_t)policy traitsRole:(id)role jobLabel:(id)label level:(double)level
{
  v19.receiver = self;
  v19.super_class = SBCameraOverlayUISceneController;
  v8 = [(SBSystemUISceneController *)&v19 initWithSceneWorkspaceIdentifier:identifier clientProcessIdentity:identity sceneVendingPolicy:policy traitsRole:role jobLabel:label level:level];
  if (v8)
  {
    v9 = +[SBCameraViewfinderMonitor sharedInstance];
    viewfinderMonitor = v8->_viewfinderMonitor;
    v8->_viewfinderMonitor = v9;

    v11 = [(SBCameraViewfinderMonitor *)v8->_viewfinderMonitor addObserver:v8];
    viewfinderObsserver = v8->_viewfinderObsserver;
    v8->_viewfinderObsserver = v11;

    v13 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
    physicalButtonSceneOverrideManager = [v13 physicalButtonSceneOverrideManager];
    physicalButtonOverrideManager = v8->_physicalButtonOverrideManager;
    v8->_physicalButtonOverrideManager = physicalButtonSceneOverrideManager;

    v16 = [(SBPhysicalButtonSceneOverrideManager *)&v8->_physicalButtonOverrideManager->super.isa addObserver:v8 forReason:@"Camera Capture Overlay System UI Scene Controller"];
    physicalButtonOverrideObserver = v8->_physicalButtonOverrideObserver;
    v8->_physicalButtonOverrideObserver = v16;
  }

  return v8;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  [(BSInvalidatable *)self->_physicalButtonOverrideObserver invalidate];
  physicalButtonOverrideObserver = self->_physicalButtonOverrideObserver;
  self->_physicalButtonOverrideObserver = 0;

  [(SBCameraViewfinderMonitoring *)self->_viewfinderObsserver cancel];
  viewfinderObsserver = self->_viewfinderObsserver;
  self->_viewfinderObsserver = 0;

  v6.receiver = self;
  v6.super_class = SBCameraOverlayUISceneController;
  [(SBSystemUISceneController *)&v6 dealloc];
}

- (void)windowSceneDidConnect:(id)connect
{
  connectCopy = connect;
  if ([connectCopy isMainDisplayWindowScene] && !self->_zStackParticipant)
  {
    zStackResolver = [connectCopy zStackResolver];
    v5 = [zStackResolver acquireParticipantWithIdentifier:21 delegate:self];
    zStackParticipant = self->_zStackParticipant;
    self->_zStackParticipant = v5;

    v7 = [(SBZStackForegroundSceneOrderedPolicyAssistant *)[SBPhysicalButtonZStackPolicyAssistant alloc] initWithParticipant:self->_zStackParticipant];
    zStackPhysicalButtonPolicyAssistant = self->_zStackPhysicalButtonPolicyAssistant;
    self->_zStackPhysicalButtonPolicyAssistant = v7;
  }
}

- (void)windowSceneDidDisconnect:(id)disconnect
{
  if ([disconnect isMainDisplayWindowScene])
  {
    zStackPhysicalButtonPolicyAssistant = self->_zStackPhysicalButtonPolicyAssistant;
    self->_zStackPhysicalButtonPolicyAssistant = 0;

    [(SBFZStackParticipant *)self->_zStackParticipant invalidate];
    zStackParticipant = self->_zStackParticipant;
    self->_zStackParticipant = 0;
  }
}

- (void)scenePresenter:(id)presenter didPresentScene:(id)scene
{
  presenterCopy = presenter;
  sceneCopy = scene;
  definition = [sceneCopy definition];
  specification = [definition specification];
  uiSceneSessionRole = [specification uiSceneSessionRole];

  v10 = objc_opt_new();
  uiSceneSessionRole2 = [v10 uiSceneSessionRole];
  v12 = [uiSceneSessionRole isEqual:uiSceneSessionRole2];

  if (v12)
  {
    v13 = objc_opt_class();
    v14 = [sceneCopy componentForExtension:v13 ofClass:objc_opt_class()];
    v15 = objc_opt_class();
    v16 = v14;
    if (v15)
    {
      v17 = (objc_opt_isKindOfClass() & 1) != 0 ? v16 : 0;
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;

    featurePolicyComponent = self->_featurePolicyComponent;
    self->_featurePolicyComponent = v18;

    if (objc_opt_respondsToSelector())
    {
      v20 = self->_featurePolicyComponent;
      v21 = presenterCopy;
      [(SBSUIFeaturePolicyHostComponent *)v20 setDelegate:v21];
      [v21 featurePolicyHostComponentDidChangeShouldDisableReachability:self->_featurePolicyComponent];
    }
  }
}

- (void)scenePresenter:(id)presenter willDismissScene:(id)scene
{
  definition = [scene definition];
  specification = [definition specification];
  uiSceneSessionRole = [specification uiSceneSessionRole];

  v7 = objc_opt_new();
  uiSceneSessionRole2 = [v7 uiSceneSessionRole];
  v9 = [uiSceneSessionRole isEqual:uiSceneSessionRole2];

  if (v9)
  {
    [(SBSUIFeaturePolicyHostComponent *)self->_featurePolicyComponent setDelegate:0];
    featurePolicyComponent = self->_featurePolicyComponent;
    self->_featurePolicyComponent = 0;
  }
}

- (void)_setActiveOverlayRequest:(id)request
{
  requestCopy = request;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_activeOverlayRequester, request);
    [(SBCameraOverlayUISceneController *)self _updateActiveOverlayRequestSceneSettingsOnOverlayScene];
    [(SBCameraOverlayUISceneController *)self _updateForegroundScenes];
  }
}

- (void)_updateActiveOverlayRequestSceneSettingsOnOverlayScene
{
  scene = [(SBSingleSceneController *)self->_sceneController scene];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __90__SBCameraOverlayUISceneController__updateActiveOverlayRequestSceneSettingsOnOverlayScene__block_invoke;
  v4[3] = &unk_2783ACB10;
  v4[4] = self;
  [scene updateSettingsWithBlock:v4];
}

void __90__SBCameraOverlayUISceneController__updateActiveOverlayRequestSceneSettingsOnOverlayScene__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 184);
  v4 = a2;
  v11 = [v3 sceneRequestingOverlay];
  v5 = [v11 clientHandle];
  v6 = [v5 processHandle];
  [v4 setOverlayRequestingPID:{objc_msgSend(v6, "pid")}];

  v7 = [v11 clientHandle];
  v8 = [v7 bundleIdentifier];
  [v4 setOverlayRequestingBundleIdentifier:v8];

  v9 = [v11 identityToken];
  [v4 setOverlayRequestingSceneIdentityToken:v9];

  v10 = [*(*(a1 + 32) + 184) auditTokenOfProcessRequestingOverlay];
  [v4 setOverlayRequestingProcessAuditToken:v10];
}

- (void)_activateSession:(id)session
{
  sessionCopy = session;
  if (!sessionCopy)
  {
    [(SBCameraOverlayUISceneController *)a2 _activateSession:?];
  }

  sceneController = self->_sceneController;
  if (!sceneController)
  {
    v6 = objc_alloc_init(MEMORY[0x277D75980]);
    v7 = objc_alloc_init(MEMORY[0x277D67B40]);
    [v6 setSpecification:v7];

    v8 = objc_alloc_init(MEMORY[0x277D75750]);
    [v8 setDisablesReachability:1];
    [v6 setInitialClientSettings:v8];
    v9 = [(SBSystemUISceneController *)self _newAppSceneRequestOptionsForWindowScene:sessionCopy withBlueprintOptions:v6];
    v10 = [(SBSystemUISceneController *)self _newSceneControllerForWindowScene:sessionCopy withSceneRequestOptions:v9];
    v11 = self->_sceneController;
    self->_sceneController = v10;

    [(SBSingleSceneController *)self->_sceneController setShouldBeKeptActiveWhileForeground:1];
    [(SBSingleSceneController *)self->_sceneController setSceneActive:1];
    [(SBCameraOverlayUISceneController *)self _updateActiveOverlayRequestSceneSettingsOnOverlayScene];
    [(SBCameraOverlayUISceneController *)self _updateForegroundScenes];

    sceneController = self->_sceneController;
  }

  [(SBSingleSceneController *)sceneController setHidden:0];
}

- (void)_updateForegroundScenes
{
  v8[1] = *MEMORY[0x277D85DE8];
  zStackPhysicalButtonPolicyAssistant = self->_zStackPhysicalButtonPolicyAssistant;
  if (self->_activeOverlayRequester)
  {
    sceneController = self->_sceneController;
    if (sceneController)
    {
      scene = [(SBSingleSceneController *)sceneController scene];
      v8[0] = scene;
      v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
      [(SBZStackForegroundSceneOrderedPolicyAssistant *)zStackPhysicalButtonPolicyAssistant setForegroundScenes:v5];

      return;
    }

    v7 = MEMORY[0x277CBEBF8];
    v6 = zStackPhysicalButtonPolicyAssistant;
  }

  else
  {
    v6 = self->_zStackPhysicalButtonPolicyAssistant;
    v7 = 0;
  }

  [(SBZStackForegroundSceneOrderedPolicyAssistant *)v6 setForegroundScenes:v7];
}

- (id)_reasonToDropCameraOverlaySessionRequest
{
  cameraBehaviorScene = [(SBPhysicalButtonSceneOverrideManager *)self->_physicalButtonOverrideManager cameraBehaviorScene];
  if (cameraBehaviorScene)
  {
    auditTokenForRequestingProcessOfCameraBehaviorScene = [(SBPhysicalButtonSceneOverrideManager *)self->_physicalButtonOverrideManager auditTokenForRequestingProcessOfCameraBehaviorScene];
    if (auditTokenForRequestingProcessOfCameraBehaviorScene)
    {
      reasonCameraBehaviorSceneIsNotEligibleForSupplementalUI = [(SBPhysicalButtonSceneOverrideManager *)self->_physicalButtonOverrideManager reasonCameraBehaviorSceneIsNotEligibleForSupplementalUI];
      v6 = reasonCameraBehaviorSceneIsNotEligibleForSupplementalUI;
      if (reasonCameraBehaviorSceneIsNotEligibleForSupplementalUI)
      {
        v7 = reasonCameraBehaviorSceneIsNotEligibleForSupplementalUI;
      }
    }

    else
    {
      v6 = @"missing audit token";
    }
  }

  else
  {
    v6 = @"no camera behavior scene";
  }

  return v6;
}

- (void)_reevaluteCameraOverlaySessionRequestForReason:(id)reason
{
  v20 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  _reasonToDropCameraOverlaySessionRequest = [(SBCameraOverlayUISceneController *)self _reasonToDropCameraOverlaySessionRequest];
  if (_reasonToDropCameraOverlaySessionRequest)
  {
    v6 = SBLogButtonsCapture();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543618;
      v17 = reasonCopy;
      v18 = 2114;
      v19 = _reasonToDropCameraOverlaySessionRequest;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "_reevaluteCameraOverlaySessionRequest(%{public}@) dropping request -- %{public}@", &v16, 0x16u);
    }

    [(SBCameraOverlayUISceneController *)self _setActiveOverlayRequest:0];
  }

  else
  {
    _activeOverlayRequest = [(SBCameraOverlayUISceneController *)self _activeOverlayRequest];
    sceneRequestingOverlay = [_activeOverlayRequest sceneRequestingOverlay];
    cameraBehaviorScene = [(SBPhysicalButtonSceneOverrideManager *)self->_physicalButtonOverrideManager cameraBehaviorScene];
    v10 = BSEqualObjects();

    if ((v10 & 1) == 0)
    {
      v11 = SBLogButtonsCapture();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        cameraBehaviorScene2 = [(SBPhysicalButtonSceneOverrideManager *)self->_physicalButtonOverrideManager cameraBehaviorScene];
        v16 = 138543618;
        v17 = reasonCopy;
        v18 = 2114;
        v19 = cameraBehaviorScene2;
        _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "_reevaluteCameraOverlaySessionRequest(%{public}@) activating -- %{public}@", &v16, 0x16u);
      }

      v13 = [[_SBCameraOverlayRequest alloc] initWithObservation:self->_physicalButtonOverrideManager];
      [(SBCameraOverlayUISceneController *)self _setActiveOverlayRequest:v13];

      defaultPresenter = [(SBSystemUISceneController *)self defaultPresenter];
      targetWindowScene = [defaultPresenter targetWindowScene];

      [(SBCameraOverlayUISceneController *)self _activateSession:targetWindowScene];
    }
  }
}

- (void)zStackParticipant:(id)participant updatePreferences:(id)preferences
{
  preferencesCopy = preferences;
  [preferencesCopy setActivationPolicyForParticipantsBelow:0];
  captureButtonFullFidelityEventRequestingScenes = [(SBPhysicalButtonZStackPolicyAssistant *)self->_zStackPhysicalButtonPolicyAssistant captureButtonFullFidelityEventRequestingScenes];
  [preferencesCopy setCaptureButtonFullFidelityEventRequestingScenes:captureButtonFullFidelityEventRequestingScenes];
}

- (void)physicalButtonSceneOverridesDidChange:(id)change
{
  v4 = NSStringFromSelector(a2);
  [(SBCameraOverlayUISceneController *)self _reevaluteCameraOverlaySessionRequestForReason:v4];
}

- (void)cameraViewfinderMonitorSessionWillBegin:(id)begin auditToken:(id)token
{
  v5 = NSStringFromSelector(a2);
  [(SBCameraOverlayUISceneController *)self _reevaluteCameraOverlaySessionRequestForReason:v5];
}

- (void)cameraViewfinderMonitorSessionDidBegin:(id)begin auditToken:(id)token
{
  v5 = NSStringFromSelector(a2);
  [(SBCameraOverlayUISceneController *)self _reevaluteCameraOverlaySessionRequestForReason:v5];
}

- (void)cameraViewfinderMonitorSessionDidEnd:(id)end auditToken:(id)token
{
  v5 = NSStringFromSelector(a2);
  [(SBCameraOverlayUISceneController *)self _reevaluteCameraOverlaySessionRequestForReason:v5];
}

- (void)destroyScenesWithPersistentIdentifiers:(id)identifiers processIdentity:(id)identity completion:(id)completion
{
  v7.receiver = self;
  v7.super_class = SBCameraOverlayUISceneController;
  [(SBSystemUISceneController *)&v7 destroyScenesWithPersistentIdentifiers:identifiers processIdentity:identity completion:completion];
  sceneController = self->_sceneController;
  self->_sceneController = 0;

  [(SBCameraOverlayUISceneController *)self _updateForegroundScenes];
  [(SBCameraOverlayUISceneController *)self _reevaluteCameraOverlaySessionRequestForReason:@"overlaySceneDestruction"];
}

- (void)_activateSession:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBCameraOverlayUISceneController.m" lineNumber:180 description:@"Must have a target window scene."];
}

@end