@interface PGMyPetAndPersonMemoryGenerator
- (PGMyPetAndPersonMemoryGenerator)initWithMemoryGenerationContext:(id)context;
- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)type;
- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)graph usingBlock:(id)block;
@end

@implementation PGMyPetAndPersonMemoryGenerator

- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)graph usingBlock:(id)block
{
  v34[2] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  blockCopy = block;
  v7 = [(PGGraphNodeCollection *)PGGraphPetNodeCollection nodesInGraph:graphCopy];
  v8 = MEMORY[0x277D22BF8];
  v9 = +[PGGraphFeatureNodeCollection momentOfFeature];
  v10 = [v8 adjacencyWithSources:v7 relation:v9 targetsClass:objc_opt_class()];

  v11 = MEMORY[0x277D22C90];
  v12 = +[PGGraphMomentNode featureOfMoment];
  v34[0] = v12;
  v13 = +[PGGraphPersonNode filterIncludingMe];
  relation = [v13 relation];
  v34[1] = relation;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
  v16 = [v11 chain:v15];

  v17 = objc_alloc_init(MEMORY[0x277D22BD0]);
  v18 = MEMORY[0x277D22BF8];
  targets = [v10 targets];
  v20 = [v18 adjacencyWithSources:targets relation:v16 targetsClass:objc_opt_class()];
  transposed = [v20 transposed];

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __89__PGMyPetAndPersonMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke;
  v28[3] = &unk_278889AC8;
  v29 = v17;
  v30 = transposed;
  v32 = v10;
  v33 = blockCopy;
  v31 = graphCopy;
  v22 = v10;
  v23 = graphCopy;
  v24 = blockCopy;
  v25 = transposed;
  v26 = v17;
  [v22 enumerateTargetsBySourceWithBlock:v28];

  v27 = *MEMORY[0x277D85DE8];
}

void __89__PGMyPetAndPersonMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = *(a1 + 32);
  v9 = a3;
  v10 = [v7 elementIdentifiers];
  [v8 addIdentifier:{objc_msgSend(v10, "firstElement")}];

  v11 = [*(a1 + 40) intersectingTargetsWith:v9];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __89__PGMyPetAndPersonMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke_2;
  v22[3] = &unk_278889A78;
  v24 = *(a1 + 64);
  v12 = v7;
  v23 = v12;
  v25 = a4;
  [v11 enumerateTargetsBySourceWithBlock:v22];
  v13 = [(MAElementCollection *)[PGGraphPetNodeCollection alloc] initWithGraph:*(a1 + 48) elementIdentifiers:*(a1 + 32)];
  v14 = [*(a1 + 56) intersectingTargetsWith:v9];

  v15 = [v14 subtractingSourcesWith:v13];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __89__PGMyPetAndPersonMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke_3;
  v18[3] = &unk_278889AA0;
  v16 = *(a1 + 64);
  v19 = v12;
  v20 = v16;
  v21 = a4;
  v17 = v12;
  [v15 enumerateTargetsBySourceWithBlock:v18];
}

void __89__PGMyPetAndPersonMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = a3;
  v10 = a2;
  v11 = [v8 featureNodeCollection];
  v12 = [v10 featureNodeCollection];

  v13 = [v11 collectionByFormingUnionWith:v12];
  (*(v7 + 16))(v7, v9, v13, a4);

  **(a1 + 48) = *a4;
}

void __89__PGMyPetAndPersonMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke_3(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a1[4];
  v7 = a1[5];
  v9 = a3;
  v10 = a2;
  v11 = [v8 featureNodeCollection];
  v12 = [v10 featureNodeCollection];

  v13 = [v11 collectionByFormingUnionWith:v12];
  (*(v7 + 16))(v7, v9, v13, a1[6]);

  *a1[6] = *a4;
}

- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)type
{
  v13 = *MEMORY[0x277D85DE8];
  if (type == 3)
  {
    result = 7004;
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

- (PGMyPetAndPersonMemoryGenerator)initWithMemoryGenerationContext:(id)context
{
  v9.receiver = self;
  v9.super_class = PGMyPetAndPersonMemoryGenerator;
  v3 = [(PGMyPetMemoryGenerator *)&v9 initWithMemoryGenerationContext:context];
  if (v3)
  {
    v4 = objc_alloc_init(PGMemoryMomentRequirements);
    momentRequirements = v3->_momentRequirements;
    v3->_momentRequirements = v4;

    [(PGMemoryMomentRequirements *)v3->_momentRequirements setMinimumNumberOfRelevantAssets:1];
    [(PGMemoryMomentRequirements *)v3->_momentRequirements setFilterMomentsWithNotEnoughScenesProcessed:1];
    featuredSeasonConfiguration = v3->_featuredSeasonConfiguration;
    v3->_featuredSeasonConfiguration = 0;

    featuredYearConfiguration = v3->_featuredYearConfiguration;
    v3->_featuredYearConfiguration = 0;

    v3->_intersectRelevantAssetsForFeatures = 1;
  }

  return v3;
}

@end