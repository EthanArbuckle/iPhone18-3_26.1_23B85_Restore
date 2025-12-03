@interface SBSingleMemberKeyboardFocusCoalition
- (SBSingleMemberKeyboardFocusCoalition)init;
- (void)_arbitrateForReason:(id)reason;
- (void)addedMember:(id)member;
- (void)invalidate;
- (void)memberRequestsArbitration:(id)arbitration forReason:(id)reason;
- (void)removedMember:(id)member;
- (void)setNeedsArbitrationForReason:(id)reason;
@end

@implementation SBSingleMemberKeyboardFocusCoalition

- (SBSingleMemberKeyboardFocusCoalition)init
{
  v3.receiver = self;
  v3.super_class = SBSingleMemberKeyboardFocusCoalition;
  return [(SBKeyboardFocusCoalition *)&v3 _initWithDebugName:@"Single Member Coalition"];
}

- (void)addedMember:(id)member
{
  memberCopy = member;
  v7.receiver = self;
  v7.super_class = SBSingleMemberKeyboardFocusCoalition;
  [(SBKeyboardFocusCoalition *)&v7 addedMember:memberCopy];
  if (self->_member)
  {
    [(SBSingleMemberKeyboardFocusCoalition *)memberCopy addedMember:a2, self];
  }

  member = self->_member;
  self->_member = memberCopy;
}

- (void)removedMember:(id)member
{
  memberCopy = member;
  v9.receiver = self;
  v9.super_class = SBSingleMemberKeyboardFocusCoalition;
  [(SBKeyboardFocusCoalition *)&v9 removedMember:memberCopy];
  member = self->_member;
  if (member != memberCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    uniqueIdentifier = [(SBKeyboardFocusCoalitionMember *)memberCopy uniqueIdentifier];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SBSingleMemberKeyboardFocusCoalition.m" lineNumber:33 description:{@"Trying to remove a member: %@ that I'm not tracking", uniqueIdentifier}];

    member = self->_member;
  }

  self->_member = 0;
}

- (void)setNeedsArbitrationForReason:(id)reason
{
  v5.receiver = self;
  v5.super_class = SBSingleMemberKeyboardFocusCoalition;
  reasonCopy = reason;
  [(SBKeyboardFocusCoalition *)&v5 setNeedsArbitrationForReason:reasonCopy];
  [(SBSingleMemberKeyboardFocusCoalition *)self _arbitrateForReason:reasonCopy, v5.receiver, v5.super_class];
}

- (void)memberRequestsArbitration:(id)arbitration forReason:(id)reason
{
  arbitrationCopy = arbitration;
  reasonCopy = reason;
  if (self->_member != arbitrationCopy)
  {
    [SBSingleMemberKeyboardFocusCoalition memberRequestsArbitration:a2 forReason:self];
  }

  v9.receiver = self;
  v9.super_class = SBSingleMemberKeyboardFocusCoalition;
  [(SBKeyboardFocusCoalition *)&v9 memberRequestsArbitration:arbitrationCopy forReason:reasonCopy];
  [(SBSingleMemberKeyboardFocusCoalition *)self _arbitrateForReason:reasonCopy];
}

- (void)invalidate
{
  v2.receiver = self;
  v2.super_class = SBSingleMemberKeyboardFocusCoalition;
  [(SBKeyboardFocusCoalition *)&v2 invalidate];
}

- (void)_arbitrateForReason:(id)reason
{
  v22 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  if ([(SBKeyboardFocusCoalition *)self isKeyboardFocusEvaluationSuppressed])
  {
    v5 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      debugName = [(SBKeyboardFocusCoalition *)self debugName];
      keyboardFocusEvaluationSupressionReasons = [(SBKeyboardFocusCoalition *)self keyboardFocusEvaluationSupressionReasons];
      v16 = 138543874;
      v17 = debugName;
      v18 = 2114;
      v19 = reasonCopy;
      v20 = 2114;
      v21 = keyboardFocusEvaluationSupressionReasons;
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

    debugName2 = [(SBKeyboardFocusCoalition *)self debugName];
    v16 = 138543618;
    v17 = debugName2;
    v18 = 2114;
    v19 = reasonCopy;
    v9 = "[%{public}@] _abritrateForReason: %{public}@ - but we invalidated";
LABEL_13:
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, v9, &v16, 0x16u);

    goto LABEL_17;
  }

  member = self->_member;
  if (member)
  {
    v5 = [(SBKeyboardFocusCoalitionMember *)member updateCoalitionPreferencesWithReason:reasonCopy];
    debugName = [v5 policy];
    enforcedPolicy = [(SBKeyboardFocusCoalition *)self enforcedPolicy];
    v12 = [enforcedPolicy isEqual:debugName];

    if (v12)
    {
      delegate = SBLogKeyboardFocus();
      if (os_log_type_enabled(delegate, OS_LOG_TYPE_DEFAULT))
      {
        debugName3 = [(SBKeyboardFocusCoalition *)self debugName];
        v16 = 138543618;
        v17 = debugName3;
        v18 = 2114;
        v19 = reasonCopy;
        _os_log_impl(&dword_21ED4E000, delegate, OS_LOG_TYPE_DEFAULT, "[%{public}@] _abritrateForReason: %{public}@ - new policy is unchanged", &v16, 0x16u);
      }
    }

    else
    {
      policyEnforcer = [(SBKeyboardFocusCoalition *)self policyEnforcer];
      [policyEnforcer enforce:debugName];

      [(SBKeyboardFocusCoalition *)self setEnforcedPolicy:debugName];
      [(SBKeyboardFocusCoalitionMember *)self->_member setHasFocus:1];
      [(SBKeyboardFocusCoalitionMember *)self->_member focusPolicyDidChange];
      delegate = [(SBKeyboardFocusCoalition *)self delegate];
      [delegate keyboardFocusCoalitionDidUpdateEnforcedPolicy:self];
    }

    goto LABEL_16;
  }

  v5 = SBLogKeyboardFocus();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    debugName2 = [(SBKeyboardFocusCoalition *)self debugName];
    v16 = 138543618;
    v17 = debugName2;
    v18 = 2114;
    v19 = reasonCopy;
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