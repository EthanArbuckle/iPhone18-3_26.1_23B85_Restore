@interface ICSQLiteConnection
- (BOOL)_close;
- (BOOL)_executeStatement:(id)statement error:(id *)error;
- (BOOL)_open;
- (BOOL)_performResetAfterCorruptionError;
- (BOOL)executePreparedStatement:(id)statement error:(id *)error bindings:(id)bindings;
- (BOOL)executeStatement:(id)statement error:(id *)error bindings:(id)bindings;
- (BOOL)resetAfterCorruptionError;
- (BOOL)resetAfterIOError;
- (BOOL)setUserVersion:(id)version;
- (BOOL)truncate;
- (ICSQLiteConnection)initWithOptions:(id)options;
- (ICSQLiteConnectionDelegate)delegate;
- (NSError)currentError;
- (NSNumber)userVersion;
- (id)_prepareStatement:(id)statement error:(id *)error;
- (id)_statementForPreparedStatement:(id)statement error:(id *)error;
- (id)_verifiedStatementForPreparedStatement:(id)statement error:(id *)error;
- (id)_verifiedStatementForSQL:(id)l error:(id *)error;
- (id)prepareStatement:(id)statement error:(id *)error;
- (int64_t)lastChangeCount;
- (void)_finalizeAllStatements;
- (void)_flushAfterTransactionBlocks;
- (void)dispatchAfterTransaction:(id)transaction;
- (void)executePreparedQuery:(id)query withResults:(id)results;
- (void)executeQuery:(id)query withResults:(id)results;
- (void)performTransaction:(id)transaction;
@end

@implementation ICSQLiteConnection

- (ICSQLiteConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_verifiedStatementForSQL:(id)l error:(id *)error
{
  lCopy = l;
  if ([(ICSQLiteConnection *)self _open])
  {
    v13 = 0;
    v7 = [(ICSQLiteConnection *)self _prepareStatement:lCopy error:&v13];
    v8 = v13;
    if (v7)
    {
      if (-[ICSQLiteConnectionOptions isReadOnly](self->_options, "isReadOnly") && ([v7 isReadOnly] & 1) == 0)
      {
        v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7701 userInfo:0];

        [v7 finalizeStatement];
        v9 = 0;
        v8 = v10;
      }

      else
      {
        v9 = v7;
      }
    }

    else
    {
      v9 = 0;
    }

    if (!error)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7700 userInfo:0];
    v9 = 0;
    if (!error)
    {
      goto LABEL_13;
    }
  }

  if (!v9)
  {
    v11 = v8;
    *error = v8;
  }

LABEL_13:

  return v9;
}

- (id)_verifiedStatementForPreparedStatement:(id)statement error:(id *)error
{
  statementCopy = statement;
  if ([statementCopy connectionPointer] == self)
  {
    if ([(ICSQLiteConnection *)self _open])
    {
      v13 = 0;
      v9 = [(ICSQLiteConnection *)self _statementForPreparedStatement:statementCopy error:&v13];
      v8 = v13;
      if (v9)
      {
        if (-[ICSQLiteConnectionOptions isReadOnly](self->_options, "isReadOnly") && ([v9 isReadOnly] & 1) == 0)
        {
          v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7701 userInfo:0];

          v7 = 0;
          v8 = v10;
        }

        else
        {
          v7 = v9;
        }
      }

      else
      {
        v7 = 0;
      }

      if (!error)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7700 userInfo:0];
      v7 = 0;
      if (!error)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Statement from a different connection"];
    v7 = 0;
    v8 = 0;
    if (!error)
    {
      goto LABEL_16;
    }
  }

  if (!v7)
  {
    v11 = v8;
    *error = v8;
  }

LABEL_16:

  return v7;
}

- (id)_statementForPreparedStatement:(id)statement error:(id *)error
{
  statementCopy = statement;
  v7 = [(NSMapTable *)self->_preparedStatements objectForKey:statementCopy];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
  }

  else
  {
    v10 = [statementCopy SQL];
    v16 = 0;
    v8 = [(ICSQLiteConnection *)self _prepareStatement:v10 error:&v16];
    v9 = v16;

    if (v8)
    {
      preparedStatements = self->_preparedStatements;
      if (!preparedStatements)
      {
        v12 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:0 capacity:0];
        v13 = self->_preparedStatements;
        self->_preparedStatements = v12;

        preparedStatements = self->_preparedStatements;
      }

      [(NSMapTable *)preparedStatements setObject:v8 forKey:statementCopy];
    }

    else if (error)
    {
      v14 = v9;
      v8 = 0;
      *error = v9;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)_prepareStatement:(id)statement error:(id *)error
{
  statementCopy = statement;
  v7 = statementCopy;
  if (!self->_database)
  {
    if (*error)
    {
      [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICSQLiteError" code:-1 debugDescription:@"Cannot prepare statement without a database."];
      *error = v18 = 0;
    }

    else
    {
      v18 = 0;
    }

    goto LABEL_39;
  }

  uTF8String = [statementCopy UTF8String];
  v9 = 0;
  v10 = 0;
  while (1)
  {
    while (1)
    {
      ppStmt = 0;
      v11 = sqlite3_prepare_v2(self->_database, uTF8String, -1, &ppStmt, 0);
      if (v11 > 0xA)
      {
        if (v11 != 11 && v11 != 26)
        {
          goto LABEL_33;
        }

        v13 = ICSQLiteGetCurrentError(self->_database);
        if (ppStmt)
        {
          sqlite3_finalize(ppStmt);
        }

        resetAfterCorruptionError = [(ICSQLiteConnection *)self resetAfterCorruptionError];
        if (v10 >= 3)
        {
          goto LABEL_35;
        }

        v15 = resetAfterCorruptionError;

        if (!v15)
        {
          goto LABEL_27;
        }

        goto LABEL_19;
      }

      if (v11 != 10)
      {
        break;
      }

      v13 = ICSQLiteGetCurrentError(self->_database);
      if (ppStmt)
      {
        sqlite3_finalize(ppStmt);
      }

      resetAfterIOError = [(ICSQLiteConnection *)self resetAfterIOError];
      if (v10 >= 3)
      {
        goto LABEL_35;
      }

      v17 = resetAfterIOError;

      if (!v17)
      {
LABEL_27:
        v19 = 0;
        goto LABEL_31;
      }

LABEL_19:
      ++v10;
    }

    if (v11 - 5 >= 2)
    {
      break;
    }

    if (ppStmt)
    {
      sqlite3_finalize(ppStmt);
    }

    if (v9 == 10)
    {
      v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7003 userInfo:0];
      goto LABEL_35;
    }

    ++v9;
    usleep(0xF4240u);
  }

  if (!v11)
  {
    v20 = [ICSQLiteStatement alloc];
    v19 = [(ICSQLiteStatement *)v20 initWithStatement:ppStmt connection:self];
LABEL_31:
    v13 = 0;
    if (!error)
    {
      goto LABEL_38;
    }

    goto LABEL_36;
  }

LABEL_33:
  v13 = ICSQLiteGetCurrentError(self->_database);
  if (ppStmt)
  {
    sqlite3_finalize(ppStmt);
  }

LABEL_35:
  v19 = 0;
  if (!error)
  {
    goto LABEL_38;
  }

LABEL_36:
  if (!v19)
  {
    v21 = v13;
    *error = v13;
  }

LABEL_38:
  v18 = v19;

LABEL_39:

  return v18;
}

- (BOOL)_performResetAfterCorruptionError
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v4 = [WeakRetained connectionNeedsResetForCorruption:self];
  }

  else if ([(ICSQLiteConnectionOptions *)self->_options isReadOnly])
  {
    v4 = 0;
  }

  else
  {
    databasePath = [(ICSQLiteConnectionOptions *)self->_options databasePath];
    v4 = ICSQLiteTruncateDatabase(databasePath);
  }

  return v4;
}

- (BOOL)_open
{
  database = self->_database;
  result = 1;
  if (!database)
  {
    for (i = 1; ; i = 0)
    {
      v6 = self->_options;
      ppDb = 0;
      databasePath = [(ICSQLiteConnectionOptions *)v6 databasePath];
      if ([(ICSQLiteConnectionOptions *)v6 isReadOnly])
      {
        v8 = 2;
      }

      else
      {
        v9 = objc_alloc_init(MEMORY[0x1E696AC08]);
        stringByDeletingLastPathComponent = [databasePath stringByDeletingLastPathComponent];
        [v9 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:0];

        v8 = 6;
      }

      v11 = sqlite3_open_v2([databasePath fileSystemRepresentation], &ppDb, v8, 0);
      if (!v11)
      {
        v11 = [(ICSQLiteConnectionOptions *)v6 applyToDatabase:ppDb];
        if (!v11)
        {
          v16 = ppDb;

          self->_database = v16;
          self->_didResetForCorruption = 0;
          return 1;
        }
      }

      v12 = v11;
      if (ppDb)
      {
        sqlite3_close(ppDb);
      }

      if (v12 > 0x1Au || ((1 << v12) & 0x4000C00) == 0)
      {
        break;
      }

      _performResetAfterCorruptionError = [(ICSQLiteConnection *)self _performResetAfterCorruptionError];
      result = 0;
      v15 = _performResetAfterCorruptionError & i;
      if ((v15 & 1) == 0)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

- (void)_flushAfterTransactionBlocks
{
  afterTransactionBlocks = self->_afterTransactionBlocks;
  if (afterTransactionBlocks)
  {
    v4 = [(NSMutableArray *)afterTransactionBlocks copy];
    v5 = self->_afterTransactionBlocks;
    self->_afterTransactionBlocks = 0;

    v6 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__ICSQLiteConnection__flushAfterTransactionBlocks__block_invoke;
    block[3] = &unk_1E7BFA300;
    block[4] = v4;
    dispatch_async(v6, block);
  }
}

void __50__ICSQLiteConnection__flushAfterTransactionBlocks__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v6 + 1) + 8 * v5) + 16))(*(*(&v6 + 1) + 8 * v5));
        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (void)_finalizeAllStatements
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = self->_preparedStatements;
  v4 = [(NSMapTable *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(NSMapTable *)self->_preparedStatements objectForKey:*(*(&v13 + 1) + 8 * v7), v13];
        [v8 finalizeStatement];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMapTable *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  preparedStatements = self->_preparedStatements;
  self->_preparedStatements = 0;

  stmt = sqlite3_next_stmt(self->_database, 0);
  if (stmt)
  {
    v11 = stmt;
    do
    {
      v12 = sqlite3_next_stmt(self->_database, v11);
      sqlite3_finalize(v11);
      v11 = v12;
    }

    while (v12);
  }
}

- (BOOL)_executeStatement:(id)statement error:(id *)error
{
  statementCopy = statement;
  for (i = 10; ; --i)
  {
    step = [statementCopy step];
    if ((step - 5) >= 2)
    {
      break;
    }

    [statementCopy reset];
    if (!i)
    {
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7003 userInfo:0];
      goto LABEL_17;
    }

    usleep(0xF4240u);
  }

  if (step <= 99)
  {
    if (step == 10)
    {
      v9 = ICSQLiteGetCurrentError(self->_database);
      [(ICSQLiteConnection *)self resetAfterIOError];
      if (!error)
      {
        goto LABEL_10;
      }

LABEL_18:
      v12 = v9;
      v10 = 0;
      *error = v9;
      goto LABEL_19;
    }

    if (step == 11 || step == 26)
    {
      v9 = ICSQLiteGetCurrentError(self->_database);
      [(ICSQLiteConnection *)self resetAfterCorruptionError];
      if (!error)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_16:
    v11 = ICSQLiteGetCurrentError(self->_database);
LABEL_17:
    v9 = v11;
    if (!error)
    {
LABEL_10:
      v10 = 0;
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if ((step - 100) >= 2)
  {
    goto LABEL_16;
  }

  v9 = 0;
  v10 = 1;
LABEL_19:

  return v10;
}

- (BOOL)_close
{
  if (!self->_database)
  {
    return 1;
  }

  [(ICSQLiteConnection *)self _finalizeAllStatements];
  if (sqlite3_close(self->_database))
  {
    return 0;
  }

  afterTransactionBlocks = self->_afterTransactionBlocks;
  self->_afterTransactionBlocks = 0;

  self->_database = 0;
  self->_transactionDepth = 0;
  result = 1;
  self->_transactionWantsRollback = 0;
  return result;
}

- (BOOL)resetAfterIOError
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v9 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_ERROR, "%{public}@ Resetting after IO error", &v9, 0xCu);
  }

  afterTransactionBlocks = self->_afterTransactionBlocks;
  v5 = afterTransactionBlocks;
  transactionDepth = self->_transactionDepth;
  if ([(ICSQLiteConnection *)self _close]&& [(ICSQLiteConnection *)self _open])
  {
    if (!transactionDepth)
    {
      _performResetAfterCorruptionError = 1;
      goto LABEL_8;
    }

    if (!sqlite3_exec(self->_database, "BEGIN DEFERRED TRANSACTION", 0, 0, 0))
    {
      objc_storeStrong(&self->_afterTransactionBlocks, afterTransactionBlocks);
      self->_transactionDepth = transactionDepth;
      _performResetAfterCorruptionError = 1;
      self->_transactionWantsRollback = 1;
      goto LABEL_8;
    }
  }

  [(ICSQLiteConnection *)self _close];
  _performResetAfterCorruptionError = [(ICSQLiteConnection *)self _performResetAfterCorruptionError];
LABEL_8:

  return _performResetAfterCorruptionError;
}

- (BOOL)resetAfterCorruptionError
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_ERROR, "%{public}@ Resetting after database corruption error", &v5, 0xCu);
  }

  if (self->_didResetForCorruption)
  {
    [(ICSQLiteConnection *)self _close];
    return [(ICSQLiteConnection *)self _performResetAfterCorruptionError];
  }

  else
  {
    self->_didResetForCorruption = 1;
    return [(ICSQLiteConnection *)self resetAfterIOError];
  }
}

- (NSError)currentError
{
  database = self->_database;
  if (database)
  {
    database = ICSQLiteGetCurrentError(database);
    v2 = vars8;
  }

  return database;
}

- (BOOL)truncate
{
  if ([(ICSQLiteConnectionOptions *)self->_options isReadOnly]|| ![(ICSQLiteConnection *)self _open])
  {
    return 0;
  }

  [(ICSQLiteConnection *)self _finalizeAllStatements];
  v6 = 129;
  v3 = sqlite3_file_control(self->_database, 0, 101, &v6);
  v4 = v3 == 0;
  if (!v3)
  {
    sqlite3_close(self->_database);
    self->_database = 0;
  }

  return v4;
}

- (id)prepareStatement:(id)statement error:(id *)error
{
  statementCopy = statement;
  if (![(ICSQLiteConnection *)self _open])
  {
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7700 userInfo:0];
    v11 = 0;
    if (!error)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v14 = 0;
  v7 = [(ICSQLiteConnection *)self _prepareStatement:statementCopy error:&v14];
  v8 = v14;
  if (v7)
  {
    if (!self->_preparedStatements)
    {
      v9 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:0 capacity:0];
      preparedStatements = self->_preparedStatements;
      self->_preparedStatements = v9;
    }

    v11 = [[ICSQLitePreparedStatement alloc] initWithConnection:self SQL:statementCopy];
    [(NSMapTable *)self->_preparedStatements setObject:v7 forKey:v11];
  }

  else
  {
    v11 = 0;
  }

  if (error)
  {
LABEL_10:
    if (!v11)
    {
      v12 = v8;
      *error = v8;
    }
  }

LABEL_12:

  return v11;
}

- (void)performTransaction:(id)transaction
{
  transactionCopy = transaction;
  transactionDepth = self->_transactionDepth;
  if (transactionDepth < 1)
  {
    if (![(ICSQLiteConnection *)self executeStatement:@"BEGIN DEFERRED TRANSACTION" error:0])
    {
      goto LABEL_10;
    }

    self->_transactionDepth = 1;
    self->_transactionWantsRollback = 0;
  }

  else
  {
    self->_transactionDepth = transactionDepth + 1;
  }

  v5 = transactionCopy[2]() ^ 1;
  v6 = self->_transactionDepth;
  v7 = self->_transactionWantsRollback | v5;
  self->_transactionWantsRollback = v7 & 1;
  self->_transactionDepth = --v6;
  if (!v6)
  {
    if (v7)
    {
      v8 = @"ROLLBACK TRANSACTION";
    }

    else
    {
      v8 = @"COMMIT TRANSACTION";
    }

    [(ICSQLiteConnection *)self executeStatement:v8 error:0];
    [(ICSQLiteConnection *)self _flushAfterTransactionBlocks];
  }

LABEL_10:
}

- (BOOL)setUserVersion:(id)version
{
  v12 = *MEMORY[0x1E69E9840];
  version = [MEMORY[0x1E696AEC0] stringWithFormat:@"PRAGMA user_version=%@", version];
  v9 = 0;
  v5 = [(ICSQLiteConnection *)self executeStatement:version error:&v9];
  v6 = v9;

  if (!v5)
  {
    v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v11 = v6;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_ERROR, "Failed to update user version. err=%{public}@", buf, 0xCu);
    }
  }

  return v5;
}

- (NSNumber)userVersion
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__38899;
  v9 = __Block_byref_object_dispose__38900;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __33__ICSQLiteConnection_userVersion__block_invoke;
  v4[3] = &unk_1E7BF9D48;
  v4[4] = &v5;
  [(ICSQLiteConnection *)self executeQuery:@"PRAGMA user_version" withResults:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __33__ICSQLiteConnection_userVersion__block_invoke(uint64_t result, void *a2, uint64_t a3)
{
  if (a2 && !a3)
  {
    v3 = result;
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(a2, "firstInt64Value")}];
    v5 = *(*(v3 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    return MEMORY[0x1EEE66BB8](v4, v6);
  }

  return result;
}

- (int64_t)lastChangeCount
{
  if ([(ICSQLiteConnection *)self _open])
  {
    return sqlite3_changes(self->_database);
  }

  else
  {
    return 0;
  }
}

- (BOOL)executeStatement:(id)statement error:(id *)error bindings:(id)bindings
{
  bindingsCopy = bindings;
  v16 = 0;
  v9 = [(ICSQLiteConnection *)self _verifiedStatementForSQL:statement error:&v16];
  v10 = v16;
  if (!v9)
  {
    v11 = 0;
    if (!error)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (bindingsCopy)
  {
    bindingsCopy[2](bindingsCopy, v9);
  }

  v15 = v10;
  v11 = [(ICSQLiteConnection *)self _executeStatement:v9 error:&v15];
  v12 = v15;

  [v9 finalizeStatement];
  v10 = v12;
  if (error)
  {
LABEL_7:
    if (!v11)
    {
      v13 = v10;
      *error = v10;
    }
  }

LABEL_9:

  return v11;
}

- (void)executeQuery:(id)query withResults:(id)results
{
  queryCopy = query;
  resultsCopy = results;
  v11 = 0;
  v8 = [(ICSQLiteConnection *)self _verifiedStatementForSQL:queryCopy error:&v11];
  v9 = v11;
  if (v8)
  {
    v10 = [[ICSQLiteQueryResults alloc] initWithStatement:v8];
  }

  else
  {
    v10 = 0;
  }

  resultsCopy[2](resultsCopy, v10, v9);
  [v8 finalizeStatement];
}

- (BOOL)executePreparedStatement:(id)statement error:(id *)error bindings:(id)bindings
{
  bindingsCopy = bindings;
  v16 = 0;
  v9 = [(ICSQLiteConnection *)self _verifiedStatementForPreparedStatement:statement error:&v16];
  v10 = v16;
  if (v9)
  {
    if (bindingsCopy)
    {
      bindingsCopy[2](bindingsCopy, v9);
    }

    v15 = v10;
    v11 = [(ICSQLiteConnection *)self _executeStatement:v9 error:&v15];
    v12 = v15;

    if (bindingsCopy)
    {
      [v9 clearBindings];
    }

    v10 = v12;
  }

  else
  {
    v11 = 0;
  }

  [v9 reset];
  if (error && !v11)
  {
    v13 = v10;
    *error = v10;
  }

  return v11;
}

- (void)executePreparedQuery:(id)query withResults:(id)results
{
  queryCopy = query;
  resultsCopy = results;
  v11 = 0;
  v8 = [(ICSQLiteConnection *)self _verifiedStatementForPreparedStatement:queryCopy error:&v11];
  v9 = v11;
  if (v8)
  {
    v10 = [[ICSQLiteQueryResults alloc] initWithStatement:v8];
  }

  else
  {
    v10 = 0;
  }

  resultsCopy[2](resultsCopy, v10, v9);
  [v8 clearBindings];
  [v8 reset];
}

- (void)dispatchAfterTransaction:(id)transaction
{
  transactionCopy = transaction;
  v10 = transactionCopy;
  if (self->_transactionDepth)
  {
    if (!self->_afterTransactionBlocks)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
      afterTransactionBlocks = self->_afterTransactionBlocks;
      self->_afterTransactionBlocks = v5;

      transactionCopy = v10;
    }

    v7 = [transactionCopy copy];
    v8 = self->_afterTransactionBlocks;
    v9 = MEMORY[0x1B8C781E0]();
    [(NSMutableArray *)v8 addObject:v9];
  }

  else
  {
    transactionCopy[2]();
  }
}

- (ICSQLiteConnection)initWithOptions:(id)options
{
  optionsCopy = options;
  v9.receiver = self;
  v9.super_class = ICSQLiteConnection;
  v5 = [(ICSQLiteConnection *)&v9 init];
  if (v5)
  {
    v6 = [optionsCopy copy];
    options = v5->_options;
    v5->_options = v6;
  }

  return v5;
}

@end