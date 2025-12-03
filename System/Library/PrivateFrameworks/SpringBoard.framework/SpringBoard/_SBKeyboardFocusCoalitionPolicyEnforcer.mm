@interface _SBKeyboardFocusCoalitionPolicyEnforcer
- (_SBKeyboardFocusCoalitionPolicyEnforcer)initWithDeferringRulePredicate:(id)predicate deferringRuleReason:(id)reason debugName:(id)name;
- (_SBKeyboardFocusCoalitionPolicyEnforcer)initWithDeferringRulePredicate:(id)predicate deferringRuleReason:(id)reason debugName:(id)name deliveryManager:(id)manager;
- (id)deferringTargetForPolicy:(id)policy;
- (void)enforce:(id)enforce;
- (void)stopEnforcing;
@end

@implementation _SBKeyboardFocusCoalitionPolicyEnforcer

- (_SBKeyboardFocusCoalitionPolicyEnforcer)initWithDeferringRulePredicate:(id)predicate deferringRuleReason:(id)reason debugName:(id)name
{
  v8 = MEMORY[0x277CF0668];
  nameCopy = name;
  reasonCopy = reason;
  predicateCopy = predicate;
  sharedInstance = [v8 sharedInstance];
  v13 = [(_SBKeyboardFocusCoalitionPolicyEnforcer *)self initWithDeferringRulePredicate:predicateCopy deferringRuleReason:reasonCopy debugName:nameCopy deliveryManager:sharedInstance];

  return v13;
}

- (_SBKeyboardFocusCoalitionPolicyEnforcer)initWithDeferringRulePredicate:(id)predicate deferringRuleReason:(id)reason debugName:(id)name deliveryManager:(id)manager
{
  predicateCopy = predicate;
  reasonCopy = reason;
  nameCopy = name;
  managerCopy = manager;
  v22.receiver = self;
  v22.super_class = _SBKeyboardFocusCoalitionPolicyEnforcer;
  v15 = [(_SBKeyboardFocusCoalitionPolicyEnforcer *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_predicate, predicate);
    v17 = [reasonCopy copy];
    deferringRuleReason = v16->_deferringRuleReason;
    v16->_deferringRuleReason = v17;

    objc_storeStrong(&v16->_deliveryManager, manager);
    v19 = [nameCopy copy];
    debugName = v16->_debugName;
    v16->_debugName = v19;
  }

  return v16;
}

- (id)deferringTargetForPolicy:(id)policy
{
  sbWindowSceneAncestor = [policy sbWindowSceneAncestor];
  v4 = [SBKeyboardFocusTarget targetForSBWindowScene:sbWindowSceneAncestor];

  deferringTarget = [(SBKeyboardFocusTarget *)v4 deferringTarget];

  return deferringTarget;
}

- (void)enforce:(id)enforce
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = [(_SBKeyboardFocusCoalitionPolicyEnforcer *)self deferringTargetForPolicy:enforce];
  if (!self->_enforcedTarget || !self->_focusRule || (BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_enforcedTarget, v4);
    [(BSInvalidatable *)self->_focusRule invalidate];
    v5 = [(BKSHIDEventDeliveryManager *)self->_deliveryManager deferEventsMatchingPredicate:self->_predicate toTarget:self->_enforcedTarget withReason:self->_deferringRuleReason];
    focusRule = self->_focusRule;
    self->_focusRule = v5;

    v7 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      environment = [(BKSHIDEventDeferringPredicate *)self->_predicate environment];
      predicate = self->_predicate;
      enforcedTarget = self->_enforcedTarget;
      v11 = 138543874;
      v12 = environment;
      v13 = 2114;
      v14 = predicate;
      v15 = 2114;
      v16 = enforcedTarget;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "rules: (%{public}@) deferring (%{public}@) -> %{public}@", &v11, 0x20u);
    }
  }
}

- (void)stopEnforcing
{
  enforcedTarget = self->_enforcedTarget;
  self->_enforcedTarget = 0;

  [(BSInvalidatable *)self->_focusRule invalidate];
  focusRule = self->_focusRule;
  self->_focusRule = 0;
}

@end