@interface SBIconViewVisibilitySwitcherEventResponse
- (SBIconViewVisibilitySwitcherEventResponse)initWithAppLayout:(id)layout visible:(BOOL)visible animationSettings:(id)settings excludedIconLocations:(id)locations;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
@end

@implementation SBIconViewVisibilitySwitcherEventResponse

- (SBIconViewVisibilitySwitcherEventResponse)initWithAppLayout:(id)layout visible:(BOOL)visible animationSettings:(id)settings excludedIconLocations:(id)locations
{
  layoutCopy = layout;
  settingsCopy = settings;
  locationsCopy = locations;
  v17.receiver = self;
  v17.super_class = SBIconViewVisibilitySwitcherEventResponse;
  v14 = [(SBChainableModifierEventResponse *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_appLayout, layout);
    v15->_visible = visible;
    objc_storeStrong(&v15->_animationSettings, settings);
    objc_storeStrong(&v15->_excludedIconLocations, locations);
    v15->_scale = 1.0;
  }

  return v15;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v10.receiver = self;
  v10.super_class = SBIconViewVisibilitySwitcherEventResponse;
  v4 = [(SBChainableModifierEventResponse *)&v10 descriptionBuilderWithMultilinePrefix:prefix];
  v5 = [v4 appendBool:self->_visible withName:@"visible"];
  v6 = [v4 appendObject:self->_animationSettings withName:@"animationSettings"];
  succinctDescription = [(SBAppLayout *)self->_appLayout succinctDescription];
  v8 = [v4 appendObject:succinctDescription withName:@"appLayout"];

  return v4;
}

@end