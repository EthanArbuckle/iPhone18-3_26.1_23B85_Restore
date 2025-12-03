@interface PGPlaceRegionMemoryGenerator
- (PGPlaceRegionMemoryGenerator)initWithMemoryGenerationContext:(id)context;
- (id)curationOptionsWithRequiredAssetUUIDs:(id)ds eligibleAssetUUIDs:(id)iDs triggeredMemory:(id)memory;
- (id)relevantFeederForTriggeredMemory:(id)memory inGraph:(id)graph allowGuestAsset:(BOOL)asset progressReporter:(id)reporter;
- (id)relevantFeederWithScenedAssetLocalIdentifiers:(id)identifiers assetFetchResult:(id)result graph:(id)graph allowGuestAsset:(BOOL)asset;
- (id)titleGeneratorForTriggeredMemory:(id)memory withKeyAsset:(id)asset curatedAssets:(id)assets extendedCuratedAssets:(id)curatedAssets titleGenerationContext:(id)context inGraph:(id)graph;
- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)type;
- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)graph usingBlock:(id)block;
@end

@implementation PGPlaceRegionMemoryGenerator

- (id)titleGeneratorForTriggeredMemory:(id)memory withKeyAsset:(id)asset curatedAssets:(id)assets extendedCuratedAssets:(id)curatedAssets titleGenerationContext:(id)context inGraph:(id)graph
{
  contextCopy = context;
  memoryCopy = memory;
  memoryFeatureNodes = [memoryCopy memoryFeatureNodes];
  v12 = [(PGGraphNodeCollection *)PGGraphROINodeCollection subsetInCollection:memoryFeatureNodes];
  memoryMomentNodes = [memoryCopy memoryMomentNodes];

  v14 = [PGPlaceRegionMemoryTitleGenerator alloc];
  temporarySet = [memoryMomentNodes temporarySet];
  anyNode = [v12 anyNode];
  v17 = [(PGPlaceMemoryTitleGenerator *)v14 initWithMomentNodes:temporarySet placeNode:anyNode titleGenerationContext:contextCopy];

  v18 = [(PGGraphNodeCollection *)PGGraphYearNodeCollection subsetInCollection:memoryFeatureNodes];
  if ([v18 count] == 1)
  {
    [(PGTitleGenerator *)v17 setFeaturedYearNodes:v18];
  }

  return v17;
}

- (id)relevantFeederForTriggeredMemory:(id)memory inGraph:(id)graph allowGuestAsset:(BOOL)asset progressReporter:(id)reporter
{
  assetCopy = asset;
  graphCopy = graph;
  memoryCopy = memory;
  memoryFeatureNodes = [memoryCopy memoryFeatureNodes];
  v30 = [(PGGraphNodeCollection *)PGGraphROINodeCollection subsetInCollection:memoryFeatureNodes];

  memoryMomentNodes = [memoryCopy memoryMomentNodes];
  v27 = [(PGGraphEdgeCollection *)PGGraphMomentFeaturesEdgeCollection edgesFromNodes:memoryMomentNodes toNodes:v30];

  allRelevantAssetLocalIdentifiers = [v27 allRelevantAssetLocalIdentifiers];
  allObjects = [allRelevantAssetLocalIdentifiers allObjects];

  v13 = MEMORY[0x277CD97B8];
  memoryMomentNodes2 = [memoryCopy memoryMomentNodes];

  localIdentifiers = [memoryMomentNodes2 localIdentifiers];
  allObjects2 = [localIdentifiers allObjects];
  memoryCurationSession = [(PGMemoryGenerator *)self memoryCurationSession];
  photoLibrary = [memoryCurationSession photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
  v20 = [v13 fetchAssetCollectionsWithLocalIdentifiers:allObjects2 options:librarySpecificFetchOptions];

  memoryCurationSession2 = [(PGMemoryGenerator *)self memoryCurationSession];
  curationManager = [memoryCurationSession2 curationManager];
  defaultAssetFetchOptionsForMemories = [curationManager defaultAssetFetchOptionsForMemories];

  [defaultAssetFetchOptionsForMemories setIncludeGuestAssets:assetCopy];
  v24 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollections:v20 options:defaultAssetFetchOptionsForMemories];
  v25 = [(PGPlaceRegionMemoryGenerator *)self relevantFeederWithScenedAssetLocalIdentifiers:allObjects assetFetchResult:v24 graph:graphCopy allowGuestAsset:assetCopy];

  return v25;
}

- (id)curationOptionsWithRequiredAssetUUIDs:(id)ds eligibleAssetUUIDs:(id)iDs triggeredMemory:(id)memory
{
  v7.receiver = self;
  v7.super_class = PGPlaceRegionMemoryGenerator;
  v5 = [(PGMemoryGenerator *)&v7 curationOptionsWithRequiredAssetUUIDs:ds eligibleAssetUUIDs:iDs triggeredMemory:memory];
  [v5 setMinimumNumberOfItems:15];
  [v5 setFailIfMinimumDurationNotReached:1];

  return v5;
}

- (id)relevantFeederWithScenedAssetLocalIdentifiers:(id)identifiers assetFetchResult:(id)result graph:(id)graph allowGuestAsset:(BOOL)asset
{
  resultCopy = result;
  graphCopy = graph;
  identifiersCopy = identifiers;
  fetchedObjects = [resultCopy fetchedObjects];
  v13 = [MEMORY[0x277CBEB98] setWithArray:identifiersCopy];

  v14 = [PGCurationManager filteredAssetsFromAssets:fetchedObjects withContextualAssetLocalIdentifiers:v13 approximateTimeDistance:300.0];

  if ([v14 count])
  {
    v15 = objc_alloc(MEMORY[0x277CD98D0]);
    photoLibrary = [resultCopy photoLibrary];
    fetchPropertySets = [resultCopy fetchPropertySets];
    v18 = [v15 initWithObjects:v14 photoLibrary:photoLibrary fetchType:0 fetchPropertySets:fetchPropertySets identifier:0 registerIfNeeded:0];

    memoryCurationSession = [(PGMemoryGenerator *)self memoryCurationSession];
    v20 = [PGMemoryGenerationHelper feederForMemoriesWithAssetFetchResult:v18 memoryCurationSession:memoryCurationSession graph:graphCopy];
  }

  else
  {
    loggingConnection = [(PGMemoryGenerator *)self loggingConnection];
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      *v23 = 0;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[PGPlaceRegionMemoryGenerator] No extended scened assets found", v23, 2u);
    }

    v20 = 0;
  }

  return v20;
}

- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)graph usingBlock:(id)block
{
  blockCopy = block;
  v6 = [(PGGraphNodeCollection *)PGGraphROINodeCollection nodesInGraph:graph];
  v7 = MEMORY[0x277D22BF8];
  v8 = +[PGGraphFeatureNodeCollection momentOfFeature];
  v9 = [v7 adjacencyWithSources:v6 relation:v8 targetsClass:objc_opt_class()];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __86__PGPlaceRegionMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke;
  v11[3] = &unk_278881770;
  v12 = blockCopy;
  v10 = blockCopy;
  [v9 enumerateTargetsBySourceWithBlock:v11];
}

void __86__PGPlaceRegionMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
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
    result = 10001;
  }

  else
  {
    typeCopy = type;
    if (type == 3)
    {
      result = 10002;
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

- (PGPlaceRegionMemoryGenerator)initWithMemoryGenerationContext:(id)context
{
  v12.receiver = self;
  v12.super_class = PGPlaceRegionMemoryGenerator;
  v3 = [(PGMemoryGenerator *)&v12 initWithMemoryGenerationContext:context];
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