@interface SBTraitsExternalDisplayPipelineManager
- (SBTraitsExternalDisplayPipelineManager)initWithArbiter:(id)a3 sceneDelegate:(id)a4 userInterfaceStyleProvider:(id)a5;
- (TRAArbitrationInputs)inputs;
- (void)_noteInputsNeedUpdateWithAnimationSettings:(id)a3 fence:(id)a4 reason:(id)a5;
- (void)_updateInputsForCurrentUserInterfaceStyle;
- (void)didChangeSettingsForParticipant:(id)a3 context:(id)a4;
- (void)setupDefaultPipelineForArbiter:(id)a3;
- (void)updatePreferencesForParticipant:(id)a3 updater:(id)a4;
- (void)userInterfaceStyleDidUpdateWithAnimationSettings:(id)a3 fence:(id)a4;
@end

@implementation SBTraitsExternalDisplayPipelineManager

- (SBTraitsExternalDisplayPipelineManager)initWithArbiter:(id)a3 sceneDelegate:(id)a4 userInterfaceStyleProvider:(id)a5
{
  v9.receiver = self;
  v9.super_class = SBTraitsExternalDisplayPipelineManager;
  v5 = [(SBTraitsPipelineManager *)&v9 initWithArbiter:a3 sceneDelegate:a4 userInterfaceStyleProvider:a5];
  if (v5)
  {
    v6 = objc_alloc_init(SBTraitsExternalDisplayRolesAndDefaultPoliciesProvider);
    rolesAndDefaultPoliciesProvider = v5->_rolesAndDefaultPoliciesProvider;
    v5->_rolesAndDefaultPoliciesProvider = v6;
  }

  return v5;
}

- (void)setupDefaultPipelineForArbiter:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v21 = [v4 inputsValidationStage];
    v5 = [(SBTraitsInputsValidator *)[SBTraitsInputsAllUnknownOrientationValidator alloc] initWithValidatorOrder:&unk_283370DC0];
    [v21 addInputsValidator:v5 update:0];

    v6 = [v4 zOrderResolutionStage];
    v7 = [(SBTraitsZOrderStageComponent *)[SBTraitsZOrderDefaultResolver alloc] initWithComponentOrder:&unk_283370DC0];
    [v6 addStageResolver:v7];

    v8 = [v4 orientationResolutionStage];
    v9 = [[SBTraitsOrientationDefaultResolutionPolicySpecifier alloc] initWithComponentOrder:&unk_283370DC0 dataSource:self->_rolesAndDefaultPoliciesProvider];
    [v8 addResolutionPolicySpecifier:v9 update:0];

    v10 = [(SBTraitsOrientationStageComponent *)[SBTraitsOrientationDefaultTreeNodesSpecifier alloc] initWithComponentOrder:&unk_283370DC0];
    [v8 addNodesSpecificationsSpecifier:v10];

    v11 = [[SBTraitsOrientationDefaultTreeResolver alloc] initWithComponentOrder:&unk_283370DC0];
    [v8 addStageResolver:v11];

    v12 = [v4 userInterfaceStyleResolutionStage];
    v13 = [(SBTraitsUserInterfaceStyleStageComponent *)[SBTraitsUserInterfaceStyleDefaultResolver alloc] initWithComponentOrder:&unk_283370DC0];
    [v12 addStageResolver:v13];

    v14 = [v4 acquireParticipantWithRole:@"SBTraitsParticipantRolePipelineManager" delegate:self];

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

- (void)userInterfaceStyleDidUpdateWithAnimationSettings:(id)a3 fence:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(SBTraitsExternalDisplayPipelineManager *)self _updateInputsForCurrentUserInterfaceStyle];
  [(SBTraitsExternalDisplayPipelineManager *)self _noteInputsNeedUpdateWithAnimationSettings:v7 fence:v6 reason:@"User Interface Style Update"];
}

- (TRAArbitrationInputs)inputs
{
  inputs = self->_inputs;
  if (!inputs)
  {
    v4 = [(SBTraitsPipelineManager *)self sceneDelegate];
    v5 = [v4 windowScene];
    v6 = [v5 interfaceOrientation];

    v7 = objc_alloc(MEMORY[0x277D734B8]);
    v8 = [MEMORY[0x277D75418] currentDevice];
    v9 = [v7 initWithIsPad:{objc_msgSend(v8, "userInterfaceIdiom") == 1}];

    v10 = [objc_alloc(MEMORY[0x277D734A8]) initWithCurrentDeviceOrientation:v6 nonFlatDeviceOrientation:v6];
    v11 = objc_alloc(MEMORY[0x277D734C8]);
    v12 = [(SBTraitsPipelineManager *)self userInterfaceStyleProvider];
    v13 = [v11 initWithUserInterfaceStyle:{objc_msgSend(v12, "currentStyle")}];

    v14 = [objc_alloc(MEMORY[0x277D734B0]) initWithInterfaceIdiomInputs:v9 userInterfaceStyleInputs:v13 deviceOrientationInputs:v10 keyboardInputs:0 ambientPresentationInputs:0];
    v15 = self->_inputs;
    self->_inputs = v14;

    inputs = self->_inputs;
  }

  return inputs;
}

- (void)updatePreferencesForParticipant:(id)a3 updater:(id)a4
{
  v4 = a4;
  [v4 updateZOrderLevelPreferencesWithBlock:&__block_literal_global_161];
  [v4 updateOrientationPreferencesWithBlock:&__block_literal_global_20_0];
}

- (void)didChangeSettingsForParticipant:(id)a3 context:(id)a4
{
  v11 = a3;
  v5 = [v11 role];
  v6 = SBTraitsArbiterOrientationActuationEnabledForRole(v5);

  if (v6)
  {
    v7 = [v11 currentOrientation];
    if (v7 != [v11 previousOrientation])
    {
      v8 = [(SBTraitsPipelineManager *)self sceneDelegate];
      v9 = [v8 windowScene];
      v10 = [v9 displayLayoutPublisher];
      [v10 setInterfaceOrientation:v7];
    }
  }
}

- (void)_updateInputsForCurrentUserInterfaceStyle
{
  v3 = objc_alloc(MEMORY[0x277D734C8]);
  v4 = [(SBTraitsPipelineManager *)self userInterfaceStyleProvider];
  v12 = [v3 initWithUserInterfaceStyle:{objc_msgSend(v4, "currentStyle")}];

  v5 = objc_alloc(MEMORY[0x277D734B0]);
  v6 = [(TRAArbitrationInputs *)self->_inputs interfaceIdiomInputs];
  v7 = [(TRAArbitrationInputs *)self->_inputs deviceOrientationInputs];
  v8 = [(TRAArbitrationInputs *)self->_inputs keyboardInputs];
  v9 = [(TRAArbitrationInputs *)self->_inputs ambientPresentationInputs];
  v10 = [v5 initWithInterfaceIdiomInputs:v6 userInterfaceStyleInputs:v12 deviceOrientationInputs:v7 keyboardInputs:v8 ambientPresentationInputs:v9];
  inputs = self->_inputs;
  self->_inputs = v10;
}

- (void)_noteInputsNeedUpdateWithAnimationSettings:(id)a3 fence:(id)a4 reason:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(SBTraitsPipelineManager *)self arbiter];
  v13 = objc_alloc(MEMORY[0x277D73498]);
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __98__SBTraitsExternalDisplayPipelineManager__noteInputsNeedUpdateWithAnimationSettings_fence_reason___block_invoke;
  v21 = &unk_2783B5238;
  v22 = v9;
  v23 = v10;
  v24 = v11;
  v25 = a2;
  v14 = v11;
  v15 = v10;
  v16 = v9;
  v17 = [v13 initWithBuilder:&v18];
  [v12 setNeedsUpdateArbitrationWithContext:{v17, v18, v19, v20, v21}];
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