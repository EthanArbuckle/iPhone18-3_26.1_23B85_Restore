@interface PGMemoryTriggerRecentTrip
- (id)relevantFeatureNodesInFeatureNodes:(id)a3;
- (id)resultsTriggeredWithContext:(id)a3 inGraph:(id)a4 progressReporter:(id)a5;
@end

@implementation PGMemoryTriggerRecentTrip

- (id)resultsTriggeredWithContext:(id)a3 inGraph:(id)a4 progressReporter:(id)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v10 isCancelledWithProgress:0.0])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v33 = 38;
      v34 = 2080;
      v35 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerRecentTrip.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v11 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v12 = [v8 localDate];
    v13 = [v8 timeZone];
    v14 = [PGMemoryTrigger dateNodesInGraph:v9 startDayOffset:-8 endDayOffset:-1 fromLocalDate:v12 inTimeZone:v13];

    v28 = v14;
    v15 = [v14 momentNodes];
    v16 = [v15 highlightNodes];

    v27 = v16;
    v17 = [v16 momentNodes];
    v18 = [v17 memoryNodes];

    v19 = [PGGraphMemoryNodeCollection memoryNodesOfCategory:19 inGraph:v9];
    v20 = [PGGraphMemoryNodeCollection memoryNodesOfCategory:18 inGraph:v9];
    v21 = [v19 collectionByFormingUnionWith:v20];
    v22 = [v21 collectionByIntersecting:v18];
    v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __82__PGMemoryTriggerRecentTrip_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke;
    v29[3] = &unk_278886FC0;
    v29[4] = self;
    v30 = v8;
    v24 = v23;
    v31 = v24;
    [v22 enumerateIdentifiersAsCollectionsWithBlock:v29];
    if ([v10 isCancelledWithProgress:1.0])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v33 = 63;
        v34 = 2080;
        v35 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerRecentTrip.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v11 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v11 = v24;
    }
  }

  v25 = *MEMORY[0x277D85DE8];

  return v11;
}

void __82__PGMemoryTriggerRecentTrip_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 featureNodes];
  v19 = [(PGGraphNodeCollection *)PGGraphHighlightGroupNodeCollection subsetInCollection:v5];

  v6 = [v19 highlightNodes];
  v7 = [v6 momentNodes];
  v8 = [v7 dateNodes];
  v9 = [v8 localDateInterval];
  v10 = [v9 endDate];

  v11 = [v10 dateByAddingTimeInterval:691200.0];
  v12 = *(a1 + 32);
  v13 = objc_opt_class();
  v14 = [*(a1 + 40) timeZone];
  v15 = [v13 validityIntervalForLocalStartDate:v10 localEndDate:v11 timeZone:v14];

  v16 = *(a1 + 48);
  v17 = *(a1 + 32);
  v18 = [objc_opt_class() memoryTriggerResultsForMemoryNodes:v4 withValidityInterval:v15];

  [v16 addObjectsFromArray:v18];
}

- (id)relevantFeatureNodesInFeatureNodes:(id)a3
{
  v3 = [(PGGraphNodeCollection *)PGGraphHighlightGroupNodeCollection subsetInCollection:a3];
  v4 = [v3 featureNodeCollection];

  return v4;
}

@end