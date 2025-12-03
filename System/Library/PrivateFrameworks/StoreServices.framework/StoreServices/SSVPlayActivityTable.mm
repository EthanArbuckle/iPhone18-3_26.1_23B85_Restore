@interface SSVPlayActivityTable
+ (BOOL)_setupDatabase:(id)database;
+ (id)databasePath;
- (BOOL)_getPlayActivityEvents:(id *)events relevantRevisionsIndexSet:(id *)set withStartRevision:(unint64_t)revision endRevision:(unint64_t)endRevision storeAccountID:(unint64_t)d shouldFilterStoreAccountID:(BOOL)iD additionalRevisionsIndexSet:(id)indexSet ignoredRevisionsIndexSet:(id)self0 error:(id *)self1;
- (BOOL)_setValue:(id)value forDatabasePropertyKey:(id)key;
- (BOOL)insertPlayActivityEvent:(id)event withRevision:(unint64_t)revision returningError:(id *)error;
- (BOOL)removePlayActivityEventsUpToRevision:(unint64_t)revision returningError:(id *)error;
- (NSString)eventsRevisionVersionToken;
- (SSVPlayActivityTable)init;
- (id)_revisionsIndexSetUsingPersisentIDGenerationBlock:(id)block count:(unint64_t)count;
- (id)_valueForDatabasePropertyKey:(id)key;
- (id)revisionsIndexSetForPlayActivityEventPersistentIDs:(id)ds;
- (id)revisionsIndexSetForPlayActivityEvents:(id)events;
- (unint64_t)currentEventsRevision;
- (void)performTransactionWithBlock:(id)block;
- (void)setCurrentEventsRevision:(unint64_t)revision;
@end

@implementation SSVPlayActivityTable

- (SSVPlayActivityTable)init
{
  databasePath = [objc_opt_class() databasePath];
  v4 = [SSSQLiteDatabase alloc];
  v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:databasePath isDirectory:0];
  v6 = [(SSSQLiteDatabase *)v4 initWithDatabaseURL:v5 readOnly:0 protectionType:*MEMORY[0x1E696A388]];

  v7 = objc_opt_class();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __28__SSVPlayActivityTable_init__block_invoke;
  v12[3] = &__block_descriptor_40_e26_v16__0__SSSQLiteDatabase_8lu32l8;
  v12[4] = v7;
  [(SSSQLiteDatabase *)v6 setSetupBlock:v12];
  v11.receiver = self;
  v11.super_class = SSVPlayActivityTable;
  v8 = [(SSVPlayActivityTable *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_database, v6);
  }

  return v9;
}

- (unint64_t)currentEventsRevision
{
  v2 = [(SSVPlayActivityTable *)self _valueForDatabasePropertyKey:@"events_current_revision"];
  longLongValue = [v2 longLongValue];

  return longLongValue;
}

- (void)setCurrentEventsRevision:(unint64_t)revision
{
  revision = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", revision];
  [(SSVPlayActivityTable *)self _setValue:revision forDatabasePropertyKey:@"events_current_revision"];
}

+ (id)databasePath
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{CPSharedResourcesDirectory(), @"Library", @"com.apple.itunesstored", @"play_activity.sqlitedb", 0}];
  v3 = [MEMORY[0x1E696AEC0] pathWithComponents:v2];

  return v3;
}

- (NSString)eventsRevisionVersionToken
{
  v2 = [(SSVPlayActivityTable *)self _valueForDatabasePropertyKey:@"events_revision_version_token"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"unknown-revision-version";
  }

  v5 = v4;

  return &v4->isa;
}

- (BOOL)insertPlayActivityEvent:(id)event withRevision:(unint64_t)revision returningError:(id *)error
{
  eventCopy = event;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = eventCopy == 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__88;
  v31 = __Block_byref_object_dispose__88;
  v32 = 0;
  _eventsDatabaseTableName = [objc_opt_class() _eventsDatabaseTableName];
  v10 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"INSERT OR REPLACE INTO "];
  [v10 appendString:_eventsDatabaseTableName];
  objc_msgSend(v10, "appendString:", @" (");
  [v10 appendString:@"pid"];
  v11 = 0;
  do
  {
    [v10 appendString:{@", "}];
    [v10 appendString:off_1E84B40F0[v11++]];
  }

  while ((v11 * 8) != 24);
  [v10 appendString:@") VALUES (?"];
  v12 = 3;
  do
  {
    [v10 appendString:{@", ?"}];
    --v12;
  }

  while (v12);
  [v10 appendString:@";"]);
  database = self->_database;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __76__SSVPlayActivityTable_insertPlayActivityEvent_withRevision_returningError___block_invoke;
  v20[3] = &unk_1E84B3F18;
  revisionCopy = revision;
  v14 = eventCopy;
  v24 = &v27;
  v25 = &v33;
  v21 = v14;
  selfCopy = self;
  v15 = v10;
  v23 = v15;
  [(SSSQLiteDatabase *)database prepareStatementForSQL:v15 cache:1 usingBlock:v20];
  if ((v34[3] & 1) == 0 && !v28[5])
  {
    v16 = SSError(@"SSErrorDomain", 100, 0, 0);
    v17 = v28[5];
    v28[5] = v16;
  }

  if (error)
  {
    *error = v28[5];
  }

  v18 = *(v34 + 24);

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);

  return v18;
}

void __76__SSVPlayActivityTable_insertPlayActivityEvent_withRevision_returningError___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = 0;
  v24 = *MEMORY[0x1E69E9840];
  while (1)
  {
    if (v4 <= 1)
    {
      if (v4)
      {
        v6 = *(a1 + 72);
        goto LABEL_9;
      }

      v5 = [*(a1 + 32) persistentID];
LABEL_7:
      v6 = v5;
LABEL_9:
      sqlite3_bind_int64(a2, v4 + 1, v6);
      goto LABEL_11;
    }

    if (v4 == 2)
    {
      v5 = [*(a1 + 32) storeAccountID];
      goto LABEL_7;
    }

    v7 = [*(a1 + 32) dataRepresentation];
    sqlite3_bind_blob(a2, v4 + 1, [v7 bytes], objc_msgSend(v7, "length"), 0);

LABEL_11:
    if (*(*(*(a1 + 56) + 8) + 40))
    {
      break;
    }

    if (++v4 == 4)
    {
      *(*(*(a1 + 64) + 8) + 24) = [SSSQLiteDatabase statementDidFinishAfterStepping:a2];
      if (*(*(*(a1 + 64) + 8) + 24))
      {
        return;
      }

      v8 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v8)
      {
        v8 = +[SSLogConfig sharedConfig];
      }

      v9 = [v8 shouldLog];
      if ([v8 shouldLogToDisk])
      {
        v10 = v9 | 2;
      }

      else
      {
        v10 = v9;
      }

      v11 = [v8 OSLogObject];
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v10 &= 2u;
      }

      if (v10)
      {
        v12 = objc_opt_class();
        v13 = *(a1 + 48);
        *v23 = 138412546;
        *&v23[4] = v12;
        *&v23[12] = 2112;
        *&v23[14] = v13;
        v14 = v12;
        LODWORD(v22) = 22;
        v15 = _os_log_send_and_compose_impl();

        if (v15)
        {
          v11 = [MEMORY[0x1E696AEC0] stringWithCString:v15 encoding:{4, v23, v22, *v23, *&v23[16], v24}];
          free(v15);
          SSFileLog(v8, @"%@", v16, v17, v18, v19, v20, v21, v11);
          goto LABEL_24;
        }
      }

      else
      {
LABEL_24:
      }

      return;
    }
  }

  *(*(*(a1 + 64) + 8) + 24) = 0;
}

- (void)performTransactionWithBlock:(id)block
{
  blockCopy = block;
  v5 = blockCopy;
  if (blockCopy)
  {
    database = self->_database;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __52__SSVPlayActivityTable_performTransactionWithBlock___block_invoke;
    v7[3] = &unk_1E84B3F40;
    v8 = blockCopy;
    [(SSSQLiteDatabase *)database performTransactionWithBlock:v7];
  }
}

- (BOOL)removePlayActivityEventsUpToRevision:(unint64_t)revision returningError:(id *)error
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 1;
  _eventsDatabaseTableName = [objc_opt_class() _eventsDatabaseTableName];
  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DELETE FROM %@ WHERE %@ <= ?;", _eventsDatabaseTableName, @"revision_id"];
  database = self->_database;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __76__SSVPlayActivityTable_removePlayActivityEventsUpToRevision_returningError___block_invoke;
  v15[3] = &unk_1E84B3F68;
  v17 = &v19;
  revisionCopy = revision;
  v15[4] = self;
  v10 = v8;
  v16 = v10;
  [(SSSQLiteDatabase *)database prepareStatementForSQL:v10 cache:0 usingBlock:v15];
  if ((v20[3] & 1) == 0)
  {
    v11 = SSError(@"SSErrorDomain", 100, 0, 0);
    if (!error)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v11 = 0;
  if (error)
  {
LABEL_3:
    v12 = v11;
    *error = v11;
  }

LABEL_4:
  v13 = *(v20 + 24);

  _Block_object_dispose(&v19, 8);
  return v13;
}

void __76__SSVPlayActivityTable_removePlayActivityEventsUpToRevision_returningError___block_invoke(void *a1, sqlite3_stmt *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  sqlite3_bind_int64(a2, 1, a1[7]);
  *(*(a1[6] + 8) + 24) = [SSSQLiteDatabase statementDidFinishAfterStepping:a2];
  if ((*(*(a1[6] + 8) + 24) & 1) == 0)
  {
    v4 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v4)
    {
      v4 = +[SSLogConfig sharedConfig];
    }

    v5 = [v4 shouldLog];
    if ([v4 shouldLogToDisk])
    {
      v6 = v5 | 2;
    }

    else
    {
      v6 = v5;
    }

    v7 = [v4 OSLogObject];
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v6 &= 2u;
    }

    if (v6)
    {
      v8 = objc_opt_class();
      v9 = a1[5];
      *v35 = 138412546;
      *&v35[4] = v8;
      *&v35[12] = 2112;
      *&v35[14] = v9;
      v10 = v8;
      LODWORD(v34) = 22;
      v33 = v35;
      v11 = _os_log_send_and_compose_impl();

      if (!v11)
      {
LABEL_13:

        goto LABEL_14;
      }

      v7 = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:{4, v35, v34, *v35, *&v35[16], v36}];
      free(v11);
      SSFileLog(v4, @"%@", v12, v13, v14, v15, v16, v17, v7);
    }

    goto LABEL_13;
  }

LABEL_14:
  v18 = [*(a1[4] + 8) countChanges];
  v19 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v19)
  {
    v19 = +[SSLogConfig sharedConfig];
  }

  v20 = [v19 shouldLog];
  if ([v19 shouldLogToDisk])
  {
    v21 = v20 | 2;
  }

  else
  {
    v21 = v20;
  }

  v22 = [v19 OSLogObject];
  if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v21 &= 2u;
  }

  if (!v21)
  {
    goto LABEL_24;
  }

  v23 = objc_opt_class();
  v24 = *(*(a1[6] + 8) + 24);
  *v35 = 138412802;
  *&v35[4] = v23;
  *&v35[12] = 1024;
  *&v35[14] = v24;
  *&v35[18] = 1024;
  *&v35[20] = v18;
  v25 = v23;
  LODWORD(v34) = 24;
  v26 = _os_log_send_and_compose_impl();

  if (v26)
  {
    v22 = [MEMORY[0x1E696AEC0] stringWithCString:v26 encoding:{4, v35, v34}];
    free(v26);
    SSFileLog(v19, @"%@", v27, v28, v29, v30, v31, v32, v22);
LABEL_24:
  }
}

- (id)revisionsIndexSetForPlayActivityEvents:(id)events
{
  eventsCopy = events;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63__SSVPlayActivityTable_revisionsIndexSetForPlayActivityEvents___block_invoke;
  v8[3] = &unk_1E84B3F90;
  v9 = eventsCopy;
  v5 = eventsCopy;
  v6 = -[SSVPlayActivityTable _revisionsIndexSetUsingPersisentIDGenerationBlock:count:](self, "_revisionsIndexSetUsingPersisentIDGenerationBlock:count:", v8, [v5 count]);

  return v6;
}

uint64_t __63__SSVPlayActivityTable_revisionsIndexSetForPlayActivityEvents___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectAtIndex:a2];
  v3 = [v2 persistentID];

  return v3;
}

- (id)revisionsIndexSetForPlayActivityEventPersistentIDs:(id)ds
{
  dsCopy = ds;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __75__SSVPlayActivityTable_revisionsIndexSetForPlayActivityEventPersistentIDs___block_invoke;
  v8[3] = &unk_1E84B3F90;
  v9 = dsCopy;
  v5 = dsCopy;
  v6 = -[SSVPlayActivityTable _revisionsIndexSetUsingPersisentIDGenerationBlock:count:](self, "_revisionsIndexSetUsingPersisentIDGenerationBlock:count:", v8, [v5 count]);

  return v6;
}

uint64_t __75__SSVPlayActivityTable_revisionsIndexSetForPlayActivityEventPersistentIDs___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectAtIndex:a2];
  v3 = [v2 unsignedLongLongValue];

  return v3;
}

+ (BOOL)_setupDatabase:(id)database
{
  databaseCopy = database;
  if (!databaseCopy)
  {
    v22 = 0;
    goto LABEL_33;
  }

  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  _eventsDatabaseTableName = [self _eventsDatabaseTableName];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CREATE TABLE IF NOT EXISTS %@ (%@ INTEGER PRIMARY KEY, %@ INTEGER, %@ INTEGER, %@ BLOB)", _eventsDatabaseTableName, @"pid", @"revision_id", @"store_account_id", @"event_data"];;
  _propertiesDatabaseTableName = [self _propertiesDatabaseTableName];
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CREATE TABLE IF NOT EXISTS %@ (%@ TEXT PRIMARY KEY, %@ TEXT)", _propertiesDatabaseTableName, @"key", @"value"];;
  v9 = [databaseCopy executeSQL:@"PRAGMA legacy_file_format = 0;"];
  *(v36 + 24) = v9;
  if ((v9 & 1) == 0)
  {
    goto LABEL_31;
  }

  v10 = [databaseCopy executeSQL:@"PRAGMA journal_mode=WAL;"];
  *(v36 + 24) = v10;
  if (!v10)
  {
    goto LABEL_31;
  }

  v11 = [databaseCopy executeSQL:v6];
  *(v36 + 24) = v11;
  if (!v11)
  {
    goto LABEL_31;
  }

  v12 = [databaseCopy executeSQL:v8];
  *(v36 + 24) = v12;
  if (!v12)
  {
    goto LABEL_31;
  }

  userVersion = [databaseCopy userVersion];
  if (!userVersion)
  {
    if ((v36[3] & 1) == 0)
    {
      goto LABEL_31;
    }

    userVersion = 2005;
LABEL_26:
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v24 = uUIDString;
    v25 = &stru_1F503F418;
    if (uUIDString)
    {
      v25 = uUIDString;
    }

    v29 = v25;

    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"INSERT OR IGNORE INTO %@ (%@, %@) VALUES (?, ?)", _propertiesDatabaseTableName, @"key", @"value"];;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __39__SSVPlayActivityTable__setupDatabase___block_invoke;
    v31[3] = &unk_1E84B3FB8;
    v27 = v29;
    v32 = v27;
    v33 = @"events_revision_version_token";
    v34 = &v35;
    [databaseCopy prepareStatementForSQL:v26 cache:0 usingBlock:v31];

    if (v36[3])
    {
      goto LABEL_29;
    }

    goto LABEL_31;
  }

  v14 = *(v36 + 24);
  if (userVersion < 1)
  {
    if (v36[3])
    {
LABEL_29:
      [databaseCopy setUserVersion:userVersion];
      v22 = 1;
      goto LABEL_32;
    }

LABEL_31:
    v22 = 0;
    goto LABEL_32;
  }

  v15 = 0;
  if (!*(v36 + 24) || userVersion > 0x7D4)
  {
LABEL_20:
    if ((v14 & 1) == 0)
    {
      goto LABEL_31;
    }

    if ((v15 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_26;
  }

  v15 = 0;
  v14 = 1;
  while (1)
  {
    if ((userVersion - 2000) > 4)
    {
      goto LABEL_18;
    }

    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DROP TABLE IF EXISTS %@", _propertiesDatabaseTableName];;
    v17 = [databaseCopy executeSQL:v16];
    *(v36 + 24) = v17;

    v18 = v36;
    if (*(v36 + 24) != 1)
    {
      break;
    }

    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DROP TABLE IF EXISTS %@", _eventsDatabaseTableName];;
    v20 = [databaseCopy executeSQL:v19];
    *(v36 + 24) = v20;

    v18 = v36;
    if ((v36[3] & 1) == 0)
    {
      goto LABEL_35;
    }

    v21 = [databaseCopy executeSQL:v6];
    v18 = v36;
    *(v36 + 24) = v21;
    if (!v21)
    {
      goto LABEL_36;
    }

    v14 = [databaseCopy executeSQL:v8];
    *(v36 + 24) = v14 & 1;
    if (v14)
    {
      userVersion = 2005;
    }

    v15 = 1;
LABEL_18:
    if (userVersion > 2004 || (v14 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  *(v36 + 24) = 0;
LABEL_35:
  *(v18 + 24) = 0;
LABEL_36:
  v22 = 0;
  *(v18 + 24) = 0;
LABEL_32:

  _Block_object_dispose(&v35, 8);
LABEL_33:

  return v22;
}

BOOL __39__SSVPlayActivityTable__setupDatabase___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = 1;
  v5 = 40;
  v6 = 1;
  do
  {
    v7 = v4;
    sqlite3_bind_text(a2, v6, [*(a1 + v5) UTF8String], objc_msgSend(*(a1 + v5), "length"), 0);
    v4 = 0;
    ++v6;
    v5 = 32;
  }

  while ((v7 & 1) != 0);
  result = [SSSQLiteDatabase statementDidFinishAfterStepping:a2];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (BOOL)_getPlayActivityEvents:(id *)events relevantRevisionsIndexSet:(id *)set withStartRevision:(unint64_t)revision endRevision:(unint64_t)endRevision storeAccountID:(unint64_t)d shouldFilterStoreAccountID:(BOOL)iD additionalRevisionsIndexSet:(id)indexSet ignoredRevisionsIndexSet:(id)self0 error:(id *)self1
{
  iDCopy = iD;
  indexSetCopy = indexSet;
  revisionsIndexSetCopy = revisionsIndexSet;
  v19 = revisionsIndexSetCopy;
  if (events | set)
  {
    revisionCopy = revision;
    dCopy = d;
    endRevisionCopy = endRevision;
    v31 = revisionsIndexSetCopy;
    v52 = 0;
    v53 = &v52;
    v54 = 0x3032000000;
    v55 = __Block_byref_object_copy__88;
    v56 = __Block_byref_object_dispose__88;
    v57 = 0;
    v20 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"SELECT "];
    v21 = v20;
    if (events)
    {
      v22 = 0;
      do
      {
        if ((v22 * 8) == 24)
        {
          v23 = &stru_1F503F418;
        }

        else
        {
          v23 = @",";
        }

        [v21 appendFormat:@"%@%@", off_1E84B4108[v22++], v23];
      }

      while ((v22 * 8) != 32);
    }

    else
    {
      [v20 appendFormat:@"%@", @"revision_id"];
    }

    _eventsDatabaseTableName = [objc_opt_class() _eventsDatabaseTableName];
    objc_msgSend(v21, "appendFormat:", @" FROM %@ WHERE ("), _eventsDatabaseTableName;
    if (iDCopy)
    {
      objc_msgSend(v21, "appendFormat:", @"(%@ == ?) AND ("), CFSTR("store_account_id");
    }

    [v21 appendFormat:@"%@ BETWEEN ? AND ?", @"revision_id"];
    v25 = [indexSetCopy count];
    if (v25)
    {
      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 3221225472;
      v50[2] = __204__SSVPlayActivityTable__getPlayActivityEvents_relevantRevisionsIndexSet_withStartRevision_endRevision_storeAccountID_shouldFilterStoreAccountID_additionalRevisionsIndexSet_ignoredRevisionsIndexSet_error___block_invoke;
      v50[3] = &unk_1E84B3FE0;
      v51 = v21;
      [indexSetCopy enumerateRangesUsingBlock:v50];
    }

    if (iDCopy)
    {
      [v21 appendString:@""]);
    }

    [v21 appendString:@" ORDER BY "]);
    if (iDCopy)
    {
      [v21 appendFormat:@"%@, %@ ASC;", @"store_account_id", @"revision_id"];
    }

    else
    {
      [v21 appendFormat:@"%@ ASC;", @"revision_id"];
    }

    v44 = 0;
    v45 = &v44;
    v46 = 0x3032000000;
    v47 = __Block_byref_object_copy__88;
    v48 = __Block_byref_object_dispose__88;
    v49 = 0;
    database = self->_database;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __204__SSVPlayActivityTable__getPlayActivityEvents_relevantRevisionsIndexSet_withStartRevision_endRevision_storeAccountID_shouldFilterStoreAccountID_additionalRevisionsIndexSet_ignoredRevisionsIndexSet_error___block_invoke_2;
    v33[3] = &unk_1E84B4030;
    v43 = iDCopy;
    v38 = dCopy;
    v39 = revisionCopy;
    v40 = endRevisionCopy;
    v34 = indexSetCopy;
    eventsCopy = events;
    v19 = v31;
    v35 = v31;
    v36 = &v52;
    setCopy = set;
    v37 = &v44;
    [(SSSQLiteDatabase *)database prepareStatementForSQL:v21 cache:v25 == 0 usingBlock:v33];
    if (error)
    {
      *error = 0;
    }

    if (events)
    {
      *events = v45[5];
    }

    if (set)
    {
      *set = v53[5];
    }

    _Block_object_dispose(&v44, 8);
    _Block_object_dispose(&v52, 8);
  }

  return 1;
}

uint64_t __204__SSVPlayActivityTable__getPlayActivityEvents_relevantRevisionsIndexSet_withStartRevision_endRevision_storeAccountID_shouldFilterStoreAccountID_additionalRevisionsIndexSet_ignoredRevisionsIndexSet_error___block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return [*(result + 32) appendFormat:@" OR %@ BETWEEN ? AND ?", @"revision_id"];
  }

  return result;
}

void __204__SSVPlayActivityTable__getPlayActivityEvents_relevantRevisionsIndexSet_withStartRevision_endRevision_storeAccountID_shouldFilterStoreAccountID_additionalRevisionsIndexSet_ignoredRevisionsIndexSet_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = &v28;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v5 = 1;
  v31 = 1;
  if (*(a1 + 104) == 1)
  {
    v31 = 2;
    sqlite3_bind_int64(a2, 1, *(a1 + 64));
    v4 = v29;
    v5 = *(v29 + 6);
  }

  *(v4 + 6) = v5 + 1;
  sqlite3_bind_int64(a2, v5, *(a1 + 72));
  v6 = *(v29 + 6);
  *(v29 + 6) = v6 + 1;
  sqlite3_bind_int64(a2, v6, *(a1 + 80));
  v7 = *(a1 + 32);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __204__SSVPlayActivityTable__getPlayActivityEvents_relevantRevisionsIndexSet_withStartRevision_endRevision_storeAccountID_shouldFilterStoreAccountID_additionalRevisionsIndexSet_ignoredRevisionsIndexSet_error___block_invoke_3;
  v27[3] = &unk_1E84B4008;
  v27[4] = &v28;
  v27[5] = a2;
  [v7 enumerateRangesUsingBlock:v27];
  while ([SSSQLiteDatabase statementHasRowAfterStepping:a2])
  {
    if (*(a1 + 88))
    {
      if (sqlite3_column_type(a2, 1) == 1)
      {
        v8 = sqlite3_column_int64(a2, 1);
        if ([*(a1 + 40) containsIndex:v8])
        {
          v9 = 0;
        }

        else
        {
          v9 = 1;
          if (*(a1 + 96) && v8)
          {
            v23 = *(*(*(a1 + 48) + 8) + 40);
            if (!v23)
            {
              v24 = objc_alloc_init(MEMORY[0x1E696AD50]);
              v25 = *(*(a1 + 48) + 8);
              v26 = *(v25 + 40);
              *(v25 + 40) = v24;

              v23 = *(*(*(a1 + 48) + 8) + 40);
            }

            [v23 addIndex:v8];
          }
        }
      }

      else
      {
        v9 = 1;
      }

      if (sqlite3_column_type(a2, 3) != 4)
      {
        v17 = 0;
        if (!v9)
        {
          goto LABEL_29;
        }

LABEL_23:
        if ([v17 length])
        {
          v18 = [[SSVPlayActivityEvent alloc] initWithDataRepresentation:v17];
          if (v18)
          {
            v19 = *(*(*(a1 + 56) + 8) + 40);
            if (!v19)
            {
              v20 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
              v21 = *(*(a1 + 56) + 8);
              v22 = *(v21 + 40);
              *(v21 + 40) = v20;

              v19 = *(*(*(a1 + 56) + 8) + 40);
            }

            [v19 addObject:v18];
          }
        }

        goto LABEL_29;
      }

      v15 = sqlite3_column_blob(a2, 3);
      v16 = sqlite3_column_bytes(a2, 3);
      v17 = 0;
      if (v16 >= 1 && v15)
      {
        v17 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v15 length:v16];
      }

      if (v9)
      {
        goto LABEL_23;
      }

LABEL_29:
    }

    else if (sqlite3_column_type(a2, 0) == 1)
    {
      v10 = sqlite3_column_int64(a2, 0);
      if (v10)
      {
        if (([*(a1 + 40) containsIndex:v10] & 1) == 0)
        {
          v11 = *(*(*(a1 + 48) + 8) + 40);
          if (!v11)
          {
            v12 = objc_alloc_init(MEMORY[0x1E696AD50]);
            v13 = *(*(a1 + 48) + 8);
            v14 = *(v13 + 40);
            *(v13 + 40) = v12;

            v11 = *(*(*(a1 + 48) + 8) + 40);
          }

          [v11 addIndex:v10];
        }
      }
    }
  }

  _Block_object_dispose(&v28, 8);
}

uint64_t __204__SSVPlayActivityTable__getPlayActivityEvents_relevantRevisionsIndexSet_withStartRevision_endRevision_storeAccountID_shouldFilterStoreAccountID_additionalRevisionsIndexSet_ignoredRevisionsIndexSet_error___block_invoke_3(uint64_t result, sqlite3_int64 a2, uint64_t a3)
{
  if (a3)
  {
    v5 = result;
    v6 = *(result + 40);
    v7 = *(*(v5 + 32) + 8);
    v8 = *(v7 + 24);
    *(v7 + 24) = v8 + 1;
    sqlite3_bind_int64(v6, v8, a2);
    v9 = *(v5 + 40);
    v10 = *(*(v5 + 32) + 8);
    v11 = *(v10 + 24);
    *(v10 + 24) = v11 + 1;

    return sqlite3_bind_int64(v9, v11, a3 + a2 - 1);
  }

  return result;
}

- (id)_revisionsIndexSetUsingPersisentIDGenerationBlock:(id)block count:(unint64_t)count
{
  blockCopy = block;
  v7 = 0;
  if (blockCopy && count)
  {
    _eventsDatabaseTableName = [objc_opt_class() _eventsDatabaseTableName];
    v9 = objc_msgSend(objc_alloc(MEMORY[0x1E696AD60]), "initWithFormat:", @"SELECT DISTINCT %@ FROM %@ WHERE %@ IN ("), CFSTR("revision_id"), _eventsDatabaseTableName, CFSTR("pid");
    v10 = 0;
    do
    {
      if (v10 >= count - 1)
      {
        v11 = &stru_1F503F418;
      }

      else
      {
        v11 = @",";
      }

      [v9 appendFormat:@"?%@", v11];
      ++v10;
    }

    while (count != v10);
    [v9 appendString:@";"]);
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__88;
    v22 = __Block_byref_object_dispose__88;
    v23 = 0;
    database = self->_database;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __80__SSVPlayActivityTable__revisionsIndexSetUsingPersisentIDGenerationBlock_count___block_invoke;
    v14[3] = &unk_1E84B4058;
    countCopy = count;
    v15 = blockCopy;
    v16 = &v18;
    [(SSSQLiteDatabase *)database prepareStatementForSQL:v9 cache:0 usingBlock:v14];
    v7 = v19[5];

    _Block_object_dispose(&v18, 8);
  }

  return v7;
}

BOOL __80__SSVPlayActivityTable__revisionsIndexSetUsingPersisentIDGenerationBlock_count___block_invoke(void *a1, sqlite3_stmt *a2)
{
  if (a1[6])
  {
    v4 = 0;
    do
    {
      v5 = v4 + 1;
      v6 = (*(a1[4] + 16))();
      sqlite3_bind_int64(a2, v5, v6);
      v4 = v5;
    }

    while (v5 < a1[6]);
  }

  for (result = [SSSQLiteDatabase statementHasRowAfterStepping:a2]; result; result = [SSSQLiteDatabase statementHasRowAfterStepping:a2])
  {
    if (sqlite3_column_type(a2, 0) == 1)
    {
      v8 = sqlite3_column_int64(a2, 0);
      if (v8)
      {
        v9 = v8;
        v10 = *(*(a1[5] + 8) + 40);
        if (!v10)
        {
          v11 = objc_alloc_init(MEMORY[0x1E696AD50]);
          v12 = *(a1[5] + 8);
          v13 = *(v12 + 40);
          *(v12 + 40) = v11;

          v10 = *(*(a1[5] + 8) + 40);
        }

        [v10 addIndex:v9];
      }
    }
  }

  return result;
}

- (BOOL)_setValue:(id)value forDatabasePropertyKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  if (keyCopy)
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 0;
    _propertiesDatabaseTableName = [objc_opt_class() _propertiesDatabaseTableName];
    if (valueCopy)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"INSERT OR REPLACE INTO %@ (%@, %@) VALUES (?, ?)", _propertiesDatabaseTableName, @"key", @"value"];;
      database = self->_database;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __57__SSVPlayActivityTable__setValue_forDatabasePropertyKey___block_invoke;
      v22[3] = &unk_1E84B4080;
      v23 = valueCopy;
      v27 = &v28;
      v24 = keyCopy;
      selfCopy = self;
      v11 = v9;
      v26 = v11;
      [(SSSQLiteDatabase *)database prepareStatementForSQL:v11 cache:1 usingBlock:v22];
      v12 = &v23;

      v13 = v24;
    }

    else
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DELETE FROM %@ WHERE %@ = ?", _propertiesDatabaseTableName, @"key"];;
      v16 = self->_database;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __57__SSVPlayActivityTable__setValue_forDatabasePropertyKey___block_invoke_148;
      v18[3] = &unk_1E84B40A8;
      v21 = &v28;
      v19[0] = keyCopy;
      v19[1] = self;
      v11 = v15;
      v20 = v11;
      [(SSSQLiteDatabase *)v16 prepareStatementForSQL:v11 cache:1 usingBlock:v18];
      v12 = v19;
      v13 = v20;
    }

    v14 = *(v29 + 24);
    _Block_object_dispose(&v28, 8);
  }

  else
  {
    v14 = 1;
  }

  return v14 & 1;
}

void __57__SSVPlayActivityTable__setValue_forDatabasePropertyKey___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = 1;
  v5 = 40;
  v6 = 1;
  do
  {
    v7 = v6;
    sqlite3_bind_text(a2, v4, [*(a1 + v5) UTF8String], objc_msgSend(*(a1 + v5), "length"), 0);
    v6 = 0;
    ++v4;
    v5 = 32;
  }

  while ((v7 & 1) != 0);
  *(*(*(a1 + 64) + 8) + 24) = [SSSQLiteDatabase statementDidFinishAfterStepping:a2];
  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    v8 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v8)
    {
      v8 = +[SSLogConfig sharedConfig];
    }

    v9 = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v10 = v9 | 2;
    }

    else
    {
      v10 = v9;
    }

    v11 = [v8 OSLogObject];
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v10 &= 2u;
    }

    if (v10)
    {
      v12 = objc_opt_class();
      v13 = *(a1 + 56);
      *v23 = 138412546;
      *&v23[4] = v12;
      *&v23[12] = 2112;
      *&v23[14] = v13;
      v14 = v12;
      LODWORD(v22) = 22;
      v15 = _os_log_send_and_compose_impl();

      if (!v15)
      {
LABEL_15:

        return;
      }

      v11 = [MEMORY[0x1E696AEC0] stringWithCString:v15 encoding:{4, v23, v22, *v23, *&v23[16], v24}];
      free(v15);
      SSFileLog(v8, @"%@", v16, v17, v18, v19, v20, v21, v11);
    }

    goto LABEL_15;
  }
}

void __57__SSVPlayActivityTable__setValue_forDatabasePropertyKey___block_invoke_148(uint64_t a1, sqlite3_stmt *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  sqlite3_bind_text(a2, 1, [*(a1 + 32) UTF8String], objc_msgSend(*(a1 + 32), "length"), 0);
  *(*(*(a1 + 56) + 8) + 24) = [SSSQLiteDatabase statementDidFinishAfterStepping:a2];
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    v4 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v4)
    {
      v4 = +[SSLogConfig sharedConfig];
    }

    v5 = [v4 shouldLog];
    if ([v4 shouldLogToDisk])
    {
      v6 = v5 | 2;
    }

    else
    {
      v6 = v5;
    }

    v7 = [v4 OSLogObject];
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v6 &= 2u;
    }

    if (v6)
    {
      v8 = objc_opt_class();
      v9 = *(a1 + 48);
      *v19 = 138412546;
      *&v19[4] = v8;
      *&v19[12] = 2112;
      *&v19[14] = v9;
      v10 = v8;
      LODWORD(v18) = 22;
      v11 = _os_log_send_and_compose_impl();

      if (!v11)
      {
LABEL_13:

        return;
      }

      v7 = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:{4, v19, v18, *v19, *&v19[16], v20}];
      free(v11);
      SSFileLog(v4, @"%@", v12, v13, v14, v15, v16, v17, v7);
    }

    goto LABEL_13;
  }
}

- (id)_valueForDatabasePropertyKey:(id)key
{
  keyCopy = key;
  if (keyCopy)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__88;
    v17 = __Block_byref_object_dispose__88;
    v18 = 0;
    _propertiesDatabaseTableName = [objc_opt_class() _propertiesDatabaseTableName];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT %@ FROM %@ WHERE %@ = ?", @"value", _propertiesDatabaseTableName, @"key"];;
    database = self->_database;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __53__SSVPlayActivityTable__valueForDatabasePropertyKey___block_invoke;
    v10[3] = &unk_1E84B40D0;
    v11 = keyCopy;
    v12 = &v13;
    [(SSSQLiteDatabase *)database prepareStatementForSQL:v6 cache:1 usingBlock:v10];
    v8 = v14[5];

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __53__SSVPlayActivityTable__valueForDatabasePropertyKey___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_text(a2, 1, [*(a1 + 32) UTF8String], objc_msgSend(*(a1 + 32), "length"), 0);
  if ([SSSQLiteDatabase statementHasRowAfterStepping:a2]&& sqlite3_column_type(a2, 0) == 3)
  {
    v4 = sqlite3_column_text(a2, 0);
    v5 = v4 ? [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v4] : 0;
    v6 = v5;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v5);
    if (v4)
    {
    }
  }
}

@end