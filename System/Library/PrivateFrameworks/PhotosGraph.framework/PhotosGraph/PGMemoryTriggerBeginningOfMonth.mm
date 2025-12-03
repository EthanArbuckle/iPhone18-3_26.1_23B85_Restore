@interface PGMemoryTriggerBeginningOfMonth
- (PGMemoryTriggerBeginningOfMonth)initWithLoggingConnection:(id)connection momentNodesWithBlockedFeatureCache:(id)cache;
- (id)resultsTriggeredWithContext:(id)context inGraph:(id)graph progressReporter:(id)reporter;
@end

@implementation PGMemoryTriggerBeginningOfMonth

- (id)resultsTriggeredWithContext:(id)context inGraph:(id)graph progressReporter:(id)reporter
{
  v61 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  graphCopy = graph;
  reporterCopy = reporter;
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  v11 = [reporterCopy isCancelledWithProgress:0.0];
  *(v54 + 24) = v11;
  if (!v11)
  {
    localDate = [contextCopy localDate];
    v49 = [MEMORY[0x277D27690] components:16 fromDate:localDate];
    v48 = localDate;
    if ([v49 day] <= 7)
    {
      selfCopy = self;
      v14 = [MEMORY[0x277D27690] startOfMonthForDate:localDate];
      v15 = MEMORY[0x277D27690];
      timeZone = [contextCopy timeZone];
      v45 = [v15 universalDateFromLocalDate:v14 inTimeZone:timeZone];
      v42 = v14;

      v17 = [MEMORY[0x277D27690] dateByAddingDays:-1 toDate:v45];
      v18 = MEMORY[0x277D27690];
      timeZone2 = [contextCopy timeZone];
      v44 = [v18 localDateFromUniversalDate:v17 inTimeZone:timeZone2];
      v41 = v17;

      v47 = [MEMORY[0x277D27690] components:12 fromDate:v44];
      v20 = graphCopy;
      v21 = MEMORY[0x277D22C80];
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __88__PGMemoryTriggerBeginningOfMonth_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke;
      v50[3] = &unk_278889448;
      v52 = &v53;
      v40 = reporterCopy;
      v51 = v40;
      v43 = [v21 progressReporterWithProgressBlock:v50];
      month = [v47 month];
      year = [v47 year];
      momentNodesWithBlockedFeatureCache = selfCopy->_momentNodesWithBlockedFeatureCache;
      photoLibrary = [contextCopy photoLibrary];
      loggingConnection = [(PGMemoryTrigger *)selfCopy loggingConnection];
      v27 = [PGLastMonthAtHomeMemoryGenerator lastMonthAtHomeMemoriesForMonth:month year:year inGraph:v20 momentNodesWithBlockedFeatureCache:momentNodesWithBlockedFeatureCache photoLibrary:photoLibrary loggingConnection:loggingConnection progressReporter:v43];

      graphCopy = v20;
      if (*(v54 + 24) == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v58 = 59;
          v59 = 2080;
          v60 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerBeginningOfMonth.m";
          v28 = MEMORY[0x277D86220];
LABEL_27:
          _os_log_impl(&dword_22F0FC000, v28, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          goto LABEL_28;
        }

        goto LABEL_28;
      }

      if (![v27 count])
      {
        if (v54[3])
        {
          *(v54 + 24) = 1;
          graphCopy = v20;
        }

        else
        {
          v37 = [v40 isCancelledWithProgress:1.0];
          *(v54 + 24) = v37;
          graphCopy = v20;
          if ((v37 & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v58 = 61;
          v59 = 2080;
          v60 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerBeginningOfMonth.m";
          v28 = MEMORY[0x277D86220];
          goto LABEL_27;
        }

LABEL_28:
        v12 = MEMORY[0x277CBEBF8];
LABEL_31:

        goto LABEL_32;
      }

      v30 = [MEMORY[0x277D27690] startOfMonthForDate:v48];
      graphCopy = v20;
      v31 = [MEMORY[0x277D27690] dateComponentsWithLocalDate:v30];
      [v31 setDay:7];
      v32 = [MEMORY[0x277D27690] dateFromComponents:v31 inTimeZone:0];
      v33 = objc_opt_class();
      timeZone3 = [contextCopy timeZone];
      v35 = [v33 validityIntervalForLocalStartDate:v30 localEndDate:v32 timeZone:timeZone3];

      if (v54[3])
      {
        *(v54 + 24) = 1;
      }

      else
      {
        v36 = [v40 isCancelledWithProgress:1.0];
        *(v54 + 24) = v36;
        if ((v36 & 1) == 0)
        {
          v12 = [objc_opt_class() memoryTriggerResultsForMemoryNodesArray:v27 withValidityInterval:v35];
LABEL_30:

          goto LABEL_31;
        }
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v58 = 70;
        v59 = 2080;
        v60 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerBeginningOfMonth.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v12 = MEMORY[0x277CBEBF8];
      goto LABEL_30;
    }

    if (v54[3])
    {
      *(v54 + 24) = 1;
    }

    else
    {
      v29 = [reporterCopy isCancelledWithProgress:1.0];
      *(v54 + 24) = v29;
      if ((v29 & 1) == 0)
      {
LABEL_14:
        v12 = MEMORY[0x277CBEBF8];
LABEL_32:

        goto LABEL_33;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v58 = 73;
      v59 = 2080;
      v60 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerBeginningOfMonth.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    goto LABEL_14;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v58 = 42;
    v59 = 2080;
    v60 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerBeginningOfMonth.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v12 = MEMORY[0x277CBEBF8];
LABEL_33:
  _Block_object_dispose(&v53, 8);

  v38 = *MEMORY[0x277D85DE8];

  return v12;
}

uint64_t __88__PGMemoryTriggerBeginningOfMonth_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke(uint64_t a1, _BYTE *a2)
{
  v4 = *(*(a1 + 40) + 8);
  if (*(v4 + 24))
  {
    result = 1;
  }

  else
  {
    result = [*(a1 + 32) isCancelledWithProgress:0.5];
    v4 = *(*(a1 + 40) + 8);
  }

  *(v4 + 24) = result;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a2 = 1;
  }

  return result;
}

- (PGMemoryTriggerBeginningOfMonth)initWithLoggingConnection:(id)connection momentNodesWithBlockedFeatureCache:(id)cache
{
  cacheCopy = cache;
  v11.receiver = self;
  v11.super_class = PGMemoryTriggerBeginningOfMonth;
  v8 = [(PGMemoryTrigger *)&v11 initWithLoggingConnection:connection];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_momentNodesWithBlockedFeatureCache, cache);
  }

  return v9;
}

@end