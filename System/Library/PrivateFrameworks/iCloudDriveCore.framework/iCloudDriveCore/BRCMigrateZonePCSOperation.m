@interface BRCMigrateZonePCSOperation
- (BRCMigrateZonePCSOperation)initWithSessionContext:(id)a3 clientState:(id)a4;
- (void)_createCloudDocsZone:(id)a3;
- (void)_fetchZonesNeedingMigration:(id)a3;
- (void)main;
@end

@implementation BRCMigrateZonePCSOperation

- (BRCMigrateZonePCSOperation)initWithSessionContext:(id)a3 clientState:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = [v8 syncContextProvider];
  v10 = [v9 defaultSyncContext];
  v15.receiver = self;
  v15.super_class = BRCMigrateZonePCSOperation;
  v11 = [(_BRCOperation *)&v15 initWithName:@"migrate-pcs" syncContext:v10 sessionContext:v8];

  if (v11)
  {
    v12 = objc_opt_new();
    interestingZoneIDs = v11->_interestingZoneIDs;
    v11->_interestingZoneIDs = v12;

    objc_storeStrong(&v11->_clientState, a4);
  }

  return v11;
}

- (void)_createCloudDocsZone:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277CBC5F8]);
  v6 = [v5 initWithZoneName:*MEMORY[0x277CFAD68] ownerName:*MEMORY[0x277CBBF28]];
  v7 = [[BRCCreateZoneAndSubscribeOperation alloc] initWithSessionContext:self->super._sessionContext zoneID:v6];
  [(BRCCreateZoneAndSubscribeOperation *)v7 setSubscriptionOnly:0];
  [(BRCCreateZoneAndSubscribeOperation *)v7 setOptimisticSubscribe:1];
  objc_initWeak(&location, v7);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__BRCMigrateZonePCSOperation__createCloudDocsZone___block_invoke;
  v10[3] = &unk_278505BD8;
  objc_copyWeak(&v14, &location);
  v8 = v6;
  v11 = v8;
  v9 = v4;
  v12 = self;
  v13 = v9;
  [(BRCCreateZoneAndSubscribeOperation *)v7 setCreateZoneAndSubscribeCompletionBlock:v10];
  [(_BRCOperation *)self addSubOperation:v7];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __51__BRCMigrateZonePCSOperation__createCloudDocsZone___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = [WeakRetained createdZone];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x277CBC5E8]) initWithZoneID:*(a1 + 32)];
  }

  v7 = v6;

  v8 = *(*(a1 + 40) + 504);
  (*(*(a1 + 48) + 16))();
}

- (void)_fetchZonesNeedingMigration:(id)a3
{
  v4 = a3;
  v5 = [BRCUserDefaults defaultsForMangledID:0];
  v6 = [v5 blacklistPCSPrep];

  v7 = objc_alloc(MEMORY[0x277CBC5F8]);
  v8 = [v7 initWithZoneName:*MEMORY[0x277CFAD68] ownerName:*MEMORY[0x277CBBF28]];
  v9 = [MEMORY[0x277CBC3D0] fetchAllRecordZonesOperation];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __58__BRCMigrateZonePCSOperation__fetchZonesNeedingMigration___block_invoke;
  v16 = &unk_278505C28;
  v17 = v8;
  v18 = v6;
  v19 = self;
  v20 = v4;
  v10 = v4;
  v11 = v6;
  v12 = v8;
  [v9 setFetchRecordZonesCompletionBlock:&v13];
  [(_BRCOperation *)self addSubOperation:v9, v13, v14, v15, v16];
}

void __58__BRCMigrateZonePCSOperation__fetchZonesNeedingMigration___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__43;
  v23 = __Block_byref_object_dispose__43;
  v24 = 0;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __58__BRCMigrateZonePCSOperation__fetchZonesNeedingMigration___block_invoke_15;
  v14 = &unk_278505C00;
  v15 = *(a1 + 32);
  v18 = &v19;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v16 = v7;
  v17 = v8;
  [v5 enumerateKeysAndObjectsUsingBlock:&v11];
  v10 = v20[5];
  if (v6 | v10)
  {
    (*(*(a1 + 56) + 16))(*(a1 + 56), *(*(a1 + 48) + 504), v10, v6, v9);
  }

  else
  {
    [*(a1 + 48) _createCloudDocsZone:{*(a1 + 56), v11, v12, v13, v14, v15}];
  }

  _Block_object_dispose(&v19, 8);
}

void __58__BRCMigrateZonePCSOperation__fetchZonesNeedingMigration___block_invoke_15(void *a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if ([v10 isEqual:a1[4]])
  {
    objc_storeStrong((*(a1[7] + 8) + 40), a3);
  }

  else
  {
    v6 = a1[5];
    v7 = [v10 zoneName];
    if ([v6 containsObject:v7])
    {
    }

    else
    {
      v8 = [v10 ownerName];
      v9 = [v8 isEqualToString:*MEMORY[0x277CBBF28]];

      if (v9)
      {
        [*(a1[6] + 504) addObject:v10];
      }
    }
  }
}

- (void)main
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __34__BRCMigrateZonePCSOperation_main__block_invoke;
  v2[3] = &unk_278505C78;
  v2[4] = self;
  [(BRCMigrateZonePCSOperation *)self _fetchZonesNeedingMigration:v2];
}

void __34__BRCMigrateZonePCSOperation_main__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, 0x90u))
    {
      v19 = *(a1 + 32);
      *buf = 138412802;
      v23 = v19;
      v24 = 2112;
      v25 = v9;
      v26 = 2112;
      v27 = v10;
      _os_log_error_impl(&dword_223E7A000, v11, 0x90u, "[ERROR] Failed fetching zones to prep PCS for %@ - %@%@", buf, 0x20u);
    }

    [*(a1 + 32) completedWithResult:0 error:v9];
  }

  else
  {
    if ([v7 count])
    {
      v12 = brc_bread_crumbs();
      v13 = brc_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        v23 = v7;
        v24 = 2112;
        v25 = v8;
        v26 = 2112;
        v27 = v12;
        _os_log_debug_impl(&dword_223E7A000, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] Prepping PCS for %@ -> %@%@", buf, 0x20u);
      }

      v14 = [objc_alloc(MEMORY[0x277CBC178]) initWithSourceZoneIDs:v7 targetZone:v8];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __34__BRCMigrateZonePCSOperation_main__block_invoke_22;
      v20[3] = &unk_278505C50;
      v20[4] = *(a1 + 32);
      [v14 setAggregateZonePCSCompletionBlock:v20];
      [*(a1 + 32) addSubOperation:v14];
    }

    else
    {
      v15 = brc_bread_crumbs();
      v16 = brc_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        __34__BRCMigrateZonePCSOperation_main__block_invoke_cold_1(v15, v16);
      }

      v14 = [*(*(a1 + 32) + 256) clientReadWriteDatabaseFacade];
      v17 = [v14 serialQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __34__BRCMigrateZonePCSOperation_main__block_invoke_18;
      block[3] = &unk_2784FF450;
      block[4] = *(a1 + 32);
      dispatch_async(v17, block);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __34__BRCMigrateZonePCSOperation_main__block_invoke_18(uint64_t a1)
{
  [*(*(a1 + 32) + 512) setNeedsPCSMigration:0];
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277CBEC38];

  return [v2 completedWithResult:v3 error:0];
}

void __34__BRCMigrateZonePCSOperation_main__block_invoke_22(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6 && ![v6 brc_isCloudKitErrorZoneMigrated])
  {
    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, 0x90u))
    {
      v19 = *(a1 + 32);
      *buf = 138412802;
      v22 = v19;
      v23 = 2112;
      v24 = v7;
      v25 = 2112;
      v26 = v12;
      _os_log_error_impl(&dword_223E7A000, v13, 0x90u, "[ERROR] Failed migrating PCS for %@ - %@%@", buf, 0x20u);
    }
  }

  else
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v17 = @"not needed";
      v18 = *(a1 + 32);
      *buf = 138412802;
      if (!v7)
      {
        v17 = @"complete";
      }

      v22 = v17;
      v23 = 2112;
      v24 = v18;
      v25 = 2112;
      v26 = v8;
      _os_log_debug_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] PCS migration %@ for %@%@", buf, 0x20u);
    }

    v10 = [*(*(a1 + 32) + 256) clientReadWriteDatabaseFacade];
    v11 = [v10 serialQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __34__BRCMigrateZonePCSOperation_main__block_invoke_29;
    block[3] = &unk_2784FF450;
    block[4] = *(a1 + 32);
    dispatch_sync(v11, block);

    v7 = 0;
  }

  v14 = *(a1 + 32);
  v15 = [MEMORY[0x277CCABB0] numberWithInt:v7 == 0];
  [v14 completedWithResult:v15 error:v7];

  v16 = *MEMORY[0x277D85DE8];
}

void __34__BRCMigrateZonePCSOperation_main__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_223E7A000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] No zones need PCS prep currently%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end