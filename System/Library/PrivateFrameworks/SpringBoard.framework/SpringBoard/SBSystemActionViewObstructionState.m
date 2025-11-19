@interface SBSystemActionViewObstructionState
+ (id)emptyState;
+ (id)stateWithError:(uint64_t)a1;
+ (id)stateWithEvent:(uint64_t)a1;
- (BOOL)isEqual:(id)a3;
- (SBSystemActionViewObstructionState)initWithEvent:(id)a3 error:(id)a4;
@end

@implementation SBSystemActionViewObstructionState

- (SBSystemActionViewObstructionState)initWithEvent:(id)a3 error:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SBSystemActionViewObstructionState;
  v9 = [(SBSystemActionViewObstructionState *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_event, a3);
    objc_storeStrong(&v10->_error, a4);
  }

  return v10;
}

+ (id)emptyState
{
  v0 = [objc_alloc(objc_opt_self()) initWithEvent:0 error:0];

  return v0;
}

+ (id)stateWithEvent:(uint64_t)a1
{
  v2 = a2;
  v3 = objc_opt_self();
  if (!v2)
  {
    [SBSystemActionViewObstructionState stateWithEvent:?];
  }

  v4 = [[v3 alloc] initWithEvent:v2 error:0];

  return v4;
}

+ (id)stateWithError:(uint64_t)a1
{
  v2 = a2;
  v3 = objc_opt_self();
  if (!v2)
  {
    [SBSystemActionViewObstructionState stateWithError:?];
  }

  v4 = [[v3 alloc] initWithEvent:0 error:v2];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v7 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    if (BSEqualObjects())
    {
      v7 = BSEqualObjects();
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (void)stateWithEvent:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"event != ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)stateWithError:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"error != ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end