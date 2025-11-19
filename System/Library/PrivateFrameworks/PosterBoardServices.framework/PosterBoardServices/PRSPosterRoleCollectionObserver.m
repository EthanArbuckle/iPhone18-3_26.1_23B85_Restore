@interface PRSPosterRoleCollectionObserver
- (PRSPosterRoleCollectionObserver)initWithRole:(id)a3 needsSandboxExtensions:(BOOL)a4;
- (void)issueUpdatedState:(id)a3;
@end

@implementation PRSPosterRoleCollectionObserver

- (PRSPosterRoleCollectionObserver)initWithRole:(id)a3 needsSandboxExtensions:(BOOL)a4
{
  v7 = a3;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v7)
  {
    [PRSPosterRoleCollectionObserver initWithRole:a2 needsSandboxExtensions:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRSPosterRoleCollectionObserver initWithRole:a2 needsSandboxExtensions:?];
  }

  v12.receiver = self;
  v12.super_class = PRSPosterRoleCollectionObserver;
  v8 = [(PRSPosterRoleCollectionObserver *)&v12 init];
  if (v8)
  {
    v9 = [v7 copy];
    role = v8->_role;
    v8->_role = v9;

    v8->_needsSandboxExtensions = a4;
  }

  return v8;
}

- (void)issueUpdatedState:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E695DFB8];
  v13 = v4;
  v6 = [v4 bs_mapNoNulls:&__block_literal_global_348];
  v7 = [v5 orderedSetWithArray:v6];

  v8 = self;
  objc_sync_enter(v8);
  posterCollection = v8->_posterCollection;
  if ((BSEqualObjects() & 1) == 0)
  {
    v10 = v8->_posterCollection;
    objc_storeStrong(&v8->_posterCollection, v7);
    v11 = [(PRSPosterRoleCollectionObserver *)v8 handler];
    v12 = v11;
    if (v11)
    {
      (*(v11 + 16))(v11, v8, v10, v7);
    }
  }

  objc_sync_exit(v8);
}

id __53__PRSPosterRoleCollectionObserver_issueUpdatedState___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PRSPosterConfiguration alloc] _initWithPath:v2];

  return v3;
}

- (void)initWithRole:(char *)a1 needsSandboxExtensions:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithRole:(char *)a1 needsSandboxExtensions:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end