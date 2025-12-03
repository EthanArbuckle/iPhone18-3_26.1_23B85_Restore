@interface WeatherCloudPersistence
+ (BOOL)processIsWhitelistedForSync;
+ (id)cloudPersistenceWithDelegate:(id)delegate;
- (BOOL)BOOLForKey:(id)key;
- (BOOL)isInitialSyncNotification:(id)notification;
- (BOOL)synchronize;
- (WeatherCloudPersistence)initWithDelegate:(id)delegate;
- (WeatherCloudPersistenceDelegate)delegate;
- (id)arrayForKey:(id)key;
- (id)dictionaryForKey:(id)key;
- (id)objectForKey:(id)key;
- (id)stringForKey:(id)key;
- (void)cloudCitiesChangedExternally:(id)externally;
- (void)encryptedStoreChanged:(id)changed;
- (void)removeObjectForKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
- (void)synchronizeWithCompletionHandler:(id)handler;
@end

@implementation WeatherCloudPersistence

+ (BOOL)processIsWhitelistedForSync
{
  bundleIdentifier = +[WeatherInternalPreferences sharedInternalPreferences];
  if ([bundleIdentifier isInternalInstall])
  {
    v3 = +[WeatherInternalPreferences sharedInternalPreferences];
    v4 = [v3 objectForKey:@"DemoOverrideMode"];
    if ([v4 BOOLValue])
    {

      v5 = 0;
LABEL_11:

      return v5;
    }

    launchedToTest = [*MEMORY[0x277D76620] launchedToTest];

    if ((launchedToTest & 1) == 0)
    {
LABEL_7:
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      bundleIdentifier = [mainBundle bundleIdentifier];

      if ([bundleIdentifier isEqualToString:@"com.apple.weather"] & 1) != 0 || (objc_msgSend(bundleIdentifier, "isEqualToString:", @"com.apple.nanoweatherprefsd"))
      {
        v5 = 1;
      }

      else
      {
        v5 = [bundleIdentifier isEqualToString:@"com.apple.weather.WeatherIntents"];
      }

      goto LABEL_11;
    }
  }

  else
  {
    launchedToTest2 = [*MEMORY[0x277D76620] launchedToTest];

    if ((launchedToTest2 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  return 0;
}

+ (id)cloudPersistenceWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__WeatherCloudPersistence_cloudPersistenceWithDelegate___block_invoke;
  block[3] = &unk_279E67C98;
  v10 = delegateCopy;
  v4 = cloudPersistenceWithDelegate__onceToken;
  v5 = delegateCopy;
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

- (WeatherCloudPersistence)initWithDelegate:(id)delegate
{
  v35.receiver = self;
  v35.super_class = WeatherCloudPersistence;
  v3 = [(WeatherCloudPersistence *)&v35 init];
  if (v3)
  {
    if ([objc_opt_class() processIsWhitelistedForSync])
    {
      defaultStore = [MEMORY[0x277CCAD80] defaultStore];
      nonEncryptedStore = v3->_nonEncryptedStore;
      v3->_nonEncryptedStore = defaultStore;

      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      v7 = *MEMORY[0x277CCA7C0];
      nonEncryptedStore = [(WeatherCloudPersistence *)v3 nonEncryptedStore];
      [defaultCenter addObserver:v3 selector:sel_cloudCitiesChangedExternally_ name:v7 object:nonEncryptedStore];

      mEMORY[0x277D7B2B0] = [MEMORY[0x277D7B2B0] sharedInstance];
      userInfoManager = [mEMORY[0x277D7B2B0] userInfoManager];
      encryptedStore = [userInfoManager encryptedStore];
      encryptedStore = v3->_encryptedStore;
      v3->_encryptedStore = encryptedStore;

      defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
      encryptedStore2 = [(WeatherCloudPersistence *)v3 encryptedStore];
      [defaultCenter2 addObserver:v3 selector:sel_encryptedStoreChanged_ name:v7 object:encryptedStore2];

      defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
      encryptedStore3 = [(WeatherCloudPersistence *)v3 encryptedStore];
      [defaultCenter3 addObserver:v3 selector:sel_cloudCitiesChangedExternally_ name:v7 object:encryptedStore3];

      v17 = objc_alloc_init(WeatherCloudMigrator);
      migrator = v3->_migrator;
      v3->_migrator = v17;

      v19 = v3->_migrator;
      encryptedStore4 = [(WeatherCloudPersistence *)v3 encryptedStore];
      LODWORD(defaultCenter3) = [(WeatherCloudMigrator *)v19 storeRequiresMigration:encryptedStore4];

      v21 = WALogForCategory(14);
      v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
      if (defaultCenter3)
      {
        if (v22)
        {
          *buf = 0;
          _os_log_impl(&dword_272ACF000, v21, OS_LOG_TYPE_DEFAULT, "Store might require migration, starting migrator", buf, 2u);
        }

        nonEncryptedStore2 = [(WeatherCloudPersistence *)v3 nonEncryptedStore];
        [(WeatherCloudPersistence *)v3 setActiveCloudStore:nonEncryptedStore2];

        v24 = v3->_migrator;
        nonEncryptedStore3 = [(WeatherCloudPersistence *)v3 nonEncryptedStore];
        encryptedStore5 = [(WeatherCloudPersistence *)v3 encryptedStore];
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __44__WeatherCloudPersistence_initWithDelegate___block_invoke;
        v32[3] = &unk_279E67E80;
        v33 = v3;
        [(WeatherCloudMigrator *)v24 migrateStore:nonEncryptedStore3 toStore:encryptedStore5 completionBlock:v32];
      }

      else
      {
        if (v22)
        {
          *buf = 0;
          _os_log_impl(&dword_272ACF000, v21, OS_LOG_TYPE_DEFAULT, "Store doesn't require migration", buf, 2u);
        }

        encryptedStore6 = [(WeatherCloudPersistence *)v3 encryptedStore];
        [(WeatherCloudPersistence *)v3 setActiveCloudStore:encryptedStore6];

        v28 = v3->_migrator;
        nonEncryptedStore4 = [(WeatherCloudPersistence *)v3 nonEncryptedStore];
        [(WeatherCloudMigrator *)v28 eraseStoreIfNeeded:nonEncryptedStore4];

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

- (void)cloudCitiesChangedExternally:(id)externally
{
  externallyCopy = externally;
  activeCloudStore = [(WeatherCloudPersistence *)self activeCloudStore];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__WeatherCloudPersistence_cloudCitiesChangedExternally___block_invoke;
  v7[3] = &unk_279E682C8;
  v7[4] = self;
  v8 = externallyCopy;
  v6 = externallyCopy;
  [activeCloudStore synchronizeWithCompletionHandler:v7];
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

- (BOOL)isInitialSyncNotification:(id)notification
{
  userInfo = [notification userInfo];
  v4 = [userInfo objectForKey:*MEMORY[0x277CCA7B0]];
  intValue = [v4 intValue];

  return (intValue & 0xFFFFFFFD) == 1;
}

- (id)arrayForKey:(id)key
{
  keyCopy = key;
  activeCloudStore = [(WeatherCloudPersistence *)self activeCloudStore];
  v6 = [activeCloudStore arrayForKey:keyCopy];

  return v6;
}

- (id)dictionaryForKey:(id)key
{
  keyCopy = key;
  activeCloudStore = [(WeatherCloudPersistence *)self activeCloudStore];
  v6 = [activeCloudStore dictionaryForKey:keyCopy];

  return v6;
}

- (id)stringForKey:(id)key
{
  keyCopy = key;
  activeCloudStore = [(WeatherCloudPersistence *)self activeCloudStore];
  v6 = [activeCloudStore stringForKey:keyCopy];

  return v6;
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  activeCloudStore = [(WeatherCloudPersistence *)self activeCloudStore];
  v6 = [activeCloudStore objectForKey:keyCopy];

  return v6;
}

- (void)setObject:(id)object forKey:(id)key
{
  keyCopy = key;
  objectCopy = object;
  activeCloudStore = [(WeatherCloudPersistence *)self activeCloudStore];
  [activeCloudStore setObject:objectCopy forKey:keyCopy];
}

- (void)removeObjectForKey:(id)key
{
  keyCopy = key;
  activeCloudStore = [(WeatherCloudPersistence *)self activeCloudStore];
  [activeCloudStore removeObjectForKey:keyCopy];
}

- (BOOL)BOOLForKey:(id)key
{
  keyCopy = key;
  activeCloudStore = [(WeatherCloudPersistence *)self activeCloudStore];
  v6 = [activeCloudStore BOOLForKey:keyCopy];

  return v6;
}

- (BOOL)synchronize
{
  activeCloudStore = [(WeatherCloudPersistence *)self activeCloudStore];

  if (!activeCloudStore)
  {
    return 0;
  }

  activeCloudStore2 = [(WeatherCloudPersistence *)self activeCloudStore];
  synchronize = [activeCloudStore2 synchronize];

  delegate = [(WeatherCloudPersistence *)self delegate];
  [delegate cloudPersistenceDidSynchronize:self];

  return synchronize;
}

- (void)synchronizeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  activeCloudStore = [(WeatherCloudPersistence *)self activeCloudStore];
  [activeCloudStore synchronizeWithCompletionHandler:handlerCopy];
}

- (void)encryptedStoreChanged:(id)changed
{
  changedCopy = changed;
  encryptedStore = [(WeatherCloudPersistence *)self encryptedStore];
  activeCloudStore = [(WeatherCloudPersistence *)self activeCloudStore];

  if (encryptedStore != activeCloudStore)
  {
    migrator = [(WeatherCloudPersistence *)self migrator];
    encryptedStore2 = [(WeatherCloudPersistence *)self encryptedStore];
    v8 = [migrator storeRequiresMigration:encryptedStore2];

    if (v8)
    {
      [(WeatherCloudPersistence *)self cloudCitiesChangedExternally:changedCopy];
    }

    else
    {
      encryptedStore3 = [(WeatherCloudPersistence *)self encryptedStore];
      [(WeatherCloudPersistence *)self setActiveCloudStore:encryptedStore3];

      v10 = [MEMORY[0x277CCAB88] notificationWithName:@"WeatherCloudStoreChangedExternally" object:self userInfo:0];
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter postNotification:v10];
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