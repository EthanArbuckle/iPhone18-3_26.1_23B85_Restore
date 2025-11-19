@interface SBMutableKeyboardFocusCoalitionPreferences
- (void)setLockReasons:(id)a3;
- (void)setPolicy:(id)a3;
@end

@implementation SBMutableKeyboardFocusCoalitionPreferences

- (void)setPolicy:(id)a3
{
  v7 = a3;
  if (!v7)
  {
    [(SBMutableKeyboardFocusCoalitionPreferences *)a2 setPolicy:?];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(SBMutableKeyboardFocusCoalitionPreferences *)v7 setPolicy:a2];
  }

  v5 = [v7 copy];
  policy = self->super._policy;
  self->super._policy = v5;
}

- (void)setLockReasons:(id)a3
{
  v7 = a3;
  if (v7)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(SBMutableKeyboardFocusCoalitionPreferences *)v7 setLockReasons:a2];
    }
  }

  v5 = [v7 copy];
  lockReasons = self->super._lockReasons;
  self->super._lockReasons = v5;
}

- (void)setPolicy:(void *)a1 .cold.1(void *a1, const char *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [a1 classForCoder];
  if (!v4)
  {
    v4 = objc_opt_class();
  }

  v5 = NSStringFromClass(v4);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v3 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"policy", v5, v7];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v9 = NSStringFromSelector(a2);
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    OUTLINED_FUNCTION_9_0();
    v15 = @"SBKeyboardFocusCoalitionMemberPreferences.m";
    v16 = 1024;
    v17 = 152;
    v18 = v12;
    v19 = v8;
    OUTLINED_FUNCTION_0(&dword_21ED4E000, MEMORY[0x277D86220], v13, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v14);
  }

  [v8 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)setPolicy:(const char *)a1 .cold.2(const char *a1, uint64_t a2)
{
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"policy", v6];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v8 = NSStringFromSelector(a1);
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v12 = 138544642;
    v13 = v8;
    v14 = 2114;
    v15 = v10;
    v16 = 2048;
    v17 = a2;
    v18 = 2114;
    v19 = @"SBKeyboardFocusCoalitionMemberPreferences.m";
    v20 = 1024;
    v21 = 152;
    v22 = 2114;
    v23 = v7;
    OUTLINED_FUNCTION_0(&dword_21ED4E000, MEMORY[0x277D86220], v11, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v12);
  }

  [v7 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)setLockReasons:(void *)a1 .cold.1(void *a1, const char *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [a1 classForCoder];
  if (!v4)
  {
    v4 = objc_opt_class();
  }

  v5 = NSStringFromClass(v4);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v3 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"lockReasons", v5, v7];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v9 = NSStringFromSelector(a2);
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    OUTLINED_FUNCTION_9_0();
    v15 = @"SBKeyboardFocusCoalitionMemberPreferences.m";
    v16 = 1024;
    v17 = 158;
    v18 = v12;
    v19 = v8;
    OUTLINED_FUNCTION_0(&dword_21ED4E000, MEMORY[0x277D86220], v13, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v14);
  }

  [v8 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end