@interface PGChildOutdoorMemoryGenerator
- (PGChildOutdoorMemoryGenerator)initWithMemoryGenerationContext:(id)context;
- (id)keyAssetCurationOptionsWithTriggeredMemory:(id)memory inGraph:(id)graph;
- (id)outdoorROINodesInGraph:(id)graph;
- (id)titleGeneratorForTriggeredMemory:(id)memory withKeyAsset:(id)asset curatedAssets:(id)assets extendedCuratedAssets:(id)curatedAssets titleGenerationContext:(id)context inGraph:(id)graph;
- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)type;
- (unint64_t)numberOfRelevantAssetsForMomentNodes:(id)nodes featureNodes:(id)featureNodes;
- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)graph usingBlock:(id)block;
@end

@implementation PGChildOutdoorMemoryGenerator

- (id)titleGeneratorForTriggeredMemory:(id)memory withKeyAsset:(id)asset curatedAssets:(id)assets extendedCuratedAssets:(id)curatedAssets titleGenerationContext:(id)context inGraph:(id)graph
{
  memoryCopy = memory;
  contextCopy = context;
  memoryFeatureNodes = [memoryCopy memoryFeatureNodes];
  v12 = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection subsetInCollection:memoryFeatureNodes];
  if ([v12 count] == 1)
  {
    v13 = [PGChildOutdoorMemoryTitleGenerator alloc];
    memoryMomentNodes = [memoryCopy memoryMomentNodes];
    temporarySet = [memoryMomentNodes temporarySet];
    anyNode = [v12 anyNode];
    v17 = [(PGChildOutdoorMemoryTitleGenerator *)v13 initWithMomentNodes:temporarySet personNode:anyNode type:0 titleGenerationContext:contextCopy];

    memoryFeatureNodes2 = [memoryCopy memoryFeatureNodes];
    v19 = [(PGGraphNodeCollection *)PGGraphYearNodeCollection subsetInCollection:memoryFeatureNodes2];

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

- (id)keyAssetCurationOptionsWithTriggeredMemory:(id)memory inGraph:(id)graph
{
  v11.receiver = self;
  v11.super_class = PGChildOutdoorMemoryGenerator;
  memoryCopy = memory;
  v6 = [(PGMemoryGenerator *)&v11 keyAssetCurationOptionsWithTriggeredMemory:memoryCopy inGraph:graph];
  memoryFeatureNodes = [memoryCopy memoryFeatureNodes];

  v8 = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection subsetInCollection:memoryFeatureNodes];
  localIdentifiers = [v8 localIdentifiers];
  [v6 setReferencePersonLocalIdentifiers:localIdentifiers];

  return v6;
}

- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)graph usingBlock:(id)block
{
  v21[2] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  blockCopy = block;
  v7 = [PGMemoryGeneratorUtils babyAndChildPersonNodesAtHomeOrFrequentLocationInGraph:graphCopy];
  if ([v7 count])
  {
    v8 = [PGMemoryGeneratorUtils outdoorROIMomentNodesNotAtHomeOrFrequentLocationInGraph:graphCopy useMomentFeatureEdges:1];
    if ([v8 count])
    {
      v9 = MEMORY[0x277D22C90];
      v10 = +[PGGraphMomentNode featureOfMoment];
      v21[0] = v10;
      v11 = +[PGGraphPersonNode filter];
      relation = [v11 relation];
      v21[1] = relation;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
      v14 = [v9 chain:v13];

      v15 = [MEMORY[0x277D22BF8] adjacencyWithSources:v8 relation:v14 targetsClass:objc_opt_class()];
      v16 = [v15 intersectingTargetsWith:v7];

      transposed = [v16 transposed];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __87__PGChildOutdoorMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke;
      v19[3] = &unk_278880440;
      v20 = blockCopy;
      [transposed enumerateTargetsBySourceWithBlock:v19];
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

- (unint64_t)numberOfRelevantAssetsForMomentNodes:(id)nodes featureNodes:(id)featureNodes
{
  v22 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  featureNodesCopy = featureNodes;
  if ([(PGOverTimeMemoryGenerator *)self intersectRelevantAssetsForFeatures])
  {
    loggingConnection = [(PGMemoryGenerator *)self loggingConnection];
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v21[0]) = 0;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Cannot set intersectRelevantAssetsForFeatures=YES and override this superclass method", v21, 2u);
    }
  }

  if ([nodesCopy count])
  {
    v9 = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection subsetInCollection:featureNodesCopy];
    if ([v9 count] == 1)
    {
      loggingConnection2 = [(PGGraphEdgeCollection *)PGGraphMomentFeaturesEdgeCollection edgesFromNodes:nodesCopy toNodes:v9];
      graph = [nodesCopy graph];
      v12 = [(PGChildOutdoorMemoryGenerator *)self outdoorROINodesInGraph:graph];

      v13 = [(PGGraphEdgeCollection *)PGGraphMomentFeaturesEdgeCollection edgesFromNodes:nodesCopy toNodes:v12];
      allRelevantAssetUUIDs = [v13 allRelevantAssetUUIDs];
      v15 = [allRelevantAssetUUIDs mutableCopy];

      allRelevantAssetUUIDs2 = [loggingConnection2 allRelevantAssetUUIDs];
      [v15 intersectSet:allRelevantAssetUUIDs2];
      v17 = [v15 count];
    }

    else
    {
      loggingConnection2 = [(PGMemoryGenerator *)self loggingConnection];
      if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_ERROR))
      {
        v20 = [v9 count];
        v21[0] = 67109120;
        v21[1] = v20;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_ERROR, "[PGChildOutdoorMemoryGenerator] One person node expected, found %d", v21, 8u);
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

- (id)outdoorROINodesInGraph:(id)graph
{
  outdoorROINodes = self->_outdoorROINodes;
  if (!outdoorROINodes)
  {
    v5 = [PGMemoryGeneratorUtils outdoorROINodesInGraph:graph];
    v6 = self->_outdoorROINodes;
    self->_outdoorROINodes = v5;

    outdoorROINodes = self->_outdoorROINodes;
  }

  return outdoorROINodes;
}

- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)type
{
  v13 = *MEMORY[0x277D85DE8];
  if (type == 1)
  {
    result = 15005;
  }

  else
  {
    typeCopy = type;
    if (type == 3)
    {
      result = 15006;
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

- (PGChildOutdoorMemoryGenerator)initWithMemoryGenerationContext:(id)context
{
  v16.receiver = self;
  v16.super_class = PGChildOutdoorMemoryGenerator;
  v3 = [(PGMemoryGenerator *)&v16 initWithMemoryGenerationContext:context];
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