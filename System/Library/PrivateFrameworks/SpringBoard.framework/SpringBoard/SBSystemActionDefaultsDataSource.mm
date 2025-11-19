@interface SBSystemActionDefaultsDataSource
- (id)executorForSystemAction:(id)a3;
- (id)initWithDefaults:(void *)a3 instanceIdentity:;
- (void)updateSelectedAction;
@end

@implementation SBSystemActionDefaultsDataSource

- (id)initWithDefaults:(void *)a3 instanceIdentity:
{
  v20[1] = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    if (!v6)
    {
      [SBSystemActionDefaultsDataSource initWithDefaults:? instanceIdentity:?];
    }

    if (!v7)
    {
      [SBSystemActionDefaultsDataSource initWithDefaults:? instanceIdentity:?];
    }

    objc_storeStrong(a1 + 5, a2);
    v8 = [v7 copyWithZone:0];
    v9 = a1[6];
    a1[6] = v8;

    v10 = [v7 hostIdentifier];
    v19.receiver = a1;
    v19.super_class = SBSystemActionDefaultsDataSource;
    a1 = objc_msgSendSuper2(&v19, sel_initWithHostIdentifier_, v10);

    if (a1)
    {
      objc_initWeak(&location, a1);
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"configuredActionArchive"];
      v20[0] = v11;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
      v13 = MEMORY[0x277D85CD0];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __70__SBSystemActionDefaultsDataSource_initWithDefaults_instanceIdentity___block_invoke;
      v16[3] = &unk_2783A8C68;
      objc_copyWeak(&v17, &location);
      v14 = [v6 observeDefaults:v12 onQueue:MEMORY[0x277D85CD0] withBlock:v16];

      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
    }
  }

  return a1;
}

void __70__SBSystemActionDefaultsDataSource_initWithDefaults_instanceIdentity___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateSelectedAction];
}

- (id)executorForSystemAction:(id)a3
{
  v3 = [a3 newExecutor];

  return v3;
}

- (void)updateSelectedAction
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_21ED4E000, log, OS_LOG_TYPE_ERROR, "(%{public}@) Error unarchiving configured action: %{public}@", &v3, 0x16u);
}

- (void)initWithDefaults:(const char *)a1 instanceIdentity:.cold.1(const char *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"instanceIdentity != ((void *)0)"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    v9 = @"SBSystemActionDefaultsDataSource.m";
    v10 = 1024;
    v11 = 31;
    v12 = v6;
    v13 = v2;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  v7 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithDefaults:(const char *)a1 instanceIdentity:.cold.2(const char *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"defaults != ((void *)0)"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    v9 = @"SBSystemActionDefaultsDataSource.m";
    v10 = 1024;
    v11 = 30;
    v12 = v6;
    v13 = v2;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  v7 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end