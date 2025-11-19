@interface SBPreemptAnimationSwitcherEventResponse
- (SBPreemptAnimationSwitcherEventResponse)initWithOptions:(unint64_t)a3;
@end

@implementation SBPreemptAnimationSwitcherEventResponse

- (SBPreemptAnimationSwitcherEventResponse)initWithOptions:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = SBPreemptAnimationSwitcherEventResponse;
  result = [(SBChainableModifierEventResponse *)&v5 init];
  if (result)
  {
    result->_options = a3;
  }

  return result;
}

@end