@interface PGMemoryTriggerRecentMomentWithSocialGroup
- (id)relevantFeatureNodesInFeatureNodes:(id)nodes;
- (id)resultsTriggeredWithContext:(id)context inGraph:(id)graph progressReporter:(id)reporter;
@end

@implementation PGMemoryTriggerRecentMomentWithSocialGroup

- (id)resultsTriggeredWithContext:(id)context inGraph:(id)graph progressReporter:(id)reporter
{
  v75 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  graphCopy = graph;
  reporterCopy = reporter;
  if ([reporterCopy isCancelledWithProgress:0.0])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v72 = 39;
      v73 = 2080;
      v74 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerRecentMomentWithSocialGroup.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v11 = MEMORY[0x277CBEBF8];
  }

  else
  {
    selfCopy = self;
    localDate = [contextCopy localDate];
    v13 = MEMORY[0x277D27690];
    timeZone = [contextCopy timeZone];
    v15 = [v13 universalDateFromLocalDate:localDate inTimeZone:timeZone];

    v16 = [MEMORY[0x277D27690] dateByAddingDays:-10 toDate:v15];
    v63 = v15;
    v17 = [MEMORY[0x277D27690] dateByAddingDays:-3 toDate:v15];
    v18 = MEMORY[0x277D27690];
    timeZone2 = [contextCopy timeZone];
    [v18 localDateFromUniversalDate:v16 inTimeZone:timeZone2];
    v21 = v20 = graphCopy;

    v22 = MEMORY[0x277D27690];
    timeZone3 = [contextCopy timeZone];
    v62 = v17;
    v24 = [v22 localDateFromUniversalDate:v17 inTimeZone:timeZone3];

    v25 = objc_alloc(MEMORY[0x277CCA970]);
    v60 = v24;
    v61 = v21;
    v26 = v21;
    graphCopy = v20;
    v27 = [v25 initWithStartDate:v26 endDate:v24];
    v28 = [PGGraphMomentNodeCollection momentNodesForLocalDateInterval:v27 inGraph:v20];
    socialGroupNodes = [v28 socialGroupNodes];
    if ([socialGroupNodes count])
    {
      v56 = v27;
      v57 = v16;
      v58 = localDate;
      v30 = [MEMORY[0x277D27690] dateByAddingDays:-1 toDate:v16];
      v31 = [MEMORY[0x277D27690] dateByAddingDays:-90 toDate:v30];
      v32 = MEMORY[0x277D27690];
      timeZone4 = [contextCopy timeZone];
      v54 = v31;
      v34 = v31;
      v35 = v30;
      v36 = [v32 localDateFromUniversalDate:v34 inTimeZone:timeZone4];

      v37 = MEMORY[0x277D27690];
      timeZone5 = [contextCopy timeZone];
      v39 = [v37 localDateFromUniversalDate:v35 inTimeZone:timeZone5];

      v52 = v39;
      v53 = v36;
      v51 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v36 endDate:v39];
      v50 = [PGGraphMomentNodeCollection momentNodesForLocalDateInterval:"momentNodesForLocalDateInterval:inGraph:" inGraph:?];
      [v50 socialGroupNodes];
      v49 = v55 = socialGroupNodes;
      v40 = [socialGroupNodes collectionBySubtracting:?];
      v41 = objc_alloc_init(MEMORY[0x277D22BD0]);
      v69[0] = MEMORY[0x277D85DD0];
      v69[1] = 3221225472;
      v69[2] = __99__PGMemoryTriggerRecentMomentWithSocialGroup_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke;
      v69[3] = &unk_278882150;
      v42 = v41;
      v70 = v42;
      [v40 enumerateIdentifiersAsCollectionsWithBlock:v69];
      v43 = [(MAElementCollection *)[PGGraphSocialGroupNodeCollection alloc] initWithGraph:graphCopy elementIdentifiers:v42];
      v44 = [v40 collectionBySubtracting:v43];

      v45 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v64[0] = MEMORY[0x277D85DD0];
      v64[1] = 3221225472;
      v64[2] = __99__PGMemoryTriggerRecentMomentWithSocialGroup_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke_2;
      v64[3] = &unk_27887F740;
      v65 = v28;
      v66 = selfCopy;
      v67 = contextCopy;
      v46 = v45;
      v68 = v46;
      [v44 enumerateIdentifiersAsCollectionsWithBlock:v64];
      if ([reporterCopy isCancelledWithProgress:1.0])
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v72 = 96;
          v73 = 2080;
          v74 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerRecentMomentWithSocialGroup.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v11 = MEMORY[0x277CBEBF8];
      }

      else
      {
        v11 = v46;
      }

      v16 = v57;
      localDate = v58;
      socialGroupNodes = v55;
      v27 = v56;
    }

    else
    {
      if ([reporterCopy isCancelledWithProgress:1.0] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v72 = 55;
        v73 = 2080;
        v74 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerRecentMomentWithSocialGroup.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v11 = MEMORY[0x277CBEBF8];
    }
  }

  v47 = *MEMORY[0x277D85DE8];

  return v11;
}

void __99__PGMemoryTriggerRecentMomentWithSocialGroup_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v4 = [v8 personNodes];
  v5 = [v4 count];

  if (v5 == 1)
  {
    v6 = *(a1 + 32);
    v7 = [v8 elementIdentifiers];
    [v6 unionWithIdentifierSet:v7];
  }
}

void __99__PGMemoryTriggerRecentMomentWithSocialGroup_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [v5 momentNodes];
  v20 = [v4 collectionByFormingUnionWith:v6];

  v7 = [v20 localDateInterval];
  v8 = [v7 endDate];

  v9 = [v8 dateByAddingTimeInterval:864000.0];
  v10 = [v8 dateByAddingTimeInterval:259200.0];
  v11 = *(a1 + 40);
  v12 = objc_opt_class();
  v13 = [*(a1 + 48) timeZone];
  v14 = [v12 validityIntervalForLocalStartDate:v10 localEndDate:v9 timeZone:v13];

  v15 = [v5 featureNodeCollection];

  v16 = [v15 memoryNodes];

  v17 = *(a1 + 56);
  v18 = *(a1 + 40);
  v19 = [objc_opt_class() memoryTriggerResultsForMemoryNodes:v16 withValidityInterval:v14];
  [v17 addObjectsFromArray:v19];
}

- (id)relevantFeatureNodesInFeatureNodes:(id)nodes
{
  v3 = [(PGGraphNodeCollection *)PGGraphSocialGroupNodeCollection subsetInCollection:nodes];
  featureNodeCollection = [v3 featureNodeCollection];

  return featureNodeCollection;
}

@end