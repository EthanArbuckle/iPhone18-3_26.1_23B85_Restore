@interface PGPlaceLocationMemoryGenerator
- (PGPlaceLocationMemoryGenerator)initWithMemoryGenerationContext:(id)context;
- (id)_addressNodesByCityNodeInGraph:(id)graph;
- (id)curationOptionsWithRequiredAssetUUIDs:(id)ds eligibleAssetUUIDs:(id)iDs triggeredMemory:(id)memory;
- (id)relevantFeederForTriggeredMemory:(id)memory inGraph:(id)graph allowGuestAsset:(BOOL)asset progressReporter:(id)reporter;
- (id)titleGeneratorForTriggeredMemory:(id)memory withKeyAsset:(id)asset curatedAssets:(id)assets extendedCuratedAssets:(id)curatedAssets titleGenerationContext:(id)context inGraph:(id)graph;
- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)type;
- (unint64_t)numberOfRelevantAssetsForMomentNodes:(id)nodes featureNodes:(id)featureNodes;
- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)graph usingBlock:(id)block;
@end

@implementation PGPlaceLocationMemoryGenerator

- (id)titleGeneratorForTriggeredMemory:(id)memory withKeyAsset:(id)asset curatedAssets:(id)assets extendedCuratedAssets:(id)curatedAssets titleGenerationContext:(id)context inGraph:(id)graph
{
  contextCopy = context;
  memoryCopy = memory;
  memoryFeatureNodes = [memoryCopy memoryFeatureNodes];
  v12 = [(PGGraphNodeCollection *)PGGraphLocationCityNodeCollection subsetInCollection:memoryFeatureNodes];
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
  v13 = [(PGGraphNodeCollection *)PGGraphLocationCityNodeCollection subsetInCollection:memoryFeatureNodes];

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
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[PGPlaceLocationMemoryGenerator] One city node expected, %d found", v24, 8u);
    }

    v20 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)curationOptionsWithRequiredAssetUUIDs:(id)ds eligibleAssetUUIDs:(id)iDs triggeredMemory:(id)memory
{
  v7.receiver = self;
  v7.super_class = PGPlaceLocationMemoryGenerator;
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
    v8 = [(PGGraphNodeCollection *)PGGraphLocationCityNodeCollection subsetInCollection:featureNodesCopy];
    graph = [nodesCopy graph];
    v10 = [(PGPlaceLocationMemoryGenerator *)self _addressNodesByCityNodeInGraph:graph];
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

- (id)_addressNodesByCityNodeInGraph:(id)graph
{
  addressNodesByCityNode = self->_addressNodesByCityNode;
  if (!addressNodesByCityNode)
  {
    graphCopy = graph;
    interestingCityNodes = [graphCopy interestingCityNodes];
    v7 = +[PGGraphLocationCityNode filter];
    v26 = [PGGraphNamedLocationNode filterBySettingNameNotEmptyPropertyOnFilter:v7];

    relation = [v26 relation];
    v9 = [(MANodeCollection *)PGGraphLocationCityNodeCollection nodesRelatedToNodes:interestingCityNodes withRelation:relation];

    addressNodes = [v9 addressNodes];
    preciseSubset = [addressNodes preciseSubset];

    meNodeCollection = [graphCopy meNodeCollection];
    homeOrWorkNodes = [meNodeCollection homeOrWorkNodes];
    addressNodes2 = [homeOrWorkNodes addressNodes];
    v13 = [preciseSubset collectionBySubtracting:addressNodes2];

    v14 = [(PGGraphEdgeCollection *)PGGraphAddressEdgeCollection edgesToNodes:v13];
    v15 = objc_alloc_init(MEMORY[0x277D22BD0]);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __65__PGPlaceLocationMemoryGenerator__addressNodesByCityNodeInGraph___block_invoke;
    v27[3] = &unk_2788868F0;
    v28 = v15;
    v16 = v15;
    [v14 enumerateEdgesUsingBlock:v27];
    v17 = MEMORY[0x277D22BF8];
    v18 = +[PGGraphLocationCityNode addressOfCity];
    v19 = [v17 adjacencyWithSources:v9 relation:v18 targetsClass:objc_opt_class()];

    v20 = [(MAElementCollection *)[PGGraphAddressNodeCollection alloc] initWithGraph:graphCopy elementIdentifiers:v16];
    v21 = [v19 intersectingTargetsWith:v20];
    v22 = self->_addressNodesByCityNode;
    self->_addressNodesByCityNode = v21;

    addressNodesByCityNode = self->_addressNodesByCityNode;
  }

  return addressNodesByCityNode;
}

void __65__PGPlaceLocationMemoryGenerator__addressNodesByCityNodeInGraph___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  [v6 relevance];
  if (v3 == 1.0)
  {
    v4 = *(a1 + 32);
    v5 = [v6 targetNode];
    [v4 addIdentifier:{objc_msgSend(v5, "identifier")}];
  }
}

- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)graph usingBlock:(id)block
{
  blockCopy = block;
  v7 = [(PGPlaceLocationMemoryGenerator *)self _addressNodesByCityNodeInGraph:graph];
  v8 = MEMORY[0x277D22BF8];
  sources = [v7 sources];
  v10 = +[PGGraphLocationCityNode momentInCity];
  v11 = [v8 adjacencyWithSources:sources relation:v10 targetsClass:objc_opt_class()];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __88__PGPlaceLocationMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke;
  v13[3] = &unk_2788868C8;
  v14 = blockCopy;
  v12 = blockCopy;
  [v11 enumerateTargetsBySourceWithBlock:v13];
}

void __88__PGPlaceLocationMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
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
    result = 9001;
  }

  else
  {
    typeCopy = type;
    if (type == 3)
    {
      result = 9002;
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

- (PGPlaceLocationMemoryGenerator)initWithMemoryGenerationContext:(id)context
{
  v12.receiver = self;
  v12.super_class = PGPlaceLocationMemoryGenerator;
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