@interface SBKeyboardFocusCoalitionPolicyEnforcer
- (SBKeyboardFocusCoalitionPolicyEnforcer)init;
- (void)enforce:(id)enforce;
- (void)invalidate;
@end

@implementation SBKeyboardFocusCoalitionPolicyEnforcer

- (SBKeyboardFocusCoalitionPolicyEnforcer)init
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = SBKeyboardFocusCoalitionPolicyEnforcer;
  v2 = [(SBKeyboardFocusCoalitionPolicyEnforcer *)&v15 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CF0730]);
    keyboardFocusEnvironment = [MEMORY[0x277CF0628] keyboardFocusEnvironment];
    [v3 setEnvironment:keyboardFocusEnvironment];

    v5 = +[SBHIDEventDispatchController symbolicDeferringTokenForKeyboardFocus];
    [v3 setToken:v5];

    v6 = [[_SBKeyboardFocusCoalitionPolicyEnforcer alloc] initWithDeferringRulePredicate:v3 deferringRuleReason:@"SB incoming to root scene (symbol)" debugName:@"SBKeyboardFocusPolicyEnforcer-Coalition-Symbolic"];
    v7 = objc_alloc_init(MEMORY[0x277CF0730]);
    keyboardFocusEnvironment2 = [MEMORY[0x277CF0628] keyboardFocusEnvironment];
    [v7 setEnvironment:keyboardFocusEnvironment2];

    v9 = [[_SBKeyboardFocusCoalitionPolicyEnforcer alloc] initWithDeferringRulePredicate:v7 deferringRuleReason:@"SB incoming to root scene" debugName:@"SBKeyboardFocusPolicyEnforcer-Coalition"];
    v10 = [SBKeyboardFocusPolicyEnforcerPipeline alloc];
    v16[0] = v9;
    v16[1] = v6;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
    v12 = [(SBKeyboardFocusPolicyEnforcerPipeline *)v10 initWithEnforcers:v11];

    enforcer = v2->_enforcer;
    v2->_enforcer = v12;
  }

  return v2;
}

- (void)enforce:(id)enforce
{
  enforceCopy = enforce;
  enforcer = self->_enforcer;
  if (!enforcer)
  {
    [(SBKeyboardFocusCoalitionPolicyEnforcer *)a2 enforce:?];
  }

  v7 = enforceCopy;
  [(SBKeyboardFocusPolicyEnforcer *)enforcer enforce:enforceCopy];
}

- (void)invalidate
{
  [(SBKeyboardFocusPolicyEnforcer *)self->_enforcer invalidate];
  enforcer = self->_enforcer;
  self->_enforcer = 0;
}

- (void)enforce:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"can't enforce an invalidated enforcer"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"SBKeyboardFocusCoalitionPolicyEnforcer.m";
    v16 = 1024;
    v17 = 55;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end