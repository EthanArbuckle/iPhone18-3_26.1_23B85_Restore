@interface WBSWebExtensionSQLiteStoreMigrator
- (void)migrateSQLiteStorageToWebKitIfNecessary;
@end

@implementation WBSWebExtensionSQLiteStoreMigrator

- (void)migrateSQLiteStorageToWebKitIfNecessary
{
  if ([(NSUserDefaults *)self->_userDefaults BOOLForKey:@"DidMigrateWebExtensionSQLiteStorageToWebKit"])
  {
    v3 = WBS_LOG_CHANNEL_PREFIXExtensions();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v8 = 0;
    v4 = "Web Extension Storage Migration: Skipping web extension storage migration because it's already been done";
    v5 = &v8;
LABEL_7:
    _os_log_impl(&dword_1C6968000, v3, OS_LOG_TYPE_DEFAULT, v4, v5, 2u);
    return;
  }

  if ([(NSUserDefaults *)self->_userDefaults BOOLForKey:@"WebExtensionSQLiteStorageMigrationInProgress"])
  {
    v3 = WBS_LOG_CHANNEL_PREFIXExtensions();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v7 = 0;
    v4 = "Web Extension Storage Migration: Skipping web extension storage migration because it's in progress";
    v5 = &v7;
    goto LABEL_7;
  }

  [(NSUserDefaults *)self->_userDefaults setBool:1 forKey:@"WebExtensionSQLiteStorageMigrationInProgress"];
  [(WBSWebExtensionSQLiteStoreMigrator *)self _migrateAllSafariSQLiteStoresToWebKit];
  [(NSUserDefaults *)self->_userDefaults setBool:1 forKey:@"DidMigrateWebExtensionSQLiteStorageToWebKit"];
  userDefaults = self->_userDefaults;

  [(NSUserDefaults *)userDefaults removeObjectForKey:@"WebExtensionSQLiteStorageMigrationInProgress"];
}

- (void)_anyWebKitSQLiteStoresExistInFolder:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138739971;
  v3 = a1;
  _os_log_debug_impl(&dword_1C6968000, a2, OS_LOG_TYPE_DEBUG, "Web Extension Storage Migration: Not migrating web extension store file because file already exists at '%{sensitive}@'", &v2, 0xCu);
}

- (void)_copySQLiteStoresFromSafariExtensionFolder:(uint64_t)a1 toWebKitExtensionFolder:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138739971;
  v3 = a1;
  _os_log_error_impl(&dword_1C6968000, a2, OS_LOG_TYPE_ERROR, "Failed to migrate '%{sensitive}@', deleting destination WebKit extension folder", &v2, 0xCu);
}

- (void)_copySafariSQLiteStoreAndAssociatedFiles:(uint64_t)a1 toWebKitSQLiteStore:(NSObject *)a2 webKitWebExtensionFolder:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138739971;
  v3 = a1;
  _os_log_error_impl(&dword_1C6968000, a2, OS_LOG_TYPE_ERROR, "Couldn't create folder for migration: '%{sensitive}@'", &v2, 0xCu);
}

- (void)_copySafariSQLiteStoreAndAssociatedFiles:(void *)a1 toWebKitSQLiteStore:(uint8_t *)buf webKitWebExtensionFolder:(os_log_t)log .cold.2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1C6968000, log, OS_LOG_TYPE_ERROR, "Failed to migrate web extension store file: %{public}@", buf, 0xCu);
}

@end