@interface SBSystemKeyCommandCoalitionPolicyEnforcer
- (SBSystemKeyCommandCoalitionPolicyEnforcer)init;
@end

@implementation SBSystemKeyCommandCoalitionPolicyEnforcer

- (SBSystemKeyCommandCoalitionPolicyEnforcer)init
{
  v8.receiver = self;
  v8.super_class = SBSystemKeyCommandCoalitionPolicyEnforcer;
  v2 = [(SBSystemKeyCommandCoalitionPolicyEnforcer *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CF0730]);
    systemKeyCommandOverlayEnvironment = [MEMORY[0x277D66B00] systemKeyCommandOverlayEnvironment];
    [v3 setEnvironment:systemKeyCommandOverlayEnvironment];

    v5 = [(_SBKeyboardFocusCoalitionPolicyEnforcer *)[_SBSystemKeyCommandCoalitionPolicyEnforcer alloc] initWithDeferringRulePredicate:v3 deferringRuleReason:@"systemKeyCommandOverlayEnvironment to root scene" debugName:@"SBSystemKeyCommandPolicyEnforcer-Coalition"];
    enforcer = v2->_enforcer;
    v2->_enforcer = &v5->super;
  }

  return v2;
}

@end