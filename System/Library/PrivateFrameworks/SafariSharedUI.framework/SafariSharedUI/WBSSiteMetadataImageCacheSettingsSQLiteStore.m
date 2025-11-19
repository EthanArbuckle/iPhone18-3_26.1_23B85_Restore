@interface WBSSiteMetadataImageCacheSettingsSQLiteStore
- (BOOL)_checkDatabaseIntegrity;
- (BOOL)_migrateToCurrentSchemaVersionifNeeded;
- (id)allEntries;
- (void)_checkDatabaseIntegrity;
- (void)_createNewDatabaseSchema;
@end

@implementation WBSSiteMetadataImageCacheSettingsSQLiteStore

- (BOOL)_checkDatabaseIntegrity
{
  v2 = [(WBSSQLiteDatabase *)self->_database fetchQuery:@"PRAGMA integrity_check(1)"];
  v3 = [v2 nextObject];
  v4 = [v3 stringAtIndex:0];
  v5 = [v2 statement];
  [v5 invalidate];

  if (!v3)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXSiteMetadata();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(WBSSiteMetadataImageCacheSettingsSQLiteStore *)v7 _checkDatabaseIntegrity];
    }

    goto LABEL_8;
  }

  if (([v4 isEqualToString:@"ok"] & 1) == 0)
  {
    v8 = WBS_LOG_CHANNEL_PREFIXSiteMetadata();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(WBSSiteMetadataImageCacheSettingsSQLiteStore *)v4 _checkDatabaseIntegrity];
    }

LABEL_8:
    v6 = 0;
    goto LABEL_9;
  }

  v6 = 1;
LABEL_9:

  return v6;
}

- (BOOL)_migrateToCurrentSchemaVersionifNeeded
{
  v3 = SafariShared::WBSSQLiteDatabaseFetch<>(self->_database, @"PRAGMA user_version");
  v4 = [v3 nextObject];
  v5 = [v4 intAtIndex:0];

  v6 = [v3 statement];
  [v6 invalidate];

  if (v5)
  {
    v7 = [objc_opt_class() databaseSchemaVersion];
    if (v7 <= v5)
    {
      v10 = 1;
    }

    else
    {
      v8 = v5 + 1;
      do
      {
        v9 = [(WBSSiteMetadataImageCacheSettingsSQLiteStore *)self _statementsForMigrationToSchemaVersion:v8];
        v10 = [(WBSSiteMetadataImageCacheSettingsSQLiteStore *)self _performMigrationStepToSchemaVersion:v8 withStatements:v9];
      }

      while (v7 != v8++ && v10);
    }
  }

  else
  {
    v10 = [(WBSSiteMetadataImageCacheSettingsSQLiteStore *)self _createNewDatabaseSchema];
  }

  return v10;
}

void __58__WBSSiteMetadataImageCacheSettingsSQLiteStore_allEntries__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _selectAllEntriesSQLiteStatement];
  v3 = [v2 fetch];
  v4 = [objc_opt_class() cacheSettingsEntryClass];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        v10 = *(a1 + 40);
        v11 = [v4 alloc];
        v12 = [v11 initWithSQLiteRow:{v9, v13}];
        [v10 addObject:v12];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  [v2 invalidate];
}

- (id)allEntries
{
  v3 = [MEMORY[0x1E695DF70] array];
  databaseQueue = self->_databaseQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__WBSSiteMetadataImageCacheSettingsSQLiteStore_allEntries__block_invoke;
  v7[3] = &unk_1E8282EA0;
  v7[4] = self;
  v5 = v3;
  v8 = v5;
  dispatch_sync(databaseQueue, v7);

  return v5;
}

- (void)_openDatabase:(uint8_t *)buf andCheckIntegrity:(os_log_t)log .cold.1(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 141558531;
  *(buf + 4) = 1752392040;
  *(buf + 6) = 2117;
  *(buf + 14) = a1;
  *(buf + 11) = 2112;
  *(buf + 3) = a2;
  _os_log_error_impl(&dword_1C6968000, log, OS_LOG_TYPE_ERROR, "Failed to enable write-ahead logging on cache settings store at %{sensitive, mask.hash}@: %@", buf, 0x20u);
}

- (void)_checkDatabaseIntegrity
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1C6968000, a2, OS_LOG_TYPE_ERROR, "Failed database integrity check: %@", &v2, 0xCu);
}

- (void)_createNewDatabaseSchema
{
  OUTLINED_FUNCTION_0_11(a1, a2, a3, 5.778e-34);
  OUTLINED_FUNCTION_1_7(&dword_1C6968000, "Failed to create the cache_settings table: %@ (%d)", v4, v5);
}

void __100__WBSSiteMetadataImageCacheSettingsSQLiteStore__performMigrationStepToSchemaVersion_withStatements___block_invoke_2_cold_1(void *a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_0_11(a1, a2, a3, 5.778e-34);
  OUTLINED_FUNCTION_1_7(&dword_1C6968000, "Failed to roll back transaction: %@ (%d)", v4, v5);
}

void __64__WBSSiteMetadataImageCacheSettingsSQLiteStore_deleteAllEntries__block_invoke_cold_1(void *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  v5 = *(*(*a2 + 8) + 24);
  *a3 = 138412546;
  *(a3 + 4) = a1;
  *(a3 + 12) = 1024;
  *(a3 + 14) = v5;
  OUTLINED_FUNCTION_1_7(&dword_1C6968000, "Failed to delete all entries: %@ (%d)", a3, a4);
}

@end