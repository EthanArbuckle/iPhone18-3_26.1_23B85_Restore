@interface QLSqliteDatabase(SqliteHelpers)
- (void)beginTransaction;
- (void)endTransaction;
@end

@implementation QLSqliteDatabase(SqliteHelpers)

- (void)beginTransaction
{
  OUTLINED_FUNCTION_6(self, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5(&dword_2615D3000, v1, v2, "Begin transaction error: %s (%i)", v4, v5);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)endTransaction
{
  OUTLINED_FUNCTION_6(self, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5(&dword_2615D3000, v1, v2, "End transaction error: %s (%i)", v4, v5);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)executeWithCallback:()SqliteHelpers context:rollbackOnError:sql:arguments:.cold.1(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16);
  OUTLINED_FUNCTION_0_0();
  HIWORD(v6) = v2;
  OUTLINED_FUNCTION_8(&dword_2615D3000, v2, v3, "sqlite_exec %p %s", v5, v6);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)prepareStatement:()SqliteHelpers .cold.1(uint64_t *a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  HIWORD(v5) = v1;
  OUTLINED_FUNCTION_8(&dword_2615D3000, v1, v2, "sqlite3_prepare %p %s", v4, v5);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)prepareStatement:()SqliteHelpers .cold.2(uint64_t *a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0(&dword_2615D3000, v1, v2, "prepare statement %p", v3, v4, v5, v6, 0);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_cachedStatementForKey:()SqliteHelpers .cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(&dword_2615D3000, v0, v1, "found cached prepared statement %p", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)stepStatement:()SqliteHelpers didReturnData:.cold.1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CCACA8];
  v2 = a1;
  v3 = [v1 stringWithUTF8String:sqlite3_errstr(4)];
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4(&dword_2615D3000, v4, v5, "stepStatement %p (NO) with retval %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)stepStatement:()SqliteHelpers didReturnData:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(&dword_2615D3000, v0, v1, "stepStatement %p (YES)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)stepStatement:()SqliteHelpers didReturnData:.cold.4(void *a1, int a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  v4 = a1;
  v5 = [v3 stringWithUTF8String:sqlite3_errstr(a2)];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(&dword_2615D3000, v4, OS_LOG_TYPE_ERROR, "sqliteCrappedOut about to be called for %p with retval %@", v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setSqliteCacheSize:()SqliteHelpers .cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(&dword_2615D3000, v0, v1, "Database - Setting cache size to %ld pages.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end