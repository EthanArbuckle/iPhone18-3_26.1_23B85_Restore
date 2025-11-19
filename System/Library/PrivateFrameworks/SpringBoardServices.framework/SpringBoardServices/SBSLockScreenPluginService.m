@interface SBSLockScreenPluginService
- (id)_serializedDataForContext:(id)a3;
- (void)disableLockScreenBundle:(id)a3 withContext:(id)a4;
- (void)enableLockScreenBundle:(id)a3 withContext:(id)a4;
@end

@implementation SBSLockScreenPluginService

- (id)_serializedDataForContext:(id)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x1E696AE40] dataWithPropertyList:a3 format:200 options:0 error:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)enableLockScreenBundle:(id)a3 withContext:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(SBSLockScreenPluginService *)self _serializedDataForContext:a4];
  v8 = SBSSpringBoardServerPort();
  v9 = SBEnableLockScreenBundle(v8, 1, [v6 UTF8String], objc_msgSend(v7, "bytes"), objc_msgSend(v7, "length"));
  if (v9)
  {
    v10 = v9;
    v11 = SBLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412802;
      v13 = self;
      v14 = 2114;
      v15 = v6;
      v16 = 2082;
      v17 = mach_error_string(v10);
      _os_log_error_impl(&dword_19169D000, v11, OS_LOG_TYPE_ERROR, "%@: Unable to enable bundle name %{public}@: %{public}s", &v12, 0x20u);
    }
  }
}

- (void)disableLockScreenBundle:(id)a3 withContext:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(SBSLockScreenPluginService *)self _serializedDataForContext:a4];
  v8 = SBSSpringBoardServerPort();
  v9 = SBEnableLockScreenBundle(v8, 0, [v6 UTF8String], objc_msgSend(v7, "bytes"), objc_msgSend(v7, "length"));
  if (v9)
  {
    v10 = v9;
    v11 = SBLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412802;
      v13 = self;
      v14 = 2114;
      v15 = v6;
      v16 = 2082;
      v17 = mach_error_string(v10);
      _os_log_error_impl(&dword_19169D000, v11, OS_LOG_TYPE_ERROR, "%@ Unable to disable bundle name %{public}@: %{public}s", &v12, 0x20u);
    }
  }
}

@end