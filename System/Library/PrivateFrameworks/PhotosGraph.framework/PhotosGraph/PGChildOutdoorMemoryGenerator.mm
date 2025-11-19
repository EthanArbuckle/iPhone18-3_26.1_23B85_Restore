@interface PGChildOutdoorMemoryGenerator
- (PGChildOutdoorMemoryGenerator)initWithMemoryGenerationContext:(id)a3;
- (id)keyAssetCurationOptionsWithTriggeredMemory:(id)a3 inGraph:(id)a4;
- (id)outdoorROINodesInGraph:(id)a3;
- (id)titleGeneratorForTriggeredMemory:(id)a3 withKeyAsset:(id)a4 curatedAssets:(id)a5 extendedCuratedAssets:(id)a6 titleGenerationContext:(id)a7 inGraph:(id)a8;
- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)a3;
- (unint64_t)numberOfRelevantAssetsForMomentNodes:(id)a3 featureNodes:(id)a4;
- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)a3 usingBlock:(id)a4;
@end

@implementation PGChildOutdoorMemoryGenerator

- (id)titleGeneratorForTriggeredMemory:(id)a3 withKeyAsset:(id)a4 curatedAssets:(id)a5 extendedCuratedAssets:(id)a6 titleGenerationContext:(id)a7 inGraph:(id)a8
{
  v9 = a3;
  v10 = a7;
  v11 = [v9 memoryFeatureNodes];
  v12 = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection subsetInCollection:v11];
  if ([v12 count] == 1)
  {
    v13 = [PGChildOutdoorMemoryTitleGenerator alloc];
    v14 = [v9 memoryMomentNodes];
    v15 = [v14 temporarySet];
    v16 = [v12 anyNode];
    v17 = [(PGChildOutdoorMemoryTitleGenerator *)v13 initWithMomentNodes:v15 personNode:v16 type:0 titleGenerationContext:v10];

    v18 = [v9 memoryFeatureNodes];
    v19 = [(PGGraphNodeCollection *)PGGraphYearNodeCollection subsetInCollection:v18];

    if ([v19 count] == 1)
    {
      [(PGTitleGenerator *)v17 setFeaturedYearNodes:v19];
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v21 = 0;
      _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to generate ChildOutdoor memory title because personNodeAsCollection count is not equal to 1", v21, 2u);
    }

    v17 = 0;
  }

  return v17;
}

- (id)keyAssetCurationOptionsWithTriggeredMemory:(id)a3 inGraph:(id)a4
{
  v11.receiver = self;
  v11.super_class = PGChildOutdoorMemoryGenerator;
  v5 = a3;
  v6 = [(PGMemoryGenerator *)&v11 keyAssetCurationOptionsWithTriggeredMemory:v5 inGraph:a4];
  v7 = [v5 memoryFeatureNodes];

  v8 = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection subsetInCollection:v7];
  v9 = [v8 localIdentifiers];
  [v6 setReferencePersonLocalIdentifiers:v9];

  return v6;
}

- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)a3 usingBlock:(id)a4
{
  v21[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [PGMemoryGeneratorUtils babyAndChildPersonNodesAtHomeOrFrequentLocationInGraph:v5];
  if ([v7 count])
  {
    v8 = [PGMemoryGeneratorUtils outdoorROIMomentNodesNotAtHomeOrFrequentLocationInGraph:v5 useMomentFeatureEdges:1];
    if ([v8 count])
    {
      v9 = MEMORY[0x277D22C90];
      v10 = +[PGGraphMomentNode featureOfMoment];
      v21[0] = v10;
      v11 = +[PGGraphPersonNode filter];
      v12 = [v11 relation];
      v21[1] = v12;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
      v14 = [v9 chain:v13];

      v15 = [MEMORY[0x277D22BF8] adjacencyWithSources:v8 relation:v14 targetsClass:objc_opt_class()];
      v16 = [v15 intersectingTargetsWith:v7];

      v17 = [v16 transposed];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __87__PGChildOutdoorMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke;
      v19[3] = &unk_278880440;
      v20 = v6;
      [v17 enumerateTargetsBySourceWithBlock:v19];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __87__PGChildOutdoorMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = [a2 featureNodeCollection];
  (*(v6 + 16))(v6, v7, v8, a4);
}

- (unint64_t)numberOfRelevantAssetsForMomentNodes:(id)a3 featureNodes:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(PGOverTimeMemoryGenerator *)self intersectRelevantAssetsForFeatures])
  {
    v8 = [(PGMemoryGenerator *)self loggingConnection];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v21[0]) = 0;
      _os_log_error_impl(&dword_22F0FC000, v8, OS_LOG_TYPE_ERROR, "Cannot set intersectRelevantAssetsForFeatures=YES and override this superclass method", v21, 2u);
    }
  }

  if ([v6 count])
  {
    v9 = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection subsetInCollection:v7];
    if ([v9 count] == 1)
    {
      v10 = [(PGGraphEdgeCollection *)PGGraphMomentFeaturesEdgeCollection edgesFromNodes:v6 toNodes:v9];
      v11 = [v6 graph];
      v12 = [(PGChildOutdoorMemoryGenerator *)self outdoorROINodesInGraph:v11];

      v13 = [(PGGraphEdgeCollection *)PGGraphMomentFeaturesEdgeCollection edgesFromNodes:v6 toNodes:v12];
      v14 = [v13 allRelevantAssetUUIDs];
      v15 = [v14 mutableCopy];

      v16 = [v10 allRelevantAssetUUIDs];
      [v15 intersectSet:v16];
      v17 = [v15 count];
    }

    else
    {
      v10 = [(PGMemoryGenerator *)self loggingConnection];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v20 = [v9 count];
        v21[0] = 67109120;
        v21[1] = v20;
        _os_log_error_impl(&dword_22F0FC000, v10, OS_LOG_TYPE_ERROR, "[PGChildOutdoorMemoryGenerator] One person node expected, found %d", v21, 8u);
      }

      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (id)outdoorROINodesInGraph:(id)a3
{
  outdoorROINodes = self->_outdoorROINodes;
  if (!outdoorROINodes)
  {
    v5 = [PGMemoryGeneratorUtils outdoorROINodesInGraph:a3];
    v6 = self->_outdoorROINodes;
    self->_outdoorROINodes = v5;

    outdoorROINodes = self->_outdoorROINodes;
  }

  return outdoorROINodes;
}

- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)a3
{
  v13 = *MEMORY[0x277D85DE8];
  if (a3 == 1)
  {
    result = 15005;
  }

  else
  {
    v3 = a3;
    if (a3 == 3)
    {
      result = 15006;
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

- (PGChildOutdoorMemoryGenerator)initWithMemoryGenerationContext:(id)a3
{
  v16.receiver = self;
  v16.super_class = PGChildOutdoorMemoryGenerator;
  v3 = [(PGMemoryGenerator *)&v16 initWithMemoryGenerationContext:a3];
  v4 = v3;
  if (v3)
  {
    v3->_requireSceneProcessingMeetsThresholdOverTime = 1;
    v3->_requireFaceProcessingMeetsThresholdOverTime = 1;
    v5 = objc_alloc_init(PGMemoryMomentRequirements);
    momentRequirements = v4->_momentRequirements;
    v4->_momentRequirements = v5;

    [(PGMemoryMomentRequirements *)v4->_momentRequirements setMinimumNumberOfRelevantAssets:2];
    [(PGMemoryMomentRequirements *)v4->_momentRequirements setFilterMomentsWithNotEnoughScenesProcessed:1];
    v7 = +[PGOverTheYearsMemoryConfiguration strictDefaultOverTheYearsMemoryConfiguration];
    overTheYearsConfiguration = v4->_overTheYearsConfiguration;
    v4->_overTheYearsConfiguration = v7;

    [(PGOverTimeMemoryConfiguration *)v4->_overTheYearsConfiguration setMinimumNumberOfRelevantAssets:13];
    v9 = +[PGFeaturedTimePeriodMemoryConfiguration strictDefaultFeaturedYearMemoryConfiguration];
    featuredYearConfiguration = v4->_featuredYearConfiguration;
    v4->_featuredYearConfiguration = v9;

    [(PGOverTimeMemoryConfiguration *)v4->_featuredYearConfiguration setMinimumNumberOfRelevantAssets:13];
    v4->_minimumNumberOfDefaultMemories = 3;
    v11 = +[PGOverTheYearsMemoryConfiguration defaultFallbackOverTheYearsMemoryConfiguration];
    fallbackOverTheYearsConfiguration = v4->_fallbackOverTheYearsConfiguration;
    v4->_fallbackOverTheYearsConfiguration = v11;

    v13 = +[PGFeaturedTimePeriodMemoryConfiguration defaultFallbackFeaturedYearMemoryConfiguration];
    fallbackFeaturedYearConfiguration = v4->_fallbackFeaturedYearConfiguration;
    v4->_fallbackFeaturedYearConfiguration = v13;
  }

  return v4;
}

@end