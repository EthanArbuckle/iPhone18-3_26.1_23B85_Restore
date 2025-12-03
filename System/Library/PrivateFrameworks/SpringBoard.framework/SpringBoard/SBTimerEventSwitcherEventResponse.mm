@interface SBTimerEventSwitcherEventResponse
- (SBTimerEventSwitcherEventResponse)initWithDelay:(double)delay validator:(id)validator reason:(id)reason;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
@end

@implementation SBTimerEventSwitcherEventResponse

- (SBTimerEventSwitcherEventResponse)initWithDelay:(double)delay validator:(id)validator reason:(id)reason
{
  validatorCopy = validator;
  reasonCopy = reason;
  v13.receiver = self;
  v13.super_class = SBTimerEventSwitcherEventResponse;
  v10 = [(SBChainableModifierEventResponse *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_reason, reason);
    [(SBChainableModifierEventResponse *)v11 setDelay:validatorCopy withValidator:delay];
  }

  return v11;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v6.receiver = self;
  v6.super_class = SBTimerEventSwitcherEventResponse;
  v4 = [(SBChainableModifierEventResponse *)&v6 descriptionBuilderWithMultilinePrefix:prefix];
  [v4 appendString:self->_reason withName:@"reason"];

  return v4;
}

@end