@interface SBTraitsPipelineManager
- (SBTraitsPipelineManager)initWithArbiter:(id)a3 sceneDelegate:(id)a4 userInterfaceStyleProvider:(id)a5;
- (SBWindowSceneDelegate)sceneDelegate;
- (TRAArbiter)arbiter;
- (TRAArbitrationInputs)inputs;
- (id)ambientPresentationStageRoles;
- (id)defaultOrientationAnimationSettingsAnimatable:(BOOL)a3;
- (id)newBlockBasedOrientationPolicySpecifier:(id)a3 forParticipant:(id)a4;
- (id)newBlockBasedOrientationPolicySpecifier:(id)a3 forRole:(id)a4;
- (id)orientationStageRoles;
- (id)userInterfaceStyleStageRoles;
- (id)zOrderStageRoles;
- (void)setupDefaultPipelineForArbiter:(id)a3;
- (void)userInterfaceStyleDidUpdateWithAnimationSettings:(id)a3 fence:(id)a4;
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

- (SBTraitsPipelineManager)initWithArbiter:(id)a3 sceneDelegate:(id)a4 userInterfaceStyleProvider:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v10)
  {
    [SBTraitsPipelineManager initWithArbiter:sceneDelegate:userInterfaceStyleProvider:];
  }

  v14.receiver = self;
  v14.super_class = SBTraitsPipelineManager;
  v11 = [(SBTraitsPipelineManager *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_arbiter, v8);
    objc_storeWeak(&v12->_sceneDelegate, v9);
    objc_storeStrong(&v12->_userInterfaceStyleProvider, a5);
  }

  return v12;
}

- (id)newBlockBasedOrientationPolicySpecifier:(id)a3 forRole:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [SBTraitsPipelineBlockBasedPolicySpecifier alloc];
  WeakRetained = objc_loadWeakRetained(&self->_arbiter);
  v10 = [(SBTraitsPipelineBlockBasedPolicySpecifier *)v8 initWithPolicySpecifierBlock:v7 specifierDescription:v6 componentOrder:&unk_283370A18 arbiter:WeakRetained];

  return v10;
}

- (id)newBlockBasedOrientationPolicySpecifier:(id)a3 forParticipant:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [SBTraitsPipelineBlockBasedPolicySpecifier alloc];
  v9 = [v6 role];
  v10 = MEMORY[0x277CCABB0];
  [v6 currentZOrderLevel];
  v12 = v11;

  v13 = [v10 numberWithDouble:v12];
  WeakRetained = objc_loadWeakRetained(&self->_arbiter);
  v15 = [(SBTraitsPipelineBlockBasedPolicySpecifier *)v8 initWithPolicySpecifierBlock:v7 specifierDescription:v9 componentOrder:v13 arbiter:WeakRetained];

  return v15;
}

- (id)defaultOrientationAnimationSettingsAnimatable:(BOOL)a3
{
  v3 = a3;
  if (!self->_medusaSettings)
  {
    v5 = +[SBMedusaDomain rootSettings];
    v6 = [v5 medusa1oSettings];
    medusaSettings = self->_medusaSettings;
    self->_medusaSettings = v6;
  }

  v8 = [MEMORY[0x277D75418] currentDevice];
  v9 = [v8 userInterfaceIdiom];

  v10 = dbl_21F8A6790[(v9 & 0xFFFFFFFFFFFFFFFBLL) == 1];
  [(SBMedusa1oSettings *)self->_medusaSettings rotationSlowdownFactor];
  v12 = v10 * v11;
  if (v3)
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

- (void)setupDefaultPipelineForArbiter:(id)a3
{
  OUTLINED_FUNCTION_1_2();
  objc_opt_class();
  OUTLINED_FUNCTION_0_25();

  NSRequestConcreteImplementation();
}

- (void)userInterfaceStyleDidUpdateWithAnimationSettings:(id)a3 fence:(id)a4
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