@interface PGMemoryTriggerThrowbackWeekInHistory
- (id)resultsTriggeredWithContext:(id)context inGraph:(id)graph progressReporter:(id)reporter;
@end

@implementation PGMemoryTriggerThrowbackWeekInHistory

- (id)resultsTriggeredWithContext:(id)context inGraph:(id)graph progressReporter:(id)reporter
{
  v46 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  graphCopy = graph;
  reporterCopy = reporter;
  if ([reporterCopy isCancelledWithProgress:0.0])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v43 = 34;
      v44 = 2080;
      v45 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerThrowbackWeekInHistory.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v10 = MEMORY[0x277CBEBF8];
  }

  else
  {
    localDate = [contextCopy localDate];
    v12 = [MEMORY[0x277D27690] components:8220 fromDate:localDate];
    year = [v12 year];
    v36 = v12;
    v14 = +[PGGraphWeekOfYearNodeCollection weekOfYearNodesForWeekOfYear:inGraph:](PGGraphWeekOfYearNodeCollection, "weekOfYearNodesForWeekOfYear:inGraph:", [v12 weekOfYear], graphCopy);
    dateNodes = [v14 dateNodes];

    v16 = [PGGraphMemoryNodeCollection memoryNodesOfCategory:1 inGraph:graphCopy];
    v17 = objc_alloc_init(MEMORY[0x277D22BD0]);
    [(PGGraphNodeCollection *)PGGraphYearNodeCollection nodesInGraph:graphCopy];
    v19 = v18 = contextCopy;
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __94__PGMemoryTriggerThrowbackWeekInHistory_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke;
    v37[3] = &unk_278883B08;
    v41 = year;
    v20 = dateNodes;
    v38 = v20;
    v21 = v16;
    v39 = v21;
    v22 = v17;
    v40 = v22;
    v35 = v19;
    [v19 enumerateIdentifiersAsCollectionsWithBlock:v37];
    if ([v22 count])
    {
      v34 = v20;
      v32 = graphCopy;
      v23 = [(MAElementCollection *)[PGGraphMemoryNodeCollection alloc] initWithGraph:graphCopy elementIdentifiers:v22];
      v24 = [MEMORY[0x277D27690] endOfWeekForDate:localDate];
      v25 = [MEMORY[0x277D27690] startOfWeekForDate:localDate];
      v26 = objc_opt_class();
      timeZone = [v18 timeZone];
      v31 = v25;
      v33 = v24;
      v28 = [v26 validityIntervalForLocalStartDate:v25 localEndDate:v24 timeZone:timeZone];

      contextCopy = v18;
      if ([reporterCopy isCancelledWithProgress:1.0])
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v43 = 67;
          v44 = 2080;
          v45 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerThrowbackWeekInHistory.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v10 = MEMORY[0x277CBEBF8];
      }

      else
      {
        v10 = [objc_opt_class() memoryTriggerResultsForMemoryNodes:v23 withValidityInterval:v28];
      }

      graphCopy = v32;

      v20 = v34;
    }

    else
    {
      contextCopy = v18;
      if ([reporterCopy isCancelledWithProgress:1.0] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v43 = 59;
        v44 = 2080;
        v45 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerThrowbackWeekInHistory.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v10 = MEMORY[0x277CBEBF8];
    }
  }

  v29 = *MEMORY[0x277D85DE8];

  return v10;
}

void __94__PGMemoryTriggerThrowbackWeekInHistory_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v15 = a3;
  v4 = [v15 anyNode];
  v5 = [v4 calendarUnitValue];
  v6 = a1[7] - 2;

  if (v5 <= v6)
  {
    v7 = a1[4];
    v8 = [v15 dateNodes];
    v9 = [v7 collectionByIntersecting:v8];

    v10 = [v9 momentNodes];
    v11 = [v10 memoryNodes];

    v12 = [v11 collectionByIntersecting:a1[5]];

    v13 = a1[6];
    v14 = [v12 elementIdentifiers];
    [v13 unionWithIdentifierSet:v14];
  }
}

@end