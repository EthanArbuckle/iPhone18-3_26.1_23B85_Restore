@interface SBTraitsContinuityDisplayPipelineManager
- (SBTraitsContinuityDisplayPipelineManager)initWithArbiter:(id)arbiter sceneDelegate:(id)delegate userInterfaceStyleProvider:(id)provider;
- (TRAArbitrationInputs)inputs;
- (void)_noteInputsNeedUpdateWithAnimationSettings:(id)settings fence:(id)fence reason:(id)reason;
- (void)_updateInputsForCurrentUserInterfaceStyle;
- (void)_updateInputsForDeviceOrientation:(int64_t)orientation;
- (void)didChangeSettingsForParticipant:(id)participant context:(id)context;
- (void)setDeviceOrientation:(int64_t)orientation;
- (void)setupDefaultPipelineForArbiter:(id)arbiter;
- (void)updatePreferencesForParticipant:(id)participant updater:(id)updater;
- (void)userInterfaceStyleDidUpdateWithAnimationSettings:(id)settings fence:(id)fence;
@end

@implementation SBTraitsContinuityDisplayPipelineManager

- (SBTraitsContinuityDisplayPipelineManager)initWithArbiter:(id)arbiter sceneDelegate:(id)delegate userInterfaceStyleProvider:(id)provider
{
  v9.receiver = self;
  v9.super_class = SBTraitsContinuityDisplayPipelineManager;
  v5 = [(SBTraitsPipelineManager *)&v9 initWithArbiter:arbiter sceneDelegate:delegate userInterfaceStyleProvider:provider];
  if (v5)
  {
    v6 = objc_alloc_init(SBTraitsEmbeddedDisplayRolesAndDefaultPoliciesProvider);
    rolesAndDefaultPoliciesProvider = v5->_rolesAndDefaultPoliciesProvider;
    v5->_rolesAndDefaultPoliciesProvider = v6;
  }

  return v5;
}

- (void)setupDefaultPipelineForArbiter:(id)arbiter
{
  if (arbiter)
  {
    arbiterCopy = arbiter;
    inputsValidationStage = [arbiterCopy inputsValidationStage];
    v5 = [(SBTraitsInputsValidator *)[SBTraitsInputsAllUnknownOrientationValidator alloc] initWithValidatorOrder:&unk_283371D08];
    [inputsValidationStage addInputsValidator:v5 update:0];

    zOrderResolutionStage = [arbiterCopy zOrderResolutionStage];
    v7 = [(SBTraitsZOrderStageComponent *)[SBTraitsZOrderDefaultResolver alloc] initWithComponentOrder:&unk_283371D08];
    [zOrderResolutionStage addStageResolver:v7];

    orientationResolutionStage = [arbiterCopy orientationResolutionStage];
    v9 = [[SBTraitsOrientationDefaultResolutionPolicySpecifier alloc] initWithComponentOrder:&unk_283371D08 dataSource:self->_rolesAndDefaultPoliciesProvider];
    [orientationResolutionStage addResolutionPolicySpecifier:v9 update:0];

    v10 = [(SBTraitsOrientationStageComponent *)[SBTraitsOrientationDefaultTreeNodesSpecifier alloc] initWithComponentOrder:&unk_283371D08];
    [orientationResolutionStage addNodesSpecificationsSpecifier:v10];

    v11 = [(SBTraitsOrientationStageComponent *)[SBTraitsOrientationSupportTreeNodesSpecifier alloc] initWithComponentOrder:&unk_283371D20];
    orientationTreeNodesSpecifier = self->_orientationTreeNodesSpecifier;
    self->_orientationTreeNodesSpecifier = v11;

    [orientationResolutionStage addNodesSpecificationsSpecifier:self->_orientationTreeNodesSpecifier];
    v13 = [[SBTraitsOrientationDefaultTreeResolver alloc] initWithComponentOrder:&unk_283371D08];
    [orientationResolutionStage addStageResolver:v13];

    userInterfaceStyleResolutionStage = [arbiterCopy userInterfaceStyleResolutionStage];
    v15 = [(SBTraitsUserInterfaceStyleStageComponent *)[SBTraitsUserInterfaceStyleDefaultResolver alloc] initWithComponentOrder:&unk_283371D08];
    [userInterfaceStyleResolutionStage addStageResolver:v15];

    v16 = [arbiterCopy acquireParticipantWithRole:@"SBTraitsParticipantRolePipelineManager" delegate:self];

    activeOrientationParticipant = self->_activeOrientationParticipant;
    self->_activeOrientationParticipant = v16;

    v18 = self->_activeOrientationParticipant;
    v19 = MEMORY[0x277CCACA8];
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    v22 = [v19 stringWithFormat:@"%@-Setup", v21];
    [(TRAParticipant *)v18 setNeedsUpdatePreferencesWithReason:v22];

    [(TRAParticipant *)self->_activeOrientationParticipant updatePreferencesIfNeeded];
  }
}

- (void)userInterfaceStyleDidUpdateWithAnimationSettings:(id)settings fence:(id)fence
{
  fenceCopy = fence;
  settingsCopy = settings;
  [(SBTraitsContinuityDisplayPipelineManager *)self _updateInputsForCurrentUserInterfaceStyle];
  [(SBTraitsContinuityDisplayPipelineManager *)self _noteInputsNeedUpdateWithAnimationSettings:settingsCopy fence:fenceCopy reason:@"User Interface Style Update"];
}

- (TRAArbitrationInputs)inputs
{
  inputs = self->_inputs;
  if (!inputs)
  {
    v4 = objc_alloc(MEMORY[0x277D734B8]);
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    v6 = [v4 initWithIsPad:{objc_msgSend(currentDevice, "userInterfaceIdiom") == 1}];

    v7 = [objc_alloc(MEMORY[0x277D734A8]) initWithCurrentDeviceOrientation:1 nonFlatDeviceOrientation:1];
    v8 = objc_alloc(MEMORY[0x277D734C8]);
    userInterfaceStyleProvider = [(SBTraitsPipelineManager *)self userInterfaceStyleProvider];
    v10 = [v8 initWithUserInterfaceStyle:{objc_msgSend(userInterfaceStyleProvider, "currentStyle")}];

    v11 = [objc_alloc(MEMORY[0x277D734B0]) initWithInterfaceIdiomInputs:v6 userInterfaceStyleInputs:v10 deviceOrientationInputs:v7 keyboardInputs:0 ambientPresentationInputs:0];
    v12 = self->_inputs;
    self->_inputs = v11;

    inputs = self->_inputs;
  }

  return inputs;
}

- (void)setDeviceOrientation:(int64_t)orientation
{
  if (self->_currentDeviceOrientation != orientation)
  {
    self->_currentDeviceOrientation = orientation;
    [(SBTraitsContinuityDisplayPipelineManager *)self _updateInputsForDeviceOrientation:?];
    v5 = [(SBTraitsPipelineManager *)self defaultOrientationAnimationSettingsAnimatable:1];
    [(SBTraitsContinuityDisplayPipelineManager *)self _noteInputsNeedUpdateWithAnimationSettings:v5 fence:0 reason:@"Device orientation update"];
  }
}

- (void)updatePreferencesForParticipant:(id)participant updater:(id)updater
{
  updaterCopy = updater;
  [updaterCopy updateZOrderLevelPreferencesWithBlock:&__block_literal_global_339];
  [updaterCopy updateOrientationPreferencesWithBlock:&__block_literal_global_86_4];
}

- (void)didChangeSettingsForParticipant:(id)participant context:(id)context
{
  v31 = *MEMORY[0x277D85DE8];
  participantCopy = participant;
  supportedOrientations = [(SBTraitsOrientationSupportTreeNodesSpecifier *)self->_orientationTreeNodesSpecifier supportedOrientations];
  currentOrientation = [participantCopy currentOrientation];
  previousOrientation = [participantCopy previousOrientation];
  if (currentOrientation != previousOrientation || self->_currentSupportedInterfaceOrientations != supportedOrientations)
  {
    sceneDelegate = [(SBTraitsPipelineManager *)self sceneDelegate];
    windowScene = [sceneDelegate windowScene];
    v10 = windowScene;
    if (currentOrientation != previousOrientation)
    {
      v20 = windowScene;
      v21 = supportedOrientations;
      selfCopy = self;
      v23 = participantCopy;
      _currentAnimationSettings = [MEMORY[0x277D75D18] _currentAnimationSettings];
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      screens = [MEMORY[0x277D759A0] screens];
      v12 = [screens countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v27;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v27 != v14)
            {
              objc_enumerationMutation(screens);
            }

            v16 = *(*(&v26 + 1) + 8 * i);
            displayIdentity = [v16 displayIdentity];
            if ([displayIdentity isContinuityDisplay])
            {
              v18 = objc_opt_respondsToSelector();

              if (v18)
              {
                [SBApp noteActiveInterfaceOrientationWillChangeToOrientation:currentOrientation screen:v16];
                [SBApp noteActiveInterfaceOrientationDidChangeToOrientation:currentOrientation willAnimateWithSettings:_currentAnimationSettings fromOrientation:previousOrientation screen:v16];
              }
            }

            else
            {
            }
          }

          v13 = [screens countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v13);
      }

      v10 = v20;
      displayLayoutPublisher = [v20 displayLayoutPublisher];
      [displayLayoutPublisher setInterfaceOrientation:currentOrientation];

      self = selfCopy;
      participantCopy = v23;
      supportedOrientations = v21;
    }

    self->_currentSupportedInterfaceOrientations = supportedOrientations;
    [sceneDelegate setInterfaceOrientation:currentOrientation supportedInterfaceOrientations:supportedOrientations];
  }
}

- (void)_updateInputsForDeviceOrientation:(int64_t)orientation
{
  v11 = [objc_alloc(MEMORY[0x277D734A8]) initWithCurrentDeviceOrientation:orientation nonFlatDeviceOrientation:orientation];
  v4 = objc_alloc(MEMORY[0x277D734B0]);
  interfaceIdiomInputs = [(TRAArbitrationInputs *)self->_inputs interfaceIdiomInputs];
  userInterfaceStyleInputs = [(TRAArbitrationInputs *)self->_inputs userInterfaceStyleInputs];
  keyboardInputs = [(TRAArbitrationInputs *)self->_inputs keyboardInputs];
  ambientPresentationInputs = [(TRAArbitrationInputs *)self->_inputs ambientPresentationInputs];
  v9 = [v4 initWithInterfaceIdiomInputs:interfaceIdiomInputs userInterfaceStyleInputs:userInterfaceStyleInputs deviceOrientationInputs:v11 keyboardInputs:keyboardInputs ambientPresentationInputs:ambientPresentationInputs];
  inputs = self->_inputs;
  self->_inputs = v9;
}

- (void)_updateInputsForCurrentUserInterfaceStyle
{
  v3 = objc_alloc(MEMORY[0x277D734C8]);
  userInterfaceStyleProvider = [(SBTraitsPipelineManager *)self userInterfaceStyleProvider];
  v12 = [v3 initWithUserInterfaceStyle:{objc_msgSend(userInterfaceStyleProvider, "currentStyle")}];

  v5 = objc_alloc(MEMORY[0x277D734B0]);
  interfaceIdiomInputs = [(TRAArbitrationInputs *)self->_inputs interfaceIdiomInputs];
  deviceOrientationInputs = [(TRAArbitrationInputs *)self->_inputs deviceOrientationInputs];
  keyboardInputs = [(TRAArbitrationInputs *)self->_inputs keyboardInputs];
  ambientPresentationInputs = [(TRAArbitrationInputs *)self->_inputs ambientPresentationInputs];
  v10 = [v5 initWithInterfaceIdiomInputs:interfaceIdiomInputs userInterfaceStyleInputs:v12 deviceOrientationInputs:deviceOrientationInputs keyboardInputs:keyboardInputs ambientPresentationInputs:ambientPresentationInputs];
  inputs = self->_inputs;
  self->_inputs = v10;
}

- (void)_noteInputsNeedUpdateWithAnimationSettings:(id)settings fence:(id)fence reason:(id)reason
{
  settingsCopy = settings;
  fenceCopy = fence;
  reasonCopy = reason;
  arbiter = [(SBTraitsPipelineManager *)self arbiter];
  v13 = objc_alloc(MEMORY[0x277D73498]);
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __100__SBTraitsContinuityDisplayPipelineManager__noteInputsNeedUpdateWithAnimationSettings_fence_reason___block_invoke;
  v21 = &unk_2783B5238;
  v22 = settingsCopy;
  v23 = fenceCopy;
  v24 = reasonCopy;
  v25 = a2;
  v14 = reasonCopy;
  v15 = fenceCopy;
  v16 = settingsCopy;
  v17 = [v13 initWithBuilder:&v18];
  [arbiter setNeedsUpdateArbitrationWithContext:{v17, v18, v19, v20, v21}];
}

void __100__SBTraitsContinuityDisplayPipelineManager__noteInputsNeedUpdateWithAnimationSettings_fence_reason___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SBLogTraitsArbiter();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 56));
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = 138543874;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    v13 = 2114;
    v14 = v7;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "[ContinuityPipeline] %{public}@ updating inputs with animation settings: %{public}@ fence: %{public}@", &v9, 0x20u);
  }

  v8 = [objc_alloc(MEMORY[0x277D734E8]) initWithAnimationSettings:*(a1 + 32) drawingFence:*(a1 + 40)];
  [v3 setOrientationActuationContext:v8];
  [v3 setUserInterfaceStyleActuationContext:v8];
  [v3 setReason:*(a1 + 48)];
}

@end