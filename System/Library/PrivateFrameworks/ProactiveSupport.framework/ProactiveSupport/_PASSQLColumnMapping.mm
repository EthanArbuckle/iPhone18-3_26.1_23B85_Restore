@interface _PASSQLColumnMapping
- (_PASSQLColumnMapping)initWithStatementPtr:(sqlite3_stmt *)a3;
- (int)indexForColumnAlias:(const char *)a3;
- (int)indexForColumnName:(const char *)a3 table:(const char *)uniqueTableName;
- (void)_deallocState;
- (void)_ensureColumnMappingExists;
- (void)dealloc;
- (void)invalidate;
- (void)invalidateIfNeeded;
- (void)resetSearchHint;
@end

@implementation _PASSQLColumnMapping

- (void)invalidateIfNeeded
{
  if (self->_tableColumnNamesFromSchema && sqlite3_stmt_status(self->_stmt, 5, 0) != self->_stmtReprepareCounter)
  {

    [(_PASSQLColumnMapping *)self invalidate];
  }
}

- (void)dealloc
{
  [(_PASSQLColumnMapping *)self _deallocState];
  v3.receiver = self;
  v3.super_class = _PASSQLColumnMapping;
  [(_PASSQLColumnMapping *)&v3 dealloc];
}

- (void)_deallocState
{
  _PASCompactStringArrayDestroy(self->_columnAliases);
  _PASCompactStringArrayDestroy(self->_tableColumnNamesFromSchema);
  uniqueTableName = self->_uniqueTableName;

  free(uniqueTableName);
}

- (void)resetSearchHint
{
  tableColumnNamesFromSchema = self->_tableColumnNamesFromSchema;
  if (tableColumnNamesFromSchema)
  {
    v3 = *(tableColumnNamesFromSchema + 8);
    if (v3 != -1)
    {
      v4 = *(tableColumnNamesFromSchema + 9);
      *(tableColumnNamesFromSchema + 6) = v3;
      *(tableColumnNamesFromSchema + 7) = v4;
      *(tableColumnNamesFromSchema + 4) = -1;
    }

    _PASCompactStringArrayResetSearchHint(self->_columnAliases);
  }
}

- (void)_ensureColumnMappingExists
{
  v4 = *MEMORY[0x1E69E9840];
  if (!self->_tableColumnNamesFromSchema)
  {
    v3 = a2;
    self->_stmtReprepareCounter = sqlite3_stmt_status(self->_stmt, 5, 0);
    operator new();
  }

  v2 = *MEMORY[0x1E69E9840];
}

- (int)indexForColumnAlias:(const char *)a3
{
  if (!a3 || !*a3)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"_PASSqliteStatement.m" lineNumber:201 description:{@"Invalid parameter not satisfying: %@", @"alias && alias[0]"}];
  }

  [(_PASSQLColumnMapping *)self _ensureColumnMappingExists];
  v6 = strlen(a3);
  StringWithSize = _PASCompactStringArrayFindStringWithSize(self->_columnAliases, a3, v6);
  if (StringWithSize == -1)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"_PASSqliteStatement.m" lineNumber:205 description:{@"Query does not reference column alias: %s", a3}];
  }

  return StringWithSize;
}

- (int)indexForColumnName:(const char *)a3 table:(const char *)uniqueTableName
{
  v26 = *MEMORY[0x1E69E9840];
  if (!a3 || !*a3)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"_PASSqliteStatement.m" lineNumber:185 description:{@"Invalid parameter not satisfying: %@", @"columnName && columnName[0]"}];
  }

  [(_PASSQLColumnMapping *)self _ensureColumnMappingExists];
  if (!uniqueTableName)
  {
    uniqueTableName = self->_uniqueTableName;
    if (!uniqueTableName)
    {
      v21 = [MEMORY[0x1E696AAA8] currentHandler];
      [v21 handleFailureInMethod:a2 object:self file:@"_PASSqliteStatement.m" lineNumber:188 description:@"nil table name provided for query which references multiple tables"];

      uniqueTableName = self->_uniqueTableName;
    }
  }

  v8 = strlen(a3);
  v9 = strlen(uniqueTableName);
  v10 = v9;
  v11 = v8 + v9;
  v12 = v8 + v9 + 2;
  memptr = 0;
  v25 = 0;
  if (v12 > 0x200)
  {
    v19 = malloc_type_posix_memalign(&memptr, 8uLL, v12, 0x6EDBD4ADuLL);
    LOBYTE(v25) = 0;
    if (v19)
    {
      v22 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:@"malloc failed" userInfo:0];
      objc_exception_throw(v22);
    }

    v13 = memptr;
  }

  else
  {
    v13 = &v23 - ((v8 + v9 + 17) & 0xFFFFFFFFFFFFFFF0);
    bzero(v13, v12);
    memptr = v13;
    LOBYTE(v25) = 1;
  }

  v14 = v25;
  memcpy(v13, a3, v8);
  v13[v8] = 46;
  memcpy(&v13[v8 + 1], uniqueTableName, v10);
  v13[v8 + 1 + v10] = 0;
  StringWithSize = _PASCompactStringArrayFindStringWithSize(self->_tableColumnNamesFromSchema, v13, v11 + 1);
  if (StringWithSize == -1)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"_PASSqliteStatement.m" lineNumber:194 description:{@"Query does not reference table-qualified column name: %s", v13}];

    if (v14)
    {
      goto LABEL_10;
    }

LABEL_15:
    free(v13);
    goto LABEL_10;
  }

  if ((v14 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_10:
  v16 = *MEMORY[0x1E69E9840];
  return StringWithSize;
}

- (void)invalidate
{
  [(_PASSQLColumnMapping *)self _deallocState];
  self->_tableColumnNamesFromSchema = 0;
  self->_columnAliases = 0;
  self->_uniqueTableName = 0;
}

- (_PASSQLColumnMapping)initWithStatementPtr:(sqlite3_stmt *)a3
{
  v5.receiver = self;
  v5.super_class = _PASSQLColumnMapping;
  result = [(_PASSQLColumnMapping *)&v5 init];
  if (result)
  {
    result->_stmt = a3;
  }

  return result;
}

@end