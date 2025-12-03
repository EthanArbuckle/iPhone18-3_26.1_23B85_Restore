@interface CSEmbeddingsUpdater
- (BOOL)handleDonation:(id)donation turboEnabled:(BOOL)enabled completionHandler:(id)handler cancelBlock:(id)block;
- (BOOL)isAcceptingJournals;
- (BOOL)journalItemHasItemEmbeddingsSN:(id)n;
- (BOOL)journalItemHasNeedsEmbedding:(id)embedding;
- (BOOL)shouldHandleJournalItem:(id)item bundleID:(id)d;
- (CSEmbeddingsUpdater)init;
- (id)allowedBundlesFromUserDefaults;
- (id)description;
- (id)excludeBundleIDs;
- (id)getEmbeddingWithCache2:(id)cache2 key:(id)key bundleId:(id)id;
- (id)getEmbeddingWithCache:(id)cache key:(id)key bundleId:(id)id;
- (uint64_t)activityJournal;
- (uint64_t)asyncIndexProcessors;
- (uint64_t)defaults;
- (uint64_t)skgProcessor;
- (uint64_t)skgProcessorContext;
- (void)setActivityJournal:(uint64_t)journal;
- (void)setAsyncIndexProcessors:(uint64_t)processors;
- (void)setDefaults:(uint64_t)defaults;
- (void)setSkgProcessor:(uint64_t)processor;
- (void)setSkgProcessorContext:(uint64_t)context;
- (void)storeEmbeddingWithCache2:(id)cache2 key:(id)key attributeSet:(id)set bundle:(id)bundle;
- (void)storeEmbeddingWithCache:(id)cache key:(id)key attributeSet:(id)set;
@end

@implementation CSEmbeddingsUpdater

- (CSEmbeddingsUpdater)init
{
  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v3 = SKGLogEmbedInit();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_231B25000, v3, OS_LOG_TYPE_INFO, "Initializing CSSearchableIndexAsyncProcessors for CSEmbeddingsUpdater", buf, 2u);
    }
  }

  v4 = objc_opt_new();
  v5 = 0;
  do
  {
    v6 = [CSSearchableIndexAsyncProcessor alloc];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s_%u", "CSEmbeddingsUpdater", v5];
    v8 = [(CSSearchableIndexAsyncProcessor *)v6 initWithName:v7];
    [v4 addObject:v8];

    v5 = (v5 + 1);
  }

  while (v5 != 8);
  v9 = [v4 copy];
  asyncIndexProcessors = self->_asyncIndexProcessors;
  self->_asyncIndexProcessors = v9;

  mEMORY[0x277D65798] = [MEMORY[0x277D65798] sharedProcessor];
  skgProcessor = self->_skgProcessor;
  self->_skgProcessor = mEMORY[0x277D65798];

  mEMORY[0x277D657A0] = [MEMORY[0x277D657A0] sharedContext];
  skgProcessorContext = self->_skgProcessorContext;
  self->_skgProcessorContext = mEMORY[0x277D657A0];

  v15 = +[SKGActivityJournal sharedJournal];
  activityJournal = self->_activityJournal;
  self->_activityJournal = v15;

  v17 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"SKGUpdaters"];
  defaults = self->_defaults;
  self->_defaults = v17;

  return self;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = objc_opt_class();
  taskName = [(CSEmbeddingsUpdater *)self taskName];
  v6 = [v3 initWithFormat:@"<%@:%p; %@>", v4, self, taskName];

  return v6;
}

- (BOOL)isAcceptingJournals
{
  mEMORY[0x277D657A0] = [MEMORY[0x277D657A0] sharedContext];
  enableEmbeddings = [mEMORY[0x277D657A0] enableEmbeddings];

  return enableEmbeddings;
}

- (id)excludeBundleIDs
{
  mEMORY[0x277D657A0] = [MEMORY[0x277D657A0] sharedContext];
  embeddingExcludeBundles = [mEMORY[0x277D657A0] embeddingExcludeBundles];

  return embeddingExcludeBundles;
}

- (BOOL)journalItemHasNeedsEmbedding:(id)embedding
{
  v8 = 0uLL;
  v9 = 0;
  [(CSEventDonationJournalItem *)embedding attrDictObj];
  PlistObjectForKey = _MDPlistDictionaryGetPlistObjectForKey();
  if (PlistObjectForKey)
  {
    v6 = v8;
    v7 = v9;
    PlistObjectType = _MDPlistGetPlistObjectType();
    if ((PlistObjectType - 226) < 2 || PlistObjectType == 51 || PlistObjectType == 35)
    {
      v6 = v8;
      v7 = v9;
      LOBYTE(PlistObjectForKey) = _MDPlistNumberGetIntValue() != 0;
    }

    else
    {
      LOBYTE(PlistObjectForKey) = 0;
    }
  }

  return PlistObjectForKey;
}

- (BOOL)journalItemHasItemEmbeddingsSN:(id)n
{
  v8 = 0uLL;
  v9 = 0;
  [(CSEventDonationJournalItem *)n attrDictObj];
  PlistObjectForKey = _MDPlistDictionaryGetPlistObjectForKey();
  if (PlistObjectForKey)
  {
    v6 = v8;
    v7 = v9;
    PlistObjectType = _MDPlistGetPlistObjectType();
    if ((PlistObjectType - 226) < 2 || PlistObjectType == 51 || PlistObjectType == 35)
    {
      v6 = v8;
      v7 = v9;
      LOBYTE(PlistObjectForKey) = _MDPlistNumberGetIntValue() != 0;
    }

    else
    {
      LOBYTE(PlistObjectForKey) = 0;
    }
  }

  return PlistObjectForKey;
}

- (BOOL)shouldHandleJournalItem:(id)item bundleID:(id)d
{
  itemCopy = item;
  if ([(CSEmbeddingsUpdater *)self isAcceptingJournals]&& [(CSEmbeddingsUpdater *)self journalItemHasNeedsEmbedding:itemCopy])
  {
    v6 = ![(CSEmbeddingsUpdater *)self journalItemHasItemEmbeddingsSN:itemCopy];
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)storeEmbeddingWithCache:(id)cache key:(id)key attributeSet:(id)set
{
  if (cache)
  {
    keyCopy = key;
    cacheCopy = cache;
    v10 = [EmbeddingCacheUtil serialize:set];
    uTF8String = [keyCopy UTF8String];

    [cacheCopy put:uTF8String value:v10];
  }
}

- (void)storeEmbeddingWithCache2:(id)cache2 key:(id)key attributeSet:(id)set bundle:(id)bundle
{
  if (cache2)
  {
    bundleCopy = bundle;
    keyCopy = key;
    cache2Copy = cache2;
    v14 = [EmbeddingCacheUtil serialize:set];
    uTF8String = [keyCopy UTF8String];

    uTF8String2 = [bundleCopy UTF8String];
    [cache2Copy put:uTF8String value:v14 bundle:uTF8String2];
  }
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

- (id)getEmbeddingWithCache:(id)cache key:(id)key bundleId:(id)id
{
  v5 = 0;
  if (cache && key && id)
  {
    keyCopy = key;
    cacheCopy = cache;
    v10 = [cacheCopy get:{objc_msgSend(key, "UTF8String")}];

    v5 = [EmbeddingCacheUtil deserialize:v10];
  }

  return v5;
}

- (id)getEmbeddingWithCache2:(id)cache2 key:(id)key bundleId:(id)id
{
  v5 = 0;
  if (cache2 && key && id)
  {
    keyCopy = key;
    idCopy = id;
    cache2Copy = cache2;
    uTF8String = [key UTF8String];
    uTF8String2 = [idCopy UTF8String];

    v14 = [cache2Copy get:uTF8String bundle:uTF8String2];

    v5 = [EmbeddingCacheUtil deserialize:v14];
  }

  return v5;
}

- (BOOL)handleDonation:(id)donation turboEnabled:(BOOL)enabled completionHandler:(id)handler cancelBlock:(id)block
{
  v154[2] = *MEMORY[0x277D85DE8];
  donationCopy = donation;
  handlerCopy = handler;
  blockCopy = block;
  v142 = 0;
  v143 = &v142;
  v144 = 0x2020000000;
  v145 = 0;
  [CSEventFeedback elapsedTimeSinceFlushForEvent:14];
  if (v9 > 60.0)
  {
    [(SKGProcessor *)self->_skgProcessor loadEmbedder];
    +[CSEventFeedback logEmbeddingPrewarmRequestTime];
  }

  context = objc_autoreleasePoolPush();
  v10 = SKGLogEmbedInit();
  v11 = os_signpost_id_generate(v10);

  v12 = SKGLogEmbedInit();
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_231B25000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "HandleDonation", "", buf, 2u);
  }

  v14 = objc_alloc_init(CSEventFeedback);
  [(CSEventFeedback *)v14 setIndexType:[(CSEventListenerManager *)donationCopy folderFd]];
  [(CSEventFeedback *)v14 start];
  embeddingFetchAttributes = [(SKGProcessorContext *)self->_skgProcessorContext embeddingFetchAttributes];
  v15 = objc_alloc(MEMORY[0x277CCACA8]);
  v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:-[CSEventListenerManager journalMap](donationCopy)];
  v81 = [v15 initWithString:v16];
  v80 = v14;

  if (v81)
  {
    v17 = v81;
  }

  else
  {
    v17 = @"unknown";
  }

  [(CSEventFeedback *)v14 setBundleID:v17];
  allowedBundlesFromUserDefaults = [(CSEmbeddingsUpdater *)self allowedBundlesFromUserDefaults];
  if (allowedBundlesFromUserDefaults && ([allowedBundlesFromUserDefaults containsObject:v81] & 1) == 0)
  {
    if (SKGLogGetCurrentLoggingLevel() >= 7)
    {
      v54 = SKGLogEmbedInit();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
      {
        [CSEmbeddingsUpdater handleDonation:v81 turboEnabled:allowedBundlesFromUserDefaults completionHandler:v54 cancelBlock:?];
      }
    }

    v55 = 0;
    v56 = *(v143 + 24);
  }

  else
  {
    v18 = objc_alloc(MEMORY[0x277CCACA8]);
    protectionClass = [(CSEventListenerDonation *)donationCopy protectionClass];
    v20 = [v18 initWithString:protectionClass];

    v21 = [EmbeddingCache sharedInstanceWithType:[(CSEventListenerManager *)donationCopy folderFd]];
    v140[0] = 0;
    v140[1] = v140;
    v140[2] = 0x2020000000;
    v141 = 0;
    *buf = 0;
    v135 = buf;
    v136 = 0x3032000000;
    v137 = __Block_byref_object_copy__1;
    v138 = __Block_byref_object_dispose__1;
    v139 = 0;
    v132[0] = 0;
    v132[1] = v132;
    v132[2] = 0x3032000000;
    v132[3] = __Block_byref_object_copy__1;
    v132[4] = __Block_byref_object_dispose__1;
    v133 = 0;
    v131[0] = 0;
    v131[1] = v131;
    v131[2] = 0x2020000000;
    v131[3] = 0;
    v127 = 0;
    v128 = &v127;
    v129 = 0x2020000000;
    v130 = 0;
    v126[0] = 0;
    v126[1] = v126;
    v126[2] = 0x2020000000;
    v126[3] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __81__CSEmbeddingsUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke;
    aBlock[3] = &unk_27893CB88;
    v124 = blockCopy;
    v125 = v140;
    v22 = _Block_copy(aBlock);
    v113[0] = MEMORY[0x277D85DD0];
    v113[1] = 3221225472;
    v113[2] = __81__CSEmbeddingsUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_2;
    v113[3] = &unk_27893CBB0;
    v23 = v14;
    v122 = v11;
    v114 = v23;
    v118 = v140;
    v24 = v81;
    v115 = v24;
    v25 = donationCopy;
    v116 = v25;
    v119 = &v127;
    v120 = buf;
    v121 = v126;
    v26 = v21;
    v117 = v26;
    v75 = _Block_copy(v113);
    v112 = 0;
    if (SKGLogGetCurrentLoggingLevel() >= 5)
    {
      v27 = SKGLogEmbedInit();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        indexTypeName = [(CSEventListenerDonation *)v25 indexTypeName];
        totalJournalSize = [(CSEventListenerManager *)v25 totalJournalSize];
        getItemCount = [v25 getItemCount];
        *v146 = 138413058;
        *v147 = self;
        *&v147[8] = 2080;
        *&v147[10] = indexTypeName;
        *&v147[18] = 2048;
        v148 = totalJournalSize;
        v149 = 1024;
        LODWORD(v150) = getItemCount;
        _os_log_impl(&dword_231B25000, v27, OS_LOG_TYPE_INFO, "### donation %@ %s sn:%llu total incoming %u items", v146, 0x26u);
      }
    }

    v96[0] = MEMORY[0x277D85DD0];
    v96[1] = 3221225472;
    v96[2] = __81__CSEmbeddingsUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_34;
    v96[3] = &unk_27893CCA0;
    v31 = v25;
    v97 = v31;
    selfCopy = self;
    v70 = v24;
    v99 = v70;
    v105 = &v127;
    v32 = v22;
    v104 = v32;
    v106 = v131;
    v69 = v23;
    v100 = v69;
    v107 = v132;
    enabledCopy = enabled;
    v101 = embeddingFetchAttributes;
    v108 = buf;
    v33 = v26;
    v102 = v33;
    v110 = &v112;
    v71 = v20;
    v103 = v71;
    v109 = v126;
    [v31 iterateItems:v96];
    v34 = objc_opt_new();
    v35 = v128[3];
    v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:-[CSEventListenerManager journalMap](v31)];
    [v34 logEmbeddingDonationItemCounts:v35 bundleId:v36];

    if (v33)
    {
      [v33 flush];
      if (SKGLogGetCurrentLoggingLevel() >= 7)
      {
        v37 = SKGLogEmbedInit();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          hitRate = [v33 hitRate];
          indexTypeName2 = [(CSEventListenerDonation *)v31 indexTypeName];
          itemCount = [v33 itemCount];
          *v146 = 67109634;
          *v147 = hitRate;
          *&v147[4] = 2080;
          *&v147[6] = indexTypeName2;
          *&v147[14] = 1024;
          *&v147[16] = itemCount;
          _os_log_debug_impl(&dword_231B25000, v37, OS_LOG_TYPE_DEBUG, "### EmbeddingCache HitRate = %u%%, (%s) Total Items = %u", v146, 0x18u);
        }
      }

      activityJournal = self->_activityJournal;
      v153[0] = &unk_2846E7638;
      v39 = MEMORY[0x277CCACA8];
      folderFd = [(CSEventListenerManager *)v31 folderFd];
      v41 = [v39 stringWithUTF8String:getCSIndexTypeShortNameCString(folderFd)];
      v153[1] = &unk_2846E7650;
      v154[0] = v41;
      v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v33, "hitRate")}];
      v154[1] = v42;
      v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v154 forKeys:v153 count:2];
      [(SKGActivityJournal *)activityJournal addEventWithType:53 params:v43];
    }

    v74 = v32[2](v32);
    if (v74)
    {
      v44 = self->_activityJournal;
      v151 = &unk_2846E75C0;
      v152 = v70;
      v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v152 forKeys:&v151 count:1];
      [(SKGActivityJournal *)v44 addEventWithType:32 params:v45];

      if (SKGLogGetCurrentLoggingLevel() >= 5)
      {
        v46 = SKGLogEmbedInit();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
        {
          taskName = [(CSEmbeddingsUpdater *)self taskName];
          v48 = taskName;
          uTF8String = [taskName UTF8String];
          indexTypeName3 = [(CSEventListenerDonation *)v31 indexTypeName];
          totalJournalSize2 = [(CSEventListenerManager *)v31 totalJournalSize];
          *v146 = 136315650;
          *v147 = uTF8String;
          *&v147[8] = 2080;
          *&v147[10] = indexTypeName3;
          *&v147[18] = 2048;
          v148 = totalJournalSize2;
          _os_log_impl(&dword_231B25000, v46, OS_LOG_TYPE_INFO, "### cancelling %s due to expiration request while processing type='%s' sn:'%llu'", v146, 0x20u);
        }
      }

      v75[2]();
      (*(handlerCopy + 2))(handlerCopy, 0, 0, 0);
    }

    else
    {
      v52 = *(v135 + 5);
      if (v52)
      {
        v53 = [v52 count];
      }

      else
      {
        v53 = 0;
      }

      if (SKGLogGetCurrentLoggingLevel() >= 5)
      {
        v57 = SKGLogEmbedInit();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
        {
          indexTypeName4 = [(CSEventListenerDonation *)v31 indexTypeName];
          totalJournalSize3 = [(CSEventListenerManager *)v31 totalJournalSize];
          *v146 = 138413058;
          *v147 = self;
          *&v147[8] = 2080;
          *&v147[10] = indexTypeName4;
          *&v147[18] = 2048;
          v148 = totalJournalSize3;
          v149 = 2048;
          v150 = v53;
          _os_log_impl(&dword_231B25000, v57, OS_LOG_TYPE_INFO, "### donation %@ %s sn:%llu found %lu items", v146, 0x2Au);
        }
      }

      if (v53 && ([(CSEmbeddingsUpdater *)self getProcessorForIndexType:[(CSEventListenerManager *)v31 folderFd]], (v60 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v61 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"CSEmbeddingsUpdater-Indexing-%d", -[CSEventListenerManager folderFd](v31)];
        v62 = +[SKGEventsProfiler sharedInstance];
        v83[0] = MEMORY[0x277D85DD0];
        v83[1] = 3221225472;
        v83[2] = __81__CSEmbeddingsUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_101;
        v83[3] = &unk_27893CCF0;
        v83[4] = self;
        v84 = v31;
        v91 = &v142;
        v92 = buf;
        v93 = v53;
        v63 = v60;
        v85 = v63;
        v86 = v71;
        v87 = v70;
        v94 = 32;
        v88 = v69;
        v89 = v75;
        v90 = handlerCopy;
        v95 = v112;
        [v62 profileCodeWithType:v61 kind:1 block:v83];
      }

      else
      {
        v75[2]();
      }
    }

    _Block_object_dispose(v126, 8);
    _Block_object_dispose(&v127, 8);
    _Block_object_dispose(v131, 8);
    _Block_object_dispose(v132, 8);

    _Block_object_dispose(buf, 8);
    _Block_object_dispose(v140, 8);

    v55 = v74 ^ 1;
    v56 = 1;
  }

  objc_autoreleasePoolPop(context);
  if (v55)
  {
    v56 = *(v143 + 24);
  }

  _Block_object_dispose(&v142, 8);

  v64 = *MEMORY[0x277D85DE8];
  return v56 & 1;
}

uint64_t __81__CSEmbeddingsUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

void __81__CSEmbeddingsUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_2(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) end];
  v2 = SKGLogEmbedInit();
  v3 = v2;
  v4 = *(a1 + 96);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    v5 = *(*(*(a1 + 64) + 8) + 24);
    v14 = *(a1 + 40);
    v6 = [(CSEventListenerManager *)*(a1 + 48) folderFd];
    v7 = [*(a1 + 48) getItemCount];
    v8 = *(*(*(a1 + 72) + 8) + 24);
    v9 = [*(*(*(a1 + 80) + 8) + 40) count];
    v10 = *(*(*(a1 + 88) + 8) + 24);
    v11 = [*(a1 + 56) hitRate];
    v12 = [*(a1 + 56) itemCount];
    *buf = 67111170;
    v16 = v5;
    v17 = 2112;
    v18 = v14;
    v19 = 1024;
    v20 = v6;
    v21 = 1024;
    v22 = v7;
    v23 = 2048;
    v24 = v8;
    v25 = 2048;
    v26 = v9;
    v27 = 2048;
    v28 = v10;
    v29 = 1024;
    v30 = v11;
    v31 = 1024;
    v32 = v12;
    _os_signpost_emit_with_name_impl(&dword_231B25000, v3, OS_SIGNPOST_INTERVAL_END, v4, "HandleDonation", "didCancel=%{BOOL}d bundle=%@ indexType=%d totalItemsCount=%u donationsWithNeedsEmbedding=%lu processedItemsCount=%lu embeddingsCount=%lu cacheHitRate=%u cacheItemCount=%u", buf, 0x48u);
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __81__CSEmbeddingsUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_34(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"CSEmbeddingsUpdater-%d", -[CSEventListenerManager folderFd](*(a1 + 32))];
  v6 = +[SKGEventsProfiler sharedInstance];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __81__CSEmbeddingsUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_2_39;
  v20[3] = &unk_27893CC78;
  v7 = v3;
  v21 = v7;
  v19 = *(a1 + 40);
  v8 = *(a1 + 48);
  v18 = *(a1 + 88);
  v9 = v18;
  v27 = v18;
  v10 = *(a1 + 32);
  v28 = *(a1 + 104);
  v11 = *(a1 + 56);
  *&v12 = v10;
  *(&v12 + 1) = v11;
  *&v13 = v19;
  *(&v13 + 1) = v8;
  v22 = v13;
  v23 = v12;
  v29 = *(a1 + 112);
  v32 = *(a1 + 144);
  v14 = *(a1 + 64);
  v15 = *(a1 + 120);
  v24 = v14;
  v30 = v15;
  v25 = *(a1 + 72);
  v26 = *(a1 + 80);
  v31 = *(a1 + 128);
  v16 = [v6 profileCodeWithType:v5 kind:1 block:v20];

  objc_autoreleasePoolPop(v4);
  return v16;
}

uint64_t __81__CSEmbeddingsUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_2_39(uint64_t a1, void *a2)
{
  v151 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CBECE8];
  [(CSEventDonationJournalItem *)*(a1 + 32) identifier];
  v5 = MDJournalReaderMDPlistObjectCopy();
  v6 = [v5 mutableCopy];

  v7 = (a1 + 48);
  [*(*(a1 + 40) + 32) addEventForItem:15 bundleID:*(a1 + 48) identifier:v6];
  if ([*(a1 + 40) journalItemHasNeedsEmbedding:*(a1 + 32)])
  {
    ++*(*(*(a1 + 104) + 8) + 24);
  }

  if ([*(a1 + 40) shouldHandleJournalItem:*(a1 + 32) bundleID:*(a1 + 48)])
  {
    if (SKGLogGetCurrentLoggingLevel() >= 7)
    {
      v8 = SKGLogEmbedInit();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        __81__CSEmbeddingsUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_2_39_cold_1((a1 + 32));
      }
    }

    v9 = [SKGUpdaterStore instanceForIndexType:[(CSEventListenerManager *)*(a1 + 56) folderFd]];
    if (v9)
    {
      v10 = [(CSEventListenerManager *)*(a1 + 56) journalMap];
      *(*(*(a1 + 112) + 8) + 24) = [v9 readSerialNumberFromBundleID:v10 identifier:objc_msgSend(v6 UUID:"UTF8String") listenerType:{-[CSEventListenerManager journalQueue](*(a1 + 56)), objc_msgSend(*(a1 + 40), "eventType")}];
      if ([(CSEventListenerManager *)*(a1 + 56) totalJournalSize]< *(*(*(a1 + 112) + 8) + 24))
      {
        if (SKGLogGetCurrentLoggingLevel() >= 7)
        {
          v11 = SKGLogEmbedInit();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            v95 = *(a1 + 40);
            v96 = [(CSEventListenerManager *)*(a1 + 56) totalJournalSize];
            v97 = *(*(*(a1 + 112) + 8) + 24);
            v98 = [(CSEventListenerManager *)*(a1 + 56) journalMap];
            *buf = 138413314;
            *&buf[4] = v95;
            v143 = 2048;
            v144 = v96;
            v145 = 2048;
            v146 = v97;
            v147 = 2080;
            v148 = v98;
            v149 = 2112;
            v150 = v6;
            _os_log_debug_impl(&dword_231B25000, v11, OS_LOG_TYPE_DEBUG, "%@ SKIPPING item serialNumber:%llu < latestSerialNumber:%llu | bundle:%s identifier:%@", buf, 0x34u);
          }
        }

        [*(*(a1 + 40) + 32) addEventForItem:30 bundleID:*(a1 + 48) identifier:v6];
        v3[2](v3, @"skipped");
        v12 = (*(*(a1 + 96) + 16))();
        goto LABEL_75;
      }
    }

    [*(a1 + 64) setNumItemsInBatch:{objc_msgSend(*(a1 + 64), "numItemsInBatch") + 1}];
    v13 = *(*(a1 + 120) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = 0;

    v109 = v9;
    if ((*(a1 + 152) & 1) != 0 || [*(*(a1 + 40) + 16) canProcessEvent] && objc_msgSend(*(a1 + 64), "canProcessEvent:", &unk_2846E75A8))
    {
      v15 = [*(a1 + 32) attributesForKeys:*(a1 + 72) bundleID:*(a1 + 48)];
      if (v15)
      {
        v16 = v15;
        v17 = [MEMORY[0x277D65798] sharedProcessor];
        v18 = [v17 canProcessEventForRecord:v16 bundleIdentifier:*v7];

        v108 = v16;
        v19 = v3;
        if (!v18)
        {
          v22 = 0;
          v21 = 1;
          v107 = 1;
          goto LABEL_26;
        }

        v20 = [MEMORY[0x277D65798] sharedProcessor];
        v107 = [v20 shouldGenerateEmbeddingsForRecord:v16 bundleID:*v7];

        v21 = 1;
LABEL_25:
        v22 = 1;
LABEL_26:
        v23 = [*(a1 + 48) UTF8String];
        v24 = [v6 UTF8String];
        v25 = [(CSEventListenerManager *)*(a1 + 56) journalQueue];
        v26 = [v109 checkPriorityForBundleID:v23 identifier:v24 UUID:v25 serialNumber:-[CSEventListenerManager totalJournalSize](*(a1 + 56)) defaultIfNotExists:1];
        v27 = v26;
        if (v109 && (v26 & 1) == 0)
        {
          v28 = [*(a1 + 48) UTF8String];
          v29 = [v6 UTF8String];
          v30 = [(CSEventListenerManager *)*(a1 + 56) journalQueue];
          [v109 removePriorityForBundleID:v28 identifier:v29 UUID:v30 serialNumber:-[CSEventListenerManager totalJournalSize](*(a1 + 56))];
          v21 = 0;
        }

        v3 = v19;
        if (!v22)
        {
          goto LABEL_74;
        }

        v31 = objc_alloc_init(MEMORY[0x277CC34B8]);
        v32 = *(*(a1 + 120) + 8);
        v33 = *(v32 + 40);
        *(v32 + 40) = v31;

        v34 = *MEMORY[0x277CBEEE8];
        [*(*(*(a1 + 120) + 8) + 40) setAttribute:*MEMORY[0x277CBEEE8] forKey:@"_kMDItemNeedsEmbeddings"];
        v35 = 0x277CC3000;
        if ((v21 & v107 & 1) == 0)
        {
          v49 = objc_alloc_init(MEMORY[0x277CC34B8]);
          v50 = *(*(a1 + 120) + 8);
          v51 = *(v50 + 40);
          *(v50 + 40) = v49;

          [*(*(*(a1 + 120) + 8) + 40) setAttribute:v34 forKey:@"_kMDItemNeedsEmbeddings"];
          if (v107)
          {
            v52 = @"cannot-process-emb";
          }

          else
          {
            v58 = *(*(*(a1 + 120) + 8) + 40);
            v59 = MEMORY[0x277CCABB0];
            v60 = [MEMORY[0x277D657A0] sharedContext];
            v61 = [v59 numberWithInteger:{objc_msgSend(v60, "embeddingVersion")}];
            [v58 setAttribute:v61 forKey:@"kMDItemEmbeddingVersion"];

            v62 = *(*(*(a1 + 120) + 8) + 40);
            v63 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:-[CSEventListenerManager totalJournalSize](*(a1 + 56))];
            updateAttributeSetForEvents(v62, @"_kMDItemEmbeddingsSN", v63);

            v52 = @"marked-emb-complete";
          }

          v43 = [objc_alloc(MEMORY[0x277CC34B0]) initWithUniqueIdentifier:v6 domainIdentifier:0 attributeSet:*(*(*(a1 + 120) + 8) + 40)];
          [v43 setBundleID:*(a1 + 48)];
          [v43 setIsUpdate:1];
          v64 = *(*(*(a1 + 128) + 8) + 40);
          if (!v64)
          {
            v65 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v66 = *(*(a1 + 128) + 8);
            v67 = *(v66 + 40);
            *(v66 + 40) = v65;

            v64 = *(*(*(a1 + 128) + 8) + 40);
          }

          [v64 addObject:v43];
          [*(a1 + 64) logFlag:10 message:@"ignored"];
          [*(*(a1 + 40) + 32) addEventForItem:31 bundleID:*(a1 + 48) identifier:v6];
          v3[2](v3, v52);
          goto LABEL_70;
        }

        v36 = SKGLogEventInit();
        v37 = os_signpost_id_generate(v36);

        v38 = SKGLogEventInit();
        v39 = v38;
        v106 = v37 - 1;
        if (v37 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_231B25000, v39, OS_SIGNPOST_INTERVAL_BEGIN, v37, "CSEmbeddingsUpdaterProcessSingleItem", "", buf, 2u);
        }

        spid = v37;

        *buf = 2;
        v40 = *(a1 + 48);
        v41 = *(*(a1 + 40) + 16);
        v137 = 0;
        v42 = [v41 extractContentFromRecord:v108 bundleID:v40 content:&v137 maxChunkCountPtr:buf textLength:0];
        v43 = v137;
        if (v42)
        {
          v44 = [MEMORY[0x277D65798] normalizeForEmbeddingGeneration:v43 bundleID:*v7];

          v43 = v44;
        }

        v45 = _os_feature_enabled_impl();
        v46 = *(a1 + 80);
        v47 = *(a1 + 40);
        v48 = *(a1 + 48);
        if (v45)
        {
          [v47 getEmbeddingWithCache2:v46 key:v43 bundleId:v48];
        }

        else
        {
          [v47 getEmbeddingWithCache:v46 key:v43 bundleId:v48];
        }
        v53 = ;
        CurrentLoggingLevel = SKGLogGetCurrentLoggingLevel();
        v105 = v53;
        if (v53)
        {
          if (CurrentLoggingLevel >= 7)
          {
            v35 = SKGLogEmbedInit();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
            {
              __81__CSEmbeddingsUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_2_39_cold_2((a1 + 48), v43);
            }
          }

          [v53 setAttribute:v34 forKey:@"_kMDItemNeedsEmbeddings"];
          v55 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:-[CSEventListenerManager totalJournalSize](*(a1 + 56))];
          updateAttributeSetForEvents(v53, @"_kMDItemEmbeddingsSN", v55);

          objc_storeStrong((*(*(a1 + 120) + 8) + 40), v53);
          v56 = [*(*(*(a1 + 120) + 8) + 40) primaryTextEmbedding];
          if (v56)
          {
            v102 = [*(*(*(a1 + 120) + 8) + 40) primaryTextEmbedding];
            v35 = [v102 vectors];
            v57 = [v35 count];
          }

          else
          {
            v57 = 0;
          }

          v76 = [*(*(*(a1 + 120) + 8) + 40) secondaryTextEmbedding];
          if (v76)
          {
            v77 = [*(*(*(a1 + 120) + 8) + 40) secondaryTextEmbedding];
            v78 = [v77 vectors];
            v57 += [v78 count];
          }

          if (v56)
          {
          }

          v79 = *(a1 + 48);
          v80 = *(*(a1 + 40) + 32);
          v140[0] = &unk_2846E75C0;
          v140[1] = &unk_2846E75D8;
          v141[0] = v79;
          v141[1] = v6;
          v140[2] = &unk_2846E75F0;
          v81 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v57];
          v141[2] = v81;
          v82 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v141 forKeys:v140 count:3];
          [v80 addEventWithType:28 params:v82];

          if (!v57)
          {
            goto LABEL_66;
          }

          v83 = *(a1 + 64);
          v75 = [*(*(*(a1 + 120) + 8) + 40) bundleIdentifier];
          v138 = &unk_2846E75A8;
          v84 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v57];
          v139 = v84;
          v85 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v139 forKeys:&v138 count:1];
          [v83 logCachedItemForBundleID:v75 counts:v85];
        }

        else
        {
          if (CurrentLoggingLevel >= 7)
          {
            v68 = SKGLogEmbedInit();
            if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
            {
              __81__CSEmbeddingsUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_2_39_cold_3((a1 + 48), v43);
            }
          }

          v99 = *(*(a1 + 40) + 16);
          v100 = *(a1 + 88);
          v101 = *(a1 + 144);
          v103 = *(a1 + 48);
          v131[0] = MEMORY[0x277D85DD0];
          v131[1] = 3221225472;
          v131[2] = __81__CSEmbeddingsUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_76;
          v131[3] = &unk_27893CBD8;
          v135 = *(a1 + 96);
          v132 = v109;
          v133 = *(a1 + 56);
          v69 = v6;
          v70 = *(a1 + 112);
          v134 = v69;
          v136 = v70;
          v126[0] = MEMORY[0x277D85DD0];
          v126[1] = 3221225472;
          v126[2] = __81__CSEmbeddingsUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_2_78;
          v126[3] = &unk_27893CC00;
          v127 = v132;
          v128 = *(a1 + 56);
          v71 = v69;
          v72 = *(a1 + 112);
          v129 = v71;
          v130 = v72;
          v113[0] = MEMORY[0x277D85DD0];
          v113[1] = 3221225472;
          v113[2] = __81__CSEmbeddingsUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_3;
          v113[3] = &unk_27893CC28;
          v123 = *(a1 + 120);
          v114 = v127;
          v125 = v27;
          v115 = *(a1 + 48);
          v116 = v71;
          v117 = *(a1 + 56);
          v118 = *(a1 + 64);
          v119 = v43;
          v73 = *(a1 + 80);
          v74 = *(a1 + 40);
          v120 = v73;
          v121 = v74;
          v124 = *(a1 + 136);
          v122 = v3;
          v111[0] = MEMORY[0x277D85DD0];
          v111[1] = 3221225472;
          v111[2] = __81__CSEmbeddingsUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_89;
          v111[3] = &unk_27893CC50;
          v112 = *(a1 + 96);
          [v99 enumerateProcessedItemsFromRecord:v108 referenceIdentifier:v116 bundleIdentifier:v103 protectionClass:v100 processorFlags:2 workCost:v101 fetchCachedLanguageBlock:v131 cacheLanguageBlock:v126 processedItemBlock:v113 cancelBlock:v111];

          v75 = v135;
        }

LABEL_66:
        v86 = SKGLogEventInit();
        v87 = v86;
        if (v106 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v86))
        {
          *v110 = 0;
          _os_signpost_emit_with_name_impl(&dword_231B25000, v87, OS_SIGNPOST_INTERVAL_END, spid, "CSEmbeddingsUpdaterProcessSingleItem", "", v110, 2u);
        }

LABEL_70:
        if (*(*(*(a1 + 120) + 8) + 40))
        {
          v88 = [objc_alloc(MEMORY[0x277CC34B0]) initWithUniqueIdentifier:v6 domainIdentifier:0 attributeSet:*(*(*(a1 + 120) + 8) + 40)];
          [v88 setBundleID:*(a1 + 48)];
          [v88 setIsUpdate:1];
          v89 = *(*(*(a1 + 128) + 8) + 40);
          if (!v89)
          {
            v90 = objc_opt_new();
            v91 = *(*(a1 + 128) + 8);
            v92 = *(v91 + 40);
            *(v91 + 40) = v90;

            v89 = *(*(*(a1 + 128) + 8) + 40);
          }

          [v89 addObject:v88];
        }

LABEL_74:
        v12 = (*(*(a1 + 96) + 16))();

        v9 = v109;
LABEL_75:

        goto LABEL_76;
      }

      v19 = v3;
      v108 = 0;
      v21 = 1;
    }

    else
    {
      v19 = v3;
      v108 = 0;
      v21 = 0;
    }

    v107 = 1;
    goto LABEL_25;
  }

  [*(*(a1 + 40) + 32) addEventForItem:29 bundleID:*(a1 + 48) identifier:v6];
  v3[2](v3, @"skipped");
  v12 = (*(*(a1 + 96) + 16))();
LABEL_76:

  v93 = *MEMORY[0x277D85DE8];
  return v12;
}

id __81__CSEmbeddingsUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_76(uint64_t a1)
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

uint64_t __81__CSEmbeddingsUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_2_78(uint64_t a1, void *a2)
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

uint64_t __81__CSEmbeddingsUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v55[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = attributeSetForProcessedItem(v3);
  v5 = *(*(a1 + 104) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = 0x277CCA000uLL;
  if (*(*(*(a1 + 104) + 8) + 40))
  {
    v8 = *(a1 + 32);
    if (v8 && *(a1 + 120) == 1)
    {
      v9 = [*(a1 + 40) UTF8String];
      v10 = [*(a1 + 48) UTF8String];
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

    v25 = *(a1 + 64);
    v26 = [v3 bundleIdentifier];
    v27 = [v3 textContentLanguage];
    v28 = [v3 textContentSize];
    v54 = &unk_2846E75A8;
    v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v18];
    v55[0] = v29;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:&v54 count:1];
    [v25 logProcessedItemForBundleID:v26 language:v27 textSize:v28 counts:v30];

    if (*(a1 + 72) && *(a1 + 80) && *(*(*(a1 + 104) + 8) + 40) && v18 && ([v3 errorProcessingEmbeddings] & 1) == 0)
    {
      v31 = _os_feature_enabled_impl();
      v33 = *(a1 + 80);
      v32 = *(a1 + 88);
      v34 = *(a1 + 72);
      v35 = *(*(*(a1 + 104) + 8) + 40);
      if (v31)
      {
        [v32 storeEmbeddingWithCache2:v33 key:v34 attributeSet:v35 bundle:*(a1 + 40)];
      }

      else
      {
        [v32 storeEmbeddingWithCache:v33 key:v34 attributeSet:v35];
      }
    }

    if ([v3 errorProcessingEmbeddings])
    {
      v36 = *(a1 + 64);
      v37 = *(a1 + 40);
      v52 = &unk_2846E7608;
      v53 = &unk_2846E7620;
      v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
      [v36 logErrorItemForBundleID:v37 counts:v38];

      v7 = 0x277CCA000;
    }

    else
    {
      v39 = *(*(*(a1 + 104) + 8) + 40);
      v40 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:-[CSEventListenerManager totalJournalSize](*(a1 + 56))];
      updateAttributeSetForEvents(v39, @"_kMDItemEmbeddingsSN", v40);

      v7 = 0x277CCA000uLL;
    }
  }

  else
  {
    if (SKGLogGetCurrentLoggingLevel() >= 4)
    {
      v19 = SKGLogEmbedInit();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = *(a1 + 40);
        v21 = *(a1 + 48);
        *buf = 138412546;
        v49 = v20;
        v50 = 2112;
        v51 = v21;
        _os_log_impl(&dword_231B25000, v19, OS_LOG_TYPE_DEFAULT, "Nil attribute set (_kMDItemNeedsEmbeddings will be cleared) for %@, %@", buf, 0x16u);
      }
    }

    v22 = objc_alloc_init(MEMORY[0x277CC34B8]);
    v23 = *(*(a1 + 104) + 8);
    v24 = *(v23 + 40);
    *(v23 + 40) = v22;

    [*(a1 + 64) logFlag:10 message:@"ignored"];
    v18 = 0;
  }

  [*(a1 + 88) recordEmbeddingForThroughput:*(a1 + 40) count:v18];
  v41 = *(*(a1 + 88) + 32);
  v42 = [*(v7 + 2992) numberWithUnsignedInteger:{v18, &unk_2846E75C0, &unk_2846E75D8, &unk_2846E75F0, *(a1 + 40), *(a1 + 48)}];
  v47[2] = v42;
  v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:&v46 count:3];
  [v41 addEventWithType:27 params:v43];

  *(*(*(a1 + 112) + 8) + 24) += v18;
  [*(*(*(a1 + 104) + 8) + 40) setAttribute:*MEMORY[0x277CBEEE8] forKey:@"_kMDItemNeedsEmbeddings"];
  (*(*(a1 + 96) + 16))();

  v44 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __81__CSEmbeddingsUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_101(uint64_t a1, void *a2)
{
  v3 = a2;
  if (SKGLogGetCurrentLoggingLevel() >= 7)
  {
    v4 = SKGLogEmbedInit();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __81__CSEmbeddingsUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_101_cold_1(a1);
    }
  }

  v5 = SKGLogEventInit();
  v6 = os_signpost_id_generate(v5);

  v7 = SKGLogEventInit();
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_231B25000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "CSEmbeddingsUpdaterIndexItems", "", buf, 2u);
  }

  *(*(*(a1 + 96) + 8) + 24) = 1;
  [*(*(a1 + 32) + 32) addEventForCSSearchableItems:12 items:*(*(*(a1 + 104) + 8) + 40)];
  v9 = *(*(*(a1 + 104) + 8) + 40);
  v11 = *(a1 + 48);
  v10 = *(a1 + 56);
  v12 = *(a1 + 120);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __81__CSEmbeddingsUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_102;
  v22[3] = &unk_27893CCC8;
  v13 = *(a1 + 64);
  v14 = *(a1 + 72);
  v15 = *(a1 + 32);
  v23 = v14;
  v24 = v15;
  v29 = *(a1 + 104);
  v26 = v3;
  v27 = *(a1 + 80);
  v16 = *(a1 + 40);
  v17 = *(a1 + 112);
  v25 = v16;
  v30 = v17;
  v31 = v6;
  v18 = *(a1 + 88);
  v19 = *(a1 + 128);
  v28 = v18;
  v32 = v19;
  v20 = v3;
  [v11 indexSearchableItemsAsync:v9 protectionClass:v10 bundleIdentifier:v13 indexOptions:v12 completion:v22];

  return 1;
}

void __81__CSEmbeddingsUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_102(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 domain];
    v6 = [v5 isEqual:@"CSEmbeddingsUpdaterTimeout"];

    if (v6)
    {
      v7 = 25;
    }

    else
    {
      v7 = 26;
    }

    [*(*(a1 + 40) + 32) addEventForCSSearchableItems:v7 items:*(*(*(a1 + 80) + 8) + 40)];
  }

  else
  {
    [*(a1 + 32) logFlag:22 message:@"completed"];
    [*(*(a1 + 40) + 32) addEventForCSSearchableItems:13 items:*(*(*(a1 + 80) + 8) + 40)];
  }

  (*(*(a1 + 56) + 16))();
  (*(*(a1 + 64) + 16))();
  if (SKGLogGetCurrentLoggingLevel() >= 7)
  {
    v8 = SKGLogEmbedInit();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __81__CSEmbeddingsUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_102_cold_1(a1);
    }
  }

  v9 = SKGLogEventInit();
  v10 = v9;
  v11 = *(a1 + 96);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *v14 = 0;
    _os_signpost_emit_with_name_impl(&dword_231B25000, v10, OS_SIGNPOST_INTERVAL_END, v11, "CSEmbeddingsUpdaterIndexItems", "", v14, 2u);
  }

  v12 = *(a1 + 88);
  v13 = *(a1 + 104);
  (*(*(a1 + 72) + 16))();
}

- (uint64_t)asyncIndexProcessors
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

- (void)setAsyncIndexProcessors:(uint64_t)processors
{
  if (processors)
  {
    objc_storeStrong((processors + 8), a2);
  }
}

- (uint64_t)skgProcessor
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

- (void)setSkgProcessor:(uint64_t)processor
{
  if (processor)
  {
    objc_storeStrong((processor + 16), a2);
  }
}

- (uint64_t)skgProcessorContext
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

- (void)setSkgProcessorContext:(uint64_t)context
{
  if (context)
  {
    objc_storeStrong((context + 24), a2);
  }
}

- (uint64_t)activityJournal
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

- (void)setActivityJournal:(uint64_t)journal
{
  if (journal)
  {
    objc_storeStrong((journal + 32), a2);
  }
}

- (uint64_t)defaults
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

- (void)setDefaults:(uint64_t)defaults
{
  if (defaults)
  {
    objc_storeStrong((defaults + 40), a2);
  }
}

- (void)handleDonation:(os_log_t)log turboEnabled:completionHandler:cancelBlock:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_231B25000, log, OS_LOG_TYPE_DEBUG, "### skipping item for bundleID %@ as not in allowed set of bundles %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

void __81__CSEmbeddingsUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_2_39_cold_1(uint64_t *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [(CSEventDonationJournalItem *)*a1 flags];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

void __81__CSEmbeddingsUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_2_39_cold_2(uint64_t *a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  [a2 length];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x277D85DE8];
}

void __81__CSEmbeddingsUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_2_39_cold_3(uint64_t *a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  [a2 length];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x277D85DE8];
}

void __81__CSEmbeddingsUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_101_cold_1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v8 = a1[4];
  [(CSEventListenerDonation *)a1[5] indexTypeName];
  [(CSEventListenerManager *)a1[5] totalJournalSize];
  v9 = a1[14];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x2Au);
  v7 = *MEMORY[0x277D85DE8];
}

void __81__CSEmbeddingsUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_102_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  [(CSEventListenerDonation *)*(a1 + 48) indexTypeName];
  [(CSEventListenerManager *)*(a1 + 48) totalJournalSize];
  v8 = *(a1 + 88);
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
  v7 = *MEMORY[0x277D85DE8];
}

@end