@interface PGMemoryTriggerRecentTrendsMoment
- (id)relevantFeatureNodesInFeatureNodes:(id)a3;
- (id)resultsTriggeredWithContext:(id)a3 inGraph:(id)a4 progressReporter:(id)a5;
- (id)trendsSceneFeatureNodesInGraph:(id)a3;
@end

@implementation PGMemoryTriggerRecentTrendsMoment

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
      v33 = 42;
      v34 = 2080;
      v35 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerRecentTrendsMoment.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v11 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v12 = [v8 localDate];
    v13 = [v8 timeZone];
    v14 = [PGMemoryTrigger dateNodesInGraph:v9 startDayOffset:-8 endDayOffset:-1 fromLocalDate:v12 inTimeZone:v13];

    v27 = v14;
    v15 = [v14 momentNodes];
    v16 = [(PGMemoryTriggerRecentTrendsMoment *)self trendsSceneFeatureNodesInGraph:v9];
    v17 = [v16 momentNodes];
    v18 = [v15 collectionByIntersecting:v17];
    if ([v18 count])
    {
      v19 = [v16 featureNodeCollection];
      v20 = [v19 memoryNodes];

      v21 = [v18 memoryNodes];
      [v21 collectionByIntersecting:v20];
      v26 = v17;
      v23 = v22 = v15;
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __90__PGMemoryTriggerRecentTrendsMoment_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke;
      v29[3] = &unk_278886FC0;
      v29[4] = self;
      v30 = v8;
      v31 = v28;
      [v23 enumerateIdentifiersAsCollectionsWithBlock:v29];

      v15 = v22;
      v17 = v26;
    }

    if ([v10 isCancelledWithProgress:{1.0, v26}])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v33 = 75;
        v34 = 2080;
        v35 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerRecentTrendsMoment.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v11 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v11 = v28;
    }
  }

  v24 = *MEMORY[0x277D85DE8];

  return v11;
}

void __90__PGMemoryTriggerRecentTrendsMoment_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 momentNodes];
  v6 = [v5 dateNodes];
  v7 = [v6 localDateInterval];
  v17 = [v7 endDate];

  v8 = [v17 dateByAddingTimeInterval:86400.0];
  v9 = [v17 dateByAddingTimeInterval:691200.0];
  v10 = *(a1 + 32);
  v11 = objc_opt_class();
  v12 = [*(a1 + 40) timeZone];
  v13 = [v11 validityIntervalForLocalStartDate:v8 localEndDate:v9 timeZone:v12];

  v14 = *(a1 + 48);
  v15 = *(a1 + 32);
  v16 = [objc_opt_class() memoryTriggerResultsForMemoryNodes:v4 withValidityInterval:v13];

  [v14 addObjectsFromArray:v16];
}

- (id)relevantFeatureNodesInFeatureNodes:(id)a3
{
  v3 = [(PGGraphNodeCollection *)PGGraphSceneFeatureNodeCollection subsetInCollection:a3];
  v4 = [v3 featureNodeCollection];

  return v4;
}

- (id)trendsSceneFeatureNodesInGraph:(id)a3
{
  trendsSceneFeatureNodes = self->_trendsSceneFeatureNodes;
  if (!trendsSceneFeatureNodes)
  {
    v5 = a3;
    v6 = +[PGTrendsMemoryGenerator allTrendSceneFeatureLabels];
    v7 = [PGGraphSceneFeatureNodeCollection sceneFeatureNodesForSceneNames:v6 inGraph:v5];

    v8 = self->_trendsSceneFeatureNodes;
    self->_trendsSceneFeatureNodes = v7;

    trendsSceneFeatureNodes = self->_trendsSceneFeatureNodes;
  }

  return trendsSceneFeatureNodes;
}

@end