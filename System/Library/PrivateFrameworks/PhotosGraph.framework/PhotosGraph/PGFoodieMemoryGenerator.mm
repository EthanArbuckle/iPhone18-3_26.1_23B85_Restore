@interface PGFoodieMemoryGenerator
+ (id)incompatibleMomentNodesInGraph:(id)graph;
- (PGFoodieMemoryGenerator)initWithMemoryGenerationContext:(id)context;
- (id)_foodieTitleGeneratorWithMomentNodes:(id)nodes featureNodes:(id)featureNodes titleGenerationContext:(id)context;
- (id)curationOptionsWithRequiredAssetUUIDs:(id)ds eligibleAssetUUIDs:(id)iDs triggeredMemory:(id)memory;
- (id)keyAssetCurationOptionsWithTriggeredMemory:(id)memory inGraph:(id)graph;
- (id)titleGeneratorForTriggeredMemory:(id)memory withKeyAsset:(id)asset curatedAssets:(id)assets extendedCuratedAssets:(id)curatedAssets titleGenerationContext:(id)context inGraph:(id)graph;
- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)type;
- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)graph usingBlock:(id)block;
@end

@implementation PGFoodieMemoryGenerator

- (id)keyAssetCurationOptionsWithTriggeredMemory:(id)memory inGraph:(id)graph
{
  graphCopy = graph;
  memoryCopy = memory;
  memoryFeatureNodes = [memoryCopy memoryFeatureNodes];
  v9 = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection subsetInCollection:memoryFeatureNodes];

  memoryCurationSession = [(PGMemoryGenerator *)self memoryCurationSession];
  curationManager = [memoryCurationSession curationManager];

  if ([v9 count])
  {
    anyNode = [v9 anyNode];
    localIdentifier = [anyNode localIdentifier];
    if (localIdentifier)
    {
      curationCriteriaFactory = [curationManager curationCriteriaFactory];
      v15 = [curationCriteriaFactory foodieCurationCriteriaWithPersonLocalIdentifier:localIdentifier client:1];
    }

    else
    {
      loggingConnection = [(PGMemoryGenerator *)self loggingConnection];
      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[PGFoodieMemoryGenerator] Nil local identifier found for featured person, falling back to default key asset curation criteria", buf, 2u);
      }

      curationCriteriaFactory = [curationManager curationCriteriaFactory];
      v15 = [curationCriteriaFactory foodieCurationCriteriaWithClient:1];
    }

    v16 = v15;
  }

  else
  {
    anyNode = [curationManager curationCriteriaFactory];
    v16 = [anyNode foodieCurationCriteriaWithClient:1];
  }

  v20.receiver = self;
  v20.super_class = PGFoodieMemoryGenerator;
  v18 = [(PGMemoryGenerator *)&v20 keyAssetCurationOptionsWithTriggeredMemory:memoryCopy inGraph:graphCopy];

  [v18 setComplete:1];
  [v18 setCurationCriteria:v16];

  return v18;
}

- (id)_foodieTitleGeneratorWithMomentNodes:(id)nodes featureNodes:(id)featureNodes titleGenerationContext:(id)context
{
  nodesCopy = nodes;
  featureNodesCopy = featureNodes;
  contextCopy = context;
  v11 = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection subsetInCollection:featureNodesCopy];
  if (![v11 count])
  {
    anyNode4 = [(PGGraphNodeCollection *)PGGraphHighlightGroupNodeCollection subsetInCollection:featureNodesCopy];
    if ([anyNode4 count])
    {
      v16 = [(PGGraphNodeCollection *)PGGraphNamedLocationNodeCollection subsetInCollection:featureNodesCopy];
      anyNode = [v16 anyNode];

      label = [anyNode label];
      if ([label isEqual:@"City"])
      {
        v19 = 1;
      }

      else if ([label isEqual:@"State"])
      {
        v19 = 2;
      }

      else if ([label isEqual:@"Country"])
      {
        v19 = 3;
      }

      else
      {
        v19 = 0;
      }

      v26 = [PGFoodieMemoryTitleGenerator alloc];
      temporarySet = [nodesCopy temporarySet];
      v25 = [(PGFoodieMemoryTitleGenerator *)v26 initWithMomentNodes:temporarySet tripLocationNode:anyNode tripTitleLocationType:v19 titleGenerationContext:contextCopy];
      goto LABEL_19;
    }

    anyNode = [(PGGraphNodeCollection *)PGGraphLocationCityNodeCollection subsetInCollection:featureNodesCopy];
    if ([anyNode count])
    {
      v23 = [PGFoodieMemoryTitleGenerator alloc];
      label = [nodesCopy temporarySet];
      temporarySet = [anyNode anyNode];
      v25 = [(PGFoodieMemoryTitleGenerator *)v23 initWithMomentNodes:label cityNode:temporarySet titleGenerationContext:contextCopy];
LABEL_19:
      v22 = v25;
LABEL_20:

      goto LABEL_21;
    }

    label = [(PGGraphNodeCollection *)PGGraphAddressNodeCollection subsetInCollection:featureNodesCopy];
    if ([label count])
    {
      v28 = [PGFoodieMemoryTitleGenerator alloc];
      temporarySet = [nodesCopy temporarySet];
      anyNode2 = [label anyNode];
      v30 = [(PGFoodieMemoryTitleGenerator *)v28 initWithMomentNodes:temporarySet addressNode:anyNode2 titleGenerationContext:contextCopy];
    }

    else
    {
      temporarySet = [(PGGraphNodeCollection *)PGGraphBusinessNodeCollection subsetInCollection:featureNodesCopy];
      v31 = [temporarySet count];
      v33 = [PGFoodieMemoryTitleGenerator alloc];
      anyNode2 = [nodesCopy temporarySet];
      if (v31)
      {
        anyNode3 = [temporarySet anyNode];
        v22 = [(PGFoodieMemoryTitleGenerator *)v33 initWithMomentNodes:anyNode2 businessNode:anyNode3 titleGenerationContext:contextCopy];

        goto LABEL_29;
      }

      v30 = [(PGTitleGenerator *)v33 initWithMomentNodes:anyNode2 type:0 titleGenerationContext:contextCopy];
    }

    v22 = v30;
LABEL_29:

    goto LABEL_20;
  }

  anyNode4 = [v11 anyNode];
  if (anyNode4)
  {
    v13 = [PGFoodieMemoryTitleGenerator alloc];
    temporarySet2 = [nodesCopy temporarySet];
    v15 = [(PGFoodieMemoryTitleGenerator *)v13 initWithMomentNodes:temporarySet2 personNode:anyNode4 titleGenerationContext:contextCopy];
  }

  else
  {
    loggingConnection = [(PGMemoryGenerator *)self loggingConnection];
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "person node is unexpectedly nil when our collection wasn't empty", buf, 2u);
    }

    v21 = [PGFoodieMemoryTitleGenerator alloc];
    temporarySet2 = [nodesCopy temporarySet];
    v15 = [(PGTitleGenerator *)v21 initWithMomentNodes:temporarySet2 type:0 titleGenerationContext:contextCopy];
  }

  v22 = v15;

LABEL_21:

  return v22;
}

- (id)titleGeneratorForTriggeredMemory:(id)memory withKeyAsset:(id)asset curatedAssets:(id)assets extendedCuratedAssets:(id)curatedAssets titleGenerationContext:(id)context inGraph:(id)graph
{
  contextCopy = context;
  memoryCopy = memory;
  memoryFeatureNodes = [memoryCopy memoryFeatureNodes];
  memoryMomentNodes = [memoryCopy memoryMomentNodes];

  v14 = [(PGFoodieMemoryGenerator *)self _foodieTitleGeneratorWithMomentNodes:memoryMomentNodes featureNodes:memoryFeatureNodes titleGenerationContext:contextCopy];

  v15 = [(PGGraphNodeCollection *)PGGraphYearNodeCollection subsetInCollection:memoryFeatureNodes];
  if ([v15 count] == 1)
  {
    [v14 setFeaturedYearNodes:v15];
  }

  return v14;
}

- (id)curationOptionsWithRequiredAssetUUIDs:(id)ds eligibleAssetUUIDs:(id)iDs triggeredMemory:(id)memory
{
  v7.receiver = self;
  v7.super_class = PGFoodieMemoryGenerator;
  v5 = [(PGMemoryGenerator *)&v7 curationOptionsWithRequiredAssetUUIDs:ds eligibleAssetUUIDs:iDs triggeredMemory:memory];
  [v5 setMinimumNumberOfItems:15];
  [v5 setFailIfMinimumDurationNotReached:1];

  return v5;
}

- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)graph usingBlock:(id)block
{
  blockCopy = block;
  graphCopy = graph;
  v7 = [PGGraphSceneFeatureNodeCollection sceneFeatureNodesForSceneName:@"Food" inGraph:graphCopy];
  momentNodes = [v7 momentNodes];
  v9 = [PGFoodieMemoryGenerator incompatibleMomentNodesInGraph:graphCopy];

  v10 = [momentNodes collectionBySubtracting:v9];

  if ([v10 count])
  {
    v12 = 0;
    featureNodeCollection = [v7 featureNodeCollection];
    blockCopy[2](blockCopy, v10, featureNodeCollection, &v12);
  }
}

- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)type
{
  v13 = *MEMORY[0x277D85DE8];
  if (type == 1)
  {
    result = 6001;
  }

  else
  {
    typeCopy = type;
    if (type == 3)
    {
      result = 6002;
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

- (PGFoodieMemoryGenerator)initWithMemoryGenerationContext:(id)context
{
  v12.receiver = self;
  v12.super_class = PGFoodieMemoryGenerator;
  v3 = [(PGMemoryGenerator *)&v12 initWithMemoryGenerationContext:context];
  v4 = v3;
  if (v3)
  {
    v3->_requireSceneProcessingMeetsThresholdOverTime = 1;
    v3->_requireFaceProcessingMeetsThresholdOverTime = 0;
    v5 = objc_alloc_init(PGMemoryMomentRequirements);
    momentRequirements = v4->_momentRequirements;
    v4->_momentRequirements = v5;

    [(PGMemoryMomentRequirements *)v4->_momentRequirements setFilterMomentsWithNotEnoughScenesProcessed:1];
    [(PGMemoryMomentRequirements *)v4->_momentRequirements setMinimumNumberOfRelevantAssets:2];
    v7 = +[PGOverTheYearsMemoryConfiguration strictDefaultOverTheYearsMemoryConfiguration];
    overTheYearsConfiguration = v4->_overTheYearsConfiguration;
    v4->_overTheYearsConfiguration = v7;

    [(PGOverTimeMemoryConfiguration *)v4->_overTheYearsConfiguration setMinimumNumberOfRelevantAssets:15];
    v9 = +[PGFeaturedTimePeriodMemoryConfiguration strictDefaultFeaturedYearMemoryConfiguration];
    featuredYearConfiguration = v4->_featuredYearConfiguration;
    v4->_featuredYearConfiguration = v9;

    [(PGOverTimeMemoryConfiguration *)v4->_featuredYearConfiguration setMinimumNumberOfRelevantAssets:15];
  }

  return v4;
}

+ (id)incompatibleMomentNodesInGraph:(id)graph
{
  v12[1] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v4 = [PGGraphPOINodeCollection poiNodesForLabel:@"Hospital" inGraph:graphCopy];
  v12[0] = @"Wedding";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v6 = [PGGraphMeaningNodeCollection meaningNodesWithMeaningLabels:v5 inGraph:graphCopy];

  momentNodes = [v4 momentNodes];
  momentNodes2 = [v6 momentNodes];
  v9 = [momentNodes collectionByFormingUnionWith:momentNodes2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end