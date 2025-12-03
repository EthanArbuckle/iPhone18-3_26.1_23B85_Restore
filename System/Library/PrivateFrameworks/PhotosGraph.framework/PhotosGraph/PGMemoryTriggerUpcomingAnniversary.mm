@interface PGMemoryTriggerUpcomingAnniversary
- (id)resultsTriggeredWithContext:(id)context inGraph:(id)graph progressReporter:(id)reporter;
- (id)upcomingAnniversaryDateFromLocalDate:(id)date originalAnniversaryDate:(id)anniversaryDate;
@end

@implementation PGMemoryTriggerUpcomingAnniversary

- (id)resultsTriggeredWithContext:(id)context inGraph:(id)graph progressReporter:(id)reporter
{
  v39 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  graphCopy = graph;
  reporterCopy = reporter;
  if ([reporterCopy isCancelledWithProgress:0.0])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v36 = 48;
      v37 = 2080;
      v38 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerUpcomingAnniversary.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v11 = MEMORY[0x277CBEBF8];
  }

  else
  {
    localDate = [contextCopy localDate];
    timeZone = [contextCopy timeZone];
    v14 = [PGMemoryTrigger monthDayNodesInGraph:graphCopy startDayOffset:1 endDayOffset:3 fromLocalDate:localDate inTimeZone:timeZone];
    v15 = [(PGGraphNodeCollection *)PGGraphMeNodeCollection nodesInGraph:graphCopy];
    anniversaryPersonNodes = [v14 anniversaryPersonNodes];
    v17 = [anniversaryPersonNodes collectionBySubtracting:v15];

    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = __91__PGMemoryTriggerUpcomingAnniversary_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke;
    v28 = &unk_278884CE8;
    v29 = v15;
    v30 = graphCopy;
    selfCopy = self;
    v32 = localDate;
    v33 = timeZone;
    v19 = v18;
    v34 = v19;
    v20 = v15;
    v21 = localDate;
    v22 = timeZone;
    [v17 enumerateNodesUsingBlock:&v25];
    if ([reporterCopy isCancelledWithProgress:{1.0, v25, v26, v27, v28}])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v36 = 79;
        v37 = 2080;
        v38 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerUpcomingAnniversary.m";
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

void __91__PGMemoryTriggerUpcomingAnniversary_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 collection];
  v5 = [v4 momentNodes];

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __91__PGMemoryTriggerUpcomingAnniversary_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke_2;
  v21[3] = &unk_278888AE0;
  v22 = *(a1 + 32);
  v6 = [v5 filteredCollectionUsingBlock:v21];

  v7 = [v6 memoryNodes];
  v8 = [PGGraphMemoryNodeCollection memoryNodesOfCategory:1 inGraph:*(a1 + 40)];
  v9 = [v7 collectionByIntersecting:v8];
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = [v3 anniversaryDate];

  v13 = [v10 upcomingAnniversaryDateFromLocalDate:v11 originalAnniversaryDate:v12];

  v14 = [v13 dateByAddingTimeInterval:-86400.0];
  v15 = [v13 dateByAddingTimeInterval:-259200.0];
  v16 = *(a1 + 48);
  v17 = [objc_opt_class() validityIntervalForLocalStartDate:v15 localEndDate:v14 timeZone:*(a1 + 64)];
  v18 = *(a1 + 72);
  v19 = *(a1 + 48);
  v20 = [objc_opt_class() memoryTriggerResultsForMemoryNodes:v9 withValidityInterval:v17];
  [v18 addObjectsFromArray:v20];
}

BOOL __91__PGMemoryTriggerUpcomingAnniversary_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 personNodes];
  v4 = [v3 collectionBySubtracting:*(a1 + 32)];

  v5 = [v4 count] == 1;
  return v5;
}

- (id)upcomingAnniversaryDateFromLocalDate:(id)date originalAnniversaryDate:(id)anniversaryDate
{
  anniversaryDateCopy = anniversaryDate;
  v6 = MEMORY[0x277D27690];
  dateCopy = date;
  v8 = [v6 yearFromDate:dateCopy];
  v9 = [MEMORY[0x277D27690] dateBySettingYear:v8 ofDate:anniversaryDateCopy];
  v10 = [MEMORY[0x277D27690] numberOfDaysBetweenDate:dateCopy andDate:v9];

  if (v10 >= 4)
  {
    v11 = [MEMORY[0x277D27690] dateBySettingYear:v8 + 1 ofDate:anniversaryDateCopy];

    v9 = v11;
  }

  return v9;
}

@end