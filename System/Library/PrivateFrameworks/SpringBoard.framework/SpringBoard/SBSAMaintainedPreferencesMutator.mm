@interface SBSAMaintainedPreferencesMutator
- (SBSAIndicatorAppearanceStateContext)indicatorAppearanceStateContext;
- (SBSAMaintainedPreferences)maintainedPreferences;
- (SBSAMaintainedPreferencesMutator)initWithMaintainedPreferences:(id)preferences;
- (id)description;
- (void)setIndicatorAppearanceStateContext:(id)context;
@end

@implementation SBSAMaintainedPreferencesMutator

- (SBSAMaintainedPreferencesMutator)initWithMaintainedPreferences:(id)preferences
{
  preferencesCopy = preferences;
  v8.receiver = self;
  v8.super_class = SBSAMaintainedPreferencesMutator;
  v5 = [(SBSAMaintainedPreferencesMutator *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_maintainedPreferences, preferencesCopy);
  }

  return v6;
}

- (SBSAIndicatorAppearanceStateContext)indicatorAppearanceStateContext
{
  WeakRetained = objc_loadWeakRetained(&self->_maintainedPreferences);
  indicatorAppearanceStateContext = [WeakRetained indicatorAppearanceStateContext];

  return indicatorAppearanceStateContext;
}

- (void)setIndicatorAppearanceStateContext:(id)context
{
  contextCopy = context;
  WeakRetained = objc_loadWeakRetained(&self->_maintainedPreferences);
  [WeakRetained _setIndicatorAppearanceStateContext:contextCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_maintainedPreferences);
  weakRetained = [v3 stringWithFormat:@"<%@: %p maintainedPreferences: %@>", v4, self, WeakRetained];;

  return weakRetained;
}

- (SBSAMaintainedPreferences)maintainedPreferences
{
  WeakRetained = objc_loadWeakRetained(&self->_maintainedPreferences);

  return WeakRetained;
}

@end