@interface SBSystemActionCompoundPreviewAssertion
- (id)acquireForReason:(uint64_t)a1;
- (id)descriptionBuilderWithMultilinePrefix:(void *)a1;
- (id)descriptionWithMultilinePrefix:(uint64_t)a1;
- (id)succinctDescriptionBuilder;
- (uint64_t)_removeExpansionReason:(uint64_t)result;
- (uint64_t)_removePreviewingReason:(uint64_t)result;
- (uint64_t)_removeUrgencyReason:(uint64_t)result;
- (uint64_t)_sendEvent:(uint64_t)result;
- (uint64_t)_updateState;
- (uint64_t)state;
- (void)_addAssertionReason:(id *)a1;
- (void)dealloc;
- (void)initWithIdentifier:(void *)a3 stateDidChangeBlock:(void *)a4 eventHandlingBlock:;
@end

@implementation SBSystemActionCompoundPreviewAssertion

- (uint64_t)state
{
  if (result)
  {
    return *(result + 56);
  }

  return result;
}

- (void)initWithIdentifier:(void *)a3 stateDidChangeBlock:(void *)a4 eventHandlingBlock:
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    if (!v7)
    {
      [SBSystemActionCompoundPreviewAssertion initWithIdentifier:? stateDidChangeBlock:? eventHandlingBlock:?];
    }

    if (!v8)
    {
      [SBSystemActionCompoundPreviewAssertion initWithIdentifier:? stateDidChangeBlock:? eventHandlingBlock:?];
    }

    if (!v9)
    {
      [SBSystemActionCompoundPreviewAssertion initWithIdentifier:? stateDidChangeBlock:? eventHandlingBlock:?];
    }

    v17.receiver = a1;
    v17.super_class = SBSystemActionCompoundPreviewAssertion;
    a1 = objc_msgSendSuper2(&v17, sel_init);
    if (a1)
    {
      v10 = [v7 copy];
      v11 = a1[8];
      a1[8] = v10;

      v12 = [v8 copy];
      v13 = a1[1];
      a1[1] = v12;

      v14 = [v9 copy];
      v15 = a1[2];
      a1[2] = v14;
    }
  }

  return a1;
}

- (void)dealloc
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Acquired previewing assertions for <%@:%p> (%@) must be invalidated before dealloc", objc_opt_class(), a1, *(a1 + 64)];
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
    v13 = a1;
    v14 = 2114;
    v15 = @"SBSystemActionCompoundPreviewAssertion.m";
    v16 = 1024;
    v17 = 63;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (id)acquireForReason:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (!v3)
    {
      [SBSystemActionCompoundPreviewAssertion acquireForReason:?];
    }

    v5 = [SBSystemActionPreviewAssertion alloc];
    v6 = *(a1 + 64);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __59__SBSystemActionCompoundPreviewAssertion_acquireForReason___block_invoke;
    v15[3] = &unk_2783BFBB8;
    v15[4] = a1;
    v16 = v4;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __59__SBSystemActionCompoundPreviewAssertion_acquireForReason___block_invoke_2;
    v13[3] = &unk_2783BFBE0;
    v13[4] = a1;
    v14 = v16;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __59__SBSystemActionCompoundPreviewAssertion_acquireForReason___block_invoke_3;
    v11[3] = &unk_2783BFBB8;
    v11[4] = a1;
    v7 = v14;
    v12 = v7;
    v8 = [(SBSystemActionPreviewAssertion *)v5 initWithIdentifier:v6 forReason:v7 expansionInvalidationBlock:v15 urgencyInvalidationBlock:v13 finalInvalidationBlock:v11];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __59__SBSystemActionCompoundPreviewAssertion_acquireForReason___block_invoke_4;
    v10[3] = &unk_2783BFC08;
    v10[4] = a1;
    [v8 addExpansionInvalidationBlock:v10];
    objc_storeWeak((a1 + 24), v8);
    [(SBSystemActionCompoundPreviewAssertion *)a1 _addAssertionReason:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __59__SBSystemActionCompoundPreviewAssertion_acquireForReason___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    [*(v1 + 40) removeObject:*(result + 40)];

    return [(SBSystemActionCompoundPreviewAssertion *)v1 _updateState];
  }

  return result;
}

- (uint64_t)_removeExpansionReason:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    [*(result + 40) removeObject:a2];

    return [(SBSystemActionCompoundPreviewAssertion *)v2 _updateState];
  }

  return result;
}

uint64_t __59__SBSystemActionCompoundPreviewAssertion_acquireForReason___block_invoke_2(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    [*(v1 + 48) removeObject:*(result + 40)];

    return [(SBSystemActionCompoundPreviewAssertion *)v1 _updateState];
  }

  return result;
}

- (uint64_t)_removeUrgencyReason:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    [*(result + 48) removeObject:a2];

    return [(SBSystemActionCompoundPreviewAssertion *)v2 _updateState];
  }

  return result;
}

uint64_t __59__SBSystemActionCompoundPreviewAssertion_acquireForReason___block_invoke_3(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    [*(v1 + 32) removeObject:*(result + 40)];

    return [(SBSystemActionCompoundPreviewAssertion *)v1 _updateState];
  }

  return result;
}

- (uint64_t)_removePreviewingReason:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    [*(result + 32) removeObject:a2];

    return [(SBSystemActionCompoundPreviewAssertion *)v2 _updateState];
  }

  return result;
}

void __59__SBSystemActionCompoundPreviewAssertion_acquireForReason___block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3 == 1)
  {
    v6 = *(a1 + 32);
    if (!v6)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (!a3)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
LABEL_6:
      v7 = OUTLINED_FUNCTION_2_35(v5, v6);
      v8(v7);
      v5 = v9;
    }
  }

LABEL_7:
}

- (uint64_t)_sendEvent:(uint64_t)result
{
  if (result)
  {
    return (*(*(result + 16) + 16))();
  }

  return result;
}

- (void)_addAssertionReason:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    v10 = v3;
    if (!a1[4])
    {
      v4 = [MEMORY[0x277CCA940] set];
      v5 = a1[4];
      a1[4] = v4;
    }

    if (!a1[5])
    {
      v6 = [MEMORY[0x277CCA940] set];
      v7 = a1[5];
      a1[5] = v6;
    }

    if (!a1[6])
    {
      v8 = [MEMORY[0x277CCA940] set];
      v9 = a1[6];
      a1[6] = v8;
    }

    [a1[4] addObject:v10];
    [a1[5] addObject:v10];
    [a1[6] addObject:v10];
    [(SBSystemActionCompoundPreviewAssertion *)a1 _updateState];
    v3 = v10;
  }
}

- (uint64_t)_updateState
{
  if (result)
  {
    v1 = result;
    v2 = [*(result + 32) count];
    v3 = [*(v1 + 40) count];
    WeakRetained = objc_loadWeakRetained((v1 + 24));
    v5 = [WeakRetained isProminent];
    v6 = [*(v1 + 48) count];

    if (!BSEqualBools() || !BSEqualBools() || !BSEqualBools() || (result = BSEqualBools(), (result & 1) == 0))
    {
      *(v1 + 56) = v2 != 0;
      *(v1 + 57) = v3 != 0;
      *(v1 + 58) = v5;
      *(v1 + 59) = v6 != 0;
      v7 = *(*(v1 + 8) + 16);

      return v7();
    }
  }

  return result;
}

- (id)descriptionWithMultilinePrefix:(uint64_t)a1
{
  if (a1)
  {
    v1 = [(SBSystemActionCompoundPreviewAssertion *)a1 succinctDescriptionBuilder];
    v2 = [v1 build];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)succinctDescriptionBuilder
{
  if (a1)
  {
    v2 = [MEMORY[0x277CF0C00] builderWithObject:a1];
    [v2 appendString:*(a1 + 64) withName:@"identifier"];
    v3 = [v2 appendObject:*(a1 + 32) withName:@"previewingReasons"];
    v4 = [v2 appendObject:*(a1 + 40) withName:@"expansionReasons"];
    v5 = [v2 appendObject:*(a1 + 48) withName:@"urgencyReasons"];
    v6 = [v2 appendBool:*(a1 + 58) withName:@"isProminent"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)descriptionBuilderWithMultilinePrefix:(void *)a1
{
  if (a1)
  {
    a1 = [(SBSystemActionCompoundPreviewAssertion *)a1 succinctDescriptionBuilder];
    v1 = vars8;
  }

  return a1;
}

- (void)initWithIdentifier:(char *)a1 stateDidChangeBlock:eventHandlingBlock:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"eventHandlingBlock != ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithIdentifier:(char *)a1 stateDidChangeBlock:eventHandlingBlock:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"stateDidChangeBlock != ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithIdentifier:(char *)a1 stateDidChangeBlock:eventHandlingBlock:.cold.3(char *a1)
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

- (void)acquireForReason:(char *)a1 .cold.1(char *a1)
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

@end