@interface SKGJob
- (BOOL)_archiveCoreSpotlightItems:(id)items bundleIdentifier:(id)identifier protectionClass:(id)class batchArchivedBlock:(id)block cancelBlock:(id)cancelBlock errorBlock:(id)errorBlock;
- (BOOL)_buildCSCountingReportWithQueryString:(id)string queryContext:(id)context flags:(unsigned int)flags reporter:(id)reporter cancelBlock:(id)block;
- (BOOL)_recordIsOld:(id)old dateKeys:(id)keys;
- (BOOL)_reindexCoreSpotlightIdentifiers:(id)identifiers bundleIdentifier:(id)identifier protectionClass:(id)class batchProcessedBlock:(id)block cancelBlock:(id)cancelBlock;
- (BOOL)_runCSCleanupForQueryString:(id)string trackingAttributes:(id)attributes queryContext:(id)context batchUpdatedBlock:(id)block cancelBlock:(id)cancelBlock;
- (BOOL)_runCSExtractForQueryString:(id)string queryContext:(id)context flags:(unsigned int)flags processedItemBlock:(id)block batchArchivedBlock:(id)archivedBlock batchUpdatedBlock:(id)updatedBlock cancelBlock:(id)cancelBlock errorBlock:(id)self0;
- (BOOL)_runCSPollingQuery:(id)query foundItemBlock:(id)block;
- (BOOL)_runCSPollingQueryString:(id)string queryContext:(id)context foundItemBlock:(id)block;
- (BOOL)_runCSProcessingForTask:(id)task queryString:(id)string queryContext:(id)context batchProcessedBlock:(id)block batchUpdatedBlock:(id)updatedBlock cancelBlock:(id)cancelBlock;
- (BOOL)_runCSReindexForQueryString:(id)string queryContext:(id)context processorFlags:(unint64_t)flags batchProcessedBlock:(id)block batchUpdatedBlock:(id)updatedBlock cancelBlock:(id)cancelBlock;
- (BOOL)_updateCoreSpotlightItems:(id)items bundleID:(id)d protectionClass:(id)class cancelBlock:(id)block;
- (BOOL)_updateCoreSpotlightItems:(id)items bundleIdentifier:(id)identifier protectionClass:(id)class batchUpdatedBlock:(id)block cancelBlock:(id)cancelBlock;
- (BOOL)performCSIndexProcessingJob:(id)job cancelBlock:(id)block;
- (BOOL)requestCSCleanupForUpdater:(id)updater protectionClasses:(id)classes flags:(unsigned int)flags batchUpdatedBlock:(id)block cancelBlock:(id)cancelBlock;
- (BOOL)requestCSCleanupWithProtectionClasses:(id)classes batchUpdatedBlock:(id)block cancelBlock:(id)cancelBlock;
- (BOOL)requestCSDocumentUnderstandingProgressReport:(id)report cancelBlock:(id)block;
- (BOOL)requestCSEmbeddingsProgressReport:(id)report cancelBlock:(id)block;
- (BOOL)requestCSProcessingWithProcessedItemBlock:(id)block batchArchivedBlock:(id)archivedBlock batchUpdatedBlock:(id)updatedBlock cancelBlock:(id)cancelBlock errorBlock:(id)errorBlock;
- (BOOL)requestCSProcessingWithProtectionClasses:(id)classes task:(id)task batchProcessedBlock:(id)block batchUpdatedBlock:(id)updatedBlock cancelBlock:(id)cancelBlock;
- (BOOL)requestCSReindexForClientWithBundleIdentifier:(id)identifier batchProcessedBlock:(id)block batchUpdatedBlock:(id)updatedBlock cancelBlock:(id)cancelBlock;
- (BOOL)requestCSReindexWithProtectionClasses:(id)classes batchProcessedBlock:(id)block batchUpdatedBlock:(id)updatedBlock cancelBlock:(id)cancelBlock;
- (BOOL)requestCSReindexWithProtectionClasses:(id)classes flags:(unsigned int)flags batchProcessedBlock:(id)block batchUpdatedBlock:(id)updatedBlock cancelBlock:(id)cancelBlock;
- (BOOL)requestCSSuggestedEventsProgressReport:(id)report cancelBlock:(id)block;
- (SKGJob)initWithJobContext:(id)context;
- (id)_allFieldsPresentPredicateWithFieldNames:(id)names;
- (id)_anyFieldPresentPredicateWithFieldNames:(id)names;
- (id)_coreSpotlightIndexWithBundleIdentifier:(id)identifier protectionClass:(id)class;
- (id)_fieldPresencePredicateWithFieldName:(id)name;
- (id)_newCounterDictionaryForBundleIdentifier:(id)identifier additionalAttributes:(id)attributes;
- (id)_removingRequiredAttributes:(id)attributes;
- (id)counterQueryWithQueryString:(id)string queryContext:(id)context onlyFiles:(BOOL)files;
- (id)generateCSDocumentUnderstandingReportForProtectionClasses:(id)classes withCancelBlock:(id)block;
- (id)generateCSEmbeddingsReportForProtectionClasses:(id)classes withCancelBlock:(id)block;
- (id)generateCSKeyphraseReportForProtectionClasses:(id)classes withCancelBlock:(id)block;
- (id)generateCSReportForQueryFlags:(unsigned int)flags protectionClasses:(id)classes additionalQueryString:(id)string additionalFetchAttributes:(id)attributes processedPredicate:(id)predicate succesfullyProcessedPredicate:(id)processedPredicate eligiblePredicate:(id)eligiblePredicate additionalPredicates:(id)self0 dayCompletionStr:(id)self1 genStartTime:(id)self2 bundleIDs:(id)self3 daysToCompleteApproach:(int64_t)self4 onlyFiles:(BOOL)self5 mergeBundleStatistics:(id)self6 withCancelBlock:(id)self7;
- (id)generateCSSuggestedEventsReportForProtectionClasses:(id)classes withCancelBlock:(id)block;
- (void)_markReindexRequestsAsSeen:(id)seen bundleID:(id)d count:(unint64_t)count;
@end

@implementation SKGJob

- (SKGJob)initWithJobContext:(id)context
{
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = SKGJob;
  v6 = [(SKGJob *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, context);
    v8 = dispatch_queue_create("com.apple.SpotlightKnowledge.updater", 0);
    queue = v7->_queue;
    v7->_queue = v8;
  }

  return v7;
}

- (BOOL)_archiveCoreSpotlightItems:(id)items bundleIdentifier:(id)identifier protectionClass:(id)class batchArchivedBlock:(id)block cancelBlock:(id)cancelBlock errorBlock:(id)errorBlock
{
  itemsCopy = items;
  identifierCopy = identifier;
  classCopy = class;
  blockCopy = block;
  errorBlockCopy = errorBlock;
  v18 = [itemsCopy count];
  if (v18)
  {
    v19 = v18;
    v20 = MEMORY[0x277CCACA8];
    uUID = [MEMORY[0x277CCAD78] UUID];
    v22 = [uUID description];
    v23 = [v20 stringWithFormat:@"archive-%@", v22];

    if (v23)
    {
      v36 = 0;
      v24 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:itemsCopy requiringSecureCoding:1 error:&v36];
      v25 = v36;
      if (v25)
      {
        v26 = v25;
        v27 = errorBlockCopy[2](errorBlockCopy, 10, @"could not archive");
      }

      else
      {
        context = [(SKGJob *)self context];
        v29 = [context peopleArchivePathWithProtectionClass:classCopy];

        if (v29)
        {
          v34 = v29;
          v35 = 0;
          v33 = [[SKGArchiver alloc] initWithResourceDirectoryPath:v29];
          v30 = [(SKGArchiver *)v33 writeArchive:v24 name:v23 error:&v35];
          v26 = v35;
          if (v30)
          {
            v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v19];
            blockCopy[2](blockCopy, identifierCopy, v31);

            v27 = 1;
          }

          else
          {
            v27 = errorBlockCopy[2](errorBlockCopy, 10, @"could not write archive");
          }

          v29 = v34;
        }

        else
        {
          v26 = 0;
          v27 = 1;
        }
      }
    }

    else
    {
      v27 = 1;
    }
  }

  else
  {
    v27 = 1;
  }

  return v27;
}

void __107__SKGJob_People___updateCoreSpotlightItems_bundleIdentifier_protectionClass_batchUpdatedBlock_cancelBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (SKGLogGetCurrentLoggingLevel() >= 2)
    {
      v4 = SKGLogInit();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __107__SKGJob_People___updateCoreSpotlightItems_bundleIdentifier_protectionClass_batchUpdatedBlock_cancelBlock___block_invoke_cold_1(v3, v4);
      }
    }

    atomic_store(0, (*(*(a1 + 40) + 8) + 24));
  }

  dispatch_group_leave(*(a1 + 32));
}

- (BOOL)_runCSExtractForQueryString:(id)string queryContext:(id)context flags:(unsigned int)flags processedItemBlock:(id)block batchArchivedBlock:(id)archivedBlock batchUpdatedBlock:(id)updatedBlock cancelBlock:(id)cancelBlock errorBlock:(id)self0
{
  stringCopy = string;
  contextCopy = context;
  blockCopy = block;
  archivedBlockCopy = archivedBlock;
  updatedBlockCopy = updatedBlock;
  cancelBlockCopy = cancelBlock;
  errorBlockCopy = errorBlock;
  if (stringCopy)
  {
    v41 = errorBlockCopy;
    v42 = updatedBlockCopy;
    v43 = archivedBlockCopy;
    v44 = blockCopy;
    [contextCopy setDisableResultStreaming:1];
    [contextCopy setMaximumBatchSize:100];
    context = [(SKGJob *)self context];
    maxItemCountPerBatch = [context maxItemCountPerBatch];

    if (maxItemCountPerBatch >= 1)
    {
      context2 = [(SKGJob *)self context];
      [contextCopy setMaximumBatchSize:{objc_msgSend(context2, "maxItemCountPerBatch")}];
    }

    context3 = [(SKGJob *)self context];
    graphVersion = [context3 graphVersion];

    v28 = [objc_alloc(MEMORY[0x277CC3498]) initWithQueryString:stringCopy queryContext:contextCopy];
    v29 = dispatch_group_create();
    objc_initWeak(location, v28);
    v82 = 0;
    v83 = &v82;
    v84 = 0x2020000000;
    v85 = 0;
    v80[0] = 0;
    v80[1] = v80;
    v80[2] = 0x2020000000;
    v81 = 1;
    v78[0] = 0;
    v78[1] = v78;
    v78[2] = 0x2020000000;
    v79 = 0;
    v77[0] = 0;
    v77[1] = v77;
    v77[2] = 0x2020000000;
    v77[3] = 0;
    v75[0] = 0;
    v75[1] = v75;
    v75[2] = 0x3032000000;
    v75[3] = __Block_byref_object_copy__16;
    v75[4] = __Block_byref_object_dispose__16;
    v76 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v73[0] = 0;
    v73[1] = v73;
    v73[2] = 0x3032000000;
    v73[3] = __Block_byref_object_copy__16;
    v73[4] = __Block_byref_object_dispose__16;
    v74 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __144__SKGJob_People___runCSExtractForQueryString_queryContext_flags_processedItemBlock_batchArchivedBlock_batchUpdatedBlock_cancelBlock_errorBlock___block_invoke;
    v56[3] = &unk_27893E900;
    flagsCopy = flags;
    v57 = contextCopy;
    v65 = v75;
    v71[1] = graphVersion;
    v60 = blockCopy;
    v66 = v73;
    v40 = cancelBlockCopy;
    v30 = cancelBlockCopy;
    v67 = v80;
    v61 = v30;
    selfCopy = self;
    v31 = v43;
    v62 = v31;
    v32 = v41;
    v63 = v32;
    v33 = v42;
    v64 = v33;
    v68 = v77;
    v69 = &v82;
    objc_copyWeak(v71, location);
    v70 = v78;
    v34 = v29;
    v59 = v34;
    [v28 setFoundItemsHandler:v56];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __144__SKGJob_People___runCSExtractForQueryString_queryContext_flags_processedItemBlock_batchArchivedBlock_batchUpdatedBlock_cancelBlock_errorBlock___block_invoke_4;
    v45[3] = &unk_27893E928;
    v51 = v80;
    v52 = v75;
    v45[4] = self;
    v47 = v31;
    v48 = v30;
    v49 = v32;
    v53 = v73;
    v50 = v33;
    v54 = &v82;
    v55 = v78;
    v35 = v34;
    v46 = v35;
    [v28 setCompletionHandler:v45];
    dispatch_group_enter(v35);
    context4 = [(SKGJob *)self context];
    [context4 logSignpost:13 message:@"starting people updates"];

    [v28 start];
    [v28 poll];
    context5 = [(SKGJob *)self context];
    [context5 logSignpost:14 message:@"end people updates"];

    dispatch_group_wait(v35, 0xFFFFFFFFFFFFFFFFLL);
    v38 = *(v83 + 24);

    objc_destroyWeak(v71);
    _Block_object_dispose(v73, 8);

    _Block_object_dispose(v75, 8);
    _Block_object_dispose(v77, 8);
    _Block_object_dispose(v78, 8);
    _Block_object_dispose(v80, 8);
    _Block_object_dispose(&v82, 8);
    objc_destroyWeak(location);

    cancelBlockCopy = v40;
    blockCopy = v44;
    updatedBlockCopy = v42;
    archivedBlockCopy = v43;
    errorBlockCopy = v41;
  }

  else
  {
    v38 = 1;
  }

  return v38 & 1;
}

void __144__SKGJob_People___runCSExtractForQueryString_queryContext_flags_processedItemBlock_batchArchivedBlock_batchUpdatedBlock_cancelBlock_errorBlock___block_invoke(uint64_t a1, void *a2)
{
  v161 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v109 = objc_autoreleasePoolPush();
  v150 = 0u;
  v151 = 0u;
  v152 = 0u;
  v153 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v150 objects:v160 count:16];
  if (!v4)
  {
    goto LABEL_55;
  }

  v5 = v4;
  v6 = *v151;
  v116 = *v151;
  do
  {
    v7 = 0;
    v119 = v5;
    do
    {
      if (*v151 != v6)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v150 + 1) + 8 * v7);
      v9 = objc_autoreleasePoolPush();
      v10 = [v8 uniqueIdentifier];
      v11 = [v8 protection];
      v12 = [v8 bundleID];
      v13 = v12;
      if (v10)
      {
        v14 = v11 == 0;
      }

      else
      {
        v14 = 1;
      }

      if (v14 || v12 == 0)
      {
        goto LABEL_20;
      }

      v16 = [v8 attributeSet];
      v122 = [v16 attributeDictionary];

      v17 = [*(a1 + 32) bundleIDs];
      if ([v17 count])
      {
        v18 = [*(a1 + 32) bundleIDs];
        v19 = [v18 containsObject:v13];

        if (!v19)
        {
          goto LABEL_19;
        }
      }

      else
      {
      }

      v20 = [*(a1 + 32) disableBundles];
      if ([v20 count])
      {
        v21 = [*(a1 + 32) disableBundles];
        v22 = [v21 containsObject:v13];

        if (v22)
        {
LABEL_19:

          v6 = v116;
          v5 = v119;
LABEL_20:

          objc_autoreleasePoolPop(v9);
          goto LABEL_53;
        }
      }

      else
      {
      }

      v113 = v9;
      v23 = [MEMORY[0x277D65798] sharedProcessor];
      v24 = [v23 needsPeopleForRecord:v122];

      v25 = [MEMORY[0x277D65798] sharedProcessor];
      v26 = [v25 shouldGeneratePeopleForRecord:v122];

      if (v24 && v26)
      {
        if ((*(a1 + 160) & 8) != 0)
        {
          v46 = [*(*(*(a1 + 96) + 8) + 40) objectForKeyedSubscript:v11];

          if (!v46)
          {
            v47 = [MEMORY[0x277CBEB38] dictionary];
            [*(*(*(a1 + 96) + 8) + 40) setObject:v47 forKeyedSubscript:v11];
          }

          v48 = [*(*(*(a1 + 96) + 8) + 40) objectForKeyedSubscript:v11];
          v49 = [v48 objectForKeyedSubscript:v13];

          if (!v49)
          {
            v50 = objc_alloc_init(MEMORY[0x277CBEB58]);
            v51 = [*(*(*(a1 + 96) + 8) + 40) objectForKeyedSubscript:v11];
            [v51 setObject:v50 forKeyedSubscript:v13];
          }

          v34 = [*(*(*(a1 + 96) + 8) + 40) objectForKeyedSubscript:v11];
          v52 = [v34 objectForKeyedSubscript:v13];
          [v52 addObject:v8];
        }

        else
        {
          v27 = [MEMORY[0x277D65798] sharedProcessor];
          v143[0] = MEMORY[0x277D85DD0];
          v143[1] = 3221225472;
          v143[2] = __144__SKGJob_People___runCSExtractForQueryString_queryContext_flags_processedItemBlock_batchArchivedBlock_batchUpdatedBlock_cancelBlock_errorBlock___block_invoke_2;
          v143[3] = &unk_27893E8D8;
          v28 = *(a1 + 56);
          v29 = *(a1 + 152);
          v147 = v28;
          v149 = v29;
          v30 = v10;
          v144 = v30;
          v31 = v13;
          v32 = *(a1 + 104);
          v145 = v31;
          v148 = v32;
          v33 = v11;
          v146 = v33;
          v141[0] = MEMORY[0x277D85DD0];
          v141[1] = 3221225472;
          v141[2] = __144__SKGJob_People___runCSExtractForQueryString_queryContext_flags_processedItemBlock_batchArchivedBlock_batchUpdatedBlock_cancelBlock_errorBlock___block_invoke_3;
          v141[3] = &unk_27893CC50;
          v142 = *(a1 + 64);
          [v27 enumerateProcessedItemsFromRecord:v122 referenceIdentifier:v30 bundleIdentifier:v31 protectionClass:v33 processorFlags:8 processedItemBlock:v143 cancelBlock:v141];

          v34 = v147;
          v9 = v113;
        }
      }

      else
      {
        v34 = attributeSetForFlags(0, 0, 1, 0, 0);
        if (!v34)
        {
          v34 = objc_alloc_init(MEMORY[0x277CC34B8]);
        }

        v158 = @"_kMDItemKnowledgeUpdaterVersion";
        v35 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 152)];
        v159 = v35;
        v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v159 forKeys:&v158 count:1];
        [v34 addAttributesFromDictionary:v36];

        v37 = itemUpdateForAttributeSet(v34, v10, v13);
        v38 = [*(*(*(a1 + 104) + 8) + 40) objectForKeyedSubscript:v11];

        if (!v38)
        {
          v39 = [MEMORY[0x277CBEB38] dictionary];
          [*(*(*(a1 + 104) + 8) + 40) setObject:v39 forKeyedSubscript:v11];
        }

        v40 = [*(*(*(a1 + 104) + 8) + 40) objectForKeyedSubscript:v11];
        v41 = [v40 objectForKeyedSubscript:v13];

        if (!v41)
        {
          v42 = objc_alloc_init(MEMORY[0x277CBEB58]);
          v43 = [*(*(*(a1 + 104) + 8) + 40) objectForKeyedSubscript:v11];
          [v43 setObject:v42 forKeyedSubscript:v13];
        }

        v44 = [*(*(*(a1 + 104) + 8) + 40) objectForKeyedSubscript:v11];
        v45 = [v44 objectForKeyedSubscript:v13];
        [v45 addObject:v37];
      }

      v53 = *(*(a1 + 112) + 8);
      if (*(v53 + 24) == 1)
      {
        v54 = (*(*(a1 + 64) + 16))() ^ 1;
        v53 = *(*(a1 + 112) + 8);
      }

      else
      {
        v54 = 0;
      }

      *(v53 + 24) = v54;
      if (*(*(*(a1 + 112) + 8) + 24) == 1)
      {
        v55 = [*(*(*(a1 + 96) + 8) + 40) objectForKeyedSubscript:v11];
        v56 = [v55 objectForKeyedSubscript:v13];
        v57 = [v56 count];

        if (v57 >= 0x7D0)
        {
          v58 = [*(*(*(a1 + 96) + 8) + 40) objectForKeyedSubscript:v11];
          v59 = [v58 objectForKeyedSubscript:v13];
          v60 = [v59 allObjects];

          *(*(*(a1 + 112) + 8) + 24) = [*(a1 + 40) _archiveCoreSpotlightItems:v60 bundleIdentifier:v13 protectionClass:v11 batchArchivedBlock:*(a1 + 72) cancelBlock:*(a1 + 64) errorBlock:*(a1 + 80)];
          v61 = [*(*(*(a1 + 96) + 8) + 40) objectForKeyedSubscript:v11];
          v62 = [v61 objectForKeyedSubscript:v13];
          [v62 removeAllObjects];
        }
      }

      if (*(*(*(a1 + 112) + 8) + 24) == 1)
      {
        v63 = [*(*(*(a1 + 104) + 8) + 40) objectForKeyedSubscript:v11];
        v64 = [v63 objectForKeyedSubscript:v13];
        v65 = [v64 count];

        if (v65 >= 0x20)
        {
          v66 = [*(*(*(a1 + 104) + 8) + 40) objectForKeyedSubscript:v11];
          v67 = [v66 objectForKeyedSubscript:v13];
          v68 = [v67 allObjects];

          *(*(*(a1 + 112) + 8) + 24) = [*(a1 + 40) _updateCoreSpotlightItems:v68 bundleIdentifier:v13 protectionClass:v11 batchUpdatedBlock:*(a1 + 88) cancelBlock:*(a1 + 64)];
          v69 = [*(*(*(a1 + 104) + 8) + 40) objectForKeyedSubscript:v11];
          v70 = [v69 objectForKeyedSubscript:v13];
          [v70 removeAllObjects];
        }
      }

      ++*(*(*(a1 + 120) + 8) + 24);
      v71 = [*(a1 + 40) context];
      if ([v71 maxItemCountPerJob] <= 0)
      {

        v5 = v119;
      }

      else
      {
        v72 = *(*(*(a1 + 120) + 8) + 24);
        v73 = [*(a1 + 40) context];
        v74 = [v73 maxItemCountPerJob];

        v75 = v72 < v74;
        v5 = v119;
        if (!v75)
        {
          v76 = [*(a1 + 40) context];
          [v76 logFlag:29 message:@"knowledge updater max items"];

          *(*(*(a1 + 128) + 8) + 24) = 1;
        }
      }

      objc_autoreleasePoolPop(v9);
      v6 = v116;
      if ((*(*(*(a1 + 128) + 8) + 24) & 1) != 0 || (*(*(*(a1 + 112) + 8) + 24) & 1) == 0)
      {
        goto LABEL_55;
      }

LABEL_53:
      ++v7;
    }

    while (v5 != v7);
    v5 = [obj countByEnumeratingWithState:&v150 objects:v160 count:16];
  }

  while (v5);
LABEL_55:

  v77 = *(*(a1 + 112) + 8);
  if (*(v77 + 24) == 1)
  {
    v78 = (*(*(a1 + 64) + 16))() ^ 1;
    v77 = *(*(a1 + 112) + 8);
  }

  else
  {
    v78 = 0;
  }

  *(v77 + 24) = v78;
  WeakRetained = objc_loadWeakRetained((a1 + 144));
  v80 = WeakRetained;
  v81 = *(*(*(a1 + 112) + 8) + 24);
  if (*(*(*(a1 + 128) + 8) + 24) == 1)
  {
    if (*(*(*(a1 + 112) + 8) + 24))
    {
      v111 = WeakRetained;
      context = objc_autoreleasePoolPush();
      v137 = 0u;
      v138 = 0u;
      v139 = 0u;
      v140 = 0u;
      v114 = *(*(*(a1 + 96) + 8) + 40);
      v120 = [v114 countByEnumeratingWithState:&v137 objects:v157 count:16];
      if (v120)
      {
        v117 = *v138;
        do
        {
          v82 = 0;
          do
          {
            if (*v138 != v117)
            {
              objc_enumerationMutation(v114);
            }

            v123 = v82;
            v83 = *(*(&v137 + 1) + 8 * v82);
            v133 = 0u;
            v134 = 0u;
            v135 = 0u;
            v136 = 0u;
            v84 = [*(*(*(a1 + 96) + 8) + 40) objectForKeyedSubscript:v83];
            v85 = [v84 countByEnumeratingWithState:&v133 objects:v156 count:16];
            if (v85)
            {
              v86 = v85;
              v87 = *v134;
              do
              {
                for (i = 0; i != v86; ++i)
                {
                  if (*v134 != v87)
                  {
                    objc_enumerationMutation(v84);
                  }

                  v89 = *(*(&v133 + 1) + 8 * i);
                  v90 = [*(*(*(a1 + 96) + 8) + 40) objectForKeyedSubscript:v83];
                  v91 = [v90 objectForKeyedSubscript:v89];
                  v92 = [v91 allObjects];

                  *(*(*(a1 + 112) + 8) + 24) = [*(a1 + 40) _archiveCoreSpotlightItems:v92 bundleIdentifier:v89 protectionClass:v83 batchArchivedBlock:*(a1 + 72) cancelBlock:*(a1 + 64) errorBlock:*(a1 + 80)];
                  v93 = [*(*(*(a1 + 96) + 8) + 40) objectForKeyedSubscript:v83];
                  v94 = [v93 objectForKeyedSubscript:v89];
                  [v94 removeAllObjects];
                }

                v86 = [v84 countByEnumeratingWithState:&v133 objects:v156 count:16];
              }

              while (v86);
            }

            v82 = v123 + 1;
          }

          while (v123 + 1 != v120);
          v120 = [v114 countByEnumeratingWithState:&v137 objects:v157 count:16];
        }

        while (v120);
      }

      v131 = 0u;
      v132 = 0u;
      v129 = 0u;
      v130 = 0u;
      v115 = *(*(*(a1 + 104) + 8) + 40);
      v121 = [v115 countByEnumeratingWithState:&v129 objects:v155 count:16];
      if (v121)
      {
        v118 = *v130;
        do
        {
          v95 = 0;
          do
          {
            if (*v130 != v118)
            {
              objc_enumerationMutation(v115);
            }

            v124 = v95;
            v96 = *(*(&v129 + 1) + 8 * v95);
            v125 = 0u;
            v126 = 0u;
            v127 = 0u;
            v128 = 0u;
            v97 = [*(*(*(a1 + 104) + 8) + 40) objectForKeyedSubscript:v96];
            v98 = [v97 countByEnumeratingWithState:&v125 objects:v154 count:16];
            if (v98)
            {
              v99 = v98;
              v100 = *v126;
              do
              {
                for (j = 0; j != v99; ++j)
                {
                  if (*v126 != v100)
                  {
                    objc_enumerationMutation(v97);
                  }

                  v102 = *(*(&v125 + 1) + 8 * j);
                  v103 = [*(*(*(a1 + 104) + 8) + 40) objectForKeyedSubscript:v96];
                  v104 = [v103 objectForKeyedSubscript:v102];
                  v105 = [v104 allObjects];

                  *(*(*(a1 + 112) + 8) + 24) = [*(a1 + 40) _updateCoreSpotlightItems:v105 bundleIdentifier:v102 protectionClass:v96 batchUpdatedBlock:*(a1 + 88) cancelBlock:*(a1 + 64)];
                  v106 = [*(*(*(a1 + 104) + 8) + 40) objectForKeyedSubscript:v96];
                  v107 = [v106 objectForKeyedSubscript:v102];
                  [v107 removeAllObjects];
                }

                v99 = [v97 countByEnumeratingWithState:&v125 objects:v154 count:16];
              }

              while (v99);
            }

            v95 = v124 + 1;
          }

          while (v124 + 1 != v121);
          v121 = [v115 countByEnumeratingWithState:&v129 objects:v155 count:16];
        }

        while (v121);
      }

      objc_autoreleasePoolPop(context);
      v80 = v111;
    }

LABEL_91:
    [v80 cancel];
    atomic_store(1u, (*(*(a1 + 136) + 8) + 24));
    dispatch_group_leave(*(a1 + 48));
  }

  else
  {
    if ((*(*(*(a1 + 112) + 8) + 24) & 1) == 0)
    {
      goto LABEL_91;
    }

    [WeakRetained poll];
  }

  objc_autoreleasePoolPop(v109);
  v108 = *MEMORY[0x277D85DE8];
}

uint64_t __144__SKGJob_People___runCSExtractForQueryString_queryContext_flags_processedItemBlock_batchArchivedBlock_batchUpdatedBlock_cancelBlock_errorBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = (*(*(a1 + 56) + 16))();
  if (v4)
  {
    [v3 setDidProcessPeople:1];
    v5 = attributeSetForProcessedItem(v3);
    if (v5)
    {
      v19 = @"_kMDItemKnowledgeUpdaterVersion";
      v6 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 72)];
      v20[0] = v6;
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      [v5 addAttributesFromDictionary:v7];

      v8 = itemUpdateForAttributeSet(v5, *(a1 + 32), *(a1 + 40));
      v9 = [*(*(*(a1 + 64) + 8) + 40) objectForKeyedSubscript:*(a1 + 48)];

      if (!v9)
      {
        v10 = [MEMORY[0x277CBEB38] dictionary];
        [*(*(*(a1 + 64) + 8) + 40) setObject:v10 forKeyedSubscript:*(a1 + 48)];
      }

      v11 = [*(*(*(a1 + 64) + 8) + 40) objectForKeyedSubscript:*(a1 + 48)];
      v12 = [v11 objectForKeyedSubscript:*(a1 + 40)];

      if (!v12)
      {
        v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v14 = [*(*(*(a1 + 64) + 8) + 40) objectForKeyedSubscript:*(a1 + 48)];
        [v14 setObject:v13 forKeyedSubscript:*(a1 + 40)];
      }

      v15 = [*(*(*(a1 + 64) + 8) + 40) objectForKeyedSubscript:*(a1 + 48)];
      v16 = [v15 objectForKeyedSubscript:*(a1 + 40)];
      [v16 addObject:v8];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v4;
}

void __144__SKGJob_People___runCSExtractForQueryString_queryContext_flags_processedItemBlock_batchArchivedBlock_batchUpdatedBlock_cancelBlock_errorBlock___block_invoke_4(uint64_t a1, void *a2)
{
  v59 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (*(*(*(a1 + 80) + 8) + 24) == 1)
  {
    v30 = v3;
    context = objc_autoreleasePoolPush();
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    obj = *(*(*(a1 + 88) + 8) + 40);
    v35 = [obj countByEnumeratingWithState:&v51 objects:v58 count:16];
    if (v35)
    {
      v33 = *v52;
      do
      {
        v5 = 0;
        do
        {
          if (*v52 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v37 = v5;
          v6 = *(*(&v51 + 1) + 8 * v5);
          v47 = 0u;
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
          v7 = [*(*(*(a1 + 88) + 8) + 40) objectForKeyedSubscript:{v6, context}];
          v8 = [v7 countByEnumeratingWithState:&v47 objects:v57 count:16];
          if (v8)
          {
            v9 = v8;
            v10 = *v48;
            do
            {
              v11 = 0;
              do
              {
                if (*v48 != v10)
                {
                  objc_enumerationMutation(v7);
                }

                v12 = *(*(&v47 + 1) + 8 * v11);
                v13 = [*(*(*(a1 + 88) + 8) + 40) objectForKeyedSubscript:v6];
                v14 = [v13 objectForKeyedSubscript:v12];
                v15 = [v14 allObjects];

                *(*(*(a1 + 80) + 8) + 24) = [*(a1 + 32) _archiveCoreSpotlightItems:v15 bundleIdentifier:v12 protectionClass:v6 batchArchivedBlock:*(a1 + 48) cancelBlock:*(a1 + 56) errorBlock:*(a1 + 64)];
                ++v11;
              }

              while (v9 != v11);
              v9 = [v7 countByEnumeratingWithState:&v47 objects:v57 count:16];
            }

            while (v9);
          }

          v5 = v37 + 1;
        }

        while (v37 + 1 != v35);
        v35 = [obj countByEnumeratingWithState:&v51 objects:v58 count:16];
      }

      while (v35);
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    obja = *(*(*(a1 + 96) + 8) + 40);
    v36 = [obja countByEnumeratingWithState:&v43 objects:v56 count:16];
    if (v36)
    {
      v34 = *v44;
      do
      {
        v16 = 0;
        do
        {
          if (*v44 != v34)
          {
            objc_enumerationMutation(obja);
          }

          v38 = v16;
          v17 = *(*(&v43 + 1) + 8 * v16);
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v18 = [*(*(*(a1 + 96) + 8) + 40) objectForKeyedSubscript:{v17, context}];
          v19 = [v18 countByEnumeratingWithState:&v39 objects:v55 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v40;
            do
            {
              v22 = 0;
              do
              {
                if (*v40 != v21)
                {
                  objc_enumerationMutation(v18);
                }

                v23 = *(*(&v39 + 1) + 8 * v22);
                v24 = [*(*(*(a1 + 96) + 8) + 40) objectForKeyedSubscript:v17];
                v25 = [v24 objectForKeyedSubscript:v23];
                v26 = [v25 allObjects];

                *(*(*(a1 + 80) + 8) + 24) = [*(a1 + 32) _updateCoreSpotlightItems:v26 bundleIdentifier:v23 protectionClass:v17 batchUpdatedBlock:*(a1 + 72) cancelBlock:*(a1 + 56)];
                ++v22;
              }

              while (v20 != v22);
              v20 = [v18 countByEnumeratingWithState:&v39 objects:v55 count:16];
            }

            while (v20);
          }

          v16 = v38 + 1;
        }

        while (v38 + 1 != v36);
        v36 = [obja countByEnumeratingWithState:&v43 objects:v56 count:16];
      }

      while (v36);
    }

    objc_autoreleasePoolPop(context);
    v4 = v30;
    if (*(*(*(a1 + 80) + 8) + 24) == 1)
    {
      *(*(*(a1 + 104) + 8) + 24) = 1;
    }
  }

  v27 = atomic_load((*(*(a1 + 112) + 8) + 24));
  if ((v27 & 1) == 0)
  {
    dispatch_group_leave(*(a1 + 40));
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (BOOL)requestCSProcessingWithProcessedItemBlock:(id)block batchArchivedBlock:(id)archivedBlock batchUpdatedBlock:(id)updatedBlock cancelBlock:(id)cancelBlock errorBlock:(id)errorBlock
{
  v74 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  archivedBlockCopy = archivedBlock;
  updatedBlockCopy = updatedBlock;
  cancelBlockCopy = cancelBlock;
  errorBlockCopy = errorBlock;
  v12 = objc_autoreleasePoolPush();
  mEMORY[0x277D657A0] = [MEMORY[0x277D657A0] sharedContext];
  enablePeople = [mEMORY[0x277D657A0] enablePeople];

  context = [(SKGJob *)self context];
  doArchiving = [context doArchiving];

  if (doArchiving & 1) != 0 || ([MEMORY[0x277D65798] sharedProcessor], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "loadPeopleExtractor"), v17, (v18))
  {
    if (enablePeople)
    {
      v59 = v12;
      if (doArchiving)
      {
        v19 = 72;
      }

      else
      {
        v19 = 64;
      }

      v60 = v19;
      mEMORY[0x277D657A0]2 = [MEMORY[0x277D657A0] sharedContext];
      excludeBundles = [mEMORY[0x277D657A0]2 excludeBundles];

      v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
      mEMORY[0x277D657A0]3 = [MEMORY[0x277D657A0] sharedContext];
      fetchAttributes = [mEMORY[0x277D657A0]3 fetchAttributes];
      [v21 addObjectsFromArray:fetchAttributes];

      mEMORY[0x277D657A0]4 = [MEMORY[0x277D657A0] sharedContext];
      peopleFetchAttributes = [mEMORY[0x277D657A0]4 peopleFetchAttributes];
      v62 = v21;
      [v21 addObjectsFromArray:peopleFetchAttributes];

      v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
      context2 = [(SKGJob *)self context];
      filterQuery = [context2 filterQuery];

      if (filterQuery)
      {
        context3 = [(SKGJob *)self context];
        filterQuery2 = [context3 filterQuery];
        [v26 addObject:filterQuery2];
      }

      selfCopy = self;
      context4 = [(SKGJob *)self context];
      v32 = objc_alloc_init(MEMORY[0x277CBEB18]);
      [v32 addObject:@"_kMDItemKnowledgeUpdaterVersion!=*"];
      v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"(_kMDItemKnowledgeUpdaterVersion=*&&_kMDItemKnowledgeUpdaterVersion!=%ld)", objc_msgSend(context4, "graphVersion")];
      [v32 addObject:v33];

      v34 = MEMORY[0x277CCACA8];
      mEMORY[0x277D657A0]5 = [MEMORY[0x277D657A0] sharedContext];
      v36 = [v34 stringWithFormat:@"(_kMDItemKnowledgeIndexVersion!=* || (_kMDItemKnowledgeIndexVersion=*&&_kMDItemKnowledgeIndexVersion!=%ld))", objc_msgSend(mEMORY[0x277D657A0]5, "knowledgeVersion")];
      [v32 addObject:v36];

      v37 = MEMORY[0x277CCACA8];
      v38 = [v32 componentsJoinedByString:@"||"];
      v39 = [v37 stringWithFormat:@"(%@)", v38];

      v40 = v26;
      v57 = v39;
      [v26 addObject:v39];
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      mEMORY[0x277D657A0]6 = [MEMORY[0x277D657A0] sharedContext];
      peoplePreferredBundles = [mEMORY[0x277D657A0]6 peoplePreferredBundles];

      v43 = [peoplePreferredBundles countByEnumeratingWithState:&v68 objects:v73 count:16];
      if (v43)
      {
        v44 = v43;
        v45 = *v69;
        while (2)
        {
          for (i = 0; i != v44; ++i)
          {
            if (*v69 != v45)
            {
              objc_enumerationMutation(peoplePreferredBundles);
            }

            v72 = *(*(&v68 + 1) + 8 * i);
            v47 = [MEMORY[0x277CBEA60] arrayWithObjects:&v72 count:1];
            v48 = objc_alloc_init(MEMORY[0x277CC34A0]);
            [v48 setFetchAttributes:v62];
            [v48 setBundleIDs:v47];
            v49 = queryStringForPeopleUpdates(v47, 0, v40);
            v50 = [(SKGJob *)selfCopy _runCSExtractForQueryString:v49 queryContext:v48 flags:v60 processedItemBlock:blockCopy batchArchivedBlock:archivedBlockCopy batchUpdatedBlock:updatedBlockCopy cancelBlock:cancelBlockCopy errorBlock:errorBlockCopy];

            if (!v50)
            {
              LOBYTE(v54) = 0;
              v51 = excludeBundles;
              v12 = v59;
              v52 = v62;
              goto LABEL_21;
            }
          }

          v44 = [peoplePreferredBundles countByEnumeratingWithState:&v68 objects:v73 count:16];
          if (v44)
          {
            continue;
          }

          break;
        }
      }

      peoplePreferredBundles = objc_alloc_init(MEMORY[0x277CC34A0]);
      v51 = excludeBundles;
      [peoplePreferredBundles setDisableBundles:excludeBundles];
      v52 = v62;
      [peoplePreferredBundles setFetchAttributes:v62];
      v53 = queryStringForPeopleUpdates(0, excludeBundles, v40);
      LOBYTE(v54) = [(SKGJob *)selfCopy _runCSExtractForQueryString:v53 queryContext:peoplePreferredBundles flags:v60 processedItemBlock:blockCopy batchArchivedBlock:archivedBlockCopy batchUpdatedBlock:updatedBlockCopy cancelBlock:cancelBlockCopy errorBlock:errorBlockCopy];

      v12 = v59;
LABEL_21:
    }

    else
    {
      LOBYTE(v54) = 1;
    }
  }

  else
  {
    v54 = cancelBlockCopy[2](cancelBlockCopy, @"tried loading people model", 0) ^ 1;
  }

  objc_autoreleasePoolPop(v12);

  v55 = *MEMORY[0x277D85DE8];
  return v54;
}

- (BOOL)_updateCoreSpotlightItems:(id)items bundleID:(id)d protectionClass:(id)class cancelBlock:(id)block
{
  itemsCopy = items;
  dCopy = d;
  classCopy = class;
  blockCopy = block;
  v14 = 1;
  if ([itemsCopy count])
  {
    v15 = dispatch_group_create();
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 1;
    v16 = objc_autoreleasePoolPush();
    if ([itemsCopy count])
    {
      v17 = [(SKGJob *)self _coreSpotlightIndexWithBundleIdentifier:dCopy protectionClass:classCopy];
      dispatch_group_enter(v15);
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __83__SKGJob_Pipeline___updateCoreSpotlightItems_bundleID_protectionClass_cancelBlock___block_invoke;
      v25[3] = &unk_27893D798;
      v27 = &v28;
      v18 = v15;
      v26 = v18;
      [v17 indexSearchableItems:itemsCopy completionHandler:v25];
      v19 = dispatch_time(0, 300000000000);
      if (dispatch_group_wait(v18, v19))
      {
        if (SKGLogGetCurrentLoggingLevel() >= 2)
        {
          v20 = SKGLogInit();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            [SKGJob(Pipeline) _updateCoreSpotlightItems:v20 bundleID:? protectionClass:? cancelBlock:?];
          }
        }

        v21 = v29;
        atomic_store(0, v29 + 24);
      }

      else
      {
        v21 = v29;
      }

      v22 = atomic_load(v21 + 24);
      if (v22)
      {
        v23 = blockCopy[2](blockCopy, 0, @"SKGJob+Text:updateItems:") ^ 1;
      }

      else
      {
        v23 = 0;
      }

      atomic_store(v23, v29 + 24);
    }

    objc_autoreleasePoolPop(v16);
    v14 = atomic_load(v29 + 24);
    _Block_object_dispose(&v28, 8);
  }

  return v14 & 1;
}

void __83__SKGJob_Pipeline___updateCoreSpotlightItems_bundleID_protectionClass_cancelBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (SKGLogGetCurrentLoggingLevel() >= 2)
    {
      v4 = SKGLogInit();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __107__SKGJob_People___updateCoreSpotlightItems_bundleIdentifier_protectionClass_batchUpdatedBlock_cancelBlock___block_invoke_cold_1(v3, v4);
      }
    }

    atomic_store(0, (*(*(a1 + 40) + 8) + 24));
  }

  dispatch_group_leave(*(a1 + 32));
}

- (BOOL)_runCSPollingQuery:(id)query foundItemBlock:(id)block
{
  queryCopy = query;
  blockCopy = block;
  queryContext = [queryCopy queryContext];
  [queryContext setDisableResultStreaming:1];

  queryContext2 = [queryCopy queryContext];
  [queryContext2 setMaximumBatchSize:100];

  context = [(SKGJob *)self context];
  maxItemCountPerBatch = [context maxItemCountPerBatch];

  if (maxItemCountPerBatch >= 1)
  {
    context2 = [(SKGJob *)self context];
    maxItemCountPerBatch2 = [context2 maxItemCountPerBatch];
    queryContext3 = [queryCopy queryContext];
    [queryContext3 setMaximumBatchSize:maxItemCountPerBatch2];
  }

  v15 = dispatch_group_create();
  objc_initWeak(&location, queryCopy);
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x2020000000;
  v37 = 1;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x2020000000;
  v35 = 0;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __54__SKGJob_Pipeline___runCSPollingQuery_foundItemBlock___block_invoke;
  v27[3] = &unk_27893E950;
  v30 = v36;
  v16 = blockCopy;
  v29 = v16;
  v31 = &v38;
  objc_copyWeak(&v33, &location);
  v32 = v34;
  v17 = v15;
  v28 = v17;
  [queryCopy setFoundItemsHandler:v27];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __54__SKGJob_Pipeline___runCSPollingQuery_foundItemBlock___block_invoke_10;
  v22[3] = &unk_27893E978;
  v24 = v36;
  v25 = &v38;
  v26 = v34;
  v18 = v17;
  v23 = v18;
  [queryCopy setCompletionHandler:v22];
  dispatch_group_enter(v18);
  context3 = [(SKGJob *)self context];
  [context3 logSignpost:7 message:@"starting batch querying"];

  [queryCopy start];
  [queryCopy poll];
  context4 = [(SKGJob *)self context];
  [context4 logSignpost:8 message:@"end batch querying"];

  dispatch_group_wait(v18, 0xFFFFFFFFFFFFFFFFLL);
  LOBYTE(context4) = *(v39 + 24);

  objc_destroyWeak(&v33);
  _Block_object_dispose(v34, 8);
  _Block_object_dispose(v36, 8);
  _Block_object_dispose(&v38, 8);
  objc_destroyWeak(&location);

  return context4;
}

void __54__SKGJob_Pipeline___runCSPollingQuery_foundItemBlock___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        v12 = [v10 attributeSet];
        v13 = [v12 bundleID];

        if (v13)
        {
          *(*(*(a1 + 48) + 8) + 24) = (*(*(a1 + 40) + 16))();

          objc_autoreleasePoolPop(v11);
          if ((*(*(*(a1 + 56) + 8) + 24) & 1) != 0 || *(*(*(a1 + 48) + 8) + 24) != 1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          if (SKGLogGetCurrentLoggingLevel() >= 2)
          {
            v14 = SKGLogPipelineInit();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              __54__SKGJob_Pipeline___runCSPollingQuery_foundItemBlock___block_invoke_cold_1(v22, v10, &v23, v14);
            }
          }

          objc_autoreleasePoolPop(v11);
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v7);
  }

LABEL_17:

  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v16 = WeakRetained;
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) != 0 || (*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    [WeakRetained cancel];
    *(*(*(a1 + 64) + 8) + 24) = 1;
    dispatch_group_leave(*(a1 + 32));
  }

  else
  {
    [WeakRetained poll];
  }

  objc_autoreleasePoolPop(v4);
  v17 = *MEMORY[0x277D85DE8];
}

void __54__SKGJob_Pipeline___runCSPollingQuery_foundItemBlock___block_invoke_10(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    dispatch_group_leave(*(a1 + 32));
  }
}

- (BOOL)performCSIndexProcessingJob:(id)job cancelBlock:(id)block
{
  v37 = *MEMORY[0x277D85DE8];
  jobCopy = job;
  blockCopy = block;
  v8 = objc_autoreleasePoolPush();
  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v9 = SKGLogPipelineInit();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      name = [jobCopy name];
      version = [jobCopy version];
      *buf = 138412546;
      *&buf[4] = name;
      *&buf[12] = 2112;
      *&buf[14] = version;
      _os_log_impl(&dword_231B25000, v9, OS_LOG_TYPE_DEFAULT, "=== Requesting scheduled processing of %@ <%@>", buf, 0x16u);
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v34 = __Block_byref_object_copy__17;
  v35 = __Block_byref_object_dispose__17;
  v36 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__SKGJob_Pipeline__performCSIndexProcessingJob_cancelBlock___block_invoke;
  aBlock[3] = &unk_27893E9A0;
  v32 = buf;
  aBlock[4] = self;
  v12 = blockCopy;
  v31 = v12;
  v13 = _Block_copy(aBlock);
  [jobCopy startBatch];
  query = [jobCopy query];
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __60__SKGJob_Pipeline__performCSIndexProcessingJob_cancelBlock___block_invoke_2;
  v24 = &unk_27893E9F0;
  v15 = jobCopy;
  v29 = buf;
  v25 = v15;
  selfCopy = self;
  v16 = v13;
  v27 = v16;
  v17 = v12;
  v28 = v17;
  v18 = [(SKGJob *)self _runCSPollingQuery:query foundItemBlock:&v21];

  [v15 endBatch];
  if (v18)
  {
    v16[2](v16);
  }

  _Block_object_dispose(buf, 8);
  objc_autoreleasePoolPop(v8);

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

void __60__SKGJob_Pipeline__performCSIndexProcessingJob_cancelBlock___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = *(*(*(a1 + 48) + 8) + 40);
  v19 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v19)
  {
    v18 = *v25;
    do
    {
      v2 = 0;
      do
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v24 + 1) + 8 * v2);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v4 = [*(*(*(a1 + 48) + 8) + 40) objectForKeyedSubscript:{v3, context}];
        v5 = [v4 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v5)
        {
          v6 = v5;
          v7 = *v21;
          do
          {
            v8 = 0;
            do
            {
              if (*v21 != v7)
              {
                objc_enumerationMutation(v4);
              }

              v9 = *(*(&v20 + 1) + 8 * v8);
              v10 = [*(*(*(a1 + 48) + 8) + 40) objectForKeyedSubscript:v3];
              v11 = [v10 objectForKeyedSubscript:v9];

              [*(a1 + 32) _updateCoreSpotlightItems:v11 bundleID:v9 protectionClass:v3 cancelBlock:*(a1 + 40)];
              ++v8;
            }

            while (v6 != v8);
            v6 = [v4 countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v6);
        }

        ++v2;
      }

      while (v2 != v19);
      v19 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v19);
  }

  v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v13 = *(*(a1 + 48) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  objc_autoreleasePoolPop(context);
  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __60__SKGJob_Pipeline__performCSIndexProcessingJob_cancelBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 uniqueIdentifier];
  v8 = [v6 protection];
  v9 = *(a1 + 32);
  v38 = MEMORY[0x277D85DD0];
  v39 = 3221225472;
  v40 = __60__SKGJob_Pipeline__performCSIndexProcessingJob_cancelBlock___block_invoke_3;
  v41 = &unk_27893E9C8;
  v10 = v6;
  v42 = v10;
  v11 = [v9 itemRecordForUniqueID:v7 bundleID:v5 attributeProviderBlock:&v38];
  v12 = [*(a1 + 32) processCSItemRecord:v11];
  if ([v12 status] == 3)
  {
    v13 = 1;
  }

  else
  {
    v14 = [v12 searchableItem];
    if (v14)
    {
      v15 = *(*(*(a1 + 64) + 8) + 40);
      if (!v15)
      {
        v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v17 = *(*(a1 + 64) + 8);
        v18 = *(v17 + 40);
        *(v17 + 40) = v16;

        v15 = *(*(*(a1 + 64) + 8) + 40);
      }

      v19 = [v15 objectForKeyedSubscript:v8];

      if (!v19)
      {
        v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
        [*(*(*(a1 + 64) + 8) + 40) setObject:v20 forKeyedSubscript:v8];
      }

      v21 = [*(*(*(a1 + 64) + 8) + 40) objectForKeyedSubscript:{v8, v11, v10, v7, v38, v39, v40, v41}];
      v22 = [v21 objectForKeyedSubscript:v5];

      if (!v22)
      {
        v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v24 = [*(*(*(a1 + 64) + 8) + 40) objectForKeyedSubscript:v8];
        [v24 setObject:v23 forKeyedSubscript:v5];
      }

      v25 = [*(*(*(a1 + 64) + 8) + 40) objectForKeyedSubscript:v8];
      v26 = [v25 objectForKeyedSubscript:v5];
      [v26 addObject:v14];

      v27 = [*(*(*(a1 + 64) + 8) + 40) objectForKeyedSubscript:v8];
      v28 = [v27 objectForKeyedSubscript:v5];
      v29 = v14;
      v30 = [v28 count];
      v31 = [*(a1 + 40) context];
      v32 = [v31 maxItemCountPerBatch];

      v33 = v30 >= v32;
      v14 = v29;
      v10 = v36;
      v7 = v37;
      v11 = v35;
      if (v33)
      {
        (*(*(a1 + 48) + 16))();
      }
    }

    v13 = (*(*(a1 + 56) + 16))();
  }

  return v13;
}

void *__60__SKGJob_Pipeline__performCSIndexProcessingJob_cancelBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 attributeSet];
  v5 = [v4 attributeDictionary];
  v6 = [v5 objectForKeyedSubscript:v3];

  if (v6 == *MEMORY[0x277CBEEE8] || v6 == 0)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  v9 = v8;

  return v8;
}

- (id)_removingRequiredAttributes:(id)attributes
{
  v15[8] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB98];
  attributesCopy = attributes;
  v5 = [v3 alloc];
  v6 = *MEMORY[0x277CC3208];
  v15[0] = *MEMORY[0x277CC2500];
  v15[1] = v6;
  v7 = *MEMORY[0x277CC2FD0];
  v15[2] = *MEMORY[0x277CC2770];
  v15[3] = v7;
  v8 = *MEMORY[0x277CC2688];
  v15[4] = *MEMORY[0x277CC2A70];
  v15[5] = v8;
  v9 = *MEMORY[0x277CC31F8];
  v15[6] = *MEMORY[0x277CC31E0];
  v15[7] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:8];
  v11 = [v5 initWithArray:v10];

  v12 = [attributesCopy mutableCopy];
  [v12 minusSet:v11];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (BOOL)_recordIsOld:(id)old dateKeys:(id)keys
{
  v28 = *MEMORY[0x277D85DE8];
  oldCopy = old;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  keysCopy = keys;
  v8 = [keysCopy countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(keysCopy);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        mEMORY[0x277D65798] = [MEMORY[0x277D65798] sharedProcessor];
        v14 = [mEMORY[0x277D65798] dateFromRecord:oldCopy key:v12];

        if (v14)
        {

          currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
          v17 = [MEMORY[0x277CBEAA8] now];
          v18 = [currentCalendar components:0x2000 fromDate:v14 toDate:v17 options:0];

          weekOfYear = [v18 weekOfYear];
          context = [(SKGJob *)self context];
          v15 = weekOfYear >= [context upgradePathIsOldThresInWeeks];

          goto LABEL_11;
        }
      }

      v9 = [keysCopy countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v15 = 1;
  v14 = keysCopy;
LABEL_11:

  v21 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)_markReindexRequestsAsSeen:(id)seen bundleID:(id)d count:(unint64_t)count
{
  dCopy = d;
  seenCopy = seen;
  v9 = [seenCopy objectForKeyedSubscript:dCopy];
  v10 = v9;
  v11 = &unk_2846E7CE0;
  if (v9)
  {
    v11 = v9;
  }

  v12 = v11;

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{count + objc_msgSend(v12, "intValue")}];

  [seenCopy setObject:v13 forKey:dCopy];
}

- (id)_coreSpotlightIndexWithBundleIdentifier:(id)identifier protectionClass:(id)class
{
  identifierCopy = identifier;
  classCopy = class;
  v7 = objc_autoreleasePoolPush();
  os_unfair_lock_lock(&_coreSpotlightIndexWithBundleIdentifier_protectionClass__s_lock_0);
  v8 = _coreSpotlightIndexWithBundleIdentifier_protectionClass__sIndexes_1;
  if (!_coreSpotlightIndexWithBundleIdentifier_protectionClass__sIndexes_1)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v10 = _coreSpotlightIndexWithBundleIdentifier_protectionClass__sIndexes_1;
    _coreSpotlightIndexWithBundleIdentifier_protectionClass__sIndexes_1 = v9;

    v8 = _coreSpotlightIndexWithBundleIdentifier_protectionClass__sIndexes_1;
  }

  v11 = [v8 objectForKeyedSubscript:identifierCopy];

  if (!v11)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [_coreSpotlightIndexWithBundleIdentifier_protectionClass__sIndexes_1 setObject:dictionary forKeyedSubscript:identifierCopy];
  }

  v13 = [_coreSpotlightIndexWithBundleIdentifier_protectionClass__sIndexes_1 objectForKeyedSubscript:identifierCopy];
  v14 = [v13 objectForKeyedSubscript:classCopy];

  if (v14)
  {
    v15 = [_coreSpotlightIndexWithBundleIdentifier_protectionClass__sIndexes_1 objectForKeyedSubscript:identifierCopy];
    v16 = [v15 objectForKeyedSubscript:classCopy];
  }

  else
  {
    v16 = [objc_alloc(MEMORY[0x277CC34A8]) initWithName:@"KnowledgeIndex" protectionClass:classCopy bundleIdentifier:identifierCopy];
    v15 = [_coreSpotlightIndexWithBundleIdentifier_protectionClass__sIndexes_1 objectForKeyedSubscript:identifierCopy];
    [v15 setObject:v16 forKey:classCopy];
  }

  os_unfair_lock_unlock(&_coreSpotlightIndexWithBundleIdentifier_protectionClass__s_lock_0);
  objc_autoreleasePoolPop(v7);

  return v16;
}

- (BOOL)_updateCoreSpotlightItems:(id)items bundleIdentifier:(id)identifier protectionClass:(id)class batchUpdatedBlock:(id)block cancelBlock:(id)cancelBlock
{
  itemsCopy = items;
  identifierCopy = identifier;
  classCopy = class;
  blockCopy = block;
  cancelBlockCopy = cancelBlock;
  v17 = 1;
  if ([itemsCopy count])
  {
    v18 = dispatch_group_create();
    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v38 = 1;
    v19 = objc_autoreleasePoolPush();
    v20 = [itemsCopy count];
    if (v20)
    {
      v21 = [(SKGJob *)self _coreSpotlightIndexWithBundleIdentifier:identifierCopy protectionClass:classCopy];
      dispatch_group_enter(v18);
      v29 = MEMORY[0x277D85DD0];
      v30 = 3221225472;
      v31 = __108__SKGJob_Updates___updateCoreSpotlightItems_bundleIdentifier_protectionClass_batchUpdatedBlock_cancelBlock___block_invoke;
      v32 = &unk_27893D798;
      v34 = &v35;
      v22 = v18;
      v33 = v22;
      [v21 indexSearchableItems:itemsCopy completionHandler:&v29];
      v23 = dispatch_time(0, 300000000000);
      if (dispatch_group_wait(v22, v23))
      {
        if (SKGLogGetCurrentLoggingLevel() >= 2)
        {
          v24 = SKGLogInit();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            [SKGJob(Pipeline) _updateCoreSpotlightItems:v24 bundleID:? protectionClass:? cancelBlock:?];
          }
        }

        atomic_store(0, v36 + 24);
      }

      v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{v20, v29, v30, v31, v32}];
      blockCopy[2](blockCopy, identifierCopy, v25);

      v26 = atomic_load(v36 + 24);
      if (v26)
      {
        v27 = cancelBlockCopy[2](cancelBlockCopy, 0, @"SKGJob+Text:updateItems:") ^ 1;
      }

      else
      {
        v27 = 0;
      }

      atomic_store(v27, v36 + 24);
    }

    objc_autoreleasePoolPop(v19);
    v17 = atomic_load(v36 + 24);
    _Block_object_dispose(&v35, 8);
  }

  return v17 & 1;
}

void __108__SKGJob_Updates___updateCoreSpotlightItems_bundleIdentifier_protectionClass_batchUpdatedBlock_cancelBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (SKGLogGetCurrentLoggingLevel() >= 2)
    {
      v4 = SKGLogInit();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __108__SKGJob_Updates___updateCoreSpotlightItems_bundleIdentifier_protectionClass_batchUpdatedBlock_cancelBlock___block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
      }
    }

    atomic_store(0, (*(*(a1 + 40) + 8) + 24));
  }

  dispatch_group_leave(*(a1 + 32));
}

- (BOOL)_reindexCoreSpotlightIdentifiers:(id)identifiers bundleIdentifier:(id)identifier protectionClass:(id)class batchProcessedBlock:(id)block cancelBlock:(id)cancelBlock
{
  identifiersCopy = identifiers;
  identifierCopy = identifier;
  classCopy = class;
  blockCopy = block;
  cancelBlockCopy = cancelBlock;
  v16 = 1;
  if ([identifiersCopy count])
  {
    v17 = dispatch_group_create();
    v43 = 0;
    v44 = &v43;
    v45 = 0x2020000000;
    v46 = 1;
    v18 = objc_autoreleasePoolPush();
    v19 = [identifiersCopy count];
    if (v19)
    {
      v38 = v18;
      v20 = [objc_alloc(MEMORY[0x277CC34A8]) initWithName:@"KnowledgeIndex" protectionClass:classCopy];
      v21 = MEMORY[0x277CCACA8];
      v22 = [identifiersCopy componentsJoinedByString:@"=;"];;
      v23 = [v21 stringWithFormat:@"reindexJob:%@:%@:%ld:%@", identifierCopy, classCopy, 4, v22];

      dispatch_group_enter(v17);
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __117__SKGJob_Updates___reindexCoreSpotlightIdentifiers_bundleIdentifier_protectionClass_batchProcessedBlock_cancelBlock___block_invoke;
      v39[3] = &unk_27893EA18;
      v24 = v23;
      v40 = v24;
      v42 = &v43;
      v25 = v17;
      v41 = v25;
      [v20 _issueCommand:v24 completionHandler:v39];
      v26 = dispatch_time(0, 30000000000);
      if (dispatch_group_wait(v25, v26))
      {
        if (SKGLogGetCurrentLoggingLevel() >= 2)
        {
          v27 = SKGLogInit();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            [(SKGJob(Updates) *)identifierCopy _reindexCoreSpotlightIdentifiers:v27 bundleIdentifier:v28 protectionClass:v29 batchProcessedBlock:v30 cancelBlock:v31, v32, v33];
          }
        }

        atomic_store(0, v44 + 24);
      }

      v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v19];
      blockCopy[2](blockCopy, identifierCopy, v34);

      v35 = atomic_load(v44 + 24);
      if (v35)
      {
        v36 = cancelBlockCopy[2](cancelBlockCopy, 0, @"SKGJob+Text:updateItems") ^ 1;
      }

      else
      {
        v36 = 0;
      }

      atomic_store(v36, v44 + 24);

      v18 = v38;
    }

    objc_autoreleasePoolPop(v18);
    v16 = atomic_load(v44 + 24);
    _Block_object_dispose(&v43, 8);
  }

  return v16 & 1;
}

void __117__SKGJob_Updates___reindexCoreSpotlightIdentifiers_bundleIdentifier_protectionClass_batchProcessedBlock_cancelBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (SKGLogGetCurrentLoggingLevel() >= 2)
    {
      v4 = SKGLogInit();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __117__SKGJob_Updates___reindexCoreSpotlightIdentifiers_bundleIdentifier_protectionClass_batchProcessedBlock_cancelBlock___block_invoke_cold_1(a1, v4, v5, v6, v7, v8, v9, v10);
      }
    }

    atomic_store(0, (*(*(a1 + 48) + 8) + 24));
  }

  dispatch_group_leave(*(a1 + 40));
}

- (BOOL)_runCSReindexForQueryString:(id)string queryContext:(id)context processorFlags:(unint64_t)flags batchProcessedBlock:(id)block batchUpdatedBlock:(id)updatedBlock cancelBlock:(id)cancelBlock
{
  v156 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  contextCopy = context;
  blockCopy = block;
  updatedBlockCopy = updatedBlock;
  cancelBlockCopy = cancelBlock;
  v56 = stringCopy;
  if (!stringCopy)
  {
    v48 = 1;
    goto LABEL_31;
  }

  v52 = cancelBlockCopy;
  [contextCopy setDisableResultStreaming:1];
  [contextCopy setMaximumBatchSize:100];
  context = [(SKGJob *)self context];
  maxItemCountPerBatch = [context maxItemCountPerBatch];

  if (maxItemCountPerBatch >= 1)
  {
    context2 = [(SKGJob *)self context];
    [contextCopy setMaximumBatchSize:{objc_msgSend(context2, "maxItemCountPerBatch")}];
  }

  v20 = [objc_alloc(MEMORY[0x277CC3498]) initWithQueryString:stringCopy queryContext:contextCopy];
  v21 = dispatch_group_create();
  v57 = v20;
  objc_initWeak(&location, v20);
  v140 = 0;
  v141 = &v140;
  v142 = 0x2020000000;
  v143 = 0;
  v138[0] = 0;
  v138[1] = v138;
  v138[2] = 0x2020000000;
  v139 = 1;
  v136[0] = 0;
  v136[1] = v136;
  v136[2] = 0x2020000000;
  v137 = 0;
  v132 = 0;
  v133 = &v132;
  v134 = 0x2020000000;
  v135 = 0;
  v128 = 0;
  v129 = &v128;
  v130 = 0x2020000000;
  v131 = 0;
  v124 = 0;
  v125 = &v124;
  v126 = 0x2020000000;
  v127 = 0;
  v120 = 0;
  v121 = &v120;
  v122 = 0x2020000000;
  v123 = 0;
  v116 = 0;
  v117 = &v116;
  v118 = 0x2020000000;
  v119 = 0;
  v110 = 0;
  v111 = &v110;
  v112 = 0x3032000000;
  v113 = __Block_byref_object_copy__18;
  v114 = __Block_byref_object_dispose__18;
  v115 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v104 = 0;
  v105 = &v104;
  v106 = 0x3032000000;
  v107 = __Block_byref_object_copy__18;
  v108 = __Block_byref_object_dispose__18;
  v109 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v102[0] = 0;
  v102[1] = v102;
  v102[2] = 0x3032000000;
  v102[3] = __Block_byref_object_copy__18;
  v102[4] = __Block_byref_object_dispose__18;
  v103 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v100[0] = 0;
  v100[1] = v100;
  v100[2] = 0x3032000000;
  v100[3] = __Block_byref_object_copy__18;
  v100[4] = __Block_byref_object_dispose__18;
  v101 = objc_alloc_init(MEMORY[0x277CBEB38]);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __125__SKGJob_Updates___runCSReindexForQueryString_queryContext_processorFlags_batchProcessedBlock_batchUpdatedBlock_cancelBlock___block_invoke;
  aBlock[3] = &unk_27893EA40;
  v94 = v102;
  v95 = &v110;
  v93 = v138;
  aBlock[4] = self;
  v96 = v100;
  v97 = &v104;
  v22 = blockCopy;
  v90 = v22;
  v23 = v52;
  v91 = v23;
  v98 = &v128;
  v24 = updatedBlockCopy;
  v92 = v24;
  v99 = &v124;
  v25 = _Block_copy(aBlock);
  v68[0] = MEMORY[0x277D85DD0];
  v68[1] = 3221225472;
  v68[2] = __125__SKGJob_Updates___runCSReindexForQueryString_queryContext_processorFlags_batchProcessedBlock_batchUpdatedBlock_cancelBlock___block_invoke_2;
  v68[3] = &unk_27893EA68;
  v76 = &v116;
  v69 = contextCopy;
  selfCopy = self;
  v77 = &v110;
  v78 = &v120;
  v79 = v102;
  v80 = v100;
  v88[1] = flags;
  v81 = &v104;
  v72 = v22;
  v73 = v23;
  v82 = &v128;
  v74 = v24;
  v83 = &v124;
  v84 = v138;
  v85 = &v132;
  v86 = &v140;
  objc_copyWeak(v88, &location);
  v26 = v25;
  v75 = v26;
  v87 = v136;
  v27 = v21;
  v71 = v27;
  [v57 setFoundItemsHandler:v68];
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = __125__SKGJob_Updates___runCSReindexForQueryString_queryContext_processorFlags_batchProcessedBlock_batchUpdatedBlock_cancelBlock___block_invoke_167;
  v62[3] = &unk_27893EA90;
  v65 = v138;
  v66 = &v140;
  v67 = v136;
  v51 = v26;
  v64 = v51;
  group = v27;
  v63 = group;
  [v57 setCompletionHandler:v62];
  dispatch_group_enter(group);
  context3 = [(SKGJob *)self context];
  [context3 logSignpost:5 message:@"starting batch updates"];

  [v57 start];
  [v57 poll];
  context4 = [(SKGJob *)self context];
  [context4 logSignpost:6 message:@"end batch updates"];

  dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v30 = SKGLogInit();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = v133[3];
      v32 = v117[3];
      v33 = v129[3];
      v34 = v125[3];
      v35 = v121[3];
      *buf = 134350080;
      v147 = v31;
      v148 = 2050;
      v149 = v32;
      v150 = 2050;
      v151 = v33;
      v152 = 2050;
      v153 = v34;
      v154 = 2050;
      v155 = v35;
      _os_log_impl(&dword_231B25000, v30, OS_LOG_TYPE_DEFAULT, "=== Updates task handled %{public}llu items of %{public}llu query results. Requested reindex of %{public}llu items. Updated %{public}llu items. Item monitor blocked %{public}llu items.", buf, 0x34u);
    }
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  mEMORY[0x277CC3468]2 = v105[5];
  v37 = [mEMORY[0x277CC3468]2 countByEnumeratingWithState:&v58 objects:v145 count:16];
  if (v37)
  {
    v38 = 0;
    v39 = *v59;
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v59 != v39)
        {
          objc_enumerationMutation(mEMORY[0x277CC3468]2);
        }

        v41 = *(*(&v58 + 1) + 8 * i);
        v42 = [v105[5] objectForKeyedSubscript:{v41, v51}];
        if ([v42 intValue])
        {
          if (SKGLogGetCurrentLoggingLevel() >= 4)
          {
            v43 = SKGLogUpdaterInit();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
            {
              v44 = [v111[5] containsObject:v41];
              *buf = 138543874;
              v45 = &stru_2846CE8D8;
              if (v44)
              {
                v45 = @" [non-responsive]";
              }

              v147 = v42;
              v148 = 2112;
              v149 = v41;
              v150 = 2114;
              v151 = v45;
              _os_log_impl(&dword_231B25000, v43, OS_LOG_TYPE_DEFAULT, "Reindexed %{public}@ items for %@%{public}@", buf, 0x20u);
            }
          }

          if (isAppleInternalInstall())
          {
            intValue = [v42 intValue];
          }

          else
          {
            intValue = 1;
          }

          mEMORY[0x277CC3468] = [MEMORY[0x277CC3468] sharedInstance];
          [mEMORY[0x277CC3468] logWithBundleID:v41 indexOperation:8 itemCount:intValue code:2];

          v38 = 1;
        }
      }

      v37 = [mEMORY[0x277CC3468]2 countByEnumeratingWithState:&v58 objects:v145 count:16];
    }

    while (v37);

    if ((v38 & 1) == 0)
    {
      goto LABEL_29;
    }

    mEMORY[0x277CC3468]2 = [MEMORY[0x277CC3468] sharedInstance];
    [mEMORY[0x277CC3468]2 flush];
  }

LABEL_29:
  v48 = *(v141 + 24);

  objc_destroyWeak(v88);
  _Block_object_dispose(v100, 8);

  _Block_object_dispose(v102, 8);
  _Block_object_dispose(&v104, 8);

  _Block_object_dispose(&v110, 8);
  _Block_object_dispose(&v116, 8);
  _Block_object_dispose(&v120, 8);
  _Block_object_dispose(&v124, 8);
  _Block_object_dispose(&v128, 8);
  _Block_object_dispose(&v132, 8);
  _Block_object_dispose(v136, 8);
  _Block_object_dispose(v138, 8);
  _Block_object_dispose(&v140, 8);
  objc_destroyWeak(&location);

  cancelBlockCopy = v52;
LABEL_31:

  v49 = *MEMORY[0x277D85DE8];
  return v48 & 1;
}

void __125__SKGJob_Updates___runCSReindexForQueryString_queryContext_processorFlags_batchProcessedBlock_batchUpdatedBlock_cancelBlock___block_invoke(uint64_t a1)
{
  v66 = *MEMORY[0x277D85DE8];
  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    context = objc_autoreleasePoolPush();
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    obj = *(*(*(a1 + 72) + 8) + 40);
    v40 = [obj countByEnumeratingWithState:&v58 objects:v65 count:16];
    if (v40)
    {
      v38 = *v59;
LABEL_4:
      v2 = 0;
      while (1)
      {
        if (*v59 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v42 = v2;
        v3 = *(*(&v58 + 1) + 8 * v2);
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v44 = [*(*(*(a1 + 72) + 8) + 40) objectForKeyedSubscript:{v3, context}];
        v4 = [v44 countByEnumeratingWithState:&v54 objects:v64 count:16];
        if (v4)
        {
          v5 = v4;
          v6 = *v55;
LABEL_9:
          v7 = 0;
          while (1)
          {
            if (*v55 != v6)
            {
              objc_enumerationMutation(v44);
            }

            v8 = *(*(&v54 + 1) + 8 * v7);
            if (([*(*(*(a1 + 80) + 8) + 40) containsObject:v8] & 1) == 0)
            {
              v9 = [*(*(*(a1 + 72) + 8) + 40) objectForKeyedSubscript:v3];
              v10 = [v9 objectForKeyedSubscript:v8];
              v11 = [v10 allObjects];

              v12 = [*(*(*(a1 + 88) + 8) + 40) objectForKeyedSubscript:v3];
              v13 = [v12 objectForKeyedSubscript:v8];
              v14 = [v13 allObjects];

              [*(a1 + 32) _markReindexRequestsAsSeen:*(*(*(a1 + 96) + 8) + 40) bundleID:v8 count:{objc_msgSend(v11, "count")}];
              if ([*(a1 + 32) _reindexCoreSpotlightIdentifiers:v11 bundleIdentifier:v8 protectionClass:v3 batchProcessedBlock:*(a1 + 40) cancelBlock:*(a1 + 48)])
              {
                *(*(*(a1 + 104) + 8) + 24) += [v11 count];
                v15 = +[SKGActivityJournal sharedJournal];
                [v15 addEvent:54 bundleID:v8 identifiers:v11];

                if ([*(a1 + 32) _updateCoreSpotlightItems:v14 bundleIdentifier:v8 protectionClass:v3 batchUpdatedBlock:*(a1 + 56) cancelBlock:*(a1 + 48)])
                {
                  *(*(*(a1 + 112) + 8) + 24) += [v14 count];
                }

                else
                {
                  *(*(*(a1 + 64) + 8) + 24) = 0;
                }
              }

              else
              {
                v16 = *(*(a1 + 64) + 8);
                if (*(v16 + 24) == 1)
                {
                  v17 = (*(*(a1 + 48) + 16))() ^ 1;
                  v16 = *(*(a1 + 64) + 8);
                }

                else
                {
                  v17 = 0;
                }

                *(v16 + 24) = v17;
                if (*(*(*(a1 + 64) + 8) + 24) == 1)
                {
                  [*(*(*(a1 + 80) + 8) + 40) addObject:v8];
                }
              }

              v18 = [*(*(*(a1 + 72) + 8) + 40) objectForKeyedSubscript:v3];
              v19 = [v18 objectForKeyedSubscript:v8];
              [v19 removeAllObjects];

              v20 = [*(*(*(a1 + 88) + 8) + 40) objectForKeyedSubscript:v3];
              v21 = [v20 objectForKeyedSubscript:v8];
              [v21 removeAllObjects];

              LODWORD(v20) = *(*(*(a1 + 64) + 8) + 24);
              if (v20 != 1)
              {
                break;
              }
            }

            if (v5 == ++v7)
            {
              v5 = [v44 countByEnumeratingWithState:&v54 objects:v64 count:16];
              if (v5)
              {
                goto LABEL_9;
              }

              break;
            }
          }
        }

        if (*(*(*(a1 + 64) + 8) + 24) != 1)
        {
          break;
        }

        v2 = v42 + 1;
        if (v42 + 1 == v40)
        {
          v40 = [obj countByEnumeratingWithState:&v58 objects:v65 count:16];
          if (v40)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    if (*(*(*(a1 + 64) + 8) + 24) == 1)
    {
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v39 = *(*(*(a1 + 88) + 8) + 40);
      v43 = [v39 countByEnumeratingWithState:&v50 objects:v63 count:16];
      if (v43)
      {
        v41 = *v51;
LABEL_31:
        v22 = 0;
        while (1)
        {
          if (*v51 != v41)
          {
            objc_enumerationMutation(v39);
          }

          v45 = v22;
          v23 = *(*(&v50 + 1) + 8 * v22);
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          v49 = 0u;
          v24 = [*(*(*(a1 + 88) + 8) + 40) objectForKeyedSubscript:{v23, context}];
          v25 = [v24 countByEnumeratingWithState:&v46 objects:v62 count:16];
          if (v25)
          {
            v26 = v25;
            v27 = *v47;
LABEL_36:
            v28 = 0;
            while (1)
            {
              if (*v47 != v27)
              {
                objc_enumerationMutation(v24);
              }

              v29 = *(*(&v46 + 1) + 8 * v28);
              if (([*(*(*(a1 + 80) + 8) + 40) containsObject:v29] & 1) == 0)
              {
                v30 = [*(*(*(a1 + 88) + 8) + 40) objectForKeyedSubscript:v23];
                v31 = [v30 objectForKeyedSubscript:v29];
                v32 = [v31 allObjects];

                if ([*(a1 + 32) _updateCoreSpotlightItems:v32 bundleIdentifier:v29 protectionClass:v23 batchUpdatedBlock:*(a1 + 56) cancelBlock:*(a1 + 48)])
                {
                  *(*(*(a1 + 112) + 8) + 24) += [v32 count];
                }

                else
                {
                  *(*(*(a1 + 64) + 8) + 24) = 0;
                }

                v33 = [*(*(*(a1 + 88) + 8) + 40) objectForKeyedSubscript:v23];
                v34 = [v33 objectForKeyedSubscript:v29];
                [v34 removeAllObjects];

                LODWORD(v34) = *(*(*(a1 + 64) + 8) + 24);
                if (v34 != 1)
                {
                  break;
                }
              }

              if (v26 == ++v28)
              {
                v26 = [v24 countByEnumeratingWithState:&v46 objects:v62 count:16];
                if (v26)
                {
                  goto LABEL_36;
                }

                break;
              }
            }
          }

          if (*(*(*(a1 + 64) + 8) + 24) != 1)
          {
            break;
          }

          v22 = v45 + 1;
          if (v45 + 1 == v43)
          {
            v43 = [v39 countByEnumeratingWithState:&v50 objects:v63 count:16];
            if (v43)
            {
              goto LABEL_31;
            }

            break;
          }
        }
      }
    }

    objc_autoreleasePoolPop(context);
  }

  v35 = *MEMORY[0x277D85DE8];
}

void __125__SKGJob_Updates___runCSReindexForQueryString_queryContext_processorFlags_batchProcessedBlock_batchUpdatedBlock_cancelBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v187 = *MEMORY[0x277D85DE8];
  v3 = a2;
  *(*(*(a1 + 88) + 8) + 24) += [v3 count];
  v158 = objc_autoreleasePoolPush();
  v171 = 0u;
  v172 = 0u;
  v173 = 0u;
  v174 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v171 objects:v186 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v172;
    v159 = *v172;
    do
    {
      v7 = 0;
      v160 = v5;
      do
      {
        if (*v172 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v171 + 1) + 8 * v7);
        v9 = objc_autoreleasePoolPush();
        v10 = [v8 bundleID];

        if (!v10)
        {
          if (SKGLogGetCurrentLoggingLevel() >= 2)
          {
            v15 = SKGLogInit();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              __125__SKGJob_Updates___runCSReindexForQueryString_queryContext_processorFlags_batchProcessedBlock_batchUpdatedBlock_cancelBlock___block_invoke_2_cold_1(v185, v8);
            }

LABEL_13:
          }

LABEL_20:
          objc_autoreleasePoolPop(v9);
          goto LABEL_21;
        }

        v11 = [*(a1 + 32) bundleIDs];
        if ([v11 count])
        {
          v12 = [*(a1 + 32) bundleIDs];
          v13 = [v8 bundleID];
          v14 = [v12 containsObject:v13];

          if (!v14)
          {
            goto LABEL_20;
          }
        }

        else
        {
        }

        v16 = [*(a1 + 32) disableBundles];
        if ([v16 count])
        {
          v17 = [*(a1 + 32) disableBundles];
          v18 = [v8 bundleID];
          v19 = [v17 containsObject:v18];

          if (v19)
          {
            goto LABEL_20;
          }
        }

        else
        {
        }

        v20 = *(*(*(a1 + 96) + 8) + 40);
        v21 = [v8 bundleID];
        LOBYTE(v20) = [v20 containsObject:v21];

        if (v20)
        {
          goto LABEL_20;
        }

        v22 = [v8 attributeSet];
        v23 = [v22 attributeDictionary];

        v24 = [MEMORY[0x277D65798] sharedProcessor];
        v25 = [v24 copyStringValueFromRecord:v23 key:@"_kMDItemExternalID"];

        v26 = [v8 bundleID];
        v27 = [v26 isEqualToString:@"com.apple.mobilecal"];

        context = v9;
        if (v27)
        {
          v28 = getParentIdForCalendar(v25);

          v25 = v28;
        }

        v29 = [v25 UTF8String];
        v30 = strlen([v25 UTF8String]);
        v162 = MurmurHash3_x86_32(v29, v30);
        v31 = [MEMORY[0x277D65798] sharedProcessor];
        v32 = [v31 copyPersonaFromRecord:v23];

        v33 = [MEMORY[0x277D65798] sharedProcessor];
        v168 = v23;
        v170 = [v33 copyProtectionClassFromRecord:v23];

        v167 = v25;
        if (v25 && v32 && v170)
        {
          v34 = [*(a1 + 40) monitor];
          v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v162];
          v36 = [v8 bundleID];
          v37 = [v34 haveSeenItem:v35 bundle:v36 persona:v32 protectionClass:v170];

          if (v37)
          {
            v38 = [v8 bundleID];
            v39 = v167;
            v40 = [*(a1 + 40) context];
            v41 = [v38 hasPrefix:@"com.apple."];
            CurrentLoggingLevel = SKGLogGetCurrentLoggingLevel();
            v5 = v160;
            if (v41)
            {
              v15 = v168;
              if (CurrentLoggingLevel >= 4)
              {
                v43 = SKGLogUpdaterInit();
                if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                {
                  v44 = [v38 substringFromIndex:10];
                  v45 = [v40 logFullItemIDs];
                  *buf = 138412802;
                  v46 = &stru_2846CE8D8;
                  if (v45)
                  {
                    v46 = v39;
                  }

                  v180 = v44;
                  v181 = 1024;
                  v182 = v162;
                  v183 = 2112;
                  v184 = v46;
                  _os_log_impl(&dword_231B25000, v43, OS_LOG_TYPE_DEFAULT, "skipping item with bundle com.apple.%@ oid 0x%x (%@) since item is present in item monitor", buf, 0x1Cu);

                  v15 = v168;
                }

                goto LABEL_92;
              }
            }

            else
            {
              v15 = v168;
              if (CurrentLoggingLevel >= 4)
              {
                v43 = SKGLogUpdaterInit();
                if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                {
                  v152 = [v40 logFullItemIDs];
                  *buf = 138412802;
                  v153 = &stru_2846CE8D8;
                  if (v152)
                  {
                    v153 = v39;
                  }

                  v180 = v38;
                  v181 = 1024;
                  v182 = v162;
                  v183 = 2112;
                  v184 = v153;
                  _os_log_impl(&dword_231B25000, v43, OS_LOG_TYPE_DEFAULT, "skipping item with bundle %@ oid 0x%x (%@) since item is present in item monitor", buf, 0x1Cu);
                }

LABEL_92:
              }
            }

            ++*(*(*(a1 + 104) + 8) + 24);
            v6 = v159;
            v9 = context;
            goto LABEL_13;
          }

          v47 = [*(a1 + 40) monitor];
          v48 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v162];
          v49 = [v8 bundleID];
          [v47 addSeenItem:v48 bundle:v49 persona:v32 protectionClass:v170];
        }

        v161 = v32;
        v50 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v51 = objc_alloc_init(MEMORY[0x277CC34B8]);
        v52 = [MEMORY[0x277D65798] sharedProcessor];
        v53 = [v8 bundleID];
        v166 = v50;
        LODWORD(v50) = [v52 updateSKGReindexerAttributes:v50 record:v168 bundleID:v53 processorFlags:*(a1 + 192)];

        v54 = v170;
        v165 = v51;
        if (v50)
        {
          v55 = [v8 bundleID];
          v56 = v167;
          v57 = [*(a1 + 40) context];
          v58 = [v55 hasPrefix:@"com.apple."];
          v59 = SKGLogGetCurrentLoggingLevel();
          if (v58)
          {
            if (v59 >= 4)
            {
              v60 = SKGLogUpdaterInit();
              if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
              {
                v61 = [v55 substringFromIndex:10];
                v62 = [v57 logFullItemIDs];
                *buf = 138412802;
                v63 = &stru_2846CE8D8;
                if (v62)
                {
                  v63 = v56;
                }

                v180 = v61;
                v181 = 1024;
                v182 = v162;
                v183 = 2112;
                v184 = v63;
                _os_log_impl(&dword_231B25000, v60, OS_LOG_TYPE_DEFAULT, "Request reindex of item with bundle com.apple.%@ oid 0x%x (%@)", buf, 0x1Cu);
              }

              goto LABEL_48;
            }
          }

          else if (v59 >= 4)
          {
            v60 = SKGLogUpdaterInit();
            if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
            {
              v64 = [v57 logFullItemIDs];
              *buf = 138412802;
              v65 = &stru_2846CE8D8;
              if (v64)
              {
                v65 = v56;
              }

              v180 = v55;
              v181 = 1024;
              v182 = v162;
              v183 = 2112;
              v184 = v65;
              _os_log_impl(&dword_231B25000, v60, OS_LOG_TYPE_DEFAULT, "Request reindex of item with bundle %@ oid 0x%x (%@)", buf, 0x1Cu);
            }

LABEL_48:
          }

          v66 = [*(*(*(a1 + 112) + 8) + 40) objectForKeyedSubscript:v170];

          if (!v66)
          {
            v67 = objc_alloc_init(MEMORY[0x277CBEB38]);
            [*(*(*(a1 + 112) + 8) + 40) setObject:v67 forKeyedSubscript:v170];
          }

          v68 = [*(*(*(a1 + 112) + 8) + 40) objectForKeyedSubscript:v170];
          v69 = [v8 bundleID];
          v70 = [v68 objectForKeyedSubscript:v69];

          if (!v70)
          {
            v71 = objc_alloc_init(MEMORY[0x277CBEB58]);
            v72 = [*(*(*(a1 + 112) + 8) + 40) objectForKeyedSubscript:v170];
            v73 = [v8 bundleID];
            [v72 setObject:v71 forKeyedSubscript:v73];
          }

          v74 = [*(*(*(a1 + 112) + 8) + 40) objectForKeyedSubscript:v170];
          v75 = [v8 bundleID];
          v76 = [v74 objectForKeyedSubscript:v75];
          v77 = [v8 uniqueIdentifier];
          [v76 addObject:v77];

          v177 = @"_kMDItemUpdaterVersion";
          v78 = MEMORY[0x277CCABB0];
          v79 = [MEMORY[0x277D657A0] sharedContext];
          v80 = [v78 numberWithInteger:{objc_msgSend(v79, "textVersion")}];
          v178 = v80;
          v81 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v178 forKeys:&v177 count:1];
          v51 = v165;
          [v165 addAttributesFromDictionary:v81];

          v175 = @"_kMDItemUpdaterLastRequested";
          v82 = MEMORY[0x277CCABB0];
          v83 = [MEMORY[0x277D657A0] sharedContext];
          v84 = [v82 numberWithInteger:{objc_msgSend(v83, "currentRedonationDate")}];
          v176 = v84;
          v85 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v176 forKeys:&v175 count:1];
          [v165 addAttributesFromDictionary:v85];

          v86 = [MEMORY[0x277D65798] sharedProcessor];
          v87 = [v86 copyNumberValueFromRecord:v168 key:@"_kMDItemUpdaterVersion"];

          if (v87)
          {
            v88 = [v87 intValue];
            v89 = [MEMORY[0x277D657A0] sharedContext];
            v90 = [v89 textVersion];

            v91 = v90 == v88;
            v51 = v165;
            if (v91)
            {
              v92 = &unk_2846E86C8;
            }

            else
            {
              v92 = &unk_2846E86A0;
            }
          }

          else
          {
            v92 = &unk_2846E86A0;
          }

          [v51 addAttributesFromDictionary:v92];

          v54 = v170;
        }

        [v51 addAttributesFromDictionary:v166];
        v93 = [v8 uniqueIdentifier];
        v94 = [v8 bundleID];
        v95 = itemUpdateForAttributeSet(v51, v93, v94);

        v96 = [*(*(*(a1 + 120) + 8) + 40) objectForKeyedSubscript:v54];

        if (!v96)
        {
          v97 = [MEMORY[0x277CBEB38] dictionary];
          [*(*(*(a1 + 120) + 8) + 40) setObject:v97 forKeyedSubscript:v54];
        }

        v98 = [*(*(*(a1 + 120) + 8) + 40) objectForKeyedSubscript:v54];
        v99 = [v8 bundleID];
        v100 = [v98 objectForKeyedSubscript:v99];

        if (!v100)
        {
          v101 = objc_alloc_init(MEMORY[0x277CBEB58]);
          v102 = [*(*(*(a1 + 120) + 8) + 40) objectForKeyedSubscript:v54];
          v103 = [v8 bundleID];
          [v102 setObject:v101 forKeyedSubscript:v103];
        }

        v104 = [*(*(*(a1 + 120) + 8) + 40) objectForKeyedSubscript:v54];
        v105 = [v8 bundleID];
        v106 = [v104 objectForKeyedSubscript:v105];
        [v106 addObject:v95];

        v107 = [*(*(*(a1 + 112) + 8) + 40) objectForKeyedSubscript:v54];
        v108 = [v8 bundleID];
        v109 = [v107 objectForKeyedSubscript:v108];
        v163 = v95;
        if ([v109 count] >= 0x20)
        {
        }

        else
        {
          v110 = [*(*(*(a1 + 120) + 8) + 40) objectForKeyedSubscript:v54];
          v111 = [v8 bundleID];
          v112 = [v110 objectForKeyedSubscript:v111];
          v113 = [v112 count];

          v114 = v113 >= 0x20;
          v54 = v170;
          if (!v114)
          {
            goto LABEL_77;
          }
        }

        v115 = [*(*(*(a1 + 112) + 8) + 40) objectForKeyedSubscript:v54];
        v116 = [v8 bundleID];
        v117 = [v115 objectForKeyedSubscript:v116];
        v118 = [v117 allObjects];

        v119 = [*(*(*(a1 + 120) + 8) + 40) objectForKeyedSubscript:v54];
        v120 = [v8 bundleID];
        v121 = [v119 objectForKeyedSubscript:v120];
        v122 = [v121 allObjects];

        v123 = *(a1 + 40);
        v124 = *(*(*(a1 + 128) + 8) + 40);
        v125 = [v8 bundleID];
        [v123 _markReindexRequestsAsSeen:v124 bundleID:v125 count:{objc_msgSend(v118, "count")}];

        v126 = *(a1 + 40);
        v127 = [v8 bundleID];
        LODWORD(v126) = [v126 _reindexCoreSpotlightIdentifiers:v118 bundleIdentifier:v127 protectionClass:v54 batchProcessedBlock:*(a1 + 56) cancelBlock:*(a1 + 64)];

        if (v126)
        {
          *(*(*(a1 + 136) + 8) + 24) += [v118 count];
          v128 = +[SKGActivityJournal sharedJournal];
          v129 = [v8 bundleID];
          [v128 addEvent:54 bundleID:v129 identifiers:v118];

          v130 = *(a1 + 40);
          v131 = [v8 bundleID];
          LODWORD(v130) = [v130 _updateCoreSpotlightItems:v122 bundleIdentifier:v131 protectionClass:v54 batchUpdatedBlock:*(a1 + 72) cancelBlock:*(a1 + 64)];

          if (v130)
          {
            *(*(*(a1 + 144) + 8) + 24) += [v122 count];
          }

          else
          {
            *(*(*(a1 + 152) + 8) + 24) = 0;
          }
        }

        else
        {
          v132 = *(*(a1 + 152) + 8);
          if (*(v132 + 24) == 1)
          {
            v133 = (*(*(a1 + 64) + 16))() ^ 1;
            v132 = *(*(a1 + 152) + 8);
          }

          else
          {
            v133 = 0;
          }

          *(v132 + 24) = v133;
          if (*(*(*(a1 + 152) + 8) + 24) == 1)
          {
            v134 = *(*(*(a1 + 96) + 8) + 40);
            v135 = [v8 bundleID];
            [v134 addObject:v135];
          }
        }

        v136 = [*(*(*(a1 + 112) + 8) + 40) objectForKeyedSubscript:v54];
        v137 = [v8 bundleID];
        v138 = [v136 objectForKeyedSubscript:v137];
        [v138 removeAllObjects];

        v139 = [*(*(*(a1 + 120) + 8) + 40) objectForKeyedSubscript:v54];
        v140 = [v8 bundleID];
        v141 = [v139 objectForKeyedSubscript:v140];
        [v141 removeAllObjects];

LABEL_77:
        ++*(*(*(a1 + 160) + 8) + 24);
        v142 = [*(a1 + 40) context];
        if ([v142 maxItemCountPerJob] <= 0)
        {

          v6 = v159;
          v5 = v160;
          v147 = v161;
          v148 = v163;
        }

        else
        {
          v143 = *(*(*(a1 + 160) + 8) + 24);
          v144 = [*(a1 + 40) context];
          v145 = [v144 maxItemCountPerJob];

          v146 = v143 < v145;
          v6 = v159;
          v5 = v160;
          v147 = v161;
          v148 = v163;
          if (!v146)
          {
            v149 = [*(a1 + 40) context];
            [v149 logFlag:29 message:@"updater max items"];

            *(*(*(a1 + 168) + 8) + 24) = 1;
          }
        }

        v150 = *(*(a1 + 152) + 8);
        if (*(v150 + 24) == 1)
        {
          v151 = (*(*(a1 + 64) + 16))() ^ 1;
          v150 = *(*(a1 + 152) + 8);
        }

        else
        {
          v151 = 0;
        }

        *(v150 + 24) = v151;

        objc_autoreleasePoolPop(context);
        if ((*(*(*(a1 + 168) + 8) + 24) & 1) != 0 || (*(*(*(a1 + 152) + 8) + 24) & 1) == 0)
        {
          goto LABEL_95;
        }

LABEL_21:
        ++v7;
      }

      while (v5 != v7);
      v154 = [obj countByEnumeratingWithState:&v171 objects:v186 count:16];
      v5 = v154;
    }

    while (v154);
  }

LABEL_95:

  WeakRetained = objc_loadWeakRetained((a1 + 184));
  v156 = WeakRetained;
  if ((*(*(*(a1 + 168) + 8) + 24) & 1) != 0 || (*(*(*(a1 + 152) + 8) + 24) & 1) == 0)
  {
    (*(*(a1 + 80) + 16))();
    [v156 cancel];
    *(*(*(a1 + 176) + 8) + 24) = 1;
    dispatch_group_leave(*(a1 + 48));
  }

  else
  {
    [WeakRetained poll];
  }

  objc_autoreleasePoolPop(v158);
  v157 = *MEMORY[0x277D85DE8];
}

void __125__SKGJob_Updates___runCSReindexForQueryString_queryContext_processorFlags_batchProcessedBlock_batchUpdatedBlock_cancelBlock___block_invoke_167(void *a1)
{
  if (*(*(a1[6] + 8) + 24) == 1)
  {
    *(*(a1[7] + 8) + 24) = 1;
  }

  if ((*(*(a1[8] + 8) + 24) & 1) == 0)
  {
    v2 = a1[5];
    (*(a1[5] + 16))();
    v3 = a1[4];

    dispatch_group_leave(v3);
  }
}

- (BOOL)requestCSReindexForClientWithBundleIdentifier:(id)identifier batchProcessedBlock:(id)block batchUpdatedBlock:(id)updatedBlock cancelBlock:(id)cancelBlock
{
  v79[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  blockCopy = block;
  updatedBlockCopy = updatedBlock;
  cancelBlockCopy = cancelBlock;
  context = objc_autoreleasePoolPush();
  mEMORY[0x277D657A0] = [MEMORY[0x277D657A0] sharedContext];
  reindexExcludeBundles = [mEMORY[0x277D657A0] reindexExcludeBundles];

  if ([reindexExcludeBundles containsObject:identifierCopy])
  {
    goto LABEL_4;
  }

  context = [(SKGJob *)self context];
  doNotUpdateList = [context doNotUpdateList];
  selfCopy = self;
  if (![doNotUpdateList count])
  {

LABEL_6:
    v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v23 = objc_alloc_init(MEMORY[0x277CBEB58]);
    mEMORY[0x277D657A0]2 = [MEMORY[0x277D657A0] sharedContext];
    fetchAttributes = [mEMORY[0x277D657A0]2 fetchAttributes];
    [v23 addObjectsFromArray:fetchAttributes];

    mEMORY[0x277D657A0]3 = [MEMORY[0x277D657A0] sharedContext];
    LODWORD(fetchAttributes) = [mEMORY[0x277D657A0]3 enableEmbeddings];

    v72 = v22;
    v70 = blockCopy;
    if (fetchAttributes)
    {
      mEMORY[0x277D657A0]4 = [MEMORY[0x277D657A0] sharedContext];
      embeddingExcludeBundles = [mEMORY[0x277D657A0]4 embeddingExcludeBundles];
      v29 = [embeddingExcludeBundles containsObject:identifierCopy];

      if (v29)
      {
        v30 = 0;
        v22 = v72;
      }

      else
      {
        mEMORY[0x277D657A0]5 = [MEMORY[0x277D657A0] sharedContext];
        embeddingFetchAttributes = [mEMORY[0x277D657A0]5 embeddingFetchAttributes];
        [v23 addObjectsFromArray:embeddingFetchAttributes];

        v79[0] = identifierCopy;
        v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v79 count:1];
        v34 = [SKGTextQueryManager queryForEmbeddingsUpdatesIncludeBundles:v33];
        v22 = v72;
        [v72 addObject:v34];

        v30 = 2;
      }
    }

    else
    {
      v30 = 0;
    }

    mEMORY[0x277D657A0]6 = [MEMORY[0x277D657A0] sharedContext];
    enableKeyphrases = [mEMORY[0x277D657A0]6 enableKeyphrases];

    if (enableKeyphrases)
    {
      mEMORY[0x277D657A0]7 = [MEMORY[0x277D657A0] sharedContext];
      v38 = [mEMORY[0x277D657A0]7 keyphrasesSupportsBundle:identifierCopy domainID:0];

      if (v38)
      {
        v30 |= 4uLL;
        mEMORY[0x277D657A0]8 = [MEMORY[0x277D657A0] sharedContext];
        keyphraseFetchAttributes = [mEMORY[0x277D657A0]8 keyphraseFetchAttributes];
        [v23 addObjectsFromArray:keyphraseFetchAttributes];

        v78 = identifierCopy;
        v41 = [MEMORY[0x277CBEA60] arrayWithObjects:&v78 count:1];
        v42 = [SKGTextQueryManager queryForKeyphrasesUpdatesIncludeBundles:v41];
        [v22 addObject:v42];
      }
    }

    mEMORY[0x277D657A0]9 = [MEMORY[0x277D657A0] sharedContext];
    enableSuggestedEvents = [mEMORY[0x277D657A0]9 enableSuggestedEvents];

    if (enableSuggestedEvents)
    {
      mEMORY[0x277D657A0]10 = [MEMORY[0x277D657A0] sharedContext];
      suggestedEventsIncludeBundles = [mEMORY[0x277D657A0]10 suggestedEventsIncludeBundles];
      v47 = [suggestedEventsIncludeBundles containsObject:identifierCopy];

      if (v47)
      {
        v30 |= 0x10uLL;
        mEMORY[0x277D657A0]11 = [MEMORY[0x277D657A0] sharedContext];
        suggestedEventsFetchAttributes = [mEMORY[0x277D657A0]11 suggestedEventsFetchAttributes];
        [v23 addObjectsFromArray:suggestedEventsFetchAttributes];

        v77 = identifierCopy;
        v50 = [MEMORY[0x277CBEA60] arrayWithObjects:&v77 count:1];
        v51 = [SKGTextQueryManager queryForSuggestedEventsUpdatesIncludeBundles:v50];
        [v72 addObject:v51];
      }
    }

    mEMORY[0x277D657A0]12 = [MEMORY[0x277D657A0] sharedContext];
    enableDocumentUnderstanding = [mEMORY[0x277D657A0]12 enableDocumentUnderstanding];

    if (enableDocumentUnderstanding && ([MEMORY[0x277D657A0] sharedContext], v54 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v54, "docUnderstandingIncludeBundles"), v55 = objc_claimAutoreleasedReturnValue(), v56 = objc_msgSend(v55, "containsObject:", identifierCopy), v55, v54, v56))
    {
      v30 |= 0x20uLL;
      mEMORY[0x277D657A0]13 = [MEMORY[0x277D657A0] sharedContext];
      docUnderstandingFetchAttributes = [mEMORY[0x277D657A0]13 docUnderstandingFetchAttributes];
      [v23 addObjectsFromArray:docUnderstandingFetchAttributes];

      v76 = identifierCopy;
      v59 = [MEMORY[0x277CBEA60] arrayWithObjects:&v76 count:1];
      v60 = [SKGTextQueryManager queryForDocUnderstandingUpdatesIncludeBundles:v59];
      [v72 addObject:v60];
    }

    else if (!v30)
    {
      v21 = 1;
      blockCopy = v70;
      v65 = v72;
      goto LABEL_23;
    }

    v75 = identifierCopy;
    v61 = [MEMORY[0x277CBEA60] arrayWithObjects:&v75 count:1];
    v62 = objc_alloc_init(MEMORY[0x277CC34A0]);
    allObjects = [v23 allObjects];
    [v62 setFetchAttributes:allObjects];

    [v62 setBundleIDs:v61];
    mEMORY[0x277D657A0]14 = [MEMORY[0x277D657A0] sharedContext];
    v65 = v72;
    v66 = +[SKGTextQueryManager queryForPipelineUpdatesWithTaskQueries:excludeBundles:throttleHorizonDate:](SKGTextQueryManager, "queryForPipelineUpdatesWithTaskQueries:excludeBundles:throttleHorizonDate:", v72, 0, [mEMORY[0x277D657A0]14 redonationThrottleHorizonDate]);

    v67 = v30;
    blockCopy = v70;
    v21 = [(SKGJob *)selfCopy _runCSReindexForQueryString:v66 queryContext:v62 processorFlags:v67 batchProcessedBlock:v70 batchUpdatedBlock:updatedBlockCopy cancelBlock:cancelBlockCopy];

LABEL_23:
    goto LABEL_24;
  }

  [(SKGJob *)self context];
  v18 = v17 = blockCopy;
  doNotUpdateList2 = [v18 doNotUpdateList];
  v20 = [doNotUpdateList2 containsObject:identifierCopy];

  blockCopy = v17;
  if ((v20 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_4:
  v21 = 1;
LABEL_24:

  objc_autoreleasePoolPop(context);
  v68 = *MEMORY[0x277D85DE8];
  return v21;
}

- (BOOL)requestCSReindexWithProtectionClasses:(id)classes batchProcessedBlock:(id)block batchUpdatedBlock:(id)updatedBlock cancelBlock:(id)cancelBlock
{
  classesCopy = classes;
  blockCopy = block;
  updatedBlockCopy = updatedBlock;
  cancelBlockCopy = cancelBlock;
  mEMORY[0x277D657A0] = [MEMORY[0x277D657A0] sharedContext];
  enableKeyphrases = [mEMORY[0x277D657A0] enableKeyphrases];

  mEMORY[0x277D657A0]2 = [MEMORY[0x277D657A0] sharedContext];
  enableEmbeddings = [mEMORY[0x277D657A0]2 enableEmbeddings];

  mEMORY[0x277D657A0]3 = [MEMORY[0x277D657A0] sharedContext];
  enableSuggestedEvents = [mEMORY[0x277D657A0]3 enableSuggestedEvents];

  mEMORY[0x277D657A0]4 = [MEMORY[0x277D657A0] sharedContext];
  enableDocumentUnderstanding = [mEMORY[0x277D657A0]4 enableDocumentUnderstanding];

  if ((enableEmbeddings & 1) != 0 || (enableKeyphrases & 1) != 0 || (enableSuggestedEvents & 1) != 0 || enableDocumentUnderstanding)
  {
    if (enableEmbeddings)
    {
      v23 = 16;
    }

    else
    {
      v23 = 0;
    }

    if (enableKeyphrases)
    {
      v23 |= 0x20u;
    }

    if (enableSuggestedEvents)
    {
      v23 |= 0x80u;
    }

    if (enableDocumentUnderstanding)
    {
      v24 = v23 | 0x100;
    }

    else
    {
      v24 = v23;
    }

    v22 = [(SKGJob *)self requestCSReindexWithProtectionClasses:classesCopy flags:v24 batchProcessedBlock:blockCopy batchUpdatedBlock:updatedBlockCopy cancelBlock:cancelBlockCopy];
  }

  else
  {
    v22 = 1;
  }

  return v22;
}

- (BOOL)requestCSReindexWithProtectionClasses:(id)classes flags:(unsigned int)flags batchProcessedBlock:(id)block batchUpdatedBlock:(id)updatedBlock cancelBlock:(id)cancelBlock
{
  flagsCopy = flags;
  v79 = *MEMORY[0x277D85DE8];
  classesCopy = classes;
  blockCopy = block;
  updatedBlockCopy = updatedBlock;
  cancelBlockCopy = cancelBlock;
  v13 = objc_autoreleasePoolPush();
  context = [(SKGJob *)self context];
  excludeBundles = [context excludeBundles];

  selfCopy = self;
  context2 = [(SKGJob *)self context];
  includeBundles = [context2 includeBundles];

  v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19 = objc_alloc_init(MEMORY[0x277CBEB58]);
  mEMORY[0x277D657A0] = [MEMORY[0x277D657A0] sharedContext];
  fetchAttributes = [mEMORY[0x277D657A0] fetchAttributes];
  [v19 addObjectsFromArray:fetchAttributes];

  context = v13;
  if ((flagsCopy & 0x10) != 0)
  {
    mEMORY[0x277D657A0]2 = [MEMORY[0x277D657A0] sharedContext];
    embeddingFetchAttributes = [mEMORY[0x277D657A0]2 embeddingFetchAttributes];
    [v19 addObjectsFromArray:embeddingFetchAttributes];

    mEMORY[0x277D657A0]3 = [MEMORY[0x277D657A0] sharedContext];
    embeddingExcludeBundles = [mEMORY[0x277D657A0]3 embeddingExcludeBundles];
    v27 = [SKGTextQueryManager queryForEmbeddingsUpdatesExcludeBundles:embeddingExcludeBundles];
    [v18 addObject:v27];

    v22 = 2;
    if ((flagsCopy & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v22 = 0;
  if ((flagsCopy & 0x20) != 0)
  {
LABEL_5:
    v22 |= 4uLL;
    mEMORY[0x277D657A0]4 = [MEMORY[0x277D657A0] sharedContext];
    keyphraseFetchAttributes = [mEMORY[0x277D657A0]4 keyphraseFetchAttributes];
    [v19 addObjectsFromArray:keyphraseFetchAttributes];

    mEMORY[0x277D657A0]5 = [MEMORY[0x277D657A0] sharedContext];
    keyphraseExcludeBundles = [mEMORY[0x277D657A0]5 keyphraseExcludeBundles];
    v32 = [SKGTextQueryManager queryForKeyphrasesUpdatesExcludeBundles:keyphraseExcludeBundles];
    [v18 addObject:v32];
  }

LABEL_6:
  if ((flagsCopy & 0x80) != 0)
  {
    v22 |= 0x10uLL;
    mEMORY[0x277D657A0]6 = [MEMORY[0x277D657A0] sharedContext];
    suggestedEventsFetchAttributes = [mEMORY[0x277D657A0]6 suggestedEventsFetchAttributes];
    [v19 addObjectsFromArray:suggestedEventsFetchAttributes];

    mEMORY[0x277D657A0]7 = [MEMORY[0x277D657A0] sharedContext];
    suggestedEventsIncludeBundles = [mEMORY[0x277D657A0]7 suggestedEventsIncludeBundles];
    v37 = [SKGTextQueryManager queryForSuggestedEventsUpdatesIncludeBundles:suggestedEventsIncludeBundles];
    [v18 addObject:v37];
  }

  if ((flagsCopy & 0x100) != 0)
  {
    v22 |= 0x20uLL;
    mEMORY[0x277D657A0]8 = [MEMORY[0x277D657A0] sharedContext];
    docUnderstandingFetchAttributes = [mEMORY[0x277D657A0]8 docUnderstandingFetchAttributes];
    [v19 addObjectsFromArray:docUnderstandingFetchAttributes];

    mEMORY[0x277D657A0]9 = [MEMORY[0x277D657A0] sharedContext];
    docUnderstandingIncludeBundles = [mEMORY[0x277D657A0]9 docUnderstandingIncludeBundles];
    v46 = [SKGTextQueryManager queryForDocUnderstandingUpdatesIncludeBundles:docUnderstandingIncludeBundles];
    [v18 addObject:v46];

    v38 = classesCopy;
  }

  else
  {
    v38 = classesCopy;
    if (!v22)
    {
      v39 = 1;
      v41 = cancelBlockCopy;
      v40 = updatedBlockCopy;
      goto LABEL_27;
    }
  }

  v68 = v18;
  v47 = objc_alloc_init(MEMORY[0x277CC34A0]);
  [v47 setProtectionClasses:v38];
  [v47 setDisableBundles:excludeBundles];
  v67 = v19;
  v48 = [(SKGJob *)selfCopy _removingRequiredAttributes:v19];
  allObjects = [v48 allObjects];
  [v47 setFetchAttributes:allObjects];

  context3 = [(SKGJob *)selfCopy context];
  doNotUpdateList = [context3 doNotUpdateList];
  v52 = [doNotUpdateList count];

  if (v52)
  {
    v66 = blockCopy;
    v53 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    context4 = [(SKGJob *)selfCopy context];
    doNotUpdateList2 = [context4 doNotUpdateList];

    v56 = [doNotUpdateList2 countByEnumeratingWithState:&v74 objects:v78 count:16];
    if (v56)
    {
      v57 = v56;
      v58 = *v75;
      do
      {
        for (i = 0; i != v57; ++i)
        {
          if (*v75 != v58)
          {
            objc_enumerationMutation(doNotUpdateList2);
          }

          v60 = *(*(&v74 + 1) + 8 * i);
          if (([excludeBundles containsObject:{v60, v66}] & 1) == 0 && (!objc_msgSend(includeBundles, "count") || objc_msgSend(includeBundles, "containsObject:", v60)))
          {
            [v53 addObject:v60];
          }
        }

        v57 = [doNotUpdateList2 countByEnumeratingWithState:&v74 objects:v78 count:16];
      }

      while (v57);
    }

    blockCopy = v66;
  }

  else
  {
    v53 = 0;
  }

  mEMORY[0x277D657A0]10 = [MEMORY[0x277D657A0] sharedContext];
  v62 = +[SKGTextQueryManager queryForPipelineUpdatesWithTaskQueries:excludeBundles:throttleHorizonDate:](SKGTextQueryManager, "queryForPipelineUpdatesWithTaskQueries:excludeBundles:throttleHorizonDate:", v68, v53, [mEMORY[0x277D657A0]10 redonationThrottleHorizonDate]);

  v40 = updatedBlockCopy;
  v63 = v22;
  v41 = cancelBlockCopy;
  v39 = [(SKGJob *)selfCopy _runCSReindexForQueryString:v62 queryContext:v47 processorFlags:v63 batchProcessedBlock:blockCopy batchUpdatedBlock:updatedBlockCopy cancelBlock:cancelBlockCopy];

  v18 = v68;
  v19 = v67;
  v38 = classesCopy;
LABEL_27:

  objc_autoreleasePoolPop(context);
  v64 = *MEMORY[0x277D85DE8];
  return v39;
}

- (BOOL)_runCSCleanupForQueryString:(id)string trackingAttributes:(id)attributes queryContext:(id)context batchUpdatedBlock:(id)block cancelBlock:(id)cancelBlock
{
  v94 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  attributesCopy = attributes;
  contextCopy = context;
  blockCopy = block;
  cancelBlockCopy = cancelBlock;
  if (stringCopy)
  {
    [contextCopy setDisableResultStreaming:1];
    [contextCopy setMaximumBatchSize:100];
    context = [(SKGJob *)self context];
    maxItemCountPerBatch = [context maxItemCountPerBatch];

    if (maxItemCountPerBatch >= 1)
    {
      context2 = [(SKGJob *)self context];
      [contextCopy setMaximumBatchSize:{objc_msgSend(context2, "maxItemCountPerBatch")}];
    }

    context3 = [(SKGJob *)self context];
    maxItemCountPerJob = [context3 maxItemCountPerJob];

    if (maxItemCountPerJob >= 1)
    {
      context4 = [(SKGJob *)self context];
      [contextCopy setMaxCount:{objc_msgSend(context4, "maxItemCountPerJob")}];
    }

    v22 = [objc_alloc(MEMORY[0x277CC3498]) initWithQueryString:stringCopy queryContext:contextCopy];
    v23 = dispatch_group_create();
    objc_initWeak(&location, v22);
    v83 = 0;
    v84 = &v83;
    v85 = 0x2020000000;
    v86 = 0;
    v81[0] = 0;
    v81[1] = v81;
    v81[2] = 0x2020000000;
    v82 = 1;
    v79[0] = 0;
    v79[1] = v79;
    v79[2] = 0x2020000000;
    v80 = 0;
    v77 = 0;
    v78[0] = &v77;
    v78[1] = 0x2020000000;
    v78[2] = 0;
    v73 = 0;
    v74 = &v73;
    v75 = 0x2020000000;
    v76 = 0;
    v69 = 0;
    v70 = &v69;
    v71 = 0x2020000000;
    v72 = 0;
    v68[0] = 0;
    v68[1] = v68;
    v68[2] = 0x2020000000;
    v68[3] = 0;
    v66[0] = 0;
    v66[1] = v66;
    v66[2] = 0x3032000000;
    v66[3] = __Block_byref_object_copy__18;
    v66[4] = __Block_byref_object_dispose__18;
    v67 = objc_alloc_init(MEMORY[0x277CBEB38]);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __109__SKGJob_Updates___runCSCleanupForQueryString_trackingAttributes_queryContext_batchUpdatedBlock_cancelBlock___block_invoke;
    aBlock[3] = &unk_27893EAB8;
    v64 = v81;
    v65 = v66;
    aBlock[4] = self;
    v62 = blockCopy;
    v24 = cancelBlockCopy;
    v63 = v24;
    v25 = _Block_copy(aBlock);
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __109__SKGJob_Updates___runCSCleanupForQueryString_trackingAttributes_queryContext_batchUpdatedBlock_cancelBlock___block_invoke_2;
    v46[3] = &unk_27893EAE0;
    v52 = &v77;
    v53 = &v73;
    v47 = attributesCopy;
    selfCopy = self;
    v54 = &v69;
    v55 = v66;
    v26 = v25;
    v50 = v26;
    v56 = v81;
    v51 = v24;
    v57 = v68;
    v58 = &v83;
    objc_copyWeak(&v60, &location);
    v59 = v79;
    v27 = v23;
    v49 = v27;
    [v22 setFoundItemsHandler:v46];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __109__SKGJob_Updates___runCSCleanupForQueryString_trackingAttributes_queryContext_batchUpdatedBlock_cancelBlock___block_invoke_179;
    v40[3] = &unk_27893EA90;
    v43 = v81;
    v44 = &v83;
    v45 = v79;
    v28 = v26;
    v42 = v28;
    v29 = v27;
    v41 = v29;
    [v22 setCompletionHandler:v40];
    dispatch_group_enter(v29);
    context5 = [(SKGJob *)self context];
    [context5 logSignpost:9 message:@"starting batch cleanup"];

    [v22 start];
    [v22 poll];
    context6 = [(SKGJob *)self context];
    [context6 logSignpost:10 message:@"end batch cleanup"];

    dispatch_group_wait(v29, 0xFFFFFFFFFFFFFFFFLL);
    if (SKGLogGetCurrentLoggingLevel() >= 7)
    {
      v32 = SKGLogInit();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        [SKGJob(Updates) _runCSCleanupForQueryString:v78 trackingAttributes:stringCopy queryContext:v32 batchUpdatedBlock:? cancelBlock:?];
      }
    }

    if (SKGLogGetCurrentLoggingLevel() >= 4)
    {
      v33 = SKGLogInit();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = v70[3];
        v35 = v74[3];
        *buf = 134218498;
        v89 = v34;
        v90 = 2048;
        v91 = v35;
        v92 = 2112;
        v93 = stringCopy;
        _os_log_impl(&dword_231B25000, v33, OS_LOG_TYPE_DEFAULT, "=== Cleaned up %llu items [of %llu items seen] for query %@", buf, 0x20u);
      }
    }

    v36 = *(v84 + 24);

    objc_destroyWeak(&v60);
    _Block_object_dispose(v66, 8);

    _Block_object_dispose(v68, 8);
    _Block_object_dispose(&v69, 8);
    _Block_object_dispose(&v73, 8);
    _Block_object_dispose(&v77, 8);
    _Block_object_dispose(v79, 8);
    _Block_object_dispose(v81, 8);
    _Block_object_dispose(&v83, 8);
    objc_destroyWeak(&location);
  }

  else
  {
    v36 = 1;
  }

  v37 = *MEMORY[0x277D85DE8];
  return v36 & 1;
}

void __109__SKGJob_Updates___runCSCleanupForQueryString_trackingAttributes_queryContext_batchUpdatedBlock_cancelBlock___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    context = objc_autoreleasePoolPush();
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = *(*(*(a1 + 64) + 8) + 40);
    v19 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v19)
    {
      v18 = *v26;
LABEL_4:
      v2 = 0;
      while (1)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = v2;
        v3 = *(*(&v25 + 1) + 8 * v2);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v4 = [*(*(*(a1 + 64) + 8) + 40) objectForKeyedSubscript:v3];
        v5 = [v4 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v5)
        {
          v6 = v5;
          v7 = *v22;
LABEL_9:
          v8 = 0;
          while (1)
          {
            if (*v22 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v9 = *(*(&v21 + 1) + 8 * v8);
            v10 = [*(*(*(a1 + 64) + 8) + 40) objectForKeyedSubscript:v3];
            v11 = [v10 objectForKeyedSubscript:v9];
            v12 = [v11 allObjects];

            *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) _updateCoreSpotlightItems:v12 bundleIdentifier:v9 protectionClass:v3 batchUpdatedBlock:*(a1 + 40) cancelBlock:*(a1 + 48)];
            v13 = [*(*(*(a1 + 64) + 8) + 40) objectForKeyedSubscript:v3];
            v14 = [v13 objectForKeyedSubscript:v9];
            [v14 removeAllObjects];

            LODWORD(v13) = *(*(*(a1 + 56) + 8) + 24);
            if (v13 != 1)
            {
              break;
            }

            if (v6 == ++v8)
            {
              v6 = [v4 countByEnumeratingWithState:&v21 objects:v29 count:16];
              if (v6)
              {
                goto LABEL_9;
              }

              break;
            }
          }
        }

        if (*(*(*(a1 + 56) + 8) + 24) != 1)
        {
          break;
        }

        v2 = v20 + 1;
        if (v20 + 1 == v19)
        {
          v19 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
          if (v19)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    objc_autoreleasePoolPop(context);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __109__SKGJob_Updates___runCSCleanupForQueryString_trackingAttributes_queryContext_batchUpdatedBlock_cancelBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v116 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v89 = objc_autoreleasePoolPush();
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v103 objects:v115 count:16];
  if (!v4)
  {
    goto LABEL_69;
  }

  v5 = v4;
  v6 = *v104;
  v7 = *MEMORY[0x277CBEEE8];
  v90 = *v104;
  do
  {
    v8 = 0;
    v91 = v5;
    do
    {
      if (*v104 != v6)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v103 + 1) + 8 * v8);
      v10 = objc_autoreleasePoolPush();
      v11 = [v9 bundleID];

      if (!v11)
      {
        if (SKGLogGetCurrentLoggingLevel() >= 2)
        {
          v13 = SKGLogInit();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            __125__SKGJob_Updates___runCSReindexForQueryString_queryContext_processorFlags_batchProcessedBlock_batchUpdatedBlock_cancelBlock___block_invoke_2_cold_1(v114, v9);
          }

LABEL_23:
        }

        objc_autoreleasePoolPop(v10);
        goto LABEL_59;
      }

      context = v10;
      v12 = [v9 attributeSet];
      v13 = [v12 attributeDictionary];

      v14 = *(a1 + 32);
      v15 = MEMORY[0x277CBEB98];
      v16 = [v13 allKeys];
      v17 = [v15 setWithArray:v16];
      LOBYTE(v14) = [v14 intersectsSet:v17];

      if ((v14 & 1) == 0)
      {
        ++*(*(*(a1 + 72) + 8) + 24);
LABEL_22:
        v10 = context;
        goto LABEL_23;
      }

      ++*(*(*(a1 + 80) + 8) + 24);
      v18 = [MEMORY[0x277D65798] sharedProcessor];
      v19 = [v18 copyStringValueFromRecord:v13 key:@"_kMDItemExternalID"];

      v20 = [v19 UTF8String];
      v21 = strlen([v19 UTF8String]);
      v94 = MurmurHash3_x86_32(v20, v21);
      v22 = [MEMORY[0x277D65798] sharedProcessor];
      v96 = [v22 copyPersonaFromRecord:v13];

      v23 = [MEMORY[0x277D65798] sharedProcessor];
      v24 = [v23 copyProtectionClassFromRecord:v13];

      v97 = v24;
      if (v19)
      {
        if (v96)
        {
          if (v24)
          {
            v25 = [*(a1 + 40) monitor];
            v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v94];
            v27 = [v9 bundleID];
            v28 = [v25 haveSeenItem:v26 bundle:v27 persona:v96 protectionClass:v24];

            v29 = v97;
            if (v28)
            {
              v30 = [v9 bundleID];
              v31 = v19;
              v32 = [*(a1 + 40) context];
              v33 = [v30 hasPrefix:@"com.apple."];
              CurrentLoggingLevel = SKGLogGetCurrentLoggingLevel();
              if (v33)
              {
                v6 = v90;
                if (CurrentLoggingLevel >= 4)
                {
                  v35 = SKGLogInit();
                  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
                  {
                    v36 = [v30 substringFromIndex:10];
                    v37 = [v32 logFullItemIDs];
                    *buf = 138412802;
                    v38 = &stru_2846CE8D8;
                    if (v37)
                    {
                      v38 = v31;
                    }

                    v109 = v36;
                    v110 = 1024;
                    v111 = v94;
                    v112 = 2112;
                    v113 = v38;
                    _os_log_impl(&dword_231B25000, v35, OS_LOG_TYPE_DEFAULT, "=== Skip cleanup of item with bundle com.apple.%@ oid 0x%x (%@) since item is present in item monitor", buf, 0x1Cu);

                    v6 = v90;
                  }

                  goto LABEL_66;
                }
              }

              else
              {
                v6 = v90;
                if (CurrentLoggingLevel >= 4)
                {
                  v35 = SKGLogInit();
                  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
                  {
                    v81 = [v32 logFullItemIDs];
                    *buf = 138412802;
                    v82 = &stru_2846CE8D8;
                    if (v81)
                    {
                      v82 = v31;
                    }

                    v109 = v30;
                    v110 = 1024;
                    v111 = v94;
                    v112 = 2112;
                    v113 = v82;
                    _os_log_impl(&dword_231B25000, v35, OS_LOG_TYPE_DEFAULT, "=== Skip cleanup of item with bundle %@ oid 0x%x (%@) since item is present in item monitor", buf, 0x1Cu);
                  }

LABEL_66:

                  v29 = v97;
                }
              }

              v5 = v91;
              goto LABEL_22;
            }
          }
        }
      }

      ++*(*(*(a1 + 88) + 8) + 24);
      v39 = [v9 bundleID];
      v40 = v19;
      v41 = [*(a1 + 40) context];
      v42 = [v39 hasPrefix:@"com.apple."];
      v43 = SKGLogGetCurrentLoggingLevel();
      if (v42)
      {
        if (v43 < 4)
        {
          goto LABEL_37;
        }

        v44 = SKGLogInit();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          v45 = [v39 substringFromIndex:10];
          v46 = [v41 logFullItemIDs];
          *buf = 138412802;
          v47 = &stru_2846CE8D8;
          if (v46)
          {
            v47 = v40;
          }

          v109 = v45;
          v110 = 1024;
          v111 = v94;
          v112 = 2112;
          v113 = v47;
          _os_log_impl(&dword_231B25000, v44, OS_LOG_TYPE_DEFAULT, "=== Will cleanup item with bundle com.apple.%@ oid 0x%x (%@)", buf, 0x1Cu);
        }
      }

      else
      {
        if (v43 < 4)
        {
          goto LABEL_37;
        }

        v44 = SKGLogInit();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          v48 = [v41 logFullItemIDs];
          *buf = 138412802;
          v49 = &stru_2846CE8D8;
          if (v48)
          {
            v49 = v40;
          }

          v109 = v39;
          v110 = 1024;
          v111 = v94;
          v112 = 2112;
          v113 = v49;
          _os_log_impl(&dword_231B25000, v44, OS_LOG_TYPE_DEFAULT, "=== Will cleanup item with bundle %@ oid 0x%x (%@)", buf, 0x1Cu);
        }
      }

LABEL_37:
      v92 = v40;

      v50 = objc_alloc_init(MEMORY[0x277CC34B8]);
      v99 = 0u;
      v100 = 0u;
      v101 = 0u;
      v102 = 0u;
      v51 = *(a1 + 32);
      v52 = [v51 countByEnumeratingWithState:&v99 objects:v107 count:16];
      if (v52)
      {
        v53 = v52;
        v54 = *v100;
        do
        {
          for (i = 0; i != v53; ++i)
          {
            if (*v100 != v54)
            {
              objc_enumerationMutation(v51);
            }

            [v50 setAttribute:v7 forKey:*(*(&v99 + 1) + 8 * i)];
          }

          v53 = [v51 countByEnumeratingWithState:&v99 objects:v107 count:16];
        }

        while (v53);
      }

      v56 = [v9 uniqueIdentifier];
      v57 = [v9 bundleID];
      v95 = itemUpdateForAttributeSet(v50, v56, v57);

      v58 = [*(*(*(a1 + 96) + 8) + 40) objectForKeyedSubscript:v97];

      if (!v58)
      {
        v59 = [MEMORY[0x277CBEB38] dictionary];
        [*(*(*(a1 + 96) + 8) + 40) setObject:v59 forKeyedSubscript:v97];
      }

      v60 = [*(*(*(a1 + 96) + 8) + 40) objectForKeyedSubscript:v97];
      v61 = [v9 bundleID];
      v62 = [v60 objectForKeyedSubscript:v61];

      if (!v62)
      {
        v63 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v64 = [*(*(*(a1 + 96) + 8) + 40) objectForKeyedSubscript:v97];
        v65 = [v9 bundleID];
        [v64 setObject:v63 forKeyedSubscript:v65];
      }

      v66 = [*(*(*(a1 + 96) + 8) + 40) objectForKeyedSubscript:v97];
      v67 = [v9 bundleID];
      v68 = [v66 objectForKeyedSubscript:v67];
      [v68 addObject:v95];

      v69 = [*(*(*(a1 + 96) + 8) + 40) objectForKeyedSubscript:v97];
      v70 = [v9 bundleID];
      v71 = [v69 objectForKeyedSubscript:v70];
      v72 = [v71 count];

      if (v72 >= 0x20)
      {
        (*(*(a1 + 56) + 16))();
      }

      v73 = *(*(a1 + 104) + 8);
      if (*(v73 + 24) == 1)
      {
        v74 = (*(*(a1 + 64) + 16))() ^ 1;
        v73 = *(*(a1 + 104) + 8);
      }

      else
      {
        v74 = 0;
      }

      *(v73 + 24) = v74;
      ++*(*(*(a1 + 112) + 8) + 24);
      v75 = [*(a1 + 40) context];
      if ([v75 maxItemCountPerJob] <= 0)
      {

        v5 = v91;
      }

      else
      {
        v76 = *(*(*(a1 + 112) + 8) + 24);
        v77 = [*(a1 + 40) context];
        v78 = [v77 maxItemCountPerJob];

        v79 = v76 < v78;
        v5 = v91;
        if (!v79)
        {
          v80 = [*(a1 + 40) context];
          [v80 logFlag:29 message:@"updater max items"];

          *(*(*(a1 + 120) + 8) + 24) = 1;
        }
      }

      objc_autoreleasePoolPop(context);
      v6 = v90;
      if ((*(*(*(a1 + 120) + 8) + 24) & 1) != 0 || (*(*(*(a1 + 104) + 8) + 24) & 1) == 0)
      {
        goto LABEL_69;
      }

LABEL_59:
      ++v8;
    }

    while (v8 != v5);
    v83 = [obj countByEnumeratingWithState:&v103 objects:v115 count:16];
    v5 = v83;
  }

  while (v83);
LABEL_69:

  v84 = *(*(a1 + 104) + 8);
  if (*(v84 + 24) == 1)
  {
    v85 = (*(*(a1 + 64) + 16))() ^ 1;
    v84 = *(*(a1 + 104) + 8);
  }

  else
  {
    v85 = 0;
  }

  *(v84 + 24) = v85;
  WeakRetained = objc_loadWeakRetained((a1 + 136));
  v87 = WeakRetained;
  if ((*(*(*(a1 + 120) + 8) + 24) & 1) != 0 || (*(*(*(a1 + 104) + 8) + 24) & 1) == 0)
  {
    (*(*(a1 + 56) + 16))();
    [v87 cancel];
    *(*(*(a1 + 128) + 8) + 24) = 1;
    dispatch_group_leave(*(a1 + 48));
  }

  else
  {
    [WeakRetained poll];
  }

  objc_autoreleasePoolPop(v89);
  v88 = *MEMORY[0x277D85DE8];
}

void __109__SKGJob_Updates___runCSCleanupForQueryString_trackingAttributes_queryContext_batchUpdatedBlock_cancelBlock___block_invoke_179(void *a1)
{
  if (*(*(a1[6] + 8) + 24) == 1)
  {
    *(*(a1[7] + 8) + 24) = 1;
  }

  if ((*(*(a1[8] + 8) + 24) & 1) == 0)
  {
    v2 = a1[5];
    (*(a1[5] + 16))();
    v3 = a1[4];

    dispatch_group_leave(v3);
  }
}

- (BOOL)requestCSCleanupWithProtectionClasses:(id)classes batchUpdatedBlock:(id)block cancelBlock:(id)cancelBlock
{
  v60 = *MEMORY[0x277D85DE8];
  classesCopy = classes;
  blockCopy = block;
  cancelBlockCopy = cancelBlock;
  context = objc_autoreleasePoolPush();
  selfCopy = self;
  monitor = [(SKGJob *)self monitor];

  if (monitor)
  {
    v49 = 0;
    v50 = &v49;
    v51 = 0x2020000000;
    v52 = 0;
    v45 = 0;
    v46 = &v45;
    v47 = 0x2020000000;
    v48 = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __87__SKGJob_Updates__requestCSCleanupWithProtectionClasses_batchUpdatedBlock_cancelBlock___block_invoke;
    aBlock[3] = &unk_27893EB08;
    aBlock[5] = &v49;
    aBlock[6] = &v45;
    aBlock[4] = self;
    v9 = _Block_copy(aBlock);
    context = [(SKGJob *)self context];
    protectionClasses = [context protectionClasses];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __87__SKGJob_Updates__requestCSCleanupWithProtectionClasses_batchUpdatedBlock_cancelBlock___block_invoke_3;
    v42[3] = &unk_27893EB50;
    v42[4] = self;
    v43 = cancelBlockCopy;
    v12 = [CSEventJournalStats enumerateEventsWithProtectionClasses:protectionClasses itemAdds:v9 itemUpdates:v9 itemDeletes:&__block_literal_global_34 cancelBlock:v42];

    if (!v12)
    {

      _Block_object_dispose(&v45, 8);
      _Block_object_dispose(&v49, 8);
      v30 = 0;
      goto LABEL_17;
    }

    if (SKGLogGetCurrentLoggingLevel() >= 4)
    {
      v13 = SKGLogInit();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v46[3];
        v15 = v50[3];
        *buf = 134218498;
        v55 = v14;
        v56 = 2048;
        v57 = v15;
        v58 = 2112;
        v59 = classesCopy;
        _os_log_impl(&dword_231B25000, v13, OS_LOG_TYPE_DEFAULT, "=== Monitor for requestCSCleanupWithProtectionClasses has %llu items added, out of %llu items seen. (%@)", buf, 0x20u);
      }
    }

    _Block_object_dispose(&v45, 8);
    _Block_object_dispose(&v49, 8);
  }

  v16 = objc_alloc_init(MEMORY[0x277CC34A0]);
  [v16 setProtectionClasses:classesCopy];
  v17 = [MEMORY[0x277CBEB58] setWithArray:&unk_2846E8268];
  v18 = MEMORY[0x277CBEB58];
  mEMORY[0x277D657A0] = [MEMORY[0x277D657A0] sharedContext];
  cleanupAttributes = [mEMORY[0x277D657A0] cleanupAttributes];
  v21 = [v18 setWithArray:cleanupAttributes];

  v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v23 = v21;
  v24 = [v23 countByEnumeratingWithState:&v38 objects:v53 count:16];
  if (v24)
  {
    v25 = *v39;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v39 != v25)
        {
          objc_enumerationMutation(v23);
        }

        v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=1", *(*(&v38 + 1) + 8 * i)];
        [v22 addObject:v27];
      }

      v24 = [v23 countByEnumeratingWithState:&v38 objects:v53 count:16];
    }

    while (v24);
  }

  v28 = [v22 componentsJoinedByString:@"||"];
  [v17 unionSet:v23];
  allObjects = [v17 allObjects];
  [v16 setFetchAttributes:allObjects];

  v30 = [(SKGJob *)selfCopy _runCSCleanupForQueryString:v28 trackingAttributes:v23 queryContext:v16 batchUpdatedBlock:blockCopy cancelBlock:cancelBlockCopy];
LABEL_17:
  objc_autoreleasePoolPop(context);

  v31 = *MEMORY[0x277D85DE8];
  return v30;
}

void __87__SKGJob_Updates__requestCSCleanupWithProtectionClasses_batchUpdatedBlock_cancelBlock___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v30 = a1;
  ++*(*(*(a1 + 40) + 8) + 24);
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v10 = [MEMORY[0x277D657A0] sharedContext];
  v11 = [v10 cleanupAttributes];

  v12 = [v11 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v32;
    while (2)
    {
      v15 = v8;
      v16 = v7;
      for (i = 0; i != v13; ++i)
      {
        if (*v32 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v18 = *(*(&v31 + 1) + 8 * i);
        v19 = [MEMORY[0x277D65798] sharedProcessor];
        LODWORD(v18) = [v19 recordContainsValue:v9 key:v18];

        if (v18)
        {
          v20 = [MEMORY[0x277D65798] sharedProcessor];
          v21 = [v20 copyStringValueFromRecord:v9 key:@"_kMDItemExternalID"];

          v22 = [MEMORY[0x277D65798] sharedProcessor];
          v23 = [v22 copyPersonaFromRecord:v9];

          v7 = v16;
          v8 = v15;
          if (v15 && v7 && v21 && v23)
          {
            v24 = [*(v30 + 32) monitor];
            v25 = MEMORY[0x277CCABB0];
            v26 = [v21 UTF8String];
            v27 = strlen([v21 UTF8String]);
            v28 = [v25 numberWithUnsignedInteger:{MurmurHash3_x86_32(v26, v27)}];
            [v24 addSeenItem:v28 bundle:v7 persona:v23 protectionClass:v15];
          }

          ++*(*(*(v30 + 48) + 8) + 24);

          goto LABEL_16;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v31 objects:v35 count:16];
      v7 = v16;
      v8 = v15;
      if (v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  v29 = *MEMORY[0x277D85DE8];
}

uint64_t __87__SKGJob_Updates__requestCSCleanupWithProtectionClasses_batchUpdatedBlock_cancelBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) context];
  if ([v4 upgradePathCleanupAll])
  {

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  v5 = (*(*(a1 + 40) + 16))();

  if ((v5 & 1) == 0)
  {
    goto LABEL_5;
  }

  v6 = 1;
LABEL_6:

  return v6;
}

- (BOOL)requestCSCleanupForUpdater:(id)updater protectionClasses:(id)classes flags:(unsigned int)flags batchUpdatedBlock:(id)block cancelBlock:(id)cancelBlock
{
  flagsCopy = flags;
  v66 = *MEMORY[0x277D85DE8];
  updaterCopy = updater;
  classesCopy = classes;
  blockCopy = block;
  cancelBlockCopy = cancelBlock;
  context = objc_autoreleasePoolPush();
  monitor = [(SKGJob *)self monitor];

  if (monitor)
  {
    v53 = 0;
    v54 = &v53;
    v55 = 0x2020000000;
    v56 = 0;
    v49 = 0;
    v50 = &v49;
    v51 = 0x2020000000;
    v52 = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __100__SKGJob_Updates__requestCSCleanupForUpdater_protectionClasses_flags_batchUpdatedBlock_cancelBlock___block_invoke;
    aBlock[3] = &unk_27893EB08;
    aBlock[5] = &v53;
    aBlock[6] = &v49;
    aBlock[4] = self;
    v13 = _Block_copy(aBlock);
    context = [(SKGJob *)self context];
    protectionClasses = [context protectionClasses];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __100__SKGJob_Updates__requestCSCleanupForUpdater_protectionClasses_flags_batchUpdatedBlock_cancelBlock___block_invoke_3;
    v46[3] = &unk_27893EB50;
    v46[4] = self;
    v47 = cancelBlockCopy;
    v16 = [CSEventJournalStats enumerateEventsWithProtectionClasses:protectionClasses updaters:updaterCopy itemAdds:v13 itemUpdates:v13 itemDeletes:&__block_literal_global_198 cancelBlock:v46];

    if (!v16)
    {

      _Block_object_dispose(&v49, 8);
      _Block_object_dispose(&v53, 8);
      v25 = 0;
      goto LABEL_26;
    }

    if (SKGLogGetCurrentLoggingLevel() >= 4)
    {
      v17 = SKGLogInit();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = v50[3];
        v19 = v54[3];
        *buf = 134218754;
        v59 = v18;
        v60 = 2048;
        v61 = v19;
        v62 = 2112;
        v63 = updaterCopy;
        v64 = 2112;
        v65 = classesCopy;
        _os_log_impl(&dword_231B25000, v17, OS_LOG_TYPE_DEFAULT, "=== Monitor for requestCSCleanupForUpdater has %llu items added, out of %llu items seen. %@ %@", buf, 0x2Au);
      }
    }

    _Block_object_dispose(&v49, 8);
    _Block_object_dispose(&v53, 8);
  }

  v20 = objc_alloc_init(MEMORY[0x277CC34A0]);
  [v20 setProtectionClasses:classesCopy];
  v21 = [MEMORY[0x277CBEB58] setWithArray:&unk_2846E8280];
  v22 = objc_opt_new();
  if ((flagsCopy & 0x10) != 0)
  {
    mEMORY[0x277D657A0] = [MEMORY[0x277D657A0] sharedContext];
    embeddingTrackingAttributes = [mEMORY[0x277D657A0] embeddingTrackingAttributes];
    goto LABEL_17;
  }

  if ((flagsCopy & 0x20) != 0)
  {
    mEMORY[0x277D657A0] = [MEMORY[0x277D657A0] sharedContext];
    embeddingTrackingAttributes = [mEMORY[0x277D657A0] keyphraseTrackingAttributes];
    goto LABEL_17;
  }

  if ((flagsCopy & 0x80) != 0)
  {
    mEMORY[0x277D657A0] = [MEMORY[0x277D657A0] sharedContext];
    embeddingTrackingAttributes = [mEMORY[0x277D657A0] suggestedEventsTrackingAttributes];
    goto LABEL_17;
  }

  if ((flagsCopy & 0x100) != 0)
  {
    mEMORY[0x277D657A0] = [MEMORY[0x277D657A0] sharedContext];
    embeddingTrackingAttributes = [mEMORY[0x277D657A0] docUnderstandingTrackingAttributes];
LABEL_17:
    v26 = embeddingTrackingAttributes;
    [v22 addObjectsFromArray:embeddingTrackingAttributes];
  }

  v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v28 = v22;
  v29 = [v28 countByEnumeratingWithState:&v42 objects:v57 count:16];
  if (v29)
  {
    v30 = *v43;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v43 != v30)
        {
          objc_enumerationMutation(v28);
        }

        v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=1", *(*(&v42 + 1) + 8 * i)];
        [v27 addObject:v32];
      }

      v29 = [v28 countByEnumeratingWithState:&v42 objects:v57 count:16];
    }

    while (v29);
  }

  v33 = [v27 componentsJoinedByString:@"||"];
  [v21 unionSet:v28];
  allObjects = [v21 allObjects];
  [v20 setFetchAttributes:allObjects];

  v25 = [(SKGJob *)self _runCSCleanupForQueryString:v33 trackingAttributes:v28 queryContext:v20 batchUpdatedBlock:blockCopy cancelBlock:cancelBlockCopy];
LABEL_26:
  objc_autoreleasePoolPop(context);

  v35 = *MEMORY[0x277D85DE8];
  return v25;
}

void __100__SKGJob_Updates__requestCSCleanupForUpdater_protectionClasses_flags_batchUpdatedBlock_cancelBlock___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v30 = a1;
  ++*(*(*(a1 + 40) + 8) + 24);
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v10 = [MEMORY[0x277D657A0] sharedContext];
  v11 = [v10 cleanupAttributes];

  v12 = [v11 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v32;
    while (2)
    {
      v15 = v8;
      v16 = v7;
      for (i = 0; i != v13; ++i)
      {
        if (*v32 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v18 = *(*(&v31 + 1) + 8 * i);
        v19 = [MEMORY[0x277D65798] sharedProcessor];
        LODWORD(v18) = [v19 recordContainsValue:v9 key:v18];

        if (v18)
        {
          v20 = [MEMORY[0x277D65798] sharedProcessor];
          v21 = [v20 copyStringValueFromRecord:v9 key:@"_kMDItemExternalID"];

          v22 = [MEMORY[0x277D65798] sharedProcessor];
          v23 = [v22 copyPersonaFromRecord:v9];

          v7 = v16;
          v8 = v15;
          if (v15 && v7 && v21 && v23)
          {
            v24 = [*(v30 + 32) monitor];
            v25 = MEMORY[0x277CCABB0];
            v26 = [v21 UTF8String];
            v27 = strlen([v21 UTF8String]);
            v28 = [v25 numberWithUnsignedInteger:{MurmurHash3_x86_32(v26, v27)}];
            [v24 addSeenItem:v28 bundle:v7 persona:v23 protectionClass:v15];
          }

          ++*(*(*(v30 + 48) + 8) + 24);

          goto LABEL_16;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v31 objects:v35 count:16];
      v7 = v16;
      v8 = v15;
      if (v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  v29 = *MEMORY[0x277D85DE8];
}

uint64_t __100__SKGJob_Updates__requestCSCleanupForUpdater_protectionClasses_flags_batchUpdatedBlock_cancelBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) context];
  if ([v4 upgradePathCleanupAll])
  {

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  v5 = (*(*(a1 + 40) + 16))();

  if ((v5 & 1) == 0)
  {
    goto LABEL_5;
  }

  v6 = 1;
LABEL_6:

  return v6;
}

- (BOOL)_runCSProcessingForTask:(id)task queryString:(id)string queryContext:(id)context batchProcessedBlock:(id)block batchUpdatedBlock:(id)updatedBlock cancelBlock:(id)cancelBlock
{
  v94 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  stringCopy = string;
  contextCopy = context;
  blockCopy = block;
  updatedBlockCopy = updatedBlock;
  cancelBlockCopy = cancelBlock;
  if (stringCopy)
  {
    v42 = cancelBlockCopy;
    [contextCopy setDisableResultStreaming:1];
    [contextCopy setMaximumBatchSize:100];
    context = [(SKGJob *)self context];
    maxItemCountPerBatch = [context maxItemCountPerBatch];

    if (maxItemCountPerBatch >= 1)
    {
      context2 = [(SKGJob *)self context];
      [contextCopy setMaximumBatchSize:{objc_msgSend(context2, "maxItemCountPerBatch")}];
    }

    context3 = [(SKGJob *)self context];
    maxItemCountPerJob = [context3 maxItemCountPerJob];

    if (maxItemCountPerJob >= 1)
    {
      context4 = [(SKGJob *)self context];
      [contextCopy setMaxCount:{objc_msgSend(context4, "maxItemCountPerJob")}];
    }

    flags = [taskCopy flags];
    if ((flags & 4) != 0)
    {
      mEMORY[0x277D65798] = [MEMORY[0x277D65798] sharedProcessor];
      [mEMORY[0x277D65798] loadKeyphraser];
    }

    v26 = [objc_alloc(MEMORY[0x277CC3498]) initWithQueryString:stringCopy queryContext:contextCopy];
    v27 = dispatch_group_create();
    objc_initWeak(&location, v26);
    v83 = 0;
    v84 = &v83;
    v85 = 0x2020000000;
    v86 = 0;
    v81[0] = 0;
    v81[1] = v81;
    v81[2] = 0x2020000000;
    v82 = 1;
    v79[0] = 0;
    v79[1] = v79;
    v79[2] = 0x2020000000;
    v80 = 0;
    v75 = 0;
    v76 = &v75;
    v77 = 0x2020000000;
    v78 = 0;
    v71 = 0;
    v72 = &v71;
    v73 = 0x2020000000;
    v74 = 0;
    v69[0] = 0;
    v69[1] = v69;
    v69[2] = 0x3032000000;
    v69[3] = __Block_byref_object_copy__18;
    v69[4] = __Block_byref_object_dispose__18;
    v70 = objc_alloc_init(MEMORY[0x277CBEB38]);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __118__SKGJob_Updates___runCSProcessingForTask_queryString_queryContext_batchProcessedBlock_batchUpdatedBlock_cancelBlock___block_invoke;
    aBlock[3] = &unk_27893EAB8;
    v67 = v81;
    v68 = v69;
    aBlock[4] = self;
    v65 = updatedBlockCopy;
    v28 = v42;
    v66 = v28;
    v29 = _Block_copy(aBlock);
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __118__SKGJob_Updates___runCSProcessingForTask_queryString_queryContext_batchProcessedBlock_batchUpdatedBlock_cancelBlock___block_invoke_2;
    v51[3] = &unk_27893EBA0;
    v52 = taskCopy;
    v57 = v81;
    v63[1] = flags;
    v58 = v69;
    v59 = &v75;
    v55 = v28;
    v30 = v29;
    v56 = v30;
    selfCopy = self;
    v60 = &v71;
    v61 = &v83;
    objc_copyWeak(v63, &location);
    v62 = v79;
    v31 = v27;
    v54 = v31;
    [v26 setFoundItemsHandler:v51];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __118__SKGJob_Updates___runCSProcessingForTask_queryString_queryContext_batchProcessedBlock_batchUpdatedBlock_cancelBlock___block_invoke_3;
    v45[3] = &unk_27893EA90;
    v48 = v81;
    v49 = &v83;
    v50 = v79;
    v32 = v30;
    v47 = v32;
    v33 = v31;
    v46 = v33;
    [v26 setCompletionHandler:v45];
    dispatch_group_enter(v33);
    context5 = [(SKGJob *)self context];
    [context5 logSignpost:3 message:@"starting batch processing"];

    [v26 start];
    [v26 poll];
    context6 = [(SKGJob *)self context];
    [context6 logSignpost:3 message:@"end batch processing"];

    dispatch_group_wait(v33, 0xFFFFFFFFFFFFFFFFLL);
    if (SKGLogGetCurrentLoggingLevel() >= 4)
    {
      v36 = SKGLogInit();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = v76[3];
        v38 = v72[3];
        *buf = 134218498;
        v89 = v37;
        v90 = 2048;
        v91 = v38;
        v92 = 2112;
        v93 = stringCopy;
        _os_log_impl(&dword_231B25000, v36, OS_LOG_TYPE_DEFAULT, "=== Processed %llu items [of %llu items seen] for query %@", buf, 0x20u);
      }
    }

    v39 = *(v84 + 24);

    objc_destroyWeak(v63);
    _Block_object_dispose(v69, 8);

    _Block_object_dispose(&v71, 8);
    _Block_object_dispose(&v75, 8);
    _Block_object_dispose(v79, 8);
    _Block_object_dispose(v81, 8);
    _Block_object_dispose(&v83, 8);
    objc_destroyWeak(&location);

    cancelBlockCopy = v42;
  }

  else
  {
    v39 = 1;
  }

  v40 = *MEMORY[0x277D85DE8];
  return v39 & 1;
}

void __118__SKGJob_Updates___runCSProcessingForTask_queryString_queryContext_batchProcessedBlock_batchUpdatedBlock_cancelBlock___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    context = objc_autoreleasePoolPush();
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = *(*(*(a1 + 64) + 8) + 40);
    v19 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v19)
    {
      v18 = *v26;
LABEL_4:
      v2 = 0;
      while (1)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = v2;
        v3 = *(*(&v25 + 1) + 8 * v2);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v4 = [*(*(*(a1 + 64) + 8) + 40) objectForKeyedSubscript:v3];
        v5 = [v4 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v5)
        {
          v6 = v5;
          v7 = *v22;
LABEL_9:
          v8 = 0;
          while (1)
          {
            if (*v22 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v9 = *(*(&v21 + 1) + 8 * v8);
            v10 = [*(*(*(a1 + 64) + 8) + 40) objectForKeyedSubscript:v3];
            v11 = [v10 objectForKeyedSubscript:v9];
            v12 = [v11 allObjects];

            *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) _updateCoreSpotlightItems:v12 bundleIdentifier:v9 protectionClass:v3 batchUpdatedBlock:*(a1 + 40) cancelBlock:*(a1 + 48)];
            v13 = [*(*(*(a1 + 64) + 8) + 40) objectForKeyedSubscript:v3];
            v14 = [v13 objectForKeyedSubscript:v9];
            [v14 removeAllObjects];

            LODWORD(v13) = *(*(*(a1 + 56) + 8) + 24);
            if (v13 != 1)
            {
              break;
            }

            if (v6 == ++v8)
            {
              v6 = [v4 countByEnumeratingWithState:&v21 objects:v29 count:16];
              if (v6)
              {
                goto LABEL_9;
              }

              break;
            }
          }
        }

        if (*(*(*(a1 + 56) + 8) + 24) != 1)
        {
          break;
        }

        v2 = v20 + 1;
        if (v20 + 1 == v19)
        {
          v19 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
          if (v19)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    objc_autoreleasePoolPop(context);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __118__SKGJob_Updates___runCSProcessingForTask_queryString_queryContext_batchProcessedBlock_batchUpdatedBlock_cancelBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v54 = *MEMORY[0x277D85DE8];
  v3 = a2;
  context = objc_autoreleasePoolPush();
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (!v5)
  {
    goto LABEL_27;
  }

  v6 = v5;
  v7 = *v49;
  v40 = *v49;
  v41 = v4;
  do
  {
    v8 = 0;
    v42 = v6;
    do
    {
      if (*v49 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v48 + 1) + 8 * v8);
      v10 = objc_autoreleasePoolPush();
      v11 = [v9 bundleID];

      if (!v11)
      {
        if (SKGLogGetCurrentLoggingLevel() >= 2)
        {
          v12 = SKGLogInit();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            __118__SKGJob_Updates___runCSProcessingForTask_queryString_queryContext_batchProcessedBlock_batchUpdatedBlock_cancelBlock___block_invoke_2_cold_1(v52, v9);
          }

LABEL_16:
        }

        objc_autoreleasePoolPop(v10);
        goto LABEL_25;
      }

      v12 = [v9 bundleID];
      v13 = [v9 attributeSet];
      v14 = [v13 attributeDictionary];

      if (![*(a1 + 32) supportsEvent:4 record:v14 bundleID:v12])
      {

        goto LABEL_16;
      }

      v43 = v10;
      v15 = [MEMORY[0x277D65798] sharedProcessor];
      v16 = [v9 uniqueIdentifier];
      v17 = [v9 bundleID];
      v18 = [v9 protection];
      v19 = *(a1 + 128);
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __118__SKGJob_Updates___runCSProcessingForTask_queryString_queryContext_batchProcessedBlock_batchUpdatedBlock_cancelBlock___block_invoke_202;
      v46[3] = &unk_27893EB78;
      v46[4] = v9;
      v47 = *(a1 + 80);
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __118__SKGJob_Updates___runCSProcessingForTask_queryString_queryContext_batchProcessedBlock_batchUpdatedBlock_cancelBlock___block_invoke_2_204;
      v44[3] = &unk_27893CC50;
      v45 = *(a1 + 56);
      *(*(*(a1 + 72) + 8) + 24) = [v15 enumerateProcessedItemsFromRecord:v14 referenceIdentifier:v16 bundleIdentifier:v17 protectionClass:v18 processorFlags:v19 processedItemBlock:v46 cancelBlock:v44];

      v20 = *(*(*(a1 + 80) + 8) + 40);
      v21 = [v9 protection];
      v22 = [v20 objectForKeyedSubscript:v21];
      v23 = [v9 bundleID];
      v24 = [v22 objectForKeyedSubscript:v23];
      v25 = [v24 count];

      if (v25 >= 0x20)
      {
        (*(*(a1 + 64) + 16))();
      }

      v26 = *(*(a1 + 72) + 8);
      if (*(v26 + 24) == 1)
      {
        v27 = (*(*(a1 + 56) + 16))() ^ 1;
        v26 = *(*(a1 + 72) + 8);
      }

      else
      {
        v27 = 0;
      }

      *(v26 + 24) = v27;
      ++*(*(*(a1 + 96) + 8) + 24);
      v28 = [*(a1 + 40) context];
      if ([v28 maxItemCountPerJob] <= 0)
      {

        v7 = v40;
        v4 = v41;
        v6 = v42;
      }

      else
      {
        v29 = *(*(*(a1 + 96) + 8) + 24);
        v30 = [*(a1 + 40) context];
        v31 = [v30 maxItemCountPerJob];

        v32 = v29 < v31;
        v7 = v40;
        v4 = v41;
        v6 = v42;
        if (!v32)
        {
          v33 = [*(a1 + 40) context];
          [v33 logFlag:29 message:@"processor max items"];

          *(*(*(a1 + 104) + 8) + 24) = 1;
        }
      }

      objc_autoreleasePoolPop(v43);
      if ((*(*(*(a1 + 104) + 8) + 24) & 1) != 0 || (*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
      {
        goto LABEL_27;
      }

LABEL_25:
      ++v8;
    }

    while (v6 != v8);
    v6 = [v4 countByEnumeratingWithState:&v48 objects:v53 count:16];
  }

  while (v6);
LABEL_27:

  v34 = *(*(a1 + 72) + 8);
  if (*(v34 + 24) == 1)
  {
    v35 = (*(*(a1 + 56) + 16))() ^ 1;
    v34 = *(*(a1 + 72) + 8);
  }

  else
  {
    v35 = 0;
  }

  *(v34 + 24) = v35;
  WeakRetained = objc_loadWeakRetained((a1 + 120));
  v37 = WeakRetained;
  if ((*(*(*(a1 + 104) + 8) + 24) & 1) != 0 || (*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
  {
    (*(*(a1 + 64) + 16))();
    [v37 cancel];
    *(*(*(a1 + 112) + 8) + 24) = 1;
    dispatch_group_leave(*(a1 + 48));
  }

  else
  {
    [WeakRetained poll];
  }

  objc_autoreleasePoolPop(context);
  v38 = *MEMORY[0x277D85DE8];
}

uint64_t __118__SKGJob_Updates___runCSProcessingForTask_queryString_queryContext_batchProcessedBlock_batchUpdatedBlock_cancelBlock___block_invoke_202(uint64_t a1, void *a2)
{
  v3 = attributeSetForProcessedItem(a2);
  v4 = [*(a1 + 32) uniqueIdentifier];
  v5 = [*(a1 + 32) bundleID];
  v6 = itemUpdateForAttributeSet(v3, v4, v5);

  v7 = *(*(*(a1 + 40) + 8) + 40);
  v8 = [*(a1 + 32) protection];
  v9 = [v7 objectForKeyedSubscript:v8];

  if (!v9)
  {
    v10 = [MEMORY[0x277CBEB38] dictionary];
    v11 = *(*(*(a1 + 40) + 8) + 40);
    v12 = [*(a1 + 32) protection];
    [v11 setObject:v10 forKeyedSubscript:v12];
  }

  v13 = *(*(*(a1 + 40) + 8) + 40);
  v14 = [*(a1 + 32) protection];
  v15 = [v13 objectForKeyedSubscript:v14];
  v16 = [*(a1 + 32) bundleID];
  v17 = [v15 objectForKeyedSubscript:v16];

  if (!v17)
  {
    v18 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v19 = *(*(*(a1 + 40) + 8) + 40);
    v20 = [*(a1 + 32) protection];
    v21 = [v19 objectForKeyedSubscript:v20];
    v22 = [*(a1 + 32) bundleID];
    [v21 setObject:v18 forKeyedSubscript:v22];
  }

  v23 = *(*(*(a1 + 40) + 8) + 40);
  v24 = [*(a1 + 32) protection];
  v25 = [v23 objectForKeyedSubscript:v24];
  v26 = [*(a1 + 32) bundleID];
  v27 = [v25 objectForKeyedSubscript:v26];
  [v27 addObject:v6];

  ++*(*(*(a1 + 48) + 8) + 24);
  return 1;
}

void __118__SKGJob_Updates___runCSProcessingForTask_queryString_queryContext_batchProcessedBlock_batchUpdatedBlock_cancelBlock___block_invoke_3(void *a1)
{
  if (*(*(a1[6] + 8) + 24) == 1)
  {
    *(*(a1[7] + 8) + 24) = 1;
  }

  if ((*(*(a1[8] + 8) + 24) & 1) == 0)
  {
    v2 = a1[5];
    (*(a1[5] + 16))();
    v3 = a1[4];

    dispatch_group_leave(v3);
  }
}

- (BOOL)requestCSProcessingWithProtectionClasses:(id)classes task:(id)task batchProcessedBlock:(id)block batchUpdatedBlock:(id)updatedBlock cancelBlock:(id)cancelBlock
{
  v34 = *MEMORY[0x277D85DE8];
  classesCopy = classes;
  taskCopy = task;
  blockCopy = block;
  updatedBlockCopy = updatedBlock;
  cancelBlockCopy = cancelBlock;
  context = objc_autoreleasePoolPush();
  v17 = objc_alloc_init(MEMORY[0x277CBEB58]);
  mEMORY[0x277D657A0] = [MEMORY[0x277D657A0] sharedContext];
  fetchAttributes = [mEMORY[0x277D657A0] fetchAttributes];
  [v17 addObjectsFromArray:fetchAttributes];

  v20 = objc_alloc_init(MEMORY[0x277CC34A0]);
  [v20 setProtectionClasses:classesCopy];
  context = [(SKGJob *)self context];
  excludeBundles = [context excludeBundles];
  [v20 setDisableBundles:excludeBundles];

  fetchAttributes2 = [taskCopy fetchAttributes];
  [v20 setFetchAttributes:fetchAttributes2];

  v24 = [SKGTextQueryManager queryForTask:taskCopy event:4];
  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v25 = SKGLogInit();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      [taskCopy name];
      v26 = v30 = blockCopy;
      *buf = 138412290;
      v33 = v26;
      _os_log_impl(&dword_231B25000, v25, OS_LOG_TYPE_DEFAULT, "=== Requesting scheduled processing of %@", buf, 0xCu);

      blockCopy = v30;
    }
  }

  v27 = [(SKGJob *)self _runCSProcessingForTask:taskCopy queryString:v24 queryContext:v20 batchProcessedBlock:updatedBlockCopy batchUpdatedBlock:updatedBlockCopy cancelBlock:cancelBlockCopy, v30];

  objc_autoreleasePoolPop(context);
  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

- (id)counterQueryWithQueryString:(id)string queryContext:(id)context onlyFiles:(BOOL)files
{
  v6 = MEMORY[0x277CC3498];
  contextCopy = context;
  stringCopy = string;
  v9 = [[v6 alloc] initWithQueryString:stringCopy queryContext:contextCopy];

  return v9;
}

void __100__SKGJob_Updates___runCSCounterForQueryString_queryContext_filesQuery_counterItemBlock_cancelBlock___block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  context = objc_autoreleasePoolPush();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (!v4)
  {
    goto LABEL_24;
  }

  v5 = v4;
  v6 = *v25;
  while (2)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v25 != v6)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v24 + 1) + 8 * i);
      v9 = objc_autoreleasePoolPush();
      v10 = [v8 attributeSet];
      v11 = [v10 bundleID];

      if (v11)
      {
        v12 = [*(a1 + 32) disableBundles];
        if ([v12 count])
        {
          v13 = [*(a1 + 32) disableBundles];
          v14 = [v13 containsObject:v11];

          if (v14)
          {
            goto LABEL_18;
          }
        }

        else
        {
        }

        v16 = *(a1 + 40);
        if (v16)
        {
          v17 = [v8 attributeSet];
          v18 = [v17 attributeDictionary];
          (*(v16 + 16))(v16, v11, v18);
        }

        if ((*(*(a1 + 48) + 16))())
        {
          WeakRetained = objc_loadWeakRetained((a1 + 56));
          v20 = WeakRetained;
          if (WeakRetained)
          {
            [WeakRetained cancel];
          }

          objc_autoreleasePoolPop(v9);
          goto LABEL_24;
        }
      }

      else if (SKGLogGetCurrentLoggingLevel() >= 2)
      {
        v15 = SKGLogInit();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          __100__SKGJob_Updates___runCSCounterForQueryString_queryContext_filesQuery_counterItemBlock_cancelBlock___block_invoke_cold_1(v28, v8);
        }
      }

LABEL_18:

      objc_autoreleasePoolPop(v9);
    }

    v5 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v5)
    {
      continue;
    }

    break;
  }

LABEL_24:

  objc_autoreleasePoolPop(context);
  v21 = *MEMORY[0x277D85DE8];
}

void __100__SKGJob_Updates___runCSCounterForQueryString_queryContext_filesQuery_counterItemBlock_cancelBlock___block_invoke_217(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  if ((atomic_exchange((*(*(a1 + 48) + 8) + 24), 1u) & 1) == 0)
  {
    dispatch_group_leave(*(a1 + 32));
  }
}

- (id)_fieldPresencePredicateWithFieldName:(id)name
{
  nameCopy = name;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__SKGJob_Updates___fieldPresencePredicateWithFieldName___block_invoke;
  aBlock[3] = &unk_27893EC18;
  v8 = nameCopy;
  v4 = nameCopy;
  v5 = _Block_copy(aBlock);

  return v5;
}

uint64_t __56__SKGJob_Updates___fieldPresencePredicateWithFieldName___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 objectForKeyedSubscript:*(a1 + 32)];
  if (v3)
  {
    v4 = v3 == *MEMORY[0x277CBEEE8];
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;

  return v5;
}

- (id)_anyFieldPresentPredicateWithFieldNames:(id)names
{
  namesCopy = names;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__SKGJob_Updates___anyFieldPresentPredicateWithFieldNames___block_invoke;
  aBlock[3] = &unk_27893EC18;
  v8 = namesCopy;
  v4 = namesCopy;
  v5 = _Block_copy(aBlock);

  return v5;
}

uint64_t __59__SKGJob_Updates___anyFieldPresentPredicateWithFieldNames___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    v8 = *MEMORY[0x277CBEEE8];
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [v4 objectForKeyedSubscript:{*(*(&v14 + 1) + 8 * v9), v14}];

        if (v10)
        {
          v11 = v10 == v8;
        }

        else
        {
          v11 = 1;
        }

        if (!v11)
        {
          v6 = 1;
          goto LABEL_13;
        }

        ++v9;
      }

      while (v6 != v9);
      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

LABEL_13:

  v12 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)_allFieldsPresentPredicateWithFieldNames:(id)names
{
  namesCopy = names;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__SKGJob_Updates___allFieldsPresentPredicateWithFieldNames___block_invoke;
  aBlock[3] = &unk_27893EC18;
  v8 = namesCopy;
  v4 = namesCopy;
  v5 = _Block_copy(aBlock);

  return v5;
}

uint64_t __60__SKGJob_Updates___allFieldsPresentPredicateWithFieldNames___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    v9 = *MEMORY[0x277CBEEE8];
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [v4 objectForKeyedSubscript:{*(*(&v16 + 1) + 8 * v10), v16}];

        if (v11)
        {
          v12 = v11 == v9;
        }

        else
        {
          v12 = 1;
        }

        if (v12)
        {
          v13 = 0;
          goto LABEL_14;
        }

        ++v10;
      }

      while (v7 != v10);
      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 1;
LABEL_14:

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)_newCounterDictionaryForBundleIdentifier:(id)identifier additionalAttributes:(id)attributes
{
  v22[10] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  attributesCopy = attributes;
  v21[0] = @"bundleID";
  v21[1] = @"days";
  v22[0] = identifierCopy;
  v22[1] = &unk_2846E7CE0;
  v21[2] = @"daysToComplete";
  v21[3] = @"totalItems";
  v22[2] = &unk_2846E7CE0;
  v22[3] = &unk_2846E7CE0;
  v21[4] = @"eligibleItems";
  v21[5] = @"itemsProcessed";
  v22[4] = &unk_2846E7CE0;
  v22[5] = &unk_2846E7CE0;
  v21[6] = @"itemsNeedProcessing";
  v21[7] = @"itemsSuccessfullyProcessed";
  v22[6] = &unk_2846E7CE0;
  v22[7] = &unk_2846E7CE0;
  v21[8] = @"progress";
  v21[9] = @"completeness";
  v22[8] = &unk_2846E7CE0;
  v22[9] = &unk_2846E7CE0;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:10];
  v8 = [v7 mutableCopy];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = attributesCopy;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [v8 setObject:&unk_2846E7CE0 forKey:{*(*(&v16 + 1) + 8 * v13++), v16}];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)generateCSReportForQueryFlags:(unsigned int)flags protectionClasses:(id)classes additionalQueryString:(id)string additionalFetchAttributes:(id)attributes processedPredicate:(id)predicate succesfullyProcessedPredicate:(id)processedPredicate eligiblePredicate:(id)eligiblePredicate additionalPredicates:(id)self0 dayCompletionStr:(id)self1 genStartTime:(id)self2 bundleIDs:(id)self3 daysToCompleteApproach:(int64_t)self4 onlyFiles:(BOOL)self5 mergeBundleStatistics:(id)self6 withCancelBlock:(id)self7
{
  flagsCopy = flags;
  v174 = *MEMORY[0x277D85DE8];
  classesCopy = classes;
  stringCopy = string;
  attributesCopy = attributes;
  predicateCopy = predicate;
  processedPredicateCopy = processedPredicate;
  eligiblePredicateCopy = eligiblePredicate;
  predicatesCopy = predicates;
  strCopy = str;
  timeCopy = time;
  dsCopy = ds;
  statisticsCopy = statistics;
  blockCopy = block;
  context = objc_autoreleasePoolPush();
  mEMORY[0x277D657A0] = [MEMORY[0x277D657A0] sharedContext];
  excludeBundles = [mEMORY[0x277D657A0] excludeBundles];

  v118 = objc_alloc_init(MEMORY[0x277CBEB18]);
  context = [(SKGJob *)self context];
  filterQuery = [context filterQuery];

  if (filterQuery)
  {
    context2 = [(SKGJob *)self context];
    filterQuery2 = [context2 filterQuery];
    [v118 addObject:filterQuery2];
  }

  v114 = [attributesCopy copy];
  v164 = 0;
  v165 = &v164;
  v166 = 0x3032000000;
  v167 = __Block_byref_object_copy__18;
  v168 = __Block_byref_object_dispose__18;
  v169 = objc_opt_new();
  v158 = 0;
  v159 = &v158;
  v160 = 0x3032000000;
  v161 = __Block_byref_object_copy__18;
  v162 = __Block_byref_object_dispose__18;
  v163 = objc_opt_new();
  v121 = objc_alloc_init(MEMORY[0x277CC34A0]);
  [v121 setFetchAttributes:v114];
  [v121 setDisableBundles:excludeBundles];
  if ([classesCopy count])
  {
    [v121 setProtectionClasses:classesCopy];
  }

  if (dsCopy)
  {
    [v121 setBundleIDs:dsCopy];
  }

  context3 = [(SKGJob *)self context];
  doNotUpdateList = [context3 doNotUpdateList];
  v30 = [excludeBundles arrayByAddingObjectsFromArray:doNotUpdateList];
  v112 = queryStringForUpdateFilter(v30, flagsCopy);

  [v118 addObject:v112];
  if (files)
  {
    v31 = objc_alloc_init(MEMORY[0x277CBEB18]);
    context4 = [(SKGJob *)self context];
    filterQuery3 = [context4 filterQuery];

    if (filterQuery3)
    {
      context5 = [(SKGJob *)self context];
      filterQuery4 = [context5 filterQuery];
      [v31 addObject:filterQuery4];
    }

    v36 = queryStringForUpdateFilter(0, flagsCopy);
    [v31 addObject:v36];
    context6 = [(SKGJob *)self context];
    currentPreferredLanguages = [context6 currentPreferredLanguages];
    v105 = queryStringForTextContentUpdates(currentPreferredLanguages, 0, v31, 52);
  }

  else
  {
    v105 = 0;
  }

  context7 = [(SKGJob *)self context];
  currentPreferredLanguages2 = [context7 currentPreferredLanguages];
  v41 = currentPreferredLanguages2;
  if (files)
  {
    v42 = 4;
  }

  else
  {
    v42 = 0;
  }

  v43 = queryStringForTextContentUpdates(currentPreferredLanguages2, excludeBundles, v118, v42 | flagsCopy);

  if (v43)
  {
    stringCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ || %@", v43, stringCopy];
  }

  else
  {
    stringCopy = 0;
  }

  array = [MEMORY[0x277CBEB18] array];
  v156 = 0u;
  v157 = 0u;
  v154 = 0u;
  v155 = 0u;
  obj = predicatesCopy;
  v44 = [obj countByEnumeratingWithState:&v154 objects:v173 count:16];
  if (v44)
  {
    v45 = *v155;
    do
    {
      for (i = 0; i != v44; ++i)
      {
        if (*v155 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v47 = *(*(&v154 + 1) + 8 * i);
        if ([v47 count])
        {
          v48 = [v47 objectAtIndexedSubscript:0];
          [array addObject:v48];
        }
      }

      v44 = [obj countByEnumeratingWithState:&v154 objects:v173 count:16];
    }

    while (v44);
  }

  v120 = objc_opt_new();
  v49 = [(SKGJob *)self _newCounterDictionaryForBundleIdentifier:@"Total" additionalAttributes:array];
  [v120 setObject:v49 forKey:@"Total"];

  if (statisticsCopy)
  {
    v50 = [statisticsCopy mutableCopy];
    v51 = [statisticsCopy objectForKeyedSubscript:@"bundleID"];
    [v120 setObject:v50 forKeyedSubscript:v51];

    v52 = [&unk_2846E8298 mutableCopy];
    v152 = 0u;
    v153 = 0u;
    v150 = 0u;
    v151 = 0u;
    v53 = obj;
    v54 = [v53 countByEnumeratingWithState:&v150 objects:v172 count:16];
    if (v54)
    {
      v55 = *v151;
      do
      {
        for (j = 0; j != v54; ++j)
        {
          if (*v151 != v55)
          {
            objc_enumerationMutation(v53);
          }

          v57 = [*(*(&v150 + 1) + 8 * j) objectAtIndexedSubscript:0];
          [v52 addObject:v57];
        }

        v54 = [v53 countByEnumeratingWithState:&v150 objects:v172 count:16];
      }

      while (v54);
    }

    v58 = [v120 objectForKeyedSubscript:@"Total"];
    v148 = 0u;
    v149 = 0u;
    v146 = 0u;
    v147 = 0u;
    v59 = v52;
    v60 = [v59 countByEnumeratingWithState:&v146 objects:v171 count:16];
    if (v60)
    {
      v61 = *v147;
      do
      {
        for (k = 0; k != v60; ++k)
        {
          if (*v147 != v61)
          {
            objc_enumerationMutation(v59);
          }

          v63 = *(*(&v146 + 1) + 8 * k);
          v64 = [statisticsCopy objectForKeyedSubscript:v63];
          if (v64)
          {
            v65 = MEMORY[0x277CCABB0];
            v66 = [v58 objectForKeyedSubscript:v63];
            v67 = [v65 numberWithInteger:{objc_msgSend(v64, "integerValue") + objc_msgSend(v66, "integerValue")}];
            [v58 setObject:v67 forKeyedSubscript:v63];
          }
        }

        v60 = [v59 countByEnumeratingWithState:&v146 objects:v171 count:16];
      }

      while (v60);
    }
  }

  if (!stringCopy)
  {
    goto LABEL_47;
  }

  v134[0] = MEMORY[0x277D85DD0];
  v134[1] = 3221225472;
  v134[2] = __314__SKGJob_Updates__generateCSReportForQueryFlags_protectionClasses_additionalQueryString_additionalFetchAttributes_processedPredicate_succesfullyProcessedPredicate_eligiblePredicate_additionalPredicates_dayCompletionStr_genStartTime_bundleIDs_daysToCompleteApproach_onlyFiles_mergeBundleStatistics_withCancelBlock___block_invoke;
  v134[3] = &unk_27893EC40;
  v135 = v120;
  selfCopy = self;
  v137 = array;
  v144 = &v164;
  v138 = stringCopy;
  v139 = v105;
  v145 = &v158;
  v141 = predicateCopy;
  v142 = processedPredicateCopy;
  v143 = eligiblePredicateCopy;
  v140 = obj;
  v68 = [(SKGJob *)self _runCSCounterForQueryString:v138 queryContext:v121 filesQuery:files counterItemBlock:v134 cancelBlock:blockCopy];

  if (v68)
  {
LABEL_47:
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v70 = [MEMORY[0x277CBEAA8] now];
    v71 = [currentCalendar components:16 fromDate:timeCopy toDate:v70 options:6];
    v72 = [v71 day];

    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v129 = v120;
    v73 = [v129 countByEnumeratingWithState:&v130 objects:v170 count:16];
    if (!v73)
    {
      goto LABEL_73;
    }

    v125 = *v131;
    while (1)
    {
      v126 = v73;
      for (m = 0; m != v126; ++m)
      {
        if (*v131 != v125)
        {
          objc_enumerationMutation(v129);
        }

        v75 = *(*(&v130 + 1) + 8 * m);
        v76 = [v129 objectForKeyedSubscript:v75];
        v77 = [v76 objectForKeyedSubscript:@"totalItems"];
        unsignedIntegerValue = [v77 unsignedIntegerValue];

        v79 = [v76 objectForKeyedSubscript:@"itemsProcessed"];
        unsignedIntegerValue2 = [v79 unsignedIntegerValue];

        v81 = [v76 objectForKeyedSubscript:@"itemsSuccessfullyProcessed"];
        unsignedIntegerValue3 = [v81 unsignedIntegerValue];

        v83 = [v76 objectForKeyedSubscript:@"eligibleItems"];
        unsignedIntegerValue4 = [v83 unsignedIntegerValue];

        if (unsignedIntegerValue)
        {
          v85 = unsignedIntegerValue2 / unsignedIntegerValue;
        }

        else
        {
          v85 = 0.0;
        }

        if (unsignedIntegerValue4 + unsignedIntegerValue - unsignedIntegerValue2)
        {
          v86 = unsignedIntegerValue3 / (unsignedIntegerValue4 + unsignedIntegerValue - unsignedIntegerValue2);
        }

        else
        {
          v86 = 0.0;
        }

        if ([v75 isEqualToString:@"Total"])
        {
          v87 = 0;
        }

        else
        {
          v87 = v75;
        }

        v88 = v87;
        context8 = [(SKGJob *)self context];
        v90 = [context8 getGenCompleteDayString:strCopy forBundle:v88];

        v91 = v86;
        if (approach)
        {
          if (approach != 1)
          {
            goto LABEL_67;
          }

          v91 = v85;
        }

        if (v90 < 0 && v91 >= 0.99)
        {
          context9 = [(SKGJob *)self context];
          [context9 setGenCompleteDayString:strCopy forBundle:v88 day:v72];

          v90 = v72;
        }

LABEL_67:
        v93 = [MEMORY[0x277CCABB0] numberWithInteger:{v72, v91}];
        [v76 setObject:v93 forKeyedSubscript:@"days"];

        v94 = [MEMORY[0x277CCABB0] numberWithInteger:v90];
        [v76 setObject:v94 forKeyedSubscript:@"daysToComplete"];

        v95 = [MEMORY[0x277CCABB0] numberWithDouble:v85];
        [v76 setObject:v95 forKeyedSubscript:@"progress"];

        v96 = [MEMORY[0x277CCABB0] numberWithDouble:v86];
        [v76 setObject:v96 forKeyedSubscript:@"completeness"];

        v97 = [v165[5] objectForKeyedSubscript:v75];

        if (v97)
        {
          v98 = [v165[5] objectForKeyedSubscript:v75];
          [v76 setObject:v98 forKeyedSubscript:@"query"];
        }

        v99 = [v159[5] objectForKeyedSubscript:v75];

        if (v99)
        {
          v100 = [v159[5] objectForKeyedSubscript:v75];
          [v76 setObject:v100 forKeyedSubscript:@"fileQuery"];
        }
      }

      v73 = [v129 countByEnumeratingWithState:&v130 objects:v170 count:16];
      if (!v73)
      {
LABEL_73:

        v101 = [v129 copy];
        goto LABEL_75;
      }
    }
  }

  v101 = 0;
LABEL_75:

  _Block_object_dispose(&v158, 8);
  _Block_object_dispose(&v164, 8);

  objc_autoreleasePoolPop(context);
  v102 = *MEMORY[0x277D85DE8];

  return v101;
}

void __314__SKGJob_Updates__generateCSReportForQueryFlags_protectionClasses_additionalQueryString_additionalFetchAttributes_processedPredicate_succesfullyProcessedPredicate_eligiblePredicate_additionalPredicates_dayCompletionStr_genStartTime_bundleIDs_daysToCompleteApproach_onlyFiles_mergeBundleStatistics_withCancelBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v59[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];

  if (!v7)
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) _newCounterDictionaryForBundleIdentifier:v5 additionalAttributes:*(a1 + 48)];
    [v8 setObject:v9 forKey:v5];

    [*(*(*(a1 + 104) + 8) + 40) setObject:*(a1 + 56) forKeyedSubscript:v5];
    v10 = *(a1 + 64);
    if (v10)
    {
      [*(*(*(a1 + 112) + 8) + 40) setObject:v10 forKeyedSubscript:v5];
    }
  }

  v59[0] = v5;
  v59[1] = @"Total";
  [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:2];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = v56 = 0u;
  v44 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
  if (v44)
  {
    v42 = *v54;
    v43 = a1;
    do
    {
      v11 = 0;
      do
      {
        if (*v54 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v45 = v11;
        v12 = [*(a1 + 32) objectForKeyedSubscript:*(*(&v53 + 1) + 8 * v11)];
        v13 = (*(*(a1 + 80) + 16))();
        v14 = (*(*(a1 + 88) + 16))();
        v47 = (*(*(a1 + 96) + 16))();
        v15 = MEMORY[0x277CCABB0];
        v16 = [v12 objectForKeyedSubscript:@"totalItems"];
        v17 = [v15 numberWithUnsignedInteger:{objc_msgSend(v16, "unsignedIntegerValue") + 1}];
        [v12 setObject:v17 forKeyedSubscript:@"totalItems"];

        v18 = MEMORY[0x277CCABB0];
        if (v13)
        {
          v19 = @"itemsProcessed";
        }

        else
        {
          v19 = @"itemsNeedProcessing";
        }

        v20 = [v12 objectForKeyedSubscript:v19];
        v21 = [v18 numberWithUnsignedInteger:{objc_msgSend(v20, "unsignedIntegerValue") + 1}];
        v46 = v12;
        [v12 setObject:v21 forKeyedSubscript:v19];

        if (v14)
        {
          v22 = MEMORY[0x277CCABB0];
          v23 = [v12 objectForKeyedSubscript:@"itemsSuccessfullyProcessed"];
          v24 = [v22 numberWithUnsignedInteger:{objc_msgSend(v23, "unsignedIntegerValue") + 1}];
          [v12 setObject:v24 forKeyedSubscript:@"itemsSuccessfullyProcessed"];
        }

        if (v47)
        {
          v25 = MEMORY[0x277CCABB0];
          v26 = [v46 objectForKeyedSubscript:@"eligibleItems"];
          v27 = [v25 numberWithUnsignedInteger:{objc_msgSend(v26, "unsignedIntegerValue") + 1}];
          [v46 setObject:v27 forKeyedSubscript:@"eligibleItems"];
        }

        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v48 = *(a1 + 72);
        v28 = [v48 countByEnumeratingWithState:&v49 objects:v57 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v50;
          do
          {
            for (i = 0; i != v29; ++i)
            {
              if (*v50 != v30)
              {
                objc_enumerationMutation(v48);
              }

              v32 = *(*(&v49 + 1) + 8 * i);
              v33 = [v32 objectAtIndexedSubscript:0];
              v34 = [v32 objectAtIndexedSubscript:1];
              if ((v34)[2](v34, v5, v6))
              {
                v35 = MEMORY[0x277CCABB0];
                [v46 objectForKeyedSubscript:v33];
                v36 = v6;
                v38 = v37 = v5;
                v39 = [v35 numberWithUnsignedInteger:{objc_msgSend(v38, "unsignedIntegerValue") + 1}];
                [v46 setObject:v39 forKeyedSubscript:v33];

                v5 = v37;
                v6 = v36;
              }
            }

            v29 = [v48 countByEnumeratingWithState:&v49 objects:v57 count:16];
          }

          while (v29);
        }

        v11 = v45 + 1;
        a1 = v43;
      }

      while (v45 + 1 != v44);
      v44 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
    }

    while (v44);
  }

  v40 = *MEMORY[0x277D85DE8];
}

- (id)generateCSEmbeddingsReportForProtectionClasses:(id)classes withCancelBlock:(id)block
{
  v71[6] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D657A0];
  blockCopy = block;
  classesCopy = classes;
  sharedContext = [v5 sharedContext];
  redonationRepeatCap = [sharedContext redonationRepeatCap];

  mEMORY[0x277D657A0] = [MEMORY[0x277D657A0] sharedContext];
  redonationThrottleHorizonDate = [mEMORY[0x277D657A0] redonationThrottleHorizonDate];

  mEMORY[0x277D657A0]2 = [MEMORY[0x277D657A0] sharedContext];
  embeddingVersion = [mEMORY[0x277D657A0]2 embeddingVersion];

  mEMORY[0x277D657A0]3 = [MEMORY[0x277D657A0] sharedContext];
  embeddingModelVersion = [mEMORY[0x277D657A0]3 embeddingModelVersion];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __82__SKGJob_Updates__generateCSEmbeddingsReportForProtectionClasses_withCancelBlock___block_invoke;
  aBlock[3] = &__block_descriptor_48_e35_B24__0__NSString_8__NSDictionary_16l;
  aBlock[4] = embeddingVersion;
  aBlock[5] = embeddingModelVersion;
  v51 = _Block_copy(aBlock);
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = __82__SKGJob_Updates__generateCSEmbeddingsReportForProtectionClasses_withCancelBlock___block_invoke_2;
  v62[3] = &__block_descriptor_48_e35_B24__0__NSString_8__NSDictionary_16l;
  v62[4] = embeddingVersion;
  v62[5] = embeddingModelVersion;
  v46 = _Block_copy(v62);
  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = __82__SKGJob_Updates__generateCSEmbeddingsReportForProtectionClasses_withCancelBlock___block_invoke_3;
  v61[3] = &__block_descriptor_48_e35_B24__0__NSString_8__NSDictionary_16l;
  v61[4] = embeddingVersion;
  v61[5] = embeddingModelVersion;
  v50 = _Block_copy(v61);
  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v60[2] = __82__SKGJob_Updates__generateCSEmbeddingsReportForProtectionClasses_withCancelBlock___block_invoke_4;
  v60[3] = &__block_descriptor_48_e35_B24__0__NSString_8__NSDictionary_16l;
  v60[4] = embeddingVersion;
  v60[5] = embeddingModelVersion;
  v49 = _Block_copy(v60);
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __82__SKGJob_Updates__generateCSEmbeddingsReportForProtectionClasses_withCancelBlock___block_invoke_5;
  v59[3] = &__block_descriptor_48_e35_B24__0__NSString_8__NSDictionary_16l;
  v59[4] = embeddingVersion;
  v59[5] = embeddingModelVersion;
  v48 = _Block_copy(v59);
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __82__SKGJob_Updates__generateCSEmbeddingsReportForProtectionClasses_withCancelBlock___block_invoke_6;
  v58[3] = &__block_descriptor_64_e35_B24__0__NSString_8__NSDictionary_16l;
  v58[4] = embeddingVersion;
  v58[5] = embeddingModelVersion;
  v58[6] = redonationThrottleHorizonDate;
  v58[7] = redonationRepeatCap;
  v45 = _Block_copy(v58);
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __82__SKGJob_Updates__generateCSEmbeddingsReportForProtectionClasses_withCancelBlock___block_invoke_7;
  v57[3] = &__block_descriptor_56_e35_B24__0__NSString_8__NSDictionary_16l;
  v57[4] = embeddingVersion;
  v57[5] = embeddingModelVersion;
  v57[6] = redonationThrottleHorizonDate;
  v47 = _Block_copy(v57);
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __82__SKGJob_Updates__generateCSEmbeddingsReportForProtectionClasses_withCancelBlock___block_invoke_8;
  v56[3] = &__block_descriptor_48_e35_B24__0__NSString_8__NSDictionary_16l;
  v56[4] = embeddingVersion;
  v56[5] = embeddingModelVersion;
  v44 = _Block_copy(v56);
  v70[0] = @"itemsWithEmbedding";
  v43 = _Block_copy(v46);
  v70[1] = v43;
  v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:2];
  v71[0] = v40;
  v69[0] = @"itemsWithPrimaryTextEmbedding";
  v39 = _Block_copy(v49);
  v69[1] = v39;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:2];
  v71[1] = v14;
  v68[0] = @"itemsWithSecondaryTextEmbedding";
  v15 = _Block_copy(v48);
  v68[1] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:2];
  v71[2] = v16;
  v67[0] = @"itemsAwaitingRedonation";
  v17 = _Block_copy(v47);
  v67[1] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:2];
  v71[3] = v18;
  v66[0] = @"itemsRedonationRequestCapReached";
  v19 = _Block_copy(v45);
  v66[1] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:2];
  v71[4] = v20;
  v65[0] = @"itemsNeedEmbeddings";
  v21 = _Block_copy(v44);
  v65[1] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:2];
  v71[5] = v22;
  v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:6];

  v24 = *MEMORY[0x277CC2FC8];
  v64[0] = *MEMORY[0x277CC2D70];
  v23 = v64[0];
  v64[1] = v24;
  v25 = *MEMORY[0x277CC2798];
  v64[2] = *MEMORY[0x277CC30E0];
  v64[3] = v25;
  v64[4] = @"_kMDItemNeedsEmbeddings";
  v64[5] = @"_kMDItemUpdaterVersion";
  v64[6] = @"_kMDItemUpdaterLastRequested";
  v64[7] = @"_kMDItemUpdaterRequestedCount";
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:8];
  v27 = MEMORY[0x277CCACA8];
  mEMORY[0x277D657A0]4 = [MEMORY[0x277D657A0] sharedContext];
  embeddingModelVersion2 = [mEMORY[0x277D657A0]4 embeddingModelVersion];
  mEMORY[0x277D657A0]5 = [MEMORY[0x277D657A0] sharedContext];
  v41 = [v27 stringWithFormat:@"_kMDItemNeedsEmbeddings=1 || (%@=*&&%@=%ld) || (%@=*&&%@=%ld)", v23, v23, embeddingModelVersion2, v25, v25, objc_msgSend(mEMORY[0x277D657A0]5, "embeddingVersion")];

  context = [(SKGJob *)self context];
  embeddingGenStartTime = [context embeddingGenStartTime];

  LOBYTE(v37) = 1;
  v33 = [(SKGJob *)self generateCSReportForQueryFlags:16 protectionClasses:classesCopy additionalQueryString:v41 additionalFetchAttributes:v26 processedPredicate:v51 succesfullyProcessedPredicate:v46 eligiblePredicate:v50 additionalPredicates:v42 dayCompletionStr:@"embeddingGenCompleteDay" genStartTime:embeddingGenStartTime bundleIDs:0 daysToCompleteApproach:0 onlyFiles:v37 mergeBundleStatistics:0 withCancelBlock:blockCopy];
  v34 = [v33 objectForKeyedSubscript:@"com.apple.metadata"];
  LOBYTE(v38) = 0;
  v55 = [(SKGJob *)self generateCSReportForQueryFlags:16 protectionClasses:classesCopy additionalQueryString:v41 additionalFetchAttributes:v26 processedPredicate:v51 succesfullyProcessedPredicate:v46 eligiblePredicate:v50 additionalPredicates:v42 dayCompletionStr:@"embeddingGenCompleteDay" genStartTime:embeddingGenStartTime bundleIDs:0 daysToCompleteApproach:0 onlyFiles:v38 mergeBundleStatistics:v34 withCancelBlock:blockCopy];

  v35 = *MEMORY[0x277D85DE8];

  return v55;
}

uint64_t __82__SKGJob_Updates__generateCSEmbeddingsReportForProtectionClasses_withCancelBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"kMDItemEmbeddingVersion"];
  v6 = [v4 objectForKeyedSubscript:@"_kMDItemMediaEmbeddingVersion"];
  v7 = [v4 objectForKeyedSubscript:@"_kMDItemNeedsEmbeddings"];

  v8 = 0;
  v9 = *MEMORY[0x277CBEEE8];
  if (v5 && v5 != v9)
  {
    v8 = [v5 integerValue] == *(a1 + 32);
  }

  if (v7)
  {
    v10 = v7 == v9;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  v12 = 1;
  if (v6 && v6 != v9)
  {
    v12 = [v6 integerValue] == *(a1 + 40);
  }

  v13 = v11 & v12;
  if (v8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t __82__SKGJob_Updates__generateCSEmbeddingsReportForProtectionClasses_withCancelBlock___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"kMDItemEmbeddingVersion"];
  v6 = [v4 objectForKeyedSubscript:@"_kMDItemMediaEmbeddingVersion"];
  v7 = [v4 objectForKeyedSubscript:@"_kMDItemNeedsEmbeddings"];

  v8 = 0;
  v9 = *MEMORY[0x277CBEEE8];
  if (v5 && v5 != v9)
  {
    v8 = [v5 integerValue] == *(a1 + 32);
  }

  v10 = 0;
  if (v7)
  {
    v11 = v7 == v9;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v6 && v6 != v9)
  {
    v10 = [v6 integerValue] == *(a1 + 40);
  }

  v13 = v12 & v10;
  if (v8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t __82__SKGJob_Updates__generateCSEmbeddingsReportForProtectionClasses_withCancelBlock___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"kMDItemEmbeddingVersion"];
  v6 = [v4 objectForKeyedSubscript:@"_kMDItemMediaEmbeddingVersion"];
  v7 = [v4 objectForKeyedSubscript:@"_kMDItemNeedsEmbeddings"];

  v8 = *MEMORY[0x277CBEEE8];
  v9 = 1;
  if (v5 && v5 != v8)
  {
    v9 = [v5 integerValue] != *(a1 + 32);
  }

  v10 = 1;
  if (v6 && v6 != v8)
  {
    v10 = [v6 integerValue] != *(a1 + 40);
  }

  if (v7)
  {
    v11 = v7 == v8;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  v13 = v12 | ~(v9 || v10);

  return v13 & 1;
}

uint64_t __82__SKGJob_Updates__generateCSEmbeddingsReportForProtectionClasses_withCancelBlock___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"kMDItemEmbeddingVersion"];
  v6 = [v4 objectForKeyedSubscript:@"_kMDItemMediaEmbeddingVersion"];
  v7 = [v4 objectForKeyedSubscript:@"_kMDItemNeedsEmbeddings"];
  v8 = [v4 objectForKeyedSubscript:*MEMORY[0x277CC2FC8]];

  v9 = 0;
  v10 = *MEMORY[0x277CBEEE8];
  if (v5 && v5 != v10)
  {
    v9 = [v5 integerValue] == *(a1 + 32);
  }

  v11 = 0;
  if (v6 && v6 != v10)
  {
    v11 = [v6 integerValue] == *(a1 + 40);
  }

  if (v7)
  {
    v12 = v7 == v10;
  }

  else
  {
    v12 = 1;
  }

  v13 = v12;
  v14 = v13 & v11;
  if (!v8)
  {
    v14 = 0;
  }

  if (v8 == v10)
  {
    v14 = 0;
  }

  if (v9)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

uint64_t __82__SKGJob_Updates__generateCSEmbeddingsReportForProtectionClasses_withCancelBlock___block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"kMDItemEmbeddingVersion"];
  v6 = [v4 objectForKeyedSubscript:@"_kMDItemMediaEmbeddingVersion"];
  v7 = [v4 objectForKeyedSubscript:@"_kMDItemNeedsEmbeddings"];
  v8 = [v4 objectForKeyedSubscript:*MEMORY[0x277CC30E0]];

  v9 = 0;
  v10 = *MEMORY[0x277CBEEE8];
  if (v5 && v5 != v10)
  {
    v9 = [v5 integerValue] == *(a1 + 32);
  }

  v11 = 0;
  if (v6 && v6 != v10)
  {
    v11 = [v6 integerValue] == *(a1 + 40);
  }

  if (v7)
  {
    v12 = v7 == v10;
  }

  else
  {
    v12 = 1;
  }

  v13 = v12;
  v14 = v13 & v11;
  if (!v8)
  {
    v14 = 0;
  }

  if (v8 == v10)
  {
    v14 = 0;
  }

  if (v9)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

uint64_t __82__SKGJob_Updates__generateCSEmbeddingsReportForProtectionClasses_withCancelBlock___block_invoke_6(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"kMDItemEmbeddingVersion"];
  v6 = [v4 objectForKeyedSubscript:@"_kMDItemMediaEmbeddingVersion"];
  v7 = [v4 objectForKeyedSubscript:@"_kMDItemNeedsEmbeddings"];
  v8 = *MEMORY[0x277CBEEE8];
  v9 = 1;
  if (v5 && v5 != v8)
  {
    v9 = [v5 integerValue] != *(a1 + 32);
  }

  v10 = 0;
  if (v7)
  {
    v11 = v7 == v8;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (v6 && v6 != v8)
  {
    v10 = [v6 integerValue] != *(a1 + 40);
  }

  if (((v9 | v12) & 1) != 0 || v10)
  {
    v14 = [v4 objectForKeyedSubscript:@"_kMDItemUpdaterVersion"];
    v15 = [v4 objectForKeyedSubscript:@"_kMDItemUpdaterLastRequested"];
    v16 = [v4 objectForKeyedSubscript:@"_kMDItemUpdaterRequestedCount"];
    v27 = a1;
    if (v14)
    {
      v19 = v14 == v8 || v15 == 0 || v15 == v8;
    }

    else
    {
      v19 = 1;
    }

    v20 = 0;
    if (v15 && v15 != v8)
    {
      v21 = v19;
      v22 = [v15 integerValue];
      v19 = v21;
      v20 = v22 < *(v27 + 48);
    }

    v23 = 0;
    if (v16 && v16 != v8)
    {
      v24 = v19;
      v25 = [v16 integerValue];
      v19 = v24;
      v23 = v25 == *(v27 + 56);
    }

    if ((v12 | v19))
    {
      v13 = 0;
    }

    else
    {
      v13 = v20 & v23;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t __82__SKGJob_Updates__generateCSEmbeddingsReportForProtectionClasses_withCancelBlock___block_invoke_7(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"kMDItemEmbeddingVersion"];
  v6 = [v4 objectForKeyedSubscript:@"_kMDItemMediaEmbeddingVersion"];
  v7 = [v4 objectForKeyedSubscript:@"_kMDItemNeedsEmbeddings"];
  v8 = *MEMORY[0x277CBEEE8];
  v9 = 1;
  if (v5 && v5 != v8)
  {
    v9 = [v5 integerValue] != a1[4];
  }

  v10 = 0;
  if (v7)
  {
    v11 = v7 == v8;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (v6 && v6 != v8)
  {
    v10 = [v6 integerValue] != a1[5];
  }

  if (((v9 | v12) & 1) != 0 || v10)
  {
    v14 = [v4 objectForKeyedSubscript:@"_kMDItemUpdaterVersion"];
    v15 = [v4 objectForKeyedSubscript:@"_kMDItemUpdaterLastRequested"];
    v16 = [v4 objectForKeyedSubscript:@"_kMDItemUpdaterRequestedCount"];
    if (v14)
    {
      v19 = v14 != v8 && v15 != 0 && v15 != v8;
    }

    else
    {
      v19 = 0;
    }

    v20 = 1;
    if (v15 && v15 != v8)
    {
      v21 = v16;
      v22 = [v15 integerValue] < a1[6];
      v16 = v21;
      v20 = !v22;
    }

    if (v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = v19 & v20;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t __82__SKGJob_Updates__generateCSEmbeddingsReportForProtectionClasses_withCancelBlock___block_invoke_8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"kMDItemEmbeddingVersion"];
  v6 = [v4 objectForKeyedSubscript:@"_kMDItemMediaEmbeddingVersion"];
  v7 = [v4 objectForKeyedSubscript:@"_kMDItemNeedsEmbeddings"];

  v8 = *MEMORY[0x277CBEEE8];
  v9 = 1;
  if (v5 && v5 != v8)
  {
    v9 = [v5 integerValue] != *(a1 + 32);
  }

  v10 = 0;
  if (v6 && v6 != v8)
  {
    v10 = [v6 integerValue] != *(a1 + 40);
  }

  if (v7)
  {
    v11 = v7 == v8;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  v13 = !v11 || v9;
  v14 = v13 | v10;

  return v14 & v12;
}

- (id)generateCSSuggestedEventsReportForProtectionClasses:(id)classes withCancelBlock:(id)block
{
  v46[4] = *MEMORY[0x277D85DE8];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __87__SKGJob_Updates__generateCSSuggestedEventsReportForProtectionClasses_withCancelBlock___block_invoke_2;
  aBlock[3] = &unk_27893ECE8;
  v39 = &__block_literal_global_299;
  blockCopy = block;
  classesCopy = classes;
  v33 = _Block_copy(aBlock);
  v45[0] = @"itemsWithSuggestedEvents";
  v6 = *MEMORY[0x277CC2A58];
  v7 = [(SKGJob *)self _fieldPresencePredicateWithFieldName:*MEMORY[0x277CC2A58]];
  v45[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:2];
  v46[0] = v8;
  v44[0] = @"itemsNeedSuggestedEvents";
  v9 = [(SKGJob *)self _fieldPresencePredicateWithFieldName:@"_kMDItemNeedsSuggestedEvents"];
  v44[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:2];
  v46[1] = v10;
  v43[0] = @"itemsAwaitingRedonation";
  v43[1] = &__block_literal_global_299;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:2];
  v46[2] = v11;
  v42[0] = @"itemsRedonationRequestCapReached";
  v12 = _Block_copy(v33);
  v42[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:2];
  v46[3] = v13;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:4];

  v41[0] = v6;
  v41[1] = @"kMDItemSuggestedEventsVersion";
  v41[2] = @"_kMDItemNeedsSuggestedEvents";
  v41[3] = @"_kMDItemUpdaterVersion";
  v41[4] = @"_kMDItemUpdaterRequestedCount";
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:5];
  v14 = MEMORY[0x277CCACA8];
  mEMORY[0x277D657A0] = [MEMORY[0x277D657A0] sharedContext];
  v16 = [v14 stringWithFormat:@"_kMDItemNeedsSuggestedEvents=1 || kMDItemEventType=* || (kMDItemSuggestedEventsVersion=*&&kMDItemSuggestedEventsVersion=%ld)", objc_msgSend(mEMORY[0x277D657A0], "suggestedEventsVersion")];

  v17 = MEMORY[0x277CCABB0];
  mEMORY[0x277D657A0]2 = [MEMORY[0x277D657A0] sharedContext];
  v19 = [v17 numberWithInteger:{objc_msgSend(mEMORY[0x277D657A0]2, "suggestedEventsVersion")}];

  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __87__SKGJob_Updates__generateCSSuggestedEventsReportForProtectionClasses_withCancelBlock___block_invoke_311;
  v36[3] = &unk_27893EC18;
  v37 = v19;
  v30 = v19;
  v20 = _Block_copy(v36);
  v40[0] = v6;
  v40[1] = @"_kMDItemNeedsSuggestedEvents";
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:2];
  context = [(SKGJob *)self context];
  suggestedEventsGenStartTime = [context suggestedEventsGenStartTime];

  v24 = [(SKGJob *)self _fieldPresencePredicateWithFieldName:@"kMDItemSuggestedEventsVersion"];
  v25 = [(SKGJob *)self _anyFieldPresentPredicateWithFieldNames:v21];
  LOBYTE(v28) = 1;
  v29 = [(SKGJob *)self generateCSReportForQueryFlags:128 protectionClasses:classesCopy additionalQueryString:v16 additionalFetchAttributes:v31 processedPredicate:v20 succesfullyProcessedPredicate:v24 eligiblePredicate:v25 additionalPredicates:v32 dayCompletionStr:@"suggestedEventsGenCompleteDay" genStartTime:suggestedEventsGenStartTime bundleIDs:0 daysToCompleteApproach:0 onlyFiles:v28 mergeBundleStatistics:0 withCancelBlock:blockCopy];

  v26 = *MEMORY[0x277D85DE8];

  return v29;
}

uint64_t __87__SKGJob_Updates__generateCSSuggestedEventsReportForProtectionClasses_withCancelBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"kMDItemSuggestedEventsVersion"];
  v5 = [v3 objectForKeyedSubscript:@"_kMDItemNeedsSuggestedEvents"];
  v6 = [v3 objectForKeyedSubscript:@"_kMDItemUpdaterVersion"];

  if (v6 && (v7 = *MEMORY[0x277CBEEE8], v6 != *MEMORY[0x277CBEEE8]) && (!v4 || v4 == v7))
  {
    if (v5)
    {
      v10 = v5 == v7;
    }

    else
    {
      v10 = 1;
    }

    v8 = v10;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __87__SKGJob_Updates__generateCSSuggestedEventsReportForProtectionClasses_withCancelBlock___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ((*(*(a1 + 32) + 16))())
  {
    v5 = [v4 objectForKeyedSubscript:@"_kMDItemUpdaterRequestedCount"];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 isEqualToNumber:&unk_2846E7CF8];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __87__SKGJob_Updates__generateCSSuggestedEventsReportForProtectionClasses_withCancelBlock___block_invoke_311(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"kMDItemSuggestedEventsVersion"];
  v6 = [v4 objectForKeyedSubscript:@"_kMDItemNeedsSuggestedEvents"];

  v7 = 0;
  v8 = *MEMORY[0x277CBEEE8];
  if (v5 && v5 != v8)
  {
    v7 = [v5 isEqualToNumber:*(a1 + 32)];
  }

  if (v6)
  {
    v9 = v6 == v8;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)generateCSDocumentUnderstandingReportForProtectionClasses:(id)classes withCancelBlock:(id)block
{
  v46[4] = *MEMORY[0x277D85DE8];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __93__SKGJob_Updates__generateCSDocumentUnderstandingReportForProtectionClasses_withCancelBlock___block_invoke_2;
  aBlock[3] = &unk_27893ECE8;
  v39 = &__block_literal_global_316;
  blockCopy = block;
  classesCopy = classes;
  v33 = _Block_copy(aBlock);
  v45[0] = @"itemsWithDocumentUnderstanding";
  v6 = *MEMORY[0x277CC25B0];
  v7 = [(SKGJob *)self _fieldPresencePredicateWithFieldName:*MEMORY[0x277CC25B0]];
  v45[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:2];
  v46[0] = v8;
  v44[0] = @"itemsNeedDocumentUnderstanding";
  v9 = [(SKGJob *)self _fieldPresencePredicateWithFieldName:@"_kMDItemNeedsDocumentUnderstanding"];
  v44[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:2];
  v46[1] = v10;
  v43[0] = @"itemsAwaitingRedonation";
  v43[1] = &__block_literal_global_316;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:2];
  v46[2] = v11;
  v42[0] = @"itemsRedonationRequestCapReached";
  v12 = _Block_copy(v33);
  v42[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:2];
  v46[3] = v13;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:4];

  v41[0] = v6;
  v41[1] = @"kMDItemDocumentUnderstandingVersion";
  v41[2] = @"_kMDItemNeedsDocumentUnderstanding";
  v41[3] = @"_kMDItemUpdaterVersion";
  v41[4] = @"_kMDItemUpdaterRequestedCount";
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:5];
  v14 = MEMORY[0x277CCACA8];
  mEMORY[0x277D657A0] = [MEMORY[0x277D657A0] sharedContext];
  v16 = [v14 stringWithFormat:@"_kMDItemNeedsDocumentUnderstanding=1 || kMDItemCardType=* || (kMDItemDocumentUnderstandingVersion=*&&kMDItemDocumentUnderstandingVersion=%ld)", objc_msgSend(mEMORY[0x277D657A0], "documentUnderstandingVersion")];

  v17 = MEMORY[0x277CCABB0];
  mEMORY[0x277D657A0]2 = [MEMORY[0x277D657A0] sharedContext];
  v19 = [v17 numberWithInteger:{objc_msgSend(mEMORY[0x277D657A0]2, "documentUnderstandingVersion")}];

  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __93__SKGJob_Updates__generateCSDocumentUnderstandingReportForProtectionClasses_withCancelBlock___block_invoke_3;
  v36[3] = &unk_27893EC18;
  v37 = v19;
  v30 = v19;
  v20 = _Block_copy(v36);
  v40[0] = v6;
  v40[1] = @"_kMDItemNeedsDocumentUnderstanding";
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:2];
  context = [(SKGJob *)self context];
  documentUnderstandingGenStartTime = [context documentUnderstandingGenStartTime];

  v24 = [(SKGJob *)self _fieldPresencePredicateWithFieldName:@"kMDItemDocumentUnderstandingVersion"];
  v25 = [(SKGJob *)self _anyFieldPresentPredicateWithFieldNames:v21];
  LOBYTE(v28) = 1;
  v29 = [(SKGJob *)self generateCSReportForQueryFlags:256 protectionClasses:classesCopy additionalQueryString:v16 additionalFetchAttributes:v31 processedPredicate:v20 succesfullyProcessedPredicate:v24 eligiblePredicate:v25 additionalPredicates:v32 dayCompletionStr:@"documentUnderstandingGenCompleteDay" genStartTime:documentUnderstandingGenStartTime bundleIDs:0 daysToCompleteApproach:0 onlyFiles:v28 mergeBundleStatistics:0 withCancelBlock:blockCopy];

  v26 = *MEMORY[0x277D85DE8];

  return v29;
}

uint64_t __93__SKGJob_Updates__generateCSDocumentUnderstandingReportForProtectionClasses_withCancelBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"kMDItemDocumentUnderstandingVersion"];
  v5 = [v3 objectForKeyedSubscript:@"_kMDItemNeedsDocumentUnderstanding"];
  v6 = [v3 objectForKeyedSubscript:@"_kMDItemUpdaterVersion"];

  if (v6 && (v7 = *MEMORY[0x277CBEEE8], v6 != *MEMORY[0x277CBEEE8]) && (!v4 || v4 == v7))
  {
    if (v5)
    {
      v10 = v5 == v7;
    }

    else
    {
      v10 = 1;
    }

    v8 = v10;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __93__SKGJob_Updates__generateCSDocumentUnderstandingReportForProtectionClasses_withCancelBlock___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ((*(*(a1 + 32) + 16))())
  {
    v5 = [v4 objectForKeyedSubscript:@"_kMDItemUpdaterRequestedCount"];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 isEqualToNumber:&unk_2846E7CF8];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __93__SKGJob_Updates__generateCSDocumentUnderstandingReportForProtectionClasses_withCancelBlock___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"kMDItemDocumentUnderstandingVersion"];
  v6 = [v4 objectForKeyedSubscript:@"_kMDItemNeedsDocumentUnderstanding"];

  v7 = 0;
  v8 = *MEMORY[0x277CBEEE8];
  if (v5 && v5 != v8)
  {
    v7 = [v5 isEqualToNumber:*(a1 + 32)];
  }

  if (v6)
  {
    v9 = v6 == v8;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)generateCSKeyphraseReportForProtectionClasses:(id)classes withCancelBlock:(id)block
{
  v56[6] = *MEMORY[0x277D85DE8];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __81__SKGJob_Updates__generateCSKeyphraseReportForProtectionClasses_withCancelBlock___block_invoke_2;
  aBlock[3] = &unk_27893ECE8;
  v48 = &__block_literal_global_330;
  blockCopy = block;
  classesCopy = classes;
  v41 = _Block_copy(aBlock);
  v55[0] = @"itemsWithKeyphrases";
  v38 = [(SKGJob *)self _fieldPresencePredicateWithFieldName:@"kMDItemKeyphraseLabels"];
  v55[1] = v38;
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:2];
  v56[0] = v36;
  v54[0] = @"itemsWithBreadcrumbs";
  v34 = [(SKGJob *)self _fieldPresencePredicateWithFieldName:@"kMDItemBreadcrumbsVersion"];
  v54[1] = v34;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:2];
  v56[1] = v6;
  v53[0] = @"itemsWithLocations";
  v7 = [(SKGJob *)self _fieldPresencePredicateWithFieldName:@"kMDItemExtractedAddressesSynonyms"];
  v53[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:2];
  v56[2] = v8;
  v52[0] = @"itemsNeedProcessing";
  v9 = [(SKGJob *)self _fieldPresencePredicateWithFieldName:@"_kMDItemNeedsKeyphrases"];
  v52[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:2];
  v56[3] = v10;
  v51[0] = @"itemsAwaitingRedonation";
  v51[1] = &__block_literal_global_330;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:2];
  v56[4] = v11;
  v50[0] = @"itemsRedonationRequestCapReached";
  v12 = _Block_copy(v41);
  v50[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:2];
  v56[5] = v13;
  v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:6];

  v14 = MEMORY[0x277CCACA8];
  mEMORY[0x277D657A0] = [MEMORY[0x277D657A0] sharedContext];
  keyphraseVersion = [mEMORY[0x277D657A0] keyphraseVersion];
  mEMORY[0x277D657A0]2 = [MEMORY[0x277D657A0] sharedContext];
  v39 = [v14 stringWithFormat:@"_kMDItemNeedsKeyphrases=1 || kMDItemKeyphraseLabels=* || (kMDItemKeyphraseVersion=*&&kMDItemKeyphraseVersion=%ld) || (kMDItemKeyphraseVersion=*&&kMDItemKeyphraseVersion=%ld)", keyphraseVersion, objc_msgSend(mEMORY[0x277D657A0]2, "breadcrumbsVersion")];

  v18 = MEMORY[0x277CCABB0];
  mEMORY[0x277D657A0]3 = [MEMORY[0x277D657A0] sharedContext];
  v20 = [v18 numberWithInteger:{objc_msgSend(mEMORY[0x277D657A0]3, "keyphraseVersion")}];

  v21 = MEMORY[0x277CCABB0];
  mEMORY[0x277D657A0]4 = [MEMORY[0x277D657A0] sharedContext];
  v23 = [v21 numberWithInteger:{objc_msgSend(mEMORY[0x277D657A0]4, "breadcrumbsVersion")}];

  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __81__SKGJob_Updates__generateCSKeyphraseReportForProtectionClasses_withCancelBlock___block_invoke_3;
  v44[3] = &unk_27893ED10;
  v45 = v20;
  v46 = v23;
  v37 = v23;
  v35 = v20;
  v24 = _Block_copy(v44);
  v49[0] = *MEMORY[0x277CC25B0];
  v49[1] = @"_kMDItemNeedsKeyphrases";
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:2];
  context = [(SKGJob *)self context];
  keyphraseGenStartTime = [context keyphraseGenStartTime];

  v28 = [(SKGJob *)self _fieldPresencePredicateWithFieldName:@"kMDItemKeyphraseVersion"];
  v29 = [(SKGJob *)self _anyFieldPresentPredicateWithFieldNames:v25];
  LOBYTE(v33) = 1;
  v30 = [(SKGJob *)self generateCSReportForQueryFlags:32 protectionClasses:classesCopy additionalQueryString:v39 additionalFetchAttributes:&unk_2846E82B0 processedPredicate:v24 succesfullyProcessedPredicate:v28 eligiblePredicate:v29 additionalPredicates:v40 dayCompletionStr:@"keyphraseGenCompleteDay" genStartTime:keyphraseGenStartTime bundleIDs:0 daysToCompleteApproach:0 onlyFiles:v33 mergeBundleStatistics:0 withCancelBlock:blockCopy];

  v31 = *MEMORY[0x277D85DE8];

  return v30;
}

uint64_t __81__SKGJob_Updates__generateCSKeyphraseReportForProtectionClasses_withCancelBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"kMDItemKeyphraseVersion"];
  v5 = [v3 objectForKeyedSubscript:@"_kMDItemNeedsKeyphrases"];
  v6 = [v3 objectForKeyedSubscript:@"_kMDItemUpdaterVersion"];

  if (v6 && (v7 = *MEMORY[0x277CBEEE8], v6 != *MEMORY[0x277CBEEE8]) && (!v4 || v4 == v7))
  {
    if (v5)
    {
      v10 = v5 == v7;
    }

    else
    {
      v10 = 1;
    }

    v8 = v10;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __81__SKGJob_Updates__generateCSKeyphraseReportForProtectionClasses_withCancelBlock___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ((*(*(a1 + 32) + 16))())
  {
    v5 = [v4 objectForKeyedSubscript:@"_kMDItemUpdaterRequestedCount"];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 isEqualToNumber:&unk_2846E7CF8];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __81__SKGJob_Updates__generateCSKeyphraseReportForProtectionClasses_withCancelBlock___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"kMDItemBreadcrumbsVersion"];
  v6 = [v4 objectForKeyedSubscript:@"kMDItemKeyphraseVersion"];
  v7 = [v4 objectForKeyedSubscript:@"_kMDItemNeedsKeyphrases"];

  v8 = *MEMORY[0x277CBEEE8];
  if (!v6 || v6 == v8)
  {
    v11 = 0;
    if (v6 || !v5 || v5 == v8)
    {
      goto LABEL_9;
    }

    v9 = 40;
    v10 = v5;
  }

  else
  {
    v9 = 32;
    v10 = v6;
  }

  v11 = [v10 isEqualToNumber:*(a1 + v9)];
LABEL_9:
  if (v7)
  {
    v12 = v7 == v8;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)requestCSEmbeddingsProgressReport:(id)report cancelBlock:(id)block
{
  reportCopy = report;
  v7 = [(SKGJob *)self generateCSEmbeddingsReportWithCancelBlock:block];
  if (v7)
  {
    reportCopy[2](reportCopy, v7);
  }

  return v7 != 0;
}

- (BOOL)requestCSSuggestedEventsProgressReport:(id)report cancelBlock:(id)block
{
  reportCopy = report;
  v7 = [(SKGJob *)self generateCSSuggestedEventsReportWithCancelBlock:block];
  if (v7)
  {
    reportCopy[2](reportCopy, v7);
  }

  return v7 != 0;
}

- (BOOL)requestCSDocumentUnderstandingProgressReport:(id)report cancelBlock:(id)block
{
  reportCopy = report;
  v7 = [(SKGJob *)self generateCSDocumentUnderstandingReportWithCancelBlock:block];
  if (v7)
  {
    reportCopy[2](reportCopy, v7);
  }

  return v7 != 0;
}

- (BOOL)_runCSPollingQueryString:(id)string queryContext:(id)context foundItemBlock:(id)block
{
  stringCopy = string;
  contextCopy = context;
  blockCopy = block;
  if (stringCopy)
  {
    [contextCopy setDisableResultStreaming:1];
    [contextCopy setMaximumBatchSize:100];
    context = [(SKGJob *)self context];
    maxItemCountPerBatch = [context maxItemCountPerBatch];

    if (maxItemCountPerBatch >= 1)
    {
      context2 = [(SKGJob *)self context];
      [contextCopy setMaximumBatchSize:{objc_msgSend(context2, "maxItemCountPerBatch")}];
    }

    v14 = [objc_alloc(MEMORY[0x277CC3498]) initWithQueryString:stringCopy queryContext:contextCopy];
    v15 = dispatch_group_create();
    objc_initWeak(location, v14);
    v39 = 0;
    v40 = &v39;
    v41 = 0x2020000000;
    v42 = 0;
    v37[0] = 0;
    v37[1] = v37;
    v37[2] = 0x2020000000;
    v38 = 1;
    v35[0] = 0;
    v35[1] = v35;
    v35[2] = 0x2020000000;
    v36 = 0;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __72__SKGJob_Updates___runCSPollingQueryString_queryContext_foundItemBlock___block_invoke;
    v27[3] = &unk_27893ED38;
    v28 = contextCopy;
    v31 = v37;
    v30 = blockCopy;
    v32 = &v39;
    objc_copyWeak(&v34, location);
    v33 = v35;
    v16 = v15;
    v29 = v16;
    [v14 setFoundItemsHandler:v27];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __72__SKGJob_Updates___runCSPollingQueryString_queryContext_foundItemBlock___block_invoke_358;
    v22[3] = &unk_27893E978;
    v24 = v37;
    v25 = &v39;
    v26 = v35;
    v17 = v16;
    v23 = v17;
    [v14 setCompletionHandler:v22];
    dispatch_group_enter(v17);
    context3 = [(SKGJob *)self context];
    [context3 logSignpost:7 message:@"starting batch querying"];

    [v14 start];
    [v14 poll];
    context4 = [(SKGJob *)self context];
    [context4 logSignpost:8 message:@"end batch querying"];

    dispatch_group_wait(v17, 0xFFFFFFFFFFFFFFFFLL);
    v20 = *(v40 + 24);

    objc_destroyWeak(&v34);
    _Block_object_dispose(v35, 8);
    _Block_object_dispose(v37, 8);
    _Block_object_dispose(&v39, 8);
    objc_destroyWeak(location);
  }

  else
  {
    v20 = 1;
  }

  return v20 & 1;
}

void __72__SKGJob_Updates___runCSPollingQueryString_queryContext_foundItemBlock___block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  context = objc_autoreleasePoolPush();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v25;
    do
    {
      v7 = 0;
      do
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v24 + 1) + 8 * v7);
        v9 = objc_autoreleasePoolPush();
        v10 = [v8 attributeSet];
        v11 = [v10 bundleID];

        if (!v11)
        {
          if (SKGLogGetCurrentLoggingLevel() >= 2)
          {
            v15 = SKGLogInit();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              __100__SKGJob_Updates___runCSCounterForQueryString_queryContext_filesQuery_counterItemBlock_cancelBlock___block_invoke_cold_1(v28, v8);
            }
          }

LABEL_17:

          objc_autoreleasePoolPop(v9);
          goto LABEL_21;
        }

        v12 = [*(a1 + 32) bundleIDs];
        if ([v12 count])
        {
          v13 = [*(a1 + 32) bundleIDs];
          v14 = [v13 containsObject:v11];

          if (!v14)
          {
            goto LABEL_17;
          }
        }

        else
        {
        }

        v16 = [*(a1 + 32) disableBundles];
        if ([v16 count])
        {
          v17 = [*(a1 + 32) disableBundles];
          v18 = [v17 containsObject:v11];

          if (v18)
          {
            goto LABEL_17;
          }
        }

        else
        {
        }

        *(*(*(a1 + 56) + 8) + 24) = (*(*(a1 + 48) + 16))();

        objc_autoreleasePoolPop(v9);
        if ((*(*(*(a1 + 64) + 8) + 24) & 1) != 0 || *(*(*(a1 + 56) + 8) + 24) != 1)
        {
          goto LABEL_23;
        }

LABEL_21:
        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v5);
  }

LABEL_23:

  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v20 = WeakRetained;
  if ((*(*(*(a1 + 64) + 8) + 24) & 1) != 0 || (*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    [WeakRetained cancel];
    *(*(*(a1 + 72) + 8) + 24) = 1;
    dispatch_group_leave(*(a1 + 40));
  }

  else
  {
    [WeakRetained poll];
  }

  objc_autoreleasePoolPop(context);
  v21 = *MEMORY[0x277D85DE8];
}

void __72__SKGJob_Updates___runCSPollingQueryString_queryContext_foundItemBlock___block_invoke_358(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    dispatch_group_leave(*(a1 + 32));
  }
}

- (BOOL)_buildCSCountingReportWithQueryString:(id)string queryContext:(id)context flags:(unsigned int)flags reporter:(id)reporter cancelBlock:(id)block
{
  reporterCopy = reporter;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __97__SKGJob_Updates___buildCSCountingReportWithQueryString_queryContext_flags_reporter_cancelBlock___block_invoke;
  v14[3] = &unk_27893ED60;
  v15 = reporterCopy;
  flagsCopy = flags;
  v12 = reporterCopy;
  LOBYTE(context) = [(SKGJob *)self _runCSPollingQueryString:string queryContext:context foundItemBlock:v14];

  return context;
}

uint64_t __97__SKGJob_Updates___buildCSCountingReportWithQueryString_queryContext_flags_reporter_cancelBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [v6 attributeSet];
  v9 = [v8 attributeDictionary];

  [*(a1 + 32) addFromRecord:v9 bundleID:v5];
  if ((*(a1 + 40) & 0x10) != 0)
  {
    v10 = [MEMORY[0x277D65798] sharedProcessor];
    v11 = [v10 needsSKGReindexingForRecord:v9 bundleID:v5 processorFlags:2];

    if (v11)
    {
      [*(a1 + 32) addAttribute:@"NeedsEmbeddings" bundleID:v5];
    }
  }

  if ((*(a1 + 40) & 0x20) != 0)
  {
    v12 = [MEMORY[0x277D65798] sharedProcessor];
    v13 = [v12 needsSKGReindexingForRecord:v9 bundleID:v5 processorFlags:4];

    if (v13)
    {
      [*(a1 + 32) addAttribute:@"NeedsKeyphrases" bundleID:v5];
    }
  }

  if (*(a1 + 41))
  {
    v14 = [MEMORY[0x277D65798] sharedProcessor];
    v15 = [v14 needsSKGReindexingForRecord:v9 bundleID:v5 processorFlags:32];

    if (v15)
    {
      [*(a1 + 32) addAttribute:@"NeedsDocumentUnderstanding" bundleID:v5];
    }
  }

  if ((*(a1 + 40) & 0x80) != 0)
  {
    v16 = [MEMORY[0x277D65798] sharedProcessor];
    v17 = [v16 needsSKGReindexingForRecord:v9 bundleID:v5 processorFlags:16];

    if (v17)
    {
      [*(a1 + 32) addAttribute:@"NeedsSuggestedEvents" bundleID:v5];
    }
  }

  v18 = *(a1 + 32);
  v19 = [v6 uniqueIdentifier];
  [v18 logFromRecord:v9 uniqueID:v19 bundleID:v5];

  v20 = *(a1 + 32);
  v21 = *MEMORY[0x277CC2A90];
  v22 = [v6 attributeSet];
  v23 = [v22 extractedAddresses];
  v24 = [v6 uniqueIdentifier];
  [v20 logAttribute:v21 value:v23 uniqueID:v24 bundleID:v5];

  v25 = *(a1 + 32);
  v26 = *MEMORY[0x277CC2AE8];
  v27 = [v6 attributeSet];
  v28 = [v27 extractedLocations];
  v29 = [v6 uniqueIdentifier];
  [v25 logAttribute:v26 value:v28 uniqueID:v29 bundleID:v5];

  v30 = *(a1 + 32);
  v31 = *MEMORY[0x277CC2AA8];
  v32 = [v6 attributeSet];
  v33 = [v32 extractedDates];
  v34 = [v6 uniqueIdentifier];
  [v30 logAttribute:v31 value:v33 uniqueID:v34 bundleID:v5];

  v35 = *(a1 + 32);
  v36 = *MEMORY[0x277CC2AD8];
  v37 = [v6 attributeSet];
  v38 = [v37 extractedLinks];
  v39 = [v6 uniqueIdentifier];
  [v35 logAttribute:v36 value:v38 uniqueID:v39 bundleID:v5];

  v40 = *(a1 + 32);
  v41 = *MEMORY[0x277CC2AB8];
  v42 = [v6 attributeSet];
  v43 = [v42 extractedEmails];
  v44 = [v6 uniqueIdentifier];
  [v40 logAttribute:v41 value:v43 uniqueID:v44 bundleID:v5];

  v45 = *(a1 + 32);
  v46 = *MEMORY[0x277CC2AF8];
  v47 = [v6 attributeSet];
  v48 = [v47 extractedPhoneNumbers];
  v49 = [v6 uniqueIdentifier];
  [v45 logAttribute:v46 value:v48 uniqueID:v49 bundleID:v5];

  v50 = *(a1 + 32);
  v51 = *MEMORY[0x277CC2AC8];
  v52 = [v6 attributeSet];
  v53 = [v52 extractedFlights];
  v54 = [v6 uniqueIdentifier];
  [v50 logAttribute:v51 value:v53 uniqueID:v54 bundleID:v5];

  objc_autoreleasePoolPop(v7);
  return 1;
}

void __107__SKGJob_People___updateCoreSpotlightItems_bundleIdentifier_protectionClass_batchUpdatedBlock_cancelBlock___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_231B25000, a2, OS_LOG_TYPE_ERROR, "%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __54__SKGJob_Pipeline___runCSPollingQuery_foundItemBlock___block_invoke_cold_1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 uniqueIdentifier];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&dword_231B25000, a4, OS_LOG_TYPE_ERROR, "Missing bundleID for item with ID: %@", a1, 0xCu);
}

void __108__SKGJob_Updates___updateCoreSpotlightItems_bundleIdentifier_protectionClass_batchUpdatedBlock_cancelBlock___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_9(&dword_231B25000, a2, a3, "%@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __117__SKGJob_Updates___reindexCoreSpotlightIdentifiers_bundleIdentifier_protectionClass_batchProcessedBlock_cancelBlock___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*(a1 + 32));
  OUTLINED_FUNCTION_1_9(&dword_231B25000, a2, a3, "Could not run command: %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __125__SKGJob_Updates___runCSReindexForQueryString_queryContext_processorFlags_batchProcessedBlock_batchUpdatedBlock_cancelBlock___block_invoke_2_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_0_5(a1 a2)];
  OUTLINED_FUNCTION_2_6(v2, 5.7779e-34);
  OUTLINED_FUNCTION_1_6(&dword_231B25000, v3, v4, "Item (%@) has no bundleID.");
}

void __118__SKGJob_Updates___runCSProcessingForTask_queryString_queryContext_batchProcessedBlock_batchUpdatedBlock_cancelBlock___block_invoke_2_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_0_5(a1 a2)];
  OUTLINED_FUNCTION_2_6(v2, 5.7779e-34);
  OUTLINED_FUNCTION_1_6(&dword_231B25000, v3, v4, "=== Item (%@) has no bundleID.");
}

void __100__SKGJob_Updates___runCSCounterForQueryString_queryContext_filesQuery_counterItemBlock_cancelBlock___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_0_5(a1 a2)];
  OUTLINED_FUNCTION_2_6(v2, 5.7779e-34);
  OUTLINED_FUNCTION_1_6(&dword_231B25000, v3, v4, "Missing bundleID for item with ID: %@");
}

@end