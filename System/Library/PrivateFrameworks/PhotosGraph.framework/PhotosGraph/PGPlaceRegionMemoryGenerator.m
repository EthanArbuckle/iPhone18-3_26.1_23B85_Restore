@interface PGPlaceRegionMemoryGenerator
- (PGPlaceRegionMemoryGenerator)initWithMemoryGenerationContext:(id)a3;
- (id)curationOptionsWithRequiredAssetUUIDs:(id)a3 eligibleAssetUUIDs:(id)a4 triggeredMemory:(id)a5;
- (id)relevantFeederForTriggeredMemory:(id)a3 inGraph:(id)a4 allowGuestAsset:(BOOL)a5 progressReporter:(id)a6;
- (id)relevantFeederWithScenedAssetLocalIdentifiers:(id)a3 assetFetchResult:(id)a4 graph:(id)a5 allowGuestAsset:(BOOL)a6;
- (id)titleGeneratorForTriggeredMemory:(id)a3 withKeyAsset:(id)a4 curatedAssets:(id)a5 extendedCuratedAssets:(id)a6 titleGenerationContext:(id)a7 inGraph:(id)a8;
- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)a3;
- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)a3 usingBlock:(id)a4;
@end

@implementation PGPlaceRegionMemoryGenerator

- (id)titleGeneratorForTriggeredMemory:(id)a3 withKeyAsset:(id)a4 curatedAssets:(id)a5 extendedCuratedAssets:(id)a6 titleGenerationContext:(id)a7 inGraph:(id)a8
{
  v9 = a7;
  v10 = a3;
  v11 = [v10 memoryFeatureNodes];
  v12 = [(PGGraphNodeCollection *)PGGraphROINodeCollection subsetInCollection:v11];
  v13 = [v10 memoryMomentNodes];

  v14 = [PGPlaceRegionMemoryTitleGenerator alloc];
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
  v28 = a5;
  v29 = a4;
  v8 = a3;
  v9 = [v8 memoryFeatureNodes];
  v30 = [(PGGraphNodeCollection *)PGGraphROINodeCollection subsetInCollection:v9];

  v10 = [v8 memoryMomentNodes];
  v27 = [(PGGraphEdgeCollection *)PGGraphMomentFeaturesEdgeCollection edgesFromNodes:v10 toNodes:v30];

  v11 = [v27 allRelevantAssetLocalIdentifiers];
  v12 = [v11 allObjects];

  v13 = MEMORY[0x277CD97B8];
  v14 = [v8 memoryMomentNodes];

  v15 = [v14 localIdentifiers];
  v16 = [v15 allObjects];
  v17 = [(PGMemoryGenerator *)self memoryCurationSession];
  v18 = [v17 photoLibrary];
  v19 = [v18 librarySpecificFetchOptions];
  v20 = [v13 fetchAssetCollectionsWithLocalIdentifiers:v16 options:v19];

  v21 = [(PGMemoryGenerator *)self memoryCurationSession];
  v22 = [v21 curationManager];
  v23 = [v22 defaultAssetFetchOptionsForMemories];

  [v23 setIncludeGuestAssets:v28];
  v24 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollections:v20 options:v23];
  v25 = [(PGPlaceRegionMemoryGenerator *)self relevantFeederWithScenedAssetLocalIdentifiers:v12 assetFetchResult:v24 graph:v29 allowGuestAsset:v28];

  return v25;
}

- (id)curationOptionsWithRequiredAssetUUIDs:(id)a3 eligibleAssetUUIDs:(id)a4 triggeredMemory:(id)a5
{
  v7.receiver = self;
  v7.super_class = PGPlaceRegionMemoryGenerator;
  v5 = [(PGMemoryGenerator *)&v7 curationOptionsWithRequiredAssetUUIDs:a3 eligibleAssetUUIDs:a4 triggeredMemory:a5];
  [v5 setMinimumNumberOfItems:15];
  [v5 setFailIfMinimumDurationNotReached:1];

  return v5;
}

- (id)relevantFeederWithScenedAssetLocalIdentifiers:(id)a3 assetFetchResult:(id)a4 graph:(id)a5 allowGuestAsset:(BOOL)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a3;
  v12 = [v9 fetchedObjects];
  v13 = [MEMORY[0x277CBEB98] setWithArray:v11];

  v14 = [PGCurationManager filteredAssetsFromAssets:v12 withContextualAssetLocalIdentifiers:v13 approximateTimeDistance:300.0];

  if ([v14 count])
  {
    v15 = objc_alloc(MEMORY[0x277CD98D0]);
    v16 = [v9 photoLibrary];
    v17 = [v9 fetchPropertySets];
    v18 = [v15 initWithObjects:v14 photoLibrary:v16 fetchType:0 fetchPropertySets:v17 identifier:0 registerIfNeeded:0];

    v19 = [(PGMemoryGenerator *)self memoryCurationSession];
    v20 = [PGMemoryGenerationHelper feederForMemoriesWithAssetFetchResult:v18 memoryCurationSession:v19 graph:v10];
  }

  else
  {
    v21 = [(PGMemoryGenerator *)self loggingConnection];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *v23 = 0;
      _os_log_error_impl(&dword_22F0FC000, v21, OS_LOG_TYPE_ERROR, "[PGPlaceRegionMemoryGenerator] No extended scened assets found", v23, 2u);
    }

    v20 = 0;
  }

  return v20;
}

- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)a3 usingBlock:(id)a4
{
  v5 = a4;
  v6 = [(PGGraphNodeCollection *)PGGraphROINodeCollection nodesInGraph:a3];
  v7 = MEMORY[0x277D22BF8];
  v8 = +[PGGraphFeatureNodeCollection momentOfFeature];
  v9 = [v7 adjacencyWithSources:v6 relation:v8 targetsClass:objc_opt_class()];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __86__PGPlaceRegionMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke;
  v11[3] = &unk_278881770;
  v12 = v5;
  v10 = v5;
  [v9 enumerateTargetsBySourceWithBlock:v11];
}

void __86__PGPlaceRegionMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
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
    result = 10001;
  }

  else
  {
    v3 = a3;
    if (a3 == 3)
    {
      result = 10002;
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

- (PGPlaceRegionMemoryGenerator)initWithMemoryGenerationContext:(id)a3
{
  v12.receiver = self;
  v12.super_class = PGPlaceRegionMemoryGenerator;
  v3 = [(PGMemoryGenerator *)&v12 initWithMemoryGenerationContext:a3];
  v4 = v3;
  if (v3)
  {
    v3->_requireSceneProcessingMeetsThresholdOverTime = 1;
    v5 = objc_alloc_init(PGMemoryMomentRequirements);
    momentRequirements = v4->_momentRequirements;
    v4->_momentRequirements = v5;

    [(PGMemoryMomentRequirements *)v4->_momentRequirements setFilterUninterestingForMemories:1];
    [(PGMemoryMomentRequirements *)v4->_momentRequirements setMinimumNumberOfRelevantAssets:1];
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