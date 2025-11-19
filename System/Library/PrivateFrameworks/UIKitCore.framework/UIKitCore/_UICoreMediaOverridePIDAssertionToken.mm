@interface _UICoreMediaOverridePIDAssertionToken
- (_UICoreMediaOverridePIDAssertionToken)init;
- (id)initWithPID:(void *)a3 reason:;
- (void)appendDescriptionToStream:(id)a3;
@end

@implementation _UICoreMediaOverridePIDAssertionToken

- (id)initWithPID:(void *)a3 reason:
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    if (a2 <= 0)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_UICoreMediaOverridePIDAssertionToken can not be created with an invalid pid"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v11 = NSStringFromSelector(sel_initWithPID_reason_);
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        *buf = 138544642;
        v20 = v11;
        v21 = 2114;
        v22 = v13;
        v23 = 2048;
        v24 = a1;
        v25 = 2114;
        v26 = @"_UICoreMediaOverridePIDAssertionToken.m";
        v27 = 1024;
        v28 = 22;
        v29 = 2114;
        v30 = v10;
        _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v10 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x189AC2DF8);
    }

    if (!v6)
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"reason"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v15 = NSStringFromSelector(sel_initWithPID_reason_);
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        *buf = 138544642;
        v20 = v15;
        v21 = 2114;
        v22 = v17;
        v23 = 2048;
        v24 = a1;
        v25 = 2114;
        v26 = @"_UICoreMediaOverridePIDAssertionToken.m";
        v27 = 1024;
        v28 = 23;
        v29 = 2114;
        v30 = v14;
        _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v14 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x189AC2EF0);
    }

    v18.receiver = a1;
    v18.super_class = _UICoreMediaOverridePIDAssertionToken;
    v8 = objc_msgSendSuper2(&v18, sel_init);
    a1 = v8;
    if (v8)
    {
      *(v8 + 2) = a2;
      objc_storeStrong(v8 + 2, a3);
    }
  }

  return a1;
}

- (_UICoreMediaOverridePIDAssertionToken)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is not allowed", "-[_UICoreMediaOverridePIDAssertionToken init]"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    v14 = self;
    v15 = 2114;
    v16 = @"_UICoreMediaOverridePIDAssertionToken.m";
    v17 = 1024;
    v18 = 32;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (void)appendDescriptionToStream:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67___UICoreMediaOverridePIDAssertionToken_appendDescriptionToStream___block_invoke;
  v6[3] = &unk_1E70F35B8;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [v5 appendProem:self block:v6];
}

@end