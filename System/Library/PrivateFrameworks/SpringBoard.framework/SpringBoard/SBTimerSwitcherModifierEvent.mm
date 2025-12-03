@interface SBTimerSwitcherModifierEvent
- (SBTimerSwitcherModifierEvent)initWithReason:(id)reason;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
@end

@implementation SBTimerSwitcherModifierEvent

- (SBTimerSwitcherModifierEvent)initWithReason:(id)reason
{
  reasonCopy = reason;
  v9.receiver = self;
  v9.super_class = SBTimerSwitcherModifierEvent;
  v6 = [(SBWindowingModifierActivity *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_reason, reason);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = SBTimerSwitcherModifierEvent;
  v4 = [(SBChainableModifierEvent *)&v8 copyWithZone:zone];
  v5 = [(NSString *)self->_reason copy];
  v6 = v4[4];
  v4[4] = v5;

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v6.receiver = self;
  v6.super_class = SBTimerSwitcherModifierEvent;
  v4 = [(SBSwitcherModifierEvent *)&v6 descriptionBuilderWithMultilinePrefix:prefix];
  [v4 appendString:self->_reason withName:@"reason"];

  return v4;
}

@end