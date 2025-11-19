@interface SBSAIndicatorAppearanceStateContextMutator
- (SBSAIndicatorAppearanceStateContext)indicatorAppearanceStateContext;
- (SBSAIndicatorAppearanceStateContextMutator)initWithIndicatorAppearanceStateContext:(id)a3;
- (SBSAIndicatorElementContext)activeIndicatorElementContext;
- (int64_t)interSensorIndicatorPhase;
- (int64_t)microIndicatorEjectionPhase;
- (int64_t)microIndicatorPhase;
- (void)setActiveIndicatorElementContext:(id)a3;
- (void)setInterSensorIndicatorPhase:(int64_t)a3;
- (void)setMicroIndicatorEjectionPhase:(int64_t)a3;
- (void)setMicroIndicatorPhase:(int64_t)a3;
@end

@implementation SBSAIndicatorAppearanceStateContextMutator

- (int64_t)interSensorIndicatorPhase
{
  WeakRetained = objc_loadWeakRetained(&self->_indicatorAppearanceStateContext);
  v3 = [WeakRetained interSensorIndicatorPhase];

  return v3;
}

- (int64_t)microIndicatorPhase
{
  WeakRetained = objc_loadWeakRetained(&self->_indicatorAppearanceStateContext);
  v3 = [WeakRetained microIndicatorPhase];

  return v3;
}

- (int64_t)microIndicatorEjectionPhase
{
  WeakRetained = objc_loadWeakRetained(&self->_indicatorAppearanceStateContext);
  v3 = [WeakRetained microIndicatorEjectionPhase];

  return v3;
}

- (SBSAIndicatorAppearanceStateContextMutator)initWithIndicatorAppearanceStateContext:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SBSAIndicatorAppearanceStateContextMutator;
  v5 = [(SBSAIndicatorAppearanceStateContextMutator *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_indicatorAppearanceStateContext, v4);
  }

  return v6;
}

- (SBSAIndicatorElementContext)activeIndicatorElementContext
{
  WeakRetained = objc_loadWeakRetained(&self->_indicatorAppearanceStateContext);
  v3 = [WeakRetained activeIndicatorElementContext];

  return v3;
}

- (void)setActiveIndicatorElementContext:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_indicatorAppearanceStateContext);
  [WeakRetained _setActiveIndicatorElementContext:v4];
}

- (void)setInterSensorIndicatorPhase:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_indicatorAppearanceStateContext);
  [WeakRetained _setInterSensorIndicatorPhase:a3];
}

- (void)setMicroIndicatorPhase:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_indicatorAppearanceStateContext);
  [WeakRetained _setMicroIndicatorPhase:a3];
}

- (void)setMicroIndicatorEjectionPhase:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_indicatorAppearanceStateContext);
  [WeakRetained _setMicroIndicatorEjectionPhase:a3];
}

- (SBSAIndicatorAppearanceStateContext)indicatorAppearanceStateContext
{
  WeakRetained = objc_loadWeakRetained(&self->_indicatorAppearanceStateContext);

  return WeakRetained;
}

@end