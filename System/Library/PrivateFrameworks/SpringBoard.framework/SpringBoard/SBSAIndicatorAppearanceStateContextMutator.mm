@interface SBSAIndicatorAppearanceStateContextMutator
- (SBSAIndicatorAppearanceStateContext)indicatorAppearanceStateContext;
- (SBSAIndicatorAppearanceStateContextMutator)initWithIndicatorAppearanceStateContext:(id)context;
- (SBSAIndicatorElementContext)activeIndicatorElementContext;
- (int64_t)interSensorIndicatorPhase;
- (int64_t)microIndicatorEjectionPhase;
- (int64_t)microIndicatorPhase;
- (void)setActiveIndicatorElementContext:(id)context;
- (void)setInterSensorIndicatorPhase:(int64_t)phase;
- (void)setMicroIndicatorEjectionPhase:(int64_t)phase;
- (void)setMicroIndicatorPhase:(int64_t)phase;
@end

@implementation SBSAIndicatorAppearanceStateContextMutator

- (int64_t)interSensorIndicatorPhase
{
  WeakRetained = objc_loadWeakRetained(&self->_indicatorAppearanceStateContext);
  interSensorIndicatorPhase = [WeakRetained interSensorIndicatorPhase];

  return interSensorIndicatorPhase;
}

- (int64_t)microIndicatorPhase
{
  WeakRetained = objc_loadWeakRetained(&self->_indicatorAppearanceStateContext);
  microIndicatorPhase = [WeakRetained microIndicatorPhase];

  return microIndicatorPhase;
}

- (int64_t)microIndicatorEjectionPhase
{
  WeakRetained = objc_loadWeakRetained(&self->_indicatorAppearanceStateContext);
  microIndicatorEjectionPhase = [WeakRetained microIndicatorEjectionPhase];

  return microIndicatorEjectionPhase;
}

- (SBSAIndicatorAppearanceStateContextMutator)initWithIndicatorAppearanceStateContext:(id)context
{
  contextCopy = context;
  v8.receiver = self;
  v8.super_class = SBSAIndicatorAppearanceStateContextMutator;
  v5 = [(SBSAIndicatorAppearanceStateContextMutator *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_indicatorAppearanceStateContext, contextCopy);
  }

  return v6;
}

- (SBSAIndicatorElementContext)activeIndicatorElementContext
{
  WeakRetained = objc_loadWeakRetained(&self->_indicatorAppearanceStateContext);
  activeIndicatorElementContext = [WeakRetained activeIndicatorElementContext];

  return activeIndicatorElementContext;
}

- (void)setActiveIndicatorElementContext:(id)context
{
  contextCopy = context;
  WeakRetained = objc_loadWeakRetained(&self->_indicatorAppearanceStateContext);
  [WeakRetained _setActiveIndicatorElementContext:contextCopy];
}

- (void)setInterSensorIndicatorPhase:(int64_t)phase
{
  WeakRetained = objc_loadWeakRetained(&self->_indicatorAppearanceStateContext);
  [WeakRetained _setInterSensorIndicatorPhase:phase];
}

- (void)setMicroIndicatorPhase:(int64_t)phase
{
  WeakRetained = objc_loadWeakRetained(&self->_indicatorAppearanceStateContext);
  [WeakRetained _setMicroIndicatorPhase:phase];
}

- (void)setMicroIndicatorEjectionPhase:(int64_t)phase
{
  WeakRetained = objc_loadWeakRetained(&self->_indicatorAppearanceStateContext);
  [WeakRetained _setMicroIndicatorEjectionPhase:phase];
}

- (SBSAIndicatorAppearanceStateContext)indicatorAppearanceStateContext
{
  WeakRetained = objc_loadWeakRetained(&self->_indicatorAppearanceStateContext);

  return WeakRetained;
}

@end