@interface WLSQLController
- (BOOL)_foundHandleIDs:(id)ds representSameGroupMessageAsHandleIDs:(id)iDs handleIDsAreComplete:(BOOL)complete;
- (BOOL)deleteAccountsAndSummariesForMigrator:(id)migrator device:(id)device;
- (WLSQLController)init;
- (id)_migratableAppsForDevice:(id)device;
- (id)_sqlite3_column_NSDateForStatement:(sqlite3_stmt *)statement column:(int)column;
- (id)accountsForMigrator:(id)migrator device:(id)device;
- (id)dataForSummary:(id)summary;
- (id)groupMessageInfoMatchingSortedHandleIDs:(id)ds handleIDsAreComplete:(BOOL)complete didMatchExactly:(BOOL *)exactly;
- (id)groupMessageInfoMatchingSourceThreadID:(id)d;
- (id)messagePhoneNumberIccForCcAcNumber:(id)number;
- (id)migrationErrors;
- (id)migrationMetadataForSourceDevice:(id)device strictMatch:(BOOL)match;
- (id)statisticsForContentType:(id)type;
- (id)summariesForAccount:(id)account;
- (id)summariesForAccounts:(id)accounts sortedByModifiedDate:(BOOL)date;
- (int)_sqlite3_bind_NSDate:(id)date forStatement:(sqlite3_stmt *)statement position:(int)position;
- (int64_t)_performQuery:(id)query rowHandler:(id)handler;
- (int64_t)_schemaVersion;
- (unint64_t)_totalSummarySegmentCountForAccounts:(id)accounts migrationStateComparisonOperator:(id)operator migrationState:(int64_t)state;
- (unint64_t)insertAccount:(id)account migrator:(id)migrator device:(id)device;
- (unint64_t)insertRecordSummary:(id)summary account:(id)account;
- (void)_deleteAccounts;
- (void)_deleteSummaries;
- (void)_ensureCorrectSchema;
- (void)_insertStatistics_onDatabaseQueue:(id)queue;
- (void)_onDatabaseQueue_updateMigrationState:(int)state forSummary:(id)summary removeData:(BOOL)data;
- (void)_openDatabase;
- (void)closeDatabase;
- (void)dealloc;
- (void)deleteAccountsAndSummariesForAllDevices;
- (void)deleteGroupMessageInfoForAllDevices;
- (void)deleteMessagePhoneNumbersForAllDevices;
- (void)deleteMetadataForAllDevices;
- (void)deleteMigratableAppsForAllDevices;
- (void)deleteStatisticsForAllDevices;
- (void)deleteSuggestedAppBundleIDsForAllDevices;
- (void)deleteSummaryDataForAllDevices;
- (void)insertGroupMessageInfoWithSortedHandleIDs:(id)ds handleIDsAreComplete:(BOOL)complete roomName:(id)name groupID:(id)d;
- (void)insertGroupMessageInfoWithSourceThreadID:(id)d roomName:(id)name groupID:(id)iD;
- (void)insertMessagePhoneNumberWithIcc:(id)icc ccAcNumber:(id)number;
- (void)insertMetadata:(id)metadata forSourceDevice:(id)device;
- (void)insertMigratableApp:(id)app forDevice:(id)device;
- (void)removeDataAndSetDidImportForSummary:(id)summary;
- (void)setData:(id)data forSummary:(id)summary;
- (void)setDidDownloadForSummary:(id)summary forSourceDevice:(id)device;
- (void)setMetadata:(id)metadata forSourceDevice:(id)device;
- (void)setMigrationError:(id)error forSummary:(id)summary;
- (void)setWillImportForSummary:(id)summary;
- (void)totalSummaryItemSizeForAccounts:(id)accounts addOverhead:(BOOL)overhead completion:(id)completion;
- (void)updateModifiedDateForSummary:(id)summary;
- (void)updateStatistics:(id)statistics;
@end

@implementation WLSQLController

- (WLSQLController)init
{
  v8.receiver = self;
  v8.super_class = WLSQLController;
  v2 = [(WLSQLController *)&v8 init];
  if (v2)
  {
    v3 = NSHomeDirectory();
    v4 = [v3 stringByAppendingPathComponent:@"/Library/WelcomeKit/migration.db"];
    [(WLSQLController *)v2 setDatabasePath:v4];

    v5 = dispatch_queue_create("com.apple.welcomekit.WLSQLController.databaseQueue", 0);
    databaseQueue = v2->_databaseQueue;
    v2->_databaseQueue = v5;

    [(WLSQLController *)v2 _openDatabase];
  }

  return v2;
}

- (void)dealloc
{
  [(WLSQLController *)self closeDatabase];
  v3.receiver = self;
  v3.super_class = WLSQLController;
  [(WLSQLController *)&v3 dealloc];
}

- (void)deleteMetadataForAllDevices
{
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__WLSQLController_deleteMetadataForAllDevices__block_invoke;
  block[3] = &unk_279EB54A0;
  block[4] = self;
  dispatch_sync(databaseQueue, block);
}

uint64_t __46__WLSQLController_deleteMetadataForAllDevices__block_invoke(uint64_t a1)
{
  ppStmt = 0;
  if (sqlite3_prepare(*(*(a1 + 32) + 8), "DELETE FROM metadata", -1, &ppStmt, 0))
  {
    sqlite3_errcode(*(*(a1 + 32) + 8));
    sqlite3_errmsg(*(*(a1 + 32) + 8));
    return _WLLog();
  }

  else
  {
    if (sqlite3_step(ppStmt) != 101)
    {
      sqlite3_errcode(*(*(a1 + 32) + 8));
      sqlite3_errmsg(*(*(a1 + 32) + 8));
      _WLLog();
    }

    return sqlite3_finalize(ppStmt);
  }
}

- (void)deleteAccountsAndSummariesForAllDevices
{
  [(WLSQLController *)self _deleteSummaries];

  [(WLSQLController *)self _deleteAccounts];
}

- (void)deleteMigratableAppsForAllDevices
{
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__WLSQLController_deleteMigratableAppsForAllDevices__block_invoke;
  block[3] = &unk_279EB54A0;
  block[4] = self;
  dispatch_sync(databaseQueue, block);
}

uint64_t __52__WLSQLController_deleteMigratableAppsForAllDevices__block_invoke(uint64_t a1)
{
  ppStmt = 0;
  if (sqlite3_prepare(*(*(a1 + 32) + 8), "DELETE FROM migratableApps", -1, &ppStmt, 0))
  {
    sqlite3_errcode(*(*(a1 + 32) + 8));
    sqlite3_errmsg(*(*(a1 + 32) + 8));
    return _WLLog();
  }

  else
  {
    if (sqlite3_step(ppStmt) != 101)
    {
      sqlite3_errcode(*(*(a1 + 32) + 8));
      sqlite3_errmsg(*(*(a1 + 32) + 8));
      _WLLog();
    }

    return sqlite3_finalize(ppStmt);
  }
}

- (void)deleteSuggestedAppBundleIDsForAllDevices
{
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__WLSQLController_deleteSuggestedAppBundleIDsForAllDevices__block_invoke;
  block[3] = &unk_279EB54A0;
  block[4] = self;
  dispatch_sync(databaseQueue, block);
}

uint64_t __59__WLSQLController_deleteSuggestedAppBundleIDsForAllDevices__block_invoke(uint64_t a1)
{
  ppStmt = 0;
  if (sqlite3_prepare(*(*(a1 + 32) + 8), "DELETE FROM bundleIDs", -1, &ppStmt, 0))
  {
    sqlite3_errcode(*(*(a1 + 32) + 8));
    sqlite3_errmsg(*(*(a1 + 32) + 8));
    return _WLLog();
  }

  else
  {
    if (sqlite3_step(ppStmt) != 101)
    {
      sqlite3_errcode(*(*(a1 + 32) + 8));
      sqlite3_errmsg(*(*(a1 + 32) + 8));
      _WLLog();
    }

    return sqlite3_finalize(ppStmt);
  }
}

- (void)_deleteSummaries
{
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__WLSQLController__deleteSummaries__block_invoke;
  block[3] = &unk_279EB54A0;
  block[4] = self;
  dispatch_sync(databaseQueue, block);
}

uint64_t __35__WLSQLController__deleteSummaries__block_invoke(uint64_t a1)
{
  ppStmt = 0;
  if (sqlite3_prepare(*(*(a1 + 32) + 8), "DELETE FROM summaries", -1, &ppStmt, 0))
  {
    sqlite3_errcode(*(*(a1 + 32) + 8));
    sqlite3_errmsg(*(*(a1 + 32) + 8));
    return _WLLog();
  }

  else
  {
    if (sqlite3_step(ppStmt) != 101)
    {
      sqlite3_errcode(*(*(a1 + 32) + 8));
      sqlite3_errmsg(*(*(a1 + 32) + 8));
      _WLLog();
    }

    return sqlite3_finalize(ppStmt);
  }
}

- (void)_deleteAccounts
{
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__WLSQLController__deleteAccounts__block_invoke;
  block[3] = &unk_279EB54A0;
  block[4] = self;
  dispatch_sync(databaseQueue, block);
}

uint64_t __34__WLSQLController__deleteAccounts__block_invoke(uint64_t a1)
{
  ppStmt = 0;
  if (sqlite3_prepare(*(*(a1 + 32) + 8), "DELETE FROM accounts", -1, &ppStmt, 0))
  {
    sqlite3_errcode(*(*(a1 + 32) + 8));
    sqlite3_errmsg(*(*(a1 + 32) + 8));
    return _WLLog();
  }

  else
  {
    if (sqlite3_step(ppStmt) != 101)
    {
      sqlite3_errcode(*(*(a1 + 32) + 8));
      sqlite3_errmsg(*(*(a1 + 32) + 8));
      _WLLog();
    }

    return sqlite3_finalize(ppStmt);
  }
}

- (void)deleteSummaryDataForAllDevices
{
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__WLSQLController_deleteSummaryDataForAllDevices__block_invoke;
  block[3] = &unk_279EB54A0;
  block[4] = self;
  dispatch_sync(databaseQueue, block);
}

uint64_t __49__WLSQLController_deleteSummaryDataForAllDevices__block_invoke(uint64_t a1)
{
  ppStmt = 0;
  if (sqlite3_prepare(*(*(a1 + 32) + 8), "UPDATE summaries SET data=NULL", -1, &ppStmt, 0))
  {
    sqlite3_errcode(*(*(a1 + 32) + 8));
    sqlite3_errmsg(*(*(a1 + 32) + 8));
    return _WLLog();
  }

  else
  {
    if (sqlite3_step(ppStmt) != 101)
    {
      sqlite3_errcode(*(*(a1 + 32) + 8));
      sqlite3_errmsg(*(*(a1 + 32) + 8));
      _WLLog();
    }

    return sqlite3_finalize(ppStmt);
  }
}

- (unint64_t)insertAccount:(id)account migrator:(id)migrator device:(id)device
{
  accountCopy = account;
  migratorCopy = migrator;
  deviceCopy = device;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = -1;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__WLSQLController_insertAccount_migrator_device___block_invoke;
  block[3] = &unk_279EB6008;
  block[4] = self;
  v18 = accountCopy;
  v19 = migratorCopy;
  v20 = deviceCopy;
  v21 = &v22;
  v12 = deviceCopy;
  v13 = migratorCopy;
  v14 = accountCopy;
  dispatch_sync(databaseQueue, block);
  v15 = v23[3];

  _Block_object_dispose(&v22, 8);
  return v15;
}

uint64_t __49__WLSQLController_insertAccount_migrator_device___block_invoke(uint64_t a1)
{
  ppStmt = 0;
  if (sqlite3_prepare(*(*(a1 + 32) + 8), "INSERT INTO accounts (identifier, migrator, device) VALUES (?, ?, ?)", -1, &ppStmt, 0))
  {
    sqlite3_errcode(*(*(a1 + 32) + 8));
    sqlite3_errmsg(*(*(a1 + 32) + 8));
    return _WLLog();
  }

  else
  {
    v3 = ppStmt;
    v4 = [*(a1 + 40) identifier];
    sqlite3_bind_text(v3, 1, [v4 UTF8String], -1, 0);

    v5 = ppStmt;
    v6 = [*(a1 + 48) contentType];
    sqlite3_bind_text(v5, 2, [v6 UTF8String], -1, 0);

    v7 = [*(a1 + 56) persistentIdentifier];
    if (![v7 length])
    {
      __49__WLSQLController_insertAccount_migrator_device___block_invoke_cold_1();
    }

    v8 = ppStmt;
    v9 = [*(a1 + 56) persistentIdentifier];
    sqlite3_bind_text(v8, 3, [v9 UTF8String], -1, 0);

    if (sqlite3_step(ppStmt) == 101)
    {
      *(*(*(a1 + 64) + 8) + 24) = sqlite3_last_insert_rowid(*(*(a1 + 32) + 8));
    }

    else
    {
      sqlite3_errcode(*(*(a1 + 32) + 8));
      sqlite3_errmsg(*(*(a1 + 32) + 8));
      _WLLog();
    }

    return sqlite3_finalize(ppStmt);
  }
}

- (id)accountsForMigrator:(id)migrator device:(id)device
{
  migratorCopy = migrator;
  deviceCopy = device;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__3;
  v25 = __Block_byref_object_dispose__3;
  v26 = 0;
  databaseQueue = self->_databaseQueue;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __46__WLSQLController_accountsForMigrator_device___block_invoke;
  v16 = &unk_279EB6030;
  selfCopy = self;
  v9 = deviceCopy;
  v18 = v9;
  v10 = migratorCopy;
  v19 = v10;
  v20 = &v21;
  dispatch_sync(databaseQueue, &v13);
  v11 = [v22[5] copy];

  _Block_object_dispose(&v21, 8);

  return v11;
}

uint64_t __46__WLSQLController_accountsForMigrator_device___block_invoke(uint64_t a1)
{
  ppStmt = 0;
  if (sqlite3_prepare(*(*(a1 + 32) + 8), "SELECT id, identifier FROM accounts WHERE device=? AND migrator=?", -1, &ppStmt, 0))
  {
    sqlite3_errcode(*(*(a1 + 32) + 8));
    sqlite3_errmsg(*(*(a1 + 32) + 8));
    return _WLLog();
  }

  else
  {
    v3 = [*(a1 + 40) persistentIdentifier];
    if (![v3 length])
    {
      __46__WLSQLController_accountsForMigrator_device___block_invoke_cold_1();
    }

    v4 = ppStmt;
    v5 = [*(a1 + 40) persistentIdentifier];
    sqlite3_bind_text(v4, 1, [v5 UTF8String], -1, 0);

    v6 = ppStmt;
    v7 = [*(a1 + 48) contentType];
    sqlite3_bind_text(v6, 2, [v7 UTF8String], -1, 0);

    v8 = [MEMORY[0x277CBEB18] array];
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    while (sqlite3_step(ppStmt) == 100)
    {
      v11 = objc_alloc_init(WLSourceDeviceAccount);
      [(WLSourceDeviceAccount *)v11 setSqlID:sqlite3_column_int64(ppStmt, 0)];
      v12 = sqlite3_column_text(ppStmt, 1);
      if (v12)
      {
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:v12];
        [(WLSourceDeviceAccount *)v11 setIdentifier:v13];
      }

      [*(*(*(a1 + 56) + 8) + 40) addObject:v11];
    }

    if (sqlite3_errcode(*(*(a1 + 32) + 8)) != 101 && sqlite3_errcode(*(*(a1 + 32) + 8)) >= 1)
    {
      sqlite3_errcode(*(*(a1 + 32) + 8));
      sqlite3_errmsg(*(*(a1 + 32) + 8));
      _WLLog();
    }

    return sqlite3_finalize(ppStmt);
  }
}

- (BOOL)deleteAccountsAndSummariesForMigrator:(id)migrator device:(id)device
{
  migratorCopy = migrator;
  deviceCopy = device;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  databaseQueue = self->_databaseQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __64__WLSQLController_deleteAccountsAndSummariesForMigrator_device___block_invoke;
  v12[3] = &unk_279EB6030;
  v12[4] = self;
  v13 = deviceCopy;
  v14 = migratorCopy;
  v15 = &v16;
  v9 = migratorCopy;
  v10 = deviceCopy;
  dispatch_sync(databaseQueue, v12);
  LOBYTE(migratorCopy) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return migratorCopy;
}

uint64_t __64__WLSQLController_deleteAccountsAndSummariesForMigrator_device___block_invoke(uint64_t a1)
{
  ppStmt = 0;
  if (sqlite3_prepare(*(*(a1 + 32) + 8), "DELETE FROM summaries WHERE accountID IN (SELECT id FROM accounts WHERE device=? AND migrator=?)", -1, &ppStmt, 0))
  {
    sqlite3_errcode(*(*(a1 + 32) + 8));
    sqlite3_errmsg(*(*(a1 + 32) + 8));
    _WLLog();
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  else
  {
    v2 = [*(a1 + 40) persistentIdentifier];
    if (![v2 length])
    {
      __64__WLSQLController_deleteAccountsAndSummariesForMigrator_device___block_invoke_cold_2();
    }

    v3 = ppStmt;
    v4 = [*(a1 + 40) persistentIdentifier];
    sqlite3_bind_text(v3, 1, [v4 UTF8String], -1, 0);

    v5 = ppStmt;
    v6 = [*(a1 + 48) contentType];
    sqlite3_bind_text(v5, 2, [v6 UTF8String], -1, 0);

    if (sqlite3_step(ppStmt) != 101)
    {
      sqlite3_errcode(*(*(a1 + 32) + 8));
      sqlite3_errmsg(*(*(a1 + 32) + 8));
      _WLLog();
      *(*(*(a1 + 56) + 8) + 24) = 0;
    }

    sqlite3_finalize(ppStmt);
  }

  if (sqlite3_prepare(*(*(a1 + 32) + 8), "DELETE FROM accounts WHERE device=? AND migrator=?", -1, &ppStmt, 0))
  {
    sqlite3_errcode(*(*(a1 + 32) + 8));
    sqlite3_errmsg(*(*(a1 + 32) + 8));
    result = _WLLog();
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  else
  {
    v8 = [*(a1 + 40) persistentIdentifier];
    if (![v8 length])
    {
      __64__WLSQLController_deleteAccountsAndSummariesForMigrator_device___block_invoke_cold_1();
    }

    v9 = ppStmt;
    v10 = [*(a1 + 40) persistentIdentifier];
    sqlite3_bind_text(v9, 1, [v10 UTF8String], -1, 0);

    v11 = ppStmt;
    v12 = [*(a1 + 48) contentType];
    sqlite3_bind_text(v11, 2, [v12 UTF8String], -1, 0);

    if (sqlite3_step(ppStmt) != 101)
    {
      sqlite3_errcode(*(*(a1 + 32) + 8));
      sqlite3_errmsg(*(*(a1 + 32) + 8));
      _WLLog();
      *(*(*(a1 + 56) + 8) + 24) = 0;
    }

    return sqlite3_finalize(ppStmt);
  }

  return result;
}

- (unint64_t)insertRecordSummary:(id)summary account:(id)account
{
  summaryCopy = summary;
  accountCopy = account;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = -1;
  databaseQueue = self->_databaseQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __47__WLSQLController_insertRecordSummary_account___block_invoke;
  v13[3] = &unk_279EB6030;
  v13[4] = self;
  v14 = accountCopy;
  v15 = summaryCopy;
  v16 = &v17;
  v9 = summaryCopy;
  v10 = accountCopy;
  dispatch_sync(databaseQueue, v13);
  v11 = v18[3];

  _Block_object_dispose(&v17, 8);
  return v11;
}

uint64_t __47__WLSQLController_insertRecordSummary_account___block_invoke(uint64_t a1)
{
  ppStmt = 0;
  if (sqlite3_prepare(*(*(a1 + 32) + 8), "INSERT INTO summaries (accountID, identifier, itemSize, relativePath, modifiedDate, storeDataAsFile, dataFilePath, downloadSegmentCount, metadata, bucket) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", -1, &ppStmt, 0))
  {
    sqlite3_errcode(*(*(a1 + 32) + 8));
    sqlite3_errmsg(*(*(a1 + 32) + 8));
    return _WLLog();
  }

  else
  {
    sqlite3_bind_int64(ppStmt, 1, [*(a1 + 40) sqlID]);
    v3 = ppStmt;
    v4 = [*(a1 + 48) identifier];
    sqlite3_bind_text(v3, 2, [v4 UTF8String], -1, 0);

    sqlite3_bind_int64(ppStmt, 3, [*(a1 + 48) itemSize]);
    v5 = ppStmt;
    v6 = [*(a1 + 48) relativePath];
    sqlite3_bind_text(v5, 4, [v6 UTF8String], -1, 0);

    v7 = *(a1 + 32);
    v8 = [*(a1 + 48) modifiedDate];
    [v7 _sqlite3_bind_NSDate:v8 forStatement:ppStmt position:5];

    sqlite3_bind_int(ppStmt, 6, [*(a1 + 48) storeDataAsFile]);
    v9 = [*(a1 + 48) dataFilePath];

    v10 = ppStmt;
    if (v9)
    {
      v11 = [*(a1 + 48) dataFilePath];
      sqlite3_bind_text(v10, 7, [v11 UTF8String], -1, 0);
    }

    else
    {
      sqlite3_bind_null(ppStmt, 7);
    }

    sqlite3_bind_int64(ppStmt, 8, [*(a1 + 48) downloadSegmentCount]);
    v12 = [*(a1 + 48) metadata];

    if (v12)
    {
      v13 = MEMORY[0x277CCAAA0];
      v14 = [*(a1 + 48) metadata];
      v23 = 0;
      v15 = [v13 dataWithJSONObject:v14 options:0 error:&v23];
      v16 = v23;

      if (v15)
      {
        sqlite3_bind_blob(ppStmt, 9, [v15 bytes], objc_msgSend(v15, "length"), 0xFFFFFFFFFFFFFFFFLL);
      }

      else
      {
        v21 = *(a1 + 48);
        v22 = v16;
        v20 = *(a1 + 32);
        _WLLog();
        sqlite3_bind_null(ppStmt, 9);
      }
    }

    else
    {
      sqlite3_bind_null(ppStmt, 9);
    }

    v17 = [*(a1 + 48) bucket];

    v18 = ppStmt;
    if (v17)
    {
      v19 = [*(a1 + 48) bucket];
      sqlite3_bind_text(v18, 10, [v19 UTF8String], -1, 0);
    }

    else
    {
      sqlite3_bind_null(ppStmt, 10);
    }

    if (sqlite3_step(ppStmt) == 101)
    {
      *(*(*(a1 + 56) + 8) + 24) = sqlite3_last_insert_rowid(*(*(a1 + 32) + 8));
    }

    else
    {
      sqlite3_errcode(*(*(a1 + 32) + 8));
      sqlite3_errmsg(*(*(a1 + 32) + 8));
      _WLLog();
    }

    return sqlite3_finalize(ppStmt);
  }
}

- (unint64_t)_totalSummarySegmentCountForAccounts:(id)accounts migrationStateComparisonOperator:(id)operator migrationState:(int64_t)state
{
  accountsCopy = accounts;
  operatorCopy = operator;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __104__WLSQLController__totalSummarySegmentCountForAccounts_migrationStateComparisonOperator_migrationState___block_invoke;
  block[3] = &unk_279EB6058;
  v16 = accountsCopy;
  v17 = operatorCopy;
  v19 = &v21;
  stateCopy = state;
  selfCopy = self;
  v11 = operatorCopy;
  v12 = accountsCopy;
  dispatch_sync(databaseQueue, block);
  v13 = v22[3];

  _Block_object_dispose(&v21, 8);
  return v13;
}

void __104__WLSQLController__totalSummarySegmentCountForAccounts_migrationStateComparisonOperator_migrationState___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) count])
  {
    v2 = 0;
    v3 = &stru_2882CBB40;
    do
    {
      if ([(__CFString *)v3 length])
      {
        v4 = @", ?";
      }

      else
      {
        v4 = @"?";
      }

      v5 = [(__CFString *)v3 stringByAppendingString:v4];

      ++v2;
      v3 = v5;
    }

    while (v2 < [*(a1 + 32) count]);
  }

  else
  {
    v5 = &stru_2882CBB40;
  }

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT sum(downloadSegmentCount) FROM summaries WHERE accountID IN(%@) AND migrationState %@ ?", v5, *(a1 + 40)];
  v7 = [v6 UTF8String];

  ppStmt = 0;
  if (sqlite3_prepare(*(*(a1 + 48) + 8), v7, -1, &ppStmt, 0))
  {
    sqlite3_errcode(*(*(a1 + 48) + 8));
    sqlite3_errmsg(*(*(a1 + 48) + 8));
    _WLLog();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = *(a1 + 32);
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      v12 = 1;
      do
      {
        v13 = 0;
        v14 = v12;
        do
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v12 = v14 + 1;
          sqlite3_bind_int64(ppStmt, v14++, [*(*(&v16 + 1) + 8 * v13++) sqlID]);
        }

        while (v10 != v13);
        v10 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v10);
    }

    else
    {
      v12 = 1;
    }

    sqlite3_bind_int64(ppStmt, v12, *(a1 + 64));
    while (sqlite3_step(ppStmt) == 100)
    {
      *(*(*(a1 + 56) + 8) + 24) = sqlite3_column_int64(ppStmt, 0);
    }

    if (sqlite3_errcode(*(*(a1 + 48) + 8)) != 101 && sqlite3_errcode(*(*(a1 + 48) + 8)) >= 1)
    {
      sqlite3_errcode(*(*(a1 + 48) + 8));
      sqlite3_errmsg(*(*(a1 + 48) + 8));
      _WLLog();
    }

    sqlite3_finalize(ppStmt);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)totalSummaryItemSizeForAccounts:(id)accounts addOverhead:(BOOL)overhead completion:(id)completion
{
  accountsCopy = accounts;
  completionCopy = completion;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  databaseQueue = self->_databaseQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __74__WLSQLController_totalSummaryItemSizeForAccounts_addOverhead_completion___block_invoke;
  v12[3] = &unk_279EB6080;
  v11 = accountsCopy;
  overheadCopy = overhead;
  v13 = v11;
  selfCopy = self;
  v15 = &v17;
  dispatch_sync(databaseQueue, v12);
  if (completionCopy)
  {
    completionCopy[2](completionCopy, v18[3], 0);
  }

  _Block_object_dispose(&v17, 8);
}

void __74__WLSQLController_totalSummaryItemSizeForAccounts_addOverhead_completion___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) count])
  {
    v2 = 0;
    v3 = &stru_2882CBB40;
    do
    {
      if ([(__CFString *)v3 length])
      {
        v4 = @", ?";
      }

      else
      {
        v4 = @"?";
      }

      v5 = [(__CFString *)v3 stringByAppendingString:v4];

      ++v2;
      v3 = v5;
    }

    while (v2 < [*(a1 + 32) count]);
  }

  else
  {
    v5 = &stru_2882CBB40;
  }

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT sum(itemSize) + max(itemSize) FROM summaries WHERE accountID IN(%@) AND migrationState < ?", v5];
  v7 = [v6 UTF8String];

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT sum(itemSize) FROM summaries WHERE accountID IN(%@) AND migrationState < ?", v5];
  v9 = [v8 UTF8String];

  if (*(a1 + 56))
  {
    v10 = v7;
  }

  else
  {
    v10 = v9;
  }

  ppStmt = 0;
  if (sqlite3_prepare(*(*(a1 + 40) + 8), v10, -1, &ppStmt, 0))
  {
    sqlite3_errcode(*(*(a1 + 40) + 8));
    sqlite3_errmsg(*(*(a1 + 40) + 8));
    _WLLog();
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = *(a1 + 32);
    v12 = [v11 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      v15 = 1;
      do
      {
        v16 = 0;
        v17 = v15;
        do
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v15 = v17 + 1;
          sqlite3_bind_int64(ppStmt, v17++, [*(*(&v19 + 1) + 8 * v16++) sqlID]);
        }

        while (v13 != v16);
        v13 = [v11 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v13);
    }

    else
    {
      v15 = 1;
    }

    sqlite3_bind_int64(ppStmt, v15, 1);
    while (sqlite3_step(ppStmt) == 100)
    {
      *(*(*(a1 + 48) + 8) + 24) = sqlite3_column_int64(ppStmt, 0);
    }

    if (sqlite3_errcode(*(*(a1 + 40) + 8)) != 101 && sqlite3_errcode(*(*(a1 + 40) + 8)) >= 1)
    {
      sqlite3_errcode(*(*(a1 + 40) + 8));
      sqlite3_errmsg(*(*(a1 + 40) + 8));
      _WLLog();
    }

    sqlite3_finalize(ppStmt);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)setData:(id)data forSummary:(id)summary
{
  dataCopy = data;
  summaryCopy = summary;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__WLSQLController_setData_forSummary___block_invoke;
  block[3] = &unk_279EB60A8;
  block[4] = self;
  v12 = dataCopy;
  v13 = summaryCopy;
  v9 = summaryCopy;
  v10 = dataCopy;
  dispatch_sync(databaseQueue, block);
}

uint64_t __38__WLSQLController_setData_forSummary___block_invoke(uint64_t a1)
{
  ppStmt = 0;
  if (sqlite3_prepare(*(*(a1 + 32) + 8), "UPDATE summaries SET data=? WHERE rowID=?", -1, &ppStmt, 0))
  {
    sqlite3_errcode(*(*(a1 + 32) + 8));
    sqlite3_errmsg(*(*(a1 + 32) + 8));
    return _WLLog();
  }

  else
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      sqlite3_bind_blob(ppStmt, 1, [v3 bytes], objc_msgSend(*(a1 + 40), "length"), 0xFFFFFFFFFFFFFFFFLL);
    }

    else
    {
      sqlite3_bind_null(ppStmt, 1);
    }

    sqlite3_bind_int64(ppStmt, 2, [*(a1 + 48) sqlID]);
    if (sqlite3_step(ppStmt) != 101)
    {
      sqlite3_errcode(*(*(a1 + 32) + 8));
      sqlite3_errmsg(*(*(a1 + 32) + 8));
      _WLLog();
    }

    return sqlite3_finalize(ppStmt);
  }
}

- (id)dataForSummary:(id)summary
{
  summaryCopy = summary;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__3;
  v16 = __Block_byref_object_dispose__3;
  v17 = 0;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__WLSQLController_dataForSummary___block_invoke;
  block[3] = &unk_279EB60D0;
  block[4] = self;
  v10 = summaryCopy;
  v11 = &v12;
  v6 = summaryCopy;
  dispatch_sync(databaseQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __34__WLSQLController_dataForSummary___block_invoke(uint64_t a1)
{
  ppStmt = 0;
  if (sqlite3_prepare(*(*(a1 + 32) + 8), "SELECT data FROM summaries WHERE rowID=? LIMIT 1", -1, &ppStmt, 0))
  {
    sqlite3_errcode(*(*(a1 + 32) + 8));
    sqlite3_errmsg(*(*(a1 + 32) + 8));
    return _WLLog();
  }

  else
  {
    sqlite3_bind_int64(ppStmt, 1, [*(a1 + 40) sqlID]);
    while (sqlite3_step(ppStmt) == 100)
    {
      v3 = sqlite3_column_bytes(ppStmt, 0);
      if (v3 >= 1)
      {
        v4 = [MEMORY[0x277CBEA90] dataWithBytes:sqlite3_column_blob(ppStmt length:{0), v3}];
        v5 = *(*(a1 + 48) + 8);
        v6 = *(v5 + 40);
        *(v5 + 40) = v4;
      }
    }

    if (sqlite3_errcode(*(*(a1 + 32) + 8)) != 101 && sqlite3_errcode(*(*(a1 + 32) + 8)) >= 1)
    {
      sqlite3_errcode(*(*(a1 + 32) + 8));
      sqlite3_errmsg(*(*(a1 + 32) + 8));
      _WLLog();
    }

    return sqlite3_finalize(ppStmt);
  }
}

- (void)setDidDownloadForSummary:(id)summary forSourceDevice:(id)device
{
  summaryCopy = summary;
  databaseQueue = self->_databaseQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__WLSQLController_setDidDownloadForSummary_forSourceDevice___block_invoke;
  v8[3] = &unk_279EB60F8;
  v8[4] = self;
  v9 = summaryCopy;
  v7 = summaryCopy;
  dispatch_sync(databaseQueue, v8);
}

- (void)setWillImportForSummary:(id)summary
{
  summaryCopy = summary;
  databaseQueue = self->_databaseQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__WLSQLController_setWillImportForSummary___block_invoke;
  v7[3] = &unk_279EB60F8;
  v7[4] = self;
  v8 = summaryCopy;
  v6 = summaryCopy;
  dispatch_sync(databaseQueue, v7);
}

- (void)removeDataAndSetDidImportForSummary:(id)summary
{
  summaryCopy = summary;
  databaseQueue = self->_databaseQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__WLSQLController_removeDataAndSetDidImportForSummary___block_invoke;
  v7[3] = &unk_279EB60F8;
  v7[4] = self;
  v8 = summaryCopy;
  v6 = summaryCopy;
  dispatch_sync(databaseQueue, v7);
}

- (void)_onDatabaseQueue_updateMigrationState:(int)state forSummary:(id)summary removeData:(BOOL)data
{
  dataCopy = data;
  summaryCopy = summary;
  dispatch_assert_queue_V2(self->_databaseQueue);
  if (dataCopy)
  {
    v9 = "UPDATE summaries SET data=NULL, migrationState=? WHERE rowID=?";
  }

  else
  {
    v9 = "UPDATE summaries SET migrationState=? WHERE rowID=?";
  }

  ppStmt = 0;
  if (sqlite3_prepare(self->_database, v9, -1, &ppStmt, 0))
  {
    sqlite3_errcode(self->_database);
    sqlite3_errmsg(self->_database);
    _WLLog();
  }

  else
  {
    sqlite3_bind_int(ppStmt, 1, state);
    sqlite3_bind_int64(ppStmt, 2, [summaryCopy sqlID]);
    if (sqlite3_step(ppStmt) != 101)
    {
      sqlite3_errcode(self->_database);
      sqlite3_errmsg(self->_database);
      _WLLog();
    }

    sqlite3_finalize(ppStmt);
  }
}

- (void)setMigrationError:(id)error forSummary:(id)summary
{
  summaryCopy = summary;
  wl_encodableError = [error wl_encodableError];
  v14 = 0;
  v8 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:wl_encodableError requiringSecureCoding:1 error:&v14];
  v9 = v14;
  if (v8)
  {
    databaseQueue = self->_databaseQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__WLSQLController_setMigrationError_forSummary___block_invoke;
    block[3] = &unk_279EB60A8;
    block[4] = self;
    v12 = v8;
    v13 = summaryCopy;
    dispatch_sync(databaseQueue, block);
  }

  else
  {
    _WLLog();
  }
}

uint64_t __48__WLSQLController_setMigrationError_forSummary___block_invoke(uint64_t a1)
{
  ppStmt = 0;
  if (sqlite3_prepare(*(*(a1 + 32) + 8), "UPDATE summaries SET migrationError=? WHERE rowID=?", -1, &ppStmt, 0))
  {
    sqlite3_errcode(*(*(a1 + 32) + 8));
    sqlite3_errmsg(*(*(a1 + 32) + 8));
    return _WLLog();
  }

  else
  {
    sqlite3_bind_blob(ppStmt, 1, [*(a1 + 40) bytes], objc_msgSend(*(a1 + 40), "length"), 0xFFFFFFFFFFFFFFFFLL);
    sqlite3_bind_int64(ppStmt, 2, [*(a1 + 48) sqlID]);
    if (sqlite3_step(ppStmt) != 101)
    {
      sqlite3_errcode(*(*(a1 + 32) + 8));
      sqlite3_errmsg(*(*(a1 + 32) + 8));
      _WLLog();
    }

    return sqlite3_finalize(ppStmt);
  }
}

- (id)migrationErrors
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  databaseQueue = self->_databaseQueue;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __34__WLSQLController_migrationErrors__block_invoke;
  v12 = &unk_279EB60F8;
  selfCopy = self;
  v14 = v3;
  v5 = v3;
  dispatch_sync(databaseQueue, &v9);
  if ([v5 count])
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

uint64_t __34__WLSQLController_migrationErrors__block_invoke(uint64_t a1)
{
  v1 = a1;
  ppStmt = 0;
  if (sqlite3_prepare(*(*(a1 + 32) + 8), "SELECT migrationError FROM summaries WHERE migrationError IS NOT NULL", -1, &ppStmt, 0))
  {
    sqlite3_errcode(*(*(v1 + 32) + 8));
    sqlite3_errmsg(*(*(v1 + 32) + 8));
    return _WLLog();
  }

  else
  {
    if (sqlite3_step(ppStmt) == 100)
    {
      v3 = 0x277CCA000uLL;
      v4 = 0x277CCA000uLL;
      v15 = v1;
      do
      {
        v5 = sqlite3_column_bytes(ppStmt, 0);
        if (v5 >= 1)
        {
          v6 = [MEMORY[0x277CBEA90] dataWithBytes:sqlite3_column_blob(ppStmt length:{0), v5}];
          if (v6)
          {
            v7 = *(v3 + 2760);
            v8 = [*(v4 + 2488) wl_encodableErrorSupportedClasses];
            v16 = 0;
            v9 = [v7 unarchivedObjectOfClasses:v8 fromData:v6 error:&v16];
            v10 = v16;

            if (v9)
            {
              [*(v1 + 40) addObject:v9];
            }

            else
            {
              v11 = v4;
              v12 = v3;
              v13 = *(v1 + 32);
              v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "length")}];
              v3 = v12;
              v4 = v11;
              _WLLog();

              v1 = v15;
            }
          }
        }
      }

      while (sqlite3_step(ppStmt) == 100);
    }

    if (sqlite3_errcode(*(*(v1 + 32) + 8)) != 101 && sqlite3_errcode(*(*(v1 + 32) + 8)) >= 1)
    {
      sqlite3_errcode(*(*(v1 + 32) + 8));
      sqlite3_errmsg(*(*(v1 + 32) + 8));
      _WLLog();
    }

    return sqlite3_finalize(ppStmt);
  }
}

- (void)updateModifiedDateForSummary:(id)summary
{
  summaryCopy = summary;
  databaseQueue = self->_databaseQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__WLSQLController_updateModifiedDateForSummary___block_invoke;
  v7[3] = &unk_279EB60F8;
  v7[4] = self;
  v8 = summaryCopy;
  v6 = summaryCopy;
  dispatch_sync(databaseQueue, v7);
}

uint64_t __48__WLSQLController_updateModifiedDateForSummary___block_invoke(uint64_t a1)
{
  ppStmt = 0;
  if (sqlite3_prepare(*(*(a1 + 32) + 8), "UPDATE summaries SET modifiedDate=? WHERE rowID=?", -1, &ppStmt, 0))
  {
    sqlite3_errcode(*(*(a1 + 32) + 8));
    sqlite3_errmsg(*(*(a1 + 32) + 8));
    return _WLLog();
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) modifiedDate];
    [v3 _sqlite3_bind_NSDate:v4 forStatement:ppStmt position:1];

    sqlite3_bind_int64(ppStmt, 2, [*(a1 + 40) sqlID]);
    if (sqlite3_step(ppStmt) != 101)
    {
      sqlite3_errcode(*(*(a1 + 32) + 8));
      sqlite3_errmsg(*(*(a1 + 32) + 8));
      _WLLog();
    }

    return sqlite3_finalize(ppStmt);
  }
}

- (id)summariesForAccount:(id)account
{
  v11 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  v4 = MEMORY[0x277CBEA60];
  accountCopy2 = account;
  v6 = [v4 arrayWithObjects:&accountCopy count:1];

  v7 = [(WLSQLController *)self summariesForAccounts:v6 sortedByModifiedDate:0, accountCopy, v11];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)summariesForAccounts:(id)accounts sortedByModifiedDate:(BOOL)date
{
  v37 = *MEMORY[0x277D85DE8];
  accountsCopy = accounts;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__3;
  v34 = __Block_byref_object_dispose__3;
  v35 = 0;
  v7 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(accountsCopy, "count")}];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = accountsCopy;
  v9 = [v8 countByEnumeratingWithState:&v26 objects:v36 count:16];
  if (v9)
  {
    v10 = *v27;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v12, "sqlID")}];
        [v7 setObject:v12 forKey:v13];
      }

      v9 = [v8 countByEnumeratingWithState:&v26 objects:v36 count:16];
    }

    while (v9);
  }

  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__WLSQLController_summariesForAccounts_sortedByModifiedDate___block_invoke;
  block[3] = &unk_279EB6120;
  v15 = v8;
  dateCopy = date;
  v21 = v15;
  selfCopy = self;
  v24 = &v30;
  v16 = v7;
  v23 = v16;
  dispatch_sync(databaseQueue, block);
  v17 = [v31[5] copy];

  _Block_object_dispose(&v30, 8);
  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

void __61__WLSQLController_summariesForAccounts_sortedByModifiedDate___block_invoke(uint64_t a1)
{
  v50 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) count])
  {
    v2 = 0;
    v3 = &stru_2882CBB40;
    do
    {
      if ([(__CFString *)v3 length])
      {
        v4 = @", ?";
      }

      else
      {
        v4 = @"?";
      }

      v5 = [(__CFString *)v3 stringByAppendingString:v4];

      ++v2;
      v3 = v5;
    }

    while (v2 < [*(a1 + 32) count]);
  }

  else
  {
    v5 = &stru_2882CBB40;
  }

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT id, identifier, itemSize, relativePath, modifiedDate, storeDataAsFile, dataFilePath, downloadSegmentCount, metadata, accountID, migrationState, bucket FROM summaries WHERE accountID IN(%@) AND migrationState < ?", v5];
  v7 = v6;
  if (*(a1 + 64))
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v6, @"ORDER BY modifiedDate ASC"];
    v9 = [v8 UTF8String];
  }

  else
  {
    v9 = [v6 UTF8String];
  }

  ppStmt = 0;
  if (sqlite3_prepare(*(*(a1 + 40) + 8), v9, -1, &ppStmt, 0))
  {
    sqlite3_errcode(*(*(a1 + 40) + 8));
    sqlite3_errmsg(*(*(a1 + 40) + 8));
    _WLLog();
  }

  else
  {
    v42 = v7;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v10 = *(a1 + 32);
    v11 = [v10 countByEnumeratingWithState:&v44 objects:v49 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v45;
      v14 = 1;
      do
      {
        v15 = 0;
        v16 = v14;
        do
        {
          if (*v45 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v14 = v16 + 1;
          sqlite3_bind_int64(ppStmt, v16++, [*(*(&v44 + 1) + 8 * v15++) sqlID]);
        }

        while (v12 != v15);
        v12 = [v10 countByEnumeratingWithState:&v44 objects:v49 count:16];
      }

      while (v12);
    }

    else
    {
      v14 = 1;
    }

    sqlite3_bind_int64(ppStmt, v14, 2);
    v17 = [MEMORY[0x277CBEB18] array];
    v18 = *(*(a1 + 56) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

    while (sqlite3_step(ppStmt) == 100)
    {
      v20 = objc_alloc_init(WLSourceDeviceRecordSummary);
      [(WLSourceDeviceRecordSummary *)v20 setSqlID:sqlite3_column_int64(ppStmt, 0)];
      v21 = sqlite3_column_text(ppStmt, 1);
      if (v21)
      {
        v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:v21];
        [(WLSourceDeviceRecordSummary *)v20 setIdentifier:v22];
      }

      [(WLSourceDeviceRecordSummary *)v20 setItemSize:sqlite3_column_int64(ppStmt, 2)];
      v23 = sqlite3_column_text(ppStmt, 3);
      if (v23)
      {
        v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:v23];
        [(WLSourceDeviceRecordSummary *)v20 setRelativePath:v24];
      }

      v25 = [*(a1 + 40) _sqlite3_column_NSDateForStatement:ppStmt column:4];
      [(WLSourceDeviceRecordSummary *)v20 setModifiedDate:v25];

      [(WLSourceDeviceRecordSummary *)v20 setStoreDataAsFile:sqlite3_column_int(ppStmt, 5) != 0];
      v26 = sqlite3_column_text(ppStmt, 6);
      if (v26)
      {
        v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:v26];
        [(WLSourceDeviceRecordSummary *)v20 setDataFilePath:v27];
      }

      [(WLSourceDeviceRecordSummary *)v20 setDownloadSegmentCount:sqlite3_column_int64(ppStmt, 7)];
      v28 = sqlite3_column_bytes(ppStmt, 8);
      v29 = sqlite3_column_blob(ppStmt, 8);
      if (v29 && v28 >= 1)
      {
        v30 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v29 length:v28 freeWhenDone:0];
        if (v30)
        {
          v43 = 0;
          v31 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v30 options:0 error:&v43];
          v32 = v43;
          if (v31 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            [(WLSourceDeviceRecordSummary *)v20 setMetadata:v31];
          }

          else if (v32)
          {
            v40 = *(a1 + 40);
            v41 = v32;
            _WLLog();
          }
        }
      }

      v33 = sqlite3_column_int64(ppStmt, 9);
      v34 = *(a1 + 48);
      v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v33];
      v36 = [v34 objectForKeyedSubscript:v35];
      [(WLSourceDeviceRecordSummary *)v20 setAccount:v36];

      [(WLSourceDeviceRecordSummary *)v20 setDidDownload:sqlite3_column_int(ppStmt, 10) > 0, v40, v41];
      v37 = sqlite3_column_text(ppStmt, 11);
      if (v37)
      {
        v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:v37];
        [(WLSourceDeviceRecordSummary *)v20 setBucket:v38];
      }

      [*(*(*(a1 + 56) + 8) + 40) addObject:v20];
    }

    if (sqlite3_errcode(*(*(a1 + 40) + 8)) != 101 && sqlite3_errcode(*(*(a1 + 40) + 8)) >= 1)
    {
      sqlite3_errcode(*(*(a1 + 40) + 8));
      sqlite3_errmsg(*(*(a1 + 40) + 8));
      _WLLog();
    }

    sqlite3_finalize(ppStmt);
    v7 = v42;
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (id)migrationMetadataForSourceDevice:(id)device strictMatch:(BOOL)match
{
  deviceCopy = device;
  v6 = objc_alloc_init(WLSourceDeviceMigrationMetadata);
  osAPIVersion = [deviceCopy osAPIVersion];
  v8 = osAPIVersion;
  if (osAPIVersion)
  {
    v9 = osAPIVersion;
  }

  else
  {
    v9 = &stru_2882CBB40;
  }

  [(WLSourceDeviceMigrationMetadata *)v6 setDeviceOSVersion:v9];

  v10 = MEMORY[0x277CCACA8];
  hardwareBrand = [deviceCopy hardwareBrand];
  hardwareModel = [deviceCopy hardwareModel];
  hardwareDesign = [deviceCopy hardwareDesign];
  hardwareMaker = [deviceCopy hardwareMaker];
  hardwareProduct = [deviceCopy hardwareProduct];
  v16 = [v10 stringWithFormat:@"%@/%@/%@/%@/%@", hardwareBrand, hardwareModel, hardwareDesign, hardwareMaker, hardwareProduct];
  [(WLSourceDeviceMigrationMetadata *)v6 setDeviceType:v16];

  v17 = MEMORY[0x277CCACA8];
  hardwareModel2 = [deviceCopy hardwareModel];
  v19 = [v17 stringWithFormat:@"%@", hardwareModel2];
  [(WLSourceDeviceMigrationMetadata *)v6 setDeviceModel:v19];

  clientVersion = [deviceCopy clientVersion];
  [(WLSourceDeviceMigrationMetadata *)v6 setClientVersion:clientVersion];

  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__WLSQLController_migrationMetadataForSourceDevice_strictMatch___block_invoke;
  block[3] = &unk_279EB6148;
  matchCopy = match;
  block[4] = self;
  v29 = deviceCopy;
  v22 = v6;
  v30 = v22;
  v23 = deviceCopy;
  dispatch_sync(databaseQueue, block);
  v24 = v30;
  v25 = v22;

  return v22;
}

uint64_t __64__WLSQLController_migrationMetadataForSourceDevice_strictMatch___block_invoke(uint64_t a1)
{
  if (*(a1 + 56))
  {
    v2 = "SELECT state, communicationDate, attemptCount, crashCount FROM metadata WHERE device=? LIMIT 1";
  }

  else
  {
    v2 = "SELECT state, communicationDate, attemptCount, crashCount FROM metadata LIMIT 1";
  }

  ppStmt = 0;
  if (sqlite3_prepare(*(*(a1 + 32) + 8), v2, -1, &ppStmt, 0))
  {
    sqlite3_errcode(*(*(a1 + 32) + 8));
    sqlite3_errmsg(*(*(a1 + 32) + 8));
    return _WLLog();
  }

  else
  {
    if (*(a1 + 56) == 1)
    {
      v4 = [*(a1 + 40) persistentIdentifier];
      if (![v4 length])
      {
        __64__WLSQLController_migrationMetadataForSourceDevice_strictMatch___block_invoke_cold_1();
      }

      v5 = ppStmt;
      v6 = [*(a1 + 40) persistentIdentifier];
      sqlite3_bind_text(v5, 1, [v6 UTF8String], -1, 0);
    }

    while (sqlite3_step(ppStmt) == 100)
    {
      [*(a1 + 48) setState:{sqlite3_column_int64(ppStmt, 0)}];
      v7 = [*(a1 + 32) _sqlite3_column_NSDateForStatement:ppStmt column:1];
      [*(a1 + 48) setCommunicationDate:v7];

      [*(a1 + 48) setAttemptCount:{sqlite3_column_int64(ppStmt, 2)}];
      [*(a1 + 48) setCrashCount:{sqlite3_column_int64(ppStmt, 3)}];
    }

    if (sqlite3_errcode(*(*(a1 + 32) + 8)) != 101 && sqlite3_errcode(*(*(a1 + 32) + 8)) >= 1)
    {
      sqlite3_errcode(*(*(a1 + 32) + 8));
      sqlite3_errmsg(*(*(a1 + 32) + 8));
      _WLLog();
    }

    return sqlite3_finalize(ppStmt);
  }
}

- (void)insertMetadata:(id)metadata forSourceDevice:(id)device
{
  metadataCopy = metadata;
  deviceCopy = device;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__WLSQLController_insertMetadata_forSourceDevice___block_invoke;
  block[3] = &unk_279EB60A8;
  block[4] = self;
  v12 = deviceCopy;
  v13 = metadataCopy;
  v9 = metadataCopy;
  v10 = deviceCopy;
  dispatch_sync(databaseQueue, block);
}

uint64_t __50__WLSQLController_insertMetadata_forSourceDevice___block_invoke(uint64_t a1)
{
  ppStmt = 0;
  if (sqlite3_prepare(*(*(a1 + 32) + 8), "INSERT INTO metadata (device, state, communicationDate, attemptCount, crashCount) VALUES (?, ?, ?, ?, ?)", -1, &ppStmt, 0))
  {
    sqlite3_errcode(*(*(a1 + 32) + 8));
    sqlite3_errmsg(*(*(a1 + 32) + 8));
    return _WLLog();
  }

  else
  {
    v3 = [*(a1 + 40) persistentIdentifier];
    if (![v3 length])
    {
      __50__WLSQLController_insertMetadata_forSourceDevice___block_invoke_cold_1();
    }

    v4 = ppStmt;
    v5 = [*(a1 + 40) persistentIdentifier];
    sqlite3_bind_text(v4, 1, [v5 UTF8String], -1, 0);

    sqlite3_bind_int64(ppStmt, 2, [*(a1 + 48) state]);
    v6 = *(a1 + 32);
    v7 = [*(a1 + 48) communicationDate];
    [v6 _sqlite3_bind_NSDate:v7 forStatement:ppStmt position:3];

    sqlite3_bind_int64(ppStmt, 4, [*(a1 + 48) attemptCount]);
    sqlite3_bind_int64(ppStmt, 5, [*(a1 + 48) crashCount]);
    if (sqlite3_step(ppStmt) != 101)
    {
      sqlite3_errcode(*(*(a1 + 32) + 8));
      sqlite3_errmsg(*(*(a1 + 32) + 8));
      _WLLog();
    }

    return sqlite3_finalize(ppStmt);
  }
}

- (void)setMetadata:(id)metadata forSourceDevice:(id)device
{
  metadataCopy = metadata;
  deviceCopy = device;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__WLSQLController_setMetadata_forSourceDevice___block_invoke;
  block[3] = &unk_279EB60A8;
  block[4] = self;
  v12 = metadataCopy;
  v13 = deviceCopy;
  v9 = deviceCopy;
  v10 = metadataCopy;
  dispatch_sync(databaseQueue, block);
}

uint64_t __47__WLSQLController_setMetadata_forSourceDevice___block_invoke(uint64_t a1)
{
  ppStmt = 0;
  if (sqlite3_prepare(*(*(a1 + 32) + 8), "UPDATE metadata SET state=?, communicationDate=?, attemptCount=?, crashCount=? WHERE device=?", -1, &ppStmt, 0))
  {
    sqlite3_errcode(*(*(a1 + 32) + 8));
    sqlite3_errmsg(*(*(a1 + 32) + 8));
    return _WLLog();
  }

  else
  {
    sqlite3_bind_int64(ppStmt, 1, [*(a1 + 40) state]);
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) communicationDate];
    [v3 _sqlite3_bind_NSDate:v4 forStatement:ppStmt position:2];

    sqlite3_bind_int64(ppStmt, 3, [*(a1 + 40) attemptCount]);
    sqlite3_bind_int64(ppStmt, 4, [*(a1 + 40) crashCount]);
    v5 = [*(a1 + 48) persistentIdentifier];
    if (![v5 length])
    {
      __47__WLSQLController_setMetadata_forSourceDevice___block_invoke_cold_1();
    }

    v6 = ppStmt;
    v7 = [*(a1 + 48) persistentIdentifier];
    sqlite3_bind_text(v6, 5, [v7 UTF8String], -1, 0);

    if (sqlite3_step(ppStmt) != 101)
    {
      sqlite3_errcode(*(*(a1 + 32) + 8));
      sqlite3_errmsg(*(*(a1 + 32) + 8));
      _WLLog();
    }

    return sqlite3_finalize(ppStmt);
  }
}

- (void)insertMigratableApp:(id)app forDevice:(id)device
{
  appCopy = app;
  deviceCopy = device;
  v14 = 0;
  v8 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:appCopy requiringSecureCoding:1 error:&v14];
  v9 = v14;
  if (v8)
  {
    databaseQueue = self->_databaseQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__WLSQLController_insertMigratableApp_forDevice___block_invoke;
    block[3] = &unk_279EB60A8;
    block[4] = self;
    v12 = deviceCopy;
    v13 = v8;
    dispatch_sync(databaseQueue, block);
  }

  else
  {
    _WLLog();
  }
}

uint64_t __49__WLSQLController_insertMigratableApp_forDevice___block_invoke(uint64_t a1)
{
  ppStmt = 0;
  if (sqlite3_prepare(*(*(a1 + 32) + 8), "INSERT INTO migratableApps (device, data) VALUES (?, ?)", -1, &ppStmt, 0))
  {
    sqlite3_errcode(*(*(a1 + 32) + 8));
    sqlite3_errmsg(*(*(a1 + 32) + 8));
    return _WLLog();
  }

  else
  {
    v3 = [*(a1 + 40) persistentIdentifier];
    if (![v3 length])
    {
      __49__WLSQLController_insertMigratableApp_forDevice___block_invoke_cold_1();
    }

    v4 = ppStmt;
    v5 = [*(a1 + 40) persistentIdentifier];
    sqlite3_bind_text(v4, 1, [v5 UTF8String], -1, 0);

    sqlite3_bind_blob(ppStmt, 2, [*(a1 + 48) bytes], objc_msgSend(*(a1 + 48), "length"), 0xFFFFFFFFFFFFFFFFLL);
    if (sqlite3_step(ppStmt) != 101)
    {
      sqlite3_errcode(*(*(a1 + 32) + 8));
      sqlite3_errmsg(*(*(a1 + 32) + 8));
      _WLLog();
    }

    return sqlite3_finalize(ppStmt);
  }
}

- (id)_migratableAppsForDevice:(id)device
{
  deviceCopy = device;
  array = [MEMORY[0x277CBEB18] array];
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__WLSQLController__migratableAppsForDevice___block_invoke;
  block[3] = &unk_279EB60A8;
  v12 = deviceCopy;
  selfCopy = self;
  v14 = array;
  v7 = array;
  v8 = deviceCopy;
  dispatch_sync(databaseQueue, block);
  v9 = [v7 copy];

  return v9;
}

uint64_t __44__WLSQLController__migratableAppsForDevice___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(a1 + 32))
  {
    v3 = "SELECT data FROM migratableApps WHERE device=?";
  }

  else
  {
    v3 = "SELECT data FROM migratableApps";
  }

  ppStmt = 0;
  if (sqlite3_prepare(*(v2 + 8), v3, -1, &ppStmt, 0))
  {
    sqlite3_errcode(*(*(a1 + 40) + 8));
    sqlite3_errmsg(*(*(a1 + 40) + 8));
    return _WLLog();
  }

  else
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = [v5 persistentIdentifier];
      if (![v6 length])
      {
        __44__WLSQLController__migratableAppsForDevice___block_invoke_cold_1();
      }

      v7 = ppStmt;
      v8 = [*(a1 + 32) persistentIdentifier];
      sqlite3_bind_text(v7, 1, [v8 UTF8String], -1, 0);
    }

    if (sqlite3_step(ppStmt) == 100)
    {
      v9 = 0x277CBE000uLL;
      v10 = 0x277CCA000uLL;
      v11 = 0x277CCA000uLL;
      do
      {
        v12 = sqlite3_column_bytes(ppStmt, 0);
        if (v12 >= 1)
        {
          v13 = [*(v9 + 2704) dataWithBytes:sqlite3_column_blob(ppStmt length:{0), v12}];
          if (v13)
          {
            v14 = *(v10 + 2760);
            v15 = MEMORY[0x277CBEB98];
            v16 = objc_opt_class();
            v17 = objc_opt_class();
            v18 = *(v11 + 2992);
            v19 = [v15 setWithObjects:{v16, v17, objc_opt_class(), 0}];
            v25 = 0;
            v20 = [v14 unarchivedObjectOfClasses:v19 fromData:v13 error:&v25];
            v21 = v25;

            if (v20)
            {
              [*(a1 + 48) addObject:v20];
            }

            else
            {
              v22 = v10;
              v23 = *(a1 + 40);
              v24 = [*(v11 + 2992) numberWithUnsignedInteger:{objc_msgSend(v13, "length")}];
              v10 = v22;
              v9 = 0x277CBE000;
              _WLLog();
            }

            v11 = 0x277CCA000;
          }
        }
      }

      while (sqlite3_step(ppStmt) == 100);
    }

    if (sqlite3_errcode(*(*(a1 + 40) + 8)) != 101 && sqlite3_errcode(*(*(a1 + 40) + 8)) >= 1)
    {
      sqlite3_errcode(*(*(a1 + 40) + 8));
      sqlite3_errmsg(*(*(a1 + 40) + 8));
      _WLLog();
    }

    return sqlite3_finalize(ppStmt);
  }
}

- (void)insertMessagePhoneNumberWithIcc:(id)icc ccAcNumber:(id)number
{
  iccCopy = icc;
  numberCopy = number;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__WLSQLController_insertMessagePhoneNumberWithIcc_ccAcNumber___block_invoke;
  block[3] = &unk_279EB60A8;
  block[4] = self;
  v12 = iccCopy;
  v13 = numberCopy;
  v9 = numberCopy;
  v10 = iccCopy;
  dispatch_sync(databaseQueue, block);
}

uint64_t __62__WLSQLController_insertMessagePhoneNumberWithIcc_ccAcNumber___block_invoke(uint64_t a1)
{
  ppStmt = 0;
  if (sqlite3_prepare(*(*(a1 + 32) + 8), "INSERT OR IGNORE INTO messagePhoneNumbers (icc, ccAcNumber) VALUES (?, ?)", -1, &ppStmt, 0))
  {
    sqlite3_errcode(*(*(a1 + 32) + 8));
    sqlite3_errmsg(*(*(a1 + 32) + 8));
    return _WLLog();
  }

  else
  {
    sqlite3_bind_text(ppStmt, 1, [*(a1 + 40) UTF8String], -1, 0);
    sqlite3_bind_text(ppStmt, 2, [*(a1 + 48) UTF8String], -1, 0);
    if (sqlite3_step(ppStmt) != 101)
    {
      sqlite3_errcode(*(*(a1 + 32) + 8));
      sqlite3_errmsg(*(*(a1 + 32) + 8));
      _WLLog();
    }

    return sqlite3_finalize(ppStmt);
  }
}

- (id)messagePhoneNumberIccForCcAcNumber:(id)number
{
  numberCopy = number;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__3;
  v16 = __Block_byref_object_dispose__3;
  v17 = 0;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__WLSQLController_messagePhoneNumberIccForCcAcNumber___block_invoke;
  block[3] = &unk_279EB60D0;
  block[4] = self;
  v10 = numberCopy;
  v11 = &v12;
  v6 = numberCopy;
  dispatch_sync(databaseQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __54__WLSQLController_messagePhoneNumberIccForCcAcNumber___block_invoke(uint64_t a1)
{
  ppStmt = 0;
  if (sqlite3_prepare(*(*(a1 + 32) + 8), "SELECT icc FROM messagePhoneNumbers WHERE ccAcNumber=? LIMIT 1", -1, &ppStmt, 0))
  {
    sqlite3_errcode(*(*(a1 + 32) + 8));
    sqlite3_errmsg(*(*(a1 + 32) + 8));
    return _WLLog();
  }

  else
  {
    sqlite3_bind_text(ppStmt, 1, [*(a1 + 40) UTF8String], -1, 0);
    while (sqlite3_step(ppStmt) == 100)
    {
      v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:{sqlite3_column_text(ppStmt, 0)}];
      v4 = *(*(a1 + 48) + 8);
      v5 = *(v4 + 40);
      *(v4 + 40) = v3;
    }

    if (sqlite3_errcode(*(*(a1 + 32) + 8)) != 101 && sqlite3_errcode(*(*(a1 + 32) + 8)) >= 1)
    {
      sqlite3_errcode(*(*(a1 + 32) + 8));
      sqlite3_errmsg(*(*(a1 + 32) + 8));
      _WLLog();
    }

    return sqlite3_finalize(ppStmt);
  }
}

- (void)deleteMessagePhoneNumbersForAllDevices
{
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__WLSQLController_deleteMessagePhoneNumbersForAllDevices__block_invoke;
  block[3] = &unk_279EB54A0;
  block[4] = self;
  dispatch_sync(databaseQueue, block);
}

uint64_t __57__WLSQLController_deleteMessagePhoneNumbersForAllDevices__block_invoke(uint64_t a1)
{
  ppStmt = 0;
  if (sqlite3_prepare(*(*(a1 + 32) + 8), "DELETE FROM messagePhoneNumbers", -1, &ppStmt, 0))
  {
    sqlite3_errcode(*(*(a1 + 32) + 8));
    sqlite3_errmsg(*(*(a1 + 32) + 8));
    return _WLLog();
  }

  else
  {
    if (sqlite3_step(ppStmt) != 101)
    {
      sqlite3_errcode(*(*(a1 + 32) + 8));
      sqlite3_errmsg(*(*(a1 + 32) + 8));
      _WLLog();
    }

    return sqlite3_finalize(ppStmt);
  }
}

- (id)groupMessageInfoMatchingSourceThreadID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__3;
  v16 = __Block_byref_object_dispose__3;
  v17 = 0;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__WLSQLController_groupMessageInfoMatchingSourceThreadID___block_invoke;
  block[3] = &unk_279EB60D0;
  block[4] = self;
  v10 = dCopy;
  v11 = &v12;
  v6 = dCopy;
  dispatch_sync(databaseQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __58__WLSQLController_groupMessageInfoMatchingSourceThreadID___block_invoke(uint64_t a1)
{
  ppStmt = 0;
  if (sqlite3_prepare(*(*(a1 + 32) + 8), "SELECT roomName, groupID FROM groupMessageInfo WHERE sourceThreadID=? LIMIT 1", -1, &ppStmt, 0))
  {
    sqlite3_errcode(*(*(a1 + 32) + 8));
    sqlite3_errmsg(*(*(a1 + 32) + 8));
    return _WLLog();
  }

  else
  {
    sqlite3_bind_text(ppStmt, 1, [*(a1 + 40) UTF8String], -1, 0);
    while (sqlite3_step(ppStmt) == 100)
    {
      v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:{sqlite3_column_text(ppStmt, 0)}];
      v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:{sqlite3_column_text(ppStmt, 1)}];
      v5 = [WLGroupMessageInfo groupMessageInfoWithSourceThreadID:*(a1 + 40) sortedHandleIDs:0 handleIDsAreComplete:0 roomName:v3 groupID:v4];
      v6 = *(*(a1 + 48) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;
    }

    if (sqlite3_errcode(*(*(a1 + 32) + 8)) != 101 && sqlite3_errcode(*(*(a1 + 32) + 8)) >= 1)
    {
      sqlite3_errcode(*(*(a1 + 32) + 8));
      sqlite3_errmsg(*(*(a1 + 32) + 8));
      _WLLog();
    }

    return sqlite3_finalize(ppStmt);
  }
}

- (id)groupMessageInfoMatchingSortedHandleIDs:(id)ds handleIDsAreComplete:(BOOL)complete didMatchExactly:(BOOL *)exactly
{
  dsCopy = ds;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__3;
  v29 = __Block_byref_object_dispose__3;
  v30 = 0;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __96__WLSQLController_groupMessageInfoMatchingSortedHandleIDs_handleIDsAreComplete_didMatchExactly___block_invoke;
  block[3] = &unk_279EB6170;
  block[4] = self;
  v10 = dsCopy;
  completeCopy = complete;
  v21 = v10;
  v22 = &v25;
  exactlyCopy = exactly;
  dispatch_sync(databaseQueue, block);
  v11 = v26[5];
  if (!v11)
  {
    v12 = self->_databaseQueue;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __96__WLSQLController_groupMessageInfoMatchingSortedHandleIDs_handleIDsAreComplete_didMatchExactly___block_invoke_2;
    v15[3] = &unk_279EB6170;
    v15[4] = self;
    completeCopy2 = complete;
    v16 = v10;
    v17 = &v25;
    exactlyCopy2 = exactly;
    dispatch_sync(v12, v15);

    v11 = v26[5];
  }

  v13 = v11;

  _Block_object_dispose(&v25, 8);

  return v13;
}

void __96__WLSQLController_groupMessageInfoMatchingSortedHandleIDs_handleIDsAreComplete_didMatchExactly___block_invoke(uint64_t a1)
{
  ppStmt = 0;
  if (sqlite3_prepare(*(*(a1 + 32) + 8), "SELECT roomName, groupID FROM groupMessageInfo WHERE sortedHandleIDs=? AND handleIDsAreComplete=? LIMIT 1", -1, &ppStmt, 0))
  {
    sqlite3_errcode(*(*(a1 + 32) + 8));
    sqlite3_errmsg(*(*(a1 + 32) + 8));
    _WLLog();
  }

  else
  {
    v2 = [*(a1 + 40) componentsJoinedByString:{@", "}];
    sqlite3_bind_text(ppStmt, 1, [v2 UTF8String], -1, 0);
    sqlite3_bind_int(ppStmt, 2, *(a1 + 64));
    while (sqlite3_step(ppStmt) == 100)
    {
      v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:{sqlite3_column_text(ppStmt, 0)}];
      v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:{sqlite3_column_text(ppStmt, 1)}];
      v5 = [WLGroupMessageInfo groupMessageInfoWithSourceThreadID:0 sortedHandleIDs:*(a1 + 40) handleIDsAreComplete:*(a1 + 64) roomName:v3 groupID:v4];
      v6 = *(*(a1 + 48) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;

      v8 = *(a1 + 56);
      if (v8)
      {
        *v8 = 1;
      }
    }

    if (sqlite3_errcode(*(*(a1 + 32) + 8)) != 101 && sqlite3_errcode(*(*(a1 + 32) + 8)) >= 1)
    {
      sqlite3_errcode(*(*(a1 + 32) + 8));
      sqlite3_errmsg(*(*(a1 + 32) + 8));
      _WLLog();
    }

    sqlite3_finalize(ppStmt);
  }
}

void __96__WLSQLController_groupMessageInfoMatchingSortedHandleIDs_handleIDsAreComplete_didMatchExactly___block_invoke_2(uint64_t a1)
{
  ppStmt = 0;
  if (sqlite3_prepare(*(*(a1 + 32) + 8), "SELECT sortedHandleIDs, roomName, groupID FROM groupMessageInfo WHERE handleIDsCount=? AND handleIDsAreComplete=?", -1, &ppStmt, 0))
  {
    sqlite3_errcode(*(*(a1 + 32) + 8));
    sqlite3_errmsg(*(*(a1 + 32) + 8));
    _WLLog();
  }

  else
  {
    v2 = [*(a1 + 40) count];
    sqlite3_bind_int(ppStmt, 1, v2 - 1);
    v3 = *(a1 + 64);
    sqlite3_bind_int(ppStmt, 2, v3 ^ 1);
    if (sqlite3_step(ppStmt) == 100)
    {
      v4 = 0;
      while (1)
      {
        v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{sqlite3_column_text(ppStmt, 0)}];
        v6 = [v5 wl_sqlIDComponentsSeparatedByString:{@", "}];

        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{sqlite3_column_text(ppStmt, 1)}];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{sqlite3_column_text(ppStmt, 2)}];
        if (!v4)
        {
          v4 = [MEMORY[0x277CBEB98] setWithArray:*(a1 + 40)];
        }

        if ([*(a1 + 32) _foundHandleIDs:v6 representSameGroupMessageAsHandleIDs:v4 handleIDsAreComplete:*(a1 + 64)])
        {
          break;
        }

        if (sqlite3_step(ppStmt) != 100)
        {
          goto LABEL_14;
        }
      }

      v9 = [WLGroupMessageInfo groupMessageInfoWithSourceThreadID:0 sortedHandleIDs:v6 handleIDsAreComplete:v3 == 0 roomName:v7 groupID:v8];
      v10 = *(*(a1 + 48) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      v12 = *(a1 + 56);
      if (v12)
      {
        *v12 = 0;
      }
    }

    else
    {
      v4 = 0;
    }

LABEL_14:
    if (sqlite3_errcode(*(*(a1 + 32) + 8)) != 101 && sqlite3_errcode(*(*(a1 + 32) + 8)) != 100 && sqlite3_errcode(*(*(a1 + 32) + 8)) >= 1)
    {
      sqlite3_errcode(*(*(a1 + 32) + 8));
      sqlite3_errmsg(*(*(a1 + 32) + 8));
      _WLLog();
    }

    sqlite3_finalize(ppStmt);
  }
}

- (BOOL)_foundHandleIDs:(id)ds representSameGroupMessageAsHandleIDs:(id)iDs handleIDsAreComplete:(BOOL)complete
{
  completeCopy = complete;
  v7 = MEMORY[0x277CBEB98];
  iDsCopy = iDs;
  v9 = [v7 setWithArray:ds];
  v10 = v9;
  if (completeCopy)
  {
    v11 = iDsCopy;
  }

  else
  {
    v9 = iDsCopy;
    v11 = v10;
  }

  v12 = [v9 isSubsetOfSet:v11];

  return v12;
}

- (void)insertGroupMessageInfoWithSourceThreadID:(id)d roomName:(id)name groupID:(id)iD
{
  dCopy = d;
  nameCopy = name;
  iDCopy = iD;
  databaseQueue = self->_databaseQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __77__WLSQLController_insertGroupMessageInfoWithSourceThreadID_roomName_groupID___block_invoke;
  v15[3] = &unk_279EB6198;
  v15[4] = self;
  v16 = dCopy;
  v17 = nameCopy;
  v18 = iDCopy;
  v12 = iDCopy;
  v13 = nameCopy;
  v14 = dCopy;
  dispatch_sync(databaseQueue, v15);
}

uint64_t __77__WLSQLController_insertGroupMessageInfoWithSourceThreadID_roomName_groupID___block_invoke(uint64_t a1)
{
  ppStmt = 0;
  if (sqlite3_prepare(*(*(a1 + 32) + 8), "INSERT INTO groupMessageInfo (sourceThreadID, roomName, groupID) VALUES (?, ?, ?)", -1, &ppStmt, 0))
  {
    sqlite3_errcode(*(*(a1 + 32) + 8));
    sqlite3_errmsg(*(*(a1 + 32) + 8));
    return _WLLog();
  }

  else
  {
    sqlite3_bind_text(ppStmt, 1, [*(a1 + 40) UTF8String], -1, 0);
    sqlite3_bind_text(ppStmt, 2, [*(a1 + 48) UTF8String], -1, 0);
    sqlite3_bind_text(ppStmt, 3, [*(a1 + 56) UTF8String], -1, 0);
    if (sqlite3_step(ppStmt) != 101)
    {
      sqlite3_errcode(*(*(a1 + 32) + 8));
      sqlite3_errmsg(*(*(a1 + 32) + 8));
      _WLLog();
    }

    return sqlite3_finalize(ppStmt);
  }
}

- (void)insertGroupMessageInfoWithSortedHandleIDs:(id)ds handleIDsAreComplete:(BOOL)complete roomName:(id)name groupID:(id)d
{
  dsCopy = ds;
  nameCopy = name;
  dCopy = d;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __99__WLSQLController_insertGroupMessageInfoWithSortedHandleIDs_handleIDsAreComplete_roomName_groupID___block_invoke;
  block[3] = &unk_279EB61C0;
  block[4] = self;
  v18 = dsCopy;
  completeCopy = complete;
  v19 = nameCopy;
  v20 = dCopy;
  v14 = dCopy;
  v15 = nameCopy;
  v16 = dsCopy;
  dispatch_sync(databaseQueue, block);
}

void __99__WLSQLController_insertGroupMessageInfoWithSortedHandleIDs_handleIDsAreComplete_roomName_groupID___block_invoke(uint64_t a1)
{
  ppStmt = 0;
  if (sqlite3_prepare(*(*(a1 + 32) + 8), "INSERT INTO groupMessageInfo (sortedHandleIDs, handleIDsAreComplete, handleIDsCount, roomName, groupID) VALUES (?, ?, ?, ?, ?)", -1, &ppStmt, 0))
  {
    sqlite3_errcode(*(*(a1 + 32) + 8));
    sqlite3_errmsg(*(*(a1 + 32) + 8));
    _WLLog();
  }

  else
  {
    v2 = [*(a1 + 40) componentsJoinedByString:{@", "}];
    sqlite3_bind_text(ppStmt, 1, [v2 UTF8String], -1, 0);
    sqlite3_bind_int(ppStmt, 2, *(a1 + 64));
    sqlite3_bind_int(ppStmt, 3, [*(a1 + 40) count]);
    sqlite3_bind_text(ppStmt, 4, [*(a1 + 48) UTF8String], -1, 0);
    sqlite3_bind_text(ppStmt, 5, [*(a1 + 56) UTF8String], -1, 0);
    if (sqlite3_step(ppStmt) != 101)
    {
      sqlite3_errcode(*(*(a1 + 32) + 8));
      sqlite3_errmsg(*(*(a1 + 32) + 8));
      _WLLog();
    }

    sqlite3_finalize(ppStmt);
  }
}

- (void)deleteGroupMessageInfoForAllDevices
{
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__WLSQLController_deleteGroupMessageInfoForAllDevices__block_invoke;
  block[3] = &unk_279EB54A0;
  block[4] = self;
  dispatch_sync(databaseQueue, block);
}

uint64_t __54__WLSQLController_deleteGroupMessageInfoForAllDevices__block_invoke(uint64_t a1)
{
  ppStmt = 0;
  if (sqlite3_prepare(*(*(a1 + 32) + 8), "DELETE FROM groupMessageInfo", -1, &ppStmt, 0))
  {
    sqlite3_errcode(*(*(a1 + 32) + 8));
    sqlite3_errmsg(*(*(a1 + 32) + 8));
    return _WLLog();
  }

  else
  {
    if (sqlite3_step(ppStmt) != 101)
    {
      sqlite3_errcode(*(*(a1 + 32) + 8));
      sqlite3_errmsg(*(*(a1 + 32) + 8));
      _WLLog();
    }

    return sqlite3_finalize(ppStmt);
  }
}

- (id)statisticsForContentType:(id)type
{
  typeCopy = type;
  v5 = [WLStatistics _statisticsWithContentType:typeCopy];
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__WLSQLController_statisticsForContentType___block_invoke;
  block[3] = &unk_279EB60A8;
  block[4] = self;
  v13 = typeCopy;
  v7 = v5;
  v14 = v7;
  v8 = typeCopy;
  dispatch_sync(databaseQueue, block);
  v9 = v14;
  v10 = v7;

  return v7;
}

uint64_t __44__WLSQLController_statisticsForContentType___block_invoke(id *a1)
{
  ppStmt = 0;
  if (sqlite3_prepare(*(a1[4] + 1), "SELECT selectedForMigration, downloadDuration, downloadByteCount, importStartDate, importEndDate, importStartBytesFree, importEndBytesFree, importRecordCount, importFailedRecordCount FROM statistics WHERE contentType=? LIMIT 1", -1, &ppStmt, 0))
  {
    sqlite3_errcode(*(a1[4] + 1));
    sqlite3_errmsg(*(a1[4] + 1));
    return _WLLog();
  }

  else
  {
    sqlite3_bind_text(ppStmt, 1, [a1[5] UTF8String], -1, 0);
    v3 = sqlite3_step(ppStmt);
    v4 = v3;
    while (v3 == 100)
    {
      [a1[6] setSelectedForMigration:{sqlite3_column_int(ppStmt, 0) != 0}];
      [a1[6] setDownloadDuration:{sqlite3_column_int64(ppStmt, 1)}];
      [a1[6] setDownloadByteCount:{sqlite3_column_int64(ppStmt, 2)}];
      v5 = [a1[4] _sqlite3_column_NSDateForStatement:ppStmt column:3];
      [a1[6] setImportStartDate:v5];

      v6 = [a1[4] _sqlite3_column_NSDateForStatement:ppStmt column:4];
      [a1[6] setImportEndDate:v6];

      [a1[6] setImportStartBytesFree:{sqlite3_column_int64(ppStmt, 5)}];
      [a1[6] setImportEndBytesFree:{sqlite3_column_int64(ppStmt, 6)}];
      [a1[6] setImportRecordCount:{sqlite3_column_int64(ppStmt, 7)}];
      [a1[6] setImportFailedRecordCount:{sqlite3_column_int64(ppStmt, 8)}];
      v3 = sqlite3_step(ppStmt);
    }

    if (sqlite3_errcode(*(a1[4] + 1)) != 101 && sqlite3_errcode(*(a1[4] + 1)) >= 1)
    {
      sqlite3_errcode(*(a1[4] + 1));
      sqlite3_errmsg(*(a1[4] + 1));
      _WLLog();
    }

    result = sqlite3_finalize(ppStmt);
    if (v4 != 100)
    {
      return [a1[4] _insertStatistics_onDatabaseQueue:a1[6]];
    }
  }

  return result;
}

- (void)updateStatistics:(id)statistics
{
  statisticsCopy = statistics;
  databaseQueue = self->_databaseQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__WLSQLController_updateStatistics___block_invoke;
  v7[3] = &unk_279EB60F8;
  v7[4] = self;
  v8 = statisticsCopy;
  v6 = statisticsCopy;
  dispatch_sync(databaseQueue, v7);
}

uint64_t __36__WLSQLController_updateStatistics___block_invoke(uint64_t a1)
{
  ppStmt = 0;
  if (sqlite3_prepare(*(*(a1 + 32) + 8), "UPDATE statistics SET selectedForMigration=?, downloadDuration=?, downloadByteCount=?, importStartDate=?, importEndDate=?, importStartBytesFree=?, importEndBytesFree=?, importRecordCount=?, importFailedRecordCount=? WHERE contentType=?", -1, &ppStmt, 0))
  {
    sqlite3_errcode(*(*(a1 + 32) + 8));
    sqlite3_errmsg(*(*(a1 + 32) + 8));
    return _WLLog();
  }

  else
  {
    sqlite3_bind_int(ppStmt, 1, [*(a1 + 40) selectedForMigration]);
    sqlite3_bind_int64(ppStmt, 2, [*(a1 + 40) downloadDuration]);
    sqlite3_bind_int64(ppStmt, 3, [*(a1 + 40) downloadByteCount]);
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) importStartDate];
    [v3 _sqlite3_bind_NSDate:v4 forStatement:ppStmt position:4];

    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) importEndDate];
    [v5 _sqlite3_bind_NSDate:v6 forStatement:ppStmt position:5];

    sqlite3_bind_int64(ppStmt, 6, [*(a1 + 40) importStartBytesFree]);
    sqlite3_bind_int64(ppStmt, 7, [*(a1 + 40) importEndBytesFree]);
    sqlite3_bind_int64(ppStmt, 8, [*(a1 + 40) importRecordCount]);
    sqlite3_bind_int64(ppStmt, 9, [*(a1 + 40) importFailedRecordCount]);
    v7 = ppStmt;
    v8 = [*(a1 + 40) contentType];
    sqlite3_bind_text(v7, 10, [v8 UTF8String], -1, 0);

    if (sqlite3_step(ppStmt) != 101)
    {
      sqlite3_errcode(*(*(a1 + 32) + 8));
      sqlite3_errmsg(*(*(a1 + 32) + 8));
      _WLLog();
    }

    return sqlite3_finalize(ppStmt);
  }
}

- (void)_insertStatistics_onDatabaseQueue:(id)queue
{
  queueCopy = queue;
  ppStmt = 0;
  if (sqlite3_prepare(self->_database, "INSERT INTO statistics (contentType, selectedForMigration, downloadDuration, downloadByteCount, importStartDate, importEndDate, importStartBytesFree, importEndBytesFree, importRecordCount, importFailedRecordCount) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", -1, &ppStmt, 0))
  {
    sqlite3_errcode(self->_database);
    sqlite3_errmsg(self->_database);
    _WLLog();
  }

  else
  {
    v5 = ppStmt;
    contentType = [queueCopy contentType];
    sqlite3_bind_text(v5, 1, [contentType UTF8String], -1, 0);

    sqlite3_bind_int(ppStmt, 2, [queueCopy selectedForMigration]);
    sqlite3_bind_int64(ppStmt, 3, [queueCopy downloadDuration]);
    sqlite3_bind_int64(ppStmt, 4, [queueCopy downloadByteCount]);
    importStartDate = [queueCopy importStartDate];
    [(WLSQLController *)self _sqlite3_bind_NSDate:importStartDate forStatement:ppStmt position:5];

    importEndDate = [queueCopy importEndDate];
    [(WLSQLController *)self _sqlite3_bind_NSDate:importEndDate forStatement:ppStmt position:6];

    sqlite3_bind_int64(ppStmt, 7, [queueCopy importStartBytesFree]);
    sqlite3_bind_int64(ppStmt, 8, [queueCopy importEndBytesFree]);
    sqlite3_bind_int64(ppStmt, 9, [queueCopy importRecordCount]);
    sqlite3_bind_int64(ppStmt, 10, [queueCopy importFailedRecordCount]);
    if (sqlite3_step(ppStmt) != 101)
    {
      sqlite3_errcode(self->_database);
      sqlite3_errmsg(self->_database);
      _WLLog();
    }

    sqlite3_finalize(ppStmt);
  }
}

- (void)deleteStatisticsForAllDevices
{
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__WLSQLController_deleteStatisticsForAllDevices__block_invoke;
  block[3] = &unk_279EB54A0;
  block[4] = self;
  dispatch_sync(databaseQueue, block);
}

uint64_t __48__WLSQLController_deleteStatisticsForAllDevices__block_invoke(uint64_t a1)
{
  ppStmt = 0;
  if (sqlite3_prepare(*(*(a1 + 32) + 8), "DELETE FROM statistics", -1, &ppStmt, 0))
  {
    sqlite3_errcode(*(*(a1 + 32) + 8));
    sqlite3_errmsg(*(*(a1 + 32) + 8));
    return _WLLog();
  }

  else
  {
    if (sqlite3_step(ppStmt) != 101)
    {
      sqlite3_errcode(*(*(a1 + 32) + 8));
      sqlite3_errmsg(*(*(a1 + 32) + 8));
      _WLLog();
    }

    return sqlite3_finalize(ppStmt);
  }
}

- (void)_openDatabase
{
  stringByDeletingLastPathComponent = [(NSString *)self->_databasePath stringByDeletingLastPathComponent];
  if (stringByDeletingLastPathComponent)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v4 = [defaultManager fileExistsAtPath:stringByDeletingLastPathComponent];

    if ((v4 & 1) == 0)
    {
      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      [defaultManager2 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:0];
    }
  }

  if (sqlite3_open([(NSString *)self->_databasePath UTF8String], &self->_database))
  {
    selfCopy = self;
    databasePath = self->_databasePath;
    _WLLog();
  }

  [(WLSQLController *)self _performQuery:@"pragma foreign_keys=on" rowHandler:0, selfCopy, databasePath];
  [(WLSQLController *)self _ensureCorrectSchema];
}

- (void)closeDatabase
{
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__WLSQLController_closeDatabase__block_invoke;
  block[3] = &unk_279EB54A0;
  block[4] = self;
  dispatch_sync(databaseQueue, block);
}

sqlite3 *__32__WLSQLController_closeDatabase__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 8);
  if (result)
  {
    result = sqlite3_close(result);
    *(*(a1 + 32) + 8) = 0;
  }

  return result;
}

- (void)_ensureCorrectSchema
{
  if ([(WLSQLController *)self _schemaVersion]!= 12)
  {
    [(WLSQLController *)self _performQuery:@"DROP TABLE IF EXISTS metadata" rowHandler:0];
    [(WLSQLController *)self _performQuery:@"CREATE TABLE metadata (id INTEGER PRIMARY KEY rowHandler:device TEXT NOT NULL, communicationDate INTEGER, state INTEGER, attemptCount INTEGER, crashCount INTEGER)", 0];
    [(WLSQLController *)self _performQuery:@"DROP TABLE IF EXISTS accounts" rowHandler:0];
    [(WLSQLController *)self _performQuery:@"CREATE TABLE accounts (id INTEGER PRIMARY KEY rowHandler:identifier TEXT, device TEXT, migrator TEXT)", 0];
    [(WLSQLController *)self _performQuery:@"DROP TABLE IF EXISTS summaries" rowHandler:0];
    [(WLSQLController *)self _performQuery:@"CREATE TABLE summaries (id INTEGER PRIMARY KEY rowHandler:accountID INTEGER REFERENCES accounts(id), identifier TEXT, migrationState INTEGER DEFAULT 0, itemSize INTEGER, relativePath TEXT, modifiedDate INTEGER, storeDataAsFile INTEGER, dataFilePath TEXT, downloadSegmentCount INTEGER CHECK (downloadSegmentCount > 0), metadata BLOB, data BLOB, migrationError BLOB DEFAULT NULL, bucket TEXT)", 0];
    [(WLSQLController *)self _performQuery:@"DROP TABLE IF EXISTS migratableApps" rowHandler:0];
    [(WLSQLController *)self _performQuery:@"CREATE TABLE migratableApps (id INTEGER PRIMARY KEY rowHandler:device TEXT, data BLOB)", 0];
    [(WLSQLController *)self _performQuery:@"DROP TABLE IF EXISTS bundleIDs" rowHandler:0];
    [(WLSQLController *)self _performQuery:@"CREATE TABLE bundleIDs (id INTEGER PRIMARY KEY rowHandler:device TEXT NOT NULL, bundleID TEXT NOT NULL)", 0];
    [(WLSQLController *)self _performQuery:@"DROP INDEX IF EXISTS messagePhoneNumbers_index" rowHandler:0];
    [(WLSQLController *)self _performQuery:@"DROP TABLE IF EXISTS messagePhoneNumbers" rowHandler:0];
    [(WLSQLController *)self _performQuery:@"CREATE TABLE messagePhoneNumbers (icc TEXT NOT NULL rowHandler:ccAcNumber TEXT NOT NULL, PRIMARY KEY (icc, ccAcNumber))", 0];
    [(WLSQLController *)self _performQuery:@"CREATE INDEX messagePhoneNumbers_index ON messagePhoneNumbers(ccAcNumber)" rowHandler:0];
    [(WLSQLController *)self _performQuery:@"DROP TABLE IF EXISTS groupMessageInfo" rowHandler:0];
    [(WLSQLController *)self _performQuery:@"CREATE TABLE groupMessageInfo (id INTEGER PRIMARY KEY rowHandler:sourceThreadID TEXT UNIQUE, sortedHandleIDs TEXT UNIQUE, handleIDsAreComplete INTEGER, handleIDsCount INTEGER, roomName TEXT NOT NULL, groupID TEXT NOT NULL)", 0];
    [(WLSQLController *)self _performQuery:@"DROP TABLE IF EXISTS statistics" rowHandler:0];
    [(WLSQLController *)self _performQuery:@"CREATE TABLE statistics (contentType TEXT PRIMARY KEY rowHandler:selectedForMigration INTEGER, downloadDuration INTEGER, downloadByteCount INTEGER, importStartDate INTEGER, importEndDate INTEGER, importStartBytesFree INTEGER, importEndBytesFree INTEGER, importRecordCount INTEGER, importFailedRecordCount INTEGER)", 0];
    [(WLSQLController *)self _performQuery:@"DROP TABLE IF EXISTS databaseProperties" rowHandler:0];
    [(WLSQLController *)self _performQuery:@"CREATE TABLE databaseProperties (key TEXT PRIMARY KEY rowHandler:value TEXT)", 0];
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"INSERT INTO databaseProperties (key, value) VALUES ('schemaVersion', '%@')", &unk_2882D6D30];
    [(WLSQLController *)self _performQuery:v3 rowHandler:0];
  }
}

- (int64_t)_schemaVersion
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __33__WLSQLController__schemaVersion__block_invoke;
  v4[3] = &unk_279EB61E8;
  v4[4] = &v5;
  [(WLSQLController *)self _performQuery:@"SELECT value FROM databaseProperties WHERE key='schemaVersion'" rowHandler:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __33__WLSQLController__schemaVersion__block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = sqlite3_column_text(a2, 0);
  if (v3)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:v3];
    *(*(*(a1 + 32) + 8) + 24) = [v4 integerValue];
  }
}

- (int64_t)_performQuery:(id)query rowHandler:(id)handler
{
  queryCopy = query;
  handlerCopy = handler;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = -1;
  databaseQueue = self->_databaseQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __44__WLSQLController__performQuery_rowHandler___block_invoke;
  v13[3] = &unk_279EB6210;
  v13[4] = self;
  v14 = queryCopy;
  v15 = handlerCopy;
  v16 = &v17;
  v9 = handlerCopy;
  v10 = queryCopy;
  dispatch_sync(databaseQueue, v13);
  v11 = *(v18 + 6);

  _Block_object_dispose(&v17, 8);
  return v11;
}

void __44__WLSQLController__performQuery_rowHandler___block_invoke(uint64_t a1)
{
  ppStmt = 0;
  if (sqlite3_prepare_v2(*(*(a1 + 32) + 8), [*(a1 + 40) UTF8String], -1, &ppStmt, 0))
  {
    v2 = *(a1 + 32);
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = *(a1 + 40);
    sqlite3_errcode(*(*(a1 + 32) + 8));
    sqlite3_errmsg(*(*(a1 + 32) + 8));
    _WLLog();
  }

  else
  {
    if (sqlite3_step(ppStmt) == 100)
    {
      v6 = 0;
      do
      {
        v7 = *(a1 + 48);
        if (v7)
        {
          (*(v7 + 16))(v7, ppStmt);
        }

        ++v6;
      }

      while (sqlite3_step(ppStmt) == 100);
    }

    else
    {
      v6 = 0;
    }

    if (sqlite3_errcode(*(*(a1 + 32) + 8)) == 101 || sqlite3_errcode(*(*(a1 + 32) + 8)) < 1)
    {
      v12 = [*(a1 + 40) uppercaseString];
      v13 = [v12 hasPrefix:@"INSERT"];

      if (v13)
      {
        *(*(*(a1 + 56) + 8) + 24) = sqlite3_last_insert_rowid(*(*(a1 + 32) + 8));
      }

      else
      {
        v14 = [*(a1 + 40) uppercaseString];
        v15 = [v14 hasPrefix:@"SELECT"];

        if (v15)
        {
          *(*(*(a1 + 56) + 8) + 24) = v6;
        }

        else
        {
          *(*(*(a1 + 56) + 8) + 24) = sqlite3_changes(*(*(a1 + 32) + 8));
        }
      }
    }

    else
    {
      v8 = *(a1 + 32);
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = *(a1 + 40);
      sqlite3_errcode(*(*(a1 + 32) + 8));
      sqlite3_errmsg(*(*(a1 + 32) + 8));
      _WLLog();
    }

    sqlite3_finalize(ppStmt);
  }
}

- (id)_sqlite3_column_NSDateForStatement:(sqlite3_stmt *)statement column:(int)column
{
  v4 = sqlite3_column_int64(statement, column);
  if (v4)
  {
    v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v4];
  }

  return v4;
}

- (int)_sqlite3_bind_NSDate:(id)date forStatement:(sqlite3_stmt *)statement position:(int)position
{
  v7 = [WLSQLController persistentValueForDate:date];

  return sqlite3_bind_int64(statement, position, v7);
}

@end