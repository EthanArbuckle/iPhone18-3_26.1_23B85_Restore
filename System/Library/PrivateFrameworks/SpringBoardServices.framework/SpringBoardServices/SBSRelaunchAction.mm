@interface SBSRelaunchAction
+ (id)actionWithReason:(id)a3 options:(unint64_t)a4 targetURL:(id)a5;
- (NSString)reason;
- (NSURL)targetURL;
- (SBSRelaunchAction)initWithReason:(id)a3 options:(unint64_t)a4 targetURL:(id)a5;
- (unint64_t)options;
@end

@implementation SBSRelaunchAction

+ (id)actionWithReason:(id)a3 options:(unint64_t)a4 targetURL:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [[a1 alloc] initWithReason:v9 options:a4 targetURL:v8];

  return v10;
}

- (SBSRelaunchAction)initWithReason:(id)a3 options:(unint64_t)a4 targetURL:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = v9;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v11)
  {
    [SBSRelaunchAction initWithReason:a2 options:? targetURL:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [SBSRelaunchAction initWithReason:a2 options:? targetURL:?];
  }

  v12 = v10;
  if (v12)
  {
    NSClassFromString(&cfstr_Nsurl.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [SBSRelaunchAction initWithReason:a2 options:? targetURL:?];
    }
  }

  v13 = objc_alloc_init(MEMORY[0x1E698E700]);
  v14 = [v11 copy];
  [v13 setObject:v14 forSetting:1];

  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  [v13 setObject:v15 forSetting:2];

  if (v12)
  {
    [v13 setObject:v12 forSetting:3];
  }

  v18.receiver = self;
  v18.super_class = SBSRelaunchAction;
  v16 = [(SBSRelaunchAction *)&v18 initWithInfo:v13 responder:0];

  return v16;
}

- (NSString)reason
{
  v2 = [(SBSRelaunchAction *)self info];
  v3 = [v2 objectForSetting:1];

  return v3;
}

- (unint64_t)options
{
  v2 = [(SBSRelaunchAction *)self info];
  v3 = [v2 objectForSetting:2];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (NSURL)targetURL
{
  v2 = [(SBSRelaunchAction *)self info];
  v3 = [v2 objectForSetting:3];

  return v3;
}

- (void)initWithReason:(const char *)a1 options:targetURL:.cold.1(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_19169D000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"[_bs_assert_object isKindOfClass:NSStringClass]", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithReason:(const char *)a1 options:targetURL:.cold.2(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_19169D000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"[_bs_assert_object isKindOfClass:NSURLClass]", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithReason:(const char *)a1 options:targetURL:.cold.3(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_19169D000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"_bs_assert_object != nil", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end