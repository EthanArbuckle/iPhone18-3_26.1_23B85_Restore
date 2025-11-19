@interface ICQCloudStorageDataController
+ (id)_requestQueue;
- (BOOL)iCloudDetailsPageShown;
- (ICQCloudStorageDataController)initWithAccount:(id)a3;
- (ICQiCloudDetailsPageInfo)cachediCloudDetailsPage;
- (id)cachedStorageSummary;
- (void)fetchAppsSyncingToiCloudDriveWithCompletion:(id)a3;
- (void)fetchBackupinfoWithCompletion:(id)a3;
- (void)fetchStorageAppsWithCompletion:(id)a3;
- (void)fetchStorageByApp:(id)a3 completion:(id)a4;
- (void)fetchStorageSummaryWithCompletion:(id)a3;
- (void)sendTipState:(int64_t)a3 forTip:(id)a4 completion:(id)a5;
@end

@implementation ICQCloudStorageDataController

+ (id)_requestQueue
{
  if (_requestQueue_onceToken_0 != -1)
  {
    +[ICQCloudStorageDataController _requestQueue];
  }

  v3 = _requestQueue_requestQueue_0;

  return v3;
}

void __46__ICQCloudStorageDataController__requestQueue__block_invoke()
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);
  v1 = dispatch_queue_create("com.apple.quota.storage.request", v0);
  v2 = _requestQueue_requestQueue_0;
  _requestQueue_requestQueue_0 = v1;
}

- (ICQCloudStorageDataController)initWithAccount:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ICQCloudStorageDataController;
  v6 = [(ICQCloudStorageDataController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, a3);
    v7->_shouldIgnoreCache = 0;
  }

  return v7;
}

- (void)fetchStorageSummaryWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(ACAccount *)self->_account aa_altDSID];
  if (v5)
  {
    v6 = [objc_opt_class() _requestQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__ICQCloudStorageDataController_fetchStorageSummaryWithCompletion___block_invoke;
    block[3] = &unk_27A6526D0;
    block[4] = self;
    v11 = v4;
    v10 = v5;
    dispatch_async(v6, block);
  }

  else
  {
    v7 = _ICQGetLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ICQCloudStorageDataController fetchStorageSummaryWithCompletion:];
    }

    v8 = ICQCreateError(12);
    (*(v4 + 2))(v4, 0, v8);
  }
}

void __67__ICQCloudStorageDataController_fetchStorageSummaryWithCompletion___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = _ICQGetLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) shouldIgnoreCache];
    *buf = 67109120;
    v30 = v3;
    _os_log_impl(&dword_275572000, v2, OS_LOG_TYPE_DEFAULT, "Should ignore cache: %d", buf, 8u);
  }

  if (([*(a1 + 32) shouldIgnoreCache] & 1) == 0)
  {
    v4 = [*(a1 + 32) cachedStorageSummary];
    v5 = _ICQGetLogSystem();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v6)
      {
        *buf = 0;
        _os_log_impl(&dword_275572000, v5, OS_LOG_TYPE_DEFAULT, "Returning cached cloud storage summary result.", buf, 2u);
      }

      (*(*(a1 + 48) + 16))();
      goto LABEL_17;
    }

    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_275572000, v5, OS_LOG_TYPE_DEFAULT, "No cache exist. Reaching out to daemon to fetch the result from server.", buf, 2u);
    }
  }

  v7 = _ICQSignpostLogSystem();
  v8 = objc_opt_new();
  v9 = _ICQSignpostCreateWithObject(v7, v8);
  v11 = v10;

  v12 = _ICQSignpostLogSystem();
  v13 = v12;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_275572000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v9, "StorageSummaryRequest", " enableTelemetry=YES ", buf, 2u);
  }

  v14 = _ICQSignpostLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    __67__ICQCloudStorageDataController_fetchStorageSummaryWithCompletion___block_invoke_cold_1();
  }

  v4 = objc_alloc_init(getINDaemonConnectionClass_0());
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __67__ICQCloudStorageDataController_fetchStorageSummaryWithCompletion___block_invoke_30;
  v25[3] = &unk_27A651998;
  v27 = v9;
  v28 = v11;
  v26 = *(a1 + 48);
  v15 = [v4 synchronousDaemonWithErrorHandler:v25];
  v16 = *(a1 + 40);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __67__ICQCloudStorageDataController_fetchStorageSummaryWithCompletion___block_invoke_32;
  v19[3] = &unk_27A652C10;
  v23 = v9;
  v24 = v11;
  v20 = v16;
  v17 = *(a1 + 48);
  v21 = *(a1 + 32);
  v22 = v17;
  [v15 fetchStorageSummaryForAltDSID:v20 completion:v19];

LABEL_17:
  v18 = *MEMORY[0x277D85DE8];
}

void __67__ICQCloudStorageDataController_fetchStorageSummaryWithCompletion___block_invoke_30(unsigned __int16 *a1, void *a2)
{
  v3 = a2;
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __67__ICQCloudStorageDataController_fetchStorageSummaryWithCompletion___block_invoke_30_cold_1();
  }

  _ICQSignpostGetNanoseconds(*(a1 + 5), *(a1 + 6));
  v5 = _ICQSignpostLogSystem();
  v6 = v5;
  v7 = *(a1 + 5);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&dword_275572000, v6, OS_SIGNPOST_INTERVAL_END, v7, "StorageSummaryRequest", "", v9, 2u);
  }

  v8 = _ICQSignpostLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __67__ICQCloudStorageDataController_fetchStorageSummaryWithCompletion___block_invoke_30_cold_2(a1 + 20);
  }

  (*(*(a1 + 4) + 16))();
}

void __67__ICQCloudStorageDataController_fetchStorageSummaryWithCompletion___block_invoke_32(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _ICQGetLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275572000, v7, OS_LOG_TYPE_DEFAULT, "Cloud storage summary request has been completed.", buf, 2u);
  }

  _ICQSignpostGetNanoseconds(*(a1 + 56), *(a1 + 64));
  v8 = _ICQSignpostLogSystem();
  v9 = v8;
  v10 = *(a1 + 56);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v16 = 0;
    _os_signpost_emit_with_name_impl(&dword_275572000, v9, OS_SIGNPOST_INTERVAL_END, v10, "StorageSummaryRequest", "", v16, 2u);
  }

  v11 = _ICQSignpostLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    __67__ICQCloudStorageDataController_fetchStorageSummaryWithCompletion___block_invoke_30_cold_2((a1 + 56));
  }

  if (v5)
  {
    v12 = +[ICQCloudStorageSummaryCache sharedInstance];
    [v12 setStorageSummary:v5 forAltDSID:*(a1 + 32)];

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v13 = _ICQGetLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __67__ICQCloudStorageDataController_fetchStorageSummaryWithCompletion___block_invoke_32_cold_2();
    }

    v14 = *(a1 + 48);
    v15 = [*(a1 + 40) cachedStorageSummary];
    (*(v14 + 16))(v14, v15, v6);
  }
}

- (id)cachedStorageSummary
{
  v3 = +[ICQCloudStorageSummaryCache sharedInstance];
  v4 = [(ACAccount *)self->_account aa_altDSID];
  v5 = [v3 storageSummaryForAltDSID:v4];

  return v5;
}

- (ICQiCloudDetailsPageInfo)cachediCloudDetailsPage
{
  v3 = +[ICQCloudStorageSummaryCache sharedInstance];
  v4 = [v3 hasDisplayedDetailsPage];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = [(ICQCloudStorageDataController *)self cachedStorageSummary];
    v5 = [v6 iCloudDetailsPageInfo];
  }

  return v5;
}

- (BOOL)iCloudDetailsPageShown
{
  v2 = +[ICQCloudStorageSummaryCache sharedInstance];
  v3 = [v2 hasDisplayedDetailsPage];

  return v3;
}

- (void)fetchStorageAppsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(ACAccount *)self->_account aa_altDSID];
  if (v5)
  {
    v6 = _ICQSignpostLogSystem();
    v7 = objc_opt_new();
    v8 = _ICQSignpostCreateWithObject(v6, v7);
    v10 = v9;

    v11 = _ICQSignpostLogSystem();
    v12 = v11;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_275572000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v8, "StorageAppsRequest", " enableTelemetry=YES ", buf, 2u);
    }

    v13 = _ICQSignpostLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [ICQCloudStorageDataController fetchStorageAppsWithCompletion:];
    }

    v14 = objc_alloc_init(getINDaemonConnectionClass_0());
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __64__ICQCloudStorageDataController_fetchStorageAppsWithCompletion___block_invoke;
    v22[3] = &unk_27A651998;
    v24 = v8;
    v25 = v10;
    v15 = v4;
    v23 = v15;
    v16 = [v14 daemonWithErrorHandler:v22];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __64__ICQCloudStorageDataController_fetchStorageAppsWithCompletion___block_invoke_35;
    v18[3] = &unk_27A652C38;
    v20 = v8;
    v21 = v10;
    v19 = v15;
    [v16 fetchStorageAppsForAltDSID:v5 completion:v18];
  }

  else
  {
    v17 = _ICQGetLogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [ICQCloudStorageDataController fetchStorageSummaryWithCompletion:];
    }

    v14 = ICQCreateError(12);
    (*(v4 + 2))(v4, 0, v14);
  }
}

void __64__ICQCloudStorageDataController_fetchStorageAppsWithCompletion___block_invoke(unsigned __int16 *a1, void *a2)
{
  v3 = a2;
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __64__ICQCloudStorageDataController_fetchStorageAppsWithCompletion___block_invoke_cold_1();
  }

  _ICQSignpostGetNanoseconds(*(a1 + 5), *(a1 + 6));
  v5 = _ICQSignpostLogSystem();
  v6 = v5;
  v7 = *(a1 + 5);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&dword_275572000, v6, OS_SIGNPOST_INTERVAL_END, v7, "StorageAppsRequest", "", v9, 2u);
  }

  v8 = _ICQSignpostLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __64__ICQCloudStorageDataController_fetchStorageAppsWithCompletion___block_invoke_cold_2(a1 + 20);
  }

  (*(*(a1 + 4) + 16))();
}

void __64__ICQCloudStorageDataController_fetchStorageAppsWithCompletion___block_invoke_35(unsigned __int16 *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _ICQGetLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275572000, v7, OS_LOG_TYPE_DEFAULT, "Cloud storage apps request has been completed.", buf, 2u);
  }

  _ICQSignpostGetNanoseconds(*(a1 + 5), *(a1 + 6));
  v8 = _ICQSignpostLogSystem();
  v9 = v8;
  v10 = *(a1 + 5);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&dword_275572000, v9, OS_SIGNPOST_INTERVAL_END, v10, "StorageAppsRequest", "", v13, 2u);
  }

  v11 = _ICQSignpostLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    __64__ICQCloudStorageDataController_fetchStorageAppsWithCompletion___block_invoke_cold_2(a1 + 20);
  }

  if (!v5)
  {
    v12 = _ICQGetLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __64__ICQCloudStorageDataController_fetchStorageAppsWithCompletion___block_invoke_35_cold_2();
    }
  }

  (*(*(a1 + 4) + 16))();
}

- (void)fetchStorageByApp:(id)a3 completion:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(ACAccount *)self->_account aa_altDSID];
  v9 = _ICQGetLogSystem();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v37 = [(ICQCloudStorageDataController *)self shouldIgnoreCache];
      _os_log_impl(&dword_275572000, v10, OS_LOG_TYPE_DEFAULT, "Should ignore cache: %d", buf, 8u);
    }

    if (![(ICQCloudStorageDataController *)self shouldIgnoreCache])
    {
      v11 = +[ICQAppCloudStorageCache sharedInstance];
      v12 = [v11 cloudStorageByApp:v6 forAltDSID:v8];

      v13 = _ICQGetLogSystem();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      if (v12)
      {
        if (v14)
        {
          *buf = 0;
          _os_log_impl(&dword_275572000, v13, OS_LOG_TYPE_DEFAULT, "Returning cached app cloud storage result.", buf, 2u);
        }

        v7[2](v7, v12, 0);
        goto LABEL_21;
      }

      if (v14)
      {
        *buf = 0;
        _os_log_impl(&dword_275572000, v13, OS_LOG_TYPE_DEFAULT, "No cache exist. Reaching out to daemon to fetch the result from server.", buf, 2u);
      }
    }

    v15 = _ICQSignpostLogSystem();
    v16 = objc_opt_new();
    v17 = _ICQSignpostCreateWithObject(v15, v16);
    v19 = v18;

    v20 = _ICQSignpostLogSystem();
    v21 = v20;
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_275572000, v21, OS_SIGNPOST_INTERVAL_BEGIN, v17, "StorageByAppRequest", " enableTelemetry=YES ", buf, 2u);
    }

    v22 = _ICQSignpostLogSystem();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [ICQCloudStorageDataController fetchStorageByApp:completion:];
    }

    v12 = objc_alloc_init(getINDaemonConnectionClass_0());
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __62__ICQCloudStorageDataController_fetchStorageByApp_completion___block_invoke;
    v32[3] = &unk_27A651998;
    v34 = v17;
    v35 = v19;
    v23 = v7;
    v33 = v23;
    v24 = [v12 daemonWithErrorHandler:v32];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __62__ICQCloudStorageDataController_fetchStorageByApp_completion___block_invoke_38;
    v26[3] = &unk_27A652C60;
    v30 = v17;
    v31 = v19;
    v27 = v6;
    v28 = v8;
    v29 = v23;
    [v24 fetchStorageByApp:v27 forAltDSID:v28 completion:v26];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ICQCloudStorageDataController fetchStorageSummaryWithCompletion:];
    }

    v12 = ICQCreateError(12);
    (v7)[2](v7, 0, v12);
  }

LABEL_21:

  v25 = *MEMORY[0x277D85DE8];
}

void __62__ICQCloudStorageDataController_fetchStorageByApp_completion___block_invoke(unsigned __int16 *a1, void *a2)
{
  v3 = a2;
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __62__ICQCloudStorageDataController_fetchStorageByApp_completion___block_invoke_cold_1();
  }

  _ICQSignpostGetNanoseconds(*(a1 + 5), *(a1 + 6));
  v5 = _ICQSignpostLogSystem();
  v6 = v5;
  v7 = *(a1 + 5);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&dword_275572000, v6, OS_SIGNPOST_INTERVAL_END, v7, "StorageByAppRequest", "", v9, 2u);
  }

  v8 = _ICQSignpostLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __62__ICQCloudStorageDataController_fetchStorageByApp_completion___block_invoke_cold_2(a1 + 20);
  }

  (*(*(a1 + 4) + 16))();
}

void __62__ICQCloudStorageDataController_fetchStorageByApp_completion___block_invoke_38(unsigned __int16 *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _ICQGetLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275572000, v7, OS_LOG_TYPE_DEFAULT, "App cloud storage request has been completed.", buf, 2u);
  }

  _ICQSignpostGetNanoseconds(*(a1 + 7), *(a1 + 8));
  v8 = _ICQSignpostLogSystem();
  v9 = v8;
  v10 = *(a1 + 7);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v16 = 0;
    _os_signpost_emit_with_name_impl(&dword_275572000, v9, OS_SIGNPOST_INTERVAL_END, v10, "StorageByAppRequest", "", v16, 2u);
  }

  v11 = _ICQSignpostLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    __62__ICQCloudStorageDataController_fetchStorageByApp_completion___block_invoke_cold_2(a1 + 28);
  }

  if (v5)
  {
    v12 = +[ICQAppCloudStorageCache sharedInstance];
    [v12 setCloudStorage:v5 byApp:*(a1 + 4) forAltDSID:*(a1 + 5)];

    (*(*(a1 + 6) + 16))();
  }

  else
  {
    v13 = _ICQGetLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __62__ICQCloudStorageDataController_fetchStorageByApp_completion___block_invoke_38_cold_2();
    }

    v14 = +[ICQAppCloudStorageCache sharedInstance];
    v15 = [v14 cloudStorageByApp:*(a1 + 4) forAltDSID:*(a1 + 5)];

    (*(*(a1 + 6) + 16))();
  }
}

- (void)fetchBackupinfoWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(ACAccount *)self->_account aa_altDSID];

  v6 = _ICQGetLogSystem();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275572000, v7, OS_LOG_TYPE_DEFAULT, "Reaching out to daemon to fetch backup info.", buf, 2u);
    }

    v8 = _ICQSignpostLogSystem();
    v9 = objc_opt_new();
    v10 = _ICQSignpostCreateWithObject(v8, v9);
    v12 = v11;

    v13 = _ICQSignpostLogSystem();
    v14 = v13;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_275572000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v10, "BackupInfoRequest", " enableTelemetry=YES ", buf, 2u);
    }

    v15 = _ICQSignpostLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [ICQCloudStorageDataController fetchBackupinfoWithCompletion:];
    }

    v16 = objc_alloc_init(getINDaemonConnectionClass_0());
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __63__ICQCloudStorageDataController_fetchBackupinfoWithCompletion___block_invoke;
    v24[3] = &unk_27A651998;
    v17 = v4;
    v25 = v17;
    v26 = v10;
    v27 = v12;
    v18 = [v16 daemonWithErrorHandler:v24];
    v19 = [(ACAccount *)self->_account aa_altDSID];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __63__ICQCloudStorageDataController_fetchBackupinfoWithCompletion___block_invoke_40;
    v20[3] = &unk_27A652C88;
    v22 = v10;
    v23 = v12;
    v21 = v17;
    [v18 fetchBackupInfoForAltDSID:v19 completion:v20];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [ICQCloudStorageDataController fetchStorageSummaryWithCompletion:];
    }

    v16 = ICQCreateError(12);
    (*(v4 + 2))(v4, 0, v16);
  }
}

void __63__ICQCloudStorageDataController_fetchBackupinfoWithCompletion___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __63__ICQCloudStorageDataController_fetchBackupinfoWithCompletion___block_invoke_cold_1();
  }

  (*(a1[4] + 16))();
  v5 = a1[5];
  v6 = a1[6];
  v7 = (a1 + 5);
  _ICQSignpostGetNanoseconds(v5, v6);
  v8 = _ICQSignpostLogSystem();
  v9 = v8;
  v10 = *v7;
  if ((*v7 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v12 = 0;
    _os_signpost_emit_with_name_impl(&dword_275572000, v9, OS_SIGNPOST_INTERVAL_END, v10, "BackupInfoRequest", "", v12, 2u);
  }

  v11 = _ICQSignpostLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    __63__ICQCloudStorageDataController_fetchBackupinfoWithCompletion___block_invoke_cold_2(v7);
  }
}

void __63__ICQCloudStorageDataController_fetchBackupinfoWithCompletion___block_invoke_40(unsigned __int16 *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = _ICQGetLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275572000, v7, OS_LOG_TYPE_DEFAULT, "fetchBackupInfo request completed.", buf, 2u);
  }

  if (v5)
  {
    v8 = _ICQGetLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __63__ICQCloudStorageDataController_fetchBackupinfoWithCompletion___block_invoke_40_cold_1();
    }
  }

  _ICQSignpostGetNanoseconds(*(a1 + 5), *(a1 + 6));
  v9 = _ICQSignpostLogSystem();
  v10 = v9;
  v11 = *(a1 + 5);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&dword_275572000, v10, OS_SIGNPOST_INTERVAL_END, v11, "BackupInfoRequest", "", v13, 2u);
  }

  v12 = _ICQSignpostLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    __63__ICQCloudStorageDataController_fetchBackupinfoWithCompletion___block_invoke_cold_2(a1 + 20);
  }

  (*(*(a1 + 4) + 16))();
}

- (void)sendTipState:(int64_t)a3 forTip:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(ACAccount *)self->_account aa_altDSID];

  v11 = _ICQGetLogSystem();
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275572000, v12, OS_LOG_TYPE_DEFAULT, "Reaching out to daemon to send tip state.", buf, 2u);
    }

    v13 = _ICQSignpostLogSystem();
    v14 = objc_opt_new();
    v15 = _ICQSignpostCreateWithObject(v13, v14);
    v17 = v16;

    v18 = _ICQSignpostLogSystem();
    v19 = v18;
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_275572000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v15, "TipStateRequest", " enableTelemetry=YES ", buf, 2u);
    }

    v20 = _ICQSignpostLogSystem();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [ICQCloudStorageDataController sendTipState:forTip:completion:];
    }

    v21 = objc_alloc_init(getINDaemonConnectionClass_0());
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __64__ICQCloudStorageDataController_sendTipState_forTip_completion___block_invoke;
    v33[3] = &unk_27A651998;
    v35 = v15;
    v36 = v17;
    v22 = v9;
    v34 = v22;
    v23 = [v21 daemonWithErrorHandler:v33];
    v26 = MEMORY[0x277D85DD0];
    v27 = 3221225472;
    v28 = __64__ICQCloudStorageDataController_sendTipState_forTip_completion___block_invoke_42;
    v29 = &unk_27A651998;
    v31 = v15;
    v32 = v17;
    v30 = v22;
    v24 = _Block_copy(&v26);
    if (a3 == 1)
    {
      v25 = [(ACAccount *)self->_account aa_altDSID:v26];
      [v23 sendTipDismissedNetworkRequestForAltDSID:v25 tip:v8 completion:v24];
    }

    else
    {
      if (a3)
      {
LABEL_17:

        goto LABEL_18;
      }

      v25 = [(ACAccount *)self->_account aa_altDSID:v26];
      [v23 sendTipDisplayedNetworkRequestForAltDSID:v25 tip:v8 completion:v24];
    }

    goto LABEL_17;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [ICQCloudStorageDataController fetchStorageSummaryWithCompletion:];
  }

  v21 = ICQCreateError(12);
  (*(v9 + 2))(v9, v21);
LABEL_18:
}

void __64__ICQCloudStorageDataController_sendTipState_forTip_completion___block_invoke(unsigned __int16 *a1, void *a2)
{
  v3 = a2;
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __64__ICQCloudStorageDataController_sendTipState_forTip_completion___block_invoke_cold_1();
  }

  _ICQSignpostGetNanoseconds(*(a1 + 5), *(a1 + 6));
  v5 = _ICQSignpostLogSystem();
  v6 = v5;
  v7 = *(a1 + 5);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&dword_275572000, v6, OS_SIGNPOST_INTERVAL_END, v7, "TipStateRequest", "", v9, 2u);
  }

  v8 = _ICQSignpostLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __64__ICQCloudStorageDataController_sendTipState_forTip_completion___block_invoke_cold_2(a1 + 20);
  }

  (*(*(a1 + 4) + 16))();
}

void __64__ICQCloudStorageDataController_sendTipState_forTip_completion___block_invoke_42(unsigned __int16 *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _ICQGetLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __64__ICQCloudStorageDataController_sendTipState_forTip_completion___block_invoke_42_cold_1();
    }
  }

  _ICQSignpostGetNanoseconds(*(a1 + 5), *(a1 + 6));
  v5 = _ICQSignpostLogSystem();
  v6 = v5;
  v7 = *(a1 + 5);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&dword_275572000, v6, OS_SIGNPOST_INTERVAL_END, v7, "TipStateRequest", "", v9, 2u);
  }

  v8 = _ICQSignpostLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __64__ICQCloudStorageDataController_sendTipState_forTip_completion___block_invoke_cold_2(a1 + 20);
  }

  (*(*(a1 + 4) + 16))();
}

- (void)fetchAppsSyncingToiCloudDriveWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(ACAccount *)self->_account aa_altDSID];
  if (v5)
  {
    v6 = [objc_opt_class() _requestQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __77__ICQCloudStorageDataController_fetchAppsSyncingToiCloudDriveWithCompletion___block_invoke;
    block[3] = &unk_27A652458;
    block[4] = self;
    v10 = v5;
    v11 = v4;
    dispatch_async(v6, block);
  }

  else
  {
    v7 = _ICQGetLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ICQCloudStorageDataController fetchStorageSummaryWithCompletion:];
    }

    v8 = ICQCreateError(12);
    (*(v4 + 2))(v4, 0, v8);
  }
}

void __77__ICQCloudStorageDataController_fetchAppsSyncingToiCloudDriveWithCompletion___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = _ICQGetLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) shouldIgnoreCache];
    *buf = 67109120;
    v29 = v3;
    _os_log_impl(&dword_275572000, v2, OS_LOG_TYPE_DEFAULT, "Should ignore cache: %d", buf, 8u);
  }

  if (([*(a1 + 32) shouldIgnoreCache] & 1) == 0)
  {
    v4 = +[ICQAppsSyncingToDriveCache sharedInstance];
    v5 = [v4 appsSyncingToDriveforAltDSID:*(a1 + 40)];

    v6 = _ICQGetLogSystem();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        *buf = 0;
        _os_log_impl(&dword_275572000, v6, OS_LOG_TYPE_DEFAULT, "Returning cached apps syncing to drive result.", buf, 2u);
      }

      (*(*(a1 + 48) + 16))();
      goto LABEL_23;
    }

    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_275572000, v6, OS_LOG_TYPE_DEFAULT, "No cache exist. Reaching out to daemon to fetch the result from server.", buf, 2u);
    }
  }

  v8 = _ICQGetLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275572000, v8, OS_LOG_TYPE_DEFAULT, "Reaching out to daemon to fetch apps syncing to icloud drive", buf, 2u);
  }

  v9 = _ICQSignpostLogSystem();
  v10 = objc_opt_new();
  v11 = _ICQSignpostCreateWithObject(v9, v10);
  v13 = v12;

  v14 = _ICQSignpostLogSystem();
  v15 = v14;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_275572000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v11, "AppsSyncingToiCloudDrive", " enableTelemetry=YES ", buf, 2u);
  }

  v16 = _ICQSignpostLogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    __77__ICQCloudStorageDataController_fetchAppsSyncingToiCloudDriveWithCompletion___block_invoke_cold_1();
  }

  v5 = objc_alloc_init(getINDaemonConnectionClass_0());
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __77__ICQCloudStorageDataController_fetchAppsSyncingToiCloudDriveWithCompletion___block_invoke_44;
  v24[3] = &unk_27A651998;
  v26 = v11;
  v27 = v13;
  v25 = *(a1 + 48);
  v17 = [v5 daemonWithErrorHandler:v24];
  if (objc_opt_respondsToSelector())
  {
    v18 = *(a1 + 40);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __77__ICQCloudStorageDataController_fetchAppsSyncingToiCloudDriveWithCompletion___block_invoke_47;
    v21[3] = &unk_27A652CB0;
    v22 = v18;
    v23 = *(a1 + 48);
    [v17 fetchAppsSyncingToiCloudDriveForAltDSID:v22 completion:v21];

    v19 = v22;
  }

  else
  {
    v19 = _ICQGetLogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      __77__ICQCloudStorageDataController_fetchAppsSyncingToiCloudDriveWithCompletion___block_invoke_cold_2();
    }
  }

LABEL_23:
  v20 = *MEMORY[0x277D85DE8];
}

void __77__ICQCloudStorageDataController_fetchAppsSyncingToiCloudDriveWithCompletion___block_invoke_44(unsigned __int16 *a1, void *a2)
{
  v3 = a2;
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __77__ICQCloudStorageDataController_fetchAppsSyncingToiCloudDriveWithCompletion___block_invoke_44_cold_1();
  }

  _ICQSignpostGetNanoseconds(*(a1 + 5), *(a1 + 6));
  v5 = _ICQSignpostLogSystem();
  v6 = v5;
  v7 = *(a1 + 5);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&dword_275572000, v6, OS_SIGNPOST_INTERVAL_END, v7, "AppsSyncingToiCloudDrive", "", v9, 2u);
  }

  v8 = _ICQSignpostLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __77__ICQCloudStorageDataController_fetchAppsSyncingToiCloudDriveWithCompletion___block_invoke_44_cold_2(a1 + 20);
  }

  (*(*(a1 + 4) + 16))();
}

void __77__ICQCloudStorageDataController_fetchAppsSyncingToiCloudDriveWithCompletion___block_invoke_47(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = +[ICQAppsSyncingToDriveCache sharedInstance];
    [v7 setAppsSyncingToDrive:v5 forAltDSID:*(a1 + 32)];

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = _ICQGetLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __77__ICQCloudStorageDataController_fetchAppsSyncingToiCloudDriveWithCompletion___block_invoke_47_cold_1();
    }

    v9 = *(a1 + 40);
    v10 = +[ICQAppsSyncingToDriveCache sharedInstance];
    v11 = [v10 appsSyncingToDriveforAltDSID:*(a1 + 32)];
    (*(v9 + 16))(v9, v11, v6);
  }
}

- (void)fetchStorageSummaryWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __67__ICQCloudStorageDataController_fetchStorageSummaryWithCompletion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void __67__ICQCloudStorageDataController_fetchStorageSummaryWithCompletion___block_invoke_30_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __67__ICQCloudStorageDataController_fetchStorageSummaryWithCompletion___block_invoke_30_cold_2(unsigned __int16 *a1)
{
  OUTLINED_FUNCTION_5_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

void __67__ICQCloudStorageDataController_fetchStorageSummaryWithCompletion___block_invoke_32_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)fetchStorageAppsWithCompletion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void __64__ICQCloudStorageDataController_fetchStorageAppsWithCompletion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __64__ICQCloudStorageDataController_fetchStorageAppsWithCompletion___block_invoke_cold_2(unsigned __int16 *a1)
{
  OUTLINED_FUNCTION_5_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

void __64__ICQCloudStorageDataController_fetchStorageAppsWithCompletion___block_invoke_35_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)fetchStorageByApp:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void __62__ICQCloudStorageDataController_fetchStorageByApp_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __62__ICQCloudStorageDataController_fetchStorageByApp_completion___block_invoke_cold_2(unsigned __int16 *a1)
{
  OUTLINED_FUNCTION_5_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

void __62__ICQCloudStorageDataController_fetchStorageByApp_completion___block_invoke_38_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)fetchBackupinfoWithCompletion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void __63__ICQCloudStorageDataController_fetchBackupinfoWithCompletion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __63__ICQCloudStorageDataController_fetchBackupinfoWithCompletion___block_invoke_cold_2(unsigned __int16 *a1)
{
  OUTLINED_FUNCTION_5_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

void __63__ICQCloudStorageDataController_fetchBackupinfoWithCompletion___block_invoke_40_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)sendTipState:forTip:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void __64__ICQCloudStorageDataController_sendTipState_forTip_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __64__ICQCloudStorageDataController_sendTipState_forTip_completion___block_invoke_cold_2(unsigned __int16 *a1)
{
  OUTLINED_FUNCTION_5_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

void __64__ICQCloudStorageDataController_sendTipState_forTip_completion___block_invoke_42_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __77__ICQCloudStorageDataController_fetchAppsSyncingToiCloudDriveWithCompletion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void __77__ICQCloudStorageDataController_fetchAppsSyncingToiCloudDriveWithCompletion___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __77__ICQCloudStorageDataController_fetchAppsSyncingToiCloudDriveWithCompletion___block_invoke_44_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __77__ICQCloudStorageDataController_fetchAppsSyncingToiCloudDriveWithCompletion___block_invoke_44_cold_2(unsigned __int16 *a1)
{
  OUTLINED_FUNCTION_5_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

void __77__ICQCloudStorageDataController_fetchAppsSyncingToiCloudDriveWithCompletion___block_invoke_47_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end