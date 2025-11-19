@interface SBNotifyIconWillZoomDownSwitcherEventResponse
- (SBNotifyIconWillZoomDownSwitcherEventResponse)initWithAppLayout:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
@end

@implementation SBNotifyIconWillZoomDownSwitcherEventResponse

- (SBNotifyIconWillZoomDownSwitcherEventResponse)initWithAppLayout:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBNotifyIconWillZoomDownSwitcherEventResponse;
  v6 = [(SBChainableModifierEventResponse *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_appLayout, a3);
  }

  return v7;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v8.receiver = self;
  v8.super_class = SBNotifyIconWillZoomDownSwitcherEventResponse;
  v4 = [(SBChainableModifierEventResponse *)&v8 descriptionBuilderWithMultilinePrefix:a3];
  v5 = [(SBAppLayout *)self->_appLayout succinctDescription];
  v6 = [v4 appendObject:v5 withName:@"appLayout"];

  return v4;
}

@end