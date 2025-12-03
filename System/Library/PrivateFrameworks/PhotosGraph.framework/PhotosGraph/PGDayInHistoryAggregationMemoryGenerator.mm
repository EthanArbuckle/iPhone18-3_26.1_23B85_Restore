@interface PGDayInHistoryAggregationMemoryGenerator
- (PGDayInHistoryAggregationMemoryGenerator)initWithMemoryGenerationContext:(id)context;
- (id)chapterTitleGeneratorForTriggeredMemory:(id)memory curatedAssets:(id)assets extendedCuratedAssets:(id)curatedAssets titleGenerationContext:(id)context inGraph:(id)graph;
- (id)titleGeneratorForTriggeredMemory:(id)memory withKeyAsset:(id)asset curatedAssets:(id)assets extendedCuratedAssets:(id)curatedAssets titleGenerationContext:(id)context inGraph:(id)graph;
- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)type;
- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)graph usingBlock:(id)block;
@end

@implementation PGDayInHistoryAggregationMemoryGenerator

- (id)chapterTitleGeneratorForTriggeredMemory:(id)memory curatedAssets:(id)assets extendedCuratedAssets:(id)curatedAssets titleGenerationContext:(id)context inGraph:(id)graph
{
  memoryCopy = memory;
  v8 = [[PGYearChapterTitleGenerator alloc] initWithTriggeredMemory:memoryCopy];

  return v8;
}

- (id)titleGeneratorForTriggeredMemory:(id)memory withKeyAsset:(id)asset curatedAssets:(id)assets extendedCuratedAssets:(id)curatedAssets titleGenerationContext:(id)context inGraph:(id)graph
{
  v9 = MEMORY[0x277CCA970];
  contextCopy = context;
  memoryCopy = memory;
  v12 = [v9 alloc];
  creationDate = [memoryCopy creationDate];
  v14 = [v12 initWithStartDate:creationDate duration:0.0];

  v15 = [PGDayInHistoryAggregationMemoryTitleGenerator alloc];
  memoryMomentNodes = [memoryCopy memoryMomentNodes];

  v17 = [memoryMomentNodes set];
  v18 = [(PGDayInHistoryAggregationMemoryTitleGenerator *)v15 initWithMomentNodes:v17 referenceDateInterval:v14 titleGenerationContext:contextCopy];

  return v18;
}

- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)graph usingBlock:(id)block
{
  v17[2] = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v6 = [(PGGraphNodeCollection *)PGGraphMonthDayNodeCollection nodesInGraph:graph];
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
  v16 = blockCopy;
  v13 = blockCopy;
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

- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)type
{
  v13 = *MEMORY[0x277D85DE8];
  if (type == 3)
  {
    result = 1002;
  }

  else
  {
    typeCopy = type;
    loggingConnection = [(PGMemoryGenerator *)self loggingConnection];
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = 138412546;
      v10 = v8;
      v11 = 1024;
      v12 = typeCopy;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[%@] Returning PHMemoryCategorySubcategoryNone for PGOverTimeMemoryType %d, this should never happen", &v9, 0x12u);
    }

    result = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (PGDayInHistoryAggregationMemoryGenerator)initWithMemoryGenerationContext:(id)context
{
  v10.receiver = self;
  v10.super_class = PGDayInHistoryAggregationMemoryGenerator;
  v3 = [(PGMemoryGenerator *)&v10 initWithMemoryGenerationContext:context];
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