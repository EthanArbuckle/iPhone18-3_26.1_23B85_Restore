@interface BRCPeriodicSyncOperation
- (BOOL)scheduleSyncDownIfNeededForZoneID:(id)a3 zoneIfAny:(id)a4 zoneType:(unsigned __int8 *)a5;
- (BOOL)shouldRetryForError:(id)a3;
- (BRCPeriodicSyncOperation)initWithContainerScheduler:(id)a3 metadataChangeToken:(id)a4 zoneHealthChangeToken:(id)a5 sideCarChangeToken:(id)a6 sessionContext:(id)a7;
- (id)createActivity;
- (void)main;
@end

@implementation BRCPeriodicSyncOperation

- (BRCPeriodicSyncOperation)initWithContainerScheduler:(id)a3 metadataChangeToken:(id)a4 zoneHealthChangeToken:(id)a5 sideCarChangeToken:(id)a6 sessionContext:(id)a7
{
  v21 = a3;
  v20 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [v15 syncContextProvider];
  v17 = [v16 defaultSyncContext];

  v22.receiver = self;
  v22.super_class = BRCPeriodicSyncOperation;
  v18 = [(_BRCOperation *)&v22 initWithName:@"sync-down/periodic-sync" syncContext:v17 sessionContext:v15];

  if (v18)
  {
    objc_storeStrong(&v18->_scheduler, a3);
    objc_storeStrong(&v18->_metadataChangeToken, a4);
    objc_storeStrong(&v18->_zoneHealthChangeToken, a5);
    objc_storeStrong(&v18->_sideCarChangeToken, a6);
    [(BRCPeriodicSyncOperation *)v18 setQualityOfService:9, v20, v21];
  }

  return v18;
}

- (id)createActivity
{
  v2 = _os_activity_create(&dword_223E7A000, "sync-down/periodic-sync", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (BOOL)shouldRetryForError:(id)a3
{
  v4.receiver = self;
  v4.super_class = BRCPeriodicSyncOperation;
  return [(_BRCOperation *)&v4 shouldRetryForError:a3];
}

- (BOOL)scheduleSyncDownIfNeededForZoneID:(id)a3 zoneIfAny:(id)a4 zoneType:(unsigned __int8 *)a5
{
  v78 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(BRCContainerScheduler *)self->_scheduler session];
  v11 = [v8 zoneName];
  memset(v71, 0, sizeof(v71));
  __brc_create_section(0, "[BRCPeriodicSyncOperation scheduleSyncDownIfNeededForZoneID:zoneIfAny:zoneType:]", 75, 0, v71);
  v12 = brc_bread_crumbs();
  v13 = brc_default_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    v73 = v71[0];
    v74 = 2112;
    v75 = v11;
    v76 = 2112;
    v77 = v12;
    _os_log_debug_impl(&dword_223E7A000, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx considering whether or not to schedule sync down for %@%@", buf, 0x20u);
  }

  if (![v11 isEqualToString:*MEMORY[0x277CFAD58]])
  {
    if ([v11 isEqualToString:*MEMORY[0x277CFADD0]])
    {
      zoneHealthChangeToken = self->_zoneHealthChangeToken;
      v21 = [v9 currentServerChangeToken];
      v16 = zoneHealthChangeToken;
      v22 = v21;
      v18 = v22;
      if (v16 == v22)
      {
        goto LABEL_18;
      }

      if (v22)
      {
        v23 = [(CKServerChangeToken *)v16 isEqual:v22];

        if (v23)
        {
          goto LABEL_56;
        }
      }

      else
      {
      }

      v44 = brc_bread_crumbs();
      v45 = brc_default_log();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        [BRCPeriodicSyncOperation scheduleSyncDownIfNeededForZoneID:zoneIfAny:zoneType:];
      }

      scheduler = self->_scheduler;
      v35 = [(_BRCOperation *)self group];
      [(BRCContainerScheduler *)scheduler scheduleSyncDownForZoneHealthWithGroup:v35];
      v36 = 4;
LABEL_40:

      *a5 |= v36;
LABEL_41:
      v18 = [v10 periodicSyncInvestigation];
      [v18 startInvestigation];
      v28 = 1;
      goto LABEL_42;
    }

    if ([v11 isEqualToString:*MEMORY[0x277CFB070]])
    {
      sideCarChangeToken = self->_sideCarChangeToken;
      v25 = [v9 currentServerChangeToken];
      v16 = sideCarChangeToken;
      v26 = v25;
      v18 = v26;
      if (v16 == v26)
      {
        goto LABEL_18;
      }

      if (v26)
      {
        v27 = [(CKServerChangeToken *)v16 isEqual:v26];

        if (v27)
        {
          goto LABEL_56;
        }
      }

      else
      {
      }

      v47 = brc_bread_crumbs();
      v48 = brc_default_log();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
      {
        [BRCPeriodicSyncOperation scheduleSyncDownIfNeededForZoneID:zoneIfAny:zoneType:];
      }

      v49 = self->_scheduler;
      v35 = [(_BRCOperation *)self group];
      [(BRCContainerScheduler *)v49 scheduleSyncDownForSideCarWithGroup:v35];
      v36 = 2;
      goto LABEL_40;
    }

    v70 = [v10 privateServerZoneByID:v11];
    v69 = [v70 clientZone];
    if (!v70)
    {
      v66 = brc_bread_crumbs();
      v67 = brc_default_log();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_FAULT))
      {
        [BRCPeriodicSyncOperation scheduleSyncDownIfNeededForZoneID:zoneIfAny:zoneType:];
      }
    }

    if ([v69 isSyncBlocked])
    {
      v29 = brc_bread_crumbs();
      v30 = brc_default_log();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        v31 = [v70 clientZone];
        [BRCPeriodicSyncOperation scheduleSyncDownIfNeededForZoneID:v31 zoneIfAny:v29 zoneType:buf];
      }

      goto LABEL_47;
    }

    v37 = [v70 changeState];
    v38 = [v37 changeToken];
    v39 = [v9 currentServerChangeToken];
    v40 = v38;
    v41 = v39;
    v42 = v41;
    if (v40 == v41)
    {
    }

    else
    {
      if (!v41)
      {

        goto LABEL_46;
      }

      v43 = [v40 isEqual:v41];

      if ((v43 & 1) == 0)
      {
LABEL_46:
        v50 = [v70 clientZone];
        v68 = ([v50 syncState] & 0xA) == 0;

        if (v68)
        {
          v61 = brc_bread_crumbs();
          v62 = brc_default_log();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
          {
            v63 = [v70 clientZone];
            [BRCPeriodicSyncOperation scheduleSyncDownIfNeededForZoneID:v63 zoneIfAny:v61 zoneType:buf];
          }

          v64 = [v70 clientZone];
          v65 = [(_BRCOperation *)self group];
          [v64 scheduleSyncDownWithGroup:v65];

          *a5 |= 8u;
          v51 = 1;
          if (!v9)
          {
LABEL_55:

            if ((v51 & 1) == 0)
            {
LABEL_56:
              v28 = 0;
              goto LABEL_57;
            }

            goto LABEL_41;
          }

LABEL_48:
          if (([v69 enhancedDrivePrivacyEnabled] & 1) == 0)
          {
            v52 = [v69 mangledID];
            v53 = [BRCUserDefaults defaultsForMangledID:v52];
            v54 = [v53 supportsEnhancedDrivePrivacy];

            if (v54)
            {
              v55 = [v9 requiredFeatures];
              v56 = [v55 recordFeatures];

              if ([v56 hasValue:*MEMORY[0x277CFAC38] forName:*MEMORY[0x277CFAC30]])
              {
                v57 = brc_bread_crumbs();
                v58 = brc_notifications_log();
                if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
                {
                  [BRCPeriodicSyncOperation scheduleSyncDownIfNeededForZoneID:zoneIfAny:zoneType:];
                }

                [v69 setStateBits:0x400000];
              }
            }
          }

          goto LABEL_55;
        }

LABEL_47:
        v51 = 0;
        if (!v9)
        {
          goto LABEL_55;
        }

        goto LABEL_48;
      }
    }

    goto LABEL_47;
  }

  metadataChangeToken = self->_metadataChangeToken;
  v15 = [v9 currentServerChangeToken];
  v16 = metadataChangeToken;
  v17 = v15;
  v18 = v17;
  if (v16 != v17)
  {
    if (v17)
    {
      v19 = [(CKServerChangeToken *)v16 isEqual:v17];

      if (v19)
      {
        goto LABEL_56;
      }
    }

    else
    {
    }

    v32 = brc_bread_crumbs();
    v33 = brc_default_log();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      [BRCPeriodicSyncOperation scheduleSyncDownIfNeededForZoneID:zoneIfAny:zoneType:];
    }

    v34 = self->_scheduler;
    v35 = [(_BRCOperation *)self group];
    [(BRCContainerScheduler *)v34 scheduleSyncDownForContainerMetadataWithGroup:v35];
    v36 = 1;
    goto LABEL_40;
  }

LABEL_18:

  v28 = 0;
LABEL_42:

LABEL_57:
  __brc_leave_section(v71);

  v59 = *MEMORY[0x277D85DE8];
  return v28;
}

- (void)main
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = [(_BRCOperation *)self group];

  if (!v3)
  {
    [BRCPeriodicSyncOperation main];
  }

  v4 = objc_opt_new();
  v5 = [MEMORY[0x277CBC5F8] brc_containerMetadataZoneID];
  [v4 addObject:v5];

  v6 = [MEMORY[0x277CBC5F8] brc_zoneHealthZoneID];
  [v4 addObject:v6];

  if (self->_sideCarChangeToken)
  {
    v7 = [MEMORY[0x277CBC5F8] brc_sideCarZoneID];
    [v4 addObject:v7];
  }

  v8 = [(BRCSessionContext *)self->super._sessionContext zoneAppRetriever];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __32__BRCPeriodicSyncOperation_main__block_invoke;
  v22[3] = &unk_278506078;
  v9 = v4;
  v23 = v9;
  [v8 enumeratePrivateServerZones:v22];

  v10 = [objc_alloc(MEMORY[0x277CBC3D0]) initWithRecordZoneIDs:v9];
  v11 = objc_opt_new();
  [v10 setConfiguration:v11];

  v12 = +[BRCContainerCellularSettings containerCellularSettings];
  v13 = [v12 isCellularEnabled];
  v14 = [v10 configuration];
  [v14 setAllowsCellularAccess:v13];

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __32__BRCPeriodicSyncOperation_main__block_invoke_2;
  v21[3] = &unk_278500DC8;
  v21[4] = self;
  [v10 setFetchRecordZonesCompletionBlock:v21];
  v15 = brc_bread_crumbs();
  v16 = brc_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v25 = v9;
    v26 = 2112;
    v27 = v10;
    v28 = 2112;
    v29 = v15;
    _os_log_debug_impl(&dword_223E7A000, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] Running operation to fetch %@: %@%@", buf, 0x20u);
  }

  v17 = MEMORY[0x277CCABB0];
  v18 = [v10 configuration];
  v19 = [v17 numberWithBool:{objc_msgSend(v18, "allowsCellularAccess")}];
  [(_BRCOperation *)self addSubOperation:v10 overrideContext:0 allowsCellularAccess:v19];

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t __32__BRCPeriodicSyncOperation_main__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 clientZone];
  if (([v4 isSyncBlocked] & 1) == 0 && (objc_msgSend(v4, "syncState") & 3) == 0 && objc_msgSend(v3, "hasFetchedRecentsAndFavorites"))
  {
    v5 = *(a1 + 32);
    v6 = [v3 zoneID];
    [v5 addObject:v6];
  }

  return 1;
}

void __32__BRCPeriodicSyncOperation_main__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  memset(v23, 0, sizeof(v23));
  v7 = *(a1 + 32);
  if (v7)
  {
    [v7 logSections];
  }

  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    v25 = v23[0];
    v26 = 2112;
    v27 = v5;
    v28 = 2112;
    v29 = v8;
    _os_log_debug_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx completed fetching changed zone\nzones: %@%@", buf, 0x20u);
  }

  v10 = +[BRCEventsAnalytics sharedAnalytics];
  if (!v5)
  {
    if (!v6)
    {
      v14 = brc_bread_crumbs();
      v15 = brc_default_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        __32__BRCPeriodicSyncOperation_main__block_invoke_2_cold_2();
      }

      v6 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:@"unreachable: No error found"];
    }

    v16 = brc_bread_crumbs();
    v17 = brc_default_log();
    if (os_log_type_enabled(v17, 0x90u))
    {
      __32__BRCPeriodicSyncOperation_main__block_invoke_2_cold_1();
    }

    goto LABEL_18;
  }

  if (v6 && ([v6 brc_containsCloudKitErrorCode:2] & 1) == 0)
  {
    v16 = brc_bread_crumbs();
    v17 = brc_default_log();
    if (os_log_type_enabled(v17, 0x90u))
    {
      __32__BRCPeriodicSyncOperation_main__block_invoke_2_cold_1();
    }

LABEL_18:

    [*(a1 + 32) completedWithResult:0 error:v6];
    [v10 registerAndSendNewPeriodicSyncWithOutcome:@"failed"];
    goto LABEL_19;
  }

  v11 = [*(*(a1 + 32) + 256) periodicSyncInvestigation];
  [v11 completeInvestigation];

  v12 = *(a1 + 32);
  v13 = *(v12 + 256);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __32__BRCPeriodicSyncOperation_main__block_invoke_18;
  v19[3] = &unk_278507798;
  v19[4] = v12;
  v20 = v10;
  v21 = v5;
  v6 = v6;
  v22 = v6;
  [v13 performAsyncOnClientReadWriteDatabaseWorkloop:v19];

LABEL_19:
  __brc_leave_section(v23);

  v18 = *MEMORY[0x277D85DE8];
}

void __32__BRCPeriodicSyncOperation_main__block_invoke_18(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([*(a1 + 32) finishIfCancelled])
  {
    [*(a1 + 40) registerAndSendNewPeriodicSyncWithOutcome:@"cancelled"];
  }

  else
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    v4 = *(a1 + 48);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __32__BRCPeriodicSyncOperation_main__block_invoke_2_22;
    v16[3] = &unk_278507748;
    v16[4] = *(a1 + 32);
    v16[5] = &v21;
    v16[6] = &v17;
    [v4 enumerateKeysAndObjectsUsingBlock:v16];
    v5 = [*(a1 + 56) userInfo];
    v6 = [v5 objectForKey:*MEMORY[0x277CBBFB0]];

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __32__BRCPeriodicSyncOperation_main__block_invoke_3;
    v15[3] = &unk_278507770;
    v15[4] = *(a1 + 32);
    v15[5] = &v21;
    v15[6] = &v17;
    [v6 enumerateKeysAndObjectsUsingBlock:v15];
    if (*(v22 + 12))
    {
      v7 = @"useful";
    }

    else
    {
      v7 = @"useless";
    }

    [*(a1 + 40) registerAndSendNewPeriodicSyncWithOutcome:v7];
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v22 + 12))
      {
        v10 = "useful";
      }

      else
      {
        v10 = "useless";
      }

      *buf = 136315394;
      v26 = v10;
      v27 = 2112;
      v28 = v8;
      _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEFAULT, "[NOTICE] scheduled a %s periodic sync%@", buf, 0x16u);
    }

    if (*(v22 + 12))
    {
      v11 = [*(*(a1 + 32) + 256) periodicSyncInvestigation];
      [v11 setZonesOutOfSync:*(v22 + 12) zonesType:*(v18 + 24)];
    }

    v12 = [*(*(a1 + 32) + 256) analyticsReporter];
    v13 = [AppTelemetryTimeSeriesEvent newMissingPushEventWithNumberOutOfSync:*(v22 + 12) zonesType:*(v18 + 24)];
    [v12 postReportForDefaultSubCategoryWithCategory:8 telemetryTimeEvent:v13];

    [*(a1 + 32) completedWithResult:0 error:0];
    _Block_object_dispose(&v17, 8);
    _Block_object_dispose(&v21, 8);
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __32__BRCPeriodicSyncOperation_main__block_invoke_2_22(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [*(a1 + 32) scheduleSyncDownIfNeededForZoneID:a2 zoneIfAny:a3 zoneType:*(*(a1 + 48) + 8) + 24];
  *(*(*(a1 + 40) + 8) + 24) += result;
  return result;
}

void __32__BRCPeriodicSyncOperation_main__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *(*(*(a1 + 40) + 8) + 24) += [*(a1 + 32) scheduleSyncDownIfNeededForZoneID:v3 zoneIfAny:0 zoneType:*(*(a1 + 48) + 8) + 24];
  }
}

@end