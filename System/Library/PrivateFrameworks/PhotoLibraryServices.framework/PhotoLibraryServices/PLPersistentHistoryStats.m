@interface PLPersistentHistoryStats
+ (BOOL)fetchEarliestTransactionDateFromDatabase:(id)a3 intoStats:(id)a4;
+ (BOOL)fetchPageCountsOfPersistentHistoryTablesFromDatabase:(id)a3 intoStats:(id)a4;
+ (BOOL)fetchTotalPageCountFromDatabase:(id)a3 intoStats:(id)a4;
+ (BOOL)fetchTransactionCountFromDatabase:(id)a3 intoStats:(id)a4;
+ (BOOL)fetchUnusedPageCountFromDatabase:(id)a3 intoStats:(id)a4;
+ (id)statsFromDatabase:(id)a3;
- (double)persistentHistoryPageCountPercent;
- (double)persistentHistoryPageCountPercentOfPayload;
- (int64_t)daysSinceEarliestTransaction;
@end

@implementation PLPersistentHistoryStats

- (double)persistentHistoryPageCountPercentOfPayload
{
  v3 = [(PLPersistentHistoryStats *)self persistentHistoryPageCount];

  [(PLPersistentHistoryStats *)self _pageCountAsPercentOfPayload:v3];
  return result;
}

- (double)persistentHistoryPageCountPercent
{
  v3 = [(PLPersistentHistoryStats *)self persistentHistoryPageCount];

  [(PLPersistentHistoryStats *)self _pageCountAsPercentOfFile:v3];
  return result;
}

- (int64_t)daysSinceEarliestTransaction
{
  result = self->_earliestTransactionDate;
  if (result)
  {
    [result timeIntervalSinceNow];
    return llround(ceil(fabs(v3 / 86400.0)));
  }

  return result;
}

+ (BOOL)fetchEarliestTransactionDateFromDatabase:(id)a3 intoStats:(id)a4
{
  v5 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __79__PLPersistentHistoryStats_fetchEarliestTransactionDateFromDatabase_intoStats___block_invoke;
  v8[3] = &unk_1E756DA68;
  v9 = v5;
  v6 = v5;
  LOBYTE(a3) = [a3 prepareStatement:@"SELECT ZTIMESTAMP  FROM ATRANSACTION  ORDER BY ZTIMESTAMP ASC  LIMIT 1;" andStepThroughResultsWithBlock:v8];

  return a3;
}

void __79__PLPersistentHistoryStats_fetchEarliestTransactionDateFromDatabase_intoStats___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:{sqlite3_column_double(a2, 0)}];
  [*(a1 + 32) setEarliestTransactionDate:v3];
}

+ (BOOL)fetchTransactionCountFromDatabase:(id)a3 intoStats:(id)a4
{
  v5 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __72__PLPersistentHistoryStats_fetchTransactionCountFromDatabase_intoStats___block_invoke;
  v8[3] = &unk_1E756DA68;
  v9 = v5;
  v6 = v5;
  LOBYTE(a3) = [a3 prepareStatement:@"SELECT COUNT(*) from ATRANSACTION;" andStepThroughResultsWithBlock:v8];

  return a3;
}

uint64_t __72__PLPersistentHistoryStats_fetchTransactionCountFromDatabase_intoStats___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = sqlite3_column_int(a2, 0);
  v4 = *(a1 + 32);

  return [v4 setTransactionCount:v3];
}

+ (BOOL)fetchUnusedPageCountFromDatabase:(id)a3 intoStats:(id)a4
{
  v5 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __71__PLPersistentHistoryStats_fetchUnusedPageCountFromDatabase_intoStats___block_invoke;
  v8[3] = &unk_1E756DA68;
  v9 = v5;
  v6 = v5;
  LOBYTE(a3) = [a3 prepareStatement:@"PRAGMA freelist_count;" andStepThroughResultsWithBlock:v8];

  return a3;
}

uint64_t __71__PLPersistentHistoryStats_fetchUnusedPageCountFromDatabase_intoStats___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = sqlite3_column_int(a2, 0);
  v4 = *(a1 + 32);

  return [v4 setUnusedPageCount:v3];
}

+ (BOOL)fetchTotalPageCountFromDatabase:(id)a3 intoStats:(id)a4
{
  v5 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __70__PLPersistentHistoryStats_fetchTotalPageCountFromDatabase_intoStats___block_invoke;
  v8[3] = &unk_1E756DA68;
  v9 = v5;
  v6 = v5;
  LOBYTE(a3) = [a3 prepareStatement:@"PRAGMA page_count;" andStepThroughResultsWithBlock:v8];

  return a3;
}

uint64_t __70__PLPersistentHistoryStats_fetchTotalPageCountFromDatabase_intoStats___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = sqlite3_column_int(a2, 0);
  v4 = *(a1 + 32);

  return [v4 setFilePageCount:v3];
}

+ (BOOL)fetchPageCountsOfPersistentHistoryTablesFromDatabase:(id)a3 intoStats:(id)a4
{
  v5 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __91__PLPersistentHistoryStats_fetchPageCountsOfPersistentHistoryTablesFromDatabase_intoStats___block_invoke;
  v8[3] = &unk_1E756DA68;
  v9 = v5;
  v6 = v5;
  LOBYTE(a3) = [a3 prepareStatement:@"SELECT m.tbl_name tbl_name andStepThroughResultsWithBlock:{sum(pageno) page_count  FROM   dbstat d, sqlite_master m  WHERE     d.name = m.name     AND m.tbl_name IN ('ACHANGE', 'ATRANSACTION', 'ATRANSACTIONSTRING')     AND d.aggregate = TRUE  GROUP BY m.tbl_name;", v8}];

  return a3;
}

uint64_t __91__PLPersistentHistoryStats_fetchPageCountsOfPersistentHistoryTablesFromDatabase_intoStats___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_column_text(a2, 0);
  v5 = sqlite3_column_int64(a2, 1);
  if (!strcmp(v4, "ACHANGE"))
  {
    v7 = *(a1 + 32);

    return [v7 setChangesPageCount:v5];
  }

  else if (!strcmp(v4, "ATRANSACTION"))
  {
    v8 = *(a1 + 32);

    return [v8 setTransactionsPageCount:v5];
  }

  else
  {
    result = strcmp(v4, "ATRANSACTIONSTRING");
    if (!result)
    {
      v9 = *(a1 + 32);

      return [v9 setTransactionStringsPageCount:v5];
    }
  }

  return result;
}

+ (id)statsFromDatabase:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(PLPersistentHistoryStats);
  if ([a1 fetchPageCountsOfPersistentHistoryTablesFromDatabase:v4 intoStats:v5] && objc_msgSend(a1, "fetchTotalPageCountFromDatabase:intoStats:", v4, v5) && objc_msgSend(a1, "fetchUnusedPageCountFromDatabase:intoStats:", v4, v5) && objc_msgSend(a1, "fetchTransactionCountFromDatabase:intoStats:", v4, v5) && objc_msgSend(a1, "fetchEarliestTransactionDateFromDatabase:intoStats:", v4, v5))
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end