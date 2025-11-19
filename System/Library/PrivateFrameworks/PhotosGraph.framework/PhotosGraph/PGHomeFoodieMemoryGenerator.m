@interface PGHomeFoodieMemoryGenerator
- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)a3;
- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)a3 usingBlock:(id)a4;
@end

@implementation PGHomeFoodieMemoryGenerator

- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)a3 usingBlock:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [PGGraphSceneFeatureNodeCollection sceneFeatureNodesForSceneName:@"Food" inGraph:v6];
  v8 = [v7 momentNodes];
  v9 = [(PGGraphNodeCollection *)PGGraphMeNodeCollection nodesInGraph:v6];
  v10 = [v9 homeNodes];
  v11 = [v10 addressNodes];

  v12 = MEMORY[0x277D22BF8];
  v13 = +[PGGraphAddressNode momentOfAddress];
  v14 = [v12 adjacencyWithSources:v11 relation:v13 targetsClass:objc_opt_class()];

  v15 = [v14 intersectingTargetsWith:v8];

  v16 = [PGFoodieMemoryGenerator incompatibleMomentNodesInGraph:v6];

  v17 = [v15 subtractingTargetsWith:v16];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __85__PGHomeFoodieMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke;
  v20[3] = &unk_2788871B8;
  v21 = v7;
  v22 = v5;
  v18 = v5;
  v19 = v7;
  [v17 enumerateTargetsBySourceWithBlock:v20];
}

void __85__PGHomeFoodieMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke(uint64_t a1, void *a2, void *a3)
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
    result = 6009;
  }

  else
  {
    v3 = a3;
    if (a3 == 3)
    {
      result = 6010;
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