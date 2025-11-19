@interface BRCAccountMigrator
- (void)perform;
@end

@implementation BRCAccountMigrator

- (void)perform
{
  v27 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->super._queue);
  memset(v20, 0, sizeof(v20));
  __brc_create_section(0, "[BRCAccountMigrator perform]", 177, 0, v20);
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    dsid = self->super._dsid;
    *buf = 134218498;
    v22 = v20[0];
    v23 = 2112;
    v24 = dsid;
    v25 = 2112;
    v26 = v3;
    _os_log_debug_impl(&dword_223E7A000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx performing migration for %@%@", buf, 0x20u);
  }

  v5 = [MEMORY[0x277CB8F48] defaultStore];
  v6 = [v5 br_appleAccountWithPersonID:self->super._dsid];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __29__BRCAccountMigrator_perform__block_invoke;
  v17[3] = &unk_2784FF478;
  v7 = v6;
  v18 = v7;
  v19 = self;
  v8 = MEMORY[0x22AA4A310](v17);
  if (v7)
  {
    v9 = [objc_alloc(MEMORY[0x277CEC788]) initWithAccount:v7];
    BRSetupAARequest(v9);
    v10 = dispatch_semaphore_create(0);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __29__BRCAccountMigrator_perform__block_invoke_107;
    v14[3] = &unk_2784FFD08;
    v16 = v8;
    v14[4] = self;
    v11 = v10;
    v15 = v11;
    [v9 performRequestWithHandler:v14];
    dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
  }

  __brc_leave_section(v20);
  v12 = *MEMORY[0x277D85DE8];
}

void __29__BRCAccountMigrator_perform__block_invoke(uint64_t a1)
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __29__BRCAccountMigrator_perform__block_invoke_cold_1();
  }

  v4 = +[BRCAccountsManager sharedManager];
  v5 = [*(a1 + 32) identifier];
  v6 = [v4 accountHandlerForACAccountID:v5];

  if (!v6)
  {
    __29__BRCAccountMigrator_perform__block_invoke_cold_2();
  }

  [v6 setMigrationStatus:3 forDSID:*(*(a1 + 40) + 8) shouldUpdateAccount:1 completion:0];
  [*(a1 + 40) _close];
}

void __29__BRCAccountMigrator_perform__block_invoke_107(uint64_t a1, void *a2, void *a3, void *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    v9 = [v8 error];
  }

  memset(v20, 0, sizeof(v20));
  __brc_create_section(0, "[BRCAccountMigrator perform]_block_invoke", 197, 0, v20);
  v10 = brc_bread_crumbs();
  v11 = brc_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218754;
    v22 = v20[0];
    v23 = 2112;
    v24 = v8;
    v25 = 2112;
    v26 = v9;
    v27 = 2112;
    v28 = v10;
    _os_log_debug_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx Setting migration state. response: %@, error: %@%@", buf, 0x2Au);
  }

  if (!v8 || v9 || (objc_opt_respondsToSelector() & 1) == 0 || ([v8 status], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "integerValue") == -1, v12, v13))
  {
    v17 = +[BRCSystemResourcesManager manager];
    v18 = [v17 isNetworkReachable];

    if (v18)
    {
      [*(*(a1 + 32) + 24) scheduleNextEvent];
    }
  }

  else
  {
    v14 = [v8 status];
    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      __29__BRCAccountMigrator_perform__block_invoke_107_cold_1();
    }

    (*(*(a1 + 48) + 16))();
  }

  dispatch_semaphore_signal(*(a1 + 40));
  __brc_leave_section(v20);

  v19 = *MEMORY[0x277D85DE8];
}

void __29__BRCAccountMigrator_perform__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] migration completed%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __29__BRCAccountMigrator_perform__block_invoke_cold_2()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: handler%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __29__BRCAccountMigrator_perform__block_invoke_107_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

@end