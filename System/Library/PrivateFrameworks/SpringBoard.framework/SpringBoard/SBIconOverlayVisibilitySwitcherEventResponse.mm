@interface SBIconOverlayVisibilitySwitcherEventResponse
- (SBIconOverlayVisibilitySwitcherEventResponse)initWithAppLayout:(id)layout visible:(BOOL)visible;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
@end

@implementation SBIconOverlayVisibilitySwitcherEventResponse

- (SBIconOverlayVisibilitySwitcherEventResponse)initWithAppLayout:(id)layout visible:(BOOL)visible
{
  layoutCopy = layout;
  v11.receiver = self;
  v11.super_class = SBIconOverlayVisibilitySwitcherEventResponse;
  v8 = [(SBChainableModifierEventResponse *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_appLayout, layout);
    v9->_visible = visible;
  }

  return v9;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v9.receiver = self;
  v9.super_class = SBIconOverlayVisibilitySwitcherEventResponse;
  v4 = [(SBChainableModifierEventResponse *)&v9 descriptionBuilderWithMultilinePrefix:prefix];
  v5 = [v4 appendBool:self->_visible withName:@"visible"];
  succinctDescription = [(SBAppLayout *)self->_appLayout succinctDescription];
  v7 = [v4 appendObject:succinctDescription withName:@"appLayout"];

  return v4;
}

@end