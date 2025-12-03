@interface SiriCoreSyncDatabase
+ (id)currentSyncDatabase;
+ (void)removeCurrentSyncDatabase;
- (BOOL)_enumerateKey:(id)key updatedAfter:(id)after fromTable:(id)table usingBlock:(id)block error:(id *)error;
- (BOOL)_executeStatement:(id)statement error:(id *)error;
- (BOOL)_insertSyncRec:(id)rec intoTable:(id)table error:(id *)error;
- (BOOL)beginTransactionWithError:(id *)error;
- (BOOL)commitTransactionWithError:(id *)error;
- (BOOL)prepare;
- (BOOL)remove:(id)remove error:(id *)error;
- (BOOL)removeAllItemsOfKey:(id)key error:(id *)error;
- (BOOL)rollbackTransactionWithError:(id *)error;
- (BOOL)succeedOrRollbackOnFail:(id)fail error:(id *)error whileExecuting:(id)executing;
- (SiriCoreSyncDatabase)initWithPath:(id)path;
- (int)_countKey:(id)key fromTable:(id)table updatedAfter:(id)after error:(id *)error;
@end

@implementation SiriCoreSyncDatabase

- (BOOL)_enumerateKey:(id)key updatedAfter:(id)after fromTable:(id)table usingBlock:(id)block error:(id *)error
{
  keyCopy = key;
  afterCopy = after;
  tableCopy = table;
  blockCopy = block;
  v16 = MEMORY[0x277CCACA8];
  [afterCopy timeIntervalSince1970];
  keyCopy = [v16 stringWithFormat:@"SELECT * FROM %@ WHERE update_time > %.0f AND sourcekey = %@", tableCopy, v17, keyCopy];;
  v19 = [[SiriCoreSQLiteQuery alloc] initWithString:keyCopy statement:0 parameters:0 recordBuilder:0 options:16];
  if (error)
  {
    *error = 0;
  }

  v20 = [(SiriCoreSQLiteDatabase *)self->_db executeQuery:v19];
  error = [v20 error];
  v22 = error;
  if (error && error)
  {
    v23 = error;
    *error = v22;
  }

  v24 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x3032000000;
  v33[3] = __Block_byref_object_copy__3941;
  v33[4] = __Block_byref_object_dispose__3942;
  v34 = 0;
  if (!v22)
  {
    rowValueTuples = [v20 rowValueTuples];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __78__SiriCoreSyncDatabase__enumerateKey_updatedAfter_fromTable_usingBlock_error___block_invoke;
    v27[3] = &unk_279BD6738;
    v28 = tableCopy;
    v29 = keyCopy;
    v31 = &v35;
    v30 = blockCopy;
    v32 = v33;
    [rowValueTuples enumerateObjectsUsingBlock:v27];

    v24 = *(v36 + 24);
  }

  _Block_object_dispose(v33, 8);

  _Block_object_dispose(&v35, 8);
  return v24 & 1;
}

void __78__SiriCoreSyncDatabase__enumerateKey_updatedAfter_fromTable_usingBlock_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if ([*(a1 + 32) isEqualToString:@"sync_items"])
  {
    v30 = *(a1 + 40);
    v34 = [v6 objectAtIndexedSubscript:2];
    v7 = [v34 siriCoreSQLiteValue_toString];
    v32 = [v6 objectAtIndexedSubscript:1];
    v31 = [v32 siriCoreSQLiteValue_toNumber];
    v27 = [v31 intValue];
    v29 = [v6 objectAtIndexedSubscript:3];
    v8 = [v29 siriCoreSQLiteValue_toString];
    v28 = [v6 objectAtIndexedSubscript:7];
    v9 = [v28 siriCoreSQLiteValue_toData];
    v10 = [v6 objectAtIndexedSubscript:8];
    [v10 siriCoreSQLiteValue_toData];
    v11 = v33 = a4;
    v12 = [v6 objectAtIndexedSubscript:6];
    v13 = [v12 siriCoreSQLiteValue_toData];
    v14 = v7;
    v15 = v7;
    v16 = v8;
    v17 = [SiriCoreSyncRecord syncRecordWithKey:v30 identifier:v15 priority:v27 debugValue:v8 dataValue:v9 addedValue:v11 appMeta:v13];

    a4 = v33;
    v18 = [v6 objectAtIndexedSubscript:4];
    v19 = [v18 siriCoreSQLiteValue_toNumber];
    [v17 setUpdateTime:{objc_msgSend(v19, "longValue")}];

    v20 = [v6 objectAtIndexedSubscript:5];
    v21 = [v20 siriCoreSQLiteValue_toData];
    [v17 setCheckHash:v21];
  }

  else
  {
    if (![*(a1 + 32) isEqualToString:@"removed_items"])
    {
      v17 = 0;
      goto LABEL_7;
    }

    v22 = *(a1 + 40);
    v23 = [v6 objectAtIndexedSubscript:1];
    v24 = [v23 siriCoreSQLiteValue_toString];
    v17 = [SiriCoreSyncRecord syncRecordWithKey:v22 identifier:v24];

    v20 = [v6 objectAtIndexedSubscript:2];
    v21 = [v20 siriCoreSQLiteValue_toNumber];
    [v17 setUpdateTime:{objc_msgSend(v21, "longValue")}];
  }

LABEL_7:
  v25 = *(*(a1 + 64) + 8);
  obj = *(v25 + 40);
  v26 = (*(*(a1 + 48) + 16))();
  objc_storeStrong((v25 + 40), obj);
  *(*(*(a1 + 56) + 8) + 24) = v26 ^ 1;
  *a4 = *(*(*(a1 + 56) + 8) + 24);
}

- (int)_countKey:(id)key fromTable:(id)table updatedAfter:(id)after error:(id *)error
{
  v10 = MEMORY[0x277CCACA8];
  tableCopy = table;
  keyCopy = key;
  [after timeIntervalSince1970];
  keyCopy = [v10 stringWithFormat:@"SELECT COUNT() FROM %@ WHERE update_time > %.0f AND sourcekey = %@", tableCopy, v13, keyCopy];;

  v15 = [[SiriCoreSQLiteQuery alloc] initWithString:keyCopy statement:0 parameters:0 recordBuilder:0 options:16];
  if (error)
  {
    *error = 0;
  }

  v16 = [(SiriCoreSQLiteDatabase *)self->_db executeQuery:v15];
  error = [v16 error];
  v18 = error;
  if (error && error)
  {
    v19 = error;
    *error = v18;
  }

  else if (!error)
  {
    rowValueTuples = [v16 rowValueTuples];
    v23 = [rowValueTuples objectAtIndexedSubscript:0];
    v24 = [v23 objectAtIndexedSubscript:0];
    siriCoreSQLiteValue_toNumber = [v24 siriCoreSQLiteValue_toNumber];
    intValue = [siriCoreSQLiteValue_toNumber intValue];

    goto LABEL_8;
  }

  intValue = -1;
LABEL_8:

  return intValue;
}

- (BOOL)_insertSyncRec:(id)rec intoTable:(id)table error:(id *)error
{
  v34 = *MEMORY[0x277D85DE8];
  recCopy = rec;
  tableCopy = table;
  v10 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:8];
  v11 = [recCopy key];
  [v10 setValue:v11 forKey:@"sourcekey"];

  v12 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(recCopy, "itemPriority")}];
  [v10 setValue:v12 forKey:@"priority"];

  identifier = [recCopy identifier];
  [v10 setValue:identifier forKey:@"uniqueid"];

  dataValue = [recCopy dataValue];
  [v10 setValue:dataValue forKey:@"sync_value"];

  addedValue = [recCopy addedValue];
  [v10 setValue:addedValue forKey:@"added_value"];

  metaValue = [recCopy metaValue];
  [v10 setValue:metaValue forKey:@"app_meta"];

  debugValue = [recCopy debugValue];
  [v10 setValue:debugValue forKey:@"debug"];

  v18 = MEMORY[0x277CCABB0];
  [recCopy updateTime];
  v20 = [v18 numberWithInt:v19];
  [v10 setValue:v20 forKey:@"update_time"];

  v27 = 0;
  checkHash = [recCopy checkHash];
  [checkHash getBytes:&v27 length:8];

  v22 = [MEMORY[0x277CCABB0] numberWithDouble:v27];
  [v10 setValue:v22 forKey:@"v_hash"];

  v23 = [(SiriCoreSQLiteDatabase *)self->_db insertIntoTableWithName:tableCopy valueMap:v10 error:error];
  if (!v23)
  {
    v24 = *MEMORY[0x277CEF0F0];
    if (os_log_type_enabled(*MEMORY[0x277CEF0F0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v29 = "[SiriCoreSyncDatabase _insertSyncRec:intoTable:error:]";
      v30 = 2112;
      v31 = tableCopy;
      v32 = 2112;
      v33 = recCopy;
      _os_log_impl(&dword_2669D1000, v24, OS_LOG_TYPE_DEFAULT, "%s SiriCoreDbSync Could not insert tble: %@ record: %@", buf, 0x20u);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return v23;
}

- (BOOL)removeAllItemsOfKey:(id)key error:(id *)error
{
  v22 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  keyCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"INSERT INTO removed_items SELECT sourcekey, uniqueid, update_time FROM sync_items WHERE sourcekey = %@", keyCopy];;
  if ([(SiriCoreSyncDatabase *)self _executeStatement:keyCopy error:error])
  {
    keyCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE FROM sync_items WHERE sourcekey = %@", keyCopy];
    v9 = [(SiriCoreSyncDatabase *)self _executeStatement:keyCopy2 error:error];
    if (!v9)
    {
      v10 = *MEMORY[0x277CEF0F0];
      if (os_log_type_enabled(*MEMORY[0x277CEF0F0], OS_LOG_TYPE_DEFAULT))
      {
        path = self->_path;
        *buf = 136315650;
        v17 = "[SiriCoreSyncDatabase removeAllItemsOfKey:error:]";
        v18 = 2112;
        v19 = keyCopy;
        v20 = 2112;
        v21 = path;
        _os_log_impl(&dword_2669D1000, v10, OS_LOG_TYPE_DEFAULT, "%s SiriCoreDbSync Could not remove all items from key %@ in db %@", buf, 0x20u);
      }
    }
  }

  else
  {
    v12 = *MEMORY[0x277CEF0F0];
    v9 = 0;
    if (os_log_type_enabled(*MEMORY[0x277CEF0F0], OS_LOG_TYPE_DEFAULT))
    {
      v13 = self->_path;
      *buf = 136315650;
      v17 = "[SiriCoreSyncDatabase removeAllItemsOfKey:error:]";
      v18 = 2112;
      v19 = keyCopy;
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&dword_2669D1000, v12, OS_LOG_TYPE_DEFAULT, "%s SiriCoreDbSync Could not tombstone all items from key %@ in db %@", buf, 0x20u);
      v9 = 0;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)remove:(id)remove error:(id *)error
{
  v38 = *MEMORY[0x277D85DE8];
  removeCopy = remove;
  v7 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:4];
  v8 = [removeCopy key];
  [v7 setValue:v8 forKey:@"sourcekey"];

  identifier = [removeCopy identifier];
  [v7 setValue:identifier forKey:@"uniqueid"];

  v10 = MEMORY[0x277CCABB0];
  v11 = objc_opt_new();
  [v11 timeIntervalSince1970];
  v13 = [v10 numberWithInt:v12];
  [v7 setValue:v13 forKey:@"update_time"];

  v14 = [(SiriCoreSQLiteDatabase *)self->_db insertIntoTableWithName:@"removed_items" valueMap:v7 error:error];
  v15 = MEMORY[0x277CEF0F0];
  if (!v14)
  {
    v16 = *MEMORY[0x277CEF0F0];
    if (os_log_type_enabled(*MEMORY[0x277CEF0F0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v31 = "[SiriCoreSyncDatabase remove:error:]";
      v32 = 2112;
      v33 = removeCopy;
      _os_log_impl(&dword_2669D1000, v16, OS_LOG_TYPE_DEFAULT, "%s SiriCoreDbSync Could not add deletion record %@", buf, 0x16u);
    }
  }

  v17 = MEMORY[0x277CCACA8];
  v18 = [removeCopy key];
  identifier2 = [removeCopy identifier];
  v20 = [v17 stringWithFormat:@"DELETE FROM sync_items WHERE sourcekey = %@ AND uniqueid = %@", v18, identifier2];;

  v21 = *v15;
  if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v31 = "[SiriCoreSyncDatabase remove:error:]";
    v32 = 2112;
    v33 = v20;
    _os_log_impl(&dword_2669D1000, v21, OS_LOG_TYPE_DEFAULT, "%s SiriCoreDbSync delete cmd %@", buf, 0x16u);
  }

  v22 = [(SiriCoreSyncDatabase *)self _executeStatement:v20 error:error];
  if (!v22)
  {
    v23 = *v15;
    if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v23;
      v25 = [removeCopy key];
      identifier3 = [removeCopy identifier];
      path = self->_path;
      *buf = 136315906;
      v31 = "[SiriCoreSyncDatabase remove:error:]";
      v32 = 2112;
      v33 = v25;
      v34 = 2112;
      v35 = identifier3;
      v36 = 2112;
      v37 = path;
      _os_log_impl(&dword_2669D1000, v24, OS_LOG_TYPE_DEFAULT, "%s SiriCoreDbSync Could not delete (%@, %@) of  in db %@", buf, 0x2Au);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
  return v22;
}

- (BOOL)succeedOrRollbackOnFail:(id)fail error:(id *)error whileExecuting:(id)executing
{
  v25 = *MEMORY[0x277D85DE8];
  failCopy = fail;
  executingCopy = executing;
  if ([(SiriCoreSyncDatabase *)self beginTransactionWithError:error])
  {
    if (executingCopy && (executingCopy[2](executingCopy, error) & 1) != 0)
    {
      v10 = 1;
      if ([(SiriCoreSyncDatabase *)self commitTransactionWithError:error])
      {
        v11 = 1;
LABEL_20:
        v13 = v10 & v11;
        goto LABEL_21;
      }

      v14 = 0;
    }

    else
    {
      v14 = [(SiriCoreSyncDatabase *)self rollbackTransactionWithError:error];
      v10 = 0;
    }

    v15 = MEMORY[0x277CEF0A0];
    v16 = *MEMORY[0x277CEF0A0];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_ERROR))
    {
      v21 = 136315394;
      v22 = "[SiriCoreSyncDatabase succeedOrRollbackOnFail:error:whileExecuting:]";
      v23 = 2112;
      v24 = failCopy;
      _os_log_error_impl(&dword_2669D1000, v16, OS_LOG_TYPE_ERROR, "%s SiriCoreDbSync Failed to commit succeedOrRollBack %@", &v21, 0x16u);
      if (v10)
      {
        goto LABEL_12;
      }
    }

    else if (v10)
    {
LABEL_12:
      v11 = 0;
      v10 = 1;
      goto LABEL_20;
    }

    v17 = *v15;
    if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
    {
      v21 = 136315394;
      v22 = "[SiriCoreSyncDatabase succeedOrRollbackOnFail:error:whileExecuting:]";
      v23 = 2112;
      v24 = failCopy;
      _os_log_error_impl(&dword_2669D1000, v17, OS_LOG_TYPE_ERROR, "%s SiriCoreDbSync Failed to complete succeedOrRollBack block %@", &v21, 0x16u);
      if (!v14)
      {
LABEL_17:
        v18 = *v15;
        if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
        {
          v21 = 136315394;
          v22 = "[SiriCoreSyncDatabase succeedOrRollbackOnFail:error:whileExecuting:]";
          v23 = 2112;
          v24 = failCopy;
          _os_log_error_impl(&dword_2669D1000, v18, OS_LOG_TYPE_ERROR, "%s SiriCoreDbSync ...and failed to rollback %@. DB is in trouble.", &v21, 0x16u);
        }
      }
    }

    else if (!v14)
    {
      goto LABEL_17;
    }

    v10 = 0;
    v11 = 0;
    goto LABEL_20;
  }

  v12 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_ERROR))
  {
    v21 = 136315394;
    v22 = "[SiriCoreSyncDatabase succeedOrRollbackOnFail:error:whileExecuting:]";
    v23 = 2112;
    v24 = failCopy;
    _os_log_error_impl(&dword_2669D1000, v12, OS_LOG_TYPE_ERROR, "%s SiriCoreDbSync Failed to begin transaction for succeedOrRollBack %@", &v21, 0x16u);
  }

  v13 = 0;
LABEL_21:

  v19 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)_executeStatement:(id)statement error:(id *)error
{
  v21 = *MEMORY[0x277D85DE8];
  statementCopy = statement;
  v7 = [(SiriCoreSQLiteDatabase *)self->_db executeQueryString:statementCopy error:error];
  if (!v7)
  {
    v8 = *MEMORY[0x277CEF0A0];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_ERROR))
    {
      path = self->_path;
      v12 = *error;
      v13 = 136315906;
      v14 = "[SiriCoreSyncDatabase _executeStatement:error:]";
      v15 = 2112;
      v16 = statementCopy;
      v17 = 2112;
      v18 = path;
      v19 = 2112;
      v20 = v12;
      _os_log_error_impl(&dword_2669D1000, v8, OS_LOG_TYPE_ERROR, "%s SiriCoreDbSync Could not execute %@ in database file at %@, err=%@", &v13, 0x2Au);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)rollbackTransactionWithError:(id *)error
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (self->_inTransaction)
  {
    result = [(SiriCoreSQLiteDatabase *)self->_db rollbackTransactionWithError:error];
    self->_inTransaction = !result;
  }

  else
  {
    if (error)
    {
      v6 = MEMORY[0x277CCA9B8];
      v9 = *MEMORY[0x277CCA068];
      v10[0] = @"attempted to finalize transaction when none are in active";
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
      *error = [v6 errorWithDomain:@"com.apple.assistant.syncdb" code:101 userInfo:v7];
    }

    result = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)commitTransactionWithError:(id *)error
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (self->_inTransaction)
  {
    result = [(SiriCoreSQLiteDatabase *)self->_db commitTransactionWithError:error];
    self->_inTransaction = !result;
  }

  else
  {
    if (error)
    {
      v6 = MEMORY[0x277CCA9B8];
      v9 = *MEMORY[0x277CCA068];
      v10[0] = @"attempted to finalize transaction when none are in active";
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
      *error = [v6 errorWithDomain:@"com.apple.assistant.syncdb" code:101 userInfo:v7];
    }

    result = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)beginTransactionWithError:(id *)error
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (self->_inTransaction)
  {
    if (error)
    {
      v4 = MEMORY[0x277CCA9B8];
      v9 = *MEMORY[0x277CCA068];
      v10[0] = @"attempted to begin transaction when one is already active";
      v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
      *error = [v4 errorWithDomain:@"com.apple.assistant.syncdb" code:100 userInfo:v5];
    }

    result = 0;
  }

  else
  {
    result = [(SiriCoreSQLiteDatabase *)self->_db beginTransactionWithError:error];
    self->_inTransaction = result;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)prepare
{
  v46 = *MEMORY[0x277D85DE8];
  v43 = 0;
  v3 = [(SiriCoreSyncDatabase *)self openWithError:&v43];
  v4 = v43;
  v5 = v4;
  if (!v3)
  {
    goto LABEL_24;
  }

  v42 = v4;
  v3 = [(SiriCoreSyncDatabase *)self beginTransactionWithError:&v42];
  v6 = v42;

  if (!v3)
  {
    v5 = v6;
    goto LABEL_24;
  }

  v7 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v45 = "[SiriCoreSyncDatabase prepare]";
    _os_log_impl(&dword_2669D1000, v7, OS_LOG_TYPE_DEFAULT, "%s Prepping Sync DB", buf, 0xCu);
  }

  v41 = v6;
  v8 = [(SiriCoreSyncDatabase *)self _executeStatement:@"CREATE TABLE IF NOT EXISTS db_metadata(metadatakey varchar NOT NULL error:value varchar);", &v41];
  v9 = v41;

  v10 = MEMORY[0x277CEF0F0];
  if (!v8)
  {
    goto LABEL_16;
  }

  v40 = v9;
  v11 = [(SiriCoreSyncDatabase *)self _executeStatement:@"CREATE TABLE IF NOT EXISTS sync_items (sourcekey varchar NOT NULL error:priority integer, uniqueid varchar NOT NULL, debug varchar, update_time integer, v_hash integer, app_meta blob, sync_value blob, added_value blob, PRIMARY KEY(sourcekey, uniqueid));", &v40];
  v12 = v40;

  if (!v11)
  {
    goto LABEL_15;
  }

  v39 = v12;
  v13 = [(SiriCoreSyncDatabase *)self _executeStatement:@"CREATE TABLE IF NOT EXISTS removed_items(sourcekey varchar NOT NULL error:uniqueid varchar NOT NULL, update_time integer, PRIMARY KEY(sourcekey, uniqueid));", &v39];
  v9 = v39;

  if (!v13)
  {
    goto LABEL_16;
  }

  v38 = v9;
  v14 = [(SiriCoreSyncDatabase *)self _executeStatement:@"CREATE INDEX IF NOT EXISTS dk ON sync_items (sourcekey error:uniqueid);", &v38];
  v12 = v38;

  if (!v14)
  {
    goto LABEL_15;
  }

  v37 = v12;
  v15 = [(SiriCoreSyncDatabase *)self _executeStatement:@"CREATE INDEX IF NOT EXISTS du ON sync_items (update_time);" error:&v37];
  v9 = v37;

  if (!v15)
  {
    goto LABEL_16;
  }

  v36 = v9;
  v16 = [(SiriCoreSyncDatabase *)self _executeStatement:@"CREATE INDEX IF NOT EXISTS rk ON removed_items (sourcekey error:uniqueid);", &v36];
  v12 = v36;

  if (!v16)
  {
LABEL_15:
    v9 = v12;
    goto LABEL_16;
  }

  v35 = v12;
  v17 = [(SiriCoreSyncDatabase *)self _executeStatement:@"CREATE TABLE IF NOT EXISTS sync_anchors(sourcekey varchar NOT NULL error:anchor integer, update_time integer, PRIMARY KEY(sourcekey, anchor));", &v35];
  v9 = v35;

  if (!v17 || (v34 = v9, v18 = [(SiriCoreSyncDatabase *)self _executeStatement:@"CREATE TABLE IF NOT EXISTS sent_items (sourcekey varchar NOT NULL error:priority integer, uniqueid varchar NOT NULL, debug varchar, update_time integer, v_hash integer, app_meta blob, sync_value blob, added_value blob);", &v34], v19 = v34, v9, v9 = v19, !v18))
  {
LABEL_16:
    v20 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v45 = "[SiriCoreSyncDatabase prepare]";
      _os_log_impl(&dword_2669D1000, v20, OS_LOG_TYPE_DEFAULT, "%s SiriCoreDbSync Could not initialize db schema", buf, 0xCu);
    }
  }

  v21 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:8];
  [v21 setValue:@"version" forKey:@"metadatakey"];
  [v21 setValue:@"0.1" forKey:@"value"];
  db = self->_db;
  v33 = v9;
  v23 = [(SiriCoreSQLiteDatabase *)db insertIntoTableWithName:@"db_metadata" valueMap:v21 error:&v33];
  v24 = v33;

  if (v23)
  {
    v32 = v24;
    v25 = &v32;
    LOBYTE(v3) = [(SiriCoreSyncDatabase *)self commitTransactionWithError:&v32];
  }

  else
  {
    v26 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v45 = "[SiriCoreSyncDatabase prepare]";
      _os_log_impl(&dword_2669D1000, v26, OS_LOG_TYPE_DEFAULT, "%s SiriCoreDbSync Could not initialize db version info", buf, 0xCu);
    }

    v31 = v24;
    v25 = &v31;
    [(SiriCoreSyncDatabase *)self rollbackTransactionWithError:&v31];
    LOBYTE(v3) = 0;
  }

  v5 = *v25;

LABEL_24:
  v30 = v5;
  [(SiriCoreSyncDatabase *)self closeWithError:&v30];
  v27 = v30;

  v28 = *MEMORY[0x277D85DE8];
  return v3;
}

- (SiriCoreSyncDatabase)initWithPath:(id)path
{
  pathCopy = path;
  v12.receiver = self;
  v12.super_class = SiriCoreSyncDatabase;
  v6 = [(SiriCoreSyncDatabase *)&v12 init];
  v7 = v6;
  if (v6)
  {
    v6->_inTransaction = 0;
    objc_storeStrong(&v6->_path, path);
    v8 = [[SiriCoreSQLiteDatabase alloc] initWithPath:v7->_path dataProtectionClass:2 options:1];
    db = v7->_db;
    v7->_db = v8;

    v10 = v7;
  }

  return v7;
}

+ (void)removeCurrentSyncDatabase
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEBC0];
  v3 = _SiriCoreSharedResourcesDirectory();
  v4 = [v2 fileURLWithPath:v3];

  v5 = [v4 URLByAppendingPathComponent:@"SiriSyncItems.db"];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v7 = MEMORY[0x277CEF0A0];
  v8 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    path = [v5 path];
    *buf = 136315394;
    v22 = "+[SiriCoreSyncDatabase removeCurrentSyncDatabase]";
    v23 = 2112;
    v24 = path;
    _os_log_impl(&dword_2669D1000, v9, OS_LOG_TYPE_DEFAULT, "%s removing Sync DB at %@", buf, 0x16u);
  }

  path2 = [v5 path];
  v20 = 0;
  v12 = [defaultManager removeItemAtPath:path2 error:&v20];
  v13 = v20;

  if (v12)
  {
    v14 = v13 == 0;
  }

  else
  {
    v14 = 0;
  }

  if (!v14)
  {
    v15 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      v18 = v15;
      path3 = [v5 path];
      *buf = 136315650;
      v22 = "+[SiriCoreSyncDatabase removeCurrentSyncDatabase]";
      v23 = 2112;
      v24 = path3;
      v25 = 2112;
      v26 = v13;
      _os_log_error_impl(&dword_2669D1000, v18, OS_LOG_TYPE_ERROR, "%s failedremoving Sync DB at %@ err: %@", buf, 0x20u);
    }
  }

  v16 = _currentSyncDB;
  _currentSyncDB = 0;

  v17 = *MEMORY[0x277D85DE8];
}

+ (id)currentSyncDatabase
{
  v2 = _currentSyncDB;
  if (!_currentSyncDB)
  {
    v3 = MEMORY[0x277CBEBC0];
    v4 = _SiriCoreSharedResourcesDirectory();
    v5 = [v3 fileURLWithPath:v4];

    v6 = [v5 URLByAppendingPathComponent:@"SiriSyncItems.db"];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = [v6 path];
    v9 = [defaultManager fileExistsAtPath:path];

    v10 = [SiriCoreSyncDatabase alloc];
    path2 = [v6 path];
    v12 = [(SiriCoreSyncDatabase *)v10 initWithPath:path2];
    v13 = _currentSyncDB;
    _currentSyncDB = v12;

    if ((v9 & 1) == 0)
    {
      [_currentSyncDB prepare];
    }

    v2 = _currentSyncDB;
  }

  return v2;
}

@end