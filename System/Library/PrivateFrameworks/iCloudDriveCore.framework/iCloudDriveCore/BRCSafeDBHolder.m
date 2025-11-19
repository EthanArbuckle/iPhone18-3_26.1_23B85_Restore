@interface BRCSafeDBHolder
+ (id)newSafeDBHolder:(id)a3 withDatabaseURL:(id)a4;
- (BOOL)closeWithError:(id *)a3;
- (void)closeDatabaseSynchronously:(BOOL)a3 dispatchToSerialQueue:(BOOL)a4 completionHandler:(id)a5;
- (void)dealloc;
@end

@implementation BRCSafeDBHolder

+ (id)newSafeDBHolder:(id)a3 withDatabaseURL:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = 0;
  if (v6 && v7)
  {
    v9 = objc_alloc_init(BRCSafeDBHolder);
    objc_storeStrong(&v9->_db, a3);
    objc_storeStrong(&v9->_databaseURL, a4);
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v14 = 134218498;
      v15 = v9;
      v16 = 2112;
      v17 = v8;
      v18 = 2112;
      v19 = v10;
      _os_log_debug_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] <BRCSafeDBHolder %p> - Creating for db in path: %@%@", &v14, 0x20u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)closeDatabaseSynchronously:(BOOL)a3 dispatchToSerialQueue:(BOOL)a4 completionHandler:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  v9 = self;
  objc_sync_enter(v9);
  v10 = v9->_db;
  db = v9->_db;
  v9->_db = 0;

  objc_sync_exit(v9);
  if (v10)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"<BRCSafeDBHolder %p>", v9];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __86__BRCSafeDBHolder_closeDatabaseSynchronously_dispatchToSerialQueue_completionHandler___block_invoke;
    v18[3] = &unk_2784FF5B8;
    v13 = v12;
    v19 = v13;
    v14 = v10;
    v20 = v14;
    v21 = v8;
    v15 = MEMORY[0x22AA4A310](v18);
    v16 = v15;
    if (v6)
    {
      if (!v5)
      {
        (*(v15 + 16))(v15);
        goto LABEL_10;
      }

      v17 = [(BRCPQLConnection *)v14 serialQueue];
      dispatch_sync(v17, v16);
    }

    else
    {
      v17 = [(BRCPQLConnection *)v14 serialQueue];
      dispatch_async(v17, v16);
    }

LABEL_10:
    goto LABEL_11;
  }

  if (v8)
  {
    (*(v8 + 2))(v8, 0);
  }

LABEL_11:
}

void __86__BRCSafeDBHolder_closeDatabaseSynchronously_dispatchToSerialQueue_completionHandler___block_invoke(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __86__BRCSafeDBHolder_closeDatabaseSynchronously_dispatchToSerialQueue_completionHandler___block_invoke_cold_1(a1);
  }

  v4 = a1[5];
  v12 = 0;
  v5 = [v4 brc_closeWithError:&v12];
  v6 = v12;
  if (v5)
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __86__BRCSafeDBHolder_closeDatabaseSynchronously_dispatchToSerialQueue_completionHandler___block_invoke_cold_2(a1);
    }
  }

  else
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v11 = a1[4];
      *buf = 138412802;
      v14 = v11;
      v15 = 2112;
      v16 = v6;
      v17 = 2112;
      v18 = v7;
      _os_log_fault_impl(&dword_223E7A000, v8, OS_LOG_TYPE_FAULT, "[CRIT] %@ - Error closing BRCPendingChangesStream DB connection: %@%@", buf, 0x20u);
    }
  }

  v9 = a1[6];
  if (v9)
  {
    (*(v9 + 16))(v9, v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)closeWithError:(id *)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__4;
  v16 = __Block_byref_object_dispose__4;
  v17 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __34__BRCSafeDBHolder_closeWithError___block_invoke;
  v11[3] = &unk_2785000C0;
  v11[4] = &v12;
  [(BRCSafeDBHolder *)self closeDatabaseSynchronously:1 dispatchToSerialQueue:0 completionHandler:v11];
  v4 = v13[5];
  if (v4)
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, 0x90u))
    {
      v10 = "(passed to caller)";
      *buf = 136315906;
      v19 = "[BRCSafeDBHolder closeWithError:]";
      v20 = 2080;
      if (!a3)
      {
        v10 = "(ignored by caller)";
      }

      v21 = v10;
      v22 = 2112;
      v23 = v4;
      v24 = 2112;
      v25 = v5;
      _os_log_error_impl(&dword_223E7A000, v6, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
    }
  }

  if (a3)
  {
    v7 = v4;
    *a3 = v4;
  }

  _Block_object_dispose(&v12, 8);
  v8 = *MEMORY[0x277D85DE8];
  return v4 == 0;
}

- (void)dealloc
{
  v5 = *MEMORY[0x277D85DE8];
  LODWORD(v4) = 134218242;
  *(&v4 + 4) = a1;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v1, v2, "[DEBUG] <BRCSafeDBHolder %p> - dealloc called%@", v4, DWORD2(v4));
  v3 = *MEMORY[0x277D85DE8];
}

void __86__BRCSafeDBHolder_closeDatabaseSynchronously_dispatchToSerialQueue_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  LODWORD(v4) = 138412546;
  *(&v4 + 4) = *(a1 + 32);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v1, v2, "[DEBUG] %@ - Closing the database%@", v4, DWORD2(v4));
  v3 = *MEMORY[0x277D85DE8];
}

void __86__BRCSafeDBHolder_closeDatabaseSynchronously_dispatchToSerialQueue_completionHandler___block_invoke_cold_2(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  LODWORD(v4) = 138412546;
  *(&v4 + 4) = *(a1 + 32);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v1, v2, "[DEBUG] %@ - Database closed%@", v4, DWORD2(v4));
  v3 = *MEMORY[0x277D85DE8];
}

@end