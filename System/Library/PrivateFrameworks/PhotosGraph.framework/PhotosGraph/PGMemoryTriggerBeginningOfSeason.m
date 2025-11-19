@interface PGMemoryTriggerBeginningOfSeason
- (id)resultsTriggeredWithContext:(id)a3 inGraph:(id)a4 progressReporter:(id)a5;
@end

@implementation PGMemoryTriggerBeginningOfSeason

- (id)resultsTriggeredWithContext:(id)a3 inGraph:(id)a4 progressReporter:(id)a5
{
  v49 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v9 isCancelledWithProgress:0.0])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v46 = 32;
      v47 = 2080;
      v48 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerBeginningOfSeason.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v10 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v11 = [v7 localDate];
    if ([MEMORY[0x277D27690] isFirstTenDaysOfSeasonForLocalDate:v11])
    {
      v12 = [MEMORY[0x277D27690] localStartSeasonDateForLocalDate:v11];
      v13 = MEMORY[0x277D27690];
      v14 = [v7 timeZone];
      v44 = v12;
      v15 = [v13 universalDateFromLocalDate:v12 inTimeZone:v14];

      v16 = [v15 dateByAddingTimeInterval:-0.01];
      v17 = MEMORY[0x277D27690];
      v18 = [v7 timeZone];
      v43 = v16;
      v19 = [v17 localDateFromUniversalDate:v16 inTimeZone:v18];

      v20 = +[PGGraphYearNodeCollection yearNodesForYear:inGraph:](PGGraphYearNodeCollection, "yearNodesForYear:inGraph:", [MEMORY[0x277D27690] yearFromDate:v11], v8);
      v21 = [MEMORY[0x277D27690] seasonNameForLocalDate:v19 locale:0];
      if (v21)
      {
        v39 = v19;
        v40 = v15;
        v38 = v21;
        v37 = [PGGraphSeasonNodeCollection seasonNodesForSeasonName:v21 inGraph:v8];
        [v37 featureNodeCollection];
        v22 = v42 = v20;
        v23 = [v22 memoryNodes];

        v20 = v42;
        v24 = [v42 featureNodeCollection];
        v25 = [v24 memoryNodes];

        v36 = v25;
        v26 = [v23 collectionByIntersecting:v25];

        v41 = v26;
        if ([v26 count])
        {
          v27 = [MEMORY[0x277D27690] localDateIntervalOfFirstTenDaysOfSeasonForLocalDate:v11];
          v28 = objc_opt_class();
          v29 = [v27 startDate];
          v30 = [v27 endDate];
          v31 = [v7 timeZone];
          v32 = [v28 validityIntervalForLocalStartDate:v29 localEndDate:v30 timeZone:v31];

          if ([v9 isCancelledWithProgress:1.0])
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              v46 = 68;
              v47 = 2080;
              v48 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerBeginningOfSeason.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

            v10 = MEMORY[0x277CBEBF8];
          }

          else
          {
            v10 = [objc_opt_class() memoryTriggerResultsForMemoryNodes:v41 withValidityInterval:v32];
          }

          v33 = v44;
          v19 = v39;
          v20 = v42;

          v15 = v40;
          v21 = v38;
        }

        else
        {
          v19 = v39;
          if ([v9 isCancelledWithProgress:1.0])
          {
            v15 = v40;
            v21 = v38;
            v33 = v44;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              v46 = 61;
              v47 = 2080;
              v48 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerBeginningOfSeason.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

            v10 = MEMORY[0x277CBEBF8];
          }

          else
          {
            v10 = MEMORY[0x277CBEBF8];
            v15 = v40;
            v21 = v38;
            v33 = v44;
          }
        }
      }

      else if ([v9 isCancelledWithProgress:1.0])
      {
        v33 = v44;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v46 = 51;
          v47 = 2080;
          v48 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerBeginningOfSeason.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v10 = MEMORY[0x277CBEBF8];
      }

      else
      {
        v10 = MEMORY[0x277CBEBF8];
        v33 = v44;
      }
    }

    else
    {
      if ([v9 isCancelledWithProgress:1.0] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v46 = 36;
        v47 = 2080;
        v48 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerBeginningOfSeason.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v10 = MEMORY[0x277CBEBF8];
    }
  }

  v34 = *MEMORY[0x277D85DE8];

  return v10;
}

@end