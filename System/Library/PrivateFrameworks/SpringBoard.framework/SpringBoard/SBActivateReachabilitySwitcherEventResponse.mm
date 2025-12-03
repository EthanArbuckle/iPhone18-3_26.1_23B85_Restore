@interface SBActivateReachabilitySwitcherEventResponse
- (SBActivateReachabilitySwitcherEventResponse)initWithReachabilityContext:(SBReachabilityActivationContext *)context;
- (SBReachabilityActivationContext)reachabilityActivationContext;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
@end

@implementation SBActivateReachabilitySwitcherEventResponse

- (SBActivateReachabilitySwitcherEventResponse)initWithReachabilityContext:(SBReachabilityActivationContext *)context
{
  v9.receiver = self;
  v9.super_class = SBActivateReachabilitySwitcherEventResponse;
  result = [(SBChainableModifierEventResponse *)&v9 init];
  if (result)
  {
    translation = context->translation;
    result->_reachabilityActivationContext.location = context->location;
    result->_reachabilityActivationContext.translation = translation;
    origin = context->viewBounds.origin;
    size = context->viewBounds.size;
    velocity = context->velocity;
    *&result->_reachabilityActivationContext.beganInSafeArea = *&context->beganInSafeArea;
    result->_reachabilityActivationContext.viewBounds.origin = origin;
    result->_reachabilityActivationContext.viewBounds.size = size;
    result->_reachabilityActivationContext.velocity = velocity;
  }

  return result;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v11.receiver = self;
  v11.super_class = SBActivateReachabilitySwitcherEventResponse;
  v4 = [(SBChainableModifierEventResponse *)&v11 descriptionBuilderWithMultilinePrefix:prefix];
  origin = self->_reachabilityActivationContext.viewBounds.origin;
  v9[2] = self->_reachabilityActivationContext.velocity;
  v9[3] = origin;
  v9[4] = self->_reachabilityActivationContext.viewBounds.size;
  v10 = *&self->_reachabilityActivationContext.beganInSafeArea;
  translation = self->_reachabilityActivationContext.translation;
  v9[0] = self->_reachabilityActivationContext.location;
  v9[1] = translation;
  v7 = NSStringFromSBReachabilityActivationContext(v9);
  [v4 appendString:v7 withName:@"context"];

  return v4;
}

- (SBReachabilityActivationContext)reachabilityActivationContext
{
  location = self[1].location;
  retstr->velocity = *&self->viewBounds.size.height;
  retstr->viewBounds.origin = location;
  retstr->viewBounds.size = self[1].translation;
  *&retstr->beganInSafeArea = self[1].velocity.x;
  v4 = *&self->viewBounds.origin.y;
  retstr->location = *&self->velocity.y;
  retstr->translation = v4;
  return self;
}

@end