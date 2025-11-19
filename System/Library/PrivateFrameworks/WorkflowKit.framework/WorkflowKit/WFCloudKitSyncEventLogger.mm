@interface WFCloudKitSyncEventLogger
+ (id)createPersistedSyncEventLogger;
- (BOOL)_applySchema;
- (BOOL)_applySchemaIfNecessary;
- (WFCloudKitSyncEventLogger)initWithPersistedURL:(id)a3;
- (id)_eventForDatabaseDescriptor:(id)a3 value:(id)a4;
- (id)_eventForDeviceRecords:(id)a3;
- (id)_eventForRecord:(id)a3;
- (id)_eventForRecordID:(id)a3;
- (id)_eventsWithFilter:(id)a3 newestFirst:(BOOL)a4;
- (id)_initWithFilename:(const char *)a3 flags:(int)a4 postNotifications:(BOOL)a5;
- (id)eventsSinceDate:(id)a3;
- (void)addObserver:(id)a3;
- (void)clearLogs;
- (void)clearOldLogs;
- (void)dealloc;
- (void)logDatabaseInsert:(id)a3 value:(id)a4;
- (void)logDatabaseModify:(id)a3 value:(id)a4;
- (void)logDatabaseRemove:(id)a3;
- (void)logDeletionFetched:(id)a3;
- (void)logDesiredSyncOperationWithName:(id)a3 operation:(id)a4 identifier:(id)a5;
- (void)logDeviceRecords:(id)a3;
- (void)logError:(id)a3;
- (void)logEvent:(id)a3;
- (void)logRecordDeleteFailed:(id)a3 error:(id)a4;
- (void)logRecordDeleted:(id)a3;
- (void)logRecordFetched:(id)a3;
- (void)logRecordPushFailed:(id)a3 error:(id)a4;
- (void)logRecordPushed:(id)a3;
- (void)removeObserver:(id)a3;
@end

@implementation WFCloudKitSyncEventLogger

- (id)_eventForDeviceRecords:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v3;
  v21 = [obj countByEnumeratingWithState:&v26 objects:v33 count:16];
  if (v21)
  {
    v19 = *v27;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v26 + 1) + 8 * i);
        v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v7 = [v5 allKeys];
        v8 = [v7 countByEnumeratingWithState:&v22 objects:v32 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v23;
          do
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v23 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v22 + 1) + 8 * j);
              v13 = [v5 objectForKey:v12];
              v14 = [v13 description];
              [v6 setObject:v14 forKeyedSubscript:v12];
            }

            v9 = [v7 countByEnumeratingWithState:&v22 objects:v32 count:16];
          }

          while (v9);
        }

        [v20 addObject:v6];
      }

      v21 = [obj countByEnumeratingWithState:&v26 objects:v33 count:16];
    }

    while (v21);
  }

  v30 = @"deviceRecords";
  v31 = v20;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)_eventForRecordID:(id)a3
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"id";
  v3 = a3;
  v4 = [v3 recordName];
  v10[1] = @"zoneID";
  v11[0] = v4;
  v5 = [v3 zoneID];

  v6 = [v5 zoneName];
  v11[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)_eventForRecord:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = [v3 allKeys];
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        v11 = [v3 objectForKey:v10];
        if (!v11)
        {
          v12 = [v3 encryptedValues];
          v11 = [v12 objectForKey:v10];
        }

        v13 = [v11 description];
        [v4 setObject:v13 forKeyedSubscript:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v7);
  }

  v27[0] = @"id";
  v14 = [v3 recordID];
  v15 = [v14 recordName];
  v28[0] = v15;
  v27[1] = @"zoneID";
  v16 = [v3 recordID];
  v17 = [v16 zoneID];
  v18 = [v17 zoneName];
  v28[1] = v18;
  v27[2] = @"type";
  v19 = [v3 recordType];
  v27[3] = @"values";
  v28[2] = v19;
  v28[3] = v4;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:4];

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)_eventForDatabaseDescriptor:(id)a3 value:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v6 objectType];
  v8 = WFDescriptionForDatabaseObjectType();
  [v7 setObject:v8 forKeyedSubscript:@"type"];

  v9 = [v6 identifier];

  [v7 setObject:v9 forKeyedSubscript:@"id"];
  if ([v5 length])
  {
    [v7 setObject:v5 forKeyedSubscript:@"value"];
  }

  return v7;
}

- (BOOL)_applySchema
{
  v11 = *MEMORY[0x1E69E9840];
  errmsg = 0;
  v2 = sqlite3_exec(self->_db, "CREATE TABLE events (id INTEGER PRIMARY KEY,type INTEGER NOT NULL,timestamp REAL NOT NULL,event TEXT NOT NULL)", 0, 0, &errmsg);
  if (v2)
  {
    v3 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v8 = "[WFCloudKitSyncEventLogger _applySchema]";
      v9 = 2080;
      v10 = errmsg;
      _os_log_impl(&dword_1CA256000, v3, OS_LOG_TYPE_ERROR, "%s Failed to set schema: %s", buf, 0x16u);
    }

    sqlite3_free(errmsg);
  }

  result = v2 == 0;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)_applySchemaIfNecessary
{
  v24 = *MEMORY[0x1E69E9840];
  ppStmt = 0;
  errmsg = 0;
  v3 = sqlite3_prepare_v2(self->_db, "PRAGMA user_version", -1, &ppStmt, 0);
  if (v3)
  {
    v4 = v3;
    v5 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = sqlite3_errstr(v4);
      *buf = 136315394;
      v21 = "[WFCloudKitSyncEventLogger _applySchemaIfNecessary]";
      v22 = 2080;
      v23 = v6;
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_ERROR, "%s Failed to prepare statement: %s", buf, 0x16u);
    }

    goto LABEL_24;
  }

  if (sqlite3_step(ppStmt) != 100)
  {
    sqlite3_finalize(ppStmt);
LABEL_9:
    v9 = sqlite3_exec(self->_db, "BEGIN TRANSACTION", 0, 0, &errmsg);
    v10 = getWFCloudKitSyncLogObject();
    v11 = v10;
    if (v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v21 = "[WFCloudKitSyncEventLogger _applySchemaIfNecessary]";
        v22 = 2080;
        v23 = errmsg;
        _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_ERROR, "%s Failed to start transaction: %s", buf, 0x16u);
      }

      goto LABEL_23;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v21 = "[WFCloudKitSyncEventLogger _applySchemaIfNecessary]";
      _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_INFO, "%s Schema version has changed. Dropping all tables and recreating database.", buf, 0xCu);
    }

    if (sqlite3_exec(self->_db, "PRAGMA foreign_keys = OFF", 0, 0, &errmsg))
    {
      v12 = getWFCloudKitSyncLogObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
LABEL_17:
        *buf = 136315394;
        v21 = "[WFCloudKitSyncEventLogger _applySchemaIfNecessary]";
        v22 = 2080;
        v23 = errmsg;
        v13 = "%s Failed to disable foreign key constraints: %s";
LABEL_21:
        _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_ERROR, v13, buf, 0x16u);
      }
    }

    else
    {
      if (!sqlite3_exec(self->_db, "DROP TABLE IF EXISTS events", 0, 0, &errmsg))
      {
        v8 = [(WFCloudKitSyncEventLogger *)self _applySchema];
        if (!v8)
        {
          goto LABEL_25;
        }

        db = self->_db;
        v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PRAGMA user_version = %d", 2];
        LODWORD(db) = sqlite3_exec(db, [v16 UTF8String], 0, 0, &errmsg);

        if (db)
        {
          v12 = getWFCloudKitSyncLogObject();
          if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_22;
          }

          *buf = 136315394;
          v21 = "[WFCloudKitSyncEventLogger _applySchemaIfNecessary]";
          v22 = 2080;
          v23 = errmsg;
          v13 = "%s SQL error: %s";
          goto LABEL_21;
        }

        if (!sqlite3_exec(self->_db, "PRAGMA foreign_keys = ON", 0, 0, &errmsg))
        {
          if (!sqlite3_exec(self->_db, "COMMIT", 0, 0, &errmsg))
          {
            goto LABEL_7;
          }

          v12 = getWFCloudKitSyncLogObject();
          if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_22;
          }

          *buf = 136315394;
          v21 = "[WFCloudKitSyncEventLogger _applySchemaIfNecessary]";
          v22 = 2080;
          v23 = errmsg;
          v13 = "%s Failed to start transaction: %s";
          goto LABEL_21;
        }

        v12 = getWFCloudKitSyncLogObject();
        if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_22;
        }

        goto LABEL_17;
      }

      v12 = getWFCloudKitSyncLogObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v21 = "[WFCloudKitSyncEventLogger _applySchemaIfNecessary]";
        v22 = 2080;
        v23 = errmsg;
        v13 = "%s Unable to drop events table: %s";
        goto LABEL_21;
      }
    }

LABEL_22:

LABEL_23:
    sqlite3_free(errmsg);
LABEL_24:
    LOBYTE(v8) = 0;
    goto LABEL_25;
  }

  v7 = sqlite3_column_int(ppStmt, 0);
  sqlite3_finalize(ppStmt);
  if (v7 != 2)
  {
    goto LABEL_9;
  }

LABEL_7:
  LOBYTE(v8) = 1;
LABEL_25:
  v14 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)clearOldLogs
{
  v26 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __41__WFCloudKitSyncEventLogger_clearOldLogs__block_invoke;
  aBlock[3] = &unk_1E837FA70;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v4 = MEMORY[0x1E696AEC0];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v6 = [v4 stringWithFormat:@"DELETE FROM events WHERE (timestamp < %lf)", v5 + -172800.0];
  errmsg = 0;
  db = self->_db;
  v8 = v6;
  if (sqlite3_exec(db, [v6 UTF8String], 0, 0, &errmsg))
  {
    v9 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v23 = "[WFCloudKitSyncEventLogger clearOldLogs]";
      v24 = 2080;
      v25 = errmsg;
      _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_ERROR, "%s Failed to delete events: %s", buf, 0x16u);
    }

    sqlite3_free(errmsg);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = [(NSHashTable *)self->_observers allObjects];
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v11)
  {
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v15 + 1) + 8 * v13++) syncEventsWereRemoved];
      }

      while (v11 != v13);
      v11 = [v10 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v11);
  }

  if (self->_postNotifications)
  {
    notify_post(WFCloudKitSyncEventsDidChange);
  }

  v3[2](v3);
  v14 = *MEMORY[0x1E69E9840];
}

- (void)clearLogs
{
  v21 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __38__WFCloudKitSyncEventLogger_clearLogs__block_invoke;
  aBlock[3] = &unk_1E837FA70;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  errmsg = 0;
  if (sqlite3_exec(self->_db, "DELETE FROM events", 0, 0, &errmsg))
  {
    v4 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "[WFCloudKitSyncEventLogger clearLogs]";
      v19 = 2080;
      v20 = errmsg;
      _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_ERROR, "%s Failed to delete events: %s", buf, 0x16u);
    }

    sqlite3_free(errmsg);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [(NSHashTable *)self->_observers allObjects];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v16 count:16];
  if (v6)
  {
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v8++) syncEventsWereRemoved];
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v10 objects:v16 count:16];
    }

    while (v6);
  }

  if (self->_postNotifications)
  {
    notify_post(WFCloudKitSyncEventsDidChange);
  }

  v3[2](v3);

  v9 = *MEMORY[0x1E69E9840];
}

- (id)_eventsWithFilter:(id)a3 newestFirst:(BOOL)a4
{
  v4 = a4;
  v35 = *MEMORY[0x1E69E9840];
  v28 = a3;
  os_unfair_lock_lock(&self->_lock);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__WFCloudKitSyncEventLogger__eventsWithFilter_newestFirst___block_invoke;
  aBlock[3] = &unk_1E837FA70;
  aBlock[4] = self;
  v26 = _Block_copy(aBlock);
  if (v28)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"WHERE %@", v28];
  }

  else
  {
    v6 = &stru_1F4A1C408;
  }

  v7 = @"ASC";
  if (v4)
  {
    v7 = @"DESC";
  }

  v25 = v6;
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT id, type, timestamp, event FROM events %@ ORDER BY timestamp %@", v6, v7];
  ppStmt = 0;
  db = self->_db;
  v27 = v8;
  v10 = v8;
  v11 = sqlite3_prepare_v2(db, [v27 UTF8String], -1, &ppStmt, 0);
  if (v11)
  {
    v12 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = sqlite3_errstr(v11);
      *buf = 136315394;
      v32 = "[WFCloudKitSyncEventLogger _eventsWithFilter:newestFirst:]";
      v33 = 2080;
      v34 = v13;
      _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_ERROR, "%s Failed to prepare events statement: %s", buf, 0x16u);
    }

    v14 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v14 = objc_opt_new();
    while (sqlite3_step(ppStmt) == 100)
    {
      v15 = sqlite3_column_int(ppStmt, 0);
      v16 = sqlite3_column_int(ppStmt, 1);
      v17 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:{sqlite3_column_double(ppStmt, 2)}];
      v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{sqlite3_column_text(ppStmt, 3)}];
      v19 = MEMORY[0x1E696ACB0];
      v20 = [v18 dataUsingEncoding:4];
      v21 = [v19 JSONObjectWithData:v20 options:0 error:0];

      v22 = [[WFCloudKitSyncEvent alloc] initWithIdentifier:v15 eventType:v16 date:v17 content:v21];
      [v14 addObject:v22];
    }

    sqlite3_finalize(ppStmt);
  }

  v26[2]();
  v23 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)eventsSinceDate:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  [a3 timeIntervalSinceReferenceDate];
  v6 = [v4 stringWithFormat:@"timestamp >= %f", v5];
  v7 = [(WFCloudKitSyncEventLogger *)self _eventsWithFilter:v6 newestFirst:0];

  return v7;
}

- (void)logDesiredSyncOperationWithName:(id)a3 operation:(id)a4 identifier:(id)a5
{
  v17[4] = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v9 operationType];
  if (v11 > 2)
  {
    v12 = 0;
  }

  else
  {
    v12 = off_1E8374578[v11];
  }

  v16[0] = @"name";
  v16[1] = @"identifier";
  v17[0] = v10;
  v17[1] = v8;
  v17[2] = v12;
  v16[2] = @"type";
  v16[3] = @"reason";
  v13 = [v9 reason];

  v17[3] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:4];

  [(WFCloudKitSyncEventLogger *)self _logEventWithType:13 event:v14];
  v15 = *MEMORY[0x1E69E9840];
}

- (void)logDeviceRecords:(id)a3
{
  v4 = [(WFCloudKitSyncEventLogger *)self _eventForDeviceRecords:a3];
  [(WFCloudKitSyncEventLogger *)self _logEventWithType:12 event:v4];
}

- (void)logError:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = @"error";
  v9[0] = a3;
  v4 = MEMORY[0x1E695DF20];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v9 forKeys:&v8 count:1];

  [(WFCloudKitSyncEventLogger *)self _logEventWithType:11 event:v6];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)logEvent:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = @"event";
  v9[0] = a3;
  v4 = MEMORY[0x1E695DF20];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v9 forKeys:&v8 count:1];

  [(WFCloudKitSyncEventLogger *)self _logEventWithType:10 event:v6];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)logDatabaseRemove:(id)a3
{
  v4 = [(WFCloudKitSyncEventLogger *)self _eventForDatabaseDescriptor:a3 value:0];
  [(WFCloudKitSyncEventLogger *)self _logEventWithType:8 event:v4];
}

- (void)logDatabaseInsert:(id)a3 value:(id)a4
{
  v5 = [(WFCloudKitSyncEventLogger *)self _eventForDatabaseDescriptor:a3 value:a4];
  [(WFCloudKitSyncEventLogger *)self _logEventWithType:7 event:v5];
}

- (void)logDatabaseModify:(id)a3 value:(id)a4
{
  v5 = [(WFCloudKitSyncEventLogger *)self _eventForDatabaseDescriptor:a3 value:a4];
  [(WFCloudKitSyncEventLogger *)self _logEventWithType:6 event:v5];
}

- (void)logRecordDeleteFailed:(id)a3 error:(id)a4
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"record";
  v6 = a4;
  v7 = [(WFCloudKitSyncEventLogger *)self _eventForRecordID:a3];
  v10[1] = @"error";
  v11[0] = v7;
  v11[1] = v6;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];

  [(WFCloudKitSyncEventLogger *)self _logEventWithType:5 event:v8];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)logRecordDeleted:(id)a3
{
  v4 = [(WFCloudKitSyncEventLogger *)self _eventForRecordID:a3];
  [(WFCloudKitSyncEventLogger *)self _logEventWithType:3 event:v4];
}

- (void)logRecordPushFailed:(id)a3 error:(id)a4
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"record";
  v6 = a4;
  v7 = [(WFCloudKitSyncEventLogger *)self _eventForRecord:a3];
  v10[1] = @"error";
  v11[0] = v7;
  v11[1] = v6;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];

  [(WFCloudKitSyncEventLogger *)self _logEventWithType:4 event:v8];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)logRecordPushed:(id)a3
{
  v4 = [(WFCloudKitSyncEventLogger *)self _eventForRecord:a3];
  [(WFCloudKitSyncEventLogger *)self _logEventWithType:2 event:v4];
}

- (void)logDeletionFetched:(id)a3
{
  v4 = [(WFCloudKitSyncEventLogger *)self _eventForRecordID:a3];
  [(WFCloudKitSyncEventLogger *)self _logEventWithType:1 event:v4];
}

- (void)logRecordFetched:(id)a3
{
  v4 = [(WFCloudKitSyncEventLogger *)self _eventForRecord:a3];
  [(WFCloudKitSyncEventLogger *)self _logEventWithType:0 event:v4];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_observers removeObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_observers addObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)dealloc
{
  sqlite3_finalize(self->_log_event);
  sqlite3_close_v2(self->_db);
  v3.receiver = self;
  v3.super_class = WFCloudKitSyncEventLogger;
  [(WFCloudKitSyncEventLogger *)&v3 dealloc];
}

- (id)_initWithFilename:(const char *)a3 flags:(int)a4 postNotifications:(BOOL)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v25.receiver = self;
  v25.super_class = WFCloudKitSyncEventLogger;
  v8 = [(WFCloudKitSyncEventLogger *)&v25 init];
  v9 = v8;
  if (v8)
  {
    v8->_lock._os_unfair_lock_opaque = 0;
    v10 = sqlite3_open_v2(a3, &v8->_db, a4, 0);
    if (v10)
    {
      v11 = v10;
      v12 = getWFCloudKitSyncLogObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = sqlite3_errstr(v11);
        *buf = 136315394;
        v27 = "[WFCloudKitSyncEventLogger _initWithFilename:flags:postNotifications:]";
        v28 = 2080;
        v29 = v13;
        _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_DEFAULT, "%s Failed to set up sync logger: %s", buf, 0x16u);
      }
    }

    else
    {
      v14 = [(WFCloudKitSyncEventLogger *)v9 _applySchemaIfNecessary];
      db = v9->_db;
      if (v14)
      {
        v16 = sqlite3_prepare_v2(db, "INSERT INTO events (type, timestamp, event) VALUES (?,?,?) RETURNING id", -1, &v9->_log_event, 0);
        if (!v16)
        {
          v9->_postNotifications = a5;
          v23 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
          observers = v9->_observers;
          v9->_observers = v23;

          [(WFCloudKitSyncEventLogger *)v9 clearOldLogs];
          v20 = v9;
          goto LABEL_13;
        }

        v17 = v16;
        v18 = getWFCloudKitSyncLogObject();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = sqlite3_errstr(v17);
          *buf = 136315394;
          v27 = "[WFCloudKitSyncEventLogger _initWithFilename:flags:postNotifications:]";
          v28 = 2080;
          v29 = v19;
          _os_log_impl(&dword_1CA256000, v18, OS_LOG_TYPE_ERROR, "%s Failed to prepare log_event statement: %s", buf, 0x16u);
        }

        db = v9->_db;
      }

      sqlite3_close_v2(db);
    }
  }

  v20 = 0;
LABEL_13:

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

- (WFCloudKitSyncEventLogger)initWithPersistedURL:(id)a3
{
  v3 = self;
  if (a3)
  {
    v4 = [a3 fileSystemRepresentation];
    self = v3;
    v5 = 65542;
    v6 = 1;
  }

  else
  {
    v4 = "";
    v5 = 65666;
    v6 = 0;
  }

  v7 = [(WFCloudKitSyncEventLogger *)self _initWithFilename:v4 flags:v5 postNotifications:v6];

  return v7;
}

+ (id)createPersistedSyncEventLogger
{
  v3 = [MEMORY[0x1E695DFF8] wf_shortcutsDirectoryURL];
  v4 = [v3 URLByAppendingPathComponent:@"synclog.db"];

  v5 = [[a1 alloc] initWithPersistedURL:v4];

  return v5;
}

@end