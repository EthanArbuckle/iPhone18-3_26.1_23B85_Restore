@interface UIStatusBarDataAggregator
@end

@implementation UIStatusBarDataAggregator

void __62___UIStatusBarDataAggregator__updateForCoalescedKeysWithData___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) valueForKey:v5];
  if (v7)
  {
    objc_initWeak(&location, *(a1 + 40));
    v8 = MEMORY[0x1E695DFF0];
    [v6 doubleValue];
    v10 = v9;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __62___UIStatusBarDataAggregator__updateForCoalescedKeysWithData___block_invoke_2;
    v13[3] = &unk_1E7119698;
    objc_copyWeak(&v14, &location);
    v13[4] = v5;
    v11 = [v8 scheduledTimerWithTimeInterval:0 repeats:v13 block:v10];
    v12 = [*(*(a1 + 40) + 56) objectForKeyedSubscript:v5];
    [v12 invalidate];

    [*(*(a1 + 40) + 56) setObject:v11 forKeyedSubscript:v5];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

void __62___UIStatusBarDataAggregator__updateForCoalescedKeysWithData___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [MEMORY[0x1E695DFD8] setWithObject:*(a1 + 32)];
  [WeakRetained _coalescedUpdateForEntryKeys:v2];
}

@end