@interface PGMemoryTriggerSameDayInHistory
- (id)resultsTriggeredWithContext:(id)a3 inGraph:(id)a4 progressReporter:(id)a5;
@end

@implementation PGMemoryTriggerSameDayInHistory

- (id)resultsTriggeredWithContext:(id)a3 inGraph:(id)a4 progressReporter:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v9 isCancelledWithProgress:0.0])
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
    v11 = [v7 localDate];
    v12 = [v7 localDate];
    v13 = [PGGraphMonthDayNodeCollection monthDayNodesForLocalDate:v12 inGraph:v8];

    v25 = v13;
    v14 = [v13 featureNodeCollection];
    v15 = [v14 memoryNodes];

    v26 = v11;
    v16 = [MEMORY[0x277D27690] components:4 fromDate:v11];
    v17 = +[PGGraphYearNodeCollection yearNodesForYear:inGraph:](PGGraphYearNodeCollection, "yearNodesForYear:inGraph:", [v16 year], v8);
    v18 = [v17 dateNodes];
    v19 = [v18 momentNodes];
    v20 = [v19 memoryNodes];

    v21 = [v15 collectionBySubtracting:v20];
    v22 = [objc_opt_class() singleDayValidityIntervalWithContext:v7];
    if ([v9 isCancelledWithProgress:1.0])
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