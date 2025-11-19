@interface SBSystemActionDataSourceWithDefaultAction
- (id)initWithInnerDataSource:(void *)a3 defaultAction:;
- (void)updateSelectedAction;
@end

@implementation SBSystemActionDataSourceWithDefaultAction

- (id)initWithInnerDataSource:(void *)a3 defaultAction:
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    if (!v6)
    {
      [SBSystemActionDataSourceWithDefaultAction initWithInnerDataSource:? defaultAction:?];
    }

    if (!v7)
    {
      [SBSystemActionDataSourceWithDefaultAction initWithInnerDataSource:? defaultAction:?];
    }

    objc_storeStrong(a1 + 4, a2);
    objc_storeStrong(a1 + 5, a3);
    v8 = [v6 hostIdentifier];
    v10.receiver = a1;
    v10.super_class = SBSystemActionDataSourceWithDefaultAction;
    a1 = objc_msgSendSuper2(&v10, sel_initWithHostIdentifier_, v8);

    if (a1)
    {
      [v6 addObserver:a1];
    }
  }

  return a1;
}

- (void)updateSelectedAction
{
  v3 = [(SBSystemActionDataSource *)self->_innerDataSource selectedSystemAction];
  if (!v3)
  {
    v3 = self->_defaultAction;
  }

  v4 = v3;
  [(SBSystemActionAbstractDataSource *)self setSelectedSystemAction:v3];
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