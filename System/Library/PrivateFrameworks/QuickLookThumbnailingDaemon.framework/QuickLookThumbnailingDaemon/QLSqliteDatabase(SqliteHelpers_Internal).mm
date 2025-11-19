@interface QLSqliteDatabase(SqliteHelpers_Internal)
@end

@implementation QLSqliteDatabase(SqliteHelpers_Internal)

- (void)_finalizeStatement:()SqliteHelpers_Internal .cold.1(uint64_t *a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0(&dword_2615D3000, v1, v2, "finalize %p", v3, v4, v5, v6, 0);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_finalizeStatement:()SqliteHelpers_Internal .cold.2(sqlite3 **a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = a2;
  sqlite3_errcode(v2);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_2615D3000, v4, v5, "QLSqliteDatabase: While finalizing statement, error when statement last was executed  : (%ld) %s", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_finalizeStatement:()SqliteHelpers_Internal .cold.3(sqlite3 **a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = a2;
  sqlite3_errcode(v2);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_2615D3000, v4, v5, "Database - While finalizing statement, error when statement last was executed : (%ld) %s", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

@end