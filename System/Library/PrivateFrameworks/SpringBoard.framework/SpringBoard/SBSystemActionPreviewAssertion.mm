@interface SBSystemActionPreviewAssertion
- (id)acquireAssertionForInvalidatingAfterDefaultTimeoutForActionPerformed;
- (id)descriptionBuilderWithMultilinePrefix:(void *)prefix;
- (id)descriptionWithMultilinePrefix:(uint64_t)prefix;
- (id)initWithIdentifier:(void *)identifier forReason:(void *)reason expansionInvalidationBlock:(void *)block urgencyInvalidationBlock:(void *)invalidationBlock finalInvalidationBlock:;
- (id)succinctDescriptionBuilder;
- (uint64_t)identifier;
- (uint64_t)reason;
- (void)_invalidateAfterContextualTimeoutWithResult:(uint64_t)result;
- (void)_invalidateExpansionWithResult:(uint64_t)result;
- (void)_invalidateUrgency;
- (void)_invalidateUrgencyAfterDefaultTimeoutForActionPerformed;
- (void)addExpansionInvalidationBlock:(id)block;
- (void)addInvalidationBlock:(id)block;
- (void)dealloc;
- (void)invalidateWithResult:(unint64_t)result;
@end

@implementation SBSystemActionPreviewAssertion

- (id)initWithIdentifier:(void *)identifier forReason:(void *)reason expansionInvalidationBlock:(void *)block urgencyInvalidationBlock:(void *)invalidationBlock finalInvalidationBlock:
{
  v11 = a2;
  identifierCopy = identifier;
  reasonCopy = reason;
  blockCopy = block;
  invalidationBlockCopy = invalidationBlock;
  if (self)
  {
    if (!v11)
    {
      [SBSystemActionPreviewAssertion initWithIdentifier:? forReason:? expansionInvalidationBlock:? urgencyInvalidationBlock:? finalInvalidationBlock:?];
    }

    if (!identifierCopy)
    {
      [SBSystemActionPreviewAssertion initWithIdentifier:? forReason:? expansionInvalidationBlock:? urgencyInvalidationBlock:? finalInvalidationBlock:?];
    }

    if (!reasonCopy)
    {
      [SBSystemActionPreviewAssertion initWithIdentifier:? forReason:? expansionInvalidationBlock:? urgencyInvalidationBlock:? finalInvalidationBlock:?];
    }

    if (!blockCopy)
    {
      [SBSystemActionPreviewAssertion initWithIdentifier:? forReason:? expansionInvalidationBlock:? urgencyInvalidationBlock:? finalInvalidationBlock:?];
    }

    if (!invalidationBlockCopy)
    {
      [SBSystemActionPreviewAssertion initWithIdentifier:? forReason:? expansionInvalidationBlock:? urgencyInvalidationBlock:? finalInvalidationBlock:?];
    }

    v28.receiver = self;
    v28.super_class = SBSystemActionPreviewAssertion;
    self = objc_msgSendSuper2(&v28, sel_init);
    if (self)
    {
      v16 = [v11 copy];
      v17 = *(self + 10);
      *(self + 10) = v16;

      v18 = [identifierCopy copy];
      v19 = *(self + 11);
      *(self + 11) = v18;

      v20 = [blockCopy copy];
      v21 = *(self + 1);
      *(self + 1) = v20;

      v22 = [invalidationBlockCopy copy];
      v23 = *(self + 2);
      *(self + 2) = v22;

      *(self + 18) = 65793;
      v24 = +[SBSystemActionDomain rootSettings];
      previewSettings = [v24 previewSettings];
      v26 = *(self + 3);
      *(self + 3) = previewSettings;

      [self addExpansionInvalidationBlock:reasonCopy];
    }
  }

  return self;
}

- (void)dealloc
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Client code must invalidate <%@:%p> (%@: %@) before dealloc", objc_opt_class(), self, *(self + 80), *(self + 88)];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    selfCopy = self;
    v14 = 2114;
    v15 = @"SBSystemActionPreviewAssertion.m";
    v16 = 1024;
    v17 = 60;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)addExpansionInvalidationBlock:(id)block
{
  blockCopy = block;
  if (![(SBSystemActionPreviewAssertion *)self isValid])
  {
    [SBSystemActionPreviewAssertion addExpansionInvalidationBlock:a2];
  }

  if (!self->_expanding)
  {
    [SBSystemActionPreviewAssertion addExpansionInvalidationBlock:a2];
  }

  expansionInvalidationBlocks = self->_expansionInvalidationBlocks;
  if (!expansionInvalidationBlocks)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB40]);
    v7 = self->_expansionInvalidationBlocks;
    self->_expansionInvalidationBlocks = v6;

    expansionInvalidationBlocks = self->_expansionInvalidationBlocks;
  }

  v8 = [blockCopy copy];
  v9 = MEMORY[0x223D6F7F0]();
  [(NSMutableOrderedSet *)expansionInvalidationBlocks addObject:v9];
}

- (void)addInvalidationBlock:(id)block
{
  blockCopy = block;
  if (![(SBSystemActionPreviewAssertion *)self isValid])
  {
    [SBSystemActionPreviewAssertion addInvalidationBlock:a2];
  }

  invalidationBlocks = self->_invalidationBlocks;
  if (!invalidationBlocks)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB40]);
    v7 = self->_invalidationBlocks;
    self->_invalidationBlocks = v6;

    invalidationBlocks = self->_invalidationBlocks;
  }

  v8 = [blockCopy copy];
  v9 = MEMORY[0x223D6F7F0]();
  [(NSMutableOrderedSet *)invalidationBlocks addObject:v9];
}

- (void)_invalidateAfterContextualTimeoutWithResult:(uint64_t)result
{
  v19 = *MEMORY[0x277D85DE8];
  if (result && [result isValid] && !*(result + 40))
  {
    [*(result + 24) minimumPreviewInterval];
    v5 = v4;
    if (a2 == 1)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0.0;
      if (!a2)
      {
        if (*(result + 48) <= 0.0)
        {
          [SBSystemActionPreviewAssertion _invalidateAfterContextualTimeoutWithResult:?];
        }

        BSContinuousMachTimeNow();
        v8 = v5 - (v7 - *(result + 48));
        if (v8 >= 0.0)
        {
          v6 = v8;
        }

        else
        {
          v6 = 0.0;
        }
      }
    }

    if (BSFloatGreaterThanFloat())
    {
      v9 = SBLogSystemActionPreviewing();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        resultCopy = result;
        v17 = 2048;
        v18 = v6;
        _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ creating %fs invalidation timer", buf, 0x16u);
      }

      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Preview-minimum-interval-timer:%@", *(result + 80)];
      v11 = [objc_alloc(MEMORY[0x277CF0BD8]) initWithIdentifier:v10];
      v12 = *(result + 40);
      *(result + 40) = v11;

      if (a2 == 1)
      {
        [SBSystemActionPreviewAssertion _invalidateExpansionWithResult:result];
        [(SBSystemActionPreviewAssertion *)result _invalidateUrgency];
      }

      v13 = *(result + 40);
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __78__SBSystemActionPreviewAssertion__invalidateAfterContextualTimeoutWithResult___block_invoke;
      v14[3] = &unk_2783A8AC0;
      v14[4] = result;
      v14[5] = a2;
      [v13 scheduleWithFireInterval:MEMORY[0x277D85CD0] leewayInterval:v14 queue:v6 handler:0.05];
    }

    else
    {

      [result invalidateWithResult:a2];
    }
  }
}

- (id)acquireAssertionForInvalidatingAfterDefaultTimeoutForActionPerformed
{
  if ([(SBSystemActionPreviewAssertion *)self isValid]&& self->_performedTime == 0.0)
  {
    BSContinuousMachTimeNow();
    self->_performedTime = v5;
    self->_prominent = 1;
    [SBSystemActionPreviewAssertion _invalidateExpansionWithResult:?];
    [(SBSystemActionPreviewAssertion *)self _invalidateUrgencyAfterDefaultTimeoutForActionPerformed];
    v6 = [(NSString *)self->_identifier stringByAppendingString:@"-invalidateAsPerformed"];
    v7 = objc_alloc(MEMORY[0x277CF0CE8]);
    reason = self->_reason;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __102__SBSystemActionPreviewAssertion_acquireAssertionForInvalidatingAfterDefaultTimeoutForActionPerformed__block_invoke;
    v9[3] = &unk_2783A8A98;
    v9[4] = self;
    v3 = [v7 initWithIdentifier:v6 forReason:reason invalidationBlock:v9];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_invalidateUrgencyAfterDefaultTimeoutForActionPerformed
{
  v16 = *MEMORY[0x277D85DE8];
  if (self && [self isValid] && !*(self + 32))
  {
    [*(self + 24) additionalUrgencyInterval];
    v3 = v2;
    v4 = SBLogSystemActionPreviewing();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v14 = 2048;
      v15 = v3;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ creating %fs urgency invalidation timer", buf, 0x16u);
    }

    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Urgency-interval-timer:%@", *(self + 80)];
    v6 = [objc_alloc(MEMORY[0x277CF0BD8]) initWithIdentifier:v5];
    v7 = *(self + 32);
    *(self + 32) = v6;

    objc_initWeak(buf, self);
    v8 = *(self + 32);
    v9 = MEMORY[0x277D85CD0];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __89__SBSystemActionPreviewAssertion__invalidateUrgencyAfterDefaultTimeoutForActionPerformed__block_invoke;
    v10[3] = &unk_2783A8AE8;
    objc_copyWeak(&v11, buf);
    [v8 scheduleWithFireInterval:MEMORY[0x277D85CD0] leewayInterval:v10 queue:v3 handler:0.05];

    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }
}

- (void)invalidateWithResult:(unint64_t)result
{
  v7 = *MEMORY[0x277D85DE8];
  if ([(SBSystemActionPreviewAssertion *)self isValid])
  {
    [(SBSystemActionPreviewAssertion *)self invalidateWithResult:result, v5, v6];
  }
}

- (void)_invalidateExpansionWithResult:(uint64_t)result
{
  v16 = *MEMORY[0x277D85DE8];
  if (result && *(result + 74) == 1)
  {
    *(result + 74) = 0;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v2 = *(result + 56);
    v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v12;
      do
      {
        v6 = 0;
        do
        {
          if (*v12 != v5)
          {
            objc_enumerationMutation(v2);
          }

          OUTLINED_FUNCTION_2_6();
          v9(v7, v8);
          ++v6;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v4);
    }

    v10 = *(result + 56);
    *(result + 56) = 0;
  }
}

- (void)_invalidateUrgency
{
  if (self && *(self + 73) == 1)
  {
    *(self + 73) = 0;
    OUTLINED_FUNCTION_2_6();
    v2();
    v3 = *(self + 8);
    *(self + 8) = 0;
  }
}

void __89__SBSystemActionPreviewAssertion__invalidateUrgencyAfterDefaultTimeoutForActionPerformed__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(SBSystemActionPreviewAssertion *)WeakRetained _invalidateUrgency];
}

- (id)descriptionWithMultilinePrefix:(uint64_t)prefix
{
  if (prefix)
  {
    succinctDescriptionBuilder = [(SBSystemActionPreviewAssertion *)prefix succinctDescriptionBuilder];
    build = [succinctDescriptionBuilder build];
  }

  else
  {
    build = 0;
  }

  return build;
}

- (id)succinctDescriptionBuilder
{
  if (self)
  {
    v2 = [MEMORY[0x277CF0C00] builderWithObject:self];
    v3 = [v2 appendObject:*(self + 80) withName:@"identifier"];
    v4 = [v2 appendObject:*(self + 88) withName:@"reason"];
    v5 = [v2 appendBool:*(self + 72) withName:@"valid"];
    v6 = [v2 appendBool:*(self + 73) withName:@"urgent"];
    v7 = [v2 appendBool:*(self + 74) withName:@"expanding"];
    v8 = [v2 appendBool:*(self + 75) withName:@"prominent"];
    v9 = [v2 appendBool:objc_msgSend(*(self + 32) withName:"isScheduled") ifEqualTo:{@"pendingUrgencyInvalidation", 1}];
    v10 = [v2 appendBool:objc_msgSend(*(self + 40) withName:"isScheduled") ifEqualTo:{@"pendingInvalidation", 1}];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)descriptionBuilderWithMultilinePrefix:(void *)prefix
{
  if (prefix)
  {
    prefix = [(SBSystemActionPreviewAssertion *)prefix succinctDescriptionBuilder];
    v1 = vars8;
  }

  return prefix;
}

- (uint64_t)identifier
{
  if (result)
  {
    return *(result + 80);
  }

  return result;
}

- (uint64_t)reason
{
  if (result)
  {
    return *(result + 88);
  }

  return result;
}

- (void)initWithIdentifier:(char *)a1 forReason:expansionInvalidationBlock:urgencyInvalidationBlock:finalInvalidationBlock:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"finalInvalidationBlock != ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithIdentifier:(char *)a1 forReason:expansionInvalidationBlock:urgencyInvalidationBlock:finalInvalidationBlock:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"urgencyInvalidationBlock != ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithIdentifier:(char *)a1 forReason:expansionInvalidationBlock:urgencyInvalidationBlock:finalInvalidationBlock:.cold.3(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"expansionInvalidationBlock != ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithIdentifier:(char *)a1 forReason:expansionInvalidationBlock:urgencyInvalidationBlock:finalInvalidationBlock:.cold.4(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"reason != ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithIdentifier:(char *)a1 forReason:expansionInvalidationBlock:urgencyInvalidationBlock:finalInvalidationBlock:.cold.5(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"identifier != ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)addExpansionInvalidationBlock:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Can't add an expansion invalidation block to an already-invalidated assertion"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4_2(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)addExpansionInvalidationBlock:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Can't add an expansion invalidation block to a non-expanding assertion"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4_2(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)addInvalidationBlock:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Can't add an invalidation block to an already-invalidated assertion"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4_2(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)invalidateWithResult:(_OWORD *)a3 .cold.1(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4)
{
  *(a1 + 72) = 0;
  [*(a1 + 32) invalidate];
  v7 = *(a1 + 32);
  *(a1 + 32) = 0;

  [*(a1 + 40) invalidate];
  v8 = *(a1 + 40);
  *(a1 + 40) = 0;

  *(a1 + 75) = 0;
  [SBSystemActionPreviewAssertion _invalidateExpansionWithResult:a1];
  [(SBSystemActionPreviewAssertion *)a1 _invalidateUrgency];
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  v9 = *(a1 + 64);
  v10 = [v9 countByEnumeratingWithState:a3 objects:a4 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = **(a3 + 2);
    do
    {
      v13 = 0;
      do
      {
        if (**(a3 + 2) != v12)
        {
          objc_enumerationMutation(v9);
        }

        OUTLINED_FUNCTION_2_6();
        v14();
        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:a3 objects:a4 count:16];
    }

    while (v11);
  }

  v15 = *(a1 + 64);
  *(a1 + 64) = 0;

  OUTLINED_FUNCTION_2_6();
  v16();
  v17 = *(a1 + 16);
  *(a1 + 16) = 0;
}

@end