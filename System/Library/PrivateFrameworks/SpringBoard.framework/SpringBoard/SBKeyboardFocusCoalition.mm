@interface SBKeyboardFocusCoalition
- (NSArray)members;
- (NSSet)keyboardFocusEvaluationSupressionReasons;
- (NSString)debugDescription;
- (SBKeyboardFocusCoalitionDelegate)delegate;
- (id)_initWithDebugName:(id)name;
- (id)acquireMemberForWindowScene:(id)scene delegate:(id)delegate;
- (id)succinctDescription;
- (id)suppressKeyboardFocusEvaluationForReason:(id)reason;
- (void)_registerMember:(id)member;
- (void)_unregisterMember:(id)member;
- (void)addedMember:(id)member;
- (void)appendDescriptionToStream:(id)stream;
- (void)dealloc;
- (void)invalidate;
- (void)memberRequestsArbitration:(id)arbitration forReason:(id)reason;
- (void)removedMember:(id)member;
- (void)setNeedsArbitrationForReason:(id)reason;
@end

@implementation SBKeyboardFocusCoalition

- (SBKeyboardFocusCoalitionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_initWithDebugName:(id)name
{
  nameCopy = name;
  if (!nameCopy)
  {
    [SBKeyboardFocusCoalition _initWithDebugName:a2];
  }

  v6 = nameCopy;
  v19.receiver = self;
  v19.super_class = SBKeyboardFocusCoalition;
  v7 = [(SBKeyboardFocusCoalition *)&v19 init];
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    internalMembers = v7->_internalMembers;
    v7->_internalMembers = v8;

    v10 = [v6 copy];
    debugName = v7->_debugName;
    v7->_debugName = v10;

    objc_initWeak(&location, v7);
    v12 = MEMORY[0x277D85CD0];
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"SpringBoard - KeyboardFocus - Coalition - %@", v6];
    objc_copyWeak(&v17, &location);
    v14 = BSLogAddStateCaptureBlockWithTitle();
    stateCaptureHandle = v7->_stateCaptureHandle;
    v7->_stateCaptureHandle = v14;

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v7;
}

id __47__SBKeyboardFocusCoalition__initWithDebugName___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained debugDescription];

  return v2;
}

- (id)suppressKeyboardFocusEvaluationForReason:(id)reason
{
  reasonCopy = reason;
  suppressKeyboardFocusEvaluationAssertion = self->_suppressKeyboardFocusEvaluationAssertion;
  if (!suppressKeyboardFocusEvaluationAssertion)
  {
    v6 = self->_debugName;
    objc_initWeak(&location, self);
    v7 = MEMORY[0x277CF0BD0];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]-keyboardFocusEvaluationSuppression", v6];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __69__SBKeyboardFocusCoalition_suppressKeyboardFocusEvaluationForReason___block_invoke;
    v16[3] = &unk_2783AD370;
    v9 = v6;
    v17 = v9;
    objc_copyWeak(&v18, &location);
    v10 = [v7 assertionWithIdentifier:v8 stateDidChangeHandler:v16];
    v11 = self->_suppressKeyboardFocusEvaluationAssertion;
    self->_suppressKeyboardFocusEvaluationAssertion = v10;

    v12 = self->_suppressKeyboardFocusEvaluationAssertion;
    v13 = SBLogKeyboardFocus();
    [(BSCompoundAssertion *)v12 setLog:v13];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);

    suppressKeyboardFocusEvaluationAssertion = self->_suppressKeyboardFocusEvaluationAssertion;
  }

  v14 = [(BSCompoundAssertion *)suppressKeyboardFocusEvaluationAssertion acquireForReason:reasonCopy];

  return v14;
}

void __69__SBKeyboardFocusCoalition_suppressKeyboardFocusEvaluationForReason___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (([a2 isActive] & 1) == 0)
  {
    v3 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v9 = 138543362;
      v10 = v4;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] finished suppressing keyboard focus evaluation, time to re-evaluate", &v9, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = [WeakRetained delegate];
    v7 = +[SBKeyboardFocusArbitrationReason keyboardFocusEvaluationSuppression];
    v8 = [v7 annotatedWithSourceName:*(a1 + 32)];
    [v6 requestArbitrationForReason:v8];
  }
}

- (NSSet)keyboardFocusEvaluationSupressionReasons
{
  reasons = [(BSCompoundAssertion *)self->_suppressKeyboardFocusEvaluationAssertion reasons];
  v3 = reasons;
  if (reasons)
  {
    v4 = reasons;
  }

  else
  {
    v4 = [MEMORY[0x277CBEB98] set];
  }

  v5 = v4;

  return v5;
}

- (NSArray)members
{
  v2 = [(NSMutableArray *)self->_internalMembers copy];

  return v2;
}

- (id)acquireMemberForWindowScene:(id)scene delegate:(id)delegate
{
  delegateCopy = delegate;
  sceneCopy = scene;
  v8 = [SBKeyboardFocusCoalitionMember alloc];
  _FBSScene = [sceneCopy _FBSScene];
  identifier = [_FBSScene identifier];
  v11 = [(SBKeyboardFocusCoalitionMember *)v8 initWithUniqueIdentifier:identifier windowScene:sceneCopy delegate:delegateCopy coalition:self];

  [(SBKeyboardFocusCoalition *)self _registerMember:v11];

  return v11;
}

- (void)dealloc
{
  v3 = MEMORY[0x277CCACA8];
  v13 = objc_opt_class();
  v4 = [v3 stringWithFormat:@"%@ dealloced without invalidation"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, v13, v14, v15);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_registerMember:(id)member
{
  internalMembers = self->_internalMembers;
  memberCopy = member;
  [(NSMutableArray *)internalMembers addObject:memberCopy];
  [(NSMutableArray *)self->_internalMembers sortUsingComparator:&__block_literal_global_410];
  [(SBKeyboardFocusCoalition *)self addedMember:memberCopy];
}

BOOL __44__SBKeyboardFocusCoalition__registerMember___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 uniqueIdentifier];
  v6 = [v4 uniqueIdentifier];

  return v5 < v6;
}

- (void)_unregisterMember:(id)member
{
  internalMembers = self->_internalMembers;
  memberCopy = member;
  [(NSMutableArray *)internalMembers removeObject:memberCopy];
  [(SBKeyboardFocusCoalition *)self removedMember:memberCopy];

  delegate = [(SBKeyboardFocusCoalition *)self delegate];
  v6 = +[SBKeyboardFocusArbitrationReason removedCoalitionMember];
  v7 = [v6 annotatedWithSourceName:self->_debugName];
  [delegate requestArbitrationForReason:v7];
}

- (void)memberRequestsArbitration:(id)arbitration forReason:(id)reason
{
  v17 = *MEMORY[0x277D85DE8];
  arbitrationCopy = arbitration;
  reasonCopy = reason;
  v8 = SBLogKeyboardFocus();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    debugName = self->_debugName;
    uniqueIdentifier = [arbitrationCopy uniqueIdentifier];
    v11 = 138543874;
    v12 = debugName;
    v13 = 2114;
    v14 = uniqueIdentifier;
    v15 = 2114;
    v16 = reasonCopy;
    _os_log_debug_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEBUG, "[%{public}@] member %{public}@ requests update for reason: %{public}@", &v11, 0x20u);
  }
}

- (void)setNeedsArbitrationForReason:(id)reason
{
  reasonCopy = reason;
  if (!reasonCopy)
  {
    [SBKeyboardFocusCoalition setNeedsArbitrationForReason:a2];
  }

  v6 = reasonCopy;
  objc_opt_class();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(SBKeyboardFocusCoalition *)v6 setNeedsArbitrationForReason:a2, self];
  }

  v7 = SBLogKeyboardFocus();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(SBKeyboardFocusCoalition *)self setNeedsArbitrationForReason:v6, v7];
  }
}

- (void)addedMember:(id)member
{
  memberCopy = member;
  v5 = SBLogKeyboardFocus();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(SBKeyboardFocusCoalition *)self addedMember:memberCopy];
  }
}

- (void)removedMember:(id)member
{
  memberCopy = member;
  v5 = SBLogKeyboardFocus();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(SBKeyboardFocusCoalition *)self removedMember:memberCopy];
  }
}

- (void)invalidate
{
  v13 = *MEMORY[0x277D85DE8];
  if (!self->_invalidated)
  {
    self->_invalidated = 1;
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    members = [(SBKeyboardFocusCoalition *)self members];
    v4 = [members countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(members);
          }

          [(SBKeyboardFocusCoalition *)self _unregisterMember:*(*(&v8 + 1) + 8 * v7++)];
        }

        while (v5 != v7);
        v5 = [members countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }

    [(BSInvalidatable *)self->_stateCaptureHandle invalidate];
    [(SBKeyboardFocusPolicyEnforcer *)self->_policyEnforcer invalidate];
    [(BSCompoundAssertion *)self->_suppressKeyboardFocusEvaluationAssertion invalidate];
  }
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277CF0C08];
  debugStyle = [MEMORY[0x277CF0C10] debugStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:debugStyle];

  return v5;
}

- (id)succinctDescription
{
  v3 = MEMORY[0x277CF0C08];
  succinctStyle = [MEMORY[0x277CF0C10] succinctStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:succinctStyle];

  return v5;
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__SBKeyboardFocusCoalition_appendDescriptionToStream___block_invoke;
  v8[3] = &unk_2783A92D8;
  v5 = streamCopy;
  v9 = v5;
  selfCopy = self;
  [v5 appendProem:self block:v8];
  if (([v5 hasSuccinctStyle] & 1) == 0)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __54__SBKeyboardFocusCoalition_appendDescriptionToStream___block_invoke_2;
    v6[3] = &unk_2783A92D8;
    v6[4] = self;
    v7 = v5;
    [v7 appendBodySectionWithName:0 block:v6];
  }
}

id __54__SBKeyboardFocusCoalition_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) appendString:*(*(a1 + 40) + 24) withName:0];
  if (*(*(a1 + 40) + 8) == 1)
  {
    return [*(a1 + 32) appendBool:1 withName:@"invalid"];
  }

  return result;
}

void __54__SBKeyboardFocusCoalition_appendDescriptionToStream___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) isKeyboardFocusEvaluationSuppressed])
  {
    v2 = *(a1 + 40);
    v3 = [*(a1 + 32) keyboardFocusEvaluationSupressionReasons];
    v4 = [v2 appendObject:v3 withName:@"keyboardFocusEvaluationSupressionReasons"];
  }

  v5 = *(a1 + 40);
  v7 = [*(a1 + 32) enforcedPolicy];
  v6 = [v5 appendObject:v7 withName:@"enforcedPolicy"];
}

- (void)_initWithDebugName:(const char *)a1 .cold.1(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"debugName", v12, v13);
  }

  v11 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)setNeedsArbitrationForReason:(uint64_t)a3 .cold.1(void *a1, const char *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCACA8];
  v6 = [a1 classForCoder];
  if (!v6)
  {
    v6 = objc_opt_class();
  }

  v7 = NSStringFromClass(v6);
  objc_opt_class();
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v5 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"reason", v7, v9];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v11 = NSStringFromSelector(a2);
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    *buf = 138544642;
    v15 = v11;
    v16 = 2114;
    v17 = v13;
    v18 = 2048;
    v19 = a3;
    v20 = 2114;
    v21 = @"SBKeyboardFocusCoalition.m";
    v22 = 1024;
    v23 = 119;
    v24 = 2114;
    v25 = v10;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v10 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)setNeedsArbitrationForReason:(os_log_t)log .cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 24);
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_debug_impl(&dword_21ED4E000, log, OS_LOG_TYPE_DEBUG, "[%{public}@] needs arbitration for reason: %{public}@", &v4, 0x16u);
}

- (void)setNeedsArbitrationForReason:(const char *)a1 .cold.3(const char *a1)
{
  v2 = MEMORY[0x277CCACA8];
  objc_opt_class();
  v3 = objc_opt_class();
  v12 = NSStringFromClass(v3);
  v4 = [v2 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@."];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v13 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, @"reason", v12, 2u);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)addedMember:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v2 = [a2 uniqueIdentifier];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_12(&dword_21ED4E000, v3, v4, "[%{public}@] added member: %{public}@", v5, v6, v7, v8, v9);
}

- (void)removedMember:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v2 = [a2 uniqueIdentifier];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_12(&dword_21ED4E000, v3, v4, "[%{public}@] removed member: %{public}@", v5, v6, v7, v8, v9);
}

@end