@interface SBKeyboardFocusCoalitionMemberPreferences
+ (id)build:(id)a3;
+ (id)new;
+ (id)preferencesWithPolicy:(id)a3 lockReasons:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)_init;
- (id)_initWithCopyOf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (int64_t)focusLockReasonStrength;
- (unint64_t)hash;
- (void)_init;
- (void)appendDescriptionToStream:(id)a3;
@end

@implementation SBKeyboardFocusCoalitionMemberPreferences

- (id)_init
{
  v4 = objc_opt_class();
  if (v4 != objc_opt_class())
  {
    v5 = objc_opt_class();
    if (v5 != objc_opt_class())
    {
      [(SBKeyboardFocusCoalitionMemberPreferences *)a2 _init];
    }
  }

  v7.receiver = self;
  v7.super_class = SBKeyboardFocusCoalitionMemberPreferences;
  return [(SBKeyboardFocusCoalitionMemberPreferences *)&v7 init];
}

+ (id)preferencesWithPolicy:(id)a3 lockReasons:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __79__SBKeyboardFocusCoalitionMemberPreferences_preferencesWithPolicy_lockReasons___block_invoke;
  v12[3] = &unk_2783AF588;
  v13 = v6;
  v14 = v7;
  v8 = v7;
  v9 = v6;
  v10 = [a1 build:v12];

  return v10;
}

void __79__SBKeyboardFocusCoalitionMemberPreferences_preferencesWithPolicy_lockReasons___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setPolicy:v3];
  v5 = [*(a1 + 40) copy];
  [v4 setLockReasons:v5];
}

+ (id)build:(id)a3
{
  v3 = a3;
  v4 = [(SBKeyboardFocusCoalitionMemberPreferences *)[SBMutableKeyboardFocusCoalitionPreferences alloc] _init];
  v3[2](v3, v4);

  v5 = [v4 copy];

  return v5;
}

+ (id)new
{
  v2 = objc_opt_class();

  return [v2 _init];
}

- (id)_initWithCopyOf:(id)a3
{
  v4 = a3;
  v5 = [(SBKeyboardFocusCoalitionMemberPreferences *)self _init];
  if (v5)
  {
    v6 = [v4[1] copy];
    v7 = v5[1];
    v5[1] = v6;

    v8 = [v4[2] copy];
    v9 = v5[2];
    v5[2] = v8;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(SBKeyboardFocusPolicy *)self->_policy hash];
  lockReasons = self->_lockReasons;
  if (lockReasons)
  {
    v3 ^= [(NSSet *)lockReasons hash];
  }

  return MEMORY[0x282143900](v3);
}

- (BOOL)isEqual:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    if (BSEqualObjects())
    {
      v5 = BSEqualObjects();
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SBKeyboardFocusCoalitionMemberPreferences alloc];

  return [(SBKeyboardFocusCoalitionMemberPreferences *)v4 _initWithCopyOf:self];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [SBMutableKeyboardFocusCoalitionPreferences alloc];

  return [(SBKeyboardFocusCoalitionMemberPreferences *)v4 _initWithCopyOf:self];
}

- (void)appendDescriptionToStream:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __71__SBKeyboardFocusCoalitionMemberPreferences_appendDescriptionToStream___block_invoke;
  v6[3] = &unk_2783A92D8;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [v5 appendBodySectionWithName:0 block:v6];
}

- (int64_t)focusLockReasonStrength
{
  if ([(SBKeyboardFocusPolicy *)self->_policy advicePolicy])
  {
    return 0;
  }

  lockReasons = self->_lockReasons;

  return [SBKeyboardFocusLockReason maximumStrengthInSet:lockReasons];
}

- (void)_init
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"SBKeyboardFocusCoalitionMemberPreferences cannot be subclassed"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    v14 = a2;
    v15 = 2114;
    v16 = @"SBKeyboardFocusCoalitionMemberPreferences.m";
    v17 = 1024;
    v18 = 51;
    v19 = 2114;
    v20 = v4;
    OUTLINED_FUNCTION_0(&dword_21ED4E000, MEMORY[0x277D86220], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end