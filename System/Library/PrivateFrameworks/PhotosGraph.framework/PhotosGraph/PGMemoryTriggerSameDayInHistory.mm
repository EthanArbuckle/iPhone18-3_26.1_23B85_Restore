@interface PGMemoryTriggerSameDayInHistory
- (id)resultsTriggeredWithContext:(id)context inGraph:(id)graph progressReporter:(id)reporter;
@end

@implementation PGMemoryTriggerSameDayInHistory

- (id)resultsTriggeredWithContext:(id)context inGraph:(id)graph progressReporter:(id)reporter
{
  v31 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  graphCopy = graph;
  reporterCopy = reporter;
  if ([reporterCopy isCancelledWithProgress:0.0])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v28 = 31;
      v29 = 2080;
      v30 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerSameDayInHistory.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v10 = MEMORY[0x277CBEBF8];
  }

  else
  {
    localDate = [contextCopy localDate];
    localDate2 = [contextCopy localDate];
    v13 = [PGGraphMonthDayNodeCollection monthDayNodesForLocalDate:localDate2 inGraph:graphCopy];

    v25 = v13;
    featureNodeCollection = [v13 featureNodeCollection];
    memoryNodes = [featureNodeCollection memoryNodes];

    v26 = localDate;
    v16 = [MEMORY[0x277D27690] components:4 fromDate:localDate];
    v17 = +[PGGraphYearNodeCollection yearNodesForYear:inGraph:](PGGraphYearNodeCollection, "yearNodesForYear:inGraph:", [v16 year], graphCopy);
    dateNodes = [v17 dateNodes];
    momentNodes = [dateNodes momentNodes];
    memoryNodes2 = [momentNodes memoryNodes];

    v21 = [memoryNodes collectionBySubtracting:memoryNodes2];
    v22 = [objc_opt_class() singleDayValidityIntervalWithContext:contextCopy];
    if ([reporterCopy isCancelledWithProgress:1.0])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v28 = 44;
        v29 = 2080;
        v30 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerSameDayInHistory.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v10 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v10 = [objc_opt_class() memoryTriggerResultsForMemoryNodes:v21 withValidityInterval:v22];
    }
  }

  v23 = *MEMORY[0x277D85DE8];

  return v10;
}

@end