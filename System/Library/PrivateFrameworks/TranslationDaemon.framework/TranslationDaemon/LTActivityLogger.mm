@interface LTActivityLogger
@end

@implementation LTActivityLogger

void __46___LTActivityLogger__logAssetSnapshotForDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (([v3 hasAllData] & 1) == 0)
    {
      v5 = _LTOSLogAssets();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __46___LTActivityLogger__logAssetSnapshotForDate___block_invoke_cold_1(v5);
      }
    }

    v6 = _LTOSLogAssets();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __46___LTActivityLogger__logAssetSnapshotForDate___block_invoke_cold_2(v3, v6);
    }

    v7 = objc_loadWeakRetained(WeakRetained + 2);
    [v7 activityLogger:WeakRetained logAssetSnapshot:v3 forDate:*(a1 + 32)];
  }
}

void __46___LTActivityLogger__logAssetSnapshotForDate___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_debug_impl(&dword_232E53000, a2, OS_LOG_TYPE_DEBUG, "Finished collecting an asset snapshot to report in analytics: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end