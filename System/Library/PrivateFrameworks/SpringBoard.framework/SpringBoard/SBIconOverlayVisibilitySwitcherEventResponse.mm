@interface SBIconOverlayVisibilitySwitcherEventResponse
- (SBIconOverlayVisibilitySwitcherEventResponse)initWithAppLayout:(id)a3 visible:(BOOL)a4;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
@end

@implementation SBIconOverlayVisibilitySwitcherEventResponse

- (SBIconOverlayVisibilitySwitcherEventResponse)initWithAppLayout:(id)a3 visible:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = SBIconOverlayVisibilitySwitcherEventResponse;
  v8 = [(SBChainableModifierEventResponse *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_appLayout, a3);
    v9->_visible = a4;
  }

  return v9;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v9.receiver = self;
  v9.super_class = SBIconOverlayVisibilitySwitcherEventResponse;
  v4 = [(SBChainableModifierEventResponse *)&v9 descriptionBuilderWithMultilinePrefix:a3];
  v5 = [v4 appendBool:self->_visible withName:@"visible"];
  v6 = [(SBAppLayout *)self->_appLayout succinctDescription];
  v7 = [v4 appendObject:v6 withName:@"appLayout"];

  return v4;
}

@end