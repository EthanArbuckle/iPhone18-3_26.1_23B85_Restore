@interface SBMutableKeyboardFocusPolicy
- (id)copyWithZone:(_NSZone *)a3;
- (void)setAdvicePolicy:(int64_t)a3;
- (void)setKeyboardFocusTarget:(id)a3;
- (void)setShouldSuppressRemoteDeferring:(BOOL)a3;
- (void)setWindowSceneAncestor:(id)a3;
@end

@implementation SBMutableKeyboardFocusPolicy

- (void)setKeyboardFocusTarget:(id)a3
{
  v6 = a3;
  if (v6)
  {
    NSClassFromString(&cfstr_Sbkeyboardfocu_32.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(SBMutableKeyboardFocusPolicy *)a2 setKeyboardFocusTarget:?];
    }
  }

  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->super._keyboardFocusTarget, a3);
    [(BSAuditHistory *)self->super._auditHistory addItemWithFormat:@"Updated Target: %@", v6];
  }
}

- (void)setAdvicePolicy:(int64_t)a3
{
  if (self->super._selectionPolicy != a3)
  {
    self->super._selectionPolicy = a3;
    auditHistory = self->super._auditHistory;
    v5 = NSStringFromSBKeyboardFocusAdviceAcceptancePolicy(a3);
    [(BSAuditHistory *)auditHistory addItemWithFormat:@"Updated advice: %@", v5];
  }
}

- (void)setShouldSuppressRemoteDeferring:(BOOL)a3
{
  if (self->super._shouldSuppressRemoteDeferring != a3)
  {
    self->super._shouldSuppressRemoteDeferring = a3;
    auditHistory = self->super._auditHistory;
    v4 = @"NO";
    if (a3)
    {
      v4 = @"YES";
    }

    [(BSAuditHistory *)auditHistory addItemWithFormat:@"Updated should suppress remote deferring to %@", v4];
  }
}

- (void)setWindowSceneAncestor:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->super._sbWindowSceneAncestor);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->super._sbWindowSceneAncestor, obj);
    v5 = obj;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SBKeyboardFocusPolicy alloc];

  return [(SBKeyboardFocusPolicy *)&v4->super.isa _initWithCopyOf:?];
}

- (void)setKeyboardFocusTarget:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:SBKeyboardFocusTargetClass]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"SBKeyboardFocusPolicy.m";
    v16 = 1024;
    v17 = 213;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end