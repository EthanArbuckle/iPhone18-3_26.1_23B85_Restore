@interface SBSAMaintainedPreferencesMutator
- (SBSAIndicatorAppearanceStateContext)indicatorAppearanceStateContext;
- (SBSAMaintainedPreferences)maintainedPreferences;
- (SBSAMaintainedPreferencesMutator)initWithMaintainedPreferences:(id)a3;
- (id)description;
- (void)setIndicatorAppearanceStateContext:(id)a3;
@end

@implementation SBSAMaintainedPreferencesMutator

- (SBSAMaintainedPreferencesMutator)initWithMaintainedPreferences:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SBSAMaintainedPreferencesMutator;
  v5 = [(SBSAMaintainedPreferencesMutator *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_maintainedPreferences, v4);
  }

  return v6;
}

- (SBSAIndicatorAppearanceStateContext)indicatorAppearanceStateContext
{
  WeakRetained = objc_loadWeakRetained(&self->_maintainedPreferences);
  v3 = [WeakRetained indicatorAppearanceStateContext];

  return v3;
}

- (void)setIndicatorAppearanceStateContext:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_maintainedPreferences);
  [WeakRetained _setIndicatorAppearanceStateContext:v4];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_maintainedPreferences);
  v6 = [v3 stringWithFormat:@"<%@: %p maintainedPreferences: %@>", v4, self, WeakRetained];;

  return v6;
}

- (SBSAMaintainedPreferences)maintainedPreferences
{
  WeakRetained = objc_loadWeakRetained(&self->_maintainedPreferences);

  return WeakRetained;
}

@end