@interface WBSSQLiteStatementCache
- (WBSSQLiteStatementCache)initWithDatabase:(id)database;
- (id)_createStatementForQuery:(id)query error:(id *)error;
- (id)cachedStatementForQuery:(id)query;
- (id)statementForQuery:(id)query error:(id *)error;
- (void)dealloc;
- (void)invalidate;
@end

@implementation WBSSQLiteStatementCache

- (WBSSQLiteStatementCache)initWithDatabase:(id)database
{
  databaseCopy = database;
  v12.receiver = self;
  v12.super_class = WBSSQLiteStatementCache;
  v6 = [(WBSSQLiteStatementCache *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_database, database);
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    statements = v7->_statements;
    v7->_statements = dictionary;

    v10 = v7;
  }

  return v7;
}

- (id)cachedStatementForQuery:(id)query
{
  v3 = [(NSMutableDictionary *)self->_statements objectForKeyedSubscript:query];

  return v3;
}

- (id)_createStatementForQuery:(id)query error:(id *)error
{
  v13 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  v7 = [[WBSSQLiteStatement alloc] initWithDatabase:self->_database query:queryCopy];
  if (!v7)
  {
    if (error)
    {
      *error = [(WBSSQLiteDatabase *)self->_database lastErrorWithMethodName:"[WBSSQLiteStatementCache _createStatementForQuery:error:]"];
    }

    else
    {
      v8 = WBS_LOG_CHANNEL_PREFIXSQLite();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        lastErrorMessage = [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
        [(WBSSQLiteStatementCache *)queryCopy _createStatementForQuery:lastErrorMessage error:v12, v8];
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)statementForQuery:(id)query error:(id *)error
{
  queryCopy = query;
  v7 = [(WBSSQLiteStatementCache *)self cachedStatementForQuery:queryCopy];
  if (!v7)
  {
    v7 = [(WBSSQLiteStatementCache *)self _createStatementForQuery:queryCopy error:error];
    if (v7)
    {
      [(WBSSQLiteStatementCache *)self setCachedStatement:v7 forQuery:queryCopy];
    }
  }

  return v7;
}

- (void)invalidate
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  allValues = [(NSMutableDictionary *)self->_statements allValues];
  v4 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v8 + 1) + 8 * v6++) invalidate];
      }

      while (v4 != v6);
      v4 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  [(NSMutableDictionary *)self->_statements removeAllObjects];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = WBSSQLiteStatementCache;
  [(WBSSQLiteStatementCache *)&v2 dealloc];
}

- (void)_createStatementForQuery:(uint8_t *)buf error:(os_log_t)log .cold.1(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1B8447000, log, OS_LOG_TYPE_ERROR, "Failed to create statement '%@': %{public}@", buf, 0x16u);
}

@end