@interface PGMemoryTriggerLastWeekend
- (id)resultsTriggeredWithContext:(id)context inGraph:(id)graph progressReporter:(id)reporter;
@end

@implementation PGMemoryTriggerLastWeekend

- (id)resultsTriggeredWithContext:(id)context inGraph:(id)graph progressReporter:(id)reporter
{
  v37 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  graphCopy = graph;
  reporterCopy = reporter;
  if ([reporterCopy isCancelledWithProgress:0.0])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v34 = 34;
      v35 = 2080;
      v36 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerLastWeekend.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v10 = MEMORY[0x277CBEBF8];
  }

  else
  {
    localDate = [contextCopy localDate];
    if ([MEMORY[0x277D276A8] isWeekendDate:localDate])
    {
      v12 = [localDate dateByAddingTimeInterval:-86400.0];

      localDate = v12;
    }

    v31 = 0;
    v32 = 0.0;
    [MEMORY[0x277D276A8] nextWeekendLocalStartDate:&v31 interval:&v32 options:4 afterDate:localDate];
    v13 = v32;
    v14 = v31;
    v15 = [v14 dateByAddingTimeInterval:v13];
    v27 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v14 endDate:v15];
    v26 = [PGGraphMomentNodeCollection momentNodesForLocalDateInterval:"momentNodesForLocalDateInterval:inGraph:" inGraph:?];
    memoryNodes = [v26 memoryNodes];
    v28 = graphCopy;
    v17 = [PGGraphMemoryNodeCollection memoryNodesOfCategory:1 inGraph:graphCopy];
    v18 = [memoryNodes collectionByIntersecting:v17];
    v29 = 0;
    v30 = 0;
    [MEMORY[0x277D276A8] nextWeekendLocalStartDate:&v29 interval:&v30 options:0 afterDate:v15];
    v19 = v29;
    v20 = objc_opt_class();
    v25 = contextCopy;
    timeZone = [contextCopy timeZone];
    v22 = [v20 validityIntervalForLocalStartDate:v15 localEndDate:v19 timeZone:timeZone];

    if ([reporterCopy isCancelledWithProgress:1.0])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v34 = 62;
        v35 = 2080;
        v36 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerLastWeekend.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v10 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v10 = [objc_opt_class() memoryTriggerResultsForMemoryNodes:v18 withValidityInterval:v22];
    }

    contextCopy = v25;

    graphCopy = v28;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v10;
}

@end