@interface SBSystemApertureSceneElementSecureFlipBookDescription
- (BOOL)isSequenceDelayed:(id)a3 toState:(id)a4;
- (BOOL)isSequenceFrom:(id)a3 to:(id)a4 supportedConcurrentlyWithContainerSequence:(id)a5 toContainerState:(id)a6;
- (BOOL)isSequenceSecure:(id)a3 toState:(id)a4;
- (CGRect)captureBounds;
- (SBSystemApertureSceneElementSecureFlipBookDescription)initWithConfigurationName:(id)a3 layoutMode:(id)a4 clientDescription:(id)a5 scene:(id)a6 delegate:(id)a7;
- (UIView)referenceView;
- (double)maximumLatencyToExitLoopingState:(id)a3;
- (id)allowedNextStatesForState:(id)a3;
- (void)resetToState:(id)a3 completion:(id)a4;
- (void)transitionToState:(id)a3 completion:(id)a4;
@end

@implementation SBSystemApertureSceneElementSecureFlipBookDescription

- (SBSystemApertureSceneElementSecureFlipBookDescription)initWithConfigurationName:(id)a3 layoutMode:(id)a4 clientDescription:(id)a5 scene:(id)a6 delegate:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v26.receiver = self;
  v26.super_class = SBSystemApertureSceneElementSecureFlipBookDescription;
  v17 = [(SBSystemApertureSceneElementSecureFlipBookDescription *)&v26 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_clientDescription, a5);
    objc_storeWeak(&v18->_scene, v15);
    v19 = [v12 copy];
    configurationName = v18->_configurationName;
    v18->_configurationName = v19;

    objc_storeStrong(&v18->_layoutMode, a4);
    objc_storeWeak(&v18->_delegate, v16);
    [(SBUISystemApertureSecureFlipBookClientDescription *)v18->_clientDescription captureBounds];
    v18->_captureBounds.origin.x = v21;
    v18->_captureBounds.origin.y = v22;
    v18->_captureBounds.size.width = v23;
    v18->_captureBounds.size.height = v24;
  }

  return v18;
}

- (id)allowedNextStatesForState:(id)a3
{
  clientDescription = self->_clientDescription;
  v4 = a3;
  v5 = [(SBUISystemApertureSecureFlipBookClientDescription *)clientDescription stateToAllowedNextStates];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  v8 = v7;

  return v7;
}

- (BOOL)isSequenceSecure:(id)a3 toState:(id)a4
{
  clientDescription = self->_clientDescription;
  v6 = a4;
  v7 = a3;
  v8 = [(SBUISystemApertureSecureFlipBookClientDescription *)clientDescription stateToSecureSequence];
  v9 = [v8 objectForKey:v7];

  LOBYTE(v7) = [v9 containsObject:v6];
  return v7;
}

- (BOOL)isSequenceDelayed:(id)a3 toState:(id)a4
{
  clientDescription = self->_clientDescription;
  v6 = a4;
  v7 = a3;
  v8 = [(SBUISystemApertureSecureFlipBookClientDescription *)clientDescription stateToDelayedSequence];
  v9 = [v8 objectForKey:v7];

  LOBYTE(v7) = [v9 containsObject:v6];
  return v7;
}

- (double)maximumLatencyToExitLoopingState:(id)a3
{
  clientDescription = self->_clientDescription;
  v4 = a3;
  v5 = [(SBUISystemApertureSecureFlipBookClientDescription *)clientDescription stateToMaximumExitLatency];
  v6 = [v5 objectForKey:v4];

  if (v6)
  {
    [v6 doubleValue];
    v8 = v7;
  }

  else
  {
    v8 = 1.79769313e308;
  }

  return v8;
}

- (UIView)referenceView
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained referenceViewForDescription:self];

  return v4;
}

- (CGRect)captureBounds
{
  x = self->_captureBounds.origin.x;
  y = self->_captureBounds.origin.y;
  width = self->_captureBounds.size.width;
  height = self->_captureBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)resetToState:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  if (([WeakRetained isActive] & 1) == 0)
  {
    [SBSystemApertureSceneElementSecureFlipBookDescription resetToState:completion:];
  }

  v9 = objc_alloc(MEMORY[0x277D67E48]);
  configurationName = self->_configurationName;
  layoutMode = self->_layoutMode;
  v12 = [(SBSystemApertureSceneElementSecureFlipBookDescription *)self flipBookName];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __81__SBSystemApertureSceneElementSecureFlipBookDescription_resetToState_completion___block_invoke;
  v15[3] = &unk_2783B4CF0;
  v15[4] = self;
  v13 = [v9 initWithConfigurationName:configurationName layoutMode:layoutMode flipBookName:v12 type:0 toState:v6 captureBoundsUpdateHandler:v15 completionHandler:v7];

  v14 = [MEMORY[0x277CBEB98] setWithObject:v13];
  [WeakRetained sendActions:v14];
}

uint64_t __81__SBSystemApertureSceneElementSecureFlipBookDescription_resetToState_completion___block_invoke(uint64_t result, double a2, double a3, double a4, double a5)
{
  v5 = *(result + 32);
  v5[5] = a2;
  v5[6] = a3;
  v5[7] = a4;
  v5[8] = a5;
  return result;
}

- (void)transitionToState:(id)a3 completion:(id)a4
{
  v14 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  if (([WeakRetained isActive] & 1) == 0)
  {
    [SBSystemApertureSceneElementSecureFlipBookDescription transitionToState:completion:];
  }

  v8 = objc_alloc(MEMORY[0x277D67E48]);
  configurationName = self->_configurationName;
  layoutMode = self->_layoutMode;
  v11 = [(SBSystemApertureSceneElementSecureFlipBookDescription *)self flipBookName];
  v12 = [v8 initWithConfigurationName:configurationName layoutMode:layoutMode flipBookName:v11 type:1 toState:v14 captureBoundsUpdateHandler:0 completionHandler:v6];

  v13 = [MEMORY[0x277CBEB98] setWithObject:v12];
  [WeakRetained sendActions:v13];
}

- (BOOL)isSequenceFrom:(id)a3 to:(id)a4 supportedConcurrentlyWithContainerSequence:(id)a5 toContainerState:(id)a6
{
  clientDescription = self->_clientDescription;
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(SBUISystemApertureSecureFlipBookClientDescription *)clientDescription stateToSupportedConcurrentComposedSequences];
  v15 = SBUISystemApertureSecureFlipBookClientComposedSequence();

  LOBYTE(v11) = [v14 containsObject:v15];
  return v11;
}

- (void)resetToState:completion:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:v3 object:v2 file:@"SBSystemApertureSceneElementSecureFlipBookDescription.m" lineNumber:85 description:{@"Can't send resetToState %@ action, client scene %@ no longer active", v1, v0}];
}

- (void)transitionToState:completion:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:v3 object:v2 file:@"SBSystemApertureSceneElementSecureFlipBookDescription.m" lineNumber:94 description:{@"Can't send transitionToState %@ action, client scene %@ no longer active", v1, v0}];
}

@end