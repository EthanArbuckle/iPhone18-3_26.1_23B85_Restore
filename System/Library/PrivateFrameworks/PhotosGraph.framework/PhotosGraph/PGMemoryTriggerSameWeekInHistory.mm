@interface PGMemoryTriggerSameWeekInHistory
- (id)resultsTriggeredWithContext:(id)context inGraph:(id)graph progressReporter:(id)reporter;
@end

@implementation PGMemoryTriggerSameWeekInHistory

- (id)resultsTriggeredWithContext:(id)context inGraph:(id)graph progressReporter:(id)reporter
{
  v38 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  graphCopy = graph;
  reporterCopy = reporter;
  if ([reporterCopy isCancelledWithProgress:0.0])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v35 = 32;
      v36 = 2080;
      v37 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerSameWeekInHistory.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v10 = MEMORY[0x277CBEBF8];
  }

  else
  {
    localDate = [contextCopy localDate];
    v12 = [MEMORY[0x277D27690] components:8196 fromDate:localDate];
    year = [v12 year];
    v33 = v12;
    v32 = +[PGGraphWeekOfYearNodeCollection weekOfYearNodesForWeekOfYear:inGraph:](PGGraphWeekOfYearNodeCollection, "weekOfYearNodesForWeekOfYear:inGraph:", [v12 weekOfYear], graphCopy);
    dateNodes = [v32 dateNodes];
    monthDayNodes = [dateNodes monthDayNodes];

    v31 = monthDayNodes;
    featureNodeCollection = [monthDayNodes featureNodeCollection];
    memoryNodes = [featureNodeCollection memoryNodes];

    v30 = [PGGraphYearNodeCollection yearNodesForYear:year inGraph:graphCopy];
    dateNodes2 = [v30 dateNodes];
    momentNodes = [dateNodes2 momentNodes];
    memoryNodes2 = [momentNodes memoryNodes];

    v21 = [memoryNodes collectionBySubtracting:memoryNodes2];

    if ([v21 count])
    {
      v22 = [MEMORY[0x277D27690] endOfWeekForDate:localDate];
      v29 = localDate;
      v23 = [MEMORY[0x277D27690] startOfWeekForDate:localDate];
      v24 = objc_opt_class();
      timeZone = [contextCopy timeZone];
      v26 = [v24 validityIntervalForLocalStartDate:v23 localEndDate:v22 timeZone:timeZone];

      if ([reporterCopy isCancelledWithProgress:1.0])
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v35 = 57;
          v36 = 2080;
          v37 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerSameWeekInHistory.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v10 = MEMORY[0x277CBEBF8];
      }

      else
      {
        v10 = [objc_opt_class() memoryTriggerResultsForMemoryNodes:v21 withValidityInterval:v26];
      }

      localDate = v29;
    }

    else
    {
      if ([reporterCopy isCancelledWithProgress:1.0] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v35 = 50;
        v36 = 2080;
        v37 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerSameWeekInHistory.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v10 = MEMORY[0x277CBEBF8];
    }
  }

  v27 = *MEMORY[0x277D85DE8];

  return v10;
}

@end