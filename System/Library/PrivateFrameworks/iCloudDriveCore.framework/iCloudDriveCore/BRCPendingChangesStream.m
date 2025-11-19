@interface BRCPendingChangesStream
- (BOOL)_dropExistingTablesWithDB:(id)a3;
- (BOOL)_finishedFetchingRecordMetadata:(id)a3 withDB:(id)a4;
- (BOOL)_saveSubResourceRecord:(id)a3 withDB:(id)a4;
- (BOOL)dumpTablesToContext:(id)a3 includeAllItems:(BOOL)a4 error:(id *)a5;
- (BOOL)enumerateRecordsNeedingMetadataFetchWithBlock:(id)a3;
- (BOOL)enumerateRecordsNeedingXattrFetchWithBlock:(id)a3;
- (BOOL)enumerateRecordsOfType:(int64_t)a3 block:(id)a4;
- (BOOL)hasFetchRecordByID:(id)a3;
- (BOOL)hasRecordDeletes;
- (BOOL)hasRecordIDBlockedOnSubResources:(id)a3;
- (BOOL)hasRecordIDsToDeserialize;
- (BOOL)hasSubResourceRecords;
- (BOOL)hasXattrsToFetch;
- (BOOL)saveEditedRecords:(id)a3 deletedRecordIDs:(id)a4 deletedShareIDs:(id)a5 subResourceEditedRecords:(id)a6 serverChangeToken:(id)a7 clientChangeToken:(int64_t)a8;
- (BOOL)saveEditedRecords:(id)a3 subResourceEditedRecords:(id)a4 queryCursor:(id)a5;
- (BOOL)saveSubResourceRecords:(id)a3 afterSavingMainTableItems:(id)a4 queryCursor:(id)a5;
- (BOOL)unblockRecord:(id)a3 waitingOnRecord:(id)a4;
- (BRCPendingChangesStream)initWithServerZone:(id)a3;
- (id)_getChangesStreamSafeDBHolder;
- (id)_initDeltaSyncWithChangeToken:(id)a3 serverZone:(id)a4;
- (id)initForListingWithParent:(id)a3 serverZone:(id)a4;
- (int64_t)_recordTypeFromRecordID:(id)a3 isShare:(BOOL)a4 isDelete:(BOOL)a5;
- (int64_t)copyBlockingSaveRecordsToNeedingFetchIgnoringRecords:(id)a3;
- (void)_closeChangeStream;
- (void)_closeDatabaseAndDestroy:(BOOL)a3;
- (void)_createSchemaIfNecessary;
- (void)_dbBecameCorrupted:(id)a3 withDescription:(id)a4;
- (void)_openDB;
- (void)_wasClosed;
- (void)dealloc;
- (void)fetchQueryCursor:(id)a3;
- (void)fetchTokenState:(id)a3;
- (void)finishedFetchingXattrSignatures:(id)a3;
- (void)unblockRecordSavesWaitingOnRecordID:(id)a3;
@end

@implementation BRCPendingChangesStream

- (BOOL)hasXattrsToFetch
{
  if (self->_hasBeenCreated)
  {
    v3 = [(BRCPendingChangesStream *)self _getChangesStreamSafeDBHolder];
    v4 = v3;
    if (self->_error)
    {
      v5 = 0;
    }

    else
    {
      v9 = 0;
      v10 = &v9;
      v11 = 0x2020000000;
      v12 = 0;
      v6 = [v3 db];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __43__BRCPendingChangesStream_hasXattrsToFetch__block_invoke;
      v8[3] = &unk_2785067A8;
      v8[4] = &v9;
      [v6 performWithFlags:1 action:v8];

      v5 = *(v10 + 24);
      _Block_object_dispose(&v9, 8);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (BOOL)hasRecordIDsToDeserialize
{
  if (self->_hasBeenCreated)
  {
    v3 = [(BRCPendingChangesStream *)self _getChangesStreamSafeDBHolder];
    v4 = v3;
    if (self->_error)
    {
      v5 = 0;
    }

    else
    {
      v9 = 0;
      v10 = &v9;
      v11 = 0x2020000000;
      v12 = 0;
      v6 = [v3 db];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __52__BRCPendingChangesStream_hasRecordIDsToDeserialize__block_invoke;
      v8[3] = &unk_2785067A8;
      v8[4] = &v9;
      [v6 performWithFlags:1 action:v8];

      v5 = *(v10 + 24);
      _Block_object_dispose(&v9, 8);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (BOOL)hasSubResourceRecords
{
  if (self->_hasBeenCreated)
  {
    v3 = [(BRCPendingChangesStream *)self _getChangesStreamSafeDBHolder];
    v4 = v3;
    if (self->_error)
    {
      v5 = 0;
    }

    else
    {
      v9 = 0;
      v10 = &v9;
      v11 = 0x2020000000;
      v12 = 0;
      v6 = [v3 db];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __48__BRCPendingChangesStream_hasSubResourceRecords__block_invoke;
      v8[3] = &unk_2785067A8;
      v8[4] = &v9;
      [v6 performWithFlags:1 action:v8];

      v5 = *(v10 + 24);
      _Block_object_dispose(&v9, 8);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (void)dealloc
{
  OUTLINED_FUNCTION_18();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [*(v0 + 8) path];
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);

  v7 = *MEMORY[0x277D85DE8];
}

- (id)_getChangesStreamSafeDBHolder
{
  if (_getChangesStreamSafeDBHolder_onceToken != -1)
  {
    [BRCPendingChangesStream _getChangesStreamSafeDBHolder];
  }

  v3 = _pendingChangesStreamPool;
  objc_sync_enter(v3);
  v4 = [_pendingChangesStreamPool objectForKey:self];

  if (!v4)
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [BRCPendingChangesStream _getChangesStreamSafeDBHolder];
    }

    [(BRCPendingChangesStream *)self _openDB];
  }

  v7 = self->_dbSafeHolder;
  v8 = _pendingChangesStreamPool;
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:mach_absolute_time()];
  [v8 setObject:v9 forKey:self];

  v10 = [BRCUserDefaults defaultsForMangledID:0];
  v11 = [v10 pendingChangesStreamSoftOpenCount];

  v12 = [BRCUserDefaults defaultsForMangledID:0];
  v13 = [v12 pendingChangesStreamHardOpenCount];

  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __56__BRCPendingChangesStream__getChangesStreamSafeDBHolder__block_invoke_103;
  v35[3] = &__block_descriptor_40_e5_v8__0l;
  v35[4] = v11;
  v14 = MEMORY[0x22AA4A310](v35);
  if ([_pendingChangesStreamPool count] <= v13)
  {
    if ([_pendingChangesStreamPool count] > v11 && !_getChangesStreamSafeDBHolder__closeChangesTimer)
    {
      v17 = brc_bread_crumbs();
      v18 = brc_default_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [BRCPendingChangesStream _getChangesStreamSafeDBHolder];
      }

      v19 = [(BRCClientZone *)self->_clientZone db];
      v20 = [v19 serialQueue];
      v21 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v20);
      v22 = _getChangesStreamSafeDBHolder__closeChangesTimer;
      _getChangesStreamSafeDBHolder__closeChangesTimer = v21;

      v23 = [BRCUserDefaults defaultsForMangledID:0];
      v24 = [v23 pendingChangesStreamCloseDelay];

      v25 = _getChangesStreamSafeDBHolder__closeChangesTimer;
      v26 = dispatch_time(0, v24);
      dispatch_source_set_timer(v25, v26, 0xFFFFFFFFFFFFFFFFLL, v24 / 0xA);
      v27 = _getChangesStreamSafeDBHolder__closeChangesTimer;
      v28 = v14;
      v29 = v27;
      v30 = v28;
      v31 = v30;
      v32 = v30;
      if (*MEMORY[0x277CFB010])
      {
        v32 = (*MEMORY[0x277CFB010])(v30);
      }

      v33 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, v32);
      dispatch_source_set_event_handler(v29, v33);

      dispatch_resume(_getChangesStreamSafeDBHolder__closeChangesTimer);
    }
  }

  else
  {
    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [BRCPendingChangesStream _getChangesStreamSafeDBHolder];
    }

    v14[2](v14);
  }

  objc_sync_exit(v3);

  return v7;
}

uint64_t __56__BRCPendingChangesStream__getChangesStreamSafeDBHolder__block_invoke()
{
  _pendingChangesStreamPool = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];

  return MEMORY[0x2821F96F8]();
}

void __56__BRCPendingChangesStream__getChangesStreamSafeDBHolder__block_invoke_103(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = _pendingChangesStreamPool;
  objc_sync_enter(v2);
  v3 = NSAllMapTableKeys(_pendingChangesStreamPool);
  v4 = [v3 mutableCopy];

  [v4 sortUsingComparator:&__block_literal_global_106];
  v5 = 0;
  *&v6 = 138412546;
  v13 = v6;
  while (1)
  {
    v7 = *(a1 + 32);
    if (v5 + v7 >= [v4 count])
    {
      break;
    }

    v8 = [v4 objectAtIndex:v5];
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = v13;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      _os_log_debug_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] Closing changes stream %@%@", buf, 0x16u);
    }

    [v8 _closeChangeStream];
    ++v5;
  }

  if (_getChangesStreamSafeDBHolder__closeChangesTimer)
  {
    dispatch_source_cancel(_getChangesStreamSafeDBHolder__closeChangesTimer);
    v11 = _getChangesStreamSafeDBHolder__closeChangesTimer;
    _getChangesStreamSafeDBHolder__closeChangesTimer = 0;
  }

  objc_sync_exit(v2);
  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __56__BRCPendingChangesStream__getChangesStreamSafeDBHolder__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = _pendingChangesStreamPool;
  v5 = a3;
  v6 = [v4 objectForKey:a2];
  v7 = [_pendingChangesStreamPool objectForKey:v5];

  v8 = [v6 compare:v7];
  return v8;
}

- (void)_wasClosed
{
  self->_dbHasOpened = 0;
  obj = _pendingChangesStreamPool;
  objc_sync_enter(obj);
  [_pendingChangesStreamPool removeObjectForKey:self];
  objc_sync_exit(obj);
}

- (void)_dbBecameCorrupted:(id)a3 withDescription:(id)a4
{
  v7 = a3;
  v8 = a4;
  objc_storeStrong(&self->_error, a3);
  v9 = _pendingChangesStreamPool;
  objc_sync_enter(v9);
  v10 = self->_dbSafeHolder;
  dbSafeHolder = self->_dbSafeHolder;
  self->_dbSafeHolder = 0;

  [(BRCPendingChangesStream *)self _wasClosed];
  objc_sync_exit(v9);

  if (v10)
  {
    v12 = [(BRCClientZone *)self->_clientZone session];
    v13 = [v12 diskReclaimer];

    v14 = [(NSURL *)self->_databaseURL path];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __62__BRCPendingChangesStream__dbBecameCorrupted_withDescription___block_invoke;
    v17[3] = &unk_2784FFFA8;
    v18 = v14;
    v19 = v13;
    v15 = v13;
    v16 = v14;
    [(BRCSafeDBHolder *)v10 asyncCloseWithCompletionHandler:v17];
  }
}

uint64_t __62__BRCPendingChangesStream__dbBecameCorrupted_withDescription___block_invoke(uint64_t a1)
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __62__BRCPendingChangesStream__dbBecameCorrupted_withDescription___block_invoke_cold_1(a1);
  }

  return [*(a1 + 40) renameAndUnlinkInBackgroundItemAt:0xFFFFFFFFLL path:*(a1 + 32)];
}

- (id)_initDeltaSyncWithChangeToken:(id)a3 serverZone:(id)a4
{
  v7 = a3;
  v8 = a4;
  v25.receiver = self;
  v25.super_class = BRCPendingChangesStream;
  v9 = [(BRCPendingChangesStream *)&v25 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_startingChangeToken, a3);
    v11 = [v8 clientZone];
    clientZone = v10->_clientZone;
    v10->_clientZone = v11;

    objc_storeStrong(&v10->_serverZone, a4);
    v13 = [v8 session];
    v14 = [v13 stageRegistry];
    startingChangeToken = v10->_startingChangeToken;
    v16 = [v8 zoneID];
    v17 = [v14 pendingDeltaFetchRecordDirWithStartingChangeToken:startingChangeToken recordZoneID:v16];
    databaseURL = v10->_databaseURL;
    v10->_databaseURL = v17;

    v10->_hasBeenCreated = [(NSURL *)v10->_databaseURL checkResourceIsReachableAndReturnError:0];
    v19 = [v8 mangledID];
    v20 = MEMORY[0x277CCACA8];
    v21 = [v19 appLibraryOrZoneName];
    v22 = [v20 stringWithFormat:@"change-stream/%@", v21];
    label = v10->_label;
    v10->_label = v22;
  }

  return v10;
}

- (BRCPendingChangesStream)initWithServerZone:(id)a3
{
  v4 = a3;
  v5 = [v4 changeState];
  v6 = [v5 changeToken];
  v7 = [(BRCPendingChangesStream *)self _initDeltaSyncWithChangeToken:v6 serverZone:v4];

  return v7;
}

- (id)initForListingWithParent:(id)a3 serverZone:(id)a4
{
  v6 = a3;
  v7 = a4;
  v30.receiver = self;
  v30.super_class = BRCPendingChangesStream;
  v8 = [(BRCPendingChangesStream *)&v30 init];
  if (v8)
  {
    v9 = [v7 changeState];
    v10 = [v9 changeToken];
    startingChangeToken = v8->_startingChangeToken;
    v8->_startingChangeToken = v10;

    v29 = [v7 session];
    v12 = [v29 stageRegistry];
    v13 = [v12 pendingListRecordDirWithStartingChangeToken:v6];
    databaseURL = v8->_databaseURL;
    v8->_databaseURL = v13;

    v8->_hasBeenCreated = [(NSURL *)v8->_databaseURL checkResourceIsReachableAndReturnError:0];
    v15 = [v7 clientZone];
    clientZone = v8->_clientZone;
    v8->_clientZone = v15;

    v28 = MEMORY[0x277CCACA8];
    v17 = [v6 recordName];
    v18 = [v6 zoneID];
    v19 = [v18 zoneName];
    v20 = [v6 zoneID];
    v21 = [v20 ownerName];
    v22 = [v21 isEqualToString:*MEMORY[0x277CBBF28]];
    if (v22)
    {
      v23 = &stru_2837504F0;
    }

    else
    {
      v27 = [v6 zoneID];
      v23 = [v27 ownerName];
    }

    v24 = [v28 stringWithFormat:@"list-dir/%@/%@%@", v17, v19, v23];
    label = v8->_label;
    v8->_label = v24;

    if ((v22 & 1) == 0)
    {
    }
  }

  return v8;
}

- (BOOL)_dropExistingTablesWithDB:(id)a3
{
  v3 = a3;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [BRCPendingChangesStream _dropExistingTablesWithDB:];
  }

  if ([v3 execute:@"DROP TABLE IF EXISTS fetch_state"] && objc_msgSend(v3, "execute:", @"DROP TABLE IF EXISTS list_state") && objc_msgSend(v3, "execute:", @"DROP TABLE IF EXISTS record_changes"))
  {
    v6 = [v3 execute:@"DROP INDEX IF EXISTS record_changes/record_type"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_createSchemaIfNecessary
{
  v3 = [(BRCSafeDBHolder *)self->_dbSafeHolder db];
  v4 = [v3 userVersion];
  v5 = [v4 intValue];

  if (v5 <= 1)
  {
    v6 = [(BRCSafeDBHolder *)self->_dbSafeHolder db];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __51__BRCPendingChangesStream__createSchemaIfNecessary__block_invoke;
    v7[3] = &unk_278506730;
    v8 = v5;
    v7[4] = self;
    [v6 performWithFlags:8 action:v7];
  }
}

uint64_t __51__BRCPendingChangesStream__createSchemaIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(a1 + 40) != 1 || [*(a1 + 32) _dropExistingTablesWithDB:v3]) && objc_msgSend(v3, "execute:", @"CREATE TABLE fetch_state (server_token blob, client_token integer)") && objc_msgSend(v3, "execute:", @"CREATE TABLE list_state (cont_token blob, completed integer not null)") && objc_msgSend(v3, "execute:", @"CREATE TABLE record_changes (record_id text primary key, record_type integer not null, record blob)") && objc_msgSend(v3, "execute:", @"CREATE INDEX record_changes/record_type ON record_changes (record_type)") && objc_msgSend(v3, "execute:", @"INSERT INTO fetch_state (server_token, client_token) VALUES (%@, NULL)", *(*(a1 + 32) + 32)) && objc_msgSend(v3, "execute:", @"INSERT INTO list_state (cont_token, completed) VALUES (NULL, 0)") && objc_msgSend(v3, "execute:", @"CREATE TABLE records_needing_subresources (record_id text PRIMARY KEY, record_type integer not null, record blob, xattr_sig BLOB, record_id_needing_fetch text, record_id_blocking_save text)") && objc_msgSend(v3, "execute:", @"CREATE INDEX records_needing_subresources/xattr_sig ON records_needing_subresources(xattr_sig) WHERE xattr_sig IS NOT NULL") && objc_msgSend(v3, "execute:", @"CREATE INDEX records_needing_subresources/record_id_needing_fetch ON records_needing_subresources(record_id_needing_fetch) WHERE record_id_needing_fetch IS NOT NULL") && objc_msgSend(v3, "execute:", @"CREATE INDEX records_needing_subresources/record_id_blocking_save ON records_needing_subresources(record_id_blocking_save) WHERE record_id_blocking_save IS NOT NULL") && objc_msgSend(v3, "execute:", @"CREATE TRIGGER records_needing_subresources/resources_finished AFTER UPDATE ON records_needing_subresources BEGIN INSERT INTO record_changes (record_id, record_type, record)  SELECT record_id, record_type, record  FROM records_needing_subresources WHERE xattr_sig IS NULL AND record_id_needing_fetch IS NULL AND record_id_blocking_save IS NULL AND record IS NOT NULL AND record_id = new.record_id; DELETE FROM records_needing_subresources WHERE xattr_sig IS NULL AND record_id_needing_fetch IS NULL AND record_id_blocking_save IS NULL AND record IS NOT NULL AND record_id = new.record_id; END"))
  {
    v4 = [v3 execute:@"CREATE TRIGGER records_needing_subresources/unblock_save AFTER INSERT ON record_changes BEGIN UPDATE records_needing_subresources SET record_id_blocking_save = NULL WHERE record_id_blocking_save = new.record_id AND new.record IS NOT NULL; END"];
  }

  else
  {
    v4 = 0;
  }

  v5 = [BRCUserDefaults defaultsForMangledID:0];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lld", objc_msgSend(v5, "sqliteCacheSize")];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lld", objc_msgSend(v5, "sqliteCacheSpill")];
  v8 = [MEMORY[0x277D82C18] rawInjection:objc_msgSend(v6 length:{"UTF8String"), objc_msgSend(v6, "length")}];
  v9 = [v3 execute:{@"PRAGMA cache_size = %@", v8}];

  if ((v9 & 1) == 0)
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      __51__BRCPendingChangesStream__createSchemaIfNecessary__block_invoke_cold_1();
    }
  }

  v12 = [MEMORY[0x277D82C18] rawInjection:objc_msgSend(v7 length:{"UTF8String"), objc_msgSend(v7, "length")}];
  v13 = [v3 execute:{@"PRAGMA cache_spill = %@", v12}];

  if ((v13 & 1) == 0)
  {
    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      __51__BRCPendingChangesStream__createSchemaIfNecessary__block_invoke_cold_2();
    }
  }

  if (v4)
  {
    v4 = [v3 setUserVersion:2];
  }

  return v4;
}

- (void)_openDB
{
  v27 = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  if (!self->_hasBeenCreated)
  {
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = [(NSURL *)self->_databaseURL path];
      [(BRCPendingChangesStream *)v5 _openDB:v3];
    }

    v6 = [MEMORY[0x277CCAA00] defaultManager];
    [v6 createDirectoryAtURL:self->_databaseURL withIntermediateDirectories:1 attributes:0 error:0];

    self->_hasBeenCreated = 1;
  }

  v7 = [BRCPQLConnection alloc];
  label = self->_label;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __34__BRCPendingChangesStream__openDB__block_invoke;
  v23[3] = &unk_2784FF828;
  objc_copyWeak(&v24, &location);
  v9 = [(BRCPQLConnection *)v7 initWithLabel:label dbCorruptionHandler:v23];
  v10 = [(BRCServerZone *)self->_serverZone session];
  v11 = [v10 personaIdentifier];
  [(BRCPQLConnection *)v9 setAssertionPersonaIdentifier:v11];

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __34__BRCPendingChangesStream__openDB__block_invoke_186;
  v21[3] = &unk_2785019D8;
  objc_copyWeak(&v22, &location);
  [(BRCPQLConnection *)v9 setSqliteErrorHandler:v21];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __34__BRCPendingChangesStream__openDB__block_invoke_191;
  v19[3] = &unk_2785019D8;
  objc_copyWeak(&v20, &location);
  [(BRCPQLConnection *)v9 setAutoRollbackHandler:v19];
  v12 = [(NSURL *)self->_databaseURL URLByAppendingPathComponent:@"db.db"];
  v18 = 0;
  [(BRCPQLConnection *)v9 openAtURL:v12 withFlags:3145734 error:&v18];
  v13 = v18;
  v14 = v18;
  if (v14)
  {
    objc_storeStrong(&self->_error, v13);

    v9 = 0;
  }

  else
  {
    self->_dbHasOpened = 1;
    v15 = [BRCSafeDBHolder newSafeDBHolder:v9 withDatabaseURL:self->_databaseURL];
    dbSafeHolder = self->_dbSafeHolder;
    self->_dbSafeHolder = v15;

    [(BRCPendingChangesStream *)self _createSchemaIfNecessary];
    [(BRCPQLConnection *)v9 setSynchronousMode:1];
    [(BRCPQLConnection *)v9 execute:@"PRAGMA recursive_triggers = true"];
    [(BRCPQLConnection *)v9 useSerialQueue];
  }

  objc_destroyWeak(&v20);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&v24);

  objc_destroyWeak(&location);
  v17 = *MEMORY[0x277D85DE8];
}

void __34__BRCPendingChangesStream__openDB__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, 0x90u))
  {
    __34__BRCPendingChangesStream__openDB__block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dbBecameCorrupted:v7 withDescription:@"DB Corruption Handler of BRCPendingChangesStream"];

  v6[2](v6);
}

void __34__BRCPendingChangesStream__openDB__block_invoke_186(uint64_t a1, void *a2, void *a3, void *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = brc_bread_crumbs();
  v11 = brc_default_log();
  if (os_log_type_enabled(v11, 0x90u))
  {
    v18 = 138412802;
    v19 = v8;
    v20 = 2112;
    v21 = v9;
    v22 = 2112;
    v23 = v10;
    _os_log_error_impl(&dword_223E7A000, v11, 0x90u, "[ERROR] sqlite error handler called on pending sync db - %@ (%@)%@", &v18, 0x20u);
  }

  v12 = [v9 domain];
  if ([v12 isEqualToString:*MEMORY[0x277D82C20]])
  {
    v13 = [v9 code];

    if (v13 == 13)
    {
      v14 = brc_bread_crumbs();
      v15 = brc_default_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        __34__BRCPendingChangesStream__openDB__block_invoke_186_cold_1();
      }

      exit(1);
    }
  }

  else
  {
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dbBecameCorrupted:v9 withDescription:@"DB Error Handler of BRCPendingChangesStream"];

  v17 = *MEMORY[0x277D85DE8];
}

void __34__BRCPendingChangesStream__openDB__block_invoke_191(uint64_t a1, void *a2, void *a3, void *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = brc_bread_crumbs();
  v11 = brc_default_log();
  if (os_log_type_enabled(v11, 0x90u))
  {
    v18 = 138412802;
    v19 = v8;
    v20 = 2112;
    v21 = v9;
    v22 = 2112;
    v23 = v10;
    _os_log_error_impl(&dword_223E7A000, v11, 0x90u, "[ERROR] Auto rollback handler called on pending sync db - %@ (%@)%@", &v18, 0x20u);
  }

  v12 = [v9 domain];
  if ([v12 isEqualToString:*MEMORY[0x277D82C20]])
  {
    v13 = [v9 code];

    if (v13 == 13)
    {
      v14 = brc_bread_crumbs();
      v15 = brc_default_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        __34__BRCPendingChangesStream__openDB__block_invoke_186_cold_1();
      }

      exit(1);
    }
  }

  else
  {
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dbBecameCorrupted:v9 withDescription:@"Auto Rollback Handler of BRCPendingChangesStream"];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_closeChangeStream
{
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(BRCPendingChangesStream *)self _closeChangeStream];
  }

  v5 = _pendingChangesStreamPool;
  objc_sync_enter(v5);
  dbSafeHolder = self->_dbSafeHolder;
  self->_dbSafeHolder = 0;

  [(BRCPendingChangesStream *)self _wasClosed];
  objc_sync_exit(v5);
}

- (void)fetchTokenState:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_hasBeenCreated)
  {
    v6 = [(BRCPendingChangesStream *)self _getChangesStreamSafeDBHolder];
    v7 = [(BRCClientZone *)self->_clientZone session];
    [v7 assertNotOnZoneMutex];

    if (!self->_error)
    {
      if (v6)
      {
        v8 = [v6 db];
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __43__BRCPendingChangesStream_fetchTokenState___block_invoke;
        v14[3] = &unk_2785046D0;
        v14[4] = self;
        v15 = v5;
        [v8 performWithFlags:1 action:v14];

        goto LABEL_7;
      }

      v9 = brc_bread_crumbs();
      v10 = brc_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        [BRCPendingChangesStream fetchTokenState:];
      }

      v11 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:@"unreachable: Trying to fetch token state without a db"];
      error = self->_error;
      self->_error = v11;

      v13 = self->_error;
    }

    v5[2](v5, 0, 0);
LABEL_7:

    goto LABEL_8;
  }

  (*(v4 + 2))(v4, 0, 0, 0);
LABEL_8:
}

uint64_t __43__BRCPendingChangesStream_fetchTokenState___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = [v4 fetch:{@"SELECT server_token, client_token FROM fetch_state"}];
  if ([v5 next])
  {
    v6 = [v5 objectOfClass:objc_opt_class() atIndex:0];
    [v5 longLongAtIndex:1];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = [v5 error];
    v8 = v7;
    if (v7)
    {
      v9 = 0;
      v10 = v7;
    }

    else
    {
      v11 = [v4 lastError];
      if (v11)
      {
        v2 = v11;
        v9 = 0;
        v10 = v11;
      }

      else
      {
        v12 = brc_bread_crumbs();
        v13 = brc_default_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
        {
          __43__BRCPendingChangesStream_fetchTokenState___block_invoke_cold_1();
        }

        v10 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:@"unreachable: There should always be one entry"];
        v2 = 0;
        v9 = 1;
      }
    }

    objc_storeStrong((*(a1 + 32) + 16), v10);
    if (v9)
    {
    }

    if (!v8)
    {
    }

    v14 = *(*(a1 + 32) + 16);
    (*(*(a1 + 40) + 16))();
  }

  return 1;
}

- (void)fetchQueryCursor:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_hasBeenCreated)
  {
    v6 = [(BRCPendingChangesStream *)self _getChangesStreamSafeDBHolder];
    v7 = [(BRCClientZone *)self->_clientZone session];
    [v7 assertNotOnZoneMutex];

    if (!self->_error)
    {
      if (v6)
      {
        v8 = [v6 db];
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __44__BRCPendingChangesStream_fetchQueryCursor___block_invoke;
        v14[3] = &unk_2785046D0;
        v14[4] = self;
        v15 = v5;
        [v8 performWithFlags:1 action:v14];

        goto LABEL_7;
      }

      v9 = brc_bread_crumbs();
      v10 = brc_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        [BRCPendingChangesStream fetchQueryCursor:];
      }

      v11 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:@"unreachable: Trying to fetch query cursor without a db"];
      error = self->_error;
      self->_error = v11;

      v13 = self->_error;
    }

    v5[2](v5, 0, 0, 0);
LABEL_7:

    goto LABEL_8;
  }

  (*(v4 + 2))(v4, 0, 0, 0, 0);
LABEL_8:
}

uint64_t __44__BRCPendingChangesStream_fetchQueryCursor___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = [v4 fetch:{@"SELECT cont_token, completed FROM list_state"}];
  if ([v5 next])
  {
    v6 = [v5 objectOfClass:objc_opt_class() atIndex:0];
    v7 = [v5 objectOfClass:objc_opt_class() atIndex:1];
    [v7 BOOLValue];

    v8 = [v4 fetchObjectOfClass:objc_opt_class() sql:@"SELECT server_token FROM fetch_state"];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v9 = [v5 error];
    v10 = v9;
    if (v9)
    {
      v11 = 0;
      v12 = v9;
    }

    else
    {
      v13 = [v4 lastError];
      if (v13)
      {
        v2 = v13;
        v11 = 0;
        v12 = v13;
      }

      else
      {
        v14 = brc_bread_crumbs();
        v15 = brc_default_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
        {
          __43__BRCPendingChangesStream_fetchTokenState___block_invoke_cold_1();
        }

        v12 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:@"unreachable: There should always be one entry"];
        v2 = 0;
        v11 = 1;
      }
    }

    objc_storeStrong((*(a1 + 32) + 16), v12);
    if (v11)
    {
    }

    if (!v10)
    {
    }

    v16 = *(*(a1 + 32) + 16);
    (*(*(a1 + 40) + 16))();
  }

  return 1;
}

- (BOOL)enumerateRecordsOfType:(int64_t)a3 block:(id)a4
{
  v6 = a4;
  if (self->_hasBeenCreated)
  {
    v7 = [(BRCPendingChangesStream *)self _getChangesStreamSafeDBHolder];
    v8 = [(BRCClientZone *)self->_clientZone session];
    [v8 assertNotOnZoneMutex];

    if (!self->_error)
    {
      if (v7)
      {
        v20 = 0;
        v21 = &v20;
        v22 = 0x2020000000;
        v23 = 1;
        v10 = [v7 db];
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __56__BRCPendingChangesStream_enumerateRecordsOfType_block___block_invoke;
        v16[3] = &unk_278506758;
        v19 = a3;
        v17 = v6;
        v18 = &v20;
        v16[4] = self;
        [v10 performWithFlags:1 action:v16];

        v9 = *(v21 + 24);
        _Block_object_dispose(&v20, 8);
        goto LABEL_7;
      }

      v12 = brc_bread_crumbs();
      v13 = brc_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        [BRCPendingChangesStream enumerateRecordsOfType:block:];
      }

      v14 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:@"unreachable: Trying to enumerate records without a db"];
      error = self->_error;
      self->_error = v14;
    }

    v9 = 0;
LABEL_7:

    goto LABEL_8;
  }

  v9 = 1;
LABEL_8:

  return v9 & 1;
}

uint64_t __56__BRCPendingChangesStream_enumerateRecordsOfType_block___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 fetch:{@"SELECT record_id, record FROM record_changes WHERE record_type = %d", a1[7]}];
  if ([v4 next])
  {
    while (1)
    {
      v5 = objc_autoreleasePoolPush();
      v6 = [v4 objectOfClass:objc_opt_class() atIndex:0];
      v7 = [v4 objectOfClass:objc_opt_class() atIndex:1];
      if (((*(a1[5] + 16))() & 1) == 0)
      {
        break;
      }

      objc_autoreleasePoolPop(v5);
      if (![v4 next])
      {
        goto LABEL_4;
      }
    }

    *(*(a1[6] + 8) + 24) = 0;

    objc_autoreleasePoolPop(v5);
  }

  else
  {
LABEL_4:
    v8 = [v4 error];

    if (v8)
    {
      v9 = [v4 error];
      v10 = a1[4];
      v11 = *(v10 + 16);
      *(v10 + 16) = v9;

      v12 = brc_bread_crumbs();
      v13 = brc_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        __56__BRCPendingChangesStream_enumerateRecordsOfType_block___block_invoke_cold_1();
      }

      *(*(a1[6] + 8) + 24) = 0;
    }
  }

  return 1;
}

- (int64_t)_recordTypeFromRecordID:(id)a3 isShare:(BOOL)a4 isDelete:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  if (_recordTypeFromRecordID_isShare_isDelete__onceToken == -1)
  {
    if (a4)
    {
LABEL_3:
      v8 = 3;
      goto LABEL_14;
    }
  }

  else
  {
    [BRCPendingChangesStream _recordTypeFromRecordID:isShare:isDelete:];
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v9 = [v7 recordName];
  v10 = [v9 rangeOfString:@"/"];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_6;
  }

  v14 = [v9 substringToIndex:v10 + v11];
  if ([v14 isEqualToString:@"documentContent/"])
  {
    v8 = 2;
LABEL_13:

    goto LABEL_14;
  }

  if ([_recordTypeFromRecordID_isShare_isDelete__structuralRecordPrefixes containsObject:v14])
  {
    v8 = 1;
    goto LABEL_13;
  }

LABEL_6:
  v12 = brc_bread_crumbs();
  v13 = brc_default_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    [BRCPendingChangesStream _recordTypeFromRecordID:isShare:isDelete:];
  }

  v8 = 0;
LABEL_14:
  if (v5)
  {
    v15 = -v8;
  }

  else
  {
    v15 = v8;
  }

  return v15;
}

void __68__BRCPendingChangesStream__recordTypeFromRecordID_isShare_isDelete___block_invoke()
{
  v3[6] = *MEMORY[0x277D85DE8];
  v3[0] = @"alias/";
  v3[1] = @"shareAlias/";
  v3[2] = @"symlink/";
  v3[3] = @"finderBookmark/";
  v3[4] = @"directory/";
  v3[5] = @"documentStructure/";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:6];
  v1 = _recordTypeFromRecordID_isShare_isDelete__structuralRecordPrefixes;
  _recordTypeFromRecordID_isShare_isDelete__structuralRecordPrefixes = v0;

  v2 = *MEMORY[0x277D85DE8];
}

- (BOOL)saveEditedRecords:(id)a3 deletedRecordIDs:(id)a4 deletedShareIDs:(id)a5 subResourceEditedRecords:(id)a6 serverChangeToken:(id)a7 clientChangeToken:(int64_t)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = [(BRCPendingChangesStream *)self _getChangesStreamSafeDBHolder];
  v20 = v19;
  if (self->_error)
  {
    v21 = 0;
  }

  else
  {
    v22 = [v19 db];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __139__BRCPendingChangesStream_saveEditedRecords_deletedRecordIDs_deletedShareIDs_subResourceEditedRecords_serverChangeToken_clientChangeToken___block_invoke;
    v24[3] = &unk_278506780;
    v25 = v14;
    v26 = self;
    v27 = v15;
    v28 = v16;
    v29 = v17;
    v30 = v18;
    v31 = a8;
    v21 = [v22 performWithFlags:25 action:v24];
  }

  return v21;
}

uint64_t __139__BRCPendingChangesStream_saveEditedRecords_deletedRecordIDs_deletedShareIDs_subResourceEditedRecords_serverChangeToken_clientChangeToken___block_invoke(uint64_t a1, void *a2)
{
  v92 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v80 objects:v91 count:16];
  if (v4)
  {
    v5 = v4;
    v66 = *v81;
    v64 = *MEMORY[0x277CBC050];
    LOBYTE(v6) = 1;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v81 != v66)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v80 + 1) + 8 * i);
        v9 = objc_autoreleasePoolPush();
        v10 = *(a1 + 40);
        v11 = [v8 recordID];
        v12 = [v8 recordType];
        v13 = [v10 _recordTypeFromRecordID:v11 isShare:objc_msgSend(v12 isDelete:{"isEqualToString:", v64), 0}];

        if ((v6 & 1) == 0 || ([v8 recordID], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v3, "execute:", @"INSERT OR REPLACE INTO record_changes (record_id, record_type, record) VALUES (%@, %d, %@)", v14, v13, v8), v14, !v15) || objc_msgSend(v3, "changes") != 1)
        {
          if ((__139__BRCPendingChangesStream_saveEditedRecords_deletedRecordIDs_deletedShareIDs_subResourceEditedRecords_serverChangeToken_clientChangeToken___block_invoke_cold_1() & 1) == 0)
          {
            goto LABEL_16;
          }
        }

        v16 = [v8 recordID];
        v17 = [v3 execute:{@"DELETE FROM records_needing_subresources WHERE record_id = %@", v16}];

        if (v17)
        {
          if ([v3 changes])
          {
            v18 = brc_bread_crumbs();
            v19 = brc_default_log();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              v20 = [v8 recordID];
              *buf = 138412546;
              v88 = v20;
              v89 = 2112;
              v90 = v18;
              _os_log_impl(&dword_223E7A000, v19, OS_LOG_TYPE_DEFAULT, "[WARNING] Removed item in pending resources table because it was saved %@%@", buf, 0x16u);
            }
          }

          LOBYTE(v6) = 1;
        }

        else
        {
LABEL_16:
          LOBYTE(v6) = 0;
        }

        objc_autoreleasePoolPop(v9);
      }

      v5 = [obj countByEnumeratingWithState:&v80 objects:v91 count:16];
    }

    while (v5);
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v67 = *(a1 + 48);
  v21 = [v67 countByEnumeratingWithState:&v76 objects:v86 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v77;
    v24 = @"INSERT OR REPLACE INTO record_changes (record_id, record_type, record) VALUES (%@, %d, %@)";
    v25 = @"DELETE FROM records_needing_subresources WHERE record_id = %@";
    do
    {
      v26 = 0;
      v65 = v22;
      do
      {
        if (*v77 != v23)
        {
          objc_enumerationMutation(v67);
        }

        v27 = *(*(&v76 + 1) + 8 * v26);
        v28 = objc_autoreleasePoolPush();
        v29 = [*(a1 + 40) _recordTypeFromRecordID:v27 isShare:0 isDelete:1];
        if ((v6 & 1) != 0 && [v3 execute:{v24, v27, v29, 0}] && objc_msgSend(v3, "changes") == 1 || (__139__BRCPendingChangesStream_saveEditedRecords_deletedRecordIDs_deletedShareIDs_subResourceEditedRecords_serverChangeToken_clientChangeToken___block_invoke_cold_2()) && objc_msgSend(v3, "execute:", v25, v27))
        {
          if ([v3 changes])
          {
            v30 = v23;
            v31 = a1;
            v32 = v25;
            v33 = v24;
            v6 = brc_bread_crumbs();
            v34 = brc_default_log();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v88 = v27;
              v89 = 2112;
              v90 = v6;
              _os_log_impl(&dword_223E7A000, v34, OS_LOG_TYPE_DEFAULT, "[WARNING] Removed item in pending resources table because it was deleted %@%@", buf, 0x16u);
            }

            LOBYTE(v6) = 1;
            v24 = v33;
            v25 = v32;
            a1 = v31;
            v23 = v30;
            v22 = v65;
          }

          else
          {
            LOBYTE(v6) = 1;
          }
        }

        else
        {
          LOBYTE(v6) = 0;
        }

        objc_autoreleasePoolPop(v28);
        ++v26;
      }

      while (v22 != v26);
      v22 = [v67 countByEnumeratingWithState:&v76 objects:v86 count:16];
    }

    while (v22);
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v35 = *(a1 + 56);
  v36 = [v35 countByEnumeratingWithState:&v72 objects:v85 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v73;
    do
    {
      v39 = 0;
      do
      {
        if (*v73 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = *(*(&v72 + 1) + 8 * v39);
        v41 = objc_autoreleasePoolPush();
        v42 = [*(a1 + 40) _recordTypeFromRecordID:v40 isShare:1 isDelete:1];
        if ((v6 & 1) != 0 && [v3 execute:{@"INSERT OR REPLACE INTO record_changes (record_id, record_type, record) VALUES (%@, %d, %@)", v40, v42, 0}])
        {
          LOBYTE(v6) = 1;
          if ([v3 changes] == 1)
          {
            goto LABEL_47;
          }
        }

        else
        {
          LOBYTE(v6) = 0;
        }

        __139__BRCPendingChangesStream_saveEditedRecords_deletedRecordIDs_deletedShareIDs_subResourceEditedRecords_serverChangeToken_clientChangeToken___block_invoke_cold_3(buf, &v88);
LABEL_47:
        objc_autoreleasePoolPop(v41);
        ++v39;
      }

      while (v37 != v39);
      v43 = [v35 countByEnumeratingWithState:&v72 objects:v85 count:16];
      v37 = v43;
    }

    while (v43);
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v44 = *(a1 + 64);
  v45 = [v44 countByEnumeratingWithState:&v68 objects:v84 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = 0;
    v48 = *v69;
    do
    {
      for (j = 0; j != v46; ++j)
      {
        if (*v69 != v48)
        {
          objc_enumerationMutation(v44);
        }

        v50 = *(*(&v68 + 1) + 8 * j);
        v51 = objc_autoreleasePoolPush();
        if (v6)
        {
          LODWORD(v6) = [*(a1 + 40) _saveSubResourceRecord:v50 withDB:v3];
        }

        else
        {
          LODWORD(v6) = 0;
        }

        objc_autoreleasePoolPop(v51);
      }

      v47 += v46;
      v46 = [v44 countByEnumeratingWithState:&v68 objects:v84 count:16];
    }

    while (v46);

    if (!v6)
    {
      goto LABEL_69;
    }

    v52 = brc_bread_crumbs();
    v53 = brc_default_log();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
    {
      __139__BRCPendingChangesStream_saveEditedRecords_deletedRecordIDs_deletedShareIDs_subResourceEditedRecords_serverChangeToken_clientChangeToken___block_invoke_cold_4();
    }
  }

  else
  {

    if ((v6 & 1) == 0)
    {
      goto LABEL_69;
    }
  }

  if ([v3 execute:{@"UPDATE fetch_state SET server_token = %@, client_token = %lld", *(a1 + 72), *(a1 + 80)}])
  {
    v54 = 1;
    goto LABEL_72;
  }

LABEL_69:
  v55 = [v3 lastError];
  v57 = *(a1 + 40);
  v56 = a1 + 40;
  v58 = *(v57 + 16);
  *(v57 + 16) = v55;

  v59 = brc_bread_crumbs();
  v60 = brc_default_log();
  if (os_log_type_enabled(v60, 0x90u))
  {
    __139__BRCPendingChangesStream_saveEditedRecords_deletedRecordIDs_deletedShareIDs_subResourceEditedRecords_serverChangeToken_clientChangeToken___block_invoke_cold_5(v56);
  }

  v54 = 0;
LABEL_72:

  v61 = *MEMORY[0x277D85DE8];
  return v54;
}

- (BOOL)saveEditedRecords:(id)a3 subResourceEditedRecords:(id)a4 queryCursor:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(BRCPendingChangesStream *)self _getChangesStreamSafeDBHolder];
  if (self->_error)
  {
    v12 = 0;
  }

  else
  {
    v13 = [(BRCClientZone *)self->_clientZone session];
    [v13 assertNotOnZoneMutex];

    v14 = [v11 db];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __82__BRCPendingChangesStream_saveEditedRecords_subResourceEditedRecords_queryCursor___block_invoke;
    v16[3] = &unk_278504940;
    v17 = v8;
    v18 = self;
    v19 = v9;
    v20 = v10;
    v12 = [v14 performWithFlags:25 action:v16];
  }

  return v12;
}

uint64_t __82__BRCPendingChangesStream_saveEditedRecords_subResourceEditedRecords_queryCursor___block_invoke(uint64_t a1, void *a2)
{
  v61 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v51 objects:v60 count:16];
  if (!v4)
  {
LABEL_24:

    LOBYTE(v8) = 1;
    goto LABEL_26;
  }

  v5 = v4;
  v6 = a1;
  v7 = 0;
  v46 = *v52;
  v45 = *MEMORY[0x277CBC050];
  LOBYTE(v8) = 1;
  do
  {
    v43 = v7;
    v9 = 0;
    do
    {
      if (*v52 != v46)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v51 + 1) + 8 * v9);
      v11 = objc_autoreleasePoolPush();
      v12 = *(v6 + 40);
      v13 = [v10 recordID];
      v14 = [v10 recordType];
      v15 = [v12 _recordTypeFromRecordID:v13 isShare:objc_msgSend(v14 isDelete:{"isEqualToString:", v45), 0}];

      if (v8 & 1) != 0 && ([v10 recordID], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v3, "execute:", @"INSERT OR REPLACE INTO record_changes (record_id, record_type, record) VALUES (%@, %d, %@)", v16, v15, v10), v16, v17) && objc_msgSend(v3, "changes") == 1 || (__82__BRCPendingChangesStream_saveEditedRecords_subResourceEditedRecords_queryCursor___block_invoke_cold_1())
      {
        v18 = [v10 recordID];
        v8 = [v3 execute:{@"DELETE FROM records_needing_subresources WHERE record_id = %@", v18}];

        if (v8)
        {
          if ([v3 changes])
          {
            v19 = brc_bread_crumbs();
            v20 = brc_default_log();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v21 = [v10 recordID];
              *buf = 138412546;
              v57 = v21;
              v58 = 2112;
              v59 = v19;
              _os_log_impl(&dword_223E7A000, v20, OS_LOG_TYPE_DEFAULT, "[WARNING] Removed item in pending resources table because it was saved %@%@", buf, 0x16u);
            }
          }

          v8 = [*(v6 + 40) _finishedFetchingRecordMetadata:v10 withDB:v3];
        }
      }

      else
      {
        v8 = 0;
      }

      objc_autoreleasePoolPop(v11);
      ++v9;
    }

    while (v5 != v9);
    v7 = v43 + v5;
    v22 = [obj countByEnumeratingWithState:&v51 objects:v60 count:16];
    v5 = v22;
  }

  while (v22);

  if (v8)
  {
    obj = brc_bread_crumbs();
    v23 = brc_default_log();
    a1 = v6;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      __82__BRCPendingChangesStream_saveEditedRecords_subResourceEditedRecords_queryCursor___block_invoke_cold_2();
    }

    goto LABEL_24;
  }

  a1 = v6;
LABEL_26:
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v24 = *(a1 + 48);
  v25 = [v24 countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = 0;
    v28 = *v48;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v48 != v28)
        {
          objc_enumerationMutation(v24);
        }

        v30 = *(*(&v47 + 1) + 8 * i);
        v31 = objc_autoreleasePoolPush();
        if (v8)
        {
          v8 = [*(a1 + 40) _saveSubResourceRecord:v30 withDB:v3];
        }

        else
        {
          v8 = 0;
        }

        objc_autoreleasePoolPop(v31);
      }

      v27 += v26;
      v26 = [v24 countByEnumeratingWithState:&v47 objects:v55 count:16];
    }

    while (v26);

    if (!v8)
    {
      goto LABEL_43;
    }

    v32 = brc_bread_crumbs();
    v33 = brc_default_log();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      __82__BRCPendingChangesStream_saveEditedRecords_subResourceEditedRecords_queryCursor___block_invoke_cold_3();
    }
  }

  else
  {

    if ((v8 & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  if ([v3 execute:{@"UPDATE list_state SET cont_token = %@, completed = %d", *(a1 + 56), *(a1 + 56) == 0}])
  {
    v34 = 1;
    goto LABEL_46;
  }

LABEL_43:
  v35 = [v3 lastError];
  v37 = *(a1 + 40);
  v36 = a1 + 40;
  v38 = *(v37 + 16);
  *(v37 + 16) = v35;

  v39 = brc_bread_crumbs();
  v40 = brc_default_log();
  if (os_log_type_enabled(v40, 0x90u))
  {
    __139__BRCPendingChangesStream_saveEditedRecords_deletedRecordIDs_deletedShareIDs_subResourceEditedRecords_serverChangeToken_clientChangeToken___block_invoke_cold_5(v36);
  }

  v34 = 0;
LABEL_46:

  v41 = *MEMORY[0x277D85DE8];
  return v34;
}

- (BOOL)saveSubResourceRecords:(id)a3 afterSavingMainTableItems:(id)a4 queryCursor:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(BRCPendingChangesStream *)self _getChangesStreamSafeDBHolder];
  if (self->_error)
  {
    v12 = 0;
  }

  else
  {
    v13 = [(BRCClientZone *)self->_clientZone session];
    [v13 assertNotOnZoneMutex];

    v14 = [v11 db];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __88__BRCPendingChangesStream_saveSubResourceRecords_afterSavingMainTableItems_queryCursor___block_invoke;
    v16[3] = &unk_278504940;
    v17 = v8;
    v18 = self;
    v19 = v10;
    v20 = v9;
    v12 = [v14 performWithFlags:25 action:v16];
  }

  return v12;
}

uint64_t __88__BRCPendingChangesStream_saveSubResourceRecords_afterSavingMainTableItems_queryCursor___block_invoke(uint64_t a1, void *a2)
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 execute:@"DELETE FROM record_changes WHERE 1"];
  LOBYTE(v5) = v4;
  if (v4 && [v3 changes])
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __88__BRCPendingChangesStream_saveSubResourceRecords_afterSavingMainTableItems_queryCursor___block_invoke_cold_1();
    }
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v8 = *(a1 + 32);
  v9 = [v8 countByEnumeratingWithState:&v42 objects:v51 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v43;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v43 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v42 + 1) + 8 * i);
        v15 = objc_autoreleasePoolPush();
        if (v5)
        {
          v5 = [*(a1 + 40) _saveSubResourceRecord:v14 withDB:v3];
        }

        else
        {
          v5 = 0;
        }

        objc_autoreleasePoolPop(v15);
      }

      v11 += v10;
      v10 = [v8 countByEnumeratingWithState:&v42 objects:v51 count:16];
    }

    while (v10);

    if (v5)
    {
      v16 = brc_bread_crumbs();
      v17 = brc_default_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        __88__BRCPendingChangesStream_saveSubResourceRecords_afterSavingMainTableItems_queryCursor___block_invoke_cold_2();
      }

      goto LABEL_21;
    }
  }

  else
  {

    if (v5)
    {
LABEL_21:
      v18 = [v3 execute:{@"UPDATE list_state SET cont_token = %@, completed = %d", *(a1 + 48), *(a1 + 48) == 0}];
      goto LABEL_23;
    }
  }

  v18 = 0;
LABEL_23:
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v19 = *(a1 + 56);
  v20 = [v19 countByEnumeratingWithState:&v38 objects:v50 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v39;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v39 != v22)
        {
          objc_enumerationMutation(v19);
        }

        if ((v18 & 1) != 0 && (v24 = *(*(&v38 + 1) + 8 * j), [v24 recordID], v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v3, "execute:", @"DELETE FROM records_needing_subresources WHERE record_id = %@ AND record_id_needing_fetch = record_id", v25), v25, v26))
        {
          if ([v3 changes])
          {
            v27 = brc_bread_crumbs();
            v28 = brc_default_log();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              v37 = [v24 recordID];
              *buf = 138412546;
              v47 = v37;
              v48 = 2112;
              v49 = v27;
              _os_log_debug_impl(&dword_223E7A000, v28, OS_LOG_TYPE_DEBUG, "[DEBUG] Deleted %@ from the pending subResources table because it was persisted directly to the server truth%@", buf, 0x16u);
            }
          }

          v18 = [*(a1 + 40) _finishedFetchingRecordMetadata:v24 withDB:v3];
        }

        else
        {
          v18 = 0;
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v38 objects:v50 count:16];
    }

    while (v21);
  }

  if ((v18 & 1) == 0)
  {
    v29 = [v3 lastError];
    v31 = *(a1 + 40);
    v30 = a1 + 40;
    v32 = *(v31 + 16);
    *(v31 + 16) = v29;

    v33 = brc_bread_crumbs();
    v34 = brc_default_log();
    if (os_log_type_enabled(v34, 0x90u))
    {
      __88__BRCPendingChangesStream_saveSubResourceRecords_afterSavingMainTableItems_queryCursor___block_invoke_cold_3(v30);
    }
  }

  v35 = *MEMORY[0x277D85DE8];
  return v18;
}

- (int64_t)copyBlockingSaveRecordsToNeedingFetchIgnoringRecords:(id)a3
{
  v4 = a3;
  if (self->_hasBeenCreated)
  {
    v5 = [(BRCPendingChangesStream *)self _getChangesStreamSafeDBHolder];
    v6 = v5;
    if (self->_error)
    {
      v7 = 0;
    }

    else
    {
      v11 = 0;
      v12 = &v11;
      v13 = 0x2020000000;
      v14 = 0;
      v8 = [v5 db];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __80__BRCPendingChangesStream_copyBlockingSaveRecordsToNeedingFetchIgnoringRecords___block_invoke;
      v10[3] = &unk_2785067A8;
      v10[4] = &v11;
      [v8 performWithFlags:9 action:v10];

      v7 = v12[3];
      _Block_object_dispose(&v11, 8);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __80__BRCPendingChangesStream_copyBlockingSaveRecordsToNeedingFetchIgnoringRecords___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 execute:@"UPDATE records_needing_subresources AS pr   SET record_id_needing_fetch = record_id_blocking_save WHERE record_id_blocking_save IS NOT NULL AND NOT EXISTS (SELECT 1 FROM records_needing_subresources AS sr WHERE pr.record_id_blocking_save = sr.record_id LIMIT 1)"];
  if (v4)
  {
    *(*(*(a1 + 32) + 8) + 24) = [v3 changes];
  }

  return v4;
}

- (BOOL)enumerateRecordsNeedingXattrFetchWithBlock:(id)a3
{
  v4 = a3;
  if (self->_hasBeenCreated)
  {
    v5 = [(BRCPendingChangesStream *)self _getChangesStreamSafeDBHolder];
    v6 = v5;
    if (self->_error)
    {
      v7 = 0;
    }

    else
    {
      v8 = [v5 db];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __70__BRCPendingChangesStream_enumerateRecordsNeedingXattrFetchWithBlock___block_invoke;
      v10[3] = &unk_2785067D0;
      v10[4] = self;
      v11 = v4;
      [v8 performWithFlags:1 action:v10];

      v7 = self->_error == 0;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

uint64_t __70__BRCPendingChangesStream_enumerateRecordsNeedingXattrFetchWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 fetch:{@"SELECT record, xattr_sig FROM records_needing_subresources WHERE xattr_sig IS NOT NULL GROUP BY xattr_sig"}];
  do
  {
    if (![v3 next])
    {
      break;
    }

    v4 = [v3 objectOfClass:objc_opt_class() atIndex:0];
    v5 = [v3 dataAtIndex:1];
    v6 = *(a1 + 40);
    v7 = [v4 recordID];
    v8 = [v4 etag];
    LOBYTE(v6) = (*(v6 + 16))(v6, v7, v8, v5);
  }

  while ((v6 & 1) != 0);
  v9 = [v3 error];
  v10 = *(a1 + 32);
  v11 = *(v10 + 16);
  *(v10 + 16) = v9;

  return 1;
}

- (BOOL)enumerateRecordsNeedingMetadataFetchWithBlock:(id)a3
{
  v4 = a3;
  if (self->_hasBeenCreated)
  {
    v5 = [(BRCPendingChangesStream *)self _getChangesStreamSafeDBHolder];
    v6 = v5;
    if (self->_error)
    {
      v7 = 0;
    }

    else
    {
      v8 = [v5 db];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __73__BRCPendingChangesStream_enumerateRecordsNeedingMetadataFetchWithBlock___block_invoke;
      v10[3] = &unk_2785067D0;
      v10[4] = self;
      v11 = v4;
      [v8 performWithFlags:1 action:v10];

      v7 = self->_error == 0;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

uint64_t __73__BRCPendingChangesStream_enumerateRecordsNeedingMetadataFetchWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 fetch:@"SELECT record_id_needing_fetch FROM records_needing_subresources WHERE record_id_needing_fetch IS NOT NULL GROUP BY record_id_needing_fetch"];
  do
  {
    if (![v3 next])
    {
      break;
    }

    v4 = [v3 objectOfClass:objc_opt_class() atIndex:0];
    v5 = (*(*(a1 + 40) + 16))();
  }

  while ((v5 & 1) != 0);
  v6 = [v3 error];
  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  *(v7 + 16) = v6;

  return 1;
}

- (BOOL)hasFetchRecordByID:(id)a3
{
  v4 = a3;
  if (self->_hasBeenCreated)
  {
    v5 = [(BRCPendingChangesStream *)self _getChangesStreamSafeDBHolder];
    v6 = v5;
    if (self->_error)
    {
      v7 = 1;
    }

    else
    {
      v13 = 0;
      v14 = &v13;
      v15 = 0x2020000000;
      v16 = 0;
      v8 = [v5 db];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __46__BRCPendingChangesStream_hasFetchRecordByID___block_invoke;
      v10[3] = &unk_278502320;
      v12 = &v13;
      v11 = v4;
      [v8 performWithFlags:1 action:v10];

      v7 = *(v14 + 24);
      _Block_object_dispose(&v13, 8);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t __46__BRCPendingChangesStream_hasFetchRecordByID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 numberWithSQL:{@"SELECT 1 FROM record_changes WHERE record_id = %@ LIMIT 1", *(a1 + 32)}];
  *(*(*(a1 + 40) + 8) + 24) = [v3 BOOLValue];

  return 1;
}

- (BOOL)hasRecordIDBlockedOnSubResources:(id)a3
{
  v4 = a3;
  if (self->_hasBeenCreated)
  {
    v5 = [(BRCPendingChangesStream *)self _getChangesStreamSafeDBHolder];
    v6 = v5;
    if (self->_error)
    {
      v7 = 1;
    }

    else
    {
      v13 = 0;
      v14 = &v13;
      v15 = 0x2020000000;
      v16 = 0;
      v8 = [v5 db];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __60__BRCPendingChangesStream_hasRecordIDBlockedOnSubResources___block_invoke;
      v10[3] = &unk_278502320;
      v12 = &v13;
      v11 = v4;
      [v8 performWithFlags:1 action:v10];

      v7 = *(v14 + 24);
      _Block_object_dispose(&v13, 8);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t __60__BRCPendingChangesStream_hasRecordIDBlockedOnSubResources___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 numberWithSQL:{@"SELECT 1 FROM records_needing_subresources WHERE record_id = %@ LIMIT 1", *(a1 + 32)}];
  *(*(*(a1 + 40) + 8) + 24) = [v3 BOOLValue];

  return 1;
}

uint64_t __52__BRCPendingChangesStream_hasRecordIDsToDeserialize__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 numberWithSQL:@"SELECT 1 FROM records_needing_subresources WHERE record_id_needing_fetch IS NOT NULL LIMIT 1"];
  *(*(*(a1 + 32) + 8) + 24) = [v3 BOOLValue];

  return 1;
}

uint64_t __43__BRCPendingChangesStream_hasXattrsToFetch__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 numberWithSQL:@"SELECT 1 FROM records_needing_subresources WHERE xattr_sig IS NOT NULL LIMIT 1"];
  *(*(*(a1 + 32) + 8) + 24) = [v3 BOOLValue];

  return 1;
}

uint64_t __48__BRCPendingChangesStream_hasSubResourceRecords__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 numberWithSQL:@"SELECT 1 FROM records_needing_subresources LIMIT 1"];
  *(*(*(a1 + 32) + 8) + 24) = [v3 BOOLValue];

  return 1;
}

- (BOOL)dumpTablesToContext:(id)a3 includeAllItems:(BOOL)a4 error:(id *)a5
{
  v8 = a3;
  if (self->_hasBeenCreated)
  {
    v9 = [(BRCPendingChangesStream *)self _getChangesStreamSafeDBHolder];
    error = self->_error;
    v11 = error == 0;
    if (error)
    {
      if (a5)
      {
        *a5 = error;
      }
    }

    else
    {
      v12 = [v9 db];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __69__BRCPendingChangesStream_dumpTablesToContext_includeAllItems_error___block_invoke;
      v14[3] = &unk_2784FF3B0;
      v16 = a4;
      v15 = v8;
      [v12 performWithFlags:1 action:v14];
    }
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

uint64_t __69__BRCPendingChangesStream_dumpTablesToContext_includeAllItems_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  [*(a1 + 32) writeLineWithFormat:@"%@", @"records_needing_subresources"];
  [*(a1 + 32) writeLineWithFormat:@"============"];
  v5 = 1000;
  if (v4)
  {
    v6 = 0xFFFFFFFFLL;
  }

  else
  {
    v6 = 1000;
  }

  v24 = v6;
  v25 = v3;
  if (v4)
  {
    v5 = -1;
  }

  v7 = [v3 fetch:{@"SELECT record_id, xattr_sig, record_id_needing_fetch, record_id_blocking_save FROM records_needing_subresources LIMIT %u", v5}];
  v8 = 0x277CCA000uLL;
  if ([v7 next])
  {
    do
    {
      if (![*(a1 + 32) shouldKeepDumpingWithItemCount:0 includeAllItems:*(a1 + 40)])
      {
        break;
      }

      v26 = [v7 objectOfClass:objc_opt_class() atIndex:0];
      v9 = [v7 dataAtIndex:1];
      v10 = [v7 objectOfClass:objc_opt_class() atIndex:2];
      v11 = [v7 objectOfClass:objc_opt_class() atIndex:3];
      v12 = v8;
      v13 = *(v8 + 3240);
      v14 = [v26 recordName];
      v15 = [v10 recordName];
      v16 = [v11 recordName];
      v17 = [v13 stringWithFormat:@"+ recordID:%@ xattrSig:%@ NF:%@ BS:%@", v14, v9, v15, v16];

      [*(a1 + 32) writeLineWithFormat:@"%@", v17];
      v8 = v12;
    }

    while (([v7 next] & 1) != 0);
  }

  [*(a1 + 32) writeLineWithFormat:@"%@", @"record_changes"];
  [*(a1 + 32) writeLineWithFormat:@"============"];
  v18 = [v25 fetch:{@"SELECT record_id FROM record_changes LIMIT %u", v24}];

  if ([v18 next])
  {
    do
    {
      if (![*(a1 + 32) shouldKeepDumpingWithItemCount:0 includeAllItems:*(a1 + 40)])
      {
        break;
      }

      v19 = [v18 objectOfClass:objc_opt_class() atIndex:0];
      v20 = *(v8 + 3240);
      v21 = [v19 recordName];
      v22 = [v20 stringWithFormat:@"+ recordID:%@", v21];

      [*(a1 + 32) writeLineWithFormat:@"%@", v22];
    }

    while (([v18 next] & 1) != 0);
  }

  return 1;
}

- (BOOL)hasRecordDeletes
{
  if (self->_hasBeenCreated)
  {
    v3 = [(BRCPendingChangesStream *)self _getChangesStreamSafeDBHolder];
    v4 = v3;
    if (self->_error)
    {
      v5 = 0;
    }

    else
    {
      v9 = 0;
      v10 = &v9;
      v11 = 0x2020000000;
      v12 = 0;
      v6 = [v3 db];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __43__BRCPendingChangesStream_hasRecordDeletes__block_invoke;
      v8[3] = &unk_2785067A8;
      v8[4] = &v9;
      [v6 performWithFlags:1 action:v8];

      v5 = *(v10 + 24);
      _Block_object_dispose(&v9, 8);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t __43__BRCPendingChangesStream_hasRecordDeletes__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 numberWithSQL:@"SELECT 1 FROM record_changes WHERE record IS NULL LIMIT 1"];
  *(*(*(a1 + 32) + 8) + 24) = [v3 BOOLValue];

  return 1;
}

- (BOOL)_saveSubResourceRecord:(id)a3 withDB:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 recordID];
  v9 = [v7 execute:{@"DELETE FROM record_changes WHERE record_id = %@", v8}];

  if (v9)
  {
    if ([v7 changes])
    {
      v10 = brc_bread_crumbs();
      v11 = brc_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [v6 recordID];
        *buf = 138412546;
        v31 = v12;
        v32 = 2112;
        v33 = v10;
        _os_log_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEFAULT, "[WARNING] Removed recordID %@ from record changes table because it now needs sub resources%@", buf, 0x16u);
      }
    }

    v13 = [v6 recordID];
    v14 = [v6 recordType];
    v15 = [v6 record];
    v16 = [v6 xattrSignature];
    v17 = [v6 recordIDNeedingFetch];
    v18 = [v6 recordIDBlockingSave];
    v9 = [v7 execute:{@"INSERT OR REPLACE INTO records_needing_subresources (record_id, record_type, record, xattr_sig, record_id_needing_fetch, record_id_blocking_save) VALUES (%@, %ld, %@, %@, %@, %@)", v13, v14, v15, v16, v17, v18}];
  }

  v19 = [v6 record];

  if (!v19)
  {
    if (v9)
    {
      goto LABEL_15;
    }

LABEL_16:
    v25 = [v7 lastError];
    v24 = 0;
    error = self->_error;
    self->_error = v25;
LABEL_17:

    goto LABEL_18;
  }

  if (!v9)
  {
    goto LABEL_16;
  }

  v20 = [v6 recordID];
  v21 = [v7 execute:{@"UPDATE records_needing_subresources SET record_id_needing_fetch = NULL WHERE record_id_needing_fetch = %@", v20}];

  if (!v21)
  {
    goto LABEL_16;
  }

  if ([v7 changes])
  {
    error = brc_bread_crumbs();
    v23 = brc_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v28 = [v7 changes];
      v29 = [v6 recordID];
      *buf = 134218498;
      v31 = v28;
      v32 = 2112;
      v33 = v29;
      v34 = 2112;
      v35 = error;
      _os_log_debug_impl(&dword_223E7A000, v23, OS_LOG_TYPE_DEBUG, "[DEBUG] Unblocked %lld records waiting on save of %@ even though it's a sub-resource record%@", buf, 0x20u);
    }

    v24 = 1;
    goto LABEL_17;
  }

LABEL_15:
  v24 = 1;
LABEL_18:

  v26 = *MEMORY[0x277D85DE8];
  return v24;
}

- (void)finishedFetchingXattrSignatures:(id)a3
{
  v4 = a3;
  if (self->_hasBeenCreated)
  {
    v5 = [(BRCPendingChangesStream *)self _getChangesStreamSafeDBHolder];
    v6 = v5;
    if (!self->_error)
    {
      v7 = [v5 db];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __59__BRCPendingChangesStream_finishedFetchingXattrSignatures___block_invoke;
      v8[3] = &unk_278500FA8;
      v9 = v4;
      v10 = self;
      [v7 performWithFlags:9 action:v8];
    }
  }
}

uint64_t __59__BRCPendingChangesStream_finishedFetchingXattrSignatures___block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v19 = a1;
    v7 = *v21;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        if (![v3 execute:{@"UPDATE records_needing_subresources SET xattr_sig = NULL WHERE xattr_sig = %@", v9}])
        {
          v14 = [v3 lastError];
          v15 = *(v19 + 40);
          v16 = *(v15 + 16);
          *(v15 + 16) = v14;

          v13 = 0;
          goto LABEL_15;
        }

        if ([v3 changes])
        {
          v10 = brc_bread_crumbs();
          v11 = brc_default_log();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            v12 = [v3 changes];
            *buf = 134218498;
            v25 = v12;
            v26 = 2112;
            v27 = v9;
            v28 = 2112;
            v29 = v10;
            _os_log_debug_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] Updated %llu items which no longer need to fetch xattr %@%@", buf, 0x20u);
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v20 objects:v30 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v13 = 1;
LABEL_15:

  v17 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)unblockRecordSavesWaitingOnRecordID:(id)a3
{
  v4 = a3;
  if (self->_hasBeenCreated)
  {
    v5 = [(BRCPendingChangesStream *)self _getChangesStreamSafeDBHolder];
    v6 = v5;
    if (!self->_error)
    {
      v7 = [v5 db];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __63__BRCPendingChangesStream_unblockRecordSavesWaitingOnRecordID___block_invoke;
      v8[3] = &unk_278500FA8;
      v9 = v4;
      v10 = self;
      [v7 performWithFlags:9 action:v8];
    }
  }
}

uint64_t __63__BRCPendingChangesStream_unblockRecordSavesWaitingOnRecordID___block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 execute:{@"DELETE FROM records_needing_subresources WHERE record_id = %@ AND record IS NULL", *(a1 + 32)}];
  if ([v3 changes])
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, 0x90u))
    {
      v16 = *(a1 + 32);
      *buf = 138412802;
      v22 = v16;
      v23 = 2048;
      v24 = [v3 changes];
      v25 = 2112;
      v26 = v5;
      _os_log_error_impl(&dword_223E7A000, v6, 0x90u, "[ERROR] We couldn't fetch recordID %@ so it's not going to save. We deleted %lld items from pending subresources table for this%@", buf, 0x20u);
    }
  }

  if (v4)
  {
    v4 = [v3 execute:{@"UPDATE records_needing_subresources SET record_id_needing_fetch = NULL WHERE record_id_needing_fetch = %@", *(a1 + 32)}];
  }

  if ([v3 changes])
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, 0x90u))
    {
      v17 = *(a1 + 32);
      v18 = [v3 changes];
      *buf = 138412802;
      v22 = v17;
      v23 = 2048;
      v24 = v18;
      v25 = 2112;
      v26 = v7;
      _os_log_error_impl(&dword_223E7A000, v8, 0x90u, "[ERROR] We couldn't fetch recordID %@ so it's not going to save. We marked %lld as not needing fetch anymore%@", buf, 0x20u);
    }
  }

  if (v4)
  {
    v4 = [v3 execute:{@"UPDATE records_needing_subresources SET record_id_blocking_save = NULL WHERE record_id_blocking_save = %@", *(a1 + 32)}];
  }

  if ([v3 changes])
  {
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, 0x90u))
    {
      v19 = *(a1 + 32);
      v20 = [v3 changes];
      *buf = 138412802;
      v22 = v19;
      v23 = 2048;
      v24 = v20;
      v25 = 2112;
      v26 = v9;
      _os_log_error_impl(&dword_223E7A000, v10, 0x90u, "[ERROR] We couldn't fetch recordID %@ so it's not going to save. We marked %lld as not blocked for save anymore%@", buf, 0x20u);
    }
  }

  if ((v4 & 1) == 0)
  {
    v11 = [v3 lastError];
    v12 = *(a1 + 40);
    v13 = *(v12 + 16);
    *(v12 + 16) = v11;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v4;
}

- (BOOL)unblockRecord:(id)a3 waitingOnRecord:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_hasBeenCreated)
  {
    v8 = [(BRCPendingChangesStream *)self _getChangesStreamSafeDBHolder];
    v9 = v8;
    if (self->_error)
    {
      v10 = 0;
    }

    else
    {
      v11 = [v8 db];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __57__BRCPendingChangesStream_unblockRecord_waitingOnRecord___block_invoke;
      v13[3] = &unk_278500FA8;
      v14 = v6;
      v15 = v7;
      v10 = [v11 performWithFlags:9 action:v13];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __57__BRCPendingChangesStream_unblockRecord_waitingOnRecord___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 execute:{@"UPDATE records_needing_subresources SET record_id_blocking_save = NULL WHERE record_id = %@ AND record_id_blocking_save = %@", *(a1 + 32), *(a1 + 40)}] && objc_msgSend(v3, "changes"))
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v9 = [*(a1 + 32) recordName];
      v10 = [*(a1 + 40) recordName];
      *buf = 138412802;
      v12 = v9;
      v13 = 2112;
      v14 = v10;
      v15 = 2112;
      v16 = v4;
      _os_log_debug_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] Unblocked record %@ blocked on record %@%@", buf, 0x20u);
    }

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)_finishedFetchingRecordMetadata:(id)a3 withDB:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  [v6 assertOnQueue];
  if (([v6 isInTransaction] & 1) == 0)
  {
    [BRCPendingChangesStream _finishedFetchingRecordMetadata:withDB:];
  }

  v7 = [v5 recordID];
  if (![v6 execute:{@"UPDATE records_needing_subresources SET record_id_needing_fetch = NULL WHERE record_id_needing_fetch = %@", v7}])
  {
    goto LABEL_14;
  }

  if ([v6 changes])
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218498;
      v17 = [v6 changes];
      v18 = 2112;
      v19 = v7;
      v20 = 2112;
      v21 = v8;
      _os_log_debug_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] Updated %llu items to be unblocked for fetching %@%@", buf, 0x20u);
    }
  }

  if ([v6 execute:{@"UPDATE records_needing_subresources SET record_id_blocking_save = NULL WHERE record_id_blocking_save = %@", v7}])
  {
    if ([v6 changes])
    {
      v10 = brc_bread_crumbs();
      v11 = brc_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v15 = [v6 changes];
        *buf = 134218498;
        v17 = v15;
        v18 = 2112;
        v19 = v7;
        v20 = 2112;
        v21 = v10;
        _os_log_debug_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] Updated %llu items to be unblocked for saving %@%@", buf, 0x20u);
      }
    }

    v12 = 1;
  }

  else
  {
LABEL_14:
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)_closeDatabaseAndDestroy:(BOOL)a3
{
  v3 = a3;
  v25 = *MEMORY[0x277D85DE8];
  v5 = @"Closing";
  if (a3)
  {
    v5 = @"Destroying";
  }

  v6 = v5;
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v17 = 138412802;
    v18 = self;
    v19 = 2112;
    v20 = v6;
    v21 = 2112;
    v22 = v7;
    _os_log_debug_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ - %@ the database%@", &v17, 0x20u);
  }

  if (self->_hasBeenCreated)
  {
    v9 = [(BRCPendingChangesStream *)self description];
    v10 = [(NSURL *)self->_databaseURL path];
    v11 = _pendingChangesStreamPool;
    objc_sync_enter(v11);
    [(BRCSafeDBHolder *)self->_dbSafeHolder closeDatabaseSynchronously:1 dispatchToSerialQueue:1 completionHandler:0];
    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v17 = 138413058;
      v18 = v9;
      v19 = 2112;
      v20 = v6;
      v21 = 2112;
      v22 = v10;
      v23 = 2112;
      v24 = v12;
      _os_log_debug_impl(&dword_223E7A000, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ - %@ database at path: %@%@", &v17, 0x2Au);
    }

    if (v3)
    {
      v14 = [(BRCClientZone *)self->_clientZone session];
      v15 = [v14 diskReclaimer];
      [v15 renameAndUnlinkInBackgroundItemAt:0xFFFFFFFFLL path:v10];
    }

    [(BRCPendingChangesStream *)self _closeChangeStream];
    objc_sync_exit(v11);
  }

  v16 = *MEMORY[0x277D85DE8];
}

@end