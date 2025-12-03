@interface PGMemoryTriggerEndOfYear
- (id)resultsTriggeredWithContext:(id)context inGraph:(id)graph progressReporter:(id)reporter;
@end

@implementation PGMemoryTriggerEndOfYear

- (id)resultsTriggeredWithContext:(id)context inGraph:(id)graph progressReporter:(id)reporter
{
  v54 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  graphCopy = graph;
  reporterCopy = reporter;
  if ([reporterCopy isCancelledWithProgress:0.0])
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
    localDate = [contextCopy localDate];
    timeZone = [contextCopy timeZone];
    v14 = [v11 universalDateFromLocalDate:localDate inTimeZone:timeZone];

    v49 = v14;
    v15 = [MEMORY[0x277D27690] dateByAddingMonths:1 toDate:v14];
    v16 = MEMORY[0x277D27690];
    timeZone2 = [contextCopy timeZone];
    v18 = [v16 localDateFromUniversalDate:v15 inTimeZone:timeZone2];

    v19 = MEMORY[0x277D27690];
    localDate2 = [contextCopy localDate];
    v21 = [v19 components:4 fromDate:localDate2];

    v22 = [MEMORY[0x277D27690] components:4 fromDate:v18];
    year = [v21 year];
    if (year == [v22 year])
    {
      if ([reporterCopy isCancelledWithProgress:1.0] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
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
      v48 = graphCopy;
      v24 = MEMORY[0x277D27690];
      localDate3 = [contextCopy localDate];
      v26 = v24;
      graphCopy = v48;
      v27 = +[PGGraphYearNodeCollection yearNodesForYear:inGraph:](PGGraphYearNodeCollection, "yearNodesForYear:inGraph:", [v26 yearFromDate:localDate3], v48);

      v46 = v27;
      featureNodeCollection = [v27 featureNodeCollection];
      memoryNodes = [featureNodeCollection memoryNodes];

      v30 = memoryNodes;
      if ([memoryNodes count])
      {
        v31 = MEMORY[0x277D27690];
        localDate4 = [contextCopy localDate];
        v33 = [v31 endOfMonthForDate:localDate4];

        v34 = MEMORY[0x277D27690];
        localDate5 = [contextCopy localDate];
        v36 = [v34 startOfMonthForDate:localDate5];

        v37 = objc_opt_class();
        timeZone3 = [contextCopy timeZone];
        v43 = v36;
        v44 = v33;
        v39 = [v37 validityIntervalForLocalStartDate:v36 localEndDate:v33 timeZone:timeZone3];

        if ([reporterCopy isCancelledWithProgress:1.0])
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

        graphCopy = v48;
      }

      else
      {
        if ([reporterCopy isCancelledWithProgress:1.0])
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