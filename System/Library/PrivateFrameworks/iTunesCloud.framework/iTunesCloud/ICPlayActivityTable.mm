@interface ICPlayActivityTable
+ (BOOL)_setupDatabase:(id)database;
+ (id)_defaultDatabasePath;
+ (void)_migrateDatabaseFiles;
- (BOOL)_removeDatabaseReturningError:(id *)error;
- (BOOL)_setValue:(id)value forDatabasePropertyKey:(id)key;
- (BOOL)getPlayActivityEvents:(id *)events storeAccountID:(int64_t)d limit:(unint64_t)limit returningError:(id *)error;
- (BOOL)getStoreAccounts:(id *)accounts returningError:(id *)error;
- (BOOL)hasPendingPlayActivityEvents:(BOOL *)events returningError:(id *)error;
- (BOOL)insertPlayActivityEvent:(id)event returningError:(id *)error;
- (BOOL)removePlayActivityEvents:(id)events returningError:(id *)error;
- (ICPlayActivityTable)initWithDatabasePath:(id)path;
- (id)_valueForDatabasePropertyKey:(id)key;
- (id)eventsRevisionVersionToken;
- (void)performTransactionWithBlock:(id)block;
@end

@implementation ICPlayActivityTable

- (BOOL)hasPendingPlayActivityEvents:(BOOL *)events returningError:(id *)error
{
  dispatch_assert_queue_V2(self->_serialAccessQueue);
  if (!events)
  {
    return 1;
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__16388;
  v21 = __Block_byref_object_dispose__16389;
  v22 = 0;
  _eventsDatabaseTableName = [objc_opt_class() _eventsDatabaseTableName];
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT EXISTS (SELECT 1 FROM %@)", _eventsDatabaseTableName];;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 1;
  databaseConnection = self->_databaseConnection;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __67__ICPlayActivityTable_hasPendingPlayActivityEvents_returningError___block_invoke;
  v12[3] = &unk_1E7BF5C58;
  v12[4] = &v13;
  v12[5] = &v17;
  [(ICSQLiteConnection *)databaseConnection executeQuery:v8 withResults:v12];
  if (error)
  {
    *error = v18[5];
  }

  *events = *(v14 + 24);
  v10 = v18[5] == 0;
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v17, 8);
  return v10;
}

void __67__ICPlayActivityTable_hasPendingPlayActivityEvents_returningError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = [a2 firstInt64Value] > 0;
  }
}

- (BOOL)getStoreAccounts:(id *)accounts returningError:(id *)error
{
  dispatch_assert_queue_V2(self->_serialAccessQueue);
  if (!accounts)
  {
    return 1;
  }

  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__16388;
  v29 = __Block_byref_object_dispose__16389;
  v30 = 0;
  _eventsDatabaseTableName = [objc_opt_class() _eventsDatabaseTableName];
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT DISTINCT %@ FROM %@", @"store_account_id", _eventsDatabaseTableName];;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 1;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__16388;
  v19 = __Block_byref_object_dispose__16389;
  v20 = 0;
  databaseConnection = self->_databaseConnection;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __55__ICPlayActivityTable_getStoreAccounts_returningError___block_invoke;
  v14[3] = &unk_1E7BF9168;
  v14[4] = &v21;
  v14[5] = &v25;
  v14[6] = &v15;
  [(ICSQLiteConnection *)databaseConnection executeQuery:v8 withResults:v14];
  if ((v22[3] & 1) == 0 && !v26[5])
  {
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:0 userInfo:0];
    v11 = v26[5];
    v26[5] = v10;
  }

  if (error)
  {
    *error = v26[5];
  }

  *accounts = v16[5];
  v12 = v26[5] == 0;
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);

  return v12;
}

void __55__ICPlayActivityTable_getStoreAccounts_returningError___block_invoke(void *a1, void *a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    *(*(a1[4] + 8) + 24) = 0;
    objc_storeStrong((*(a1[5] + 8) + 40), a3);
  }

  else
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __55__ICPlayActivityTable_getStoreAccounts_returningError___block_invoke_2;
    v7[3] = &unk_1E7BF5C08;
    v8 = *(a1 + 2);
    v9 = a1[6];
    [a2 enumerateRowsUsingBlock:v7];
  }
}

void __55__ICPlayActivityTable_getStoreAccounts_returningError___block_invoke_2(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v13 = a2;
  v7 = a3;
  if (v7)
  {
    *(*(a1[4] + 8) + 24) = 0;
    objc_storeStrong((*(a1[5] + 8) + 40), a3);
    *a4 = 1;
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLongLong:{objc_msgSend(v13, "int64ForColumnName:", @"store_account_id"}];
    if (v8)
    {
      v9 = *(*(a1[6] + 8) + 40);
      if (!v9)
      {
        v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
        v11 = *(a1[6] + 8);
        v12 = *(v11 + 40);
        *(v11 + 40) = v10;

        v9 = *(*(a1[6] + 8) + 40);
      }

      [v9 addObject:v8];
    }
  }
}

- (id)_valueForDatabasePropertyKey:(id)key
{
  keyCopy = key;
  dispatch_assert_queue_V2(self->_serialAccessQueue);
  if (!keyCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ICPlayActivityTable.m" lineNumber:508 description:@"key cannot be nil"];
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__16388;
  v20 = __Block_byref_object_dispose__16389;
  v21 = 0;
  _propertiesDatabaseTableName = [objc_opt_class() _propertiesDatabaseTableName];
  keyCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT %@ FROM %@ WHERE %@ = '%@'", @"value", _propertiesDatabaseTableName, @"key", keyCopy];;
  databaseConnection = self->_databaseConnection;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __52__ICPlayActivityTable__valueForDatabasePropertyKey___block_invoke;
  v13[3] = &unk_1E7BF5C30;
  v9 = keyCopy;
  v14 = v9;
  v15 = &v16;
  [(ICSQLiteConnection *)databaseConnection executeQuery:keyCopy withResults:v13];
  v10 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v10;
}

void __52__ICPlayActivityTable__valueForDatabasePropertyKey___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v11 = 138543618;
      v12 = v7;
      v13 = 2114;
      v14 = v5;
      _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_ERROR, "Failed to get database property '%{public}@'. err=%{public}@", &v11, 0x16u);
    }
  }

  else
  {
    v8 = [a2 firstStringValue];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }
}

- (BOOL)_setValue:(id)value forDatabasePropertyKey:(id)key
{
  v31 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  keyCopy = key;
  dispatch_assert_queue_V2(self->_serialAccessQueue);
  if (!keyCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ICPlayActivityTable.m" lineNumber:485 description:@"key cannot be nil"];
  }

  _propertiesDatabaseTableName = [objc_opt_class() _propertiesDatabaseTableName];
  if (valueCopy)
  {
    valueCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"INSERT OR REPLACE INTO %@ (%@, %@) VALUES ('%@', '%@')", _propertiesDatabaseTableName, @"key", @"value", keyCopy, valueCopy];;
    databaseConnection = self->_databaseConnection;
    v24 = 0;
    v12 = [(ICSQLiteConnection *)databaseConnection executeStatement:valueCopy error:&v24];
    v13 = v24;
    if (!v12)
    {
      v14 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v26 = keyCopy;
        v27 = 2114;
        v28 = valueCopy;
        v29 = 2114;
        v30 = v13;
        v15 = "Failed to set database property ('%{public}@' = '%{public}@'). err=%{public}@";
        v16 = v14;
        v17 = 32;
LABEL_11:
        _os_log_impl(&dword_1B4491000, v16, OS_LOG_TYPE_ERROR, v15, buf, v17);
        goto LABEL_12;
      }

      goto LABEL_12;
    }
  }

  else
  {
    valueCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"DELETE FROM %@ WHERE %@ = '%@'", _propertiesDatabaseTableName, @"key", keyCopy];;
    v18 = self->_databaseConnection;
    v23 = 0;
    v19 = [(ICSQLiteConnection *)v18 executeStatement:valueCopy error:&v23];
    v13 = v23;
    if (!v19)
    {
      v14 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v26 = keyCopy;
        v27 = 2114;
        v28 = v13;
        v15 = "Failed to delete database property '%{public}@'. err=%{public}@";
        v16 = v14;
        v17 = 22;
        goto LABEL_11;
      }

LABEL_12:

      v20 = 0;
      goto LABEL_13;
    }
  }

  v20 = 1;
LABEL_13:

  return v20;
}

- (BOOL)removePlayActivityEvents:(id)events returningError:(id *)error
{
  eventsCopy = events;
  dispatch_assert_queue_V2(self->_serialAccessQueue);
  _eventsDatabaseTableName = [objc_opt_class() _eventsDatabaseTableName];
  v8 = objc_msgSend(objc_alloc(MEMORY[0x1E696AD60]), "initWithFormat:", @"DELETE FROM %@ WHERE %@ IN ("), _eventsDatabaseTableName, CFSTR("pid");
  if ([eventsCopy count])
  {
    v9 = 0;
    do
    {
      if ([eventsCopy count] - 1 <= v9)
      {
        v10 = &stru_1F2C4A680;
      }

      else
      {
        v10 = @",";
      }

      [v8 appendFormat:@"?%@", v10];
      ++v9;
    }

    while ([eventsCopy count] > v9);
  }

  [v8 appendString:@";"]);
  databaseConnection = self->_databaseConnection;
  v20 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __63__ICPlayActivityTable_removePlayActivityEvents_returningError___block_invoke;
  v18[3] = &unk_1E7BF8CD8;
  v12 = eventsCopy;
  v19 = v12;
  v13 = [(ICSQLiteConnection *)databaseConnection executeStatement:v8 error:&v20 bindings:v18];
  v14 = v20;
  if (!v13)
  {
    v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:0 userInfo:0];

    v14 = v15;
  }

  if (error)
  {
    v16 = v14;
    *error = v14;
  }

  return v13;
}

void __63__ICPlayActivityTable_removePlayActivityEvents_returningError___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([*(a1 + 32) count])
  {
    v3 = 0;
    do
    {
      v4 = [*(a1 + 32) objectAtIndexedSubscript:v3];
      [v5 bindInt64:objc_msgSend(v4 atPosition:{"persistentID"), ++v3}];
    }

    while ([*(a1 + 32) count] > v3);
  }
}

- (BOOL)getPlayActivityEvents:(id *)events storeAccountID:(int64_t)d limit:(unint64_t)limit returningError:(id *)error
{
  if (!events)
  {
    return 1;
  }

  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__16388;
  v35 = __Block_byref_object_dispose__16389;
  v36 = 0;
  v10 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"SELECT "];
  for (i = 0; i != 4; ++i)
  {
    if (i == 3)
    {
      v12 = &stru_1F2C4A680;
    }

    else
    {
      v12 = @",";
    }

    [v10 appendFormat:@"%@%@", off_1E7BF5C78[i], v12];
  }

  _eventsDatabaseTableName = [objc_opt_class() _eventsDatabaseTableName];
  [v10 appendFormat:@" FROM %@", _eventsDatabaseTableName];
  if (d)
  {
    [v10 appendFormat:@" WHERE (%@ == %llu)", @"store_account_id", d];
  }

  [v10 appendString:@" ORDER BY "];
  if (d)
  {
    [v10 appendFormat:@"%@, %@ ASC", @"store_account_id", @"timestamp"];
  }

  else
  {
    [v10 appendFormat:@"%@ ASC", @"timestamp"];
  }

  if (limit)
  {
    [v10 appendFormat:@" LIMIT %lu;", limit];
  }

  else
  {
    [v10 appendFormat:@";"];
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 1;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__16388;
  v25 = __Block_byref_object_dispose__16389;
  v26 = 0;
  databaseConnection = self->_databaseConnection;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __81__ICPlayActivityTable_getPlayActivityEvents_storeAccountID_limit_returningError___block_invoke;
  v20[3] = &unk_1E7BF9168;
  v20[4] = &v27;
  v20[5] = &v31;
  v20[6] = &v21;
  [(ICSQLiteConnection *)databaseConnection executeQuery:v10 withResults:v20];
  if ((v28[3] & 1) == 0 && !v32[5])
  {
    v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:0 userInfo:0];
    v17 = v32[5];
    v32[5] = v16;
  }

  if (error)
  {
    *error = v32[5];
  }

  *events = v22[5];
  v14 = v32[5] == 0;
  _Block_object_dispose(&v21, 8);

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);

  return v14;
}

void __81__ICPlayActivityTable_getPlayActivityEvents_storeAccountID_limit_returningError___block_invoke(void *a1, void *a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    *(*(a1[4] + 8) + 24) = 0;
    objc_storeStrong((*(a1[5] + 8) + 40), a3);
  }

  else
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __81__ICPlayActivityTable_getPlayActivityEvents_storeAccountID_limit_returningError___block_invoke_2;
    v7[3] = &unk_1E7BF5C08;
    v8 = *(a1 + 2);
    v9 = a1[6];
    [a2 enumerateRowsUsingBlock:v7];
  }
}

void __81__ICPlayActivityTable_getPlayActivityEvents_storeAccountID_limit_returningError___block_invoke_2(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v14 = a3;
  if (v14)
  {
    *(*(a1[4] + 8) + 24) = 0;
    objc_storeStrong((*(a1[5] + 8) + 40), a3);
    *a4 = 1;
  }

  else
  {
    v8 = [a2 dataForColumnIndex:3];
    if ([v8 length])
    {
      v9 = [[ICPlayActivityEvent alloc] initWithDataRepresentation:v8];
      if (v9)
      {
        v10 = *(*(a1[6] + 8) + 40);
        if (!v10)
        {
          v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
          v12 = *(a1[6] + 8);
          v13 = *(v12 + 40);
          *(v12 + 40) = v11;

          v10 = *(*(a1[6] + 8) + 40);
        }

        [v10 addObject:v9];
      }
    }
  }
}

- (void)performTransactionWithBlock:(id)block
{
  blockCopy = block;
  v5 = blockCopy;
  if (blockCopy)
  {
    serialAccessQueue = self->_serialAccessQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __51__ICPlayActivityTable_performTransactionWithBlock___block_invoke;
    v7[3] = &unk_1E7BF9EC8;
    v7[4] = self;
    v8 = blockCopy;
    dispatch_sync(serialAccessQueue, v7);
  }
}

void __51__ICPlayActivityTable_performTransactionWithBlock___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __51__ICPlayActivityTable_performTransactionWithBlock___block_invoke_2;
  v2[3] = &unk_1E7BF5BE0;
  v3 = *(a1 + 40);
  [v1 performTransaction:v2];
}

- (BOOL)insertPlayActivityEvent:(id)event returningError:(id *)error
{
  eventCopy = event;
  dispatch_assert_queue_V2(self->_serialAccessQueue);
  databaseConnection = self->_databaseConnection;
  v19 = 0;
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __62__ICPlayActivityTable_insertPlayActivityEvent_returningError___block_invoke;
  v17 = &unk_1E7BF8CD8;
  v8 = eventCopy;
  v18 = v8;
  v9 = [(ICSQLiteConnection *)databaseConnection executeStatement:@"INSERT OR REPLACE INTO events (pid error:timestamp bindings:store_account_id, event_data) VALUES (?, ?, ?, ?)", &v19, &v14];
  v10 = v19;
  v11 = v10;
  if (!v9 && !v10)
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:0 userInfo:{0, v14, v15, v16, v17}];
  }

  if (error)
  {
    v12 = v11;
    *error = v11;
  }

  return v9;
}

void __62__ICPlayActivityTable_insertPlayActivityEvent_returningError___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindInt64:objc_msgSend(v3 atPosition:{"persistentID"), 1}];
  v5 = [*(a1 + 32) eventDate];
  [v5 timeIntervalSince1970];
  [v4 bindDouble:2 atPosition:?];

  [v4 bindInt64:objc_msgSend(*(a1 + 32) atPosition:{"storeAccountID"), 3}];
  v6 = [*(a1 + 32) dataRepresentation];
  [v4 bindData:v6 atPosition:4];
}

- (id)eventsRevisionVersionToken
{
  v2 = [(ICPlayActivityTable *)self _valueForDatabasePropertyKey:@"events_revision_version_token"];
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

  return v4;
}

- (BOOL)_removeDatabaseReturningError:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = [(NSString *)self->_databasePath copy];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  stringByDeletingLastPathComponent = [v3 stringByDeletingLastPathComponent];
  v20 = v3;
  lastPathComponent = [v3 lastPathComponent];
  v21 = defaultManager;
  [defaultManager contentsOfDirectoryAtPath:stringByDeletingLastPathComponent error:0];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = v26 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    LOBYTE(v10) = 0;
    v11 = 0;
    v12 = *v24;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        if ([v14 hasPrefix:lastPathComponent])
        {
          v15 = [stringByDeletingLastPathComponent stringByAppendingPathComponent:v14];
          v22 = v11;
          v10 = [v21 removeItemAtPath:v15 error:&v22];
          v16 = v22;

          if (!v10)
          {
            v11 = v16;
            goto LABEL_14;
          }

          LOBYTE(v10) = 1;
          v11 = v16;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
    v11 = 0;
  }

LABEL_14:

  if (error)
  {
    v17 = v11;
    *error = v11;
  }

  return v10 & 1;
}

- (ICPlayActivityTable)initWithDatabasePath:(id)path
{
  v38 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v5 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v34 = 2114;
    v35 = pathCopy;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ -- Opening database at path %{public}@", buf, 0x16u);
  }

  [objc_opt_class() _migrateDatabaseFiles];
  v6 = dispatch_queue_create("com.apple.itunescloudd.playactivitytable", 0);
  serialAccessQueue = self->_serialAccessQueue;
  self->_serialAccessQueue = v6;

  if (pathCopy)
  {
    _defaultDatabasePath = [pathCopy copy];
  }

  else
  {
    _defaultDatabasePath = [objc_opt_class() _defaultDatabasePath];
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  stringByDeletingLastPathComponent = [_defaultDatabasePath stringByDeletingLastPathComponent];
  v31 = 0;
  v11 = [defaultManager createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v31];
  v12 = v31;

  if (v11)
  {
    v13 = [[ICSQLiteConnectionOptions alloc] initWithDatabasePath:_defaultDatabasePath];
    v14 = [[ICSQLiteConnection alloc] initWithOptions:v13];
    v15 = objc_opt_class();
    if (([(ICPlayActivityTable *)v15 _setupDatabase:v14]& 1) != 0)
    {
      v16 = v14;
      v17 = v12;
    }

    else
    {
      v23 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        selfCopy = v15;
        v34 = 2112;
        v35 = _defaultDatabasePath;
        v36 = 2112;
        v37 = v12;
        _os_log_impl(&dword_1B4491000, v23, OS_LOG_TYPE_ERROR, "%{public}@ -- Error creating database, removing if possible...: %@ -- %@", buf, 0x20u);
      }

      [(ICSQLiteConnection *)v14 close];
      v30 = v12;
      v24 = [(ICPlayActivityTable *)self _removeDatabaseReturningError:&v30];
      v17 = v30;

      v25 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
      if (!v24)
      {
        if (v26)
        {
          *buf = 138543874;
          selfCopy = v15;
          v34 = 2112;
          v35 = _defaultDatabasePath;
          v36 = 2112;
          v37 = v17;
          _os_log_impl(&dword_1B4491000, v25, OS_LOG_TYPE_ERROR, "%{public}@ -- Error removing database: %@ -- %@", buf, 0x20u);
        }

        selfCopy2 = 0;
        v16 = v14;
        goto LABEL_28;
      }

      if (v26)
      {
        *buf = 138543874;
        selfCopy = v15;
        v34 = 2112;
        v35 = _defaultDatabasePath;
        v36 = 2112;
        v37 = v17;
        _os_log_impl(&dword_1B4491000, v25, OS_LOG_TYPE_ERROR, "%{public}@ -- Removing database successful, attempting to recreate...: %@ -- %@", buf, 0x20u);
      }

      v16 = [[ICSQLiteConnection alloc] initWithOptions:v13];
      if (!v16)
      {
        selfCopy2 = 0;
        goto LABEL_29;
      }

      if (([(ICPlayActivityTable *)v15 _setupDatabase:v16]& 1) == 0)
      {
        v27 = os_log_create("com.apple.amp.iTunesCloud", "Default");
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          selfCopy = v15;
          v34 = 2112;
          v35 = _defaultDatabasePath;
          _os_log_impl(&dword_1B4491000, v27, OS_LOG_TYPE_ERROR, "%{public}@ -- Error creating database for a second time, bailing out: %@", buf, 0x16u);
        }

        selfCopy2 = 0;
        goto LABEL_28;
      }
    }

    v29.receiver = self;
    v29.super_class = ICPlayActivityTable;
    v18 = [(ICPlayActivityTable *)&v29 init];
    p_isa = &v18->super.isa;
    if (v18)
    {
      objc_storeStrong(&v18->_databaseConnection, v16);
      objc_storeStrong(p_isa + 2, _defaultDatabasePath);
    }

    self = p_isa;
    selfCopy2 = self;
LABEL_28:

    goto LABEL_29;
  }

  v13 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(&v13->super, OS_LOG_TYPE_ERROR))
  {
    v21 = objc_opt_class();
    *buf = 138543874;
    selfCopy = v21;
    v34 = 2112;
    v35 = _defaultDatabasePath;
    v36 = 2112;
    v37 = v12;
    v22 = v21;
    _os_log_impl(&dword_1B4491000, &v13->super, OS_LOG_TYPE_ERROR, "%{public}@ -- Error creating directory: %@ -- %@", buf, 0x20u);
  }

  selfCopy2 = 0;
  v17 = v12;
LABEL_29:

  return selfCopy2;
}

+ (BOOL)_setupDatabase:(id)database
{
  v62 = *MEMORY[0x1E69E9840];
  databaseCopy = database;
  if (databaseCopy)
  {
    _eventsDatabaseTableName = [self _eventsDatabaseTableName];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CREATE TABLE IF NOT EXISTS %@ (%@ INTEGER PRIMARY KEY, %@ REAL, %@ INTEGER, %@ BLOB)", _eventsDatabaseTableName, @"pid", @"timestamp", @"store_account_id", @"event_data"];;
    _propertiesDatabaseTableName = [self _propertiesDatabaseTableName];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CREATE TABLE IF NOT EXISTS %@ (%@ TEXT PRIMARY KEY, %@ TEXT)", _propertiesDatabaseTableName, @"key", @"value"];;
    v57 = 0;
    v9 = [databaseCopy executeStatement:@"PRAGMA legacy_file_format = 0;" error:&v57];
    v10 = v57;
    v11 = v10;
    if (v9)
    {
      v56 = v10;
      v12 = [databaseCopy executeStatement:@"PRAGMA journal_mode=WAL;" error:&v56];
      v13 = v56;

      if ((v12 & 1) == 0)
      {
        v27 = os_log_create("com.apple.amp.iTunesCloud", "Default");
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
LABEL_26:
          v26 = 0;
          v11 = v13;
          goto LABEL_27;
        }

        *buf = 138412546;
        v59 = @"PRAGMA journal_mode=WAL;";
        v60 = 2114;
        v61 = v13;
        v31 = "Failed to execute database statment: (%@). err=%{public}@";
        goto LABEL_24;
      }

      v55 = v13;
      v14 = [databaseCopy executeStatement:v6 error:&v55];
      v11 = v55;

      if (v14)
      {
        v54 = v11;
        v15 = [databaseCopy executeStatement:v8 error:&v54];
        v13 = v54;

        if (v15)
        {
          userVersion = [databaseCopy userVersion];
          integerValue = [userVersion integerValue];

          if (!integerValue)
          {
            integerValue = 2006;
            goto LABEL_34;
          }

          if (integerValue > 0x7D5)
          {
            v46 = v6;
            goto LABEL_39;
          }

          v47 = _eventsDatabaseTableName;
          v18 = v8;
          v19 = v6;
          v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DROP TABLE IF EXISTS %@", _propertiesDatabaseTableName];;
          v53 = v13;
          v21 = [databaseCopy executeStatement:v20 error:&v53];
          v22 = v53;

          if (v21)
          {
            v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DROP TABLE IF EXISTS %@", v47];;
            v52 = v22;
            v24 = [databaseCopy executeStatement:v23 error:&v52];
            v13 = v52;

            if (v24)
            {
              v6 = v19;
              if ([databaseCopy executeStatement:v19 error:0])
              {
                v8 = v18;
                v25 = [databaseCopy executeStatement:v18 error:0];
                if (v25)
                {
                  integerValue = 2006;
                }

                _eventsDatabaseTableName = v47;
                if ((v25 & 1) == 0)
                {
                  goto LABEL_55;
                }

LABEL_34:
                v46 = v6;
                uUID = [MEMORY[0x1E696AFB0] UUID];
                uUIDString = [uUID UUIDString];
                v37 = uUIDString;
                v38 = &stru_1F2C4A680;
                if (uUIDString)
                {
                  v38 = uUIDString;
                }

                v48 = v38;

                v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"INSERT OR IGNORE INTO %@ (%@, %@) VALUES ('%@', '%@')", _propertiesDatabaseTableName, @"key", @"value", @"events_revision_version_token", v48];;
                v51 = v13;
                v40 = [databaseCopy executeStatement:v39 error:&v51];
                v11 = v51;

                if (v40)
                {
                  v13 = v11;
LABEL_39:
                  v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CREATE INDEX IF NOT EXISTS StoreAccountID ON %@ (%@ ASC)", _eventsDatabaseTableName, @"store_account_id"];;
                  v50 = v13;
                  v41 = [databaseCopy executeStatement:v27 error:&v50];
                  v11 = v50;

                  if (v41)
                  {
                    v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CREATE INDEX IF NOT EXISTS Timestamp ON %@ (%@ ASC)", _eventsDatabaseTableName, @"timestamp"];;

                    v49 = v11;
                    v43 = [databaseCopy executeStatement:v42 error:&v49];
                    v44 = v49;

                    if (v43)
                    {
                      v45 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue];
                      [databaseCopy setUserVersion:v45];
                      v26 = 1;
                    }

                    else
                    {
                      v45 = _ICLogCategoryDefault();
                      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412546;
                        v59 = @"CREATE INDEX IF NOT EXISTS Timestamp ON...;";
                        v60 = 2114;
                        v61 = v44;
                        _os_log_impl(&dword_1B4491000, v45, OS_LOG_TYPE_ERROR, "Failed to execute database statment: (%@). err=%{public}@", buf, 0x16u);
                      }

                      v26 = 0;
                    }

                    v27 = v42;
                    v11 = v44;
                  }

                  else
                  {
                    v45 = _ICLogCategoryDefault();
                    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412546;
                      v59 = @"CREATE INDEX IF NOT EXISTS StoreAccountID ON...;";
                      v60 = 2114;
                      v61 = v11;
                      _os_log_impl(&dword_1B4491000, v45, OS_LOG_TYPE_ERROR, "Failed to execute database statment: (%@). err=%{public}@", buf, 0x16u);
                    }

                    v26 = 0;
                  }

                  v6 = v46;

                  goto LABEL_27;
                }

                v27 = _ICLogCategoryDefault();
                v6 = v46;
                if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543362;
                  v59 = v11;
                  v28 = "Failed to execute database statment to set initial properties. err=%{public}@";
                  v29 = v27;
                  v30 = 12;
                  goto LABEL_20;
                }

LABEL_21:
                v26 = 0;
LABEL_27:

                goto LABEL_28;
              }

LABEL_54:
              v8 = v18;
              _eventsDatabaseTableName = v47;
LABEL_55:
              v27 = _ICLogCategoryDefault();
              if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_26;
              }

              *buf = 138543362;
              v59 = v13;
              v31 = "Failed to execute database statment to drop tables. err=%{public}@";
              v32 = v27;
              v33 = 12;
              goto LABEL_25;
            }
          }

          else
          {
            v13 = v22;
          }

          v6 = v19;
          goto LABEL_54;
        }

        v27 = os_log_create("com.apple.amp.iTunesCloud", "Default");
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_26;
        }

        *buf = 138412546;
        v59 = v8;
        v60 = 2114;
        v61 = v13;
        v31 = "Failed to execute database statment: (%@). err=%{public}@";
LABEL_24:
        v32 = v27;
        v33 = 22;
LABEL_25:
        _os_log_impl(&dword_1B4491000, v32, OS_LOG_TYPE_ERROR, v31, buf, v33);
        goto LABEL_26;
      }

      v27 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      *buf = 138412546;
      v59 = v6;
      v60 = 2114;
      v61 = v11;
      v28 = "Failed to execute database statment: (%@). err=%{public}@";
    }

    else
    {
      v27 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      *buf = 138412546;
      v59 = @"PRAGMA legacy_file_format = 0;";
      v60 = 2114;
      v61 = v11;
      v28 = "Failed to execute database statment: (%@). err=%{public}@";
    }

    v29 = v27;
    v30 = 22;
LABEL_20:
    _os_log_impl(&dword_1B4491000, v29, OS_LOG_TYPE_ERROR, v28, buf, v30);
    goto LABEL_21;
  }

  v26 = 0;
LABEL_28:

  return v26;
}

+ (id)_defaultDatabasePath
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{CPSharedResourcesDirectory(), @"Library", @"com.apple.iTunesCloud", @"play_activity.sqlitedb", 0}];
  v3 = [MEMORY[0x1E696AEC0] pathWithComponents:v2];

  return v3;
}

+ (void)_migrateDatabaseFiles
{
  v11 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{CPSharedResourcesDirectory(), @"Library", @"com.apple.itunesstored", @"play_activity.sqlitedb", 0}];
  v3 = [MEMORY[0x1E696AEC0] pathWithComponents:?];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  if ([defaultManager fileExistsAtPath:v3])
  {
    _defaultDatabasePath = [self _defaultDatabasePath];
    stringByDeletingLastPathComponent = [_defaultDatabasePath stringByDeletingLastPathComponent];
    [defaultManager createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:0];

    [defaultManager moveItemAtPath:v3 toPath:_defaultDatabasePath error:0];
    v7 = [v3 stringByAppendingString:@"-wal"];
    v8 = [_defaultDatabasePath stringByAppendingString:@"-wal"];
    [defaultManager moveItemAtPath:v7 toPath:v8 error:0];

    v9 = [v3 stringByAppendingString:@"-shm"];
    v10 = [_defaultDatabasePath stringByAppendingString:@"-shm"];
    [defaultManager moveItemAtPath:v9 toPath:v10 error:0];
  }
}

@end