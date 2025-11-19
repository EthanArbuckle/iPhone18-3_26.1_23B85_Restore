@interface PGSocialGroupMemoryGenerator
- (PGSocialGroupMemoryGenerator)initWithMemoryGenerationContext:(id)a3;
- (id)_meNodeAsCollectionInGraph:(id)a3;
- (id)allFeatureNodesForMemoryNodeWithFeatureNodes:(id)a3;
- (id)curationOptionsWithRequiredAssetUUIDs:(id)a3 eligibleAssetUUIDs:(id)a4 triggeredMemory:(id)a5;
- (id)keyAssetCurationOptionsWithTriggeredMemory:(id)a3 inGraph:(id)a4;
- (id)titleGeneratorForTriggeredMemory:(id)a3 withKeyAsset:(id)a4 curatedAssets:(id)a5 extendedCuratedAssets:(id)a6 titleGenerationContext:(id)a7 inGraph:(id)a8;
- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)a3;
- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)a3 usingBlock:(id)a4;
@end

@implementation PGSocialGroupMemoryGenerator

- (id)titleGeneratorForTriggeredMemory:(id)a3 withKeyAsset:(id)a4 curatedAssets:(id)a5 extendedCuratedAssets:(id)a6 titleGenerationContext:(id)a7 inGraph:(id)a8
{
  v10 = a3;
  v11 = a7;
  v12 = [v10 memoryFeatureNodes];
  v13 = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection subsetInCollection:v12];
  if ([v13 count])
  {
    v14 = [v10 memoryMomentNodes];
    v15 = [v14 temporarySet];

    v16 = [PGPeopleMemoryTitleGenerator peopleOverTimeTimeTitleOptionsWithMomentNodes:v15];
    v17 = [(PGGraphNodeCollection *)PGGraphYearNodeCollection subsetInCollection:v12];
    if ([v17 count] == 1)
    {
      [v16 setFeaturedYearNodes:v17];
    }

    v18 = [PGPeopleMemoryTitleGenerator alloc];
    v19 = [v13 temporarySet];
    v20 = [(PGPeopleMemoryTitleGenerator *)v18 initWithMomentNodes:v15 personNodes:v19 timeTitleOptions:v16 type:2 titleGenerationContext:v11];
  }

  else
  {
    v21 = [(PGMemoryGenerator *)self loggingConnection];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *v23 = 0;
      _os_log_error_impl(&dword_22F0FC000, v21, OS_LOG_TYPE_ERROR, "[PGSocialGroupMemoryGenerator] No person nodes found", v23, 2u);
    }

    v20 = 0;
  }

  return v20;
}

- (id)curationOptionsWithRequiredAssetUUIDs:(id)a3 eligibleAssetUUIDs:(id)a4 triggeredMemory:(id)a5
{
  v13.receiver = self;
  v13.super_class = PGSocialGroupMemoryGenerator;
  v7 = a5;
  v8 = [(PGMemoryGenerator *)&v13 curationOptionsWithRequiredAssetUUIDs:a3 eligibleAssetUUIDs:a4 triggeredMemory:v7];
  v9 = [v7 memoryFeatureNodes];

  v10 = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection subsetInCollection:v9];

  v11 = [v10 localIdentifiers];
  [v8 setPersonLocalIdentifiersToFocus:v11];

  [v8 setMinimumNumberOfItems:15];
  [v8 setFailIfMinimumDurationNotReached:1];

  return v8;
}

- (id)keyAssetCurationOptionsWithTriggeredMemory:(id)a3 inGraph:(id)a4
{
  v16.receiver = self;
  v16.super_class = PGSocialGroupMemoryGenerator;
  v5 = a3;
  v6 = [(PGMemoryGenerator *)&v16 keyAssetCurationOptionsWithTriggeredMemory:v5 inGraph:a4];
  v7 = [v5 memoryFeatureNodes];
  v8 = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection subsetInCollection:v7];

  v9 = [v5 memoryMomentNodes];

  v10 = [v9 personNodes];
  v11 = [(PGGraphNodeCollection *)PGGraphMeNodeCollection subsetInCollection:v10];

  v12 = [v8 localIdentifiers];
  v13 = [v11 localIdentifiers];
  v14 = [v12 setByAddingObjectsFromSet:v13];
  [v6 setReferencePersonLocalIdentifiers:v14];

  [v6 setMinimumNumberOfReferencePersons:2];

  return v6;
}

- (id)_meNodeAsCollectionInGraph:(id)a3
{
  meNodeAsCollection = self->_meNodeAsCollection;
  if (!meNodeAsCollection)
  {
    v5 = [a3 meNodeCollection];
    v6 = self->_meNodeAsCollection;
    self->_meNodeAsCollection = v5;

    meNodeAsCollection = self->_meNodeAsCollection;
  }

  return meNodeAsCollection;
}

- (id)allFeatureNodesForMemoryNodeWithFeatureNodes:(id)a3
{
  v4 = a3;
  v5 = [(PGGraphNodeCollection *)PGGraphSocialGroupNodeCollection subsetInCollection:v4];
  v6 = [v5 personNodes];
  if ([v6 count] == 1)
  {
    v7 = [v4 graph];
    v8 = [(PGSocialGroupMemoryGenerator *)self _meNodeAsCollectionInGraph:v7];

    v9 = [v6 collectionByFormingUnionWith:v8];

    v6 = v9;
  }

  v10 = [v4 collectionByFormingUnionWith:v6];

  return v10;
}

- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)a3 usingBlock:(id)a4
{
  v5 = a4;
  v6 = [(PGGraphNodeCollection *)PGGraphSocialGroupNodeCollection nodesInGraph:a3];
  v7 = MEMORY[0x277D22BF8];
  v8 = +[PGGraphFeatureNodeCollection momentOfFeature];
  v9 = [v7 adjacencyWithSources:v6 relation:v8 targetsClass:objc_opt_class()];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __86__PGSocialGroupMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke;
  v11[3] = &unk_278881F78;
  v12 = v5;
  v10 = v5;
  [v9 enumerateTargetsBySourceWithBlock:v11];
}

void __86__PGSocialGroupMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
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
    result = 3001;
  }

  else
  {
    v3 = a3;
    if (a3 == 3)
    {
      result = 3002;
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

- (PGSocialGroupMemoryGenerator)initWithMemoryGenerationContext:(id)a3
{
  v12.receiver = self;
  v12.super_class = PGSocialGroupMemoryGenerator;
  v3 = [(PGMemoryGenerator *)&v12 initWithMemoryGenerationContext:a3];
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