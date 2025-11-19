@interface CSScheduledReceiverUpdater
- (BOOL)handleDeletion:(id)a3 turboEnabled:(BOOL)a4 completionHandler:(id)a5 cancelBlock:(id)a6;
- (BOOL)handleDonation:(id)a3 turboEnabled:(BOOL)a4 completionHandler:(id)a5 cancelBlock:(id)a6;
- (BOOL)shouldHandleJournalItem:(id)a3 bundleID:(id)a4;
- (CSScheduledReceiverUpdater)initWithSpotlightReceiverConfig:(id)a3;
- (id)description;
- (id)excludeBundleIDs;
- (id)includeBundleIDs;
- (id)taskName;
- (unint64_t)eventFlags;
@end

@implementation CSScheduledReceiverUpdater

- (CSScheduledReceiverUpdater)initWithSpotlightReceiverConfig:(id)a3
{
  v5 = a3;
  v45.receiver = self;
  v45.super_class = CSScheduledReceiverUpdater;
  v6 = [(CSScheduledReceiverUpdater *)&v45 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_config, a3);
    v8 = objc_alloc_init(CSEventListenerConfig);
    taskConfig = v7->_taskConfig;
    v7->_taskConfig = v8;

    v10 = MEMORY[0x277CCACA8];
    v11 = [v5 client];
    v12 = [v5 name];
    v13 = [v5 priority];
    v14 = [v10 stringWithFormat:@"receiver-%ld-%@-%@", v11, v12, v13];
    [(CSEventListenerConfig *)v7->_taskConfig setName:v14];

    v15 = MEMORY[0x277CCACA8];
    v16 = [(CSEventListenerConfig *)v7->_taskConfig name];
    v17 = [v15 stringWithFormat:@"com.apple.spotlightknowledge.task.%@", v16];
    [(CSEventListenerConfig *)v7->_taskConfig setTaskIdentifier:v17];

    -[CSEventListenerConfig setRequirePriorityItems:](v7->_taskConfig, "setRequirePriorityItems:", [v5 requirePriorityItems]);
    -[CSEventListenerConfig setRequireBacklogItems:](v7->_taskConfig, "setRequireBacklogItems:", [v5 requireBacklogItems]);
    -[CSEventListenerConfig setSupportsDeletedItems:](v7->_taskConfig, "setSupportsDeletedItems:", [v5 includeDeletedItems]);
    v18 = [v5 bundleIDs];
    [(CSEventListenerConfig *)v7->_taskConfig setIncludeBundleIDs:v18];

    v19 = [v5 disableBundleIDs];
    [(CSEventListenerConfig *)v7->_taskConfig setExcludeBundleIDs:v19];

    v20 = [v5 contentTypes];
    [(CSEventListenerConfig *)v7->_taskConfig setIncludeContentTypes:v20];

    v21 = [v5 disableContentTypes];
    [(CSEventListenerConfig *)v7->_taskConfig setExcludeContentTypes:v21];

    v22 = [v5 requiredAttributes];
    [(CSEventListenerConfig *)v7->_taskConfig setRequiredAttributes:v22];

    v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v24 = [v5 priority];
    LOBYTE(v12) = [v24 isEqualToString:@"immediate"];

    if (v12)
    {
      v25 = 20;
    }

    else
    {
      v26 = MEMORY[0x277CBEC38];
      [v23 setValue:MEMORY[0x277CBEC38] forKey:@"resourceIntensive"];
      v27 = [v5 priority];
      [v23 setValue:v27 forKey:@"priority"];

      [v23 setValue:v26 forKey:@"requiresUserInactivity"];
      [v23 setValue:v26 forKey:@"requiresExternalPower"];
      v28 = [v5 priority];
      LODWORD(v27) = [v28 isEqualToString:@"urgent"];

      if (v27)
      {
        v29 = MEMORY[0x277CBEC28];
        [v23 setValue:MEMORY[0x277CBEC28] forKey:@"requiresUserInactivity"];
        [v23 setValue:v29 forKey:@"requiresExternalPower"];
      }

      v30 = [v5 processes];

      if (v30)
      {
        v31 = [v5 processes];
        [v23 setValue:v31 forKey:@"involvedProcesses"];
      }

      v25 = 64;
    }

    [(CSEventListenerConfig *)v7->_taskConfig setEventFlags:v25];
    [(CSEventListenerConfig *)v7->_taskConfig setTaskOptions:v23];
    v32 = MEMORY[0x277CCACA8];
    v33 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "client")}];
    v34 = [v5 name];
    v35 = [v32 stringWithFormat:@"com.apple.spotlightknowledge.receiver.work.%@.%@", v33, v34];

    v36 = dispatch_queue_create([v35 UTF8String], 0);
    workQueue = v7->_workQueue;
    v7->_workQueue = v36;

    v38 = MEMORY[0x277CCACA8];
    v39 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "client")}];
    v40 = [v5 name];
    v41 = [v38 stringWithFormat:@"com.apple.spotlightknowledge.receiver.timer.%@.%@", v39, v40];

    v42 = dispatch_queue_create([v41 UTF8String], 0);
    timerQueue = v7->_timerQueue;
    v7->_timerQueue = v42;
  }

  return v7;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = objc_opt_class();
  v5 = [(CSScheduledReceiverUpdater *)self taskName];
  v6 = [v3 initWithFormat:@"<%@:%p; %@>", v4, self, v5];

  return v6;
}

- (id)taskName
{
  v2 = [(CSScheduledReceiverUpdater *)self taskConfig];
  v3 = [v2 name];

  return v3;
}

- (unint64_t)eventFlags
{
  v2 = [(CSScheduledReceiverUpdater *)self taskConfig];
  v3 = [v2 eventFlags];

  return v3;
}

- (id)includeBundleIDs
{
  v2 = [(CSScheduledReceiverUpdater *)self taskConfig];
  v3 = [v2 includeBundleIDs];

  return v3;
}

- (id)excludeBundleIDs
{
  v2 = [(CSScheduledReceiverUpdater *)self taskConfig];
  v3 = [v2 excludeBundleIDs];

  return v3;
}

- (BOOL)shouldHandleJournalItem:(id)a3 bundleID:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(CSScheduledReceiverUpdater *)self taskConfig];
  if (![v6 isUserActivity])
  {
    if (!v7 || ([v8 supportsBundleID:v7] & 1) == 0)
    {
      if (SKGLogGetCurrentLoggingLevel() >= 6)
      {
        v9 = SKGLogScheduledReceiverInit();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          [(CSScheduledReceiverUpdater *)self shouldHandleJournalItem:v7 bundleID:v9];
        }

        goto LABEL_40;
      }

      goto LABEL_12;
    }

    v10 = [v8 includeContentTypes];
    if ([v10 count])
    {
    }

    else
    {
      v12 = [v8 excludeContentTypes];
      v13 = [v12 count];

      if (!v13)
      {
        goto LABEL_22;
      }
    }

    memset(buf, 0, 24);
    [(CSEventDonationJournalItem *)v6 attrDictObj];
    if (_MDPlistDictionaryGetPlistObjectForKey())
    {
      v14 = *MEMORY[0x277CBECE8];
      v25 = *buf;
      v26 = *&buf[16];
      v9 = _MDPlistContainerCopyObject();
      if (v9 && ([v8 supportsContentType:v9] & 1) == 0)
      {
        if (SKGLogGetCurrentLoggingLevel() >= 6)
        {
          v15 = SKGLogScheduledReceiverInit();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            [(CSScheduledReceiverUpdater *)self shouldHandleJournalItem:v9 bundleID:v15];
          }

LABEL_39:

          goto LABEL_40;
        }

        goto LABEL_40;
      }
    }

    else
    {
      v9 = 0;
    }

LABEL_22:
    if ([v8 requirePriorityItems])
    {
      v9 = [v6 attributesForKeys:&unk_2846E8010 bundleID:v7];
      if (([v9 recordIsCurrent:v9 toCalendarUnit:16 maxOffset:1 checkFuture:1 dateKeys:&unk_2846E8010]& 1) == 0)
      {
        if (SKGLogGetCurrentLoggingLevel() >= 6)
        {
          v15 = SKGLogScheduledReceiverInit();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            [(CSScheduledReceiverUpdater *)self shouldHandleJournalItem:v7 bundleID:v15];
          }

          goto LABEL_39;
        }

LABEL_40:
        v11 = 0;
        goto LABEL_41;
      }
    }

    else
    {
      if (![v8 requireBacklogItems])
      {
LABEL_33:
        v16 = [(CSScheduledReceiverUpdater *)self taskConfig];
        v9 = [v16 requiredAttributes];

        if (!-[NSObject count](v9, "count") || ([v6 containsAnyInAttributes:v9] & 1) != 0)
        {
          v11 = 1;
LABEL_41:

          goto LABEL_42;
        }

        if (SKGLogGetCurrentLoggingLevel() >= 6)
        {
          v15 = SKGLogScheduledReceiverInit();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            v19 = [(CSScheduledReceiverUpdater *)self taskConfig];
            v20 = [v19 name];
            v21 = [v20 UTF8String];
            v22 = [v6 isUpdate];
            v23 = [v9 componentsJoinedByString:@", "];
            v24 = [v23 UTF8String];
            *buf = 136315650;
            *&buf[4] = v21;
            *&buf[12] = 1024;
            *&buf[14] = v22;
            *&buf[18] = 2080;
            *&buf[20] = v24;
            _os_log_debug_impl(&dword_231B25000, v15, OS_LOG_TYPE_DEBUG, "### RECEIVER ignoring item for '%s', isUpdate: %d (required: <%s>)", buf, 0x1Cu);
          }

          goto LABEL_39;
        }

        goto LABEL_40;
      }

      v9 = [v6 attributesForKeys:&unk_2846E8010 bundleID:v7];
      if ([v9 recordIsCurrent:v9 toCalendarUnit:16 maxOffset:1 checkFuture:1 dateKeys:&unk_2846E8010])
      {
        if (SKGLogGetCurrentLoggingLevel() >= 6)
        {
          v15 = SKGLogScheduledReceiverInit();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            [(CSScheduledReceiverUpdater *)self shouldHandleJournalItem:v7 bundleID:v15];
          }

          goto LABEL_39;
        }

        goto LABEL_40;
      }
    }

    goto LABEL_33;
  }

  if (SKGLogGetCurrentLoggingLevel() >= 6)
  {
    v9 = SKGLogScheduledReceiverInit();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [(CSScheduledReceiverUpdater *)self shouldHandleJournalItem:v7 bundleID:v9];
    }

    goto LABEL_40;
  }

LABEL_12:
  v11 = 0;
LABEL_42:

  v17 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)handleDonation:(id)a3 turboEnabled:(BOOL)a4 completionHandler:(id)a5 cancelBlock:(id)a6
{
  v123 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v72 = a5;
  v73 = a6;
  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v11 = SKGLogScheduledReceiverInit();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = v10;
      *&buf[12] = 2080;
      *&buf[14] = [(CSEventListenerManager *)v10 journalMap];
      _os_log_impl(&dword_231B25000, v11, OS_LOG_TYPE_DEFAULT, "**** handleDonation for %@ / %s", buf, 0x16u);
    }
  }

  context = objc_autoreleasePoolPush();
  v12 = SKGLogEventInit();
  spid = os_signpost_id_generate(v12);

  v13 = SKGLogEventInit();
  v14 = v13;
  v66 = spid - 1;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_231B25000, v14, OS_SIGNPOST_INTERVAL_BEGIN, spid, "CSScheduledReceiverUpdaterHandleDonation", "", buf, 2u);
  }

  v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:-[CSEventListenerManager journalMap](v10) encoding:4];
  v16 = objc_alloc(MEMORY[0x277CCACA8]);
  v17 = [(CSEventListenerDonation *)v10 protectionClass];
  v69 = [v16 initWithString:v17];

  v18 = objc_alloc(MEMORY[0x277CCACA8]);
  v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:-[CSEventListenerManager journalQueue](v10)];
  v68 = [v18 initWithString:v19];

  v20 = [MEMORY[0x277D657A0] sharedContext];
  v21 = [v20 enableReceiverDebugging];

  v74 = [(CSScheduledReceiverUpdater *)self receiverConfig];
  if (v15)
  {
    v22 = [v74 bundleIDs];
    v23 = [v22 count];
    if (v23)
    {
      v6 = [v74 bundleIDs];
      if (([v6 containsObject:v15] & 1) == 0)
      {

LABEL_20:
        if (SKGLogGetCurrentLoggingLevel() >= 6)
        {
          v28 = SKGLogScheduledReceiverInit();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            [CSScheduledReceiverUpdater handleDonation:v15 turboEnabled:v28 completionHandler:? cancelBlock:?];
          }
        }

        v29 = SKGLogEventInit();
        v30 = v29;
        if (v66 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v29))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_231B25000, v30, OS_SIGNPOST_INTERVAL_END, spid, "CSScheduledReceiverUpdaterHandleDonation", "", buf, 2u);
        }

        (*(v72 + 2))(v72, 0, 0, 0);
        goto LABEL_58;
      }
    }

    v24 = [v74 disableBundleIDs];
    if ([v24 count])
    {
      v25 = v23 == 0;
      v26 = [v74 disableBundleIDs];
      v27 = [v26 containsObject:v15];

      if (v25)
      {

        if (v27)
        {
          goto LABEL_20;
        }
      }

      else
      {

        if (v27)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {

      if (v23)
      {
      }
    }
  }

  v31 = [v74 name];
  v32 = [MEMORY[0x277CC33D0] sharedListener];
  v63 = [v32 onBattery];

  v33 = +[CSEventFeedback receiverFeedback];
  [v33 setIndexType:-[CSEventListenerManager folderFd](v10)];
  [v33 setBundleID:v15];
  [v33 start];
  if (a4)
  {
    v64 = 0;
  }

  else
  {
    v34 = [SKGTimer alloc];
    timerQueue = self->_timerQueue;
    v110[0] = MEMORY[0x277D85DD0];
    v110[1] = 3221225472;
    v110[2] = __88__CSScheduledReceiverUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke;
    v110[3] = &unk_27893D6D8;
    v112 = v73;
    v110[4] = self;
    v111 = v10;
    v64 = [(SKGTimer *)v34 initWithTimeIntervalSinceNow:timerQueue tolerance:v110 queue:5.0 block:2.0];
    v61 = &v112;
    v62 = &v111;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v120 = __Block_byref_object_copy__6;
  v121 = __Block_byref_object_dispose__6;
  v122 = 0;
  v104 = 0;
  v105 = &v104;
  v106 = 0x3032000000;
  v107 = __Block_byref_object_copy__6;
  v108 = __Block_byref_object_dispose__6;
  v109 = 0;
  v98 = 0;
  v99 = &v98;
  v100 = 0x3032000000;
  v101 = __Block_byref_object_copy__6;
  v102 = __Block_byref_object_dispose__6;
  v103 = 0;
  v65 = dispatch_group_create();
  v91[0] = MEMORY[0x277D85DD0];
  v91[1] = 3221225472;
  v91[2] = __88__CSScheduledReceiverUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_62;
  v91[3] = &unk_27893D700;
  v91[4] = self;
  v15 = v15;
  v92 = v15;
  v97 = v21;
  v36 = v10;
  v93 = v36;
  v95 = &v104;
  v37 = v33;
  v94 = v37;
  v96 = &v98;
  [v36 iterateItems:v91];
  if (!v73[2]())
  {
    if ([v105[5] count])
    {
      v45 = [objc_alloc(MEMORY[0x277CC34A8]) _initWithName:@"ReceiverUpdate" protectionClass:v69 bundleIdentifier:v15 options:32];
      [v45 indexSearchableItems:v105[5] completionHandler:&__block_literal_global_9];
    }

    v46 = [(CSEventListenerManager *)v36 indexType];
    v47 = [(CSEmbeddingsUpdater *)v36 activityJournal];
    v48 = [(CSEmbeddingsUpdater *)v36 defaults];
    v49 = v99[5];
    if (v49)
    {
      v50 = [v49 count];
      if (v50)
      {
        [(SKGTimer *)v64 reset];
        queue = self->_workQueue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __88__CSScheduledReceiverUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_2;
        block[3] = &unk_27893D770;
        block[4] = self;
        v76 = v36;
        v86 = v50;
        v51 = v65;
        v89 = v46;
        v77 = v51;
        v87 = v47;
        v88 = v48;
        v78 = v15;
        v79 = v69;
        v80 = v68;
        v84 = &v98;
        v81 = v74;
        v85 = buf;
        v82 = v37;
        v83 = v31;
        v90 = v63;
        dispatch_group_async(v51, queue, block);
        v52 = dispatch_time(0, 600000000000);
        if (dispatch_group_wait(v51, v52))
        {
          if (SKGLogGetCurrentLoggingLevel() >= 2)
          {
            v53 = SKGLogScheduledReceiverInit();
            if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
            {
              [CSScheduledReceiverUpdater handleDonation:v53 turboEnabled:? completionHandler:? cancelBlock:?];
            }
          }

          [MEMORY[0x277D65760] suspend];
          v54 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.spotlightknowledged.EventListenerError" code:-9001 userInfo:0];
        }

        else
        {
          v54 = *(*&buf[8] + 40);
        }

        v55 = v54;

        goto LABEL_51;
      }
    }

    else
    {
      v50 = 0;
    }

    v55 = 0;
LABEL_51:
    v56 = SKGLogEventInit();
    v57 = v56;
    if (v66 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v56))
    {
      *v113 = 0;
      _os_signpost_emit_with_name_impl(&dword_231B25000, v57, OS_SIGNPOST_INTERVAL_END, spid, "CSScheduledTaskUpdaterHandleDonation", "", v113, 2u);
    }

    [v37 end];
    (*(v72 + 2))(v72, v50, 0, v55);

    goto LABEL_55;
  }

  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v38 = SKGLogScheduledReceiverInit();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 = [(CSScheduledReceiverUpdater *)self taskConfig];
      v40 = [v39 name];
      v41 = v40;
      v42 = [v40 UTF8String];
      v43 = [(CSEventListenerDonation *)v36 indexTypeName];
      v44 = [(CSEventListenerManager *)v36 totalJournalSize];
      *v113 = 136315650;
      v114 = v42;
      v115 = 2080;
      v116 = v43;
      v117 = 2048;
      v118 = v44;
      _os_log_impl(&dword_231B25000, v38, OS_LOG_TYPE_DEFAULT, "### cancelling %s due to expiration request while processing type='%s' sn:'%llu'", v113, 0x20u);
    }
  }

  [v37 end];
  (*(v72 + 2))(v72, 0, 0, 0);
LABEL_55:

  _Block_object_dispose(&v98, 8);
  _Block_object_dispose(&v104, 8);

  _Block_object_dispose(buf, 8);
  if (!a4)
  {
  }

LABEL_58:
  objc_autoreleasePoolPop(context);

  v58 = *MEMORY[0x277D85DE8];
  return 1;
}

void __88__CSScheduledReceiverUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ((*(*(a1 + 48) + 16))())
  {
    if (SKGLogGetCurrentLoggingLevel() >= 4)
    {
      v4 = SKGLogScheduledReceiverInit();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = [*(a1 + 32) taskConfig];
        v6 = [v5 name];
        v7 = [v6 UTF8String];
        v8 = [(CSEventListenerDonation *)*(a1 + 40) indexTypeName];
        v9 = [(CSEventListenerManager *)*(a1 + 40) totalJournalSize];
        v11 = 136315650;
        v12 = v7;
        v13 = 2080;
        v14 = v8;
        v15 = 2048;
        v16 = v9;
        _os_log_impl(&dword_231B25000, v4, OS_LOG_TYPE_DEFAULT, "### cancelling %s due to expiration request while processing type='%s' sn:'%llu'", &v11, 0x20u);
      }
    }

    [MEMORY[0x277D65760] suspend];
  }

  else
  {
    [v3 reset];
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __88__CSScheduledReceiverUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_62(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *MEMORY[0x277CBECE8];
  [(CSEventDonationJournalItem *)v3 identifier];
  v6 = MDJournalReaderMDPlistObjectCopy();
  v7 = [v6 mutableCopy];

  if ([*(a1 + 32) shouldHandleJournalItem:v3 bundleID:*(a1 + 40)])
  {
    if (*(a1 + 80) == 1)
    {
      if (SKGLogGetCurrentLoggingLevel() >= 4)
      {
        v8 = SKGLogScheduledReceiverInit();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = [*(a1 + 32) taskConfig];
          v10 = [v9 name];
          v11 = [v10 UTF8String];
          v12 = [(CSEventListenerDonation *)*(a1 + 48) indexTypeName];
          v13 = [(CSEventListenerManager *)*(a1 + 48) totalJournalSize];
          v28 = 136315650;
          v29 = v11;
          v30 = 2080;
          v31 = v12;
          v32 = 2048;
          v33 = v13;
          _os_log_impl(&dword_231B25000, v8, OS_LOG_TYPE_DEFAULT, "### RECEIVER %s logging debug item type='%s' sn:'%llu'", &v28, 0x20u);
        }
      }

      v14 = objc_alloc_init(MEMORY[0x277CC34B8]);
      [v14 setAttribute:&unk_2846E7938 forKey:@"_kMDItemProcessedByUpdater"];
      v15 = [objc_alloc(MEMORY[0x277CC34B0]) initWithUniqueIdentifier:v7 domainIdentifier:0 attributeSet:v14];
      [v15 setBundleID:*(a1 + 40)];
      [v15 setIsUpdate:1];
      v16 = *(*(*(a1 + 64) + 8) + 40);
      if (!v16)
      {
        v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v18 = *(*(a1 + 64) + 8);
        v19 = *(v18 + 40);
        *(v18 + 40) = v17;

        v16 = *(*(*(a1 + 64) + 8) + 40);
      }

      [v16 addObject:v15];
    }

    [*(a1 + 56) setNumItemsInBatch:{objc_msgSend(*(a1 + 56), "numItemsInBatch") + 1}];
    v20 = *(*(*(a1 + 72) + 8) + 40);
    if (!v20)
    {
      v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v22 = *(*(a1 + 72) + 8);
      v23 = *(v22 + 40);
      *(v22 + 40) = v21;

      v20 = *(*(*(a1 + 72) + 8) + 40);
    }

    v24 = [v20 objectForKeyedSubscript:v7];

    if (!v24)
    {
      v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [*(*(*(a1 + 72) + 8) + 40) setObject:v25 forKeyedSubscript:v7];
LABEL_17:
    }
  }

  else if (SKGLogGetCurrentLoggingLevel() >= 6)
  {
    v25 = SKGLogScheduledReceiverInit();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      __88__CSScheduledReceiverUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_62_cold_1(a1 + 32, a1 + 40, v25);
    }

    goto LABEL_17;
  }

  objc_autoreleasePoolPop(v4);
  v26 = *MEMORY[0x277D85DE8];
  return 0;
}

void __88__CSScheduledReceiverUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_75(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    NSLog(&stru_2846D02B8.isa, a2);
  }
}

void __88__CSScheduledReceiverUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_2(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v2 = SKGLogScheduledReceiverInit();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      v4 = [(CSEventListenerDonation *)*(a1 + 40) indexTypeName];
      v5 = [(CSEventListenerManager *)*(a1 + 40) totalJournalSize];
      v6 = *(a1 + 120);
      *buf = 138413058;
      v31 = v3;
      v32 = 2080;
      v33 = v4;
      v34 = 2048;
      v35 = v5;
      v36 = 2048;
      v37 = v6;
      _os_log_impl(&dword_231B25000, v2, OS_LOG_TYPE_INFO, "### donation %@ %s sn:%llu found %lu items", buf, 0x2Au);
    }
  }

  dispatch_group_enter(*(a1 + 48));
  v21 = MEMORY[0x277D65760];
  v20 = *(a1 + 144);
  v18 = *(a1 + 136);
  v19 = *(a1 + 128);
  v7 = [(CSEventListenerManager *)*(a1 + 40) folderFd];
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v10 = [(CSEventListenerManager *)*(a1 + 40) totalJournalSize];
  v11 = *(*(*(a1 + 104) + 8) + 40);
  v12 = *(a1 + 72);
  v13 = [*(a1 + 80) client];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __88__CSScheduledReceiverUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_80;
  v22[3] = &unk_27893D748;
  v27 = *(a1 + 112);
  v14 = *(a1 + 80);
  v23 = *(a1 + 88);
  v24 = *(a1 + 56);
  v15 = *(a1 + 96);
  v16 = *(a1 + 120);
  v25 = v15;
  v28 = v16;
  v29 = *(a1 + 148);
  v26 = *(a1 + 48);
  [v21 addOrUpdateSearchableItemsInJournalFd:v20 atOffset:v19 size:v18 indexType:v7 bundleID:v8 protectionClass:v9 serialNumber:v10 journalCookie:v12 additionalAttributes:v11 client:v13 config:v14 completionHandler:v22];

  v17 = *MEMORY[0x277D85DE8];
}

void __88__CSScheduledReceiverUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_80(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
  if (!*(*(*(a1 + 64) + 8) + 40))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v10 = *(a1 + 48);
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 72)];
    v11[0] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    [v5 logReceivedItemForBundleID:v6 counts:v8 onBattery:*(a1 + 80)];
  }

  dispatch_group_leave(*(a1 + 56));

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)handleDeletion:(id)a3 turboEnabled:(BOOL)a4 completionHandler:(id)a5 cancelBlock:(id)a6
{
  v47 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  v11 = a6;
  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v12 = SKGLogScheduledReceiverInit();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = v9;
      _os_log_impl(&dword_231B25000, v12, OS_LOG_TYPE_INFO, "**** handleDeletion for %@", buf, 0xCu);
    }
  }

  v35 = [(CSScheduledReceiverUpdater *)self taskConfig];
  if ([v35 supportsDeletedItems])
  {
    if (SKGLogGetCurrentLoggingLevel() >= 4)
    {
      v13 = SKGLogScheduledReceiverInit();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [(CSEventListenerDonation *)v9 indexTypeName];
        v15 = [(CSEventListenerManager *)v9 totalJournalSize];
        *buf = 138412802;
        *&buf[4] = self;
        *&buf[12] = 2080;
        *&buf[14] = v14;
        *&buf[22] = 2048;
        v44 = v15;
        _os_log_impl(&dword_231B25000, v13, OS_LOG_TYPE_DEFAULT, "### deletion %@ %s sn:%llu", buf, 0x20u);
      }
    }

    v16 = [(CSScheduledReceiverUpdater *)self receiverConfig];
    v17 = objc_alloc(MEMORY[0x277CCACA8]);
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:-[CSEventListenerManager journalQueue](v9)];
    v19 = [v17 initWithString:v18];

    v20 = objc_alloc(MEMORY[0x277CCACA8]);
    v21 = [(CSEventListenerDonation *)v9 protectionClass];
    v22 = [v20 initWithString:v21];

    v23 = v11;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v44 = __Block_byref_object_copy__6;
    v45 = __Block_byref_object_dispose__6;
    v46 = 0;
    v24 = dispatch_group_create();
    workQueue = self->_workQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __88__CSScheduledReceiverUpdater_handleDeletion_turboEnabled_completionHandler_cancelBlock___block_invoke;
    block[3] = &unk_27893D7C0;
    v26 = v24;
    v37 = v26;
    v38 = v9;
    v27 = v22;
    v39 = v27;
    v28 = v19;
    v40 = v28;
    v29 = v16;
    v41 = v29;
    v42 = buf;
    dispatch_group_async(v26, workQueue, block);
    v30 = dispatch_time(0, 180000000000);
    if (dispatch_group_wait(v26, v30))
    {
      v11 = v23;
      if (SKGLogGetCurrentLoggingLevel() >= 2)
      {
        v31 = SKGLogScheduledReceiverInit();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          [CSScheduledReceiverUpdater handleDeletion:v31 turboEnabled:? completionHandler:? cancelBlock:?];
        }
      }

      v32 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.spotlightknowledged.EventListenerError" code:-9001 userInfo:0];
    }

    else
    {
      v32 = *(*&buf[8] + 40);
      v11 = v23;
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v32 = 0;
  }

  (*(v10 + 2))(v10, 0, 0, v32);

  v33 = *MEMORY[0x277D85DE8];
  return 1;
}

void __88__CSScheduledReceiverUpdater_handleDeletion_turboEnabled_completionHandler_cancelBlock___block_invoke(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v10 = MEMORY[0x277D65760];
  v2 = [(CSEventListenerManager *)*(a1 + 40) indexType];
  v3 = [(CSEmbeddingsUpdater *)*(a1 + 40) activityJournal];
  v4 = [(CSEmbeddingsUpdater *)*(a1 + 40) defaults];
  v5 = [(CSEventListenerManager *)*(a1 + 40) folderFd];
  v6 = *(a1 + 48);
  v7 = [(CSEventListenerManager *)*(a1 + 40) totalJournalSize];
  v8 = *(a1 + 56);
  v9 = [*(a1 + 64) client];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __88__CSScheduledReceiverUpdater_handleDeletion_turboEnabled_completionHandler_cancelBlock___block_invoke_2;
  v11[3] = &unk_27893D798;
  v13 = *(a1 + 72);
  v12 = *(a1 + 32);
  [v10 deleteSearchableItemsInJournalFd:v2 atOffset:v3 size:v4 indexType:v5 protectionClass:v6 serialNumber:v7 journalCookie:v8 client:v9 completionHandler:v11];
}

void __88__CSScheduledReceiverUpdater_handleDeletion_turboEnabled_completionHandler_cancelBlock___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

@end