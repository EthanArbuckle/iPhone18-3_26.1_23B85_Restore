@interface PGMemoryTriggerRecentHighlights
- (PGMemoryTriggerRecentHighlights)initWithLoggingConnection:(id)connection momentNodesWithBlockedFeatureCache:(id)cache;
- (id)resultsTriggeredWithContext:(id)context inGraph:(id)graph progressReporter:(id)reporter;
@end

@implementation PGMemoryTriggerRecentHighlights

- (id)resultsTriggeredWithContext:(id)context inGraph:(id)graph progressReporter:(id)reporter
{
  v79 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  graphCopy = graph;
  reporterCopy = reporter;
  v70 = 0;
  v71 = &v70;
  v72 = 0x2020000000;
  v73 = 0;
  v11 = [reporterCopy isCancelledWithProgress:0.0];
  *(v71 + 24) = v11;
  if (!v11)
  {
    localDate = [contextCopy localDate];
    timeZone = [contextCopy timeZone];
    creationDateOfLastMemory = [contextCopy creationDateOfLastMemory];
    v64 = [MEMORY[0x277D27690] dateByAddingDays:-92 toDate:localDate];
    v14 = objc_alloc(MEMORY[0x277CCA970]);
    v15 = [MEMORY[0x277D27690] startOfDayForDate:v64];
    v63 = [v14 initWithStartDate:v15 endDate:localDate];

    if (creationDateOfLastMemory)
    {
      v16 = [[PGMemoryDate alloc] initWithLocalDate:localDate];
      v17 = objc_alloc(MEMORY[0x277CCA970]);
      v18 = [(PGMemoryDate *)v16 universalDateInTimeZone:timeZone];
      v65 = [v17 initWithStartDate:creationDateOfLastMemory endDate:v18];

      [v65 duration];
      v20 = (v19 / 86400.0);
      if (v20 <= 20)
      {
        v12 = MEMORY[0x277CBEBF8];
LABEL_52:

        goto LABEL_53;
      }

      if (v20 <= 0x5C)
      {
        v21 = MEMORY[0x277D27690];
        v22 = [MEMORY[0x277D27690] localDateFromUniversalDate:creationDateOfLastMemory inTimeZone:timeZone];
        v23 = [v21 startOfDayForDate:v22];

        v24 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v23 endDate:localDate];
        v63 = v24;
      }
    }

    v25 = [PGGraphMomentNodeCollection momentNodesForLocalDateInterval:v63 inGraph:graphCopy];
    v26 = [(PGGraphNodeCollection *)PGGraphMomentNodeCollection nodesInGraph:graphCopy];
    subsetHappeningAtSensitiveLocation = [v26 subsetHappeningAtSensitiveLocation];
    [PGMemoryGeneratorUtils momentNodesAtHomeOrWorkOrFrequentLocationInGraph:graphCopy];
    v59 = v65 = v26;
    v27 = [subsetHappeningAtSensitiveLocation collectionBySubtracting:?];
    v16 = [v25 collectionBySubtracting:v27];
    v58 = v27;

    highlightNodes = [(PGMemoryDate *)v16 highlightNodes];
    highlightGroupNodes = [highlightNodes highlightGroupNodes];

    if ([highlightGroupNodes count])
    {
      v29 = [PGGraphHighlightTypeNodeCollection longTripTypeNodesInGraph:graphCopy];
      highlightGroupNodes2 = [v29 highlightGroupNodes];
      v31 = [highlightGroupNodes2 collectionByIntersecting:highlightGroupNodes];

      featureNodeCollection = [v31 featureNodeCollection];
      memoryNodes = [featureNodeCollection memoryNodes];

      v34 = [memoryNodes subsetWithMemoryCategory:19];

      if ([v34 count])
      {
        v35 = [objc_opt_class() singleDayValidityIntervalWithContext:contextCopy];
        if (v71[3])
        {
          *(v71 + 24) = 1;
        }

        else
        {
          v41 = [reporterCopy isCancelledWithProgress:1.0];
          *(v71 + 24) = v41;
          if ((v41 & 1) == 0)
          {
            v12 = [objc_opt_class() memoryTriggerResultsForMemoryNodes:v34 withValidityInterval:v35];
LABEL_36:

            goto LABEL_51;
          }
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v76 = 93;
          v77 = 2080;
          v78 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerRecentHighlights.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v12 = MEMORY[0x277CBEBF8];
        goto LABEL_36;
      }
    }

    numberOfAssets = [(PGMemoryDate *)v16 numberOfAssets];
    if ([(PGMemoryDate *)v16 count]>= 3 && numberOfAssets > 0xE)
    {
      v37 = MEMORY[0x277D22C80];
      v67[0] = MEMORY[0x277D85DD0];
      v67[1] = 3221225472;
      v67[2] = __88__PGMemoryTriggerRecentHighlights_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke;
      v67[3] = &unk_278889448;
      v69 = &v70;
      v38 = reporterCopy;
      v68 = v38;
      v39 = [v37 progressReporterWithProgressBlock:v67];
      v57 = [(PGMemoryMomentNodesWithBlockedFeatureCache *)self->_momentNodesWithBlockedFeatureCache momentNodesWithBlockedFeatureInGraph:graphCopy progressReporter:v39];
      if (*(v71 + 24) == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v76 = 109;
          v77 = 2080;
          v78 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerRecentHighlights.m";
          v40 = MEMORY[0x277D86220];
LABEL_42:
          _os_log_impl(&dword_22F0FC000, v40, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          goto LABEL_43;
        }

        goto LABEL_43;
      }

      v43 = [(PGMemoryDate *)v16 collectionBySubtracting:v57];

      interestingForMemoriesSubset = [v43 interestingForMemoriesSubset];

      v45 = [interestingForMemoriesSubset momentNodesWithContentScoreAbove:0.5];

      v16 = [v45 momentNodesWithMinimumNumberOfPersons:1];

      numberOfAssets2 = [(PGMemoryDate *)v16 numberOfAssets];
      if ([(PGMemoryDate *)v16 count]< 3 || numberOfAssets2 <= 0xE)
      {
        if (v71[3])
        {
          *(v71 + 24) = 1;
        }

        else
        {
          v51 = [v38 isCancelledWithProgress:1.0];
          *(v71 + 24) = v51;
          if ((v51 & 1) == 0)
          {
            goto LABEL_43;
          }
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v76 = 118;
          v77 = 2080;
          v78 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerRecentHighlights.m";
          v40 = MEMORY[0x277D86220];
          goto LABEL_42;
        }

LABEL_43:
        v12 = MEMORY[0x277CBEBF8];
LABEL_50:

        goto LABEL_51;
      }

      v47 = [PGGraphMemory alloc];
      featureNodeCollection2 = [(PGMemoryDate *)v16 featureNodeCollection];
      v49 = [(PGGraphMemory *)v47 initWithMemoryCategory:24 memoryCategorySubcategory:5002 momentNodes:v16 featureNodes:featureNodeCollection2];

      v50 = [objc_opt_class() singleDayValidityIntervalWithContext:contextCopy];
      if (v71[3])
      {
        *(v71 + 24) = 1;
      }

      else
      {
        v52 = [v38 isCancelledWithProgress:1.0];
        *(v71 + 24) = v52;
        if ((v52 & 1) == 0)
        {
          v53 = objc_opt_class();
          v74 = v49;
          v54 = [MEMORY[0x277CBEA60] arrayWithObjects:&v74 count:1];
          v12 = [v53 memoryTriggerResultsForMemoryNodesArray:v54 withValidityInterval:v50];

LABEL_49:
          goto LABEL_50;
        }
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v76 = 125;
        v77 = 2080;
        v78 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerRecentHighlights.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v12 = MEMORY[0x277CBEBF8];
      goto LABEL_49;
    }

    if (v71[3])
    {
      *(v71 + 24) = 1;
    }

    else
    {
      v42 = [reporterCopy isCancelledWithProgress:1.0];
      *(v71 + 24) = v42;
      if ((v42 & 1) == 0)
      {
LABEL_30:
        v12 = MEMORY[0x277CBEBF8];
LABEL_51:

        goto LABEL_52;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v76 = 101;
      v77 = 2080;
      v78 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerRecentHighlights.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    goto LABEL_30;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v76 = 52;
    v77 = 2080;
    v78 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerRecentHighlights.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v12 = MEMORY[0x277CBEBF8];
LABEL_53:
  _Block_object_dispose(&v70, 8);

  v55 = *MEMORY[0x277D85DE8];

  return v12;
}

uint64_t __88__PGMemoryTriggerRecentHighlights_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke(uint64_t a1, _BYTE *a2)
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

- (PGMemoryTriggerRecentHighlights)initWithLoggingConnection:(id)connection momentNodesWithBlockedFeatureCache:(id)cache
{
  cacheCopy = cache;
  v11.receiver = self;
  v11.super_class = PGMemoryTriggerRecentHighlights;
  v8 = [(PGMemoryTrigger *)&v11 initWithLoggingConnection:connection];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_momentNodesWithBlockedFeatureCache, cache);
  }

  return v9;
}

@end