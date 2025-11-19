@interface BRCSyncUpScheduler
- (BOOL)isItemPendingSyncUp:(id)a3;
- (BRCSyncUpScheduler)initWithAccountSession:(id)a3;
- (id)descriptionForItem:(id)a3 context:(id)a4;
- (int64_t)timeToRetryForItem:(id)a3 zone:(id)a4;
- (unint64_t)finishSyncUpForItem:(id)a3 inZone:(id)a4 success:(BOOL)a5;
- (unint64_t)postponeSyncUpCallback:(id)a3 inZone:(id)a4;
- (void)_clearSyncUpErrorForItem:(id)a3;
- (void)_scheduleSyncUpJob:(id)a3;
- (void)_scheduleSyncUpJobForZoneWithRowID:(id)a3;
- (void)createSyncUpJobForItem:(id)a3 inZone:(id)a4;
- (void)createSyncUpJobForRowID:(unint64_t)a3 inZone:(id)a4;
- (void)ineligibleSyncUpCallback:(id)a3 inZone:(id)a4;
- (void)prepareItemForSyncUp:(id)a3 inFlightDiffs:(unint64_t)a4 inZone:(id)a5;
- (void)recoverAndReportMissingJobsWithCompletion:(id)a3 recoveryTask:(id)a4;
- (void)schedule;
@end

@implementation BRCSyncUpScheduler

- (BRCSyncUpScheduler)initWithAccountSession:(id)a3
{
  v4.receiver = self;
  v4.super_class = BRCSyncUpScheduler;
  return [(BRCFSSchedulerBase *)&v4 initWithSession:a3 name:@"Sync-Up" tableName:@"client_sync_up"];
}

- (id)descriptionForItem:(id)a3 context:(id)a4
{
  v6 = MEMORY[0x277D82C18];
  v7 = a4;
  v8 = a3;
  v9 = [v6 rawInjection:"in_flight_diffs length:{zone_rowid", 27}];
  v12.receiver = self;
  v12.super_class = BRCSyncUpScheduler;
  v10 = [(BRCFSSchedulerBase *)&v12 descriptionForJobsMatching:v8 ordering:0 additionalColumns:v9 additionalValuesHandler:&__block_literal_global_52 context:v7];

  return v10;
}

void __49__BRCSyncUpScheduler_descriptionForItem_context___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v10 = a2;
  v6 = a3;
  v7 = [v6 unsignedLongLongAtIndex:a4];
  v8 = [v6 numberAtIndex:(a4 + 1)];

  [v10 appendFormat:@"zone:%@", v8];
  if (v7)
  {
    v9 = BRCItemFieldsPrettyPrint();
    [v10 appendFormat:@" in-flight{%@}", v9];
  }
}

- (void)createSyncUpJobForItem:(id)a3 inZone:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([v7 br_isEqualToNumber:&unk_2837B0478] & 1) == 0)
  {
    v8 = [(BRCAccountSession *)self->super._session serverZoneByRowID:v7];
    v9 = [v8 clientZone];

    if ([v9 isSyncBlockedBecauseAppNotInstalled])
    {
      v10 = [v6 itemID];
      v11 = [v10 isDocumentsFolder];

      if ((v11 & 1) == 0)
      {
        v12 = brc_bread_crumbs();
        v13 = brc_default_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          [BRCSyncUpScheduler createSyncUpJobForItem:v12 inZone:v13];
        }

        [v9 clearStateBits:4096];
      }
    }
  }

  -[BRCSyncUpScheduler createSyncUpJobForRowID:inZone:](self, "createSyncUpJobForRowID:inZone:", [v6 dbRowID], v7);
}

- (void)createSyncUpJobForRowID:(unint64_t)a3 inZone:(id)a4
{
  v6 = a4;
  v13 = [[BRCItemDBRowIDAndZoneJobIdentifier alloc] initWithItemDBRowID:a3 zoneRowID:v6];

  v7 = [(BRCAccountSession *)self->super._session syncContextProvider];
  v8 = [v7 defaultSyncContext];
  v9 = [v8 uploadThrottle];
  v10 = [MEMORY[0x277D82C08] formatInjection:@"in_flight_diffs = NULL"];
  [(BRCFSSchedulerBase *)self insertOrUpdateJobID:v13 throttle:v9 withState:1 insertedSQLColumn:0 insertedSQLValues:0 updatedSQLValues:v10 error:0];
  v12 = v11;

  if (v12 <= brc_current_date_nsec())
  {
    [(BRCSyncUpScheduler *)self _scheduleSyncUpJob:v13];
  }
}

- (void)prepareItemForSyncUp:(id)a3 inFlightDiffs:(unint64_t)a4 inZone:(id)a5
{
  v8 = a5;
  session = self->super._session;
  v10 = a3;
  v11 = [(BRCAccountSession *)session clientDB];
  v12 = [(BRCFSSchedulerBase *)self tableName];
  v13 = [v10 dbRowID];

  v16 = v8;
  v14 = [[BRCItemDBRowIDAndZoneJobIdentifier alloc] initWithItemDBRowID:v13 zoneRowID:v16];

  v15 = [(BRCIntAndZoneJobIdentifier *)v14 matchingJobsWhereSQLClause];
  [v11 execute:{@"UPDATE %@SET in_flight_diffs = %lldWHERE %@", v12, a4, v15}];
}

- (void)_clearSyncUpErrorForItem:(id)a3
{
  session = self->super._session;
  v4 = a3;
  v6 = [(BRCAccountSession *)session clientDB];
  v5 = [v4 dbRowID];

  [v6 execute:{@"DELETE FROM item_errors WHERE item_rowid = %llu AND service = %d", v5, 3}];
}

- (unint64_t)finishSyncUpForItem:(id)a3 inZone:(id)a4 success:(BOOL)a5
{
  v5 = a5;
  v38 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (v5)
  {
    [(BRCSyncUpScheduler *)self _clearSyncUpErrorForItem:v8];
  }

  v10 = [(BRCAccountSession *)self->super._session clientDB];
  v11 = [v10 isBatchSuspended];

  if ((v11 & 1) == 0)
  {
    [BRCSyncUpScheduler finishSyncUpForItem:inZone:success:];
  }

  if (!v9)
  {
    [BRCSyncUpScheduler finishSyncUpForItem:inZone:success:];
  }

  memset(v29, 0, sizeof(v29));
  __brc_create_section(0, "[BRCSyncUpScheduler finishSyncUpForItem:inZone:success:]", 140, 0, v29);
  v12 = brc_bread_crumbs();
  v13 = brc_default_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v26 = v29[0];
    v27 = [(BRCFSSchedulerBase *)self name];
    v28 = [v8 jobsDescription];
    *buf = 134218754;
    v31 = v26;
    v32 = 2112;
    v33 = v27;
    v34 = 2112;
    v35 = v28;
    v36 = 2112;
    v37 = v12;
    _os_log_debug_impl(&dword_223E7A000, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx %@[%@]: finishing sync up%@", buf, 0x2Au);
  }

  v14 = [v8 inFlightSyncUpDiffsInZoneRowID:v9];
  v15 = [v8 dbRowID];
  v16 = v9;
  v17 = [[BRCItemDBRowIDAndZoneJobIdentifier alloc] initWithItemDBRowID:v15 zoneRowID:v16];

  if (-[BRCFSSchedulerBase setState:forJobID:](self, "setState:forJobID:", 0, v17) && [v8 isDocument])
  {
    v18 = [v8 clientZone];
    v19 = [v18 dbRowID];
    v20 = [v19 br_isEqualToNumber:v16];

    if (v20)
    {
      v21 = [v8 asDocument];
      if (v5 || ([v8 needsSyncUp] & 1) == 0)
      {
        v22 = [(BRCAccountSession *)self->super._session fsUploader];
        [v22 cancelAndCleanupItemUpload:v21];
      }

      if ([v8 needsUpload])
      {
        v23 = [(BRCAccountSession *)self->super._session fsUploader];
        [v23 uploadItem:v21];
      }

      goto LABEL_19;
    }

    if ([v8 needsUpload])
    {
      v21 = [(BRCAccountSession *)self->super._session fsUploader];
      [v21 rescheduleSuspendedJobsMatching:v8 inState:31];
LABEL_19:
    }
  }

  __brc_leave_section(v29);
  v24 = *MEMORY[0x277D85DE8];
  return v14;
}

- (BOOL)isItemPendingSyncUp:(id)a3
{
  v4 = a3;
  v5 = [v4 db];
  v6 = [(BRCFSSchedulerBase *)self tableName];
  v7 = [v4 matchingJobsWhereSQLClause];

  v8 = [v5 numberWithSQL:{@"SELECT COUNT(*) FROM %@WHERE %@ AND throttle_state != 0", v6, v7}];
  LOBYTE(v6) = [v8 BOOLValue];

  return v6;
}

- (int64_t)timeToRetryForItem:(id)a3 zone:(id)a4
{
  v6 = a4;
  v7 = [a3 dbRowID];
  v8 = v6;
  v9 = [[BRCItemDBRowIDAndZoneJobIdentifier alloc] initWithItemDBRowID:v7 zoneRowID:v8];

  v12.receiver = self;
  v12.super_class = BRCSyncUpScheduler;
  v10 = [(BRCFSSchedulerBase *)&v12 timeToRetryFor:v9];

  return v10;
}

- (void)_scheduleSyncUpJobForZoneWithRowID:(id)a3
{
  v8 = a3;
  v4 = [v8 br_isEqualToNumber:&unk_2837B0478];
  session = self->super._session;
  if (v4)
  {
    v6 = [(BRCAccountSession *)session containerScheduler];
    [v6 scheduleSyncUpForSideCar];
  }

  else
  {
    v6 = [(BRCAccountSession *)session serverZoneByRowID:v8];
    v7 = [v6 clientZone];
    [v7 scheduleSyncUp];
  }
}

- (void)_scheduleSyncUpJob:(id)a3
{
  v4 = a3;
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(BRCSyncUpScheduler *)v4 _scheduleSyncUpJob:v5, v6];
  }

  [(BRCFSSchedulerBase *)self setState:50 forJobID:v4];
  v7 = [v4 zoneRowID];
  [(BRCSyncUpScheduler *)self _scheduleSyncUpJobForZoneWithRowID:v7];
}

- (void)recoverAndReportMissingJobsWithCompletion:(id)a3 recoveryTask:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(BRCAccountSession *)self->super._session clientDB];
  v9 = [v8 fetch:{@"SELECT ci.rowid, ci.zone_rowid, ci.item_id, ci.item_creator_id, ci.item_sharing_options, ci.item_side_car_ckinfo, ci.item_parent_zone_rowid, ci.item_localsyncupstate, ci.item_local_diffs, ci.item_notifs_rank, ci.app_library_rowid, ci.item_min_supported_os_rowid, ci.item_user_visible, ci.item_stat_ckinfo, ci.item_state, ci.item_type, ci.item_mode, ci.item_birthtime, ci.item_lastusedtime, ci.item_favoriterank, ci.item_parent_id, ci.item_filename, ci.item_hidden_ext, ci.item_finder_tags, ci.item_xattr_signature, ci.item_trash_put_back_path, ci.item_trash_put_back_parent_id, ci.item_alias_target, ci.item_creator, ci.item_processing_stamp, ci.item_bouncedname, ci.item_scope, ci.item_local_change_count, ci.item_old_version_identifier, ci.fp_creation_item_identifier, ci.version_name, ci.version_ckinfo, ci.version_mtime, ci.version_size, ci.version_thumb_size, ci.version_thumb_signature, ci.version_content_signature, ci.version_xattr_signature, ci.version_edited_since_shared, ci.version_device, ci.version_conflict_loser_etags, ci.version_quarantine_info, ci.version_uploaded_assets, ci.version_upload_error, ci.version_old_zone_item_id, ci.version_old_zone_rowid, ci.version_local_change_count, ci.version_old_version_identifier, ci.item_live_conflict_loser_etags, ci.item_file_id, ci.item_generation FROM client_items AS ci WHERE ci.item_localsyncupstate = 4 AND ci.item_localsyncupstate != 0 AND NOT EXISTS (SELECT 1 FROM client_sync_up AS su WHERE ci.rowid = su.throttle_id AND su.throttle_state != 0)"}];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __77__BRCSyncUpScheduler_recoverAndReportMissingJobsWithCompletion_recoveryTask___block_invoke;
  v35[3] = &unk_2784FF910;
  v35[4] = self;
  v10 = [v9 enumerateObjects:v35];
  v11 = [v10 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v11)
  {
    v12 = v11;
    v30 = v9;
    v31 = 8;
    v32 = v7;
    v33 = v6;
    LODWORD(v13) = 0;
    v14 = *v37;
    do
    {
      v34 = v13;
      for (i = 0; i != v12; ++i)
      {
        if (*v37 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v36 + 1) + 8 * i);
        v17 = objc_autoreleasePoolPush();
        v18 = [v16 clientZone];
        v19 = [v18 dbRowID];
        [(BRCSyncUpScheduler *)self createSyncUpJobForItem:v16 inZone:v19];

        if ([v16 isSharedToMeChildItem])
        {
          [(BRCSyncUpScheduler *)self createSyncUpJobForItem:v16 inZone:&unk_2837B0478];
        }

        else if ([v16 isSharedToMeTopLevelItem])
        {
          v20 = [v16 parentClientZone];
          v21 = [v20 dbRowID];
          [(BRCSyncUpScheduler *)self createSyncUpJobForItem:v16 inZone:v21];
        }

        objc_autoreleasePoolPop(v17);
      }

      v13 = (v34 + v12);
      v12 = [v10 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v12);

    v22 = brc_bread_crumbs();
    v23 = brc_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      [(BRCSyncUpScheduler *)v22 recoverAndReportMissingJobsWithCompletion:v13 recoveryTask:v23];
    }

    [(BRCSyncUpScheduler *)self schedule];
    v7 = v32;
    v6 = v33;
    v9 = v30;
  }

  else
  {

    v13 = 0;
  }

  v24 = [(BRCAccountSession *)self->super._session clientDB:v30];
  v25 = [v24 fetch:@"SELECT DISTINCT su.zone_rowid FROM client_sync_up AS su  INNER JOIN client_items AS li ON su.throttle_id = li.rowid  WHERE su.throttle_state = 50       AND su.throttle_state != 0       AND li.item_localsyncupstate = 4       AND li.item_min_supported_os_rowid IS NULL       AND NOT item_id_is_documents(li.item_id)"];

  if ([v25 next])
  {
    do
    {
      v26 = [v25 numberAtIndex:0];
      [(BRCSyncUpScheduler *)self _scheduleSyncUpJobForZoneWithRowID:v26];
    }

    while (([v25 next] & 1) != 0);
  }

  v27 = [AppTelemetryTimeSeriesEvent newMissingSyncUpJobEventWithNumberMissing:v13];
  v28 = [(BRCAccountSession *)self->super._session analyticsReporter];
  [v28 postReportForDefaultSubCategoryWithCategory:8 telemetryTimeEvent:v27];

  v6[2](v6, v13);
  v29 = *MEMORY[0x277D85DE8];
}

id __77__BRCSyncUpScheduler_recoverAndReportMissingJobsWithCompletion_recoveryTask___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = a2;
  v6 = [v4 clientDB];
  v7 = [v4 newLocalItemFromPQLResultSet:v5 db:v6 error:a3];

  return v7;
}

- (void)schedule
{
  v3 = [BRCUserDefaults defaultsForMangledID:0];
  v4 = [v3 maxRecordCountInModifyRecordsOperation];

  v5 = [MEMORY[0x277D82C18] rawInjection:"throttle_id length:{zone_rowid", 23}];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __30__BRCSyncUpScheduler_schedule__block_invoke;
  v6[3] = &unk_278502028;
  v6[4] = self;
  [(BRCFSSchedulerBase *)self scheduleWithBatchSize:v4 whereSQLClause:0 columns:v5 actionHandler:v6];
}

void __30__BRCSyncUpScheduler_schedule__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 longLongAtIndex:a3];
  v9 = [v5 numberAtIndex:(a3 + 1)];

  v7 = *(a1 + 32);
  v8 = [[BRCItemDBRowIDAndZoneJobIdentifier alloc] initWithItemDBRowID:v6 zoneRowID:v9];
  [v7 _scheduleSyncUpJob:v8];
}

- (unint64_t)postponeSyncUpCallback:(id)a3 inZone:(id)a4
{
  v6 = a4;
  v7 = [a3 dbRowID];
  v8 = v6;
  v9 = [[BRCItemDBRowIDAndZoneJobIdentifier alloc] initWithItemDBRowID:v7 zoneRowID:v8];

  v10 = [v8 longLongValue];
  session = self->super._session;
  if (v10 <= 0)
  {
    v12 = [(BRCAccountSession *)session syncContextProvider];
    [v12 defaultSyncContext];
  }

  else
  {
    v12 = [(BRCAccountSession *)session serverZoneByRowID:v8];
    [v12 metadataSyncContext];
  }
  v13 = ;

  v14 = [v13 perItemSyncUpThrottle];
  v15 = [(BRCFSSchedulerBase *)self postponeJobID:v9 withThrottle:v14];

  return v15;
}

- (void)ineligibleSyncUpCallback:(id)a3 inZone:(id)a4
{
  v9 = a3;
  [(BRCSyncUpScheduler *)self setState:52 forItem:v9 zone:a4];
  if ([v9 isDocument])
  {
    v6 = [v9 session];
    v7 = [v6 globalProgress];
    v8 = [v9 asDocument];
    [v7 didUpdateDocument:v8];
  }
}

- (void)createSyncUpJobForItem:(uint64_t)a1 inZone:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_223E7A000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] Clearing app sync blocked bit because we created an item that needs sync%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)finishSyncUpForItem:inZone:success:.cold.1()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = brc_bread_crumbs();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0(&dword_223E7A000, v2, v3, "[CRIT] Assertion failed: _session.clientDB.isBatchSuspended%@", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)finishSyncUpForItem:inZone:success:.cold.2()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = brc_bread_crumbs();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0(&dword_223E7A000, v2, v3, "[CRIT] Assertion failed: zoneRowID%@", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_scheduleSyncUpJob:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_223E7A000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] Sync-Up[%@]: Scheduling a sync-up job%@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)recoverAndReportMissingJobsWithCompletion:(os_log_t)log recoveryTask:.cold.1(uint64_t a1, int a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 67109378;
  v4[1] = a2;
  v5 = 2112;
  v6 = a1;
  _os_log_debug_impl(&dword_223E7A000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] Sync-Up: Recovered from %u missing sync up jobs%@", v4, 0x12u);
  v3 = *MEMORY[0x277D85DE8];
}

@end