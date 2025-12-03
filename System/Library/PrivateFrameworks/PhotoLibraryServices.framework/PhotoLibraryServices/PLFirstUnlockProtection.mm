@interface PLFirstUnlockProtection
+ (void)waitUntilFirstUnlock;
@end

@implementation PLFirstUnlockProtection

+ (void)waitUntilFirstUnlock
{
  if (MKBDeviceUnlockedSinceBoot() != 1)
  {
    v2 = dispatch_semaphore_create(0);
    out_token = -1;
    v3 = +[PLConcurrencyLimiter sharedLimiter];
    sharedUtilityQueue = [v3 sharedUtilityQueue];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __47__PLFirstUnlockProtection_waitUntilFirstUnlock__block_invoke;
    handler[3] = &unk_1E756B898;
    v5 = v2;
    v11 = v5;
    v6 = notify_register_dispatch("com.apple.mobile.keybagd.first_unlock", &out_token, sharedUtilityQueue, handler);

    v7 = PLBackendGetLog();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        *v9 = 0;
        _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "Failed to register for first unlock notification.", v9, 2u);
      }
    }

    else
    {
      if (v8)
      {
        *v9 = 0;
        _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "Will wait for first unlock...", v9, 2u);
      }

      while (MKBDeviceUnlockedSinceBoot() != 1)
      {
        dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
      }

      notify_cancel(out_token);
    }
  }
}

intptr_t __47__PLFirstUnlockProtection_waitUntilFirstUnlock__block_invoke(uint64_t a1)
{
  v2 = PLBackendGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "Received first unlock notification.", v4, 2u);
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

@end