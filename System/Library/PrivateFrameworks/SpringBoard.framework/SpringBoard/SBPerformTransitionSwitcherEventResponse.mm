@interface SBPerformTransitionSwitcherEventResponse
- (SBPerformTransitionSwitcherEventResponse)initWithTransitionRequest:(id)request gestureInitiated:(BOOL)initiated;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
@end

@implementation SBPerformTransitionSwitcherEventResponse

- (SBPerformTransitionSwitcherEventResponse)initWithTransitionRequest:(id)request gestureInitiated:(BOOL)initiated
{
  requestCopy = request;
  v11.receiver = self;
  v11.super_class = SBPerformTransitionSwitcherEventResponse;
  v8 = [(SBChainableModifierEventResponse *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_transitionRequest, request);
    v9->_gestureInitiated = initiated;
  }

  return v9;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v10.receiver = self;
  v10.super_class = SBPerformTransitionSwitcherEventResponse;
  prefixCopy = prefix;
  v5 = [(SBChainableModifierEventResponse *)&v10 descriptionBuilderWithMultilinePrefix:prefixCopy];
  v6 = [v5 appendBool:self->_gestureInitiated withName:{@"gestureInitiated", v10.receiver, v10.super_class}];
  v7 = [(SBSwitcherTransitionRequest *)self->_transitionRequest descriptionWithMultilinePrefix:prefixCopy];

  v8 = [v5 appendObject:v7 withName:@"request"];

  return v5;
}

@end