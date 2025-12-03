@interface SUSHistoryInstalls
+ (id)sharedInstanceWithPath:(id)path;
- (id)queryAllLogs;
- (id)queryLogsFromDate:(id)date toDate:(id)toDate;
- (void)addLogWithName:(id)name build:(id)build date:(id)date operationType:(int64_t)type;
- (void)initializeDatabase;
@end

@implementation SUSHistoryInstalls

+ (id)sharedInstanceWithPath:(id)path
{
  pathCopy = path;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__SUSHistoryInstalls_sharedInstanceWithPath___block_invoke;
  block[3] = &unk_279CAA708;
  v10 = pathCopy;
  v4 = sharedInstanceWithPath__onceToken;
  v5 = pathCopy;
  if (v4 != -1)
  {
    dispatch_once(&sharedInstanceWithPath__onceToken, block);
  }

  v6 = sharedInstanceWithPath__sharedInstance;
  v7 = sharedInstanceWithPath__sharedInstance;

  return v6;
}

uint64_t __45__SUSHistoryInstalls_sharedInstanceWithPath___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(SUSHistoryInstalls);
  v3 = sharedInstanceWithPath__sharedInstance;
  sharedInstanceWithPath__sharedInstance = v2;

  v4 = *(a1 + 32);
  v5 = sharedInstanceWithPath__sharedInstance;

  return [v5 setPath:v4];
}

- (void)initializeDatabase
{
  path = [(SUSHistoryInstalls *)self path];
  v4 = sqlite3_open([path UTF8String], &self->_db);

  if (v4)
  {
    SULogError(@"%s: Error opening database", v5, v6, v7, v8, v9, v10, v11, "[SUSHistoryInstalls initializeDatabase]");
  }

  else
  {
    if (sqlite3_exec(self->_db, "CREATE TABLE IF NOT EXISTS logs (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, build TEXT, date TEXT, operationType INTEGER);", 0, 0, 0))
    {
      sqlite3_errmsg(self->_db);
      SULogError(@"%s: Error creating table: %s", v19, v20, v21, v22, v23, v24, v25, "[SUSHistoryInstalls initializeDatabase]");
    }

    SULogInfo(@"%s: DB created", v12, v13, v14, v15, v16, v17, v18, "[SUSHistoryInstalls initializeDatabase]");
  }
}

- (void)addLogWithName:(id)name build:(id)build date:(id)date operationType:(int64_t)type
{
  nameCopy = name;
  buildCopy = build;
  dateCopy = date;
  [(SUSHistoryInstalls *)self initializeDatabase];
  v13 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v13 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
  v14 = [v13 stringFromDate:dateCopy];

  ppStmt = 0;
  if (sqlite3_prepare_v2(self->_db, "INSERT INTO logs (name, build, date, operationType) VALUES (?, ?, ?, ?);", -1, &ppStmt, 0))
  {
    sqlite3_errmsg(self->_db);
    SULogError(@"%s: Failed to prepare insert: %s", v15, v16, v17, v18, v19, v20, v21, "[SUSHistoryInstalls addLogWithName:build:date:operationType:]");
  }

  else
  {
    sqlite3_bind_text(ppStmt, 1, [nameCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    sqlite3_bind_text(ppStmt, 2, [buildCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    sqlite3_bind_text(ppStmt, 3, [v14 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    sqlite3_bind_int64(ppStmt, 4, type);
    if (sqlite3_step(ppStmt) == 101)
    {
      SULogDebug(@"%s: Success entry insert", v22, v23, v24, v25, v26, v27, v28, "[SUSHistoryInstalls addLogWithName:build:date:operationType:]");
      v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE FROM logs WHERE id NOT IN (SELECT id FROM logs ORDER BY date DESC LIMIT %d)", 25];;
      errmsg = 0;
      if (sqlite3_exec(self->_db, [v29 UTF8String], 0, 0, &errmsg))
      {
        SULogError(@"%s: Failed to trim old log entries: %s", v30, v31, v32, v33, v34, v35, v36, "[SUSHistoryInstalls addLogWithName:build:date:operationType:]");
        sqlite3_free(errmsg);
      }

      else
      {
        SULogInfo(@"%s: Trimmed logs to most recent %d entries", v30, v31, v32, v33, v34, v35, v36, "[SUSHistoryInstalls addLogWithName:build:date:operationType:]");
      }
    }

    else
    {
      SULogError(@"%s: Failed to insert log", v22, v23, v24, v25, v26, v27, v28, "[SUSHistoryInstalls addLogWithName:build:date:operationType:]");
    }

    sqlite3_finalize(ppStmt);
  }
}

- (id)queryAllLogs
{
  v28[4] = *MEMORY[0x277D85DE8];
  [(SUSHistoryInstalls *)self initializeDatabase];
  array = [MEMORY[0x277CBEB18] array];
  ppStmt = 0;
  if (sqlite3_prepare_v2(self->_db, "SELECT name, build, date, operationType FROM logs ORDER BY date ASC;", -1, &ppStmt, 0))
  {
    SULogError(@"%s: failed to query database", v4, v5, v6, v7, v8, v9, v10, "[SUSHistoryInstalls queryAllLogs]");
  }

  else
  {
    while (sqlite3_step(ppStmt) == 100)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{sqlite3_column_text(ppStmt, 0)}];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:{sqlite3_column_text(ppStmt, 1)}];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:{sqlite3_column_text(ppStmt, 2)}];
      v14 = sqlite3_column_int64(ppStmt, 3);
      v27[0] = @"name";
      v27[1] = @"build";
      v28[0] = v11;
      v28[1] = v12;
      v28[2] = v13;
      v27[2] = @"date";
      v27[3] = @"operationType";
      v15 = [MEMORY[0x277CCABB0] numberWithInteger:v14];
      v28[3] = v15;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:4];
      [array addObject:v16];
    }

    sqlite3_finalize(ppStmt);
    SULogDebug(@"%s: query database success", v17, v18, v19, v20, v21, v22, v23, "[SUSHistoryInstalls queryAllLogs]");
  }

  v24 = *MEMORY[0x277D85DE8];

  return array;
}

- (id)queryLogsFromDate:(id)date toDate:(id)toDate
{
  v30[4] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  toDateCopy = toDate;
  [(SUSHistoryInstalls *)self initializeDatabase];
  array = [MEMORY[0x277CBEB18] array];
  v9 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v9 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
  v10 = [v9 stringFromDate:dateCopy];
  v11 = [v9 stringFromDate:toDateCopy];
  ppStmt = 0;
  if (sqlite3_prepare_v2(self->_db, "SELECT name, build, date, operationType FROM logs WHERE date BETWEEN ? AND ? ORDER BY date ASC;", -1, &ppStmt, 0))
  {
    SULogError(@"%s: failed to query database", v12, v13, v14, v15, v16, v17, v18, "[SUSHistoryInstalls queryLogsFromDate:toDate:]");
  }

  else
  {
    v27 = dateCopy;
    sqlite3_bind_text(ppStmt, 1, [v10 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    sqlite3_bind_text(ppStmt, 2, [v11 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    while (sqlite3_step(ppStmt) == 100)
    {
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:{sqlite3_column_text(ppStmt, 0)}];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:{sqlite3_column_text(ppStmt, 1)}];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:{sqlite3_column_text(ppStmt, 2)}];
      v22 = sqlite3_column_int64(ppStmt, 3);
      v29[0] = @"name";
      v29[1] = @"build";
      v30[0] = v19;
      v30[1] = v20;
      v30[2] = v21;
      v29[2] = @"date";
      v29[3] = @"operationType";
      v23 = [MEMORY[0x277CCABB0] numberWithInteger:v22];
      v30[3] = v23;
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:4];
      [array addObject:v24];
    }

    sqlite3_finalize(ppStmt);
    dateCopy = v27;
  }

  v25 = *MEMORY[0x277D85DE8];

  return array;
}

@end