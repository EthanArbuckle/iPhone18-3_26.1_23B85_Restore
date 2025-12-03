@interface _PBFSQLitePreparedSimpleStatement
- (BOOL)executeWithBindings:(id)bindings resultRowHandler:(id)handler error:(id *)error;
- (id)_initWithDatabaseConnection:(void *)connection statement:;
- (id)_sqliteError:(void *)error SQLQuery:;
- (uint64_t)_bindKey:(void *)key value:;
- (uint64_t)_bindParameterIndex:(id)index dataValue:;
- (uint64_t)_bindParameterIndex:(id)index stringValue:;
- (uint64_t)_bindParameterIndex:(uint64_t)result nullValue:(int)value;
- (uint64_t)_bindParameterIndex:(void *)index numberValue:;
- (void)dealloc;
- (void)sqliteDatabaseConnectionWillClose:(id)close;
@end

@implementation _PBFSQLitePreparedSimpleStatement

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->super._dbConnection);
  statement = self->_statement;
  if (statement)
  {
    if (WeakRetained)
    {
      self->_statement = 0;
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __44___PBFSQLitePreparedSimpleStatement_dealloc__block_invoke;
      v6[3] = &__block_descriptor_40_e18_v16__0__sqlite3__8l;
      v6[4] = statement;
      [(PFSQLiteDatabaseConnection *)WeakRetained performWithDatabase:v6];
    }

    else
    {
      sqlite3_finalize(statement);
    }
  }

  v5.receiver = self;
  v5.super_class = _PBFSQLitePreparedSimpleStatement;
  [(PFSQLitePreparedStatement *)&v5 dealloc];
}

- (BOOL)executeWithBindings:(id)bindings resultRowHandler:(id)handler error:(id *)error
{
  bindingsCopy = bindings;
  handlerCopy = handler;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  WeakRetained = objc_loadWeakRetained(&self->super._dbConnection);
  if (WeakRetained && self->_statement)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __80___PBFSQLitePreparedSimpleStatement_executeWithBindings_resultRowHandler_error___block_invoke;
    v16[3] = &unk_1E818A118;
    v19 = &v20;
    v16[4] = self;
    v17 = bindingsCopy;
    v18 = handlerCopy;
    [(PFSQLiteDatabaseConnection *)WeakRetained performSyncWithDatabase:v16];

    v11 = *(v21 + 6);
    if (!error)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v11 = 21;
    *(v21 + 6) = 21;
    if (!error)
    {
      goto LABEL_11;
    }
  }

  if (v11)
  {
    v12 = sqlite3_sql(self->_statement);
    if (v12)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v12];
    }

    else
    {
      v13 = 0;
    }

    *error = [(_PBFSQLitePreparedSimpleStatement *)self _sqliteError:v13 SQLQuery:?];

    v11 = *(v21 + 6);
  }

LABEL_11:
  v14 = v11 == 0;

  _Block_object_dispose(&v20, 8);
  return v14;
}

- (void)sqliteDatabaseConnectionWillClose:(id)close
{
  statement = self->_statement;
  if (statement)
  {
    sqlite3_finalize(statement);
    self->_statement = 0;
  }

  objc_storeWeak(&self->super._dbConnection, 0);
}

- (id)_initWithDatabaseConnection:(void *)connection statement:
{
  if (!self)
  {
    return 0;
  }

  v4 = [(PFSQLitePreparedStatement *)self _initWithDatabaseConnection:a2];
  v5 = v4;
  if (v4)
  {
    v4[3] = connection;
    WeakRetained = objc_loadWeakRetained(v4 + 1);
    [WeakRetained addObserver:v5];
  }

  return v5;
}

- (uint64_t)_bindKey:(void *)key value:
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  keyCopy = key;
  if (self)
  {
    v7 = sqlite3_bind_parameter_index(*(self + 24), [v5 UTF8String]);
    if (v7)
    {
      v8 = v7;
      objc_opt_class();
      if (OUTLINED_FUNCTION_7_1())
      {
        v9 = sqlite3_bind_null(*(self + 24), v8);
LABEL_8:
        self = v9;
        goto LABEL_14;
      }

      objc_opt_class();
      if (OUTLINED_FUNCTION_7_1())
      {
        v9 = sqlite3_bind_text(*(self + 24), v8, [keyCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
        goto LABEL_8;
      }

      objc_opt_class();
      if (OUTLINED_FUNCTION_7_1())
      {
        v9 = [(_PBFSQLitePreparedSimpleStatement *)self _bindParameterIndex:v8 numberValue:keyCopy];
        goto LABEL_8;
      }

      objc_opt_class();
      if (OUTLINED_FUNCTION_7_1())
      {
        v9 = [(_PBFSQLitePreparedSimpleStatement *)self _bindParameterIndex:v8 dataValue:keyCopy];
        goto LABEL_8;
      }

      v10 = *(self + 16);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v13 = v10;
        v15 = 136315650;
        v16 = "[_PBFSQLitePreparedSimpleStatement _bindKey:value:]";
        v17 = 2112;
        v18 = keyCopy;
        v19 = 2112;
        v20 = objc_opt_class();
        v14 = v20;
        _os_log_error_impl(&dword_1C269D000, v13, OS_LOG_TYPE_ERROR, "%s: unexpected object %@ of class %@", &v15, 0x20u);
      }

      self = 20;
    }

    else
    {
      self = 0;
    }
  }

LABEL_14:

  v11 = *MEMORY[0x1E69E9840];
  return self;
}

- (id)_sqliteError:(void *)error SQLQuery:
{
  if (self)
  {
    v5 = MEMORY[0x1E696ABC0];
    errorCopy = error;
    WeakRetained = objc_loadWeakRetained((self + 8));
    v8 = [v5 pf_errorForDatabaseConnection:WeakRetained result:a2 query:errorCopy userInfo:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (uint64_t)_bindParameterIndex:(uint64_t)result nullValue:(int)value
{
  if (result)
  {
    return sqlite3_bind_null(*(result + 24), value);
  }

  return result;
}

- (uint64_t)_bindParameterIndex:(id)index stringValue:
{
  if (result)
  {
    v4 = *(result + 24);
    uTF8String = [index UTF8String];

    return sqlite3_bind_text(v4, a2, uTF8String, -1, 0xFFFFFFFFFFFFFFFFLL);
  }

  return result;
}

- (uint64_t)_bindParameterIndex:(void *)index numberValue:
{
  v17 = *MEMORY[0x1E69E9840];
  indexCopy = index;
  v6 = indexCopy;
  if (!self)
  {
    v10 = 0;
    goto LABEL_9;
  }

  objCType = [indexCopy objCType];
  if (strlen(objCType) != 1)
  {
    v11 = *(self + 16);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
LABEL_13:
      v16[0] = 136315650;
      OUTLINED_FUNCTION_0_8();
      _os_log_error_impl(&dword_1C269D000, v11, OS_LOG_TYPE_ERROR, "%s: unexpected value type '%{public}s' for object %@", v16, 0x20u);
    }

LABEL_8:
    v10 = 20;
    goto LABEL_9;
  }

  v8 = *objCType - 66;
  if (v8 > 0x31)
  {
LABEL_12:
    v11 = *(self + 16);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  if (((1 << v8) & 0x2848200028483) == 0)
  {
    if (((1 << v8) & 0x1400000000) != 0)
    {
      v14 = *(self + 24);
      [v6 doubleValue];
      v9 = sqlite3_bind_double(v14, a2, v15);
      goto LABEL_6;
    }

    goto LABEL_12;
  }

  v9 = sqlite3_bind_int64(*(self + 24), a2, [v6 longLongValue]);
LABEL_6:
  v10 = v9;
LABEL_9:

  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

- (uint64_t)_bindParameterIndex:(id)index dataValue:
{
  if (result)
  {
    v5 = result;
    indexCopy = index;
    indexCopy2 = index;
    bytes = [indexCopy2 bytes];
    v9 = [indexCopy2 length];

    v10 = indexCopy2 != 0;
    v11 = bytes == 0;
    if (v10 && v11)
    {
      v12 = 3735936685;
    }

    else
    {
      v12 = bytes;
    }

    v13 = *(v5 + 24);
    if (v10 && v11)
    {
      v14 = 0;
    }

    else
    {
      v14 = v9;
    }

    return sqlite3_bind_blob64(v13, a2, v12, v14, 0xFFFFFFFFFFFFFFFFLL);
  }

  return result;
}

@end