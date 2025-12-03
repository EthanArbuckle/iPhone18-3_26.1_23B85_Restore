@interface PGMemoryTriggerLastWeek
- (id)resultsTriggeredWithContext:(id)context inGraph:(id)graph progressReporter:(id)reporter;
@end

@implementation PGMemoryTriggerLastWeek

- (id)resultsTriggeredWithContext:(id)context inGraph:(id)graph progressReporter:(id)reporter
{
  v34 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  graphCopy = graph;
  reporterCopy = reporter;
  if ([reporterCopy isCancelledWithProgress:0.0])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v31 = 33;
      v32 = 2080;
      v33 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerLastWeek.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v10 = MEMORY[0x277CBEBF8];
  }

  else
  {
    localDate = [contextCopy localDate];
    v12 = MEMORY[0x277D27690];
    timeZone = [contextCopy timeZone];
    v29 = localDate;
    v14 = [v12 universalDateFromLocalDate:localDate inTimeZone:timeZone];

    v28 = v14;
    v15 = [v14 dateByAddingTimeInterval:-604800.0];
    v16 = MEMORY[0x277D27690];
    timeZone2 = [contextCopy timeZone];
    v27 = v15;
    v18 = [v16 localDateFromUniversalDate:v15 inTimeZone:timeZone2];

    v19 = [graphCopy dateNodesForLocalDate:v18];
    momentNodes = [v19 momentNodes];
    memoryNodes = [momentNodes memoryNodes];

    v22 = [PGGraphMemoryNodeCollection memoryNodesOfCategory:1 inGraph:graphCopy];
    v23 = [memoryNodes collectionByIntersecting:v22];
    v24 = [objc_opt_class() singleDayValidityIntervalWithContext:contextCopy];
    if ([reporterCopy isCancelledWithProgress:1.0])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v31 = 46;
        v32 = 2080;
        v33 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerLastWeek.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v10 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v10 = [objc_opt_class() memoryTriggerResultsForMemoryNodes:v23 withValidityInterval:v24];
    }
  }

  v25 = *MEMORY[0x277D85DE8];

  return v10;
}

@end