@interface SBSystemApertureSceneElementSecureFlipBookDescription
- (BOOL)isSequenceDelayed:(id)delayed toState:(id)state;
- (BOOL)isSequenceFrom:(id)from to:(id)to supportedConcurrentlyWithContainerSequence:(id)sequence toContainerState:(id)state;
- (BOOL)isSequenceSecure:(id)secure toState:(id)state;
- (CGRect)captureBounds;
- (SBSystemApertureSceneElementSecureFlipBookDescription)initWithConfigurationName:(id)name layoutMode:(id)mode clientDescription:(id)description scene:(id)scene delegate:(id)delegate;
- (UIView)referenceView;
- (double)maximumLatencyToExitLoopingState:(id)state;
- (id)allowedNextStatesForState:(id)state;
- (void)resetToState:(id)state completion:(id)completion;
- (void)transitionToState:(id)state completion:(id)completion;
@end

@implementation SBSystemApertureSceneElementSecureFlipBookDescription

- (SBSystemApertureSceneElementSecureFlipBookDescription)initWithConfigurationName:(id)name layoutMode:(id)mode clientDescription:(id)description scene:(id)scene delegate:(id)delegate
{
  nameCopy = name;
  modeCopy = mode;
  descriptionCopy = description;
  sceneCopy = scene;
  delegateCopy = delegate;
  v26.receiver = self;
  v26.super_class = SBSystemApertureSceneElementSecureFlipBookDescription;
  v17 = [(SBSystemApertureSceneElementSecureFlipBookDescription *)&v26 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_clientDescription, description);
    objc_storeWeak(&v18->_scene, sceneCopy);
    v19 = [nameCopy copy];
    configurationName = v18->_configurationName;
    v18->_configurationName = v19;

    objc_storeStrong(&v18->_layoutMode, mode);
    objc_storeWeak(&v18->_delegate, delegateCopy);
    [(SBUISystemApertureSecureFlipBookClientDescription *)v18->_clientDescription captureBounds];
    v18->_captureBounds.origin.x = v21;
    v18->_captureBounds.origin.y = v22;
    v18->_captureBounds.size.width = v23;
    v18->_captureBounds.size.height = v24;
  }

  return v18;
}

- (id)allowedNextStatesForState:(id)state
{
  clientDescription = self->_clientDescription;
  stateCopy = state;
  stateToAllowedNextStates = [(SBUISystemApertureSecureFlipBookClientDescription *)clientDescription stateToAllowedNextStates];
  v6 = [stateToAllowedNextStates objectForKeyedSubscript:stateCopy];

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

- (BOOL)isSequenceSecure:(id)secure toState:(id)state
{
  clientDescription = self->_clientDescription;
  stateCopy = state;
  secureCopy = secure;
  stateToSecureSequence = [(SBUISystemApertureSecureFlipBookClientDescription *)clientDescription stateToSecureSequence];
  v9 = [stateToSecureSequence objectForKey:secureCopy];

  LOBYTE(secureCopy) = [v9 containsObject:stateCopy];
  return secureCopy;
}

- (BOOL)isSequenceDelayed:(id)delayed toState:(id)state
{
  clientDescription = self->_clientDescription;
  stateCopy = state;
  delayedCopy = delayed;
  stateToDelayedSequence = [(SBUISystemApertureSecureFlipBookClientDescription *)clientDescription stateToDelayedSequence];
  v9 = [stateToDelayedSequence objectForKey:delayedCopy];

  LOBYTE(delayedCopy) = [v9 containsObject:stateCopy];
  return delayedCopy;
}

- (double)maximumLatencyToExitLoopingState:(id)state
{
  clientDescription = self->_clientDescription;
  stateCopy = state;
  stateToMaximumExitLatency = [(SBUISystemApertureSecureFlipBookClientDescription *)clientDescription stateToMaximumExitLatency];
  v6 = [stateToMaximumExitLatency objectForKey:stateCopy];

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

- (void)resetToState:(id)state completion:(id)completion
{
  stateCopy = state;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  if (([WeakRetained isActive] & 1) == 0)
  {
    [SBSystemApertureSceneElementSecureFlipBookDescription resetToState:completion:];
  }

  v9 = objc_alloc(MEMORY[0x277D67E48]);
  configurationName = self->_configurationName;
  layoutMode = self->_layoutMode;
  flipBookName = [(SBSystemApertureSceneElementSecureFlipBookDescription *)self flipBookName];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __81__SBSystemApertureSceneElementSecureFlipBookDescription_resetToState_completion___block_invoke;
  v15[3] = &unk_2783B4CF0;
  v15[4] = self;
  v13 = [v9 initWithConfigurationName:configurationName layoutMode:layoutMode flipBookName:flipBookName type:0 toState:stateCopy captureBoundsUpdateHandler:v15 completionHandler:completionCopy];

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

- (void)transitionToState:(id)state completion:(id)completion
{
  stateCopy = state;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  if (([WeakRetained isActive] & 1) == 0)
  {
    [SBSystemApertureSceneElementSecureFlipBookDescription transitionToState:completion:];
  }

  v8 = objc_alloc(MEMORY[0x277D67E48]);
  configurationName = self->_configurationName;
  layoutMode = self->_layoutMode;
  flipBookName = [(SBSystemApertureSceneElementSecureFlipBookDescription *)self flipBookName];
  v12 = [v8 initWithConfigurationName:configurationName layoutMode:layoutMode flipBookName:flipBookName type:1 toState:stateCopy captureBoundsUpdateHandler:0 completionHandler:completionCopy];

  v13 = [MEMORY[0x277CBEB98] setWithObject:v12];
  [WeakRetained sendActions:v13];
}

- (BOOL)isSequenceFrom:(id)from to:(id)to supportedConcurrentlyWithContainerSequence:(id)sequence toContainerState:(id)state
{
  clientDescription = self->_clientDescription;
  stateCopy = state;
  sequenceCopy = sequence;
  toCopy = to;
  fromCopy = from;
  stateToSupportedConcurrentComposedSequences = [(SBUISystemApertureSecureFlipBookClientDescription *)clientDescription stateToSupportedConcurrentComposedSequences];
  v15 = SBUISystemApertureSecureFlipBookClientComposedSequence();

  LOBYTE(sequenceCopy) = [stateToSupportedConcurrentComposedSequences containsObject:v15];
  return sequenceCopy;
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