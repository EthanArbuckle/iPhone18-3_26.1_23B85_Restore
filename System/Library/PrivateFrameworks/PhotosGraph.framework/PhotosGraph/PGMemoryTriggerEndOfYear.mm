@interface PGMemoryTriggerEndOfYear
- (id)resultsTriggeredWithContext:(id)a3 inGraph:(id)a4 progressReporter:(id)a5;
@end

@implementation PGMemoryTriggerEndOfYear

- (id)resultsTriggeredWithContext:(id)a3 inGraph:(id)a4 progressReporter:(id)a5
{
  v54 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v9 isCancelledWithProgress:0.0])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v51 = 30;
      v52 = 2080;
      v53 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerEndOfYear.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v10 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v11 = MEMORY[0x277D27690];
    v12 = [v7 localDate];
    v13 = [v7 timeZone];
    v14 = [v11 universalDateFromLocalDate:v12 inTimeZone:v13];

    v49 = v14;
    v15 = [MEMORY[0x277D27690] dateByAddingMonths:1 toDate:v14];
    v16 = MEMORY[0x277D27690];
    v17 = [v7 timeZone];
    v18 = [v16 localDateFromUniversalDate:v15 inTimeZone:v17];

    v19 = MEMORY[0x277D27690];
    v20 = [v7 localDate];
    v21 = [v19 components:4 fromDate:v20];

    v22 = [MEMORY[0x277D27690] components:4 fromDate:v18];
    v23 = [v21 year];
    if (v23 == [v22 year])
    {
      if ([v9 isCancelledWithProgress:1.0] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v51 = 39;
        v52 = 2080;
        v53 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerEndOfYear.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v10 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v45 = v18;
      v47 = v15;
      v48 = v8;
      v24 = MEMORY[0x277D27690];
      v25 = [v7 localDate];
      v26 = v24;
      v8 = v48;
      v27 = +[PGGraphYearNodeCollection yearNodesForYear:inGraph:](PGGraphYearNodeCollection, "yearNodesForYear:inGraph:", [v26 yearFromDate:v25], v48);

      v46 = v27;
      v28 = [v27 featureNodeCollection];
      v29 = [v28 memoryNodes];

      v30 = v29;
      if ([v29 count])
      {
        v31 = MEMORY[0x277D27690];
        v32 = [v7 localDate];
        v33 = [v31 endOfMonthForDate:v32];

        v34 = MEMORY[0x277D27690];
        v35 = [v7 localDate];
        v36 = [v34 startOfMonthForDate:v35];

        v37 = objc_opt_class();
        v38 = [v7 timeZone];
        v43 = v36;
        v44 = v33;
        v39 = [v37 validityIntervalForLocalStartDate:v36 localEndDate:v33 timeZone:v38];

        if ([v9 isCancelledWithProgress:1.0])
        {
          v15 = v47;
          v40 = v30;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v51 = 54;
            v52 = 2080;
            v53 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerEndOfYear.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v10 = MEMORY[0x277CBEBF8];
        }

        else
        {
          v40 = v30;
          v10 = [objc_opt_class() memoryTriggerResultsForMemoryNodes:v30 withValidityInterval:v39];
          v15 = v47;
        }

        v18 = v45;

        v8 = v48;
      }

      else
      {
        if ([v9 isCancelledWithProgress:1.0])
        {
          v15 = v47;
          v40 = v30;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v51 = 47;
            v52 = 2080;
            v53 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerEndOfYear.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v10 = MEMORY[0x277CBEBF8];
        }

        else
        {
          v10 = MEMORY[0x277CBEBF8];
          v15 = v47;
          v40 = v30;
        }

        v18 = v45;
      }
    }
  }

  v41 = *MEMORY[0x277D85DE8];

  return v10;
}

@end