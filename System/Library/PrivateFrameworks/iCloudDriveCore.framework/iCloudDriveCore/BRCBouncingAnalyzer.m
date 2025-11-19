@interface BRCBouncingAnalyzer
- (BOOL)_isGenericUntitledFileName:(id)a3;
- (BOOL)analyzeServerBouncingOfItem:(id)a3 withServerItem:(id)a4;
- (BOOL)analyzeServerBouncingOriginalRecord:(id)a3 savedRecord:(id)a4;
- (BRCBouncingAnalyzer)initWithSessionContext:(id)a3;
- (int)analyzeBouncingOfItem:(id)a3 withServerItem:(id)a4 bounceReason:(int)a5;
- (void)analyzeBouncingOfItem:(id)a3 withTemplateItem:(id)a4;
- (void)close;
- (void)reportInitialScanItemTypeMismatch:(id)a3;
- (void)startBouncingIncidentBatch;
- (void)stopBouncingIncidentBatch;
@end

@implementation BRCBouncingAnalyzer

- (BRCBouncingAnalyzer)initWithSessionContext:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = BRCBouncingAnalyzer;
  v5 = [(BRCBouncingAnalyzer *)&v15 init];
  if (v5)
  {
    v6 = [v4 tapToRadarManager];
    tapToRadarManager = v5->_tapToRadarManager;
    v5->_tapToRadarManager = v6;

    v8 = [v4 analyticsReporter];
    analyticsReporter = v5->_analyticsReporter;
    v5->_analyticsReporter = v8;

    v10 = [v4 clientReadWriteDatabaseFacade];
    dbFacade = v5->_dbFacade;
    v5->_dbFacade = v10;

    v12 = objc_opt_new();
    bounceIncidentsInBatch = v5->_bounceIncidentsInBatch;
    v5->_bounceIncidentsInBatch = v12;

    v5->_bouncingIncidentBatchStarted = 0;
  }

  return v5;
}

- (void)close
{
  tapToRadarManager = self->_tapToRadarManager;
  self->_tapToRadarManager = 0;

  analyticsReporter = self->_analyticsReporter;
  self->_analyticsReporter = 0;
}

- (void)reportInitialScanItemTypeMismatch:(id)a3
{
  v4 = a3;
  v5 = +[BRCAutoBugCaptureReporter sharedABCReporter];
  [v5 captureLogsForOperationType:@"SyncHealth" ofSubtype:@"InitialScanBounce" forError:0];

  [(BRCAnalyticsReporter *)self->_analyticsReporter aggregateReportForAppTelemetryIdentifier:300 error:0];
  v6 = MEMORY[0x277CCACA8];
  v7 = [v4 itemID];

  v10 = [v6 stringWithFormat:@"Item %@ type was not compatible with local initial scan item", v7];

  tapToRadarManager = self->_tapToRadarManager;
  v9 = [MEMORY[0x277CCA9B8] brc_errorInitialScanItemTypeMismatch];
  [(BRCTapToRadarManager *)tapToRadarManager requestTapToRadarWithTitle:@"[Bouncing] Initial scan item type mismatch" description:v10 keywords:MEMORY[0x277CBEBF8] attachments:MEMORY[0x277CBEBF8] sendFullLog:1 displayReason:@"type mismatch between server and client item during reimport" triggerRootCause:v9 additionalDevices:0];
}

- (BOOL)analyzeServerBouncingOriginalRecord:(id)a3 savedRecord:(id)a4
{
  v52 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 recordType];
  v9 = [v8 isEqualToString:@"structure"];

  if (v9)
  {
    v34 = 0;
    location = 0;
    v32 = 0;
    v33 = 0;
    v30 = 0;
    v31 = 0;
    if (![v6 deserializeFilename:0 basename:&location bounceno:&v34 extension:&v33 userInfo:0 error:0] || !objc_msgSend(v7, "deserializeFilename:basename:bounceno:extension:userInfo:error:", 0, &v32, &v31, &v30, 0, 0))
    {
      goto LABEL_21;
    }

    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v29 = [v6 recordID];
      *buf = 138414082;
      v37 = v29;
      v38 = 2112;
      v39 = location;
      v40 = 2112;
      v41 = v34;
      v42 = 2112;
      v43 = v33;
      v44 = 2112;
      v45 = v32;
      v46 = 2112;
      v47 = v31;
      v48 = 2112;
      v49 = v30;
      v50 = 2112;
      v51 = v10;
      _os_log_debug_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] RecordID: %@ orig:<baseName: %@ bounceNo: %@ extension: %@> -> saved:<baseName: %@ bounceNo: %@ extension: %@>%@", buf, 0x52u);
    }

    v12 = location ? location : &stru_2837504F0;
    objc_storeStrong(&location, v12);
    v13 = v32 ? v32 : &stru_2837504F0;
    objc_storeStrong(&v32, v13);
    v14 = v33 ? v33 : &stru_2837504F0;
    objc_storeStrong(&v33, v14);
    v15 = v30 ? v30 : &stru_2837504F0;
    objc_storeStrong(&v30, v15);
    if ([location isEqualToString:v32] && objc_msgSend(v33, "isEqualToString:", v30) && (objc_msgSend(v34, "br_isEqualToNumber:", v31) & 1) == 0)
    {
      v19 = brc_bread_crumbs();
      v20 = brc_default_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        [(BRCBouncingAnalyzer *)v6 analyzeServerBouncingOriginalRecord:v19 savedRecord:v20];
      }

      v21 = +[BRCAutoBugCaptureReporter sharedABCReporter];
      [v21 captureLogsForOperationType:@"SyncHealth" ofSubtype:@"ServerBouncedItem" forError:0];

      v22 = [v6 pluginFields];
      v23 = [v22 objectForKeyedSubscript:@"br_initialItem"];

      if (v23)
      {
        v24 = MEMORY[0x277CCACA8];
        v25 = [v6 recordID];
        v26 = [v24 stringWithFormat:@"Item %@ got bounced by server after being set that it is from initial scan", v25];

        tapToRadarManager = self->_tapToRadarManager;
        v28 = [MEMORY[0x277CCA9B8] brc_errorRecordBouncedByServer];
        v16 = 1;
        [(BRCTapToRadarManager *)tapToRadarManager requestTapToRadarWithTitle:@"[Bouncing] Initial scan item got bounced by server" description:v26 keywords:MEMORY[0x277CBEBF8] attachments:MEMORY[0x277CBEBF8] sendFullLog:1 displayReason:@"reimported item got bounced by server" triggerRootCause:v28 additionalDevices:0];
      }

      else
      {
        v16 = 1;
      }
    }

    else
    {
LABEL_21:
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (BOOL)analyzeServerBouncingOfItem:(id)a3 withServerItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && [v7 isLive])
  {
    v30 = 0;
    v9 = [v6 st];
    v10 = [v9 logicalNameWithoutLocalBounce];
    v29 = 0;
    v11 = [v10 br_stringByDeletingPathBounceNo:&v30 andPathExtension:&v29];
    v12 = v29;

    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = &stru_2837504F0;
    }

    v14 = v13;

    if (v12)
    {
      v15 = v12;
    }

    else
    {
      v15 = &stru_2837504F0;
    }

    v16 = v15;

    v28 = 0;
    v17 = [v8 st];
    v18 = [v17 logicalName];
    v27 = 0;
    v19 = [v18 br_stringByDeletingPathBounceNo:&v28 andPathExtension:&v27];
    v20 = v27;

    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = &stru_2837504F0;
    }

    v22 = v21;

    if (v20)
    {
      v23 = v20;
    }

    else
    {
      v23 = &stru_2837504F0;
    }

    v24 = v23;

    if ([(__CFString *)v14 isEqualToString:v22]&& [(__CFString *)v16 isEqualToString:v24]&& v30 != v28)
    {
      [(BRCAnalyticsReporter *)self->_analyticsReporter aggregateReportForAppTelemetryIdentifier:503 error:0];
      v25 = 1;
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (BOOL)_isGenericUntitledFileName:(id)a3
{
  v3 = MEMORY[0x277CCA8D8];
  v4 = a3;
  v5 = [v3 bundleForClass:objc_opt_class()];
  v6 = _BRLocalizedStringWithFormat();
  v7 = [v6 localizedLowercaseString];

  v8 = [v4 st];

  v9 = [v8 logicalName];
  v10 = [v9 localizedLowercaseString];

  LOBYTE(v8) = [v10 hasPrefix:v7];
  return v8;
}

- (int)analyzeBouncingOfItem:(id)a3 withServerItem:(id)a4 bounceReason:(int)a5
{
  v8 = a3;
  v9 = a4;
  if (a5 == 501)
  {
    if ([v8 isDead])
    {
      a5 = 513;
    }

    else if ([v8 isFromInitialScan])
    {
      a5 = 517;
    }

    else if ([v8 isKnownByServer])
    {
      if (([v8 localDiffs] & 0x20) != 0)
      {
        a5 = 515;
      }

      else if (([v8 localDiffs] & 0x40) != 0)
      {
        a5 = 516;
      }

      else if ([(BRCBouncingAnalyzer *)self _isGenericUntitledFileName:v9])
      {
        if ([v8 isChildSharedItem] && (objc_msgSend(v9, "isChildSharedItem") & 1) != 0)
        {
          a5 = 518;
        }

        else
        {
          a5 = 519;
        }
      }

      else
      {
        a5 = 501;
      }
    }

    else
    {
      if ([v8 isDirectory] && objc_msgSend(v9, "isDirectory"))
      {
        v10 = +[BRCAutoBugCaptureReporter sharedABCReporter];
        [v10 captureLogsForOperationType:@"SyncHealth" ofSubtype:@"CollidingDirectoryApplyNotKnownByServerBounce" forError:0];

        v11 = MEMORY[0x277CCACA8];
        v12 = [v8 itemID];
        v13 = [v11 stringWithFormat:@"Directory %@ got bounced due to a colliding new directory applied on server", v12];

        tapToRadarManager = self->_tapToRadarManager;
        v15 = [MEMORY[0x277CCA9B8] brc_errorBouncedItemNotKnownByServer];
        [(BRCTapToRadarManager *)tapToRadarManager requestTapToRadarWithTitle:@"[Bouncing] Directory name collision when applying from server" description:v13 keywords:MEMORY[0x277CBEBF8] attachments:MEMORY[0x277CBEBF8] sendFullLog:1 displayReason:@"directory bounced due to a new directory applied from server" triggerRootCause:v15 additionalDevices:0];
      }

      a5 = 514;
    }
  }

  return a5;
}

- (void)analyzeBouncingOfItem:(id)a3 withTemplateItem:(id)a4
{
  v15 = a3;
  v6 = a4;
  if ([v15 isDirectory])
  {
    v7 = [v6 contentType];
    v8 = [v7 br_isDirectoryType];

    if (v8)
    {
      v9 = +[BRCAutoBugCaptureReporter sharedABCReporter];
      [v9 captureLogsForOperationType:@"SyncHealth" ofSubtype:@"CollidingDirectoryBounceInFPCreate" forError:0];

      v10 = MEMORY[0x277CCACA8];
      v11 = [v15 itemID];
      v12 = [v10 stringWithFormat:@"Directory %@ got bounced due to a colliding new directory created on disk", v11];

      tapToRadarManager = self->_tapToRadarManager;
      v14 = [MEMORY[0x277CCA9B8] brc_errorInitialScanItemBouncedByServer];
      [(BRCTapToRadarManager *)tapToRadarManager requestTapToRadarWithTitle:@"[Bouncing] Directory name collision when creating new item" description:v12 keywords:MEMORY[0x277CBEBF8] attachments:MEMORY[0x277CBEBF8] sendFullLog:1 displayReason:@"directory bounced due to a new directory created on disk" triggerRootCause:v14 additionalDevices:0];
    }
  }
}

- (void)startBouncingIncidentBatch
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, a2, a3, "[CRIT] Assertion failed: !_bouncingIncidentBatchStarted%@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)stopBouncingIncidentBatch
{
  v3 = self->_bounceIncidentsInBatch;
  objc_sync_enter(v3);
  if (!self->_bouncingIncidentBatchStarted)
  {
    v13 = brc_bread_crumbs();
    v14 = brc_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [(BRCBouncingAnalyzer *)v13 handleBounceIncidentDuringApplyWithServerItem:v14 bounceReason:v15, v16, v17, v18, v19, v20];
    }
  }

  v4 = [(NSMutableArray *)self->_bounceIncidentsInBatch copy];
  [(NSMutableArray *)self->_bounceIncidentsInBatch removeAllObjects];
  self->_bouncingIncidentBatchStarted = 0;
  objc_sync_exit(v3);

  if ([v4 count])
  {
    v5 = MEMORY[0x277CBEB70];
    v6 = [v4 br_transform:&__block_literal_global_59];
    v7 = [v5 orderedSetWithArray:v6];

    v8 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFABD0] code:160 description:@"Items got bounced"];
    v9 = +[BRCAutoBugCaptureReporter sharedABCReporter];
    [v9 captureLogsForOperationType:@"SyncHealth" ofSubtype:@"BouncedItem" forError:v8];

    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"some items got bounced on latest update:\n%@", v4];
    tapToRadarManager = self->_tapToRadarManager;
    v12 = [v7 array];
    [(BRCTapToRadarManager *)tapToRadarManager requestTapToRadarWithTitle:@"[Bouncing] some items got bounced on latest update" description:v10 keywords:MEMORY[0x277CBEBF8] attachments:MEMORY[0x277CBEBF8] sendFullLog:1 displayReason:@"some items got bounced on latest update" triggerRootCause:v8 additionalDevices:v12];
  }
}

- (void)analyzeServerBouncingOriginalRecord:(NSObject *)a3 savedRecord:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = [a1 recordID];
  v7 = [a1 pluginFields];
  v9 = 138412802;
  v10 = v6;
  v11 = 2112;
  v12 = v7;
  v13 = 2112;
  v14 = a2;
  _os_log_debug_impl(&dword_223E7A000, a3, OS_LOG_TYPE_DEBUG, "[DEBUG] Server bounced record %@. Plugin fields: %@%@", &v9, 0x20u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)handleBounceIncidentDuringApplyWithServerItem:(uint64_t)a3 bounceReason:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, a2, a3, "[CRIT] Assertion failed: _bouncingIncidentBatchStarted%@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end