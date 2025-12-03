@interface SBPreemptAnimationSwitcherEventResponse
- (SBPreemptAnimationSwitcherEventResponse)initWithOptions:(unint64_t)options;
@end

@implementation SBPreemptAnimationSwitcherEventResponse

- (SBPreemptAnimationSwitcherEventResponse)initWithOptions:(unint64_t)options
{
  v5.receiver = self;
  v5.super_class = SBPreemptAnimationSwitcherEventResponse;
  result = [(SBChainableModifierEventResponse *)&v5 init];
  if (result)
  {
    result->_options = options;
  }

  return result;
}

@end