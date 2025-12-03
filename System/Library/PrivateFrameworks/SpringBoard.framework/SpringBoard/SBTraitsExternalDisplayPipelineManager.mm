@interface SBTraitsExternalDisplayPipelineManager
- (SBTraitsExternalDisplayPipelineManager)initWithArbiter:(id)arbiter sceneDelegate:(id)delegate userInterfaceStyleProvider:(id)provider;
- (TRAArbitrationInputs)inputs;
- (void)_noteInputsNeedUpdateWithAnimationSettings:(id)settings fence:(id)fence reason:(id)reason;
- (void)_updateInputsForCurrentUserInterfaceStyle;
- (void)didChangeSettingsForParticipant:(id)participant context:(id)context;
- (void)setupDefaultPipelineForArbiter:(id)arbiter;
- (void)updatePreferencesForParticipant:(id)participant updater:(id)updater;
- (void)userInterfaceStyleDidUpdateWithAnimationSettings:(id)settings fence:(id)fence;
@end

@implementation SBTraitsExternalDisplayPipelineManager

- (SBTraitsExternalDisplayPipelineManager)initWithArbiter:(id)arbiter sceneDelegate:(id)delegate userInterfaceStyleProvider:(id)provider
{
  v9.receiver = self;
  v9.super_class = SBTraitsExternalDisplayPipelineManager;
  v5 = [(SBTraitsPipelineManager *)&v9 initWithArbiter:arbiter sceneDelegate:delegate userInterfaceStyleProvider:provider];
  if (v5)
  {
    v6 = objc_alloc_init(SBTraitsExternalDisplayRolesAndDefaultPoliciesProvider);
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
    v5 = [(SBTraitsInputsValidator *)[SBTraitsInputsAllUnknownOrientationValidator alloc] initWithValidatorOrder:&unk_283370DC0];
    [inputsValidationStage addInputsValidator:v5 update:0];

    zOrderResolutionStage = [arbiterCopy zOrderResolutionStage];
    v7 = [(SBTraitsZOrderStageComponent *)[SBTraitsZOrderDefaultResolver alloc] initWithComponentOrder:&unk_283370DC0];
    [zOrderResolutionStage addStageResolver:v7];

    orientationResolutionStage = [arbiterCopy orientationResolutionStage];
    v9 = [[SBTraitsOrientationDefaultResolutionPolicySpecifier alloc] initWithComponentOrder:&unk_283370DC0 dataSource:self->_rolesAndDefaultPoliciesProvider];
    [orientationResolutionStage addResolutionPolicySpecifier:v9 update:0];

    v10 = [(SBTraitsOrientationStageComponent *)[SBTraitsOrientationDefaultTreeNodesSpecifier alloc] initWithComponentOrder:&unk_283370DC0];
    [orientationResolutionStage addNodesSpecificationsSpecifier:v10];

    v11 = [[SBTraitsOrientationDefaultTreeResolver alloc] initWithComponentOrder:&unk_283370DC0];
    [orientationResolutionStage addStageResolver:v11];

    userInterfaceStyleResolutionStage = [arbiterCopy userInterfaceStyleResolutionStage];
    v13 = [(SBTraitsUserInterfaceStyleStageComponent *)[SBTraitsUserInterfaceStyleDefaultResolver alloc] initWithComponentOrder:&unk_283370DC0];
    [userInterfaceStyleResolutionStage addStageResolver:v13];

    v14 = [arbiterCopy acquireParticipantWithRole:@"SBTraitsParticipantRolePipelineManager" delegate:self];

    activeOrientationParticipant = self->_activeOrientationParticipant;
    self->_activeOrientationParticipant = v14;

    v16 = self->_activeOrientationParticipant;
    v17 = MEMORY[0x277CCACA8];
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = [v17 stringWithFormat:@"%@-Setup", v19];
    [(TRAParticipant *)v16 setNeedsUpdatePreferencesWithReason:v20];

    [(TRAParticipant *)self->_activeOrientationParticipant updatePreferencesIfNeeded];
  }
}

- (void)userInterfaceStyleDidUpdateWithAnimationSettings:(id)settings fence:(id)fence
{
  fenceCopy = fence;
  settingsCopy = settings;
  [(SBTraitsExternalDisplayPipelineManager *)self _updateInputsForCurrentUserInterfaceStyle];
  [(SBTraitsExternalDisplayPipelineManager *)self _noteInputsNeedUpdateWithAnimationSettings:settingsCopy fence:fenceCopy reason:@"User Interface Style Update"];
}

- (TRAArbitrationInputs)inputs
{
  inputs = self->_inputs;
  if (!inputs)
  {
    sceneDelegate = [(SBTraitsPipelineManager *)self sceneDelegate];
    windowScene = [sceneDelegate windowScene];
    interfaceOrientation = [windowScene interfaceOrientation];

    v7 = objc_alloc(MEMORY[0x277D734B8]);
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    v9 = [v7 initWithIsPad:{objc_msgSend(currentDevice, "userInterfaceIdiom") == 1}];

    v10 = [objc_alloc(MEMORY[0x277D734A8]) initWithCurrentDeviceOrientation:interfaceOrientation nonFlatDeviceOrientation:interfaceOrientation];
    v11 = objc_alloc(MEMORY[0x277D734C8]);
    userInterfaceStyleProvider = [(SBTraitsPipelineManager *)self userInterfaceStyleProvider];
    v13 = [v11 initWithUserInterfaceStyle:{objc_msgSend(userInterfaceStyleProvider, "currentStyle")}];

    v14 = [objc_alloc(MEMORY[0x277D734B0]) initWithInterfaceIdiomInputs:v9 userInterfaceStyleInputs:v13 deviceOrientationInputs:v10 keyboardInputs:0 ambientPresentationInputs:0];
    v15 = self->_inputs;
    self->_inputs = v14;

    inputs = self->_inputs;
  }

  return inputs;
}

- (void)updatePreferencesForParticipant:(id)participant updater:(id)updater
{
  updaterCopy = updater;
  [updaterCopy updateZOrderLevelPreferencesWithBlock:&__block_literal_global_161];
  [updaterCopy updateOrientationPreferencesWithBlock:&__block_literal_global_20_0];
}

- (void)didChangeSettingsForParticipant:(id)participant context:(id)context
{
  participantCopy = participant;
  role = [participantCopy role];
  v6 = SBTraitsArbiterOrientationActuationEnabledForRole(role);

  if (v6)
  {
    currentOrientation = [participantCopy currentOrientation];
    if (currentOrientation != [participantCopy previousOrientation])
    {
      sceneDelegate = [(SBTraitsPipelineManager *)self sceneDelegate];
      windowScene = [sceneDelegate windowScene];
      displayLayoutPublisher = [windowScene displayLayoutPublisher];
      [displayLayoutPublisher setInterfaceOrientation:currentOrientation];
    }
  }
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
  v20 = __98__SBTraitsExternalDisplayPipelineManager__noteInputsNeedUpdateWithAnimationSettings_fence_reason___block_invoke;
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

void __98__SBTraitsExternalDisplayPipelineManager__noteInputsNeedUpdateWithAnimationSettings_fence_reason___block_invoke(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "[ExternalPipeline] %{public}@ updating inputs with animation settings: %{public}@ fence: %{public}@", &v9, 0x20u);
  }

  v8 = [objc_alloc(MEMORY[0x277D734E8]) initWithAnimationSettings:*(a1 + 32) drawingFence:*(a1 + 40)];
  [v3 setOrientationActuationContext:v8];
  [v3 setUserInterfaceStyleActuationContext:v8];
  [v3 setReason:*(a1 + 48)];
}

@end