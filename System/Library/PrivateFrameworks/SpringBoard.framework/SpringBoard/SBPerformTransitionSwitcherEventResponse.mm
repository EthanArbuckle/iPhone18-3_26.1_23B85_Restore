@interface SBPerformTransitionSwitcherEventResponse
- (SBPerformTransitionSwitcherEventResponse)initWithTransitionRequest:(id)a3 gestureInitiated:(BOOL)a4;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
@end

@implementation SBPerformTransitionSwitcherEventResponse

- (SBPerformTransitionSwitcherEventResponse)initWithTransitionRequest:(id)a3 gestureInitiated:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = SBPerformTransitionSwitcherEventResponse;
  v8 = [(SBChainableModifierEventResponse *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_transitionRequest, a3);
    v9->_gestureInitiated = a4;
  }

  return v9;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v10.receiver = self;
  v10.super_class = SBPerformTransitionSwitcherEventResponse;
  v4 = a3;
  v5 = [(SBChainableModifierEventResponse *)&v10 descriptionBuilderWithMultilinePrefix:v4];
  v6 = [v5 appendBool:self->_gestureInitiated withName:{@"gestureInitiated", v10.receiver, v10.super_class}];
  v7 = [(SBSwitcherTransitionRequest *)self->_transitionRequest descriptionWithMultilinePrefix:v4];

  v8 = [v5 appendObject:v7 withName:@"request"];

  return v5;
}

@end