@interface SBExclusiveMultiDisplayCoalition
- (BOOL)_selectMemberPolicy:(id)policy;
- (void)_arbitrateWithRequestingMember:(id)member reason:(id)reason;
- (void)_performInitialArbitrationWithReason:(id)reason;
- (void)addedMember:(id)member;
- (void)invalidate;
- (void)memberRequestsArbitration:(id)arbitration forReason:(id)reason;
- (void)setNeedsArbitrationForReason:(id)reason;
@end

@implementation SBExclusiveMultiDisplayCoalition

- (void)addedMember:(id)member
{
  v21 = *MEMORY[0x277D85DE8];
  memberCopy = member;
  v18.receiver = self;
  v18.super_class = SBExclusiveMultiDisplayCoalition;
  [(SBKeyboardFocusCoalition *)&v18 addedMember:memberCopy];
  sbWindowScene = [(SBKeyboardFocusCoalitionMember *)memberCopy sbWindowScene];
  _sbDisplayConfiguration = [sbWindowScene _sbDisplayConfiguration];
  identity = [_sbDisplayConfiguration identity];
  isMainDisplay = [identity isMainDisplay];

  if (isMainDisplay)
  {
    embeddedMember = self->_embeddedMember;
    self->_embeddedMember = memberCopy;

    v11 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      debugName = [(SBKeyboardFocusCoalition *)self debugName];
      *buf = 138543362;
      v20 = debugName;
      v13 = "[%{public}@] added embedded display member";
LABEL_7:
      _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, v13, buf, 0xCu);
    }
  }

  else
  {
    if (self->_externalMember)
    {
      v14 = MEMORY[0x277CCACA8];
      uniqueIdentifier = [(SBKeyboardFocusCoalitionMember *)memberCopy uniqueIdentifier];
      uniqueIdentifier2 = [(SBKeyboardFocusCoalitionMember *)self->_externalMember uniqueIdentifier];
      v17 = [v14 stringWithFormat:@"Trying to add external member %@ but already tracking %@", uniqueIdentifier, uniqueIdentifier2];

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [(SBExclusiveMultiDisplayCoalition *)a2 addedMember:v17];
      }

      [v17 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x21F355ED8);
    }

    self->_externalMember = memberCopy;

    v11 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      debugName = [(SBKeyboardFocusCoalition *)self debugName];
      *buf = 138543362;
      v20 = debugName;
      v13 = "[%{public}@] added external display member";
      goto LABEL_7;
    }
  }
}

- (void)setNeedsArbitrationForReason:(id)reason
{
  v5.receiver = self;
  v5.super_class = SBExclusiveMultiDisplayCoalition;
  reasonCopy = reason;
  [(SBKeyboardFocusCoalition *)&v5 setNeedsArbitrationForReason:reasonCopy];
  [(SBExclusiveMultiDisplayCoalition *)self _arbitrateWithRequestingMember:0 reason:reasonCopy, v5.receiver, v5.super_class];
}

- (void)memberRequestsArbitration:(id)arbitration forReason:(id)reason
{
  v8.receiver = self;
  v8.super_class = SBExclusiveMultiDisplayCoalition;
  reasonCopy = reason;
  arbitrationCopy = arbitration;
  [(SBKeyboardFocusCoalition *)&v8 memberRequestsArbitration:arbitrationCopy forReason:reasonCopy];
  [(SBExclusiveMultiDisplayCoalition *)self _arbitrateWithRequestingMember:arbitrationCopy reason:reasonCopy, v8.receiver, v8.super_class];
}

- (void)invalidate
{
  v2.receiver = self;
  v2.super_class = SBExclusiveMultiDisplayCoalition;
  [(SBKeyboardFocusCoalition *)&v2 invalidate];
}

- (void)_performInitialArbitrationWithReason:(id)reason
{
  v18 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  members = [(SBKeyboardFocusCoalition *)self members];
  v6 = [members countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(members);
        }

        v10 = [*(*(&v13 + 1) + 8 * v9++) updateCoalitionPreferencesWithReason:reasonCopy];
      }

      while (v7 != v9);
      v7 = [members countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  initiallyFocusedMember = [(SBExclusiveMultiDisplayCoalition *)self initiallyFocusedMember];
  [(SBExclusiveMultiDisplayCoalition *)self _selectMemberPolicy:initiallyFocusedMember];

  delegate = [(SBKeyboardFocusCoalition *)self delegate];
  [delegate keyboardFocusCoalitionDidUpdateEnforcedPolicy:self];
}

- (void)_arbitrateWithRequestingMember:(id)member reason:(id)reason
{
  v32 = *MEMORY[0x277D85DE8];
  memberCopy = member;
  reasonCopy = reason;
  if ([(SBKeyboardFocusCoalition *)self isKeyboardFocusEvaluationSuppressed])
  {
    v9 = SBLogKeyboardFocus();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
LABEL_23:

LABEL_24:
      return;
    }

    debugName = [(SBKeyboardFocusCoalition *)self debugName];
    keyboardFocusEvaluationSupressionReasons = [(SBKeyboardFocusCoalition *)self keyboardFocusEvaluationSupressionReasons];
    *buf = 138543874;
    v25 = debugName;
    v26 = 2114;
    v27 = reasonCopy;
    v28 = 2114;
    v29 = keyboardFocusEvaluationSupressionReasons;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] arbitration: %{public}@ - but we are supressing keyboard focus evaluation for reasons: %{public}@", buf, 0x20u);

LABEL_22:
    goto LABEL_23;
  }

  if ([(SBKeyboardFocusCoalition *)self isInvalidated])
  {
    v9 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      debugName2 = [(SBKeyboardFocusCoalition *)self debugName];
      *buf = 138543618;
      v25 = debugName2;
      v26 = 2114;
      v27 = reasonCopy;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] arbitration: %{public}@ - but we invalidated", buf, 0x16u);
    }

    goto LABEL_23;
  }

  if (!self->_enforcedMember)
  {
    v17 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      debugName3 = [(SBKeyboardFocusCoalition *)self debugName];
      *buf = 138543618;
      v25 = debugName3;
      v26 = 2114;
      v27 = reasonCopy;
      _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] arbitration: %{public}@ - performing initial arbitration]", buf, 0x16u);
    }

    [(SBExclusiveMultiDisplayCoalition *)self _performInitialArbitrationWithReason:reasonCopy];
    goto LABEL_24;
  }

  v9 = [(SBExclusiveMultiDisplayCoalition *)self updatePolicyForArbitrationRequestFromMember:memberCopy reason:reasonCopy];
  v13 = SBLogKeyboardFocus();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    debugName4 = [(SBKeyboardFocusCoalition *)self debugName];
    uniqueIdentifier = [v9 uniqueIdentifier];
    uniqueIdentifier2 = [memberCopy uniqueIdentifier];
    *buf = 138544130;
    v25 = debugName4;
    v26 = 2114;
    v27 = reasonCopy;
    v28 = 2114;
    v29 = uniqueIdentifier;
    v30 = 2114;
    v31 = uniqueIdentifier2;
    _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] arbitration: %{public}@ - selecting member:%{public}@ requested by:%{public}@", buf, 0x2Au);
  }

  if ([(SBExclusiveMultiDisplayCoalition *)self _selectMemberPolicy:v9])
  {
    debugName = [(SBKeyboardFocusCoalition *)self delegate];
    [debugName keyboardFocusCoalitionDidUpdateEnforcedPolicy:self];
    goto LABEL_22;
  }

  enforcedMember = self->_enforcedMember;
  if (enforcedMember == self->_embeddedMember)
  {
    debugName = SBLogKeyboardFocus();
    if (!os_log_type_enabled(debugName, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    debugName5 = [(SBKeyboardFocusCoalition *)self debugName];
    succinctDescription = [(SBKeyboardFocusCoalitionMember *)self->_enforcedMember succinctDescription];
    *buf = 138543874;
    v25 = debugName5;
    v26 = 2114;
    v27 = reasonCopy;
    v28 = 2114;
    v29 = succinctDescription;
    v22 = "[%{public}@] arbitration: %{public}@ - policy unchanged; embedded member still focused: %{public}@";
    goto LABEL_21;
  }

  if (enforcedMember == self->_externalMember)
  {
    debugName = SBLogKeyboardFocus();
    if (!os_log_type_enabled(debugName, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    debugName5 = [(SBKeyboardFocusCoalition *)self debugName];
    succinctDescription = [(SBKeyboardFocusCoalitionMember *)self->_enforcedMember succinctDescription];
    *buf = 138543874;
    v25 = debugName5;
    v26 = 2114;
    v27 = reasonCopy;
    v28 = 2114;
    v29 = succinctDescription;
    v22 = "[%{public}@] arbitration: %{public}@ - policy unchanged; external member still focused: %{public}@";
LABEL_21:
    _os_log_impl(&dword_21ED4E000, debugName, OS_LOG_TYPE_DEFAULT, v22, buf, 0x20u);

    goto LABEL_22;
  }

  v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"unknown member %@ focused", self->_enforcedMember];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [(SBExclusiveMultiDisplayCoalition *)a2 _arbitrateWithRequestingMember:v23 reason:?];
  }

  [v23 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (BOOL)_selectMemberPolicy:(id)policy
{
  v46 = *MEMORY[0x277D85DE8];
  policyCopy = policy;
  preferences = [policyCopy preferences];
  policy = [preferences policy];
  if ([(SBKeyboardFocusCoalitionMember *)self->_enforcedMember isEqual:policyCopy]&& [(SBKeyboardFocusCoalitionMemberPreferences *)self->_enforcedPreferences isEqual:preferences])
  {
    members = SBLogKeyboardFocus();
    if (os_log_type_enabled(members, OS_LOG_TYPE_DEFAULT))
    {
      debugName = [(SBKeyboardFocusCoalition *)self debugName];
      *buf = 138543362;
      v38 = debugName;
      _os_log_impl(&dword_21ED4E000, members, OS_LOG_TYPE_DEFAULT, "[%{public}@] arbitration: no change", buf, 0xCu);
    }

    v10 = 0;
  }

  else
  {
    objc_storeStrong(&self->_enforcedMember, policy);
    objc_storeStrong(&self->_enforcedPreferences, preferences);
    policyEnforcer = [(SBKeyboardFocusCoalition *)self policyEnforcer];
    [policyEnforcer enforce:policy];

    [(SBKeyboardFocusCoalition *)self setEnforcedPolicy:policy];
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    members = [(SBKeyboardFocusCoalition *)self members];
    v12 = [members countByEnumeratingWithState:&v33 objects:v45 count:16];
    if (v12)
    {
      v13 = v12;
      v27 = policy;
      v28 = preferences;
      v14 = *v34;
      v30 = *v34;
      selfCopy = self;
      v29 = policyCopy;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v34 != v14)
          {
            objc_enumerationMutation(members);
          }

          v16 = *(*(&v33 + 1) + 8 * i);
          [v16 setHasFocus:v16 == policyCopy];
          [v16 focusPolicyDidChange];
          v17 = SBLogKeyboardFocus();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v32 = v16 == policyCopy;
            debugName2 = [(SBKeyboardFocusCoalition *)self debugName];
            succinctDescription = [v16 succinctDescription];
            preferences2 = [v16 preferences];
            policy2 = [preferences2 policy];
            [policy2 keyboardFocusTarget];
            v22 = v13;
            v24 = v23 = members;
            sceneIdentityToken = [v24 sceneIdentityToken];
            *buf = 138544130;
            v38 = debugName2;
            v39 = 2114;
            v40 = succinctDescription;
            v41 = 1024;
            v42 = v32;
            v43 = 2114;
            v44 = sceneIdentityToken;
            _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] arbitration: %{public}@ hasFocus: %{BOOL}u -- %{public}@ ", buf, 0x26u);

            members = v23;
            v13 = v22;

            self = selfCopy;
            policyCopy = v29;

            v14 = v30;
          }
        }

        v13 = [members countByEnumeratingWithState:&v33 objects:v45 count:16];
      }

      while (v13);
      v10 = 1;
      policy = v27;
      preferences = v28;
    }

    else
    {
      v10 = 1;
    }
  }

  return v10;
}

- (void)addedMember:(uint64_t)a3 .cold.1(const char *a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = NSStringFromSelector(a1);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  OUTLINED_FUNCTION_0_38();
  v9 = @"SBExclusiveMultiDisplayCoalition.m";
  v10 = 1024;
  v11 = 50;
  v12 = v7;
  v13 = a3;
  _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, 0x3Au);
}

- (void)_arbitrateWithRequestingMember:(uint64_t)a3 reason:.cold.1(const char *a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = NSStringFromSelector(a1);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  OUTLINED_FUNCTION_0_38();
  v9 = @"SBExclusiveMultiDisplayCoalition.m";
  v10 = 1024;
  v11 = 131;
  v12 = v7;
  v13 = a3;
  _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, 0x3Au);
}

@end