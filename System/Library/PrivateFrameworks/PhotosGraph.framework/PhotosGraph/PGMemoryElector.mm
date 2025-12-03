@interface PGMemoryElector
+ (int64_t)compareMemoryCategoryForMemory:(id)memory toOtherMemory:(id)otherMemory;
- (BOOL)_memoryContainsNegativeFeedbackPets:(id)pets;
- (BOOL)_shouldCheckForSuggestionCollisionsForTriggeredMemory:(id)memory;
- (PGMemoryElector)initWithWorkingContext:(id)context userFeedbackCalculator:(id)calculator;
- (double)_contentScoreWeightForNewMemoryFocusWithCategory:(unint64_t)category;
- (id)_requestedEnrichedMemoriesWithConfiguration:(id)configuration graph:(id)graph;
- (id)electAndEnrichSortedTriggeredMemories:(id)memories alreadyEnrichedMemories:(id)enrichedMemories targetNumberOfMemories:(unint64_t)ofMemories configuration:(id)configuration graph:(id)graph planner:(id)planner context:(id)context progressReporter:(id)self0;
- (id)filterAndSortTriggeredMemories:(id)memories withPlanner:(id)planner context:(id)context configuration:(id)configuration progressReporter:(id)reporter;
- (id)generateEnrichedMemoriesWithConfiguration:(id)configuration graph:(id)graph plannerPastSource:(id)source plannerFutureSource:(id)futureSource progressReporter:(id)reporter;
- (id)generateEnrichedMemoriesWithConfiguration:(id)configuration graph:(id)graph progressReporter:(id)reporter;
- (unint64_t)targetNumberOfMemoriesFromConfigurator:(id)configurator graph:(id)graph context:(id)context;
@end

@implementation PGMemoryElector

- (id)_requestedEnrichedMemoriesWithConfiguration:(id)configuration graph:(id)graph
{
  v88 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  graphCopy = graph;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = [[PGGraphLocationHelper alloc] initWithGraph:graphCopy];
  v10 = [[PGMemoryCurationSession alloc] initWithCurationManager:self->_curationManager photoLibrary:self->_photoLibrary curationContext:self->_curationContext locationHelper:v9];
  v11 = [PGEnrichedMemoryFactory alloc];
  selfCopy = self;
  serviceManager = [(PGManagerWorkingContext *)self->_workingContext serviceManager];
  v71 = v10;
  v73 = [(PGEnrichedMemoryFactory *)v11 initWithMemoryCurationSession:v10 graph:graphCopy serviceManager:serviceManager];

  requestedMemoryCategory = [configurationCopy requestedMemoryCategory];
  requestedUniqueMemoryIdentifier = [configurationCopy requestedUniqueMemoryIdentifier];
  v15 = requestedMemoryCategory | [requestedUniqueMemoryIdentifier length];

  requestedTriggerType = [configurationCopy requestedTriggerType];
  if (!v15)
  {
LABEL_10:
    if (requestedTriggerType)
    {
      v68 = v9;
      v36 = v8;
      v37 = [PGMemoryContext alloc];
      localDate = [configurationCopy localDate];
      timeZone = [configurationCopy timeZone];
      v40 = [(PGMemoryContext *)v37 initWithLocalDate:localDate timeZone:timeZone photoLibrary:selfCopy->_photoLibrary];

      v66 = [[PGMemoryMomentNodesWithBlockedFeatureCache alloc] initWithUserFeedbackCalculator:selfCopy->_userFeedbackCalculator loggingConnection:selfCopy->_loggingConnection];
      v41 = [[PGMemoryTriggerHandler alloc] initWithWorkingContext:selfCopy->_workingContext momentNodesWithBlockedFeatureCache:v66];
      requestedTriggerType2 = [configurationCopy requestedTriggerType];
      ignoreProgress = [MEMORY[0x277D22C80] ignoreProgress];
      v65 = v41;
      v67 = v40;
      v70 = graphCopy;
      v44 = [(PGMemoryTriggerHandler *)v41 allTriggeredMemoriesWithContext:v40 forTriggerType:requestedTriggerType2 inGraph:graphCopy progressReporter:ignoreProgress];

      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v45 = v44;
      v46 = [v45 countByEnumeratingWithState:&v74 objects:v82 count:16];
      if (v46)
      {
        v47 = v46;
        v48 = *v75;
        do
        {
          for (i = 0; i != v47; ++i)
          {
            if (*v75 != v48)
            {
              objc_enumerationMutation(v45);
            }

            v50 = *(*(&v74 + 1) + 8 * i);
            v51 = objc_autoreleasePoolPush();
            ignoreProgress2 = [MEMORY[0x277D22C80] ignoreProgress];
            v53 = [(PGEnrichedMemoryFactory *)v73 enrichedMemoryWithTriggeredMemory:v50 withConfiguration:configurationCopy progressReporter:ignoreProgress2];

            if (v53)
            {
              [v36 addObject:v53];
            }

            objc_autoreleasePoolPop(v51);
          }

          v47 = [v45 countByEnumeratingWithState:&v74 objects:v82 count:16];
        }

        while (v47);
      }

      v8 = v36;
      v9 = v68;
      graphCopy = v70;
    }

    if ([configurationCopy shouldPersist])
    {
      pendingState = [configurationCopy pendingState];
      ignoreProgress3 = [MEMORY[0x277D22C80] ignoreProgress];
      [(PGMemoryElector *)selfCopy persistEnrichedMemories:v8 pendingState:pendingState graph:graphCopy progressReporter:ignoreProgress3];
    }

    v56 = v8;
    goto LABEL_24;
  }

  v17 = [(MAElementCollection *)[PGGraphMemoryNodeCollection alloc] initWithGraph:graphCopy];
  if (!requestedMemoryCategory)
  {
LABEL_7:
    requestedUniqueMemoryIdentifier2 = [configurationCopy requestedUniqueMemoryIdentifier];
    v29 = [requestedUniqueMemoryIdentifier2 length];

    if (v29)
    {
      requestedUniqueMemoryIdentifier3 = [configurationCopy requestedUniqueMemoryIdentifier];
      v83 = requestedUniqueMemoryIdentifier3;
      [MEMORY[0x277CBEA60] arrayWithObjects:&v83 count:1];
      v31 = configurationCopy;
      v33 = v32 = v8;
      v34 = [PGGraphMemoryNodeCollection memoryNodesWithUniqueIdentifierArray:v33 inGraph:graphCopy];
      v35 = [(MAElementCollection *)v17 collectionByFormingUnionWith:v34];

      v8 = v32;
      configurationCopy = v31;

      v17 = v35;
    }

    v78[0] = MEMORY[0x277D85DD0];
    v78[1] = 3221225472;
    v78[2] = __69__PGMemoryElector__requestedEnrichedMemoriesWithConfiguration_graph___block_invoke;
    v78[3] = &unk_278889020;
    v79 = configurationCopy;
    v80 = v73;
    v81 = v8;
    [(MANodeCollection *)v17 enumerateNodesUsingBlock:v78];

    goto LABEL_10;
  }

  v18 = +[PGGraphMemoryNodeCollection memoryNodesOfCategory:inGraph:](PGGraphMemoryNodeCollection, "memoryNodesOfCategory:inGraph:", [configurationCopy requestedMemoryCategory], graphCopy);
  v19 = [(MAElementCollection *)v17 collectionByFormingUnionWith:v18];

  requestedFeature = [configurationCopy requestedFeature];
  v21 = requestedFeature;
  if (!requestedFeature)
  {
LABEL_6:

    v17 = v19;
    goto LABEL_7;
  }

  v22 = [requestedFeature nodeInGraph:graphCopy];
  if (v22)
  {
    v23 = v22;
    v24 = [(MANodeCollection *)[PGGraphFeatureNodeCollection alloc] initWithNode:v22];
    [(PGGraphFeatureNodeCollection *)v24 memoryNodes];
    v25 = configurationCopy;
    v27 = v26 = v8;
    v69 = [(MAElementCollection *)v19 collectionByIntersecting:v27];

    v8 = v26;
    configurationCopy = v25;

    v19 = v69;
    goto LABEL_6;
  }

  loggingConnection = selfCopy->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
  {
    v60 = loggingConnection;
    type = [v21 type];
    [v21 name];
    v62 = configurationCopy;
    v64 = v63 = v8;
    *buf = 67109378;
    v85 = type;
    v86 = 2112;
    v87 = v64;
    _os_log_error_impl(&dword_22F0FC000, v60, OS_LOG_TYPE_ERROR, "[PGMemoryElector] Error fetching graph node for feature of type %d, name %@", buf, 0x12u);

    v8 = v63;
    configurationCopy = v62;
  }

  v56 = MEMORY[0x277CBEBF8];
LABEL_24:

  v57 = *MEMORY[0x277D85DE8];

  return v56;
}

void __69__PGMemoryElector__requestedEnrichedMemoriesWithConfiguration_graph___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [PGTriggeredMemory alloc];
  v5 = [*(a1 + 32) localDate];
  v6 = [(PGTriggeredMemory *)v4 initWithMemoryNode:v11 validityIntervalByTriggerType:MEMORY[0x277CBEC10] creationDate:v5];

  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = [MEMORY[0x277D22C80] ignoreProgress];
  v10 = [v7 enrichedMemoryWithTriggeredMemory:v6 withConfiguration:v8 progressReporter:v9];

  if (v10)
  {
    [*(a1 + 48) addObject:v10];
  }

  objc_autoreleasePoolPop(v3);
}

- (id)electAndEnrichSortedTriggeredMemories:(id)memories alreadyEnrichedMemories:(id)enrichedMemories targetNumberOfMemories:(unint64_t)ofMemories configuration:(id)configuration graph:(id)graph planner:(id)planner context:(id)context progressReporter:(id)self0
{
  v110 = *MEMORY[0x277D85DE8];
  memoriesCopy = memories;
  enrichedMemoriesCopy = enrichedMemories;
  configurationCopy = configuration;
  graphCopy = graph;
  plannerCopy = planner;
  contextCopy = context;
  reporterCopy = reporter;
  v64 = graphCopy;
  v57 = [[PGGraphLocationHelper alloc] initWithGraph:graphCopy];
  v65 = [[PGMemoryCurationSession alloc] initWithCurationManager:self->_curationManager photoLibrary:self->_photoLibrary curationContext:self->_curationContext locationHelper:v57];
  v17 = [PGEnrichedMemoryFactory alloc];
  serviceManager = [(PGManagerWorkingContext *)self->_workingContext serviceManager];
  v67 = [(PGEnrichedMemoryFactory *)v17 initWithMemoryCurationSession:v65 graph:v64 serviceManager:serviceManager];

  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = ofMemories;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "[MemoryElector] targetNumberOfMemories: %d", buf, 8u);
  }

  if (!ofMemories)
  {
    v59 = MEMORY[0x277CBEBF8];
    goto LABEL_38;
  }

  v20 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v21 = enrichedMemoriesCopy;
  v22 = [v21 countByEnumeratingWithState:&v98 objects:v109 count:16];
  if (v22)
  {
    v23 = *v99;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v99 != v23)
        {
          objc_enumerationMutation(v21);
        }

        keyAssetUUID = [*(*(&v98 + 1) + 8 * i) keyAssetUUID];
        if (keyAssetUUID)
        {
          [v20 addObject:keyAssetUUID];
        }
      }

      v22 = [v21 countByEnumeratingWithState:&v98 objects:v109 count:16];
    }

    while (v22);
  }

  maximumNumberOfMemoriesWithGuestAssets = [configurationCopy maximumNumberOfMemoriesWithGuestAssets];
  *buf = 0;
  v106 = buf;
  v107 = 0x2020000000;
  v108 = 0;
  v69 = reporterCopy;
  v94 = 0;
  v95 = &v94;
  v96 = 0x2020000000;
  v97 = 0;
  v26 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v21];
  v27 = [memoriesCopy mutableCopy];
  librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  [librarySpecificFetchOptions setPersonContext:1];
  [librarySpecificFetchOptions setIncludedDetectionTypes:&unk_284486708];
  v63 = librarySpecificFetchOptions;
  v29 = self->_loggingConnection;
  v30 = os_signpost_id_generate(v29);
  v31 = v29;
  v32 = v31;
  spid = v30;
  v55 = v30 - 1;
  if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
  {
    *v89 = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v32, OS_SIGNPOST_INTERVAL_BEGIN, v30, "MemoryElectionElectAndEnrich", "", v89, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v53 = mach_absolute_time();
  *v89 = 0;
  v90 = v89;
  v91 = 0x2020000000;
  v92 = 0;
  v33 = 0.0;
  v34 = MEMORY[0x277D86220];
  v59 = MEMORY[0x277CBEBF8];
  while ([v26 count] < ofMemories && objc_msgSend(v27, "count") && v33 <= 1.0)
  {
    v35 = objc_autoreleasePoolPush();
    v36 = v32;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      v42 = [v26 count];
      v43 = [v27 count];
      *v103 = 134218496;
      *&v103[4] = v42;
      *&v103[12] = 2048;
      *&v103[14] = v43;
      *&v103[22] = 2048;
      v104 = *&v33;
      _os_log_debug_impl(&dword_22F0FC000, v36, OS_LOG_TYPE_DEBUG, "electedEnrichedMemories: %lu, sortedRemainingTriggeredMemories: %lu, currentCommonalityThreshold: %.3f", v103, 0x20u);
    }

    if (*(v95 + 24) == 1)
    {
      *(v95 + 24) = 1;
LABEL_25:
      v38 = 1;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        *v103 = 67109378;
        *&v103[4] = 533;
        *&v103[8] = 2080;
        *&v103[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGMemoryElector.m";
        _os_log_impl(&dword_22F0FC000, v34, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v103, 0x12u);
      }

      goto LABEL_28;
    }

    v37 = [v69 isCancelledWithProgress:*(v90 + 3)];
    *(v95 + 24) = v37;
    if (v37)
    {
      goto LABEL_25;
    }

    *v103 = 0;
    *&v103[8] = v103;
    *&v103[16] = 0x2020000000;
    v104 = 0x7FEFFFFFFFFFFFFFLL;
    v39 = objc_alloc_init(MEMORY[0x277CCAB58]);
    v70[0] = MEMORY[0x277D85DD0];
    v70[1] = 3221225472;
    v70[2] = __157__PGMemoryElector_electAndEnrichSortedTriggeredMemories_alreadyEnrichedMemories_targetNumberOfMemories_configuration_graph_planner_context_progressReporter___block_invoke;
    v70[3] = &unk_278888FF8;
    v71 = v26;
    v40 = v39;
    v72 = v40;
    v73 = plannerCopy;
    v41 = v36;
    v85 = v33;
    v74 = v41;
    v81 = v103;
    v82 = &v94;
    v75 = v69;
    v83 = v89;
    v76 = v67;
    v77 = configurationCopy;
    v84 = buf;
    v86 = maximumNumberOfMemoriesWithGuestAssets;
    v78 = v20;
    v79 = v63;
    selfCopy = self;
    v87 = 1.0 / ofMemories;
    ofMemoriesCopy = ofMemories;
    [v27 enumerateObjectsUsingBlock:v70];
    v33 = *(*&v103[8] + 24);
    [v27 removeObjectsAtIndexes:v40];

    _Block_object_dispose(v103, 8);
    v38 = 0;
LABEL_28:
    objc_autoreleasePoolPop(v35);
    if (v38)
    {
      goto LABEL_36;
    }
  }

  v44 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v47 = v32;
  v48 = v47;
  if (v55 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v47))
  {
    *v103 = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v48, OS_SIGNPOST_INTERVAL_END, spid, "MemoryElectionElectAndEnrich", "", v103, 2u);
  }

  if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
  {
    *v103 = 136315394;
    *&v103[4] = "MemoryElectionElectAndEnrich";
    *&v103[12] = 2048;
    *&v103[14] = ((((v44 - v53) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v48, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", v103, 0x16u);
  }

  v49 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"score" ascending:0];
  v102 = v49;
  v50 = [MEMORY[0x277CBEA60] arrayWithObjects:&v102 count:1];
  [v26 sortUsingDescriptors:v50];

  v59 = v26;
LABEL_36:
  _Block_object_dispose(v89, 8);

  _Block_object_dispose(&v94, 8);
  _Block_object_dispose(buf, 8);

LABEL_38:
  v51 = *MEMORY[0x277D85DE8];

  return v59;
}

void __157__PGMemoryElector_electAndEnrichSortedTriggeredMemories_alreadyEnrichedMemories_targetNumberOfMemories_configuration_graph_planner_context_progressReporter___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v78 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = objc_autoreleasePoolPush();
  if (![PGMemoryPlanner canElectTriggeredMemory:v7 withAlreadyElectedMemories:*(a1 + 32)])
  {
    [*(a1 + 40) addIndex:a3];
    goto LABEL_48;
  }

  v59 = a4;
  v61 = v8;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v9 = *(a1 + 32);
  v10 = [v9 countByEnumeratingWithState:&v67 objects:v77 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v68;
    v13 = 1.79769313e308;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v68 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v67 + 1) + 8 * i);
        [*(a1 + 48) commonalityScoreComparingMemory:v7 toAlreadyElectedMemory:v15];
        v17 = v16;
        v18 = *(a1 + 56);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          v19 = *(a1 + 144);
          v20 = *(*(*(a1 + 112) + 8) + 24);
          *buf = 134218496;
          v72 = *&v17;
          v73 = 2048;
          v74 = v19;
          v75 = 2048;
          v76 = v20;
          _os_log_debug_impl(&dword_22F0FC000, v18, OS_LOG_TYPE_DEBUG, "commonalityScore: %.3f, currentCommonalityThreshold: %.3f, lowestCommonality: %.3f", buf, 0x20u);
        }

        if (v17 > *(a1 + 144))
        {
          *(*(*(a1 + 112) + 8) + 24) = fmin(*(*(*(a1 + 112) + 8) + 24), v17);
          v21 = *(a1 + 56);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            v53 = v21;
            v54 = [v7 uniqueMemoryIdentifier];
            [v15 uniqueMemoryIdentifier];
            v55 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            *buf = 138412546;
            v72 = v54;
            v73 = 2112;
            v74 = v55;
            _os_log_debug_impl(&dword_22F0FC000, v53, OS_LOG_TYPE_DEBUG, "tooMuchOverlapWithElectedMemory: %@ - %@", buf, 0x16u);
          }

          goto LABEL_47;
        }

        v13 = fmin(v13, v17);
      }

      v11 = [v9 countByEnumeratingWithState:&v67 objects:v77 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v13 = 1.79769313e308;
  }

  *(*(*(a1 + 112) + 8) + 24) = fmin(*(*(*(a1 + 112) + 8) + 24), v13);
  v22 = MEMORY[0x277D22C80];
  v63[0] = MEMORY[0x277D85DD0];
  v63[1] = 3221225472;
  v63[2] = __157__PGMemoryElector_electAndEnrichSortedTriggeredMemories_alreadyEnrichedMemories_targetNumberOfMemories_configuration_graph_planner_context_progressReporter___block_invoke_255;
  v63[3] = &unk_278888FD0;
  v65 = *(a1 + 120);
  v23 = *(a1 + 64);
  v24 = *(a1 + 128);
  v64 = v23;
  v66 = v24;
  v25 = [v22 progressReporterWithProgressBlock:v63];
  v26 = [*(a1 + 72) enrichedMemoryWithTriggeredMemory:v7 withConfiguration:*(a1 + 80) progressReporter:v25];
  [*(a1 + 40) addIndex:a3];
  if (v26)
  {
    v27 = [v26 featuresGuestAssets];
    if (!v27 || (v28 = *(*(*(a1 + 136) + 8) + 24), v29 = *(a1 + 152), *&v28 < v29))
    {
      v30 = [v26 keyAssetUUID];
      if (v30)
      {
        if ([*(a1 + 88) containsObject:v30])
        {
          v31 = *(a1 + 56);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v72 = v26;
            _os_log_impl(&dword_22F0FC000, v31, OS_LOG_TYPE_DEFAULT, "[PGMemoryElector] Discarding %@: key asset already used.", buf, 0xCu);
          }

LABEL_45:

          goto LABEL_46;
        }

        [*(a1 + 88) addObject:v30];
      }

      v58 = v27;
      v60 = v30;
      v33 = *(a1 + 56);
      v34 = os_signpost_id_generate(v33);
      v35 = v33;
      v36 = v35;
      v37 = v34 - 1;
      if (v34 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v36, OS_SIGNPOST_INTERVAL_BEGIN, v34, "MemoryElectionUserFeedback", "", buf, 2u);
      }

      spid = v34;

      info = 0;
      mach_timebase_info(&info);
      v57 = mach_absolute_time();
      v38 = MEMORY[0x277CD9938];
      v39 = [v26 curatedAssetUUIDs];
      v40 = [v38 fetchVerifiedPersonUUIDsGroupedByAssetUUIDForAssetUUIDs:v39 options:*(a1 + 96)];

      v41 = *(*(a1 + 104) + 40);
      v42 = [v40 allKeys];
      v43 = [v26 keyAssetUUID];
      [v41 scoreForAssetUUIDs:v42 keyAssetUUID:v43 personsUUIDsByAssetUUIDs:v40 memoryFeatures:0];
      v45 = v44;

      v46 = mach_absolute_time();
      v47 = info;
      v48 = v36;
      v49 = v48;
      if (v37 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v48))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v49, OS_SIGNPOST_INTERVAL_END, spid, "MemoryElectionUserFeedback", "", buf, 2u);
      }

      if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v72 = "MemoryElectionUserFeedback";
        v73 = 2048;
        v74 = ((((v46 - v57) * v47.numer) / v47.denom) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v49, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
      }

      v30 = v60;
      if (([MEMORY[0x277CD99F8] score:v45 meetsScoreThreshold:{*MEMORY[0x277CD9CD0], spid}] & 1) == 0)
      {
        [*(a1 + 32) addObject:v26];
        if (v58)
        {
          v50 = ++*(*(*(a1 + 136) + 8) + 24);
          if (v50 == *(a1 + 152))
          {
            v51 = *(a1 + 56);
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134217984;
              v72 = v50;
              _os_log_impl(&dword_22F0FC000, v51, OS_LOG_TYPE_DEFAULT, "[PGMemoryElector] Reached maximumNumberOfMemoriesWithGuestAssets %lu: mutating configuration to disallow guest asset.", buf, 0xCu);
            }

            [*(a1 + 80) setAllowGuestAsset:0];
          }
        }

        *(*(*(a1 + 128) + 8) + 24) = *(a1 + 160) + *(*(*(a1 + 128) + 8) + 24);
        if ([*(a1 + 32) count] == *(a1 + 168))
        {
          *v59 = 1;
        }
      }

      goto LABEL_45;
    }

    v32 = *(a1 + 56);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v72 = v26;
      v73 = 2048;
      v74 = v28;
      v75 = 2048;
      v76 = v29;
      _os_log_error_impl(&dword_22F0FC000, v32, OS_LOG_TYPE_ERROR, "[PGMemoryElector] Discarding %@: maximumNumberOfMemoriesWithGuestAssets %lu is at the limit %lu.", buf, 0x20u);
    }
  }

LABEL_46:

LABEL_47:
  v8 = v61;
LABEL_48:
  objc_autoreleasePoolPop(v8);

  v52 = *MEMORY[0x277D85DE8];
}

uint64_t __157__PGMemoryElector_electAndEnrichSortedTriggeredMemories_alreadyEnrichedMemories_targetNumberOfMemories_configuration_graph_planner_context_progressReporter___block_invoke_255(uint64_t a1, _BYTE *a2)
{
  v4 = *(*(a1 + 40) + 8);
  if (*(v4 + 24))
  {
    result = 1;
  }

  else
  {
    result = [*(a1 + 32) isCancelledWithProgress:*(*(*(a1 + 48) + 8) + 24)];
    v4 = *(*(a1 + 40) + 8);
  }

  *(v4 + 24) = result;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a2 = 1;
  }

  return result;
}

- (unint64_t)targetNumberOfMemoriesFromConfigurator:(id)configurator graph:(id)graph context:(id)context
{
  contextCopy = context;
  graphCopy = graph;
  configuratorCopy = configurator;
  v10 = +[(PGGraphNodeCollection *)PGGraphMemoryNodeCollection];
  v11 = [graphCopy numberOfNodesMatchingFilter:v10];

  v12 = [configuratorCopy targetNumberOfMemoriesWithMemoryContext:contextCopy totalNumberOfMemoryNodes:v11 referenceNumberOfDays:{objc_msgSend(configuratorCopy, "numberOfDaysToLookInPast")}];
  return v12;
}

- (BOOL)_shouldCheckForSuggestionCollisionsForTriggeredMemory:(id)memory
{
  memoryCopy = memory;
  memoryCategory = [memoryCopy memoryCategory];
  if (memoryCategory > 0x13 || ((1 << memoryCategory) & 0x90002) == 0)
  {
    memoryMomentNodes = [memoryCopy memoryMomentNodes];
    v9 = [memoryMomentNodes count];

    if (v9 == 1)
    {
      loggingConnection = self->_loggingConnection;
      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_FAULT))
      {
        *v12 = 0;
        _os_log_fault_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_FAULT, "[PGMemoryElector] Triggered memory has only one moment but isn't of type single moment or meaningful event. Please update [PGMemoryElector _shouldCheckForSuggestionCollisionsForTriggeredMemory:]", v12, 2u);
      }
    }

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (double)_contentScoreWeightForNewMemoryFocusWithCategory:(unint64_t)category
{
  result = 1.0;
  if (category - 25 >= 6 && category != 10)
  {
    return 0.5;
  }

  return result;
}

- (BOOL)_memoryContainsNegativeFeedbackPets:(id)pets
{
  v22 = *MEMORY[0x277D85DE8];
  petsCopy = pets;
  memoryFeatureNodes = [petsCopy memoryFeatureNodes];
  v6 = [(PGGraphNodeCollection *)PGGraphPetNodeCollection subsetInCollection:memoryFeatureNodes];

  if ([v6 count] != 1)
  {
    goto LABEL_8;
  }

  v7 = MEMORY[0x277CD9918];
  localIdentifiers = [v6 localIdentifiers];
  anyObject = [localIdentifiers anyObject];
  v10 = [v7 uuidFromLocalIdentifier:anyObject];

  if (![v10 length] || (-[PHUserFeedbackCalculator userFeedbackTypeForPersonUUID:](self->_userFeedbackCalculator, "userFeedbackTypeForPersonUUID:", v10) & 0xFFFFFFFFFFFFFFFELL) != 2)
  {

LABEL_8:
    v15 = 0;
    goto LABEL_9;
  }

  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
  {
    v12 = MEMORY[0x277CD98D8];
    v13 = loggingConnection;
    v14 = [v12 stringForCategory:{objc_msgSend(petsCopy, "memoryCategory")}];
    v18 = 138412546;
    v19 = v14;
    v20 = 2112;
    v21 = v10;
    _os_log_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_DEFAULT, "[PGMemoryElector] Not considering to elect memory of category %@ featuring pets with uuid %@", &v18, 0x16u);
  }

  v15 = 1;
LABEL_9:

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (id)filterAndSortTriggeredMemories:(id)memories withPlanner:(id)planner context:(id)context configuration:(id)configuration progressReporter:(id)reporter
{
  v152 = *MEMORY[0x277D85DE8];
  memoriesCopy = memories;
  plannerCopy = planner;
  contextCopy = context;
  configurationCopy = configuration;
  v105 = memoriesCopy;
  reporterCopy = reporter;
  if (![memoriesCopy count])
  {
    v91 = MEMORY[0x277CBEBF8];
    goto LABEL_90;
  }

  selfCopy = self;
  v13 = self->_loggingConnection;
  v14 = os_signpost_id_generate(v13);
  v15 = v13;
  v16 = v15;
  spid = v14;
  v96 = v14 - 1;
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "MemoryElectionFilterAndSortFilter", "", buf, 2u);
  }

  v99 = v16;

  info = 0;
  mach_timebase_info(&info);
  v94 = mach_absolute_time();
  v104 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:0 valueOptions:0];
  v103 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:0 valueOptions:0];
  v102 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:0 valueOptions:0];
  v101 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:0 valueOptions:0];
  numberOfDaysSinceMemoryUpgrade = [contextCopy numberOfDaysSinceMemoryUpgrade];
  numberOfDaysToFocusOnNewMemoryTypes = [configurationCopy numberOfDaysToFocusOnNewMemoryTypes];
  v100 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:0 valueOptions:0];
  v17 = objc_alloc(MEMORY[0x277CBEB98]);
  v18 = [(PGRemoteConfiguration *)self->_remoteConfiguration arrayValueForKey:@"com.apple.photos.memories.election.blockedMemoryCategorySubcategories" withFallbackValue:MEMORY[0x277CBEBF8]];
  v111 = [v17 initWithArray:v18];

  v112 = reporterCopy;
  *buf = 0;
  v144 = buf;
  v145 = 0x2020000000;
  v146 = 0;
  v139 = 0;
  v140 = &v139;
  v141 = 0x2020000000;
  v142 = 0;
  v19 = [memoriesCopy count];
  v137 = 0u;
  v138 = 0u;
  v135 = 0u;
  v136 = 0u;
  v20 = memoriesCopy;
  v21 = [v20 countByEnumeratingWithState:&v135 objects:v151 count:16];
  if (!v21)
  {
    goto LABEL_65;
  }

  v22 = 0.5 / v19;
  v116 = *v136;
  obj = v20;
  while (2)
  {
    v117 = v21;
    for (i = 0; i != v117; ++i)
    {
      if (*v136 != v116)
      {
        objc_enumerationMutation(obj);
      }

      v24 = *(*(&v135 + 1) + 8 * i);
      context = objc_autoreleasePoolPush();
      v140[3] = v22 + v140[3];
      if (v144[24])
      {
        v144[24] = 1;
LABEL_13:
        v27 = 1;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *v149 = 67109378;
          *v150 = 212;
          *&v150[4] = 2080;
          *&v150[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGMemoryElector.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v149, 0x12u);
        }

        goto LABEL_61;
      }

      v25 = [v112 isCancelledWithProgress:?];
      p_isa = &selfCopy->super.isa;
      v144[24] = v25;
      if (v25)
      {
        goto LABEL_13;
      }

      if ([v111 count])
      {
        v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v24, "memoryCategorySubcategory")}];
        v29 = [v111 containsObject:v28];

        p_isa = &selfCopy->super.isa;
        if (v29)
        {
          v30 = selfCopy->_loggingConnection;
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            uniqueMemoryIdentifier = [v24 uniqueMemoryIdentifier];
            memoryCategorySubcategory = [v24 memoryCategorySubcategory];
            *v149 = 138478083;
            *v150 = uniqueMemoryIdentifier;
            *&v150[8] = 2048;
            *&v150[10] = memoryCategorySubcategory;
            _os_log_impl(&dword_22F0FC000, v30, OS_LOG_TYPE_INFO, "[PGMemoryElector] Not considering to elect memory %{private}@ of type %lu because it is blocked", v149, 0x16u);
          }

          goto LABEL_23;
        }
      }

      if (![plannerCopy tooSoonToElectMemory:v24])
      {
        collidableSuggestions = [configurationCopy collidableSuggestions];
        if ([collidableSuggestions count])
        {
          v34 = [p_isa _shouldCheckForSuggestionCollisionsForTriggeredMemory:v24];

          if (!v34)
          {
            goto LABEL_39;
          }

          memoryMomentNodes = [v24 memoryMomentNodes];
          collidableSuggestions = [memoryMomentNodes universalDateInterval];

          startDate = [collidableSuggestions startDate];
          endDate = [collidableSuggestions endDate];
          v133 = 0u;
          v134 = 0u;
          v132 = 0u;
          v131 = 0u;
          collidableSuggestions2 = [configurationCopy collidableSuggestions];
          v38 = [collidableSuggestions2 countByEnumeratingWithState:&v131 objects:v148 count:16];
          if (v38)
          {
            v39 = *v132;
            while (2)
            {
              for (j = 0; j != v38; ++j)
              {
                if (*v132 != v39)
                {
                  objc_enumerationMutation(collidableSuggestions2);
                }

                v41 = *(*(&v131 + 1) + 8 * j);
                universalEndDate = [v41 universalEndDate];
                if ([startDate compare:universalEndDate] == 1)
                {
                }

                else
                {
                  universalStartDate = [v41 universalStartDate];
                  v44 = [endDate compare:universalStartDate] == -1;

                  if (!v44)
                  {

                    loggingConnection = selfCopy->_loggingConnection;
                    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
                    {
                      *v149 = 138412546;
                      *v150 = startDate;
                      *&v150[8] = 2112;
                      *&v150[10] = endDate;
                      _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[PGMemoryElector] Not considering to elect memory with moment nodes start date %@ and end date %@ because it collides with a suggestion", v149, 0x16u);
                    }

                    goto LABEL_24;
                  }
                }
              }

              v38 = [collidableSuggestions2 countByEnumeratingWithState:&v131 objects:v148 count:16];
              if (v38)
              {
                continue;
              }

              break;
            }
          }
        }

LABEL_39:
        memoryCategory = [v24 memoryCategory];
        memoryFeatureNodes = [v24 memoryFeatureNodes];
        v47 = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection subsetInCollection:memoryFeatureNodes];

        v48 = [v47 count];
        v49 = selfCopy;
        if (v48 == 1)
        {
          uuids = [v47 uuids];
          anyObject = [uuids anyObject];

          if ([anyObject length] && (-[PHUserFeedbackCalculator userFeedbackTypeForPersonUUID:](selfCopy->_userFeedbackCalculator, "userFeedbackTypeForPersonUUID:", anyObject) & 0xFFFFFFFFFFFFFFFELL) == 2)
          {
            v52 = selfCopy->_loggingConnection;
            if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
            {
              v53 = [MEMORY[0x277CD98D8] stringForCategory:memoryCategory];
              *v149 = 138412546;
              *v150 = v53;
              *&v150[8] = 2112;
              *&v150[10] = anyObject;
              _os_log_impl(&dword_22F0FC000, v52, OS_LOG_TYPE_DEFAULT, "[PGMemoryElector] Not considering to elect memory of category %@ featuring persons with uuid %@", v149, 0x16u);
            }

            v27 = 3;
            goto LABEL_59;
          }

          v49 = selfCopy;
        }

        if ([(PGMemoryElector *)v49 _memoryContainsNegativeFeedbackPets:v24])
        {
          v27 = 3;
LABEL_60:

          goto LABEL_61;
        }

        memoryFeatureNodes2 = [v24 memoryFeatureNodes];
        memoryMomentNodes2 = [v24 memoryMomentNodes];
        anyObject = [PGMemoryFeatureBlocking blockableFeaturesForFeatureNodes:memoryFeatureNodes2 momentNodes:memoryMomentNodes2 memoryCategory:memoryCategory];

        [v24 setBlockableFeatures:anyObject];
        v52 = [(PHUserFeedbackCalculator *)selfCopy->_userFeedbackCalculator memoryFeaturesWithNegativeFeedbackForMemoryFeatures:anyObject];
        if ([v52 count])
        {
          v56 = selfCopy->_loggingConnection;
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
          {
            v57 = [MEMORY[0x277CD98D8] stringForCategory:memoryCategory];
            *v149 = 138412546;
            *v150 = v57;
            *&v150[8] = 2112;
            *&v150[10] = v52;
            _os_log_impl(&dword_22F0FC000, v56, OS_LOG_TYPE_DEFAULT, "[PGMemoryElector] Not considering to elect memory of category %@ because it contains blocked features %@", v149, 0x16u);
          }

          v27 = 3;
        }

        else
        {
          [PGMemoryTriggerHandler triggerScoreForTriggeredMemory:v24];
          v60 = v59;
          v61 = [MEMORY[0x277CCABB0] numberWithDouble:?];
          [v104 setObject:v61 forKey:v24];

          [plannerCopy collisionScoreForMemory:v24];
          v63 = v62;
          v64 = [MEMORY[0x277CCABB0] numberWithDouble:?];
          [v103 setObject:v64 forKey:v24];

          [plannerCopy avoidScoreForMemory:v24];
          v65 = [MEMORY[0x277CCABB0] numberWithDouble:?];
          [v102 setObject:v65 forKey:v24];

          memoryMomentNodes3 = [v24 memoryMomentNodes];
          [memoryMomentNodes3 averageContentScore];
          v68 = v67;

          if (numberOfDaysSinceMemoryUpgrade <= numberOfDaysToFocusOnNewMemoryTypes)
          {
            [(PGMemoryElector *)selfCopy _contentScoreWeightForNewMemoryFocusWithCategory:memoryCategory];
            v68 = v68 * v69;
          }

          v70 = [MEMORY[0x277CCABB0] numberWithDouble:v68];
          [v101 setObject:v70 forKey:v24];

          [v24 setElectionScore:v60 + v63 * 0.01 + v68 * 0.001];
          validityIntervalByTriggerType = [v24 validityIntervalByTriggerType];
          v72 = [PGMemoryTriggerHandler maximumValidityPeriodForValidityIntervalByTriggerType:validityIntervalByTriggerType context:contextCopy];

          v56 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v72];
          [v100 setObject:v56 forKey:v24];
          v27 = 0;
        }

LABEL_59:
        goto LABEL_60;
      }

      v30 = p_isa[3];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        uniqueMemoryIdentifier2 = [v24 uniqueMemoryIdentifier];
        *v149 = 138477827;
        *v150 = uniqueMemoryIdentifier2;
        _os_log_impl(&dword_22F0FC000, v30, OS_LOG_TYPE_INFO, "[PGMemoryElector] Not considering to elect memory %{private}@ because it is too soon since we last elected it", v149, 0xCu);
      }

LABEL_23:

LABEL_24:
      v27 = 3;
LABEL_61:
      objc_autoreleasePoolPop(context);
      if (v27 != 3 && v27)
      {
        v91 = MEMORY[0x277CBEBF8];
        goto LABEL_88;
      }
    }

    v20 = obj;
    v21 = [obj countByEnumeratingWithState:&v135 objects:v151 count:16];
    if (v21)
    {
      continue;
    }

    break;
  }

LABEL_65:

  v73 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v76 = v99;
  v77 = v76;
  if (v96 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v76))
  {
    *v149 = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v77, OS_SIGNPOST_INTERVAL_END, spid, "MemoryElectionFilterAndSortFilter", "", v149, 2u);
  }

  if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
  {
    *v149 = 136315394;
    *v150 = "MemoryElectionFilterAndSortFilter";
    *&v150[8] = 2048;
    *&v150[10] = ((((v73 - v94) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v77, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", v149, 0x16u);
  }

  if ([v104 count])
  {
    v78 = [v104 count];
    v79 = selfCopy->_loggingConnection;
    v80 = os_signpost_id_generate(v79);
    v81 = v79;
    v82 = v81;
    if (v80 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v81))
    {
      *v149 = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v82, OS_SIGNPOST_INTERVAL_BEGIN, v80, "MemoryElectionFilterAndSortSort", "", v149, 2u);
    }

    v130 = 0;
    mach_timebase_info(&v130);
    v83 = mach_absolute_time();
    keyEnumerator = [v104 keyEnumerator];
    allObjects = [keyEnumerator allObjects];

    v119[0] = MEMORY[0x277D85DD0];
    v119[1] = 3221225472;
    v119[2] = __101__PGMemoryElector_filterAndSortTriggeredMemories_withPlanner_context_configuration_progressReporter___block_invoke;
    v119[3] = &unk_278888FA8;
    v129 = 0.5 / v78;
    v127 = &v139;
    v128 = buf;
    v120 = v112;
    v121 = v102;
    v122 = v103;
    v123 = v104;
    v124 = v100;
    v125 = selfCopy;
    v126 = v101;
    v86 = [allObjects sortedArrayUsingComparator:v119];
    v87 = mach_absolute_time();
    v88 = v130;
    v89 = v82;
    v90 = v89;
    if (v80 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v89))
    {
      *v149 = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v90, OS_SIGNPOST_INTERVAL_END, v80, "MemoryElectionFilterAndSortSort", "", v149, 2u);
    }

    obj = v90;

    if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
    {
      *v149 = 136315394;
      *v150 = "MemoryElectionFilterAndSortSort";
      *&v150[8] = 2048;
      *&v150[10] = ((((v87 - v83) * v88.numer) / v88.denom) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v90, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", v149, 0x16u);
    }

    if (v144[24] == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *v149 = 67109378;
        *v150 = 407;
        *&v150[4] = 2080;
        *&v150[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGMemoryElector.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v149, 0x12u);
      }

      v91 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v91 = v86;
    }

LABEL_88:
  }

  else
  {
    v91 = MEMORY[0x277CBEBF8];
  }

  _Block_object_dispose(&v139, 8);
  _Block_object_dispose(buf, 8);

LABEL_90:
  v92 = *MEMORY[0x277D85DE8];

  return v91;
}

uint64_t __101__PGMemoryElector_filterAndSortTriggeredMemories_withPlanner_context_configuration_progressReporter___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  *(*(*(a1 + 88) + 8) + 24) = *(a1 + 104) + *(*(*(a1 + 88) + 8) + 24);
  v7 = *(*(a1 + 96) + 8);
  if (*(v7 + 24))
  {
    v8 = 1;
  }

  else
  {
    v8 = [*(a1 + 32) isCancelledWithProgress:*(*(*(a1 + 88) + 8) + 24)];
    v7 = *(*(a1 + 96) + 8);
  }

  *(v7 + 24) = v8;
  v9 = [*(a1 + 40) objectForKey:v5];
  [v9 doubleValue];
  v11 = v10;

  v12 = [*(a1 + 40) objectForKey:v6];
  [v12 doubleValue];
  v14 = v13;

  if (v11 > 0.9 && v14 <= 0.9)
  {
    goto LABEL_6;
  }

  if (v14 > 0.9 && v11 <= 0.9)
  {
LABEL_9:
    v15 = -1;
    goto LABEL_10;
  }

  v17 = [*(a1 + 48) objectForKey:v5];
  [v17 doubleValue];
  v19 = v18;

  v20 = [*(a1 + 48) objectForKey:v6];
  [v20 doubleValue];
  v22 = v21;

  if (v19 >= 1.0 && v22 < v19)
  {
    goto LABEL_6;
  }

  if (v22 >= 1.0 && v19 < v22)
  {
    goto LABEL_9;
  }

  v23 = [*(a1 + 56) objectForKey:v5];
  [v23 doubleValue];
  v25 = v24;

  v26 = [*(a1 + 56) objectForKey:v6];
  [v26 doubleValue];
  v28 = v27;

  if (v25 == 1.0 && v28 < 1.0)
  {
    goto LABEL_9;
  }

  if (v28 == 1.0 && v25 < 1.0)
  {
    goto LABEL_6;
  }

  if (v25 != 0.0 && v28 != 0.0)
  {
    v29 = [*(a1 + 64) objectForKey:v5];
    v30 = [v29 unsignedIntegerValue];

    v31 = [*(a1 + 64) objectForKey:v6];
    v32 = [v31 unsignedIntegerValue];

    if (v30 > v32)
    {
      goto LABEL_6;
    }

    if (v32 > v30)
    {
      goto LABEL_9;
    }
  }

  if (v19 == 0.0 && v22 > 0.25)
  {
    goto LABEL_9;
  }

  if (v22 == 0.0 && v19 > 0.25)
  {
    goto LABEL_6;
  }

  if (v25 != 0.0 || v28 != 0.0)
  {
    if (v25 > v28)
    {
      goto LABEL_9;
    }

    if (v28 > v25)
    {
      goto LABEL_6;
    }
  }

  if ([v5 generatedWithFallbackRequirements] && !objc_msgSend(v6, "generatedWithFallbackRequirements"))
  {
    goto LABEL_6;
  }

  if ([v5 generatedWithFallbackRequirements] & 1) == 0 && (objc_msgSend(v6, "generatedWithFallbackRequirements"))
  {
    goto LABEL_9;
  }

  if ([v5 memoryCategory] == 9 && objc_msgSend(v6, "memoryCategory") != 9)
  {
LABEL_6:
    v15 = 1;
    goto LABEL_10;
  }

  if ([v5 memoryCategory] != 9 && objc_msgSend(v6, "memoryCategory") == 9)
  {
    goto LABEL_9;
  }

  v33 = *(a1 + 72);
  v34 = [objc_opt_class() compareMemoryCategoryForMemory:v5 toOtherMemory:v6];
  v35 = -1;
  if (v19 >= v22)
  {
    v35 = 1;
  }

  if (v34)
  {
    v15 = v34;
  }

  else
  {
    v15 = v35;
  }

  if (!v34 && v19 >= v22 && v19 <= v22)
  {
    v36 = [*(a1 + 80) objectForKey:v5];
    [v36 doubleValue];
    v38 = v37;

    v39 = [*(a1 + 80) objectForKey:v6];
    [v39 doubleValue];
    v41 = v40;

    if (v38 <= v41)
    {
      if (v41 <= v38)
      {
        v42 = [v5 uniqueMemoryIdentifier];
        v43 = [v6 uniqueMemoryIdentifier];
        v15 = [v42 compare:v43];

        goto LABEL_10;
      }

      goto LABEL_6;
    }

    goto LABEL_9;
  }

LABEL_10:

  return v15;
}

- (id)generateEnrichedMemoriesWithConfiguration:(id)configuration graph:(id)graph plannerPastSource:(id)source plannerFutureSource:(id)futureSource progressReporter:(id)reporter
{
  v83 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  graphCopy = graph;
  sourceCopy = source;
  futureSourceCopy = futureSource;
  reporterCopy = reporter;
  if ([configurationCopy requestedMemoryCategory])
  {
    goto LABEL_5;
  }

  requestedUniqueMemoryIdentifier = [configurationCopy requestedUniqueMemoryIdentifier];
  if ([requestedUniqueMemoryIdentifier length])
  {

LABEL_5:
    v19 = [(PGMemoryElector *)self _requestedEnrichedMemoriesWithConfiguration:configurationCopy graph:graphCopy];
    goto LABEL_6;
  }

  requestedTriggerType = [configurationCopy requestedTriggerType];

  if (requestedTriggerType)
  {
    goto LABEL_5;
  }

  v22 = [objc_alloc(MEMORY[0x277D22C88]) initWithProgressReporter:reporterCopy];
  v76 = [v22 childProgressReporterToCheckpoint:0.1];
  v75 = [v22 childProgressReporterToCheckpoint:0.3];
  v74 = [v22 childProgressReporterToCheckpoint:0.4];
  v73 = [v22 childProgressReporterToCheckpoint:0.6];
  v71 = [v22 childProgressReporterToCheckpoint:0.8];
  v72 = [v22 childProgressReporterToCheckpoint:0.9];
  v70 = [v22 childProgressReporterToCheckpoint:1.0];
  v69 = [[PGMemoryMomentNodesWithBlockedFeatureCache alloc] initWithUserFeedbackCalculator:self->_userFeedbackCalculator loggingConnection:self->_loggingConnection];
  v23 = [[PGMemoryTriggerHandler alloc] initWithWorkingContext:self->_workingContext momentNodesWithBlockedFeatureCache:v69];
  if (sourceCopy)
  {
    v24 = sourceCopy;
  }

  else
  {
    v24 = [[PGMemoryPlannerPhotoKitSource alloc] initWithPhotoLibrary:self->_photoLibrary loggingConnection:self->_loggingConnection];
  }

  v25 = v24;
  if (futureSourceCopy)
  {
    v26 = futureSourceCopy;
  }

  else
  {
    v26 = v23;
  }

  v67 = v26;
  v68 = v25;
  v27 = [[PGMemoryPlanner alloc] initWithPastSource:v25 futureSource:v67 configuration:configurationCopy graph:graphCopy loggingConnection:self->_loggingConnection progressReporter:v76];
  if (([reporterCopy isCancelled] & 1) == 0)
  {
    v64 = v22;
    v29 = [[PGMemoryContext alloc] initWithMemoryPlanner:v27 photoLibrary:self->_photoLibrary];
    v30 = [(PGMemoryTriggerHandler *)v23 allTriggeredMemoriesWithContext:v29 inGraph:graphCopy progressReporter:v75];
    v65 = v29;
    v66 = v27;
    if ([reporterCopy isCancelled])
    {
      v19 = MEMORY[0x277CBEBF8];
      v31 = v30;
      v28 = v73;
    }

    else
    {
      v31 = [(PGMemoryPlanner *)v27 filterMemories:v30 forTriggerCollisionsWithTriggerHandler:v23 graph:graphCopy progressReporter:v74];

      if (([reporterCopy isCancelled] & 1) == 0)
      {
        v61 = sourceCopy;
        holidayService = [(PGMemoryTriggerHandler *)v23 holidayService];
        v33 = v29;
        v34 = [PGMemoryTriggerHandler fallbackTriggeredMemoriesWithContext:v29 excludingTriggeredMemories:v31 inGraph:graphCopy holidayService:holidayService];

        v59 = v34;
        v35 = [v31 arrayByAddingObjectsFromArray:v34];

        v60 = v35;
        v36 = v35;
        v37 = v33;
        v38 = v33;
        v28 = v73;
        v39 = [(PGMemoryElector *)self filterAndSortTriggeredMemories:v36 withPlanner:v66 context:v37 configuration:configurationCopy progressReporter:v73];
        v63 = v39;
        if ([reporterCopy isCancelled])
        {
          v19 = MEMORY[0x277CBEBF8];
          sourceCopy = v61;
          v22 = v64;
        }

        else
        {
          v40 = [(PGMemoryElector *)self targetNumberOfMemoriesFromConfigurator:configurationCopy graph:graphCopy context:v38];
          v77 = objc_alloc_init(MEMORY[0x277CBEB18]);
          firstObject = [v39 firstObject];
          memoryCategory = [firstObject memoryCategory];

          v58 = v40;
          if (memoryCategory == 8)
          {
            selfCopy = self;
            v56 = reporterCopy;
            v57 = futureSourceCopy;
            v80 = 0u;
            v81 = 0u;
            v78 = 0u;
            v79 = 0u;
            v43 = v39;
            v44 = [v43 countByEnumeratingWithState:&v78 objects:v82 count:16];
            if (v44)
            {
              v45 = v44;
              v46 = *v79;
              do
              {
                for (i = 0; i != v45; ++i)
                {
                  v48 = v23;
                  if (*v79 != v46)
                  {
                    objc_enumerationMutation(v43);
                  }

                  v49 = *(*(&v78 + 1) + 8 * i);
                  triggerTypes = [v49 triggerTypes];
                  v51 = [triggerTypes containsIndex:5];

                  if (v51)
                  {
                    [v77 addObject:v49];
                  }

                  v23 = v48;
                }

                v45 = [v43 countByEnumeratingWithState:&v78 objects:v82 count:16];
              }

              while (v45);
            }

            sourceCopy = v61;
            if ([v77 count])
            {
              self = selfCopy;
              v40 = v58;
              v52 = [(PGMemoryElector *)selfCopy electAndEnrichSortedTriggeredMemories:v77 alreadyEnrichedMemories:MEMORY[0x277CBEBF8] targetNumberOfMemories:v58 configuration:configurationCopy graph:graphCopy planner:v66 context:v65 progressReporter:v71];
              reporterCopy = v56;
              futureSourceCopy = v57;
            }

            else
            {
              v52 = MEMORY[0x277CBEBF8];
              reporterCopy = v56;
              futureSourceCopy = v57;
              self = selfCopy;
              v40 = v58;
            }
          }

          else
          {
            v52 = MEMORY[0x277CBEBF8];
            sourceCopy = v61;
          }

          if ([v52 count] >= v40)
          {
            v62 = v52;
            v22 = v64;
            v28 = v73;
          }

          else
          {
            v53 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v63];
            [v53 removeObjectsInArray:v77];
            v62 = [(PGMemoryElector *)self electAndEnrichSortedTriggeredMemories:v53 alreadyEnrichedMemories:v52 targetNumberOfMemories:v58 configuration:configurationCopy graph:graphCopy planner:v66 context:v65 progressReporter:v72];

            v28 = v73;
            v22 = v64;
          }

          if ([reporterCopy isCancelled] & 1) != 0 || objc_msgSend(configurationCopy, "shouldPersist") && (-[PGMemoryElector persistEnrichedMemories:pendingState:graph:progressReporter:](self, "persistEnrichedMemories:pendingState:graph:progressReporter:", v62, objc_msgSend(configurationCopy, "pendingState"), graphCopy, v70), (objc_msgSend(reporterCopy, "isCancelled")))
          {
            v19 = MEMORY[0x277CBEBF8];
            v54 = v62;
          }

          else
          {
            v54 = v62;
            v19 = v62;
          }
        }

        v31 = v60;
        goto LABEL_48;
      }

      v19 = MEMORY[0x277CBEBF8];
      v28 = v73;
    }

    v22 = v64;
LABEL_48:

    v27 = v66;
    goto LABEL_49;
  }

  v19 = MEMORY[0x277CBEBF8];
  v28 = v73;
LABEL_49:

LABEL_6:
  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)generateEnrichedMemoriesWithConfiguration:(id)configuration graph:(id)graph progressReporter:(id)reporter
{
  v33 = *MEMORY[0x277D85DE8];
  v9 = self->_loggingConnection;
  reporterCopy = reporter;
  graphCopy = graph;
  configurationCopy = configuration;
  v13 = os_signpost_id_generate(v9);
  v14 = v9;
  v15 = v14;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "MemoryElection", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v16 = mach_absolute_time();
  v17 = [(PGMemoryElector *)self generateEnrichedMemoriesWithConfiguration:configurationCopy graph:graphCopy plannerPastSource:0 plannerFutureSource:0 progressReporter:reporterCopy];

  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
  {
    v19 = loggingConnection;
    v20 = [v17 count];
    *buf = 67109120;
    LODWORD(v30) = v20;
    _os_log_impl(&dword_22F0FC000, v19, OS_LOG_TYPE_DEFAULT, "[PGMemoryElector] Generated %d memories", buf, 8u);
  }

  v21 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v24 = v15;
  v25 = v24;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v25, OS_SIGNPOST_INTERVAL_END, v13, "MemoryElection", " enableTelemetry=YES ", buf, 2u);
  }

  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v30 = "MemoryElection";
    v31 = 2048;
    v32 = ((((v21 - v16) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v25, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v26 = *MEMORY[0x277D85DE8];

  return v17;
}

- (PGMemoryElector)initWithWorkingContext:(id)context userFeedbackCalculator:(id)calculator
{
  contextCopy = context;
  calculatorCopy = calculator;
  v23.receiver = self;
  v23.super_class = PGMemoryElector;
  v9 = [(PGMemoryElector *)&v23 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_workingContext, context);
    photoLibrary = [contextCopy photoLibrary];
    photoLibrary = v10->_photoLibrary;
    v10->_photoLibrary = photoLibrary;

    loggingConnection = [contextCopy loggingConnection];
    loggingConnection = v10->_loggingConnection;
    v10->_loggingConnection = loggingConnection;

    curationManager = [contextCopy curationManager];
    curationManager = v10->_curationManager;
    v10->_curationManager = curationManager;

    objc_storeStrong(&v10->_userFeedbackCalculator, calculator);
    v17 = objc_alloc_init(MEMORY[0x277D3C7A0]);
    v18 = [objc_alloc(MEMORY[0x277D3C790]) initWithUserFeedbackCalculator:v10->_userFeedbackCalculator curationSession:v17];
    curationContext = v10->_curationContext;
    v10->_curationContext = v18;

    v20 = [[PGRemoteConfiguration alloc] initWithTrialNamespace:1 onDiskResourceFile:0];
    remoteConfiguration = v10->_remoteConfiguration;
    v10->_remoteConfiguration = v20;
  }

  return v10;
}

+ (int64_t)compareMemoryCategoryForMemory:(id)memory toOtherMemory:(id)otherMemory
{
  memoryCopy = memory;
  otherMemoryCopy = otherMemory;
  triggerTypes = [memoryCopy triggerTypes];
  if ([triggerTypes containsIndex:5])
  {
    triggerTypes2 = [otherMemoryCopy triggerTypes];
    v9 = [triggerTypes2 containsIndex:5];

    if (v9)
    {
      if ([memoryCopy memoryCategory] == 8 && objc_msgSend(otherMemoryCopy, "memoryCategory") != 8)
      {
        goto LABEL_27;
      }

      if ([memoryCopy memoryCategory] != 8 && objc_msgSend(otherMemoryCopy, "memoryCategory") == 8)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
  }

  triggerTypes3 = [memoryCopy triggerTypes];
  if ([triggerTypes3 containsIndex:4])
  {
    triggerTypes4 = [otherMemoryCopy triggerTypes];
    v12 = [triggerTypes4 containsIndex:4];

    if (v12)
    {
      if ([memoryCopy memoryCategory] == 23 && objc_msgSend(otherMemoryCopy, "memoryCategory") == 1)
      {
        goto LABEL_27;
      }

      if ([memoryCopy memoryCategory] == 1 && objc_msgSend(otherMemoryCopy, "memoryCategory") == 23)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
  }

  triggerTypes5 = [memoryCopy triggerTypes];
  if (([triggerTypes5 containsIndex:1] & 1) == 0)
  {

    goto LABEL_23;
  }

  triggerTypes6 = [otherMemoryCopy triggerTypes];
  v15 = [triggerTypes6 containsIndex:1];

  if (!v15)
  {
LABEL_23:
    v16 = 0;
    goto LABEL_24;
  }

  if ([memoryCopy memoryCategory] != 16 || objc_msgSend(otherMemoryCopy, "memoryCategory") != 17)
  {
    if ([memoryCopy memoryCategory] == 17 && objc_msgSend(otherMemoryCopy, "memoryCategory") == 16)
    {
LABEL_27:
      v16 = -1;
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_21:
  v16 = 1;
LABEL_24:

  return v16;
}

@end