@interface WLKSettingsCloudUtilities
+ (BOOL)_shouldContinueWithCloudSyncResult:(BOOL)result onDisabledHandler:(id)handler;
+ (BOOL)synchronizeSettingsFromCloudIfNeeded:(id *)needed;
+ (id)_connection;
+ (id)_queue;
+ (id)_syncDictionaryForAppSettings:(id)settings;
+ (id)_syncDictionaryForLocalStore;
+ (void)_cloudSyncEnabledWithCompletion:(id)completion;
+ (void)_fetchSyncDictionary:(id)dictionary;
+ (void)_postChangeDictionaryToCloud:(id)cloud completion:(id)completion;
+ (void)_runResetAccountWithCompletion:(id)completion;
+ (void)_runSynchronizeSettingsFromCloudIfNeededWithCompletion:(id)completion;
+ (void)_runUpdateCloudStoreAppSettings:(id)settings deleteHistory:(BOOL)history removeEntry:(BOOL)entry completion:(id)completion;
+ (void)resetAccountWithCompletion:(id)completion;
+ (void)synchronizeSettingsFromCloudIfNeededWithCompletion:(id)completion;
+ (void)updateCloudStoreAccountLevelSetting:(id)setting value:(id)value completion:(id)completion;
+ (void)updateCloudStoreAppSettings:(id)settings deleteHistory:(BOOL)history removeEntry:(BOOL)entry completion:(id)completion;
+ (void)updateCloudStoreWithCompletion:(id)completion;
+ (void)updateLocalStoreWithCompletion:(id)completion;
@end

@implementation WLKSettingsCloudUtilities

+ (id)_queue
{
  if (_queue_onceToken != -1)
  {
    +[WLKSettingsCloudUtilities _queue];
  }

  v3 = _queue___queue;

  return v3;
}

uint64_t __35__WLKSettingsCloudUtilities__queue__block_invoke()
{
  _queue___queue = dispatch_queue_create("com.apple.WatchListKit.WLKSettingsCloudUtilities", 0);

  return MEMORY[0x2821F96F8]();
}

+ (void)updateCloudStoreWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__WLKSettingsCloudUtilities_updateCloudStoreWithCompletion___block_invoke;
  v6[3] = &unk_279E5F7F0;
  v7 = completionCopy;
  selfCopy = self;
  v5 = completionCopy;
  [self _cloudSyncEnabledWithCompletion:v6];
}

void __60__WLKSettingsCloudUtilities_updateCloudStoreWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  if ([*(a1 + 40) _shouldContinueWithCloudSyncResult:a2 onDisabledHandler:*(a1 + 32)])
  {
    v3 = [*(a1 + 40) _queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__WLKSettingsCloudUtilities_updateCloudStoreWithCompletion___block_invoke_2;
    block[3] = &unk_279E5F7C8;
    v5 = *(a1 + 32);
    v4 = v5;
    v7 = v5;
    dispatch_async(v3, block);
  }
}

void __60__WLKSettingsCloudUtilities_updateCloudStoreWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 40) _syncDictionaryForLocalStore];
  [*(a1 + 40) _postChangeDictionaryToCloud:v2 completion:*(a1 + 32)];
}

+ (void)updateCloudStoreAppSettings:(id)settings deleteHistory:(BOOL)history removeEntry:(BOOL)entry completion:(id)completion
{
  settingsCopy = settings;
  completionCopy = completion;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __94__WLKSettingsCloudUtilities_updateCloudStoreAppSettings_deleteHistory_removeEntry_completion___block_invoke;
  v14[3] = &unk_279E5F818;
  v16 = completionCopy;
  selfCopy = self;
  v15 = settingsCopy;
  historyCopy = history;
  entryCopy = entry;
  v12 = settingsCopy;
  v13 = completionCopy;
  [self _cloudSyncEnabledWithCompletion:v14];
}

uint64_t __94__WLKSettingsCloudUtilities_updateCloudStoreAppSettings_deleteHistory_removeEntry_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 48) _shouldContinueWithCloudSyncResult:a2 onDisabledHandler:*(a1 + 40)];
  if (result)
  {
    v5 = *(a1 + 40);
    v4 = *(a1 + 48);
    v6 = *(a1 + 56);
    v7 = *(a1 + 57);
    v8 = *(a1 + 32);

    return [v4 _runUpdateCloudStoreAppSettings:v8 deleteHistory:v6 removeEntry:v7 completion:v5];
  }

  return result;
}

+ (void)updateCloudStoreAccountLevelSetting:(id)setting value:(id)value completion:(id)completion
{
  settingCopy = setting;
  valueCopy = value;
  completionCopy = completion;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __82__WLKSettingsCloudUtilities_updateCloudStoreAccountLevelSetting_value_completion___block_invoke;
  v14[3] = &unk_279E5F868;
  v17 = completionCopy;
  selfCopy = self;
  v15 = settingCopy;
  v16 = valueCopy;
  v11 = valueCopy;
  v12 = settingCopy;
  v13 = completionCopy;
  [self _cloudSyncEnabledWithCompletion:v14];
}

void __82__WLKSettingsCloudUtilities_updateCloudStoreAccountLevelSetting_value_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  if ([*(a1 + 56) _shouldContinueWithCloudSyncResult:a2 onDisabledHandler:*(a1 + 48)])
  {
    v3 = [*(a1 + 56) _queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __82__WLKSettingsCloudUtilities_updateCloudStoreAccountLevelSetting_value_completion___block_invoke_2;
    block[3] = &unk_279E5F840;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v5 = *(a1 + 48);
    v4 = v5;
    v9 = v5;
    dispatch_async(v3, block);
  }
}

void __82__WLKSettingsCloudUtilities_updateCloudStoreAccountLevelSetting_value_completion___block_invoke_2(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v5 = *(a1 + 32);
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  [*(a1 + 56) _postChangeDictionaryToCloud:v3 completion:*(a1 + 48)];

  v4 = *MEMORY[0x277D85DE8];
}

+ (void)resetAccountWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__WLKSettingsCloudUtilities_resetAccountWithCompletion___block_invoke;
  v6[3] = &unk_279E5F7F0;
  v7 = completionCopy;
  selfCopy = self;
  v5 = completionCopy;
  [self _cloudSyncEnabledWithCompletion:v6];
}

uint64_t __56__WLKSettingsCloudUtilities_resetAccountWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 40) _shouldContinueWithCloudSyncResult:a2 onDisabledHandler:*(a1 + 32)];
  if (result)
  {
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v4 _runResetAccountWithCompletion:v5];
  }

  return result;
}

+ (void)updateLocalStoreWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = WLKStartupSignpostLogObject();
  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Config.Fetch.SettingsSync.CloudSync.CloudSyncEnabled", &unk_272A8884E, buf, 2u);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__WLKSettingsCloudUtilities_updateLocalStoreWithCompletion___block_invoke;
  v7[3] = &unk_279E5F7F0;
  v8 = completionCopy;
  selfCopy = self;
  v6 = completionCopy;
  [self _cloudSyncEnabledWithCompletion:v7];
}

void __60__WLKSettingsCloudUtilities_updateLocalStoreWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = WLKStartupSignpostLogObject();
  if (os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v4, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Config.Fetch.SettingsSync.CloudSync.CloudSyncEnabled", &unk_272A8884E, buf, 2u);
  }

  if ([*(a1 + 40) _shouldContinueWithCloudSyncResult:a2 onDisabledHandler:*(a1 + 32)])
  {
    v5 = [*(a1 + 40) _queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__WLKSettingsCloudUtilities_updateLocalStoreWithCompletion___block_invoke_54;
    block[3] = &unk_279E5F7C8;
    v7 = *(a1 + 32);
    v6 = v7;
    v9 = v7;
    dispatch_async(v5, block);
  }
}

void __60__WLKSettingsCloudUtilities_updateLocalStoreWithCompletion___block_invoke_54(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __60__WLKSettingsCloudUtilities_updateLocalStoreWithCompletion___block_invoke_2;
  v2[3] = &unk_279E5F890;
  v1 = *(a1 + 40);
  v3 = *(a1 + 32);
  [v1 _fetchSyncDictionary:v2];
}

uint64_t __60__WLKSettingsCloudUtilities_updateLocalStoreWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 != 0);
  }

  return result;
}

+ (BOOL)synchronizeSettingsFromCloudIfNeeded:(id *)needed
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__3;
  v17 = __Block_byref_object_dispose__3;
  v18 = 0;
  v5 = dispatch_semaphore_create(0);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__WLKSettingsCloudUtilities_synchronizeSettingsFromCloudIfNeeded___block_invoke;
  v9[3] = &unk_279E5E8D0;
  v11 = &v19;
  v12 = &v13;
  v6 = v5;
  v10 = v6;
  [self synchronizeSettingsFromCloudIfNeededWithCompletion:v9];
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  if (needed)
  {
    *needed = v14[5];
  }

  v7 = *(v20 + 24);

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);
  return v7;
}

void __66__WLKSettingsCloudUtilities_synchronizeSettingsFromCloudIfNeeded___block_invoke(uint64_t a1, char a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

+ (void)synchronizeSettingsFromCloudIfNeededWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = WLKStartupSignpostLogObject();
  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Config.Fetch.SettingsSync.CloudSyncEnabled", &unk_272A8884E, buf, 2u);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __80__WLKSettingsCloudUtilities_synchronizeSettingsFromCloudIfNeededWithCompletion___block_invoke;
  v7[3] = &unk_279E5F7F0;
  v8 = completionCopy;
  selfCopy = self;
  v6 = completionCopy;
  [self _cloudSyncEnabledWithCompletion:v7];
}

uint64_t __80__WLKSettingsCloudUtilities_synchronizeSettingsFromCloudIfNeededWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = WLKStartupSignpostLogObject();
  if (os_signpost_enabled(v4))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v4, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Config.Fetch.SettingsSync.CloudSyncEnabled", &unk_272A8884E, v6, 2u);
  }

  result = [*(a1 + 40) _shouldContinueWithCloudSyncResult:a2 onDisabledHandler:*(a1 + 32)];
  if (result)
  {
    return [*(a1 + 40) _runSynchronizeSettingsFromCloudIfNeededWithCompletion:*(a1 + 32)];
  }

  return result;
}

+ (void)_runUpdateCloudStoreAppSettings:(id)settings deleteHistory:(BOOL)history removeEntry:(BOOL)entry completion:(id)completion
{
  settingsCopy = settings;
  completionCopy = completion;
  _queue = [self _queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __98__WLKSettingsCloudUtilities__runUpdateCloudStoreAppSettings_deleteHistory_removeEntry_completion___block_invoke;
  v15[3] = &unk_279E5F8B8;
  v17 = completionCopy;
  selfCopy = self;
  historyCopy = history;
  entryCopy = entry;
  v16 = settingsCopy;
  v13 = completionCopy;
  v14 = settingsCopy;
  dispatch_async(_queue, v15);
}

void __98__WLKSettingsCloudUtilities__runUpdateCloudStoreAppSettings_deleteHistory_removeEntry_completion___block_invoke(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 48) _syncDictionaryForAppSettings:*(a1 + 32)];
  v3 = [v2 mutableCopy];

  if (v3)
  {
    if (*(a1 + 56) == 1)
    {
      [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"deleteHistory"];
    }

    if (*(a1 + 57) == 1)
    {
      [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"removeEntry"];
    }

    v10 = v3;
    v11 = @"watchListSettingsEntries";
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
    v12[0] = v4;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];

    [*(a1 + 48) _postChangeDictionaryToCloud:v5 completion:*(a1 + 40)];
LABEL_11:

    goto LABEL_12;
  }

  if (*(a1 + 40))
  {
    v6 = WLKSystemLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_272A0F000, v6, OS_LOG_TYPE_DEFAULT, "WLKSettingsCloudUtilities - Warning: app dictionary is nil.", v9, 2u);
    }

    v7 = *(a1 + 40);
    v5 = WLKError(200, 0, @"app dictionary is nil");
    (*(v7 + 16))(v7, 0, v5);
    goto LABEL_11;
  }

LABEL_12:

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)_runResetAccountWithCompletion:(id)completion
{
  completionCopy = completion;
  _queue = [self _queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__WLKSettingsCloudUtilities__runResetAccountWithCompletion___block_invoke;
  v7[3] = &unk_279E5F7C8;
  v8 = completionCopy;
  selfCopy = self;
  v6 = completionCopy;
  dispatch_async(_queue, v7);
}

void __60__WLKSettingsCloudUtilities__runResetAccountWithCompletion___block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = @"doResetAccount";
  v9[0] = MEMORY[0x277CBEC38];
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__WLKSettingsCloudUtilities__runResetAccountWithCompletion___block_invoke_2;
  v5[3] = &unk_279E5F8E0;
  v7 = v3;
  v6 = *(a1 + 32);
  [v3 _postChangeDictionaryToCloud:v2 completion:v5];

  v4 = *MEMORY[0x277D85DE8];
}

void __60__WLKSettingsCloudUtilities__runResetAccountWithCompletion___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    [*(a1 + 40) deleteAllHistoryWithCompletion:*(a1 + 32)];
  }

  else
  {
    v6 = WLKSystemLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __60__WLKSettingsCloudUtilities__runResetAccountWithCompletion___block_invoke_2_cold_1();
    }

    v7 = *(a1 + 32);
    if (v7)
    {
      (*(v7 + 16))(v7, 0, v5);
    }
  }
}

+ (void)_runSynchronizeSettingsFromCloudIfNeededWithCompletion:(id)completion
{
  completionCopy = completion;
  _queue = [self _queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __84__WLKSettingsCloudUtilities__runSynchronizeSettingsFromCloudIfNeededWithCompletion___block_invoke;
  v7[3] = &unk_279E5F7C8;
  v8 = completionCopy;
  selfCopy = self;
  v6 = completionCopy;
  dispatch_async(_queue, v7);
}

void __84__WLKSettingsCloudUtilities__runSynchronizeSettingsFromCloudIfNeededWithCompletion___block_invoke(uint64_t a1)
{
  v2 = WLKStartupSignpostLogObject();
  if (os_signpost_enabled(v2))
  {
    LOWORD(buf[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Config.Fetch.SettingsSync.ActiveAccount", &unk_272A8884E, buf, 2u);
  }

  v3 = [MEMORY[0x277D6C478] activeAccount];
  v4 = [v3 ams_DSID];
  v5 = [v4 stringValue];

  v6 = WLKStartupSignpostLogObject();
  if (os_signpost_enabled(v6))
  {
    LOWORD(buf[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Config.Fetch.SettingsSync.ActiveAccount", &unk_272A8884E, buf, 2u);
  }

  if ([v5 length])
  {
    v7 = WLKStartupSignpostLogObject();
    if (os_signpost_enabled(v7))
    {
      LOWORD(buf[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_272A0F000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Config.Fetch.SettingsSync.SettingsStoreRefresh", &unk_272A8884E, buf, 2u);
    }

    v8 = +[WLKSettingsStore sharedSettings];
    objc_initWeak(buf, *(a1 + 40));
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __84__WLKSettingsCloudUtilities__runSynchronizeSettingsFromCloudIfNeededWithCompletion___block_invoke_66;
    v12[3] = &unk_279E5F908;
    objc_copyWeak(&v15, buf);
    v14 = *(a1 + 32);
    v9 = v8;
    v13 = v9;
    [v9 refreshWithCompletion:v12];

    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
    goto LABEL_13;
  }

  v10 = WLKSystemLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_272A0F000, v10, OS_LOG_TYPE_DEFAULT, "WLKSettingsCloudUtilities - cannot synchronize from cloud. Not signed in..", buf, 2u);
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    v9 = WLKError(200, 0, @"Cannot synchronize from cloud. Not signed in...");
    (*(v11 + 16))(v11, 0, v9);
LABEL_13:
  }
}

void __84__WLKSettingsCloudUtilities__runSynchronizeSettingsFromCloudIfNeededWithCompletion___block_invoke_66(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained _queue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __84__WLKSettingsCloudUtilities__runSynchronizeSettingsFromCloudIfNeededWithCompletion___block_invoke_2;
    v7[3] = &unk_279E5EFC0;
    v8 = a1[4];
    v9 = a1[5];
    dispatch_async(v4, v7);
  }

  else
  {
    v5 = a1[5];
    v6 = WLKError(-1, 0, @"Nil Self");
    v5[2](v5, 0, v6);
  }
}

void __84__WLKSettingsCloudUtilities__runSynchronizeSettingsFromCloudIfNeededWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = WLKStartupSignpostLogObject();
  if (os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v2, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Config.Fetch.SettingsSync.SettingsStoreRefresh", &unk_272A8884E, buf, 2u);
  }

  v3 = [*(a1 + 32) lastSyncDate];
  v4 = v3;
  if (WLKSettingsStoreURLBagKeyAPIMaxSettingsAge_block_invoke_onceToken == -1)
  {
    if (!v3)
    {
      goto LABEL_6;
    }
  }

  else
  {
    __84__WLKSettingsCloudUtilities__runSynchronizeSettingsFromCloudIfNeededWithCompletion___block_invoke_2_cold_1();
    if (!v4)
    {
      goto LABEL_6;
    }
  }

  v5 = [MEMORY[0x277CBEAA8] date];
  [v5 timeIntervalSinceDate:v4];
  v7 = v6;
  v8 = WLKSettingsStoreURLBagKeyAPIMaxSettingsAge_block_invoke_maxAge;

  if (v7 <= v8)
  {
    (*(*(a1 + 40) + 16))();
    goto LABEL_12;
  }

LABEL_6:
  v9 = WLKStartupSignpostLogObject();
  if (os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v9, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Config.Fetch.SettingsSync.CloudSync", &unk_272A8884E, buf, 2u);
  }

  v10 = WLKSystemLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_272A0F000, v10, OS_LOG_TYPE_DEFAULT, "WLKSettingsCloudUtilities - Requesting settings sync", buf, 2u);
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __84__WLKSettingsCloudUtilities__runSynchronizeSettingsFromCloudIfNeededWithCompletion___block_invoke_73;
  v12[3] = &unk_279E5EA68;
  v11 = *(a1 + 32);
  v13 = *(a1 + 40);
  [v11 synchronize:1 completion:v12];

LABEL_12:
}

void __84__WLKSettingsCloudUtilities__runSynchronizeSettingsFromCloudIfNeededWithCompletion___block_invoke_70()
{
  v15 = *MEMORY[0x277D85DE8];
  v0 = WLKStartupSignpostLogObject();
  if (os_signpost_enabled(v0))
  {
    LOWORD(v13) = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v0, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Config.Fetch.SettingsSync.BagMaxLocalAge", &unk_272A8884E, &v13, 2u);
  }

  v1 = [MEMORY[0x277D6C480] app];
  v2 = [v1 cachedIntegerForKey:kBagKeyUVSearchMaxLocalSettingsAgeSeconds];

  if (v2)
  {
    WLKSettingsStoreURLBagKeyAPIMaxSettingsAge_block_invoke_maxAge = [v2 unsignedIntegerValue];
    v3 = WLKSystemLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134217984;
      v14 = WLKSettingsStoreURLBagKeyAPIMaxSettingsAge_block_invoke_maxAge;
      _os_log_impl(&dword_272A0F000, v3, OS_LOG_TYPE_DEFAULT, "WLKSettingsCloudUtilities - SettingStore maxAge=%lu", &v13, 0xCu);
    }
  }

  else
  {
    WLKSettingsStoreURLBagKeyAPIMaxSettingsAge_block_invoke_maxAge = 604800;
    v3 = WLKSystemLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __84__WLKSettingsCloudUtilities__runSynchronizeSettingsFromCloudIfNeededWithCompletion___block_invoke_70_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = WLKStartupSignpostLogObject();
  if (os_signpost_enabled(v11))
  {
    LOWORD(v13) = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Config.Fetch.SettingsSync.BagMaxLocalAge", &unk_272A8884E, &v13, 2u);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __84__WLKSettingsCloudUtilities__runSynchronizeSettingsFromCloudIfNeededWithCompletion___block_invoke_73(uint64_t a1, int a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 description];
  }

  else
  {
    v7 = &stru_288206BC0;
  }

  v8 = WLKSystemLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"NO";
    if (a2)
    {
      v9 = @"YES";
    }

    v12 = 138412546;
    v13 = v9;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_272A0F000, v8, OS_LOG_TYPE_DEFAULT, "WLKSettingsCloudUtilities - settings sync from cloud success: %@ %@", &v12, 0x16u);
  }

  v10 = WLKStartupSignpostLogObject();
  if (os_signpost_enabled(v10))
  {
    LOWORD(v12) = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v10, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Config.Fetch.SettingsSync.CloudSync", &unk_272A8884E, &v12, 2u);
  }

  (*(*(a1 + 32) + 16))();
  v11 = *MEMORY[0x277D85DE8];
}

+ (id)_syncDictionaryForLocalStore
{
  v22 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  array = [MEMORY[0x277CBEB18] array];
  v5 = +[WLKSettingsStore sharedSettings];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  watchListApps = [v5 watchListApps];
  v7 = [watchListApps countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(watchListApps);
        }

        v11 = [self _syncDictionaryForAppSettings:*(*(&v17 + 1) + 8 * i)];
        if (v11)
        {
          [array addObject:v11];
        }
      }

      v8 = [watchListApps countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  if ([array count])
  {
    [dictionary setObject:array forKeyedSubscript:@"watchListSettingsEntries"];
  }

  v12 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "optedIn")}];
  [dictionary setObject:v12 forKeyedSubscript:@"isOptedIn"];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "migratedtvOS")}];
  [dictionary setObject:v13 forKeyedSubscript:@"isTvOSMigrated"];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "migratediOS")}];
  [dictionary setObject:v14 forKeyedSubscript:@"isIOSMigrated"];

  v15 = *MEMORY[0x277D85DE8];

  return dictionary;
}

+ (id)_syncDictionaryForAppSettings:(id)settings
{
  settingsCopy = settings;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  channelID = [settingsCopy channelID];
  if (channelID)
  {
    [dictionary setObject:channelID forKeyedSubscript:@"searchBrandId"];
  }

  externalID = [settingsCopy externalID];
  if ([externalID length])
  {
    [dictionary setObject:externalID forKeyedSubscript:@"externalAccountId"];
  }

  if ([settingsCopy accessStatus] == 1)
  {
    v7 = MEMORY[0x277CBEC38];
LABEL_9:
    [dictionary setObject:v7 forKeyedSubscript:@"enabled"];
    goto LABEL_11;
  }

  if ([settingsCopy accessStatus] == 2)
  {
    v7 = MEMORY[0x277CBEC28];
    goto LABEL_9;
  }

  dictionary = 0;
LABEL_11:
  if ([settingsCopy obsolete])
  {
    [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"removeEntry"];
  }

  v8 = [dictionary copy];

  return v8;
}

+ (void)_fetchSyncDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  activeAccount = [MEMORY[0x277D6C478] activeAccount];
  v5 = activeAccount;
  if (activeAccount && ([activeAccount ams_DSID], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "stringValue"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v6, v8))
  {
    if (WLKShouldRunInProcess())
    {
      v9 = WLKSystemLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_272A0F000, v9, OS_LOG_TYPE_DEFAULT, "WLKSettingsCloudUtilities - Fetching settings in WLKProcess", buf, 2u);
      }

      v10 = objc_alloc_init(WLKSettingsRequestOperation);
      objc_initWeak(buf, v10);
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __50__WLKSettingsCloudUtilities__fetchSyncDictionary___block_invoke;
      v21[3] = &unk_279E5E660;
      objc_copyWeak(&v23, buf);
      v22 = dictionaryCopy;
      [(WLKSettingsRequestOperation *)v10 setCompletionBlock:v21];
      wlkDefaultConcurrentQueue = [MEMORY[0x277CCABD8] wlkDefaultConcurrentQueue];
      [wlkDefaultConcurrentQueue addOperation:v10];

      objc_destroyWeak(&v23);
      objc_destroyWeak(buf);
      goto LABEL_9;
    }

    _connection = [objc_opt_class() _connection];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __50__WLKSettingsCloudUtilities__fetchSyncDictionary___block_invoke_95;
    v19[3] = &unk_279E5EB38;
    v13 = dictionaryCopy;
    v20 = v13;
    v14 = [_connection remoteObjectProxyWithErrorHandler:v19];

    v15 = WLKStartupSignpostLogObject();
    if (os_signpost_enabled(v15))
    {
      LOWORD(buf[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_272A0F000, v15, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Config.Fetch.SettingsSync.CloudSync.NetworkRequest", &unk_272A8884E, buf, 2u);
    }

    v16 = WLKSystemLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_272A0F000, v16, OS_LOG_TYPE_DEFAULT, "WLKSettingsCloudUtilities - calling out to daemon to fetch settings", buf, 2u);
    }

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __50__WLKSettingsCloudUtilities__fetchSyncDictionary___block_invoke_97;
    v17[3] = &unk_279E5F890;
    v18 = v13;
    [v14 fetchSettings:v17];
  }

  else if (dictionaryCopy)
  {
    v10 = WLKError(700, 0, @"Login required for this operation");
    (*(dictionaryCopy + 2))(dictionaryCopy, 0, v10);
LABEL_9:
  }
}

void __50__WLKSettingsCloudUtilities__fetchSyncDictionary___block_invoke(uint64_t a1)
{
  v1 = a1;
  v50 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained error];

  if (v3)
  {
    v4 = WLKSystemLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __50__WLKSettingsCloudUtilities__fetchSyncDictionary___block_invoke_cold_1(WeakRetained, v4);
    }

    v5 = *(v1 + 32);
    v6 = [WeakRetained error];
    (*(v5 + 16))(v5, 0, v6);
  }

  else
  {
    v6 = [WeakRetained response];
    if (v6)
    {
      v36 = v1;
      v37 = WeakRetained;
      v7 = +[WLKSettingsStore sharedSettings];
      [v7 beginIgnoringChanges];
      v8 = [MEMORY[0x277CBEB58] set];
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v35 = v6;
      obj = [v6 objectForKeyedSubscript:@"watchListSettingsEntries"];
      v9 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v45;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v45 != v11)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(*(&v44 + 1) + 8 * i);
            v14 = [v13 objectForKeyedSubscript:@"enabled"];
            v15 = [v14 BOOLValue];

            v16 = [v13 objectForKeyedSubscript:@"searchBrandId"];
            if (v15)
            {
              v17 = 1;
            }

            else
            {
              v17 = 2;
            }

            v18 = [v13 objectForKeyedSubscript:@"externalAccountId"];
            [v7 setStatus:v17 forChannelID:v16 externalID:v18];
            v19 = [v16 stringByAppendingFormat:@":%@", v18];
            [v8 addObject:v19];
          }

          v10 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
        }

        while (v10);
      }

      v20 = [v7 watchListApps];
      v21 = [v20 copy];

      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      obja = v21;
      v22 = [obja countByEnumeratingWithState:&v40 objects:v48 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v41;
        do
        {
          for (j = 0; j != v23; ++j)
          {
            if (*v41 != v24)
            {
              objc_enumerationMutation(obja);
            }

            v26 = *(*(&v40 + 1) + 8 * j);
            v27 = [v26 channelID];
            v28 = [v26 externalID];
            v29 = [v27 stringByAppendingFormat:@":%@", v28];

            if (([v8 containsObject:v29] & 1) == 0)
            {
              [v7 _removeWatchListApp:v26];
            }
          }

          v23 = [obja countByEnumeratingWithState:&v40 objects:v48 count:16];
        }

        while (v23);
      }

      v6 = v35;
      v30 = [v35 objectForKeyedSubscript:@"isOptedIn"];
      [v7 setOptedIn:{objc_msgSend(v30, "BOOLValue")}];

      v31 = [v35 objectForKeyedSubscript:@"isTvOSMigrated"];
      [v7 setMigratedtvOS:{objc_msgSend(v31, "BOOLValue")}];

      v32 = [v35 objectForKeyedSubscript:@"isIOSMigrated"];
      [v7 setMigratediOS:{objc_msgSend(v32, "BOOLValue")}];

      v33 = [MEMORY[0x277CBEAA8] date];
      [v7 setLastSyncDate:v33];

      [v7 endIgnoringChanges];
      v1 = v36;
      WeakRetained = v37;
    }

    (*(*(v1 + 32) + 16))(*(v1 + 32), v6, 0);
  }

  v34 = *MEMORY[0x277D85DE8];
}

void __50__WLKSettingsCloudUtilities__fetchSyncDictionary___block_invoke_95(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WLKSystemLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __50__WLKSettingsCloudUtilities__fetchSyncDictionary___block_invoke_95_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

void __50__WLKSettingsCloudUtilities__fetchSyncDictionary___block_invoke_97(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = WLKStartupSignpostLogObject();
  if (os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Config.Fetch.SettingsSync.CloudSync.NetworkRequest.Refresh", &unk_272A8884E, buf, 2u);
  }

  v8 = +[WLKSettingsStore sharedSettings];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __50__WLKSettingsCloudUtilities__fetchSyncDictionary___block_invoke_98;
  v12[3] = &unk_279E5F930;
  v9 = *(a1 + 32);
  v14 = v6;
  v15 = v9;
  v13 = v5;
  v10 = v6;
  v11 = v5;
  [v8 refreshWithCompletion:v12];
}

uint64_t __50__WLKSettingsCloudUtilities__fetchSyncDictionary___block_invoke_98(void *a1)
{
  v2 = WLKStartupSignpostLogObject();
  if (os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v2, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Config.Fetch.SettingsSync.CloudSync.NetworkRequest.Refresh", &unk_272A8884E, buf, 2u);
  }

  v3 = WLKSystemLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_272A0F000, v3, OS_LOG_TYPE_DEFAULT, "WLKSettingsCloudUtilities - WLKSettingsCloudUtilities - daemon callback for fetch settings", v7, 2u);
  }

  v4 = WLKStartupSignpostLogObject();
  if (os_signpost_enabled(v4))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v4, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Config.Fetch.SettingsSync.CloudSync.NetworkRequest", &unk_272A8884E, v6, 2u);
  }

  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

+ (void)_postChangeDictionaryToCloud:(id)cloud completion:(id)completion
{
  cloudCopy = cloud;
  completionCopy = completion;
  activeAccount = [MEMORY[0x277D6C478] activeAccount];
  v8 = activeAccount;
  if (activeAccount && ([activeAccount ams_DSID], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "stringValue"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "length"), v10, v9, v11))
  {
    if (WLKShouldRunInProcess())
    {
      v12 = +[WLKSettingsStore sharedSettings];
      pushToken = [v12 pushToken];

      if ([pushToken length])
      {
        v14 = [cloudCopy mutableCopy];
        [v14 setObject:pushToken forKeyedSubscript:@"fromPushToken"];
        v15 = [v14 copy];

        cloudCopy = v15;
      }

      v16 = [[WLKSettingsModificationRequestOperation alloc] initWithModifications:cloudCopy];
      objc_initWeak(location, v16);
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __69__WLKSettingsCloudUtilities__postChangeDictionaryToCloud_completion___block_invoke;
      v26[3] = &unk_279E5E660;
      objc_copyWeak(&v28, location);
      v27 = completionCopy;
      [(WLKSettingsModificationRequestOperation *)v16 setCompletionBlock:v26];
      wlkDefaultQueue = [MEMORY[0x277CCABD8] wlkDefaultQueue];
      [wlkDefaultQueue addOperation:v16];

      objc_destroyWeak(&v28);
      objc_destroyWeak(location);

      goto LABEL_9;
    }

    _connection = [objc_opt_class() _connection];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __69__WLKSettingsCloudUtilities__postChangeDictionaryToCloud_completion___block_invoke_2;
    v24[3] = &unk_279E5EB38;
    v19 = completionCopy;
    v25 = v19;
    v20 = [_connection remoteObjectProxyWithErrorHandler:v24];

    v21 = WLKSystemLogObject();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_272A0F000, v21, OS_LOG_TYPE_DEFAULT, "WLKSettingsCloudUtilities - calling out to daemon to post settings", location, 2u);
    }

    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __69__WLKSettingsCloudUtilities__postChangeDictionaryToCloud_completion___block_invoke_101;
    v22[3] = &unk_279E5EA68;
    v23 = v19;
    [v20 postSettings:cloudCopy replyHandler:v22];
  }

  else if (completionCopy)
  {
    pushToken = WLKError(700, 0, @"Login required for this operation");
    (*(completionCopy + 2))(completionCopy, 0, pushToken);
LABEL_9:
  }
}

void __69__WLKSettingsCloudUtilities__postChangeDictionaryToCloud_completion___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained error];
  v4 = [v3 copy];

  v5 = WLKSystemLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (!v4)
    {
      v6 = @"YES";
    }

    *buf = 138412290;
    v16 = v6;
    _os_log_impl(&dword_272A0F000, v5, OS_LOG_TYPE_DEFAULT, "WLKSettingsCloudUtilities - Updated cloud settings success: %@", buf, 0xCu);
  }

  if (*(a1 + 32))
  {
    if (!v4)
    {
      v7 = [MEMORY[0x277CBEAA8] date];
      v8 = WLKSystemLogObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v16 = v7;
        _os_log_impl(&dword_272A0F000, v8, OS_LOG_TYPE_DEFAULT, "WLKSettingsCloudUtilities - Updating lastSyncToCloud date %@", buf, 0xCu);
      }

      v9 = +[WLKSettingsStore sharedSettings];
      [v9 setLastSyncToCloudDate:v7];
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__WLKSettingsCloudUtilities__postChangeDictionaryToCloud_completion___block_invoke_100;
    block[3] = &unk_279E5F958;
    v13 = *(a1 + 32);
    v14 = v4 == 0;
    v12 = v4;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __69__WLKSettingsCloudUtilities__postChangeDictionaryToCloud_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WLKSystemLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __50__WLKSettingsCloudUtilities__fetchSyncDictionary___block_invoke_95_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

void __69__WLKSettingsCloudUtilities__postChangeDictionaryToCloud_completion___block_invoke_101(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = WLKSystemLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_272A0F000, v6, OS_LOG_TYPE_DEFAULT, "WLKSettingsCloudUtilities - daemon callback for post settings", v8, 2u);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
  }
}

+ (id)_connection
{
  v3 = _connection___connection;
  if (!_connection___connection)
  {
    v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.watchlistd.xpc" options:0];
    v5 = _connection___connection;
    _connection___connection = v4;

    v6 = _connection___connection;
    v7 = WLKConnectionClientInterface();
    [v6 setExportedInterface:v7];

    [_connection___connection setExportedObject:self];
    v8 = _connection___connection;
    v9 = WLKConnectionServerInterface();
    [v8 setRemoteObjectInterface:v9];

    [_connection___connection setInterruptionHandler:&__block_literal_global_107];
    [_connection___connection setInvalidationHandler:&__block_literal_global_110];
    [_connection___connection resume];
    v3 = _connection___connection;
  }

  return v3;
}

void __40__WLKSettingsCloudUtilities__connection__block_invoke()
{
  v0 = WLKSystemLogObject();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_272A0F000, v0, OS_LOG_TYPE_DEFAULT, "WLKSettingsCloudUtilities - Connection interrupted.", v1, 2u);
  }
}

void __40__WLKSettingsCloudUtilities__connection__block_invoke_108()
{
  v0 = +[WLKSettingsCloudUtilities _queue];
  dispatch_async(v0, &__block_literal_global_113);
}

void __40__WLKSettingsCloudUtilities__connection__block_invoke_2()
{
  v0 = WLKSystemLogObject();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_272A0F000, v0, OS_LOG_TYPE_DEFAULT, "WLKSettingsCloudUtilities - Connection invalidated.", v2, 2u);
  }

  v1 = _connection___connection;
  _connection___connection = 0;
}

+ (BOOL)_shouldContinueWithCloudSyncResult:(BOOL)result onDisabledHandler:(id)handler
{
  if (handler && !result)
  {
    handlerCopy = handler;
    v6 = WLKSystemLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_272A0F000, v6, OS_LOG_TYPE_DEFAULT, "WLKSettingsCloudUtilities - Cloud sync disabled.", v9, 2u);
    }

    v7 = WLKError(201, 0, @"Cloud sync disabled");
    handlerCopy[2](handlerCopy, 0, v7);
  }

  return result;
}

+ (void)_cloudSyncEnabledWithCompletion:(id)completion
{
  completionCopy = completion;
  _queue = [self _queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__WLKSettingsCloudUtilities__cloudSyncEnabledWithCompletion___block_invoke;
  block[3] = &unk_279E5EA90;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(_queue, block);
}

void __61__WLKSettingsCloudUtilities__cloudSyncEnabledWithCompletion___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D6C480] app];
  v3 = [v2 cachedURLForKey:kBagKeyGetWatchListSettings];

  v4 = [MEMORY[0x277D6C480] app];
  v5 = [v4 cachedURLForKey:kBagKeyUpdateWatchListSettings];

  if (v3)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  v8 = WLKSystemLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109120;
    v10[1] = v7;
    _os_log_impl(&dword_272A0F000, v8, OS_LOG_TYPE_DEFAULT, "WLKSettingsCloudUtilities - Completed isCloudSyncEnabled fetch with enabled status=%d", v10, 8u);
  }

  (*(*(a1 + 32) + 16))();
  v9 = *MEMORY[0x277D85DE8];
}

void __60__WLKSettingsCloudUtilities__runResetAccountWithCompletion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_272A0F000, v0, v1, "WLKSettingsCloudUtilities - resetAccount failed, not attempting play history deletion. error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __84__WLKSettingsCloudUtilities__runSynchronizeSettingsFromCloudIfNeededWithCompletion___block_invoke_70_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_272A0F000, a1, a3, "WLKSettingsCloudUtilities - SettingStore maxAge configuration is nil, use default value=%lu", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

void __50__WLKSettingsCloudUtilities__fetchSyncDictionary___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 error];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_272A0F000, a2, OS_LOG_TYPE_ERROR, "WLKSettingsCloudUtilities - Failed to fetch settings with error: %@", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

void __50__WLKSettingsCloudUtilities__fetchSyncDictionary___block_invoke_95_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_272A0F000, v0, v1, "WLKSettingsCloudUtilities - Unable to communicate with the remote object proxy (%@)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end