@interface BRCSyncHealthReport
- (BRCSyncHealthReport)init;
- (NSArray)telemetryErrorEvents;
- (NSArray)telemetryOtherEvents;
- (id)_injectionForAnalyticsServiceCode:(int)code;
- (void)_collectAggregatedTelemetryForSession:(id)session;
- (void)_fillTransferFailure:(id)failure withRowID:(unint64_t)d atDate:(id)date session:(id)session;
- (void)dumpAggregatedEvents:(id)events;
- (void)generateReportWithSession:(id)session;
- (void)syncErrors:(id)errors;
@end

@implementation BRCSyncHealthReport

- (BRCSyncHealthReport)init
{
  v16.receiver = self;
  v16.super_class = BRCSyncHealthReport;
  v2 = [(BRCSyncHealthReport *)&v16 init];
  if (v2)
  {
    v3 = objc_opt_new();
    syncUpErrorsByMangledID = v2->_syncUpErrorsByMangledID;
    v2->_syncUpErrorsByMangledID = v3;

    v5 = objc_opt_new();
    syncDownErrorsByMangledID = v2->_syncDownErrorsByMangledID;
    v2->_syncDownErrorsByMangledID = v5;

    v7 = objc_opt_new();
    syncUpFailures = v2->_syncUpFailures;
    v2->_syncUpFailures = v7;

    v9 = objc_opt_new();
    uploadFailures = v2->_uploadFailures;
    v2->_uploadFailures = v9;

    v11 = objc_opt_new();
    downloadFailures = v2->_downloadFailures;
    v2->_downloadFailures = v11;

    v13 = objc_opt_new();
    aggregatedEvents = v2->_aggregatedEvents;
    v2->_aggregatedEvents = v13;
  }

  return v2;
}

- (void)_fillTransferFailure:(id)failure withRowID:(unint64_t)d atDate:(id)date session:(id)session
{
  v32 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  sessionCopy = session;
  failureCopy = failure;
  clientDB = [sessionCopy clientDB];
  v14 = [clientDB fetch:{@"SELECT ci.zone_rowid, IFNULL(si.pcs_state, 0) FROM client_items AS ci LEFT JOIN server_items AS si ON ci.item_id = si.item_id AND ci.zone_rowid = si.zone_rowid WHERE ci.rowid = %lld", d}];

  if ([v14 next])
  {
    v15 = [v14 numberAtIndex:0];
    v16 = [v14 intAtIndex:1];
    v17 = [sessionCopy serverZoneByRowID:v15];
    clientZone = [v17 clientZone];

    [failureCopy encounteredErrorWithPCSState:v16 enhancedDrivePrivacyEnabled:objc_msgSend(clientZone privateDB:"enhancedDrivePrivacyEnabled") atDate:{objc_msgSend(clientZone, "isSharedZone") ^ 1, dateCopy}];
  }

  else
  {
    v19 = brc_bread_crumbs();
    v20 = brc_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      error = [v14 error];
      lastError = error;
      if (!error)
      {
        clientDB2 = [sessionCopy clientDB];
        lastError = [clientDB2 lastError];
      }

      *buf = 134218498;
      dCopy = d;
      v28 = 2112;
      v29 = lastError;
      v30 = 2112;
      v31 = v19;
      _os_log_fault_impl(&dword_223E7A000, v20, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Failed to compute the pcs chain status and zone rowid for item row %lld - %@%@", buf, 0x20u);
      if (!error)
      {
      }
    }

    v15 = [BRCUserDefaults defaultsForMangledID:0];
    supportsEnhancedDrivePrivacy = [v15 supportsEnhancedDrivePrivacy];
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    [failureCopy encounteredErrorWithPCSState:0 enhancedDrivePrivacyEnabled:supportsEnhancedDrivePrivacy privateDB:1 atDate:distantPast];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (id)_injectionForAnalyticsServiceCode:(int)code
{
  if (code == 3)
  {
    v3 = MEMORY[0x277D82C18];
    v4 = "AND item_localsyncupstate = 4";
    goto LABEL_6;
  }

  if (code != 2)
  {
    if (code == 1)
    {
      v3 = MEMORY[0x277D82C18];
      v4 = "AND item_localsyncupstate = 3";
LABEL_6:
      v5 = 29;
      goto LABEL_11;
    }

    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [BRCSyncHealthReport _injectionForAnalyticsServiceCode:];
    }
  }

  v3 = MEMORY[0x277D82C18];
  v4 = "";
  v5 = 0;
LABEL_11:
  v8 = [v3 rawInjection:v4 length:v5];

  return v8;
}

- (void)_collectAggregatedTelemetryForSession:(id)session
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __61__BRCSyncHealthReport__collectAggregatedTelemetryForSession___block_invoke;
  v5[3] = &unk_278500110;
  v5[4] = self;
  sessionCopy = session;
  [BRCAnalyticsReporter _enumerateAggregatedTelemetryForSession:sessionCopy withBlock:v5];
  clientDB = [sessionCopy clientDB];

  [clientDB execute:@"DELETE FROM aggregated_daily_telemetry"];
}

- (void)generateReportWithSession:(id)session
{
  v195 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  if (self->_totalZoneCount)
  {
    [BRCSyncHealthReport generateReportWithSession:];
  }

  clientDB = [sessionCopy clientDB];
  [clientDB assertOnQueue];

  v190[0] = MEMORY[0x277D85DD0];
  v190[1] = 3221225472;
  v190[2] = __49__BRCSyncHealthReport_generateReportWithSession___block_invoke;
  v190[3] = &unk_278500298;
  v190[4] = self;
  [sessionCopy enumerateClientZones:v190];
  self->_totalZoneCount += 4;
  containerScheduler = [sessionCopy containerScheduler];
  internalZoneSyncDownAnalyticsErrors = [containerScheduler internalZoneSyncDownAnalyticsErrors];
  v189[0] = MEMORY[0x277D85DD0];
  v189[1] = 3221225472;
  v189[2] = __49__BRCSyncHealthReport_generateReportWithSession___block_invoke_2;
  v189[3] = &unk_2785002C0;
  v189[4] = self;
  [internalZoneSyncDownAnalyticsErrors enumerateKeysAndObjectsUsingBlock:v189];

  containerScheduler2 = [sessionCopy containerScheduler];
  internalZoneSyncUpAnalyticsErrors = [containerScheduler2 internalZoneSyncUpAnalyticsErrors];
  v188[0] = MEMORY[0x277D85DD0];
  v188[1] = 3221225472;
  v188[2] = __49__BRCSyncHealthReport_generateReportWithSession___block_invoke_3;
  v188[3] = &unk_2785002C0;
  selfCopy = self;
  v188[4] = self;
  [internalZoneSyncUpAnalyticsErrors enumerateKeysAndObjectsUsingBlock:v188];

  v10 = objc_alloc_init(MEMORY[0x277CCA968]);
  v11 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v10 setLocale:v11];

  [v10 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
  v12 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
  v171 = v10;
  [v10 setTimeZone:v12];

  v186 = sessionCopy;
  clientDB2 = [sessionCopy clientDB];
  v14 = [clientDB2 fetch:{@"SELECT error_domain, error_code, error_message, error_timestamp, underlying_error_domain, underlying_error_code, service, item_rowid FROM item_errors"}];

  if ([v14 next])
  {
    v170 = *MEMORY[0x277CBBF70];
    v169 = *MEMORY[0x277CCA7E8];
    do
    {
      context = objc_autoreleasePoolPush();
      v15 = [v14 stringAtIndex:0];
      v174 = [v14 longLongAtIndex:1];
      v16 = [v14 stringAtIndex:2];
      v184 = [v14 stringAtIndex:3];
      v182 = [v14 stringAtIndex:4];
      v17 = [v14 longLongAtIndex:5];
      v18 = [v14 intAtIndex:6];
      v19 = [v14 longLongAtIndex:7];
      v20 = [(BRCSyncHealthReport *)selfCopy _injectionForAnalyticsServiceCode:v18];
      clientDB3 = [v186 clientDB];
      v22 = [clientDB3 numberWithSQL:{@"SELECT 1 FROM client_items WHERE rowid = %llu %@", v19, v20}];

      v178 = v22;
      if ([v22 BOOLValue])
      {
        v23 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
        clientDB4 = v23;
        if (v16)
        {
          [v23 setObject:v16 forKeyedSubscript:v170];
        }

        v172 = v19;
        if ([v182 length])
        {
          v25 = [MEMORY[0x277CCA9B8] errorWithDomain:v182 code:v17 userInfo:0];
          [clientDB4 setObject:v25 forKeyedSubscript:v169];
        }

        v26 = objc_alloc(MEMORY[0x277CCA9B8]);
        if ([clientDB4 count])
        {
          v27 = clientDB4;
        }

        else
        {
          v27 = 0;
        }

        v28 = v15;
        v29 = [v26 initWithDomain:v15 code:v174 userInfo:v27];
        if ([v184 length])
        {
          [v171 dateFromString:v184];
        }

        else
        {
          [MEMORY[0x277CBEAA8] distantPast];
        }
        v175 = ;
        v31 = [[BRCTransferFailureReport alloc] initWithError:v29];
        if (v18 == 3)
        {
          v32 = selfCopy;
          v41 = [(NSMutableSet *)selfCopy->_syncUpFailures member:v31];
          v42 = v41;
          if (v41)
          {
            v43 = v41;
          }

          else
          {
            v43 = v31;
          }

          v44 = v43;

          v30 = v184;
          [(NSMutableSet *)selfCopy->_syncUpFailures addObject:v44];
          v31 = v44;
        }

        else
        {
          if (v18 == 2)
          {
            v32 = selfCopy;
            v37 = [(NSMutableSet *)selfCopy->_downloadFailures member:v31];
            v38 = v37;
            if (v37)
            {
              v39 = v37;
            }

            else
            {
              v39 = v31;
            }

            v40 = v39;

            [(NSMutableSet *)selfCopy->_downloadFailures addObject:v40];
            v31 = v40;
          }

          else if (v18 == 1)
          {
            v32 = selfCopy;
            v33 = [(NSMutableSet *)selfCopy->_uploadFailures member:v31];
            v34 = v33;
            if (v33)
            {
              v35 = v33;
            }

            else
            {
              v35 = v31;
            }

            v36 = v35;

            [(NSMutableSet *)selfCopy->_uploadFailures addObject:v36];
            v31 = v36;
          }

          else
          {
            v45 = brc_bread_crumbs();
            v46 = brc_default_log();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
            {
              *buf = 67109378;
              *v192 = v18;
              *&v192[4] = 2112;
              *&v192[6] = v45;
              _os_log_fault_impl(&dword_223E7A000, v46, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: No service with code %d%@", buf, 0x12u);
            }

            v32 = selfCopy;
          }

          v30 = v184;
        }

        [(BRCSyncHealthReport *)v32 _fillTransferFailure:v31 withRowID:v172 atDate:v175 session:v186];
      }

      else
      {
        clientDB4 = [v186 clientDB];
        [clientDB4 execute:{@"DELETE FROM item_errors WHERE item_rowid = %llu AND service = %d", v19, v18}];
        v28 = v15;
        v30 = v184;
      }

      objc_autoreleasePoolPop(context);
    }

    while (([v14 next] & 1) != 0);
  }

  v176 = [BRCUserDefaults defaultsForMangledID:0];
  delayForStuckThrottle = [v176 delayForStuckThrottle];
  v173 = brc_current_date_nsec();
  v48 = (v173 - delayForStuckThrottle);
  clientDB5 = [v186 clientDB];
  contexta = v48;
  v50 = [clientDB5 fetch:{@"SELECT cd.throttle_id, cd.last_try_stamp FROM client_downloads AS cd INNER JOIN client_items AS li ON cd.throttle_id = li.rowid WHERE cd.last_try_stamp > 0 AND cd.last_try_stamp < %lld AND cd.retry_count = 0 AND cd.throttle_state = 1 AND cd.transfer_queue != '_done' AND li.item_state IN (0) AND li.item_localsyncupstate = 0", v48}];

  if ([v50 next])
  {
    v51 = *MEMORY[0x277CFABD0];
    do
    {
      v52 = objc_autoreleasePoolPush();
      v53 = [v50 longLongAtIndex:0];
      [v50 doubleAtIndex:1];
      v55 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v54 / 1000000000.0];
      v56 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:v51 code:47 userInfo:0];
      v57 = brc_bread_crumbs();
      v58 = brc_default_log();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        *v192 = v53;
        *&v192[8] = 2112;
        *&v192[10] = v57;
        _os_log_impl(&dword_223E7A000, v58, OS_LOG_TYPE_DEFAULT, "[WARNING] Item with row %llu has an item not scheduled for download%@", buf, 0x16u);
      }

      v59 = [[BRCTransferFailureReport alloc] initWithError:v56];
      v60 = [(NSMutableSet *)selfCopy->_downloadFailures member:v59];
      v61 = v60;
      if (v60)
      {
        v62 = v60;
      }

      else
      {
        v62 = v59;
      }

      v63 = v62;

      [(NSMutableSet *)selfCopy->_downloadFailures addObject:v63];
      [(BRCSyncHealthReport *)selfCopy _fillTransferFailure:v63 withRowID:v53 atDate:v55 session:v186];

      objc_autoreleasePoolPop(v52);
    }

    while (([v50 next] & 1) != 0);
  }

  clientDB6 = [v186 clientDB];
  v65 = [clientDB6 fetchWithSlowStatementRadar:@"rdar://157727651" sql:{@"SELECT COUNT(item_id), item_depth FROM server_items WHERE item_depth < 0 GROUP BY item_depth"}];

  v66 = 0x277CCA000uLL;
  v183 = v65;
  if ([v65 next])
  {
    v67 = *MEMORY[0x277CFABD0];
    do
    {
      v68 = objc_autoreleasePoolPush();
      v69 = [v65 unsignedLongLongAtIndex:0];
      v70 = [v65 intAtIndex:1];
      if (v70 <= 0xFFFFFFFA)
      {
        v71 = brc_bread_crumbs();
        v76 = brc_default_log();
        if (os_log_type_enabled(v76, OS_LOG_TYPE_FAULT))
        {
          *buf = 67109378;
          *v192 = v70;
          *&v192[4] = 2112;
          *&v192[6] = v71;
          _os_log_fault_impl(&dword_223E7A000, v76, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Got unexpected item depth: %d%@", buf, 0x12u);
        }
      }

      else
      {
        v71 = [objc_alloc(*(v66 + 2488)) initWithDomain:v67 code:74 - (v70 + 5) userInfo:0];
        v72 = [[BRCTransferFailureReport alloc] initWithError:v71];
        v73 = [(NSMutableSet *)selfCopy->_downloadFailures member:v72];
        v74 = v73;
        if (v73)
        {
          v75 = v73;
        }

        else
        {
          v75 = v72;
        }

        v76 = v75;

        v66 = 0x277CCA000;
        [v76 encounteredErrors:v69 atDate:0];
      }

      objc_autoreleasePoolPop(v68);
      v65 = v183;
    }

    while (([v183 next] & 1) != 0);
  }

  clientDB7 = [v186 clientDB];
  v78 = [clientDB7 fetch:{@"SELECT cu.throttle_id, cu.last_try_stamp FROM client_uploads AS cu INNER JOIN client_items AS li ON cu.throttle_id = li.rowid WHERE cu.last_try_stamp > 0 AND cu.last_try_stamp < %lld AND cu.retry_count = 0 AND cu.throttle_state = 1 AND cu.transfer_queue != '_done' AND li.item_state IN (0) AND li.item_localsyncupstate = 3", contexta}];

  if ([v78 next])
  {
    v79 = *MEMORY[0x277CFABD0];
    do
    {
      v80 = objc_autoreleasePoolPush();
      v81 = [v78 longLongAtIndex:0];
      [v78 doubleAtIndex:1];
      v83 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v82 / 1000000000.0];
      v84 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:v79 code:49 userInfo:0];
      v85 = brc_bread_crumbs();
      v86 = brc_default_log();
      if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        *v192 = v81;
        *&v192[8] = 2112;
        *&v192[10] = v85;
        _os_log_impl(&dword_223E7A000, v86, OS_LOG_TYPE_DEFAULT, "[WARNING] Item with row %llu has an item not scheduled for upload%@", buf, 0x16u);
      }

      v87 = [[BRCTransferFailureReport alloc] initWithError:v84];
      v88 = [(NSMutableSet *)selfCopy->_uploadFailures member:v87];
      v89 = v88;
      if (v88)
      {
        v90 = v88;
      }

      else
      {
        v90 = v87;
      }

      v91 = v90;

      [(NSMutableSet *)selfCopy->_uploadFailures addObject:v91];
      [(BRCSyncHealthReport *)selfCopy _fillTransferFailure:v91 withRowID:v81 atDate:v83 session:v186];

      objc_autoreleasePoolPop(v80);
    }

    while (([v78 next] & 1) != 0);
  }

  clientDB8 = [v186 clientDB];
  v93 = [clientDB8 fetch:{@"SELECT csu.throttle_id, csu.last_try_stamp, li.zone_rowid FROM client_sync_up AS csu INNER JOIN client_items AS li ON csu.throttle_id = li.rowid WHERE csu.last_try_stamp > 0 AND csu.last_try_stamp < %lld AND csu.retry_count = 0 AND csu.throttle_state IN (1, 50) AND csu.throttle_state != 0  AND NOT item_id_is_documents(li.item_id) AND li.item_localsyncupstate = 4", contexta}];

  v94 = v186;
  if ([v93 next])
  {
    contextb = *MEMORY[0x277CFABD0];
    do
    {
      v185 = objc_autoreleasePoolPush();
      v95 = [v93 longLongAtIndex:0];
      [v93 doubleAtIndex:1];
      v97 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v96 / 1000000000.0];
      v98 = brc_bread_crumbs();
      v99 = brc_default_log();
      if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        *v192 = v95;
        *&v192[8] = 2112;
        *&v192[10] = v98;
        _os_log_impl(&dword_223E7A000, v99, OS_LOG_TYPE_DEFAULT, "[WARNING] Item with row %llu has an item not scheduled for sync up%@", buf, 0x16u);
      }

      v100 = [v93 numberAtIndex:2];
      v101 = [v94 serverZoneByRowID:v100];
      clientZone = [v101 clientZone];

      if ([clientZone isSyncBlocked])
      {
        v103 = 36;
      }

      else
      {
        v103 = 51;
      }

      v104 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:contextb code:v103 userInfo:0];
      if ([clientZone isSyncBlockedBecauseAppNotInstalled])
      {
        v105 = brc_bread_crumbs();
        v106 = brc_default_log();
        if (os_log_type_enabled(v106, 0x90u))
        {
          *buf = 138412546;
          *v192 = clientZone;
          *&v192[8] = 2112;
          *&v192[10] = v105;
          _os_log_error_impl(&dword_223E7A000, v106, 0x90u, "[ERROR] Zone %@ has items which need sync. Clearing app sync blocked%@", buf, 0x16u);
        }

        [clientZone clearStateBits:4096];
        [clientZone scheduleSyncUp];
      }

      v107 = [[BRCTransferFailureReport alloc] initWithError:v104];
      v108 = [(NSMutableSet *)selfCopy->_syncUpFailures member:v107];
      v109 = v108;
      if (v108)
      {
        v110 = v108;
      }

      else
      {
        v110 = v107;
      }

      v111 = v110;

      [(NSMutableSet *)selfCopy->_syncUpFailures addObject:v111];
      v94 = v186;
      [(BRCSyncHealthReport *)selfCopy _fillTransferFailure:v111 withRowID:v95 atDate:v97 session:v186];

      objc_autoreleasePoolPop(v185);
    }

    while (([v93 next] & 1) != 0);
  }

  clientDB9 = [v94 clientDB];
  v113 = [clientDB9 fetch:{@"SELECT ci.rowid, item_id_is_documents(ci.item_id) FROM client_items AS ci WHERE ci.item_localsyncupstate = 4 AND ci.item_min_supported_os_rowid IS NULL AND NOT EXISTS (SELECT 1 FROM client_sync_up AS cs WHERE cs.throttle_id = ci.rowid AND cs.throttle_state != 0)"}];

  v114 = v173;
  if ([v113 next])
  {
    v115 = *MEMORY[0x277CFABD0];
    do
    {
      v116 = objc_autoreleasePoolPush();
      v117 = [v113 longLongAtIndex:0];
      v118 = [v113 intAtIndex:1];
      v119 = objc_alloc(MEMORY[0x277CCA9B8]);
      if (v118)
      {
        v120 = 156;
      }

      else
      {
        v120 = 52;
      }

      v121 = [v119 initWithDomain:v115 code:v120 userInfo:0];
      v122 = brc_bread_crumbs();
      v123 = brc_default_log();
      if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v124 = "Documents folder";
        if (!v118)
        {
          v124 = "item";
        }

        *v192 = v124;
        *&v192[8] = 2048;
        *&v192[10] = v117;
        v193 = 2112;
        v194 = v122;
        _os_log_impl(&dword_223E7A000, v123, OS_LOG_TYPE_DEFAULT, "[WARNING] %s with row %llu has an item with a missing sync up throttle.%@", buf, 0x20u);
      }

      v125 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v114 / 1000000000.0];
      v126 = [[BRCTransferFailureReport alloc] initWithError:v121];
      v127 = [(NSMutableSet *)selfCopy->_syncUpFailures member:v126];
      v128 = v127;
      if (v127)
      {
        v129 = v127;
      }

      else
      {
        v129 = v126;
      }

      v130 = v129;

      [(NSMutableSet *)selfCopy->_syncUpFailures addObject:v130];
      [(BRCSyncHealthReport *)selfCopy _fillTransferFailure:v130 withRowID:v117 atDate:v125 session:v186];

      objc_autoreleasePoolPop(v116);
    }

    while (([v113 next] & 1) != 0);
  }

  clientDB10 = [v186 clientDB];
  v132 = [clientDB10 fetch:{@"SELECT ci.rowid FROM client_items AS ci LEFT JOIN client_uploads AS cu ON ci.rowid = cu.throttle_id WHERE ci.item_localsyncupstate = 3 AND ci.item_localsyncupstate != 0 AND ci.item_type IN (1, 6) AND ci.item_state IN (0) AND IFNULL(cu.throttle_state, 0) = 0"}];

  if ([v132 next])
  {
    v133 = *MEMORY[0x277CFABD0];
    do
    {
      v134 = objc_autoreleasePoolPush();
      v135 = [v132 longLongAtIndex:0];
      v136 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:v133 code:50 userInfo:0];
      v137 = brc_bread_crumbs();
      v138 = brc_default_log();
      if (os_log_type_enabled(v138, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        *v192 = v135;
        *&v192[8] = 2112;
        *&v192[10] = v137;
        _os_log_impl(&dword_223E7A000, v138, OS_LOG_TYPE_DEFAULT, "[WARNING] Item with row %llu has an item with a missing upload throttle%@", buf, 0x16u);
      }

      v139 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v114 / 1000000000.0];
      v140 = [[BRCTransferFailureReport alloc] initWithError:v136];
      v141 = [(NSMutableSet *)selfCopy->_uploadFailures member:v140];
      v142 = v141;
      if (v141)
      {
        v143 = v141;
      }

      else
      {
        v143 = v140;
      }

      v144 = v143;

      [(NSMutableSet *)selfCopy->_uploadFailures addObject:v144];
      [(BRCSyncHealthReport *)selfCopy _fillTransferFailure:v144 withRowID:v135 atDate:v139 session:v186];

      objc_autoreleasePoolPop(v134);
    }

    while (([v132 next] & 1) != 0);
  }

  clientDB11 = [v186 clientDB];
  v146 = [clientDB11 numberWithSQL:{@"SELECT COUNT(*) FROM client_items WHERE item_type IN (9, 10)"}];
  selfCopy->_clientTruthDirFaultCount = [v146 unsignedLongLongValue];

  clientDB12 = [v186 clientDB];
  v148 = [clientDB12 numberWithSQL:{@"SELECT COUNT(*) FROM server_items WHERE item_type IN (9, 10)"}];
  selfCopy->_serverTruthDirFaultCount = [v148 unsignedLongLongValue];

  clientDB13 = [v186 clientDB];
  v150 = [clientDB13 numberWithSQL:{@"SELECT COUNT(*) FROM server_items WHERE item_type IN (0, 9, 10)"}];
  selfCopy->_serverTruthDirCount = [v150 unsignedLongLongValue];

  v151 = [BRCUserDefaults defaultsForMangledID:0];
  LODWORD(v150) = [v151 requestForAccess];

  if (v150)
  {
    clientDB14 = [v186 clientDB];
    v153 = [clientDB14 numberWithSQL:@"SELECT COUNT(*) FROM server_share_items_participants WHERE (participant_flags & 1) == 1"];
    selfCopy->_danglingShareRequesters = [v153 unsignedLongLongValue];
  }

  v154 = time(0);
  clientDB15 = [v186 clientDB];
  v156 = [clientDB15 numberWithSQL:@"SELECT MIN(date) FROM boot_history"];
  selfCopy->_timeSinceLogin = v154 - [v156 unsignedLongLongValue];

  selfCopy->_zonesNeverFullSync = 0;
  v187[0] = MEMORY[0x277D85DD0];
  v187[1] = 3221225472;
  v187[2] = __49__BRCSyncHealthReport_generateReportWithSession___block_invoke_517;
  v187[3] = &unk_2785002E8;
  v187[4] = selfCopy;
  [v186 enumeratePrivateClientZones:v187];
  clientDB16 = [v186 clientDB];
  v158 = [clientDB16 fetchWithSlowStatementRadar:@"<rdar://problem/29182551>" objectOfClass:objc_opt_class() sql:@"SELECT COUNT(1) FROM client_items"];
  selfCopy->_clientTruthTotalItemsCount = [v158 unsignedLongLongValue];

  clientDB17 = [v186 clientDB];
  v160 = [clientDB17 fetchWithSlowStatementRadar:@"<rdar://problem/29182551>" objectOfClass:objc_opt_class() sql:@"SELECT COUNT(1) FROM server_items"];
  selfCopy->_serverTruthTotalItemsCount = [v160 unsignedLongLongValue];

  [(BRCSyncHealthReport *)selfCopy _collectAggregatedTelemetryForSession:v186];
  v161 = brc_bread_crumbs();
  v162 = brc_default_log();
  if (os_log_type_enabled(v162, OS_LOG_TYPE_DEBUG))
  {
    [BRCSyncHealthReport generateReportWithSession:selfCopy];
  }

  accountFacade = [v186 accountFacade];
  accountDSID = [accountFacade accountDSID];
  dsid = selfCopy->_dsid;
  selfCopy->_dsid = accountDSID;

  v166 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", objc_msgSend(accountFacade, "rampNumber")];
  rampNumber = selfCopy->_rampNumber;
  selfCopy->_rampNumber = v166;

  v168 = *MEMORY[0x277D85DE8];
}

uint64_t __49__BRCSyncHealthReport_generateReportWithSession___block_invoke(uint64_t a1, void *a2)
{
  ++*(*(a1 + 32) + 80);
  v3 = a2;
  if ([v3 isSyncBlocked])
  {
    ++*(*(a1 + 32) + 88);
  }

  v4 = [v3 serverZone];
  v5 = [v4 mangledID];

  v6 = [v3 syncUpAnalyticsError];
  [*(*(a1 + 32) + 8) setObject:v6 forKeyedSubscript:v5];

  v7 = [v3 syncDownAnalyticsError];

  [*(*(a1 + 32) + 16) setObject:v7 forKeyedSubscript:v5];
  return 1;
}

uint64_t __49__BRCSyncHealthReport_generateReportWithSession___block_invoke_517(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isSyncBlocked] & 1) == 0)
  {
    v4 = [v3 serverZone];
    v5 = [v4 state];

    if ((v5 & 0x20) == 0)
    {
      ++*(*(a1 + 32) + 112);
    }
  }

  return 1;
}

- (void)dumpAggregatedEvents:(id)events
{
  v17 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  if ([(NSMutableArray *)self->_aggregatedEvents count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = self->_aggregatedEvents;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [BRCAnalyticsReporter _aggregatedTelemetryDescription:*(*(&v12 + 1) + 8 * i), v12];
          eventsCopy[2](eventsCopy, v10);
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"none"];
    eventsCopy[2](eventsCopy, v5);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)syncErrors:(id)errors
{
  v131 = *MEMORY[0x277D85DE8];
  errorsCopy = errors;
  if (![(NSMutableSet *)self->_uploadFailures count])
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"uploadError: none"];
    errorsCopy[2](errorsCopy, v5);
  }

  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  v6 = self->_uploadFailures;
  v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v120 objects:v130 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v121;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v121 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"uploadError: %@", *(*(&v120 + 1) + 8 * i)];
        errorsCopy[2](errorsCopy, v11);
      }

      v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v120 objects:v130 count:16];
    }

    while (v8);
  }

  if (![(NSMutableSet *)self->_syncUpFailures count])
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"syncUpError: none"];
    errorsCopy[2](errorsCopy, v12);
  }

  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  v13 = self->_syncUpFailures;
  v14 = [(NSMutableSet *)v13 countByEnumeratingWithState:&v116 objects:v129 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v117;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v117 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"syncUpError: %@", *(*(&v116 + 1) + 8 * j)];
        errorsCopy[2](errorsCopy, v18);
      }

      v15 = [(NSMutableSet *)v13 countByEnumeratingWithState:&v116 objects:v129 count:16];
    }

    while (v15);
  }

  if (![(NSMutableSet *)self->_downloadFailures count])
  {
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"downloadError: none"];
    errorsCopy[2](errorsCopy, v19);
  }

  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  v20 = self->_downloadFailures;
  v21 = [(NSMutableSet *)v20 countByEnumeratingWithState:&v112 objects:v128 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v113;
    do
    {
      for (k = 0; k != v22; ++k)
      {
        if (*v113 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"downloadError: %@", *(*(&v112 + 1) + 8 * k)];
        errorsCopy[2](errorsCopy, v25);
      }

      v22 = [(NSMutableSet *)v20 countByEnumeratingWithState:&v112 objects:v128 count:16];
    }

    while (v22);
  }

  selfCopy = self;
  v26 = [BRCCoreAnalyticsReporter dictionaryForErrorsByZone:self->_syncUpErrorsByMangledID wantPrivateZone:0];
  if (![v26 count])
  {
    v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"syncUpSharedZoneError: none"];
    errorsCopy[2](errorsCopy, v27);
  }

  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v95 = v26;
  obj = [v26 allKeys];
  v28 = [obj countByEnumeratingWithState:&v108 objects:v127 count:16];
  if (v28)
  {
    v29 = v28;
    v91 = *v109;
    do
    {
      for (m = 0; m != v29; ++m)
      {
        if (*v109 != v91)
        {
          objc_enumerationMutation(obj);
        }

        v31 = *(*(&v108 + 1) + 8 * m);
        v32 = MEMORY[0x277CCACA8];
        error = [v31 error];
        domain = [error domain];
        error2 = [v31 error];
        code = [error2 code];
        if ([v31 isPCSChained])
        {
          v37 = "yes";
        }

        else
        {
          v37 = "no";
        }

        v38 = [v95 objectForKeyedSubscript:v31];
        v39 = [v32 stringWithFormat:@"syncUpSharedZoneError: %@%ld pcs:%s count:%@", domain, code, v37, v38];;
        errorsCopy[2](errorsCopy, v39);
      }

      v29 = [obj countByEnumeratingWithState:&v108 objects:v127 count:16];
    }

    while (v29);
  }

  v40 = [BRCCoreAnalyticsReporter dictionaryForErrorsByZone:selfCopy->_syncUpErrorsByMangledID wantPrivateZone:1];
  if (![v40 count])
  {
    v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"syncUpPrivateZoneError: none"];
    errorsCopy[2](errorsCopy, v41);
  }

  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v84 = v40;
  obja = [v40 allKeys];
  v42 = [obja countByEnumeratingWithState:&v104 objects:v126 count:16];
  if (v42)
  {
    v43 = v42;
    v92 = *v105;
    do
    {
      for (n = 0; n != v43; ++n)
      {
        if (*v105 != v92)
        {
          objc_enumerationMutation(obja);
        }

        v45 = *(*(&v104 + 1) + 8 * n);
        v46 = MEMORY[0x277CCACA8];
        error3 = [v45 error];
        domain2 = [error3 domain];
        error4 = [v45 error];
        code2 = [error4 code];
        if ([v45 isPCSChained])
        {
          v51 = "yes";
        }

        else
        {
          v51 = "no";
        }

        v52 = [v95 objectForKeyedSubscript:v45];
        v53 = [v46 stringWithFormat:@"syncUpPrivateZoneError: %@%ld pcs:%s count:%@", domain2, code2, v51, v52];;
        errorsCopy[2](errorsCopy, v53);
      }

      v43 = [obja countByEnumeratingWithState:&v104 objects:v126 count:16];
    }

    while (v43);
  }

  v54 = [BRCCoreAnalyticsReporter dictionaryForErrorsByZone:selfCopy->_syncDownErrorsByMangledID wantPrivateZone:0];
  if (![v54 count])
  {
    v55 = [MEMORY[0x277CCACA8] stringWithFormat:@"syncDownSharedZoneError: none"];
    errorsCopy[2](errorsCopy, v55);
  }

  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v83 = v54;
  objb = [v54 allKeys];
  v56 = [objb countByEnumeratingWithState:&v100 objects:v125 count:16];
  if (v56)
  {
    v57 = v56;
    v93 = *v101;
    do
    {
      for (ii = 0; ii != v57; ++ii)
      {
        if (*v101 != v93)
        {
          objc_enumerationMutation(objb);
        }

        v59 = *(*(&v100 + 1) + 8 * ii);
        v60 = MEMORY[0x277CCACA8];
        error5 = [v59 error];
        domain3 = [error5 domain];
        error6 = [v59 error];
        code3 = [error6 code];
        if ([v59 isPCSChained])
        {
          v65 = "yes";
        }

        else
        {
          v65 = "no";
        }

        v66 = [v95 objectForKeyedSubscript:v59];
        v67 = [v60 stringWithFormat:@"syncDownSharedZoneError: %@%ld pcs:%s count:%@", domain3, code3, v65, v66];;
        errorsCopy[2](errorsCopy, v67);
      }

      v57 = [objb countByEnumeratingWithState:&v100 objects:v125 count:16];
    }

    while (v57);
  }

  v68 = [BRCCoreAnalyticsReporter dictionaryForErrorsByZone:selfCopy->_syncDownErrorsByMangledID wantPrivateZone:1];
  if (![v68 count])
  {
    v69 = [MEMORY[0x277CCACA8] stringWithFormat:@"syncDownPrivateZoneError: none"];
    errorsCopy[2](errorsCopy, v69);
  }

  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v86 = v68;
  objc = [v68 allKeys];
  v70 = [objc countByEnumeratingWithState:&v96 objects:v124 count:16];
  if (v70)
  {
    v71 = v70;
    v94 = *v97;
    do
    {
      for (jj = 0; jj != v71; ++jj)
      {
        if (*v97 != v94)
        {
          objc_enumerationMutation(objc);
        }

        v73 = *(*(&v96 + 1) + 8 * jj);
        v74 = MEMORY[0x277CCACA8];
        error7 = [v73 error];
        domain4 = [error7 domain];
        error8 = [v73 error];
        code4 = [error8 code];
        if ([v73 isPCSChained])
        {
          v79 = "yes";
        }

        else
        {
          v79 = "no";
        }

        v80 = [v95 objectForKeyedSubscript:v73];
        v81 = [v74 stringWithFormat:@"syncDownPrivateZoneError: %@%ld pcs:%s count:%@", domain4, code4, v79, v80];;
        errorsCopy[2](errorsCopy, v81);
      }

      v71 = [objc countByEnumeratingWithState:&v96 objects:v124 count:16];
    }

    while (v71);
  }

  v82 = *MEMORY[0x277D85DE8];
}

- (NSArray)telemetryErrorEvents
{
  v98 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v44 = [(NSMutableDictionary *)self->_syncUpErrorsByMangledID count];
  v43 = [(NSMutableDictionary *)self->_syncDownErrorsByMangledID count];
  syncUpErrorsByMangledID = self->_syncUpErrorsByMangledID;
  v93[0] = MEMORY[0x277D85DD0];
  v93[1] = 3221225472;
  v93[2] = __43__BRCSyncHealthReport_telemetryErrorEvents__block_invoke;
  v93[3] = &unk_2785002C0;
  v5 = v3;
  v94 = v5;
  [(NSMutableDictionary *)syncUpErrorsByMangledID enumerateKeysAndObjectsUsingBlock:v93];
  syncDownErrorsByMangledID = self->_syncDownErrorsByMangledID;
  v91[0] = MEMORY[0x277D85DD0];
  v91[1] = 3221225472;
  v91[2] = __43__BRCSyncHealthReport_telemetryErrorEvents__block_invoke_2;
  v91[3] = &unk_2785002C0;
  v48 = v5;
  v92 = v48;
  [(NSMutableDictionary *)syncDownErrorsByMangledID enumerateKeysAndObjectsUsingBlock:v91];
  v87 = 0;
  v88 = &v87;
  v89 = 0x2020000000;
  v90 = 0;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  obj = self->_uploadFailures;
  v7 = [(NSMutableSet *)obj countByEnumeratingWithState:&v83 objects:v97 count:16];
  if (v7)
  {
    v8 = *v84;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v84 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v83 + 1) + 8 * i);
        privateDBErrorCountByPCSAndEDPState = [v10 privateDBErrorCountByPCSAndEDPState];
        v80[0] = MEMORY[0x277D85DD0];
        v80[1] = 3221225472;
        v80[2] = __43__BRCSyncHealthReport_telemetryErrorEvents__block_invoke_3;
        v80[3] = &unk_278500310;
        v80[4] = v10;
        v12 = v48;
        v81 = v12;
        v82 = &v87;
        [privateDBErrorCountByPCSAndEDPState enumerateKeysAndObjectsUsingBlock:v80];

        shareDBErrorCountByPCSAndEDPState = [v10 shareDBErrorCountByPCSAndEDPState];
        v77[0] = MEMORY[0x277D85DD0];
        v77[1] = 3221225472;
        v77[2] = __43__BRCSyncHealthReport_telemetryErrorEvents__block_invoke_4;
        v77[3] = &unk_278500310;
        v77[4] = v10;
        v78 = v12;
        v79 = &v87;
        [shareDBErrorCountByPCSAndEDPState enumerateKeysAndObjectsUsingBlock:v77];
      }

      v7 = [(NSMutableSet *)obj countByEnumeratingWithState:&v83 objects:v97 count:16];
    }

    while (v7);
  }

  v73 = 0;
  v74 = &v73;
  v75 = 0x2020000000;
  v76 = 0;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  obja = self->_downloadFailures;
  v14 = [(NSMutableSet *)obja countByEnumeratingWithState:&v69 objects:v96 count:16];
  if (v14)
  {
    v15 = *v70;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v70 != v15)
        {
          objc_enumerationMutation(obja);
        }

        v17 = *(*(&v69 + 1) + 8 * j);
        privateDBErrorCountByPCSAndEDPState2 = [v17 privateDBErrorCountByPCSAndEDPState];
        v66[0] = MEMORY[0x277D85DD0];
        v66[1] = 3221225472;
        v66[2] = __43__BRCSyncHealthReport_telemetryErrorEvents__block_invoke_5;
        v66[3] = &unk_278500310;
        v66[4] = v17;
        v19 = v48;
        v67 = v19;
        v68 = &v73;
        [privateDBErrorCountByPCSAndEDPState2 enumerateKeysAndObjectsUsingBlock:v66];

        shareDBErrorCountByPCSAndEDPState2 = [v17 shareDBErrorCountByPCSAndEDPState];
        v63[0] = MEMORY[0x277D85DD0];
        v63[1] = 3221225472;
        v63[2] = __43__BRCSyncHealthReport_telemetryErrorEvents__block_invoke_6;
        v63[3] = &unk_278500310;
        v63[4] = v17;
        v64 = v19;
        v65 = &v73;
        [shareDBErrorCountByPCSAndEDPState2 enumerateKeysAndObjectsUsingBlock:v63];
      }

      v14 = [(NSMutableSet *)obja countByEnumeratingWithState:&v69 objects:v96 count:16];
    }

    while (v14);
  }

  v59 = 0;
  v60 = &v59;
  v61 = 0x2020000000;
  v62 = 0;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  objb = self->_syncUpFailures;
  v21 = [(NSMutableSet *)objb countByEnumeratingWithState:&v55 objects:v95 count:16];
  if (v21)
  {
    v22 = *v56;
    do
    {
      for (k = 0; k != v21; ++k)
      {
        if (*v56 != v22)
        {
          objc_enumerationMutation(objb);
        }

        v24 = *(*(&v55 + 1) + 8 * k);
        privateDBErrorCountByPCSAndEDPState3 = [v24 privateDBErrorCountByPCSAndEDPState];
        v52[0] = MEMORY[0x277D85DD0];
        v52[1] = 3221225472;
        v52[2] = __43__BRCSyncHealthReport_telemetryErrorEvents__block_invoke_7;
        v52[3] = &unk_278500310;
        v52[4] = v24;
        v26 = v48;
        v53 = v26;
        v54 = &v59;
        [privateDBErrorCountByPCSAndEDPState3 enumerateKeysAndObjectsUsingBlock:v52];

        shareDBErrorCountByPCSAndEDPState3 = [v24 shareDBErrorCountByPCSAndEDPState];
        v49[0] = MEMORY[0x277D85DD0];
        v49[1] = 3221225472;
        v49[2] = __43__BRCSyncHealthReport_telemetryErrorEvents__block_invoke_8;
        v49[3] = &unk_278500310;
        v49[4] = v24;
        v50 = v26;
        v51 = &v59;
        [shareDBErrorCountByPCSAndEDPState3 enumerateKeysAndObjectsUsingBlock:v49];
      }

      v21 = [(NSMutableSet *)objb countByEnumeratingWithState:&v55 objects:v95 count:16];
    }

    while (v21);
  }

  v28 = [BRCUserDefaults defaultsForMangledID:0];
  telemetryEventQueueSize = [v28 telemetryEventQueueSize];

  v30 = telemetryEventQueueSize - 6;
  if ([v48 count] > v30)
  {
    [v48 removeObjectsInRange:{v30, objc_msgSend(v48, "count") - v30}];
  }

  v31 = *(v88 + 6);
  v32 = *(v74 + 6);
  v33 = *(v60 + 6);
  v34 = [AppTelemetryTimeSeriesEvent newCASyncUpZoneErrorCountEventWithCount:v44];
  [v48 addObject:v34];

  v35 = [AppTelemetryTimeSeriesEvent newCASyncDownErrorCountEventWithCount:v43];
  [v48 addObject:v35];

  v36 = [AppTelemetryTimeSeriesEvent newCASyncUpItemErrorCountEventWithCount:*(v60 + 6)];
  [v48 addObject:v36];

  v37 = [AppTelemetryTimeSeriesEvent newCAUploadErrorCountEventWithCount:*(v88 + 6)];
  [v48 addObject:v37];

  v38 = [AppTelemetryTimeSeriesEvent newCADownloadErrorCountEventWithCount:*(v74 + 6)];
  [v48 addObject:v38];

  v39 = [AppTelemetryTimeSeriesEvent newCATotalErrorCountEventWithCount:(v43 + v44 + v31 + v32 + v33)];
  [v48 addObject:v39];

  v40 = v48;
  _Block_object_dispose(&v59, 8);
  _Block_object_dispose(&v73, 8);
  _Block_object_dispose(&v87, 8);

  v41 = *MEMORY[0x277D85DE8];

  return v40;
}

void __43__BRCSyncHealthReport_telemetryErrorEvents__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v10 = [v5 error];
  v7 = [v5 isPCSChained];
  v8 = [v5 isEnhancedDrivePrivacyEnabled];

  v9 = [AppTelemetryTimeSeriesEvent newCASyncUpZoneErrorEventWithError:v10 pcsChained:v7 enhancedDrivePrivacyEnabled:v8 zoneMangledID:v6];
  [v4 addObject:v9];
}

void __43__BRCSyncHealthReport_telemetryErrorEvents__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v10 = [v5 error];
  v7 = [v5 isPCSChained];
  v8 = [v5 isEnhancedDrivePrivacyEnabled];

  v9 = [AppTelemetryTimeSeriesEvent newCASyncDownErrorEventWithError:v10 pcsChained:v7 enhancedDrivePrivacyEnabled:v8 zoneMangledID:v6];
  [v4 addObject:v9];
}

void __43__BRCSyncHealthReport_telemetryErrorEvents__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v6 left];
  v8 = [v7 intValue];

  v9 = [v6 right];

  v10 = [v9 BOOLValue];
  v11 = [v5 intValue];

  v15 = [*(a1 + 32) error];
  v12 = *(a1 + 40);
  v13 = [AppTelemetryTimeSeriesEvent newCAUploadErrorEventWithError:v15 pcsChained:(v8 & 0xFFFFFFFE) == 2 enhancedDrivePrivacyEnabled:v10 sharedZone:0 count:v11];
  [v12 addObject:v13];

  if ([v15 brc_isExpectedErrorForTelemetry])
  {
    v14 = 0;
  }

  else
  {
    v14 = v11;
  }

  *(*(*(a1 + 48) + 8) + 24) += v14;
}

void __43__BRCSyncHealthReport_telemetryErrorEvents__block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v6 left];
  v8 = [v7 intValue];

  v9 = [v6 right];

  v10 = [v9 BOOLValue];
  v11 = [v5 intValue];

  v15 = [*(a1 + 32) error];
  v12 = *(a1 + 40);
  v13 = [AppTelemetryTimeSeriesEvent newCAUploadErrorEventWithError:v15 pcsChained:(v8 & 0xFFFFFFFE) == 2 enhancedDrivePrivacyEnabled:v10 sharedZone:1 count:v11];
  [v12 addObject:v13];

  if ([v15 brc_isExpectedErrorForTelemetry])
  {
    v14 = 0;
  }

  else
  {
    v14 = v11;
  }

  *(*(*(a1 + 48) + 8) + 24) += v14;
}

void __43__BRCSyncHealthReport_telemetryErrorEvents__block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v6 left];
  v8 = [v7 intValue];

  v9 = [v6 right];

  v10 = [v9 BOOLValue];
  v11 = [v5 intValue];

  v15 = [*(a1 + 32) error];
  v12 = *(a1 + 40);
  v13 = [AppTelemetryTimeSeriesEvent newCADownloadErrorEventWithError:v15 pcsChained:(v8 & 0xFFFFFFFE) == 2 enhancedDrivePrivacyEnabled:v10 sharedZone:0 count:v11];
  [v12 addObject:v13];

  if ([v15 brc_isExpectedErrorForTelemetry])
  {
    v14 = 0;
  }

  else
  {
    v14 = v11;
  }

  *(*(*(a1 + 48) + 8) + 24) += v14;
}

void __43__BRCSyncHealthReport_telemetryErrorEvents__block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v6 left];
  v8 = [v7 intValue];

  v9 = [v6 right];

  v10 = [v9 BOOLValue];
  v11 = [v5 intValue];

  v15 = [*(a1 + 32) error];
  v12 = *(a1 + 40);
  v13 = [AppTelemetryTimeSeriesEvent newCADownloadErrorEventWithError:v15 pcsChained:(v8 & 0xFFFFFFFE) == 2 enhancedDrivePrivacyEnabled:v10 sharedZone:1 count:v11];
  [v12 addObject:v13];

  if ([v15 brc_isExpectedErrorForTelemetry])
  {
    v14 = 0;
  }

  else
  {
    v14 = v11;
  }

  *(*(*(a1 + 48) + 8) + 24) += v14;
}

void __43__BRCSyncHealthReport_telemetryErrorEvents__block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v6 left];
  v8 = [v7 intValue];

  v9 = [v6 right];

  v10 = [v9 BOOLValue];
  v11 = [v5 intValue];

  v15 = [*(a1 + 32) error];
  v12 = *(a1 + 40);
  v13 = [AppTelemetryTimeSeriesEvent newCASyncUpItemErrorEventWithError:v15 pcsChained:(v8 & 0xFFFFFFFE) == 2 enhancedDrivePrivacyEnabled:v10 sharedZone:0 count:v11];
  [v12 addObject:v13];

  if ([v15 brc_isExpectedErrorForTelemetry])
  {
    v14 = 0;
  }

  else
  {
    v14 = v11;
  }

  *(*(*(a1 + 48) + 8) + 24) += v14;
}

void __43__BRCSyncHealthReport_telemetryErrorEvents__block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v6 left];
  v8 = [v7 intValue];

  v9 = [v6 right];

  v10 = [v9 BOOLValue];
  v11 = [v5 intValue];

  v15 = [*(a1 + 32) error];
  v12 = *(a1 + 40);
  v13 = [AppTelemetryTimeSeriesEvent newCASyncUpItemErrorEventWithError:v15 pcsChained:(v8 & 0xFFFFFFFE) == 2 enhancedDrivePrivacyEnabled:v10 sharedZone:1 count:v11];
  [v12 addObject:v13];

  if ([v15 brc_isExpectedErrorForTelemetry])
  {
    v14 = 0;
  }

  else
  {
    v14 = v11;
  }

  *(*(*(a1 + 48) + 8) + 24) += v14;
}

- (NSArray)telemetryOtherEvents
{
  v3 = objc_opt_new();
  v4 = [AppTelemetryTimeSeriesEvent newQBSDirFaultsCountEvent:self->_clientTruthDirFaultCount serverTruthDirFaultCount:self->_serverTruthDirFaultCount serverTruthDirCount:self->_serverTruthDirCount timeSinceLogin:self->_timeSinceLogin serverTruthTotalItemsCount:self->_serverTruthTotalItemsCount zonesNeverFullSync:self->_zonesNeverFullSync];
  [v3 addObject:v4];

  if (self->_danglingShareRequesters)
  {
    dsid = [(BRCSyncHealthReport *)self dsid];
    v6 = [AppTelemetryTimeSeriesEvent newLongEvent:217 UUID:dsid value:self->_danglingShareRequesters];
    [v3 addObject:v6];
  }

  return v3;
}

- (void)_injectionForAnalyticsServiceCode:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();
  _os_log_fault_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0x12u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)generateReportWithSession:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = brc_bread_crumbs();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    v3 = 138412290;
    v4 = v0;
    _os_log_fault_impl(&dword_223E7A000, v1, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: _totalZoneCount == 0%@", &v3, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

- (void)generateReportWithSession:(void *)a1 .cold.2(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1[6];
  v1 = a1[7];
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[8];
  v6 = a1[9];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9();
  _os_log_debug_impl(v7, v8, OS_LOG_TYPE_DEBUG, v9, v10, 0x48u);
  v11 = *MEMORY[0x277D85DE8];
}

@end