@interface WBSSQLiteStatement
- (BOOL)execute:(id *)a3;
- (BOOL)fetchWithEnumerationBlock:(id)a3 error:(id *)a4;
- (NSArray)columnNames;
- (NSDictionary)columnNamesToIndexes;
- (WBSSQLiteStatement)initWithDatabase:(id)a3 query:(id)a4 error:(id *)a5;
- (id)fetch;
- (int)execute;
- (void)bindData:(id)a3 atParameterIndex:(unint64_t)a4;
- (void)bindDouble:(double)a3 atParameterIndex:(unint64_t)a4;
- (void)bindInt64:(int64_t)a3 atParameterIndex:(unint64_t)a4;
- (void)bindInt:(int)a3 atParameterIndex:(unint64_t)a4;
- (void)bindNullAtParameterIndex:(unint64_t)a3;
- (void)bindString:(id)a3 atParameterIndex:(unint64_t)a4;
- (void)dealloc;
- (void)invalidate;
- (void)reset;
@end

@implementation WBSSQLiteStatement

- (void)reset
{
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_9(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_2_2(&dword_1B8447000, "Could not reset statement: %@ (%d)", v4, v5);
}

- (void)dealloc
{
  handle = self->_handle;
  if (handle)
  {
    v4 = [(WBSSQLiteDatabase *)self->_database queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __29__WBSSQLiteStatement_dealloc__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = handle;
    dispatch_async(v4, block);
  }

  v5.receiver = self;
  v5.super_class = WBSSQLiteStatement;
  [(WBSSQLiteStatement *)&v5 dealloc];
}

- (void)invalidate
{
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_9(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_2_2(&dword_1B8447000, "Could not finalize statement: %@ (%d)", v4, v5);
}

- (int)execute
{
  temporarilyDisableSuddenTermination(self);
  v3 = sqlite3_step(self->_handle);
  v4 = v3;
  if ((v3 - 100) >= 2 && v3 != 0)
  {
    [(WBSSQLiteDatabase *)self->_database reportErrorWithCode:v3 statement:self->_handle error:0];
  }

  return v4;
}

- (id)fetch
{
  v2 = [[WBSSQLiteRowEnumerator alloc] initWithResultsOfStatement:self];

  return v2;
}

- (WBSSQLiteStatement)initWithDatabase:(id)a3 query:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v16.receiver = self;
  v16.super_class = WBSSQLiteStatement;
  v11 = [(WBSSQLiteStatement *)&v16 init];
  p_isa = &v11->super.isa;
  if (v11)
  {
    objc_storeStrong(&v11->_database, a3);
    v13 = sqlite3_prepare_v2([v9 handle], objc_msgSend(v10, "UTF8String"), -1, p_isa + 2, 0);
    if (!v13)
    {
      v14 = p_isa;
      goto LABEL_6;
    }

    [v9 reportErrorWithCode:v13 query:v10 error:a5];
  }

  v14 = 0;
LABEL_6:

  return v14;
}

- (BOOL)execute:(id *)a3
{
  temporarilyDisableSuddenTermination(self);
  v5 = sqlite3_step(self->_handle);
  if ((v5 - 100) < 2 || v5 == 0)
  {
    return 1;
  }

  [(WBSSQLiteDatabase *)self->_database reportErrorWithCode:v5 statement:self->_handle error:a3];
  return 0;
}

- (BOOL)fetchWithEnumerationBlock:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = 0;
  v10 = 0;
  do
  {
    v8 = sqlite3_step(self->_handle);
    if (v8 != 100)
    {
      break;
    }

    if (!v7)
    {
      v7 = [[WBSSQLiteRow alloc] initWithStatement:self];
    }

    v6[2](v6, v7, &v10);
  }

  while ((v10 & 1) == 0);
  if (a4 && v8 != 101)
  {
    *a4 = [(WBSSQLiteDatabase *)self->_database lastErrorWithMethodName:"[WBSSQLiteStatement fetchWithEnumerationBlock:error:]"];
  }

  return v8 == 101;
}

- (void)bindString:(id)a3 atParameterIndex:(unint64_t)a4
{
  v4 = a4;
  v9 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (sqlite3_bind_text(self->_handle, v4, [v6 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL))
  {
    v7 = WBS_LOG_CHANNEL_PREFIXSQLite();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSSQLiteStatement bindString:atParameterIndex:];
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)bindInt:(int)a3 atParameterIndex:(unint64_t)a4
{
  v7 = *MEMORY[0x1E69E9840];
  if (sqlite3_bind_int(self->_handle, a4, a3))
  {
    v5 = WBS_LOG_CHANNEL_PREFIXSQLite();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSSQLiteStatement bindInt:atParameterIndex:];
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)bindInt64:(int64_t)a3 atParameterIndex:(unint64_t)a4
{
  v7 = *MEMORY[0x1E69E9840];
  if (sqlite3_bind_int64(self->_handle, a4, a3))
  {
    v5 = WBS_LOG_CHANNEL_PREFIXSQLite();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSSQLiteStatement bindInt64:atParameterIndex:];
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)bindDouble:(double)a3 atParameterIndex:(unint64_t)a4
{
  v7 = *MEMORY[0x1E69E9840];
  if (sqlite3_bind_double(self->_handle, a4, a3))
  {
    v5 = WBS_LOG_CHANNEL_PREFIXSQLite();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSSQLiteStatement bindDouble:atParameterIndex:];
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)bindData:(id)a3 atParameterIndex:(unint64_t)a4
{
  v4 = a4;
  v9 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (sqlite3_bind_blob(self->_handle, v4, [v6 bytes], objc_msgSend(v6, "length"), 0xFFFFFFFFFFFFFFFFLL))
  {
    v7 = WBS_LOG_CHANNEL_PREFIXSQLite();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSSQLiteStatement bindData:atParameterIndex:];
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)bindNullAtParameterIndex:(unint64_t)a3
{
  v6 = *MEMORY[0x1E69E9840];
  if (sqlite3_bind_null(self->_handle, a3))
  {
    v4 = WBS_LOG_CHANNEL_PREFIXSQLite();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSSQLiteStatement bindNullAtParameterIndex:];
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (NSDictionary)columnNamesToIndexes
{
  columnNamesToIndexes = self->_columnNamesToIndexes;
  if (columnNamesToIndexes)
  {
    v3 = columnNamesToIndexes;
  }

  else
  {
    v5 = sqlite3_column_count(self->_handle);
    v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v5];
    if (v5 >= 1)
    {
      v7 = 0;
      do
      {
        v8 = sqlite3_column_name(self->_handle, v7);
        v9 = [MEMORY[0x1E696AD98] numberWithInt:v7];
        v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];
        [(NSDictionary *)v6 setObject:v9 forKeyedSubscript:v10];

        v7 = (v7 + 1);
      }

      while (v5 != v7);
    }

    v11 = self->_columnNamesToIndexes;
    self->_columnNamesToIndexes = v6;
    v12 = v6;

    v3 = self->_columnNamesToIndexes;
  }

  return v3;
}

- (NSArray)columnNames
{
  columnNames = self->_columnNames;
  if (columnNames)
  {
    v3 = columnNames;
  }

  else
  {
    v5 = sqlite3_column_count(self->_handle);
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v5];
    if (v5 >= 1)
    {
      for (i = 0; i != v5; ++i)
      {
        v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{sqlite3_column_name(self->_handle, i)}];
        [(NSArray *)v6 addObject:v8];
      }
    }

    v9 = self->_columnNames;
    self->_columnNames = v6;
    v10 = v6;

    v3 = self->_columnNames;
  }

  return v3;
}

- (void)bindString:atParameterIndex:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_9(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_2_2(&dword_1B8447000, "Could not bind string: %@ (%d)", v4, v5);
}

- (void)bindInt:atParameterIndex:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_9(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_2_2(&dword_1B8447000, "Could not bind int: %@ (%d)", v4, v5);
}

- (void)bindInt64:atParameterIndex:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_9(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_2_2(&dword_1B8447000, "Could not bind integer: %@ (%d)", v4, v5);
}

- (void)bindDouble:atParameterIndex:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_9(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_2_2(&dword_1B8447000, "Could not bind double: %@ (%d)", v4, v5);
}

- (void)bindData:atParameterIndex:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_9(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_2_2(&dword_1B8447000, "Could not bind blob: %@ (%d)", v4, v5);
}

- (void)bindNullAtParameterIndex:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_9(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_2_2(&dword_1B8447000, "Could not bind null: %@ (%d)", v4, v5);
}

@end