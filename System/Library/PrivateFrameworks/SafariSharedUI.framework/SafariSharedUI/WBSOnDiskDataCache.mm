@interface WBSOnDiskDataCache
- (WBSDataCacheDelegate)dataCacheDelegate;
- (WBSOnDiskDataCache)initWithCacheDirectoryURL:(id)l;
- (id)_diskAccessQueueName;
- (id)_fileLocationForKeyString:(id)string;
- (id)_internalQueueName;
- (id)requestEntryForKeyString:(id)string;
- (id)settingForKey:(id)key;
- (int64_t)_internalEntryStateForKeyString:(id)string;
- (int64_t)entryStateForKeyString:(id)string;
- (void)_didFailToLoadEntryForKeyString:(id)string error:(id)error;
- (void)_didLoadEntry:(id)entry forKeyString:(id)string;
- (void)_dispatchDiskAccessBlock:(id)block;
- (void)_notifyDidFinishSettingUp;
- (void)getEntryURLForKeyString:(id)string completionHandler:(id)handler;
- (void)removeEntriesForKeyStrings:(id)strings completionHandler:(id)handler;
- (void)removeEntriesForKeyStringsNotIncludedIn:(id)in completionHandler:(id)handler;
- (void)reset;
- (void)savePendingChangesBeforeTearDown;
- (void)setEntry:(id)entry forKeyString:(id)string completionHandler:(id)handler;
- (void)setIsInMemoryCacheEnabled:(BOOL)enabled;
- (void)setSetting:(id)setting forKey:(id)key;
- (void)setUp;
@end

@implementation WBSOnDiskDataCache

- (id)_internalQueueName
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"com.apple.Safari.%@.%p.internalQueue", v5, self];

  return v6;
}

- (void)setUp
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __27__WBSOnDiskDataCache_setUp__block_invoke;
  v3[3] = &unk_1E8286440;
  v3[4] = self;
  objc_copyWeak(&v4, &location);
  [(WBSOnDiskDataCache *)self _internalQueueDispatchAsync:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __27__WBSOnDiskDataCache_setUp__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;

  v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v6 = [*(a1 + 32) _diskAccessQueueName];
  v7 = dispatch_queue_create([v6 UTF8String], v5);
  v8 = *(a1 + 32);
  v9 = *(v8 + 8);
  *(v8 + 8) = v7;

  v10 = objc_alloc(MEMORY[0x1E69C8840]);
  v11 = [*(a1 + 32) _cacheSettingsFileURL];
  v12 = *(*(a1 + 32) + 16);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __27__WBSOnDiskDataCache_setUp__block_invoke_2;
  v18[3] = &unk_1E8286418;
  objc_copyWeak(&v19, (a1 + 40));
  v13 = [v10 initWithName:@"SiteMetadataCacheSetting" fileURL:v11 dataSourceQueue:v12 dataSourceBlock:v18];
  v14 = *(a1 + 32);
  v15 = *(v14 + 56);
  *(v14 + 56) = v13;

  v16 = *(a1 + 32);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __27__WBSOnDiskDataCache_setUp__block_invoke_12;
  v17[3] = &unk_1E8282FD8;
  v17[4] = v16;
  [v16 _dispatchDiskAccessBlock:v17];
  objc_destroyWeak(&v19);
}

- (id)_diskAccessQueueName
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"com.apple.Safari.%@.%p.diskAccessQueue", v5, self];

  return v6;
}

void __27__WBSOnDiskDataCache_setUp__block_invoke_12(uint64_t a1)
{
  v2 = MEMORY[0x1E695DEF0];
  v3 = [*(a1 + 32) _cacheSettingsFileURL];
  v4 = [v2 dataWithContentsOfURL:v3];

  if (v4)
  {
    v5 = [MEMORY[0x1E696AE40] propertyListWithData:v4 options:0 format:0 error:0];
    v6 = [v5 mutableCopy];
  }

  else
  {
    v6 = 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = [MEMORY[0x1E695DF90] dictionary];

    v6 = v7;
  }

  v8 = *(a1 + 32);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __27__WBSOnDiskDataCache_setUp__block_invoke_2_15;
  v10[3] = &unk_1E8282EA0;
  v10[4] = v8;
  v11 = v6;
  v9 = v6;
  [v8 _internalQueueDispatchAsync:v10];
}

uint64_t __27__WBSOnDiskDataCache_setUp__block_invoke_2_15(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 48), *(a1 + 40));
  v2 = *(a1 + 32);

  return [v2 _notifyDidFinishSettingUp];
}

- (void)_notifyDidFinishSettingUp
{
  WeakRetained = objc_loadWeakRetained(&self->_dataCacheDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained dataCacheDidSetUp:self];
  }
}

- (WBSOnDiskDataCache)initWithCacheDirectoryURL:(id)l
{
  lCopy = l;
  v17.receiver = self;
  v17.super_class = WBSOnDiskDataCache;
  v6 = [(WBSOnDiskDataCache *)&v17 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    _internalQueueName = [(WBSOnDiskDataCache *)v6 _internalQueueName];
    v9 = dispatch_queue_create([_internalQueueName UTF8String], v7);
    internalQueue = v6->_internalQueue;
    v6->_internalQueue = v9;

    objc_storeStrong(&v6->_cacheDirectoryURL, l);
    v6->_isInMemoryCacheEnabled = 1;
    v11 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    entriesForKeyStringsCache = v6->_entriesForKeyStringsCache;
    v6->_entriesForKeyStringsCache = v11;

    v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    missingEntryKeyStrings = v6->_missingEntryKeyStrings;
    v6->_missingEntryKeyStrings = v13;

    v15 = v6;
  }

  return v6;
}

- (void)setIsInMemoryCacheEnabled:(BOOL)enabled
{
  if (self->_isInMemoryCacheEnabled != enabled)
  {
    self->_isInMemoryCacheEnabled = enabled;
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __48__WBSOnDiskDataCache_setIsInMemoryCacheEnabled___block_invoke;
    v3[3] = &unk_1E8282FD8;
    v3[4] = self;
    [(WBSOnDiskDataCache *)self _internalQueueDispatchSync:v3];
  }
}

void __48__WBSOnDiskDataCache_setIsInMemoryCacheEnabled___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 65) == 1)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    v1 = *(a1 + 32);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v1 + 24);
  *(v1 + 24) = v3;
}

id __27__WBSOnDiskDataCache_setUp__block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained[6];
  v9 = 0;
  v3 = [MEMORY[0x1E696AE40] dataWithPropertyList:v2 format:200 options:0 error:&v9];
  v4 = v9;
  if (!v3)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXSiteMetadata();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = WeakRetained[6];
      v7 = [v4 safari_privacyPreservingDescription];
      __27__WBSOnDiskDataCache_setUp__block_invoke_2_cold_1(v6, v7, buf, v5);
    }
  }

  return v3;
}

- (void)savePendingChangesBeforeTearDown
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__WBSOnDiskDataCache_savePendingChangesBeforeTearDown__block_invoke;
  block[3] = &unk_1E8282FD8;
  block[4] = self;
  dispatch_barrier_sync(internalQueue, block);
  dispatch_sync(self->_diskAccessQueue, &__block_literal_global_28);
}

- (void)reset
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __27__WBSOnDiskDataCache_reset__block_invoke;
  v2[3] = &unk_1E8282FD8;
  v2[4] = self;
  [(WBSOnDiskDataCache *)self _internalQueueDispatchAsync:v2];
}

void __27__WBSOnDiskDataCache_reset__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 48) removeAllObjects];
  [*(*(a1 + 32) + 40) removeAllObjects];
  [*(*(a1 + 32) + 32) removeAllObjects];
  [*(*(a1 + 32) + 24) removeAllObjects];
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __27__WBSOnDiskDataCache_reset__block_invoke_2;
  v4[3] = &unk_1E8282FD8;
  v4[4] = v2;
  [v2 _dispatchDiskAccessBlock:v4];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 72));
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained dataCacheDidReset:*(a1 + 32)];
  }
}

void __27__WBSOnDiskDataCache_reset__block_invoke_2(uint64_t a1)
{
  v12[4] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = *(*(a1 + 32) + 80);
  v12[0] = 0;
  v4 = [v2 removeItemAtURL:v3 error:v12];
  v5 = v12[0];
  v6 = v5;
  if ((v4 & 1) == 0)
  {
    v10 = WBS_LOG_CHANNEL_PREFIXSiteMetadata();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [v6 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __27__WBSOnDiskDataCache_reset__block_invoke_2_cold_1();
    }

    goto LABEL_9;
  }

  v7 = *(*(a1 + 32) + 80);
  v11 = v5;
  v8 = [v2 createDirectoryAtURL:v7 withIntermediateDirectories:1 attributes:0 error:&v11];
  v9 = v11;

  if ((v8 & 1) == 0)
  {
    v10 = WBS_LOG_CHANNEL_PREFIXSiteMetadata();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [v9 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __27__WBSOnDiskDataCache_reset__block_invoke_2_cold_2();
    }

    v6 = v9;
LABEL_9:

    goto LABEL_10;
  }

  v6 = v9;
LABEL_10:
}

- (id)settingForKey:(id)key
{
  keyCopy = key;
  v5 = keyCopy;
  if (self->_terminating)
  {
    v6 = 0;
  }

  else
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__16;
    v15 = __Block_byref_object_dispose__16;
    v16 = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __36__WBSOnDiskDataCache_settingForKey___block_invoke;
    v8[3] = &unk_1E8286468;
    v10 = &v11;
    v8[4] = self;
    v9 = keyCopy;
    [(WBSOnDiskDataCache *)self _internalQueueDispatchSync:v8];
    v6 = v12[5];

    _Block_object_dispose(&v11, 8);
  }

  return v6;
}

void __36__WBSOnDiskDataCache_settingForKey___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 48) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setSetting:(id)setting forKey:(id)key
{
  settingCopy = setting;
  keyCopy = key;
  if (!self->_terminating)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __40__WBSOnDiskDataCache_setSetting_forKey___block_invoke;
    v8[3] = &unk_1E8282EF0;
    v9 = settingCopy;
    selfCopy = self;
    v11 = keyCopy;
    [(WBSOnDiskDataCache *)self _internalQueueDispatchAsync:v8];
  }
}

uint64_t __40__WBSOnDiskDataCache_setSetting_forKey___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[5] + 48);
  if (v2)
  {
    result = [v3 setObject:v2 forKeyedSubscript:a1[6]];
  }

  else
  {
    result = [v3 removeObjectForKey:a1[6]];
  }

  v5 = a1[5];
  if ((*(v5 + 64) & 1) == 0)
  {
    v6 = *(v5 + 56);

    return [v6 scheduleWrite];
  }

  return result;
}

- (id)requestEntryForKeyString:(id)string
{
  stringCopy = string;
  v5 = stringCopy;
  if (self->_terminating)
  {
    v6 = 0;
  }

  else
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__16;
    v15 = __Block_byref_object_dispose__16;
    v16 = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __47__WBSOnDiskDataCache_requestEntryForKeyString___block_invoke;
    v8[3] = &unk_1E8286468;
    v10 = &v11;
    v8[4] = self;
    v9 = stringCopy;
    [(WBSOnDiskDataCache *)self _internalQueueDispatchSync:v8];
    v6 = v12[5];

    _Block_object_dispose(&v11, 8);
  }

  return v6;
}

void __47__WBSOnDiskDataCache_requestEntryForKeyString___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) objectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 48) + 8) + 40) && ([*(*(a1 + 32) + 32) containsObject:*(a1 + 40)] & 1) == 0)
  {
    [*(*(a1 + 32) + 32) addObject:*(a1 + 40)];
    v5 = *(a1 + 32);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __47__WBSOnDiskDataCache_requestEntryForKeyString___block_invoke_2;
    v6[3] = &unk_1E8282EA0;
    v6[4] = v5;
    v7 = *(a1 + 40);
    [v5 _dispatchDiskAccessBlock:v6];
  }
}

void __47__WBSOnDiskDataCache_requestEntryForKeyString___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _fileLocationForKeyString:*(a1 + 40)];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v2];
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__WBSOnDiskDataCache_requestEntryForKeyString___block_invoke_3;
  v6[3] = &unk_1E8282EF0;
  v6[4] = v4;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  [v4 _internalQueueDispatchAsync:v6];
}

- (void)getEntryURLForKeyString:(id)string completionHandler:(id)handler
{
  stringCopy = string;
  handlerCopy = handler;
  v8 = handlerCopy;
  if (self->_terminating)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __64__WBSOnDiskDataCache_getEntryURLForKeyString_completionHandler___block_invoke;
    v9[3] = &unk_1E8283450;
    v9[4] = self;
    v10 = stringCopy;
    v11 = v8;
    [(WBSOnDiskDataCache *)self _dispatchDiskAccessBlock:v9];
  }
}

void __64__WBSOnDiskDataCache_getEntryURLForKeyString_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _fileLocationForKeyString:*(a1 + 40)];
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [v2 path];
  v5 = [v3 fileExistsAtPath:v4];

  if ((v5 & 1) == 0)
  {

    v2 = 0;
  }

  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__WBSOnDiskDataCache_getEntryURLForKeyString_completionHandler___block_invoke_2;
  v8[3] = &unk_1E82837D0;
  v10 = *(a1 + 48);
  v7 = v2;
  v9 = v7;
  [v6 _internalQueueDispatchAsync:v8];
}

- (void)setEntry:(id)entry forKeyString:(id)string completionHandler:(id)handler
{
  entryCopy = entry;
  stringCopy = string;
  handlerCopy = handler;
  if (!self->_terminating)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __62__WBSOnDiskDataCache_setEntry_forKeyString_completionHandler___block_invoke;
    v11[3] = &unk_1E8286490;
    v11[4] = self;
    v12 = stringCopy;
    v14 = handlerCopy;
    v13 = entryCopy;
    [(WBSOnDiskDataCache *)self _dispatchDiskAccessBlock:v11];
  }
}

void __62__WBSOnDiskDataCache_setEntry_forKeyString_completionHandler___block_invoke(id *a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = [a1[4] _fileLocationForKeyString:a1[5]];
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [v2 URLByDeletingLastPathComponent];
  v29 = 0;
  v5 = [v3 createDirectoryAtURL:v4 withIntermediateDirectories:1 attributes:0 error:&v29];
  v6 = v29;

  if ((v5 & 1) == 0)
  {
    v17 = WBS_LOG_CHANNEL_PREFIXSiteMetadata();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [v6 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __27__WBSOnDiskDataCache_reset__block_invoke_2_cold_2();
    }

    v18 = a1[4];
    v19 = v28;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __62__WBSOnDiskDataCache_setEntry_forKeyString_completionHandler___block_invoke_19;
    v28[3] = &unk_1E82836E0;
    v28[4] = v18;
    v28[5] = a1[5];
    v28[6] = v6;
    v28[7] = a1[7];
    [v18 _internalQueueDispatchAsync:v28];
    goto LABEL_12;
  }

  v7 = WBS_LOG_CHANNEL_PREFIXSiteMetadata();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v22 = a1[6];
    v23 = [v22 length];
    *buf = 134218498;
    v31 = v22;
    v32 = 2048;
    v33 = v23;
    v34 = 2112;
    v35 = v2;
    _os_log_debug_impl(&dword_1C6968000, v7, OS_LOG_TYPE_DEBUG, "Saving entry %p <entry data length = %zu> to location %@", buf, 0x20u);
  }

  if (([a1[6] writeToURL:v2 atomically:1] & 1) == 0)
  {
    v20 = WBS_LOG_CHANNEL_PREFIXSiteMetadata();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [v6 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __62__WBSOnDiskDataCache_setEntry_forKeyString_completionHandler___block_invoke_cold_2();
    }

    v21 = a1[4];
    v19 = v27;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __62__WBSOnDiskDataCache_setEntry_forKeyString_completionHandler___block_invoke_20;
    v27[3] = &unk_1E82836E0;
    v27[4] = v21;
    v27[5] = a1[5];
    v27[6] = v6;
    v27[7] = a1[7];
    [v21 _internalQueueDispatchAsync:v27];
LABEL_12:
    v14 = v19 + 5;
    v15 = v19 + 6;
    v16 = v19 + 7;
    goto LABEL_13;
  }

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __62__WBSOnDiskDataCache_setEntry_forKeyString_completionHandler___block_invoke_2;
  v24[3] = &unk_1E82836E0;
  v8 = a1[4];
  v9 = a1[6];
  v10 = a1[5];
  v11 = a1[7];
  *&v12 = v10;
  *(&v12 + 1) = v11;
  *&v13 = v8;
  *(&v13 + 1) = v9;
  v25 = v13;
  v26 = v12;
  [v8 _internalQueueDispatchAsync:v24];
  v14 = &v25 + 1;
  v15 = &v26;
  v16 = &v26 + 1;
LABEL_13:
}

uint64_t __62__WBSOnDiskDataCache_setEntry_forKeyString_completionHandler___block_invoke_19(uint64_t a1)
{
  [*(a1 + 32) _didFailToLoadEntryForKeyString:*(a1 + 40) error:*(a1 + 48)];
  result = *(a1 + 56);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t __62__WBSOnDiskDataCache_setEntry_forKeyString_completionHandler___block_invoke_20(uint64_t a1)
{
  [*(a1 + 32) _didFailToLoadEntryForKeyString:*(a1 + 40) error:*(a1 + 48)];
  result = *(a1 + 56);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t __62__WBSOnDiskDataCache_setEntry_forKeyString_completionHandler___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _didLoadEntry:*(a1 + 40) forKeyString:*(a1 + 48)];
  result = *(a1 + 56);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)_didLoadEntry:(id)entry forKeyString:(id)string
{
  entryCopy = entry;
  stringCopy = string;
  v7 = stringCopy;
  if (entryCopy)
  {
    [(NSCache *)self->_entriesForKeyStringsCache setObject:entryCopy forKey:stringCopy];
    [(NSMutableSet *)self->_missingEntryKeyStrings removeObject:v7];
  }

  else
  {
    [(NSMutableSet *)self->_missingEntryKeyStrings addObject:stringCopy];
  }

  [(NSMutableSet *)self->_pendingKeyStringRequests removeObject:v7];
  WeakRetained = objc_loadWeakRetained(&self->_dataCacheDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained dataCache:self didLoadEntry:entryCopy forKeyString:v7];
  }
}

- (void)_didFailToLoadEntryForKeyString:(id)string error:(id)error
{
  stringCopy = string;
  errorCopy = error;
  [(NSMutableSet *)self->_missingEntryKeyStrings addObject:stringCopy];
  [(NSMutableSet *)self->_pendingKeyStringRequests removeObject:stringCopy];
  WeakRetained = objc_loadWeakRetained(&self->_dataCacheDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained dataCache:self didFailToLoadEntryForKeyString:stringCopy error:errorCopy];
  }
}

- (void)removeEntriesForKeyStrings:(id)strings completionHandler:(id)handler
{
  stringsCopy = strings;
  handlerCopy = handler;
  if (!self->_terminating)
  {
    v8 = [stringsCopy copy];

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __67__WBSOnDiskDataCache_removeEntriesForKeyStrings_completionHandler___block_invoke;
    v9[3] = &unk_1E8283450;
    stringsCopy = v8;
    v10 = stringsCopy;
    selfCopy = self;
    v12 = handlerCopy;
    [(WBSOnDiskDataCache *)self _dispatchDiskAccessBlock:v9];
  }
}

void __67__WBSOnDiskDataCache_removeEntriesForKeyStrings_completionHandler___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = *v18;
    do
    {
      v5 = 0;
      do
      {
        if (*v18 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v17 + 1) + 8 * v5);
        v7 = [MEMORY[0x1E696AC08] defaultManager];
        v8 = [*(a1 + 40) _fileLocationForKeyString:v6];
        [v7 safari_removeFileAtURL:v8 error:0];

        ++v5;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v3);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__WBSOnDiskDataCache_removeEntriesForKeyStrings_completionHandler___block_invoke_2;
  v13[3] = &unk_1E8283450;
  v9 = *(a1 + 40);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  [v9 _internalQueueDispatchAsync:v13];
}

uint64_t __67__WBSOnDiskDataCache_removeEntriesForKeyStrings_completionHandler___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(a1 + 40) + 24) removeObjectForKey:{*(*(&v7 + 1) + 8 * v5++), v7}];
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }

  [*(*(a1 + 40) + 40) addObjectsFromArray:*(a1 + 32)];
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)removeEntriesForKeyStringsNotIncludedIn:(id)in completionHandler:(id)handler
{
  inCopy = in;
  handlerCopy = handler;
  if (!self->_terminating)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __80__WBSOnDiskDataCache_removeEntriesForKeyStringsNotIncludedIn_completionHandler___block_invoke;
    v8[3] = &unk_1E8283450;
    v9 = inCopy;
    selfCopy = self;
    v11 = handlerCopy;
    [(WBSOnDiskDataCache *)self _dispatchDiskAccessBlock:v8];
  }
}

void __80__WBSOnDiskDataCache_removeEntriesForKeyStringsNotIncludedIn_completionHandler___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_27];
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [v3 enumeratorAtURL:*(*(a1 + 40) + 80) includingPropertiesForKeys:0 options:7 errorHandler:0];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 lastPathComponent];
        v11 = [v2 containsObject:v10];

        if ((v11 & 1) == 0)
        {
          v12 = [MEMORY[0x1E696AC08] defaultManager];
          [v12 safari_removeFileAtURL:v9 error:0];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v13 = *(a1 + 48);
  if (v13)
  {
    (*(v13 + 16))();
  }
}

id __80__WBSOnDiskDataCache_removeEntriesForKeyStringsNotIncludedIn_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 safari_md5Hash];

  return v2;
}

- (int64_t)entryStateForKeyString:(id)string
{
  stringCopy = string;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__WBSOnDiskDataCache_entryStateForKeyString___block_invoke;
  v8[3] = &unk_1E8286468;
  v9 = stringCopy;
  v10 = &v11;
  v8[4] = self;
  v5 = stringCopy;
  [(WBSOnDiskDataCache *)self _internalQueueDispatchSync:v8];
  v6 = v12[3];

  _Block_object_dispose(&v11, 8);
  return v6;
}

uint64_t __45__WBSOnDiskDataCache_entryStateForKeyString___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _internalEntryStateForKeyString:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (int64_t)_internalEntryStateForKeyString:(id)string
{
  stringCopy = string;
  if (([(NSMutableSet *)self->_missingEntryKeyStrings containsObject:stringCopy]& 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v6 = [(NSCache *)self->_entriesForKeyStringsCache objectForKey:stringCopy];
    v5 = 2 * (v6 != 0);
  }

  return v5;
}

- (void)_dispatchDiskAccessBlock:(id)block
{
  blockCopy = block;
  if (!self->_terminating)
  {
    operator new();
  }
}

id **__47__WBSOnDiskDataCache__dispatchDiskAccessBlock___block_invoke(uint64_t a1)
{
  v2 = a1 + 32;
  v1 = *(a1 + 32);
  v4 = *(v2 + 8);
  (*(v1 + 16))();
  return std::unique_ptr<SafariShared::SuddenTerminationDisabler>::~unique_ptr[abi:sn200100](&v4);
}

- (id)_fileLocationForKeyString:(id)string
{
  cacheDirectoryURL = self->_cacheDirectoryURL;
  safari_md5Hash = [string safari_md5Hash];
  v5 = [(NSURL *)cacheDirectoryURL URLByAppendingPathComponent:safari_md5Hash isDirectory:0];

  return v5;
}

- (WBSDataCacheDelegate)dataCacheDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_dataCacheDelegate);

  return WeakRetained;
}

void __27__WBSOnDiskDataCache_setUp__block_invoke_2_cold_1(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138740227;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1C6968000, log, OS_LOG_TYPE_ERROR, "Could not generate plist data with cache settings: %{sensitive}@, error: %{public}@", buf, 0x16u);
}

void __27__WBSOnDiskDataCache_reset__block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_2(&dword_1C6968000, v3, v4, "Error %{public}@ trying to delete entry cache folder.", v5);
}

void __27__WBSOnDiskDataCache_reset__block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_2(&dword_1C6968000, v3, v4, "Error %{public}@ trying to create entry cache folder.", v5);
}

void __62__WBSOnDiskDataCache_setEntry_forKeyString_completionHandler___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_2(&dword_1C6968000, v3, v4, "Error %{public}@ trying to write entry cache folder.", v5);
}

@end