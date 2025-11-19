@interface WeatherCloudPersistence
+ (BOOL)processIsWhitelistedForSync;
+ (id)cloudPersistenceWithDelegate:(id)a3;
- (BOOL)BOOLForKey:(id)a3;
- (BOOL)isInitialSyncNotification:(id)a3;
- (BOOL)synchronize;
- (WeatherCloudPersistence)initWithDelegate:(id)a3;
- (WeatherCloudPersistenceDelegate)delegate;
- (id)arrayForKey:(id)a3;
- (id)dictionaryForKey:(id)a3;
- (id)objectForKey:(id)a3;
- (id)stringForKey:(id)a3;
- (void)cloudCitiesChangedExternally:(id)a3;
- (void)encryptedStoreChanged:(id)a3;
- (void)removeObjectForKey:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
- (void)synchronizeWithCompletionHandler:(id)a3;
@end

@implementation WeatherCloudPersistence

+ (BOOL)processIsWhitelistedForSync
{
  v2 = +[WeatherInternalPreferences sharedInternalPreferences];
  if ([v2 isInternalInstall])
  {
    v3 = +[WeatherInternalPreferences sharedInternalPreferences];
    v4 = [v3 objectForKey:@"DemoOverrideMode"];
    if ([v4 BOOLValue])
    {

      v5 = 0;
LABEL_11:

      return v5;
    }

    v7 = [*MEMORY[0x277D76620] launchedToTest];

    if ((v7 & 1) == 0)
    {
LABEL_7:
      v8 = [MEMORY[0x277CCA8D8] mainBundle];
      v2 = [v8 bundleIdentifier];

      if ([v2 isEqualToString:@"com.apple.weather"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"com.apple.nanoweatherprefsd"))
      {
        v5 = 1;
      }

      else
      {
        v5 = [v2 isEqualToString:@"com.apple.weather.WeatherIntents"];
      }

      goto LABEL_11;
    }
  }

  else
  {
    v6 = [*MEMORY[0x277D76620] launchedToTest];

    if ((v6 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  return 0;
}

+ (id)cloudPersistenceWithDelegate:(id)a3
{
  v3 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__WeatherCloudPersistence_cloudPersistenceWithDelegate___block_invoke;
  block[3] = &unk_279E67C98;
  v10 = v3;
  v4 = cloudPersistenceWithDelegate__onceToken;
  v5 = v3;
  if (v4 != -1)
  {
    dispatch_once(&cloudPersistenceWithDelegate__onceToken, block);
  }

  v6 = cloudPersistenceWithDelegate__sharedCloudPersistence;
  v7 = cloudPersistenceWithDelegate__sharedCloudPersistence;

  return v6;
}

uint64_t __56__WeatherCloudPersistence_cloudPersistenceWithDelegate___block_invoke(uint64_t a1)
{
  v1 = [[WeatherCloudPersistence alloc] initWithDelegate:*(a1 + 32)];
  v2 = cloudPersistenceWithDelegate__sharedCloudPersistence;
  cloudPersistenceWithDelegate__sharedCloudPersistence = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (WeatherCloudPersistence)initWithDelegate:(id)a3
{
  v35.receiver = self;
  v35.super_class = WeatherCloudPersistence;
  v3 = [(WeatherCloudPersistence *)&v35 init];
  if (v3)
  {
    if ([objc_opt_class() processIsWhitelistedForSync])
    {
      v4 = [MEMORY[0x277CCAD80] defaultStore];
      nonEncryptedStore = v3->_nonEncryptedStore;
      v3->_nonEncryptedStore = v4;

      v6 = [MEMORY[0x277CCAB98] defaultCenter];
      v7 = *MEMORY[0x277CCA7C0];
      v8 = [(WeatherCloudPersistence *)v3 nonEncryptedStore];
      [v6 addObserver:v3 selector:sel_cloudCitiesChangedExternally_ name:v7 object:v8];

      v9 = [MEMORY[0x277D7B2B0] sharedInstance];
      v10 = [v9 userInfoManager];
      v11 = [v10 encryptedStore];
      encryptedStore = v3->_encryptedStore;
      v3->_encryptedStore = v11;

      v13 = [MEMORY[0x277CCAB98] defaultCenter];
      v14 = [(WeatherCloudPersistence *)v3 encryptedStore];
      [v13 addObserver:v3 selector:sel_encryptedStoreChanged_ name:v7 object:v14];

      v15 = [MEMORY[0x277CCAB98] defaultCenter];
      v16 = [(WeatherCloudPersistence *)v3 encryptedStore];
      [v15 addObserver:v3 selector:sel_cloudCitiesChangedExternally_ name:v7 object:v16];

      v17 = objc_alloc_init(WeatherCloudMigrator);
      migrator = v3->_migrator;
      v3->_migrator = v17;

      v19 = v3->_migrator;
      v20 = [(WeatherCloudPersistence *)v3 encryptedStore];
      LODWORD(v15) = [(WeatherCloudMigrator *)v19 storeRequiresMigration:v20];

      v21 = WALogForCategory(14);
      v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
      if (v15)
      {
        if (v22)
        {
          *buf = 0;
          _os_log_impl(&dword_272ACF000, v21, OS_LOG_TYPE_DEFAULT, "Store might require migration, starting migrator", buf, 2u);
        }

        v23 = [(WeatherCloudPersistence *)v3 nonEncryptedStore];
        [(WeatherCloudPersistence *)v3 setActiveCloudStore:v23];

        v24 = v3->_migrator;
        v25 = [(WeatherCloudPersistence *)v3 nonEncryptedStore];
        v26 = [(WeatherCloudPersistence *)v3 encryptedStore];
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __44__WeatherCloudPersistence_initWithDelegate___block_invoke;
        v32[3] = &unk_279E67E80;
        v33 = v3;
        [(WeatherCloudMigrator *)v24 migrateStore:v25 toStore:v26 completionBlock:v32];
      }

      else
      {
        if (v22)
        {
          *buf = 0;
          _os_log_impl(&dword_272ACF000, v21, OS_LOG_TYPE_DEFAULT, "Store doesn't require migration", buf, 2u);
        }

        v27 = [(WeatherCloudPersistence *)v3 encryptedStore];
        [(WeatherCloudPersistence *)v3 setActiveCloudStore:v27];

        v28 = v3->_migrator;
        v29 = [(WeatherCloudPersistence *)v3 nonEncryptedStore];
        [(WeatherCloudMigrator *)v28 eraseStoreIfNeeded:v29];

        [(WeatherCloudPersistence *)v3 synchronize];
      }
    }

    v30 = v3;
  }

  return v3;
}

void __44__WeatherCloudPersistence_initWithDelegate___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) encryptedStore];
    [*(a1 + 32) setActiveCloudStore:v3];

    v4 = WALogForCategory(14);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_272ACF000, v4, OS_LOG_TYPE_DEFAULT, "Migrator finished processing, notifying clients of store change", v7, 2u);
    }

    v5 = [MEMORY[0x277CCAB88] notificationWithName:@"WeatherCloudStoreChangedExternally" object:*(a1 + 32) userInfo:0];
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 postNotification:v5];

    [*(a1 + 32) synchronize];
  }

  else
  {
    v5 = WALogForCategory(14);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __44__WeatherCloudPersistence_initWithDelegate___block_invoke_cold_1(a1, v5);
    }
  }
}

- (void)cloudCitiesChangedExternally:(id)a3
{
  v4 = a3;
  v5 = [(WeatherCloudPersistence *)self activeCloudStore];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__WeatherCloudPersistence_cloudCitiesChangedExternally___block_invoke;
  v7[3] = &unk_279E682C8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 synchronizeWithCompletionHandler:v7];
}

void __56__WeatherCloudPersistence_cloudCitiesChangedExternally___block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) isInitialSyncNotification:*(a1 + 40)];
  v8 = @"WeatherCloudStoreIsInitialSyncKey";
  v3 = [MEMORY[0x277CCABB0] numberWithBool:v2];
  v9[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  v5 = [MEMORY[0x277CCAB88] notificationWithName:@"WeatherCloudStoreChangedExternally" object:*(a1 + 32) userInfo:v4];
  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 postNotification:v5];

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)isInitialSyncNotification:(id)a3
{
  v3 = [a3 userInfo];
  v4 = [v3 objectForKey:*MEMORY[0x277CCA7B0]];
  v5 = [v4 intValue];

  return (v5 & 0xFFFFFFFD) == 1;
}

- (id)arrayForKey:(id)a3
{
  v4 = a3;
  v5 = [(WeatherCloudPersistence *)self activeCloudStore];
  v6 = [v5 arrayForKey:v4];

  return v6;
}

- (id)dictionaryForKey:(id)a3
{
  v4 = a3;
  v5 = [(WeatherCloudPersistence *)self activeCloudStore];
  v6 = [v5 dictionaryForKey:v4];

  return v6;
}

- (id)stringForKey:(id)a3
{
  v4 = a3;
  v5 = [(WeatherCloudPersistence *)self activeCloudStore];
  v6 = [v5 stringForKey:v4];

  return v6;
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  v5 = [(WeatherCloudPersistence *)self activeCloudStore];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(WeatherCloudPersistence *)self activeCloudStore];
  [v8 setObject:v7 forKey:v6];
}

- (void)removeObjectForKey:(id)a3
{
  v4 = a3;
  v5 = [(WeatherCloudPersistence *)self activeCloudStore];
  [v5 removeObjectForKey:v4];
}

- (BOOL)BOOLForKey:(id)a3
{
  v4 = a3;
  v5 = [(WeatherCloudPersistence *)self activeCloudStore];
  v6 = [v5 BOOLForKey:v4];

  return v6;
}

- (BOOL)synchronize
{
  v3 = [(WeatherCloudPersistence *)self activeCloudStore];

  if (!v3)
  {
    return 0;
  }

  v4 = [(WeatherCloudPersistence *)self activeCloudStore];
  v5 = [v4 synchronize];

  v6 = [(WeatherCloudPersistence *)self delegate];
  [v6 cloudPersistenceDidSynchronize:self];

  return v5;
}

- (void)synchronizeWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(WeatherCloudPersistence *)self activeCloudStore];
  [v5 synchronizeWithCompletionHandler:v4];
}

- (void)encryptedStoreChanged:(id)a3
{
  v12 = a3;
  v4 = [(WeatherCloudPersistence *)self encryptedStore];
  v5 = [(WeatherCloudPersistence *)self activeCloudStore];

  if (v4 != v5)
  {
    v6 = [(WeatherCloudPersistence *)self migrator];
    v7 = [(WeatherCloudPersistence *)self encryptedStore];
    v8 = [v6 storeRequiresMigration:v7];

    if (v8)
    {
      [(WeatherCloudPersistence *)self cloudCitiesChangedExternally:v12];
    }

    else
    {
      v9 = [(WeatherCloudPersistence *)self encryptedStore];
      [(WeatherCloudPersistence *)self setActiveCloudStore:v9];

      v10 = [MEMORY[0x277CCAB88] notificationWithName:@"WeatherCloudStoreChangedExternally" object:self userInfo:0];
      v11 = [MEMORY[0x277CCAB98] defaultCenter];
      [v11 postNotification:v10];
    }
  }
}

- (WeatherCloudPersistenceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __44__WeatherCloudPersistence_initWithDelegate___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [*(a1 + 32) nonEncryptedStore];
  v5 = [v4 dictionaryRepresentation];
  v6 = [*(a1 + 32) encryptedStore];
  v7 = [v6 dictionaryRepresentation];
  v9 = 138412546;
  v10 = v5;
  v11 = 2112;
  v12 = v7;
  _os_log_error_impl(&dword_272ACF000, a2, OS_LOG_TYPE_ERROR, "Migration failed, fromContents=%@, toContents=%@", &v9, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

@end