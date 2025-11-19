@interface CSPriorityUpdater
+ (id)feedbackLock;
- (BOOL)handleDonation:(id)a3 turboEnabled:(BOOL)a4 completionHandler:(id)a5 cancelBlock:(id)a6;
- (BOOL)isAcceptingJournals;
- (BOOL)shouldHandleJournalItem:(id)a3 bundleID:(id)a4;
- (CSPriorityUpdater)init;
- (id)allowedBundlesFromUserDefaults;
- (id)description;
- (id)excludeBundleIDs;
@end

@implementation CSPriorityUpdater

+ (id)feedbackLock
{
  if (feedbackLock_onceToken != -1)
  {
    +[CSPriorityUpdater feedbackLock];
  }

  v3 = feedbackLock_lock;

  return v3;
}

void __33__CSPriorityUpdater_feedbackLock__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCAAF8]);
  v1 = feedbackLock_lock;
  feedbackLock_lock = v0;
}

- (CSPriorityUpdater)init
{
  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v3 = SKGLogEmbedInit();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_231B25000, v3, OS_LOG_TYPE_INFO, "Initializing CSSearchableIndexAsyncProcessors for CSPriorityUpdater", buf, 2u);
    }
  }

  v4 = objc_opt_new();
  v5 = 0;
  do
  {
    v6 = [CSSearchableIndexAsyncProcessor alloc];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s_%u", "CSPriorityUpdater", v5];
    v8 = [(CSSearchableIndexAsyncProcessor *)v6 initWithName:v7];
    [v4 addObject:v8];

    v5 = (v5 + 1);
  }

  while (v5 != 8);
  v9 = [v4 copy];
  asyncIndexProcessors = self->_asyncIndexProcessors;
  self->_asyncIndexProcessors = v9;

  v11 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"SKGUpdaters"];
  defaults = self->_defaults;
  self->_defaults = v11;

  return self;
}

- (BOOL)isAcceptingJournals
{
  v2 = [MEMORY[0x277D657A0] sharedContext];
  v3 = [v2 enableEmbeddings];

  return v3;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = objc_opt_class();
  v5 = [(CSPriorityUpdater *)self taskName];
  v6 = [v3 initWithFormat:@"<%@:%p; %@>", v4, self, v5];

  return v6;
}

- (id)excludeBundleIDs
{
  v2 = [MEMORY[0x277D657A0] sharedContext];
  v3 = [v2 embeddingExcludeBundles];

  return v3;
}

- (BOOL)shouldHandleJournalItem:(id)a3 bundleID:(id)a4
{
  v5 = a3;
  v14 = 0uLL;
  v15 = 0;
  [(CSEventDonationJournalItem *)v5 attrDictObj];
  if (_MDPlistDictionaryGetPlistObjectForKey() && ((v12 = v14, v13 = v15, PlistObjectType = _MDPlistGetPlistObjectType(), (PlistObjectType - 226) < 2) || PlistObjectType == 51 || PlistObjectType == 35))
  {
    v12 = v14;
    v13 = v15;
    v7 = _MDPlistNumberGetIntValue() != 0;
  }

  else
  {
    v7 = 0;
  }

  [(CSEventDonationJournalItem *)v5 attrDictObj];
  if (_MDPlistDictionaryGetPlistObjectForKey() && ((v12 = v14, v13 = v15, v8 = _MDPlistGetPlistObjectType(), (v8 - 226) < 2) || v8 == 51 || v8 == 35))
  {
    v12 = v14;
    v13 = v15;
    v9 = _MDPlistNumberGetIntValue() == 0;
  }

  else
  {
    v9 = 1;
  }

  if ([(CSPriorityUpdater *)self isAcceptingJournals])
  {
    v10 = v7 && v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)allowedBundlesFromUserDefaults
{
  if (isAppleInternalInstall() && ([(NSUserDefaults *)self->_defaults objectForKey:@"allowedBundles"], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB98]);
    v5 = [(NSUserDefaults *)self->_defaults stringForKey:@"allowedBundles"];
    v6 = objc_alloc(MEMORY[0x277CBEB98]);
    v7 = [v5 componentsSeparatedByString:{@", "}];
    v8 = [v6 initWithArray:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)handleDonation:(id)a3 turboEnabled:(BOOL)a4 completionHandler:(id)a5 cancelBlock:(id)a6
{
  v112 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v59 = a5;
  v61 = a6;
  [MEMORY[0x277CC33D0] sharedListener];

  v10 = objc_alloc_init(CSEventFeedback);
  [(CSEventFeedback *)v10 setIndexType:[(CSEventListenerManager *)v9 folderFd]];
  [(CSEventFeedback *)v10 start];
  v100 = 0;
  v101 = &v100;
  v102 = 0x2020000000;
  v103 = 0;
  [CSEventFeedback elapsedTimeSinceFlushForEvent:14];
  if (v11 > 60.0)
  {
    v12 = [MEMORY[0x277D65798] sharedProcessor];
    [v12 loadEmbedder];

    +[CSEventFeedback logEmbeddingPrewarmRequestTime];
  }

  v13 = SKGLogEventInit();
  spid = os_signpost_id_generate(v13);

  v14 = SKGLogEventInit();
  v15 = v14;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_231B25000, v15, OS_SIGNPOST_INTERVAL_BEGIN, spid, "CSPriorityUpdaterHandleDonation", "", buf, 2u);
  }

  v16 = [MEMORY[0x277D657A0] sharedContext];
  v60 = [v16 embeddingFetchAttributes];

  v17 = objc_alloc(MEMORY[0x277CCACA8]);
  v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:-[CSEventListenerManager journalMap](v9)];
  v19 = [v17 initWithString:v18];

  if (v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = @"unknown";
  }

  [(CSEventFeedback *)v10 setBundleID:v20];
  v62 = [(CSPriorityUpdater *)self allowedBundlesFromUserDefaults];
  if (v62 && ([v62 containsObject:v19] & 1) == 0)
  {
    if (SKGLogGetCurrentLoggingLevel() >= 7)
    {
      v51 = SKGLogEmbedInit();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
      {
        [CSEmbeddingsUpdater handleDonation:v19 turboEnabled:v62 completionHandler:v51 cancelBlock:?];
      }
    }

    v40 = *(v101 + 24);
  }

  else
  {
    v21 = objc_alloc(MEMORY[0x277CCACA8]);
    v22 = [(CSEventListenerDonation *)v9 protectionClass];
    v23 = [v21 initWithString:v22];

    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:-[CSEventListenerManager totalJournalSize](v9)];
    *buf = 0;
    v95 = buf;
    v96 = 0x3032000000;
    v97 = __Block_byref_object_copy__4;
    v98 = __Block_byref_object_dispose__4;
    v99 = 0;
    v92[0] = 0;
    v92[1] = v92;
    v92[2] = 0x3032000000;
    v92[3] = __Block_byref_object_copy__4;
    v92[4] = __Block_byref_object_dispose__4;
    v93 = 0;
    v91[0] = 0;
    v91[1] = v91;
    v91[2] = 0x2020000000;
    v91[3] = 0;
    v90 = 0;
    if (SKGLogGetCurrentLoggingLevel() >= 5)
    {
      v25 = SKGLogEmbedInit();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = [(CSEventListenerDonation *)v9 indexTypeName];
        v27 = [(CSEventListenerManager *)v9 totalJournalSize];
        v28 = [v9 getItemCount];
        *v104 = 138413058;
        v105 = self;
        v106 = 2080;
        v107 = v26;
        v108 = 2048;
        v109 = v27;
        v110 = 1024;
        LODWORD(v111) = v28;
        _os_log_impl(&dword_231B25000, v25, OS_LOG_TYPE_INFO, "### donation %@ %s sn:%llu total incoming %u items", v104, 0x26u);
      }
    }

    v77[0] = MEMORY[0x277D85DD0];
    v77[1] = 3221225472;
    v77[2] = __79__CSPriorityUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke;
    v77[3] = &unk_27893D598;
    v29 = v9;
    v78 = v29;
    v30 = v19;
    v79 = v30;
    v80 = self;
    v31 = v61;
    v85 = v31;
    v86 = v91;
    v32 = v10;
    v81 = v32;
    v87 = v92;
    v82 = v60;
    v56 = v23;
    v83 = v56;
    v89 = &v90;
    v57 = v24;
    v84 = v57;
    v88 = buf;
    [v29 iterateItems:v77];
    if (v31[2](v31))
    {
      v33 = +[SKGActivityJournal sharedJournal];
      [v33 addEventForItem:33 bundleID:v30 identifier:v30];

      if (SKGLogGetCurrentLoggingLevel() >= 5)
      {
        v34 = SKGLogEmbedInit();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          v35 = [(CSPriorityUpdater *)self taskName];
          v36 = v35;
          v37 = [v35 UTF8String];
          v38 = [(CSEventListenerDonation *)v29 indexTypeName];
          v39 = [(CSEventListenerManager *)v29 totalJournalSize];
          *v104 = 136315650;
          v105 = v37;
          v106 = 2080;
          v107 = v38;
          v108 = 2048;
          v109 = v39;
          _os_log_impl(&dword_231B25000, v34, OS_LOG_TYPE_INFO, "### cancelling %s due to expiration request while processing type='%s' sn:'%llu'", v104, 0x20u);
        }
      }

      [(CSEventFeedback *)v32 end];
      (*(v59 + 2))(v59, 0, 0, 0);
      v40 = 1;
    }

    else
    {
      v41 = [*(v95 + 5) count];
      if (SKGLogGetCurrentLoggingLevel() >= 5)
      {
        v42 = SKGLogEmbedInit();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          v43 = [(CSEventListenerDonation *)v29 indexTypeName];
          v44 = [(CSEventListenerManager *)v29 totalJournalSize];
          *v104 = 138413058;
          v105 = self;
          v106 = 2080;
          v107 = v43;
          v108 = 2048;
          v109 = v44;
          v110 = 2048;
          v111 = v41;
          _os_log_impl(&dword_231B25000, v42, OS_LOG_TYPE_INFO, "### donation %@ %s sn:%llu found %lu items", v104, 0x2Au);
        }
      }

      v45 = +[CSEventListenerTasksManager sharedInstance];
      v46 = [v45 turboMode];

      if (v46)
      {
        v47 = 32;
      }

      else
      {
        v47 = 0;
      }

      if (v41 && ([(CSPriorityUpdater *)self getProcessorForIndexType:[(CSEventListenerManager *)v29 folderFd]], (v48 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v54 = v47;
        v55 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"CSPriorityUpdater-Indexing-%d", -[CSEventListenerManager folderFd](v29)];
        v49 = +[SKGEventsProfiler sharedInstance];
        v63[0] = MEMORY[0x277D85DD0];
        v63[1] = 3221225472;
        v63[2] = __79__CSPriorityUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_97;
        v63[3] = &unk_27893D5E8;
        v71 = buf;
        v63[4] = self;
        v64 = v29;
        v65 = v57;
        v72 = &v100;
        v73 = v41;
        v50 = v48;
        v66 = v50;
        v67 = v56;
        v68 = v30;
        v74 = v54;
        v69 = v32;
        v75 = spid;
        v70 = v59;
        v76 = v90;
        [v49 profileCodeWithType:v55 kind:2 block:v63];
      }

      else
      {
        [(CSEventFeedback *)v32 end];
        v50 = 0;
      }

      v40 = *(v101 + 24);
    }

    _Block_object_dispose(v91, 8);
    _Block_object_dispose(v92, 8);

    _Block_object_dispose(buf, 8);
  }

  _Block_object_dispose(&v100, 8);
  v52 = *MEMORY[0x277D85DE8];
  return v40 & 1;
}

uint64_t __79__CSPriorityUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"CSPriorityUpdater-%d", -[CSEventListenerManager folderFd](*(a1 + 32))];
  v6 = +[SKGEventsProfiler sharedInstance];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __79__CSPriorityUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_2;
  v24[3] = &unk_27893D570;
  v7 = v3;
  v25 = v7;
  *&v8 = *(a1 + 40);
  *(&v8 + 1) = *(a1 + 48);
  v21 = v8;
  v9 = *(a1 + 88);
  *&v10 = *(a1 + 32);
  *(&v10 + 1) = *(a1 + 56);
  v20 = v10;
  v22 = *(a1 + 96);
  v11 = *(&v10 + 1);
  v26 = v21;
  v27 = v20;
  *&v12 = v22;
  *(&v12 + 1) = *(a1 + 104);
  v23 = v12;
  v13 = *(a1 + 64);
  v14 = *(a1 + 72);
  v15 = *(a1 + 120);
  *&v16 = *(a1 + 80);
  *(&v16 + 1) = v9;
  *&v17 = v13;
  *(&v17 + 1) = v14;
  v28 = v17;
  v29 = v16;
  *&v16 = *(a1 + 112);
  *(&v16 + 1) = v15;
  v30 = v23;
  v31 = v16;
  v18 = [v6 profileCodeWithType:v5 kind:2 block:v24];

  objc_autoreleasePoolPop(v4);
  return v18;
}

uint64_t __79__CSPriorityUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v109 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CBECE8];
  [(CSEventDonationJournalItem *)*(a1 + 32) identifier];
  v5 = MDJournalReaderMDPlistObjectCopy();
  v6 = [v5 mutableCopy];

  v7 = +[SKGActivityJournal sharedJournal];
  [v7 addEventForItem:16 bundleID:*(a1 + 40) identifier:v6];

  LODWORD(v7) = [*(a1 + 48) shouldHandleJournalItem:*(a1 + 32) bundleID:*(a1 + 40)];
  v8 = [CSEmbeddingsUpdater alloc];
  v9 = [(CSEmbeddingsUpdater *)v8 shouldHandleJournalItem:*(a1 + 32) bundleID:*(a1 + 40)];

  v10 = [MEMORY[0x277CC33D0] sharedListener];
  v11 = [v10 onBattery];

  if (v7 || ((v11 | !v9) & 1) == 0)
  {
    v14 = [SKGUpdaterStore instanceForIndexType:[(CSEventListenerManager *)*(a1 + 56) folderFd]];
    if (v14)
    {
      v15 = [(CSEventListenerManager *)*(a1 + 56) journalMap];
      *(*(*(a1 + 104) + 8) + 24) = [v14 readSerialNumberFromBundleID:v15 identifier:objc_msgSend(v6 UUID:"UTF8String") listenerType:{-[CSEventListenerManager journalQueue](*(a1 + 56)), objc_msgSend(*(a1 + 48), "eventType")}];
      if ([(CSEventListenerManager *)*(a1 + 56) totalJournalSize]< *(*(*(a1 + 104) + 8) + 24))
      {
        v16 = +[SKGActivityJournal sharedJournal];
        [v16 addEventForItem:20 bundleID:*(a1 + 40) identifier:v6];

        if (SKGLogGetCurrentLoggingLevel() >= 7)
        {
          v17 = SKGLogInit();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            v64 = *(a1 + 48);
            v65 = [(CSEventListenerManager *)*(a1 + 56) totalJournalSize];
            v66 = *(*(*(a1 + 104) + 8) + 24);
            v67 = [(CSEventListenerManager *)*(a1 + 56) journalMap];
            *buf = 138413314;
            v100 = v64;
            v101 = 2048;
            v102 = v65;
            v103 = 2048;
            v104 = v66;
            v105 = 2080;
            v106 = v67;
            v107 = 2112;
            v108 = v6;
            _os_log_debug_impl(&dword_231B25000, v17, OS_LOG_TYPE_DEBUG, "%@ SKIPPING item serialNumber:%llu < latestSerialNumber:%llu | bundle:%s identifier:%@", buf, 0x34u);
          }
        }

        v3[2](v3, @"skipped");
        v13 = (*(*(a1 + 96) + 16))();
LABEL_38:

        goto LABEL_39;
      }
    }

    [*(a1 + 64) setNumItemsInBatch:{objc_msgSend(*(a1 + 64), "numItemsInBatch") + 1}];
    v18 = *(*(a1 + 112) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = 0;

    v20 = +[CSPriorityUpdater feedbackLock];
    [v20 lock];

    if (v11)
    {
      v21 = &unk_2846E7860;
    }

    else
    {
      v21 = &unk_2846E7878;
    }

    v22 = [*(a1 + 64) canProcessEvent:v21];
    v23 = [MEMORY[0x277D65798] sharedProcessor];
    LODWORD(v24) = [v23 canProcessEvent] & v22;

    if (v24 == 1 && ([*(a1 + 32) attributesForKeys:*(a1 + 72) bundleID:*(a1 + 40)], (v25 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v26 = v25;
      v27 = [MEMORY[0x277D65798] sharedProcessor];
      v28 = [v27 canProcessEventForRecord:v26 bundleIdentifier:*(a1 + 40)];

      v73 = v26;
      if (v28)
      {
        v29 = [MEMORY[0x277D65798] sharedProcessor];
        v30 = [v29 shouldGenerateEmbeddingsForRecord:v26 bundleID:*(a1 + 40)];

        goto LABEL_20;
      }
    }

    else
    {
      v73 = 0;
    }

    v30 = 0;
LABEL_20:
    v31 = [*(a1 + 40) UTF8String];
    v32 = [v6 UTF8String];
    v33 = [(CSEventListenerManager *)*(a1 + 56) journalQueue];
    v34 = [v14 checkPriorityForBundleID:v31 identifier:v32 UUID:v33 serialNumber:-[CSEventListenerManager totalJournalSize](*(a1 + 56)) defaultIfNotExists:1];
    v35 = v34;
    if (v14 && (v34 & 1) == 0)
    {
      v36 = [*(a1 + 40) UTF8String];
      v37 = [v6 UTF8String];
      v24 = [(CSEventListenerManager *)*(a1 + 56) journalQueue];
      [v14 removePriorityForBundleID:v36 identifier:v37 UUID:v24 serialNumber:-[CSEventListenerManager totalJournalSize](*(a1 + 56))];
      LOBYTE(v24) = 0;
    }

    v38 = v73;
    if (v30)
    {
      v39 = objc_alloc_init(MEMORY[0x277CC34B8]);
      v40 = *(*(a1 + 112) + 8);
      v41 = *(v40 + 40);
      *(v40 + 40) = v39;

      [*(*(*(a1 + 112) + 8) + 40) setAttribute:*MEMORY[0x277CBEEE8] forKey:@"_kMDItemNeedsPriority"];
      if (v24)
      {
        v42 = SKGLogEventInit();
        v43 = os_signpost_id_generate(v42);

        v44 = SKGLogEventInit();
        v45 = v44;
        v72 = v43 - 1;
        if (v43 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v44))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_231B25000, v45, OS_SIGNPOST_INTERVAL_BEGIN, v43, "CSPriorityUpdaterProcessSingleItem", "", buf, 2u);
        }

        spid = v43;

        v46 = [MEMORY[0x277D65798] sharedProcessor];
        v69 = *(a1 + 80);
        v70 = *(a1 + 40);
        v71 = *(a1 + 128);
        v93[0] = MEMORY[0x277D85DD0];
        v93[1] = 3221225472;
        v93[2] = __79__CSPriorityUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_57;
        v93[3] = &unk_27893CBD8;
        v97 = *(a1 + 96);
        v94 = v14;
        v95 = *(a1 + 56);
        v47 = v6;
        v48 = *(a1 + 104);
        v96 = v47;
        v98 = v48;
        v88[0] = MEMORY[0x277D85DD0];
        v88[1] = 3221225472;
        v88[2] = __79__CSPriorityUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_2_59;
        v88[3] = &unk_27893CC00;
        v89 = v94;
        v90 = *(a1 + 56);
        v49 = v47;
        v50 = *(a1 + 104);
        v91 = v49;
        v92 = v50;
        v76[0] = MEMORY[0x277D85DD0];
        v76[1] = 3221225472;
        v76[2] = __79__CSPriorityUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_3;
        v76[3] = &unk_27893D548;
        v85 = *(a1 + 112);
        v77 = *(a1 + 40);
        v78 = v49;
        v79 = v89;
        v86 = v35;
        v51 = *(a1 + 56);
        v52 = *(a1 + 48);
        v80 = v51;
        v81 = v52;
        v82 = *(a1 + 64);
        v87 = v9;
        v83 = *(a1 + 88);
        v84 = v3;
        v74[0] = MEMORY[0x277D85DD0];
        v74[1] = 3221225472;
        v74[2] = __79__CSPriorityUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_88;
        v74[3] = &unk_27893CC50;
        v75 = *(a1 + 96);
        v38 = v73;
        [v46 enumerateProcessedItemsFromRecord:v73 referenceIdentifier:v78 bundleIdentifier:v70 protectionClass:v69 processorFlags:2 workCost:v71 fetchCachedLanguageBlock:v93 cacheLanguageBlock:v88 processedItemBlock:v76 cancelBlock:v74];

        v53 = SKGLogEventInit();
        v54 = v53;
        if (v72 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v53))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_231B25000, v54, OS_SIGNPOST_INTERVAL_END, spid, "CSPriorityUpdaterProcessSingleItem", "", buf, 2u);
        }
      }

      else
      {
        [*(a1 + 64) logFlag:10 message:@"ignored"];
        v55 = +[SKGActivityJournal sharedJournal];
        [v55 addEventForItem:20 bundleID:*(a1 + 40) identifier:v6];

        v3[2](v3, @"cannot-process-emb");
      }

      if (*(*(*(a1 + 112) + 8) + 40))
      {
        v56 = [objc_alloc(MEMORY[0x277CC34B0]) initWithUniqueIdentifier:v6 domainIdentifier:0 attributeSet:*(*(*(a1 + 112) + 8) + 40)];
        [v56 setBundleID:*(a1 + 40)];
        [v56 setIsUpdate:1];
        v57 = *(*(*(a1 + 120) + 8) + 40);
        if (!v57)
        {
          v58 = objc_opt_new();
          v59 = *(*(a1 + 120) + 8);
          v60 = *(v59 + 40);
          *(v59 + 40) = v58;

          v57 = *(*(*(a1 + 120) + 8) + 40);
        }

        [v57 addObject:v56];
      }
    }

    v61 = +[CSPriorityUpdater feedbackLock];
    [v61 unlock];

    v13 = (*(*(a1 + 96) + 16))();
    goto LABEL_38;
  }

  v12 = +[SKGActivityJournal sharedJournal];
  [v12 addEventForItem:20 bundleID:*(a1 + 40) identifier:v6];

  v3[2](v3, @"skipped");
  v13 = (*(*(a1 + 96) + 16))();
LABEL_39:

  v62 = *MEMORY[0x277D85DE8];
  return v13;
}

id __79__CSPriorityUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_57(uint64_t a1)
{
  if ((*(*(a1 + 56) + 16))())
  {
    v2 = 0;
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = [(CSEventListenerManager *)*(a1 + 40) journalMap];
    v2 = [v3 readLanguageFromBundleID:v4 identifier:objc_msgSend(*(a1 + 48) UUID:"UTF8String") serialNumber:{-[CSEventListenerManager journalQueue](*(a1 + 40)), *(*(*(a1 + 64) + 8) + 24)}];
  }

  return v2;
}

uint64_t __79__CSPriorityUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_2_59(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [(CSEventListenerManager *)v4 journalMap];
  v7 = [*(a1 + 48) UTF8String];
  v8 = [(CSEventListenerManager *)*(a1 + 40) journalQueue];
  v9 = *(*(*(a1 + 56) + 8) + 24);
  v10 = [v5 UTF8String];

  return [v3 writeLanguageForBundleID:v6 identifier:v7 UUID:v8 serialNumber:v9 language:v10];
}

uint64_t __79__CSPriorityUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v54[3] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = attributeSetForProcessedItem(v3);
  v5 = *(*(a1 + 96) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = +[SKGActivityJournal sharedJournal];
  [v7 addEventForItem:17 bundleID:*(a1 + 32) identifier:*(a1 + 40)];

  if (*(*(*(a1 + 96) + 8) + 40))
  {
    v8 = *(a1 + 48);
    if (v8 && *(a1 + 104) == 1)
    {
      v9 = [*(a1 + 32) UTF8String];
      v10 = [*(a1 + 40) UTF8String];
      v11 = [(CSEventListenerManager *)*(a1 + 56) journalQueue];
      [v8 markPriorityForBundleID:v9 identifier:v10 UUID:v11 serialNumber:-[CSEventListenerManager totalJournalSize](*(a1 + 56)) flag:0];
    }

    v12 = [v3 embedding];
    if (v12)
    {
      v13 = [v3 embedding];
      v14 = [v13 primaryEmbeddings];
      v15 = [v14 count];
      v16 = [v3 embedding];
      v17 = [v16 secondaryEmbeddings];
      v18 = [v17 count] + v15;
    }

    else
    {
      v18 = 0;
    }

    v23 = [MEMORY[0x277CC33D0] sharedListener];
    if ([v23 onBattery])
    {
      v24 = v18;
    }

    else
    {
      v24 = 0;
    }

    v25 = +[SKGActivityJournal sharedJournal];
    v53[0] = &unk_2846E7890;
    v53[1] = &unk_2846E78A8;
    v26 = *(a1 + 40);
    v54[0] = *(a1 + 32);
    v54[1] = v26;
    v53[2] = &unk_2846E78C0;
    v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v18];
    v54[2] = v27;
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:3];
    [v25 addEventWithType:21 params:v28];

    v29 = +[SKGActivityJournal sharedJournal];
    v51[0] = &unk_2846E7890;
    v51[1] = &unk_2846E78A8;
    v30 = *(a1 + 40);
    v52[0] = *(a1 + 32);
    v52[1] = v30;
    v51[2] = &unk_2846E78C0;
    v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v24];
    v52[2] = v31;
    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:3];
    [v29 addEventWithType:22 params:v32];

    [*(a1 + 64) recordEmbeddingForThroughput:*(a1 + 32) count:v18];
    v46 = *(a1 + 72);
    v33 = [v3 bundleIdentifier];
    v34 = [v3 textContentLanguage];
    v35 = [v3 textContentSize];
    v49[0] = &unk_2846E78D8;
    v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v18];
    v50[0] = v36;
    v49[1] = &unk_2846E7878;
    v37 = *(a1 + 105);
    if (v37 == 1)
    {
      v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v18];
    }

    else
    {
      v38 = &unk_2846E78F0;
    }

    v50[1] = v38;
    v49[2] = &unk_2846E7860;
    v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v24];
    v50[2] = v39;
    v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:3];
    [v46 logProcessedItemForBundleID:v33 language:v34 textSize:v35 counts:v40];

    if (v37)
    {
    }

    if ([v3 errorProcessingEmbeddings])
    {
      v41 = *(a1 + 72);
      v42 = *(a1 + 32);
      v47 = &unk_2846E7908;
      v48 = &unk_2846E7920;
      v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
      [v41 logErrorItemForBundleID:v42 counts:v43];
    }

    else
    {
      updateAttributeSetForEvents(*(*(*(a1 + 96) + 8) + 40), @"_kMDItemPrioritySN", *(a1 + 80));
    }

    v22 = *MEMORY[0x277CBEEE8];
    [*(*(*(a1 + 96) + 8) + 40) setAttribute:*MEMORY[0x277CBEEE8] forKey:@"_kMDItemNeedsEmbeddings"];
  }

  else
  {
    v19 = objc_alloc_init(MEMORY[0x277CC34B8]);
    v20 = *(*(a1 + 96) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;

    [*(a1 + 72) logFlag:10 message:@"ignored"];
    v22 = *MEMORY[0x277CBEEE8];
  }

  [*(*(*(a1 + 96) + 8) + 40) setAttribute:v22 forKey:@"_kMDItemNeedsPriority"];
  (*(*(a1 + 88) + 16))();

  v44 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __79__CSPriorityUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_97(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKGActivityJournal sharedJournal];
  [v4 addEventForCSSearchableItems:18 items:*(*(*(a1 + 96) + 8) + 40)];

  if (SKGLogGetCurrentLoggingLevel() >= 7)
  {
    v5 = SKGLogInit();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __79__CSPriorityUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_97_cold_1(a1, v5);
    }
  }

  v6 = SKGLogEventInit();
  v7 = os_signpost_id_generate(v6);

  v8 = SKGLogEventInit();
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_231B25000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "CSPriorityUpdaterIndexItems", "", buf, 2u);
  }

  *(*(*(a1 + 104) + 8) + 24) = 1;
  v10 = *(*(*(a1 + 96) + 8) + 40);
  v12 = *(a1 + 56);
  v11 = *(a1 + 64);
  v13 = *(a1 + 120);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __79__CSPriorityUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_98;
  v22[3] = &unk_27893D5C0;
  v14 = *(a1 + 72);
  v15 = *(a1 + 80);
  v28 = *(a1 + 96);
  v23 = v15;
  v26 = v3;
  v24 = *(a1 + 40);
  v16 = *(a1 + 48);
  v17 = *(a1 + 112);
  v25 = v16;
  v29 = v17;
  v30 = v7;
  v31 = *(a1 + 128);
  v18 = *(a1 + 88);
  v19 = *(a1 + 136);
  v27 = v18;
  v32 = v19;
  v20 = v3;
  [v12 indexSearchableItemsAsync:v10 protectionClass:v11 bundleIdentifier:v14 indexOptions:v13 completion:v22];

  return 1;
}

void __79__CSPriorityUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_98(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 domain];
    v6 = [v5 isEqual:@"CSEmbeddingsUpdaterTimeout"];

    v7 = +[SKGActivityJournal sharedJournal];
    v8 = v7;
    if (v6)
    {
      v9 = 23;
    }

    else
    {
      v9 = 24;
    }

    [v7 addEventForCSSearchableItems:v9 items:*(*(*(a1 + 72) + 8) + 40)];
  }

  else
  {
    [*(a1 + 32) logFlag:22 message:@"completed"];
    v8 = +[SKGActivityJournal sharedJournal];
    [v8 addEventForCSSearchableItems:19 items:*(*(*(a1 + 72) + 8) + 40)];
  }

  (*(*(a1 + 56) + 16))();
  [*(a1 + 32) end];
  if (SKGLogGetCurrentLoggingLevel() >= 7)
  {
    v10 = SKGLogInit();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __79__CSPriorityUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_98_cold_1(a1, v10);
    }
  }

  v11 = SKGLogEventInit();
  v12 = v11;
  v13 = *(a1 + 88);
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_231B25000, v12, OS_SIGNPOST_INTERVAL_END, v13, "CSPriorityUpdaterIndexItems", "", buf, 2u);
  }

  v14 = SKGLogEventInit();
  v15 = v14;
  v16 = *(a1 + 96);
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *v19 = 0;
    _os_signpost_emit_with_name_impl(&dword_231B25000, v15, OS_SIGNPOST_INTERVAL_END, v16, "CSPriorityUpdaterHandleDonation", "", v19, 2u);
  }

  v17 = *(a1 + 80);
  v18 = *(a1 + 104);
  (*(*(a1 + 64) + 16))();
}

void __79__CSPriorityUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_97_cold_1(void *a1, NSObject *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a1[4];
  v5 = [(CSEventListenerDonation *)a1[5] indexTypeName];
  v6 = a1[6];
  v7 = a1[14];
  v9 = 138413058;
  v10 = v4;
  v11 = 2080;
  v12 = v5;
  v13 = 2112;
  v14 = v6;
  v15 = 2048;
  v16 = v7;
  _os_log_debug_impl(&dword_231B25000, a2, OS_LOG_TYPE_DEBUG, "### %@ %s sn: %@ found %lu items", &v9, 0x2Au);
  v8 = *MEMORY[0x277D85DE8];
}

void __79__CSPriorityUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_98_cold_1(uint64_t *a1, NSObject *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = [(CSEventListenerDonation *)a1[5] indexTypeName];
  v5 = a1[6];
  v6 = a1[10];
  v8 = 136315650;
  v9 = v4;
  v10 = 2112;
  v11 = v5;
  v12 = 2048;
  v13 = v6;
  _os_log_debug_impl(&dword_231B25000, a2, OS_LOG_TYPE_DEBUG, "### %s sn: %@ updated %lu items", &v8, 0x20u);
  v7 = *MEMORY[0x277D85DE8];
}

@end