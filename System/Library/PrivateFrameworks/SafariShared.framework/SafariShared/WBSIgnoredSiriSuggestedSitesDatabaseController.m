@interface WBSIgnoredSiriSuggestedSitesDatabaseController
- (id)_dateAtWhichIgnoredSiriSuggestedSitesArePruned;
- (id)_getIgnoredSiriSuggestedSitesURLStringsInProfile:(id)a3 withQuery:(id)a4;
- (int)_createFreshDatabaseSchema;
- (int)_migrateToSchemaVersion:(int)a3;
- (int)_migrateToSchemaVersion_2;
- (int)_migrateToSchemaVersion_3;
- (void)_addIgnoredSiriSuggestedSiteWithURLString:(id)a3 inProfile:(id)a4 withQuery:(id)a5 visitedURLString:(id)a6;
- (void)_removeIgnoredSiriSuggestedSitesBeforeDate:(id)a3;
- (void)_removeIgnoredSiriSuggestedSitesInProfile:(id)a3 afterDate:(id)a4;
- (void)_removeIgnoredSiriSuggestedSitesInProfile:(id)a3 query:(id)a4;
- (void)_removeIgnoredSiriSuggestedSitesInProfile:(id)a3 visitedURLHost:(id)a4;
- (void)_removeIgnoredSiriSuggestedSitesWithURLHost:(id)a3 inProfile:(id)a4;
- (void)_updateTimestampsOfIgnoredSiriSuggestedSitesInProfile:(id)a3 query:(id)a4 visitedURLString:(id)a5;
- (void)addIgnoredSiriSuggestedSiteWithURLString:(id)a3 inProfile:(id)a4 withQuery:(id)a5 visitedURLString:(id)a6;
- (void)getIgnoredSiriSuggestedSitesURLStringsInProfile:(id)a3 withQuery:(id)a4 completionHandler:(id)a5;
- (void)pruneIgnoredSiriSuggestedSites;
- (void)removeIgnoredSiriSuggestedSitesInProfile:(id)a3 afterDate:(id)a4;
- (void)removeIgnoredSiriSuggestedSitesInProfile:(id)a3 query:(id)a4;
- (void)removeIgnoredSiriSuggestedSitesInProfile:(id)a3 visitedURLHost:(id)a4 completionHandler:(id)a5;
- (void)removeIgnoredSiriSuggestedSitesWithURLHost:(id)a3 inProfile:(id)a4;
- (void)updateTimestampsOfIgnoredSiriSuggestedSitesInProfile:(id)a3 query:(id)a4 visitedURLString:(id)a5;
@end

@implementation WBSIgnoredSiriSuggestedSitesDatabaseController

- (int)_createFreshDatabaseSchema
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(WBSSQLiteStore *)self database];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __76__WBSIgnoredSiriSuggestedSitesDatabaseController__createFreshDatabaseSchema__block_invoke;
  v5[3] = &unk_1E7FC8508;
  v5[4] = self;
  v5[5] = &v6;
  [v3 tryToPerformTransactionInBlock:v5];

  LODWORD(v3) = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

BOOL __76__WBSIgnoredSiriSuggestedSitesDatabaseController__createFreshDatabaseSchema__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) database];
  *(*(*(a1 + 40) + 8) + 24) = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(v2, 0, @"CREATE TABLE ignored_siri_suggested_sites (id TEXT PRIMARY KEY NOT NULL,url TEXT NOT NULL,query TEXT NOT NULL,profile TEXT NOT NULL,timestamp REAL NOT NULL)");

  return *(*(*(a1 + 40) + 8) + 24) == 101;
}

- (int)_migrateToSchemaVersion:(int)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v5 = [(WBSSQLiteStore *)self database];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74__WBSIgnoredSiriSuggestedSitesDatabaseController__migrateToSchemaVersion___block_invoke;
  v7[3] = &unk_1E7FC8530;
  v8 = a3;
  v7[4] = self;
  v7[5] = &v9;
  [v5 tryToPerformTransactionInBlock:v7];

  LODWORD(v5) = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v5;
}

BOOL __74__WBSIgnoredSiriSuggestedSitesDatabaseController__migrateToSchemaVersion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2 == 3 || v2 == 2)
  {
    v3 = [*(a1 + 32) _migrateToSchemaVersion];
  }

  else
  {
    v3 = 1;
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
  return *(*(*(a1 + 40) + 8) + 24) == 101;
}

- (int)_migrateToSchemaVersion_2
{
  v3 = [(WBSSQLiteStore *)self database];
  v4 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(v3, 0, @"DELETE FROM ignored_siri_suggested_sites");

  if (v4 == 101)
  {
    v5 = [(WBSSQLiteStore *)self database];
    v4 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(v5, 0, @"ALTER TABLE ignored_siri_suggested_sites RENAME COLUMN url TO siriSuggestedSiteURL");

    if (v4 == 101)
    {
      v6 = [(WBSSQLiteStore *)self database];
      v4 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(v6, 0, @"ALTER TABLE ignored_siri_suggested_sites ADD visitedURL TEXT");
    }
  }

  return v4;
}

- (int)_migrateToSchemaVersion_3
{
  v3 = [(WBSSQLiteStore *)self database];
  v4 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(v3, 0, @"DROP TABLE ignored_siri_suggested_sites");

  if (v4 == 101)
  {
    v5 = [(WBSSQLiteStore *)self database];
    v4 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(v5, 0, @"CREATE TABLE ignored_siri_suggested_sites (id TEXT PRIMARY KEY NOT NULL,siriSuggestedSiteURL TEXT NOT NULL,query TEXT NOT NULL,profile TEXT NOT NULL,timestamp REAL NOT NULL,visitedURL TEXT,ignoreCount INTEGER NOT NULL,UNIQUE (siriSuggestedSiteURL, query, profile))");
  }

  return v4;
}

- (void)addIgnoredSiriSuggestedSiteWithURLString:(id)a3 inProfile:(id)a4 withQuery:(id)a5 visitedURLString:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(WBSSQLiteStore *)self databaseQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __128__WBSIgnoredSiriSuggestedSitesDatabaseController_addIgnoredSiriSuggestedSiteWithURLString_inProfile_withQuery_visitedURLString___block_invoke;
  block[3] = &unk_1E7FC7D58;
  block[4] = self;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  dispatch_async(v14, block);
}

- (void)updateTimestampsOfIgnoredSiriSuggestedSitesInProfile:(id)a3 query:(id)a4 visitedURLString:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(WBSSQLiteStore *)self databaseQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __126__WBSIgnoredSiriSuggestedSitesDatabaseController_updateTimestampsOfIgnoredSiriSuggestedSitesInProfile_query_visitedURLString___block_invoke;
  v15[3] = &unk_1E7FC5D00;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (void)removeIgnoredSiriSuggestedSitesInProfile:(id)a3 afterDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WBSSQLiteStore *)self databaseQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __101__WBSIgnoredSiriSuggestedSitesDatabaseController_removeIgnoredSiriSuggestedSitesInProfile_afterDate___block_invoke;
  block[3] = &unk_1E7FB7DD0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)removeIgnoredSiriSuggestedSitesInProfile:(id)a3 query:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WBSSQLiteStore *)self databaseQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __97__WBSIgnoredSiriSuggestedSitesDatabaseController_removeIgnoredSiriSuggestedSitesInProfile_query___block_invoke;
  block[3] = &unk_1E7FB7DD0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)removeIgnoredSiriSuggestedSitesInProfile:(id)a3 visitedURLHost:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(WBSSQLiteStore *)self databaseQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __124__WBSIgnoredSiriSuggestedSitesDatabaseController_removeIgnoredSiriSuggestedSitesInProfile_visitedURLHost_completionHandler___block_invoke;
  v15[3] = &unk_1E7FC6910;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

uint64_t __124__WBSIgnoredSiriSuggestedSitesDatabaseController_removeIgnoredSiriSuggestedSitesInProfile_visitedURLHost_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _removeIgnoredSiriSuggestedSitesInProfile:*(a1 + 40) visitedURLHost:*(a1 + 48)];
  result = *(a1 + 56);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)removeIgnoredSiriSuggestedSitesWithURLHost:(id)a3 inProfile:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WBSSQLiteStore *)self databaseQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __103__WBSIgnoredSiriSuggestedSitesDatabaseController_removeIgnoredSiriSuggestedSitesWithURLHost_inProfile___block_invoke;
  block[3] = &unk_1E7FB7DD0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)getIgnoredSiriSuggestedSitesURLStringsInProfile:(id)a3 withQuery:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(WBSSQLiteStore *)self databaseQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __126__WBSIgnoredSiriSuggestedSitesDatabaseController_getIgnoredSiriSuggestedSitesURLStringsInProfile_withQuery_completionHandler___block_invoke;
  v15[3] = &unk_1E7FC69B0;
  v16 = v9;
  v17 = self;
  v18 = v8;
  v19 = v10;
  v12 = v8;
  v13 = v9;
  v14 = v10;
  dispatch_async(v11, v15);
}

void __126__WBSIgnoredSiriSuggestedSitesDatabaseController_getIgnoredSiriSuggestedSitesURLStringsInProfile_withQuery_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 56);
  v3 = [*(a1 + 40) _getIgnoredSiriSuggestedSitesURLStringsInProfile:*(a1 + 48) withQuery:v1];
  (*(v2 + 16))(v2, v1);
}

- (void)pruneIgnoredSiriSuggestedSites
{
  v3 = [(WBSSQLiteStore *)self databaseQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__WBSIgnoredSiriSuggestedSitesDatabaseController_pruneIgnoredSiriSuggestedSites__block_invoke;
  block[3] = &unk_1E7FB6F80;
  block[4] = self;
  dispatch_async(v3, block);
}

void __80__WBSIgnoredSiriSuggestedSitesDatabaseController_pruneIgnoredSiriSuggestedSites__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 _dateAtWhichIgnoredSiriSuggestedSitesArePruned];
  [v1 _removeIgnoredSiriSuggestedSitesBeforeDate:?];
}

- (id)_dateAtWhichIgnoredSiriSuggestedSitesArePruned
{
  v2 = [MEMORY[0x1E695DF00] now];
  v3 = [v2 dateByAddingTimeInterval:-2592000.0];

  return v3;
}

- (void)_addIgnoredSiriSuggestedSiteWithURLString:(id)a3 inProfile:(id)a4 withQuery:(id)a5 visitedURLString:(id)a6
{
  v36 = *MEMORY[0x1E69E9840];
  v27 = a3;
  v26 = a4;
  v25 = a5;
  v10 = a6;
  v24 = v10;
  v11 = [MEMORY[0x1E695DFF8] URLWithString:v27];

  if (v11)
  {
    v12 = [MEMORY[0x1E695DF00] now];
    [v12 timeIntervalSinceReferenceDate];
    v14 = v13;

    v23 = v14;
    [(WBSSQLiteStore *)self database];
    if (v10)
      v15 = {;
      v16 = [MEMORY[0x1E696AFB0] UUID];
      v22 = [v16 UUIDString];
      *buf = 1;
      v17 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * {__strong},NSString * {__strong}&,NSString * {__strong}&,NSString * {__strong}&,double &,NSString * {__strong}&,int,double &,NSString * {__strong}&>(v15, 0, @"INSERT INTO ignored_siri_suggested_sites (id, siriSuggestedSiteURL, query, profile, timestamp, visitedURL, ignoreCount) VALUES (?, ?, ?, ?, ?, ?, ?) ON CONFLICT(siriSuggestedSiteURL, query, profile) DO UPDATE SET timestamp=?, visitedURL = ?, ignoreCount=ignoreCount + 1", &v22, &v27, &v25, &v26, &v23, &v24, buf, &v23, &v24);
      v18 = &v22;
    }

    else
      v15 = {;
      v16 = [MEMORY[0x1E696AFB0] UUID];
      v21 = [v16 UUIDString];
      *buf = 1;
      v17 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * {__strong},NSString * {__strong}&,NSString * {__strong}&,NSString * {__strong}&,double &,int,double &>(v15, 0, @"INSERT INTO ignored_siri_suggested_sites (id, siriSuggestedSiteURL, query, profile, timestamp, ignoreCount) VALUES (?, ?, ?, ?, ?, ?) ON CONFLICT(siriSuggestedSiteURL, query, profile) DO UPDATE SET timestamp=?, visitedURL = NULL, ignoreCount=ignoreCount + 1", &v21, &v27, &v25, &v26, &v23, buf, &v23);
      v18 = &v21;
    }

    if (v17 != 101)
    {
      v20 = WBS_LOG_CHANNEL_PREFIXSiriSuggestedSites();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138740739;
        v29 = v27;
        v30 = 2117;
        v31 = v25;
        v32 = 2117;
        v33 = v26;
        v34 = 1024;
        v35 = v17;
        _os_log_error_impl(&dword_1BB6F3000, v20, OS_LOG_TYPE_ERROR, "Failed to insert an ignored suggested site with siriSuggestedSiteURL: %{sensitive}@ query: %{sensitive}@ profile: %{sensitive}@. Error code: %d", buf, 0x26u);
      }
    }

    v10 = v24;
  }

  else
  {
    v19 = WBS_LOG_CHANNEL_PREFIXSiriSuggestedSites();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138740483;
      v29 = v27;
      v30 = 2117;
      v31 = v25;
      v32 = 2117;
      v33 = v26;
      _os_log_error_impl(&dword_1BB6F3000, v19, OS_LOG_TYPE_ERROR, "Unable to insert an ignored suggested site, due to an invalid URL: %{sensitive}@ query: %{sensitive}@ profile: %{sensitive}@.", buf, 0x20u);
    }
  }
}

- (void)_updateTimestampsOfIgnoredSiriSuggestedSitesInProfile:(id)a3 query:(id)a4 visitedURLString:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v14 = a4;
  v13 = a5;
  v8 = [(WBSSQLiteStore *)self database];
  v9 = [MEMORY[0x1E695DF00] now];
  [v9 timeIntervalSinceReferenceDate];
  *buf = v10;
  v11 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<double,NSString * {__strong}&,NSString * {__strong}&,NSString * {__strong}&>(v8, 0, @"UPDATE ignored_siri_suggested_sites SET timestamp = ?, visitedURL = ? WHERE profile = ? AND query = ?", buf, &v13, &v15, &v14);

  if (v11 != 101)
  {
    v12 = WBS_LOG_CHANNEL_PREFIXSiriSuggestedSites();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138478339;
      *&buf[4] = v15;
      v17 = 2113;
      v18 = v14;
      v19 = 1024;
      v20 = v11;
      _os_log_error_impl(&dword_1BB6F3000, v12, OS_LOG_TYPE_ERROR, "Failed to update the timestamps of ignored suggested sites with profile: %{private}@ and query = %{private}@. Error code: %d", buf, 0x1Cu);
    }
  }
}

- (void)_removeIgnoredSiriSuggestedSitesInProfile:(id)a3 afterDate:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v6 = a4;
  v7 = [(WBSSQLiteStore *)self database];
  [v6 timeIntervalSinceReferenceDate];
  *buf = v8;
  v9 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * {__strong}&,double>(v7, 0, @"DELETE FROM ignored_siri_suggested_sites WHERE profile = ? AND timestamp > ?", &v13, buf);

  if (v9 != 101)
  {
    v10 = WBS_LOG_CHANNEL_PREFIXSiriSuggestedSites();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = v13;
      [v6 timeIntervalSinceReferenceDate];
      *buf = 138740483;
      *&buf[4] = v11;
      v15 = 2053;
      v16 = v12;
      v17 = 1024;
      v18 = v9;
      _os_log_error_impl(&dword_1BB6F3000, v10, OS_LOG_TYPE_ERROR, "Failed to delete the ignored suggested sites with profile: %{sensitive}@ and timestamp > %{sensitive}f. Error code: %d", buf, 0x1Cu);
    }
  }
}

- (void)_removeIgnoredSiriSuggestedSitesInProfile:(id)a3 query:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v9 = a4;
  v6 = [(WBSSQLiteStore *)self database];
  v7 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * {__strong}&,NSString * {__strong}&>(v6, 0, @"DELETE FROM ignored_siri_suggested_sites WHERE profile = ? AND query = ?", &v10, &v9);

  if (v7 != 101)
  {
    v8 = WBS_LOG_CHANNEL_PREFIXSiriSuggestedSites();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138740483;
      v12 = v10;
      v13 = 2117;
      v14 = v9;
      v15 = 1024;
      v16 = v7;
      _os_log_error_impl(&dword_1BB6F3000, v8, OS_LOG_TYPE_ERROR, "Failed to delete the ignored suggested sites with profile: %{sensitive}@ and query = %{sensitive}@. Error code: %d", buf, 0x1Cu);
    }
  }
}

- (void)_removeIgnoredSiriSuggestedSitesInProfile:(id)a3 visitedURLHost:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v9 = a4;
  v6 = [(WBSSQLiteStore *)self database];
  v7 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * {__strong}&,NSString * {__strong}&>(v6, 0, @"DELETE FROM ignored_siri_suggested_sites WHERE profile = ? AND visitedURL LIKE '%%' || ? || '%%'", &v10, &v9);

  if (v7 != 101)
  {
    v8 = WBS_LOG_CHANNEL_PREFIXSiriSuggestedSites();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138740483;
      v12 = v10;
      v13 = 2117;
      v14 = v9;
      v15 = 1024;
      v16 = v7;
      _os_log_error_impl(&dword_1BB6F3000, v8, OS_LOG_TYPE_ERROR, "Failed to delete the ignored suggested sites with profile: %{sensitive}@ and visited URL host = %{sensitive}@. Error code: %d", buf, 0x1Cu);
    }
  }
}

- (void)_removeIgnoredSiriSuggestedSitesBeforeDate:(id)a3
{
  v10[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(WBSSQLiteStore *)self database];
  [v4 timeIntervalSinceReferenceDate];
  v10[0] = v6;
  v7 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<double>(v5, 0, @"DELETE FROM ignored_siri_suggested_sites WHERE timestamp < ?", v10);

  if (v7 != 101)
  {
    v8 = WBS_LOG_CHANNEL_PREFIXSiriSuggestedSites();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [v4 timeIntervalSinceReferenceDate];
      [(WBSIgnoredSiriSuggestedSitesDatabaseController *)v10 _removeIgnoredSiriSuggestedSitesBeforeDate:v7, v8, v9];
    }
  }
}

- (void)_removeIgnoredSiriSuggestedSitesWithURLHost:(id)a3 inProfile:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v9 = a4;
  v6 = [(WBSSQLiteStore *)self database];
  v7 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * {__strong}&,NSString * {__strong}&>(v6, 0, @"DELETE FROM ignored_siri_suggested_sites WHERE profile = ? AND siriSuggestedSiteURL LIKE '%%://' || ? || '/%%'", &v9, &v10);

  if (v7 != 101)
  {
    v8 = WBS_LOG_CHANNEL_PREFIXSiriSuggestedSites();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138740483;
      v12 = v9;
      v13 = 2117;
      v14 = v10;
      v15 = 1024;
      v16 = v7;
      _os_log_error_impl(&dword_1BB6F3000, v8, OS_LOG_TYPE_ERROR, "Failed to delete the ignored suggested sites with profile: %{sensitive}@ and host: %{sensitive}@. Error code: %d", buf, 0x1Cu);
    }
  }
}

- (id)_getIgnoredSiriSuggestedSitesURLStringsInProfile:(id)a3 withQuery:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v27 = a3;
  v26 = a4;
  v6 = [MEMORY[0x1E695DF90] dictionary];
  v21 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v7 = [(WBSSQLiteStore *)self database];
  v8 = SafariShared::WBSSQLiteDatabaseFetch<NSString * {__strong}&,NSString * {__strong}&>(v7, @"SELECT siriSuggestedSiteURL, ignoreCount FROM ignored_siri_suggested_sites WHERE profile = ? AND query LIKE ? || '%%'", &v27, &v26);

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v10)
  {
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        v14 = [v13 stringAtIndex:0];
        LODWORD(v13) = [v13 intAtIndex:1];
        v15 = [v6 objectForKeyedSubscript:v14];
        v16 = [v15 integerValue];

        v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v16 + v13];
        [v6 setObject:v17 forKeyedSubscript:v14];

        v18 = [v6 objectForKeyedSubscript:v14];
        LODWORD(v15) = [v18 unsignedIntValue] > 2;

        if (v15)
        {
          [v21 addObject:v14];
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v10);
  }

  v19 = [v9 statement];
  [v19 invalidate];

  return v21;
}

- (void)_removeIgnoredSiriSuggestedSitesBeforeDate:(os_log_t)log .cold.1(uint8_t *buf, int a2, os_log_t log, double a4)
{
  *buf = 134545921;
  *(buf + 4) = a4;
  *(buf + 6) = 1024;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1BB6F3000, log, OS_LOG_TYPE_ERROR, "Failed to delete the ignored suggested sites where timestamp < %{sensitive}f. Error code: %d", buf, 0x12u);
}

@end