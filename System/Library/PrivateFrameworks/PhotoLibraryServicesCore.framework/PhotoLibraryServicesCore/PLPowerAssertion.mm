@interface PLPowerAssertion
+ (unsigned)takePowerAssertionWithName:(id)name humanReadableReason:(id)reason timeout:(double)timeout timeoutAction:(__CFString *)action;
+ (void)performNoTimeoutPowerAssertionTaskWithName:(id)name humanReadableReason:(id)reason block:(id)block;
+ (void)performPowerAssertionTaskWithName:(id)name humanReadableReason:(id)reason timeout:(double)timeout timeoutAction:(__CFString *)action block:(id)block;
+ (void)removePowerAssertionForAssertionID:(unsigned int)d;
@end

@implementation PLPowerAssertion

+ (void)removePowerAssertionForAssertionID:(unsigned int)d
{
  v12 = *MEMORY[0x1E69E9840];
  if (d)
  {
    v4 = PLBackendGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v10 = 138543362;
      v11 = v6;
      _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_INFO, "%{public}@ Removing power assertion: -🔌", &v10, 0xCu);
    }

    v7 = IOPMAssertionRelease(d);
    if (v7)
    {
      v8 = v7;
      v9 = PLBackendGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = 67109120;
        LODWORD(v11) = v8;
        _os_log_impl(&dword_1AA9BD000, v9, OS_LOG_TYPE_ERROR, "Failed to release power assertion for migration. Result code: %d", &v10, 8u);
      }
    }
  }
}

+ (unsigned)takePowerAssertionWithName:(id)name humanReadableReason:(id)reason timeout:(double)timeout timeoutAction:(__CFString *)action
{
  v21 = *MEMORY[0x1E69E9840];
  AssertionID = 0;
  reasonCopy = reason;
  nameCopy = name;
  v11 = PLBackendGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    *buf = 138543362;
    v20 = v13;
    _os_log_impl(&dword_1AA9BD000, v11, OS_LOG_TYPE_INFO, "%{public}@ taking power assertion: +🔌", buf, 0xCu);
  }

  v14 = PLBundleIdentifier();
  v15 = IOPMAssertionCreateWithDescription(@"PreventUserIdleSystemSleep", nameCopy, v14, reasonCopy, 0, timeout, action, &AssertionID);

  if (v15)
  {
    v16 = PLBackendGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v20) = v15;
      _os_log_impl(&dword_1AA9BD000, v16, OS_LOG_TYPE_ERROR, "Failed to create power assertion for migration. Result code: %d", buf, 8u);
    }
  }

  return AssertionID;
}

+ (void)performPowerAssertionTaskWithName:(id)name humanReadableReason:(id)reason timeout:(double)timeout timeoutAction:(__CFString *)action block:(id)block
{
  blockCopy = block;
  v13 = [self takePowerAssertionWithName:name humanReadableReason:reason timeout:action timeoutAction:timeout];
  blockCopy[2](blockCopy);

  [self removePowerAssertionForAssertionID:v13];
}

+ (void)performNoTimeoutPowerAssertionTaskWithName:(id)name humanReadableReason:(id)reason block:(id)block
{
  blockCopy = block;
  v9 = [self takePowerAssertionWithName:name humanReadableReason:reason timeout:@"TimeoutActionLog" timeoutAction:0.0];
  blockCopy[2](blockCopy);

  [self removePowerAssertionForAssertionID:v9];
}

@end