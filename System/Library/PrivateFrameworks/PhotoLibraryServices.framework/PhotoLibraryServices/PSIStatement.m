@interface PSIStatement
- (PSIStatement)initWithSQLite3Stmt:(sqlite3_stmt *)a3;
- (id)textAtColumn:(unint64_t)a3;
- (void)bindDouble:(double)a3 atIndex:(unint64_t)a4;
- (void)bindInt64:(int64_t)a3 atIndex:(unint64_t)a4;
- (void)bindText:(id)a3 atIndex:(unint64_t)a4;
- (void)dealloc;
- (void)finalizze;
@end

@implementation PSIStatement

- (id)textAtColumn:(unint64_t)a3
{
  v3 = sqlite3_column_text(self->_stmt, a3);
  if (v3)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v3];
  }

  return v3;
}

- (void)bindInt64:(int64_t)a3 atIndex:(unint64_t)a4
{
  v6 = *MEMORY[0x1E69E9840];
  if (sqlite3_bind_int64(self->_stmt, a4, a3))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = @"Failed to bind parameter";
      _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", &v4, 0xCu);
    }
  }
}

- (void)bindDouble:(double)a3 atIndex:(unint64_t)a4
{
  v6 = *MEMORY[0x1E69E9840];
  if (sqlite3_bind_double(self->_stmt, a4, a3))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = @"Failed to bind parameter";
      _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", &v4, 0xCu);
    }
  }
}

- (void)bindText:(id)a3 atIndex:(unint64_t)a4
{
  v4 = a4;
  v12 = *MEMORY[0x1E69E9840];
  v6 = [a3 dataUsingEncoding:4 allowLossyConversion:1];
  v7 = [v6 length];
  v8 = malloc_type_malloc(v7 + 1, 0xD00F92F1uLL);
  if (v8)
  {
    v9 = v8;
    [v6 getBytes:v8 range:{0, v7}];
    v9[v7] = 0;
    if (sqlite3_bind_text(self->_stmt, v4, v9, v7 + 1, 0xFFFFFFFFFFFFFFFFLL) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = @"Failed to bind parameter";
      _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", &v10, 0xCu);
    }

    free(v9);
  }
}

- (void)finalizze
{
  v7 = *MEMORY[0x1E69E9840];
  stmt = self->_stmt;
  if (!stmt)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = @"finalizze called multiple times on statement";
      _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", &v5, 0xCu);
      stmt = self->_stmt;
    }

    else
    {
      stmt = 0;
    }
  }

  v4 = sqlite3_finalize(stmt);
  self->_stmt = 0;
  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = @"Failed to finalize statement";
      _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", &v5, 0xCu);
    }
  }
}

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];
  if (self->_stmt && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v5 = @"finalizze not called before statement deallocation";
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
  }

  v3.receiver = self;
  v3.super_class = PSIStatement;
  [(PSIStatement *)&v3 dealloc];
}

- (PSIStatement)initWithSQLite3Stmt:(sqlite3_stmt *)a3
{
  if (a3)
  {
    v5.receiver = self;
    v5.super_class = PSIStatement;
    result = [(PSIStatement *)&v5 init];
    if (result)
    {
      result->_stmt = a3;
    }
  }

  else
  {

    return 0;
  }

  return result;
}

@end