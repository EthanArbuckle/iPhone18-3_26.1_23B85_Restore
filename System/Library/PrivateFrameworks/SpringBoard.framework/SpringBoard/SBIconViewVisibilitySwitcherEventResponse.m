@interface SBIconViewVisibilitySwitcherEventResponse
- (SBIconViewVisibilitySwitcherEventResponse)initWithAppLayout:(id)a3 visible:(BOOL)a4 animationSettings:(id)a5 excludedIconLocations:(id)a6;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
@end

@implementation SBIconViewVisibilitySwitcherEventResponse

- (SBIconViewVisibilitySwitcherEventResponse)initWithAppLayout:(id)a3 visible:(BOOL)a4 animationSettings:(id)a5 excludedIconLocations:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = SBIconViewVisibilitySwitcherEventResponse;
  v14 = [(SBChainableModifierEventResponse *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_appLayout, a3);
    v15->_visible = a4;
    objc_storeStrong(&v15->_animationSettings, a5);
    objc_storeStrong(&v15->_excludedIconLocations, a6);
    v15->_scale = 1.0;
  }

  return v15;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v10.receiver = self;
  v10.super_class = SBIconViewVisibilitySwitcherEventResponse;
  v4 = [(SBChainableModifierEventResponse *)&v10 descriptionBuilderWithMultilinePrefix:a3];
  v5 = [v4 appendBool:self->_visible withName:@"visible"];
  v6 = [v4 appendObject:self->_animationSettings withName:@"animationSettings"];
  v7 = [(SBAppLayout *)self->_appLayout succinctDescription];
  v8 = [v4 appendObject:v7 withName:@"appLayout"];

  return v4;
}

@end