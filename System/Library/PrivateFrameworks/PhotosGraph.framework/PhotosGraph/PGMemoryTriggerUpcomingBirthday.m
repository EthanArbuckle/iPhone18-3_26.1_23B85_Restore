@interface PGMemoryTriggerUpcomingBirthday
- (id)resultsTriggeredWithContext:(id)a3 inGraph:(id)a4 progressReporter:(id)a5;
- (id)upcomingBirthdayDateFromLocalDate:(id)a3 originalBirthdayDate:(id)a4;
@end

@implementation PGMemoryTriggerUpcomingBirthday

- (id)resultsTriggeredWithContext:(id)a3 inGraph:(id)a4 progressReporter:(id)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v10 isCancelledWithProgress:0.0])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v36 = 48;
      v37 = 2080;
      v38 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerUpcomingBirthday.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v11 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v12 = [v8 localDate];
    v13 = [v8 timeZone];
    v14 = [PGMemoryTrigger monthDayNodesInGraph:v9 startDayOffset:1 endDayOffset:3 fromLocalDate:v12 inTimeZone:v13];
    v15 = [v14 birthdayPersonNodes];
    v16 = [(PGGraphNodeCollection *)PGGraphMeNodeCollection nodesInGraph:v9];
    v17 = [v15 collectionBySubtracting:v16];

    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = __88__PGMemoryTriggerUpcomingBirthday_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke;
    v28 = &unk_278884CE8;
    v29 = v16;
    v30 = v9;
    v31 = self;
    v32 = v12;
    v33 = v13;
    v19 = v18;
    v34 = v19;
    v20 = v16;
    v21 = v12;
    v22 = v13;
    [v17 enumerateNodesUsingBlock:&v25];
    if ([v10 isCancelledWithProgress:{1.0, v25, v26, v27, v28}])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v36 = 79;
        v37 = 2080;
        v38 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerUpcomingBirthday.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v11 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v11 = v19;
    }
  }

  v23 = *MEMORY[0x277D85DE8];

  return v11;
}

void __88__PGMemoryTriggerUpcomingBirthday_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 collection];
  v5 = [v4 momentNodes];

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __88__PGMemoryTriggerUpcomingBirthday_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke_2;
  v21[3] = &unk_278888AE0;
  v22 = *(a1 + 32);
  v6 = [v5 filteredCollectionUsingBlock:v21];

  v7 = [v6 memoryNodes];
  v8 = [PGGraphMemoryNodeCollection memoryNodesOfCategory:1 inGraph:*(a1 + 40)];
  v9 = [v7 collectionByIntersecting:v8];
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = [v3 birthdayDate];

  v13 = [v10 upcomingBirthdayDateFromLocalDate:v11 originalBirthdayDate:v12];

  v14 = [v13 dateByAddingTimeInterval:-86400.0];
  v15 = [v13 dateByAddingTimeInterval:-259200.0];
  v16 = *(a1 + 48);
  v17 = [objc_opt_class() validityIntervalForLocalStartDate:v15 localEndDate:v14 timeZone:*(a1 + 64)];
  v18 = *(a1 + 72);
  v19 = *(a1 + 48);
  v20 = [objc_opt_class() memoryTriggerResultsForMemoryNodes:v9 withValidityInterval:v17];
  [v18 addObjectsFromArray:v20];
}

BOOL __88__PGMemoryTriggerUpcomingBirthday_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 personNodes];
  v4 = [v3 collectionBySubtracting:*(a1 + 32)];

  v5 = [v4 count] == 1;
  return v5;
}

- (id)upcomingBirthdayDateFromLocalDate:(id)a3 originalBirthdayDate:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x277D27690];
  v7 = a3;
  v8 = [v6 yearFromDate:v7];
  v9 = [MEMORY[0x277D27690] dateBySettingYear:v8 ofDate:v5];
  v10 = [MEMORY[0x277D27690] numberOfDaysBetweenDate:v7 andDate:v9];

  if (v10 >= 4)
  {
    v11 = [MEMORY[0x277D27690] dateBySettingYear:v8 + 1 ofDate:v5];

    v9 = v11;
  }

  return v9;
}

@end