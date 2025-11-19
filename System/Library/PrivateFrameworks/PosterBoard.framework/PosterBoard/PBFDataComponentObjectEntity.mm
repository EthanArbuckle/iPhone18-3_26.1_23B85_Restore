@interface PBFDataComponentObjectEntity
- (PBFDataComponentObjectEntity)initWithComponent:(id)a3 object:(id)a4 context:(id)a5;
- (id)description;
- (id)determineRefreshState;
@end

@implementation PBFDataComponentObjectEntity

- (PBFDataComponentObjectEntity)initWithComponent:(id)a3 object:(id)a4 context:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v10;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v13)
  {
    [PBFDataComponentObjectEntity initWithComponent:a2 object:? context:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFDataComponentObjectEntity initWithComponent:a2 object:? context:?];
  }

  if (!v11)
  {
    [PBFDataComponentObjectEntity initWithComponent:a2 object:? context:?];
  }

  v14 = v12;
  NSClassFromString(&cfstr_Pbfdatarefresh.isa);
  if (!v14)
  {
    [PBFDataComponentObjectEntity initWithComponent:a2 object:? context:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFDataComponentObjectEntity initWithComponent:a2 object:? context:?];
  }

  v18.receiver = self;
  v18.super_class = PBFDataComponentObjectEntity;
  v15 = [(PBFDataComponentObjectEntity *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_component, a3);
    objc_storeStrong(&v16->_object, a4);
    objc_storeStrong(&v16->_context, a5);
  }

  return v16;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_component withName:@"component"];
  v5 = [v3 appendObject:self->_object withName:@"object"];
  v6 = [v3 build];

  return v6;
}

- (id)determineRefreshState
{
  if (objc_opt_respondsToSelector())
  {
    v3 = self->_object;
    v4 = [(PBFDataComponentObjectEntity *)self context];
    v5 = [v3 determineRefreshStateWithContext:v4];
    goto LABEL_9;
  }

  v6 = [(PBFDataComponentObjectEntity *)self context];
  v4 = [v6 now];

  v7 = [(PBFDataComponentObjectEntity *)self context];
  v3 = [v7 lastRefreshDate];

  v8 = [(PBFDataComponentObjectEntity *)self context];
  v9 = [v8 component];
  updated = PBFDefaultUpdateIntervalForDataComponent(v9);

  if (updated == 1.79769313e308)
  {
    v11 = [PBFDataRefreshState alloc];
    v12 = @"Expiration interval is forever.  So no update is needed.";
  }

  else
  {
    [v4 timeIntervalSinceDate:v3];
    v14 = v13;
    v11 = [PBFDataRefreshState alloc];
    if (v14 > updated)
    {
      v5 = [(PBFDataRefreshState *)v11 initWithNeedsRefresh:1 reason:@"Entity has exceeded expiration interval %f seconds; needs update", *&updated];
      goto LABEL_9;
    }

    v17 = updated - v14;
    v12 = @"Entity is up to date, update needed in %f seconds";
  }

  v5 = [(PBFDataRefreshState *)v11 initWithNeedsRefresh:0 reason:v12, *&v17];
LABEL_9:
  v15 = v5;

  return v15;
}

- (void)initWithComponent:(char *)a1 object:context:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithComponent:(char *)a1 object:context:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PBFDataRefreshContextClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithComponent:(char *)a1 object:context:.cold.3(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithComponent:(char *)a1 object:context:.cold.4(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"object", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithComponent:(char *)a1 object:context:.cold.5(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end