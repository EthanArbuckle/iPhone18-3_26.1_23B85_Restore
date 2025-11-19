@interface SBAbstractSystemActionExecutor
- (BOOL)_canBeExecuted;
- (BOOL)_isExecuting;
- (BOOL)_requiresAuthenticationAtLeastOnceSinceBootBeforeExecution;
- (SBAbstractSystemActionExecutor)initWithSystemAction:(id)a3;
- (id)_beginInteractiveExecutionWithContext:(id)a3 executionHandler:(id)a4 error:(id *)a5;
- (id)_previewWithCoordinator:(id)a3;
- (id)executeWithContext:(id)a3 executionHandler:(id)a4 completion:(id)a5;
- (id)previewWithCoordinator:(id)a3;
- (void)_cancelPreviewing;
- (void)_finishExecutingWithResult:(id)a3;
- (void)cancelPreviewing;
@end

@implementation SBAbstractSystemActionExecutor

- (SBAbstractSystemActionExecutor)initWithSystemAction:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [SBAbstractSystemActionExecutor initWithSystemAction:a2];
  }

  v7 = v6;
  v11.receiver = self;
  v11.super_class = SBAbstractSystemActionExecutor;
  v8 = [(SBAbstractSystemActionExecutor *)&v11 init];
  v9 = objc_opt_class();
  if ([v9 isEqual:objc_opt_class()])
  {
    [SBAbstractSystemActionExecutor initWithSystemAction:a2];
  }

  if (v8)
  {
    objc_storeStrong(&v8->_systemAction, a3);
  }

  return v8;
}

- (id)previewWithCoordinator:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (![(SBAbstractSystemActionExecutor *)self canBeExecuted])
  {
    [(SBAbstractSystemActionExecutor *)self previewWithCoordinator:a2];
  }

  v6 = [(SBAbstractSystemActionExecutor *)self _previewWithCoordinator:v5];
  if (v6)
  {
    v7 = SBLogSystemActionPreviewing();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543618;
      v10 = self;
      v11 = 2114;
      v12 = v6;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ encountered an error while previewing action: %{public}@", &v9, 0x16u);
    }
  }

  return v6;
}

- (void)cancelPreviewing
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ cannot cancel previewing an inexecutable action"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_5_0();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, a1, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (id)executeWithContext:(id)a3 executionHandler:(id)a4 completion:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (![(SBAbstractSystemActionExecutor *)self canBeExecuted])
  {
    [SBAbstractSystemActionExecutor executeWithContext:a2 executionHandler:? completion:?];
  }

  ++self->_executionGeneration;
  executionCompletions = self->_executionCompletions;
  if (!executionCompletions)
  {
    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v14 = self->_executionCompletions;
    self->_executionCompletions = v13;

    executionCompletions = self->_executionCompletions;
  }

  v15 = [v11 copy];
  v16 = MEMORY[0x223D6F7F0]();
  [(NSMutableArray *)executionCompletions addObject:v16];

  if (self->_executionStartTime == 0.0)
  {
    BSContinuousMachTimeNow();
    self->_executionStartTime = v17;
  }

  v22 = 0;
  v18 = [(SBAbstractSystemActionExecutor *)self _beginInteractiveExecutionWithContext:v9 executionHandler:v10 error:&v22];
  v19 = v22;
  if (!v18)
  {
    if ([(SBAbstractSystemActionExecutor *)self isExecuting])
    {
      [SBAbstractSystemActionExecutor executeWithContext:a2 executionHandler:? completion:?];
    }

    v20 = SBLogSystemActionExecution();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v24 = self;
      v25 = 2114;
      v26 = v19;
      _os_log_impl(&dword_21ED4E000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ will finish executing without beginning due to error: %{public}@", buf, 0x16u);
    }

    [(SBAbstractSystemActionExecutor *)self _finishExecutingWithResult:v19];
  }

  return v18;
}

- (void)_finishExecutingWithResult:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_executionEndTime == 0.0)
  {
    BSContinuousMachTimeNow();
    self->_executionEndTime = v5;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = self->_executionCompletions;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          (*(*(*(&v12 + 1) + 8 * v10) + 16))(*(*(&v12 + 1) + 8 * v10));
          ++v10;
        }

        while (v8 != v10);
        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }

    executionCompletions = self->_executionCompletions;
    self->_executionCompletions = 0;
  }
}

- (BOOL)_canBeExecuted
{
  OUTLINED_FUNCTION_1_2();
  objc_opt_class();
  OUTLINED_FUNCTION_0_25();
  NSRequestConcreteImplementation();
  return 0;
}

- (BOOL)_isExecuting
{
  OUTLINED_FUNCTION_1_2();
  objc_opt_class();
  OUTLINED_FUNCTION_0_25();
  NSRequestConcreteImplementation();
  return 0;
}

- (BOOL)_requiresAuthenticationAtLeastOnceSinceBootBeforeExecution
{
  OUTLINED_FUNCTION_1_2();
  objc_opt_class();
  OUTLINED_FUNCTION_0_25();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)_previewWithCoordinator:(id)a3
{
  OUTLINED_FUNCTION_1_2();
  objc_opt_class();
  OUTLINED_FUNCTION_0_25();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)_cancelPreviewing
{
  OUTLINED_FUNCTION_1_2();
  objc_opt_class();
  OUTLINED_FUNCTION_0_25();

  NSRequestConcreteImplementation();
}

- (id)_beginInteractiveExecutionWithContext:(id)a3 executionHandler:(id)a4 error:(id *)a5
{
  OUTLINED_FUNCTION_1_2();
  objc_opt_class();
  OUTLINED_FUNCTION_0_25();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)initWithSystemAction:(const char *)a1 .cold.1(const char *a1)
{
  v2 = MEMORY[0x277CCACA8];
  v11 = objc_opt_class();
  v3 = [v2 stringWithFormat:@"%@ cannot be instantiated concretely use a subclass."];;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a1);
    v5 = objc_opt_class();
    v13 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, v11, v12, 2u);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithSystemAction:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"systemAction != ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)previewWithCoordinator:(uint64_t)a1 .cold.1(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ cannot preview an inexecutable action"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_5_0();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, a1, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)executeWithContext:(uint64_t)a1 executionHandler:(char *)a2 completion:.cold.1(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ cannot execute an inexecutable action"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_5_0();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, a1, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)executeWithContext:(uint64_t)a1 executionHandler:(char *)a2 completion:.cold.2(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed execution of %@ should not be executing"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_5_0();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, a1, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end