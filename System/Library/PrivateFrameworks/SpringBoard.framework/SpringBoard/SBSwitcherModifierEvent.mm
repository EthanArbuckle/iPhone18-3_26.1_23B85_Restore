@interface SBSwitcherModifierEvent
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (int64_t)type;
@end

@implementation SBSwitcherModifierEvent

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v7.receiver = self;
  v7.super_class = SBSwitcherModifierEvent;
  v4 = [(SBChainableModifierEvent *)&v7 descriptionBuilderWithMultilinePrefix:prefix];
  v5 = NSStringFromSBSwitcherModifierEventType([(SBSwitcherModifierEvent *)self type]);
  [v4 appendString:v5 withName:@"type"];

  return v4;
}

- (int64_t)type
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end