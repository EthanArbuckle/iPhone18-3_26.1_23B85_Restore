@interface SBTimerSwitcherModifierEvent
- (SBTimerSwitcherModifierEvent)initWithReason:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
@end

@implementation SBTimerSwitcherModifierEvent

- (SBTimerSwitcherModifierEvent)initWithReason:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBTimerSwitcherModifierEvent;
  v6 = [(SBWindowingModifierActivity *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_reason, a3);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = SBTimerSwitcherModifierEvent;
  v4 = [(SBChainableModifierEvent *)&v8 copyWithZone:a3];
  v5 = [(NSString *)self->_reason copy];
  v6 = v4[4];
  v4[4] = v5;

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v6.receiver = self;
  v6.super_class = SBTimerSwitcherModifierEvent;
  v4 = [(SBSwitcherModifierEvent *)&v6 descriptionBuilderWithMultilinePrefix:a3];
  [v4 appendString:self->_reason withName:@"reason"];

  return v4;
}

@end