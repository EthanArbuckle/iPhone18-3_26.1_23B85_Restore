@interface PSBlockedHandlesCache
@end

@implementation PSBlockedHandlesCache

uint64_t __51___PSBlockedHandlesCache_sharedBlockedHandlesCache__block_invoke()
{
  v0 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1B5ED1000, v0, OS_LOG_TYPE_DEFAULT, "_PSBlockedHandlesCache beginning shared instance bringup", v4, 2u);
  }

  v1 = objc_opt_new();
  v2 = sharedBlockedHandlesCache_cache;
  sharedBlockedHandlesCache_cache = v1;

  return [sharedBlockedHandlesCache_cache beginSyncingWithTU];
}

void __65___PSBlockedHandlesCache_handlePrivacyManagerChangeNotification___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x1E69C5D10] autoreleasingSerialQueueWithLabel:"handlePrivacyManagerChangeNotification:" qosClass:17];
  v2 = handlePrivacyManagerChangeNotification___pasExprOnceResult;
  handlePrivacyManagerChangeNotification___pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

id __56___PSBlockedHandlesCache_rebuildCacheFromPrivacyManager__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 type];
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = [v2 email];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v5 = [v2 phoneNumber];
    v4 = [v5 digits];
  }

  return v4;
}

uint64_t __57___PSBlockedHandlesCache_rebuildCacheWithBlockedHandles___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) computeHashesForString:a2 reuse:0];
  v4 = [*(a1 + 32) getWithHashes:v3];

  return v4;
}

@end