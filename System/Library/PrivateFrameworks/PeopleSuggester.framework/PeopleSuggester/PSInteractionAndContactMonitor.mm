@interface PSInteractionAndContactMonitor
@end

@implementation PSInteractionAndContactMonitor

void __73___PSInteractionAndContactMonitor_initWithInteractionStore_contactStore___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B5ED1000, v2, OS_LOG_TYPE_DEFAULT, "_PSInteractionAndContactMonitor: Contact store changed, processing changes", buf, 2u);
    }

    v3 = WeakRetained[9];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __73___PSInteractionAndContactMonitor_initWithInteractionStore_contactStore___block_invoke_13;
    block[3] = &unk_1E7C24268;
    v5 = WeakRetained;
    dispatch_async(v3, block);
  }
}

void __69___PSInteractionAndContactMonitor_fetchAllContactIdsFromContactStore__block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 40);
  v5 = [v8 identifier];
  CFSetAddValue(v4, [v5 _ps_pointerSizedHash]);

  v6 = *(a1 + 32);
  v7 = [v8 identifier];
  [v6 _ps_appendObject:v7 truncatingToCount:32];

  objc_autoreleasePoolPop(v3);
}

uint64_t __73___PSInteractionAndContactMonitor_fetchChangedContactIdsFromContactStore__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  result = CFSetContainsValue(*(*(a1 + 32) + 56), [a2 _ps_pointerSizedHash]);
  if (result)
  {
    v6 = *(a1 + 40);

    return [v6 addIndex:a3];
  }

  return result;
}

void __66___PSInteractionAndContactMonitor_enumerateContactStoreWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = objc_autoreleasePoolPush();
  v5 = [v6 identifier];
  objc_autoreleasePoolPop(v4);
  if (([*(a1 + 32) containsObject:v5] & 1) == 0)
  {
    os_unfair_lock_lock((*(a1 + 40) + 8));
    if ([*(*(a1 + 40) + 16) count] <= 0x1F)
    {
      [*(*(a1 + 40) + 16) addObject:v5];
    }

    os_unfair_lock_unlock((*(a1 + 40) + 8));
    (*(*(a1 + 48) + 16))();
  }

  objc_autoreleasePoolPop(v3);
}

@end