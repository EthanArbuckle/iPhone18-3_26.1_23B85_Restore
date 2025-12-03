@interface SBKeyboardFocusCoalitionMemberPreferences
+ (id)build:(id)build;
+ (id)new;
+ (id)preferencesWithPolicy:(id)policy lockReasons:(id)reasons;
- (BOOL)isEqual:(id)equal;
- (id)_init;
- (id)_initWithCopyOf:(id)of;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (int64_t)focusLockReasonStrength;
- (unint64_t)hash;
- (void)_init;
- (void)appendDescriptionToStream:(id)stream;
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

+ (id)preferencesWithPolicy:(id)policy lockReasons:(id)reasons
{
  policyCopy = policy;
  reasonsCopy = reasons;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __79__SBKeyboardFocusCoalitionMemberPreferences_preferencesWithPolicy_lockReasons___block_invoke;
  v12[3] = &unk_2783AF588;
  v13 = policyCopy;
  v14 = reasonsCopy;
  v8 = reasonsCopy;
  v9 = policyCopy;
  v10 = [self build:v12];

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

+ (id)build:(id)build
{
  buildCopy = build;
  _init = [(SBKeyboardFocusCoalitionMemberPreferences *)[SBMutableKeyboardFocusCoalitionPreferences alloc] _init];
  buildCopy[2](buildCopy, _init);

  v5 = [_init copy];

  return v5;
}

+ (id)new
{
  v2 = objc_opt_class();

  return [v2 _init];
}

- (id)_initWithCopyOf:(id)of
{
  ofCopy = of;
  _init = [(SBKeyboardFocusCoalitionMemberPreferences *)self _init];
  if (_init)
  {
    v6 = [ofCopy[1] copy];
    v7 = _init[1];
    _init[1] = v6;

    v8 = [ofCopy[2] copy];
    v9 = _init[2];
    _init[2] = v8;
  }

  return _init;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = equalCopy;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SBKeyboardFocusCoalitionMemberPreferences alloc];

  return [(SBKeyboardFocusCoalitionMemberPreferences *)v4 _initWithCopyOf:self];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [SBMutableKeyboardFocusCoalitionPreferences alloc];

  return [(SBKeyboardFocusCoalitionMemberPreferences *)v4 _initWithCopyOf:self];
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __71__SBKeyboardFocusCoalitionMemberPreferences_appendDescriptionToStream___block_invoke;
  v6[3] = &unk_2783A92D8;
  v7 = streamCopy;
  selfCopy = self;
  v5 = streamCopy;
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
    v5 = NSStringFromSelector(self);
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