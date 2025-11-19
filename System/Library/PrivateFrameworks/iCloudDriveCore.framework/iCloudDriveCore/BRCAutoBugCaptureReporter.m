@interface BRCAutoBugCaptureReporter
+ (id)sharedABCReporter;
- (BOOL)_shouldIgnoreReportForOperationType:(id)a3 ofSubtype:(id)a4 forError:(id)a5;
- (id)_init;
- (void)_captureLogsForOperationType:(id)a3 ofSubtype:(id)a4 withContext:(id)a5 timeout:(double)a6;
- (void)captureLogsForOperationType:(id)a3 ofSubtype:(id)a4 withContext:(id)a5 waitForCompletion:(BOOL)a6;
@end

@implementation BRCAutoBugCaptureReporter

+ (id)sharedABCReporter
{
  if (sharedABCReporter_onceToken != -1)
  {
    +[BRCAutoBugCaptureReporter sharedABCReporter];
  }

  v3 = sharedABCReporter_reporter;

  return v3;
}

uint64_t __46__BRCAutoBugCaptureReporter_sharedABCReporter__block_invoke()
{
  sharedABCReporter_reporter = [[BRCAutoBugCaptureReporter alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (id)_init
{
  v10.receiver = self;
  v10.super_class = BRCAutoBugCaptureReporter;
  v2 = [(BRCAutoBugCaptureReporter *)&v10 init];
  if (v2)
  {
    v3 = [BRCUserDefaults defaultsForMangledID:0];
    [v3 autoBugCaptureReporterThrottlePeriod];
    v2->_reporterOperationRejectedThrottlePeriod = v4;

    v5 = [BRCUserDefaults defaultsForMangledID:0];
    v6 = [v5 autoBugCaptureReporterThrottleCapacity];

    v7 = [[BRCLRUDictionary alloc] initWithMaximumCapacity:v6];
    reporterOperationRejectedThrottle = v2->_reporterOperationRejectedThrottle;
    v2->_reporterOperationRejectedThrottle = v7;
  }

  return v2;
}

- (void)_captureLogsForOperationType:(id)a3 ofSubtype:(id)a4 withContext:(id)a5 timeout:(double)a6
{
  v44 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v10, v11];
  v14 = self->_reporterOperationRejectedThrottle;
  objc_sync_enter(v14);
  v15 = [(BRCLRUDictionary *)self->_reporterOperationRejectedThrottle objectForKeyedSubscript:v13];
  if (v15)
  {
    v16 = brc_current_date_nsec();
    v17 = [v15 longLongValue];
    reporterOperationRejectedThrottlePeriod = self->_reporterOperationRejectedThrottlePeriod;
    if (v16 - v17 < brc_interval_to_nsec())
    {
      v19 = brc_bread_crumbs();
      v20 = brc_default_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138413314;
        v35 = v10;
        v36 = 2112;
        v37 = v11;
        v38 = 2112;
        v39 = v12;
        v40 = 2112;
        v41 = v15;
        v42 = 2112;
        v43 = v19;
        _os_log_debug_impl(&dword_223E7A000, v20, OS_LOG_TYPE_DEBUG, "[DEBUG] Not sending recently rejected ABC report with signature: type = %@, subtype = %@, subtype context = %@, rejected time = %@%@", buf, 0x34u);
      }

      objc_sync_exit(v14);
      goto LABEL_15;
    }

    [(BRCLRUDictionary *)self->_reporterOperationRejectedThrottle removeObjectForKey:v13];
  }

  objc_sync_exit(v14);
  v21 = brc_bread_crumbs();
  v22 = brc_default_log();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413058;
    v35 = v10;
    v36 = 2112;
    v37 = v11;
    v38 = 2112;
    v39 = v12;
    v40 = 2112;
    v41 = v21;
    _os_log_debug_impl(&dword_223E7A000, v22, OS_LOG_TYPE_DEBUG, "[DEBUG] Sending ABC report with signature: type = %@, subtype = %@, subtype context = %@%@", buf, 0x2Au);
  }

  v14 = objc_opt_new();
  v23 = [(BRCLRUDictionary *)v14 signatureWithDomain:@"iCloudDrive" type:v10 subType:v11 subtypeContext:v12 detectedProcess:@"bird" triggerThresholdValues:0];
  v24 = dispatch_group_create();
  dispatch_group_enter(v24);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __88__BRCAutoBugCaptureReporter__captureLogsForOperationType_ofSubtype_withContext_timeout___block_invoke;
  v30[3] = &unk_278500DF0;
  v31 = v13;
  v32 = self;
  v25 = v24;
  v33 = v25;
  [(BRCLRUDictionary *)v14 snapshotWithSignature:v23 delay:0 events:0 payload:0 actions:v30 reply:0.0];
  if (a6 > 0.0)
  {
    v26 = dispatch_time(0, (a6 * 1000000000.0));
    if (dispatch_group_wait(v25, v26))
    {
      v27 = brc_bread_crumbs();
      v28 = brc_default_log();
      if (os_log_type_enabled(v28, 0x90u))
      {
        [BRCAutoBugCaptureReporter _captureLogsForOperationType:v27 ofSubtype:v28 withContext:? timeout:?];
      }
    }
  }

LABEL_15:
  v29 = *MEMORY[0x277D85DE8];
}

void __88__BRCAutoBugCaptureReporter__captureLogsForOperationType_ofSubtype_withContext_timeout___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D6B198]];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __88__BRCAutoBugCaptureReporter__captureLogsForOperationType_ofSubtype_withContext_timeout___block_invoke_cold_1(v6, v7);
    }
  }

  else
  {
    v6 = [MEMORY[0x277CCABB0] numberWithLongLong:brc_current_date_nsec()];
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v11 = [v3 objectForKeyedSubscript:*MEMORY[0x277D6B168]];
      v12 = [v3 objectForKeyedSubscript:*MEMORY[0x277D6B180]];
      v13 = *(a1 + 32);
      v14 = 138413314;
      v15 = v11;
      v16 = 2112;
      v17 = v12;
      v18 = 2112;
      v19 = v13;
      v20 = 2112;
      v21 = v6;
      v22 = 2112;
      v23 = v8;
      _os_log_debug_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] ABC report got rejected - error code = %@, description = %@ adding throttle (%@, %@)%@", &v14, 0x34u);
    }

    v7 = *(*(a1 + 40) + 8);
    objc_sync_enter(v7);
    [*(*(a1 + 40) + 8) setObject:v6 forKeyedSubscript:*(a1 + 32)];
    objc_sync_exit(v7);
  }

  dispatch_group_leave(*(a1 + 48));
  v10 = *MEMORY[0x277D85DE8];
}

- (void)captureLogsForOperationType:(id)a3 ofSubtype:(id)a4 withContext:(id)a5 waitForCompletion:(BOOL)a6
{
  v6 = 0.0;
  if (a6)
  {
    v6 = 10.0;
  }

  [(BRCAutoBugCaptureReporter *)self _captureLogsForOperationType:a3 ofSubtype:a4 withContext:a5 timeout:v6];
}

- (BOOL)_shouldIgnoreReportForOperationType:(id)a3 ofSubtype:(id)a4 forError:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (![v7 isEqualToString:@"SyncHealth"] || (objc_msgSend(v8, "isEqualToString:", @"SyncUp") & 1) == 0 && !objc_msgSend(v8, "isEqualToString:", @"SyncDown") || (objc_msgSend(v9, "domain"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqualToString:", *MEMORY[0x277CBBF50]), v10, !v11))
  {
LABEL_9:
    if ([v7 isEqualToString:@"SyncHealth"] && objc_msgSend(v8, "isEqualToString:", @"SyncDown") && objc_msgSend(v9, "brc_isCloudKitErrorZoneMigrated"))
    {
      v12 = [BRCUserDefaults defaultsForMangledID:0];
      if ([v12 ignoreCKCZMigrationAlreadyDoneErrorForABC])
      {
        v16 = brc_bread_crumbs();
        v17 = brc_default_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          [BRCAutoBugCaptureReporter _shouldIgnoreReportForOperationType:v9 ofSubtype:? forError:?];
        }

        goto LABEL_22;
      }
    }

    if ([v7 isEqualToString:@"SyncHealth"] && objc_msgSend(v8, "isEqualToString:", @"Upload") && objc_msgSend(v9, "brc_isCloudKitMMCSItemNotAvailable"))
    {
      v12 = [BRCUserDefaults defaultsForMangledID:0];
      if ([v12 ignoreCKMMCSItemNotAvailableErrorForABC])
      {
        v16 = brc_bread_crumbs();
        v17 = brc_default_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          [BRCAutoBugCaptureReporter _shouldIgnoreReportForOperationType:v9 ofSubtype:? forError:?];
        }

        goto LABEL_22;
      }
    }

    v18 = 0;
    goto LABEL_25;
  }

  v12 = [BRCUserDefaults defaultsForMangledID:0];
  v13 = [v12 ignoredCKErrorsForABC];
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v9, "code")}];
  v15 = [v13 containsObject:v14];

  if (!v15)
  {

    goto LABEL_9;
  }

  v16 = brc_bread_crumbs();
  v17 = brc_default_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [BRCAutoBugCaptureReporter _shouldIgnoreReportForOperationType:v9 ofSubtype:? forError:?];
  }

LABEL_22:

  v18 = 1;
LABEL_25:

  return v18;
}

- (void)_captureLogsForOperationType:(uint64_t)a1 ofSubtype:(NSObject *)a2 withContext:timeout:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_223E7A000, a2, 0x90u, "[ERROR] Waiting for snapshotWithSignature timed out%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __88__BRCAutoBugCaptureReporter__captureLogsForOperationType_ofSubtype_withContext_timeout___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_223E7A000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] Sent ABC report successfully%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_shouldIgnoreReportForOperationType:(void *)a1 ofSubtype:forError:.cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  [a1 code];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_1(&dword_223E7A000, v1, v2, "[DEBUG] Ignoring CloudKit open error (Operation not permitted) protected class error %ld%@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_shouldIgnoreReportForOperationType:(void *)a1 ofSubtype:forError:.cold.2(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  [a1 code];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_1(&dword_223E7A000, v1, v2, "[DEBUG] Ignoring expected CK 'cross-zone migration already done' error %ld%@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_shouldIgnoreReportForOperationType:(void *)a1 ofSubtype:forError:.cold.3(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  [a1 code];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_1(&dword_223E7A000, v1, v2, "[DEBUG] Ignoring expected CK error %ld%@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

@end