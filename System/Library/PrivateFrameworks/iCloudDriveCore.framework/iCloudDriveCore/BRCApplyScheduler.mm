@interface BRCApplyScheduler
- (BRCApplyScheduler)initWithAccountSession:(id)session;
- (id)descriptionForRejectedItem:(id)item context:(id)context;
- (id)descriptionForServerItem:(id)item context:(id)context;
- (unint64_t)_addRanksUpToRank:(int64_t)rank inZone:(id)zone;
- (void)_close;
- (void)_handleWatchingFaults;
- (void)_recoverAndCreateApplyJobsForServerItemsWithNoMatchingClientItems:(id)items batchSize:(unint64_t)size recoveryTask:(id)task completion:(id)completion;
- (void)_recoverAndReportMissingJobsWithCompletion:(id)completion report:(BOOL)report recoveryTask:(id)task;
- (void)_scheduleApplyJobWithID:(id)d zone:(id)zone applyKind:(unsigned int)kind;
- (void)deleteExpiredJobs;
- (void)deleteNonRejectionJobsForZone:(id)zone;
- (void)describeInBuffer:(id)buffer aggregateOfJobsMatching:(id)matching context:(id)context;
- (void)didCompleteCrossZoneMigrationForAppLibrary:(id)library;
- (void)didCreateMissingParentID:(id)d zone:(id)zone;
- (void)didReparentOrKillItemID:(id)d parentItemID:(id)iD zone:(id)zone;
- (void)generatedRanksForZone:(id)zone upToRank:(int64_t)rank;
- (void)monitorFaultingForZone:(id)zone;
- (void)repopulateJobsForZone:(id)zone;
- (void)rescheduleItemsRecursivelyUnderFolder:(id)folder;
- (void)rescheduleMissingTargetAliasesWithTarget:(id)target;
- (void)resetBackoffForServerItem:(id)item;
- (void)schedule;
- (void)stopMonitoringFaultingForZone:(id)zone;
@end

@implementation BRCApplyScheduler

- (void)schedule
{
  v3 = [BRCUserDefaults defaultsForMangledID:0];
  writerApplyBatchSize = [v3 writerApplyBatchSize];
  applySchedulerJobMaxRetriesBeforeAssert = [v3 applySchedulerJobMaxRetriesBeforeAssert];
  clientDB = [(BRCAccountSession *)self->super._session clientDB];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __29__BRCApplyScheduler_schedule__block_invoke;
  v7[3] = &unk_278501DE8;
  v7[4] = self;
  v8 = writerApplyBatchSize;
  v9 = applySchedulerJobMaxRetriesBeforeAssert;
  [clientDB groupInTransaction:v7];
}

uint64_t __29__BRCApplyScheduler_schedule__block_invoke(uint64_t a1)
{
  v2 = [[BRCSignpostTracker alloc] initWithLabel:1];
  v3 = [*(*(a1 + 32) + 8) bouncingAnalyzer];
  [v3 startBouncingIncidentBatch];

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = [MEMORY[0x277D82C18] rawInjection:"throttle_id length:{zone_rowid, apply_kind, retry_count", 48}];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __29__BRCApplyScheduler_schedule__block_invoke_2;
  v9[3] = &unk_278501DC0;
  v9[4] = *(a1 + 32);
  v10 = *(a1 + 44);
  [v4 scheduleWithBatchSize:v5 whereSQLClause:0 columns:v6 actionHandler:v9];

  if ([*(*(a1 + 32) + 72) count])
  {
    [*(a1 + 32) _handleWatchingFaults];
  }

  v7 = [*(*(a1 + 32) + 8) bouncingAnalyzer];
  [v7 stopBouncingIncidentBatch];

  [(BRCSignpostTracker *)v2 endSignpostEvent];
  return 1;
}

void __29__BRCApplyScheduler_schedule__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 numberAtIndex:(a3 + 1)];
  v7 = [*(*(a1 + 32) + 8) serverZoneByRowID:v6];
  v8 = -[BRCApplyJobIdentifier initWithItemDBRowID:]([BRCApplyJobIdentifier alloc], "initWithItemDBRowID:", [v5 unsignedLongLongAtIndex:a3]);
  v9 = [v5 unsignedIntAtIndex:(a3 + 2)];
  v10 = [v5 numberAtIndex:(a3 + 3)];

  if ([v10 longLongValue] >= *(a1 + 40))
  {
    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      v14 = [(BRCApplyJobIdentifier *)v8 rank];
      v15 = [*(a1 + 32) tableName];
      v16 = 134218754;
      v17 = v14;
      v18 = 2112;
      v19 = v15;
      v20 = 2048;
      v21 = [v10 longLongValue];
      v22 = 2112;
      v23 = v11;
      _os_log_fault_impl(&dword_223E7A000, v12, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Apply Changes for rank %lld in table %@ seems to keep failing. retry_count: %lld%@", &v16, 0x2Au);
    }
  }

  [*(a1 + 32) _scheduleApplyJobWithID:v8 zone:v7 applyKind:v9];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)monitorFaultingForZone:(id)zone
{
  zoneCopy = zone;
  clientDB = [(BRCAccountSession *)self->super._session clientDB];
  [clientDB assertOnQueue];

  if (([(NSMutableSet *)self->_clientZonesWatchingFaults containsObject:zoneCopy]& 1) == 0)
  {
    [(NSMutableSet *)self->_clientZonesWatchingFaults addObject:zoneCopy];
    [(BRCFSSchedulerBase *)self signal];
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [BRCApplyScheduler(FPFSAdditions) monitorFaultingForZone:];
    }
  }
}

- (void)stopMonitoringFaultingForZone:(id)zone
{
  zoneCopy = zone;
  clientDB = [(BRCAccountSession *)self->super._session clientDB];
  [clientDB assertOnQueue];

  [(NSMutableSet *)self->_clientZonesWatchingFaults removeObject:zoneCopy];
  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [BRCApplyScheduler(FPFSAdditions) stopMonitoringFaultingForZone:];
  }
}

- (BRCApplyScheduler)initWithAccountSession:(id)session
{
  v7.receiver = self;
  v7.super_class = BRCApplyScheduler;
  v3 = [(BRCFSSchedulerBase *)&v7 initWithSession:session name:@"Apply Changes" tableName:@"client_unapplied_table"];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
    clientZonesWatchingFaults = v3->_clientZonesWatchingFaults;
    v3->_clientZonesWatchingFaults = v4;
  }

  return v3;
}

- (id)descriptionForServerItem:(id)item context:(id)context
{
  contextCopy = context;
  v7 = -[BRCApplyJobIdentifier initWithItemDBRowID:]([BRCApplyJobIdentifier alloc], "initWithItemDBRowID:", [item rank]);
  v8 = [(BRCFSSchedulerBase *)self descriptionForJobsMatching:v7 context:contextCopy];

  return v8;
}

- (id)descriptionForRejectedItem:(id)item context:(id)context
{
  contextCopy = context;
  v7 = -[BRCApplyJobIdentifier initWithItemDBRowID:]([BRCApplyJobIdentifier alloc], "initWithItemDBRowID:", -[item dbRowID]);
  v8 = [(BRCFSSchedulerBase *)self descriptionForJobsMatching:v7 context:contextCopy];

  return v8;
}

- (void)describeInBuffer:(id)buffer aggregateOfJobsMatching:(id)matching context:(id)context
{
  bufferCopy = buffer;
  matchingCopy = matching;
  contextCopy = context;
  v11 = [contextCopy db];
  v12 = v11;
  if (v11)
  {
    clientDB = v11;
  }

  else
  {
    clientDB = [(BRCAccountSession *)self->super._session clientDB];
  }

  v14 = clientDB;

  matchingJobsWhereSQLClause = [matchingCopy matchingJobsWhereSQLClause];
  v16 = [v14 fetch:{@"SELECT throttle_state, COUNT(*) FROM client_unapplied_table WHERE %@ AND throttle_id > 0   AND throttle_id IN (SELECT item_rank FROM server_items) GROUP BY throttle_state", matchingJobsWhereSQLClause}];

  if ([v16 next])
  {
    do
    {
      v17 = [v16 unsignedIntAtIndex:0];
      v18 = [v16 unsignedLongAtIndex:1];
      v19 = [BRCDumpContext stringFromThrottleState:v17 context:contextCopy];
      [bufferCopy appendFormat:@" %@:%lld", v19, v18];
    }

    while (([v16 next] & 1) != 0);
  }

  matchingJobsWhereSQLClause2 = [matchingCopy matchingJobsWhereSQLClause];
  v21 = [v14 numberWithSQL:{@"SELECT COUNT(*) FROM client_unapplied_table WHERE %@ AND throttle_id > 0   AND throttle_id NOT IN (SELECT item_rank FROM server_items)", matchingJobsWhereSQLClause2}];

  if (v21)
  {
    [bufferCopy appendFormat:@" expired:%@", v21];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [BRCApplyScheduler describeInBuffer:aggregateOfJobsMatching:context:];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = matchingCopy;
  }

  else
  {
    v22 = 0;
  }

  clientZonesWatchingFaults = self->_clientZonesWatchingFaults;
  clientZone = [v22 clientZone];
  LODWORD(clientZonesWatchingFaults) = [(NSMutableSet *)clientZonesWatchingFaults containsObject:clientZone];

  if (clientZonesWatchingFaults)
  {
    v25 = [contextCopy highlightedString:@" has-faulting-barriers" type:3];
    [bufferCopy appendString:v25];
  }
}

void __53__BRCApplyScheduler__setState_andApplyKind_forJobID___block_invoke(uint64_t a1, sqlite3_context *a2, uint64_t a3, sqlite3_value **a4)
{
  v7 = sqlite3_value_int(a4[1]);
  if (*(a1 + 40) == 1)
  {
    [*(a1 + 32) signalWithDeadline:sqlite3_value_int64(*a4)];
  }

  if ([*(*(a1 + 32) + 72) count])
  {
    v8 = v7 == 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 && (*(a1 + 44) != 1 || *(a1 + 40) != 1))
  {
    [*(a1 + 32) signal];
  }

  v9 = *(a1 + 40);

  sqlite3_result_int(a2, v9);
}

- (void)resetBackoffForServerItem:(id)item
{
  v4 = -[BRCApplyJobIdentifier initWithItemDBRowID:]([BRCApplyJobIdentifier alloc], "initWithItemDBRowID:", [item rank]);
  v5.receiver = self;
  v5.super_class = BRCApplyScheduler;
  [(BRCFSSchedulerBase *)&v5 resetBackoffForJobWithID:v4];
}

- (void)didCreateMissingParentID:(id)d zone:(id)zone
{
  v24 = *MEMORY[0x277D85DE8];
  dCopy = d;
  session = self->super._session;
  zoneCopy = zone;
  clientDB = [(BRCAccountSession *)session clientDB];
  v10 = brc_bread_crumbs();
  v11 = brc_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [BRCApplyScheduler didCreateMissingParentID:zone:];
  }

  dbRowID = [zoneCopy dbRowID];
  dbRowID2 = [zoneCopy dbRowID];

  [clientDB execute:{@"UPDATE client_unapplied_table    SET throttle_state = 1  WHERE zone_rowid = %@     AND throttle_state IN (21, 16)    AND throttle_id IN (SELECT item_rank FROM server_items                        WHERE zone_rowid = %@ AND item_parent_id = %@)", dbRowID, dbRowID2, dCopy}];
  changes = [clientDB changes];
  if ([dCopy isDocumentsFolder])
  {
    [clientDB execute:{@"UPDATE client_unapplied_table    SET throttle_state = 1  WHERE throttle_state IN (21, 16)    AND throttle_id IN (SELECT item_rank FROM server_items WHERE (item_sharing_options & 4) != 0 AND item_id_is_shared_root(item_parent_id))"}];
    changes += [clientDB changes];
  }

  if (changes)
  {
    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218498;
      v19 = changes;
      v20 = 2112;
      v21 = dCopy;
      v22 = 2112;
      v23 = v15;
      _os_log_debug_impl(&dword_223E7A000, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] Apply Changes: retrying %lld suspended throttles (missing parent found: %@)%@", buf, 0x20u);
    }

    [(BRCFSSchedulerBase *)self signal];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)didReparentOrKillItemID:(id)d parentItemID:(id)iD zone:(id)zone
{
  v34 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  zoneCopy = zone;
  clientDB = [(BRCAccountSession *)self->super._session clientDB];
  dbRowID = [zoneCopy dbRowID];
  dbRowID2 = [zoneCopy dbRowID];
  dbRowID3 = [zoneCopy dbRowID];
  [clientDB execute:{@"WITH RECURSIVE  reschedulable_items (item_rank, item_id) AS(   SELECT si.item_rank, si.item_id      FROM server_items AS si     WHERE si.zone_rowid = %@       AND si.item_type IN (0, 9, 10, 4) AND NOT EXISTS (SELECT 1 FROM client_items AS ci         WHERE ci.item_parent_zone_rowid = %@ AND ci.item_parent_id = si.item_id           AND ci.item_state IN (0)   ) ) UPDATE client_unapplied_table    SET throttle_state = 1  WHERE zone_rowid = %@     AND throttle_state = 25    AND throttle_id IN (SELECT item_rank FROM reschedulable_items WHERE item_id = %@)", dbRowID, dbRowID2, dbRowID3, iDCopy}];

  changes = [clientDB changes];
  if (changes)
  {
    v16 = changes;
    v17 = brc_bread_crumbs();
    v18 = brc_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218754;
      v27 = v16;
      v28 = 2112;
      v29 = dCopy;
      v30 = 2112;
      v31 = iDCopy;
      v32 = 2112;
      v33 = v17;
      v19 = "[DEBUG] Apply Changes: retrying %lld suspended throttles (child %@ of %@ killed or reparented)%@";
LABEL_9:
      _os_log_debug_impl(&dword_223E7A000, v18, OS_LOG_TYPE_DEBUG, v19, buf, 0x2Au);
      goto LABEL_6;
    }

    goto LABEL_6;
  }

  dbRowID4 = [zoneCopy dbRowID];
  dbRowID5 = [zoneCopy dbRowID];
  dbRowID6 = [zoneCopy dbRowID];
  [clientDB execute:{@"WITH RECURSIVE  reschedulable_items (throttle_id, item_id) AS(   SELECT -pi.rowid, pi.item_id      FROM client_items AS pi     WHERE pi.zone_rowid = %@       AND pi.item_type IN (0, 9, 10, 4) AND NOT EXISTS (SELECT 1 FROM client_items AS ci         WHERE ci.item_parent_zone_rowid = %@ AND ci.item_parent_id = pi.item_id           AND ci.item_state IN (0)   ) ) UPDATE client_unapplied_table    SET throttle_state = 1  WHERE zone_rowid = %@     AND throttle_state = 25    AND throttle_id IN (SELECT throttle_id FROM reschedulable_items WHERE item_id = %@)", dbRowID4, dbRowID5, dbRowID6, iDCopy}];

  changes2 = [clientDB changes];
  if (changes2)
  {
    v24 = changes2;
    v17 = brc_bread_crumbs();
    v18 = brc_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218754;
      v27 = v24;
      v28 = 2112;
      v29 = dCopy;
      v30 = 2112;
      v31 = iDCopy;
      v32 = 2112;
      v33 = v17;
      v19 = "[DEBUG] Apply Changes: retrying %lld suspended rejected throttles (child %@ of %@ killed or reparented)%@";
      goto LABEL_9;
    }

LABEL_6:

    [(BRCFSSchedulerBase *)self signal];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)didCompleteCrossZoneMigrationForAppLibrary:(id)library
{
  v21 = *MEMORY[0x277D85DE8];
  libraryCopy = library;
  clientDB = [(BRCAccountSession *)self->super._session clientDB];
  cloudDocsClientZone = [(BRCAccountSession *)self->super._session cloudDocsClientZone];
  dbRowID = [cloudDocsClientZone dbRowID];

  rootItemID = [libraryCopy rootItemID];
  [clientDB execute:{@"UPDATE client_unapplied_table    SET throttle_state = 1  WHERE zone_rowid = %@     AND throttle_state = %u    AND throttle_id IN (SELECT item_rank FROM server_items                        WHERE zone_rowid = %@ AND item_parent_id = %@)", dbRowID, 27, dbRowID, rootItemID}];
  changes = [clientDB changes];
  if (changes)
  {
    v10 = changes;
    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      logName = [libraryCopy logName];
      *buf = 134218498;
      v16 = v10;
      v17 = 2112;
      v18 = logName;
      v19 = 2112;
      v20 = v11;
      _os_log_debug_impl(&dword_223E7A000, v12, OS_LOG_TYPE_DEBUG, "[DEBUG] Apply Changes: retrying %lld suspended throttles (appLibrary completed migration: %@)%@", buf, 0x20u);
    }

    [(BRCFSSchedulerBase *)self signal];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)rescheduleMissingTargetAliasesWithTarget:(id)target
{
  targetCopy = target;
  if (([targetCopy isSharedToMeTopLevelItem] & 1) == 0)
  {
    serverZone = [targetCopy serverZone];
    unsaltedBookmarkData = [targetCopy unsaltedBookmarkData];
    appLibrary = [targetCopy appLibrary];
    mangledID = [appLibrary mangledID];
    v9 = [BRCUserDefaults defaultsForMangledID:mangledID];
    shouldFixupTargetCZMAliases = [v9 shouldFixupTargetCZMAliases];

    if (shouldFixupTargetCZMAliases)
    {
      if ([serverZone isSharedZone])
      {
        zoneName = [serverZone zoneName];
        v12 = *MEMORY[0x277CFAD68];
        if ([zoneName isEqualToString:*MEMORY[0x277CFAD68]])
        {
          v13 = [unsaltedBookmarkData hasPrefix:v12];

          if (v13)
          {
            v14 = [unsaltedBookmarkData substringFromIndex:{objc_msgSend(v12, "length")}];
            v15 = [v14 br_stringByBackslashEscapingCharactersInString:@"\\_%"];
            [@"%" stringByAppendingString:v15];

LABEL_16:
            goto LABEL_17;
          }
        }

        else
        {
        }
      }

      if ([serverZone isSharedZone])
      {
        zoneName2 = [serverZone zoneName];
        v17 = [zoneName2 isEqualToString:*MEMORY[0x277CFAD68]];

        if (v17)
        {
          v18 = brc_bread_crumbs();
          v19 = brc_default_log();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
          {
            [(BRCApplyScheduler *)v18 rescheduleMissingTargetAliasesWithTarget:v19, v20];
          }
        }
      }
    }

    clientDB = [(BRCAccountSession *)self->super._session clientDB];
    v22 = [clientDB fetch:{@"SELECT item_rank, zone_rowid FROM server_items WHERE item_alias_target = %@ AND item_type = 3", unsaltedBookmarkData}];

    if ([v22 next])
    {
      do
      {
        v23 = [v22 longLongAtIndex:0];
        v24 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v22, "longLongAtIndex:", 1)}];
        v25 = [(BRCAccountSession *)self->super._session serverZoneByRowID:v24];
        [(BRCApplyScheduler *)self _rescheduleRank:v23 inState:24 forZone:v25];
      }

      while (([v22 next] & 1) != 0);
    }

    goto LABEL_16;
  }

LABEL_17:
}

uint64_t __66__BRCApplyScheduler__rescheduleItemsParentedToItemGlobalID_flags___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (([*(a1 + 32) isNonDesktopRoot] & 1) == 0)
  {
    [v3 execute:{@"UPDATE client_items SET item_type = 0 WHERE item_id = %@ AND zone_rowid = %@ AND item_type = 9 AND (SELECT 1 FROM server_items AS si               WHERE client_items.item_id = si.item_id                AND client_items.zone_rowid = si.zone_rowid                AND si.item_type = 0 LIMIT 1)", *(a1 + 32), *(a1 + 40)}];
    if (![v3 changes])
    {
      v10 = brc_bread_crumbs();
      v11 = brc_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        __66__BRCApplyScheduler__rescheduleItemsParentedToItemGlobalID_flags___block_invoke_cold_2();
      }

      goto LABEL_14;
    }

    [v3 execute:{@"UPDATE item_recursive_properties SET item_type = 0, dir_faults_count = dir_faults_count - 1 WHERE item_id = %@ AND zone_rowid = %@", *(a1 + 32), *(a1 + 40)}];
    v4 = [*(*(a1 + 48) + 8) serverZoneByRowID:*(a1 + 40)];
    v5 = [v4 clientZone];
    [v5 scheduleSyncUp];

    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __66__BRCApplyScheduler__rescheduleItemsParentedToItemGlobalID_flags___block_invoke_cold_1();
    }
  }

  *(*(*(a1 + 64) + 8) + 24) = 1;
  [v3 execute:{@"UPDATE client_unapplied_table SET throttle_state = 1 WHERE throttle_state != 0 AND throttle_id IN (SELECT item_rank FROM server_items WHERE item_parent_id = %@ AND zone_rowid = %@)", *(a1 + 32), *(a1 + 40)}];
  if (![v3 changes])
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __66__BRCApplyScheduler__rescheduleItemsParentedToItemGlobalID_flags___block_invoke_cold_3();
    }

LABEL_14:

    goto LABEL_15;
  }

  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v14 = [v3 changes];
    v15 = [*(a1 + 32) debugItemIDString];
    *buf = 134218498;
    v17 = v14;
    v18 = 2112;
    v19 = v15;
    v20 = 2112;
    v21 = v8;
    _os_log_debug_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] Apply Changes: Rescheduled %lld items which were blocked for greediness when listing folder %@%@", buf, 0x20u);
  }

  [*(a1 + 48) signal];
LABEL_15:

  v12 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)rescheduleItemsRecursivelyUnderFolder:(id)folder
{
  folderCopy = folder;
  clientDB = [(BRCAccountSession *)self->super._session clientDB];
  clientTruthWorkloop = [(BRCAccountSession *)self->super._session clientTruthWorkloop];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__BRCApplyScheduler_rescheduleItemsRecursivelyUnderFolder___block_invoke;
  block[3] = &unk_2784FF4A0;
  v10 = clientDB;
  v11 = folderCopy;
  selfCopy = self;
  v7 = folderCopy;
  v8 = clientDB;
  dispatch_async(clientTruthWorkloop, block);
}

void __59__BRCApplyScheduler_rescheduleItemsRecursivelyUnderFolder___block_invoke(uint64_t a1)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__BRCApplyScheduler_rescheduleItemsRecursivelyUnderFolder___block_invoke_2;
  v5[3] = &unk_278500FA8;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v3;
  v7 = v4;
  [v2 performWithFlags:8 action:v5];
}

uint64_t __59__BRCApplyScheduler_rescheduleItemsRecursivelyUnderFolder___block_invoke_2(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [BRCUserDefaults defaultsForMangledID:0];
  v5 = [v4 rescheduleItemsRecursivelyBatchSize];

  v6 = [*(a1 + 32) zoneRowID];
  v7 = [*(a1 + 32) itemID];
  v24 = v5;
  v25 = v3;
  v8 = [v3 fetch:{@"WITH RECURSIVE item_children_with_faults (item_id, zone_rowid, item_type) AS(    SELECT item_id, zone_rowid, item_type FROM item_recursive_properties     WHERE zone_rowid = %@ AND item_parent_id = %@ AND item_type IN (0, 9, 10)       AND dir_faults_count > 0 AND NOT item_id_is_documents(item_id)  UNION ALL     SELECT ip.item_id, ip.zone_rowid, ip.item_type FROM item_recursive_properties AS ip     INNER JOIN item_children_with_faults AS p     WHERE ip.item_parent_id = p.item_id       AND ip.zone_rowid = p.zone_rowid       AND ip.item_type IN (0, 9, 10)       AND ip.dir_faults_count > 0) SELECT item_id, zone_rowid FROM item_children_with_faults AS ic WHERE ic.item_type = 9 LIMIT %lld", v6, v7, v5}];

  v9 = 0;
  if ([v8 next])
  {
    v9 = 0;
    while (1)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = [v8 objectOfClass:objc_opt_class() atIndex:0];
      v12 = [v8 objectOfClass:objc_opt_class() atIndex:1];
      v13 = [[BRCItemGlobalID alloc] initWithZoneRowID:v12 itemID:v11];
      v14 = brc_bread_crumbs();
      v15 = brc_default_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v27 = v13;
        v28 = 2112;
        v29 = v14;
        _os_log_debug_impl(&dword_223E7A000, v15, OS_LOG_TYPE_DEBUG, "[DEBUG] Rescheduling items at a flat level under %@%@", buf, 0x16u);
      }

      v16 = [*(*(a1 + 40) + 8) applyScheduler];
      v17 = [v16 _rescheduleItemsParentedToItemGlobalID:v13 flags:0];

      if ((v17 & 1) == 0)
      {
        break;
      }

      objc_autoreleasePoolPop(v10);
      ++v9;
      if (![v8 next])
      {
        goto LABEL_7;
      }
    }

    v20 = brc_bread_crumbs();
    v21 = brc_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      __59__BRCApplyScheduler_rescheduleItemsRecursivelyUnderFolder___block_invoke_2_cold_1();
    }

    objc_autoreleasePoolPop(v10);
  }

  else
  {
LABEL_7:
    v18 = *(a1 + 40);
    if (v9 >= v24)
    {
      [v18 rescheduleItemsRecursivelyUnderFolder:*(a1 + 32)];
    }

    else
    {
      v19 = [v18[1] applyScheduler];
      [v19 _rescheduleItemsParentedToItemGlobalID:*(a1 + 32) flags:0];
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)repopulateJobsForZone:(id)zone
{
  zoneCopy = zone;
  clientDB = [(BRCAccountSession *)self->super._session clientDB];
  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [BRCApplyScheduler repopulateJobsForZone:];
  }

  dbRowID = [zoneCopy dbRowID];
  dbRowID2 = [zoneCopy dbRowID];
  [clientDB execute:{@"INSERT OR REPLACE INTO client_unapplied_table(zone_rowid, throttle_id, throttle_state, apply_kind) SELECT %@, -rowid, 1, %u FROM client_items WHERE zone_rowid = %@ AND item_localsyncupstate = 1", dbRowID, 0, dbRowID2}];

  dbRowID3 = [zoneCopy dbRowID];
  dbRowID4 = [zoneCopy dbRowID];
  [clientDB execute:{@"INSERT OR REPLACE INTO client_unapplied_table(zone_rowid, throttle_id, throttle_state, apply_kind) SELECT %@, item_rank, 1, %u FROM server_items WHERE zone_rowid = %@", dbRowID3, 1, dbRowID4}];
}

- (void)_scheduleApplyJobWithID:(id)d zone:(id)zone applyKind:(unsigned int)kind
{
  v66 = *MEMORY[0x277D85DE8];
  dCopy = d;
  zoneCopy = zone;
  clientZone = [zoneCopy clientZone];
  if ([dCopy serverItemRank])
  {
    v11 = [clientZone serverItemByRank:{objc_msgSend(dCopy, "serverItemRank")}];
  }

  else
  {
    v11 = 0;
  }

  if ([dCopy rejectedRowID])
  {
    v12 = [clientZone itemByRowID:{objc_msgSend(dCopy, "rejectedRowID")}];
  }

  else
  {
    itemID = [v11 itemID];
    v12 = [clientZone itemByItemID:itemID];
  }

  rank = [dCopy rank];
  v14 = _os_activity_create(&dword_223E7A000, "apply-changes", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v14, &state);
  if (!zoneCopy)
  {
    v35 = brc_bread_crumbs();
    v36 = brc_default_log();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
    {
      [BRCApplyScheduler _scheduleApplyJobWithID:v35 zone:v36 applyKind:v37];
    }
  }

  memset(v52, 0, sizeof(v52));
  __brc_create_section(1, "[BRCApplyScheduler _scheduleApplyJobWithID:zone:applyKind:]", 656, 0, v52);
  v15 = brc_bread_crumbs();
  v16 = brc_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v41 = zoneCopy;
    selfCopy = self;
    v18 = clientZone;
    v19 = v14;
    v20 = v52[0];
    v21 = BRCPrettyPrintEnum();
    *buf = 134219266;
    v55 = v20;
    v56 = 2112;
    v57 = dCopy;
    v58 = 2080;
    v59 = v21;
    v60 = 2112;
    v61 = v11;
    v62 = 2112;
    v63 = v12;
    v64 = 2112;
    v65 = v15;
    _os_log_impl(&dword_223E7A000, v16, OS_LOG_TYPE_INFO, "[INFO] ┏%llx Apply Changes[%@]: attempting to apply %s\n  server item: %@\n  local item:  %@%@", buf, 0x3Eu);
    v14 = v19;
    clientZone = v18;
    self = selfCopy;
    zoneCopy = v41;
  }

  if (!kind)
  {
    if (v11)
    {
      v38 = brc_bread_crumbs();
      v39 = brc_default_log();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
      {
        [BRCApplyScheduler _scheduleApplyJobWithID:v38 zone:v39 applyKind:v40];
      }
    }

    if (v12)
    {
      if ([v12 isRejected])
      {
        v11 = 0;
LABEL_21:
        clientDB = [(BRCAccountSession *)self->super._session clientDB];
        v43[0] = MEMORY[0x277D85DD0];
        v43[1] = 3221225472;
        v43[2] = __60__BRCApplyScheduler__scheduleApplyJobWithID_zone_applyKind___block_invoke;
        v43[3] = &unk_278501E10;
        v43[4] = self;
        v44 = dCopy;
        v45 = zoneCopy;
        v11 = v11;
        v46 = v11;
        v47 = v12;
        v48 = rank;
        [clientDB groupInBatch:v43];

        goto LABEL_28;
      }

      v49 = 0;
      v50 = 0;
      v51 = 0;
      __brc_create_section(0, "[BRCApplyScheduler _scheduleApplyJobWithID:zone:applyKind:]", 671, 0, &v49);
      v25 = brc_bread_crumbs();
      v26 = brc_default_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218498;
        v55 = v49;
        v56 = 2112;
        v57 = dCopy;
        v58 = 2112;
        v59 = v25;
        _os_log_debug_impl(&dword_223E7A000, v26, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx Apply Changes[%@]: deleting rejected action with a non-rejected local item%@", buf, 0x20u);
      }

LABEL_27:

      [(BRCFSSchedulerBase *)self deleteJobsMatching:dCopy];
      __brc_leave_section(&v49);
      v11 = 0;
      goto LABEL_28;
    }

LABEL_22:
    v49 = 0;
    v50 = 0;
    v51 = 0;
    __brc_create_section(0, "[BRCApplyScheduler _scheduleApplyJobWithID:zone:applyKind:]", 668, 0, &v49);
    v25 = brc_bread_crumbs();
    v26 = brc_default_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218498;
      v55 = v49;
      v56 = 2112;
      v57 = dCopy;
      v58 = 2112;
      v59 = v25;
      _os_log_debug_impl(&dword_223E7A000, v26, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx Apply Changes[%@]: deleting action without local and server item%@", buf, 0x20u);
    }

    goto LABEL_27;
  }

  if (!(v12 | v11))
  {
    goto LABEL_22;
  }

  if (!v11 || [v11 rank] == rank)
  {
    goto LABEL_21;
  }

  v49 = 0;
  v50 = 0;
  v51 = 0;
  __brc_create_section(0, "[BRCApplyScheduler _scheduleApplyJobWithID:zone:applyKind:]", 674, 0, &v49);
  v22 = brc_bread_crumbs();
  v23 = brc_default_log();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    v28 = v12;
    v29 = zoneCopy;
    selfCopy2 = self;
    v31 = clientZone;
    v32 = v14;
    v33 = v49;
    rank2 = [v11 rank];
    *buf = 134219010;
    v55 = v33;
    v56 = 2112;
    v57 = dCopy;
    v58 = 2048;
    v59 = rank2;
    v60 = 2048;
    v61 = rank;
    v62 = 2112;
    v63 = v22;
    _os_log_debug_impl(&dword_223E7A000, v23, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx Apply Changes[%@]: deleting useless action %lld vs %lld%@", buf, 0x34u);
    v14 = v32;
    clientZone = v31;
    self = selfCopy2;
    zoneCopy = v29;
    v12 = v28;
  }

  [(BRCFSSchedulerBase *)self deleteJobsMatching:dCopy];
  __brc_leave_section(&v49);
LABEL_28:
  __brc_leave_section(v52);
  os_activity_scope_leave(&state);

  v27 = *MEMORY[0x277D85DE8];
}

void __60__BRCApplyScheduler__scheduleApplyJobWithID_zone_applyKind___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) metadataSyncContext];
  v5 = [v4 applyThrottle];
  [v2 postponeJobID:v3 withThrottle:v5];

  v6 = [*(*(a1 + 32) + 8) serverChangesApplier];
  [v6 applyChanges:*(a1 + 56) localItem:*(a1 + 64) rank:*(a1 + 72) zone:*(a1 + 48)];
}

- (void)_handleWatchingFaults
{
  v67 = *MEMORY[0x277D85DE8];
  clientDB = [(BRCAccountSession *)self->super._session clientDB];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v4 = self->_clientZonesWatchingFaults;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v56 objects:v66 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v57;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v57 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v56 + 1) + 8 * i);
        if ([v9 isSyncBlocked])
        {
          [v3 addObject:v9];
        }
      }

      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v56 objects:v66 count:16];
    }

    while (v6);
  }

  v46 = objc_opt_new();
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  selfCopy = self;
  v10 = self->_clientZonesWatchingFaults;
  v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v52 objects:v65 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v53;
    v44 = *MEMORY[0x277CFABD0];
    v14 = 0x2784FD000uLL;
    do
    {
      v15 = 0;
      v45 = v12;
      do
      {
        if (*v53 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v52 + 1) + 8 * v15);
        v17 = *(v14 + 3640);
        mangledID = [v16 mangledID];
        v19 = [v17 defaultsForMangledID:mangledID];
        applyCountToSignalFaultsLive = [v19 applyCountToSignalFaultsLive];

        dbRowID = [v16 dbRowID];
        v22 = [clientDB numberWithSQL:{@"SELECT 1 FROM client_unapplied_table WHERE zone_rowid = %@ AND throttle_state = 1 AND apply_kind = %d AND retry_count < %lld LIMIT 1", dbRowID, 1, applyCountToSignalFaultsLive}];

        if (([v22 BOOLValue] & 1) == 0)
        {
          dbRowID2 = [v16 dbRowID];
          v24 = [clientDB numberWithSQL:{@"SELECT 1 FROM client_unapplied_table WHERE zone_rowid = %@ AND throttle_state = 1 AND apply_kind = %d LIMIT 1", dbRowID2, 1}];

          if ([v24 BOOLValue])
          {
            v25 = [MEMORY[0x277CCA9B8] br_errorWithDomain:v44 code:41 description:@"apply is failing"];
            [v16 mangledID];
            v26 = v13;
            v27 = v14;
            v28 = v3;
            v30 = v29 = v10;
            [v46 setObject:v25 forKeyedSubscript:v30];

            v10 = v29;
            v3 = v28;
            v14 = v27;
            v13 = v26;
            v12 = v45;
          }

          [v3 addObject:v16];
        }

        ++v15;
      }

      while (v12 != v15);
      v12 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v52 objects:v65 count:16];
    }

    while (v12);
  }

  [(NSMutableSet *)selfCopy->_clientZonesWatchingFaults minusSet:v3];
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v31 = v3;
  v32 = [v31 countByEnumeratingWithState:&v48 objects:v64 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v49;
    v35 = *MEMORY[0x277CFABD0];
    do
    {
      for (j = 0; j != v33; ++j)
      {
        if (*v49 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v37 = *(*(&v48 + 1) + 8 * j);
        if ([v37 isSyncBlocked])
        {
          mangledID2 = [MEMORY[0x277CCA9B8] br_errorWithDomain:v35 code:12 description:{@"sync is blocked for client zone: %@", v37}];
          [v37 signalFaultingWatchersWithError:mangledID2];
        }

        else
        {
          mangledID2 = [v37 mangledID];
          v39 = [v46 objectForKeyedSubscript:mangledID2];
          [v37 signalFaultingWatchersWithError:v39];
        }

        v40 = brc_bread_crumbs();
        v41 = brc_default_log();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v61 = v37;
          v62 = 2112;
          v63 = v40;
          _os_log_debug_impl(&dword_223E7A000, v41, OS_LOG_TYPE_DEBUG, "[DEBUG] Signalled faulting-barrier waiters for %@%@", buf, 0x16u);
        }
      }

      v33 = [v31 countByEnumeratingWithState:&v48 objects:v64 count:16];
    }

    while (v33);
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (void)deleteExpiredJobs
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (unint64_t)_addRanksUpToRank:(int64_t)rank inZone:(id)zone
{
  v32 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  clientDB = [(BRCAccountSession *)self->super._session clientDB];
  lastInsertedRank = [zoneCopy lastInsertedRank];
  if (lastInsertedRank >= rank)
  {
    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [BRCApplyScheduler _addRanksUpToRank:inZone:];
    }

    changes = 0;
  }

  else
  {
    v9 = lastInsertedRank;
    dbRowID = [zoneCopy dbRowID];
    dbRowID2 = [zoneCopy dbRowID];
    v12 = [clientDB executeWithSlowStatementRadar:@"<rdar://problem/23822933>" sql:{@"INSERT OR IGNORE INTO client_unapplied_table (zone_rowid, throttle_id, throttle_state, retry_count, last_try_stamp, next_retry_stamp, expire_stamp, apply_kind) SELECT %@, item_rank, 1, 0, 0, 0, 0, %u  FROM server_items WHERE zone_rowid = %@ AND item_rank >= %lld AND item_rank < %lld", dbRowID, 1, dbRowID2, v9, rank}];

    if (v12)
    {
      changes = [clientDB changes];
    }

    else
    {
      v16 = brc_bread_crumbs();
      v17 = brc_default_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        [BRCApplyScheduler _addRanksUpToRank:inZone:];
      }

      changes = 0;
    }

    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v20 = rank - 1;
      zoneName = [zoneCopy zoneName];
      *buf = 134219010;
      v23 = v9;
      v24 = 2048;
      v25 = v20;
      v26 = 2112;
      v27 = zoneName;
      v28 = 2048;
      v29 = changes;
      v30 = 2112;
      v31 = v14;
      _os_log_debug_impl(&dword_223E7A000, v15, OS_LOG_TYPE_DEBUG, "[DEBUG] Apply Changes [%lld .. %lld]: in %@, %llu ranks inserted%@", buf, 0x34u);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return changes;
}

- (void)generatedRanksForZone:(id)zone upToRank:(int64_t)rank
{
  clientZone = [zone clientZone];
  v6 = [(BRCApplyScheduler *)self _addRanksUpToRank:rank inZone:clientZone];
  [clientZone listedUpToRank:rank];
  if (v6)
  {
    [(BRCFSSchedulerBase *)self signal];
  }
}

- (void)_close
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = self->_clientZonesWatchingFaults;
  clientZonesWatchingFaults = self->_clientZonesWatchingFaults;
  self->_clientZonesWatchingFaults = 0;

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        brc_errorLoggedOut = [MEMORY[0x277CCA9B8] brc_errorLoggedOut];
        [v10 signalFaultingWatchersWithError:brc_errorLoggedOut];

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v13.receiver = self;
  v13.super_class = BRCApplyScheduler;
  [(BRCFSSchedulerBase *)&v13 _close];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_recoverAndCreateApplyJobsForServerItemsWithNoMatchingClientItems:(id)items batchSize:(unint64_t)size recoveryTask:(id)task completion:(id)completion
{
  itemsCopy = items;
  taskCopy = task;
  completionCopy = completion;
  v13 = completionCopy;
  if (!size || !completionCopy)
  {
    if (!completionCopy)
    {
      goto LABEL_8;
    }

LABEL_7:
    v13[2](v13, 0);
    goto LABEL_8;
  }

  if (taskCopy && ([taskCopy isTaskExpired] & 1) != 0)
  {
    goto LABEL_7;
  }

  v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v15 = dispatch_queue_create("com.apple.recovery.apply.scheduler.workingQueue", v14);

  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2020000000;
  v29[3] = 0;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v28 = 0;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v26 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __121__BRCApplyScheduler__recoverAndCreateApplyJobsForServerItemsWithNoMatchingClientItems_batchSize_recoveryTask_completion___block_invoke;
  v16[3] = &unk_278501E60;
  v21 = v25;
  v17 = taskCopy;
  v20 = v13;
  selfCopy = self;
  v22 = v27;
  v23 = v29;
  v19 = itemsCopy;
  sizeCopy = size;
  dispatch_async(v15, v16);

  _Block_object_dispose(v25, 8);
  _Block_object_dispose(v27, 8);
  _Block_object_dispose(v29, 8);

LABEL_8:
}

uint64_t __121__BRCApplyScheduler__recoverAndCreateApplyJobsForServerItemsWithNoMatchingClientItems_batchSize_recoveryTask_completion___block_invoke(uint64_t a1)
{
  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    do
    {
      if ([*(a1 + 32) isTaskExpired])
      {
        break;
      }

      v2 = [*(*(a1 + 40) + 8) clientTruthWorkloop];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __121__BRCApplyScheduler__recoverAndCreateApplyJobsForServerItemsWithNoMatchingClientItems_batchSize_recoveryTask_completion___block_invoke_2;
      v7[3] = &unk_278501E38;
      v3 = *(a1 + 80);
      v4 = *(a1 + 48);
      v7[4] = *(a1 + 40);
      v9 = v3;
      v8 = v4;
      v11 = *(a1 + 88);
      v10 = vextq_s8(*(a1 + 64), *(a1 + 64), 8uLL);
      dispatch_async_and_wait(v2, v7);
    }

    while (*(*(*(a1 + 64) + 8) + 24) != 1);
  }

  v5 = *(*(*(a1 + 72) + 8) + 24);
  return (*(*(a1 + 56) + 16))();
}

void __121__BRCApplyScheduler__recoverAndCreateApplyJobsForServerItemsWithNoMatchingClientItems_batchSize_recoveryTask_completion___block_invoke_2(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 8) clientDB];
  v3 = *(a1 + 40);
  v4 = *(*(*(a1 + 48) + 8) + 24);
  v5 = [v2 fetch:{@"SELECT si.item_rank, si.zone_rowid FROM server_items AS si LEFT JOIN client_items AS ci ON ci.item_id = si.item_id AND ci.zone_rowid = si.zone_rowid WHERE si.item_state = 0 AND si.item_type != 3 AND si.item_rank >= %lld AND (ci.rowid IS NULL OR ci.item_localsyncupstate = 0) AND (NOT ckinfo_etags_are_equal(si.version_ckinfo, ci.version_ckinfo) OR (NOT ckinfo_etags_are_equal(si.item_stat_ckinfo, ci.item_stat_ckinfo) AND NOT (si.item_sharing_options & 4 != 0 AND %@ != (SELECT cz.zone_owner FROM client_zones AS cz WHERE cz.rowid = si.zone_rowid))) OR ci.rowid IS NULL) AND NOT indexset_contains(%p, si.zone_rowid) AND NOT EXISTS (SELECT 1 FROM client_unapplied_table AS cu WHERE cu.throttle_id = si.item_rank AND cu.throttle_state != 0) ORDER BY si.item_rank LIMIT %lld", v4, *MEMORY[0x277CBBF28], v3, *(a1 + 72)}];

  if ([v5 next])
  {
    v6 = 0;
    v7 = 0;
    do
    {
      context = objc_autoreleasePoolPush();
      v8 = [v5 longLongAtIndex:0];
      v9 = v8;
      if (v7 <= v8)
      {
        v7 = v8;
      }

      v10 = [v5 numberAtIndex:1];
      v11 = [*(*(a1 + 32) + 8) serverZoneByRowID:v10];
      v12 = [v11 clientZone];

      v13 = [v12 serverItemByRank:v9];
      v14 = [v13 itemID];
      v15 = [v12 itemByItemID:v14];

      v16 = brc_bread_crumbs();
      v17 = brc_default_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v22 = v13;
        v23 = 2112;
        v24 = v16;
        _os_log_impl(&dword_223E7A000, v17, OS_LOG_TYPE_DEFAULT, "[WARNING] Item %@ is missing an apply throttle%@", buf, 0x16u);
      }

      if (v15)
      {
        v18 = 2;
      }

      else
      {
        v18 = 1;
      }

      [*(a1 + 32) createApplyJobFromServerItem:v13 localItem:v15 state:1 kind:v18];
      ++*(*(*(a1 + 56) + 8) + 24);
      ++v6;

      objc_autoreleasePoolPop(context);
    }

    while (([v5 next] & 1) != 0);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  if (v6 >= *(a1 + 72))
  {
    *(*(*(a1 + 48) + 8) + 24) = v7;
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_recoverAndReportMissingJobsWithCompletion:(id)completion report:(BOOL)report recoveryTask:(id)task
{
  v65 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  taskCopy = task;
  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 0;
  selfCopy = self;
  clientDB = [(BRCAccountSession *)self->super._session clientDB];
  v37 = [clientDB fetch:{@"SELECT ci.rowid, ci.zone_rowid, ci.item_id, ci.item_creator_id, ci.item_sharing_options, ci.item_side_car_ckinfo, ci.item_parent_zone_rowid, ci.item_localsyncupstate, ci.item_local_diffs, ci.item_notifs_rank, ci.app_library_rowid, ci.item_min_supported_os_rowid, ci.item_user_visible, ci.item_stat_ckinfo, ci.item_state, ci.item_type, ci.item_mode, ci.item_birthtime, ci.item_lastusedtime, ci.item_favoriterank, ci.item_parent_id, ci.item_filename, ci.item_hidden_ext, ci.item_finder_tags, ci.item_xattr_signature, ci.item_trash_put_back_path, ci.item_trash_put_back_parent_id, ci.item_alias_target, ci.item_creator, ci.item_processing_stamp, ci.item_bouncedname, ci.item_scope, ci.item_local_change_count, ci.item_old_version_identifier, ci.fp_creation_item_identifier, ci.version_name, ci.version_ckinfo, ci.version_mtime, ci.version_size, ci.version_thumb_size, ci.version_thumb_signature, ci.version_content_signature, ci.version_xattr_signature, ci.version_edited_since_shared, ci.version_device, ci.version_conflict_loser_etags, ci.version_quarantine_info, ci.version_uploaded_assets, ci.version_upload_error, ci.version_old_zone_item_id, ci.version_old_zone_rowid, ci.version_local_change_count, ci.version_old_version_identifier, ci.item_live_conflict_loser_etags, ci.item_file_id, ci.item_generation FROM client_items AS ci WHERE ci.item_localsyncupstate = 1 AND ci.item_localsyncupstate != 0 AND NOT EXISTS (SELECT 1 FROM client_unapplied_table AS cu WHERE cu.throttle_id = ci.rowid AND cu.throttle_state != 0)"}];

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __84__BRCApplyScheduler__recoverAndReportMissingJobsWithCompletion_report_recoveryTask___block_invoke;
  v49[3] = &unk_2784FF910;
  v49[4] = self;
  v8 = [v37 enumerateObjects:v49];
  v9 = [v8 countByEnumeratingWithState:&v50 objects:v64 count:16];
  if (v9)
  {
    v11 = *v51;
    *&v10 = 138412290;
    v34 = v10;
    do
    {
      v12 = 0;
      do
      {
        if (*v51 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v50 + 1) + 8 * v12);
        v14 = objc_autoreleasePoolPush();
        if (([v13 isRejected] & 1) == 0)
        {
          v22 = brc_bread_crumbs();
          v23 = brc_default_log();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
          {
            *buf = v34;
            v59 = v22;
            _os_log_fault_impl(&dword_223E7A000, v23, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: li.isRejected%@", buf, 0xCu);
          }
        }

        clientZone = [v13 clientZone];
        itemID = [v13 itemID];
        v17 = [clientZone serverItemByItemID:itemID];

        if ([v17 isLive])
        {
          v18 = brc_bread_crumbs();
          v19 = brc_default_log();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            v59 = v13;
            v60 = 2112;
            v61 = v17;
            v62 = 2112;
            v63 = v18;
            _os_log_impl(&dword_223E7A000, v19, OS_LOG_TYPE_DEFAULT, "[WARNING] Rejected item %@ was remotely revived by %@.  Updating as such%@", buf, 0x20u);
          }

          [v13 markRejectedItemRemotelyRevived];
          [v13 saveToDB];
        }

        else
        {
          v20 = brc_bread_crumbs();
          v21 = brc_default_log();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v59 = v13;
            v60 = 2112;
            v61 = v20;
            _os_log_impl(&dword_223E7A000, v21, OS_LOG_TYPE_DEFAULT, "[WARNING] Rejected item %@ doesn't have an apply job.  Re-creating the apply job%@", buf, 0x16u);
          }

          [(BRCApplyScheduler *)selfCopy createApplyJobFromServerItem:v17 localItem:v13 state:1 kind:0];
        }

        ++*(v55 + 6);

        objc_autoreleasePoolPop(v14);
        ++v12;
      }

      while (v9 != v12);
      v24 = [v8 countByEnumeratingWithState:&v50 objects:v64 count:16];
      v9 = v24;
    }

    while (v24);
  }

  if ([taskCopy isTaskExpired])
  {
    completionCopy[2](completionCopy, *(v55 + 6));
  }

  else
  {
    v25 = objc_opt_new();
    session = selfCopy->super._session;
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __84__BRCApplyScheduler__recoverAndReportMissingJobsWithCompletion_report_recoveryTask___block_invoke_146;
    v47[3] = &unk_2785002E8;
    v27 = v25;
    v48 = v27;
    [(BRCAccountSession *)session enumeratePrivateClientZones:v47];
    v28 = [BRCUserDefaults defaultsForMangledID:0];
    applySchedulerRecoveryJobBatchSize = [v28 applySchedulerRecoveryJobBatchSize];

    v30 = dispatch_group_create();
    dispatch_group_enter(v30);
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __84__BRCApplyScheduler__recoverAndReportMissingJobsWithCompletion_report_recoveryTask___block_invoke_2;
    v44[3] = &unk_278501E88;
    v46 = &v54;
    v31 = v30;
    v45 = v31;
    [(BRCApplyScheduler *)selfCopy _recoverAndCreateApplyJobsForServerItemsWithNoMatchingClientItems:v27 batchSize:applySchedulerRecoveryJobBatchSize recoveryTask:taskCopy completion:v44];
    clientTruthWorkloop = [(BRCAccountSession *)selfCopy->super._session clientTruthWorkloop];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __84__BRCApplyScheduler__recoverAndReportMissingJobsWithCompletion_report_recoveryTask___block_invoke_3;
    block[3] = &unk_2784FFDD0;
    v42 = &v54;
    block[4] = selfCopy;
    reportCopy = report;
    v41 = completionCopy;
    dispatch_group_notify(v31, clientTruthWorkloop, block);
  }

  _Block_object_dispose(&v54, 8);
  v33 = *MEMORY[0x277D85DE8];
}

id __84__BRCApplyScheduler__recoverAndReportMissingJobsWithCompletion_report_recoveryTask___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = a2;
  v6 = [v4 clientDB];
  v7 = [v4 newLocalItemFromPQLResultSet:v5 db:v6 error:a3];

  return v7;
}

uint64_t __84__BRCApplyScheduler__recoverAndReportMissingJobsWithCompletion_report_recoveryTask___block_invoke_146(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isSyncBlocked])
  {
    v4 = *(a1 + 32);
    v5 = [v3 dbRowID];
    [v4 addIndex:{objc_msgSend(v5, "unsignedIntegerValue")}];
  }

  return 1;
}

uint64_t __84__BRCApplyScheduler__recoverAndReportMissingJobsWithCompletion_report_recoveryTask___block_invoke_3(uint64_t a1)
{
  v3 = a1 + 48;
  v2 = *(a1 + 48);
  if (*(*(v2 + 8) + 24))
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __84__BRCApplyScheduler__recoverAndReportMissingJobsWithCompletion_report_recoveryTask___block_invoke_3_cold_1(v3);
    }

    [*(a1 + 32) signal];
    v2 = *(a1 + 48);
  }

  if (*(a1 + 56) == 1)
  {
    v6 = [AppTelemetryTimeSeriesEvent newMissingApplyJobEventWithNumberMissing:*(*(v2 + 8) + 24)];
    v7 = [*(*(a1 + 32) + 8) analyticsReporter];
    [v7 postReportForDefaultSubCategoryWithCategory:8 telemetryTimeEvent:v6];

    v2 = *(a1 + 48);
  }

  v8 = *(*(v2 + 8) + 24);
  return (*(*(a1 + 40) + 16))();
}

- (void)deleteNonRejectionJobsForZone:(id)zone
{
  session = self->super._session;
  zoneCopy = zone;
  clientDB = [(BRCAccountSession *)session clientDB];
  matchingJobsWhereSQLClause = [zoneCopy matchingJobsWhereSQLClause];

  [clientDB execute:{@"DELETE FROM client_unapplied_table WHERE %@ AND throttle_id > 0", matchingJobsWhereSQLClause}];
  clientDB2 = [(BRCAccountSession *)self->super._session clientDB];
  changes = [clientDB2 changes];

  if (changes >= 1)
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [BRCApplyScheduler deleteNonRejectionJobsForZone:];
    }

    [(BRCFSSchedulerBase *)self checkIfHasWork];
  }
}

- (void)describeInBuffer:aggregateOfJobsMatching:context:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: [matchingQuery isKindOfClass:[BRCServerZone class]]%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)setState:forServerItem:localItem:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: !si.isLive || !li.isRejected%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)createApplyJobFromServerItem:localItem:state:kind:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: serverItem || localItem%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)createApplyJobFromServerItemRank:(void *)a1 localItem:(void *)a2 state:kind:.cold.1(void *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    v16 = 138412290;
    v17 = v4;
    OUTLINED_FUNCTION_0_2(&dword_223E7A000, v5, v6, "[CRIT] Assertion failed: rank && localItem%@", &v16);
  }

  v7 = a1;
  if (a2)
  {
    brc_bread_crumbs();
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_2();
    v8 = brc_default_log();
    if (OUTLINED_FUNCTION_5(v8))
    {
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_0(&dword_223E7A000, v10, v11, "[CRIT] Assertion failed: serverRank%@", v12, v13, v14, v15, v16);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)didCreateMissingParentID:zone:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_rescheduleRank:inState:forZone:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: state >= BRCJobStateSuspendedBase%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)_rescheduleRank:inState:forZone:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)rescheduleMissingTargetAliasesWithTarget:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 138412290;
  v5 = a1;
  OUTLINED_FUNCTION_0_2(&dword_223E7A000, a2, a3, "[CRIT] Assertion failed: !shouldFixup || !serverZone.isSharedZone || ![serverZone.zoneName isEqualToString:BRUbiquitousDefaultContainerID]%@", &v4);
  v3 = *MEMORY[0x277D85DE8];
}

void __66__BRCApplyScheduler__rescheduleItemsParentedToItemGlobalID_flags___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_18();
  v11 = *MEMORY[0x277D85DE8];
  v1 = [*(v0 + 56) itemID];
  v2 = [v1 debugItemIDString];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1(&dword_223E7A000, v3, v4, "[DEBUG] Updated %@ to be a non-fault%@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __66__BRCApplyScheduler__rescheduleItemsParentedToItemGlobalID_flags___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_18();
  v10 = *MEMORY[0x277D85DE8];
  v1 = [*v0 debugItemIDString];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1(&dword_223E7A000, v2, v3, "[DEBUG] No point in rescheduling items under %@ because we can't make it a non-fault%@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __66__BRCApplyScheduler__rescheduleItemsParentedToItemGlobalID_flags___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_18();
  v10 = *MEMORY[0x277D85DE8];
  v1 = [*v0 debugItemIDString];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1(&dword_223E7A000, v2, v3, "[DEBUG] Apply Changes: No unscheduled items parented to %@%@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __59__BRCApplyScheduler_rescheduleItemsRecursivelyUnderFolder___block_invoke_2_cold_1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  v4 = v0;
  _os_log_fault_impl(&dword_223E7A000, v1, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Couldn't reschedule flat items under %@%@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)repopulateJobsForZone:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_scheduleApplyJobWithID:(uint64_t)a1 zone:(NSObject *)a2 applyKind:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 138412290;
  v5 = a1;
  OUTLINED_FUNCTION_0_2(&dword_223E7A000, a2, a3, "[CRIT] Assertion failed: zone%@", &v4);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_scheduleApplyJobWithID:(uint64_t)a1 zone:(NSObject *)a2 applyKind:(uint64_t)a3 .cold.2(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 138412290;
  v5 = a1;
  OUTLINED_FUNCTION_0_2(&dword_223E7A000, a2, a3, "[CRIT] Assertion failed: si == nil%@", &v4);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_addRanksUpToRank:inZone:.cold.1()
{
  OUTLINED_FUNCTION_18();
  v10 = *MEMORY[0x277D85DE8];
  v1 = [v0 zoneName];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1(&dword_223E7A000, v2, v3, "[DEBUG] Apply Changes [] in %@, 0 ranks inserted%@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_addRanksUpToRank:inZone:.cold.2()
{
  OUTLINED_FUNCTION_18();
  v7 = *MEMORY[0x277D85DE8];
  v3 = [v2 lastError];
  OUTLINED_FUNCTION_1_0();
  v6 = v1;
  _os_log_fault_impl(&dword_223E7A000, v0, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: failed to insert into client_unapplied_commands: %@%@", v5, 0x16u);

  v4 = *MEMORY[0x277D85DE8];
}

void __84__BRCApplyScheduler__recoverAndReportMissingJobsWithCompletion_report_recoveryTask___block_invoke_3_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *(*(*a1 + 8) + 24);
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)deleteNonRejectionJobsForZone:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

@end