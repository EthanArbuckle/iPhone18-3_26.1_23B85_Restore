@interface PGSocialGroupMemoryGenerator
- (PGSocialGroupMemoryGenerator)initWithMemoryGenerationContext:(id)context;
- (id)_meNodeAsCollectionInGraph:(id)graph;
- (id)allFeatureNodesForMemoryNodeWithFeatureNodes:(id)nodes;
- (id)curationOptionsWithRequiredAssetUUIDs:(id)ds eligibleAssetUUIDs:(id)iDs triggeredMemory:(id)memory;
- (id)keyAssetCurationOptionsWithTriggeredMemory:(id)memory inGraph:(id)graph;
- (id)titleGeneratorForTriggeredMemory:(id)memory withKeyAsset:(id)asset curatedAssets:(id)assets extendedCuratedAssets:(id)curatedAssets titleGenerationContext:(id)context inGraph:(id)graph;
- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)type;
- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)graph usingBlock:(id)block;
@end

@implementation PGSocialGroupMemoryGenerator

- (id)titleGeneratorForTriggeredMemory:(id)memory withKeyAsset:(id)asset curatedAssets:(id)assets extendedCuratedAssets:(id)curatedAssets titleGenerationContext:(id)context inGraph:(id)graph
{
  memoryCopy = memory;
  contextCopy = context;
  memoryFeatureNodes = [memoryCopy memoryFeatureNodes];
  v13 = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection subsetInCollection:memoryFeatureNodes];
  if ([v13 count])
  {
    memoryMomentNodes = [memoryCopy memoryMomentNodes];
    temporarySet = [memoryMomentNodes temporarySet];

    v16 = [PGPeopleMemoryTitleGenerator peopleOverTimeTimeTitleOptionsWithMomentNodes:temporarySet];
    v17 = [(PGGraphNodeCollection *)PGGraphYearNodeCollection subsetInCollection:memoryFeatureNodes];
    if ([v17 count] == 1)
    {
      [v16 setFeaturedYearNodes:v17];
    }

    v18 = [PGPeopleMemoryTitleGenerator alloc];
    temporarySet2 = [v13 temporarySet];
    v20 = [(PGPeopleMemoryTitleGenerator *)v18 initWithMomentNodes:temporarySet personNodes:temporarySet2 timeTitleOptions:v16 type:2 titleGenerationContext:contextCopy];
  }

  else
  {
    loggingConnection = [(PGMemoryGenerator *)self loggingConnection];
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      *v23 = 0;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[PGSocialGroupMemoryGenerator] No person nodes found", v23, 2u);
    }

    v20 = 0;
  }

  return v20;
}

- (id)curationOptionsWithRequiredAssetUUIDs:(id)ds eligibleAssetUUIDs:(id)iDs triggeredMemory:(id)memory
{
  v13.receiver = self;
  v13.super_class = PGSocialGroupMemoryGenerator;
  memoryCopy = memory;
  v8 = [(PGMemoryGenerator *)&v13 curationOptionsWithRequiredAssetUUIDs:ds eligibleAssetUUIDs:iDs triggeredMemory:memoryCopy];
  memoryFeatureNodes = [memoryCopy memoryFeatureNodes];

  v10 = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection subsetInCollection:memoryFeatureNodes];

  localIdentifiers = [v10 localIdentifiers];
  [v8 setPersonLocalIdentifiersToFocus:localIdentifiers];

  [v8 setMinimumNumberOfItems:15];
  [v8 setFailIfMinimumDurationNotReached:1];

  return v8;
}

- (id)keyAssetCurationOptionsWithTriggeredMemory:(id)memory inGraph:(id)graph
{
  v16.receiver = self;
  v16.super_class = PGSocialGroupMemoryGenerator;
  memoryCopy = memory;
  v6 = [(PGMemoryGenerator *)&v16 keyAssetCurationOptionsWithTriggeredMemory:memoryCopy inGraph:graph];
  memoryFeatureNodes = [memoryCopy memoryFeatureNodes];
  v8 = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection subsetInCollection:memoryFeatureNodes];

  memoryMomentNodes = [memoryCopy memoryMomentNodes];

  personNodes = [memoryMomentNodes personNodes];
  v11 = [(PGGraphNodeCollection *)PGGraphMeNodeCollection subsetInCollection:personNodes];

  localIdentifiers = [v8 localIdentifiers];
  localIdentifiers2 = [v11 localIdentifiers];
  v14 = [localIdentifiers setByAddingObjectsFromSet:localIdentifiers2];
  [v6 setReferencePersonLocalIdentifiers:v14];

  [v6 setMinimumNumberOfReferencePersons:2];

  return v6;
}

- (id)_meNodeAsCollectionInGraph:(id)graph
{
  meNodeAsCollection = self->_meNodeAsCollection;
  if (!meNodeAsCollection)
  {
    meNodeCollection = [graph meNodeCollection];
    v6 = self->_meNodeAsCollection;
    self->_meNodeAsCollection = meNodeCollection;

    meNodeAsCollection = self->_meNodeAsCollection;
  }

  return meNodeAsCollection;
}

- (id)allFeatureNodesForMemoryNodeWithFeatureNodes:(id)nodes
{
  nodesCopy = nodes;
  v5 = [(PGGraphNodeCollection *)PGGraphSocialGroupNodeCollection subsetInCollection:nodesCopy];
  personNodes = [v5 personNodes];
  if ([personNodes count] == 1)
  {
    graph = [nodesCopy graph];
    v8 = [(PGSocialGroupMemoryGenerator *)self _meNodeAsCollectionInGraph:graph];

    v9 = [personNodes collectionByFormingUnionWith:v8];

    personNodes = v9;
  }

  v10 = [nodesCopy collectionByFormingUnionWith:personNodes];

  return v10;
}

- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)graph usingBlock:(id)block
{
  blockCopy = block;
  v6 = [(PGGraphNodeCollection *)PGGraphSocialGroupNodeCollection nodesInGraph:graph];
  v7 = MEMORY[0x277D22BF8];
  v8 = +[PGGraphFeatureNodeCollection momentOfFeature];
  v9 = [v7 adjacencyWithSources:v6 relation:v8 targetsClass:objc_opt_class()];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __86__PGSocialGroupMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke;
  v11[3] = &unk_278881F78;
  v12 = blockCopy;
  v10 = blockCopy;
  [v9 enumerateTargetsBySourceWithBlock:v11];
}

void __86__PGSocialGroupMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
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
    result = 3001;
  }

  else
  {
    typeCopy = type;
    if (type == 3)
    {
      result = 3002;
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

- (PGSocialGroupMemoryGenerator)initWithMemoryGenerationContext:(id)context
{
  v12.receiver = self;
  v12.super_class = PGSocialGroupMemoryGenerator;
  v3 = [(PGMemoryGenerator *)&v12 initWithMemoryGenerationContext:context];
  v4 = v3;
  if (v3)
  {
    v3->_requireSceneProcessingMeetsThresholdOverTime = 1;
    v3->_requireFaceProcessingMeetsThresholdOverTime = 1;
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
    [(PGOverTimeMemoryConfiguration *)v4->_overTheYearsConfiguration setAboveMomentAverageContentScoreThreshold:0.5];
    v9 = +[PGFeaturedTimePeriodMemoryConfiguration strictDefaultFeaturedYearMemoryConfiguration];
    featuredYearConfiguration = v4->_featuredYearConfiguration;
    v4->_featuredYearConfiguration = v9;

    [(PGOverTimeMemoryConfiguration *)v4->_featuredYearConfiguration setMinimumNumberOfRelevantAssets:13];
    [(PGOverTimeMemoryConfiguration *)v4->_featuredYearConfiguration setAboveMomentAverageContentScoreThreshold:0.5];
  }

  return v4;
}

@end