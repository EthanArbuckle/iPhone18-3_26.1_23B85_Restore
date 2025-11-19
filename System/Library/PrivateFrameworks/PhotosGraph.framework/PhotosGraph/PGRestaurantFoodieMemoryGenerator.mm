@interface PGRestaurantFoodieMemoryGenerator
- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)a3;
- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)a3 usingBlock:(id)a4;
@end

@implementation PGRestaurantFoodieMemoryGenerator

- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)a3 usingBlock:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [(PGGraphNodeCollection *)PGGraphMeNodeCollection nodesInGraph:v6];
  v8 = [v7 homeOrWorkNodes];
  v9 = [v8 addressNodes];
  v10 = [v9 momentNodes];

  v11 = [PGGraphSceneFeatureNodeCollection sceneFeatureNodesForSceneName:@"Food" inGraph:v6];
  v12 = [v11 momentNodes];
  v13 = [PGGraphBusinessCategoryNodeCollection businessCategoryNodesForCategory:@"Restaurant" inGraph:v6];
  v14 = [v13 businessNodes];
  v15 = MEMORY[0x277D22BF8];
  v16 = +[PGGraphMomentNode businessOfMoment];
  v17 = [v15 adjacencyWithSources:v12 relation:v16 targetsClass:objc_opt_class()];

  v18 = [v17 intersectingTargetsWith:v14];

  v19 = [PGFoodieMemoryGenerator incompatibleMomentNodesInGraph:v6];

  v20 = [v18 subtractingSourcesWith:v19];

  v21 = [v20 subtractingSourcesWith:v10];

  v22 = [v21 sources];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __91__PGRestaurantFoodieMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke;
  v32[3] = &unk_278888AE0;
  v33 = v21;
  v23 = v21;
  v24 = [v22 filteredCollectionUsingBlock:v32];

  v25 = [v23 intersectingSourcesWith:v24];

  v26 = [v25 transposed];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __91__PGRestaurantFoodieMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke_2;
  v29[3] = &unk_278888B08;
  v30 = v11;
  v31 = v5;
  v27 = v5;
  v28 = v11;
  [v26 enumerateTargetsBySourceWithBlock:v29];
}

BOOL __91__PGRestaurantFoodieMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) targetsForSources:a2];
  v3 = [v2 count] == 1;

  return v3;
}

void __91__PGRestaurantFoodieMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
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
    result = 6007;
  }

  else
  {
    v3 = a3;
    if (a3 == 3)
    {
      result = 6008;
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

@end