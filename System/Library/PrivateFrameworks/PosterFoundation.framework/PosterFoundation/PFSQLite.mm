@interface PFSQLite
@end

@implementation PFSQLite

uint64_t __PFSQLite_checkDatabaseForWALMode_block_invoke(int a1, sqlite3_stmt *a2, void *a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = sqlite3_column_text(a2, 0);
  if (!strcmp(v4, "wal") || !strcmp(v4, "memory"))
  {
    result = 1;
  }

  else
  {
    v5 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E696A588];
    v10[0] = @"Database is not in wal mode.";
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    *a3 = [v5 errorWithDomain:@"PFSQLiteArchiver" code:-443 userInfo:v6];

    result = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

@end