@interface PGLastMonthAtHomeMemoryGenerator
+ (id)lastMonthAtHomeMemoriesForMonth:(int64_t)month year:(int64_t)year inGraph:(id)graph momentNodesWithBlockedFeatureCache:(id)cache photoLibrary:(id)library loggingConnection:(id)connection progressReporter:(id)reporter;
- (id)titleGeneratorForTriggeredMemory:(id)memory withKeyAsset:(id)asset curatedAssets:(id)assets extendedCuratedAssets:(id)curatedAssets titleGenerationContext:(id)context inGraph:(id)graph;
@end

@implementation PGLastMonthAtHomeMemoryGenerator

+ (id)lastMonthAtHomeMemoriesForMonth:(int64_t)month year:(int64_t)year inGraph:(id)graph momentNodesWithBlockedFeatureCache:(id)cache photoLibrary:(id)library loggingConnection:(id)connection progressReporter:(id)reporter
{
  v66[2] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  cacheCopy = cache;
  libraryCopy = library;
  connectionCopy = connection;
  reporterCopy = reporter;
  if (libraryCopy)
  {
    v19 = [[PGMemoryProcessedScenesAndFacesCache alloc] initWithPhotoLibrary:libraryCopy];
  }

  else
  {
    if (os_log_type_enabled(connectionCopy, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22F0FC000, connectionCopy, OS_LOG_TYPE_INFO, "[PGLastMonthAtHomeMemoryGenerator] +lastMonthAtHomeMemoriesForMonth: was passed in a nil photoLibrary, not checking if moments have their scenes processed.", buf, 2u);
    }

    v19 = 0;
  }

  v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v21 = [(PGGraphNodeCollection *)PGGraphMeNodeCollection nodesInGraph:graphCopy];
  if ([v21 count])
  {
    monthCopy = month;
    homeNodes = [v21 homeNodes];
    if ([homeNodes count])
    {
      v54 = v19;
      v55 = reporterCopy;
      v53 = cacheCopy;
      v23 = [PGGraphMonthNodeCollection monthNodesForMonth:monthCopy inGraph:graphCopy];
      v24 = [PGGraphYearNodeCollection yearNodesForYear:year inGraph:graphCopy];
      v52 = v23;
      dateNodes = [v23 dateNodes];
      v51 = v24;
      dateNodes2 = [v24 dateNodes];
      v27 = [dateNodes collectionByIntersecting:dateNodes2];

      v50 = v27;
      [v27 momentNodes];
      v28 = v47 = graphCopy;
      v29 = MEMORY[0x277D22C90];
      v30 = +[PGGraphMomentNode addressOfMoment];
      v66[0] = v30;
      +[PGGraphAddressNode homeOfAddress];
      v31 = v46 = year;
      v66[1] = v31;
      v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:2];
      v33 = [v29 chain:v32];

      v48 = v33;
      v49 = v28;
      v34 = [MEMORY[0x277D22BF8] adjacencyWithSources:v28 relation:v33 targetsClass:objc_opt_class()];
      v35 = [v34 intersectingTargetsWith:homeNodes];

      if ([v35 sourcesCount])
      {
        graphCopy = v47;
        v36 = [v53 momentNodesWithBlockedFeatureInGraph:v47 progressReporter:v55];
        [v35 subtractingSourcesWith:v36];
        v37 = v57 = libraryCopy;

        transposed = [v37 transposed];
        v58[0] = MEMORY[0x277D85DD0];
        v58[1] = 3221225472;
        v58[2] = __164__PGLastMonthAtHomeMemoryGenerator_lastMonthAtHomeMemoriesForMonth_year_inGraph_momentNodesWithBlockedFeatureCache_photoLibrary_loggingConnection_progressReporter___block_invoke;
        v58[3] = &unk_278882F40;
        v19 = v54;
        v59 = v54;
        v39 = v20;
        v60 = v39;
        v61 = connectionCopy;
        [transposed enumerateTargetsBySourceWithBlock:v58];

        v40 = v39;
        cacheCopy = v53;

        v35 = v37;
        reporterCopy = v55;
        libraryCopy = v57;
      }

      else
      {
        graphCopy = v47;
        cacheCopy = v53;
        reporterCopy = v55;
        if (os_log_type_enabled(connectionCopy, OS_LOG_TYPE_INFO))
        {
          *buf = 67109376;
          v63 = monthCopy;
          v64 = 1024;
          v65 = v46;
          _os_log_impl(&dword_22F0FC000, connectionCopy, OS_LOG_TYPE_INFO, "[PGLastMonthAtHomeMemoryGenerator] No moments detected at home in month: %d year: %d", buf, 0xEu);
        }

        v43 = v20;
        v19 = v54;
      }
    }

    else
    {
      if (os_log_type_enabled(connectionCopy, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22F0FC000, connectionCopy, OS_LOG_TYPE_INFO, "[PGLastMonthAtHomeMemoryGenerator] No home nodes found for me node. Not generating last month at home memories.", buf, 2u);
      }

      v42 = v20;
    }
  }

  else
  {
    if (os_log_type_enabled(connectionCopy, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22F0FC000, connectionCopy, OS_LOG_TYPE_INFO, "[PGLastMonthAtHomeMemoryGenerator] No me node found in graph. Not generating last month at home memories.", buf, 2u);
    }

    v41 = v20;
  }

  v44 = *MEMORY[0x277D85DE8];

  return v20;
}

void __164__PGLastMonthAtHomeMemoryGenerator_lastMonthAtHomeMemoriesForMonth_year_inGraph_momentNodesWithBlockedFeatureCache_photoLibrary_loggingConnection_progressReporter___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v6 interestingWithAlternateJunkingSubset];
  v8 = [v6 collectionByIntersecting:v7];
  v9 = [v8 count];

  if (v9 < 2)
  {
    v14 = *(a1 + 48);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = v14;
      v18[0] = 67109632;
      v18[1] = v9;
      v19 = 1024;
      v20 = [v6 count];
      v21 = 1024;
      v22 = 2;
      _os_log_impl(&dword_22F0FC000, v15, OS_LOG_TYPE_INFO, "[PGLastMonthAtHomeMemoryGenerator] Only %d interesting moments out of %d for home node, but excepted at least %d. Not generating memory.", v18, 0x14u);
    }
  }

  else
  {
    v10 = *(a1 + 32);
    if (v10 && ![v10 allMomentNodesInCollectionHaveScenesProcessed:v6])
    {
      v16 = *(a1 + 48);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        LOWORD(v18[0]) = 0;
        _os_log_impl(&dword_22F0FC000, v16, OS_LOG_TYPE_INFO, "[PGLastMonthAtHomeMemoryGenerator] Not all moments for home node have scenes processed, not generating memory.", v18, 2u);
      }
    }

    else
    {
      v11 = [PGGraphMemory alloc];
      v12 = [v5 featureNodeCollection];
      v13 = [(PGGraphMemory *)v11 initWithMemoryCategory:7 memoryCategorySubcategory:4001 momentNodes:v6 featureNodes:v12];

      [*(a1 + 40) addObject:v13];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)titleGeneratorForTriggeredMemory:(id)memory withKeyAsset:(id)asset curatedAssets:(id)assets extendedCuratedAssets:(id)curatedAssets titleGenerationContext:(id)context inGraph:(id)graph
{
  contextCopy = context;
  memoryCopy = memory;
  v11 = [PGHomeAggregationMemoryTitleGenerator alloc];
  memoryMomentNodes = [memoryCopy memoryMomentNodes];

  temporarySet = [memoryMomentNodes temporarySet];
  v14 = [(PGHomeAggregationMemoryTitleGenerator *)v11 initWithMomentNodes:temporarySet titleGenerationContext:contextCopy];

  return v14;
}

@end