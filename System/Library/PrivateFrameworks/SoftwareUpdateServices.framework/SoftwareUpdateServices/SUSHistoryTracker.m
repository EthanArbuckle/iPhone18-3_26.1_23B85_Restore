@interface SUSHistoryTracker
+ (id)historyOperationName;
+ (id)nameForHistoryType:(int64_t)a3;
+ (id)sharedTracker;
+ (id)trackerWithPath:(id)a3;
- (BOOL)submitHistoryAnalyticsEvent;
- (id)description;
- (id)descriptorFromRollbackDescriptor:(id)a3;
- (id)fetchInstallHistory;
- (id)formatDownloadEvent:(id)a3;
- (id)formatErrorEvent:(id)a3;
- (id)formatInstallEvent:(id)a3;
- (id)formatScanEvent:(id)a3;
- (id)formatSpaceEvent:(id)a3;
- (id)historyTypeName;
- (id)initUsingProtectionQueue:(id)a3 withBasePath:(id)a4;
- (void)appendToString:(id)a3 key:(id)a4 value:(id)a5;
- (void)dealloc;
- (void)handleAnalyticsSubmissionTimer:(id)a3;
- (void)invalidateAnalyticsSubmissionTimer;
- (void)recordDownloadCompleted:(id)a3 withError:(id)a4;
- (void)recordDownloadStarted:(id)a3 fromClient:(id)a4;
- (void)recordHistoryEvent:(id)a3;
- (void)recordInstallCompleted:(id)a3 withError:(id)a4;
- (void)recordInstallStarted:(id)a3 withDownload:(id)a4;
- (void)recordRollbackCompleted:(id)a3 withError:(id)a4;
- (void)recordRollbackStarted:(id)a3;
- (void)recordScanForUpdates:(id)a3 fromClient:(id)a4;
- (void)setupAnalyticsSubmissionTimer;
- (void)updateInstallHistory:(id)a3 build:(id)a4 date:(id)a5 operationType:(int64_t)a6;
@end

@implementation SUSHistoryTracker

+ (id)sharedTracker
{
  if (sharedTracker_onceToken != -1)
  {
    +[SUSHistoryTracker sharedTracker];
  }

  v3 = sharedTracker_sharedInstance;

  return v3;
}

void __34__SUSHistoryTracker_sharedTracker__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v3 = dispatch_queue_create("com.apple.softwareupdateservices.ProtectionQueue", v0);

  v1 = [[SUSHistoryTracker alloc] initUsingProtectionQueue:v3 withBasePath:0];
  v2 = sharedTracker_sharedInstance;
  sharedTracker_sharedInstance = v1;
}

+ (id)trackerWithPath:(id)a3
{
  v3 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__SUSHistoryTracker_trackerWithPath___block_invoke;
  block[3] = &unk_279CAA708;
  v10 = v3;
  v4 = trackerWithPath__onceToken;
  v5 = v3;
  if (v4 != -1)
  {
    dispatch_once(&trackerWithPath__onceToken, block);
  }

  v6 = trackerWithPath__sharedInstance;
  v7 = trackerWithPath__sharedInstance;

  return v6;
}

void __37__SUSHistoryTracker_trackerWithPath___block_invoke(uint64_t a1)
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_create("com.apple.softwareupdateservices.ProtectionQueue", v2);

  v3 = [[SUSHistoryTracker alloc] initUsingProtectionQueue:v5 withBasePath:*(a1 + 32)];
  v4 = trackerWithPath__sharedInstance;
  trackerWithPath__sharedInstance = v3;
}

- (id)initUsingProtectionQueue:(id)a3 withBasePath:(id)a4
{
  v115 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v113.receiver = self;
  v113.super_class = SUSHistoryTracker;
  v9 = [(SUSHistoryTracker *)&v113 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_protectionQueue, a3);
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.softwareupdateservices.AnalyticsSubmissionQueue", v11);
    analyticsSubmissionQueue = v10->_analyticsSubmissionQueue;
    v10->_analyticsSubmissionQueue = v12;

    if (v8)
    {
      v14 = v8;
      basePath = v10->_basePath;
      v10->_basePath = v14;
    }

    else
    {
      v16 = +[SUUtility systemContainerURL];
      basePath = v16;
      if (v16)
      {
        v17 = [(NSString *)v16 path];
        v18 = [v17 stringByAppendingPathComponent:@"history"];

        if (v18)
        {
          SULogInfo(@"Tracking history to %@", v19, v20, v21, v22, v23, v24, v25, v18);
        }

        else
        {
          v26 = NSTemporaryDirectory();
          v27 = [v26 stringByAppendingPathComponent:@"history"];
          SULogInfo(@"Failed to create history tracking path, saving to %@", v28, v29, v30, v31, v32, v33, v34, v27);

          v35 = NSTemporaryDirectory();
          v18 = [v35 stringByAppendingPathComponent:@"history"];
        }
      }

      else
      {
        v18 = 0;
      }

      v36 = v10->_basePath;
      v10->_basePath = v18;
    }

    v37 = [(SUSHistoryTracker *)v10 basePath];
    v38 = [v37 stringByAppendingPathComponent:@"CoreAnalytics"];
    coreAnalyticsPath = v10->_coreAnalyticsPath;
    v10->_coreAnalyticsPath = v38;

    v40 = [(SUSHistoryTracker *)v10 basePath];
    v41 = [v40 stringByAppendingPathComponent:@"SUS_History_Tracking.log"];
    historyLogPath = v10->_historyLogPath;
    v10->_historyLogPath = v41;

    v43 = [(SUSHistoryTracker *)v10 basePath];
    v44 = [v43 stringByAppendingPathComponent:@"installHistory.db"];
    historyInstallDBPath = v10->_historyInstallDBPath;
    v10->_historyInstallDBPath = v44;

    v46 = [(SUSHistoryTracker *)v10 historyInstallDBPath];
    v47 = [SUSHistoryInstalls sharedInstanceWithPath:v46];
    installHistoryManager = v10->_installHistoryManager;
    v10->_installHistoryManager = v47;

    v49 = [(SUSHistoryTracker *)v10 coreAnalyticsPath];
    v50 = [SUAnalyticsManager sharedManagerWithPath:v49];
    analyticsManager = v10->_analyticsManager;
    v10->_analyticsManager = v50;

    v52 = objc_alloc_init(MEMORY[0x277CBEB18]);
    eventQueue = v10->_eventQueue;
    v10->_eventQueue = v52;

    v61 = [MEMORY[0x277CCAA00] defaultManager];
    if (v10->_analyticsManager)
    {
      v62 = [(SUSHistoryTracker *)v10 analyticsManager];
      v63 = [v62 savePath];

      v112 = 0;
      v64 = [v61 contentsOfDirectoryAtPath:v63 error:&v112];
      v65 = v112;
      v73 = v65;
      if (v65 || !v63)
      {
        if (v65)
        {
          SULogError(@"Couldn't read CA directory: %@", v66, v67, v68, v69, v70, v71, v72, v65);
        }

        else
        {
          SULogError(@"Analytics manager savePath returned nil", v66, v67, v68, v69, v70, v71, v72, v104);
        }
      }

      else
      {
        v105 = v61;
        v106 = v8;
        v74 = [v64 sortedArrayUsingSelector:sel_compare_];

        v110 = 0u;
        v111 = 0u;
        v108 = 0u;
        v109 = 0u;
        v64 = v74;
        v75 = [v64 countByEnumeratingWithState:&v108 objects:v114 count:16];
        if (v75)
        {
          v76 = v75;
          v77 = *v109;
          do
          {
            for (i = 0; i != v76; ++i)
            {
              if (*v109 != v77)
              {
                objc_enumerationMutation(v64);
              }

              v79 = [v63 stringByAppendingPathComponent:*(*(&v108 + 1) + 8 * i)];
              v80 = [(SUSHistoryTracker *)v10 analyticsManager];
              v81 = [v80 copyEventFromPath:v79];

              if (v81)
              {
                v89 = [(SUSHistoryTracker *)v10 eventQueue];
                [v89 addObject:v81];
              }

              else
              {
                SULogError(@"Unable to add event from path: %@", v82, v83, v84, v85, v86, v87, v88, v79);
              }
            }

            v76 = [v64 countByEnumeratingWithState:&v108 objects:v114 count:16];
          }

          while (v76);
        }

        v8 = v106;
        v73 = 0;
        v61 = v105;
      }
    }

    else
    {
      SULogInfo(@"Analytics manager unavailable, continuing without analytics support", v54, v55, v56, v57, v58, v59, v60, v104);
    }

    v90 = [(SUSHistoryTracker *)v10 basePath];
    v91 = [v61 fileExistsAtPath:v90];

    if (v91)
    {
      v92 = 0;
    }

    else
    {
      v93 = [(SUSHistoryTracker *)v10 basePath];
      v107 = 0;
      v94 = [v61 createDirectoryAtPath:v93 withIntermediateDirectories:1 attributes:0 error:&v107];
      v92 = v107;

      if ((v94 & 1) == 0)
      {
        SULogError(@"Failed to create log directory: %@", v95, v96, v97, v98, v99, v100, v101, v92);
      }
    }

    [(SUSHistoryTracker *)v10 setupAnalyticsSubmissionTimer];
  }

  v102 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)dealloc
{
  [(SUSHistoryTracker *)self invalidateAnalyticsSubmissionTimer];
  v3.receiver = self;
  v3.super_class = SUSHistoryTracker;
  [(SUSHistoryTracker *)&v3 dealloc];
}

- (void)recordHistoryEvent:(id)a3
{
  v4 = a3;
  v5 = [(SUSHistoryTracker *)self protectionQueue];
  dispatch_assert_queue_not_V2(v5);

  v6 = [(SUSHistoryTracker *)self protectionQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__SUSHistoryTracker_recordHistoryEvent___block_invoke;
  v8[3] = &unk_279CAA7C0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_sync(v6, v8);
}

void __40__SUSHistoryTracker_recordHistoryEvent___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) basePath];
  SULogInfo(@"Tracking path: %@", v3, v4, v5, v6, v7, v8, v9, v2);

  v10 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v11 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v11 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
  v12 = [*(a1 + 40) timestamp];
  v13 = [v11 stringFromDate:v12];

  v130 = v13;
  [v10 appendFormat:@"time=%@ ", v13];
  v14 = +[SUSHistoryTracker historyOperationName];
  v15 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 40), "operation")}];
  v16 = [v14 objectForKeyedSubscript:v15];
  [v10 appendFormat:@"op=%@ ", v16];

  v17 = [*(a1 + 40) extraInfo];
  v18 = [v17 objectForKeyedSubscript:@"identifier"];

  if (v18)
  {
    v19 = [*(a1 + 40) extraInfo];
    v20 = [v19 objectForKeyedSubscript:@"identifier"];
    [v10 appendFormat:@"id=%@ ", v20];
  }

  v21 = [*(a1 + 40) extraInfo];
  v22 = [v21 objectForKeyedSubscript:@"userInitiated"];
  v23 = [v22 BOOLValue];

  [v10 appendFormat:@"userInitiated=%d ", v23];
  v24 = [*(a1 + 40) historyType];
  if (v24 <= 1)
  {
    if (!v24)
    {
      v25 = [*(a1 + 32) formatScanEvent:*(a1 + 40)];
      goto LABEL_14;
    }

    if (v24 == 1)
    {
      v25 = [*(a1 + 32) formatDownloadEvent:*(a1 + 40)];
      goto LABEL_14;
    }
  }

  else
  {
    switch(v24)
    {
      case 2:
        v25 = [*(a1 + 32) formatInstallEvent:*(a1 + 40)];
        goto LABEL_14;
      case 3:
        v25 = [*(a1 + 32) formatSpaceEvent:*(a1 + 40)];
        goto LABEL_14;
      case 4:
        v25 = [*(a1 + 32) formatErrorEvent:*(a1 + 40)];
LABEL_14:
        v26 = v25;
        [v10 appendString:v25];

        goto LABEL_15;
    }
  }

  [*(a1 + 40) historyType];
  SULogInfo(@"%s Recording unknown type log: %ld", v77, v78, v79, v80, v81, v82, v83, "[SUSHistoryTracker recordHistoryEvent:]_block_invoke");
LABEL_15:
  [v10 appendFormat:@"\n"];
  SULogDebug(@"%s entry: %@", v27, v28, v29, v30, v31, v32, v33, "[SUSHistoryTracker recordHistoryEvent:]_block_invoke");
  v34 = [*(a1 + 32) analyticsManager];

  if (v34)
  {
    v35 = [*(a1 + 40) toAnalytics];
    if (v35)
    {
      v36 = [*(a1 + 32) eventQueue];
      [v36 addObject:v35];

      v37 = [*(a1 + 32) analyticsManager];
      [v37 setEvent:v35];

      v38 = [*(a1 + 32) eventQueue];
      v39 = [v38 count];

      if (v39 >= 8)
      {
        do
        {
          v40 = [*(a1 + 32) analyticsManager];
          v41 = [*(a1 + 32) eventQueue];
          v42 = [v41 objectAtIndexedSubscript:0];
          [v40 removeEvent:v42];

          v43 = [*(a1 + 32) eventQueue];
          [v43 removeObjectAtIndex:0];

          v44 = [*(a1 + 32) eventQueue];
          v45 = [v44 count];
        }

        while (v45 > 7);
      }
    }
  }

  v46 = [MEMORY[0x277CCAA00] defaultManager];
  v47 = [*(a1 + 32) historyLogPath];
  v48 = [MEMORY[0x277CCA9F8] fileHandleForWritingAtPath:v47];
  if (!v48)
  {
    [v46 createFileAtPath:v47 contents:0 attributes:0];
    v48 = [MEMORY[0x277CCA9F8] fileHandleForWritingAtPath:v47];
  }

  v136 = 0;
  v49 = [v46 attributesOfItemAtPath:v47 error:&v136];
  v50 = v136;
  v51 = [v49 fileSize];
  v52 = [v10 lengthOfBytesUsingEncoding:4];
  v129 = v50;
  if ((v52 + v51) > 0x500000)
  {
    v60 = v52;
    SULogInfo(@"%s: Log file exceeds max size (%llu + %lu > %d), trimming...", v53, v54, v55, v56, v57, v58, v59, "[SUSHistoryTracker recordHistoryEvent:]_block_invoke");
    v135 = 0;
    v61 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:v47 encoding:4 error:&v135];
    v69 = v135;
    if (v61)
    {
      v125 = v49;
      v126 = v46;
      v127 = v11;
      v128 = v10;
      v124 = v61;
      v70 = [v61 componentsSeparatedByString:@"\n"];
      v71 = [MEMORY[0x277CBEB18] array];
      v72 = [v70 count];
      if (v72 - 1 >= 0)
      {
        v73 = v72;
        v74 = 0;
        while (1)
        {
          v75 = [v70 objectAtIndexedSubscript:--v73];
          v76 = v74 + [v75 lengthOfBytesUsingEncoding:4] + 1;
          if ((v76 + v60) > 0x500000)
          {
            break;
          }

          [v71 insertObject:v75 atIndex:0];

          v74 = v76;
          if (v73 <= 0)
          {
            goto LABEL_33;
          }
        }
      }

LABEL_33:
      v84 = [v71 componentsJoinedByString:@"\n"];
      v134 = 0;
      v85 = [v84 writeToFile:v47 atomically:1 encoding:4 error:&v134];
      v93 = v134;
      if (v85)
      {
        SULogInfo(@"%s: Trimmed log to %lu bytes (will be %lu bytes after adding new entry)", v86, v87, v88, v89, v90, v91, v92, "[SUSHistoryTracker recordHistoryEvent:]_block_invoke");
      }

      else
      {
        SULogError(@"%s: Failed to write trimmed log: %@", v86, v87, v88, v89, v90, v91, v92, "[SUSHistoryTracker recordHistoryEvent:]_block_invoke");
      }

      v10 = v128;
      [v48 closeFile];
      v94 = [MEMORY[0x277CCA9F8] fileHandleForWritingAtPath:v47];

      v11 = v127;
      if (!v94)
      {
        SULogError(@"%s: Failed to create new file handle after trimming", v95, v96, v97, v98, v99, v100, v101, "[SUSHistoryTracker recordHistoryEvent:]_block_invoke");

        v123 = v130;
        v49 = v125;
        v46 = v126;
        goto LABEL_45;
      }

      v48 = v94;
      v49 = v125;
      v46 = v126;
      v61 = v124;
    }

    else
    {
      SULogError(@"%s: Failed to read log file for trimming: %@", v62, v63, v64, v65, v66, v67, v68, "[SUSHistoryTracker recordHistoryEvent:]_block_invoke");
    }
  }

  v69 = v48;
  v132 = 0;
  v133 = 0;
  v102 = [v48 seekToEndReturningOffset:&v133 error:&v132];
  v110 = v132;
  if (v102)
  {
    v111 = v49;
    v112 = v46;
    v113 = [v10 dataUsingEncoding:4];
    v131 = 0;
    v114 = [v69 writeData:v113 error:&v131];
    v115 = v131;

    if ((v114 & 1) == 0)
    {
      SULogError(@"%s: Failed to write SUSHistory entry: %@", v116, v117, v118, v119, v120, v121, v122, "[SUSHistoryTracker recordHistoryEvent:]_block_invoke");
    }

    v123 = v130;
    v46 = v112;
    v49 = v111;
  }

  else
  {
    SULogError(@"%s: Failed to seek to end of SUSHistory file: %@", v103, v104, v105, v106, v107, v108, v109, "[SUSHistoryTracker recordHistoryEvent:]_block_invoke");
    v115 = v110;
    v123 = v130;
  }

  [v69 closeFile];

LABEL_45:
}

- (void)setupAnalyticsSubmissionTimer
{
  v3 = [objc_alloc(MEMORY[0x277D3A180]) initWithTimeInterval:@"com.apple.softwareupdateservices.analytics" serviceIdentifier:self target:sel_handleAnalyticsSubmissionTimer_ selector:0 userInfo:86400.0];
  analyticsSubmissionTimer = self->_analyticsSubmissionTimer;
  self->_analyticsSubmissionTimer = v3;

  v5 = self->_analyticsSubmissionTimer;
  v6 = [(SUSHistoryTracker *)self analyticsSubmissionQueue];
  [(PCPersistentTimer *)v5 scheduleInQueue:v6];

  SULogInfo(@"%s: Analytics submission persistent timer scheduled to fire every 24 hours", v7, v8, v9, v10, v11, v12, v13, "[SUSHistoryTracker setupAnalyticsSubmissionTimer]");
}

- (void)handleAnalyticsSubmissionTimer:(id)a3
{
  SULogInfo(@"%s: 24-hour persistent timer fired, submitting analytics", a2, a3, v3, v4, v5, v6, v7, "[SUSHistoryTracker handleAnalyticsSubmissionTimer:]");

  [(SUSHistoryTracker *)self submitHistoryAnalyticsEvent];
}

- (void)invalidateAnalyticsSubmissionTimer
{
  analyticsSubmissionTimer = self->_analyticsSubmissionTimer;
  if (analyticsSubmissionTimer)
  {
    [(PCPersistentTimer *)analyticsSubmissionTimer invalidate];
    v4 = self->_analyticsSubmissionTimer;
    self->_analyticsSubmissionTimer = 0;

    SULogInfo(@"%s: Analytics submission persistent timer invalidated", v5, v6, v7, v8, v9, v10, v11, "[SUSHistoryTracker invalidateAnalyticsSubmissionTimer]");
  }
}

- (BOOL)submitHistoryAnalyticsEvent
{
  v3 = [(SUSHistoryTracker *)self analyticsManager];

  if (v3)
  {
    v11 = [(SUSHistoryTracker *)self analyticsManager];
    v12 = [v11 submitAllEvents];

    if (v12)
    {
      SULogInfo(@"%s: Successfully submitted all queued events", v4, v5, v6, v7, v8, v9, v10, "[SUSHistoryTracker submitHistoryAnalyticsEvent]");
      v13 = [(SUSHistoryTracker *)self eventQueue];
      [v13 removeAllObjects];

      return 1;
    }

    v16 = "[SUSHistoryTracker submitHistoryAnalyticsEvent]";
    v15 = @"%s: Failed to submit some or all events";
  }

  else
  {
    v15 = @"No Analytics Manager available";
  }

  SULogError(v15, v4, v5, v6, v7, v8, v9, v10, v16);
  return 0;
}

- (void)updateInstallHistory:(id)a3 build:(id)a4 date:(id)a5 operationType:(int64_t)a6
{
  v10 = a5;
  v11 = a4;
  v20 = a3;
  v12 = [(SUSHistoryTracker *)self installHistoryManager];
  [v12 addLogWithName:v20 build:v11 date:v10 operationType:a6];

  SULogDebug(@"%s: Entry Name: %@ | Version: %@ | Date: %@", v13, v14, v15, v16, v17, v18, v19, "[SUSHistoryTracker updateInstallHistory:build:date:operationType:]");
}

- (id)fetchInstallHistory
{
  SULogDebug(@"%s: Fetching Install History", a2, v2, v3, v4, v5, v6, v7, "[SUSHistoryTracker fetchInstallHistory]");
  v9 = [(SUSHistoryTracker *)self installHistoryManager];
  v10 = [v9 queryAllLogs];

  return v10;
}

- (void)appendToString:(id)a3 key:(id)a4 value:(id)a5
{
  if (a5)
  {
    v7 = a5;
    v8 = a4;
    v11 = a3;
    v9 = [v11 length];
    v10 = @"| ";
    if (!v9)
    {
      v10 = &stru_287B45B60;
    }

    [v11 appendFormat:@"%@%@:%@ ", v10, v8, v7];
  }
}

- (id)formatScanEvent:(id)a3
{
  v4 = a3;
  v5 = [(SUSHistoryTracker *)self protectionQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v7 = [v4 extraInfo];
  v8 = [v7 objectForKeyedSubscript:@"downloadNow"];

  if (v8)
  {
    v9 = [v4 extraInfo];
    v10 = [v9 objectForKeyedSubscript:@"downloadNow"];
    v11 = [v10 BOOLValue];

    [v6 appendFormat:@"downloadNow=%d ", v11];
  }

  v12 = [v4 operation];
  v13 = [v4 extraInfo];
  v14 = v13;
  if (v12 == 100)
  {
    v15 = [v13 objectForKeyedSubscript:@"softwareUpdateType"];

    if (!v15)
    {
      goto LABEL_17;
    }

    v16 = [v4 extraInfo];
    v17 = [v16 objectForKeyedSubscript:@"softwareUpdateType"];

    [v6 appendFormat:@"updateType=%@ ", v17];
  }

  else
  {
    v17 = [v13 objectForKeyedSubscript:@"descriptor"];

    if (v17)
    {
      v18 = [v17 humanReadableUpdateName];
      [v6 appendFormat:@"updateTitle=%@ ", v18];

      v19 = objc_alloc_init(MEMORY[0x277CCAB68]);
      v20 = [v17 productBuildVersion];

      if (v20)
      {
        v21 = [v17 productBuildVersion];
        [v19 appendFormat:@"preferredBuild=%@ ", v21];
      }

      v22 = [v17 productVersion];
      [(SUSHistoryTracker *)self appendToString:v19 key:@"preferredVersion" value:v22];

      if ([v19 length])
      {
        [v6 appendString:v19];
      }

      v23 = [v4 extraInfo];
      v24 = [v23 objectForKeyedSubscript:@"alternateBuild"];

      v25 = [v4 extraInfo];
      v26 = [v25 objectForKeyedSubscript:@"alternateVersion"];

      v27 = objc_alloc_init(MEMORY[0x277CCAB68]);
      v28 = v27;
      if (v24)
      {
        [v27 appendFormat:@"alternateBuild=%@ ", v24];
      }

      [(SUSHistoryTracker *)self appendToString:v28 key:@"alternateVersion" value:v26];
      if ([v28 length])
      {
        [v6 appendString:v28];
      }
    }
  }

LABEL_17:

  return v6;
}

- (id)formatDownloadEvent:(id)a3
{
  v4 = a3;
  v5 = [(SUSHistoryTracker *)self protectionQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v7 = [v4 extraInfo];
  v8 = [v7 objectForKeyedSubscript:@"descriptor"];

  v9 = [v4 extraInfo];

  v10 = [v9 objectForKeyedSubscript:@"isBackground"];
  v11 = [v10 BOOLValue];

  if (v8)
  {
    v12 = [v8 humanReadableUpdateName];
    [v6 appendFormat:@"updateTitle=%@ ", v12];

    v13 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v14 = [v8 productBuildVersion];

    if (v14)
    {
      v15 = [v8 productBuildVersion];
      [v13 appendFormat:@"targetBuild=%@ ", v15];
    }

    v16 = [v8 productVersion];
    [(SUSHistoryTracker *)self appendToString:v13 key:@"targetVersion" value:v16];

    if ([v13 length])
    {
      [v6 appendString:v13];
    }

    [v6 appendFormat:@"background=%d ", v11];
    [v6 appendFormat:@"splat=%d ", objc_msgSend(v8, "isSplatOnly")];
    [v6 appendFormat:@"splombo=%d ", objc_msgSend(v8, "isSplombo")];
  }

  else
  {
    [v6 appendFormat:@"updateTitle=%@ ", @"UNKNOWN"];
    [v6 appendFormat:@"background=%d ", v11];
    [v6 appendFormat:@"splat=%d ", 0];
    [v6 appendFormat:@"splombo=%d ", 0];
  }

  return v6;
}

- (id)formatInstallEvent:(id)a3
{
  v4 = a3;
  v5 = [(SUSHistoryTracker *)self protectionQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v7 = [v4 extraInfo];
  v8 = [v7 objectForKeyedSubscript:@"descriptor"];

  if (v8)
  {
    v9 = [v8 humanReadableUpdateName];
    [v6 appendFormat:@"updateTitle=%@ ", v9];

    v10 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v11 = [v8 productBuildVersion];

    if (v11)
    {
      v12 = [v8 productBuildVersion];
      [v10 appendFormat:@"targetBuild=%@ ", v12];
    }

    v13 = [v8 productVersion];

    if (v13)
    {
      v14 = [v8 productVersion];
      [(SUSHistoryTracker *)self appendToString:v10 key:@"targetVersion" value:v14];
    }

    if ([v10 length])
    {
      [v6 appendString:v10];
    }

    if ([v4 operation] == 304)
    {
      [v6 appendFormat:@"splat=%d ", objc_msgSend(v8, "isSplatOnly")];
      [v6 appendFormat:@"splombo=%d ", objc_msgSend(v8, "isSplombo")];
    }

    if ([v4 operation] == 304 || objc_msgSend(v4, "operation") == 303)
    {
      v15 = [v8 humanReadableUpdateName];
      v16 = v15;
      v17 = @"UNKNOWN_UPDATE";
      if (v15)
      {
        v17 = v15;
      }

      v18 = v17;

      v19 = [v8 productBuildVersion];
      v20 = v19;
      v21 = @"UNKNOWN_BUILD";
      if (v19)
      {
        v21 = v19;
      }

      v22 = v21;

      v23 = [v8 productVersionExtra];
      [v8 productVersion];

      if (v23)
      {
        v24 = [(__CFString *)v22 stringByAppendingFormat:@" %@", v23];

        v22 = v24;
      }

      v25 = [v4 timestamp];
      -[SUSHistoryTracker updateInstallHistory:build:date:operationType:](self, "updateInstallHistory:build:date:operationType:", v18, v22, v25, [v4 operation]);
    }

    goto LABEL_22;
  }

  [v6 appendFormat:@"updateTitle=%@ ", @"UNKNOWN"];
  [v6 appendFormat:@"splat=%d ", 0];
  [v6 appendFormat:@"splombo=%d ", 0];
  if ([v4 operation] == 304 || objc_msgSend(v4, "operation") == 303)
  {
    v10 = [v4 timestamp];
    -[SUSHistoryTracker updateInstallHistory:build:date:operationType:](self, "updateInstallHistory:build:date:operationType:", @"Unknown Update", @"Unknown Version", v10, [v4 operation]);
LABEL_22:
  }

  return v6;
}

- (id)formatSpaceEvent:(id)a3
{
  v4 = a3;
  v5 = [(SUSHistoryTracker *)self protectionQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v7 = [v4 extraInfo];
  v8 = [v7 objectForKeyedSubscript:@"cacheDeleteEnabled"];
  v9 = [v8 BOOLValue];

  v10 = [v4 extraInfo];
  v11 = [v10 objectForKeyedSubscript:@"appOffloadEnabled"];
  v12 = [v11 BOOLValue];

  v13 = [v4 extraInfo];

  v14 = [v13 objectForKeyedSubscript:@"descriptor"];

  if (v14)
  {
    v15 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v16 = [v14 productBuildVersion];

    if (v16)
    {
      v17 = [v14 productBuildVersion];
      [v15 appendFormat:@"targetBuild=%@ ", v17];
    }

    v18 = [v14 productVersion];
    [(SUSHistoryTracker *)self appendToString:v15 key:@"targetVersion" value:v18];

    if ([v15 length])
    {
      [v6 appendString:v15];
    }
  }

  [v6 appendFormat:@"cacheDeleteEnabled=%d ", v9];
  [v6 appendFormat:@"appOffloadEnabled=%d ", v12];

  return v6;
}

- (id)formatErrorEvent:(id)a3
{
  v4 = a3;
  v5 = [(SUSHistoryTracker *)self protectionQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v7 = [v4 extraInfo];

  v8 = [v7 objectForKeyedSubscript:@"error"];

  [v6 appendFormat:@"error=%@ ", v8];

  return v6;
}

+ (id)historyOperationName
{
  v6[27] = *MEMORY[0x277D85DE8];
  v5[0] = &unk_287B6F358;
  v5[1] = &unk_287B6F370;
  v6[0] = @"NEW_BUCKET_CREATED";
  v6[1] = @"SCAN_INITIATED";
  v5[2] = &unk_287B6F388;
  v5[3] = &unk_287B6F3A0;
  v6[2] = @"SCAN_OTA_FOUND";
  v6[3] = @"SCAN_OTA_SLOW_ROLL_FOUND";
  v5[4] = &unk_287B6F3B8;
  v5[5] = &unk_287B6F3D0;
  v6[4] = @"DOWNLOAD_INITIATED";
  v6[5] = @"DOWNLOAD_COMPLETE";
  v5[6] = &unk_287B6F3E8;
  v5[7] = &unk_287B6F400;
  v6[6] = @"AUTO_DOWNLOAD";
  v6[7] = @"ALTERNATE_DOWNLOAD";
  v5[8] = &unk_287B6F418;
  v5[9] = &unk_287B6F430;
  v6[8] = @"INSTALL_INITATED";
  v6[9] = @"AUTO_INSTALL";
  v5[10] = &unk_287B6F448;
  v5[11] = &unk_287B6F460;
  v6[10] = @"ROLLBACK_INITIATED";
  v6[11] = @"ROLLBACK_COMPLETE";
  v5[12] = &unk_287B6F478;
  v5[13] = &unk_287B6F490;
  v6[12] = @"INSTALL_COMPLETE";
  v6[13] = @"SUFFICIENT_SPACE";
  v5[14] = &unk_287B6F4A8;
  v5[15] = &unk_287B6F4C0;
  v6[14] = @"SUFFICIENT_SPACE_WITH_PURGE";
  v6[15] = @"SPACE_PURGED";
  v5[16] = &unk_287B6F4D8;
  v5[17] = &unk_287B6F4F0;
  v6[16] = @"STANDARD_ERROR";
  v6[17] = @"INTERNAL_ERROR";
  v5[18] = &unk_287B6F508;
  v5[19] = &unk_287B6F520;
  v6[18] = @"BATTERY_ERROR";
  v6[19] = @"STORAGE_ERROR";
  v5[20] = &unk_287B6F538;
  v5[21] = &unk_287B6F550;
  v6[20] = @"CONTINUITY_CAMERA_IN_USE";
  v6[21] = @"SCAN_FAILED_NO_NETWORK";
  v5[22] = &unk_287B6F568;
  v5[23] = &unk_287B6F580;
  v6[22] = @"SCAN_FAILED_NO_UPDATE_FOUND";
  v6[23] = @"DOWNLOAD_FAILED";
  v5[24] = &unk_287B6F598;
  v5[25] = &unk_287B6F5B0;
  v6[24] = @"INSTALL_FAILED";
  v6[25] = @"ROLLBACK_FAILED";
  v5[26] = &unk_287B6F5C8;
  v6[26] = @"QUIET_OPERATION";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:27];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)nameForHistoryType:(int64_t)a3
{
  if (a3 < 5)
  {
    return off_279CAAFF0[a3];
  }

  SULogError(@"Unknown history type: %ld", a2, a3, v3, v4, v5, v6, v7, a3);
  return @"HISTORY_TYPE_UNKNOWN";
}

- (id)historyTypeName
{
  v2 = [(SUSHistoryTracker *)self historyType];

  return [SUSHistoryTracker nameForHistoryType:v2];
}

- (id)description
{
  v3 = [SUSHistoryTracker nameForHistoryType:[(SUSHistoryTracker *)self historyType]];
  v4 = MEMORY[0x277CCACA8];
  v5 = [(SUSHistoryTracker *)self protectionQueue];
  if (v5)
  {
    v6 = @"Y";
  }

  else
  {
    v6 = @"N";
  }

  v7 = [(SUSHistoryTracker *)self coreAnalyticsPath];
  v8 = [(SUSHistoryTracker *)self historyLogPath];
  v9 = [(SUSHistoryTracker *)self historyInstallDBPath];
  v10 = [v4 stringWithFormat:@"protectionQueue:%@|historyType:%@|coreAnalyticsPath:%@|historyLogDirectoryPath:%@|historyLogFileName:%@", v6, v3, v7, v8, v9];

  return v10;
}

- (void)recordScanForUpdates:(id)a3 fromClient:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8 = v7;
  if (v6)
  {
    [v7 setObject:v6 forKeyedSubscript:@"identifier"];
  }

  else
  {
    v9 = [v11 identifier];
    [v8 setObject:v9 forKeyedSubscript:@"identifier"];
  }

  v10 = [[SUSHistoryEvent alloc] initWithOperation:100 historyType:0 extraInfo:v8];
  [(SUSHistoryTracker *)self recordHistoryEvent:v10];
}

- (void)recordDownloadStarted:(id)a3 fromClient:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8 = v7;
  if (v6)
  {
    [v7 setObject:v6 forKeyedSubscript:@"identifier"];
  }

  else
  {
    v9 = [v14 clientName];
    [v8 setObject:v9 forKeyedSubscript:@"identifier"];
  }

  v10 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v14, "isAutoDownload") ^ 1}];
  [v8 setObject:v10 forKeyedSubscript:@"userInitiated"];

  v11 = [v14 descriptor];

  if (v11)
  {
    v12 = [v14 descriptor];
    [v8 setObject:v12 forKeyedSubscript:@"descriptor"];
  }

  v13 = [[SUSHistoryEvent alloc] initWithOperation:200 historyType:1 extraInfo:v8];
  [(SUSHistoryTracker *)self recordHistoryEvent:v13];
}

- (void)recordDownloadCompleted:(id)a3 withError:(id)a4
{
  v22 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8 = v7;
  if (v22)
  {
    v9 = [v22 downloadOptions];
    v10 = [v9 clientName];

    if (v10)
    {
      v11 = [v22 downloadOptions];
      v12 = [v11 clientName];
      [v8 setObject:v12 forKeyedSubscript:@"identifier"];
    }

    v13 = MEMORY[0x277CCABB0];
    v14 = [v22 downloadOptions];
    v15 = [v13 numberWithBool:{objc_msgSend(v14, "isAutoDownload")}];
    [v8 setObject:v15 forKeyedSubscript:@"userInitiated"];

    v16 = [v22 descriptor];

    if (v16)
    {
      v17 = [v22 descriptor];
      [v8 setObject:v17 forKeyedSubscript:@"descriptor"];
    }

    if (v6)
    {
      goto LABEL_7;
    }
  }

  else
  {
    [v7 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"userInitiated"];
    [v8 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"isBackground"];
    if (v6)
    {
LABEL_7:
      [v8 setObject:v6 forKeyedSubscript:@"error"];
      v18 = [SUSHistoryEvent alloc];
      v19 = 507;
      v20 = 4;
      goto LABEL_10;
    }
  }

  v18 = [SUSHistoryEvent alloc];
  v19 = 201;
  v20 = 1;
LABEL_10:
  v21 = [(SUSHistoryEvent *)v18 initWithOperation:v19 historyType:v20 extraInfo:v8];
  [(SUSHistoryTracker *)self recordHistoryEvent:v21];
}

- (void)recordInstallStarted:(id)a3 withDownload:(id)a4
{
  v6 = MEMORY[0x277CBEB38];
  v7 = a4;
  v8 = a3;
  v14 = objc_alloc_init(v6);
  v9 = [v8 clientName];
  [v14 setObject:v9 forKeyedSubscript:@"identifier"];

  v10 = MEMORY[0x277CCABB0];
  v11 = [v8 automaticInstallation];

  v12 = [v10 numberWithBool:v11];
  [v14 setObject:v12 forKeyedSubscript:@"userInitiated"];

  [v14 setObject:v7 forKeyedSubscript:@"descriptor"];
  v13 = [[SUSHistoryEvent alloc] initWithOperation:200 historyType:1 extraInfo:v14];
  [(SUSHistoryTracker *)self recordHistoryEvent:v13];
}

- (void)recordInstallCompleted:(id)a3 withError:(id)a4
{
  v14 = a4;
  v6 = MEMORY[0x277CBEB38];
  v7 = a3;
  v8 = objc_alloc_init(v6);
  v9 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v7, "autoUpdateEnabled") ^ 1}];
  [v8 setObject:v9 forKeyedSubscript:@"userInitiated"];

  [v8 setObject:v7 forKeyedSubscript:@"descriptor"];
  if (v14)
  {
    [v8 setObject:v14 forKeyedSubscript:@"error"];
    v10 = [SUSHistoryEvent alloc];
    v11 = 508;
    v12 = 4;
  }

  else
  {
    v10 = [SUSHistoryEvent alloc];
    v11 = 304;
    v12 = 2;
  }

  v13 = [(SUSHistoryEvent *)v10 initWithOperation:v11 historyType:v12 extraInfo:v8];
  [(SUSHistoryTracker *)self recordHistoryEvent:v13];
}

- (void)recordRollbackStarted:(id)a3
{
  v4 = MEMORY[0x277CBEB38];
  v5 = a3;
  v8 = objc_alloc_init(v4);
  v6 = [(SUSHistoryTracker *)self descriptorFromRollbackDescriptor:v5];

  [v8 setObject:v6 forKeyedSubscript:@"descriptor"];
  v7 = [[SUSHistoryEvent alloc] initWithOperation:302 historyType:2 extraInfo:v8];
  [(SUSHistoryTracker *)self recordHistoryEvent:v7];
}

- (void)recordRollbackCompleted:(id)a3 withError:(id)a4
{
  v14 = a4;
  v6 = MEMORY[0x277CBEB38];
  v7 = a3;
  v8 = objc_alloc_init(v6);
  v9 = [(SUSHistoryTracker *)self descriptorFromRollbackDescriptor:v7];

  [v8 setObject:v9 forKeyedSubscript:@"descriptor"];
  if (v14)
  {
    [v8 setObject:v14 forKeyedSubscript:@"error"];
    v10 = [SUSHistoryEvent alloc];
    v11 = 509;
    v12 = 4;
  }

  else
  {
    v10 = [SUSHistoryEvent alloc];
    v11 = 303;
    v12 = 2;
  }

  v13 = [(SUSHistoryEvent *)v10 initWithOperation:v11 historyType:v12 extraInfo:v8];
  [(SUSHistoryTracker *)self recordHistoryEvent:v13];
}

- (id)descriptorFromRollbackDescriptor:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = objc_alloc_init(SUDescriptor);
    [(SUDescriptor *)v4 setHumanReadableUpdateName:@"Rollback Update"];
    v5 = [v3 productVersion];
    [(SUDescriptor *)v4 setProductVersion:v5];

    v6 = [v3 productBuildVersion];

    [(SUDescriptor *)v4 setProductBuildVersion:v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end