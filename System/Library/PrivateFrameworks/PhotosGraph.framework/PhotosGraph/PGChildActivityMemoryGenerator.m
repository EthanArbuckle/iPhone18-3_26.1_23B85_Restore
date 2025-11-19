@interface PGChildActivityMemoryGenerator
- (PGChildActivityMemoryGenerator)initWithMemoryGenerationContext:(id)a3;
- (id)_supportedCompoundActivityLabels;
- (id)_supportedIndividualActivityLabels;
- (id)keyAssetCurationOptionsWithTriggeredMemory:(id)a3 inGraph:(id)a4;
- (id)titleGeneratorForTriggeredMemory:(id)a3 withKeyAsset:(id)a4 curatedAssets:(id)a5 extendedCuratedAssets:(id)a6 titleGenerationContext:(id)a7 inGraph:(id)a8;
- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)a3;
- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)a3 usingBlock:(id)a4;
@end

@implementation PGChildActivityMemoryGenerator

- (id)_supportedCompoundActivityLabels
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"PersonActionPlayingOnASwing", @"PersonActionPlayingOnASlide", 0}];
  v7[0] = v2;
  v3 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"PersonActionHugging", @"PersonActionKissing", 0}];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_supportedIndividualActivityLabels
{
  v7[8] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CBEB58]);
  v7[0] = @"PersonBeachWater";
  v7[1] = @"PersonToys";
  v7[2] = @"PersonPlayground";
  v7[3] = @"PersonSoccer";
  v7[4] = @"PersonMartialArts";
  v7[5] = @"PersonActionSwimming";
  v7[6] = @"PersonActionJumpingOrLeaping";
  v7[7] = @"PersonActionRunningOrJogging";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:8];
  v4 = [v2 initWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)titleGeneratorForTriggeredMemory:(id)a3 withKeyAsset:(id)a4 curatedAssets:(id)a5 extendedCuratedAssets:(id)a6 titleGenerationContext:(id)a7 inGraph:(id)a8
{
  v36 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a7;
  v12 = [v10 memoryMomentNodes];
  v13 = [v12 temporarySet];

  v14 = [v10 memoryFeatureNodes];
  v15 = [(PGGraphNodeCollection *)PGGraphPersonActivityMeaningNodeCollection subsetInCollection:v14];

  v16 = [v15 personActivityMeaningLabels];
  if ([v16 count])
  {
    v17 = [v15 personNodes];
    if ([v17 count] >= 2)
    {
      v18 = [(PGMemoryGenerator *)self loggingConnection];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v35 = v15;
        _os_log_error_impl(&dword_22F0FC000, v18, OS_LOG_TYPE_ERROR, "[PGChildActivityMemoryGenerator] More than 1 child found in activityNode:%@", buf, 0xCu);
      }
    }

    v19 = [v17 anyNode];
    v20 = [(PGMemoryGenerator *)self memoryGenerationContext];
    v21 = [v20 serviceManager];
    v22 = [PGPeopleTitleUtility nameFromPersonNode:v19 serviceManager:v21];

    v23 = [PGChildActivityMemoryTitleGenerator alloc];
    v24 = [(PGMemoryGenerator *)self loggingConnection];
    v33 = v13;
    v25 = v13;
    v26 = v11;
    v27 = [(PGChildActivityMemoryTitleGenerator *)v23 initWithMomentNodes:v25 activityLabels:v16 childName:v22 titleGenerationContext:v11 loggingConnection:v24];

    v28 = [v10 memoryFeatureNodes];
    v29 = [(PGGraphNodeCollection *)PGGraphYearNodeCollection subsetInCollection:v28];

    if ([v29 count] == 1)
    {
      [(PGTitleGenerator *)v27 setFeaturedYearNodes:v29];
    }

    v11 = v26;
    v13 = v33;
  }

  else
  {
    v27 = 0;
  }

  v30 = *MEMORY[0x277D85DE8];

  return v27;
}

- (id)keyAssetCurationOptionsWithTriggeredMemory:(id)a3 inGraph:(id)a4
{
  v11.receiver = self;
  v11.super_class = PGChildActivityMemoryGenerator;
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
  v43 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [PGGraphPersonNodeCollection personNodesInAgeCategories:&unk_284486240 includingMe:0 inGraph:a3];
  if ([v7 count])
  {
    v31 = v6;
    v8 = [(PGChildActivityMemoryGenerator *)self _supportedIndividualActivityLabels];
    v9 = [(PGChildActivityMemoryGenerator *)self _supportedCompoundActivityLabels];
    v10 = [objc_alloc(MEMORY[0x277CBEB58]) initWithSet:v8];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v38;
      do
      {
        v15 = 0;
        do
        {
          if (*v38 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [v10 unionSet:*(*(&v37 + 1) + 8 * v15++)];
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v13);
    }

    v16 = MEMORY[0x277D22C90];
    v17 = +[PGGraphPersonNode personActivityMeaningOfPerson];
    v41[0] = v17;
    v18 = [PGGraphPersonActivityMeaningNode filterWithActivityLabels:v10];
    v19 = [v18 relation];
    v41[1] = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:2];
    v21 = [v16 chain:v20];

    v22 = [MEMORY[0x277D22BF8] adjacencyWithSources:v7 relation:v21 targetsClass:objc_opt_class()];
    v23 = MEMORY[0x277D22BF8];
    v24 = [v22 targets];
    v25 = +[PGGraphFeatureNodeCollection momentOfFeature];
    v26 = [v23 adjacencyWithSources:v24 relation:v25 targetsClass:objc_opt_class()];

    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __88__PGChildActivityMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke;
    v32[3] = &unk_278885620;
    v32[4] = self;
    v33 = v11;
    v34 = v26;
    v6 = v31;
    v35 = v8;
    v36 = v31;
    v27 = v8;
    v28 = v26;
    v29 = v11;
    [v22 enumerateTargetsBySourceWithBlock:v32];
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __88__PGChildActivityMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke(id *a1, void *a2, void *a3)
{
  v46 = *MEMORY[0x277D85DE8];
  v30 = a2;
  v5 = a3;
  v6 = [a1[4] loggingConnection];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v30 localIdentifiers];
    v8 = [v7 anyObject];
    v9 = [v5 personActivityMeaningLabels];
    *buf = 138412546;
    v43 = v8;
    v44 = 2112;
    v45 = v9;
    _os_log_impl(&dword_22F0FC000, v6, OS_LOG_TYPE_INFO, "[PGChildActivityMemoryGenerator] Generate activity memories for child %@ with activity meanings:%@", buf, 0x16u);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = a1[5];
  v10 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v38;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v38 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v37 + 1) + 8 * i);
        v15 = [a1[4] loggingConnection];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v43 = v14;
          _os_log_impl(&dword_22F0FC000, v15, OS_LOG_TYPE_INFO, "[PGChildActivityMemoryGenerator] Generate compound activities: %@", buf, 0xCu);
        }

        v16 = [v5 subsetWithActivityLabels:v14];
        v17 = [v16 count];
        v18 = [a1[4] loggingConnection];
        v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
        if (v17)
        {
          if (v19)
          {
            v20 = [v16 labels];
            *buf = 138412290;
            v43 = v20;
            _os_log_impl(&dword_22F0FC000, v18, OS_LOG_TYPE_INFO, "[PGChildActivityMemoryGenerator] Found compound activities: %@", buf, 0xCu);
          }

          v18 = [a1[6] targetsForSources:v16];
          v21 = [v16 featureNodeCollection];
          v22 = [v30 featureNodeCollection];
          v23 = [v21 collectionByFormingUnionWith:v22];

          (*(a1[8] + 2))();
        }

        else if (v19)
        {
          *buf = 0;
          _os_log_impl(&dword_22F0FC000, v18, OS_LOG_TYPE_INFO, "[PGChildActivityMemoryGenerator] Cannot find any of the compound activities", buf, 2u);
        }
      }

      v11 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v11);
  }

  v24 = [v5 subsetWithActivityLabels:a1[7]];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __88__PGChildActivityMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke_238;
  v31[3] = &unk_2788855F8;
  v25 = a1[7];
  v26 = a1[4];
  v32 = v25;
  v33 = v26;
  v34 = a1[6];
  v35 = v30;
  v36 = a1[8];
  v27 = v30;
  [v24 enumerateIdentifiersAsCollectionsWithBlock:v31];

  v28 = *MEMORY[0x277D85DE8];
}

void __88__PGChildActivityMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke_238(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 personActivityMeaningLabels];
  v6 = [v5 anyObject];

  if ([*(a1 + 32) containsObject:v6])
  {
    v7 = [*(a1 + 40) loggingConnection];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = v6;
      _os_log_impl(&dword_22F0FC000, v7, OS_LOG_TYPE_INFO, "[PGChildActivityMemoryGenerator] Generate for single activity: %@", &v13, 0xCu);
    }

    v8 = [*(a1 + 48) targetsForSources:v4];
    v9 = [v4 featureNodeCollection];
    v10 = [*(a1 + 56) featureNodeCollection];
    v11 = [v9 collectionByFormingUnionWith:v10];

    (*(*(a1 + 64) + 16))();
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)a3
{
  v13 = *MEMORY[0x277D85DE8];
  if (a3 == 1)
  {
    result = 15001;
  }

  else
  {
    v3 = a3;
    if (a3 == 3)
    {
      result = 15002;
    }

    else
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
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (PGChildActivityMemoryGenerator)initWithMemoryGenerationContext:(id)a3
{
  v16.receiver = self;
  v16.super_class = PGChildActivityMemoryGenerator;
  v3 = [(PGMemoryGenerator *)&v16 initWithMemoryGenerationContext:a3];
  v4 = v3;
  if (v3)
  {
    v3->_requireSceneProcessingMeetsThresholdOverTime = 1;
    v3->_requireFaceProcessingMeetsThresholdOverTime = 1;
    v5 = objc_alloc_init(PGMemoryMomentRequirements);
    momentRequirements = v4->_momentRequirements;
    v4->_momentRequirements = v5;

    [(PGMemoryMomentRequirements *)v4->_momentRequirements setMinimumNumberOfRelevantAssets:3];
    [(PGMemoryMomentRequirements *)v4->_momentRequirements setFilterMomentsWithNotEnoughScenesProcessed:1];
    v7 = +[PGOverTheYearsMemoryConfiguration defaultOverTheYearsMemoryConfiguration];
    overTheYearsConfiguration = v4->_overTheYearsConfiguration;
    v4->_overTheYearsConfiguration = v7;

    [(PGOverTimeMemoryConfiguration *)v4->_overTheYearsConfiguration setMinimumNumberOfMoments:2];
    [(PGOverTheYearsMemoryConfiguration *)v4->_overTheYearsConfiguration setMinimumNumberOfMomentsForTwoConsecutiveYears:4];
    [(PGOverTimeMemoryConfiguration *)v4->_overTheYearsConfiguration setMinimumNumberOfRelevantAssets:13];
    v9 = +[PGFeaturedTimePeriodMemoryConfiguration defaultFeaturedYearMemoryConfiguration];
    featuredYearConfiguration = v4->_featuredYearConfiguration;
    v4->_featuredYearConfiguration = v9;

    [(PGOverTimeMemoryConfiguration *)v4->_featuredYearConfiguration setMinimumNumberOfMoments:4];
    [(PGOverTimeMemoryConfiguration *)v4->_featuredYearConfiguration setMinimumMomentSpreadicityTimeInterval:604800.0];
    [(PGOverTimeMemoryConfiguration *)v4->_featuredYearConfiguration setMinimumOverallTimeIntervalOfMoments:7889400.0];
    [(PGOverTimeMemoryConfiguration *)v4->_featuredYearConfiguration setMinimumNumberOfRelevantAssets:13];
    v4->_minimumNumberOfDefaultMemories = 3;
    v11 = +[PGOverTheYearsMemoryConfiguration defaultFallbackOverTheYearsMemoryConfiguration];
    fallbackOverTheYearsConfiguration = v4->_fallbackOverTheYearsConfiguration;
    v4->_fallbackOverTheYearsConfiguration = v11;

    [(PGOverTimeMemoryConfiguration *)v4->_fallbackOverTheYearsConfiguration setMinimumNumberOfMoments:2];
    v13 = +[PGFeaturedTimePeriodMemoryConfiguration defaultFallbackFeaturedYearMemoryConfiguration];
    fallbackFeaturedYearConfiguration = v4->_fallbackFeaturedYearConfiguration;
    v4->_fallbackFeaturedYearConfiguration = v13;

    [(PGOverTimeMemoryConfiguration *)v4->_fallbackFeaturedYearConfiguration setMinimumOverallTimeIntervalOfMoments:7889400.0];
  }

  return v4;
}

@end