@interface PGYearInReviewMemoryGenerator
- (PGYearInReviewMemoryGenerator)initWithMemoryGenerationContext:(id)a3;
- (id)keyAssetCurationOptionsWithTriggeredMemory:(id)a3 inGraph:(id)a4;
- (id)titleGeneratorForTriggeredMemory:(id)a3 withKeyAsset:(id)a4 curatedAssets:(id)a5 extendedCuratedAssets:(id)a6 titleGenerationContext:(id)a7 inGraph:(id)a8;
- (id)titleGeneratorWithYear:(int64_t)a3 titleGenerationContext:(id)a4;
- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)a3;
- (void)_enumeratePotentialMemoriesForProcessingWindow:(id)a3 graph:(id)a4 progressBlock:(id)a5 usingBlock:(id)a6;
- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)a3 usingBlock:(id)a4;
@end

@implementation PGYearInReviewMemoryGenerator

- (id)titleGeneratorForTriggeredMemory:(id)a3 withKeyAsset:(id)a4 curatedAssets:(id)a5 extendedCuratedAssets:(id)a6 titleGenerationContext:(id)a7 inGraph:(id)a8
{
  v21 = *MEMORY[0x277D85DE8];
  v10 = a7;
  v11 = [a3 memoryFeatureNodes];
  v12 = [(PGGraphNodeCollection *)PGGraphYearNodeCollection subsetInCollection:v11];

  if ([v12 count] == 1)
  {
    v13 = [v12 years];
    v14 = [v13 firstObject];
    v15 = [v14 integerValue];

    v16 = [(PGYearInReviewMemoryGenerator *)self titleGeneratorWithYear:v15 titleGenerationContext:v10];
  }

  else
  {
    v17 = [(PGMemoryGenerator *)self loggingConnection];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v20[0] = 67109120;
      v20[1] = [v12 count];
      _os_log_error_impl(&dword_22F0FC000, v17, OS_LOG_TYPE_ERROR, "[PGYearInReviewMemoryGenerator] One year node expected, found %d", v20, 8u);
    }

    v16 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)keyAssetCurationOptionsWithTriggeredMemory:(id)a3 inGraph:(id)a4
{
  v6.receiver = self;
  v6.super_class = PGYearInReviewMemoryGenerator;
  v4 = [(PGMemoryGenerator *)&v6 keyAssetCurationOptionsWithTriggeredMemory:a3 inGraph:a4];
  [v4 setPrefilterAssetsWithFacesThreshold:2.22507386e-308];

  return v4;
}

- (id)titleGeneratorWithYear:(int64_t)a3 titleGenerationContext:(id)a4
{
  v5 = a4;
  v6 = [[PGBestOfTimeMemoryTitleGenerator alloc] initWithYear:a3 titleGenerationContext:v5];

  return v6;
}

- (void)_enumeratePotentialMemoriesForProcessingWindow:(id)a3 graph:(id)a4 progressBlock:(id)a5 usingBlock:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __111__PGYearInReviewMemoryGenerator__enumeratePotentialMemoriesForProcessingWindow_graph_progressBlock_usingBlock___block_invoke;
  v15[3] = &unk_27887F990;
  v15[4] = self;
  v16 = v9;
  v17 = v10;
  v18 = v11;
  v12 = v11;
  v13 = v10;
  v14 = v9;
  [v13 enumerateNodesWithLabel:@"Year" domain:400 usingBlock:v15];
}

void __111__PGYearInReviewMemoryGenerator__enumeratePotentialMemoriesForProcessingWindow_graph_progressBlock_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 calendarUnitValue];
  v5 = *(*(a1 + 32) + 168);
  if (v5 == 0x7FFFFFFFFFFFFFFFLL || v4 == v5)
  {
    v7 = v4;
    if (*(a1 + 40))
    {
      v8 = [PGGraphCalendarUnitNode yearIntervalForYearCalendarUnitValue:v4];
      if (([*(a1 + 40) intersectsDateInterval:v8] & 1) == 0)
      {
        v13 = [*(a1 + 32) loggingConnection];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v23 = *(a1 + 40);
          *buf = 134218242;
          *&buf[4] = v7;
          *&buf[12] = 2112;
          *&buf[14] = v23;
          _os_log_debug_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_DEBUG, "[PGYearInReviewMemoryGenerator] Skipping year %ld outside of processing window: %@", buf, 0x16u);
        }

        goto LABEL_15;
      }
    }

    v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v10 = [*(a1 + 32) memoryGenerationContext];
    v11 = [v10 momentNodesWithBlockedFeatureCache];
    v12 = [v11 momentNodesWithBlockedFeature];

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v29 = 0;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __111__PGYearInReviewMemoryGenerator__enumeratePotentialMemoriesForProcessingWindow_graph_progressBlock_usingBlock___block_invoke_228;
    v24[3] = &unk_278885090;
    v13 = v12;
    v25 = v13;
    v27 = buf;
    v8 = v9;
    v26 = v8;
    [v3 enumerateNeighborNodesThroughEdgesWithLabel:@"YEAR" domain:400 usingBlock:v24];
    if (*(*&buf[8] + 24))
    {
      v14 = [*(a1 + 32) memoryGenerationContext];
      v15 = [v14 processedScenesAndFacesCache];
      v16 = [v15 allMomentNodesHaveScenesProcessed:v8 inGraph:*(a1 + 48)];

      if (v16)
      {
        v17 = [[PGPotentialYearSummaryMemory alloc] initWithMomentNodes:v8];
        v18 = MEMORY[0x277CBEB98];
        v19 = [PGFeature featureWithType:1 node:v3];
        v20 = [v18 setWithObject:v19];
        [(PGPotentialMemory *)v17 setFeatures:v20];

        [(PGPotentialYearSummaryMemory *)v17 setYear:v7];
        [(PGPotentialMemory *)v17 computeContentScore];
        [(PGPotentialMemory *)v17 setScore:1.0];
        v21 = [v3 name];
        [(PGPotentialMemory *)v17 setEventName:v21];

        (*(*(a1 + 56) + 16))();
      }
    }

    _Block_object_dispose(buf, 8);
LABEL_15:
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __111__PGYearInReviewMemoryGenerator__enumeratePotentialMemoriesForProcessingWindow_graph_progressBlock_usingBlock___block_invoke_228(uint64_t a1, void *a2)
{
  v3 = [a2 collection];
  v4 = [v3 momentNodes];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __111__PGYearInReviewMemoryGenerator__enumeratePotentialMemoriesForProcessingWindow_graph_progressBlock_usingBlock___block_invoke_2;
  v7[3] = &unk_27888B3B8;
  v8 = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = v6;
  v9 = v6;
  [v4 enumerateNodesUsingBlock:v7];
}

void __111__PGYearInReviewMemoryGenerator__enumeratePotentialMemoriesForProcessingWindow_graph_progressBlock_usingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) containsNode:?] & 1) == 0)
  {
    *(*(*(a1 + 48) + 8) + 24) |= [v3 isInterestingForMemories];
    [*(a1 + 40) addObject:v3];
  }
}

- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)a3 usingBlock:(id)a4
{
  v9 = 0;
  v5 = a4;
  v6 = a3;
  v7 = [(PGGraphNodeCollection *)PGGraphMomentNodeCollection nodesInGraph:v6];
  v8 = [(MAElementCollection *)[PGGraphFeatureNodeCollection alloc] initWithGraph:v6];

  v5[2](v5, v7, v8, &v9);
}

- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)a3
{
  v13 = *MEMORY[0x277D85DE8];
  if (a3 == 1)
  {
    result = 5001;
  }

  else
  {
    v4 = a3;
    v5 = [(PGMemoryGenerator *)self loggingConnection];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = 138412546;
      v10 = v8;
      v11 = 1024;
      v12 = v4;
      _os_log_error_impl(&dword_22F0FC000, v5, OS_LOG_TYPE_ERROR, "[%@] Returning PHMemoryCategorySubcategoryNone for PGOverTimeMemoryType %d, this should never happen", &v9, 0x12u);
    }

    result = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (PGYearInReviewMemoryGenerator)initWithMemoryGenerationContext:(id)a3
{
  v10.receiver = self;
  v10.super_class = PGYearInReviewMemoryGenerator;
  v3 = [(PGMemoryGenerator *)&v10 initWithMemoryGenerationContext:a3];
  v4 = v3;
  if (v3)
  {
    v3->_requireSceneProcessingMeetsThresholdOverTime = 1;
    v5 = objc_alloc_init(PGMemoryMomentRequirements);
    momentRequirements = v4->_momentRequirements;
    v4->_momentRequirements = v5;

    [(PGMemoryMomentRequirements *)v4->_momentRequirements setFilterMomentsWithNotEnoughScenesProcessed:1];
    v7 = objc_alloc_init(PGFeaturedTimePeriodMemoryConfiguration);
    featuredYearConfiguration = v4->_featuredYearConfiguration;
    v4->_featuredYearConfiguration = v7;

    [(PGOverTimeMemoryConfiguration *)v4->_featuredYearConfiguration setMinimumNumberOfMomentsInterestingForMemories:1];
    [(PGOverTimeMemoryConfiguration *)v4->_featuredYearConfiguration setMinimumNumberOfAssetsInExtendedCuration:13];
  }

  return v4;
}

@end