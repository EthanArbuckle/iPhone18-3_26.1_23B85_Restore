@interface PGPersonMemoryGenerator
- (PGPersonMemoryGenerator)initWithMemoryGenerationContext:(id)a3;
- (id)keyAssetCurationOptionsWithTriggeredMemory:(id)a3 inGraph:(id)a4;
- (id)titleGeneratorForTriggeredMemory:(id)a3 withKeyAsset:(id)a4 curatedAssets:(id)a5 extendedCuratedAssets:(id)a6 titleGenerationContext:(id)a7 inGraph:(id)a8;
- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)a3;
- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)a3 usingBlock:(id)a4;
@end

@implementation PGPersonMemoryGenerator

- (id)titleGeneratorForTriggeredMemory:(id)a3 withKeyAsset:(id)a4 curatedAssets:(id)a5 extendedCuratedAssets:(id)a6 titleGenerationContext:(id)a7 inGraph:(id)a8
{
  v40 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a7;
  v12 = [v10 memoryFeatureNodes];
  if ([v12 count])
  {
    v13 = [v10 memoryMomentNodes];
    if ([v13 count])
    {
      v14 = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection subsetInCollection:v12];
      if ([v14 count])
      {
        v15 = [v14 anyNode];
        if (v15)
        {
          v16 = [(PGGraphNodeCollection *)PGGraphSeasonNodeCollection subsetInCollection:v12];
          if ([v16 count])
          {
            v17 = [v16 anyNode];
            v18 = [v17 name];

            if ([v18 length])
            {
              v19 = [PGPeopleMemoryTitleGenerator alloc];
              v20 = [v13 temporarySet];
              [MEMORY[0x277CBEB98] setWithObject:v15];
              v36 = v16;
              v22 = v21 = v18;
              v23 = [(PGPeopleMemoryTitleGenerator *)v19 initWithMomentNodes:v20 personNodes:v22 seasonName:v21 type:4 titleGenerationContext:v11];

              v18 = v21;
              v16 = v36;
            }

            else
            {
              v29 = [(PGMemoryGenerator *)self loggingConnection];
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                [v16 description];
                v32 = v16;
                v34 = v33 = v18;
                *buf = 138412290;
                v39 = v34;
                _os_log_error_impl(&dword_22F0FC000, v29, OS_LOG_TYPE_ERROR, "[PGPersonMemoryGenerator] No season name found for season node in collection %@", buf, 0xCu);

                v18 = v33;
                v16 = v32;
              }

              v23 = 0;
            }
          }

          else
          {
            v18 = [v13 temporarySet];
            v24 = [PGPeopleMemoryTitleGenerator peopleOverTimeTimeTitleOptionsWithMomentNodes:?];
            v37 = [(PGGraphNodeCollection *)PGGraphYearNodeCollection subsetInCollection:v12];
            if ([v37 count] == 1)
            {
              [v24 setFeaturedYearNodes:v37];
            }

            v25 = [PGPeopleMemoryTitleGenerator alloc];
            v26 = [MEMORY[0x277CBEB98] setWithObject:v15];
            v27 = v24;
            v35 = v24;
            v28 = v26;
            v23 = [(PGPeopleMemoryTitleGenerator *)v25 initWithMomentNodes:v18 personNodes:v26 timeTitleOptions:v27 type:0 titleGenerationContext:v11];
          }
        }

        else
        {
          v16 = [(PGMemoryGenerator *)self loggingConnection];
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_22F0FC000, v16, OS_LOG_TYPE_ERROR, "[PGPersonMemoryGenerator] unable to cast personNodeCollection.anyNode to PGGraphPersonNode", buf, 2u);
          }

          v23 = 0;
        }
      }

      else
      {
        v15 = [(PGMemoryGenerator *)self loggingConnection];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_22F0FC000, v15, OS_LOG_TYPE_ERROR, "[PGPersonMemoryGenerator] personNodeCollection is empty", buf, 2u);
        }

        v23 = 0;
      }
    }

    else
    {
      v14 = [(PGMemoryGenerator *)self loggingConnection];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_22F0FC000, v14, OS_LOG_TYPE_ERROR, "[PGPersonMemoryGenerator] momentNodes is empty", buf, 2u);
      }

      v23 = 0;
    }
  }

  else
  {
    v13 = [(PGMemoryGenerator *)self loggingConnection];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_ERROR, "[PGPersonMemoryGenerator] featureNodes is empty", buf, 2u);
    }

    v23 = 0;
  }

  v30 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)keyAssetCurationOptionsWithTriggeredMemory:(id)a3 inGraph:(id)a4
{
  v11.receiver = self;
  v11.super_class = PGPersonMemoryGenerator;
  v5 = a3;
  v6 = [(PGMemoryGenerator *)&v11 keyAssetCurationOptionsWithTriggeredMemory:v5 inGraph:a4];
  v7 = [v5 memoryFeatureNodes];

  v8 = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection subsetInCollection:v7];

  v9 = [v8 localIdentifiers];
  [v6 setReferencePersonLocalIdentifiers:v9];

  return v6;
}

- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)a3 usingBlock:(id)a4
{
  v5 = a4;
  v6 = [PGGraphPersonNodeCollection personNodesExcludingMeInGraph:a3];
  v7 = MEMORY[0x277D22BF8];
  v8 = +[PGGraphFeatureNodeCollection momentOfFeature];
  v9 = [v7 adjacencyWithSources:v6 relation:v8 targetsClass:objc_opt_class()];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __81__PGPersonMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke;
  v11[3] = &unk_278880440;
  v12 = v5;
  v10 = v5;
  [v9 enumerateTargetsBySourceWithBlock:v11];
}

void __81__PGPersonMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = [a2 featureNodeCollection];
  (*(v6 + 16))(v6, v7, v8, a4);
}

- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)a3
{
  v3 = a3;
  v13 = *MEMORY[0x277D85DE8];
  if (a3 - 1 >= 3)
  {
    v5 = [(PGMemoryGenerator *)self loggingConnection];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = 138412546;
      v10 = v8;
      v11 = 1024;
      v12 = v3;
      _os_log_error_impl(&dword_22F0FC000, v5, OS_LOG_TYPE_ERROR, "[%@] Returning PHMemoryCategorySubcategoryNone for PGOverTimeMemoryType %d, this should never happen", &v9, 0x12u);
    }

    result = 0;
  }

  else
  {
    result = a3 | 0x7D0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (PGPersonMemoryGenerator)initWithMemoryGenerationContext:(id)a3
{
  v14.receiver = self;
  v14.super_class = PGPersonMemoryGenerator;
  v3 = [(PGMemoryGenerator *)&v14 initWithMemoryGenerationContext:a3];
  v4 = v3;
  if (v3)
  {
    v3->_requireSceneProcessingMeetsThresholdOverTime = 1;
    v3->_requireFaceProcessingMeetsThresholdOverTime = 1;
    v5 = objc_alloc_init(PGMemoryMomentRequirements);
    momentRequirements = v4->_momentRequirements;
    v4->_momentRequirements = v5;

    [(PGMemoryMomentRequirements *)v4->_momentRequirements setFilterUninterestingForMemories:1];
    [(PGMemoryMomentRequirements *)v4->_momentRequirements setMinimumNumberOfRelevantAssets:1];
    [(PGMemoryMomentRequirements *)v4->_momentRequirements setFilterMomentsWithNotEnoughScenesProcessed:1];
    v7 = +[PGOverTheYearsMemoryConfiguration strictDefaultOverTheYearsMemoryConfiguration];
    overTheYearsConfiguration = v4->_overTheYearsConfiguration;
    v4->_overTheYearsConfiguration = v7;

    [(PGOverTimeMemoryConfiguration *)v4->_overTheYearsConfiguration setMinimumNumberOfRelevantAssets:13];
    [(PGOverTimeMemoryConfiguration *)v4->_overTheYearsConfiguration setAboveMomentAverageContentScoreThreshold:0.5];
    v9 = +[PGFeaturedTimePeriodMemoryConfiguration strictDefaultFeaturedYearMemoryConfiguration];
    featuredYearConfiguration = v4->_featuredYearConfiguration;
    v4->_featuredYearConfiguration = v9;

    [(PGOverTimeMemoryConfiguration *)v4->_featuredYearConfiguration setMinimumNumberOfRelevantAssets:13];
    [(PGOverTimeMemoryConfiguration *)v4->_featuredYearConfiguration setAboveMomentAverageContentScoreThreshold:0.5];
    v11 = +[PGFeaturedTimePeriodMemoryConfiguration defaultFeaturedSeasonMemoryConfiguration];
    featuredSeasonConfiguration = v4->_featuredSeasonConfiguration;
    v4->_featuredSeasonConfiguration = v11;

    [(PGOverTimeMemoryConfiguration *)v4->_featuredSeasonConfiguration setMinimumNumberOfRelevantAssets:13];
    [(PGOverTimeMemoryConfiguration *)v4->_featuredSeasonConfiguration setAboveMomentAverageContentScoreThreshold:0.5];
  }

  return v4;
}

@end