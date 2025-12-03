@interface PGMemoryTriggerHoliday
- (id)resultsTriggeredWithContext:(id)context inGraph:(id)graph progressReporter:(id)reporter;
@end

@implementation PGMemoryTriggerHoliday

- (id)resultsTriggeredWithContext:(id)context inGraph:(id)graph progressReporter:(id)reporter
{
  v33 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  graphCopy = graph;
  reporterCopy = reporter;
  if ([reporterCopy isCancelledWithProgress:0.0])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v30 = 32;
      v31 = 2080;
      v32 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerHoliday.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v11 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v12 = objc_alloc_init(MEMORY[0x277D22BD0]);
    holidayService = [(PGHolidayMemoryTrigger *)self holidayService];
    localDate = [contextCopy localDate];
    localDate2 = [contextCopy localDate];
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __79__PGMemoryTriggerHoliday_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke;
    v26 = &unk_278886F98;
    v16 = graphCopy;
    v27 = v16;
    v17 = v12;
    v28 = v17;
    [holidayService enumerateEventRulesForAllCountriesBetweenLocalDate:localDate andLocalDate:localDate2 usingBlock:&v23];

    v18 = [PGGraphMemoryNodeCollection alloc];
    v19 = [(MAElementCollection *)v18 initWithGraph:v16 elementIdentifiers:v17, v23, v24, v25, v26];
    v20 = [objc_opt_class() singleDayValidityIntervalWithContext:contextCopy];
    if ([reporterCopy isCancelledWithProgress:1.0])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v30 = 40;
        v31 = 2080;
        v32 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerHoliday.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v11 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v11 = [objc_opt_class() memoryTriggerResultsForMemoryNodes:v19 withValidityInterval:v20];
    }
  }

  v21 = *MEMORY[0x277D85DE8];

  return v11;
}

void __79__PGMemoryTriggerHoliday_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v8 = [PGGraphHolidayNodeCollection holidayNodesWithName:v3 inGraph:*(a1 + 32)];

  v4 = *(a1 + 40);
  v5 = [v8 featureNodeCollection];
  v6 = [v5 memoryNodes];
  v7 = [v6 elementIdentifiers];
  [v4 unionWithIdentifierSet:v7];
}

@end