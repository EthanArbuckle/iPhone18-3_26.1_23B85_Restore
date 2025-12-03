@interface BRCImportUtil
+ (BOOL)reimportItemsBelowItemWithIdentifier:(id)identifier error:(id *)error;
+ (void)forceIngestionForItemID:(id)d completionHandler:(id)handler;
+ (void)forceLatestVersionOnDiskForItemID:(id)d completionHandler:(id)handler;
+ (void)reimportItemsBelowItemWithIdentifier:(id)identifier completionHandler:(id)handler;
+ (void)requestModificationOfItemIdentifier:(id)identifier completionHandler:(id)handler;
@end

@implementation BRCImportUtil

+ (BOOL)reimportItemsBelowItemWithIdentifier:(id)identifier error:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v6 = dispatch_group_create();
  dispatch_group_enter(v6);
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__29;
  v22 = __Block_byref_object_dispose__29;
  v23 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __60__BRCImportUtil_reimportItemsBelowItemWithIdentifier_error___block_invoke;
  v15[3] = &unk_278504630;
  v17 = &v18;
  v7 = v6;
  v16 = v7;
  [BRCImportUtil reimportItemsBelowItemWithIdentifier:identifierCopy completionHandler:v15];
  dispatch_group_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  v8 = v19[5];
  if (v8)
  {
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, 0x90u))
    {
      v14 = "(passed to caller)";
      *buf = 136315906;
      v25 = "+[BRCImportUtil reimportItemsBelowItemWithIdentifier:error:]";
      v26 = 2080;
      if (!error)
      {
        v14 = "(ignored by caller)";
      }

      v27 = v14;
      v28 = 2112;
      v29 = v8;
      v30 = 2112;
      v31 = v9;
      _os_log_error_impl(&dword_223E7A000, v10, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
    }
  }

  if (error)
  {
    v11 = v8;
    *error = v8;
  }

  _Block_object_dispose(&v18, 8);
  v12 = *MEMORY[0x277D85DE8];
  return v8 == 0;
}

void __60__BRCImportUtil_reimportItemsBelowItemWithIdentifier_error___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

+ (void)reimportItemsBelowItemWithIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [BRCImportUtil reimportItemsBelowItemWithIdentifier:identifierCopy completionHandler:?];
  }

  br_sharedProviderManager = [MEMORY[0x277CC64A8] br_sharedProviderManager];
  if (br_sharedProviderManager)
  {
    v10 = MEMORY[0x277CFAF00];
    v11 = [BRCUserDefaults defaultsForMangledID:0];
    xpcConnectionFailureRetries = [v11 xpcConnectionFailureRetries];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __72__BRCImportUtil_reimportItemsBelowItemWithIdentifier_completionHandler___block_invoke;
    v19[3] = &unk_2785014D0;
    v20 = identifierCopy;
    v21 = handlerCopy;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __72__BRCImportUtil_reimportItemsBelowItemWithIdentifier_completionHandler___block_invoke_7;
    v16[3] = &unk_278504658;
    v17 = br_sharedProviderManager;
    v18 = v20;
    [v10 executeAsyncXPCWithMaxRetries:xpcConnectionFailureRetries completion:v19 xpcInvokeBlock:v16];

    v13 = v20;
  }

  else
  {
    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [BRCImportUtil reimportItemsBelowItemWithIdentifier:v14 completionHandler:v15];
    }

    v13 = [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:22];
    (*(handlerCopy + 2))(handlerCopy, v13);
  }
}

void __72__BRCImportUtil_reimportItemsBelowItemWithIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, 0x90u))
    {
      v6 = *(a1 + 32);
      v8 = 138412802;
      v9 = v6;
      v10 = 2112;
      v11 = v3;
      v12 = 2112;
      v13 = v4;
      _os_log_error_impl(&dword_223E7A000, v5, 0x90u, "[ERROR] failed to re-import items under %@ with error %@%@", &v8, 0x20u);
    }
  }

  else
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __72__BRCImportUtil_reimportItemsBelowItemWithIdentifier_completionHandler___block_invoke_cold_1(a1);
    }
  }

  (*(*(a1 + 40) + 16))();
  v7 = *MEMORY[0x277D85DE8];
}

void __72__BRCImportUtil_reimportItemsBelowItemWithIdentifier_completionHandler___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__BRCImportUtil_reimportItemsBelowItemWithIdentifier_completionHandler___block_invoke_2;
  v7[3] = &unk_278501F20;
  v8 = v3;
  v6 = v3;
  [v5 reimportItemsBelowItemWithIdentifier:v4 completionHandler:v7];
}

+ (void)requestModificationOfItemIdentifier:(id)identifier completionHandler:(id)handler
{
  v16 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  handlerCopy = handler;
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [BRCImportUtil requestModificationOfItemIdentifier:identifierCopy completionHandler:?];
  }

  br_sharedProviderManager = [MEMORY[0x277CC64A8] br_sharedProviderManager];
  v10 = br_sharedProviderManager;
  if (br_sharedProviderManager)
  {
    [br_sharedProviderManager requestModificationOfFields:1 forItemWithIdentifier:identifierCopy options:1 completionHandler:handlerCopy];
  }

  else
  {
    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v11;
      _os_log_impl(&dword_223E7A000, v12, OS_LOG_TYPE_DEFAULT, "[WARNING] Couldn't compute fp manager for current account%@", &v14, 0xCu);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

+ (void)forceIngestionForItemID:(id)d completionHandler:(id)handler
{
  v26 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  if (!dCopy)
  {
    +[BRCImportUtil forceIngestionForItemID:completionHandler:];
  }

  v8 = [MEMORY[0x277CC6400] br_fpItemIDFromItemIdentifier:dCopy];
  if (v8)
  {
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      selfCopy = dCopy;
      v22 = 2112;
      v23 = v8;
      v24 = 2112;
      v25 = v9;
      _os_log_debug_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] Forcing Ingestion for itemIdentifier = %@ and itemID = %@%@", buf, 0x20u);
    }

    v11 = MEMORY[0x277CFAF00];
    v12 = [BRCUserDefaults defaultsForMangledID:0];
    xpcConnectionFailureRetries = [v12 xpcConnectionFailureRetries];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __59__BRCImportUtil_forceIngestionForItemID_completionHandler___block_invoke;
    v18[3] = &unk_278504680;
    v19 = v8;
    [v11 executeAsyncXPCWithMaxRetries:xpcConnectionFailureRetries completion:handlerCopy xpcInvokeBlock:v18];

    v14 = v19;
  }

  else
  {
    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      selfCopy = self;
      v22 = 2112;
      v23 = dCopy;
      v24 = 2112;
      v25 = v15;
      _os_log_impl(&dword_223E7A000, v16, OS_LOG_TYPE_DEFAULT, "[WARNING] %@ - Can't find a file provider item ID for %@%@", buf, 0x20u);
    }

    v14 = [MEMORY[0x277CCA9B8] brc_errorItemNotFound:dCopy];
    handlerCopy[2](handlerCopy, v14);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __59__BRCImportUtil_forceIngestionForItemID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CC63A8];
  v4 = a2;
  v5 = [v3 sharedConnection];
  [v5 forceIngestionForItemID:*(a1 + 32) completionHandler:v4];
}

+ (void)forceLatestVersionOnDiskForItemID:(id)d completionHandler:(id)handler
{
  v21 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  if (!dCopy)
  {
    +[BRCImportUtil forceLatestVersionOnDiskForItemID:completionHandler:];
  }

  v8 = [MEMORY[0x277CC6400] br_fpItemIDFromItemIdentifier:dCopy];
  if (v8)
  {
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v15 = 138412802;
      selfCopy = dCopy;
      v17 = 2112;
      v18 = v8;
      v19 = 2112;
      v20 = v9;
      _os_log_debug_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] Propagating To File System for itemIdentifier = %@ and itemID = %@%@", &v15, 0x20u);
    }

    mEMORY[0x277CC63A8] = [MEMORY[0x277CC63A8] sharedConnection];
    [mEMORY[0x277CC63A8] forceLatestVersionOnDiskForItemID:v8 completionHandler:handlerCopy];
  }

  else
  {
    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412802;
      selfCopy = self;
      v17 = 2112;
      v18 = dCopy;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&dword_223E7A000, v13, OS_LOG_TYPE_DEFAULT, "[WARNING] %@ - Can't find a file provider item ID for %@%@", &v15, 0x20u);
    }

    mEMORY[0x277CC63A8] = [MEMORY[0x277CCA9B8] brc_errorItemNotFound:dCopy];
    handlerCopy[2](handlerCopy, 0, mEMORY[0x277CC63A8]);
  }

  v14 = *MEMORY[0x277D85DE8];
}

+ (void)reimportItemsBelowItemWithIdentifier:(uint64_t)a1 completionHandler:.cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  LODWORD(v4) = 138412546;
  *(&v4 + 4) = a1;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v1, v2, "[DEBUG] Starting BRCImportUtil::reimportItemsBelowItemWithIdentifier::%@%@", v4, DWORD2(v4));
  v3 = *MEMORY[0x277D85DE8];
}

+ (void)reimportItemsBelowItemWithIdentifier:(uint64_t)a1 completionHandler:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_223E7A000, a2, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Couldn't compute fp manager for current account%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __72__BRCImportUtil_reimportItemsBelowItemWithIdentifier_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  LODWORD(v4) = 138412546;
  *(&v4 + 4) = *(a1 + 32);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v1, v2, "[DEBUG] Successfully asked file provider to re-import all %@ items%@", v4, DWORD2(v4));
  v3 = *MEMORY[0x277D85DE8];
}

+ (void)requestModificationOfItemIdentifier:(uint64_t)a1 completionHandler:.cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  LODWORD(v4) = 138412546;
  *(&v4 + 4) = a1;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v1, v2, "[DEBUG] Starting BRCImportUtil::requestModificationOfItemIdentifier::%@%@", v4, DWORD2(v4));
  v3 = *MEMORY[0x277D85DE8];
}

+ (void)forceIngestionForItemID:completionHandler:.cold.1()
{
  v9 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0(&dword_223E7A000, v2, v3, "[CRIT] Assertion failed: itemIdentifier%@", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)forceLatestVersionOnDiskForItemID:completionHandler:.cold.1()
{
  v9 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0(&dword_223E7A000, v2, v3, "[CRIT] Assertion failed: itemIdentifier%@", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)isFileNameIgnoredForSync:isRegFile:.cold.1()
{
  v9 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0(&dword_223E7A000, v2, v3, "[CRIT] Assertion failed: fileName%@", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end