@interface PGCityFoodieMemoryGenerator
- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)type;
- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)graph usingBlock:(id)block;
@end

@implementation PGCityFoodieMemoryGenerator

- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)graph usingBlock:(id)block
{
  blockCopy = block;
  graphCopy = graph;
  v7 = [(PGGraphNodeCollection *)PGGraphMeNodeCollection nodesInGraph:graphCopy];
  homeOrWorkNodes = [v7 homeOrWorkNodes];
  addressNodes = [homeOrWorkNodes addressNodes];
  momentNodes = [addressNodes momentNodes];

  v11 = [PGGraphSceneFeatureNodeCollection sceneFeatureNodesForSceneName:@"Food" inGraph:graphCopy];
  momentNodes2 = [v11 momentNodes];
  v13 = MEMORY[0x277D22BF8];
  v14 = +[PGGraphMomentNode cityOfMoment];
  v15 = objc_opt_self();
  v16 = [v13 adjacencyWithSources:momentNodes2 relation:v14 targetsClass:v15];

  v17 = [v16 subtractingSourcesWith:momentNodes];

  v18 = [PGFoodieMemoryGenerator incompatibleMomentNodesInGraph:graphCopy];

  v19 = [v17 subtractingSourcesWith:v18];

  sources = [v19 sources];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __85__PGCityFoodieMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke;
  v30[3] = &unk_278888AE0;
  v31 = v19;
  v21 = v19;
  v22 = [sources filteredCollectionUsingBlock:v30];

  v23 = [v21 intersectingSourcesWith:v22];

  transposed = [v23 transposed];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __85__PGCityFoodieMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke_2;
  v27[3] = &unk_278884750;
  v28 = v11;
  v29 = blockCopy;
  v25 = blockCopy;
  v26 = v11;
  [transposed enumerateTargetsBySourceWithBlock:v27];
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

- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)type
{
  v13 = *MEMORY[0x277D85DE8];
  if (type == 1)
  {
    result = 6005;
  }

  else
  {
    typeCopy = type;
    if (type == 3)
    {
      result = 6006;
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

@end