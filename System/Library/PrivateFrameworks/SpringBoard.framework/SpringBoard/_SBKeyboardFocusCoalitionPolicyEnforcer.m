@interface _SBKeyboardFocusCoalitionPolicyEnforcer
- (_SBKeyboardFocusCoalitionPolicyEnforcer)initWithDeferringRulePredicate:(id)a3 deferringRuleReason:(id)a4 debugName:(id)a5;
- (_SBKeyboardFocusCoalitionPolicyEnforcer)initWithDeferringRulePredicate:(id)a3 deferringRuleReason:(id)a4 debugName:(id)a5 deliveryManager:(id)a6;
- (id)deferringTargetForPolicy:(id)a3;
- (void)enforce:(id)a3;
- (void)stopEnforcing;
@end

@implementation _SBKeyboardFocusCoalitionPolicyEnforcer

- (_SBKeyboardFocusCoalitionPolicyEnforcer)initWithDeferringRulePredicate:(id)a3 deferringRuleReason:(id)a4 debugName:(id)a5
{
  v8 = MEMORY[0x277CF0668];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 sharedInstance];
  v13 = [(_SBKeyboardFocusCoalitionPolicyEnforcer *)self initWithDeferringRulePredicate:v11 deferringRuleReason:v10 debugName:v9 deliveryManager:v12];

  return v13;
}

- (_SBKeyboardFocusCoalitionPolicyEnforcer)initWithDeferringRulePredicate:(id)a3 deferringRuleReason:(id)a4 debugName:(id)a5 deliveryManager:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v22.receiver = self;
  v22.super_class = _SBKeyboardFocusCoalitionPolicyEnforcer;
  v15 = [(_SBKeyboardFocusCoalitionPolicyEnforcer *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_predicate, a3);
    v17 = [v12 copy];
    deferringRuleReason = v16->_deferringRuleReason;
    v16->_deferringRuleReason = v17;

    objc_storeStrong(&v16->_deliveryManager, a6);
    v19 = [v13 copy];
    debugName = v16->_debugName;
    v16->_debugName = v19;
  }

  return v16;
}

- (id)deferringTargetForPolicy:(id)a3
{
  v3 = [a3 sbWindowSceneAncestor];
  v4 = [SBKeyboardFocusTarget targetForSBWindowScene:v3];

  v5 = [(SBKeyboardFocusTarget *)v4 deferringTarget];

  return v5;
}

- (void)enforce:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = [(_SBKeyboardFocusCoalitionPolicyEnforcer *)self deferringTargetForPolicy:a3];
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
      v8 = [(BKSHIDEventDeferringPredicate *)self->_predicate environment];
      predicate = self->_predicate;
      enforcedTarget = self->_enforcedTarget;
      v11 = 138543874;
      v12 = v8;
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