@interface BRCZoneHealthCheckOperation
- (BOOL)shouldRetryForError:(id)error;
- (BRCZoneHealthCheckOperation)initWithSessionContext:(id)context changeToken:(id)token healthCheckUpdatesCallback:(id)callback;
- (void)completedZoneHealthSyncDownWithRequestID:(unint64_t)d error:(id)error;
- (void)main;
- (void)receivedUpdatedServerChangeToken:(id)token requestID:(unint64_t)d;
@end

@implementation BRCZoneHealthCheckOperation

- (BRCZoneHealthCheckOperation)initWithSessionContext:(id)context changeToken:(id)token healthCheckUpdatesCallback:(id)callback
{
  tokenCopy = token;
  callbackCopy = callback;
  contextCopy = context;
  syncContextProvider = [contextCopy syncContextProvider];
  zoneHealthSyncContext = [syncContextProvider zoneHealthSyncContext];
  v20.receiver = self;
  v20.super_class = BRCZoneHealthCheckOperation;
  v14 = [(_BRCOperation *)&v20 initWithName:@"zone-health-check" syncContext:zoneHealthSyncContext sessionContext:contextCopy];

  if (v14)
  {
    objc_storeStrong(&v14->_changeToken, token);
    v15 = objc_opt_new();
    recordsByID = v14->_recordsByID;
    v14->_recordsByID = v15;

    v17 = objc_opt_new();
    deletedRecordIds = v14->_deletedRecordIds;
    v14->_deletedRecordIds = v17;

    objc_storeStrong(&v14->_healthCheckUpdatesCallback, callback);
  }

  return v14;
}

- (BOOL)shouldRetryForError:(id)error
{
  errorCopy = error;
  if ([errorCopy brc_isResetError])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = BRCZoneHealthCheckOperation;
    v5 = [(_BRCOperation *)&v7 shouldRetryForError:errorCopy];
  }

  return v5;
}

- (void)receivedUpdatedServerChangeToken:(id)token requestID:(unint64_t)d
{
  v29 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  keyEnumerator = [(NSMutableDictionary *)self->_recordsByID keyEnumerator];
  v7 = [keyEnumerator countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      v10 = 0;
      do
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v11 = *(*(&v24 + 1) + 8 * v10);
        v12 = objc_alloc(MEMORY[0x277CFAE60]);
        recordName = [v11 recordName];
        v14 = [v12 initWithAppLibraryName:recordName];

        zoneAppRetriever = [(BRCSessionContext *)self->super._sessionContext zoneAppRetriever];
        v16 = [zoneAppRetriever getOrCreateAppLibraryAndPrivateZonesIfNecessary:v14];

        ++v10;
      }

      while (v8 != v10);
      v8 = [keyEnumerator countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v8);
  }

  clientReadWriteDatabaseFacade = [(BRCSessionContext *)self->super._sessionContext clientReadWriteDatabaseFacade];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __74__BRCZoneHealthCheckOperation_receivedUpdatedServerChangeToken_requestID___block_invoke;
  v21[3] = &unk_2785004C8;
  v21[4] = self;
  v22 = tokenCopy;
  dCopy = d;
  v18 = tokenCopy;
  [clientReadWriteDatabaseFacade performWithFlags:9 action:v21];

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __74__BRCZoneHealthCheckOperation_receivedUpdatedServerChangeToken_requestID___block_invoke(void *a1)
{
  v52 = *MEMORY[0x277D85DE8];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = [*(a1[4] + 512) objectEnumerator];
  v2 = [obj countByEnumeratingWithState:&v42 objects:v51 count:16];
  if (v2)
  {
    v4 = v2;
    v5 = *v43;
    v6 = 0x277CCA000uLL;
    *&v3 = 138412546;
    v36 = v3;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v43 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v42 + 1) + 8 * i);
        v9 = [(BRCServerZoneHealthState *)v8 objectForKeyedSubscript:@"state", v36];
        v10 = *(v6 + 2992);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          v18 = brc_bread_crumbs();
          v19 = brc_default_log();
          if (!os_log_type_enabled(&v19->super.super, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_19;
          }

          *buf = v36;
          v48 = v8;
          v49 = 2112;
          v50 = v18;
          p_super = &v19->super.super;
          v24 = "[CRIT] UNREACHABLE: state is of unexpected class %@%@";
LABEL_14:
          _os_log_fault_impl(&dword_223E7A000, p_super, OS_LOG_TYPE_FAULT, v24, buf, 0x16u);
          goto LABEL_19;
        }

        v12 = [(BRCServerZoneHealthState *)v8 objectForKeyedSubscript:@"updateTime"];
        v13 = *(v6 + 2992);
        objc_opt_class();
        v14 = objc_opt_isKindOfClass();

        if ((v14 & 1) == 0)
        {
          v18 = brc_bread_crumbs();
          v19 = brc_default_log();
          if (!os_log_type_enabled(&v19->super.super, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_19;
          }

          *buf = v36;
          v48 = v8;
          v49 = 2112;
          v50 = v18;
          p_super = &v19->super.super;
          v24 = "[CRIT] UNREACHABLE: update time is of unexpected class %@%@";
          goto LABEL_14;
        }

        v15 = [(BRCServerZoneHealthState *)v8 objectForKeyedSubscript:@"state"];
        v16 = [v15 intValue];

        v17 = [(BRCServerZoneHealthState *)v8 recordID];
        v18 = [v17 recordName];

        v19 = [[BRFieldCKInfo alloc] initWithRecord:v8];
        v20 = [*(a1[4] + 256) zoneAppRetriever];
        v21 = [v20 privateClientZoneByID:v18];

        if (v21)
        {
          v22 = [[BRCServerZoneHealthState alloc] initWithCKInfo:v19 state:v16];
          [v21 syncedDownZoneHealthState:v22];
        }

        else
        {
          v22 = brc_bread_crumbs();
          v25 = brc_default_log();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            *buf = v36;
            v48 = v18;
            v49 = 2112;
            v50 = v22;
            _os_log_debug_impl(&dword_223E7A000, v25, OS_LOG_TYPE_DEBUG, "[DEBUG] We don't have a container for %@%@", buf, 0x16u);
          }
        }

LABEL_19:
        v6 = 0x277CCA000;
      }

      v4 = [obj countByEnumeratingWithState:&v42 objects:v51 count:16];
    }

    while (v4);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v26 = *(a1[4] + 520);
  v27 = [v26 countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v39;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v39 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = [*(*(&v38 + 1) + 8 * j) recordName];
        v32 = [*(a1[4] + 256) zoneAppRetriever];
        v33 = [v32 privateClientZoneByID:v31];

        [v33 zoneHealthWasReset];
      }

      v28 = [v26 countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v28);
  }

  [*(a1[4] + 528) receivedUpdatedZoneHealthCallback:a1[5] requestID:a1[6]];
  v34 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)completedZoneHealthSyncDownWithRequestID:(unint64_t)d error:(id)error
{
  errorCopy = error;
  clientReadWriteDatabaseFacade = [(BRCSessionContext *)self->super._sessionContext clientReadWriteDatabaseFacade];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __78__BRCZoneHealthCheckOperation_completedZoneHealthSyncDownWithRequestID_error___block_invoke;
  v9[3] = &unk_2785004C8;
  v10 = errorCopy;
  dCopy = d;
  v9[4] = self;
  v8 = errorCopy;
  [clientReadWriteDatabaseFacade performWithFlags:9 action:v9];

  [(_BRCOperation *)self completedWithResult:0 error:v8];
}

- (void)main
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_223E7A000, v0, OS_LOG_TYPE_DEBUG, "[DEBUG] This is a periodic sync%@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __35__BRCZoneHealthCheckOperation_main__block_invoke(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v29 = *(a1 + 56);
  v30 = *(a1 + 72);
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v24 = [WeakRetained operationID];
    *buf = 134218754;
    v32 = v29;
    v33 = 2112;
    v34 = v3;
    v35 = 2112;
    v36 = v24;
    v37 = 2112;
    v38 = v5;
    _os_log_debug_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx got a changed record %@ in operation %@%@", buf, 0x2Au);
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
  if (*(a1 + 80) == 1)
  {
    v7 = [*(*(a1 + 32) + 256) periodicSyncInvestigation];
    v8 = [v3 brc_lastEditorDeviceName];
    [v7 addEditingDevice:v8];
  }

  v9 = [v3 recordType];
  v10 = [v9 isEqualToString:@"zoneState"];

  if (v10)
  {
    v11 = *(*(a1 + 32) + 520);
    v12 = [v3 recordID];
    LODWORD(v11) = [v11 containsObject:v12];

    if (v11)
    {
      v25 = brc_bread_crumbs();
      v26 = brc_default_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        __35__BRCZoneHealthCheckOperation_main__block_invoke_cold_1();
      }
    }

    v13 = *(*(a1 + 32) + 512);
    v14 = [v3 recordID];
    v15 = [v13 objectForKeyedSubscript:v14];
    LOBYTE(v13) = v15 == 0;

    if ((v13 & 1) == 0)
    {
      v27 = brc_bread_crumbs();
      v28 = brc_default_log();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
      {
        __35__BRCZoneHealthCheckOperation_main__block_invoke_cold_2();
      }
    }

    v16 = *(*(a1 + 32) + 512);
    v17 = [v3 recordID];
    [v16 setObject:v3 forKeyedSubscript:v17];
  }

  else
  {
    v18 = [v3 recordType];
    v19 = [v18 isEqualToString:@"zoneDetails"];

    if (v19)
    {
      v17 = brc_bread_crumbs();
      v20 = brc_default_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v21 = [WeakRetained operationID];
        *buf = 138412802;
        v32 = v3;
        v33 = 2112;
        v34 = v21;
        v35 = 2112;
        v36 = v17;
        _os_log_debug_impl(&dword_223E7A000, v20, OS_LOG_TYPE_DEBUG, "[DEBUG] ignoring zone details record %@ in operation %@%@", buf, 0x20u);
      }
    }

    else
    {
      v17 = brc_bread_crumbs();
      v20 = brc_default_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [WeakRetained operationID];
        *buf = 138412802;
        v32 = v3;
        v33 = 2112;
        v34 = v22;
        v35 = 2112;
        v36 = v17;
        _os_log_impl(&dword_223E7A000, v20, OS_LOG_TYPE_DEFAULT, "[WARNING] ignoring record of unexpected type %@ in operation %@%@", buf, 0x20u);
      }
    }
  }

  __brc_leave_section(&v29);
  v23 = *MEMORY[0x277D85DE8];
}

void __35__BRCZoneHealthCheckOperation_main__block_invoke_18(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v18 = *(a1 + 56);
  v19 = *(a1 + 72);
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v13 = [WeakRetained operationID];
    *buf = 134218754;
    v21 = v18;
    v22 = 2112;
    v23 = v5;
    v24 = 2112;
    v25 = v13;
    v26 = 2112;
    v27 = v8;
    _os_log_debug_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx recordID was deleted %@ in operation %@%@", buf, 0x2Au);
  }

  if ([*(*(a1 + 32) + 520) containsObject:v5])
  {
    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      __35__BRCZoneHealthCheckOperation_main__block_invoke_18_cold_1();
    }
  }

  v10 = [*(*(a1 + 32) + 512) objectForKeyedSubscript:{v5, v18, v19}];
  v11 = v10 == 0;

  if (!v11)
  {
    v16 = brc_bread_crumbs();
    v17 = brc_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      __35__BRCZoneHealthCheckOperation_main__block_invoke_18_cold_2();
    }
  }

  [*(*(a1 + 32) + 520) addObject:v5];
  *(*(*(a1 + 40) + 8) + 24) = 1;
  __brc_leave_section(&v18);

  v12 = *MEMORY[0x277D85DE8];
}

void __35__BRCZoneHealthCheckOperation_main__block_invoke_20(uint64_t a1, void *a2, void *a3, void *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [v9 bytes];
  if (v10)
  {
    v11 = *v10;
  }

  else
  {
    v11 = 0;
  }

  v16 = *(a1 + 40);
  v17 = *(a1 + 56);
  v12 = brc_bread_crumbs();
  v13 = brc_default_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v15 = [v8 descriptionWithContext:0];
    *buf = 134218754;
    v19 = v16;
    v20 = 2112;
    v21 = v15;
    v22 = 2048;
    v23 = v11;
    v24 = 2112;
    v25 = v12;
    _os_log_debug_impl(&dword_223E7A000, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx Received token update %@, requestID %llu%@", buf, 0x2Au);
  }

  [*(a1 + 32) receivedUpdatedServerChangeToken:v8 requestID:v11];
  [*(*(a1 + 32) + 520) removeAllObjects];
  [*(*(a1 + 32) + 512) removeAllObjects];
  __brc_leave_section(&v16);

  v14 = *MEMORY[0x277D85DE8];
}

void __35__BRCZoneHealthCheckOperation_main__block_invoke_22(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v35 = *MEMORY[0x277D85DE8];
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a6;
  *(*(*(a1 + 40) + 8) + 24) = 1;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v15 = [v12 bytes];
  if (v15)
  {
    v16 = *v15;
  }

  else
  {
    v16 = 0;
  }

  v23 = *(a1 + 56);
  v24 = *(a1 + 72);
  v17 = brc_bread_crumbs();
  v18 = brc_default_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v22 = [v11 descriptionWithContext:0];
    *buf = 134219010;
    v26 = v23;
    v27 = 2112;
    v28 = WeakRetained;
    v29 = 2048;
    v30 = v16;
    v31 = 2112;
    v32 = v22;
    v33 = 2112;
    v34 = v17;
    _os_log_debug_impl(&dword_223E7A000, v18, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx finished sync down of zone-health %@ with requestID %llu changeToken %@%@", buf, 0x34u);
  }

  if ([v13 brc_isCloudKitErrorImplyingZoneNeedsCreation])
  {
    v19 = brc_bread_crumbs();
    v20 = brc_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v26 = WeakRetained;
      v27 = 2112;
      v28 = v13;
      v29 = 2112;
      v30 = v19;
      _os_log_debug_impl(&dword_223E7A000, v20, OS_LOG_TYPE_DEBUG, "[DEBUG] No zone-health zone %@: %@%@", buf, 0x20u);
    }

LABEL_12:

    goto LABEL_13;
  }

  if (v13)
  {
    v19 = brc_bread_crumbs();
    v20 = brc_default_log();
    if (os_log_type_enabled(v20, 0x90u))
    {
      *buf = 138412802;
      v26 = WeakRetained;
      v27 = 2112;
      v28 = v13;
      v29 = 2112;
      v30 = v19;
      _os_log_error_impl(&dword_223E7A000, v20, 0x90u, "[ERROR] Failed syncing down zone-health op %@: %@%@", buf, 0x20u);
    }

    goto LABEL_12;
  }

LABEL_13:
  [*(a1 + 32) receivedUpdatedServerChangeToken:v11 requestID:v16];
  [*(a1 + 32) completedZoneHealthSyncDownWithRequestID:v16 error:v13];
  __brc_leave_section(&v23);

  v21 = *MEMORY[0x277D85DE8];
}

void __35__BRCZoneHealthCheckOperation_main__block_invoke_24(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3 && *(a1 + 88) == 1 && (*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v4 = [*(*(a1 + 32) + 256) periodicSyncInvestigation];
    v5 = [*(a1 + 40) zoneName];
    [v4 addZoneWithNoRealChanges:v5];
  }

  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    v8 = *(a1 + 64);
    v9 = *(a1 + 80);
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __35__BRCZoneHealthCheckOperation_main__block_invoke_24_cold_1(&v8);
    }

    [*(a1 + 32) completedZoneHealthSyncDownWithRequestID:0 error:{v3, v8, v9}];
    __brc_leave_section(&v8);
  }
}

void __35__BRCZoneHealthCheckOperation_main__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] Assertion failed: ![self->_deletedRecordIds containsObject:record.recordID]%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __35__BRCZoneHealthCheckOperation_main__block_invoke_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] Assertion failed: self->_recordsByID[record.recordID] == nil%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __35__BRCZoneHealthCheckOperation_main__block_invoke_18_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] Assertion failed: ![self->_deletedRecordIds containsObject:recordID]%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __35__BRCZoneHealthCheckOperation_main__block_invoke_18_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] Assertion failed: self->_recordsByID[recordID] == nil%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __35__BRCZoneHealthCheckOperation_main__block_invoke_24_cold_1(uint64_t *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v2, v3, "[DEBUG] ┳%llx sync down of zone-health-check was cancelled?%@");
  v4 = *MEMORY[0x277D85DE8];
}

@end