@interface PGDayInHistoryAggregationMemoryGenerator
- (PGDayInHistoryAggregationMemoryGenerator)initWithMemoryGenerationContext:(id)a3;
- (id)chapterTitleGeneratorForTriggeredMemory:(id)a3 curatedAssets:(id)a4 extendedCuratedAssets:(id)a5 titleGenerationContext:(id)a6 inGraph:(id)a7;
- (id)titleGeneratorForTriggeredMemory:(id)a3 withKeyAsset:(id)a4 curatedAssets:(id)a5 extendedCuratedAssets:(id)a6 titleGenerationContext:(id)a7 inGraph:(id)a8;
- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)a3;
- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)a3 usingBlock:(id)a4;
@end

@implementation PGDayInHistoryAggregationMemoryGenerator

- (id)chapterTitleGeneratorForTriggeredMemory:(id)a3 curatedAssets:(id)a4 extendedCuratedAssets:(id)a5 titleGenerationContext:(id)a6 inGraph:(id)a7
{
  v7 = a3;
  v8 = [[PGYearChapterTitleGenerator alloc] initWithTriggeredMemory:v7];

  return v8;
}

- (id)titleGeneratorForTriggeredMemory:(id)a3 withKeyAsset:(id)a4 curatedAssets:(id)a5 extendedCuratedAssets:(id)a6 titleGenerationContext:(id)a7 inGraph:(id)a8
{
  v9 = MEMORY[0x277CCA970];
  v10 = a7;
  v11 = a3;
  v12 = [v9 alloc];
  v13 = [v11 creationDate];
  v14 = [v12 initWithStartDate:v13 duration:0.0];

  v15 = [PGDayInHistoryAggregationMemoryTitleGenerator alloc];
  v16 = [v11 memoryMomentNodes];

  v17 = [v16 set];
  v18 = [(PGDayInHistoryAggregationMemoryTitleGenerator *)v15 initWithMomentNodes:v17 referenceDateInterval:v14 titleGenerationContext:v10];

  return v18;
}

- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)a3 usingBlock:(id)a4
{
  v17[2] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(PGGraphNodeCollection *)PGGraphMonthDayNodeCollection nodesInGraph:a3];
  v7 = MEMORY[0x277D22C90];
  v8 = +[PGGraphMonthDayNodeCollection dateOfMonthDay];
  v17[0] = v8;
  v9 = +[PGGraphDateNode momentOfDate];
  v17[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  v11 = [v7 chain:v10];

  v12 = [MEMORY[0x277D22BF8] adjacencyWithSources:v6 relation:v11 targetsClass:objc_opt_class()];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __98__PGDayInHistoryAggregationMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke;
  v15[3] = &unk_278884BB0;
  v16 = v5;
  v13 = v5;
  [v12 enumerateTargetsBySourceWithBlock:v15];

  v14 = *MEMORY[0x277D85DE8];
}

void __98__PGDayInHistoryAggregationMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = [a2 featureNodeCollection];
  (*(v6 + 16))(v6, v7, v8, a4);
}

- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)a3
{
  v13 = *MEMORY[0x277D85DE8];
  if (a3 == 3)
  {
    result = 1002;
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

- (PGDayInHistoryAggregationMemoryGenerator)initWithMemoryGenerationContext:(id)a3
{
  v10.receiver = self;
  v10.super_class = PGDayInHistoryAggregationMemoryGenerator;
  v3 = [(PGMemoryGenerator *)&v10 initWithMemoryGenerationContext:a3];
  v4 = v3;
  if (v3)
  {
    v3->_requireSceneProcessingMeetsThresholdOverTime = 1;
    v3->_requireFaceProcessingMeetsThresholdOverTime = 1;
    v5 = objc_alloc_init(PGMemoryMomentRequirements);
    momentRequirements = v4->_momentRequirements;
    v4->_momentRequirements = v5;

    [(PGMemoryMomentRequirements *)v4->_momentRequirements setMinimumNumberOfAssetsInExtendedCuration:7];
    [(PGMemoryMomentRequirements *)v4->_momentRequirements setFilterUninterestingForMemories:1];
    v7 = objc_alloc_init(PGOverTheYearsMemoryConfiguration);
    overTheYearsConfiguration = v4->_overTheYearsConfiguration;
    v4->_overTheYearsConfiguration = v7;

    [(PGOverTheYearsMemoryConfiguration *)v4->_overTheYearsConfiguration setMinimumNumberOfYears:3];
    [(PGOverTimeMemoryConfiguration *)v4->_overTheYearsConfiguration setMinimumNumberOfMoments:3];
    [(PGOverTimeMemoryConfiguration *)v4->_overTheYearsConfiguration setMinimumNumberOfAssetsInExtendedCuration:15];
    [(PGOverTimeMemoryConfiguration *)v4->_overTheYearsConfiguration setAllMomentsMustHaveFacesProcessed:1];
    [(PGOverTimeMemoryConfiguration *)v4->_overTheYearsConfiguration setAllMomentsMustHaveScenesProcessed:1];
  }

  return v4;
}

@end