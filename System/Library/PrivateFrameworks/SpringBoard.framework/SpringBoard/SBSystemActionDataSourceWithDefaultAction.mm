@interface SBSystemActionDataSourceWithDefaultAction
- (id)initWithInnerDataSource:(void *)source defaultAction:;
- (void)updateSelectedAction;
@end

@implementation SBSystemActionDataSourceWithDefaultAction

- (id)initWithInnerDataSource:(void *)source defaultAction:
{
  v6 = a2;
  sourceCopy = source;
  if (self)
  {
    if (!v6)
    {
      [SBSystemActionDataSourceWithDefaultAction initWithInnerDataSource:? defaultAction:?];
    }

    if (!sourceCopy)
    {
      [SBSystemActionDataSourceWithDefaultAction initWithInnerDataSource:? defaultAction:?];
    }

    objc_storeStrong(self + 4, a2);
    objc_storeStrong(self + 5, source);
    hostIdentifier = [v6 hostIdentifier];
    v10.receiver = self;
    v10.super_class = SBSystemActionDataSourceWithDefaultAction;
    self = objc_msgSendSuper2(&v10, sel_initWithHostIdentifier_, hostIdentifier);

    if (self)
    {
      [v6 addObserver:self];
    }
  }

  return self;
}

- (void)updateSelectedAction
{
  selectedSystemAction = [(SBSystemActionDataSource *)self->_innerDataSource selectedSystemAction];
  if (!selectedSystemAction)
  {
    selectedSystemAction = self->_defaultAction;
  }

  v4 = selectedSystemAction;
  [(SBSystemActionAbstractDataSource *)self setSelectedSystemAction:selectedSystemAction];
}

- (void)initWithInnerDataSource:(const char *)a1 defaultAction:.cold.1(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"defaultAction != ((void *)0)"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    v8 = @"SBSystemActionDataSourceWithDefaultAction.m";
    v9 = 1024;
    v10 = 30;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithInnerDataSource:(const char *)a1 defaultAction:.cold.2(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"innerDataSource != ((void *)0)"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    v8 = @"SBSystemActionDataSourceWithDefaultAction.m";
    v9 = 1024;
    v10 = 29;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end