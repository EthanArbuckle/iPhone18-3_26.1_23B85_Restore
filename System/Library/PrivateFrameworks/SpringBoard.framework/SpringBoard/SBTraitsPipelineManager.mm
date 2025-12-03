@interface SBTraitsPipelineManager
- (SBTraitsPipelineManager)initWithArbiter:(id)arbiter sceneDelegate:(id)delegate userInterfaceStyleProvider:(id)provider;
- (SBWindowSceneDelegate)sceneDelegate;
- (TRAArbiter)arbiter;
- (TRAArbitrationInputs)inputs;
- (id)ambientPresentationStageRoles;
- (id)defaultOrientationAnimationSettingsAnimatable:(BOOL)animatable;
- (id)newBlockBasedOrientationPolicySpecifier:(id)specifier forParticipant:(id)participant;
- (id)newBlockBasedOrientationPolicySpecifier:(id)specifier forRole:(id)role;
- (id)orientationStageRoles;
- (id)userInterfaceStyleStageRoles;
- (id)zOrderStageRoles;
- (void)setupDefaultPipelineForArbiter:(id)arbiter;
- (void)userInterfaceStyleDidUpdateWithAnimationSettings:(id)settings fence:(id)fence;
@end

@implementation SBTraitsPipelineManager

- (TRAArbiter)arbiter
{
  WeakRetained = objc_loadWeakRetained(&self->_arbiter);

  return WeakRetained;
}

- (SBWindowSceneDelegate)sceneDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_sceneDelegate);

  return WeakRetained;
}

- (SBTraitsPipelineManager)initWithArbiter:(id)arbiter sceneDelegate:(id)delegate userInterfaceStyleProvider:(id)provider
{
  arbiterCopy = arbiter;
  delegateCopy = delegate;
  providerCopy = provider;
  if (!providerCopy)
  {
    [SBTraitsPipelineManager initWithArbiter:sceneDelegate:userInterfaceStyleProvider:];
  }

  v14.receiver = self;
  v14.super_class = SBTraitsPipelineManager;
  v11 = [(SBTraitsPipelineManager *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_arbiter, arbiterCopy);
    objc_storeWeak(&v12->_sceneDelegate, delegateCopy);
    objc_storeStrong(&v12->_userInterfaceStyleProvider, provider);
  }

  return v12;
}

- (id)newBlockBasedOrientationPolicySpecifier:(id)specifier forRole:(id)role
{
  roleCopy = role;
  specifierCopy = specifier;
  v8 = [SBTraitsPipelineBlockBasedPolicySpecifier alloc];
  WeakRetained = objc_loadWeakRetained(&self->_arbiter);
  v10 = [(SBTraitsPipelineBlockBasedPolicySpecifier *)v8 initWithPolicySpecifierBlock:specifierCopy specifierDescription:roleCopy componentOrder:&unk_283370A18 arbiter:WeakRetained];

  return v10;
}

- (id)newBlockBasedOrientationPolicySpecifier:(id)specifier forParticipant:(id)participant
{
  participantCopy = participant;
  specifierCopy = specifier;
  v8 = [SBTraitsPipelineBlockBasedPolicySpecifier alloc];
  role = [participantCopy role];
  v10 = MEMORY[0x277CCABB0];
  [participantCopy currentZOrderLevel];
  v12 = v11;

  v13 = [v10 numberWithDouble:v12];
  WeakRetained = objc_loadWeakRetained(&self->_arbiter);
  v15 = [(SBTraitsPipelineBlockBasedPolicySpecifier *)v8 initWithPolicySpecifierBlock:specifierCopy specifierDescription:role componentOrder:v13 arbiter:WeakRetained];

  return v15;
}

- (id)defaultOrientationAnimationSettingsAnimatable:(BOOL)animatable
{
  animatableCopy = animatable;
  if (!self->_medusaSettings)
  {
    v5 = +[SBMedusaDomain rootSettings];
    medusa1oSettings = [v5 medusa1oSettings];
    medusaSettings = self->_medusaSettings;
    self->_medusaSettings = medusa1oSettings;
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v10 = dbl_21F8A6790[(userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1];
  [(SBMedusa1oSettings *)self->_medusaSettings rotationSlowdownFactor];
  v12 = v10 * v11;
  if (animatableCopy)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0.0;
  }

  v14 = MEMORY[0x277CF0B70];
  v15 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
  v16 = [v14 settingsWithDuration:v15 delay:v13 timingFunction:0.0];

  return v16;
}

- (void)setupDefaultPipelineForArbiter:(id)arbiter
{
  OUTLINED_FUNCTION_1_2();
  objc_opt_class();
  OUTLINED_FUNCTION_0_25();

  NSRequestConcreteImplementation();
}

- (void)userInterfaceStyleDidUpdateWithAnimationSettings:(id)settings fence:(id)fence
{
  OUTLINED_FUNCTION_1_2();
  objc_opt_class();
  OUTLINED_FUNCTION_0_25();

  NSRequestConcreteImplementation();
}

- (TRAArbitrationInputs)inputs
{
  OUTLINED_FUNCTION_1_2();
  objc_opt_class();
  OUTLINED_FUNCTION_0_25();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)zOrderStageRoles
{
  OUTLINED_FUNCTION_1_2();
  objc_opt_class();
  OUTLINED_FUNCTION_0_25();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)orientationStageRoles
{
  OUTLINED_FUNCTION_1_2();
  objc_opt_class();
  OUTLINED_FUNCTION_0_25();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)ambientPresentationStageRoles
{
  OUTLINED_FUNCTION_1_2();
  objc_opt_class();
  OUTLINED_FUNCTION_0_25();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)userInterfaceStyleStageRoles
{
  OUTLINED_FUNCTION_1_2();
  objc_opt_class();
  OUTLINED_FUNCTION_0_25();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)initWithArbiter:sceneDelegate:userInterfaceStyleProvider:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"SBTraitsPipelineManager.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"userInterfaceStyleProvider"}];
}

@end