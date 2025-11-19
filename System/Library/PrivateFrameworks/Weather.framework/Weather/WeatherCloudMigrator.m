@interface WeatherCloudMigrator
- (BOOL)storeRequiresMigration:(id)a3;
- (WeatherCloudMigrator)init;
- (void)eraseStoreIfNeeded:(id)a3;
- (void)migrateStore:(id)a3 toStore:(id)a4 completionBlock:(id)a5;
@end

@implementation WeatherCloudMigrator

- (WeatherCloudMigrator)init
{
  v6.receiver = self;
  v6.super_class = WeatherCloudMigrator;
  v2 = [(WeatherCloudMigrator *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(WeatherDeviceLookup);
    deviceLookup = v2->_deviceLookup;
    v2->_deviceLookup = v3;
  }

  return v2;
}

- (BOOL)storeRequiresMigration:(id)a3
{
  v3 = [a3 objectForKey:@"version"];
  v4 = [v3 integerValue];

  return v4 < 1;
}

- (void)migrateStore:(id)a3 toStore:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __61__WeatherCloudMigrator_migrateStore_toStore_completionBlock___block_invoke;
  v14[3] = &unk_279E67E08;
  v14[4] = self;
  v15 = v9;
  v16 = v8;
  v17 = v10;
  v11 = v8;
  v12 = v9;
  v13 = v10;
  [v12 synchronizeWithCompletionHandler:v14];
}

void __61__WeatherCloudMigrator_migrateStore_toStore_completionBlock___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = WALogForCategory(14);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __61__WeatherCloudMigrator_migrateStore_toStore_completionBlock___block_invoke_cold_1(v3, v4);
    }

    v5 = *(a1[7] + 2);
LABEL_10:
    v5();
    goto LABEL_11;
  }

  if (([a1[4] storeRequiresMigration:a1[5]] & 1) == 0)
  {
    v12 = WALogForCategory(14);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_272ACF000, v12, OS_LOG_TYPE_DEFAULT, "Syncronized store, already migrated", buf, 2u);
    }

    v5 = *(a1[7] + 2);
    goto LABEL_10;
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__WeatherCloudMigrator_migrateStore_toStore_completionBlock___block_invoke_1;
  v13[3] = &unk_279E67E08;
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

void __61__WeatherCloudMigrator_migrateStore_toStore_completionBlock___block_invoke_1(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = WALogForCategory(14);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __61__WeatherCloudMigrator_migrateStore_toStore_completionBlock___block_invoke_1_cold_1(v3, v5);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) dictionaryRepresentation];
      *buf = 138412290;
      v12 = v6;
      _os_log_impl(&dword_272ACF000, v5, OS_LOG_TYPE_DEFAULT, "Migrating key-value store to encrypted store, contents=%@", buf, 0xCu);
    }

    v7 = [*(a1 + 32) dictionaryRepresentation];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __61__WeatherCloudMigrator_migrateStore_toStore_completionBlock___block_invoke_2;
    v9[3] = &unk_279E67DE0;
    v10 = *(a1 + 40);
    [v7 enumerateKeysAndObjectsUsingBlock:v9];

    [*(a1 + 40) setObject:&unk_288235658 forKey:@"version"];
    [*(a1 + 40) synchronize];
    [*(a1 + 48) eraseStoreIfNeeded:*(a1 + 32)];
    (*(*(a1 + 56) + 16))();
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)eraseStoreIfNeeded:(id)a3
{
  v4 = a3;
  v5 = [v4 dictionaryRepresentation];
  v6 = [v5 allKeys];
  v7 = [v6 count];

  if (v7)
  {
    v8 = +[WeatherInternalPreferences sharedInternalPreferences];
    v9 = [v8 deviceInactivityThreshold];

    v10 = 0.0;
    if (v9 <= 5)
    {
      v10 = dbl_272B1F748[v9];
    }

    v11 = [(WeatherCloudMigrator *)self deviceLookup];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __43__WeatherCloudMigrator_eraseStoreIfNeeded___block_invoke;
    v13[3] = &unk_279E67E58;
    v14 = v4;
    [v11 checkAllDevicesRunningMinimumiOSVersion:14 macOSVersion:0 orInactiveForTimeInterval:10 completionHandler:{16, v13, v10}];

    v12 = v14;
  }

  else
  {
    v12 = WALogForCategory(14);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_272ACF000, v12, OS_LOG_TYPE_DEFAULT, "Store empty, no erase required", buf, 2u);
    }
  }
}

void __43__WeatherCloudMigrator_eraseStoreIfNeeded___block_invoke(uint64_t a1, int a2)
{
  v4 = WALogForCategory(14);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_272ACF000, v4, OS_LOG_TYPE_DEFAULT, "Erasing store", buf, 2u);
    }

    v6 = [*(a1 + 32) dictionaryRepresentation];
    v7 = [v6 allKeys];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __43__WeatherCloudMigrator_eraseStoreIfNeeded___block_invoke_7;
    v8[3] = &unk_279E67E30;
    v9 = *(a1 + 32);
    [v7 enumerateObjectsUsingBlock:v8];

    [*(a1 + 32) synchronize];
    v4 = v9;
  }

  else if (v5)
  {
    *buf = 0;
    _os_log_impl(&dword_272ACF000, v4, OS_LOG_TYPE_DEFAULT, "Non-encrypted store still in use, no erase needed", buf, 2u);
  }
}

void __61__WeatherCloudMigrator_migrateStore_toStore_completionBlock___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_272ACF000, a2, OS_LOG_TYPE_ERROR, "Failed to migrate the store. Could not synchronize the toStore, error=%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __61__WeatherCloudMigrator_migrateStore_toStore_completionBlock___block_invoke_1_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_272ACF000, a2, OS_LOG_TYPE_ERROR, "Failed to migrate the store. Could not synchronize the fromStore, error=%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end