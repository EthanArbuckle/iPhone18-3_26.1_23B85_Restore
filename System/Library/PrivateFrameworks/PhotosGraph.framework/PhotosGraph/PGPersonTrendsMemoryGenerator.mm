@interface PGPersonTrendsMemoryGenerator
- (PGPersonTrendsMemoryGenerator)initWithMemoryGenerationContext:(id)context configurations:(id)configurations;
- (id)childOnlyPersonTrends;
- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)type;
- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)graph usingBlock:(id)block;
@end

@implementation PGPersonTrendsMemoryGenerator

- (id)childOnlyPersonTrends
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = @"PlayTime";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)graph usingBlock:(id)block
{
  v31[2] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  blockCopy = block;
  v8 = [(PGTrendsMemoryGenerator *)self validSceneFeatureNodesInGraph:graphCopy];
  if ([v8 count])
  {
    v9 = MEMORY[0x277D22C90];
    v10 = +[PGGraphMomentNode featureOfMoment];
    v31[0] = v10;
    v11 = +[PGGraphPersonNode filterExcludingMe];
    relation = [v11 relation];
    v31[1] = relation;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
    v14 = [v9 chain:v13];

    v15 = [PGGraphPersonNodeCollection personNodesInAgeCategories:&unk_2844860F0 includingMe:0 inGraph:graphCopy];
    childOnlyPersonTrends = [(PGPersonTrendsMemoryGenerator *)self childOnlyPersonTrends];
    v17 = MEMORY[0x277D22BF8];
    v18 = +[PGGraphFeatureNodeCollection momentOfFeature];
    v19 = [v17 adjacencyWithSources:v8 relation:v18 targetsClass:objc_opt_class()];

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __87__PGPersonTrendsMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke;
    v24[3] = &unk_278884C20;
    v25 = v14;
    v26 = childOnlyPersonTrends;
    v27 = v15;
    selfCopy = self;
    v29 = graphCopy;
    v30 = blockCopy;
    v20 = v15;
    v21 = childOnlyPersonTrends;
    v22 = v14;
    [v19 enumerateTargetsBySourceWithBlock:v24];
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __87__PGPersonTrendsMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = MEMORY[0x277D22BF8];
  v9 = *(a1 + 32);
  v10 = a3;
  v11 = [v8 adjacencyWithSources:v10 relation:v9 targetsClass:objc_opt_class()];

  v12 = [v11 transposed];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __87__PGPersonTrendsMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke_2;
  v19[3] = &unk_278884BF8;
  v20 = *(a1 + 40);
  v21 = v7;
  *&v13 = *(a1 + 48);
  *(&v13 + 1) = *(a1 + 56);
  v18 = v13;
  v14 = *(a1 + 64);
  v15 = *(a1 + 72);
  *&v16 = v14;
  *(&v16 + 1) = v15;
  v22 = v18;
  v23 = v16;
  v24 = a4;
  v17 = v7;
  [v12 enumerateTargetsBySourceWithBlock:v19];
}

void __87__PGPersonTrendsMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v19 = a2;
  v7 = a3;
  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) labels];
  v10 = [v9 anyObject];
  if (![v8 containsObject:v10])
  {

    goto LABEL_5;
  }

  v11 = [*(a1 + 48) intersectsCollection:v19];

  if (v11)
  {
LABEL_5:
    v12 = [*(a1 + 40) featureNodeCollection];
    v13 = [v19 featureNodeCollection];
    v14 = [v12 collectionByFormingUnionWith:v13];

    v15 = *(a1 + 56);
    v16 = [*(a1 + 40) labels];
    v17 = [v16 anyObject];
    v18 = [v15 filteredMomentNodes:v7 withSceneLabel:v17 inGraph:*(a1 + 64)];

    (*(*(a1 + 72) + 16))();
    **(a1 + 80) = *a4;

    v7 = v18;
  }
}

- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)type
{
  v13 = *MEMORY[0x277D85DE8];
  if (type == 1)
  {
    result = 16003;
  }

  else
  {
    typeCopy = type;
    if (type == 3)
    {
      result = 16004;
    }

    else
    {
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
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (PGPersonTrendsMemoryGenerator)initWithMemoryGenerationContext:(id)context configurations:(id)configurations
{
  v9.receiver = self;
  v9.super_class = PGPersonTrendsMemoryGenerator;
  v4 = [(PGTrendsMemoryGenerator *)&v9 initWithMemoryGenerationContext:context configurations:configurations];
  v5 = v4;
  if (v4)
  {
    v4->_requireFaceProcessingMeetsThresholdOverTime = 1;
    v4->_intersectRelevantAssetsForFeatures = 1;
    v6 = objc_alloc_init(PGMemoryMomentRequirements);
    momentRequirements = v5->_momentRequirements;
    v5->_momentRequirements = v6;

    [(PGMemoryMomentRequirements *)v5->_momentRequirements setMinimumNumberOfRelevantAssets:2];
    [(PGMemoryMomentRequirements *)v5->_momentRequirements setFilterMomentsWithNotEnoughScenesProcessed:1];
  }

  return v5;
}

@end