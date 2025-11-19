@interface SBExclusiveMultiDisplayCoalition
- (BOOL)_selectMemberPolicy:(id)a3;
- (void)_arbitrateWithRequestingMember:(id)a3 reason:(id)a4;
- (void)_performInitialArbitrationWithReason:(id)a3;
- (void)addedMember:(id)a3;
- (void)invalidate;
- (void)memberRequestsArbitration:(id)a3 forReason:(id)a4;
- (void)setNeedsArbitrationForReason:(id)a3;
@end

@implementation SBExclusiveMultiDisplayCoalition

- (void)addedMember:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v18.receiver = self;
  v18.super_class = SBExclusiveMultiDisplayCoalition;
  [(SBKeyboardFocusCoalition *)&v18 addedMember:v5];
  v6 = [(SBKeyboardFocusCoalitionMember *)v5 sbWindowScene];
  v7 = [v6 _sbDisplayConfiguration];
  v8 = [v7 identity];
  v9 = [v8 isMainDisplay];

  if (v9)
  {
    embeddedMember = self->_embeddedMember;
    self->_embeddedMember = v5;

    v11 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(SBKeyboardFocusCoalition *)self debugName];
      *buf = 138543362;
      v20 = v12;
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
      v15 = [(SBKeyboardFocusCoalitionMember *)v5 uniqueIdentifier];
      v16 = [(SBKeyboardFocusCoalitionMember *)self->_externalMember uniqueIdentifier];
      v17 = [v14 stringWithFormat:@"Trying to add external member %@ but already tracking %@", v15, v16];

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [(SBExclusiveMultiDisplayCoalition *)a2 addedMember:v17];
      }

      [v17 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x21F355ED8);
    }

    self->_externalMember = v5;

    v11 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(SBKeyboardFocusCoalition *)self debugName];
      *buf = 138543362;
      v20 = v12;
      v13 = "[%{public}@] added external display member";
      goto LABEL_7;
    }
  }
}

- (void)setNeedsArbitrationForReason:(id)a3
{
  v5.receiver = self;
  v5.super_class = SBExclusiveMultiDisplayCoalition;
  v4 = a3;
  [(SBKeyboardFocusCoalition *)&v5 setNeedsArbitrationForReason:v4];
  [(SBExclusiveMultiDisplayCoalition *)self _arbitrateWithRequestingMember:0 reason:v4, v5.receiver, v5.super_class];
}

- (void)memberRequestsArbitration:(id)a3 forReason:(id)a4
{
  v8.receiver = self;
  v8.super_class = SBExclusiveMultiDisplayCoalition;
  v6 = a4;
  v7 = a3;
  [(SBKeyboardFocusCoalition *)&v8 memberRequestsArbitration:v7 forReason:v6];
  [(SBExclusiveMultiDisplayCoalition *)self _arbitrateWithRequestingMember:v7 reason:v6, v8.receiver, v8.super_class];
}

- (void)invalidate
{
  v2.receiver = self;
  v2.super_class = SBExclusiveMultiDisplayCoalition;
  [(SBKeyboardFocusCoalition *)&v2 invalidate];
}

- (void)_performInitialArbitrationWithReason:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(SBKeyboardFocusCoalition *)self members];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * v9++) updateCoalitionPreferencesWithReason:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [(SBExclusiveMultiDisplayCoalition *)self initiallyFocusedMember];
  [(SBExclusiveMultiDisplayCoalition *)self _selectMemberPolicy:v11];

  v12 = [(SBKeyboardFocusCoalition *)self delegate];
  [v12 keyboardFocusCoalitionDidUpdateEnforcedPolicy:self];
}

- (void)_arbitrateWithRequestingMember:(id)a3 reason:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if ([(SBKeyboardFocusCoalition *)self isKeyboardFocusEvaluationSuppressed])
  {
    v9 = SBLogKeyboardFocus();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
LABEL_23:

LABEL_24:
      return;
    }

    v10 = [(SBKeyboardFocusCoalition *)self debugName];
    v11 = [(SBKeyboardFocusCoalition *)self keyboardFocusEvaluationSupressionReasons];
    *buf = 138543874;
    v25 = v10;
    v26 = 2114;
    v27 = v8;
    v28 = 2114;
    v29 = v11;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] arbitration: %{public}@ - but we are supressing keyboard focus evaluation for reasons: %{public}@", buf, 0x20u);

LABEL_22:
    goto LABEL_23;
  }

  if ([(SBKeyboardFocusCoalition *)self isInvalidated])
  {
    v9 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(SBKeyboardFocusCoalition *)self debugName];
      *buf = 138543618;
      v25 = v12;
      v26 = 2114;
      v27 = v8;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] arbitration: %{public}@ - but we invalidated", buf, 0x16u);
    }

    goto LABEL_23;
  }

  if (!self->_enforcedMember)
  {
    v17 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [(SBKeyboardFocusCoalition *)self debugName];
      *buf = 138543618;
      v25 = v18;
      v26 = 2114;
      v27 = v8;
      _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] arbitration: %{public}@ - performing initial arbitration]", buf, 0x16u);
    }

    [(SBExclusiveMultiDisplayCoalition *)self _performInitialArbitrationWithReason:v8];
    goto LABEL_24;
  }

  v9 = [(SBExclusiveMultiDisplayCoalition *)self updatePolicyForArbitrationRequestFromMember:v7 reason:v8];
  v13 = SBLogKeyboardFocus();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(SBKeyboardFocusCoalition *)self debugName];
    v15 = [v9 uniqueIdentifier];
    v16 = [v7 uniqueIdentifier];
    *buf = 138544130;
    v25 = v14;
    v26 = 2114;
    v27 = v8;
    v28 = 2114;
    v29 = v15;
    v30 = 2114;
    v31 = v16;
    _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] arbitration: %{public}@ - selecting member:%{public}@ requested by:%{public}@", buf, 0x2Au);
  }

  if ([(SBExclusiveMultiDisplayCoalition *)self _selectMemberPolicy:v9])
  {
    v10 = [(SBKeyboardFocusCoalition *)self delegate];
    [v10 keyboardFocusCoalitionDidUpdateEnforcedPolicy:self];
    goto LABEL_22;
  }

  enforcedMember = self->_enforcedMember;
  if (enforcedMember == self->_embeddedMember)
  {
    v10 = SBLogKeyboardFocus();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    v20 = [(SBKeyboardFocusCoalition *)self debugName];
    v21 = [(SBKeyboardFocusCoalitionMember *)self->_enforcedMember succinctDescription];
    *buf = 138543874;
    v25 = v20;
    v26 = 2114;
    v27 = v8;
    v28 = 2114;
    v29 = v21;
    v22 = "[%{public}@] arbitration: %{public}@ - policy unchanged; embedded member still focused: %{public}@";
    goto LABEL_21;
  }

  if (enforcedMember == self->_externalMember)
  {
    v10 = SBLogKeyboardFocus();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    v20 = [(SBKeyboardFocusCoalition *)self debugName];
    v21 = [(SBKeyboardFocusCoalitionMember *)self->_enforcedMember succinctDescription];
    *buf = 138543874;
    v25 = v20;
    v26 = 2114;
    v27 = v8;
    v28 = 2114;
    v29 = v21;
    v22 = "[%{public}@] arbitration: %{public}@ - policy unchanged; external member still focused: %{public}@";
LABEL_21:
    _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, v22, buf, 0x20u);

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

- (BOOL)_selectMemberPolicy:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 preferences];
  v7 = [v6 policy];
  if ([(SBKeyboardFocusCoalitionMember *)self->_enforcedMember isEqual:v5]&& [(SBKeyboardFocusCoalitionMemberPreferences *)self->_enforcedPreferences isEqual:v6])
  {
    v8 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(SBKeyboardFocusCoalition *)self debugName];
      *buf = 138543362;
      v38 = v9;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] arbitration: no change", buf, 0xCu);
    }

    v10 = 0;
  }

  else
  {
    objc_storeStrong(&self->_enforcedMember, a3);
    objc_storeStrong(&self->_enforcedPreferences, v6);
    v11 = [(SBKeyboardFocusCoalition *)self policyEnforcer];
    [v11 enforce:v7];

    [(SBKeyboardFocusCoalition *)self setEnforcedPolicy:v7];
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v8 = [(SBKeyboardFocusCoalition *)self members];
    v12 = [v8 countByEnumeratingWithState:&v33 objects:v45 count:16];
    if (v12)
    {
      v13 = v12;
      v27 = v7;
      v28 = v6;
      v14 = *v34;
      v30 = *v34;
      v31 = self;
      v29 = v5;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v34 != v14)
          {
            objc_enumerationMutation(v8);
          }

          v16 = *(*(&v33 + 1) + 8 * i);
          [v16 setHasFocus:v16 == v5];
          [v16 focusPolicyDidChange];
          v17 = SBLogKeyboardFocus();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v32 = v16 == v5;
            v18 = [(SBKeyboardFocusCoalition *)self debugName];
            v19 = [v16 succinctDescription];
            v20 = [v16 preferences];
            v21 = [v20 policy];
            [v21 keyboardFocusTarget];
            v22 = v13;
            v24 = v23 = v8;
            v25 = [v24 sceneIdentityToken];
            *buf = 138544130;
            v38 = v18;
            v39 = 2114;
            v40 = v19;
            v41 = 1024;
            v42 = v32;
            v43 = 2114;
            v44 = v25;
            _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] arbitration: %{public}@ hasFocus: %{BOOL}u -- %{public}@ ", buf, 0x26u);

            v8 = v23;
            v13 = v22;

            self = v31;
            v5 = v29;

            v14 = v30;
          }
        }

        v13 = [v8 countByEnumeratingWithState:&v33 objects:v45 count:16];
      }

      while (v13);
      v10 = 1;
      v7 = v27;
      v6 = v28;
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