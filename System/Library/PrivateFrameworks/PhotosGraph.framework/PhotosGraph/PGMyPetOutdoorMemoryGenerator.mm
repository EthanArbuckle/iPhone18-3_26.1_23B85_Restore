@interface PGMyPetOutdoorMemoryGenerator
- (PGMyPetOutdoorMemoryGenerator)initWithMemoryGenerationContext:(id)context;
- (id)titleGeneratorForTriggeredMemory:(id)memory withKeyAsset:(id)asset curatedAssets:(id)assets extendedCuratedAssets:(id)curatedAssets titleGenerationContext:(id)context inGraph:(id)graph;
- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)type;
- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)graph usingBlock:(id)block;
@end

@implementation PGMyPetOutdoorMemoryGenerator

- (id)titleGeneratorForTriggeredMemory:(id)memory withKeyAsset:(id)asset curatedAssets:(id)assets extendedCuratedAssets:(id)curatedAssets titleGenerationContext:(id)context inGraph:(id)graph
{
  v18.receiver = self;
  v18.super_class = PGMyPetOutdoorMemoryGenerator;
  memoryCopy = memory;
  v14 = [(PGMyPetMemoryGenerator *)&v18 titleGeneratorForTriggeredMemory:memoryCopy withKeyAsset:asset curatedAssets:assets extendedCuratedAssets:curatedAssets titleGenerationContext:context inGraph:graph];
  [v14 setUseAdventureTitle:{1, v18.receiver, v18.super_class}];
  memoryFeatureNodes = [memoryCopy memoryFeatureNodes];

  v16 = [(PGGraphNodeCollection *)PGGraphYearNodeCollection subsetInCollection:memoryFeatureNodes];

  if ([v16 count] == 1)
  {
    [v14 setFeaturedYearNodes:v16];
  }

  return v14;
}

- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)graph usingBlock:(id)block
{
  v20[2] = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v6 = MEMORY[0x277D22C90];
  graphCopy = graph;
  v8 = +[PGGraphMomentNode featureOfMoment];
  v20[0] = v8;
  v9 = +[PGGraphPetNode filter];
  relation = [v9 relation];
  v20[1] = relation;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v12 = [v6 chain:v11];

  v13 = [PGMemoryGeneratorUtils outdoorROIMomentNodesNotAtHomeOrFrequentLocationInGraph:graphCopy useMomentFeatureEdges:0];

  v14 = [MEMORY[0x277D22BF8] adjacencyWithSources:v13 relation:v12 targetsClass:objc_opt_class()];
  transposed = [v14 transposed];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __87__PGMyPetOutdoorMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke;
  v18[3] = &unk_278887E38;
  v19 = blockCopy;
  v16 = blockCopy;
  [transposed enumerateTargetsBySourceWithBlock:v18];

  v17 = *MEMORY[0x277D85DE8];
}

void __87__PGMyPetOutdoorMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = [a2 featureNodeCollection];
  (*(v6 + 16))(v6, v7, v8, a4);
}

- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)type
{
  v13 = *MEMORY[0x277D85DE8];
  if (type == 1)
  {
    result = 7005;
  }

  else
  {
    typeCopy = type;
    if (type == 3)
    {
      result = 7006;
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

- (PGMyPetOutdoorMemoryGenerator)initWithMemoryGenerationContext:(id)context
{
  v7.receiver = self;
  v7.super_class = PGMyPetOutdoorMemoryGenerator;
  v3 = [(PGMyPetMemoryGenerator *)&v7 initWithMemoryGenerationContext:context];
  v4 = v3;
  if (v3)
  {
    featuredSeasonConfiguration = v3->_featuredSeasonConfiguration;
    v3->_featuredSeasonConfiguration = 0;
  }

  return v4;
}

@end