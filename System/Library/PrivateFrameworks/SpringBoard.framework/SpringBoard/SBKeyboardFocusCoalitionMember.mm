@interface SBKeyboardFocusCoalitionMember
- (NSString)debugDescription;
- (SBKeyboardFocusCoalitionMember)initWithUniqueIdentifier:(id)identifier windowScene:(id)scene delegate:(id)delegate coalition:(id)coalition;
- (SBKeyboardFocusCoalitionMemberDelegate)delegate;
- (SBWindowScene)sbWindowScene;
- (id)succinctDescription;
- (id)updateCoalitionPreferencesWithReason:(id)reason;
- (void)appendDescriptionToStream:(id)stream;
- (void)dealloc;
- (void)focusPolicyDidChange;
- (void)requestArbitration:(id)arbitration;
- (void)setHasFocus:(BOOL)focus;
@end

@implementation SBKeyboardFocusCoalitionMember

- (void)focusPolicyDidChange
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained coalitionMemberFocusDidChange:self];
}

- (SBKeyboardFocusCoalitionMember)initWithUniqueIdentifier:(id)identifier windowScene:(id)scene delegate:(id)delegate coalition:(id)coalition
{
  identifierCopy = identifier;
  sceneCopy = scene;
  delegateCopy = delegate;
  coalitionCopy = coalition;
  if (!identifierCopy)
  {
    [SBKeyboardFocusCoalitionMember initWithUniqueIdentifier:a2 windowScene:? delegate:? coalition:?];
  }

  if (!delegateCopy)
  {
    [SBKeyboardFocusCoalitionMember initWithUniqueIdentifier:a2 windowScene:? delegate:? coalition:?];
  }

  v15 = coalitionCopy;
  if (!coalitionCopy)
  {
    [SBKeyboardFocusCoalitionMember initWithUniqueIdentifier:a2 windowScene:? delegate:? coalition:?];
  }

  v20.receiver = self;
  v20.super_class = SBKeyboardFocusCoalitionMember;
  v16 = [(SBKeyboardFocusCoalitionMember *)&v20 init];
  if (v16)
  {
    v17 = [identifierCopy copy];
    uniqueIdentifier = v16->_uniqueIdentifier;
    v16->_uniqueIdentifier = v17;

    objc_storeWeak(&v16->_sbWindowScene, sceneCopy);
    objc_storeWeak(&v16->_delegate, delegateCopy);
    objc_storeWeak(&v16->_coalition, v15);
  }

  return v16;
}

- (void)requestArbitration:(id)arbitration
{
  arbitrationCopy = arbitration;
  if (!arbitrationCopy)
  {
    [SBKeyboardFocusCoalitionMember requestArbitration:a2];
  }

  objc_opt_class();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(SBKeyboardFocusCoalitionMember *)arbitrationCopy requestArbitration:a2];
  }

  WeakRetained = objc_loadWeakRetained(&self->_coalition);
  [WeakRetained memberRequestsArbitration:self forReason:arbitrationCopy];
}

- (id)updateCoalitionPreferencesWithReason:(id)reason
{
  reasonCopy = reason;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = [WeakRetained generateUpdatedPreferencesForCoalitionMember:self reason:reasonCopy];

  v8 = v7;
  if (!v8)
  {
    [SBKeyboardFocusCoalitionMember updateCoalitionPreferencesWithReason:a2];
  }

  v9 = v8;
  objc_opt_class();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(SBKeyboardFocusCoalitionMember *)v9 updateCoalitionPreferencesWithReason:a2];
  }

  if (![(SBKeyboardFocusCoalitionMemberPreferences *)self->_preferences isEqual:v9])
  {
    v10 = [v9 copy];
    preferences = self->_preferences;
    self->_preferences = v10;

    v12 = objc_loadWeakRetained(&self->_coalition);
    [v12 _memberDidUpdatePreferences:self];
  }

  v13 = self->_preferences;
  v14 = v13;

  return v13;
}

- (void)dealloc
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"gotta invalidate before dealloc, bud"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(self);
    objc_claimAutoreleasedReturnValue();
    v5 = OUTLINED_FUNCTION_5_0();
    v6 = NSStringFromClass(v5);
    v7 = 138544642;
    selfCopy = self;
    v9 = 2114;
    v10 = v6;
    v11 = 2048;
    v12 = a2;
    v13 = 2114;
    v14 = @"SBKeyboardFocusCoalitionMember.m";
    v15 = 1024;
    v16 = 71;
    v17 = 2114;
    v18 = v4;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v7, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (id)succinctDescription
{
  v3 = MEMORY[0x277CF0C08];
  succinctStyle = [MEMORY[0x277CF0C10] succinctStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:succinctStyle];

  return v5;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277CF0C08];
  debugStyle = [MEMORY[0x277CF0C10] debugStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:debugStyle];

  return v5;
}

- (void)setHasFocus:(BOOL)focus
{
  if (self->_hasFocus != focus)
  {
    self->_hasFocus = focus;
    WeakRetained = objc_loadWeakRetained(&self->_coalition);
    [WeakRetained _memberDidUpdateSettings:self];
  }
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __60__SBKeyboardFocusCoalitionMember_appendDescriptionToStream___block_invoke;
  v12 = &unk_2783A92D8;
  v5 = streamCopy;
  v13 = v5;
  selfCopy = self;
  [v5 appendProem:self block:&v9];
  if (([v5 hasSuccinctStyle] & 1) == 0)
  {
    v6 = [v5 appendObject:self->_preferences withName:@"preferences"];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v8 = [v5 appendObject:WeakRetained withName:@"delegate"];
  }
}

- (SBWindowScene)sbWindowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_sbWindowScene);

  return WeakRetained;
}

- (SBKeyboardFocusCoalitionMemberDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithUniqueIdentifier:(char *)a1 windowScene:delegate:coalition:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"arbiter", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithUniqueIdentifier:(char *)a1 windowScene:delegate:coalition:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"delegate", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithUniqueIdentifier:(char *)a1 windowScene:delegate:coalition:.cold.3(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"uniqueIdentifier", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)requestArbitration:(void *)a1 .cold.1(void *a1, const char *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [a1 classForCoder];
  if (!v4)
  {
    v4 = objc_opt_class();
  }

  v5 = NSStringFromClass(v4);
  objc_opt_class();
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v3 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"reason", v5, v7];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v9 = NSStringFromSelector(a2);
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    OUTLINED_FUNCTION_9_0();
    v14 = @"SBKeyboardFocusCoalitionMember.m";
    v15 = 1024;
    v16 = 48;
    v17 = v12;
    v18 = v8;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v8 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)requestArbitration:(const char *)a1 .cold.2(const char *a1)
{
  v2 = MEMORY[0x277CCACA8];
  objc_opt_class();
  v3 = objc_opt_class();
  v13 = NSStringFromClass(v3);
  v4 = [v2 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@."];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, @"reason", v13, v14);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)updateCoalitionPreferencesWithReason:(void *)a1 .cold.1(void *a1, const char *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [a1 classForCoder];
  if (!v4)
  {
    v4 = objc_opt_class();
  }

  v5 = NSStringFromClass(v4);
  objc_opt_class();
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v3 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"preferences", v5, v7];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v9 = NSStringFromSelector(a2);
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    OUTLINED_FUNCTION_9_0();
    v14 = @"SBKeyboardFocusCoalitionMember.m";
    v15 = 1024;
    v16 = 55;
    v17 = v12;
    v18 = v8;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v8 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)updateCoalitionPreferencesWithReason:(const char *)a1 .cold.2(const char *a1)
{
  v2 = MEMORY[0x277CCACA8];
  objc_opt_class();
  v3 = objc_opt_class();
  v13 = NSStringFromClass(v3);
  v4 = [v2 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@."];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, @"preferences", v13, v14);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end