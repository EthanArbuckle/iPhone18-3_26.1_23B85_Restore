@interface WBSContentBlockerStatisticsSQLiteStore
+ (BOOL)storeExistsForProfileWithIdentifier:(id)a3;
+ (NSArray)allStores;
+ (WBSContentBlockerStatisticsSQLiteStore)standardStore;
+ (id)_databaseURLForProfileWithIdentifier:(id)a3;
+ (id)_defaultDatabaseURL;
+ (id)storeForProfileWithIdentifier:(id)a3;
- (BOOL)_createDatabaseSchemaIfNeeded;
- (BOOL)_openDatabaseIfNeededFallingBackToInMemory:(BOOL)a3;
- (BOOL)_tryOpenDatabase:(id *)a3;
- (WBSContentBlockerStatisticsSQLiteStore)initWithDatabaseURL:(id)a3;
- (int64_t)_idForFirstPartyWithHighLevelDomain:(id)a3;
- (int64_t)_idForThirdPartyWithHighLevelDomain:(id)a3;
- (int64_t)_schemaVersion;
- (void)_clearStatisticsAfter:(id)a3 before:(id)a4;
- (void)_clearStatisticsForDomain:(id)a3;
- (void)_closeDatabaseOnDatabaseQueue;
- (void)_deleteDatabase;
- (void)_deleteUnusedDomains;
- (void)blockedThirdPartiesAfter:(id)a3 before:(id)a4 onFirstParty:(id)a5 completionHandler:(id)a6;
- (void)clearAllStatisticsWithCompletionHandler:(id)a3;
- (void)clearStatisticsAfter:(id)a3 before:(id)a4;
- (void)clearStatisticsForDomains:(id)a3;
- (void)closeDatabase;
- (void)dealloc;
- (void)recordThirdPartyResourceBlocked:(id)a3 onFirstParty:(id)a4 completionHandler:(id)a5;
@end

@implementation WBSContentBlockerStatisticsSQLiteStore

+ (WBSContentBlockerStatisticsSQLiteStore)standardStore
{
  if (+[WBSContentBlockerStatisticsSQLiteStore standardStore]::onceToken != -1)
  {
    +[WBSContentBlockerStatisticsSQLiteStore standardStore];
  }

  v3 = +[WBSContentBlockerStatisticsSQLiteStore standardStore]::sharedStore;

  return v3;
}

void __55__WBSContentBlockerStatisticsSQLiteStore_standardStore__block_invoke()
{
  v0 = [WBSContentBlockerStatisticsSQLiteStore alloc];
  v3 = +[WBSContentBlockerStatisticsSQLiteStore _defaultDatabaseURL];
  v1 = [(WBSContentBlockerStatisticsSQLiteStore *)v0 initWithDatabaseURL:?];
  v2 = +[WBSContentBlockerStatisticsSQLiteStore standardStore]::sharedStore;
  +[WBSContentBlockerStatisticsSQLiteStore standardStore]::sharedStore = v1;
}

+ (NSArray)allStores
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  v4 = [a1 standardStore];
  v5 = [v3 arrayWithObject:v4];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = allProfileDatabaseIdentifiers();
  v7 = [v6 copy];

  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = [a1 storeForProfileWithIdentifier:*(*(&v14 + 1) + 8 * i)];
        [v5 addObject:v11];
      }

      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];

  return v12;
}

+ (id)storeForProfileWithIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:*MEMORY[0x1E69C8B58]])
  {
    v5 = [a1 standardStore];
  }

  else
  {
    v6 = storesByProfileIdentifier();
    v5 = [v6 objectForKey:v4];

    if (!v5)
    {
      v7 = [a1 _databaseURLForProfileWithIdentifier:v4];
      v5 = [[WBSContentBlockerStatisticsSQLiteStore alloc] initWithDatabaseURL:v7];
      v8 = storesByProfileIdentifier();
      [v8 setObject:v5 forKey:v4];

      v9 = allProfileDatabaseIdentifiers();
      [v9 addObject:v4];
    }
  }

  return v5;
}

+ (BOOL)storeExistsForProfileWithIdentifier:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:*MEMORY[0x1E69C8B58]])
  {
    v4 = 1;
  }

  else
  {
    v5 = allProfileDatabaseIdentifiers();
    v4 = [v5 containsObject:v3];
  }

  return v4;
}

- (WBSContentBlockerStatisticsSQLiteStore)initWithDatabaseURL:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = WBSContentBlockerStatisticsSQLiteStore;
  v6 = [(WBSContentBlockerStatisticsSQLiteStore *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_databaseURL, a3);
    v8 = dispatch_get_global_queue(17, 0);
    v9 = dispatch_queue_create_with_target_V2("com.apple.SafariShared.WBSContentBlockerStatisticsSQLiteStore", 0, v8);
    databaseQueue = v7->_databaseQueue;
    v7->_databaseQueue = v9;

    v11 = v7;
  }

  return v7;
}

- (void)dealloc
{
  v3 = self->_database;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__WBSContentBlockerStatisticsSQLiteStore_dealloc__block_invoke;
  block[3] = &unk_1E7FB6F80;
  v8 = v3;
  v5 = v3;
  dispatch_async(databaseQueue, block);

  v6.receiver = self;
  v6.super_class = WBSContentBlockerStatisticsSQLiteStore;
  [(WBSContentBlockerStatisticsSQLiteStore *)&v6 dealloc];
}

- (void)recordThirdPartyResourceBlocked:(id)a3 onFirstParty:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 host];
  v12 = [v11 safari_highLevelDomainFromHost];

  v13 = [v9 host];
  v14 = [v13 safari_highLevelDomainFromHost];

  databaseQueue = self->_databaseQueue;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __105__WBSContentBlockerStatisticsSQLiteStore_recordThirdPartyResourceBlocked_onFirstParty_completionHandler___block_invoke;
  v19[3] = &unk_1E7FB6F58;
  v19[4] = self;
  v20 = v12;
  v21 = v14;
  v22 = v10;
  v16 = v14;
  v17 = v12;
  v18 = v10;
  dispatch_async(databaseQueue, v19);
}

uint64_t __105__WBSContentBlockerStatisticsSQLiteStore_recordThirdPartyResourceBlocked_onFirstParty_completionHandler___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) _openDatabaseIfNeeded])
  {
    v13 = [*(a1 + 32) _idForThirdPartyWithHighLevelDomain:*(a1 + 40)];
    v12 = [*(a1 + 32) _idForFirstPartyWithHighLevelDomain:*(a1 + 48)];
    v2 = [MEMORY[0x1E695DF00] date];
    [v2 timeIntervalSince1970];
    v4 = v3;

    v11 = v4;
    v5 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<long &,long &,double &>(*(*(a1 + 32) + 24), 0, @"INSERT INTO BlockedResources (thirdPartyDomainID, firstPartyDomainID, lastSeen) VALUES (?,?,?) ON CONFLICT(thirdPartyDomainID, firstPartyDomainID) DO UPDATE SET lastSeen = excluded.lastSeen", &v13, &v12, &v11);
    if (v5 != 101)
    {
      v6 = WBS_LOG_CHANNEL_PREFIXContentBlockers();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v9 = [*(*(a1 + 32) + 24) lastErrorWithMethodName:"-[WBSContentBlockerStatisticsSQLiteStore recordThirdPartyResourceBlocked:onFirstParty:completionHandler:]_block_invoke"];
        v10 = [v9 safari_privacyPreservingDescription];
        *buf = 138543618;
        v15 = v10;
        v16 = 1024;
        v17 = v5;
        _os_log_error_impl(&dword_1BB6F3000, v6, OS_LOG_TYPE_ERROR, "Failed to insert into BlockedResources table: %{public}@ (%d)", buf, 0x12u);
      }
    }

    result = *(a1 + 56);
    if (result)
    {
      return (*(result + 16))(result, v5 == 101);
    }
  }

  else
  {
    result = *(a1 + 56);
    if (result)
    {
      v8 = *(result + 16);

      return v8();
    }
  }

  return result;
}

- (void)blockedThirdPartiesAfter:(id)a3 before:(id)a4 onFirstParty:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  [v10 timeIntervalSince1970];
  v15 = v14;
  [v11 timeIntervalSince1970];
  v17 = v16;
  v18 = [v12 length];
  databaseQueue = self->_databaseQueue;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __105__WBSContentBlockerStatisticsSQLiteStore_blockedThirdPartiesAfter_before_onFirstParty_completionHandler___block_invoke;
  v22[3] = &unk_1E7FC48C8;
  v23 = v12;
  v24 = v13;
  v27 = v18 != 0;
  v25 = v15;
  v26 = v17;
  v22[4] = self;
  v20 = v12;
  v21 = v13;
  dispatch_async(databaseQueue, v22);
}

void __105__WBSContentBlockerStatisticsSQLiteStore_blockedThirdPartiesAfter_before_onFirstParty_completionHandler___block_invoke(uint64_t a1)
{
  v19[1] = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) _openDatabaseIfNeeded])
  {
    v2 = [MEMORY[0x1E695DF90] dictionary];
    if (*(a1 + 72))
    {
      v3 = @" AND FirstPartyDomains.domain = ?";
    }

    else
    {
      v3 = &stru_1F3A5E418;
    }

    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"WHERE lastSeen >= ? AND lastSeen <= ?%@", v3];
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT ThirdPartyDomains.domain, FirstPartyDomains.domain, lastSeen FROM BlockedResources JOIN ThirdPartyDomains on BlockedResources.thirdPartyDomainID = ThirdPartyDomains.thirdPartyDomainID JOIN FirstPartyDomains on BlockedResources.firstPartyDomainID = FirstPartyDomains.firstPartyDomainID %@", v16];
    v4 = *(*(a1 + 32) + 24);
    if (*(a1 + 72) == 1)
    {
      SafariShared::WBSSQLiteDatabaseFetch<double const&,double const&,NSString * const {__strong}&>(v4, v17, (a1 + 56), (a1 + 64), (a1 + 40));
    }

    else
    {
      SafariShared::WBSSQLiteDatabaseFetch<double const&,double const&>(v4, v17, (a1 + 56), (a1 + 64));
    }
    v6 = ;
    while (1)
    {
      v7 = [v6 nextObject];
      v8 = v7;
      if (!v7)
      {
        break;
      }

      v9 = [v7 stringAtIndex:0];
      v10 = [WBSContentBlockerStatisticsFirstParty alloc];
      v11 = [v8 stringAtIndex:1];
      [v8 doubleAtIndex:2];
      v12 = [(WBSContentBlockerStatisticsFirstParty *)v10 initWithDomain:v11 lastSeen:?];

      v13 = [v2 objectForKeyedSubscript:v9];
      LOBYTE(v11) = v13 == 0;

      if (v11)
      {
        v19[0] = v12;
        v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
        v15 = [v14 mutableCopy];
        [v2 setObject:v15 forKeyedSubscript:v9];
      }

      else
      {
        v14 = [v2 objectForKeyedSubscript:v9];
        [v14 addObject:v12];
      }
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v5 = *(a1 + 48);
    v18 = [MEMORY[0x1E695DF20] dictionary];
    (*(v5 + 16))(v5);
  }
}

- (void)clearAllStatisticsWithCompletionHandler:(id)a3
{
  v4 = a3;
  databaseQueue = self->_databaseQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __82__WBSContentBlockerStatisticsSQLiteStore_clearAllStatisticsWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7FB6F08;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(databaseQueue, v7);
}

uint64_t __82__WBSContentBlockerStatisticsSQLiteStore_clearAllStatisticsWithCompletionHandler___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _openDatabaseIfNeededFallingBackToInMemory:0])
  {
    v2 = *(a1 + 32);
    v3 = [MEMORY[0x1E695DF00] distantPast];
    v4 = [MEMORY[0x1E695DF00] distantFuture];
    [v2 _clearStatisticsAfter:v3 before:v4];
  }

  else
  {
    v5 = WBS_LOG_CHANNEL_PREFIXContentBlockers();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_INFO, "Failed to open database to clear statistics. Deleting.", v7, 2u);
    }

    [*(a1 + 32) _deleteDatabase];
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)clearStatisticsAfter:(id)a3 before:(id)a4
{
  v6 = a3;
  v7 = a4;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__WBSContentBlockerStatisticsSQLiteStore_clearStatisticsAfter_before___block_invoke;
  block[3] = &unk_1E7FB7DD0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(databaseQueue, block);
}

uint64_t __70__WBSContentBlockerStatisticsSQLiteStore_clearStatisticsAfter_before___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _openDatabaseIfNeeded];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v2 _clearStatisticsAfter:v3 before:v4];
}

- (void)clearStatisticsForDomains:(id)a3
{
  v4 = a3;
  databaseQueue = self->_databaseQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__WBSContentBlockerStatisticsSQLiteStore_clearStatisticsForDomains___block_invoke;
  v7[3] = &unk_1E7FB7F10;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(databaseQueue, v7);
}

uint64_t __68__WBSContentBlockerStatisticsSQLiteStore_clearStatisticsForDomains___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _openDatabaseIfNeeded];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(a1 + 40);
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v3)
  {
    v5 = *v14;
    *&v4 = 138477827;
    v12 = v4;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = [v7 safari_highLevelDomainFromHost];
        v9 = [v7 isEqualToString:v8];

        if (v9)
        {
          [*(a1 + 32) _clearStatisticsForDomain:v7];
        }

        else
        {
          v10 = WBS_LOG_CHANNEL_PREFIXContentBlockers();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *buf = v12;
            v18 = v7;
            _os_log_error_impl(&dword_1BB6F3000, v10, OS_LOG_TYPE_ERROR, "Could not remove content blocker statistics for non high-level domain %{private}@", buf, 0xCu);
          }
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v3);
  }

  return [*(a1 + 32) _deleteUnusedDomains];
}

- (void)closeDatabase
{
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__WBSContentBlockerStatisticsSQLiteStore_closeDatabase__block_invoke;
  block[3] = &unk_1E7FB6F80;
  block[4] = self;
  dispatch_sync(databaseQueue, block);
}

+ (id)_defaultDatabaseURL
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [v2 safari_settingsDirectoryURL];
  v4 = [v3 URLByAppendingPathComponent:@"ContentBlockerStatistics.db" isDirectory:0];

  return v4;
}

+ (id)_databaseURLForProfileWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [v4 safari_profileDirectoryURLWithID:v3 createIfNeeded:0];
  v6 = [v5 URLByAppendingPathComponent:@"ContentBlockerStatistics.db" isDirectory:0];

  return v6;
}

- (void)_closeDatabaseOnDatabaseQueue
{
  [(WBSSQLiteDatabase *)self->_database close];
  database = self->_database;
  self->_database = 0;
}

- (BOOL)_openDatabaseIfNeededFallingBackToInMemory:(BOOL)a3
{
  v22 = *MEMORY[0x1E69E9840];
  if (!self->_database)
  {
    v3 = a3;
    v20 = 0;
    v5 = [(WBSContentBlockerStatisticsSQLiteStore *)self _tryOpenDatabase:&v20];
    v6 = v20;
    v7 = v6;
    if (v5)
    {
      LOBYTE(v3) = 1;
LABEL_21:

      return v3;
    }

    if (([v6 safari_isSQLiteCorruptionError] & 1) != 0 || objc_msgSend(v7, "safari_isSQLiteError") && objc_msgSend(v7, "code") == 26)
    {
      [(WBSContentBlockerStatisticsSQLiteStore *)self _deleteDatabase];
      v19 = v7;
      v8 = [(WBSContentBlockerStatisticsSQLiteStore *)self _tryOpenDatabase:&v19];
      v9 = v19;

      if (v8)
      {
        LOBYTE(v3) = 1;
        v7 = v9;
        goto LABEL_21;
      }

      v7 = v9;
      if (!v3)
      {
        goto LABEL_21;
      }
    }

    else if (!v3)
    {
      goto LABEL_21;
    }

    v10 = [MEMORY[0x1E69C89E8] inMemoryDatabaseURL];
    databaseURL = self->_databaseURL;
    self->_databaseURL = v10;

    v12 = WBS_LOG_CHANNEL_PREFIXContentBlockers();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      v13 = [v7 safari_privacyPreservingDescription];
      [(WBSContentBlockerStatisticsSQLiteStore *)v13 _openDatabaseIfNeededFallingBackToInMemory:buf, v12];
    }

    v18 = v7;
    v14 = [(WBSContentBlockerStatisticsSQLiteStore *)self _tryOpenDatabase:&v18];
    v15 = v18;

    if (v14)
    {
      LOBYTE(v3) = 1;
    }

    else
    {
      v16 = WBS_LOG_CHANNEL_PREFIXContentBlockers();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [WBSContentBlockerStatisticsSQLiteStore _openDatabaseIfNeededFallingBackToInMemory:v16];
      }

      LOBYTE(v3) = 0;
    }

    v7 = v15;
    goto LABEL_21;
  }

  LOBYTE(v3) = 1;
  return v3;
}

- (void)_deleteDatabase
{
  databaseURL = self->_databaseURL;
  v14 = [MEMORY[0x1E69C89E8] inMemoryDatabaseURL];
  LOBYTE(databaseURL) = [(NSURL *)databaseURL isEqual:?];

  if ((databaseURL & 1) == 0)
  {
    v15 = [MEMORY[0x1E696AC08] defaultManager];
    v4 = [(NSURL *)self->_databaseURL absoluteString];
    [v15 removeItemAtURL:self->_databaseURL error:0];
    v5 = MEMORY[0x1E695DFF8];
    v6 = [v4 stringByAppendingString:@"-lock"];
    v7 = [v5 URLWithString:v6];
    [v15 removeItemAtURL:v7 error:0];

    v8 = MEMORY[0x1E695DFF8];
    v9 = [v4 stringByAppendingString:@"-shm"];
    v10 = [v8 URLWithString:v9];
    [v15 removeItemAtURL:v10 error:0];

    v11 = MEMORY[0x1E695DFF8];
    v12 = [v4 stringByAppendingString:@"-wal"];
    v13 = [v11 URLWithString:v12];
    [v15 removeItemAtURL:v13 error:0];
  }
}

- (BOOL)_tryOpenDatabase:(id *)a3
{
  v31 = *MEMORY[0x1E69E9840];
  p_databaseURL = &self->_databaseURL;
  v6 = [objc_alloc(MEMORY[0x1E69C89E8]) initWithURL:self->_databaseURL queue:self->_databaseQueue];
  database = self->_database;
  self->_database = v6;

  v8 = self->_database;
  v29 = 0;
  v9 = [(WBSSQLiteDatabase *)v8 openWithAccessType:3 error:&v29];
  v10 = v29;
  if ((v9 & 1) == 0)
  {
    v17 = WBS_LOG_CHANNEL_PREFIXContentBlockers();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = *p_databaseURL;
      v19 = [v10 safari_privacyPreservingDescription];
      [(WBSContentBlockerStatisticsSQLiteStore *)v18 _tryOpenDatabase:v19, v30];
    }

    v20 = self->_database;
    self->_database = 0;

    if (a3)
    {
      v21 = v10;
      v16 = 0;
      *a3 = v10;
      goto LABEL_21;
    }

LABEL_20:
    v16 = 0;
    goto LABEL_21;
  }

  v11 = *p_databaseURL;
  v12 = [MEMORY[0x1E69C89E8] inMemoryDatabaseURL];
  LOBYTE(v11) = [(NSURL *)v11 isEqual:v12];

  if ((v11 & 1) == 0)
  {
    SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"PRAGMA locking_mode = EXCLUSIVE");
  }

  v13 = self->_database;
  v28 = v10;
  v14 = [(WBSSQLiteDatabase *)v13 enableWAL:&v28];
  v15 = v28;

  v10 = v15;
  if ((v14 & 1) == 0)
  {
    if ([v15 code] == 5)
    {
      v22 = WBS_LOG_CHANNEL_PREFIXContentBlockers();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [(WBSContentBlockerStatisticsSQLiteStore *)&self->_databaseURL _tryOpenDatabase:v22];
      }
    }

    else
    {
      v23 = WBS_LOG_CHANNEL_PREFIXContentBlockers();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = *p_databaseURL;
        v25 = [v15 safari_privacyPreservingDescription];
        [(WBSContentBlockerStatisticsSQLiteStore *)v24 _tryOpenDatabase:v25, v30];
      }
    }

    if (a3)
    {
      v26 = v15;
      *a3 = v15;
    }

    goto LABEL_19;
  }

  SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"PRAGMA foreign_keys = ON");
  if (![(WBSContentBlockerStatisticsSQLiteStore *)self _createDatabaseSchemaIfNeeded])
  {
LABEL_19:
    [(WBSContentBlockerStatisticsSQLiteStore *)self _closeDatabaseOnDatabaseQueue];
    goto LABEL_20;
  }

  v16 = 1;
LABEL_21:

  return v16;
}

- (BOOL)_createDatabaseSchemaIfNeeded
{
  v25 = *MEMORY[0x1E69E9840];
  if ([(WBSContentBlockerStatisticsSQLiteStore *)self _schemaVersion])
  {
    return 1;
  }

  v4 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"CREATE TABLE IF NOT EXISTS FirstPartyDomains (firstPartyDomainID INTEGER PRIMARY KEY AUTOINCREMENT,domain TEXT NOT NULL UNIQUE ON CONFLICT FAIL)");
  if (v4 == 101)
  {
    v5 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"CREATE TABLE IF NOT EXISTS ThirdPartyDomains (thirdPartyDomainID INTEGER PRIMARY KEY AUTOINCREMENT,domain TEXT NOT NULL UNIQUE ON CONFLICT FAIL)");
    if (v5 == 101)
    {
      v6 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"CREATE TABLE IF NOT EXISTS BlockedResources (firstPartyDomainID INTEGER NOT NULL,thirdPartyDomainID INTEGER NOT NULL,lastSeen REAL NOT NULL,FOREIGN KEY (firstPartyDomainID) REFERENCES FirstPartyDomains(firstPartyDomainID) ON DELETE CASCADE,FOREIGN KEY (thirdPartyDomainID) REFERENCES ThirdPartyDomains(thirdPartyDomainID) ON DELETE CASCADE,PRIMARY KEY (firstPartyDomainID, thirdPartyDomainID))");
      if (v6 == 101)
      {
        v7 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"PRAGMA user_version = 1");
        if (v7 == 101)
        {
          return 1;
        }

        v8 = v7;
        v9 = WBS_LOG_CHANNEL_PREFIXContentBlockers();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = [(WBSSQLiteDatabase *)self->_database lastErrorWithMethodName:"[WBSContentBlockerStatisticsSQLiteStore _createDatabaseSchemaIfNeeded]"];
          v11 = [v10 safari_privacyPreservingDescription];
          v21 = 138543618;
          v22 = v11;
          v23 = 1024;
          v24 = v8;
          _os_log_error_impl(&dword_1BB6F3000, v9, OS_LOG_TYPE_ERROR, "Failed to set Content Blocker Statistics database schema version: %{public}@ (%d)", &v21, 0x12u);
        }
      }

      else
      {
        v18 = v6;
        v9 = WBS_LOG_CHANNEL_PREFIXContentBlockers();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v19 = [(WBSSQLiteDatabase *)self->_database lastErrorWithMethodName:"[WBSContentBlockerStatisticsSQLiteStore _createDatabaseSchemaIfNeeded]"];
          v20 = [v19 safari_privacyPreservingDescription];
          v21 = 138543618;
          v22 = v20;
          v23 = 1024;
          v24 = v18;
          _os_log_error_impl(&dword_1BB6F3000, v9, OS_LOG_TYPE_ERROR, "Failed to create BlockedResources table: %{public}@, (%d)", &v21, 0x12u);
        }
      }
    }

    else
    {
      v15 = v5;
      v9 = WBS_LOG_CHANNEL_PREFIXContentBlockers();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v16 = [(WBSSQLiteDatabase *)self->_database lastErrorWithMethodName:"[WBSContentBlockerStatisticsSQLiteStore _createDatabaseSchemaIfNeeded]"];
        v17 = [v16 safari_privacyPreservingDescription];
        v21 = 138543618;
        v22 = v17;
        v23 = 1024;
        v24 = v15;
        _os_log_error_impl(&dword_1BB6F3000, v9, OS_LOG_TYPE_ERROR, "Failed to create ThirdPartyDomains table: %{public}@ (%d)", &v21, 0x12u);
      }
    }
  }

  else
  {
    v12 = v4;
    v9 = WBS_LOG_CHANNEL_PREFIXContentBlockers();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = [(WBSSQLiteDatabase *)self->_database lastErrorWithMethodName:"[WBSContentBlockerStatisticsSQLiteStore _createDatabaseSchemaIfNeeded]"];
      v14 = [v13 safari_privacyPreservingDescription];
      v21 = 138543618;
      v22 = v14;
      v23 = 1024;
      v24 = v12;
      _os_log_error_impl(&dword_1BB6F3000, v9, OS_LOG_TYPE_ERROR, "Failed to create FirstPartyDomains table: %{public}@ (%d)", &v21, 0x12u);
    }
  }

  return 0;
}

- (int64_t)_schemaVersion
{
  v2 = SafariShared::WBSSQLiteDatabaseFetch<>(self->_database, @"PRAGMA user_version");
  v3 = [v2 nextObject];
  v4 = [v3 intAtIndex:0];

  v5 = [v2 statement];
  [v5 invalidate];

  return v4;
}

- (int64_t)_idForThirdPartyWithHighLevelDomain:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v4 = SafariShared::WBSSQLiteDatabaseFetch<NSString * {__strong}&>(self->_database, @"SELECT thirdPartyDomainID FROM ThirdPartyDomains WHERE domain = ?", &v13);
  v5 = [v4 nextObject];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 intAtIndex:0];
  }

  else
  {
    v8 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * {__strong}&>(self->_database, 0, @"INSERT INTO ThirdPartyDomains (domain) VALUES (?)", &v13);
    if (v8 == 101)
    {
      v7 = [(WBSSQLiteDatabase *)self->_database lastInsertRowID];
    }

    else
    {
      v9 = WBS_LOG_CHANNEL_PREFIXContentBlockers();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = [(WBSSQLiteDatabase *)self->_database lastErrorWithMethodName:"[WBSContentBlockerStatisticsSQLiteStore _idForThirdPartyWithHighLevelDomain:]"];
        v12 = [v11 safari_privacyPreservingDescription];
        *buf = 138543618;
        v15 = v12;
        v16 = 1024;
        v17 = v8;
        _os_log_error_impl(&dword_1BB6F3000, v9, OS_LOG_TYPE_ERROR, "Failed to insert row into ThirdPartyDomains: %{public}@ (%d)", buf, 0x12u);
      }

      v7 = 0x7FFFFFFFFFFFFFFFLL;
      v6 = v9;
    }
  }

  return v7;
}

- (int64_t)_idForFirstPartyWithHighLevelDomain:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v4 = SafariShared::WBSSQLiteDatabaseFetch<NSString * {__strong}&>(self->_database, @"SELECT firstPartyDomainID FROM FirstPartyDomains WHERE domain = ?", &v13);
  v5 = [v4 nextObject];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 intAtIndex:0];
  }

  else
  {
    v8 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * {__strong}&>(self->_database, 0, @"INSERT INTO FirstPartyDomains (domain) VALUES (?)", &v13);
    if (v8 == 101)
    {
      v7 = [(WBSSQLiteDatabase *)self->_database lastInsertRowID];
    }

    else
    {
      v9 = WBS_LOG_CHANNEL_PREFIXContentBlockers();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = [(WBSSQLiteDatabase *)self->_database lastErrorWithMethodName:"[WBSContentBlockerStatisticsSQLiteStore _idForFirstPartyWithHighLevelDomain:]"];
        v12 = [v11 safari_privacyPreservingDescription];
        *buf = 138543618;
        v15 = v12;
        v16 = 1024;
        v17 = v8;
        _os_log_error_impl(&dword_1BB6F3000, v9, OS_LOG_TYPE_ERROR, "Failed to insert row into FirstPartyDomains: %{public}@ (%d)", buf, 0x12u);
      }

      v7 = 0x7FFFFFFFFFFFFFFFLL;
      v6 = v9;
    }
  }

  return v7;
}

- (void)_clearStatisticsAfter:(id)a3 before:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  database = self->_database;
  [v6 timeIntervalSince1970];
  *buf = v9;
  [v7 timeIntervalSince1970];
  v15 = v10;
  v11 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<double,double>(database, 0, @"DELETE FROM BlockedResources WHERE lastSeen >= ? AND lastSeen <= ?", buf, &v15);
  if (v11 != 101)
  {
    v12 = WBS_LOG_CHANNEL_PREFIXContentBlockers();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [(WBSSQLiteDatabase *)self->_database lastErrorWithMethodName:"[WBSContentBlockerStatisticsSQLiteStore _clearStatisticsAfter:before:]"];
      v14 = [v13 safari_privacyPreservingDescription];
      *buf = 138543618;
      *&buf[4] = v14;
      v17 = 1024;
      v18 = v11;
      _os_log_error_impl(&dword_1BB6F3000, v12, OS_LOG_TYPE_ERROR, "Unable to clear rows from Blocked Resources: %{public}@ (%d)", buf, 0x12u);
    }
  }

  [(WBSContentBlockerStatisticsSQLiteStore *)self _deleteUnusedDomains];
}

- (void)_clearStatisticsForDomain:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v4 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * {__strong}&>(self->_database, 0, @"DELETE FROM FirstPartyDomains WHERE domain = ?", &v8);
  if (v4 != 101)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXContentBlockers();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [(WBSSQLiteDatabase *)self->_database lastErrorWithMethodName:"[WBSContentBlockerStatisticsSQLiteStore _clearStatisticsForDomain:]"];
      v7 = [v6 safari_privacyPreservingDescription];
      *buf = 138543618;
      v10 = v7;
      v11 = 1024;
      v12 = v4;
      _os_log_error_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_ERROR, "Unable to clear row from First Party Domains: %{public}@ (%d)", buf, 0x12u);
    }
  }
}

- (void)_deleteUnusedDomains
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"DELETE FROM FirstPartyDomains WHERE (SELECT COUNT(rowid) FROM BlockedResources WHERE BlockedResources.firstPartyDomainID = FirstPartyDomains.firstPartyDomainID) = 0");
  if (v3 != 101)
  {
    v4 = v3;
    v5 = WBS_LOG_CHANNEL_PREFIXContentBlockers();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = [(WBSSQLiteDatabase *)self->_database lastErrorWithMethodName:"[WBSContentBlockerStatisticsSQLiteStore _deleteUnusedDomains]"];
      v9 = [v8 safari_privacyPreservingDescription];
      v12 = 138543618;
      v13 = v9;
      v14 = 1024;
      v15 = v4;
      _os_log_error_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_ERROR, "Unable to clear rows from First Party Domains: %{public}@ (%d)", &v12, 0x12u);
    }
  }

  v6 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"DELETE FROM ThirdPartyDomains WHERE (SELECT COUNT(rowid) FROM BlockedResources WHERE BlockedResources.thirdPartyDomainID = ThirdPartyDomains.thirdPartyDomainID) = 0");
  if (v6 != 101)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXContentBlockers();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = [(WBSSQLiteDatabase *)self->_database lastErrorWithMethodName:"[WBSContentBlockerStatisticsSQLiteStore _deleteUnusedDomains]"];
      v11 = [v10 safari_privacyPreservingDescription];
      v12 = 138412546;
      v13 = v11;
      v14 = 1024;
      v15 = v6;
      _os_log_error_impl(&dword_1BB6F3000, v7, OS_LOG_TYPE_ERROR, "Unable to clear rows from Third Party Domains: %@ (%d)", &v12, 0x12u);
    }
  }
}

- (void)_openDatabaseIfNeededFallingBackToInMemory:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_fault_impl(&dword_1BB6F3000, log, OS_LOG_TYPE_FAULT, "Failling back to in-memory database: %{public}@", buf, 0xCu);
}

- (void)_tryOpenDatabase:(uint64_t)a3 .cold.1(uint64_t a1, void *a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_3(a1, a2, a3, 5.8081e-34);
  _os_log_error_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_ERROR, "Failed to open Content Blocker Statistics SQLite store at %{private}@. Error: %{public}@", v4, 0x16u);
}

- (void)_tryOpenDatabase:(uint64_t)a3 .cold.2(uint64_t a1, void *a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_3(a1, a2, a3, 5.8081e-34);
  _os_log_error_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_ERROR, "Failed to enable write-ahead logging on Content Blocker Statistics SQLite store at %{private}@: %{public}@", v4, 0x16u);
}

- (void)_tryOpenDatabase:(uint64_t *)a1 .cold.3(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 138477827;
  v4 = v2;
  _os_log_error_impl(&dword_1BB6F3000, a2, OS_LOG_TYPE_ERROR, "Failed to acquire exclusive access to Content Blocker Statistics SQLite store at %{private}@.", &v3, 0xCu);
}

@end