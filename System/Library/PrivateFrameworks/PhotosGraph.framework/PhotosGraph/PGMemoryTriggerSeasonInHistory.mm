@interface PGMemoryTriggerSeasonInHistory
- (id)resultsTriggeredWithContext:(id)a3 inGraph:(id)a4 progressReporter:(id)a5;
@end

@implementation PGMemoryTriggerSeasonInHistory

- (id)resultsTriggeredWithContext:(id)a3 inGraph:(id)a4 progressReporter:(id)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (![v9 isCancelledWithProgress:0.0])
  {
    v11 = [v7 localDate];
    v12 = [MEMORY[0x277D27690] components:12 fromDate:v11];
    v13 = [v12 month];
    v14 = [v12 year];
    v15 = [MEMORY[0x277D27690] seasonNameForLocalDate:v11 locale:0];
    if (!v15)
    {
      if ([v9 isCancelledWithProgress:1.0] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v38 = 46;
        v39 = 2080;
        v40 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerSeasonInHistory.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v10 = MEMORY[0x277CBEBF8];
      goto LABEL_27;
    }

    v33 = v12;
    if (v13 == 12)
    {
      v16 = v14 + 1;
    }

    else
    {
      v16 = v14;
    }

    v36 = v15;
    v17 = [PGGraphSeasonNodeCollection seasonNodesForSeasonName:v15 inGraph:v8];
    v18 = [PGGraphYearNodeCollection yearNodesForYear:v16 inGraph:v8];
    v35 = v17;
    v19 = [v17 featureNodeCollection];
    v20 = [v19 memoryNodes];

    v34 = v18;
    v21 = [v18 featureNodeCollection];
    v22 = [v21 memoryNodes];
    v23 = [v20 collectionBySubtracting:v22];

    v24 = v23;
    if ([v23 count])
    {
      v32 = [MEMORY[0x277D27690] localStartDateForNextSeasonAfterLocalDate:v11];
      v25 = [v32 dateByAddingTimeInterval:-0.01];
      v26 = [MEMORY[0x277D27690] localStartSeasonDateForLocalDate:v11];
      v27 = objc_opt_class();
      v28 = [v7 timeZone];
      v29 = [v27 validityIntervalForLocalStartDate:v26 localEndDate:v25 timeZone:v28];

      if ([v9 isCancelledWithProgress:1.0])
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v38 = 65;
          v39 = 2080;
          v40 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerSeasonInHistory.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v10 = MEMORY[0x277CBEBF8];
      }

      else
      {
        v10 = [objc_opt_class() memoryTriggerResultsForMemoryNodes:v24 withValidityInterval:v29];
      }
    }

    else
    {
      if ([v9 isCancelledWithProgress:1.0])
      {
        v15 = v36;
        v12 = v33;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v38 = 57;
          v39 = 2080;
          v40 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerSeasonInHistory.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v10 = MEMORY[0x277CBEBF8];
        goto LABEL_26;
      }

      v10 = MEMORY[0x277CBEBF8];
    }

    v15 = v36;
    v12 = v33;
LABEL_26:

LABEL_27:
    goto LABEL_28;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v38 = 32;
    v39 = 2080;
    v40 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerSeasonInHistory.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v10 = MEMORY[0x277CBEBF8];
LABEL_28:

  v30 = *MEMORY[0x277D85DE8];

  return v10;
}

@end