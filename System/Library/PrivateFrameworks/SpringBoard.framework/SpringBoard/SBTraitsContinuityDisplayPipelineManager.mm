@interface SBTraitsContinuityDisplayPipelineManager
- (SBTraitsContinuityDisplayPipelineManager)initWithArbiter:(id)a3 sceneDelegate:(id)a4 userInterfaceStyleProvider:(id)a5;
- (TRAArbitrationInputs)inputs;
- (void)_noteInputsNeedUpdateWithAnimationSettings:(id)a3 fence:(id)a4 reason:(id)a5;
- (void)_updateInputsForCurrentUserInterfaceStyle;
- (void)_updateInputsForDeviceOrientation:(int64_t)a3;
- (void)didChangeSettingsForParticipant:(id)a3 context:(id)a4;
- (void)setDeviceOrientation:(int64_t)a3;
- (void)setupDefaultPipelineForArbiter:(id)a3;
- (void)updatePreferencesForParticipant:(id)a3 updater:(id)a4;
- (void)userInterfaceStyleDidUpdateWithAnimationSettings:(id)a3 fence:(id)a4;
@end

@implementation SBTraitsContinuityDisplayPipelineManager

- (SBTraitsContinuityDisplayPipelineManager)initWithArbiter:(id)a3 sceneDelegate:(id)a4 userInterfaceStyleProvider:(id)a5
{
  v9.receiver = self;
  v9.super_class = SBTraitsContinuityDisplayPipelineManager;
  v5 = [(SBTraitsPipelineManager *)&v9 initWithArbiter:a3 sceneDelegate:a4 userInterfaceStyleProvider:a5];
  if (v5)
  {
    v6 = objc_alloc_init(SBTraitsEmbeddedDisplayRolesAndDefaultPoliciesProvider);
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
    v23 = [v4 inputsValidationStage];
    v5 = [(SBTraitsInputsValidator *)[SBTraitsInputsAllUnknownOrientationValidator alloc] initWithValidatorOrder:&unk_283371D08];
    [v23 addInputsValidator:v5 update:0];

    v6 = [v4 zOrderResolutionStage];
    v7 = [(SBTraitsZOrderStageComponent *)[SBTraitsZOrderDefaultResolver alloc] initWithComponentOrder:&unk_283371D08];
    [v6 addStageResolver:v7];

    v8 = [v4 orientationResolutionStage];
    v9 = [[SBTraitsOrientationDefaultResolutionPolicySpecifier alloc] initWithComponentOrder:&unk_283371D08 dataSource:self->_rolesAndDefaultPoliciesProvider];
    [v8 addResolutionPolicySpecifier:v9 update:0];

    v10 = [(SBTraitsOrientationStageComponent *)[SBTraitsOrientationDefaultTreeNodesSpecifier alloc] initWithComponentOrder:&unk_283371D08];
    [v8 addNodesSpecificationsSpecifier:v10];

    v11 = [(SBTraitsOrientationStageComponent *)[SBTraitsOrientationSupportTreeNodesSpecifier alloc] initWithComponentOrder:&unk_283371D20];
    orientationTreeNodesSpecifier = self->_orientationTreeNodesSpecifier;
    self->_orientationTreeNodesSpecifier = v11;

    [v8 addNodesSpecificationsSpecifier:self->_orientationTreeNodesSpecifier];
    v13 = [[SBTraitsOrientationDefaultTreeResolver alloc] initWithComponentOrder:&unk_283371D08];
    [v8 addStageResolver:v13];

    v14 = [v4 userInterfaceStyleResolutionStage];
    v15 = [(SBTraitsUserInterfaceStyleStageComponent *)[SBTraitsUserInterfaceStyleDefaultResolver alloc] initWithComponentOrder:&unk_283371D08];
    [v14 addStageResolver:v15];

    v16 = [v4 acquireParticipantWithRole:@"SBTraitsParticipantRolePipelineManager" delegate:self];

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

- (void)userInterfaceStyleDidUpdateWithAnimationSettings:(id)a3 fence:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(SBTraitsContinuityDisplayPipelineManager *)self _updateInputsForCurrentUserInterfaceStyle];
  [(SBTraitsContinuityDisplayPipelineManager *)self _noteInputsNeedUpdateWithAnimationSettings:v7 fence:v6 reason:@"User Interface Style Update"];
}

- (TRAArbitrationInputs)inputs
{
  inputs = self->_inputs;
  if (!inputs)
  {
    v4 = objc_alloc(MEMORY[0x277D734B8]);
    v5 = [MEMORY[0x277D75418] currentDevice];
    v6 = [v4 initWithIsPad:{objc_msgSend(v5, "userInterfaceIdiom") == 1}];

    v7 = [objc_alloc(MEMORY[0x277D734A8]) initWithCurrentDeviceOrientation:1 nonFlatDeviceOrientation:1];
    v8 = objc_alloc(MEMORY[0x277D734C8]);
    v9 = [(SBTraitsPipelineManager *)self userInterfaceStyleProvider];
    v10 = [v8 initWithUserInterfaceStyle:{objc_msgSend(v9, "currentStyle")}];

    v11 = [objc_alloc(MEMORY[0x277D734B0]) initWithInterfaceIdiomInputs:v6 userInterfaceStyleInputs:v10 deviceOrientationInputs:v7 keyboardInputs:0 ambientPresentationInputs:0];
    v12 = self->_inputs;
    self->_inputs = v11;

    inputs = self->_inputs;
  }

  return inputs;
}

- (void)setDeviceOrientation:(int64_t)a3
{
  if (self->_currentDeviceOrientation != a3)
  {
    self->_currentDeviceOrientation = a3;
    [(SBTraitsContinuityDisplayPipelineManager *)self _updateInputsForDeviceOrientation:?];
    v5 = [(SBTraitsPipelineManager *)self defaultOrientationAnimationSettingsAnimatable:1];
    [(SBTraitsContinuityDisplayPipelineManager *)self _noteInputsNeedUpdateWithAnimationSettings:v5 fence:0 reason:@"Device orientation update"];
  }
}

- (void)updatePreferencesForParticipant:(id)a3 updater:(id)a4
{
  v4 = a4;
  [v4 updateZOrderLevelPreferencesWithBlock:&__block_literal_global_339];
  [v4 updateOrientationPreferencesWithBlock:&__block_literal_global_86_4];
}

- (void)didChangeSettingsForParticipant:(id)a3 context:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(SBTraitsOrientationSupportTreeNodesSpecifier *)self->_orientationTreeNodesSpecifier supportedOrientations];
  v7 = [v5 currentOrientation];
  v25 = [v5 previousOrientation];
  if (v7 != v25 || self->_currentSupportedInterfaceOrientations != v6)
  {
    v8 = [(SBTraitsPipelineManager *)self sceneDelegate];
    v9 = [v8 windowScene];
    v10 = v9;
    if (v7 != v25)
    {
      v20 = v9;
      v21 = v6;
      v22 = self;
      v23 = v5;
      v24 = [MEMORY[0x277D75D18] _currentAnimationSettings];
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v11 = [MEMORY[0x277D759A0] screens];
      v12 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
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
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v26 + 1) + 8 * i);
            v17 = [v16 displayIdentity];
            if ([v17 isContinuityDisplay])
            {
              v18 = objc_opt_respondsToSelector();

              if (v18)
              {
                [SBApp noteActiveInterfaceOrientationWillChangeToOrientation:v7 screen:v16];
                [SBApp noteActiveInterfaceOrientationDidChangeToOrientation:v7 willAnimateWithSettings:v24 fromOrientation:v25 screen:v16];
              }
            }

            else
            {
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v13);
      }

      v10 = v20;
      v19 = [v20 displayLayoutPublisher];
      [v19 setInterfaceOrientation:v7];

      self = v22;
      v5 = v23;
      v6 = v21;
    }

    self->_currentSupportedInterfaceOrientations = v6;
    [v8 setInterfaceOrientation:v7 supportedInterfaceOrientations:v6];
  }
}

- (void)_updateInputsForDeviceOrientation:(int64_t)a3
{
  v11 = [objc_alloc(MEMORY[0x277D734A8]) initWithCurrentDeviceOrientation:a3 nonFlatDeviceOrientation:a3];
  v4 = objc_alloc(MEMORY[0x277D734B0]);
  v5 = [(TRAArbitrationInputs *)self->_inputs interfaceIdiomInputs];
  v6 = [(TRAArbitrationInputs *)self->_inputs userInterfaceStyleInputs];
  v7 = [(TRAArbitrationInputs *)self->_inputs keyboardInputs];
  v8 = [(TRAArbitrationInputs *)self->_inputs ambientPresentationInputs];
  v9 = [v4 initWithInterfaceIdiomInputs:v5 userInterfaceStyleInputs:v6 deviceOrientationInputs:v11 keyboardInputs:v7 ambientPresentationInputs:v8];
  inputs = self->_inputs;
  self->_inputs = v9;
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
  v20 = __100__SBTraitsContinuityDisplayPipelineManager__noteInputsNeedUpdateWithAnimationSettings_fence_reason___block_invoke;
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