@interface PGPlaceAreaMemoryGenerator
- (PGPlaceAreaMemoryGenerator)initWithMemoryGenerationContext:(id)context;
- (id)_addressNodesByAreaNodeInGraph:(id)graph;
- (id)curationOptionsWithRequiredAssetUUIDs:(id)ds eligibleAssetUUIDs:(id)iDs triggeredMemory:(id)memory;
- (id)relevantFeederForTriggeredMemory:(id)memory inGraph:(id)graph allowGuestAsset:(BOOL)asset progressReporter:(id)reporter;
- (id)titleGeneratorForTriggeredMemory:(id)memory withKeyAsset:(id)asset curatedAssets:(id)assets extendedCuratedAssets:(id)curatedAssets titleGenerationContext:(id)context inGraph:(id)graph;
- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)type;
- (unint64_t)numberOfRelevantAssetsForMomentNodes:(id)nodes featureNodes:(id)featureNodes;
- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)graph usingBlock:(id)block;
@end

@implementation PGPlaceAreaMemoryGenerator

- (id)titleGeneratorForTriggeredMemory:(id)memory withKeyAsset:(id)asset curatedAssets:(id)assets extendedCuratedAssets:(id)curatedAssets titleGenerationContext:(id)context inGraph:(id)graph
{
  contextCopy = context;
  memoryCopy = memory;
  memoryFeatureNodes = [memoryCopy memoryFeatureNodes];
  v12 = [(PGGraphNodeCollection *)PGGraphAreaNodeCollection subsetInCollection:memoryFeatureNodes];
  memoryMomentNodes = [memoryCopy memoryMomentNodes];

  v14 = [PGPlaceMemoryTitleGenerator alloc];
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
  v25 = *MEMORY[0x277D85DE8];
  memoryCopy = memory;
  graphCopy = graph;
  reporterCopy = reporter;
  memoryFeatureNodes = [memoryCopy memoryFeatureNodes];
  v13 = [(PGGraphNodeCollection *)PGGraphAreaNodeCollection subsetInCollection:memoryFeatureNodes];

  if ([v13 count] == 1)
  {
    memoryMomentNodes = [memoryCopy memoryMomentNodes];
    anyNode = [v13 anyNode];
    memoryCurationSession = [(PGMemoryGenerator *)self memoryCurationSession];
    curationManager = [memoryCurationSession curationManager];
    v18 = [PGMemoryGenerationHelper assetFetchResultForMomentNodes:memoryMomentNodes inLocationOrAreaNode:anyNode requireInteresting:0 curationManager:curationManager progressReporter:reporterCopy];

    memoryCurationSession2 = [(PGMemoryGenerator *)self memoryCurationSession];
    v20 = [PGMemoryGenerationHelper feederForMemoriesWithAssetFetchResult:v18 memoryCurationSession:memoryCurationSession2 graph:graphCopy];
  }

  else
  {
    loggingConnection = [(PGMemoryGenerator *)self loggingConnection];
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      v24[0] = 67109120;
      v24[1] = [v13 count];
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[PGPlaceAreaMemoryGenerator] One AOI node expected, found %d", v24, 8u);
    }

    v20 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)curationOptionsWithRequiredAssetUUIDs:(id)ds eligibleAssetUUIDs:(id)iDs triggeredMemory:(id)memory
{
  v7.receiver = self;
  v7.super_class = PGPlaceAreaMemoryGenerator;
  v5 = [(PGMemoryGenerator *)&v7 curationOptionsWithRequiredAssetUUIDs:ds eligibleAssetUUIDs:iDs triggeredMemory:memory];
  [v5 setMinimumNumberOfItems:15];
  [v5 setFailIfMinimumDurationNotReached:1];

  return v5;
}

- (unint64_t)numberOfRelevantAssetsForMomentNodes:(id)nodes featureNodes:(id)featureNodes
{
  nodesCopy = nodes;
  featureNodesCopy = featureNodes;
  if ([nodesCopy count])
  {
    v8 = [(PGGraphNodeCollection *)PGGraphAreaNodeCollection subsetInCollection:featureNodesCopy];
    graph = [nodesCopy graph];
    v10 = [(PGPlaceAreaMemoryGenerator *)self _addressNodesByAreaNodeInGraph:graph];

    v11 = [v10 targetsForSources:v8];
    v12 = [(PGGraphEdgeCollection *)PGGraphAddressEdgeCollection edgesFromNodes:nodesCopy toNodes:v11];
    numberOfAssets = [v12 numberOfAssets];
  }

  else
  {
    numberOfAssets = 0;
  }

  return numberOfAssets;
}

- (id)_addressNodesByAreaNodeInGraph:(id)graph
{
  addressNodesByAreaNode = self->_addressNodesByAreaNode;
  if (!addressNodesByAreaNode)
  {
    graphCopy = graph;
    supersetCityNodes = [graphCopy supersetCityNodes];
    addressNodes = [supersetCityNodes addressNodes];
    v8 = +[PGGraphAreaNode nonBlockedFilter];
    v9 = [PGGraphNamedLocationNode filterBySettingNameNotEmptyPropertyOnFilter:v8];

    v10 = [(MANodeCollection *)PGGraphAreaNodeCollection nodesMatchingFilter:v9 inGraph:graphCopy];

    v11 = MEMORY[0x277D22BF8];
    v12 = +[PGGraphAreaNode addressOfArea];
    v13 = [v11 adjacencyWithSources:v10 relation:v12 targetsClass:objc_opt_class()];

    v14 = [v13 subtractingTargetsWith:addressNodes];
    v15 = self->_addressNodesByAreaNode;
    self->_addressNodesByAreaNode = v14;

    addressNodesByAreaNode = self->_addressNodesByAreaNode;
  }

  return addressNodesByAreaNode;
}

- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)graph usingBlock:(id)block
{
  v25[2] = *MEMORY[0x277D85DE8];
  blockCopy = block;
  graphCopy = graph;
  v8 = [(PGPlaceAreaMemoryGenerator *)self _addressNodesByAreaNodeInGraph:graphCopy];
  v9 = MEMORY[0x277D22C90];
  v10 = +[PGGraphAreaNode addressOfArea];
  v25[0] = v10;
  v11 = +[PGGraphAddressNode momentOfAddress];
  v25[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  v13 = [v9 chain:v12];

  v14 = MEMORY[0x277D22BF8];
  sources = [v8 sources];
  v16 = [v14 adjacencyWithSources:sources relation:v13 targetsClass:objc_opt_class()];

  v17 = [(PGGraphNodeCollection *)PGGraphFrequentLocationNodeCollection nodesInGraph:graphCopy];

  addressNodes = [v17 addressNodes];
  momentNodes = [addressNodes momentNodes];
  v20 = [v16 subtractingTargetsWith:momentNodes];

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __84__PGPlaceAreaMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke;
  v23[3] = &unk_27887FCF0;
  v24 = blockCopy;
  v21 = blockCopy;
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

- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)type
{
  v13 = *MEMORY[0x277D85DE8];
  if (type == 1)
  {
    result = 9003;
  }

  else
  {
    typeCopy = type;
    if (type == 3)
    {
      result = 9004;
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

- (PGPlaceAreaMemoryGenerator)initWithMemoryGenerationContext:(id)context
{
  v12.receiver = self;
  v12.super_class = PGPlaceAreaMemoryGenerator;
  v3 = [(PGMemoryGenerator *)&v12 initWithMemoryGenerationContext:context];
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