@interface PGLocationTrendsMemoryGenerator
- (PGLocationTrendsMemoryGenerator)initWithMemoryGenerationContext:(id)context configurations:(id)configurations;
- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)type;
- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)graph usingBlock:(id)block;
@end

@implementation PGLocationTrendsMemoryGenerator

- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)graph usingBlock:(id)block
{
  graphCopy = graph;
  blockCopy = block;
  v8 = [(PGTrendsMemoryGenerator *)self validSceneFeatureNodesInGraph:graphCopy];
  if ([v8 count])
  {
    v9 = MEMORY[0x277D22BF8];
    v10 = +[PGGraphFeatureNodeCollection momentOfFeature];
    v11 = [v9 adjacencyWithSources:v8 relation:v10 targetsClass:objc_opt_class()];

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __89__PGLocationTrendsMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke;
    v12[3] = &unk_278889518;
    v12[4] = self;
    v13 = graphCopy;
    v14 = blockCopy;
    [v11 enumerateTargetsBySourceWithBlock:v12];
  }
}

void __89__PGLocationTrendsMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = MEMORY[0x277D22BF8];
  v9 = a3;
  v10 = +[PGGraphMomentNode cityOfMoment];
  v11 = [v8 adjacencyWithSources:v9 relation:v10 targetsClass:objc_opt_class()];

  v12 = [v11 transposed];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __89__PGLocationTrendsMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke_2;
  v16[3] = &unk_2788894F0;
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v17 = v7;
  v18 = v13;
  v19 = v14;
  v20 = *(a1 + 48);
  v21 = a4;
  v15 = v7;
  [v12 enumerateTargetsBySourceWithBlock:v16];
}

void __89__PGLocationTrendsMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a3;
  v9 = a2;
  v10 = [v7 featureNodeCollection];
  v11 = [v9 featureNodeCollection];

  v12 = [v10 collectionByFormingUnionWith:v11];

  v13 = *(a1 + 40);
  v14 = [*(a1 + 32) labels];
  v15 = [v14 anyObject];
  v16 = [v13 filteredMomentNodes:v8 withSceneLabel:v15 inGraph:*(a1 + 48)];

  (*(*(a1 + 56) + 16))();
  **(a1 + 64) = *a4;
}

- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)type
{
  v13 = *MEMORY[0x277D85DE8];
  if (type == 1)
  {
    result = 16005;
  }

  else
  {
    typeCopy = type;
    if (type == 3)
    {
      result = 16006;
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

- (PGLocationTrendsMemoryGenerator)initWithMemoryGenerationContext:(id)context configurations:(id)configurations
{
  v8.receiver = self;
  v8.super_class = PGLocationTrendsMemoryGenerator;
  v4 = [(PGTrendsMemoryGenerator *)&v8 initWithMemoryGenerationContext:context configurations:configurations];
  if (v4)
  {
    v5 = objc_alloc_init(PGMemoryMomentRequirements);
    momentRequirements = v4->_momentRequirements;
    v4->_momentRequirements = v5;

    [(PGMemoryMomentRequirements *)v4->_momentRequirements setMinimumNumberOfRelevantAssets:2];
    [(PGMemoryMomentRequirements *)v4->_momentRequirements setFilterMomentsWithNotEnoughScenesProcessed:1];
  }

  return v4;
}

@end