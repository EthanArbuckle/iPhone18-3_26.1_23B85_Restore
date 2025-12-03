@interface PGPersonFoodieMemoryGenerator
- (PGPersonFoodieMemoryGenerator)initWithMemoryGenerationContext:(id)context;
- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)type;
- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)graph usingBlock:(id)block;
@end

@implementation PGPersonFoodieMemoryGenerator

- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)graph usingBlock:(id)block
{
  v34[3] = *MEMORY[0x277D85DE8];
  blockCopy = block;
  graphCopy = graph;
  v6 = [PGGraphSceneFeatureNodeCollection sceneFeatureNodesForSceneName:@"Food" inGraph:graphCopy];
  momentNodes = [v6 momentNodes];
  v7 = MEMORY[0x277D22C90];
  v8 = +[PGGraphMomentFeaturesEdge filter];
  outRelation = [v8 outRelation];
  v34[0] = outRelation;
  v10 = +[PGGraphPersonNode filterExcludingMe];
  relation = [v10 relation];
  v34[1] = relation;
  v12 = +[PGGraphPersonNode filterNameNotEmpty];
  relation2 = [v12 relation];
  v34[2] = relation2;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:3];
  v15 = [v7 chain:v14];

  v16 = [MEMORY[0x277D22BF8] adjacencyWithSources:momentNodes relation:v15 targetsClass:objc_opt_class()];
  v17 = [PGFoodieMemoryGenerator incompatibleMomentNodesInGraph:graphCopy];

  v18 = [v16 subtractingSourcesWith:v17];

  sources = [v18 sources];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __87__PGPersonFoodieMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke;
  v32[3] = &unk_278888AE0;
  v33 = v18;
  v20 = v18;
  v21 = [sources filteredCollectionUsingBlock:v32];

  v22 = [v20 intersectingSourcesWith:v21];

  transposed = [v22 transposed];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __87__PGPersonFoodieMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke_2;
  v29[3] = &unk_278887368;
  v30 = v6;
  v31 = blockCopy;
  v24 = blockCopy;
  v25 = v6;
  [transposed enumerateTargetsBySourceWithBlock:v29];

  v26 = *MEMORY[0x277D85DE8];
}

BOOL __87__PGPersonFoodieMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) targetsForSources:a2];
  v3 = [v2 count] < 6;

  return v3;
}

void __87__PGPersonFoodieMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 featureNodeCollection];
  v9 = [v7 featureNodeCollection];

  v10 = [v8 collectionByFormingUnionWith:v9];

  (*(*(a1 + 40) + 16))();
}

- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)type
{
  v13 = *MEMORY[0x277D85DE8];
  if (type == 1)
  {
    result = 6003;
  }

  else
  {
    typeCopy = type;
    if (type == 3)
    {
      result = 6004;
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

- (PGPersonFoodieMemoryGenerator)initWithMemoryGenerationContext:(id)context
{
  v4.receiver = self;
  v4.super_class = PGPersonFoodieMemoryGenerator;
  result = [(PGFoodieMemoryGenerator *)&v4 initWithMemoryGenerationContext:context];
  if (result)
  {
    result->_requireFaceProcessingMeetsThresholdOverTime = 1;
  }

  return result;
}

@end