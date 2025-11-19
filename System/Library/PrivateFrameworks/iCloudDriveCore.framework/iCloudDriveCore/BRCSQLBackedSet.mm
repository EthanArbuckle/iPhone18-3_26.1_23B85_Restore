@interface BRCSQLBackedSet
+ (id)_databaseRootDirectory;
+ (id)createSetOfClass:(Class)a3 withSQLType:(id)a4 error:(id *)a5;
+ (id)createStringsSetWithError:(id *)a3;
+ (void)clearTempDatabases;
- (BOOL)_createSchemaForSQLType:(id)a3 error:(id *)a4;
- (BOOL)addObject:(id)a3 error:(id *)a4;
- (id)initArrayOfClass:(Class)a3 withSQLType:(id)a4 error:(id *)a5;
- (void)_closeDB;
- (void)dealloc;
- (void)enumerateObjectsWithSortOrder:(unint64_t)a3 usingBlock:(id)a4;
@end

@implementation BRCSQLBackedSet

+ (id)createStringsSetWithError:(id *)a3
{
  v4 = objc_opt_class();

  return [BRCSQLBackedSet createSetOfClass:v4 withSQLType:@"text" error:a3];
}

+ (id)createSetOfClass:(Class)a3 withSQLType:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = [[BRCSQLBackedSet alloc] initArrayOfClass:a3 withSQLType:v7 error:a5];

  return v8;
}

+ (void)clearTempDatabases
{
  v3 = +[BRCSQLBackedSet _databaseRootDirectory];
  v2 = [v3 path];
  BRCRemoveFolder(v2, 0, 1, 0);
}

+ (id)_databaseRootDirectory
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 bundleIdentifier];

  if ([v3 isEqualToString:*MEMORY[0x277CFAC00]])
  {
    v4 = [MEMORY[0x277CFAE38] cloudDocsAppSupportURL];
    [v4 URLByAppendingPathComponent:@"session/tmp"];
  }

  else
  {
    v4 = [MEMORY[0x277CCAA00] defaultManager];
    [v4 temporaryDirectory];
  }
  v5 = ;

  return v5;
}

- (id)initArrayOfClass:(Class)a3 withSQLType:(id)a4 error:(id *)a5
{
  v59 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v50.receiver = self;
  v50.super_class = BRCSQLBackedSet;
  v9 = [(BRCSQLBackedSet *)&v50 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    v9->_class = a3;
    v9->_count = 0;
    objc_initWeak(&location, v9);
    v11 = [BRCPQLConnection alloc];
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __54__BRCSQLBackedSet_initArrayOfClass_withSQLType_error___block_invoke;
    v47[3] = &unk_2784FF828;
    objc_copyWeak(&v48, &location);
    v12 = [(BRCPQLConnection *)v11 initWithLabel:@"BRCSQLBackedSet" dbCorruptionHandler:v47];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __54__BRCSQLBackedSet_initArrayOfClass_withSQLType_error___block_invoke_23;
    v45[3] = &unk_2785019D8;
    objc_copyWeak(&v46, &location);
    [(BRCPQLConnection *)v12 setSqliteErrorHandler:v45];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __54__BRCSQLBackedSet_initArrayOfClass_withSQLType_error___block_invoke_25;
    v43[3] = &unk_2785019D8;
    objc_copyWeak(&v44, &location);
    [(BRCPQLConnection *)v12 setAutoRollbackHandler:v43];
    v13 = +[BRCSQLBackedSet _databaseRootDirectory];
    v14 = objc_opt_new();
    v15 = [v14 UUIDString];
    v16 = [v13 URLByAppendingPathComponent:v15];
    v17 = p_isa[2];
    p_isa[2] = v16;

    v18 = [MEMORY[0x277CCAA00] defaultManager];
    v19 = p_isa[2];
    v42 = 0;
    LOBYTE(v15) = [v18 createDirectoryAtURL:v19 withIntermediateDirectories:1 attributes:0 error:&v42];
    v20 = v42;

    if ((v15 & 1) == 0)
    {
      v29 = brc_bread_crumbs();
      v30 = brc_default_log();
      if (os_log_type_enabled(v30, 0x90u))
      {
        v38 = p_isa[2];
        *buf = 138412802;
        v52 = v38;
        v53 = 2112;
        v54 = v20;
        v55 = 2112;
        v56 = v29;
        _os_log_error_impl(&dword_223E7A000, v30, 0x90u, "[ERROR] Failed creating root folder for DB: %@. %@%@", buf, 0x20u);
      }

      v31 = v20;
      if (v31)
      {
        v32 = brc_bread_crumbs();
        v33 = brc_default_log();
        if (os_log_type_enabled(v33, 0x90u))
        {
          v39 = "(passed to caller)";
          *buf = 136315906;
          v52 = "[BRCSQLBackedSet initArrayOfClass:withSQLType:error:]";
          v53 = 2080;
          if (!a5)
          {
            v39 = "(ignored by caller)";
          }

          v54 = v39;
          v55 = 2112;
          v56 = v31;
          v57 = 2112;
          v58 = v32;
          _os_log_error_impl(&dword_223E7A000, v33, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
        }
      }

      if (a5)
      {
        v34 = v31;
        *a5 = v31;
      }

      objc_destroyWeak(&v44);
      objc_destroyWeak(&v46);
      objc_destroyWeak(&v48);

      objc_destroyWeak(&location);
      goto LABEL_22;
    }

    v21 = [p_isa[2] URLByAppendingPathComponent:@"db.db"];
    v22 = brc_bread_crumbs();
    v23 = brc_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      [BRCSQLBackedSet initArrayOfClass:withSQLType:error:];
    }

    v41 = v20;
    [(BRCPQLConnection *)v12 openAtURL:v21 withFlags:3145734 error:&v41];
    v24 = v41;

    if (v24)
    {
      v25 = v24;
      v26 = brc_bread_crumbs();
      v27 = brc_default_log();
      if (os_log_type_enabled(v27, 0x90u))
      {
        v40 = "(passed to caller)";
        *buf = 136315906;
        v52 = "[BRCSQLBackedSet initArrayOfClass:withSQLType:error:]";
        v53 = 2080;
        if (!a5)
        {
          v40 = "(ignored by caller)";
        }

        v54 = v40;
        v55 = 2112;
        v56 = v25;
        v57 = 2112;
        v58 = v26;
        _os_log_error_impl(&dword_223E7A000, v27, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }

      if (a5)
      {
        v28 = v25;
        *a5 = v25;
      }

      goto LABEL_21;
    }

    objc_storeStrong(p_isa + 1, v12);
    if (![p_isa _createSchemaForSQLType:v8 error:a5])
    {
LABEL_21:

      objc_destroyWeak(&v44);
      objc_destroyWeak(&v46);
      objc_destroyWeak(&v48);

      objc_destroyWeak(&location);
LABEL_22:
      v35 = 0;
      goto LABEL_23;
    }

    [(BRCPQLConnection *)v12 setSynchronousMode:1];
    [(BRCPQLConnection *)v12 useSerialQueue];

    objc_destroyWeak(&v44);
    objc_destroyWeak(&v46);
    objc_destroyWeak(&v48);

    objc_destroyWeak(&location);
  }

  v35 = p_isa;
LABEL_23:

  v36 = *MEMORY[0x277D85DE8];
  return v35;
}

void __54__BRCSQLBackedSet_initArrayOfClass_withSQLType_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, 0x90u))
  {
    __54__BRCSQLBackedSet_initArrayOfClass_withSQLType_error___block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dbBecameCorrupted];
}

void __54__BRCSQLBackedSet_initArrayOfClass_withSQLType_error___block_invoke_23(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, 0x90u))
  {
    v12 = 138412802;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    _os_log_error_impl(&dword_223E7A000, v9, 0x90u, "[ERROR] sqlite error handler called - %@ (%@)%@", &v12, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dbBecameCorrupted];

  v11 = *MEMORY[0x277D85DE8];
}

void __54__BRCSQLBackedSet_initArrayOfClass_withSQLType_error___block_invoke_25(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, 0x90u))
  {
    v12 = 138412802;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    _os_log_error_impl(&dword_223E7A000, v9, 0x90u, "[ERROR] Auto rollback handler called - %@ (%@)%@", &v12, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dbBecameCorrupted];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_closeDB
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_db;
  v4 = v2->_dbRootFolder;
  db = v2->_db;
  v2->_db = 0;

  dbRootFolder = v2->_dbRootFolder;
  v2->_dbRootFolder = 0;

  objc_sync_exit(v2);
  if (v3)
  {
    v7 = [(BRCPQLConnection *)v3 serialQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __27__BRCSQLBackedSet__closeDB__block_invoke;
    v8[3] = &unk_2784FF478;
    v9 = v3;
    v10 = v4;
    dispatch_async(v7, v8);
  }
}

void __27__BRCSQLBackedSet__closeDB__block_invoke(uint64_t a1)
{
  [*(a1 + 32) close:0];
  v2 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__BRCSQLBackedSet__closeDB__block_invoke_2;
  block[3] = &unk_2784FF450;
  v4 = *(a1 + 40);
  dispatch_async(v2, block);
}

void __27__BRCSQLBackedSet__closeDB__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) path];
  BRCRemoveFolder(v1, 0, 0, 0);
}

- (void)dealloc
{
  [(BRCSQLBackedSet *)self _closeDB];
  v3.receiver = self;
  v3.super_class = BRCSQLBackedSet;
  [(BRCSQLBackedSet *)&v3 dealloc];
}

- (BOOL)_createSchemaForSQLType:(id)a3 error:(id *)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277D82C18];
  v8 = a3;
  v9 = a3;
  v10 = [v9 UTF8String];
  v11 = [v9 lengthOfBytesUsingEncoding:4];

  v12 = [v7 rawInjection:v10 length:v11];
  db = self->_db;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __49__BRCSQLBackedSet__createSchemaForSQLType_error___block_invoke;
  v23[3] = &unk_2784FFA48;
  v14 = v12;
  v24 = v14;
  v15 = [(BRCPQLConnection *)db performWithFlags:8 action:v23];
  if (v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = [(BRCPQLConnection *)self->_db lastError];
    if (v16)
    {
      v17 = brc_bread_crumbs();
      v18 = brc_default_log();
      if (os_log_type_enabled(v18, 0x90u))
      {
        v22 = "(passed to caller)";
        *buf = 136315906;
        v26 = "[BRCSQLBackedSet _createSchemaForSQLType:error:]";
        v27 = 2080;
        if (!a4)
        {
          v22 = "(ignored by caller)";
        }

        v28 = v22;
        v29 = 2112;
        v30 = v16;
        v31 = 2112;
        v32 = v17;
        _os_log_error_impl(&dword_223E7A000, v18, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }
  }

  if (a4)
  {
    v19 = v16;
    *a4 = v16;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)addObject:(id)a3 error:(id *)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    db = self->_db;
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __35__BRCSQLBackedSet_addObject_error___block_invoke;
    v20 = &unk_278500FA8;
    v21 = v6;
    v22 = self;
    v9 = 1;
    LOBYTE(db) = [(BRCPQLConnection *)db performWithFlags:1 action:&v17];

    if (db)
    {
      goto LABEL_14;
    }

    v10 = [(BRCPQLConnection *)self->_db lastError:v17];
    if (v10)
    {
      v11 = brc_bread_crumbs();
      v12 = brc_default_log();
      if (os_log_type_enabled(v12, 0x90u))
      {
        v13 = "(passed to caller)";
        *buf = 136315906;
        v24 = "[BRCSQLBackedSet addObject:error:]";
        v25 = 2080;
        if (!a4)
        {
          v13 = "(ignored by caller)";
        }

LABEL_17:
        v26 = v13;
        v27 = 2112;
        v28 = v10;
        v29 = 2112;
        v30 = v11;
        _os_log_error_impl(&dword_223E7A000, v12, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
        goto LABEL_10;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v10 = [MEMORY[0x277CCA9B8] brc_errorInvalidParameter:@"object" value:0];
    if (v10)
    {
      v11 = brc_bread_crumbs();
      v12 = brc_default_log();
      if (os_log_type_enabled(v12, 0x90u))
      {
        v13 = "(passed to caller)";
        *buf = 136315906;
        v24 = "[BRCSQLBackedSet addObject:error:]";
        v25 = 2080;
        if (!a4)
        {
          v13 = "(ignored by caller)";
        }

        goto LABEL_17;
      }

LABEL_10:
    }
  }

  if (a4)
  {
    v14 = v10;
    *a4 = v10;
  }

  v9 = 0;
LABEL_14:

  v15 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t __35__BRCSQLBackedSet_addObject_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 execute:{@"INSERT OR IGNORE INTO array_items (item) VALUES (%@)", v3}];
  v6 = [v4 changes];

  *(*(a1 + 40) + 32) += v6;
  return v5;
}

- (void)enumerateObjectsWithSortOrder:(unint64_t)a3 usingBlock:(id)a4
{
  v6 = a4;
  v7 = [[BRCPQLInjectionObjectsEnumerationSortOrder alloc] initWithSortOrder:a3];
  db = self->_db;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__BRCSQLBackedSet_enumerateObjectsWithSortOrder_usingBlock___block_invoke;
  v11[3] = &unk_278501A00;
  v11[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  [(BRCPQLConnection *)db performWithFlags:1 action:v11];
}

uint64_t __60__BRCSQLBackedSet_enumerateObjectsWithSortOrder_usingBlock___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1[4] + 8) fetch:{@"SELECT item FROM array_items %@", a1[5]}];
  while ([v4 next])
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [v4 objectOfClass:*(a1[4] + 24) atIndex:0];
    (*(a1[6] + 16))();

    objc_autoreleasePoolPop(v5);
  }

  [v4 close];

  return 1;
}

- (void)initArrayOfClass:withSQLType:error:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(&dword_223E7A000, v0, OS_LOG_TYPE_DEBUG, "[DEBUG] Opening db at: %@%@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

void __54__BRCSQLBackedSet_initArrayOfClass_withSQLType_error___block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(&dword_223E7A000, v0, 0x90u, "[ERROR] db corruption handler called: %@%@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

@end