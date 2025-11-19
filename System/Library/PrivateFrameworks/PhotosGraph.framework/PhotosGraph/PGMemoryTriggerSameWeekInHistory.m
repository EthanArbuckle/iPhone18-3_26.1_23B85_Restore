@interface PGMemoryTriggerSameWeekInHistory
- (id)resultsTriggeredWithContext:(id)a3 inGraph:(id)a4 progressReporter:(id)a5;
@end

@implementation PGMemoryTriggerSameWeekInHistory

- (id)resultsTriggeredWithContext:(id)a3 inGraph:(id)a4 progressReporter:(id)a5
{
  v38 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v9 isCancelledWithProgress:0.0])
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
    v11 = [v7 localDate];
    v12 = [MEMORY[0x277D27690] components:8196 fromDate:v11];
    v13 = [v12 year];
    v33 = v12;
    v32 = +[PGGraphWeekOfYearNodeCollection weekOfYearNodesForWeekOfYear:inGraph:](PGGraphWeekOfYearNodeCollection, "weekOfYearNodesForWeekOfYear:inGraph:", [v12 weekOfYear], v8);
    v14 = [v32 dateNodes];
    v15 = [v14 monthDayNodes];

    v31 = v15;
    v16 = [v15 featureNodeCollection];
    v17 = [v16 memoryNodes];

    v30 = [PGGraphYearNodeCollection yearNodesForYear:v13 inGraph:v8];
    v18 = [v30 dateNodes];
    v19 = [v18 momentNodes];
    v20 = [v19 memoryNodes];

    v21 = [v17 collectionBySubtracting:v20];

    if ([v21 count])
    {
      v22 = [MEMORY[0x277D27690] endOfWeekForDate:v11];
      v29 = v11;
      v23 = [MEMORY[0x277D27690] startOfWeekForDate:v11];
      v24 = objc_opt_class();
      v25 = [v7 timeZone];
      v26 = [v24 validityIntervalForLocalStartDate:v23 localEndDate:v22 timeZone:v25];

      if ([v9 isCancelledWithProgress:1.0])
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

      v11 = v29;
    }

    else
    {
      if ([v9 isCancelledWithProgress:1.0] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
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