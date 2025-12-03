@interface SBNotifyIconWillZoomDownSwitcherEventResponse
- (SBNotifyIconWillZoomDownSwitcherEventResponse)initWithAppLayout:(id)layout;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
@end

@implementation SBNotifyIconWillZoomDownSwitcherEventResponse

- (SBNotifyIconWillZoomDownSwitcherEventResponse)initWithAppLayout:(id)layout
{
  layoutCopy = layout;
  v9.receiver = self;
  v9.super_class = SBNotifyIconWillZoomDownSwitcherEventResponse;
  v6 = [(SBChainableModifierEventResponse *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_appLayout, layout);
  }

  return v7;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v8.receiver = self;
  v8.super_class = SBNotifyIconWillZoomDownSwitcherEventResponse;
  v4 = [(SBChainableModifierEventResponse *)&v8 descriptionBuilderWithMultilinePrefix:prefix];
  succinctDescription = [(SBAppLayout *)self->_appLayout succinctDescription];
  v6 = [v4 appendObject:succinctDescription withName:@"appLayout"];

  return v4;
}

@end