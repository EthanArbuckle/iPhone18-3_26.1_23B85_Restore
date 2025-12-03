@interface PGMemoryTriggerRecentMomentWithPerson
- (id)relevantFeatureNodesInFeatureNodes:(id)nodes;
- (id)resultsTriggeredWithContext:(id)context inGraph:(id)graph progressReporter:(id)reporter;
@end

@implementation PGMemoryTriggerRecentMomentWithPerson

- (id)resultsTriggeredWithContext:(id)context inGraph:(id)graph progressReporter:(id)reporter
{
  v68 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  graphCopy = graph;
  reporterCopy = reporter;
  if ([reporterCopy isCancelledWithProgress:0.0])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v65 = 42;
      v66 = 2080;
      v67 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerRecentMomentWithPerson.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v11 = MEMORY[0x277CBEBF8];
  }

  else
  {
    localDate = [contextCopy localDate];
    v13 = MEMORY[0x277D27690];
    [contextCopy timeZone];
    v14 = v47 = self;
    v57 = localDate;
    v15 = [v13 universalDateFromLocalDate:localDate inTimeZone:v14];

    v16 = [MEMORY[0x277D27690] dateByAddingDays:-10 toDate:v15];
    v56 = v15;
    v17 = [MEMORY[0x277D27690] dateByAddingDays:-3 toDate:v15];
    v18 = MEMORY[0x277D27690];
    timeZone = [contextCopy timeZone];
    v20 = [v18 localDateFromUniversalDate:v16 inTimeZone:timeZone];

    v21 = MEMORY[0x277D27690];
    timeZone2 = [contextCopy timeZone];
    v54 = v17;
    v23 = [v21 localDateFromUniversalDate:v17 inTimeZone:timeZone2];

    v52 = v23;
    v53 = v20;
    v51 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v20 endDate:v23];
    v24 = [graphCopy dateNodesForLocalDateInterval:?];
    momentNodes = [v24 momentNodes];
    personNodes = [momentNodes personNodes];

    v55 = v16;
    v27 = [MEMORY[0x277D27690] dateByAddingDays:-1 toDate:v16];
    v28 = [MEMORY[0x277D27690] dateByAddingDays:-90 toDate:v27];
    v29 = MEMORY[0x277D27690];
    timeZone3 = [contextCopy timeZone];
    v49 = v28;
    v31 = [v29 localDateFromUniversalDate:v28 inTimeZone:timeZone3];

    v32 = MEMORY[0x277D27690];
    timeZone4 = [contextCopy timeZone];
    v50 = v27;
    v34 = [v32 localDateFromUniversalDate:v27 inTimeZone:timeZone4];

    v48 = v31;
    v46 = v34;
    v35 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v31 endDate:v34];
    v36 = [PGGraphMomentNodeCollection momentNodesForLocalDateInterval:v35 inGraph:graphCopy];
    personNodes2 = [v36 personNodes];
    v38 = [personNodes collectionBySubtracting:personNodes2];
    v58 = graphCopy;
    meNodeCollection = [graphCopy meNodeCollection];
    v40 = [v38 collectionBySubtracting:meNodeCollection];

    v41 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __94__PGMemoryTriggerRecentMomentWithPerson_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke;
    v59[3] = &unk_278881DD0;
    v60 = v24;
    v61 = v47;
    v62 = contextCopy;
    v42 = v41;
    v63 = v42;
    v43 = v24;
    [v40 enumerateIdentifiersAsCollectionsWithBlock:v59];
    if ([reporterCopy isCancelledWithProgress:1.0])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v65 = 82;
        v66 = 2080;
        v67 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerRecentMomentWithPerson.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v11 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v11 = v42;
    }

    graphCopy = v58;
  }

  v44 = *MEMORY[0x277D85DE8];

  return v11;
}

void __94__PGMemoryTriggerRecentMomentWithPerson_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [v5 momentNodes];
  v7 = [v6 dateNodes];
  v21 = [v4 collectionByIntersecting:v7];

  v8 = [v21 localDateInterval];
  v9 = [v8 endDate];

  v10 = [v9 dateByAddingTimeInterval:864000.0];
  v11 = [v9 dateByAddingTimeInterval:259200.0];
  v12 = *(a1 + 40);
  v13 = objc_opt_class();
  v14 = [*(a1 + 48) timeZone];
  v15 = [v13 validityIntervalForLocalStartDate:v11 localEndDate:v10 timeZone:v14];

  v16 = [v5 featureNodeCollection];

  v17 = [v16 memoryNodes];

  v18 = *(a1 + 56);
  v19 = *(a1 + 40);
  v20 = [objc_opt_class() memoryTriggerResultsForMemoryNodes:v17 withValidityInterval:v15];
  [v18 addObjectsFromArray:v20];
}

- (id)relevantFeatureNodesInFeatureNodes:(id)nodes
{
  v3 = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection subsetInCollection:nodes];
  featureNodeCollection = [v3 featureNodeCollection];

  return featureNodeCollection;
}

@end