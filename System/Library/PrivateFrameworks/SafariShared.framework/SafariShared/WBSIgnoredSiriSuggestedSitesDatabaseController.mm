@interface WBSIgnoredSiriSuggestedSitesDatabaseController
- (id)_dateAtWhichIgnoredSiriSuggestedSitesArePruned;
- (id)_getIgnoredSiriSuggestedSitesURLStringsInProfile:(id)profile withQuery:(id)query;
- (int)_createFreshDatabaseSchema;
- (int)_migrateToSchemaVersion:(int)version;
- (int)_migrateToSchemaVersion_2;
- (int)_migrateToSchemaVersion_3;
- (void)_addIgnoredSiriSuggestedSiteWithURLString:(id)string inProfile:(id)profile withQuery:(id)query visitedURLString:(id)lString;
- (void)_removeIgnoredSiriSuggestedSitesBeforeDate:(id)date;
- (void)_removeIgnoredSiriSuggestedSitesInProfile:(id)profile afterDate:(id)date;
- (void)_removeIgnoredSiriSuggestedSitesInProfile:(id)profile query:(id)query;
- (void)_removeIgnoredSiriSuggestedSitesInProfile:(id)profile visitedURLHost:(id)host;
- (void)_removeIgnoredSiriSuggestedSitesWithURLHost:(id)host inProfile:(id)profile;
- (void)_updateTimestampsOfIgnoredSiriSuggestedSitesInProfile:(id)profile query:(id)query visitedURLString:(id)string;
- (void)addIgnoredSiriSuggestedSiteWithURLString:(id)string inProfile:(id)profile withQuery:(id)query visitedURLString:(id)lString;
- (void)getIgnoredSiriSuggestedSitesURLStringsInProfile:(id)profile withQuery:(id)query completionHandler:(id)handler;
- (void)pruneIgnoredSiriSuggestedSites;
- (void)removeIgnoredSiriSuggestedSitesInProfile:(id)profile afterDate:(id)date;
- (void)removeIgnoredSiriSuggestedSitesInProfile:(id)profile query:(id)query;
- (void)removeIgnoredSiriSuggestedSitesInProfile:(id)profile visitedURLHost:(id)host completionHandler:(id)handler;
- (void)removeIgnoredSiriSuggestedSitesWithURLHost:(id)host inProfile:(id)profile;
- (void)updateTimestampsOfIgnoredSiriSuggestedSitesInProfile:(id)profile query:(id)query visitedURLString:(id)string;
@end

@implementation WBSIgnoredSiriSuggestedSitesDatabaseController

- (int)_createFreshDatabaseSchema
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  database = [(WBSSQLiteStore *)self database];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __76__WBSIgnoredSiriSuggestedSitesDatabaseController__createFreshDatabaseSchema__block_invoke;
  v5[3] = &unk_1E7FC8508;
  v5[4] = self;
  v5[5] = &v6;
  [database tryToPerformTransactionInBlock:v5];

  LODWORD(database) = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return database;
}

BOOL __76__WBSIgnoredSiriSuggestedSitesDatabaseController__createFreshDatabaseSchema__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) database];
  *(*(*(a1 + 40) + 8) + 24) = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(v2, 0, @"CREATE TABLE ignored_siri_suggested_sites (id TEXT PRIMARY KEY NOT NULL,url TEXT NOT NULL,query TEXT NOT NULL,profile TEXT NOT NULL,timestamp REAL NOT NULL)");

  return *(*(*(a1 + 40) + 8) + 24) == 101;
}

- (int)_migrateToSchemaVersion:(int)version
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  database = [(WBSSQLiteStore *)self database];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74__WBSIgnoredSiriSuggestedSitesDatabaseController__migrateToSchemaVersion___block_invoke;
  v7[3] = &unk_1E7FC8530;
  versionCopy = version;
  v7[4] = self;
  v7[5] = &v9;
  [database tryToPerformTransactionInBlock:v7];

  LODWORD(database) = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return database;
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
  database = [(WBSSQLiteStore *)self database];
  v4 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(database, 0, @"DELETE FROM ignored_siri_suggested_sites");

  if (v4 == 101)
  {
    database2 = [(WBSSQLiteStore *)self database];
    v4 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(database2, 0, @"ALTER TABLE ignored_siri_suggested_sites RENAME COLUMN url TO siriSuggestedSiteURL");

    if (v4 == 101)
    {
      database3 = [(WBSSQLiteStore *)self database];
      v4 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(database3, 0, @"ALTER TABLE ignored_siri_suggested_sites ADD visitedURL TEXT");
    }
  }

  return v4;
}

- (int)_migrateToSchemaVersion_3
{
  database = [(WBSSQLiteStore *)self database];
  v4 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(database, 0, @"DROP TABLE ignored_siri_suggested_sites");

  if (v4 == 101)
  {
    database2 = [(WBSSQLiteStore *)self database];
    v4 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(database2, 0, @"CREATE TABLE ignored_siri_suggested_sites (id TEXT PRIMARY KEY NOT NULL,siriSuggestedSiteURL TEXT NOT NULL,query TEXT NOT NULL,profile TEXT NOT NULL,timestamp REAL NOT NULL,visitedURL TEXT,ignoreCount INTEGER NOT NULL,UNIQUE (siriSuggestedSiteURL, query, profile))");
  }

  return v4;
}

- (void)addIgnoredSiriSuggestedSiteWithURLString:(id)string inProfile:(id)profile withQuery:(id)query visitedURLString:(id)lString
{
  stringCopy = string;
  profileCopy = profile;
  queryCopy = query;
  lStringCopy = lString;
  databaseQueue = [(WBSSQLiteStore *)self databaseQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __128__WBSIgnoredSiriSuggestedSitesDatabaseController_addIgnoredSiriSuggestedSiteWithURLString_inProfile_withQuery_visitedURLString___block_invoke;
  block[3] = &unk_1E7FC7D58;
  block[4] = self;
  v20 = stringCopy;
  v21 = profileCopy;
  v22 = queryCopy;
  v23 = lStringCopy;
  v15 = lStringCopy;
  v16 = queryCopy;
  v17 = profileCopy;
  v18 = stringCopy;
  dispatch_async(databaseQueue, block);
}

- (void)updateTimestampsOfIgnoredSiriSuggestedSitesInProfile:(id)profile query:(id)query visitedURLString:(id)string
{
  profileCopy = profile;
  queryCopy = query;
  stringCopy = string;
  databaseQueue = [(WBSSQLiteStore *)self databaseQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __126__WBSIgnoredSiriSuggestedSitesDatabaseController_updateTimestampsOfIgnoredSiriSuggestedSitesInProfile_query_visitedURLString___block_invoke;
  v15[3] = &unk_1E7FC5D00;
  v15[4] = self;
  v16 = profileCopy;
  v17 = queryCopy;
  v18 = stringCopy;
  v12 = stringCopy;
  v13 = queryCopy;
  v14 = profileCopy;
  dispatch_async(databaseQueue, v15);
}

- (void)removeIgnoredSiriSuggestedSitesInProfile:(id)profile afterDate:(id)date
{
  profileCopy = profile;
  dateCopy = date;
  databaseQueue = [(WBSSQLiteStore *)self databaseQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __101__WBSIgnoredSiriSuggestedSitesDatabaseController_removeIgnoredSiriSuggestedSitesInProfile_afterDate___block_invoke;
  block[3] = &unk_1E7FB7DD0;
  block[4] = self;
  v12 = profileCopy;
  v13 = dateCopy;
  v9 = dateCopy;
  v10 = profileCopy;
  dispatch_async(databaseQueue, block);
}

- (void)removeIgnoredSiriSuggestedSitesInProfile:(id)profile query:(id)query
{
  profileCopy = profile;
  queryCopy = query;
  databaseQueue = [(WBSSQLiteStore *)self databaseQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __97__WBSIgnoredSiriSuggestedSitesDatabaseController_removeIgnoredSiriSuggestedSitesInProfile_query___block_invoke;
  block[3] = &unk_1E7FB7DD0;
  block[4] = self;
  v12 = profileCopy;
  v13 = queryCopy;
  v9 = queryCopy;
  v10 = profileCopy;
  dispatch_async(databaseQueue, block);
}

- (void)removeIgnoredSiriSuggestedSitesInProfile:(id)profile visitedURLHost:(id)host completionHandler:(id)handler
{
  profileCopy = profile;
  hostCopy = host;
  handlerCopy = handler;
  databaseQueue = [(WBSSQLiteStore *)self databaseQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __124__WBSIgnoredSiriSuggestedSitesDatabaseController_removeIgnoredSiriSuggestedSitesInProfile_visitedURLHost_completionHandler___block_invoke;
  v15[3] = &unk_1E7FC6910;
  v15[4] = self;
  v16 = profileCopy;
  v17 = hostCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = hostCopy;
  v14 = profileCopy;
  dispatch_async(databaseQueue, v15);
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

- (void)removeIgnoredSiriSuggestedSitesWithURLHost:(id)host inProfile:(id)profile
{
  hostCopy = host;
  profileCopy = profile;
  databaseQueue = [(WBSSQLiteStore *)self databaseQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __103__WBSIgnoredSiriSuggestedSitesDatabaseController_removeIgnoredSiriSuggestedSitesWithURLHost_inProfile___block_invoke;
  block[3] = &unk_1E7FB7DD0;
  block[4] = self;
  v12 = hostCopy;
  v13 = profileCopy;
  v9 = profileCopy;
  v10 = hostCopy;
  dispatch_async(databaseQueue, block);
}

- (void)getIgnoredSiriSuggestedSitesURLStringsInProfile:(id)profile withQuery:(id)query completionHandler:(id)handler
{
  profileCopy = profile;
  queryCopy = query;
  handlerCopy = handler;
  databaseQueue = [(WBSSQLiteStore *)self databaseQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __126__WBSIgnoredSiriSuggestedSitesDatabaseController_getIgnoredSiriSuggestedSitesURLStringsInProfile_withQuery_completionHandler___block_invoke;
  v15[3] = &unk_1E7FC69B0;
  v16 = queryCopy;
  selfCopy = self;
  v18 = profileCopy;
  v19 = handlerCopy;
  v12 = profileCopy;
  v13 = queryCopy;
  v14 = handlerCopy;
  dispatch_async(databaseQueue, v15);
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
  databaseQueue = [(WBSSQLiteStore *)self databaseQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__WBSIgnoredSiriSuggestedSitesDatabaseController_pruneIgnoredSiriSuggestedSites__block_invoke;
  block[3] = &unk_1E7FB6F80;
  block[4] = self;
  dispatch_async(databaseQueue, block);
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

- (void)_addIgnoredSiriSuggestedSiteWithURLString:(id)string inProfile:(id)profile withQuery:(id)query visitedURLString:(id)lString
{
  v36 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  profileCopy = profile;
  queryCopy = query;
  lStringCopy = lString;
  v24 = lStringCopy;
  v11 = [MEMORY[0x1E695DFF8] URLWithString:stringCopy];

  if (v11)
  {
    v12 = [MEMORY[0x1E695DF00] now];
    [v12 timeIntervalSinceReferenceDate];
    v14 = v13;

    v23 = v14;
    [(WBSSQLiteStore *)self database];
    if (lStringCopy)
      v15 = {;
      uUID = [MEMORY[0x1E696AFB0] UUID];
      uUIDString = [uUID UUIDString];
      *buf = 1;
      v17 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * {__strong},NSString * {__strong}&,NSString * {__strong}&,NSString * {__strong}&,double &,NSString * {__strong}&,int,double &,NSString * {__strong}&>(v15, 0, @"INSERT INTO ignored_siri_suggested_sites (id, siriSuggestedSiteURL, query, profile, timestamp, visitedURL, ignoreCount) VALUES (?, ?, ?, ?, ?, ?, ?) ON CONFLICT(siriSuggestedSiteURL, query, profile) DO UPDATE SET timestamp=?, visitedURL = ?, ignoreCount=ignoreCount + 1", &uUIDString, &stringCopy, &queryCopy, &profileCopy, &v23, &v24, buf, &v23, &v24);
      v18 = &uUIDString;
    }

    else
      v15 = {;
      uUID = [MEMORY[0x1E696AFB0] UUID];
      uUIDString2 = [uUID UUIDString];
      *buf = 1;
      v17 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * {__strong},NSString * {__strong}&,NSString * {__strong}&,NSString * {__strong}&,double &,int,double &>(v15, 0, @"INSERT INTO ignored_siri_suggested_sites (id, siriSuggestedSiteURL, query, profile, timestamp, ignoreCount) VALUES (?, ?, ?, ?, ?, ?) ON CONFLICT(siriSuggestedSiteURL, query, profile) DO UPDATE SET timestamp=?, visitedURL = NULL, ignoreCount=ignoreCount + 1", &uUIDString2, &stringCopy, &queryCopy, &profileCopy, &v23, buf, &v23);
      v18 = &uUIDString2;
    }

    if (v17 != 101)
    {
      v20 = WBS_LOG_CHANNEL_PREFIXSiriSuggestedSites();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138740739;
        v29 = stringCopy;
        v30 = 2117;
        v31 = queryCopy;
        v32 = 2117;
        v33 = profileCopy;
        v34 = 1024;
        v35 = v17;
        _os_log_error_impl(&dword_1BB6F3000, v20, OS_LOG_TYPE_ERROR, "Failed to insert an ignored suggested site with siriSuggestedSiteURL: %{sensitive}@ query: %{sensitive}@ profile: %{sensitive}@. Error code: %d", buf, 0x26u);
      }
    }

    lStringCopy = v24;
  }

  else
  {
    v19 = WBS_LOG_CHANNEL_PREFIXSiriSuggestedSites();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138740483;
      v29 = stringCopy;
      v30 = 2117;
      v31 = queryCopy;
      v32 = 2117;
      v33 = profileCopy;
      _os_log_error_impl(&dword_1BB6F3000, v19, OS_LOG_TYPE_ERROR, "Unable to insert an ignored suggested site, due to an invalid URL: %{sensitive}@ query: %{sensitive}@ profile: %{sensitive}@.", buf, 0x20u);
    }
  }
}

- (void)_updateTimestampsOfIgnoredSiriSuggestedSitesInProfile:(id)profile query:(id)query visitedURLString:(id)string
{
  v21 = *MEMORY[0x1E69E9840];
  profileCopy = profile;
  queryCopy = query;
  stringCopy = string;
  database = [(WBSSQLiteStore *)self database];
  v9 = [MEMORY[0x1E695DF00] now];
  [v9 timeIntervalSinceReferenceDate];
  *buf = v10;
  v11 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<double,NSString * {__strong}&,NSString * {__strong}&,NSString * {__strong}&>(database, 0, @"UPDATE ignored_siri_suggested_sites SET timestamp = ?, visitedURL = ? WHERE profile = ? AND query = ?", buf, &stringCopy, &profileCopy, &queryCopy);

  if (v11 != 101)
  {
    v12 = WBS_LOG_CHANNEL_PREFIXSiriSuggestedSites();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138478339;
      *&buf[4] = profileCopy;
      v17 = 2113;
      v18 = queryCopy;
      v19 = 1024;
      v20 = v11;
      _os_log_error_impl(&dword_1BB6F3000, v12, OS_LOG_TYPE_ERROR, "Failed to update the timestamps of ignored suggested sites with profile: %{private}@ and query = %{private}@. Error code: %d", buf, 0x1Cu);
    }
  }
}

- (void)_removeIgnoredSiriSuggestedSitesInProfile:(id)profile afterDate:(id)date
{
  v19 = *MEMORY[0x1E69E9840];
  profileCopy = profile;
  dateCopy = date;
  database = [(WBSSQLiteStore *)self database];
  [dateCopy timeIntervalSinceReferenceDate];
  *buf = v8;
  v9 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * {__strong}&,double>(database, 0, @"DELETE FROM ignored_siri_suggested_sites WHERE profile = ? AND timestamp > ?", &profileCopy, buf);

  if (v9 != 101)
  {
    v10 = WBS_LOG_CHANNEL_PREFIXSiriSuggestedSites();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = profileCopy;
      [dateCopy timeIntervalSinceReferenceDate];
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

- (void)_removeIgnoredSiriSuggestedSitesInProfile:(id)profile query:(id)query
{
  v17 = *MEMORY[0x1E69E9840];
  profileCopy = profile;
  queryCopy = query;
  database = [(WBSSQLiteStore *)self database];
  v7 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * {__strong}&,NSString * {__strong}&>(database, 0, @"DELETE FROM ignored_siri_suggested_sites WHERE profile = ? AND query = ?", &profileCopy, &queryCopy);

  if (v7 != 101)
  {
    v8 = WBS_LOG_CHANNEL_PREFIXSiriSuggestedSites();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138740483;
      v12 = profileCopy;
      v13 = 2117;
      v14 = queryCopy;
      v15 = 1024;
      v16 = v7;
      _os_log_error_impl(&dword_1BB6F3000, v8, OS_LOG_TYPE_ERROR, "Failed to delete the ignored suggested sites with profile: %{sensitive}@ and query = %{sensitive}@. Error code: %d", buf, 0x1Cu);
    }
  }
}

- (void)_removeIgnoredSiriSuggestedSitesInProfile:(id)profile visitedURLHost:(id)host
{
  v17 = *MEMORY[0x1E69E9840];
  profileCopy = profile;
  hostCopy = host;
  database = [(WBSSQLiteStore *)self database];
  v7 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * {__strong}&,NSString * {__strong}&>(database, 0, @"DELETE FROM ignored_siri_suggested_sites WHERE profile = ? AND visitedURL LIKE '%%' || ? || '%%'", &profileCopy, &hostCopy);

  if (v7 != 101)
  {
    v8 = WBS_LOG_CHANNEL_PREFIXSiriSuggestedSites();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138740483;
      v12 = profileCopy;
      v13 = 2117;
      v14 = hostCopy;
      v15 = 1024;
      v16 = v7;
      _os_log_error_impl(&dword_1BB6F3000, v8, OS_LOG_TYPE_ERROR, "Failed to delete the ignored suggested sites with profile: %{sensitive}@ and visited URL host = %{sensitive}@. Error code: %d", buf, 0x1Cu);
    }
  }
}

- (void)_removeIgnoredSiriSuggestedSitesBeforeDate:(id)date
{
  v10[3] = *MEMORY[0x1E69E9840];
  dateCopy = date;
  database = [(WBSSQLiteStore *)self database];
  [dateCopy timeIntervalSinceReferenceDate];
  v10[0] = v6;
  v7 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<double>(database, 0, @"DELETE FROM ignored_siri_suggested_sites WHERE timestamp < ?", v10);

  if (v7 != 101)
  {
    v8 = WBS_LOG_CHANNEL_PREFIXSiriSuggestedSites();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [dateCopy timeIntervalSinceReferenceDate];
      [(WBSIgnoredSiriSuggestedSitesDatabaseController *)v10 _removeIgnoredSiriSuggestedSitesBeforeDate:v7, v8, v9];
    }
  }
}

- (void)_removeIgnoredSiriSuggestedSitesWithURLHost:(id)host inProfile:(id)profile
{
  v17 = *MEMORY[0x1E69E9840];
  hostCopy = host;
  profileCopy = profile;
  database = [(WBSSQLiteStore *)self database];
  v7 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * {__strong}&,NSString * {__strong}&>(database, 0, @"DELETE FROM ignored_siri_suggested_sites WHERE profile = ? AND siriSuggestedSiteURL LIKE '%%://' || ? || '/%%'", &profileCopy, &hostCopy);

  if (v7 != 101)
  {
    v8 = WBS_LOG_CHANNEL_PREFIXSiriSuggestedSites();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138740483;
      v12 = profileCopy;
      v13 = 2117;
      v14 = hostCopy;
      v15 = 1024;
      v16 = v7;
      _os_log_error_impl(&dword_1BB6F3000, v8, OS_LOG_TYPE_ERROR, "Failed to delete the ignored suggested sites with profile: %{sensitive}@ and host: %{sensitive}@. Error code: %d", buf, 0x1Cu);
    }
  }
}

- (id)_getIgnoredSiriSuggestedSitesURLStringsInProfile:(id)profile withQuery:(id)query
{
  v29 = *MEMORY[0x1E69E9840];
  profileCopy = profile;
  queryCopy = query;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v21 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  database = [(WBSSQLiteStore *)self database];
  v8 = SafariShared::WBSSQLiteDatabaseFetch<NSString * {__strong}&,NSString * {__strong}&>(database, @"SELECT siriSuggestedSiteURL, ignoreCount FROM ignored_siri_suggested_sites WHERE profile = ? AND query LIKE ? || '%%'", &profileCopy, &queryCopy);

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
        v15 = [dictionary objectForKeyedSubscript:v14];
        integerValue = [v15 integerValue];

        v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:integerValue + v13];
        [dictionary setObject:v17 forKeyedSubscript:v14];

        v18 = [dictionary objectForKeyedSubscript:v14];
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

  statement = [v9 statement];
  [statement invalidate];

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