@interface UICoreMediaOverridePIDManager
@end

@implementation UICoreMediaOverridePIDManager

void __48___UICoreMediaOverridePIDManager_sharedInstance__block_invoke()
{
  v0 = [_UICoreMediaOverridePIDManager alloc];
  if (v0)
  {
    v6.receiver = v0;
    v6.super_class = _UICoreMediaOverridePIDManager;
    v1 = objc_msgSendSuper2(&v6, sel_init);
    v2 = v1;
    if (v1)
    {
      v1[2] = -1;
      v3 = objc_opt_new();
      v4 = *(v2 + 16);
      *(v2 + 16) = v3;
    }
  }

  else
  {
    v2 = 0;
  }

  v5 = _MergedGlobals_1054;
  _MergedGlobals_1054 = v2;
}

void __76___UICoreMediaOverridePIDManager_acquireOverrideAssertionWithPID_forReason___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = *(a1 + 32);
  if (WeakRetained)
  {
    BSDispatchQueueAssertMain();
    if (!v2)
    {
      v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"token"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v4 = NSStringFromSelector(sel_invalidateAssertionToken_);
        v5 = objc_opt_class();
        v6 = NSStringFromClass(v5);
        *buf = 138544642;
        v13 = v4;
        v14 = 2114;
        v15 = v6;
        v16 = 2048;
        v17 = WeakRetained;
        v18 = 2114;
        v19 = @"_UICoreMediaOverridePIDManager.m";
        v20 = 1024;
        v21 = 68;
        v22 = 2114;
        v23 = v3;
        _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v3 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x189621658);
    }

    if (([WeakRetained[2] containsObject:v2] & 1) == 0)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Can not invalidate assertion token %@ that is not being tracked", v2];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v8 = NSStringFromSelector(sel_invalidateAssertionToken_);
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        *buf = 138544642;
        v13 = v8;
        v14 = 2114;
        v15 = v10;
        v16 = 2048;
        v17 = WeakRetained;
        v18 = 2114;
        v19 = @"_UICoreMediaOverridePIDManager.m";
        v20 = 1024;
        v21 = 69;
        v22 = 2114;
        v23 = v7;
        _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v7 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x18962174CLL);
    }

    [WeakRetained[2] removeObject:v2];
    [(_UICoreMediaOverridePIDManager *)WeakRetained evaluateActiveOverridePID];
  }
}

@end