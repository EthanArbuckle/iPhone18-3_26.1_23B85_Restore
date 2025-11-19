@interface SpotlightKnowledge
+ (BOOL)processLegacyPipelinesReportWithCancelBlock:(id)a3;
+ (void)initialize;
+ (void)runWithJobContext:(id)a3 group:(id)a4 delegate:(id)a5;
+ (void)runWithJobContext:(id)a3 queue:(id)a4 group:(id)a5 progressBlock:(id)a6 checkpointBlock:(id)a7 completeBlock:(id)a8 cancelBlock:(id)a9 deferBlock:(id)a10;
- (BOOL)addProcessedItem:(id)a3 cancelBlock:(id)a4;
- (BOOL)addProcessedPerson:(id)a3 group:(id)a4 cancelBlock:(id)a5;
- (BOOL)analyzeGraphWithCancelBlock:(id)a3;
- (BOOL)canProcessItemAttributes:(id)a3 bundleIdentifier:(id)a4 protectionClass:(id)a5;
- (BOOL)flushGraphWithGroup:(id)a3 cancelBlock:(id)a4;
- (BOOL)graphNeedsAnalysis;
- (BOOL)loadGraphWithGroup:(id)a3 cancelBlock:(id)a4;
- (BOOL)processAttributesWithJobContext:(id)a3 group:(id)a4 cancelBlock:(id)a5;
- (BOOL)processCSArchivesWithGroup:(id)a3 protectionClasses:(id)a4 shouldRemove:(BOOL)a5 archiverNextPathBlock:(id)a6 processedPathBlock:(id)a7 processedItemsBlock:(id)a8 errorLogBlock:(id)a9 cancelBlock:(id)a10;
- (BOOL)processCSJournalsWithGroup:(id)a3 protectionClasses:(id)a4 includeEmbeddings:(BOOL)a5 includeKeyphrases:(BOOL)a6 shouldRemove:(BOOL)a7 readerNextPathBlock:(id)a8 deletedReferencesBlock:(id)a9 processedPathBlock:(id)a10 processedItemsBlock:(id)a11 errorLogBlock:(id)a12 cancelBlock:(id)a13;
- (BOOL)processDeletesWithJobContext:(id)a3 group:(id)a4 cancelBlock:(id)a5;
- (BOOL)processDocumentUnderstandingReportWithJobContext:(id)a3 cancelBlock:(id)a4;
- (BOOL)processEmbeddingsReportWithJobContext:(id)a3 progressBlock:(id)a4 checkpointBlock:(id)a5 cancelBlock:(id)a6;
- (BOOL)processGraphWithGroup:(id)a3 cancelBlock:(id)a4;
- (BOOL)processPeopleWithGroup:(id)a3 cancelBlock:(id)a4;
- (BOOL)processSuggestedEventsReportWithJobContext:(id)a3 cancelBlock:(id)a4;
- (BOOL)processTextWithJobContext:(id)a3 group:(id)a4 cancelBlock:(id)a5;
- (BOOL)removeGraphEntitiesWithCancelBlock:(id)a3;
- (BOOL)removeGraphPeopleWithCancelBlock:(id)a3;
- (BOOL)removeReferences:(id)a3 bundleIdentifier:(id)a4 cancelBlock:(id)a5;
- (BOOL)scoreGraphWithCancelBlock:(id)a3;
- (BOOL)updateSpotlightContactsWithJobContext:(id)a3 group:(id)a4 cancelBlock:(id)a5;
- (SpotlightKnowledge)initWithJobContext:(id)a3;
- (id)coreSpotlightIndexWithBundleIdentifier:(id)a3 protectionClass:(id)a4;
- (id)coreSpotlightItemWithAttributes:(id)a3 referenceIdentifier:(id)a4 bundleIdentifier:(id)a5;
- (id)peopleAttributesWithProcessedItem:(id)a3;
- (id)timerWithBlock:(id)a3;
- (void)runWithGroup:(id)a3 delegate:(id)a4;
- (void)runWithQueue:(id)a3 group:(id)a4 progressBlock:(id)a5 checkpointBlock:(id)a6 completeBlock:(id)a7 cancelBlock:(id)a8 deferBlock:(id)a9;
- (void)sendAnalytics;
- (void)unloadGraphWithGroup:(id)a3 cancelBlock:(id)a4;
- (void)updateCoreSpotlightWithItems:(id)a3 index:(id)a4 group:(id)a5 cancelBlock:(id)a6;
@end

@implementation SpotlightKnowledge

+ (void)initialize
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__SpotlightKnowledge_initialize__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (initialize_onceToken_0 != -1)
  {
    dispatch_once(&initialize_onceToken_0, block);
  }
}

void __32__SpotlightKnowledge_initialize__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 == objc_opt_class())
  {
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v2 = dispatch_queue_create("com.apple.spotlight.SpotlightKnowledge.Timer", v4);
    v3 = gTimerQueue;
    gTimerQueue = v2;
  }
}

+ (void)runWithJobContext:(id)a3 queue:(id)a4 group:(id)a5 progressBlock:(id)a6 checkpointBlock:(id)a7 completeBlock:(id)a8 cancelBlock:(id)a9 deferBlock:(id)a10
{
  v16 = a10;
  v17 = a9;
  v18 = a8;
  v19 = a7;
  v20 = a6;
  v21 = a5;
  v22 = a4;
  v23 = a3;
  v24 = [[SpotlightKnowledge alloc] initWithJobContext:v23];

  [(SpotlightKnowledge *)v24 runWithQueue:v22 group:v21 progressBlock:v20 checkpointBlock:v19 completeBlock:v18 cancelBlock:v17 deferBlock:v16];
}

+ (void)runWithJobContext:(id)a3 group:(id)a4 delegate:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[SpotlightKnowledge alloc] initWithJobContext:v9];

  [(SpotlightKnowledge *)v10 runWithGroup:v8 delegate:v7];
}

- (SpotlightKnowledge)initWithJobContext:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = SpotlightKnowledge;
  v6 = [(SpotlightKnowledge *)&v10 init];
  v7 = v6;
  if (v6)
  {
    spotlightGraph = v6->_spotlightGraph;
    v6->_spotlightGraph = 0;

    objc_storeStrong(&v7->_spotlightContext, a3);
  }

  return v7;
}

- (BOOL)loadGraphWithGroup:(id)a3 cancelBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  spotlightGraph = self->_spotlightGraph;
  if (spotlightGraph)
  {
    [(SpotlightGraph *)spotlightGraph closeWithCancelBlock:v7];
    v9 = self->_spotlightGraph;
    self->_spotlightGraph = 0;
  }

  v10 = [(SpotlightKnowledge *)self spotlightContext];
  v11 = [v10 spotlightKnowledgeGraphConfigPath];
  v12 = [MEMORY[0x277CCAA00] defaultManager];
  v13 = [v12 fileExistsAtPath:v11];

  v14 = [SKGConfig alloc];
  v15 = v14;
  if (v13)
  {
    v16 = [(SKGConfig *)v14 initWithConfigPath:v11];
  }

  else
  {
    v17 = [v10 spotlightKnowledgeGraphPath];
    v16 = -[SKGConfig initWithConfigPath:resourceDirectoryPath:resourceVersion:](v15, "initWithConfigPath:resourceDirectoryPath:resourceVersion:", v11, v17, [v10 graphVersion]);
  }

  v18 = [[SpotlightGraph alloc] initWithConfig:v16];
  v19 = self->_spotlightGraph;
  self->_spotlightGraph = v18;

  [(SpotlightGraph *)self->_spotlightGraph openWithCancelBlock:v7];
  if (![(SpotlightGraph *)self->_spotlightGraph available])
  {
    v20 = [(SpotlightKnowledge *)self spotlightContext];
    [v20 logError:4 message:@"graph unavailable"];

    v21 = self->_spotlightGraph;
    self->_spotlightGraph = 0;
  }

  v22 = [(SpotlightKnowledge *)self spotlightGraphAvailable];

  return v22;
}

- (void)unloadGraphWithGroup:(id)a3 cancelBlock:(id)a4
{
  spotlightGraph = self->_spotlightGraph;
  if (spotlightGraph)
  {
    [(SpotlightGraph *)spotlightGraph closeWithCancelBlock:a4];
    v6 = self->_spotlightGraph;
    self->_spotlightGraph = 0;
  }
}

- (id)peopleAttributesWithProcessedItem:(id)a3
{
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = MEMORY[0x277CCABB0];
  v6 = [MEMORY[0x277D657A0] sharedContext];
  v7 = [v5 numberWithInteger:{objc_msgSend(v6, "knowledgeVersion")}];
  [v4 setObject:v7 forKey:@"_kMDItemKnowledgeIndexVersion"];

  v8 = MEMORY[0x277CCABB0];
  v9 = [(SpotlightKnowledge *)self spotlightContext];
  v10 = [v8 numberWithInteger:{objc_msgSend(v9, "graphVersion")}];
  [v4 setObject:v10 forKey:@"_kMDItemKnowledgeUpdaterVersion"];

  v11 = objc_alloc_init(MEMORY[0x277CC34B8]);
  [v11 addAttributesFromDictionary:v4];

  return v11;
}

- (id)coreSpotlightItemWithAttributes:(id)a3 referenceIdentifier:(id)a4 bundleIdentifier:(id)a5
{
  v7 = MEMORY[0x277CC34B0];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[v7 alloc] initWithUniqueIdentifier:v9 domainIdentifier:0 attributeSet:v10];

  [v11 setBundleID:v8];
  [v11 setIsUpdate:1];

  return v11;
}

- (id)coreSpotlightIndexWithBundleIdentifier:(id)a3 protectionClass:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (coreSpotlightIndexWithBundleIdentifier_protectionClass__onceIndexToken != -1)
  {
    [SpotlightKnowledge coreSpotlightIndexWithBundleIdentifier:protectionClass:];
  }

  v7 = objc_autoreleasePoolPush();
  v8 = [coreSpotlightIndexWithBundleIdentifier_protectionClass__sIndexes objectForKeyedSubscript:v5];

  if (!v8)
  {
    v9 = [MEMORY[0x277CBEB38] dictionary];
    [coreSpotlightIndexWithBundleIdentifier_protectionClass__sIndexes setObject:v9 forKeyedSubscript:v5];
  }

  v10 = [coreSpotlightIndexWithBundleIdentifier_protectionClass__sIndexes objectForKeyedSubscript:v5];
  v11 = [v10 objectForKeyedSubscript:v6];

  if (v11)
  {
    v12 = [coreSpotlightIndexWithBundleIdentifier_protectionClass__sIndexes objectForKeyedSubscript:v5];
    v13 = [v12 objectForKeyedSubscript:v6];
  }

  else
  {
    v13 = [objc_alloc(MEMORY[0x277CC34A8]) initWithName:@"KnowledgeIndex" protectionClass:v6 bundleIdentifier:v5];
    v12 = [coreSpotlightIndexWithBundleIdentifier_protectionClass__sIndexes objectForKeyedSubscript:v5];
    [v12 setObject:v13 forKey:v6];
  }

  objc_autoreleasePoolPop(v7);

  return v13;
}

void __77__SpotlightKnowledge_coreSpotlightIndexWithBundleIdentifier_protectionClass___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v1 = coreSpotlightIndexWithBundleIdentifier_protectionClass__sIndexes;
  coreSpotlightIndexWithBundleIdentifier_protectionClass__sIndexes = v0;
}

- (void)updateCoreSpotlightWithItems:(id)a3 index:(id)a4 group:(id)a5 cancelBlock:(id)a6
{
  v18 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (v10 && [v9 count])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v17 = [v9 count];
      _os_log_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SKG: indexing %lu items", buf, 0xCu);
    }

    dispatch_group_enter(v11);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __75__SpotlightKnowledge_updateCoreSpotlightWithItems_index_group_cancelBlock___block_invoke;
    v14[3] = &unk_27893E840;
    v15 = v11;
    [v10 indexSearchableItems:v9 completionHandler:v14];
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __75__SpotlightKnowledge_updateCoreSpotlightWithItems_index_group_cancelBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __75__SpotlightKnowledge_updateCoreSpotlightWithItems_index_group_cancelBlock___block_invoke_cold_1(v3);
  }

  dispatch_group_leave(*(a1 + 32));
}

- (BOOL)addProcessedItem:(id)a3 cancelBlock:(id)a4
{
  if (!a3)
  {
    return 1;
  }

  v6 = a4;
  v7 = a3;
  v8 = [(SpotlightKnowledge *)self spotlightGraph];
  v9 = [v8 addItem:v7 cancelBlock:v6];

  return v9;
}

- (BOOL)addProcessedPerson:(id)a3 group:(id)a4 cancelBlock:(id)a5
{
  if (!a3)
  {
    return 1;
  }

  v7 = a5;
  v8 = a3;
  v9 = [(SpotlightKnowledge *)self spotlightGraph];
  v10 = [v9 addPerson:v8 cancelBlock:v7];

  return v10;
}

- (BOOL)canProcessItemAttributes:(id)a3 bundleIdentifier:(id)a4 protectionClass:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 count] && (objc_msgSend(MEMORY[0x277D65798], "sharedProcessor"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "recordIsValid:", v8), v11, v12))
  {
    v13 = [MEMORY[0x277D65798] sharedProcessor];
    v14 = [v13 copyReferenceIdentifierFromRecord:v8];

    if (v14)
    {
      if (v10)
      {
        v15 = v10;
      }

      else
      {
        v17 = [MEMORY[0x277D65798] sharedProcessor];
        v15 = [v17 copyProtectionClassFromRecord:v8];
      }

      if ([v15 length])
      {
        if (v9)
        {
          v18 = v9;
        }

        else
        {
          v19 = [MEMORY[0x277D65798] sharedProcessor];
          v18 = [v19 copyBundleIdentifierFromRecord:v8];
        }

        if ([v18 length])
        {
          v20 = [(SpotlightKnowledge *)self spotlightGraph];
          v16 = [v20 containsReference:v14 personaIdentifier:0 protectionClass:v15 domainIdentifier:v18] ^ 1;
        }

        else
        {
          LOBYTE(v16) = 0;
        }
      }

      else
      {
        LOBYTE(v16) = 0;
      }
    }

    else
    {
      LOBYTE(v16) = 0;
    }
  }

  else
  {
    LOBYTE(v16) = 0;
  }

  return v16;
}

- (BOOL)removeReferences:(id)a3 bundleIdentifier:(id)a4 cancelBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9 && [v8 count])
  {
    v11 = [(SpotlightKnowledge *)self spotlightGraph];
    if ([v11 available])
    {
      v12 = [v11 deleteReferences:v8 domainIdentifier:v9 cancelBlock:v10];
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)removeGraphPeopleWithCancelBlock:(id)a3
{
  v4 = a3;
  v5 = [(SpotlightKnowledge *)self spotlightGraph];
  v6 = [v5 deletePeopleWithCancelBlock:v4];

  return v6;
}

- (BOOL)removeGraphEntitiesWithCancelBlock:(id)a3
{
  v4 = a3;
  v5 = [(SpotlightKnowledge *)self spotlightGraph];
  v6 = [v5 deleteEntitiesWithCancelBlock:v4];

  return v6;
}

- (BOOL)graphNeedsAnalysis
{
  v2 = [(SpotlightKnowledge *)self spotlightGraph];
  v3 = [v2 hasPeople];

  return v3 ^ 1;
}

- (BOOL)analyzeGraphWithCancelBlock:(id)a3
{
  v4 = a3;
  v5 = [(SpotlightKnowledge *)self spotlightGraph];
  v6 = [v5 analyzePeopleWithCancelBlock:v4];

  return v6;
}

- (BOOL)scoreGraphWithCancelBlock:(id)a3
{
  v4 = a3;
  v5 = [(SpotlightKnowledge *)self spotlightGraph];
  v6 = [v5 scorePeopleWithCancelBlock:v4];

  return v6;
}

- (BOOL)updateSpotlightContactsWithJobContext:(id)a3 group:(id)a4 cancelBlock:(id)a5
{
  v46 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v26 = a4;
  v9 = a5;
  if (updateSpotlightContactsWithJobContext_group_cancelBlock__onceToken != -1)
  {
    [SpotlightKnowledge updateSpotlightContactsWithJobContext:group:cancelBlock:];
  }

  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 1;
  v10 = objc_autoreleasePoolPush();
  v11 = *MEMORY[0x277CCA1A0];
  v12 = objc_alloc(MEMORY[0x277CC34A8]);
  v13 = [v8 knowledgeIndexIdentifier];
  v14 = [v12 initWithName:@"KnowledgeIndex" protectionClass:v11 bundleIdentifier:v13];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SKG: clearing spotlight knowledge", buf, 2u);
  }

  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __78__SpotlightKnowledge_updateSpotlightContactsWithJobContext_group_cancelBlock___block_invoke_35;
  v39[3] = &unk_27893F1D8;
  v39[4] = &v40;
  [v14 deleteAllSearchableItemsWithCompletionHandler:v39];
  if (*(v41 + 24) == 1)
  {
    *buf = 0;
    v34 = buf;
    v35 = 0x3032000000;
    v36 = __Block_byref_object_copy__24;
    v37 = __Block_byref_object_dispose__24;
    v38 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v15 = [(SpotlightKnowledge *)self spotlightGraph];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __78__SpotlightKnowledge_updateSpotlightContactsWithJobContext_group_cancelBlock___block_invoke_37;
    v27[3] = &unk_27893F200;
    v31 = buf;
    v27[4] = self;
    v16 = v14;
    v28 = v16;
    v17 = v26;
    v29 = v17;
    v18 = v9;
    v30 = v18;
    v32 = &v40;
    [v15 enumeratePeopleUsingBlock:v27];
    if (*(v41 + 24) == 1 && [*(v34 + 5) count])
    {
      v25 = v9;
      v19 = MEMORY[0x277D86220];
      v20 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [*(v34 + 5) count];
        *v44 = 134217984;
        v45 = v21;
        _os_log_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SKG: indexing %lu items", v44, 0xCu);
      }

      v9 = v25;
      [(SpotlightKnowledge *)self updateCoreSpotlightWithItems:*(v34 + 5) index:v16 group:v17 cancelBlock:v18];
    }

    _Block_object_dispose(buf, 8);
  }

  objc_autoreleasePoolPop(v10);
  v22 = *(v41 + 24);
  _Block_object_dispose(&v40, 8);

  v23 = *MEMORY[0x277D85DE8];
  return v22 & 1;
}

void __78__SpotlightKnowledge_updateSpotlightContactsWithJobContext_group_cancelBlock___block_invoke()
{
  v19[3] = *MEMORY[0x277D85DE8];
  v18[0] = SKGKnowledgePersonEmailAddresses;
  v0 = *MEMORY[0x277CC2788];
  v16[0] = @"primary";
  v16[1] = @"alternate";
  v1 = *MEMORY[0x277CC2400];
  v17[0] = v0;
  v17[1] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v19[0] = v2;
  v18[1] = SKGKnowledgePersonPhoneNumbers;
  v3 = *MEMORY[0x277CC2EB8];
  v14[0] = @"primary";
  v14[1] = @"alternate";
  v4 = *MEMORY[0x277CC2410];
  v15[0] = v3;
  v15[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v19[1] = v5;
  v18[2] = SKGKnowledgePersonNames;
  v6 = *MEMORY[0x277CC25F8];
  v12[0] = @"primary";
  v12[1] = @"alternate";
  v7 = *MEMORY[0x277CC2408];
  v13[0] = v6;
  v13[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v19[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];
  v10 = updateSpotlightContactsWithJobContext_group_cancelBlock__sKeyMap;
  updateSpotlightContactsWithJobContext_group_cancelBlock__sKeyMap = v9;

  v11 = *MEMORY[0x277D85DE8];
}

void __78__SpotlightKnowledge_updateSpotlightContactsWithJobContext_group_cancelBlock___block_invoke_35(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __78__SpotlightKnowledge_updateSpotlightContactsWithJobContext_group_cancelBlock___block_invoke_35_cold_1(v3);
    }

    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

void __78__SpotlightKnowledge_updateSpotlightContactsWithJobContext_group_cancelBlock___block_invoke_37(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v128 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = objc_autoreleasePoolPush();
  v9 = [v7 objectForKeyedSubscript:@"com.apple.spotlight"];
  v87 = [v9 objectForKeyedSubscript:SKGKnowledgePersonDisplayName];
  v86 = [v9 objectForKeyedSubscript:@"score"];
  v93 = v9;
  v10 = [v9 objectForKeyedSubscript:SKGKnowledgePersonContactIdentifiers];
  v75 = v10;
  if ([v10 count])
  {
    v11 = [v10 firstObject];
    v12 = [v11 objectForKey:@"value"];
  }

  else
  {
    v12 = 0;
  }

  v13 = [v93 objectForKeyedSubscript:SKGKnowledgePersonEntityIdentifiers];
  v74 = v13;
  if ([v13 count])
  {
    v14 = [v13 firstObject];
    v85 = [v14 objectForKey:@"value"];
  }

  else
  {
    v85 = 0;
  }

  v15 = [v93 objectForKeyedSubscript:SKGKnowledgePersonPhotosIdentifiers];
  v76 = v8;
  v73 = v15;
  if ([v15 count])
  {
    v16 = [v15 firstObject];
    v89 = [v16 objectForKey:@"value"];
  }

  else
  {
    v89 = 0;
  }

  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  obj = v7;
  v88 = [obj countByEnumeratingWithState:&v117 objects:v127 count:16];
  if (v88)
  {
    v100 = 0;
    v101 = 0;
    v99 = 0;
    v80 = *MEMORY[0x277CC2E90];
    v81 = *v118;
    v17 = *MEMORY[0x277CC25F0];
    v78 = *MEMORY[0x277CC25F0];
    v79 = *MEMORY[0x277CC2E88];
    v83 = a1;
    v84 = v6;
    v82 = v12;
    do
    {
      v18 = 0;
      do
      {
        if (*v118 != v81)
        {
          objc_enumerationMutation(obj);
        }

        v90 = *(*(&v117 + 1) + 8 * v18);
        v91 = v18;
        v103 = [v90 isEqualToString:@"com.apple.spotlight"];
        v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v113 = 0u;
        v114 = 0u;
        v115 = 0u;
        v116 = 0u;
        v92 = updateSpotlightContactsWithJobContext_group_cancelBlock__sKeyMap;
        v95 = [v92 countByEnumeratingWithState:&v113 objects:v126 count:16];
        if (v95)
        {
          v98 = 0;
          v102 = 0;
          v94 = *v114;
          while (1)
          {
            v20 = 0;
            do
            {
              if (*v114 != v94)
              {
                objc_enumerationMutation(v92);
              }

              v96 = v20;
              v21 = *(*(&v113 + 1) + 8 * v20);
              v109 = 0u;
              v110 = 0u;
              v111 = 0u;
              v112 = 0u;
              v97 = [v93 objectForKeyedSubscript:v21];
              v22 = [v97 countByEnumeratingWithState:&v109 objects:v125 count:16];
              if (v22)
              {
                v23 = v22;
                v104 = *v110;
                do
                {
                  for (i = 0; i != v23; ++i)
                  {
                    if (*v110 != v104)
                    {
                      objc_enumerationMutation(v97);
                    }

                    v25 = *(*(&v109 + 1) + 8 * i);
                    v26 = [v25 objectForKeyedSubscript:@"ambiguous"];
                    v27 = [v26 BOOLValue];

                    v28 = [v25 objectForKeyedSubscript:@"count"];
                    v29 = [v28 intValue];

                    v30 = [v25 objectForKeyedSubscript:@"in"];
                    v31 = [v30 intValue];

                    v32 = [v25 objectForKeyedSubscript:@"out"];
                    v33 = [v32 intValue];

                    v34 = [v25 objectForKeyedSubscript:@"value"];
                    if (v103)
                    {
                      v99 += v31;
                      v100 += v33;
                      v101 += v29;
                    }

                    v35 = vcvtd_n_f64_s32(v31, 2uLL) + v29 * 0.5 + v33 * 0.25;
                    v36 = [updateSpotlightContactsWithJobContext_group_cancelBlock__sKeyMap objectForKeyedSubscript:v21];
                    v37 = v36;
                    if (v27)
                    {
                      v38 = [v36 objectForKeyedSubscript:@"alternate"];

                      v39 = [v19 objectForKeyedSubscript:v38];

                      if (!v39)
                      {
                        v40 = [MEMORY[0x277CBEB38] dictionary];
                        [v19 setObject:v40 forKey:v38];
                      }

                      v41 = [v19 objectForKeyedSubscript:v38];
                      v42 = [MEMORY[0x277CCABB0] numberWithDouble:v35];
                      [v41 setObject:v42 forKey:v34];

                      if ([v21 isEqualToString:SKGKnowledgePersonEmailAddresses])
                      {
                        goto LABEL_37;
                      }
                    }

                    else
                    {
                      v43 = [v36 objectForKeyedSubscript:@"primary"];

                      v44 = [v19 objectForKeyedSubscript:v43];

                      if (!v44)
                      {
                        v45 = [MEMORY[0x277CBEB38] dictionary];
                        [v19 setObject:v45 forKey:v43];
                      }

                      v46 = [v19 objectForKeyedSubscript:v43];
                      v47 = [MEMORY[0x277CCABB0] numberWithDouble:v35];
                      [v46 setObject:v47 forKey:v34];

                      if ([v21 isEqualToString:SKGKnowledgePersonEmailAddresses])
                      {
                        if (v31 && !v33)
                        {
LABEL_37:
                          ++v98;
                        }

                        ++v102;
                      }
                    }
                  }

                  v23 = [v97 countByEnumeratingWithState:&v109 objects:v125 count:16];
                }

                while (v23);
              }

              v20 = v96 + 1;
            }

            while (v96 + 1 != v95);
            v95 = [v92 countByEnumeratingWithState:&v113 objects:v126 count:16];
            if (!v95)
            {
              goto LABEL_45;
            }
          }
        }

        v98 = 0;
        v102 = 0;
LABEL_45:

        v48 = objc_alloc_init(MEMORY[0x277CC34B8]);
        v49 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v50 = v49;
        if (v102 && v102 == v98)
        {
          [v49 setObject:@"ml" forKey:@"com_apple_spotlight_contacts_type"];
        }

        v107 = 0u;
        v108 = 0u;
        v105 = 0u;
        v106 = 0u;
        v51 = v19;
        v52 = [v51 countByEnumeratingWithState:&v105 objects:v124 count:16];
        a1 = v83;
        if (v52)
        {
          v53 = v52;
          v54 = *v106;
          do
          {
            for (j = 0; j != v53; ++j)
            {
              if (*v106 != v54)
              {
                objc_enumerationMutation(v51);
              }

              v56 = *(*(&v105 + 1) + 8 * j);
              v57 = [v51 objectForKeyedSubscript:v56];
              v58 = [v57 keysSortedByValueUsingComparator:&__block_literal_global_67_0];

              [v50 setObject:v58 forKey:v56];
            }

            v53 = [v51 countByEnumeratingWithState:&v105 objects:v124 count:16];
          }

          while (v53);
        }

        [v50 setObject:v86 forKey:v80];
        v6 = v84;
        [v50 setObject:v84 forKey:v79];
        v59 = [MEMORY[0x277CCABB0] numberWithInteger:v99];
        [v50 setObject:v59 forKey:@"_kMDItemPersonInCount"];

        v60 = [MEMORY[0x277CCABB0] numberWithInteger:v100];
        [v50 setObject:v60 forKey:@"_kMDItemPersonOutCount"];

        v61 = [MEMORY[0x277CCABB0] numberWithInteger:v101];
        [v50 setObject:v61 forKey:@"_kMDItemPersonCount"];

        v62 = MEMORY[0x277CCABB0];
        v63 = [MEMORY[0x277D657A0] sharedContext];
        v64 = [v62 numberWithInteger:{objc_msgSend(v63, "knowledgeVersion")}];
        [v50 setObject:v64 forKey:@"_kMDItemPersonVersion"];

        v12 = v82;
        if (v82)
        {
          [v50 setObject:v82 forKey:v78];
        }

        if (v85)
        {
          [v50 setObject:v85 forKey:@"_kMDItemPersonEntityIdentifier"];
        }

        if (((v89 != 0) & v103) == 1)
        {
          [v50 setObject:v89 forKey:@"_kMDItemPersonPhotosIdentifier"];
        }

        v65 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.contact", v90];
        v123[0] = v65;
        v123[1] = @"public.contact";
        v66 = [MEMORY[0x277CBEA60] arrayWithObjects:v123 count:2];
        [v50 setObject:v65 forKey:@"kMDItemContentType"];
        [v50 setObject:v66 forKey:@"kMDItemContentTypeTree"];
        [v48 addAttributesFromDictionary:v50];
        [v48 setDisplayName:v87];
        v67 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v90, v84];
        v68 = [objc_alloc(MEMORY[0x277CC34B0]) initWithUniqueIdentifier:v67 domainIdentifier:v90 attributeSet:v48];
        [*(*(*(v83 + 64) + 8) + 40) addObject:v68];

        v18 = v91 + 1;
      }

      while (v91 + 1 != v88);
      v88 = [obj countByEnumeratingWithState:&v117 objects:v127 count:16];
    }

    while (v88);
  }

  if ([*(*(*(a1 + 64) + 8) + 40) count] >= 0x64)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v69 = [*(*(*(a1 + 64) + 8) + 40) count];
      *buf = 134217984;
      v122 = v69;
      _os_log_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SKG: indexing %lu items", buf, 0xCu);
    }

    v70 = [*(*(*(a1 + 64) + 8) + 40) copy];
    [*(a1 + 32) updateCoreSpotlightWithItems:v70 index:*(a1 + 40) group:*(a1 + 48) cancelBlock:*(a1 + 56)];
    [*(*(*(a1 + 64) + 8) + 40) removeAllObjects];
  }

  objc_autoreleasePoolPop(v76);
  if ((*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
  {
    *a4 = 1;
  }

  v71 = *MEMORY[0x277D85DE8];
}

uint64_t __78__SpotlightKnowledge_updateSpotlightContactsWithJobContext_group_cancelBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 doubleValue];
  v6 = v5;
  [v4 doubleValue];
  v8 = v7;

  if (v6 < v8)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

- (BOOL)flushGraphWithGroup:(id)a3 cancelBlock:(id)a4
{
  v5 = a4;
  v6 = [(SpotlightKnowledge *)self spotlightGraph];
  if ([v6 available])
  {
    v7 = [v6 flushWithCancelBlock:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)processCSJournalsWithGroup:(id)a3 protectionClasses:(id)a4 includeEmbeddings:(BOOL)a5 includeKeyphrases:(BOOL)a6 shouldRemove:(BOOL)a7 readerNextPathBlock:(id)a8 deletedReferencesBlock:(id)a9 processedPathBlock:(id)a10 processedItemsBlock:(id)a11 errorLogBlock:(id)a12 cancelBlock:(id)a13
{
  v55 = a7;
  v92 = *MEMORY[0x277D85DE8];
  v46 = a3;
  v16 = a4;
  v17 = a8;
  v59 = a9;
  v18 = v17;
  v56 = a10;
  v61 = a11;
  v51 = a12;
  v19 = a13;
  v60 = [(SpotlightKnowledge *)self spotlightContext];
  context = objc_autoreleasePoolPush();
  v87 = 0;
  v88 = &v87;
  v89 = 0x2020000000;
  v90 = 1;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  obj = v16;
  v20 = [obj countByEnumeratingWithState:&v83 objects:v91 count:16];
  if (v20)
  {
    v50 = *v84;
    v21 = 1;
LABEL_3:
    v49 = v20;
    v22 = 0;
    while (1)
    {
      if (*v84 != v50)
      {
        objc_enumerationMutation(obj);
      }

      if ((v21 & 1) == 0)
      {
        break;
      }

      v62 = *(*(&v83 + 1) + 8 * v22);
      if (v19[2](v19, @"processCSJournalsWithQueryID:protectionClass"))
      {
        *(v88 + 24) = 0;
        break;
      }

      if (v18)
      {
        v23 = v18[2](v18, v62);
        if (v23)
        {
          v24 = [[SKGJournalReader alloc] initWithResourceDirectoryPath:v23];
          v25 = v24;
          if (v24)
          {
            v26 = [(SKGJournalReader *)v24 journalPaths];
          }

          else
          {
            v26 = 0;
          }
        }

        else
        {
          v26 = 0;
          v25 = 0;
        }
      }

      else
      {
        v26 = 0;
        v25 = 0;
        v23 = 0;
      }

      v52 = v22;
      v53 = v23;
      v54 = v26;
      if ([v26 count])
      {
        v27 = [v26 keysSortedByValueUsingSelector:sel_compare_];
        v28 = [v27 mutableCopy];
        v21 = 1;
LABEL_17:

        while ([v28 count])
        {
          if (v19[2](v19, @"processCSJournalsWithQueryID:journal"))
          {
            *(v88 + 24) = 0;
            break;
          }

          v29 = objc_autoreleasePoolPush();
          v30 = v18;
          v77 = 0;
          v78 = &v77;
          v79 = 0x3032000000;
          v80 = __Block_byref_object_copy__24;
          v81 = __Block_byref_object_dispose__24;
          v82 = 0;
          v27 = [v28 firstObject];
          v69[0] = MEMORY[0x277D85DD0];
          v69[1] = 3221225472;
          v69[2] = __224__SpotlightKnowledge_processCSJournalsWithGroup_protectionClasses_includeEmbeddings_includeKeyphrases_shouldRemove_readerNextPathBlock_deletedReferencesBlock_processedPathBlock_processedItemsBlock_errorLogBlock_cancelBlock___block_invoke;
          v69[3] = &unk_27893F250;
          v75 = a5;
          v76 = a6;
          v73 = &v87;
          v74 = &v77;
          v69[4] = v62;
          v31 = v19;
          v71 = v31;
          v70 = v60;
          v32 = v61;
          v72 = v32;
          v66[0] = MEMORY[0x277D85DD0];
          v66[1] = 3221225472;
          v66[2] = __224__SpotlightKnowledge_processCSJournalsWithGroup_protectionClasses_includeEmbeddings_includeKeyphrases_shouldRemove_readerNextPathBlock_deletedReferencesBlock_processedPathBlock_processedItemsBlock_errorLogBlock_cancelBlock___block_invoke_3;
          v66[3] = &unk_27893F278;
          v68 = &v87;
          v33 = v31;
          v67 = v33;
          v63[0] = MEMORY[0x277D85DD0];
          v63[1] = 3221225472;
          v63[2] = __224__SpotlightKnowledge_processCSJournalsWithGroup_protectionClasses_includeEmbeddings_includeKeyphrases_shouldRemove_readerNextPathBlock_deletedReferencesBlock_processedPathBlock_processedItemsBlock_errorLogBlock_cancelBlock___block_invoke_4;
          v63[3] = &unk_27893F2A0;
          v65 = &v87;
          v64 = v59;
          v21 = [(SKGJournalReader *)v25 enumerateItemsOfJournalAtPath:v27 itemAdds:v69 itemUpdates:v66 itemDeletes:v63 cancelBlock:v33];
          if ([v78[5] count])
          {
            v34 = (*(v61 + 2))(v32, v78[5]);
            *(v88 + 24) = v34;
            v35 = v78[5];
            v78[5] = 0;
          }

          v18 = v30;
          _Block_object_dispose(&v77, 8);

          objc_autoreleasePoolPop(v29);
          if ((v21 & 1) == 0)
          {
            v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"could not read journal path for %@", v62];
            v41 = v51[2](v51, 8, v40);
            *(v88 + 24) = v41;

            [v28 removeObject:v27];
            goto LABEL_17;
          }

          v36 = *(v88 + 24);
          if (v36 == 1 && v27)
          {
            v37 = [v27 lastPathComponent];
            v38 = v56[2](v56, v62, v37);
            *(v88 + 24) = v38;

            if ((v88[3] & 1) == 0)
            {

LABEL_37:
              v21 = 1;
              break;
            }

            if (v55 && ![(SKGJournalReader *)v25 removeJournalPath:v27 error:0])
            {
              v39 = v51[2](v51, 9, @"could not delete journal path");
              *(v88 + 24) = v39;
            }

            [v28 removeObject:v27];
            LOBYTE(v36) = *(v88 + 24);
          }

          else
          {
          }

          if ((v36 & 1) == 0)
          {
            goto LABEL_37;
          }
        }
      }

      else
      {
        v21 = 1;
      }

      v42 = *(v88 + 24);

      if ((v42 & 1) == 0)
      {
        break;
      }

      ++v22;
      if (v52 + 1 == v49)
      {
        v20 = [obj countByEnumeratingWithState:&v83 objects:v91 count:16];
        if (v20)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v43 = *(v88 + 24);
  _Block_object_dispose(&v87, 8);
  objc_autoreleasePoolPop(context);

  v44 = *MEMORY[0x277D85DE8];
  return v43 & 1;
}

void __224__SpotlightKnowledge_processCSJournalsWithGroup_protectionClasses_includeEmbeddings_includeKeyphrases_shouldRemove_readerNextPathBlock_deletedReferencesBlock_processedPathBlock_processedItemsBlock_errorLogBlock_cancelBlock___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = objc_autoreleasePoolPush();
  v10 = v8;
  v11 = [MEMORY[0x277D65798] sharedProcessor];
  v12 = [v11 recordIsValid:v10];

  if (v12)
  {
    if (*(a1 + 80) == 1 && ([MEMORY[0x277D65798] sharedProcessor], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "needsEmbeddingsForRecord:bundleID:", v10, v7), v13, (*(a1 + 80) & 1) != 0))
    {
      v15 = [MEMORY[0x277D65798] sharedProcessor];
      v16 = [v15 shouldGenerateEmbeddingsForRecord:v10 bundleID:v7];

      if ((v14 & v16) != 0)
      {
        v17 = 2;
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }

    if (*(a1 + 81) == 1 && ([MEMORY[0x277D65798] sharedProcessor], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "needsKeyphrasesForRecord:bundleID:", v10, v7), v18, (*(a1 + 81) & 1) != 0))
    {
      v20 = [MEMORY[0x277D65798] sharedProcessor];
      v21 = [v20 shouldGenerateKeyphrasesForRecord:v10 bundleID:v7];

      v22 = v19 & v21;
    }

    else
    {
      v22 = 0;
    }

    if (v22)
    {
      v23 = v17 | 4;
    }

    else
    {
      v23 = v17;
    }

    v24 = [MEMORY[0x277D65798] sharedProcessor];
    v25 = *(a1 + 32);
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __224__SpotlightKnowledge_processCSJournalsWithGroup_protectionClasses_includeEmbeddings_includeKeyphrases_shouldRemove_readerNextPathBlock_deletedReferencesBlock_processedPathBlock_processedItemsBlock_errorLogBlock_cancelBlock___block_invoke_2;
    v34[3] = &unk_27893F228;
    v36 = *(a1 + 72);
    v35 = *(a1 + 48);
    *(*(*(a1 + 64) + 8) + 24) = [v24 enumerateProcessedItemsFromRecord:v10 referenceIdentifier:0 bundleIdentifier:v7 protectionClass:v25 processorFlags:v23 processedItemBlock:v34 cancelBlock:*(a1 + 48)];
  }

  v26 = [*(*(*(a1 + 72) + 8) + 40) count];
  if (v26 >= [*(a1 + 40) maxItemCountPerBatch])
  {
    v27 = *(*(*(a1 + 72) + 8) + 40);
    *(*(*(a1 + 64) + 8) + 24) = (*(*(a1 + 56) + 16))();
    v28 = *(*(a1 + 72) + 8);
    v29 = *(v28 + 40);
    *(v28 + 40) = 0;
  }

  v30 = *(a1 + 48);
  v31 = *(*(a1 + 64) + 8);
  v32 = *(v31 + 24);
  if (v30 && (v32 & 1) != 0)
  {
    v33 = (*(v30 + 16))(v30, @"processCSJournalsWithQueryID:item") ^ 1;
    v31 = *(*(a1 + 64) + 8);
  }

  else
  {
    v33 = v32 != 0;
  }

  *(v31 + 24) = v33;
  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    *a4 = 1;
  }

  objc_autoreleasePoolPop(v9);
}

uint64_t __224__SpotlightKnowledge_processCSJournalsWithGroup_protectionClasses_includeEmbeddings_includeKeyphrases_shouldRemove_readerNextPathBlock_deletedReferencesBlock_processedPathBlock_processedItemsBlock_errorLogBlock_cancelBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 40) + 8) + 40);
  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v4 = *(*(*(a1 + 40) + 8) + 40);
  }

  [v4 addObject:v3];
  v8 = (*(*(a1 + 32) + 16))();

  return v8 ^ 1u;
}

uint64_t __224__SpotlightKnowledge_processCSJournalsWithGroup_protectionClasses_includeEmbeddings_includeKeyphrases_shouldRemove_readerNextPathBlock_deletedReferencesBlock_processedPathBlock_processedItemsBlock_errorLogBlock_cancelBlock___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = result ^ 1;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    *a4 = 1;
  }

  return result;
}

uint64_t __224__SpotlightKnowledge_processCSJournalsWithGroup_protectionClasses_includeEmbeddings_includeKeyphrases_shouldRemove_readerNextPathBlock_deletedReferencesBlock_processedPathBlock_processedItemsBlock_errorLogBlock_cancelBlock___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = result;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    *a4 = 1;
  }

  return result;
}

- (BOOL)processCSArchivesWithGroup:(id)a3 protectionClasses:(id)a4 shouldRemove:(BOOL)a5 archiverNextPathBlock:(id)a6 processedPathBlock:(id)a7 processedItemsBlock:(id)a8 errorLogBlock:(id)a9 cancelBlock:(id)a10
{
  v57 = a5;
  v102 = *MEMORY[0x277D85DE8];
  v55 = a3;
  v15 = a4;
  v61 = a6;
  v67 = a7;
  v16 = a8;
  v69 = a9;
  v77 = a10;
  v78 = [(SpotlightKnowledge *)self spotlightContext];
  v56 = objc_autoreleasePoolPush();
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  obj = v15;
  v62 = [obj countByEnumeratingWithState:&v96 objects:v101 count:16];
  if (v62)
  {
    v60 = *v97;
    v17 = &selRef_primitiveString;
    do
    {
      v65 = 0;
      v58 = v17[268];
      do
      {
        if (*v97 != v60)
        {
          objc_enumerationMutation(obj);
        }

        v76 = *(*(&v96 + 1) + 8 * v65);
        if (v77[2](v77, @"processCSArchivesWithGroup:protectionClass"))
        {
LABEL_71:
          v52 = 0;
          goto LABEL_72;
        }

        v18 = v61;
        if (!v61)
        {
          goto LABEL_12;
        }

        v68 = v61[2]();
        if (!v68)
        {
          v18 = 0;
LABEL_12:
          v66 = 0;
          v68 = 0;
          goto LABEL_13;
        }

        v18 = [[SKGArchiver alloc] initWithResourceDirectoryPath:v68];
        v66 = v18;
        if (v18)
        {
          v18 = [(SKGArchiver *)v18 archivePaths];
          v19 = 1;
          goto LABEL_14;
        }

        v66 = 0;
LABEL_13:
        v19 = 0;
LABEL_14:
        v64 = v18;
        if ([(SKGArchiver *)v18 count])
        {
          v20 = [(SKGArchiver *)v64 keysSortedByValueUsingSelector:v58];
          v73 = [v20 mutableCopy];

          v21 = 0;
          v63 = v19 & v57;
          while (1)
          {
            if (![v73 count])
            {

              break;
            }

            if (v77 && (v77[2](v77, @"processCSArchivesWithGroup:archive") & 1) != 0)
            {
              goto LABEL_62;
            }

            context = objc_autoreleasePoolPush();
            v90 = 0;
            v91 = &v90;
            v92 = 0x3032000000;
            v93 = __Block_byref_object_copy__24;
            v94 = __Block_byref_object_dispose__24;
            v95 = 0;
            v22 = [v73 lastObject];
            v89 = v21;
            v74 = v22;
            v75 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:? options:? error:?];
            v72 = v89;

            if (!v75)
            {
              if (v69)
              {
                v50 = v69[2]();
              }

              else
              {
                v50 = 1;
              }

              goto LABEL_61;
            }

            v23 = [MEMORY[0x277CCAAC8] unarchivedArrayOfObjectsOfClass:objc_opt_class() fromData:v75 error:0];
            v87 = 0u;
            v88 = 0u;
            v85 = 0u;
            v86 = 0u;
            v24 = v23;
            v25 = [v24 countByEnumeratingWithState:&v85 objects:v100 count:16];
            if (!v25)
            {
              goto LABEL_38;
            }

            v26 = *v86;
            while (2)
            {
              for (i = 0; i != v25; ++i)
              {
                if (*v86 != v26)
                {
                  objc_enumerationMutation(v24);
                }

                v28 = [*(*(&v85 + 1) + 8 * i) attributeSet];
                v29 = [v28 attributeDictionary];

                v30 = [MEMORY[0x277D65798] sharedProcessor];
                v31 = [v30 recordIsValid:v29];

                if (v31)
                {
                  v32 = [MEMORY[0x277D65798] sharedProcessor];
                  v33 = [v32 needsPeopleForRecord:v29];

                  v34 = [MEMORY[0x277D65798] sharedProcessor];
                  v35 = [v34 shouldGeneratePeopleForRecord:v29];

                  v36 = [MEMORY[0x277D65798] sharedProcessor];
                  v37 = (v33 & v35) != 0 ? 8 : 0;
                  v82[0] = MEMORY[0x277D85DD0];
                  v82[1] = 3221225472;
                  v82[2] = __167__SpotlightKnowledge_processCSArchivesWithGroup_protectionClasses_shouldRemove_archiverNextPathBlock_processedPathBlock_processedItemsBlock_errorLogBlock_cancelBlock___block_invoke;
                  v82[3] = &unk_27893F228;
                  v84 = &v90;
                  v83 = v77;
                  v80[0] = MEMORY[0x277D85DD0];
                  v80[1] = 3221225472;
                  v80[2] = __167__SpotlightKnowledge_processCSArchivesWithGroup_protectionClasses_shouldRemove_archiverNextPathBlock_processedPathBlock_processedItemsBlock_errorLogBlock_cancelBlock___block_invoke_2;
                  v80[3] = &unk_27893CC50;
                  v81 = v83;
                  v38 = [v36 enumerateProcessedItemsFromRecord:v29 referenceIdentifier:0 bundleIdentifier:0 protectionClass:v76 processorFlags:v37 processedItemBlock:v82 cancelBlock:{v80, v55, v56}];

                  if ((v38 & 1) == 0)
                  {

LABEL_53:
                    goto LABEL_54;
                  }
                }

                v39 = [v91[5] count];
                if (v39 < [v78 maxItemCountPerBatch])
                {
                  goto LABEL_35;
                }

                v40 = v91[5];
                if (!v16)
                {
                  v91[5] = 0;

LABEL_35:
                  continue;
                }

                v41 = v16[2](v16, v40);
                v42 = v91[5];
                v91[5] = 0;

                if ((v41 & 1) == 0)
                {
                  goto LABEL_53;
                }
              }

              v25 = [v24 countByEnumeratingWithState:&v85 objects:v100 count:16];
              if (v25)
              {
                continue;
              }

              break;
            }

LABEL_38:

            v43 = [v91[5] count];
            if (v43 >= [v78 maxItemCountPerBatch])
            {
              if (v16)
              {
                v16[2](v16, v91[5]);
              }

              v44 = v91[5];
              v91[5] = 0;
            }

            if (v67 && ([v74 lastPathComponent], v45 = objc_claimAutoreleasedReturnValue(), v46 = v67[2](v67, v76, v45), v45, !v46))
            {
LABEL_54:
              v50 = 0;
            }

            else
            {
              if (v63)
              {
                v47 = objc_autoreleasePoolPush();
                v79 = v72;
                [(SKGArchiver *)v66 removeArchivePath:v74 error:&v79];
                v48 = v79;

                if (v48)
                {
                  v49 = v69 == 0;
                }

                else
                {
                  v49 = 1;
                }

                if (v49)
                {
                  v50 = 1;
                }

                else
                {
                  v50 = (v69[2])(v69, 9, @"could not delete archive file");
                }

                objc_autoreleasePoolPop(v47);
                v72 = v48;
              }

              else
              {
                v50 = 1;
              }

              [v73 removeObject:v74];
            }

LABEL_61:
            v21 = v72;

            _Block_object_dispose(&v90, 8);
            objc_autoreleasePoolPop(context);
            if ((v50 & 1) == 0)
            {
LABEL_62:

              goto LABEL_71;
            }
          }
        }

        ++v65;
      }

      while (v65 != v62);
      v51 = [obj countByEnumeratingWithState:&v96 objects:v101 count:16];
      v62 = v51;
      v17 = &selRef_primitiveString;
    }

    while (v51);
  }

  v52 = 1;
LABEL_72:

  objc_autoreleasePoolPop(v56);
  v53 = *MEMORY[0x277D85DE8];
  return v52;
}

uint64_t __167__SpotlightKnowledge_processCSArchivesWithGroup_protectionClasses_shouldRemove_archiverNextPathBlock_processedPathBlock_processedItemsBlock_errorLogBlock_cancelBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 40) + 8) + 40);
  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v4 = *(*(*(a1 + 40) + 8) + 40);
  }

  [v4 addObject:v3];
  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = (*(v8 + 16))(v8, @"processCSArchives:processedItem") ^ 1;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

uint64_t __167__SpotlightKnowledge_processCSArchivesWithGroup_protectionClasses_shouldRemove_archiverNextPathBlock_processedPathBlock_processedItemsBlock_errorLogBlock_cancelBlock___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, @"processCSArchives");
  }

  return result;
}

- (BOOL)processDeletesWithJobContext:(id)a3 group:(id)a4 cancelBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [v8 startDeletes];
  context = objc_autoreleasePoolPush();
  v11 = [v8 protectionClasses];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __69__SpotlightKnowledge_processDeletesWithJobContext_group_cancelBlock___block_invoke;
  v31[3] = &unk_27893F2C8;
  v32 = v8;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __69__SpotlightKnowledge_processDeletesWithJobContext_group_cancelBlock___block_invoke_2;
  v28[3] = &unk_27893F2F0;
  v28[4] = self;
  v30 = v10;
  v29 = v32;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __69__SpotlightKnowledge_processDeletesWithJobContext_group_cancelBlock___block_invoke_3;
  v24[3] = &unk_27893F318;
  v24[4] = self;
  v12 = v9;
  v25 = v12;
  v27 = v30;
  v26 = v29;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __69__SpotlightKnowledge_processDeletesWithJobContext_group_cancelBlock___block_invoke_4;
  v22[3] = &unk_27893F340;
  v23 = v27;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __69__SpotlightKnowledge_processDeletesWithJobContext_group_cancelBlock___block_invoke_5;
  v19[3] = &unk_27893F368;
  v13 = v26;
  v20 = v13;
  v21 = self;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __69__SpotlightKnowledge_processDeletesWithJobContext_group_cancelBlock___block_invoke_6;
  v17[3] = &unk_27893CC50;
  v14 = v23;
  v18 = v14;
  [(SpotlightKnowledge *)self processCSJournalsWithGroup:v12 protectionClasses:v11 includeEmbeddings:0 includeKeyphrases:0 shouldRemove:1 readerNextPathBlock:v31 deletedReferencesBlock:v28 processedPathBlock:v24 processedItemsBlock:v22 errorLogBlock:v19 cancelBlock:v17];

  objc_autoreleasePoolPop(context);
  [v13 finishedDeletes];

  return 1;
}

uint64_t __69__SpotlightKnowledge_processDeletesWithJobContext_group_cancelBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v6 count] && (objc_msgSend(*(a1 + 32), "removeGraphPeopleWithCancelBlock:", *(a1 + 48)), (objc_msgSend(*(a1 + 32), "removeReferences:bundleIdentifier:cancelBlock:", v6, v5, *(a1 + 48)) & 1) == 0))
  {
    [*(a1 + 40) logError:4 message:@"graph unavailable"];
    v7 = 0;
  }

  else
  {
    v7 = (*(*(a1 + 48) + 16))() ^ 1;
  }

  return v7;
}

uint64_t __69__SpotlightKnowledge_processDeletesWithJobContext_group_cancelBlock___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) flushGraphWithGroup:*(a1 + 40) cancelBlock:*(a1 + 56)];
  v8 = *(a1 + 48);
  if (v7)
  {
    [v8 logProcessedJournalWithName:v6 protectionClass:v5];
    v9 = (*(*(a1 + 56) + 16))() ^ 1;
  }

  else
  {
    [v8 logError:4 message:@"graph unavailable"];
    v9 = 0;
  }

  return v9;
}

uint64_t __69__SpotlightKnowledge_processDeletesWithJobContext_group_cancelBlock___block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) logError:a2 message:a3];
  v4 = *(a1 + 40);

  return [v4 spotlightGraphAvailable];
}

- (BOOL)processAttributesWithJobContext:(id)a3 group:(id)a4 cancelBlock:(id)a5
{
  v42 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v24 = a4;
  v28 = a5;
  [v7 startTextProcessingJob];
  v23 = objc_autoreleasePoolPush();
  context = objc_autoreleasePoolPush();
  v27 = [[SKGJob alloc] initWithJobContext:v7];
  [v7 startTextQueries];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v8 = +[SKGProcessorTaskManager sharedManager];
  v9 = [v8 tasks];

  v10 = v9;
  v11 = [v9 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v38;
    v25 = v32;
    v26 = v35;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v38 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v37 + 1) + 8 * i);
        if ([v15 supportsEvent:{4, context, v23, v24, v25, v26}])
        {
          v16 = [v7 protectionClasses];
          v34[0] = MEMORY[0x277D85DD0];
          v34[1] = 3221225472;
          v35[0] = __72__SpotlightKnowledge_processAttributesWithJobContext_group_cancelBlock___block_invoke;
          v35[1] = &unk_27893D2C0;
          v36 = v7;
          v31[0] = MEMORY[0x277D85DD0];
          v31[1] = 3221225472;
          v32[0] = __72__SpotlightKnowledge_processAttributesWithJobContext_group_cancelBlock___block_invoke_2;
          v32[1] = &unk_27893D2C0;
          v17 = v36;
          v33 = v17;
          v29[0] = MEMORY[0x277D85DD0];
          v29[1] = 3221225472;
          v29[2] = __72__SpotlightKnowledge_processAttributesWithJobContext_group_cancelBlock___block_invoke_3;
          v29[3] = &unk_27893D270;
          v30 = v28;
          v18 = [(SKGJob *)v27 requestCSProcessingWithProtectionClasses:v16 task:v15 batchProcessedBlock:v34 batchUpdatedBlock:v31 cancelBlock:v29];

          if (!v18)
          {

            [v17 finishedTextQueries];
            objc_autoreleasePoolPop(context);
            v19 = 1;
            goto LABEL_12;
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v37 objects:v41 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  [v7 finishedTextQueries];
  objc_autoreleasePoolPop(context);
  [v7 logFlag:25 message:@"processing all done"];
  v19 = 0;
LABEL_12:
  objc_autoreleasePoolPop(v23);
  [v7 finishedTextProcessingJob];

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

void __72__SpotlightKnowledge_processAttributesWithJobContext_group_cancelBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v10 = a2;
  v11[0] = a3;
  v5 = MEMORY[0x277CBEAC0];
  v6 = a3;
  v7 = a2;
  v8 = [v5 dictionaryWithObjects:v11 forKeys:&v10 count:1];
  [v4 logQueryItemsProcessed:v8];

  v9 = *MEMORY[0x277D85DE8];
}

void __72__SpotlightKnowledge_processAttributesWithJobContext_group_cancelBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v10 = a2;
  v11[0] = a3;
  v5 = MEMORY[0x277CBEAC0];
  v6 = a3;
  v7 = a2;
  v8 = [v5 dictionaryWithObjects:v11 forKeys:&v10 count:1];
  [v4 logQueryItemsUpdated:v8];

  v9 = *MEMORY[0x277D85DE8];
}

+ (BOOL)processLegacyPipelinesReportWithCancelBlock:(id)a3
{
  v3 = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__SpotlightKnowledge_processLegacyPipelinesReportWithCancelBlock___block_invoke;
  aBlock[3] = &unk_27893CC50;
  v4 = v3;
  v11 = v4;
  v5 = _Block_copy(aBlock);
  v6 = [SKGJobContext defaultJobContextWithDeviceUnlocked:1];
  [v6 logEvent:6 message:@"reporting telemetry"];
  [v6 setTaskName:@"com.apple.corespotlight.knowledge.report"];
  v7 = [[SpotlightKnowledge alloc] initWithJobContext:v6];
  v8 = [(SpotlightKnowledge *)v7 processEmbeddingsReportWithJobContext:v6 progressBlock:&__block_literal_global_181 checkpointBlock:&__block_literal_global_191 cancelBlock:v5];
  [(SpotlightKnowledge *)v7 processSuggestedEventsReportWithJobContext:v6 cancelBlock:v5];
  [(SpotlightKnowledge *)v7 processDocumentUnderstandingReportWithJobContext:v6 cancelBlock:v5];
  if (!v8)
  {
    AnalyticsSendEventLazy();
    AnalyticsSendEventLazy();
    AnalyticsSendEventLazy();
  }

  return v8;
}

void __66__SpotlightKnowledge_processLegacyPipelinesReportWithCancelBlock___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = MEMORY[0x277CF07F8];
  v9 = a3;
  v10 = [v8 alloc];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  v13 = [v10 initWithIdentifier:v9 qos:&unk_2846E7EC0 workloadCategory:a2 expectedMetricValue:0 itemsCompleted:v11 totalItemCount:v12];

  v14 = [MEMORY[0x277CF0810] sharedScheduler];
  v17 = 0;
  [v14 reportProgressMetrics:v13 error:&v17];
  v15 = v17;

  if (v15 && SKGLogGetCurrentLoggingLevel() >= 2)
  {
    v16 = SKGLogAgentInit();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __66__SpotlightKnowledge_processLegacyPipelinesReportWithCancelBlock___block_invoke_2_cold_1();
    }
  }
}

void __66__SpotlightKnowledge_processLegacyPipelinesReportWithCancelBlock___block_invoke_188(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v3 = [MEMORY[0x277CF07F0] reportFeatureCheckpoint:a2 forFeature:900 atDate:0 error:&v6];
  v4 = v6;
  if ((v3 & 1) == 0 && SKGLogGetCurrentLoggingLevel() >= 2)
  {
    v5 = SKGLogAgentInit();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __66__SpotlightKnowledge_processLegacyPipelinesReportWithCancelBlock___block_invoke_188_cold_1(v4, a2, v5);
    }
  }
}

- (BOOL)processEmbeddingsReportWithJobContext:(id)a3 progressBlock:(id)a4 checkpointBlock:(id)a5 cancelBlock:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [MEMORY[0x277D657A0] sharedContext];
  v14 = [v13 enableEmbeddings];

  if (v14)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = [[SKGJob alloc] initWithJobContext:v9];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __102__SpotlightKnowledge_processEmbeddingsReportWithJobContext_progressBlock_checkpointBlock_cancelBlock___block_invoke_235;
    v26[3] = &unk_27893F3D0;
    v17 = v9;
    v27 = v17;
    v28 = v11;
    v29 = v10;
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __102__SpotlightKnowledge_processEmbeddingsReportWithJobContext_progressBlock_checkpointBlock_cancelBlock___block_invoke_248;
    v24 = &unk_27893D270;
    v25 = v12;
    v18 = [(SKGJob *)v16 requestCSEmbeddingsProgressReport:v26 cancelBlock:&v21];
    if (v18)
    {
      [v17 logFlag:28 message:{@"completed reporting progress", v21, v22, v23, v24}];
    }

    v19 = !v18;

    objc_autoreleasePoolPop(v15);
  }

  else
  {
    AnalyticsSendEventLazy();
    v19 = 0;
  }

  return v19;
}

void __102__SpotlightKnowledge_processEmbeddingsReportWithJobContext_progressBlock_checkpointBlock_cancelBlock___block_invoke_235(uint64_t a1, void *a2)
{
  v73 = *MEMORY[0x277D85DE8];
  v3 = a2;
  saveHistoricalReport(v3, 1);
  v4 = [*(a1 + 32) feedback];
  v64 = [v4 getEmbeddingDonationItemCounts];

  v5 = [*(a1 + 32) feedback];
  v63 = [v5 getCleanupItemCountsForListenerType:2];

  v6 = [*(a1 + 32) feedback];
  v61 = [v6 getReindexRequestItemCounts];

  v70 = 0u;
  v68 = 0u;
  v69 = 0u;
  v67 = 0u;
  v7 = v3;
  v62 = [v7 countByEnumeratingWithState:&v67 objects:v72 count:16];
  if (v62)
  {
    v60 = *v68;
    *&v8 = 138412290;
    v54 = v8;
    do
    {
      for (i = 0; i != v62; ++i)
      {
        if (*v68 != v60)
        {
          objc_enumerationMutation(v7);
        }

        v10 = *(*(&v67 + 1) + 8 * i);
        if (SKGLogGetCurrentLoggingLevel() >= 4)
        {
          v11 = SKGLogAgentInit();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = [v7 objectForKeyedSubscript:v10];
            *buf = v54;
            *&buf[4] = v12;
            _os_log_impl(&dword_231B25000, v11, OS_LOG_TYPE_DEFAULT, "embedding generation progress: %@", buf, 0xCu);
          }
        }

        v13 = *(a1 + 32);
        v14 = [v7 objectForKeyedSubscript:{v10, v54}];
        v15 = [v14 objectForKeyedSubscript:@"completeness"];
        [v13 setEmbeddingGenCompleteness:v15 forBundle:v10];

        if ([v10 isEqualToString:@"Total"])
        {
          v16 = [*(a1 + 32) feedback];
          v17 = [v16 getUpdateTaskRunCount];

          v18 = [*(a1 + 32) feedback];
          v19 = [v18 getUpdateTaskReindexCount];

          v20 = [v7 objectForKeyedSubscript:v10];
          v21 = [v63 objectForKeyedSubscript:v10];
          v22 = v21;
          if (!v21)
          {
            v21 = objc_opt_new();
            v55 = v21;
          }

          v23 = [v21 unsignedIntegerValue];
          v24 = [v64 objectForKeyedSubscript:v10];
          v25 = v24;
          if (!v24)
          {
            v24 = objc_opt_new();
            v56 = v24;
          }

          v26 = createEmbeddingGenerationRawEvent(v20, 1, v17, v23, v19, [v24 unsignedIntegerValue]);
          if (!v25)
          {
          }

          if (!v22)
          {
          }

          v65[1] = MEMORY[0x277D85DD0];
          v65[2] = 3221225472;
          v65[3] = __102__SpotlightKnowledge_processEmbeddingsReportWithJobContext_progressBlock_checkpointBlock_cancelBlock___block_invoke_242;
          v65[4] = &unk_27893D388;
          v27 = v26;
          v66 = v27;
          AnalyticsSendEventLazy();
          v28 = SKGLogEmbedInit();
          v29 = SKGLogEmbedInit();
          v30 = os_signpost_id_generate(v29);

          if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
          {
            *buf = 138543362;
            *&buf[4] = v27;
            _os_signpost_emit_with_name_impl(&dword_231B25000, v28, OS_SIGNPOST_EVENT, v30, "TotalReport", "%{public}@", buf, 0xCu);
          }

          v31 = [*(a1 + 32) feedback];
          [v31 resetUpdateTaskRunCount];

          v32 = [*(a1 + 32) feedback];
          [v32 resetUpdateTaskReindexCount];

          v33 = *(a1 + 40);
          if (v33)
          {
            v34 = [v7 objectForKeyedSubscript:@"Total"];
            (*(v33 + 16))(v33, [v34 featureCheckpointForProgress]);
          }

          if (*(a1 + 48))
          {
            *buf = 0;
            v65[0] = 0;
            v35 = [v7 objectForKeyedSubscript:@"Total"];
            [v35 bundleProgressNumerator:v65 denominator:buf];

            (*(*(a1 + 48) + 16))();
          }
        }

        v36 = [v7 objectForKeyedSubscript:v10];
        v37 = [v63 objectForKeyedSubscript:v10];
        v38 = v37;
        if (!v37)
        {
          v37 = objc_opt_new();
          v59 = v37;
        }

        v39 = [v37 unsignedIntegerValue];
        v40 = [v61 objectForKeyedSubscript:v10];
        v41 = v40;
        if (!v40)
        {
          v40 = objc_opt_new();
          v58 = v40;
        }

        v42 = [v40 unsignedIntegerValue];
        v43 = [v64 objectForKeyedSubscript:v10];
        v44 = v43;
        if (!v43)
        {
          v43 = objc_opt_new();
          v57 = v43;
        }

        v45 = createEmbeddingGenerationRawEvent(v36, 0, 0, v39, v42, [v43 unsignedIntegerValue]);
        if (!v44)
        {
        }

        if (!v41)
        {
        }

        if (!v38)
        {
        }

        v46 = v45;
        AnalyticsSendEventLazy();
        v47 = SKGLogEmbedInit();
        v48 = SKGLogEmbedInit();
        v49 = os_signpost_id_generate(v48);

        if (v49 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v47))
        {
          *buf = 138543362;
          *&buf[4] = v46;
          _os_signpost_emit_with_name_impl(&dword_231B25000, v47, OS_SIGNPOST_EVENT, v49, "BundleReport", "%{public}@", buf, 0xCu);
        }
      }

      v62 = [v7 countByEnumeratingWithState:&v67 objects:v72 count:16];
    }

    while (v62);
  }

  v50 = [*(a1 + 32) feedback];
  [v50 resetEmbeddingDonationItemCounts];

  v51 = [*(a1 + 32) feedback];
  [v51 resetCleanupItemCountsForAllListenerTypes];

  v52 = [*(a1 + 32) feedback];
  [v52 resetReindexRequestItemCounts];

  v53 = *MEMORY[0x277D85DE8];
}

- (BOOL)processSuggestedEventsReportWithJobContext:(id)a3 cancelBlock:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277D657A0] sharedContext];
  v8 = [v7 enableSuggestedEvents];

  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = [[SKGJob alloc] initWithJobContext:v5];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __77__SpotlightKnowledge_processSuggestedEventsReportWithJobContext_cancelBlock___block_invoke_3;
    v14[3] = &unk_27893D270;
    v15 = v6;
    v11 = [(SKGJob *)v10 requestCSSuggestedEventsProgressReport:&__block_literal_global_259 cancelBlock:v14];
    if (v11)
    {
      [v5 logFlag:28 message:@"completed reporting progress for suggested events pre-extraction"];
    }

    v12 = !v11;

    objc_autoreleasePoolPop(v9);
  }

  else
  {
    AnalyticsSendEventLazy();
    v12 = 0;
  }

  return v12;
}

void __77__SpotlightKnowledge_processSuggestedEventsReportWithJobContext_cancelBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = a2;
  saveHistoricalReport(v2, 2);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v25;
    *&v5 = 138412290;
    v21 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        if (SKGLogGetCurrentLoggingLevel() >= 4)
        {
          v10 = SKGLogAgentInit();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v11 = [v3 objectForKeyedSubscript:v9];
            *buf = v21;
            v29 = v11;
            _os_log_impl(&dword_231B25000, v10, OS_LOG_TYPE_DEFAULT, "suggested events pre-extraction progress: %@", buf, 0xCu);
          }
        }

        v12 = [v3 objectForKeyedSubscript:{v9, v21}];
        v13 = MEMORY[0x277CCABB0];
        v14 = [MEMORY[0x277D657A0] sharedContext];
        v15 = [v13 numberWithInteger:{objc_msgSend(v14, "suggestedEventsVersion")}];
        v16 = createPreExtractionEvent(v12, v15, @"itemsWithSuggestedEvents");

        if ([v9 isEqualToString:@"Total"])
        {
          v22[1] = MEMORY[0x277D85DD0];
          v22[2] = 3221225472;
          v22[3] = __77__SpotlightKnowledge_processSuggestedEventsReportWithJobContext_cancelBlock___block_invoke_263;
          v22[4] = &unk_27893D388;
          v23 = v16;
          v17 = v16;
          AnalyticsSendEventLazy();
          v18 = &v23;
        }

        else
        {
          v22[0] = v16;
          v19 = v16;
          AnalyticsSendEventLazy();
          v18 = v22;
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v6);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (BOOL)processDocumentUnderstandingReportWithJobContext:(id)a3 cancelBlock:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277D657A0] sharedContext];
  v8 = [v7 enableDocumentUnderstanding];

  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = [[SKGJob alloc] initWithJobContext:v5];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __83__SpotlightKnowledge_processDocumentUnderstandingReportWithJobContext_cancelBlock___block_invoke_3;
    v14[3] = &unk_27893D270;
    v15 = v6;
    v11 = [(SKGJob *)v10 requestCSDocumentUnderstandingProgressReport:&__block_literal_global_278_0 cancelBlock:v14];
    if (v11)
    {
      [v5 logFlag:28 message:@"completed reporting progress for DocumentUnderstanding pre-extraction"];
    }

    v12 = !v11;

    objc_autoreleasePoolPop(v9);
  }

  else
  {
    AnalyticsSendEventLazy();
    v12 = 0;
  }

  return v12;
}

void __83__SpotlightKnowledge_processDocumentUnderstandingReportWithJobContext_cancelBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = a2;
  saveHistoricalReport(v2, 3);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v25;
    *&v5 = 138412290;
    v21 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        if (SKGLogGetCurrentLoggingLevel() >= 4)
        {
          v10 = SKGLogAgentInit();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v11 = [v3 objectForKeyedSubscript:v9];
            *buf = v21;
            v29 = v11;
            _os_log_impl(&dword_231B25000, v10, OS_LOG_TYPE_DEFAULT, "DocumentUnderstanding pre-extraction progress: %@", buf, 0xCu);
          }
        }

        v12 = [v3 objectForKeyedSubscript:{v9, v21}];
        v13 = MEMORY[0x277CCABB0];
        v14 = [MEMORY[0x277D657A0] sharedContext];
        v15 = [v13 numberWithInteger:{objc_msgSend(v14, "documentUnderstandingVersion")}];
        v16 = createPreExtractionEvent(v12, v15, @"itemsWithDocumentUnderstanding");

        if ([v9 isEqualToString:@"Total"])
        {
          v22[1] = MEMORY[0x277D85DD0];
          v22[2] = 3221225472;
          v22[3] = __83__SpotlightKnowledge_processDocumentUnderstandingReportWithJobContext_cancelBlock___block_invoke_282;
          v22[4] = &unk_27893D388;
          v23 = v16;
          v17 = v16;
          AnalyticsSendEventLazy();
          v18 = &v23;
        }

        else
        {
          v22[0] = v16;
          v19 = v16;
          AnalyticsSendEventLazy();
          v18 = v22;
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v6);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (BOOL)processTextWithJobContext:(id)a3 group:(id)a4 cancelBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [v8 startTextProcessingJob];
  if (![v8 doJournals])
  {
    goto LABEL_6;
  }

  v11 = [MEMORY[0x277D657A0] sharedContext];
  v12 = [v11 enableEventUpdater];

  if (v12)
  {
    goto LABEL_6;
  }

  v13 = [MEMORY[0x277D657A0] sharedContext];
  v14 = [v13 enableKeyphrases];

  v15 = [MEMORY[0x277D657A0] sharedContext];
  v16 = [v15 enableEmbeddings];

  if ((v16 & 1) == 0 && (v14 & 1) == 0)
  {
    [v8 finishedTextProcessingJob];
LABEL_6:
    v17 = 1;
    goto LABEL_7;
  }

  if (v14)
  {
    v19 = [MEMORY[0x277D65798] sharedProcessor];
    v20 = [v19 loadKeyphraser];

    if (v20)
    {
      v21 = 1;
      if (!v16)
      {
        goto LABEL_18;
      }

      goto LABEL_14;
    }

    if (v10[2](v10, @"tried loading keyphrase model"))
    {
LABEL_17:
      [v8 finishedTextProcessingJob];
      v17 = 0;
      goto LABEL_7;
    }
  }

  v21 = 0;
  if (!v16)
  {
    goto LABEL_18;
  }

LABEL_14:
  v22 = [MEMORY[0x277D65798] sharedProcessor];
  v23 = [v22 loadEmbedder];

  if ((v23 & 1) == 0)
  {
    if (v10[2](v10, @"tried loading embedding model"))
    {
      goto LABEL_17;
    }

LABEL_18:
    v24 = 0;
    goto LABEL_19;
  }

  v24 = 1;
LABEL_19:
  v29 = objc_autoreleasePoolPush();
  context = objc_autoreleasePoolPush();
  [v8 startJournals];
  v27 = [v8 protectionClasses];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __66__SpotlightKnowledge_processTextWithJobContext_group_cancelBlock___block_invoke;
  v46[3] = &unk_27893F2C8;
  v47 = v8;
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __66__SpotlightKnowledge_processTextWithJobContext_group_cancelBlock___block_invoke_2;
  v44[3] = &unk_27893F418;
  v45 = v10;
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __66__SpotlightKnowledge_processTextWithJobContext_group_cancelBlock___block_invoke_3;
  v41[3] = &unk_27893F440;
  v42 = v47;
  v43 = v45;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __66__SpotlightKnowledge_processTextWithJobContext_group_cancelBlock___block_invoke_4;
  v35[3] = &unk_27893F468;
  v39 = v21;
  v40 = v24;
  v35[4] = self;
  v36 = v42;
  v38 = v43;
  v37 = v9;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __66__SpotlightKnowledge_processTextWithJobContext_group_cancelBlock___block_invoke_313;
  v32[3] = &unk_27893F490;
  v25 = v36;
  v33 = v25;
  v34 = v38;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __66__SpotlightKnowledge_processTextWithJobContext_group_cancelBlock___block_invoke_2_314;
  v30[3] = &unk_27893CC50;
  v31 = v34;
  v26 = [(SpotlightKnowledge *)self processCSJournalsWithGroup:v37 protectionClasses:v27 includeEmbeddings:v24 includeKeyphrases:v21 shouldRemove:1 readerNextPathBlock:v46 deletedReferencesBlock:v44 processedPathBlock:v41 processedItemsBlock:v35 errorLogBlock:v32 cancelBlock:v30];

  [v25 finishedJournals];
  objc_autoreleasePoolPop(context);
  if (v26)
  {
    [v25 logFlag:23 message:@"text processing all done"];
  }

  v17 = !v26;
  objc_autoreleasePoolPop(v29);
  [v25 finishedTextProcessingJob];
LABEL_7:

  return v17;
}

uint64_t __66__SpotlightKnowledge_processTextWithJobContext_group_cancelBlock___block_invoke_4(uint64_t a1, void *a2)
{
  v92 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v65 = objc_autoreleasePoolPush();
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v83 objects:v91 count:16];
  v66 = v4;
  if (v5)
  {
    v6 = v5;
    v7 = *v84;
    obj = *v84;
    v73 = 0;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v84 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v83 + 1) + 8 * v8);
      if (*(a1 + 64) == 1 && [*(*(&v83 + 1) + 8 * v8) errorProcessingKeyphrases] && *(a1 + 65) == 1 && (objc_msgSend(v9, "errorProcessingEmbeddings") & 1) != 0)
      {

        v44 = 0;
LABEL_32:
        v45 = v73;
LABEL_53:

        objc_autoreleasePoolPop(v65);
        goto LABEL_54;
      }

      v10 = [v9 referenceIdentifier];
      if (v10)
      {
        v11 = v10;
        v12 = [v9 bundleIdentifier];
        if (!v12)
        {
          goto LABEL_23;
        }

        v13 = v12;
        v14 = [v9 protectionClass];
        if (!v14)
        {

LABEL_23:
          goto LABEL_27;
        }

        v15 = v14;
        v16 = [v9 personaIdentifier];

        if (v16)
        {
          v17 = objc_autoreleasePoolPush();
          v18 = attributeSetForProcessedItem(v9);
          v19 = [v18 attributeDictionary];
          v20 = [v19 count];

          if (v20)
          {
            context = v17;
            v21 = *(a1 + 32);
            v22 = [v9 referenceIdentifier];
            v23 = [v9 bundleIdentifier];
            v67 = [v21 coreSpotlightItemWithAttributes:v18 referenceIdentifier:v22 bundleIdentifier:v23];

            v24 = v73;
            if (!v73)
            {
              v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
            }

            v25 = [v9 protectionClass];
            v26 = [v24 objectForKeyedSubscript:v25];

            if (!v26)
            {
              v27 = objc_alloc_init(MEMORY[0x277CBEB38]);
              v28 = [v9 protectionClass];
              [v24 setObject:v27 forKeyedSubscript:v28];
            }

            v29 = [v9 protectionClass];
            v30 = [v24 objectForKeyedSubscript:v29];
            v31 = [v9 bundleIdentifier];
            v32 = [v30 objectForKeyedSubscript:v31];

            if (!v32)
            {
              v33 = [v9 protectionClass];
              v34 = [v24 objectForKeyedSubscript:v33];
              v35 = [MEMORY[0x277CBEB18] array];
              v36 = [v9 bundleIdentifier];
              [v34 setObject:v35 forKey:v36];
            }

            v37 = [v9 protectionClass];
            v73 = v24;
            v38 = [v24 objectForKeyedSubscript:v37];
            v39 = [v9 bundleIdentifier];
            v40 = [v38 objectForKeyedSubscript:v39];
            [v40 addObject:v67];

            v41 = *(a1 + 40);
            v42 = [v9 bundleIdentifier];
            v89 = v42;
            v90 = &unk_2846E7F08;
            v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v90 forKeys:&v89 count:1];
            [v41 logJournalItemsProcessed:v43];

            v4 = v66;
            v17 = context;
            v7 = obj;
          }

          else
          {
            v7 = obj;
          }

          objc_autoreleasePoolPop(v17);
        }

        else
        {
          v7 = obj;
        }
      }

LABEL_27:
      if ((*(*(a1 + 56) + 16))())
      {

        v44 = 1;
        goto LABEL_32;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v83 objects:v91 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_34;
      }
    }
  }

  v73 = 0;
LABEL_34:

  contexta = objc_autoreleasePoolPush();
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v46 = v73;
  v47 = [v46 countByEnumeratingWithState:&v79 objects:v88 count:16];
  if (v47)
  {
    v48 = *v80;
    v74 = v46;
    v63 = *v80;
    while (2)
    {
      v49 = 0;
      v64 = v47;
      do
      {
        if (*v80 != v48)
        {
          objc_enumerationMutation(v46);
        }

        v68 = v49;
        v50 = *(*(&v79 + 1) + 8 * v49);
        v75 = 0u;
        v76 = 0u;
        v77 = 0u;
        v78 = 0u;
        obja = [v46 objectForKeyedSubscript:{v50, v63}];
        v51 = [obja countByEnumeratingWithState:&v75 objects:v87 count:16];
        if (v51)
        {
          v52 = v51;
          v53 = *v76;
          while (2)
          {
            for (i = 0; i != v52; ++i)
            {
              if (*v76 != v53)
              {
                objc_enumerationMutation(obja);
              }

              v55 = *(*(&v75 + 1) + 8 * i);
              v56 = objc_autoreleasePoolPush();
              v57 = [*(a1 + 32) coreSpotlightIndexWithBundleIdentifier:v55 protectionClass:v50];
              v58 = *(a1 + 32);
              v59 = [v74 objectForKeyedSubscript:v50];
              v60 = [v59 objectForKeyedSubscript:v55];
              [v58 updateCoreSpotlightWithItems:v60 index:v57 group:*(a1 + 48) cancelBlock:*(a1 + 56)];

              LOBYTE(v60) = (*(*(a1 + 56) + 16))();
              objc_autoreleasePoolPop(v56);
              if (v60)
              {

                goto LABEL_52;
              }
            }

            v52 = [obja countByEnumeratingWithState:&v75 objects:v87 count:16];
            if (v52)
            {
              continue;
            }

            break;
          }
        }

        if ((*(*(a1 + 56) + 16))())
        {
LABEL_52:
          v45 = v74;

          objc_autoreleasePoolPop(contexta);
          v44 = 1;
          v4 = v66;
          goto LABEL_53;
        }

        v4 = v66;
        v49 = v68 + 1;
        v48 = v63;
        v46 = v74;
      }

      while (v68 + 1 != v64);
      v47 = [v74 countByEnumeratingWithState:&v79 objects:v88 count:16];
      if (v47)
      {
        continue;
      }

      break;
    }
  }

  objc_autoreleasePoolPop(contexta);
  objc_autoreleasePoolPop(v65);
  v44 = (*(*(a1 + 56) + 16))() ^ 1;
LABEL_54:

  v61 = *MEMORY[0x277D85DE8];
  return v44;
}

uint64_t __66__SpotlightKnowledge_processTextWithJobContext_group_cancelBlock___block_invoke_313(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 logError:a2 message:v6];
  LODWORD(a2) = (*(*(a1 + 40) + 16))();

  return a2 ^ 1;
}

- (BOOL)processPeopleWithGroup:(id)a3 cancelBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SpotlightKnowledge *)self spotlightContext];
  [v8 startPeopleIndexingJob];
  v9 = [v8 doArchiving];
  v10 = objc_autoreleasePoolPush();
  if (v9)
  {
    goto LABEL_3;
  }

  [v8 startPeopleArchives];
  v19 = [v8 protectionClasses];
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __57__SpotlightKnowledge_processPeopleWithGroup_cancelBlock___block_invoke;
  v45[3] = &unk_27893F4B8;
  v45[4] = self;
  v47 = v7;
  v46 = v8;
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __57__SpotlightKnowledge_processPeopleWithGroup_cancelBlock___block_invoke_2;
  v41[3] = &unk_27893F318;
  v41[4] = self;
  v42 = v6;
  v44 = v47;
  v43 = v46;
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __57__SpotlightKnowledge_processPeopleWithGroup_cancelBlock___block_invoke_3;
  v37[3] = &unk_27893F4E0;
  v37[4] = self;
  v40 = v44;
  v38 = v43;
  v39 = v42;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __57__SpotlightKnowledge_processPeopleWithGroup_cancelBlock___block_invoke_4;
  v34[3] = &unk_27893F490;
  v11 = v38;
  v35 = v11;
  v36 = v40;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __57__SpotlightKnowledge_processPeopleWithGroup_cancelBlock___block_invoke_5;
  v32[3] = &unk_27893CC50;
  v33 = v36;
  v12 = 1;
  v13 = [(SpotlightKnowledge *)self processCSArchivesWithGroup:v39 protectionClasses:v19 shouldRemove:1 archiverNextPathBlock:v45 processedPathBlock:v41 processedItemsBlock:v37 errorLogBlock:v34 cancelBlock:v32];

  [v11 finishedPeopleArchives];
  if (v13)
  {
LABEL_3:
    [v8 startPeopleQueries];
    v30[0] = 0;
    v30[1] = v30;
    v30[2] = 0x2020000000;
    v31 = 0;
    v14 = [[SKGJob alloc] initWithJobContext:v8];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __57__SpotlightKnowledge_processPeopleWithGroup_cancelBlock___block_invoke_6;
    v26[3] = &unk_27893F508;
    v26[4] = self;
    v28 = v7;
    v27 = v8;
    v29 = v30;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __57__SpotlightKnowledge_processPeopleWithGroup_cancelBlock___block_invoke_7;
    v24[3] = &unk_27893D2C0;
    v25 = v27;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __57__SpotlightKnowledge_processPeopleWithGroup_cancelBlock___block_invoke_8;
    v22[3] = &unk_27893D2C0;
    v15 = v25;
    v23 = v15;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __57__SpotlightKnowledge_processPeopleWithGroup_cancelBlock___block_invoke_9;
    v20[3] = &unk_27893D270;
    v16 = v28;
    v21 = v16;
    v17 = [(SKGJob *)v14 requestCSProcessingWithProcessedItemBlock:v26 batchArchivedBlock:v24 batchUpdatedBlock:v22 cancelBlock:v20 errorBlock:&__block_literal_global_331];
    if (![(SpotlightKnowledge *)self flushGraphWithGroup:v6 cancelBlock:v16])
    {
      [v15 logError:4 message:@"graph unavailable"];
      v17 = 0;
    }

    [v15 finishedPeopleQueries];

    _Block_object_dispose(v30, 8);
    if (v17)
    {
      [v15 logFlag:26 message:@"people indexing all done"];
      v12 = 0;
    }

    else
    {
      v12 = 1;
    }
  }

  objc_autoreleasePoolPop(v10);
  [v8 finishedPeopleIndexingJob];

  return v12;
}

id __57__SpotlightKnowledge_processPeopleWithGroup_cancelBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = a2;
  [v3 removeGraphPeopleWithCancelBlock:v4];
  v6 = [*(a1 + 40) peopleArchivePathWithProtectionClass:v5];

  return v6;
}

uint64_t __57__SpotlightKnowledge_processPeopleWithGroup_cancelBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) flushGraphWithGroup:*(a1 + 40) cancelBlock:*(a1 + 56)];
  v8 = *(a1 + 48);
  if (v7)
  {
    [v8 logProcessedArchiveWithName:v6 protectionClass:v5];
    v9 = (*(*(a1 + 56) + 16))() ^ 1;
  }

  else
  {
    [v8 logError:4 message:@"graph unavailable"];
    v9 = 0;
  }

  return v9;
}

uint64_t __57__SpotlightKnowledge_processPeopleWithGroup_cancelBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v86 = *MEMORY[0x277D85DE8];
  v3 = a2;
  context = objc_autoreleasePoolPush();
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v77 objects:v85 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v78;
    v63 = v4;
    obj = *v78;
LABEL_3:
    v9 = 0;
    v65 = v6;
    while (1)
    {
      if (*v78 != v8)
      {
        objc_enumerationMutation(v4);
      }

      v10 = *(*(&v77 + 1) + 8 * v9);
      v11 = [v10 referenceIdentifier];
      if (v11)
      {
        v12 = v11;
        v13 = [v10 bundleIdentifier];
        if (!v13)
        {
          goto LABEL_19;
        }

        v14 = v13;
        v15 = [v10 protectionClass];
        if (!v15)
        {
          goto LABEL_18;
        }

        v16 = v15;
        v17 = [v10 personaIdentifier];

        if (v17)
        {
          if (![*(a1 + 32) addProcessedItem:v10 cancelBlock:*(a1 + 56)])
          {
            v42 = v7;
            v43 = 0;
LABEL_27:
            v44 = v4;
LABEL_48:

            objc_autoreleasePoolPop(context);
            goto LABEL_49;
          }

          v12 = [*(a1 + 32) peopleAttributesWithProcessedItem:v10];
          v18 = *(a1 + 32);
          v19 = [v10 referenceIdentifier];
          v20 = [v10 bundleIdentifier];
          v14 = [v18 coreSpotlightItemWithAttributes:v12 referenceIdentifier:v19 bundleIdentifier:v20];

          if (!v7)
          {
            v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
          }

          v21 = [v10 protectionClass];
          v22 = [v7 objectForKeyedSubscript:v21];

          if (!v22)
          {
            v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
            v24 = [v10 protectionClass];
            [v7 setObject:v23 forKeyedSubscript:v24];
          }

          v25 = [v10 protectionClass];
          v26 = [v7 objectForKeyedSubscript:v25];
          v27 = [v10 bundleIdentifier];
          [v26 objectForKeyedSubscript:v27];
          v29 = v28 = v7;

          if (!v29)
          {
            v30 = [v10 protectionClass];
            v31 = [v28 objectForKeyedSubscript:v30];
            v32 = [MEMORY[0x277CBEB18] array];
            v33 = [v10 bundleIdentifier];
            [v31 setObject:v32 forKey:v33];
          }

          v34 = [v10 protectionClass];
          v35 = [v28 objectForKeyedSubscript:v34];
          v36 = [v10 bundleIdentifier];
          v37 = [v35 objectForKeyedSubscript:v36];
          [v37 addObject:v14];

          v38 = *(a1 + 40);
          v39 = [v10 bundleIdentifier];
          v83 = v39;
          v84 = &unk_2846E7F08;
          v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
          [v38 logArchiveItemsProcessed:v40];

          v4 = v63;
          v6 = v65;
          v7 = v28;
LABEL_18:

          v8 = obj;
LABEL_19:

          goto LABEL_20;
        }

        v6 = v65;
        v8 = obj;
      }

LABEL_20:
      if ((*(*(a1 + 56) + 16))())
      {
        v42 = v7;
        v43 = 1;
        goto LABEL_27;
      }

      if (v6 == ++v9)
      {
        v41 = [v4 countByEnumeratingWithState:&v77 objects:v85 count:16];
        v6 = v41;
        if (v41)
        {
          goto LABEL_3;
        }

        goto LABEL_29;
      }
    }
  }

  v7 = 0;
LABEL_29:

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v44 = v7;
  v45 = [v44 countByEnumeratingWithState:&v73 objects:v82 count:16];
  if (v45)
  {
    v46 = *v74;
    v64 = v4;
    v60 = *v74;
    while (2)
    {
      v47 = 0;
      v61 = v45;
      do
      {
        if (*v74 != v46)
        {
          objc_enumerationMutation(v44);
        }

        v66 = v47;
        v48 = *(*(&v73 + 1) + 8 * v47);
        v69 = 0u;
        v70 = 0u;
        v71 = 0u;
        v72 = 0u;
        obja = [v44 objectForKeyedSubscript:{v48, v60}];
        v49 = [obja countByEnumeratingWithState:&v69 objects:v81 count:16];
        if (v49)
        {
          v50 = v49;
          v51 = *v70;
          while (2)
          {
            for (i = 0; i != v50; ++i)
            {
              if (*v70 != v51)
              {
                objc_enumerationMutation(obja);
              }

              v53 = *(*(&v69 + 1) + 8 * i);
              v54 = [*(a1 + 32) coreSpotlightIndexWithBundleIdentifier:v53 protectionClass:v48];
              v55 = *(a1 + 32);
              v56 = [v44 objectForKeyedSubscript:v48];
              v57 = [v56 objectForKeyedSubscript:v53];
              [v55 updateCoreSpotlightWithItems:v57 index:v54 group:*(a1 + 48) cancelBlock:*(a1 + 56)];

              LOBYTE(v57) = (*(*(a1 + 56) + 16))();
              if (v57)
              {

                goto LABEL_47;
              }
            }

            v50 = [obja countByEnumeratingWithState:&v69 objects:v81 count:16];
            if (v50)
            {
              continue;
            }

            break;
          }
        }

        if ((*(*(a1 + 56) + 16))())
        {
LABEL_47:
          v43 = 1;
          v42 = v44;
          v4 = v64;
          goto LABEL_48;
        }

        v4 = v64;
        v47 = v66 + 1;
        v46 = v60;
      }

      while (v66 + 1 != v61);
      v45 = [v44 countByEnumeratingWithState:&v73 objects:v82 count:16];
      if (v45)
      {
        continue;
      }

      break;
    }
  }

  objc_autoreleasePoolPop(context);
  v43 = (*(*(a1 + 56) + 16))() ^ 1;
LABEL_49:

  v58 = *MEMORY[0x277D85DE8];
  return v43;
}

uint64_t __57__SpotlightKnowledge_processPeopleWithGroup_cancelBlock___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 logError:a2 message:v6];
  LODWORD(a2) = (*(*(a1 + 40) + 16))();

  return a2 ^ 1;
}

uint64_t __57__SpotlightKnowledge_processPeopleWithGroup_cancelBlock___block_invoke_6(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) addProcessedItem:v3 cancelBlock:*(a1 + 48)];
  if (v4)
  {
    v5 = *(a1 + 40);
    v6 = [v3 bundleIdentifier];
    v10 = v6;
    v11[0] = &unk_2846E7F08;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    [v5 logQueryItemsProcessed:v7];

    if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
    {
      [*(a1 + 32) removeGraphPeopleWithCancelBlock:*(a1 + 48)];
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v4;
}

void __57__SpotlightKnowledge_processPeopleWithGroup_cancelBlock___block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v10 = a2;
  v11[0] = a3;
  v5 = MEMORY[0x277CBEAC0];
  v6 = a3;
  v7 = a2;
  v8 = [v5 dictionaryWithObjects:v11 forKeys:&v10 count:1];
  [v4 logQueryItemsArchived:v8];

  v9 = *MEMORY[0x277D85DE8];
}

void __57__SpotlightKnowledge_processPeopleWithGroup_cancelBlock___block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v10 = a2;
  v11[0] = a3;
  v5 = MEMORY[0x277CBEAC0];
  v6 = a3;
  v7 = a2;
  v8 = [v5 dictionaryWithObjects:v11 forKeys:&v10 count:1];
  [v4 logQueryItemsUpdated:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)processGraphWithGroup:(id)a3 cancelBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(SpotlightKnowledge *)self spotlightGraphAvailable])
  {
    v8 = [(SpotlightKnowledge *)self spotlightContext];
    [v8 startGraphAnalysisJob];
    v9 = objc_autoreleasePoolPush();
    if ([(SpotlightKnowledge *)self graphNeedsAnalysis])
    {
      objc_autoreleasePoolPop(v9);
      v10 = [MEMORY[0x277D657A0] sharedContext];
      v11 = [v10 enableMegadomePeople];

      if (v11)
      {
        [v8 startMegadomeIndexing];
        v12 = objc_autoreleasePoolPush();
        if ([(SpotlightKnowledge *)self removeGraphEntitiesWithCancelBlock:v7])
        {
          v27 = 0;
          v28 = &v27;
          v29 = 0x2020000000;
          v30 = 1;
          v13 = [MEMORY[0x277D65798] sharedProcessor];
          v19 = MEMORY[0x277D85DD0];
          v20 = 3221225472;
          v21 = __56__SpotlightKnowledge_processGraphWithGroup_cancelBlock___block_invoke;
          v22 = &unk_27893F550;
          v23 = self;
          v24 = v6;
          v25 = v7;
          v26 = &v27;
          [v13 generateMegadomePeopleUsingBlock:&v19 cancelBlock:v25];

          LODWORD(v13) = *(v28 + 24);
          _Block_object_dispose(&v27, 8);
          objc_autoreleasePoolPop(v12);
          [v8 finishedMegadomeIndexing];
          if (v13 != 1)
          {
LABEL_14:
            v14 = 1;
            goto LABEL_15;
          }
        }

        else
        {
          objc_autoreleasePoolPop(v12);
          [v8 finishedMegadomeIndexing];
        }
      }

      [v8 startGraphAnalysis];
      v16 = [(SpotlightKnowledge *)self analyzeGraphWithCancelBlock:v7];
      [v8 finishedGraphAnalysis];
      if (!v16)
      {
        goto LABEL_14;
      }

      [v8 startGraphScoring];
      v17 = [(SpotlightKnowledge *)self scoreGraphWithCancelBlock:v7];
      [v8 finishedGraphScoring];
      if (!v17)
      {
        goto LABEL_14;
      }

      v9 = objc_autoreleasePoolPush();
      [(SpotlightKnowledge *)self updateSpotlightContactsWithJobContext:v8 group:v6 cancelBlock:v7];
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      [(SpotlightKnowledge *)self updateSpotlightContactsWithJobContext:v8 group:v6 cancelBlock:v7];
      objc_autoreleasePoolPop(v15);
    }

    objc_autoreleasePoolPop(v9);
    [v8 logFlag:27 message:@"completed graph analysis"];
    v14 = 0;
LABEL_15:
    [v8 finishedGraphAnalysisJob];

    goto LABEL_16;
  }

  v14 = 0;
LABEL_16:

  return v14;
}

void __56__SpotlightKnowledge_processGraphWithGroup_cancelBlock___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = [[SKGProcessedPerson alloc] initWithPerson:v5];

  if (([*(a1 + 32) addProcessedPerson:v6 group:*(a1 + 40) cancelBlock:*(a1 + 48)] & 1) == 0)
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    *a3 = 1;
  }
}

- (void)sendAnalytics
{
  v28 = *MEMORY[0x277D85DE8];
  empty = xpc_dictionary_create_empty();
  v22 = [(SpotlightKnowledge *)self spotlightContext];
  v4 = [v22 feedback];
  v5 = [v4 feedbackData];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      v10 = 0;
      do
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v23 + 1) + 8 * v10);
        v12 = [v6 objectForKeyedSubscript:v11];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (([v11 hasPrefix:@"should"] & 1) != 0 || (objc_msgSend(v11, "hasPrefix:", @"did") & 1) != 0 || objc_msgSend(v11, "hasPrefix:", @"invalid"))
          {
            v13 = [v6 objectForKeyedSubscript:v11];
            v14 = [v13 BOOLValue];

            xpc_dictionary_set_BOOL(empty, [v11 UTF8String], v14);
          }

          else if (([v11 hasPrefix:@"num"] & 1) != 0 || (objc_msgSend(v11, "hasSuffix:", @"Size") & 1) != 0 || objc_msgSend(v11, "hasSuffix:", @"Count"))
          {
            v15 = [v6 objectForKeyedSubscript:v11];
            v16 = [v15 intValue];

            xpc_dictionary_set_int64(empty, [v11 UTF8String], v16);
          }

          else if ([v11 hasSuffix:@"time"])
          {
            v17 = [v6 objectForKeyedSubscript:v11];
            [v17 doubleValue];
            v19 = v18;

            xpc_dictionary_set_double(empty, [v11 UTF8String], v19);
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v20 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
      v8 = v20;
    }

    while (v20);
  }

  analytics_send_event();
  v21 = *MEMORY[0x277D85DE8];
}

- (id)timerWithBlock:(id)a3
{
  v3 = a3;
  v4 = [SKGTimer alloc];
  v5 = [(SKGTimer *)v4 initWithTimeIntervalSinceNow:gTimerQueue tolerance:v3 queue:5.0 block:2.0];

  return v5;
}

- (void)runWithQueue:(id)a3 group:(id)a4 progressBlock:(id)a5 checkpointBlock:(id)a6 completeBlock:(id)a7 cancelBlock:(id)a8 deferBlock:(id)a9
{
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __108__SpotlightKnowledge_runWithQueue_group_progressBlock_checkpointBlock_completeBlock_cancelBlock_deferBlock___block_invoke;
  block[3] = &unk_27893F5A0;
  block[4] = self;
  v28 = v15;
  v29 = v19;
  v30 = v20;
  v31 = v18;
  v32 = v16;
  v33 = v17;
  v21 = v17;
  v22 = v16;
  v23 = v18;
  v24 = v20;
  v25 = v19;
  v26 = v15;
  dispatch_group_async(v26, a3, block);
}

void __108__SpotlightKnowledge_runWithQueue_group_progressBlock_checkpointBlock_completeBlock_cancelBlock_deferBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) spotlightContext];
  [v2 loadWithGroup:*(a1 + 40)];
  [v2 start];
  if ([v2 shouldIgnore])
  {
    [v2 ignoreWithGroup:*(a1 + 40)];
LABEL_5:
    [v2 end];
    goto LABEL_38;
  }

  if ([v2 shouldDestroy])
  {
    [v2 destroyWithGroup:*(a1 + 40)];
    goto LABEL_5;
  }

  if ([v2 shouldReset])
  {
    [v2 resetWithGroup:*(a1 + 40)];
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__24;
  v28 = __Block_byref_object_dispose__24;
  v29 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __108__SpotlightKnowledge_runWithQueue_group_progressBlock_checkpointBlock_completeBlock_cancelBlock_deferBlock___block_invoke_2;
  aBlock[3] = &unk_27893F578;
  v3 = v2;
  v18 = v3;
  v4 = *(a1 + 48);
  v23 = &v24;
  v19 = *(a1 + 32);
  v20 = v4;
  v5 = a1 + 56;
  v21 = *(a1 + 56);
  v22 = *(a1 + 64);
  v6 = _Block_copy(aBlock);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __108__SpotlightKnowledge_runWithQueue_group_progressBlock_checkpointBlock_completeBlock_cancelBlock_deferBlock___block_invoke_364;
  v15[3] = &unk_27893CC50;
  v16 = *(a1 + 48);
  v7 = _Block_copy(v15);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __108__SpotlightKnowledge_runWithQueue_group_progressBlock_checkpointBlock_completeBlock_cancelBlock_deferBlock___block_invoke_365;
  v14[3] = &unk_27893F0D0;
  v14[4] = &v24;
  v8 = _Block_copy(v14);
  v9 = [*(a1 + 32) timerWithBlock:v6];
  v10 = v25[5];
  v25[5] = v9;

  if ([v3 shouldReportProgress] && ((v8[2](v8), (_os_feature_enabled_impl() & 1) != 0) || (v11 = objc_msgSend(*(a1 + 32), "processEmbeddingsReportWithJobContext:progressBlock:checkpointBlock:cancelBlock:", v3, *(a1 + 72), *(a1 + 80), v7), objc_msgSend(*(a1 + 32), "processSuggestedEventsReportWithJobContext:cancelBlock:", v3, v7), objc_msgSend(*(a1 + 32), "processDocumentUnderstandingReportWithJobContext:cancelBlock:", v3, v7), (v11 & 1) != 0)) || objc_msgSend(v3, "shouldProcessText") && (v8[2](v8), (objc_msgSend(*(a1 + 32), "processTextWithJobContext:group:cancelBlock:", v3, *(a1 + 40), v7) & 1) != 0) || objc_msgSend(v3, "shouldProcessAttributes") && (v8[2](v8), (objc_msgSend(*(a1 + 32), "processAttributesWithJobContext:group:cancelBlock:", v3, *(a1 + 40), v7) & 1) != 0))
  {
    v12 = 1;
  }

  else if ((([v3 shouldIndexPeople] & 1) != 0 || objc_msgSend(v3, "shouldAnalyzeGraph")) && (v8[2](v8), objc_msgSend(*(a1 + 32), "loadGraphWithGroup:cancelBlock:", *(a1 + 40), v7)))
  {
    v12 = [*(a1 + 32) processDeletesWithJobContext:v3 group:*(a1 + 40) cancelBlock:v7];
    if ([v3 shouldReset])
    {
      [*(a1 + 32) unloadGraphWithGroup:*(a1 + 40) cancelBlock:v7];
      [v3 resetWithGroup:*(a1 + 40)];
      [*(a1 + 32) loadGraphWithGroup:*(a1 + 40) cancelBlock:v7];
    }

    if (v12)
    {
      if ([v3 shouldIndexPeople] && !objc_msgSend(*(a1 + 32), "processPeopleWithGroup:cancelBlock:", *(a1 + 40), v7))
      {
        v12 = 0;
      }

      else if ([v3 shouldAnalyzeGraph])
      {
        v12 = [*(a1 + 32) processGraphWithGroup:*(a1 + 40) cancelBlock:v7];
      }

      else
      {
        v12 = 1;
      }
    }

    [*(a1 + 32) unloadGraphWithGroup:*(a1 + 40) cancelBlock:v7];
  }

  else
  {
    v12 = 0;
  }

  [v25[5] suspend];
  [v3 end];
  [*(a1 + 32) sendAnalytics];
  if (v12 && ([v3 done] & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SKG: deferring", v13, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SKG: completed", v13, 2u);
    }

    v5 = a1 + 64;
  }

  (*(*v5 + 16))();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SKG: done", v13, 2u);
  }

  _Block_object_dispose(&v24, 8);
LABEL_38:
}

void __108__SpotlightKnowledge_runWithQueue_group_progressBlock_checkpointBlock_completeBlock_cancelBlock_deferBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 32) currentMessage];
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SKG: too long till check in - %@", &v9, 0xCu);
  }

  v5 = *(a1 + 48);
  if (v5 && ((*(v5 + 16))() & 1) != 0)
  {
    [*(a1 + 32) end];
    [*(a1 + 40) sendAnalytics];
    v6 = [*(a1 + 32) canDefer];
    v7 = 64;
    if (v6)
    {
      v7 = 56;
    }

    (*(*(a1 + v7) + 16))();
    raise(15);
  }

  else
  {
    [*(*(*(a1 + 72) + 8) + 40) reset];
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __108__SpotlightKnowledge_runWithQueue_group_progressBlock_checkpointBlock_completeBlock_cancelBlock_deferBlock___block_invoke_364(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    __108__SpotlightKnowledge_runWithQueue_group_progressBlock_checkpointBlock_completeBlock_cancelBlock_deferBlock___block_invoke_364_cold_1(v3);
  }

  v4 = (*(*(a1 + 32) + 16))();
  if (v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SKG: should defer", v6, 2u);
  }

  return v4;
}

uint64_t __108__SpotlightKnowledge_runWithQueue_group_progressBlock_checkpointBlock_completeBlock_cancelBlock_deferBlock___block_invoke_365(uint64_t a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    __108__SpotlightKnowledge_runWithQueue_group_progressBlock_checkpointBlock_completeBlock_cancelBlock_deferBlock___block_invoke_365_cold_1();
  }

  return [*(*(*(a1 + 32) + 8) + 40) reset];
}

- (void)runWithGroup:(id)a3 delegate:(id)a4
{
  v5 = a3;
  v6 = [(SpotlightKnowledge *)self spotlightContext];
  [v6 start];
  if ([v6 shouldReportProgress])
  {
    [(SpotlightKnowledge *)self processEmbeddingsReportWithJobContext:v6 progressBlock:0 checkpointBlock:0 cancelBlock:&__block_literal_global_369];
    [(SpotlightKnowledge *)self processSuggestedEventsReportWithJobContext:v6 cancelBlock:&__block_literal_global_369];
    [(SpotlightKnowledge *)self processDocumentUnderstandingReportWithJobContext:v6 cancelBlock:&__block_literal_global_369];
  }

  if ([v6 shouldProcessText])
  {
    [(SpotlightKnowledge *)self processTextWithJobContext:v6 group:v5 cancelBlock:&__block_literal_global_369];
  }

  if ([v6 shouldProcessAttributes])
  {
    [(SpotlightKnowledge *)self processAttributesWithJobContext:v6 group:v5 cancelBlock:&__block_literal_global_369];
  }

  if ((([v6 shouldIndexPeople] & 1) != 0 || objc_msgSend(v6, "shouldAnalyzeGraph")) && -[SpotlightKnowledge loadGraphWithGroup:cancelBlock:](self, "loadGraphWithGroup:cancelBlock:", v5, &__block_literal_global_369))
  {
    if ([v6 shouldIndexPeople])
    {
      [(SpotlightKnowledge *)self processPeopleWithGroup:v5 cancelBlock:&__block_literal_global_369];
    }

    if ([v6 shouldAnalyzeGraph])
    {
      [(SpotlightKnowledge *)self processGraphWithGroup:v5 cancelBlock:&__block_literal_global_369];
    }

    [(SpotlightKnowledge *)self unloadGraphWithGroup:v5 cancelBlock:&__block_literal_global_369];
  }

  [v6 end];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SKG: done", v7, 2u);
  }
}

void __75__SpotlightKnowledge_updateCoreSpotlightWithItems_index_group_cancelBlock___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  [v1 UTF8String];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __78__SpotlightKnowledge_updateSpotlightContactsWithJobContext_group_cancelBlock___block_invoke_35_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  [v1 UTF8String];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __66__SpotlightKnowledge_processLegacyPipelinesReportWithCancelBlock___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __66__SpotlightKnowledge_processLegacyPipelinesReportWithCancelBlock___block_invoke_188_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 134218242;
  v5 = a2;
  v6 = 2112;
  v7 = a1;
  _os_log_error_impl(&dword_231B25000, log, OS_LOG_TYPE_ERROR, "Failed to report DAS checkpoint %lu: %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

void __108__SpotlightKnowledge_runWithQueue_group_progressBlock_checkpointBlock_completeBlock_cancelBlock_deferBlock___block_invoke_364_cold_1(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "SKG: checkin %@", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end