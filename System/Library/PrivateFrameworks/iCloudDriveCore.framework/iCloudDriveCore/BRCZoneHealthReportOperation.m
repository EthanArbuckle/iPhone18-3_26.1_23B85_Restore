@interface BRCZoneHealthReportOperation
- (BRCZoneHealthReportOperation)initWithSessionContext:(id)a3 state:(id)a4;
- (void)_reportRecords:(id)a3 requestID:(unint64_t)a4;
- (void)main;
@end

@implementation BRCZoneHealthReportOperation

- (BRCZoneHealthReportOperation)initWithSessionContext:(id)a3 state:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = [v8 syncContextProvider];
  v10 = [v9 zoneHealthSyncContext];
  v13.receiver = self;
  v13.super_class = BRCZoneHealthReportOperation;
  v11 = [(_BRCOperation *)&v13 initWithName:@"zone-health-report" syncContext:v10 sessionContext:v8];

  if (v11)
  {
    v11->shouldPerformAnotherBatch = 1;
    objc_storeStrong(&v11->_state, a4);
  }

  return v11;
}

- (void)_reportRecords:(id)a3 requestID:(unint64_t)a4
{
  v6 = a3;
  v21 = a4;
  v7 = [objc_alloc(MEMORY[0x277CBC4A0]) initWithRecordsToSave:v6 recordIDsToDelete:0];
  v8 = [MEMORY[0x277CBEA90] dataWithBytes:&v21 length:8];
  [v7 setClientChangeTokenData:v8];

  [v7 setAtomic:1];
  v9 = objc_opt_new();
  [v7 setConfiguration:v9];

  v10 = *MEMORY[0x277CFADD0];
  v11 = [v7 configuration];
  [v11 setSourceApplicationBundleIdentifier:v10];

  objc_initWeak(&location, v7);
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __57__BRCZoneHealthReportOperation__reportRecords_requestID___block_invoke;
  v16 = &unk_2785077E8;
  objc_copyWeak(v19, &location);
  v17 = self;
  v12 = v6;
  v18 = v12;
  v19[1] = v21;
  [v7 setModifyRecordsCompletionBlock:&v13];
  [(_BRCOperation *)self addSubOperation:v7, v13, v14, v15, v16, v17];

  objc_destroyWeak(v19);
  objc_destroyWeak(&location);
}

void __57__BRCZoneHealthReportOperation__reportRecords_requestID___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([v9 brc_isCloudKitErrorImplyingZoneNeedsCreation])
  {
    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *location = 138412802;
      *&location[4] = WeakRetained;
      v24 = 2112;
      v25 = v9;
      v26 = 2112;
      v27 = v11;
      _os_log_debug_impl(&dword_223E7A000, v12, OS_LOG_TYPE_DEBUG, "[DEBUG] We need to create the zone health zone on %@ - %@%@", location, 0x20u);
    }

    v13 = [MEMORY[0x277CBC5F8] brc_zoneHealthZoneID];
    objc_initWeak(location, *(a1 + 32));
    v14 = [[BRCCreateZoneAndSubscribeOperation alloc] initWithSessionContext:*(*(a1 + 32) + 256) zoneID:v13];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __57__BRCZoneHealthReportOperation__reportRecords_requestID___block_invoke_5;
    v20[3] = &unk_2785077C0;
    objc_copyWeak(v22, location);
    v15 = *(a1 + 40);
    v16 = *(a1 + 56);
    v21 = v15;
    v22[1] = v16;
    [(BRCCreateZoneAndSubscribeOperation *)v14 setCreateZoneAndSubscribeCompletionBlock:v20];
    [*(a1 + 32) addSubOperation:v14];

    objc_destroyWeak(v22);
    objc_destroyWeak(location);
  }

  else
  {
    if (v9)
    {
      v17 = brc_bread_crumbs();
      v18 = brc_default_log();
      if (os_log_type_enabled(v18, 0x90u))
      {
        *location = 138412802;
        *&location[4] = WeakRetained;
        v24 = 2112;
        v25 = v9;
        v26 = 2112;
        v27 = v17;
        _os_log_error_impl(&dword_223E7A000, v18, 0x90u, "[ERROR] Failed reporting zone health on %@ - %@%@", location, 0x20u);
      }
    }

    else
    {
      v17 = brc_bread_crumbs();
      v18 = brc_default_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *location = 138412802;
        *&location[4] = v7;
        v24 = 2112;
        v25 = WeakRetained;
        v26 = 2112;
        v27 = v17;
        _os_log_debug_impl(&dword_223E7A000, v18, OS_LOG_TYPE_DEBUG, "[DEBUG] finished reporting zone health: %@, op: %@%@", location, 0x20u);
      }
    }

    [*(a1 + 32) completedWithResult:0 error:v9];
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __57__BRCZoneHealthReportOperation__reportRecords_requestID___block_invoke_5(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (v5)
  {
    [WeakRetained completedWithResult:0 error:v5];
  }

  else
  {
    [WeakRetained _reportRecords:*(a1 + 32) requestID:*(a1 + 48)];
  }
}

- (void)main
{
  v3 = objc_opt_new();
  v4 = [(BRCZoneHealthSyncPersistedState *)self->_state allocateNextRequestID];
  v5 = [(BRCSessionContext *)self->super._sessionContext clientReadWriteDatabaseFacade];
  v6 = [v5 serialQueue];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __36__BRCZoneHealthReportOperation_main__block_invoke;
  v14 = &unk_278507838;
  v15 = v5;
  v16 = self;
  v18 = v4;
  v7 = v3;
  v17 = v7;
  v8 = v5;
  dispatch_sync(v6, &v11);

  if ([v7 count])
  {
    [(BRCZoneHealthReportOperation *)self _reportRecords:v7 requestID:v4];
  }

  else
  {
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(BRCZoneHealthReportOperation *)v9 main];
    }

    self->shouldPerformAnotherBatch = 0;
    [(_BRCOperation *)self completedWithResult:0 error:0];
  }
}

void __36__BRCZoneHealthReportOperation_main__block_invoke(uint64_t a1)
{
  [*(a1 + 32) forceBatchStart];
  v2 = [*(*(a1 + 40) + 256) zoneAppRetriever];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __36__BRCZoneHealthReportOperation_main__block_invoke_2;
  v4[3] = &unk_278507810;
  v3 = *(a1 + 48);
  v6 = *(a1 + 56);
  v5 = v3;
  [v2 enumeratePrivateClientZones:v4];
}

uint64_t __36__BRCZoneHealthReportOperation_main__block_invoke_2(uint64_t a1, void *a2)
{
  v61 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 prepareProblemReportForSyncWithRequestID:*(a1 + 40)];
  if ([v4 needsSyncUp])
  {
    v48 = a1;
    v5 = [v3 serverZone];
    v6 = [MEMORY[0x277CBC5F8] brc_zoneHealthZoneID];
    v7 = MEMORY[0x277CCACA8];
    v8 = [v5 zoneName];
    v9 = [MEMORY[0x277CCAD78] UUID];
    v10 = [v9 UUIDString];
    v11 = [v7 stringWithFormat:@"%@/%@", v8, v10];

    v12 = objc_alloc(MEMORY[0x277CBC5D0]);
    v50 = v5;
    v13 = [v5 zoneName];
    v14 = [v12 initWithRecordName:v13 zoneID:v6];

    v47 = v11;
    v49 = v6;
    v15 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:v11 zoneID:v6];
    v46 = v14;
    v16 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"zoneState" recordID:v14];
    v45 = v15;
    v17 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"zoneDetails" recordID:v15];
    LODWORD(v14) = [v4 state];
    v18 = [v3 zoneHealthState];
    LODWORD(v9) = [v18 state];

    if (v14 <= v9)
    {
      v19 = brc_bread_crumbs();
      v20 = brc_default_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v60 = v19;
        _os_log_impl(&dword_223E7A000, v20, OS_LOG_TYPE_DEFAULT, "[WARNING] not updating zone health state because we think we are less broken than the server does%@", buf, 0xCu);
      }
    }

    else
    {
      v19 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v4, "state")}];
      [v16 setObject:v19 forKeyedSubscript:@"state"];
    }

    v21 = MEMORY[0x277CCABB0];
    v22 = [MEMORY[0x277CBEAA8] date];
    [v22 timeIntervalSince1970];
    v24 = [v21 numberWithUnsignedLongLong:v23];
    [v16 setObject:v24 forKeyedSubscript:@"updateTime"];

    v44 = v16;
    [v16 setObject:&stru_2837504F0 forKeyedSubscript:@"clientInfo"];
    if (![v4 state])
    {
      __36__BRCZoneHealthReportOperation_main__block_invoke_2_cold_1();
    }

    v25 = [v4 effectiveProblemMessage];
    [v17 setObject:v25 forKeyedSubscript:@"message"];

    v26 = objc_alloc(MEMORY[0x277CBC5F8]);
    v52 = v3;
    v27 = [v3 serverZone];
    v28 = [v27 zoneName];
    v29 = [v26 initWithZoneName:v28 ownerName:*MEMORY[0x277CBBF28]];

    v30 = objc_opt_new();
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v51 = v4;
    v31 = [v4 effectedRecordNames];
    v32 = [v31 countByEnumeratingWithState:&v53 objects:v58 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v54;
      do
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v54 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v36 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:*(*(&v53 + 1) + 8 * i) zoneID:v29];
          v37 = [objc_alloc(MEMORY[0x277CBC620]) initWithRecordID:v36 action:0];
          [v30 addObject:v37];
        }

        v33 = [v31 countByEnumeratingWithState:&v53 objects:v58 count:16];
      }

      while (v33);
    }

    if ([v30 count])
    {
      [v17 setObject:v30 forKeyedSubscript:@"records"];
    }

    v3 = v52;
    v38 = [v52 zoneHealthState];
    v39 = [v38 ckInfo];
    [v39 setCKInfoFieldsInRecord:v44 includeCZMEtag:0];

    v40 = *(v48 + 32);
    v57[0] = v17;
    v57[1] = v44;
    v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:2];
    [v40 addObjectsFromArray:v41];

    v4 = v51;
  }

  v42 = *MEMORY[0x277D85DE8];
  return 1;
}

@end