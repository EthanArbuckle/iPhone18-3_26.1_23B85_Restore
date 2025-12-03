@interface SBSLockScreenPluginService
- (id)_serializedDataForContext:(id)context;
- (void)disableLockScreenBundle:(id)bundle withContext:(id)context;
- (void)enableLockScreenBundle:(id)bundle withContext:(id)context;
@end

@implementation SBSLockScreenPluginService

- (id)_serializedDataForContext:(id)context
{
  if (context)
  {
    v4 = [MEMORY[0x1E696AE40] dataWithPropertyList:context format:200 options:0 error:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)enableLockScreenBundle:(id)bundle withContext:(id)context
{
  v18 = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  v7 = [(SBSLockScreenPluginService *)self _serializedDataForContext:context];
  v8 = SBSSpringBoardServerPort();
  v9 = SBEnableLockScreenBundle(v8, 1, [bundleCopy UTF8String], objc_msgSend(v7, "bytes"), objc_msgSend(v7, "length"));
  if (v9)
  {
    v10 = v9;
    v11 = SBLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412802;
      selfCopy = self;
      v14 = 2114;
      v15 = bundleCopy;
      v16 = 2082;
      v17 = mach_error_string(v10);
      _os_log_error_impl(&dword_19169D000, v11, OS_LOG_TYPE_ERROR, "%@: Unable to enable bundle name %{public}@: %{public}s", &v12, 0x20u);
    }
  }
}

- (void)disableLockScreenBundle:(id)bundle withContext:(id)context
{
  v18 = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  v7 = [(SBSLockScreenPluginService *)self _serializedDataForContext:context];
  v8 = SBSSpringBoardServerPort();
  v9 = SBEnableLockScreenBundle(v8, 0, [bundleCopy UTF8String], objc_msgSend(v7, "bytes"), objc_msgSend(v7, "length"));
  if (v9)
  {
    v10 = v9;
    v11 = SBLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412802;
      selfCopy = self;
      v14 = 2114;
      v15 = bundleCopy;
      v16 = 2082;
      v17 = mach_error_string(v10);
      _os_log_error_impl(&dword_19169D000, v11, OS_LOG_TYPE_ERROR, "%@ Unable to disable bundle name %{public}@: %{public}s", &v12, 0x20u);
    }
  }
}

@end