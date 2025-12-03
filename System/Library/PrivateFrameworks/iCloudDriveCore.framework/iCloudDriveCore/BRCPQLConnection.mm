@interface BRCPQLConnection
- (BOOL)_registerStaticDBFunctionsWithError:(id *)error;
- (BOOL)_shouldFlushWithChangeCount:(int)count;
- (BOOL)_validateIsRunningWithCorrectPersona;
- (BOOL)attachDBAtPath:(id)path as:(id)as error:(id *)error;
- (BOOL)brc_closeWithError:(id *)error;
- (BOOL)execute:(id)execute args:(char *)args;
- (BOOL)executeRaw:(id)raw;
- (BOOL)executeWithErrorHandler:(id)handler sql:(id)sql;
- (BOOL)executeWithExpectedIndex:(id)index sql:(id)sql;
- (BOOL)executeWithSlowStatementRadar:(id)radar sql:(id)sql;
- (BOOL)needsAutovacuum;
- (BOOL)openAtURL:(id)l withFlags:(int)flags error:(id *)error;
- (BOOL)profilingEnabled;
- (BRCPQLConnection)initWithLabel:(id)label dbCorruptionHandler:(id)handler;
- (id)fetch:(id)fetch args:(char *)args;
- (id)fetchObject:(id)object sql:(id)sql args:(char *)args;
- (id)fetchObjectOfClass:(Class)class initializer:(SEL)initializer sql:(id)sql args:(char *)args;
- (id)fetchObjectOfClass:(Class)class sql:(id)sql args:(char *)args;
- (id)fetchWithExpectedIndex:(id)index sql:(id)sql;
- (id)fetchWithSlowStatementRadar:(id)radar objectOfClass:(Class)class sql:(id)sql;
- (id)fetchWithSlowStatementRadar:(id)radar objectWithConstructor:(id)constructor sql:(id)sql;
- (id)fetchWithSlowStatementRadar:(id)radar sql:(id)sql;
- (int64_t)changes;
- (int64_t)sizeInBytes;
- (void)_setErrorHandlerWithDBCorruptionHandler:(id)handler;
- (void)assertOnQueue;
- (void)autovacuumIfNeeded;
- (void)brc_close;
- (void)disableProfilingForQueriesInBlock:(id)block;
- (void)flushToMakeEditsVisibleToIPCReaders;
- (void)scheduleFlushWithCheckpoint:(BOOL)checkpoint whenFlushed:(id)flushed;
- (void)setProfilingEnabled:(BOOL)enabled;
- (void)setProfilingHook:(id)hook;
- (void)usePacedBatchingOnTargetQueue:(id)queue withInterval:(double)interval changeCount:(int)count;
@end

@implementation BRCPQLConnection

- (void)assertOnQueue
{
  v3.receiver = self;
  v3.super_class = BRCPQLConnection;
  [(BRCPQLConnection *)&v3 assertOnQueue];
  [(BRCPQLConnection *)self _validateIsRunningWithCorrectPersona];
}

- (BOOL)_validateIsRunningWithCorrectPersona
{
  v17 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
  br_currentPersonaID = [mEMORY[0x277D77BF8] br_currentPersonaID];

  if (self->_assertionPersonaIdentifier && ([br_currentPersonaID isEqualToString:?] & 1) == 0)
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      assertionPersonaIdentifier = self->_assertionPersonaIdentifier;
      v11 = 138412802;
      v12 = br_currentPersonaID;
      v13 = 2112;
      v14 = assertionPersonaIdentifier;
      v15 = 2112;
      v16 = v6;
      _os_log_fault_impl(&dword_223E7A000, v7, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Running on the connection with the wrong persona (%@ vs %@)%@", &v11, 0x20u);
    }

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

- (int64_t)changes
{
  changesOverride = self->_changesOverride;
  if (!changesOverride)
  {
    v4.receiver = self;
    v4.super_class = BRCPQLConnection;
    return [(BRCPQLConnection *)&v4 changes];
  }

  return changesOverride;
}

- (BRCPQLConnection)initWithLabel:(id)label dbCorruptionHandler:(id)handler
{
  labelCopy = label;
  handlerCopy = handler;
  v12.receiver = self;
  v12.super_class = BRCPQLConnection;
  v8 = [(BRCPQLConnection *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(BRCPQLConnection *)v8 _setErrorHandlerWithDBCorruptionHandler:handlerCopy];
    [(BRCPQLConnection *)v9 _setLockedHandler];
    [(BRCPQLConnection *)v9 setLabel:labelCopy];
    v10 = [BRCUserDefaults defaultsForMangledID:0];
    -[BRCPQLConnection setTraced:](v9, "setTraced:", [v10 dbTraced]);

    [(BRCPQLConnection *)v9 setCrashIfUsedAfterClose:1];
  }

  return v9;
}

- (void)_setErrorHandlerWithDBCorruptionHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__BRCPQLConnection__setErrorHandlerWithDBCorruptionHandler___block_invoke;
  v6[3] = &unk_2784FF300;
  v5 = handlerCopy;
  v7 = v5;
  objc_copyWeak(&v8, &location);
  [(BRCPQLConnection *)self setSqliteErrorHandler:v6];
  objc_destroyWeak(&v8);

  objc_destroyWeak(&location);
}

void __60__BRCPQLConnection__setErrorHandlerWithDBCorruptionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, 0x90u))
    {
      *v22 = 138413058;
      *&v22[4] = v8;
      *&v22[12] = 2112;
      *&v22[14] = v7;
      *&v22[22] = 2112;
      v23 = v9;
      LOWORD(v24) = 2112;
      *(&v24 + 2) = v10;
      v12 = "[ERROR] Sqlite request %@ failed on %@ with error [%@]%@";
      v13 = v11;
      v14 = 42;
LABEL_15:
      _os_log_error_impl(&dword_223E7A000, v13, 0x90u, v12, v22, v14);
    }
  }

  else
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, 0x90u))
    {
      *v22 = 138412802;
      *&v22[4] = v7;
      *&v22[12] = 2112;
      *&v22[14] = v9;
      *&v22[22] = 2112;
      v23 = v10;
      v12 = "[ERROR] Sqlite failed on %@ with error [%@]%@";
      v13 = v11;
      v14 = 32;
      goto LABEL_15;
    }
  }

  v15 = [v9 code];
  if (v15 <= 0x15 && ((1 << v15) & 0x380002) != 0)
  {
    v16 = brc_bread_crumbs();
    v17 = brc_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      __60__BRCPQLConnection__setErrorHandlerWithDBCorruptionHandler___block_invoke_cold_1();
    }
  }

  v18 = [v9 code];
  if (v18 <= 0x1A && ((1 << v18) & 0x5000800) != 0)
  {
    v19 = *(a1 + 32);
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    (*(v19 + 16))(v19, WeakRetained, v9, &__block_literal_global_1);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __60__BRCPQLConnection__setErrorHandlerWithDBCorruptionHandler___block_invoke_80()
{
  v8 = *MEMORY[0x277D85DE8];
  abc_report_panic_with_signature();
  [MEMORY[0x277CCACA8] stringWithFormat:@"Sqlite database became corrupted, abort..."];
  objc_claimAutoreleasedReturnValue();
  v0 = brc_bread_crumbs();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    v2 = brc_append_system_info_to_message();
    v4 = 138412546;
    v5 = v2;
    v6 = 2112;
    v7 = v0;
    _os_log_fault_impl(&dword_223E7A000, v1, OS_LOG_TYPE_FAULT, "[CRIT] %@%@", &v4, 0x16u);
  }

  brc_append_system_info_to_message();
  v3 = [objc_claimAutoreleasedReturnValue() UTF8String];
  __assert_rtn("[BRCPQLConnection _setErrorHandlerWithDBCorruptionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CloudDocs_plugins/core/shared/foundation/BRCPQLConnection.m", 184, v3);
}

uint64_t __37__BRCPQLConnection__setLockedHandler__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = a4;
  [v6 currentOperationDuration];
  v10 = v9;
  if (v9 >= 60.0)
  {
    if (v7)
    {
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"(on statement %@)", v7];
    }

    else
    {
      v17 = &stru_2837504F0;
    }

    abc_report_panic_with_signature();
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@ locked for more than 1 minute %@, aborting...", v6, v17];
    objc_claimAutoreleasedReturnValue();
    v18 = brc_bread_crumbs();
    v19 = brc_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      __37__BRCPQLConnection__setLockedHandler__block_invoke_cold_1();
    }

    brc_append_system_info_to_message();
    v20 = [objc_claimAutoreleasedReturnValue() UTF8String];
    __assert_rtn("[BRCPQLConnection _setLockedHandler]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CloudDocs_plugins/core/shared/foundation/BRCPQLConnection.m", 202, v20);
  }

  v11 = [MEMORY[0x277CCAB68] stringWithFormat:@"%@ has been locked for %f seconds: %@", v6, *&v9, v8];
  v12 = v11;
  if (v7)
  {
    [v11 appendFormat:@" (for statement %@)", v7];
  }

  if (v10 >= 30.0)
  {
    v13 = brc_bread_crumbs();
    v14 = brc_default_log();
    if (os_log_type_enabled(v14, 0x90u))
    {
      __37__BRCPQLConnection__setLockedHandler__block_invoke_cold_2();
    }
  }

  else
  {
    v13 = brc_bread_crumbs();
    v14 = brc_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v22 = v12;
      v23 = 2112;
      v24 = v13;
      _os_log_impl(&dword_223E7A000, v14, OS_LOG_TYPE_DEFAULT, "[WARNING] %@%@", buf, 0x16u);
    }
  }

  usleep(0x2710u);
  v15 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)_registerStaticDBFunctionsWithError:(id *)error
{
  v26 = 0;
  v5 = [(PQLConnection *)self registerFunction:@"fetch_and_inc64" nArgs:1 handler:&__block_literal_global_109 error:&v26];
  v6 = v26;
  v7 = v6;
  if (!v5)
  {
    goto LABEL_15;
  }

  v25 = v6;
  v8 = [(PQLConnection *)self registerFunction:@"inc_and_fetch64" nArgs:1 handler:&__block_literal_global_114 error:&v25];
  v9 = v25;

  if (!v8)
  {
    goto LABEL_14;
  }

  v24 = v9;
  v10 = [(PQLConnection *)self registerFunction:@"fetch_and_dec64" nArgs:1 handler:&__block_literal_global_119 error:&v24];
  v7 = v24;

  if (v10)
  {
    v23 = v7;
    v11 = [(PQLConnection *)self registerFunction:@"dec_and_fetch64" nArgs:1 handler:&__block_literal_global_124 error:&v23];
    v9 = v23;

    if (!v11)
    {
LABEL_14:
      v7 = v9;
      goto LABEL_15;
    }

    v22 = v9;
    v12 = [(PQLConnection *)self registerFunction:@"call_block" nArgs:0xFFFFFFFFLL handler:&__block_literal_global_129 error:&v22];
    v7 = v22;

    if (v12)
    {
      v21 = v7;
      v13 = [(PQLConnection *)self registerFunction:@"indexset_contains" nArgs:2 handler:&__block_literal_global_135 error:&v21];
      v9 = v21;

      if (v13 && [(BRCPQLConnection *)self registerFunction:@"item_id_is_root" nArgs:1 handler:&__block_literal_global_142]&& [(BRCPQLConnection *)self registerFunction:@"item_id_is_documents" nArgs:1 handler:&__block_literal_global_149]&& [(BRCPQLConnection *)self registerFunction:@"item_id_is_app_library_root" nArgs:1 handler:&__block_literal_global_155]&& [(BRCPQLConnection *)self registerFunction:@"item_id_is_shared_root" nArgs:1 handler:&__block_literal_global_161]&& [(BRCPQLConnection *)self registerFunction:@"app_library_rowid_from_root_or_documents" nArgs:1 handler:&__block_literal_global_167])
      {
        v20 = v9;
        v14 = 1;
        v15 = [(PQLConnection *)self registerFunction:@"validation_key" nArgs:1 handler:&__block_literal_global_172 error:&v20];
        v7 = v20;

        if (v15)
        {
          goto LABEL_20;
        }

        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

LABEL_15:
  v16 = brc_bread_crumbs();
  v17 = brc_default_log();
  if (os_log_type_enabled(v17, 0x90u))
  {
    [BRCPQLConnection _registerStaticDBFunctionsWithError:];
  }

  if (error)
  {
    v18 = v7;
    v14 = 0;
    *error = v7;
  }

  else
  {
    v14 = 0;
  }

LABEL_20:

  return v14;
}

void __56__BRCPQLConnection__registerStaticDBFunctionsWithError___block_invoke(uint64_t a1, sqlite3_context *a2, uint64_t a3, uint64_t *a4)
{
  v5 = *a4;
  v6 = pql_sqlite3_value_pointer();
  if (v6)
  {
    v7 = (*v6)++;

    sqlite3_result_int64(a2, v7);
  }

  else
  {

    sqlite3_result_null(a2);
  }
}

void __56__BRCPQLConnection__registerStaticDBFunctionsWithError___block_invoke_2(uint64_t a1, sqlite3_context *a2, uint64_t a3, uint64_t *a4)
{
  v5 = *a4;
  v6 = pql_sqlite3_value_pointer();
  if (v6)
  {
    v7 = *v6 + 1;
    *v6 = v7;

    sqlite3_result_int64(a2, v7);
  }

  else
  {

    sqlite3_result_null(a2);
  }
}

void __56__BRCPQLConnection__registerStaticDBFunctionsWithError___block_invoke_3(uint64_t a1, sqlite3_context *a2, uint64_t a3, uint64_t *a4)
{
  v5 = *a4;
  v6 = pql_sqlite3_value_pointer();
  if (v6)
  {
    v7 = (*v6)--;

    sqlite3_result_int64(a2, v7);
  }

  else
  {

    sqlite3_result_null(a2);
  }
}

void __56__BRCPQLConnection__registerStaticDBFunctionsWithError___block_invoke_4(uint64_t a1, sqlite3_context *a2, uint64_t a3, uint64_t *a4)
{
  v5 = *a4;
  v6 = pql_sqlite3_value_pointer();
  if (v6)
  {
    v7 = *v6 - 1;
    *v6 = v7;

    sqlite3_result_int64(a2, v7);
  }

  else
  {

    sqlite3_result_null(a2);
  }
}

void __56__BRCPQLConnection__registerStaticDBFunctionsWithError___block_invoke_5(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  if (a3 <= 0)
  {
    __56__BRCPQLConnection__registerStaticDBFunctionsWithError___block_invoke_5_cold_1();
  }

  v7 = *a4;
  v8 = pql_sqlite3_value_object();
  (v8)[2](v8, a2, (a3 - 1), a4 + 1);
}

void __56__BRCPQLConnection__registerStaticDBFunctionsWithError___block_invoke_133(uint64_t a1, sqlite3_context *a2, uint64_t a3, sqlite3_value **a4)
{
  v6 = *a4;
  v7 = pql_sqlite3_value_object();
  if (v7)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      __56__BRCPQLConnection__registerStaticDBFunctionsWithError___block_invoke_133_cold_1();
    }
  }

  if (sqlite3_value_type(*a4) == 1)
  {
    v8 = [v7 containsIndex:sqlite3_value_int64(a4[1])];
  }

  else
  {
    v8 = 0;
  }

  sqlite3_result_int(a2, v8);
}

void __56__BRCPQLConnection__registerStaticDBFunctionsWithError___block_invoke_140(uint64_t a1, sqlite3_context *a2, uint64_t a3, void *a4)
{
  v5 = [BRCItemID isRootItemIDWithSQLiteValue:*a4];

  sqlite3_result_int(a2, v5);
}

void __56__BRCPQLConnection__registerStaticDBFunctionsWithError___block_invoke_2_147(uint64_t a1, sqlite3_context *a2, uint64_t a3, void *a4)
{
  v5 = [BRCItemID isDocumentsItemIDWithSQLiteValue:*a4];

  sqlite3_result_int(a2, v5);
}

void __56__BRCPQLConnection__registerStaticDBFunctionsWithError___block_invoke_3_153(uint64_t a1, sqlite3_context *a2, uint64_t a3, void *a4)
{
  v5 = [BRCItemID isAppLibraryRootItemIDWithSQLiteValue:*a4];

  sqlite3_result_int(a2, v5);
}

void __56__BRCPQLConnection__registerStaticDBFunctionsWithError___block_invoke_4_159(uint64_t a1, sqlite3_context *a2, uint64_t a3, void *a4)
{
  v5 = [BRCItemID isSharedZoneRootItemIDWithSQLiteValue:*a4];

  sqlite3_result_int(a2, v5);
}

void __56__BRCPQLConnection__registerStaticDBFunctionsWithError___block_invoke_5_165(uint64_t a1, sqlite3_context *a2, uint64_t a3, void *a4)
{
  v5 = [BRCItemID appLibraryRowIDFromRootOrDocumentsSQLiteValue:*a4];
  v6 = v5;
  if (v5)
  {
    sqlite3_result_int64(a2, [v5 unsignedLongLongValue]);
  }

  else
  {
    sqlite3_result_null(a2);
  }
}

void __56__BRCPQLConnection__registerStaticDBFunctionsWithError___block_invoke_6(uint64_t a1, sqlite3_context *a2, int a3, void *a4)
{
  if (a3 != 1)
  {
    __56__BRCPQLConnection__registerStaticDBFunctionsWithError___block_invoke_6_cold_1();
  }

  v6 = [MEMORY[0x277CBEA90] newFromSqliteValue:*a4];
  v7 = [v6 brc_truncatedSHA256];
  v8 = v7;
  if (v7)
  {
    sqlite3_result_blob(a2, [v7 bytes], objc_msgSend(v7, "length"), 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_result_null(a2);
  }
}

- (BOOL)openAtURL:(id)l withFlags:(int)flags error:(id *)error
{
  flagsCopy = flags;
  v10.receiver = self;
  v10.super_class = BRCPQLConnection;
  v8 = [BRCPQLConnection openAtURL:sel_openAtURL_withFlags_error_ withFlags:l error:?];
  if (v8)
  {
    self->_isReadonly = flagsCopy & 1;
    if ((flagsCopy & 1) != 0 || ([(BRCPQLConnection *)self setupPragmas]& 1) != 0)
    {
      if ([(BRCPQLConnection *)self _registerStaticDBFunctionsWithError:error])
      {
        LOBYTE(v8) = 1;
        return v8;
      }
    }

    else if (error)
    {
      *error = [(BRCPQLConnection *)self lastError];
    }

    [(BRCPQLConnection *)self brc_close];
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (BOOL)profilingEnabled
{
  profilingHook = [(BRCPQLConnection *)self profilingHook];
  v3 = profilingHook != 0;

  return v3;
}

- (void)setProfilingEnabled:(BOOL)enabled
{
  if (enabled)
  {
    LOBYTE(v6) = self->_verboseProfilingEnabled;
    [(BRCPQLConnection *)&v4 setProfilingHook:v5, v3.receiver, v3.super_class, self, BRCPQLConnection, MEMORY[0x277D85DD0], 3221225472, __40__BRCPQLConnection_setProfilingEnabled___block_invoke, &unk_2784FF368, self, v6];
  }

  else
  {
    self->_changesOverride = 0;
    [(BRCPQLConnection *)&v3 setProfilingHook:&__block_literal_global_190, self, BRCPQLConnection, v4.receiver, v4.super_class, v5[0], v5[1], v5[2], v5[3], v5[4], v6];
  }
}

void __40__BRCPQLConnection_setProfilingEnabled___block_invoke(uint64_t a1, void *a2, sqlite3_stmt *a3, uint64_t a4)
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = sqlite3_column_count(a3);
  v9 = sqlite3_bind_parameter_count(a3);
  v10 = sqlite3_stmt_status(a3, 4, 0);
  v11 = sqlite3_sql(a3);
  if (strncmp(v11, "explain query plan", 0x12uLL))
  {
    v7[38] += v10;
    *(*(a1 + 32) + 288) = 0;
    if (v8)
    {
      v12 = (8 * v9 + 4 * v8) + (8 * v9 + 4 * v8) * a4 + 150;
      if ((*(a1 + 40) & 1) != 0 || v12 < v10)
      {
        v27 = brc_bread_crumbs();
        v13 = brc_default_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          if (*(a1 + 40))
          {
            v14 = "Verbose statement profile on";
          }

          else
          {
            v14 = "Possible slow statement on";
          }

          queryPlanForSQL(v11, v7);
          *buf = 136317442;
          *v30 = v14;
          *&v30[8] = 2112;
          *&v30[10] = v7;
          *&v30[18] = 1024;
          *&v30[20] = v9;
          v31 = 1024;
          *v32 = v8;
          *&v32[4] = 2048;
          *&v32[6] = a4;
          v33 = 1024;
          *v34 = v10;
          *&v34[4] = 2048;
          *&v34[6] = (8 * v9 + 4 * v8) + (8 * v9 + 4 * v8) * a4 + 150;
          *&v34[14] = 2080;
          *&v34[16] = v11;
          v15 = *&v34[24] = 2112;
          *&v34[26] = v15;
          *&v34[34] = 2112;
          *&v34[36] = v27;
          _os_log_impl(&dword_223E7A000, v13, OS_LOG_TYPE_DEFAULT, "[WARNING] %s %@:\n  binds:    %d\n  columns:  %d\n  rows:     %ld\n  vm steps: %d (max: %lu)\n  sql:      %s\n  %@%@", buf, 0x5Au);
        }
      }
    }

    else
    {
      v16 = [v7 changes];
      v12 = v16 * (8 * v9 + 175) + 175;
      if ((*(a1 + 40) & 1) != 0 || v12 < v10)
      {
        v28 = brc_bread_crumbs();
        v17 = brc_default_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          if (*(a1 + 40))
          {
            v18 = "Verbose statement profile on";
          }

          else
          {
            v18 = "Possible slow statement on";
          }

          v26 = v18;
          queryPlanForSQL(v11, v7);
          *buf = 136317186;
          *v30 = v26;
          *&v30[8] = 2112;
          *&v30[10] = v7;
          *&v30[18] = 1024;
          *&v30[20] = v9;
          v31 = 2048;
          *v32 = v16;
          *&v32[8] = 1024;
          *&v32[10] = v10;
          v33 = 2048;
          *v34 = v16 * (8 * v9 + 175) + 175;
          *&v34[8] = 2080;
          *&v34[10] = v11;
          v19 = *&v34[18] = 2112;
          *&v34[20] = v19;
          *&v34[28] = 2112;
          *&v34[30] = v28;
          _os_log_impl(&dword_223E7A000, v17, OS_LOG_TYPE_DEFAULT, "[WARNING] %s %@:\n  binds:    %d\n  changes:  %lld\n  vm steps: %d (max: %lu)\n  sql:      %s\n  %@%@", buf, 0x54u);
        }

        *(*(a1 + 32) + 288) = v16;
      }
    }

    if (10 * v12 < v10)
    {
      v20 = brc_bread_crumbs();
      v21 = brc_default_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        *buf = 67109890;
        *v30 = v10;
        *&v30[4] = 2048;
        *&v30[6] = v12;
        *&v30[14] = 2080;
        *&v30[16] = v11;
        v31 = 2112;
        *v32 = v20;
        _os_log_fault_impl(&dword_223E7A000, v21, OS_LOG_TYPE_FAULT, "[CRIT] Significantly too slow SQL statement(vm steps: %u  max:%lu): %s%@", buf, 0x26u);
      }

      if (v11)
      {
        v22 = v11;
      }

      else
      {
        v22 = "(null)";
      }

      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:{v22, v26}];
      v24 = [@"Significantly too slow SQL statement: " stringByAppendingString:v23];
      abc_report_assert_with_signature();
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

uint64_t __40__BRCPQLConnection_setProfilingEnabled___block_invoke_188(uint64_t a1, void *a2, sqlite3_stmt *a3)
{
  v5 = a2;
  v5[38] += sqlite3_stmt_status(a3, 4, 0);

  return MEMORY[0x2821F96F8]();
}

- (BOOL)attachDBAtPath:(id)path as:(id)as error:(id *)error
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CCACA8];
  asCopy = as;
  pathCopy = path;
  asCopy = [[v8 alloc] initWithFormat:@"ATTACH %@ AS %@", pathCopy, asCopy];

  v12 = [(BRCPQLConnection *)self executeRaw:asCopy];
  if (!v12)
  {
    lastError = [(BRCPQLConnection *)self lastError];
    if (lastError)
    {
      v14 = brc_bread_crumbs();
      v15 = brc_default_log();
      if (os_log_type_enabled(v15, 0x90u))
      {
        v19 = "(passed to caller)";
        *buf = 136315906;
        v21 = "[BRCPQLConnection attachDBAtPath:as:error:]";
        v22 = 2080;
        if (!error)
        {
          v19 = "(ignored by caller)";
        }

        v23 = v19;
        v24 = 2112;
        v25 = lastError;
        v26 = 2112;
        v27 = v14;
        _os_log_error_impl(&dword_223E7A000, v15, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    if (error)
    {
      v16 = lastError;
      *error = lastError;
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)flushToMakeEditsVisibleToIPCReaders
{
  if (([(BRCPQLConnection *)self isInTransaction]& 1) != 0)
  {
    self->_flushImmediately = 1;

    [(BRCPQLConnection *)self forceBatchStart];
  }

  else
  {

    [(BRCPQLConnection *)self flush];
  }
}

- (void)scheduleFlushWithCheckpoint:(BOOL)checkpoint whenFlushed:(id)flushed
{
  flushedCopy = flushed;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __60__BRCPQLConnection_scheduleFlushWithCheckpoint_whenFlushed___block_invoke;
  v10[3] = &unk_2784FF3B0;
  v10[4] = self;
  checkpointCopy = checkpoint;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__BRCPQLConnection_scheduleFlushWithCheckpoint_whenFlushed___block_invoke_2;
  v8[3] = &unk_2784FF3D8;
  v9 = flushedCopy;
  v7 = flushedCopy;
  [(BRCPQLConnection *)self performWithFlags:4 action:v10 whenFlushed:v8];
}

uint64_t __60__BRCPQLConnection_scheduleFlushWithCheckpoint_whenFlushed___block_invoke(uint64_t a1)
{
  [*(a1 + 32) forceBatchStart];
  if (*(a1 + 40) == 1)
  {
    [*(a1 + 32) br_makeNextFlushCheckpoint];
  }

  return 1;
}

- (void)setProfilingHook:(id)hook
{
  v12 = *MEMORY[0x277D85DE8];
  hookCopy = hook;
  abc_report_panic_with_signature();
  [MEMORY[0x277CCACA8] stringWithFormat:@"setting profiling hook is not supported on %@", objc_opt_class()];
  objc_claimAutoreleasedReturnValue();
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    v6 = brc_append_system_info_to_message();
    *buf = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = v4;
    _os_log_fault_impl(&dword_223E7A000, v5, OS_LOG_TYPE_FAULT, "[CRIT] %@%@", buf, 0x16u);
  }

  brc_append_system_info_to_message();
  uTF8String = [objc_claimAutoreleasedReturnValue() UTF8String];
  __assert_rtn("[BRCPQLConnection setProfilingHook:]", "/Library/Caches/com.apple.xbs/Sources/CloudDocs_plugins/core/shared/foundation/BRCPQLConnection.m", 476, uTF8String);
}

- (id)fetchWithExpectedIndex:(id)index sql:(id)sql
{
  sqlCopy = sql;
  indexCopy = index;
  [(BRCPQLConnection *)self assertOnQueue];
  v8 = [indexCopy length];

  if (!v8)
  {
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [BRCPQLConnection fetchWithExpectedIndex:sql:];
    }
  }

  v11 = [(BRCPQLConnection *)self fetch:sqlCopy args:&v13];

  return v11;
}

- (id)fetchWithSlowStatementRadar:(id)radar sql:(id)sql
{
  sqlCopy = sql;
  radarCopy = radar;
  [(BRCPQLConnection *)self assertOnQueue];
  v17 = 0;
  v8 = [radarCopy length];

  if (!v8)
  {
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [BRCPQLConnection fetchWithSlowStatementRadar:sql:];
    }
  }

  v17 = &v18;
  v16.receiver = self;
  v16.super_class = BRCPQLConnection;
  profilingHook = [(BRCPQLConnection *)&v16 profilingHook];
  v15.receiver = self;
  v15.super_class = BRCPQLConnection;
  [(BRCPQLConnection *)&v15 setProfilingHook:0];
  v12 = [(BRCPQLConnection *)self fetch:sqlCopy args:v17];

  v14.receiver = self;
  v14.super_class = BRCPQLConnection;
  [(BRCPQLConnection *)&v14 setProfilingHook:profilingHook];

  return v12;
}

- (id)fetchWithSlowStatementRadar:(id)radar objectOfClass:(Class)class sql:(id)sql
{
  sqlCopy = sql;
  radarCopy = radar;
  [(BRCPQLConnection *)self assertOnQueue];
  v19 = 0;
  v10 = [radarCopy length];

  if (!v10)
  {
    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [BRCPQLConnection fetchWithSlowStatementRadar:sql:];
    }
  }

  v19 = &v20;
  v18.receiver = self;
  v18.super_class = BRCPQLConnection;
  profilingHook = [(BRCPQLConnection *)&v18 profilingHook];
  v17.receiver = self;
  v17.super_class = BRCPQLConnection;
  [(BRCPQLConnection *)&v17 setProfilingHook:0];
  v14 = [(BRCPQLConnection *)self fetchObjectOfClass:class sql:sqlCopy args:v19];

  v16.receiver = self;
  v16.super_class = BRCPQLConnection;
  [(BRCPQLConnection *)&v16 setProfilingHook:profilingHook];

  return v14;
}

- (id)fetchWithSlowStatementRadar:(id)radar objectWithConstructor:(id)constructor sql:(id)sql
{
  sqlCopy = sql;
  constructorCopy = constructor;
  radarCopy = radar;
  [(BRCPQLConnection *)self assertOnQueue];
  v20 = 0;
  v11 = [radarCopy length];

  if (!v11)
  {
    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [BRCPQLConnection fetchWithSlowStatementRadar:sql:];
    }
  }

  v20 = &v21;
  v19.receiver = self;
  v19.super_class = BRCPQLConnection;
  profilingHook = [(BRCPQLConnection *)&v19 profilingHook];
  v18.receiver = self;
  v18.super_class = BRCPQLConnection;
  [(BRCPQLConnection *)&v18 setProfilingHook:0];
  v15 = [(BRCPQLConnection *)self fetchObject:constructorCopy sql:sqlCopy args:v20];

  v17.receiver = self;
  v17.super_class = BRCPQLConnection;
  [(BRCPQLConnection *)&v17 setProfilingHook:profilingHook];

  return v15;
}

- (BOOL)executeWithExpectedIndex:(id)index sql:(id)sql
{
  sqlCopy = sql;
  indexCopy = index;
  [(BRCPQLConnection *)self assertOnQueue];
  v8 = [indexCopy length];

  if (!v8)
  {
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [BRCPQLConnection executeWithExpectedIndex:sql:];
    }
  }

  v11 = [(BRCPQLConnection *)self execute:sqlCopy args:&v13];

  return v11;
}

- (BOOL)executeWithSlowStatementRadar:(id)radar sql:(id)sql
{
  sqlCopy = sql;
  radarCopy = radar;
  [(BRCPQLConnection *)self assertOnQueue];
  v17 = 0;
  v8 = [radarCopy length];

  if (!v8)
  {
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [BRCPQLConnection fetchWithSlowStatementRadar:sql:];
    }
  }

  v17 = &v18;
  v16.receiver = self;
  v16.super_class = BRCPQLConnection;
  profilingHook = [(BRCPQLConnection *)&v16 profilingHook];
  v15.receiver = self;
  v15.super_class = BRCPQLConnection;
  [(BRCPQLConnection *)&v15 setProfilingHook:0];
  v12 = [(BRCPQLConnection *)self execute:sqlCopy args:v17];

  v14.receiver = self;
  v14.super_class = BRCPQLConnection;
  [(BRCPQLConnection *)&v14 setProfilingHook:profilingHook];

  return v12;
}

- (BOOL)executeWithErrorHandler:(id)handler sql:(id)sql
{
  handlerCopy = handler;
  sqlCopy = sql;
  [(BRCPQLConnection *)self assertOnQueue];
  v14 = &v15;
  if (handlerCopy)
  {
    v13.receiver = self;
    v13.super_class = BRCPQLConnection;
    sqliteErrorHandler = [(BRCPQLConnection *)&v13 sqliteErrorHandler];
    v12.receiver = self;
    v12.super_class = BRCPQLConnection;
    [(BRCPQLConnection *)&v12 setSqliteErrorHandler:handlerCopy];
    v9 = [(BRCPQLConnection *)self execute:sqlCopy args:v14];
    v11.receiver = self;
    v11.super_class = BRCPQLConnection;
    [(BRCPQLConnection *)&v11 setSqliteErrorHandler:sqliteErrorHandler];
  }

  else
  {
    v9 = [(BRCPQLConnection *)self execute:sqlCopy args:v14];
  }

  return v9;
}

- (void)disableProfilingForQueriesInBlock:(id)block
{
  blockCopy = block;
  [(BRCPQLConnection *)self assertOnQueue];
  if (!blockCopy)
  {
    [BRCPQLConnection disableProfilingForQueriesInBlock:];
  }

  v8.receiver = self;
  v8.super_class = BRCPQLConnection;
  profilingHook = [(BRCPQLConnection *)&v8 profilingHook];
  v7.receiver = self;
  v7.super_class = BRCPQLConnection;
  [(BRCPQLConnection *)&v7 setProfilingHook:0];
  blockCopy[2](blockCopy);

  v6.receiver = self;
  v6.super_class = BRCPQLConnection;
  [(BRCPQLConnection *)&v6 setProfilingHook:profilingHook];
}

- (BOOL)_shouldFlushWithChangeCount:(int)count
{
  [(BRCPQLConnection *)self assertOnQueue];
  if (count == -2)
  {
    if (!self->_batchingPacer)
    {
      flushInterval = self->_flushInterval;
      serialQueue = [(BRCPQLConnection *)self serialQueue];
      v8 = br_pacer_create();
      batchingPacer = self->_batchingPacer;
      self->_batchingPacer = v8;

      objc_initWeak(&location, self);
      v10 = self->_batchingPacer;
      objc_copyWeak(&v16, &location);
      br_pacer_set_event_handler();
      v11 = self->_batchingPacer;
      br_pacer_resume();
      objc_destroyWeak(&v16);
      objc_destroyWeak(&location);
      v12 = self->_batchingPacer;
    }

    br_pacer_signal_at_most_after_min_interval();
    goto LABEL_17;
  }

  if (count == -1)
  {
    v5 = self->_batchingPacer;
    if (v5)
    {
      br_pacer_pretend_event_handler_fired();
LABEL_17:
      LOBYTE(v5) = 0;
    }
  }

  else
  {
    changeCount = self->_changeCount;
    if (changeCount)
    {
      v14 = changeCount <= count;
    }

    else
    {
      v14 = 0;
    }

    if (!v14 && !self->_flushImmediately)
    {
      if (!self->_batchingPacer)
      {
        [(BRCPQLConnection *)&self->_batchingPacer _shouldFlushWithChangeCount:?];
      }

      br_pacer_signal();
      goto LABEL_17;
    }

    self->_flushImmediately = 0;
    LOBYTE(v5) = 1;
  }

  return v5;
}

void __48__BRCPQLConnection__shouldFlushWithChangeCount___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[280] = 0;
    v2 = WeakRetained;
    [WeakRetained flush];
    WeakRetained = v2;
  }
}

- (void)usePacedBatchingOnTargetQueue:(id)queue withInterval:(double)interval changeCount:(int)count
{
  self->_changeCount = count;
  self->_flushInterval = interval;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __75__BRCPQLConnection_usePacedBatchingOnTargetQueue_withInterval_changeCount___block_invoke;
  v5[3] = &unk_2784FF428;
  v5[4] = self;
  [(BRCPQLConnection *)self useBatchingOnTargetQueue:queue withPolicyHandler:v5];
}

- (BOOL)brc_closeWithError:(id *)error
{
  v20 = *MEMORY[0x277D85DE8];
  if (self->_batchingPacer)
  {
    br_pacer_cancel();
    batchingPacer = self->_batchingPacer;
    self->_batchingPacer = 0;
  }

  v13 = 0;
  v6 = [(BRCPQLConnection *)self close:&v13];
  v7 = v13;
  if ((v6 & 1) == 0)
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412802;
      selfCopy = self;
      v16 = 2112;
      v17 = v7;
      v18 = 2112;
      v19 = v8;
      _os_log_fault_impl(&dword_223E7A000, v9, OS_LOG_TYPE_FAULT, "[CRIT] error closing connection %@: %@%@", buf, 0x20u);
    }
  }

  if (error)
  {
    v10 = v7;
    *error = v7;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)brc_close
{
  v9 = 0;
  v3 = [(BRCPQLConnection *)self brc_closeWithError:&v9];
  v4 = v9;
  v5 = v4;
  if (!v3)
  {
    abc_report_panic_with_signature();
    [MEMORY[0x277CCACA8] stringWithFormat:@"error closing connection %@: %@", self, v5];
    objc_claimAutoreleasedReturnValue();
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      __37__BRCPQLConnection__setLockedHandler__block_invoke_cold_1();
    }

    brc_append_system_info_to_message();
    uTF8String = [objc_claimAutoreleasedReturnValue() UTF8String];
    __assert_rtn("[BRCPQLConnection brc_close]", "/Library/Caches/com.apple.xbs/Sources/CloudDocs_plugins/core/shared/foundation/BRCPQLConnection.m", 717, uTF8String);
  }
}

- (int64_t)sizeInBytes
{
  [(BRCPQLConnection *)self assertOnQueue];
  v3 = [(PQLConnection *)self numberWithSQL:@"pragma page_count"];
  v4 = [(PQLConnection *)self numberWithSQL:@"pragma page_size"];
  integerValue = [v3 integerValue];
  v6 = [v4 integerValue] * integerValue;

  return v6;
}

- (BOOL)needsAutovacuum
{
  [(BRCPQLConnection *)self assertOnQueue];
  v3 = [BRCUserDefaults defaultsForMangledID:0];
  [v3 dbAutovacuumRatio];
  v5 = v4 != 0.0 && [v3 dbAutovacuumBatchSize] && (v7 = -[BRCPQLConnection autovacuumableSpaceInBytes](self, "autovacuumableSpaceInBytes"), v8 = v7 * 100.0 / -[BRCPQLConnection sizeInBytes](self, "sizeInBytes"), objc_msgSend(v3, "dbAutovacuumRatio"), v8 >= v9) && v7 >= objc_msgSend(v3, "dbAutovacuumBatchSize");

  return v5;
}

- (void)autovacuumIfNeeded
{
  [(BRCPQLConnection *)self assertOnQueue];
  if (!self->_autovacuumInProgress && [(BRCPQLConnection *)self needsAutovacuum])
  {
    v3 = [BRCUserDefaults defaultsForMangledID:0];
    -[BRCPQLConnection incrementalVacuum:](self, "incrementalVacuum:", [v3 dbAutovacuumBatchSize]);
    v4 = +[BRCSystemResourcesManager manager];
    connectedToPowerSource = [v4 connectedToPowerSource];

    if (connectedToPowerSource)
    {
      objc_initWeak(&location, self);
      self->_autovacuumInProgress = 1;
      serialQueue = [(BRCPQLConnection *)self serialQueue];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __38__BRCPQLConnection_autovacuumIfNeeded__block_invoke;
      v7[3] = &unk_2784FF400;
      objc_copyWeak(&v8, &location);
      dispatch_async(serialQueue, v7);

      objc_destroyWeak(&v8);
      objc_destroyWeak(&location);
    }
  }
}

void __38__BRCPQLConnection_autovacuumIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  WeakRetained[281] = 0;
  [WeakRetained autovacuumIfNeeded];
}

- (BOOL)execute:(id)execute args:(char *)args
{
  executeCopy = execute;
  if ([(BRCPQLConnection *)self _validateIsRunningWithCorrectPersona])
  {
    v9.receiver = self;
    v9.super_class = BRCPQLConnection;
    v7 = [(BRCPQLConnection *)&v9 execute:executeCopy args:args];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)executeRaw:(id)raw
{
  rawCopy = raw;
  if ([(BRCPQLConnection *)self _validateIsRunningWithCorrectPersona])
  {
    v7.receiver = self;
    v7.super_class = BRCPQLConnection;
    v5 = [(BRCPQLConnection *)&v7 executeRaw:rawCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)fetch:(id)fetch args:(char *)args
{
  fetchCopy = fetch;
  if ([(BRCPQLConnection *)self _validateIsRunningWithCorrectPersona])
  {
    v9.receiver = self;
    v9.super_class = BRCPQLConnection;
    v7 = [(BRCPQLConnection *)&v9 fetch:fetchCopy args:args];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)fetchObjectOfClass:(Class)class initializer:(SEL)initializer sql:(id)sql args:(char *)args
{
  sqlCopy = sql;
  if ([(BRCPQLConnection *)self _validateIsRunningWithCorrectPersona])
  {
    v13.receiver = self;
    v13.super_class = BRCPQLConnection;
    v11 = [(BRCPQLConnection *)&v13 fetchObjectOfClass:class initializer:initializer sql:sqlCopy args:args];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)fetchObjectOfClass:(Class)class sql:(id)sql args:(char *)args
{
  sqlCopy = sql;
  if ([(BRCPQLConnection *)self _validateIsRunningWithCorrectPersona])
  {
    v11.receiver = self;
    v11.super_class = BRCPQLConnection;
    v9 = [(BRCPQLConnection *)&v11 fetchObjectOfClass:class sql:sqlCopy args:args];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)fetchObject:(id)object sql:(id)sql args:(char *)args
{
  objectCopy = object;
  sqlCopy = sql;
  if ([(BRCPQLConnection *)self _validateIsRunningWithCorrectPersona])
  {
    v12.receiver = self;
    v12.super_class = BRCPQLConnection;
    v10 = [(BRCPQLConnection *)&v12 fetchObject:objectCopy sql:sqlCopy args:args];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __60__BRCPQLConnection__setErrorHandlerWithDBCorruptionHandler___block_invoke_cold_1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  v4 = v0;
  _os_log_fault_impl(&dword_223E7A000, v1, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Got really unexpected error: %@%@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

void __37__BRCPQLConnection__setLockedHandler__block_invoke_cold_1()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = brc_append_system_info_to_message();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7(&dword_223E7A000, v1, v2, "[CRIT] %@%@", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x277D85DE8];
}

void __37__BRCPQLConnection__setLockedHandler__block_invoke_cold_2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6(&dword_223E7A000, v0, v1, "[ERROR] %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_registerStaticDBFunctionsWithError:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6(&dword_223E7A000, v0, v1, "[ERROR] _registerStaticDBFunctions failed with %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

void __56__BRCPQLConnection__registerStaticDBFunctionsWithError___block_invoke_5_cold_1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: argc >= 1%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __56__BRCPQLConnection__registerStaticDBFunctionsWithError___block_invoke_133_cold_1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: !set || [set isKindOfClass:[NSIndexSet class]]%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __56__BRCPQLConnection__registerStaticDBFunctionsWithError___block_invoke_6_cold_1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: argc == 1%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)fetchWithExpectedIndex:sql:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] API MISUSE: you need to provide an index%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)fetchWithSlowStatementRadar:sql:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] API MISUSE: you need to provide a radar%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)executeWithExpectedIndex:sql:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] API MISUSE: you need to an index to use%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)disableProfilingForQueriesInBlock:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: block%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)_shouldFlushWithChangeCount:(void *)a1 .cold.1(void *a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_fault_impl(&dword_223E7A000, v5, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: _batchingPacer%@", &v7, 0xCu);
  }

  *a2 = *a1;
  v6 = *MEMORY[0x277D85DE8];
}

@end