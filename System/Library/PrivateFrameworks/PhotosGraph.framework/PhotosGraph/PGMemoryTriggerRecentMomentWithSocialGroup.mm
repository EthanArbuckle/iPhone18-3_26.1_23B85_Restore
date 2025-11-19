@interface PGMemoryTriggerRecentMomentWithSocialGroup
- (id)relevantFeatureNodesInFeatureNodes:(id)a3;
- (id)resultsTriggeredWithContext:(id)a3 inGraph:(id)a4 progressReporter:(id)a5;
@end

@implementation PGMemoryTriggerRecentMomentWithSocialGroup

- (id)resultsTriggeredWithContext:(id)a3 inGraph:(id)a4 progressReporter:(id)a5
{
  v75 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v10 isCancelledWithProgress:0.0])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v72 = 39;
      v73 = 2080;
      v74 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerRecentMomentWithSocialGroup.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v11 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v59 = self;
    v12 = [v8 localDate];
    v13 = MEMORY[0x277D27690];
    v14 = [v8 timeZone];
    v15 = [v13 universalDateFromLocalDate:v12 inTimeZone:v14];

    v16 = [MEMORY[0x277D27690] dateByAddingDays:-10 toDate:v15];
    v63 = v15;
    v17 = [MEMORY[0x277D27690] dateByAddingDays:-3 toDate:v15];
    v18 = MEMORY[0x277D27690];
    v19 = [v8 timeZone];
    [v18 localDateFromUniversalDate:v16 inTimeZone:v19];
    v21 = v20 = v9;

    v22 = MEMORY[0x277D27690];
    v23 = [v8 timeZone];
    v62 = v17;
    v24 = [v22 localDateFromUniversalDate:v17 inTimeZone:v23];

    v25 = objc_alloc(MEMORY[0x277CCA970]);
    v60 = v24;
    v61 = v21;
    v26 = v21;
    v9 = v20;
    v27 = [v25 initWithStartDate:v26 endDate:v24];
    v28 = [PGGraphMomentNodeCollection momentNodesForLocalDateInterval:v27 inGraph:v20];
    v29 = [v28 socialGroupNodes];
    if ([v29 count])
    {
      v56 = v27;
      v57 = v16;
      v58 = v12;
      v30 = [MEMORY[0x277D27690] dateByAddingDays:-1 toDate:v16];
      v31 = [MEMORY[0x277D27690] dateByAddingDays:-90 toDate:v30];
      v32 = MEMORY[0x277D27690];
      v33 = [v8 timeZone];
      v54 = v31;
      v34 = v31;
      v35 = v30;
      v36 = [v32 localDateFromUniversalDate:v34 inTimeZone:v33];

      v37 = MEMORY[0x277D27690];
      v38 = [v8 timeZone];
      v39 = [v37 localDateFromUniversalDate:v35 inTimeZone:v38];

      v52 = v39;
      v53 = v36;
      v51 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v36 endDate:v39];
      v50 = [PGGraphMomentNodeCollection momentNodesForLocalDateInterval:"momentNodesForLocalDateInterval:inGraph:" inGraph:?];
      [v50 socialGroupNodes];
      v49 = v55 = v29;
      v40 = [v29 collectionBySubtracting:?];
      v41 = objc_alloc_init(MEMORY[0x277D22BD0]);
      v69[0] = MEMORY[0x277D85DD0];
      v69[1] = 3221225472;
      v69[2] = __99__PGMemoryTriggerRecentMomentWithSocialGroup_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke;
      v69[3] = &unk_278882150;
      v42 = v41;
      v70 = v42;
      [v40 enumerateIdentifiersAsCollectionsWithBlock:v69];
      v43 = [(MAElementCollection *)[PGGraphSocialGroupNodeCollection alloc] initWithGraph:v9 elementIdentifiers:v42];
      v44 = [v40 collectionBySubtracting:v43];

      v45 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v64[0] = MEMORY[0x277D85DD0];
      v64[1] = 3221225472;
      v64[2] = __99__PGMemoryTriggerRecentMomentWithSocialGroup_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke_2;
      v64[3] = &unk_27887F740;
      v65 = v28;
      v66 = v59;
      v67 = v8;
      v46 = v45;
      v68 = v46;
      [v44 enumerateIdentifiersAsCollectionsWithBlock:v64];
      if ([v10 isCancelledWithProgress:1.0])
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v72 = 96;
          v73 = 2080;
          v74 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerRecentMomentWithSocialGroup.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v11 = MEMORY[0x277CBEBF8];
      }

      else
      {
        v11 = v46;
      }

      v16 = v57;
      v12 = v58;
      v29 = v55;
      v27 = v56;
    }

    else
    {
      if ([v10 isCancelledWithProgress:1.0] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v72 = 55;
        v73 = 2080;
        v74 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerRecentMomentWithSocialGroup.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v11 = MEMORY[0x277CBEBF8];
    }
  }

  v47 = *MEMORY[0x277D85DE8];

  return v11;
}

void __99__PGMemoryTriggerRecentMomentWithSocialGroup_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v4 = [v8 personNodes];
  v5 = [v4 count];

  if (v5 == 1)
  {
    v6 = *(a1 + 32);
    v7 = [v8 elementIdentifiers];
    [v6 unionWithIdentifierSet:v7];
  }
}

void __99__PGMemoryTriggerRecentMomentWithSocialGroup_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [v5 momentNodes];
  v20 = [v4 collectionByFormingUnionWith:v6];

  v7 = [v20 localDateInterval];
  v8 = [v7 endDate];

  v9 = [v8 dateByAddingTimeInterval:864000.0];
  v10 = [v8 dateByAddingTimeInterval:259200.0];
  v11 = *(a1 + 40);
  v12 = objc_opt_class();
  v13 = [*(a1 + 48) timeZone];
  v14 = [v12 validityIntervalForLocalStartDate:v10 localEndDate:v9 timeZone:v13];

  v15 = [v5 featureNodeCollection];

  v16 = [v15 memoryNodes];

  v17 = *(a1 + 56);
  v18 = *(a1 + 40);
  v19 = [objc_opt_class() memoryTriggerResultsForMemoryNodes:v16 withValidityInterval:v14];
  [v17 addObjectsFromArray:v19];
}

- (id)relevantFeatureNodesInFeatureNodes:(id)a3
{
  v3 = [(PGGraphNodeCollection *)PGGraphSocialGroupNodeCollection subsetInCollection:a3];
  v4 = [v3 featureNodeCollection];

  return v4;
}

@end