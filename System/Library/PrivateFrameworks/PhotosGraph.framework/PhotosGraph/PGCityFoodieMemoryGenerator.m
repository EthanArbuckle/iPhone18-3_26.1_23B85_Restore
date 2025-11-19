@interface PGCityFoodieMemoryGenerator
- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)a3;
- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)a3 usingBlock:(id)a4;
@end

@implementation PGCityFoodieMemoryGenerator

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
  v13 = MEMORY[0x277D22BF8];
  v14 = +[PGGraphMomentNode cityOfMoment];
  v15 = objc_opt_self();
  v16 = [v13 adjacencyWithSources:v12 relation:v14 targetsClass:v15];

  v17 = [v16 subtractingSourcesWith:v10];

  v18 = [PGFoodieMemoryGenerator incompatibleMomentNodesInGraph:v6];

  v19 = [v17 subtractingSourcesWith:v18];

  v20 = [v19 sources];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __85__PGCityFoodieMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke;
  v30[3] = &unk_278888AE0;
  v31 = v19;
  v21 = v19;
  v22 = [v20 filteredCollectionUsingBlock:v30];

  v23 = [v21 intersectingSourcesWith:v22];

  v24 = [v23 transposed];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __85__PGCityFoodieMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke_2;
  v27[3] = &unk_278884750;
  v28 = v11;
  v29 = v5;
  v25 = v5;
  v26 = v11;
  [v24 enumerateTargetsBySourceWithBlock:v27];
}

BOOL __85__PGCityFoodieMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) targetsForSources:a2];
  v3 = [v2 count] == 1;

  return v3;
}

void __85__PGCityFoodieMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
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
    result = 6005;
  }

  else
  {
    v3 = a3;
    if (a3 == 3)
    {
      result = 6006;
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