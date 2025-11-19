@interface PGPersonFoodieMemoryGenerator
- (PGPersonFoodieMemoryGenerator)initWithMemoryGenerationContext:(id)a3;
- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)a3;
- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)a3 usingBlock:(id)a4;
@end

@implementation PGPersonFoodieMemoryGenerator

- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)a3 usingBlock:(id)a4
{
  v34[3] = *MEMORY[0x277D85DE8];
  v28 = a4;
  v5 = a3;
  v6 = [PGGraphSceneFeatureNodeCollection sceneFeatureNodesForSceneName:@"Food" inGraph:v5];
  v27 = [v6 momentNodes];
  v7 = MEMORY[0x277D22C90];
  v8 = +[PGGraphMomentFeaturesEdge filter];
  v9 = [v8 outRelation];
  v34[0] = v9;
  v10 = +[PGGraphPersonNode filterExcludingMe];
  v11 = [v10 relation];
  v34[1] = v11;
  v12 = +[PGGraphPersonNode filterNameNotEmpty];
  v13 = [v12 relation];
  v34[2] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:3];
  v15 = [v7 chain:v14];

  v16 = [MEMORY[0x277D22BF8] adjacencyWithSources:v27 relation:v15 targetsClass:objc_opt_class()];
  v17 = [PGFoodieMemoryGenerator incompatibleMomentNodesInGraph:v5];

  v18 = [v16 subtractingSourcesWith:v17];

  v19 = [v18 sources];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __87__PGPersonFoodieMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke;
  v32[3] = &unk_278888AE0;
  v33 = v18;
  v20 = v18;
  v21 = [v19 filteredCollectionUsingBlock:v32];

  v22 = [v20 intersectingSourcesWith:v21];

  v23 = [v22 transposed];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __87__PGPersonFoodieMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke_2;
  v29[3] = &unk_278887368;
  v30 = v6;
  v31 = v28;
  v24 = v28;
  v25 = v6;
  [v23 enumerateTargetsBySourceWithBlock:v29];

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

- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)a3
{
  v13 = *MEMORY[0x277D85DE8];
  if (a3 == 1)
  {
    result = 6003;
  }

  else
  {
    v3 = a3;
    if (a3 == 3)
    {
      result = 6004;
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

- (PGPersonFoodieMemoryGenerator)initWithMemoryGenerationContext:(id)a3
{
  v4.receiver = self;
  v4.super_class = PGPersonFoodieMemoryGenerator;
  result = [(PGFoodieMemoryGenerator *)&v4 initWithMemoryGenerationContext:a3];
  if (result)
  {
    result->_requireFaceProcessingMeetsThresholdOverTime = 1;
  }

  return result;
}

@end