@interface BRCSideCarSyncDownHandler
- (BRCSideCarSyncDownHandler)initWithSessionContext:(id)a3 sideCarPersistedState:(id)a4 serverPersistedState:(id)a5 applyScheduler:(id)a6;
- (void)saveChangedRecords:(id)a3 deletedRecords:(id)a4 serverChangeToken:(id)a5 clientChangeToken:(id)a6;
@end

@implementation BRCSideCarSyncDownHandler

- (BRCSideCarSyncDownHandler)initWithSessionContext:(id)a3 sideCarPersistedState:(id)a4 serverPersistedState:(id)a5 applyScheduler:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = BRCSideCarSyncDownHandler;
  v15 = [(BRCSideCarSyncDownHandler *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_sessionContext, a3);
    objc_storeStrong(&v16->_sideCarPersistedState, a4);
    objc_storeStrong(&v16->_serverPersistedState, a5);
    objc_storeStrong(&v16->_applyScheduler, a6);
  }

  return v16;
}

- (void)saveChangedRecords:(id)a3 deletedRecords:(id)a4 serverChangeToken:(id)a5 clientChangeToken:(id)a6
{
  v52 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x2020000000;
  v41[3] = 0;
  v14 = objc_opt_new();
  if ([v13 length] == 8)
  {
    v15 = v13;
    v16 = *[v13 bytes];
  }

  else
  {
    v16 = 0;
  }

  v17 = brc_bread_crumbs();
  v18 = brc_default_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413314;
    v43 = v10;
    v44 = 2112;
    v45 = v11;
    v46 = 2112;
    v47 = v12;
    v48 = 2048;
    v49 = v16;
    v50 = 2112;
    v51 = v17;
    _os_log_debug_impl(&dword_223E7A000, v18, OS_LOG_TYPE_DEBUG, "[DEBUG] Saving side car changed records %@\ndeleted record %@\nserver change token %@\nrequestID %llu%@", buf, 0x34u);
  }

  v19 = [(BRCSessionContext *)self->_sessionContext serverReadWriteDatabaseFacade];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __99__BRCSideCarSyncDownHandler_saveChangedRecords_deletedRecords_serverChangeToken_clientChangeToken___block_invoke;
  v35[3] = &unk_278501050;
  v35[4] = self;
  v20 = v10;
  v36 = v20;
  v21 = v19;
  v37 = v21;
  v22 = v14;
  v38 = v22;
  v23 = v11;
  v39 = v23;
  v40 = v41;
  [v21 performWithFlags:9 action:v35];
  v24 = [(BRCSessionContext *)self->_sessionContext clientReadWriteDatabaseFacade];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __99__BRCSideCarSyncDownHandler_saveChangedRecords_deletedRecords_serverChangeToken_clientChangeToken___block_invoke_1;
  v29[3] = &unk_278501078;
  v29[4] = self;
  v34 = v16;
  v25 = v24;
  v30 = v25;
  v26 = v12;
  v31 = v26;
  v27 = v22;
  v32 = v27;
  v33 = v41;
  [v25 performWithFlags:37 action:v29];

  _Block_object_dispose(v41, 8);
  v28 = *MEMORY[0x277D85DE8];
}

uint64_t __99__BRCSideCarSyncDownHandler_saveChangedRecords_deletedRecords_serverChangeToken_clientChangeToken___block_invoke(uint64_t a1)
{
  v86 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 8);
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v59 = a1;
  obj = *(a1 + 40);
  v60 = [obj countByEnumeratingWithState:&v75 objects:v85 count:16];
  if (v60)
  {
    v4 = *v76;
    *&v3 = 138412546;
    v55 = v3;
    v56 = v2;
    v57 = *v76;
    do
    {
      for (i = 0; i != v60; i = i + 1)
      {
        if (*v76 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v75 + 1) + 8 * i);
        v7 = [v6 recordID];
        v8 = [v2 zoneAppRetriever];
        v9 = [v7 brc_itemIDWithZoneAppRetriever:v8];

        v73 = 0;
        v74 = 0;
        LOBYTE(v7) = [v6 deserializeSideCarInfo:&v74 error:&v73];
        v10 = v74;
        v11 = v73;
        if (v7)
        {
          v71 = 0;
          v72 = 0;
          v12 = [v6 locateSideCarServerZone:&v72 shareRecordName:&v71 sessionContext:v2];
          v13 = v72;
          v14 = v71;
          v15 = v14;
          if (v12)
          {
            v16 = *(v59 + 48);
            v17 = [v13 dbRowID];
            LOBYTE(v16) = [v16 updateServerItemWithSideCarInfo:v9 sideCarInfo:v10 zoneRowID:v17];

            if (v16)
            {
              [*(v59 + 56) addObject:v13];
            }

            else
            {
              v23 = *(v59 + 48);
              v24 = [v6 recordID];
              v25 = [v24 recordName];
              [v23 insertSideCarLookAheadInfo:v25 shareRecordName:v15 sideCarInfo:v10];
            }

            v2 = v56;
            v4 = v57;
          }

          else if (v14)
          {
            v20 = *(v59 + 48);
            v21 = [v6 recordID];
            v22 = [v21 recordName];
            [v20 insertSideCarLookAheadInfo:v22 shareRecordName:v15 sideCarInfo:v10];

            v4 = v57;
          }

          else
          {
            v26 = brc_bread_crumbs();
            v27 = brc_default_log();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
            {
              *buf = v55;
              v82 = v6;
              v83 = 2112;
              v84 = v26;
              _os_log_fault_impl(&dword_223E7A000, v27, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Couldn't parse alias record name for %@%@", buf, 0x16u);
            }

            v15 = 0;
          }
        }

        else
        {
          v18 = brc_bread_crumbs();
          v19 = brc_default_log();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
          {
            *buf = v55;
            v82 = v6;
            v83 = 2112;
            v84 = v18;
            _os_log_fault_impl(&dword_223E7A000, v19, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Couldn't deserialize side car info on %@%@", buf, 0x16u);
          }

          v15 = 0;
          v13 = 0;
        }
      }

      v60 = [obj countByEnumeratingWithState:&v75 objects:v85 count:16];
    }

    while (v60);
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v28 = v59;
  v61 = *(v59 + 64);
  v29 = [v61 countByEnumeratingWithState:&v67 objects:v80 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v68;
    do
    {
      for (j = 0; j != v30; ++j)
      {
        if (*v68 != v31)
        {
          objc_enumerationMutation(v61);
        }

        v33 = *(*(&v67 + 1) + 8 * j);
        v34 = [v2 zoneAppRetriever];
        v35 = [v33 brc_itemIDWithZoneAppRetriever:v34];

        v66 = 0;
        LOBYTE(v34) = [v33 locateSideCarServerZone:&v66 sessionContext:v2];
        v36 = v66;
        v37 = v36;
        if (v34)
        {
          v38 = *(v28 + 48);
          v39 = [v36 dbRowID];
          LOBYTE(v38) = [v38 updateServerItemWithSideCarInfo:v35 sideCarInfo:0 zoneRowID:v39];

          if (v38)
          {
            [*(v28 + 56) addObject:v37];
          }

          else
          {
            v42 = *(v28 + 48);
            v43 = [v33 recordName];
            [v42 deleteSideCarLookAheadInfoForRecordName:v43];
          }
        }

        else
        {
          v40 = brc_bread_crumbs();
          v41 = brc_default_log();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v82 = v33;
            v83 = 2112;
            v84 = v40;
            _os_log_debug_impl(&dword_223E7A000, v41, OS_LOG_TYPE_DEBUG, "[DEBUG] Ignoring deleted recordID where we couldn't locate the server zone %@%@", buf, 0x16u);
          }

          v28 = v59;
        }
      }

      v30 = [v61 countByEnumeratingWithState:&v67 objects:v80 count:16];
    }

    while (v30);
  }

  if ([*(v28 + 56) count])
  {
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v44 = *(v28 + 56);
    v45 = [v44 countByEnumeratingWithState:&v62 objects:v79 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v63;
      while (2)
      {
        for (k = 0; k != v46; ++k)
        {
          if (*v63 != v47)
          {
            objc_enumerationMutation(v44);
          }

          v49 = *(*(&v62 + 1) + 8 * k);
          if (([v49 allocateRanksWhenCaughtUp:1] & 1) == 0)
          {
            v51 = brc_bread_crumbs();
            v52 = brc_default_log();
            if (os_log_type_enabled(v52, OS_LOG_TYPE_FAULT))
            {
              __99__BRCSideCarSyncDownHandler_saveChangedRecords_deletedRecords_serverChangeToken_clientChangeToken___block_invoke_cold_1(v49, v51, v52);
            }

            v50 = 0;
            goto LABEL_50;
          }

          [*(v28 + 48) saveServerZone:v49];
        }

        v46 = [v44 countByEnumeratingWithState:&v62 objects:v79 count:16];
        if (v46)
        {
          continue;
        }

        break;
      }
    }

    *(*(*(v28 + 72) + 8) + 24) = [*(*(v28 + 32) + 24) nextRank];
  }

  v50 = 1;
LABEL_50:

  v53 = *MEMORY[0x277D85DE8];
  return v50;
}

uint64_t __99__BRCSideCarSyncDownHandler_saveChangedRecords_deletedRecords_serverChangeToken_clientChangeToken___block_invoke_1(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 16);
  v3 = *(a1 + 72);
  v4 = [v2 requestID];
  if (v3 == v4)
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __99__BRCSideCarSyncDownHandler_saveChangedRecords_deletedRecords_serverChangeToken_clientChangeToken___block_invoke_1_cold_1((a1 + 72), v5, v6);
    }
  }

  else
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 72);
      *buf = 134218498;
      v33 = v7;
      v34 = 2048;
      v35 = [v2 requestID];
      v36 = 2112;
      v37 = v5;
      _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEFAULT, "[WARNING] Marking sync request in side care zone as failed because requestIDs differ %lld vs %lld%@", buf, 0x20u);
    }
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = [*(*(a1 + 32) + 8) itemFetcher];
  v9 = [v8 itemsWithSideCarInFlightDiffsEnumeratorWithDBFacade:*(a1 + 40)];

  v10 = [v9 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        if (v3 == v4)
        {
          [v14 markLatestSyncRequestAcknowledgedInZone:&unk_2837B0100];
        }

        else
        {
          [v14 markLatestSyncRequestFailedInZone:&unk_2837B0100];
        }

        [v14 saveToDBForServerEdit:1 keepAliases:1];
      }

      v11 = [v9 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v11);
  }

  [v2 updateWithServerChangeToken:*(a1 + 48) requestID:*(a1 + 72)];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v15 = *(a1 + 56);
  v16 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v23;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [*(*(a1 + 32) + 32) generatedRanksForZone:*(*(&v22 + 1) + 8 * j) upToRank:{*(*(*(a1 + 64) + 8) + 24), v22}];
      }

      v17 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v17);
  }

  v20 = *MEMORY[0x277D85DE8];
  return 1;
}

void __99__BRCSideCarSyncDownHandler_saveChangedRecords_deletedRecords_serverChangeToken_clientChangeToken___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_fault_impl(&dword_223E7A000, log, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: failed to alloc ranks when syncing down side cars for %@%@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

void __99__BRCSideCarSyncDownHandler_saveChangedRecords_deletedRecords_serverChangeToken_clientChangeToken___block_invoke_1_cold_1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v5 = 134218242;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_debug_impl(&dword_223E7A000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] Succeeded in syncing up the side car zone with requestID %lld%@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end