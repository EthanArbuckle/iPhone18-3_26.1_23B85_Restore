@interface LTDAnalyticsAssetSnapshotProvider
@end

@implementation LTDAnalyticsAssetSnapshotProvider

void __73___LTDAnalyticsAssetSnapshotProvider_collectAssetSnapshotWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [_LTDAssetService filterConfigAssetFromAssets:a2];
  v7 = v6;
  if (!v5 && v6)
  {
    goto LABEL_5;
  }

  v8 = _LTOSLogAssets();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    __73___LTDAnalyticsAssetSnapshotProvider_collectAssetSnapshotWithCompletion___block_invoke_cold_1();
    if (v7)
    {
      goto LABEL_5;
    }
  }

  else if (v7)
  {
LABEL_5:
    v9 = [v7 assetVersion];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%zd", v9];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    goto LABEL_6;
  }

  v18 = _LTOSLogAssets();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    __73___LTDAnalyticsAssetSnapshotProvider_collectAssetSnapshotWithCompletion___block_invoke_cold_2();
  }

LABEL_6:
  v13 = [v7 assetBuild];

  if (!v13)
  {
    v14 = _LTOSLogAssets();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __73___LTDAnalyticsAssetSnapshotProvider_collectAssetSnapshotWithCompletion___block_invoke_cold_3();
    }
  }

  v15 = [v7 assetBuild];
  v16 = *(*(a1 + 48) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;

  dispatch_group_leave(*(a1 + 32));
}

void __73___LTDAnalyticsAssetSnapshotProvider_collectAssetSnapshotWithCompletion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [_LTDAssetService filterConfigAssetFromAssets:a2];
  v7 = v6;
  if (v5 || !v6)
  {
    v12 = _LTOSLogAssets();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __73___LTDAnalyticsAssetSnapshotProvider_collectAssetSnapshotWithCompletion___block_invoke_3_cold_1();
    }
  }

  else
  {
    v8 = [v6 assetVersion];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%zd", v8];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  dispatch_group_leave(*(a1 + 32));
}

void __73___LTDAnalyticsAssetSnapshotProvider_collectAssetSnapshotWithCompletion___block_invoke_4(void *a1)
{
  v2 = [[_LTDAnalyticsAssetSnapshot alloc] initWithAssetBuild:*(*(a1[5] + 8) + 40) expectedAssetVersion:*(*(a1[6] + 8) + 40) installedAssetVersion:*(*(a1[7] + 8) + 40)];
  (*(a1[4] + 16))();
}

void __73___LTDAnalyticsAssetSnapshotProvider_collectAssetSnapshotWithCompletion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __73___LTDAnalyticsAssetSnapshotProvider_collectAssetSnapshotWithCompletion___block_invoke_3_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end