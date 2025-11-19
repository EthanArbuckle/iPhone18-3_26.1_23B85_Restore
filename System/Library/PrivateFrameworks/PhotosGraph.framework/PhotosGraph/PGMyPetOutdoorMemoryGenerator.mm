@interface PGMyPetOutdoorMemoryGenerator
- (PGMyPetOutdoorMemoryGenerator)initWithMemoryGenerationContext:(id)a3;
- (id)titleGeneratorForTriggeredMemory:(id)a3 withKeyAsset:(id)a4 curatedAssets:(id)a5 extendedCuratedAssets:(id)a6 titleGenerationContext:(id)a7 inGraph:(id)a8;
- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)a3;
- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)a3 usingBlock:(id)a4;
@end

@implementation PGMyPetOutdoorMemoryGenerator

- (id)titleGeneratorForTriggeredMemory:(id)a3 withKeyAsset:(id)a4 curatedAssets:(id)a5 extendedCuratedAssets:(id)a6 titleGenerationContext:(id)a7 inGraph:(id)a8
{
  v18.receiver = self;
  v18.super_class = PGMyPetOutdoorMemoryGenerator;
  v13 = a3;
  v14 = [(PGMyPetMemoryGenerator *)&v18 titleGeneratorForTriggeredMemory:v13 withKeyAsset:a4 curatedAssets:a5 extendedCuratedAssets:a6 titleGenerationContext:a7 inGraph:a8];
  [v14 setUseAdventureTitle:{1, v18.receiver, v18.super_class}];
  v15 = [v13 memoryFeatureNodes];

  v16 = [(PGGraphNodeCollection *)PGGraphYearNodeCollection subsetInCollection:v15];

  if ([v16 count] == 1)
  {
    [v14 setFeaturedYearNodes:v16];
  }

  return v14;
}

- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)a3 usingBlock:(id)a4
{
  v20[2] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = MEMORY[0x277D22C90];
  v7 = a3;
  v8 = +[PGGraphMomentNode featureOfMoment];
  v20[0] = v8;
  v9 = +[PGGraphPetNode filter];
  v10 = [v9 relation];
  v20[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v12 = [v6 chain:v11];

  v13 = [PGMemoryGeneratorUtils outdoorROIMomentNodesNotAtHomeOrFrequentLocationInGraph:v7 useMomentFeatureEdges:0];

  v14 = [MEMORY[0x277D22BF8] adjacencyWithSources:v13 relation:v12 targetsClass:objc_opt_class()];
  v15 = [v14 transposed];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __87__PGMyPetOutdoorMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke;
  v18[3] = &unk_278887E38;
  v19 = v5;
  v16 = v5;
  [v15 enumerateTargetsBySourceWithBlock:v18];

  v17 = *MEMORY[0x277D85DE8];
}

void __87__PGMyPetOutdoorMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = [a2 featureNodeCollection];
  (*(v6 + 16))(v6, v7, v8, a4);
}

- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)a3
{
  v13 = *MEMORY[0x277D85DE8];
  if (a3 == 1)
  {
    result = 7005;
  }

  else
  {
    v3 = a3;
    if (a3 == 3)
    {
      result = 7006;
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

- (PGMyPetOutdoorMemoryGenerator)initWithMemoryGenerationContext:(id)a3
{
  v7.receiver = self;
  v7.super_class = PGMyPetOutdoorMemoryGenerator;
  v3 = [(PGMyPetMemoryGenerator *)&v7 initWithMemoryGenerationContext:a3];
  v4 = v3;
  if (v3)
  {
    featuredSeasonConfiguration = v3->_featuredSeasonConfiguration;
    v3->_featuredSeasonConfiguration = 0;
  }

  return v4;
}

@end