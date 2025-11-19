@interface PGMemoryTriggerLastWeek
- (id)resultsTriggeredWithContext:(id)a3 inGraph:(id)a4 progressReporter:(id)a5;
@end

@implementation PGMemoryTriggerLastWeek

- (id)resultsTriggeredWithContext:(id)a3 inGraph:(id)a4 progressReporter:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v9 isCancelledWithProgress:0.0])
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
    v11 = [v7 localDate];
    v12 = MEMORY[0x277D27690];
    v13 = [v7 timeZone];
    v29 = v11;
    v14 = [v12 universalDateFromLocalDate:v11 inTimeZone:v13];

    v28 = v14;
    v15 = [v14 dateByAddingTimeInterval:-604800.0];
    v16 = MEMORY[0x277D27690];
    v17 = [v7 timeZone];
    v27 = v15;
    v18 = [v16 localDateFromUniversalDate:v15 inTimeZone:v17];

    v19 = [v8 dateNodesForLocalDate:v18];
    v20 = [v19 momentNodes];
    v21 = [v20 memoryNodes];

    v22 = [PGGraphMemoryNodeCollection memoryNodesOfCategory:1 inGraph:v8];
    v23 = [v21 collectionByIntersecting:v22];
    v24 = [objc_opt_class() singleDayValidityIntervalWithContext:v7];
    if ([v9 isCancelledWithProgress:1.0])
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