@interface PGPlaceAreaMemoryGenerator
- (PGPlaceAreaMemoryGenerator)initWithMemoryGenerationContext:(id)a3;
- (id)_addressNodesByAreaNodeInGraph:(id)a3;
- (id)curationOptionsWithRequiredAssetUUIDs:(id)a3 eligibleAssetUUIDs:(id)a4 triggeredMemory:(id)a5;
- (id)relevantFeederForTriggeredMemory:(id)a3 inGraph:(id)a4 allowGuestAsset:(BOOL)a5 progressReporter:(id)a6;
- (id)titleGeneratorForTriggeredMemory:(id)a3 withKeyAsset:(id)a4 curatedAssets:(id)a5 extendedCuratedAssets:(id)a6 titleGenerationContext:(id)a7 inGraph:(id)a8;
- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)a3;
- (unint64_t)numberOfRelevantAssetsForMomentNodes:(id)a3 featureNodes:(id)a4;
- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)a3 usingBlock:(id)a4;
@end

@implementation PGPlaceAreaMemoryGenerator

- (id)titleGeneratorForTriggeredMemory:(id)a3 withKeyAsset:(id)a4 curatedAssets:(id)a5 extendedCuratedAssets:(id)a6 titleGenerationContext:(id)a7 inGraph:(id)a8
{
  v9 = a7;
  v10 = a3;
  v11 = [v10 memoryFeatureNodes];
  v12 = [(PGGraphNodeCollection *)PGGraphAreaNodeCollection subsetInCollection:v11];
  v13 = [v10 memoryMomentNodes];

  v14 = [PGPlaceMemoryTitleGenerator alloc];
  v15 = [v13 temporarySet];
  v16 = [v12 anyNode];
  v17 = [(PGPlaceMemoryTitleGenerator *)v14 initWithMomentNodes:v15 placeNode:v16 titleGenerationContext:v9];

  v18 = [(PGGraphNodeCollection *)PGGraphYearNodeCollection subsetInCollection:v11];
  if ([v18 count] == 1)
  {
    [(PGTitleGenerator *)v17 setFeaturedYearNodes:v18];
  }

  return v17;
}

- (id)relevantFeederForTriggeredMemory:(id)a3 inGraph:(id)a4 allowGuestAsset:(BOOL)a5 progressReporter:(id)a6
{
  v25 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [v9 memoryFeatureNodes];
  v13 = [(PGGraphNodeCollection *)PGGraphAreaNodeCollection subsetInCollection:v12];

  if ([v13 count] == 1)
  {
    v14 = [v9 memoryMomentNodes];
    v15 = [v13 anyNode];
    v16 = [(PGMemoryGenerator *)self memoryCurationSession];
    v17 = [v16 curationManager];
    v18 = [PGMemoryGenerationHelper assetFetchResultForMomentNodes:v14 inLocationOrAreaNode:v15 requireInteresting:0 curationManager:v17 progressReporter:v11];

    v19 = [(PGMemoryGenerator *)self memoryCurationSession];
    v20 = [PGMemoryGenerationHelper feederForMemoriesWithAssetFetchResult:v18 memoryCurationSession:v19 graph:v10];
  }

  else
  {
    v21 = [(PGMemoryGenerator *)self loggingConnection];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v24[0] = 67109120;
      v24[1] = [v13 count];
      _os_log_error_impl(&dword_22F0FC000, v21, OS_LOG_TYPE_ERROR, "[PGPlaceAreaMemoryGenerator] One AOI node expected, found %d", v24, 8u);
    }

    v20 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)curationOptionsWithRequiredAssetUUIDs:(id)a3 eligibleAssetUUIDs:(id)a4 triggeredMemory:(id)a5
{
  v7.receiver = self;
  v7.super_class = PGPlaceAreaMemoryGenerator;
  v5 = [(PGMemoryGenerator *)&v7 curationOptionsWithRequiredAssetUUIDs:a3 eligibleAssetUUIDs:a4 triggeredMemory:a5];
  [v5 setMinimumNumberOfItems:15];
  [v5 setFailIfMinimumDurationNotReached:1];

  return v5;
}

- (unint64_t)numberOfRelevantAssetsForMomentNodes:(id)a3 featureNodes:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [(PGGraphNodeCollection *)PGGraphAreaNodeCollection subsetInCollection:v7];
    v9 = [v6 graph];
    v10 = [(PGPlaceAreaMemoryGenerator *)self _addressNodesByAreaNodeInGraph:v9];

    v11 = [v10 targetsForSources:v8];
    v12 = [(PGGraphEdgeCollection *)PGGraphAddressEdgeCollection edgesFromNodes:v6 toNodes:v11];
    v13 = [v12 numberOfAssets];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_addressNodesByAreaNodeInGraph:(id)a3
{
  addressNodesByAreaNode = self->_addressNodesByAreaNode;
  if (!addressNodesByAreaNode)
  {
    v5 = a3;
    v6 = [v5 supersetCityNodes];
    v7 = [v6 addressNodes];
    v8 = +[PGGraphAreaNode nonBlockedFilter];
    v9 = [PGGraphNamedLocationNode filterBySettingNameNotEmptyPropertyOnFilter:v8];

    v10 = [(MANodeCollection *)PGGraphAreaNodeCollection nodesMatchingFilter:v9 inGraph:v5];

    v11 = MEMORY[0x277D22BF8];
    v12 = +[PGGraphAreaNode addressOfArea];
    v13 = [v11 adjacencyWithSources:v10 relation:v12 targetsClass:objc_opt_class()];

    v14 = [v13 subtractingTargetsWith:v7];
    v15 = self->_addressNodesByAreaNode;
    self->_addressNodesByAreaNode = v14;

    addressNodesByAreaNode = self->_addressNodesByAreaNode;
  }

  return addressNodesByAreaNode;
}

- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)a3 usingBlock:(id)a4
{
  v25[2] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [(PGPlaceAreaMemoryGenerator *)self _addressNodesByAreaNodeInGraph:v7];
  v9 = MEMORY[0x277D22C90];
  v10 = +[PGGraphAreaNode addressOfArea];
  v25[0] = v10;
  v11 = +[PGGraphAddressNode momentOfAddress];
  v25[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  v13 = [v9 chain:v12];

  v14 = MEMORY[0x277D22BF8];
  v15 = [v8 sources];
  v16 = [v14 adjacencyWithSources:v15 relation:v13 targetsClass:objc_opt_class()];

  v17 = [(PGGraphNodeCollection *)PGGraphFrequentLocationNodeCollection nodesInGraph:v7];

  v18 = [v17 addressNodes];
  v19 = [v18 momentNodes];
  v20 = [v16 subtractingTargetsWith:v19];

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __84__PGPlaceAreaMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke;
  v23[3] = &unk_27887FCF0;
  v24 = v6;
  v21 = v6;
  [v20 enumerateTargetsBySourceWithBlock:v23];

  v22 = *MEMORY[0x277D85DE8];
}

void __84__PGPlaceAreaMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
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
    result = 9003;
  }

  else
  {
    v3 = a3;
    if (a3 == 3)
    {
      result = 9004;
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

- (PGPlaceAreaMemoryGenerator)initWithMemoryGenerationContext:(id)a3
{
  v12.receiver = self;
  v12.super_class = PGPlaceAreaMemoryGenerator;
  v3 = [(PGMemoryGenerator *)&v12 initWithMemoryGenerationContext:a3];
  v4 = v3;
  if (v3)
  {
    v3->_requireSceneProcessingMeetsThresholdOverTime = 1;
    v5 = objc_alloc_init(PGMemoryMomentRequirements);
    momentRequirements = v4->_momentRequirements;
    v4->_momentRequirements = v5;

    [(PGMemoryMomentRequirements *)v4->_momentRequirements setFilterUninterestingForMemories:1];
    [(PGMemoryMomentRequirements *)v4->_momentRequirements setFilterMomentsWithNotEnoughScenesProcessed:1];
    v7 = +[PGOverTheYearsMemoryConfiguration strictDefaultOverTheYearsMemoryConfiguration];
    overTheYearsConfiguration = v4->_overTheYearsConfiguration;
    v4->_overTheYearsConfiguration = v7;

    [(PGOverTimeMemoryConfiguration *)v4->_overTheYearsConfiguration setMinimumNumberOfRelevantAssets:13];
    v9 = +[PGFeaturedTimePeriodMemoryConfiguration strictDefaultFeaturedYearMemoryConfiguration];
    featuredYearConfiguration = v4->_featuredYearConfiguration;
    v4->_featuredYearConfiguration = v9;

    [(PGOverTimeMemoryConfiguration *)v4->_featuredYearConfiguration setMinimumNumberOfRelevantAssets:13];
  }

  return v4;
}

@end