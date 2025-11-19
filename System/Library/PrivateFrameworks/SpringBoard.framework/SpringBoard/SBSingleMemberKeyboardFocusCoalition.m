@interface SBSingleMemberKeyboardFocusCoalition
- (SBSingleMemberKeyboardFocusCoalition)init;
- (void)_arbitrateForReason:(id)a3;
- (void)addedMember:(id)a3;
- (void)invalidate;
- (void)memberRequestsArbitration:(id)a3 forReason:(id)a4;
- (void)removedMember:(id)a3;
- (void)setNeedsArbitrationForReason:(id)a3;
@end

@implementation SBSingleMemberKeyboardFocusCoalition

- (SBSingleMemberKeyboardFocusCoalition)init
{
  v3.receiver = self;
  v3.super_class = SBSingleMemberKeyboardFocusCoalition;
  return [(SBKeyboardFocusCoalition *)&v3 _initWithDebugName:@"Single Member Coalition"];
}

- (void)addedMember:(id)a3
{
  v5 = a3;
  v7.receiver = self;
  v7.super_class = SBSingleMemberKeyboardFocusCoalition;
  [(SBKeyboardFocusCoalition *)&v7 addedMember:v5];
  if (self->_member)
  {
    [(SBSingleMemberKeyboardFocusCoalition *)v5 addedMember:a2, self];
  }

  member = self->_member;
  self->_member = v5;
}

- (void)removedMember:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBSingleMemberKeyboardFocusCoalition;
  [(SBKeyboardFocusCoalition *)&v9 removedMember:v5];
  member = self->_member;
  if (member != v5)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    v8 = [(SBKeyboardFocusCoalitionMember *)v5 uniqueIdentifier];
    [v7 handleFailureInMethod:a2 object:self file:@"SBSingleMemberKeyboardFocusCoalition.m" lineNumber:33 description:{@"Trying to remove a member: %@ that I'm not tracking", v8}];

    member = self->_member;
  }

  self->_member = 0;
}

- (void)setNeedsArbitrationForReason:(id)a3
{
  v5.receiver = self;
  v5.super_class = SBSingleMemberKeyboardFocusCoalition;
  v4 = a3;
  [(SBKeyboardFocusCoalition *)&v5 setNeedsArbitrationForReason:v4];
  [(SBSingleMemberKeyboardFocusCoalition *)self _arbitrateForReason:v4, v5.receiver, v5.super_class];
}

- (void)memberRequestsArbitration:(id)a3 forReason:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (self->_member != v7)
  {
    [SBSingleMemberKeyboardFocusCoalition memberRequestsArbitration:a2 forReason:self];
  }

  v9.receiver = self;
  v9.super_class = SBSingleMemberKeyboardFocusCoalition;
  [(SBKeyboardFocusCoalition *)&v9 memberRequestsArbitration:v7 forReason:v8];
  [(SBSingleMemberKeyboardFocusCoalition *)self _arbitrateForReason:v8];
}

- (void)invalidate
{
  v2.receiver = self;
  v2.super_class = SBSingleMemberKeyboardFocusCoalition;
  [(SBKeyboardFocusCoalition *)&v2 invalidate];
}

- (void)_arbitrateForReason:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(SBKeyboardFocusCoalition *)self isKeyboardFocusEvaluationSuppressed])
  {
    v5 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(SBKeyboardFocusCoalition *)self debugName];
      v7 = [(SBKeyboardFocusCoalition *)self keyboardFocusEvaluationSupressionReasons];
      v16 = 138543874;
      v17 = v6;
      v18 = 2114;
      v19 = v4;
      v20 = 2114;
      v21 = v7;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] _abritrateForReason: %{public}@ - but we are supressing keyboard focus evaluation for reasons: %{public}@", &v16, 0x20u);

LABEL_16:
      goto LABEL_17;
    }

    goto LABEL_17;
  }

  if ([(SBKeyboardFocusCoalition *)self isInvalidated])
  {
    v5 = SBLogKeyboardFocus();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    v8 = [(SBKeyboardFocusCoalition *)self debugName];
    v16 = 138543618;
    v17 = v8;
    v18 = 2114;
    v19 = v4;
    v9 = "[%{public}@] _abritrateForReason: %{public}@ - but we invalidated";
LABEL_13:
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, v9, &v16, 0x16u);

    goto LABEL_17;
  }

  member = self->_member;
  if (member)
  {
    v5 = [(SBKeyboardFocusCoalitionMember *)member updateCoalitionPreferencesWithReason:v4];
    v6 = [v5 policy];
    v11 = [(SBKeyboardFocusCoalition *)self enforcedPolicy];
    v12 = [v11 isEqual:v6];

    if (v12)
    {
      v13 = SBLogKeyboardFocus();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [(SBKeyboardFocusCoalition *)self debugName];
        v16 = 138543618;
        v17 = v14;
        v18 = 2114;
        v19 = v4;
        _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] _abritrateForReason: %{public}@ - new policy is unchanged", &v16, 0x16u);
      }
    }

    else
    {
      v15 = [(SBKeyboardFocusCoalition *)self policyEnforcer];
      [v15 enforce:v6];

      [(SBKeyboardFocusCoalition *)self setEnforcedPolicy:v6];
      [(SBKeyboardFocusCoalitionMember *)self->_member setHasFocus:1];
      [(SBKeyboardFocusCoalitionMember *)self->_member focusPolicyDidChange];
      v13 = [(SBKeyboardFocusCoalition *)self delegate];
      [v13 keyboardFocusCoalitionDidUpdateEnforcedPolicy:self];
    }

    goto LABEL_16;
  }

  v5 = SBLogKeyboardFocus();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(SBKeyboardFocusCoalition *)self debugName];
    v16 = 138543618;
    v17 = v8;
    v18 = 2114;
    v19 = v4;
    v9 = "[%{public}@] _abritrateForReason: %{public}@ - but we have no member";
    goto LABEL_13;
  }

LABEL_17:
}

- (void)addedMember:(uint64_t)a3 .cold.1(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v9 = [a1 uniqueIdentifier];
  [v8 handleFailureInMethod:a3 object:a4 file:@"SBSingleMemberKeyboardFocusCoalition.m" lineNumber:27 description:{@"Trying to add %@ but already tracking %@", v9, *a2}];
}

- (void)memberRequestsArbitration:(uint64_t)a1 forReason:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSingleMemberKeyboardFocusCoalition.m" lineNumber:43 description:@"member requested arbitration but it isn't the one i'm tracking"];
}

@end