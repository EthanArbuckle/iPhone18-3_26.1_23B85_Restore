@interface PGMemoryTriggerRecentTrendsMoment
- (id)relevantFeatureNodesInFeatureNodes:(id)nodes;
- (id)resultsTriggeredWithContext:(id)context inGraph:(id)graph progressReporter:(id)reporter;
- (id)trendsSceneFeatureNodesInGraph:(id)graph;
@end

@implementation PGMemoryTriggerRecentTrendsMoment

- (id)resultsTriggeredWithContext:(id)context inGraph:(id)graph progressReporter:(id)reporter
{
  v36 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  graphCopy = graph;
  reporterCopy = reporter;
  if ([reporterCopy isCancelledWithProgress:0.0])
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
    localDate = [contextCopy localDate];
    timeZone = [contextCopy timeZone];
    v14 = [PGMemoryTrigger dateNodesInGraph:graphCopy startDayOffset:-8 endDayOffset:-1 fromLocalDate:localDate inTimeZone:timeZone];

    v27 = v14;
    momentNodes = [v14 momentNodes];
    v16 = [(PGMemoryTriggerRecentTrendsMoment *)self trendsSceneFeatureNodesInGraph:graphCopy];
    momentNodes2 = [v16 momentNodes];
    v18 = [momentNodes collectionByIntersecting:momentNodes2];
    if ([v18 count])
    {
      featureNodeCollection = [v16 featureNodeCollection];
      memoryNodes = [featureNodeCollection memoryNodes];

      memoryNodes2 = [v18 memoryNodes];
      [memoryNodes2 collectionByIntersecting:memoryNodes];
      v26 = momentNodes2;
      v23 = v22 = momentNodes;
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __90__PGMemoryTriggerRecentTrendsMoment_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke;
      v29[3] = &unk_278886FC0;
      v29[4] = self;
      v30 = contextCopy;
      v31 = v28;
      [v23 enumerateIdentifiersAsCollectionsWithBlock:v29];

      momentNodes = v22;
      momentNodes2 = v26;
    }

    if ([reporterCopy isCancelledWithProgress:{1.0, v26}])
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

- (id)relevantFeatureNodesInFeatureNodes:(id)nodes
{
  v3 = [(PGGraphNodeCollection *)PGGraphSceneFeatureNodeCollection subsetInCollection:nodes];
  featureNodeCollection = [v3 featureNodeCollection];

  return featureNodeCollection;
}

- (id)trendsSceneFeatureNodesInGraph:(id)graph
{
  trendsSceneFeatureNodes = self->_trendsSceneFeatureNodes;
  if (!trendsSceneFeatureNodes)
  {
    graphCopy = graph;
    v6 = +[PGTrendsMemoryGenerator allTrendSceneFeatureLabels];
    v7 = [PGGraphSceneFeatureNodeCollection sceneFeatureNodesForSceneNames:v6 inGraph:graphCopy];

    v8 = self->_trendsSceneFeatureNodes;
    self->_trendsSceneFeatureNodes = v7;

    trendsSceneFeatureNodes = self->_trendsSceneFeatureNodes;
  }

  return trendsSceneFeatureNodes;
}

@end