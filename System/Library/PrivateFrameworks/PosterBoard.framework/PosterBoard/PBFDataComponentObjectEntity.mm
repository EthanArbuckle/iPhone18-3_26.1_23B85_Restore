@interface PBFDataComponentObjectEntity
- (PBFDataComponentObjectEntity)initWithComponent:(id)component object:(id)object context:(id)context;
- (id)description;
- (id)determineRefreshState;
@end

@implementation PBFDataComponentObjectEntity

- (PBFDataComponentObjectEntity)initWithComponent:(id)component object:(id)object context:(id)context
{
  componentCopy = component;
  objectCopy = object;
  contextCopy = context;
  v13 = componentCopy;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v13)
  {
    [PBFDataComponentObjectEntity initWithComponent:a2 object:? context:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFDataComponentObjectEntity initWithComponent:a2 object:? context:?];
  }

  if (!objectCopy)
  {
    [PBFDataComponentObjectEntity initWithComponent:a2 object:? context:?];
  }

  v14 = contextCopy;
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
    objc_storeStrong(&v15->_component, component);
    objc_storeStrong(&v16->_object, object);
    objc_storeStrong(&v16->_context, context);
  }

  return v16;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_component withName:@"component"];
  v5 = [v3 appendObject:self->_object withName:@"object"];
  build = [v3 build];

  return build;
}

- (id)determineRefreshState
{
  if (objc_opt_respondsToSelector())
  {
    lastRefreshDate = self->_object;
    context = [(PBFDataComponentObjectEntity *)self context];
    v5 = [lastRefreshDate determineRefreshStateWithContext:context];
    goto LABEL_9;
  }

  context2 = [(PBFDataComponentObjectEntity *)self context];
  context = [context2 now];

  context3 = [(PBFDataComponentObjectEntity *)self context];
  lastRefreshDate = [context3 lastRefreshDate];

  context4 = [(PBFDataComponentObjectEntity *)self context];
  component = [context4 component];
  updated = PBFDefaultUpdateIntervalForDataComponent(component);

  if (updated == 1.79769313e308)
  {
    v11 = [PBFDataRefreshState alloc];
    v12 = @"Expiration interval is forever.  So no update is needed.";
  }

  else
  {
    [context timeIntervalSinceDate:lastRefreshDate];
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