@interface WCCloudMigrator
+ (BOOL)isRunningInTheWeatherAppProcess;
- (BOOL)storeRequiresMigration:(id)migration;
- (WCCloudMigrator)init;
- (void)eraseStoreIfNeeded:(id)needed;
- (void)migrateStore:(id)store toStore:(id)toStore completionBlock:(id)block;
@end

@implementation WCCloudMigrator

- (WCCloudMigrator)init
{
  v7.receiver = self;
  v7.super_class = WCCloudMigrator;
  v2 = [(WCCloudMigrator *)&v7 init];
  if (v2)
  {
    if (+[WCCloudMigrator isRunningInTheWeatherAppProcess])
    {
      v3 = objc_alloc_init(WCDeviceLookup);
      p_super = &v2->_deviceLookup->super;
      v2->_deviceLookup = v3;
    }

    else
    {
      p_super = WCLogForCategory(2uLL);
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&dword_1C945E000, p_super, OS_LOG_TYPE_DEFAULT, "Not running in the Weather app, skipping device lookup", v6, 2u);
      }
    }
  }

  return v2;
}

+ (BOOL)isRunningInTheWeatherAppProcess
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v4 = [bundleIdentifier isEqualToString:@"com.apple.weather"];

  return v4;
}

- (BOOL)storeRequiresMigration:(id)migration
{
  v3 = [migration objectForKey:@"version"];
  integerValue = [v3 integerValue];

  return integerValue < 1;
}

- (void)migrateStore:(id)store toStore:(id)toStore completionBlock:(id)block
{
  storeCopy = store;
  toStoreCopy = toStore;
  blockCopy = block;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __56__WCCloudMigrator_migrateStore_toStore_completionBlock___block_invoke;
  v14[3] = &unk_1E8340AA0;
  v14[4] = self;
  v15 = toStoreCopy;
  v16 = storeCopy;
  v17 = blockCopy;
  v11 = storeCopy;
  v12 = toStoreCopy;
  v13 = blockCopy;
  [v12 synchronizeWithCompletionHandler:v14];
}

void __56__WCCloudMigrator_migrateStore_toStore_completionBlock___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = WCLogForCategory(2uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __56__WCCloudMigrator_migrateStore_toStore_completionBlock___block_invoke_cold_1(v3, v4);
    }

    v5 = *(a1[7] + 2);
LABEL_10:
    v5();
    goto LABEL_11;
  }

  if (([a1[4] storeRequiresMigration:a1[5]] & 1) == 0)
  {
    v12 = WCLogForCategory(2uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C945E000, v12, OS_LOG_TYPE_DEFAULT, "Syncronized store, already migrated", buf, 2u);
    }

    v5 = *(a1[7] + 2);
    goto LABEL_10;
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __56__WCCloudMigrator_migrateStore_toStore_completionBlock___block_invoke_2;
  v13[3] = &unk_1E8340AA0;
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[6];
  v9 = a1[5];
  *&v10 = a1[4];
  *(&v10 + 1) = v7;
  *&v11 = v8;
  *(&v11 + 1) = v9;
  v14 = v11;
  v15 = v10;
  [v6 synchronizeWithCompletionHandler:v13];

LABEL_11:
}

void __56__WCCloudMigrator_migrateStore_toStore_completionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = WCLogForCategory(2uLL);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __56__WCCloudMigrator_migrateStore_toStore_completionBlock___block_invoke_2_cold_1(v3, v5);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) dictionaryRepresentation];
      *buf = 138412290;
      v11 = v6;
      _os_log_impl(&dword_1C945E000, v5, OS_LOG_TYPE_DEFAULT, "Migrating key-value store to encrypted store, contents=%@", buf, 0xCu);
    }

    v7 = [*(a1 + 32) dictionaryRepresentation];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __56__WCCloudMigrator_migrateStore_toStore_completionBlock___block_invoke_3;
    v8[3] = &unk_1E8340A78;
    v9 = *(a1 + 40);
    [v7 enumerateKeysAndObjectsUsingBlock:v8];

    [*(a1 + 40) setObject:&unk_1F4917238 forKey:@"version"];
    [*(a1 + 40) synchronize];
    [*(a1 + 48) eraseStoreIfNeeded:*(a1 + 32)];
    (*(*(a1 + 56) + 16))();
  }
}

- (void)eraseStoreIfNeeded:(id)needed
{
  neededCopy = needed;
  if (!+[WCCloudMigrator isRunningInTheWeatherAppProcess])
  {
    v9 = WCLogForCategory(2uLL);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v10 = "Not running in the Weather app, not erasing";
LABEL_8:
    _os_log_impl(&dword_1C945E000, v9, OS_LOG_TYPE_DEFAULT, v10, buf, 2u);
    goto LABEL_9;
  }

  dictionaryRepresentation = [neededCopy dictionaryRepresentation];
  allKeys = [dictionaryRepresentation allKeys];
  v7 = [allKeys count];

  if (!v7)
  {
    v9 = WCLogForCategory(2uLL);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v10 = "Store empty, no erase required";
    goto LABEL_8;
  }

  deviceLookup = [(WCCloudMigrator *)self deviceLookup];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __38__WCCloudMigrator_eraseStoreIfNeeded___block_invoke;
  v11[3] = &unk_1E8340AF0;
  v12 = neededCopy;
  [deviceLookup checkAllDevicesRunningMinimumiOSVersion:14 macOSVersion:0 orInactiveForTimeInterval:10 completionHandler:{16, v11, 15552000.0}];

  v9 = v12;
LABEL_9:
}

void __38__WCCloudMigrator_eraseStoreIfNeeded___block_invoke(uint64_t a1, int a2)
{
  v4 = WCLogForCategory(2uLL);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_1C945E000, v4, OS_LOG_TYPE_DEFAULT, "Erasing store", buf, 2u);
    }

    v6 = [*(a1 + 32) dictionaryRepresentation];
    v7 = [v6 allKeys];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __38__WCCloudMigrator_eraseStoreIfNeeded___block_invoke_7;
    v8[3] = &unk_1E8340AC8;
    v9 = *(a1 + 32);
    [v7 enumerateObjectsUsingBlock:v8];

    [*(a1 + 32) synchronize];
    v4 = v9;
  }

  else if (v5)
  {
    *buf = 0;
    _os_log_impl(&dword_1C945E000, v4, OS_LOG_TYPE_DEFAULT, "Non-encrypted store still in use, no erase needed", buf, 2u);
  }
}

void __56__WCCloudMigrator_migrateStore_toStore_completionBlock___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1C945E000, a2, OS_LOG_TYPE_ERROR, "Failed to migrate the store. Could not synchronize the toStore, error=%@", &v2, 0xCu);
}

void __56__WCCloudMigrator_migrateStore_toStore_completionBlock___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1C945E000, a2, OS_LOG_TYPE_ERROR, "Failed to migrate the store. Could not synchronize the fromStore, error=%@", &v2, 0xCu);
}

@end