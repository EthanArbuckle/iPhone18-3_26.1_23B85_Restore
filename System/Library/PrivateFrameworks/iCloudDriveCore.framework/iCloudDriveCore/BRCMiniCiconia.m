@interface BRCMiniCiconia
- (BOOL)_cleanupOldCiconiaDomains:(id *)a3;
- (BOOL)_fsRemoveWorkDirectory:(id *)a3;
- (BOOL)_removeDiagnosticsDirectoryAtURL:(id)a3 withError:(id *)a4;
- (BOOL)_removeFPDomain:(id)a3 error:(id *)a4;
- (BOOL)_removeWorkDirectory:(id *)a3;
- (BRCMiniCiconia)init;
- (void)_setupExtensionID;
- (void)cleanupCiconiaAtURL:(id)a3 diagnosticsURL:(id)a4 completionHandler:(id)a5;
@end

@implementation BRCMiniCiconia

- (BRCMiniCiconia)init
{
  v7.receiver = self;
  v7.super_class = BRCMiniCiconia;
  v2 = [(BRCMiniCiconia *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("BRCMiniCiconia", v3);

    workQueue = v2->_workQueue;
    v2->_workQueue = v4;
  }

  return v2;
}

- (void)_setupExtensionID
{
  v3 = [MEMORY[0x277D77BF8] sharedManager];
  v8 = [v3 currentPersona];

  v4 = [v8 isDataSeparatedPersona];
  v5 = v4;
  v6 = @"com.apple.CloudDocs.iCloudDriveFileProvider";
  extensionID = self->_extensionID;
  if (v4)
  {
    v6 = @"com.apple.CloudDocs.iCloudDriveFileProviderManaged";
  }

  self->_extensionID = &v6->isa;

  self->_isDataSeparated = v5;
}

- (BOOL)_removeFPDomain:(id)a3 error:(id *)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__36;
  v35 = __Block_byref_object_dispose__36;
  v36 = 0;
  v6 = dispatch_semaphore_create(0);
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    *v38 = v5;
    *&v38[8] = 2112;
    *&v38[10] = v7;
    _os_log_debug_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] Will remove domain: %@%@", buf, 0x16u);
  }

  v9 = 0;
  v10 = MEMORY[0x277D85DD0];
  while (1)
  {
    v11 = MEMORY[0x277CC64A8];
    extensionID = self->_extensionID;
    v26[0] = v10;
    v26[1] = 3221225472;
    v26[2] = __40__BRCMiniCiconia__removeFPDomain_error___block_invoke;
    v26[3] = &unk_278505280;
    v30 = v9;
    v13 = v5;
    v27 = v13;
    v29 = &v31;
    v14 = v6;
    v28 = v14;
    [v11 removeDomain:v13 forProviderIdentifier:extensionID completionHandler:v26];
    v15 = dispatch_time(0, 900000000000);
    if (dispatch_semaphore_wait(v14, v15))
    {
      v16 = brc_bread_crumbs();
      v17 = brc_default_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109634;
        *v38 = v9;
        *&v38[4] = 2112;
        *&v38[6] = v5;
        *&v38[14] = 2112;
        *&v38[16] = v16;
        _os_log_impl(&dword_223E7A000, v17, OS_LOG_TYPE_DEFAULT, "[WARNING] %d: removeDomain:%@ timed out%@", buf, 0x1Cu);
      }

      v18 = [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:60];
      v19 = v32[5];
      v32[5] = v18;
    }

    v20 = v32[5];
    if (!v20 || ![v20 br_isNSXPCConnectionError])
    {
      break;
    }

    sleep(1u);

    if (++v9 == 3)
    {
      goto LABEL_13;
    }
  }

LABEL_13:
  v21 = v32[5];
  if (a4 && v21)
  {
    *a4 = v21;
    v21 = v32[5];
  }

  v22 = v21 == 0;

  _Block_object_dispose(&v31, 8);
  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

void __40__BRCMiniCiconia__removeFPDomain_error___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 56);
      v7 = *(a1 + 32);
      v8 = [v3 fp_prettyDescription];
      v13[0] = 67109890;
      v13[1] = v6;
      v14 = 2112;
      v15 = v7;
      v16 = 2112;
      v17 = v8;
      v18 = 2112;
      v19 = v4;
      _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEFAULT, "[WARNING] %d: removeDomain:%@ failed: %@%@", v13, 0x26u);
    }
  }

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v3;
  v11 = v3;

  dispatch_semaphore_signal(*(a1 + 40));
  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)_cleanupOldCiconiaDomains:(id *)a3
{
  v59 = *MEMORY[0x277D85DE8];
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [BRCMiniCiconia _cleanupOldCiconiaDomains:];
  }

  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__36;
  v50 = __Block_byref_object_dispose__36;
  v51 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__36;
  v44 = __Block_byref_object_dispose__36;
  v45 = 0;
  v5 = dispatch_semaphore_create(0);
  v6 = 0;
  v7 = MEMORY[0x277D85DD0];
  while (1)
  {
    v8 = MEMORY[0x277CC64A8];
    extensionID = self->_extensionID;
    v35[0] = v7;
    v35[1] = 3221225472;
    v35[2] = __44__BRCMiniCiconia__cleanupOldCiconiaDomains___block_invoke;
    v35[3] = &unk_2785052A8;
    v39 = v6;
    v37 = &v46;
    v38 = &v40;
    dsema = v5;
    v36 = dsema;
    [v8 getDomainsForProviderIdentifier:extensionID completionHandler:v35];
    dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
    v10 = v47[5];
    if (!v10 || ([v10 br_isNSXPCConnectionError] & 1) == 0)
    {
      break;
    }

    sleep(1u);

    if (++v6 == 3)
    {
      goto LABEL_9;
    }
  }

LABEL_9:
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v11 = v41[5];
  v12 = [v11 countByEnumeratingWithState:&v31 objects:v58 count:16];
  if (v12)
  {
    v13 = *v32;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v32 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v31 + 1) + 8 * i);
        if ([v15 br_isCiconiaDomain])
        {
          v16 = brc_bread_crumbs();
          v17 = brc_default_log();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v53 = v15;
            v54 = 2112;
            v55 = v16;
            _os_log_debug_impl(&dword_223E7A000, v17, OS_LOG_TYPE_DEBUG, "[DEBUG] Found old domain %@, dropping%@", buf, 0x16u);
          }

          v30 = 0;
          [(BRCMiniCiconia *)self _removeFPDomain:v15 error:&v30];
          v18 = v30;
          v19 = v30;
          if (v19 && !v47[5])
          {
            v20 = brc_bread_crumbs();
            v21 = brc_default_log();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              v22 = [v19 fp_prettyDescription];
              *buf = 138412802;
              v53 = v15;
              v54 = 2112;
              v55 = v22;
              v56 = 2112;
              v57 = v20;
              _os_log_impl(&dword_223E7A000, v21, OS_LOG_TYPE_DEFAULT, "[WARNING] Failed to remove old domain %@: %@%@", buf, 0x20u);
            }

            objc_storeStrong(v47 + 5, v18);
          }
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v31 objects:v58 count:16];
    }

    while (v12);
  }

  v23 = v47[5];
  if (a3 && v23)
  {
    v23 = v23;
    *a3 = v23;
  }

  v24 = v23 == 0;

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v46, 8);

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

void __44__BRCMiniCiconia__cleanupOldCiconiaDomains___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 56);
      v10 = [v6 fp_prettyDescription];
      v15[0] = 67109634;
      v15[1] = v9;
      v16 = 2112;
      v17 = v10;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEFAULT, "[WARNING] %d: enumerating domains failed: %@%@", v15, 0x1Cu);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v5;
  v13 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)_removeDiagnosticsDirectoryAtURL:(id)a3 withError:(id *)a4
{
  v5 = [a3 path];
  v6 = BRCRecursiveRemove(v5);

  if (a4 && v6 < 0)
  {
    *a4 = [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:*__error()];
  }

  return v6 >= 0;
}

- (BOOL)_fsRemoveWorkDirectory:(id *)a3
{
  v5 = 5;
  while (1)
  {
    v6 = [(NSURL *)self->_targetURL path];
    v7 = BRCRemoveFolder(v6, 0, 0, 1);

    if ((v7 & 0x80000000) == 0)
    {
      break;
    }

    v8 = *__error();
    if (*__error() != 2)
    {
      sleep(1u);
      if (--v5)
      {
        continue;
      }
    }

    if (a3)
    {
      *a3 = [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:v8];
    }

    return v7 >= 0;
  }

  return v7 >= 0;
}

- (BOOL)_removeWorkDirectory:(id *)a3
{
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [BRCMiniCiconia _removeWorkDirectory:];
  }

  if (self->_isDataSeparated)
  {
    v27 = 1;
    v7 = container_create_or_lookup_path_for_current_user();
    if (v7)
    {
      v8 = v7;
      v9 = MEMORY[0x277CBEBC0];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:v7];
      v11 = [v9 fileURLWithPath:v10 isDirectory:1];
      v12 = [v11 URLByAppendingPathComponent:@"Library/CloudStorage/"];

      free(v8);
      v13 = [v12 URLByAppendingPathComponent:@"iCloudDrive𝛃-Ciconia"];
      v14 = brc_bread_crumbs();
      v15 = brc_default_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [(BRCMiniCiconia *)v13 _removeWorkDirectory:v14, v15];
      }

      v16 = [v13 path];
      v17 = BRCRemoveFolder(v16, 0, 0, 1);

      if (v17 < 0)
      {
        v18 = *__error();
        v19 = brc_bread_crumbs();
        v20 = brc_default_log();
        if (os_log_type_enabled(v20, 0x90u))
        {
          [(BRCMiniCiconia *)v19 _removeWorkDirectory:v18, v20];
        }

        *__error() = v18;
      }
    }

    else
    {
      v12 = brc_bread_crumbs();
      v13 = brc_default_log();
      if (os_log_type_enabled(v13, 0x90u))
      {
        [(BRCMiniCiconia *)&v27 _removeWorkDirectory:v12, v13];
      }
    }
  }

  if ([(BRCMiniCiconia *)self _fsRemoveWorkDirectory:a3])
  {
    return 1;
  }

  if ([*a3 br_isPOSIXErrorCode:2])
  {
    return 0;
  }

  v22 = brc_bread_crumbs();
  v23 = brc_default_log();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    [BRCMiniCiconia _removeWorkDirectory:];
  }

  v24 = [(NSURL *)self->_targetURL URLByAppendingPathComponent:@"files"];
  fpfs_enable_fault_handling();
  v25 = [v24 path];
  MEMORY[0x22AA49E00]([v25 fileSystemRepresentation], 0);

  v21 = [(BRCMiniCiconia *)self _fsRemoveWorkDirectory:a3];
  return v21;
}

- (void)cleanupCiconiaAtURL:(id)a3 diagnosticsURL:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__BRCMiniCiconia_cleanupCiconiaAtURL_diagnosticsURL_completionHandler___block_invoke;
  block[3] = &unk_2785052D0;
  objc_copyWeak(&v19, &location);
  v17 = v9;
  v18 = v10;
  v16 = v8;
  v12 = v9;
  v13 = v8;
  v14 = v10;
  dispatch_async(workQueue, block);

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __71__BRCMiniCiconia_cleanupCiconiaAtURL_diagnosticsURL_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 2, *(a1 + 32));
    [v3 _setupExtensionID];
    v7 = 0;
    [v3 _cleanupOldCiconiaDomains:&v7];
    v4 = v7;
    v6 = v4;
    [v3 _removeWorkDirectory:&v6];
    v5 = v6;

    [v3 _removeDiagnosticsDirectoryAtURL:*(a1 + 40) withError:0];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (void)_cleanupOldCiconiaDomains:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Looking for old Ciconia domains%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_removeWorkDirectory:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Removing work directory%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_removeWorkDirectory:(NSObject *)a3 .cold.2(void *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a1 path];
  v6 = [v5 fp_prettyPath];
  OUTLINED_FUNCTION_1();
  v9 = 2112;
  v10 = a2;
  _os_log_debug_impl(&dword_223E7A000, a3, OS_LOG_TYPE_DEBUG, "[DEBUG] Removing FP domain on disk: %@%@", v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_removeWorkDirectory:(os_log_t)log .cold.3(uint64_t a1, int a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 67109378;
  v4[1] = a2;
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_223E7A000, log, 0x90u, "[ERROR] Failed removing domain %{errno}d%@", v4, 0x12u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_removeWorkDirectory:(os_log_t)log .cold.4(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v5 = 134218242;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_223E7A000, log, 0x90u, "[ERROR] Error: %lld%@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_removeWorkDirectory:.cold.5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Retry removing work directory%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end