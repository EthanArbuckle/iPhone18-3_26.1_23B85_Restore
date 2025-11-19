@interface PGMemoryTriggerLastWeekend
- (id)resultsTriggeredWithContext:(id)a3 inGraph:(id)a4 progressReporter:(id)a5;
@end

@implementation PGMemoryTriggerLastWeekend

- (id)resultsTriggeredWithContext:(id)a3 inGraph:(id)a4 progressReporter:(id)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v9 isCancelledWithProgress:0.0])
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
    v11 = [v7 localDate];
    if ([MEMORY[0x277D276A8] isWeekendDate:v11])
    {
      v12 = [v11 dateByAddingTimeInterval:-86400.0];

      v11 = v12;
    }

    v31 = 0;
    v32 = 0.0;
    [MEMORY[0x277D276A8] nextWeekendLocalStartDate:&v31 interval:&v32 options:4 afterDate:v11];
    v13 = v32;
    v14 = v31;
    v15 = [v14 dateByAddingTimeInterval:v13];
    v27 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v14 endDate:v15];
    v26 = [PGGraphMomentNodeCollection momentNodesForLocalDateInterval:"momentNodesForLocalDateInterval:inGraph:" inGraph:?];
    v16 = [v26 memoryNodes];
    v28 = v8;
    v17 = [PGGraphMemoryNodeCollection memoryNodesOfCategory:1 inGraph:v8];
    v18 = [v16 collectionByIntersecting:v17];
    v29 = 0;
    v30 = 0;
    [MEMORY[0x277D276A8] nextWeekendLocalStartDate:&v29 interval:&v30 options:0 afterDate:v15];
    v19 = v29;
    v20 = objc_opt_class();
    v25 = v7;
    v21 = [v7 timeZone];
    v22 = [v20 validityIntervalForLocalStartDate:v15 localEndDate:v19 timeZone:v21];

    if ([v9 isCancelledWithProgress:1.0])
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

    v7 = v25;

    v8 = v28;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v10;
}

@end