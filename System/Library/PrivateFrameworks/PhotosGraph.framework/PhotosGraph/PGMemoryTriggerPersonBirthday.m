@interface PGMemoryTriggerPersonBirthday
- (id)relevantFeatureNodesInFeatureNodes:(id)a3;
- (id)resultsTriggeredWithContext:(id)a3 inGraph:(id)a4 progressReporter:(id)a5;
@end

@implementation PGMemoryTriggerPersonBirthday

- (id)resultsTriggeredWithContext:(id)a3 inGraph:(id)a4 progressReporter:(id)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v9 isCancelledWithProgress:0.0])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v34 = 33;
      v35 = 2080;
      v36 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerPersonBirthday.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v10 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v11 = [v7 localDate];
    v12 = [PGGraphMonthDayNodeCollection monthDayNodesForLocalDate:v11 inGraph:v8];

    v13 = [v12 birthdayPersonNodes];
    v14 = MEMORY[0x277D22BF8];
    v15 = +[PGGraphFeatureNodeCollection memoryOfFeature];
    v16 = [v14 adjacencyWithSources:v13 relation:v15 targetsClass:objc_opt_class()];

    if ([v16 sourcesCount])
    {
      v17 = [PGGraphMemoryNodeCollection memoryNodesOfCategory:3 inGraph:v8];
      v18 = [v16 intersectingTargetsWith:v17];

      if ([v18 sourcesCount])
      {
        v29 = v17;
        v28 = [(PGGraphNodeCollection *)PGGraphOverTheYearsNodeCollection nodesInGraph:v8];
        v19 = [v28 featureNodeCollection];
        v20 = [v19 memoryNodes];

        v21 = objc_alloc_init(MEMORY[0x277D22BD0]);
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __86__PGMemoryTriggerPersonBirthday_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke;
        v30[3] = &unk_278884B88;
        v27 = v20;
        v31 = v27;
        v22 = v21;
        v32 = v22;
        [v18 enumerateTargetsBySourceWithBlock:v30];
        if ([v22 count])
        {
          v23 = [objc_opt_class() singleDayValidityIntervalWithContext:v7];
          v24 = [(MAElementCollection *)[PGGraphMemoryNodeCollection alloc] initWithGraph:v8 elementIdentifiers:v22];
          if ([v9 isCancelledWithProgress:1.0])
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              v34 = 71;
              v35 = 2080;
              v36 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerPersonBirthday.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

            v10 = MEMORY[0x277CBEBF8];
          }

          else
          {
            v10 = [objc_opt_class() memoryTriggerResultsForMemoryNodes:v24 withValidityInterval:v23];
          }
        }

        else
        {
          if ([v9 isCancelledWithProgress:1.0] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v34 = 65;
            v35 = 2080;
            v36 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerPersonBirthday.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v10 = MEMORY[0x277CBEBF8];
        }

        v17 = v29;
      }

      else
      {
        if ([v9 isCancelledWithProgress:1.0] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v34 = 46;
          v35 = 2080;
          v36 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerPersonBirthday.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v10 = MEMORY[0x277CBEBF8];
      }
    }

    else
    {
      if ([v9 isCancelledWithProgress:1.0] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v34 = 39;
        v35 = 2080;
        v36 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerPersonBirthday.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v10 = MEMORY[0x277CBEBF8];
      v18 = v16;
    }
  }

  v25 = *MEMORY[0x277D85DE8];

  return v10;
}

void __86__PGMemoryTriggerPersonBirthday_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = a3;
  v4 = [v10 collectionByIntersecting:*(a1 + 32)];
  v5 = [v4 count];
  v6 = *(a1 + 40);
  v7 = v5 == 0;
  v8 = v10;
  if (!v7)
  {
    v8 = v4;
  }

  v9 = [v8 elementIdentifiers];
  [v6 unionWithIdentifierSet:v9];
}

- (id)relevantFeatureNodesInFeatureNodes:(id)a3
{
  v3 = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection subsetInCollection:a3];
  v4 = [v3 featureNodeCollection];

  return v4;
}

@end