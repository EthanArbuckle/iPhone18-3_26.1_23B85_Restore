@interface BRCItemCountMismatchReport
+ (void)_finishReport:(id)report session:(id)session completionHandler:(id)handler;
+ (void)generateReportForSharedFolder:(id)folder qualityOfService:(int64_t)service completionHandler:(id)handler;
- (BRCItemCountMismatchReport)initWithURL:(id)l;
- (id)telemetryEvent;
- (void)incrementErrorRetryCountWithSession:(id)session;
- (void)shareChangedDuringCheckWithSession:(id)session;
@end

@implementation BRCItemCountMismatchReport

- (BRCItemCountMismatchReport)initWithURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = BRCItemCountMismatchReport;
  v6 = [(BRCItemCountMismatchReport *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fileURL, l);
  }

  return v7;
}

- (void)shareChangedDuringCheckWithSession:(id)session
{
  sessionCopy = session;
  clientDB = [sessionCopy clientDB];
  [clientDB assertOnQueue];

  if (self->_lastError)
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [BRCItemCountMismatchReport shareChangedDuringCheckWithSession:?];
    }
  }

  else
  {
    brc_errorItemChanged = [MEMORY[0x277CCA9B8] brc_errorItemChanged];
    lastError = self->_lastError;
    self->_lastError = brc_errorItemChanged;

    [(BRCItemCountMismatchReport *)self incrementErrorRetryCountWithSession:sessionCopy];
  }
}

- (void)incrementErrorRetryCountWithSession:(id)session
{
  v28 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  clientDB = [sessionCopy clientDB];
  itemID = [(BRCItemGlobalID *)self->_itemGlobalID itemID];
  zoneRowID = [(BRCItemGlobalID *)self->_itemGlobalID zoneRowID];
  v8 = [clientDB numberWithSQL:{@"SELECT retry_count FROM telemetry_failure_counts WHERE item_id = %@ AND zone_rowid = %@", itemID, zoneRowID}];

  self->_failureRetryCount = [v8 longLongValue] + 1;
  v9 = brc_bread_crumbs();
  v10 = brc_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    path = [(NSURL *)self->_fileURL path];
    fp_obfuscatedPath = [path fp_obfuscatedPath];
    lastError = self->_lastError;
    failureRetryCount = self->_failureRetryCount;
    *buf = 138413058;
    v21 = fp_obfuscatedPath;
    v22 = 2112;
    v23 = lastError;
    v24 = 2048;
    v25 = failureRetryCount;
    v26 = 2112;
    v27 = v9;
    _os_log_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEFAULT, "[WARNING] Telemetry report at %@ finished with error %@ retry count %llu%@", buf, 0x2Au);
  }

  clientDB2 = [sessionCopy clientDB];

  v16 = self->_failureRetryCount;
  itemID2 = [(BRCItemGlobalID *)self->_itemGlobalID itemID];
  zoneRowID2 = [(BRCItemGlobalID *)self->_itemGlobalID zoneRowID];
  [clientDB2 execute:{@"INSERT OR REPLACE INTO telemetry_failure_counts (retry_count, item_id, zone_rowid) VALUES (%lld, %@, %@)", v16, itemID2, zoneRowID2}];

  v19 = *MEMORY[0x277D85DE8];
}

+ (void)_finishReport:(id)report session:(id)session completionHandler:(id)handler
{
  reportCopy = report;
  sessionCopy = session;
  handlerCopy = handler;
  clientTruthWorkloop = [sessionCopy clientTruthWorkloop];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__BRCItemCountMismatchReport__finishReport_session_completionHandler___block_invoke;
  block[3] = &unk_2784FF5B8;
  v15 = reportCopy;
  v16 = sessionCopy;
  v17 = handlerCopy;
  v11 = handlerCopy;
  v12 = sessionCopy;
  v13 = reportCopy;
  dispatch_async(clientTruthWorkloop, block);
}

uint64_t __70__BRCItemCountMismatchReport__finishReport_session_completionHandler___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) lastError];
  if (v3)
  {
LABEL_2:

    goto LABEL_3;
  }

  if ([*v2 wasAbleToRun])
  {
    v6 = [*(a1 + 40) itemFetcher];
    v7 = [*(a1 + 32) itemGlobalID];
    v8 = [v6 itemByItemGlobalID:v7];
    v3 = [v8 asDirectory];

    if ([v3 containsPendingUploadOrSyncUp])
    {
      v9 = MEMORY[0x277CCA9B8];
      v10 = [*(*v2 + 2) path];
      v11 = [v9 brc_errorNotInCloud:v10];
      v12 = *(*v2 + 5);
      *(*v2 + 5) = v11;
    }

    goto LABEL_2;
  }

LABEL_3:
  v4 = [*v2 lastError];

  v5 = *v2;
  if (v4)
  {
    [v5 incrementErrorRetryCountWithSession:*(a1 + 40)];
  }

  else if ([v5 wasAbleToRun])
  {
    v13 = brc_bread_crumbs();
    v14 = brc_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      __70__BRCItemCountMismatchReport__finishReport_session_completionHandler___block_invoke_cold_1();
    }

    v15 = [*(a1 + 40) clientDB];
    v16 = [*(a1 + 32) itemGlobalID];
    v17 = [v16 itemID];
    v18 = [*(a1 + 32) itemGlobalID];
    v19 = [v18 zoneRowID];
    [v15 execute:{@"DELETE FROM telemetry_failure_counts WHERE item_id = %@ AND zone_rowid = %@", v17, v19}];
  }

  else
  {
    v20 = brc_bread_crumbs();
    v21 = brc_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [*(*v2 + 2) path];
      v23 = [v22 fp_obfuscatedPath];
      *buf = 138412546;
      v28 = v23;
      v29 = 2112;
      v30 = v20;
      _os_log_impl(&dword_223E7A000, v21, OS_LOG_TYPE_DEFAULT, "[WARNING] Telemetry report at %@ did not run%@", buf, 0x16u);
    }
  }

  v24 = *(a1 + 32);
  result = (*(*(a1 + 48) + 16))();
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

+ (void)generateReportForSharedFolder:(id)folder qualityOfService:(int64_t)service completionHandler:(id)handler
{
  folderCopy = folder;
  handlerCopy = handler;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __95__BRCItemCountMismatchReport_generateReportForSharedFolder_qualityOfService_completionHandler___block_invoke;
  v22[3] = &unk_278500388;
  selfCopy = self;
  v10 = handlerCopy;
  v23 = v10;
  serviceCopy = service;
  v11 = MEMORY[0x22AA4A310](v22);
  session = [folderCopy session];
  personaIdentifier = [session personaIdentifier];
  v18 = folderCopy;
  v19 = session;
  v20 = v10;
  v21 = v11;
  v14 = v11;
  v15 = session;
  v16 = folderCopy;
  v17 = v10;
  BRPerformWithPersonaAndError();
}

void __95__BRCItemCountMismatchReport_generateReportForSharedFolder_qualityOfService_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v66 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __95__BRCItemCountMismatchReport_generateReportForSharedFolder_qualityOfService_completionHandler___block_invoke_cold_1();
  }

  v9 = [[BRCItemCountMismatchReport alloc] initWithURL:v5];
  v10 = [v6 clientZone];
  v11 = [v6 itemID];
  v12 = [v10 serverItemByItemID:v11];

  v13 = [v12 serverMetrics];
  v14 = [v13 recursiveChildCount];

  v15 = [v6 session];
  v16 = [v12 serverZone];
  v17 = [v16 mangledID];
  zoneMangledID = v9->_zoneMangledID;
  v9->_zoneMangledID = v17;

  v19 = [v12 clientZone];
  v9->_isEnhancedDrivePrivacyEnabled = [v19 enhancedDrivePrivacyEnabled];

  v20 = [v6 itemGlobalID];
  itemGlobalID = v9->_itemGlobalID;
  v9->_itemGlobalID = v20;

  v9->_containsSharedToMeItem = [v6 isSharedToMeOrContainsSharedToMeItem];
  if (v14 && ![v6 containsPendingUploadOrSyncUp])
  {
    v26 = brc_bread_crumbs();
    v27 = brc_default_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v45 = [v5 path];
      v41 = [v45 fp_obfuscatedPath];
      *buf = 138412802;
      v61 = v14;
      v62 = 2112;
      v63 = v41;
      v64 = 2112;
      v65 = v26;
      _os_log_debug_impl(&dword_223E7A000, v27, OS_LOG_TYPE_DEBUG, "[DEBUG] Telemetry - Server metrics found %@ items under %@%@", buf, 0x20u);
    }

    v59 = 0;
    v28 = [MEMORY[0x277CC6438] wrapperWithURL:v5 readonly:1 error:&v59];
    v29 = v59;
    v30 = v59;
    if (v30)
    {
      objc_storeStrong(&v9->_lastError, v29);
      [*(a1 + 40) _finishReport:v9 session:v15 completionHandler:*(a1 + 32)];
    }

    else
    {
      v31 = BRDiskCheckerServiceConnection();
      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v54[2] = __95__BRCItemCountMismatchReport_generateReportForSharedFolder_qualityOfService_completionHandler___block_invoke_670;
      v54[3] = &unk_278500338;
      v32 = v9;
      v33 = *(a1 + 40);
      v55 = v32;
      v58 = v33;
      v44 = v28;
      v34 = v15;
      v56 = v34;
      v57 = *(a1 + 32);
      v42 = [v31 remoteObjectProxyWithErrorHandler:v54];
      v43 = *(a1 + 48);
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __95__BRCItemCountMismatchReport_generateReportForSharedFolder_qualityOfService_completionHandler___block_invoke_671;
      v46[3] = &unk_278500360;
      v35 = v32;
      v36 = *(a1 + 40);
      v47 = v35;
      v53 = v36;
      v37 = v34;
      v28 = v44;
      v48 = v37;
      v52 = *(a1 + 32);
      v38 = v31;
      v30 = 0;
      v49 = v38;
      v50 = v5;
      v51 = v14;
      v39 = v38;
      [v42 checkRecursiveChildItemCountFromURLWrapper:v44 qualityOfService:v43 reply:v46];
    }
  }

  else
  {
    v22 = MEMORY[0x277CCA9B8];
    v23 = [v5 path];
    v24 = [v22 brc_errorNotInCloud:v23];
    lastError = v9->_lastError;
    v9->_lastError = v24;

    [*(a1 + 40) _finishReport:v9 session:v15 completionHandler:*(a1 + 32)];
  }

  v40 = *MEMORY[0x277D85DE8];
}

void __95__BRCItemCountMismatchReport_generateReportForSharedFolder_qualityOfService_completionHandler___block_invoke_670(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, 0x90u))
    {
      __81__BRCAnalyticsReporter__resumePausedTreeConsistencyCheckOperationWithSystemTask___block_invoke_cold_1();
    }

    objc_storeStrong((*(a1 + 32) + 40), a2);
    [*(a1 + 56) _finishReport:*(a1 + 32) session:*(a1 + 40) completionHandler:*(a1 + 48)];
  }
}

void __95__BRCItemCountMismatchReport_generateReportForSharedFolder_qualityOfService_completionHandler___block_invoke_671(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(a1 + 32) + 40), a3);
  }

  else
  {
    [*(a1 + 48) invalidate];
    *(*(a1 + 32) + 26) = 1;
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v11 = [*(a1 + 56) path];
      v12 = [v11 fp_obfuscatedPath];
      v13 = 138412802;
      v14 = v5;
      v15 = 2112;
      v16 = v12;
      v17 = 2112;
      v18 = v7;
      _os_log_debug_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] Telemetry - Disk checker found %@ items under %@%@", &v13, 0x20u);
    }

    v9 = [v5 longLongValue];
    *(*(a1 + 32) + 32) = v9 - [*(a1 + 64) longLongValue];
  }

  [*(a1 + 80) _finishReport:*(a1 + 32) session:*(a1 + 40) completionHandler:*(a1 + 72)];

  v10 = *MEMORY[0x277D85DE8];
}

void __95__BRCItemCountMismatchReport_generateReportForSharedFolder_qualityOfService_completionHandler___block_invoke_674(id *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __95__BRCItemCountMismatchReport_generateReportForSharedFolder_qualityOfService_completionHandler___block_invoke_674_cold_1();
    }

    (*(a1[6] + 2))();
  }

  else
  {
    v5 = [a1[4] itemGlobalID];
    v6 = [MEMORY[0x277CC64A8] br_sharedProviderManager];
    if (v6)
    {
      v7 = [a1[4] fileObjectID];
      v8 = [v7 asString];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __95__BRCItemCountMismatchReport_generateReportForSharedFolder_qualityOfService_completionHandler___block_invoke_676;
      v11[3] = &unk_2785003D8;
      v12 = v5;
      v14 = a1[6];
      v13 = a1[5];
      v15 = a1[7];
      [v6 getUserVisibleURLForItemIdentifier:v8 completionHandler:v11];
    }

    else
    {
      v9 = brc_bread_crumbs();
      v10 = brc_default_log();
      if (os_log_type_enabled(v10, 0x90u))
      {
        __95__BRCItemCountMismatchReport_generateReportForSharedFolder_qualityOfService_completionHandler___block_invoke_674_cold_2();
      }

      (*(a1[6] + 2))();
    }
  }
}

void __95__BRCItemCountMismatchReport_generateReportForSharedFolder_qualityOfService_completionHandler___block_invoke_676(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, 0x90u))
    {
      v12 = *(a1 + 32);
      *buf = 138412802;
      v19 = v12;
      v20 = 2112;
      v21 = v7;
      v22 = 2112;
      v23 = v9;
      _os_log_error_impl(&dword_223E7A000, v10, 0x90u, "[ERROR] Can't find the user visible URL for %@ - %@%@", buf, 0x20u);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v8 = [*(a1 + 40) clientTruthWorkloop];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __95__BRCItemCountMismatchReport_generateReportForSharedFolder_qualityOfService_completionHandler___block_invoke_677;
    v13[3] = &unk_2785003B0;
    v14 = *(a1 + 40);
    v15 = *(a1 + 32);
    v17 = *(a1 + 56);
    v16 = v5;
    dispatch_async(v8, v13);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __95__BRCItemCountMismatchReport_generateReportForSharedFolder_qualityOfService_completionHandler___block_invoke_677(uint64_t a1)
{
  v2 = [*(a1 + 32) itemFetcher];
  v3 = [v2 itemByItemGlobalID:*(a1 + 40)];
  v5 = [v3 asDirectory];

  v4 = *(a1 + 48);
  (*(*(a1 + 56) + 16))();
}

- (id)telemetryEvent
{
  if (self->_lastError)
  {
    failureRetryCount = self->_failureRetryCount;
    v4 = [BRCUserDefaults defaultsForMangledID:0];
    telemetryRetryCountForPermenentFailure = [v4 telemetryRetryCountForPermenentFailure];

    if (failureRetryCount > telemetryRetryCountForPermenentFailure)
    {
      v6 = [AppTelemetryTimeSeriesEvent newPermanentlyInconsistentEventWithZoneMangledID:self->_zoneMangledID enhancedDrivePrivacyEnabled:self->_isEnhancedDrivePrivacyEnabled];
      goto LABEL_10;
    }
  }

  else if (self->_wasAbleToRun)
  {
    if (self->_itemCountDifference >= 1 && self->_containsSharedToMeItem)
    {
      v6 = [AppTelemetryTimeSeriesEvent newShareAliasInSharedFolderEventWithZoneMangledID:self->_zoneMangledID enhancedDrivePrivacyEnabled:self->_isEnhancedDrivePrivacyEnabled];
    }

    else
    {
      zoneMangledID = self->_zoneMangledID;
      isEnhancedDrivePrivacyEnabled = self->_isEnhancedDrivePrivacyEnabled;
      v6 = [AppTelemetryTimeSeriesEvent newFolderSharingCountMismatchEventWithCount:"newFolderSharingCountMismatchEventWithCount:zoneMangledID:enhancedDrivePrivacyEnabled:" zoneMangledID:? enhancedDrivePrivacyEnabled:?];
    }

    goto LABEL_10;
  }

  v6 = 0;
LABEL_10:

  return v6;
}

- (void)shareChangedDuringCheckWithSession:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 48);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_9();
  _os_log_debug_impl(v1, v2, OS_LOG_TYPE_DEBUG, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __70__BRCItemCountMismatchReport__finishReport_session_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_18();
  v9 = *MEMORY[0x277D85DE8];
  v1 = [*(*v0 + 16) path];
  v2 = [v1 fp_obfuscatedPath];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

void __95__BRCItemCountMismatchReport_generateReportForSharedFolder_qualityOfService_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_18();
  v9 = *MEMORY[0x277D85DE8];
  v1 = [v0 path];
  v2 = [v1 fp_obfuscatedPath];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

void __95__BRCItemCountMismatchReport_generateReportForSharedFolder_qualityOfService_completionHandler___block_invoke_674_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(&dword_223E7A000, v0, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Failed adopting persona%@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __95__BRCItemCountMismatchReport_generateReportForSharedFolder_qualityOfService_completionHandler___block_invoke_674_cold_2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_223E7A000, v0, 0x90u, "[ERROR] Can't get a shared provider manager%@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end