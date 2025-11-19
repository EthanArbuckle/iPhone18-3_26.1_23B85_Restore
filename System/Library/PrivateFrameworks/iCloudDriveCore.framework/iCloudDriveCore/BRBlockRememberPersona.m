@interface BRBlockRememberPersona
@end

@implementation BRBlockRememberPersona

void ___BRBlockRememberPersona_block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) isEqualToString:@"__defaultPersonaID__"] & 1) != 0 || (v2 = *(a1 + 32)) == 0)
  {
    if (_block_invoke___personaOnceToken_2 != -1)
    {
      ___BRBlockRememberPersona_block_invoke_cold_1();
    }

    v3 = _block_invoke___personalPersona_2;
    v4 = 1;
  }

  else
  {
    v3 = v2;
    v4 = 0;
  }

  v5 = [MEMORY[0x277D77BF8] sharedManager];
  v6 = [v5 currentPersona];

  v26 = 0;
  v7 = [v6 userPersonaUniqueString];
  v8 = v7;
  if (v7 == v3 || ([v7 isEqualToString:v3] & 1) != 0)
  {
    goto LABEL_9;
  }

  if (!voucher_process_can_use_arbitrary_personas())
  {
    if (v4 && ([v6 isDataSeparatedPersona] & 1) == 0)
    {
      v22 = brc_bread_crumbs();
      v23 = brc_default_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        __br_notify_register_dispatch_block_invoke_cold_2();
      }
    }

    else
    {
      v18 = brc_bread_crumbs();
      v19 = brc_default_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        __br_notify_register_dispatch_block_invoke_cold_3();
      }

      v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
      if (v15)
      {
        goto LABEL_25;
      }
    }

LABEL_9:
    (*(*(a1 + 40) + 16))();
    goto LABEL_10;
  }

  v25 = 0;
  v10 = [v6 copyCurrentPersonaContextWithError:&v25];
  v11 = v25;
  v12 = v26;
  v26 = v10;

  if (v11)
  {
    v13 = brc_bread_crumbs();
    v14 = brc_default_log();
    if (os_log_type_enabled(v14, 0x90u))
    {
      __br_notify_register_dispatch_block_invoke_cold_4();
    }
  }

  v15 = [v6 br_generateAndRestorePersonaContextWithPersonaUniqueString:v3];

  if (!v15)
  {
    goto LABEL_9;
  }

  v16 = brc_bread_crumbs();
  v17 = brc_default_log();
  if (os_log_type_enabled(v17, 0x90u))
  {
    v24 = *(a1 + 32);
    *buf = 138412802;
    v28 = v24;
    v29 = 2112;
    v30 = v15;
    v31 = 2112;
    v32 = v16;
    _os_log_error_impl(&dword_223E7A000, v17, 0x90u, "[ERROR] Can't adopt persona %@: %@%@", buf, 0x20u);
  }

LABEL_25:
  v20 = brc_bread_crumbs();
  v21 = brc_default_log();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
  {
    ___BRBlockRememberPersona_block_invoke_cold_5();
  }

LABEL_10:
  _BRRestorePersona();

  v9 = *MEMORY[0x277D85DE8];
}

void ___BRBlockRememberPersona_block_invoke_2()
{
  v2 = [MEMORY[0x277D77C10] personaAttributesForPersonaType:0];
  v0 = [v2 userPersonaUniqueString];
  v1 = _block_invoke___personalPersona_2;
  _block_invoke___personalPersona_2 = v0;
}

void ___BRBlockRememberPersona_block_invoke_cold_5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: Failed to adopt persona for block adoption%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end