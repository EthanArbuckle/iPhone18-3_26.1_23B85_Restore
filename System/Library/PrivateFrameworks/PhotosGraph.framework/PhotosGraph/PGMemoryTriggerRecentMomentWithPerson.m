@interface PGMemoryTriggerRecentMomentWithPerson
- (id)relevantFeatureNodesInFeatureNodes:(id)a3;
- (id)resultsTriggeredWithContext:(id)a3 inGraph:(id)a4 progressReporter:(id)a5;
@end

@implementation PGMemoryTriggerRecentMomentWithPerson

- (id)resultsTriggeredWithContext:(id)a3 inGraph:(id)a4 progressReporter:(id)a5
{
  v68 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v10 isCancelledWithProgress:0.0])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v65 = 42;
      v66 = 2080;
      v67 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerRecentMomentWithPerson.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v11 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v12 = [v8 localDate];
    v13 = MEMORY[0x277D27690];
    [v8 timeZone];
    v14 = v47 = self;
    v57 = v12;
    v15 = [v13 universalDateFromLocalDate:v12 inTimeZone:v14];

    v16 = [MEMORY[0x277D27690] dateByAddingDays:-10 toDate:v15];
    v56 = v15;
    v17 = [MEMORY[0x277D27690] dateByAddingDays:-3 toDate:v15];
    v18 = MEMORY[0x277D27690];
    v19 = [v8 timeZone];
    v20 = [v18 localDateFromUniversalDate:v16 inTimeZone:v19];

    v21 = MEMORY[0x277D27690];
    v22 = [v8 timeZone];
    v54 = v17;
    v23 = [v21 localDateFromUniversalDate:v17 inTimeZone:v22];

    v52 = v23;
    v53 = v20;
    v51 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v20 endDate:v23];
    v24 = [v9 dateNodesForLocalDateInterval:?];
    v25 = [v24 momentNodes];
    v26 = [v25 personNodes];

    v55 = v16;
    v27 = [MEMORY[0x277D27690] dateByAddingDays:-1 toDate:v16];
    v28 = [MEMORY[0x277D27690] dateByAddingDays:-90 toDate:v27];
    v29 = MEMORY[0x277D27690];
    v30 = [v8 timeZone];
    v49 = v28;
    v31 = [v29 localDateFromUniversalDate:v28 inTimeZone:v30];

    v32 = MEMORY[0x277D27690];
    v33 = [v8 timeZone];
    v50 = v27;
    v34 = [v32 localDateFromUniversalDate:v27 inTimeZone:v33];

    v48 = v31;
    v46 = v34;
    v35 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v31 endDate:v34];
    v36 = [PGGraphMomentNodeCollection momentNodesForLocalDateInterval:v35 inGraph:v9];
    v37 = [v36 personNodes];
    v38 = [v26 collectionBySubtracting:v37];
    v58 = v9;
    v39 = [v9 meNodeCollection];
    v40 = [v38 collectionBySubtracting:v39];

    v41 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __94__PGMemoryTriggerRecentMomentWithPerson_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke;
    v59[3] = &unk_278881DD0;
    v60 = v24;
    v61 = v47;
    v62 = v8;
    v42 = v41;
    v63 = v42;
    v43 = v24;
    [v40 enumerateIdentifiersAsCollectionsWithBlock:v59];
    if ([v10 isCancelledWithProgress:1.0])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v65 = 82;
        v66 = 2080;
        v67 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerRecentMomentWithPerson.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v11 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v11 = v42;
    }

    v9 = v58;
  }

  v44 = *MEMORY[0x277D85DE8];

  return v11;
}

void __94__PGMemoryTriggerRecentMomentWithPerson_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [v5 momentNodes];
  v7 = [v6 dateNodes];
  v21 = [v4 collectionByIntersecting:v7];

  v8 = [v21 localDateInterval];
  v9 = [v8 endDate];

  v10 = [v9 dateByAddingTimeInterval:864000.0];
  v11 = [v9 dateByAddingTimeInterval:259200.0];
  v12 = *(a1 + 40);
  v13 = objc_opt_class();
  v14 = [*(a1 + 48) timeZone];
  v15 = [v13 validityIntervalForLocalStartDate:v11 localEndDate:v10 timeZone:v14];

  v16 = [v5 featureNodeCollection];

  v17 = [v16 memoryNodes];

  v18 = *(a1 + 56);
  v19 = *(a1 + 40);
  v20 = [objc_opt_class() memoryTriggerResultsForMemoryNodes:v17 withValidityInterval:v15];
  [v18 addObjectsFromArray:v20];
}

- (id)relevantFeatureNodesInFeatureNodes:(id)a3
{
  v3 = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection subsetInCollection:a3];
  v4 = [v3 featureNodeCollection];

  return v4;
}

@end