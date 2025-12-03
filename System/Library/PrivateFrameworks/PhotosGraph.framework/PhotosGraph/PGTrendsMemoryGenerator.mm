@interface PGTrendsMemoryGenerator
+ (id)allTrendSceneFeatureLabels;
+ (id)trendsConfigurations;
- (PGTrendsMemoryGenerator)initWithMemoryGenerationContext:(id)context configurations:(id)configurations;
- (id)_trendSceneFeatureLabelsToRequireKnownPeopleInCuration;
- (id)allTrendSceneFeatureNodesInGraph:(id)graph;
- (id)curationOptionsWithRequiredAssetUUIDs:(id)ds eligibleAssetUUIDs:(id)iDs triggeredMemory:(id)memory;
- (id)filteredMomentNodes:(id)nodes withSceneLabel:(id)label inGraph:(id)graph;
- (id)keyAssetCurationOptionsWithTriggeredMemory:(id)memory inGraph:(id)graph;
- (id)titleGeneratorForTriggeredMemory:(id)memory withKeyAsset:(id)asset curatedAssets:(id)assets extendedCuratedAssets:(id)curatedAssets titleGenerationContext:(id)context inGraph:(id)graph;
- (id)validSceneFeatureNodesInGraph:(id)graph;
- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)type;
- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)graph usingBlock:(id)block;
@end

@implementation PGTrendsMemoryGenerator

- (id)_trendSceneFeatureLabelsToRequireKnownPeopleInCuration
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CBEB98]);
  v7[0] = @"Table";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v4 = [v2 initWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)titleGeneratorForTriggeredMemory:(id)memory withKeyAsset:(id)asset curatedAssets:(id)assets extendedCuratedAssets:(id)curatedAssets titleGenerationContext:(id)context inGraph:(id)graph
{
  contextCopy = context;
  graphCopy = graph;
  memoryCopy = memory;
  memoryFeatureNodes = [memoryCopy memoryFeatureNodes];
  memoryMomentNodes = [memoryCopy memoryMomentNodes];

  temporarySet = [memoryMomentNodes temporarySet];

  v17 = [(PGGraphNodeCollection *)PGGraphSceneFeatureNodeCollection subsetInCollection:memoryFeatureNodes];
  v18 = [(PGTrendsMemoryGenerator *)self allTrendSceneFeatureNodesInGraph:graphCopy];

  v19 = [v17 collectionByIntersecting:v18];

  if ([v19 count] == 1)
  {
    labels = [v19 labels];
    anyObject = [labels anyObject];

    v22 = objc_alloc_init(PGTimeTitleOptions);
    [(PGTimeTitleOptions *)v22 setMomentNodes:temporarySet];
    [(PGTimeTitleOptions *)v22 setAllowedFormats:20];
    v23 = [(PGGraphNodeCollection *)PGGraphYearNodeCollection subsetInCollection:memoryFeatureNodes];
    if ([v23 count] == 1)
    {
      [(PGTimeTitleOptions *)v22 setFeaturedYearNodes:v23];
    }

    v37 = v23;
    v24 = [(PGGraphNodeCollection *)PGGraphOverTheYearsNodeCollection subsetInCollection:memoryFeatureNodes];
    -[PGTimeTitleOptions setFilterForSignificantDateNodes:](v22, "setFilterForSignificantDateNodes:", [v24 count] == 0);
    v25 = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection subsetInCollection:memoryFeatureNodes];
    if ([v25 count])
    {
      v26 = [PGTrendsMemoryTitleGenerator alloc];
      anyNode = [v25 anyNode];
      v28 = [(PGTrendsMemoryTitleGenerator *)v26 initWithMomentNodes:temporarySet sceneFeatureLabel:anyObject personNode:anyNode titleGenerationContext:contextCopy timeTitleOptions:v22];
    }

    else
    {
      v36 = contextCopy;
      anyNode = [(PGGraphNodeCollection *)PGGraphLocationCityNodeCollection subsetInCollection:memoryFeatureNodes];
      v30 = [anyNode count];
      v31 = [PGTrendsMemoryTitleGenerator alloc];
      v32 = v31;
      if (v30)
      {
        [anyNode anyNode];
        v33 = v35 = temporarySet;
        contextCopy = v36;
        v29 = [(PGTrendsMemoryTitleGenerator *)v32 initWithMomentNodes:v35 sceneFeatureLabel:anyObject cityNode:v33 titleGenerationContext:v36 timeTitleOptions:v22];

        temporarySet = v35;
        goto LABEL_12;
      }

      contextCopy = v36;
      v28 = [(PGTrendsMemoryTitleGenerator *)v31 initWithMomentNodes:temporarySet sceneFeatureLabel:anyObject titleGenerationContext:v36 timeTitleOptions:v22];
    }

    v29 = v28;
LABEL_12:

    goto LABEL_13;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to generate Trends title because sceneFeatureNodeCollection count is not equal to 1", buf, 2u);
  }

  v29 = 0;
LABEL_13:

  return v29;
}

- (id)allTrendSceneFeatureNodesInGraph:(id)graph
{
  v34 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  allTrendsSceneFeatureNodesInGraph = self->_allTrendsSceneFeatureNodesInGraph;
  if (!allTrendsSceneFeatureNodesInGraph)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v7 = +[PGTrendsMemoryGenerator trendsConfigurations];
    v8 = [v7 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v29;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v29 != v10)
          {
            objc_enumerationMutation(v7);
          }

          featureLabel = [*(*(&v28 + 1) + 8 * i) featureLabel];
          [v6 addObject:featureLabel];
        }

        v9 = [v7 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v9);
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v13 = +[PGCLIPTrendsMemoryGenerator CLIPTrendsConfigurations];
    v14 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v25;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v25 != v16)
          {
            objc_enumerationMutation(v13);
          }

          featureLabel2 = [*(*(&v24 + 1) + 8 * j) featureLabel];
          [v6 addObject:featureLabel2];
        }

        v15 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v15);
    }

    if ([v6 count])
    {
      v19 = [PGGraphSceneFeatureNodeCollection sceneFeatureNodesForSceneNames:v6 inGraph:graphCopy];
    }

    else
    {
      v19 = [(MAElementCollection *)[PGGraphSceneFeatureNodeCollection alloc] initWithGraph:graphCopy];
    }

    v20 = self->_allTrendsSceneFeatureNodesInGraph;
    self->_allTrendsSceneFeatureNodesInGraph = v19;

    allTrendsSceneFeatureNodesInGraph = self->_allTrendsSceneFeatureNodesInGraph;
  }

  v21 = allTrendsSceneFeatureNodesInGraph;

  v22 = *MEMORY[0x277D85DE8];
  return allTrendsSceneFeatureNodesInGraph;
}

uint64_t __101__PGTrendsMemoryGenerator_relevantFeederForTriggeredMemory_inGraph_allowGuestAsset_progressReporter___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 localIdentifier];
  v4 = [v2 containsObject:v3];

  return v4;
}

uint64_t __101__PGTrendsMemoryGenerator_relevantFeederForTriggeredMemory_inGraph_allowGuestAsset_progressReporter___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 localIdentifier];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (id)curationOptionsWithRequiredAssetUUIDs:(id)ds eligibleAssetUUIDs:(id)iDs triggeredMemory:(id)memory
{
  v7.receiver = self;
  v7.super_class = PGTrendsMemoryGenerator;
  v5 = [(PGMemoryGenerator *)&v7 curationOptionsWithRequiredAssetUUIDs:ds eligibleAssetUUIDs:iDs triggeredMemory:memory];
  [v5 setMinimumNumberOfItems:15];
  [v5 setFailIfMinimumDurationNotReached:1];

  return v5;
}

- (id)keyAssetCurationOptionsWithTriggeredMemory:(id)memory inGraph:(id)graph
{
  v11.receiver = self;
  v11.super_class = PGTrendsMemoryGenerator;
  memoryCopy = memory;
  v6 = [(PGMemoryGenerator *)&v11 keyAssetCurationOptionsWithTriggeredMemory:memoryCopy inGraph:graph];
  memoryFeatureNodes = [memoryCopy memoryFeatureNodes];

  v8 = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection subsetInCollection:memoryFeatureNodes];

  if ([v8 count])
  {
    localIdentifiers = [v8 localIdentifiers];
    [v6 setReferencePersonLocalIdentifiers:localIdentifiers];

    [v6 setMinimumNumberOfReferencePersons:0];
  }

  return v6;
}

- (id)filteredMomentNodes:(id)nodes withSceneLabel:(id)label inGraph:(id)graph
{
  v24[1] = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  labelCopy = label;
  graphCopy = graph;
  if ([labelCopy isEqualToString:@"Snow"])
  {
    winterSportMomentNodes = self->_winterSportMomentNodes;
    if (!winterSportMomentNodes)
    {
      v24[0] = @"WinterSport";
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
      v13 = [PGGraphMeaningNodeCollection meaningNodesWithMeaningLabels:v12 inGraph:graphCopy];

      momentNodes = [v13 momentNodes];
      v15 = self->_winterSportMomentNodes;
      self->_winterSportMomentNodes = momentNodes;

      winterSportMomentNodes = self->_winterSportMomentNodes;
    }

    v16 = [nodesCopy collectionBySubtracting:winterSportMomentNodes];

    nodesCopy = v16;
  }

  if ([labelCopy isEqualToString:@"Cooking"])
  {
    restaurantMomentNodes = self->_restaurantMomentNodes;
    if (!restaurantMomentNodes)
    {
      v18 = [PGGraphBusinessNodeCollection restaurantBusinessNodesInGraph:graphCopy];
      momentNodes2 = [v18 momentNodes];
      v20 = self->_restaurantMomentNodes;
      self->_restaurantMomentNodes = momentNodes2;

      restaurantMomentNodes = self->_restaurantMomentNodes;
    }

    v21 = [nodesCopy collectionBySubtracting:restaurantMomentNodes];

    nodesCopy = v21;
  }

  v22 = *MEMORY[0x277D85DE8];

  return nodesCopy;
}

- (id)validSceneFeatureNodesInGraph:(id)graph
{
  v26 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  configurations = [(PGTrendsMemoryGenerator *)self configurations];
  v6 = [configurations countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(configurations);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        featureLabel = [v10 featureLabel];
        if (featureLabel)
        {
          validTrendTypes = [v10 validTrendTypes];
          trendType = [(PGTrendsMemoryGenerator *)self trendType];
          v14 = [validTrendTypes containsObject:trendType];

          if (v14)
          {
            [v4 addObject:featureLabel];
          }
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[PGTrendsMemoryGenerator] sceneFeatureLabel should not be nil", buf, 2u);
        }
      }

      v7 = [configurations countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  if ([v4 count])
  {
    v15 = [PGGraphSceneFeatureNodeCollection sceneFeatureNodesForSceneNames:v4 inGraph:graphCopy];
  }

  else
  {
    v15 = [(MAElementCollection *)[PGGraphSceneFeatureNodeCollection alloc] initWithGraph:graphCopy];
  }

  v16 = v15;

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)graph usingBlock:(id)block
{
  graphCopy = graph;
  blockCopy = block;
  v8 = [(PGTrendsMemoryGenerator *)self validSceneFeatureNodesInGraph:graphCopy];
  if ([v8 count])
  {
    v9 = MEMORY[0x277D22BF8];
    v10 = +[PGGraphFeatureNodeCollection momentOfFeature];
    v11 = [v9 adjacencyWithSources:v8 relation:v10 targetsClass:objc_opt_class()];

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __81__PGTrendsMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke;
    v12[3] = &unk_278889518;
    v12[4] = self;
    v13 = graphCopy;
    v14 = blockCopy;
    [v11 enumerateTargetsBySourceWithBlock:v12];
  }
}

void __81__PGTrendsMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke(void *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a1[4];
  v8 = a3;
  v9 = a2;
  v10 = [v9 labels];
  v11 = [v10 anyObject];
  v14 = [v7 filteredMomentNodes:v8 withSceneLabel:v11 inGraph:a1[5]];

  v12 = a1[6];
  v13 = [v9 featureNodeCollection];

  (*(v12 + 16))(v12, v14, v13, a4);
}

- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)type
{
  v13 = *MEMORY[0x277D85DE8];
  if (type == 1)
  {
    result = 16001;
  }

  else
  {
    typeCopy = type;
    if (type == 3)
    {
      result = 16002;
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

- (PGTrendsMemoryGenerator)initWithMemoryGenerationContext:(id)context configurations:(id)configurations
{
  configurationsCopy = configurations;
  v21.receiver = self;
  v21.super_class = PGTrendsMemoryGenerator;
  v8 = [(PGMemoryGenerator *)&v21 initWithMemoryGenerationContext:context];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_configurations, configurations);
    v9->_requireSceneProcessingMeetsThresholdOverTime = 1;
    v9->_requireFaceProcessingMeetsThresholdOverTime = 0;
    v10 = objc_alloc_init(PGMemoryMomentRequirements);
    momentRequirements = v9->_momentRequirements;
    v9->_momentRequirements = v10;

    [(PGMemoryMomentRequirements *)v9->_momentRequirements setMinimumNumberOfRelevantAssets:2];
    [(PGMemoryMomentRequirements *)v9->_momentRequirements setFilterMomentsWithNotEnoughScenesProcessed:1];
    v12 = +[PGOverTheYearsMemoryConfiguration strictDefaultOverTheYearsMemoryConfiguration];
    overTheYearsConfiguration = v9->_overTheYearsConfiguration;
    v9->_overTheYearsConfiguration = v12;

    [(PGOverTimeMemoryConfiguration *)v9->_overTheYearsConfiguration setMinimumNumberOfMoments:5];
    [(PGOverTimeMemoryConfiguration *)v9->_overTheYearsConfiguration setMinimumNumberOfRelevantAssets:15];
    v14 = +[PGFeaturedTimePeriodMemoryConfiguration strictDefaultFeaturedYearMemoryConfiguration];
    featuredYearConfiguration = v9->_featuredYearConfiguration;
    v9->_featuredYearConfiguration = v14;

    [(PGOverTimeMemoryConfiguration *)v9->_featuredYearConfiguration setMinimumNumberOfRelevantAssets:15];
    v16 = +[PGFeaturedTimePeriodMemoryConfiguration defaultFallbackFeaturedYearMemoryConfiguration];
    fallbackFeaturedYearConfiguration = v9->_fallbackFeaturedYearConfiguration;
    v9->_fallbackFeaturedYearConfiguration = v16;

    v18 = +[PGOverTheYearsMemoryConfiguration defaultFallbackOverTheYearsMemoryConfiguration];
    fallbackOverTheYearsConfiguration = v9->_fallbackOverTheYearsConfiguration;
    v9->_fallbackOverTheYearsConfiguration = v18;

    v9->_minimumNumberOfDefaultMemories = 3;
  }

  return v9;
}

+ (id)allTrendSceneFeatureLabels
{
  v5[13] = *MEMORY[0x277D85DE8];
  v5[0] = @"Cityscape";
  v5[1] = @"Coffee";
  v5[2] = @"Forest";
  v5[3] = @"Rainbow";
  v5[4] = @"Snow";
  v5[5] = @"SunriseSunset";
  v5[6] = @"Waterfall";
  v5[7] = @"Biking";
  v5[8] = @"Table";
  v5[9] = @"Cooking";
  v5[10] = @"SpringBloom";
  v5[11] = @"AutumnFoliage";
  v5[12] = @"PlayTime";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:13];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)trendsConfigurations
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = trendsConfigurations__trendsConfigurations;
  if (!trendsConfigurations__trendsConfigurations)
  {
    v20 = objc_alloc_init(PGRemoteConfiguration);
    v3 = [(PGRemoteConfiguration *)v20 dictionaryValueForKey:@"com.apple.photos.memories.trendsmemory.trendsscenes" withFallbackValue:MEMORY[0x277CBEC10]];
    if (![v3 count])
    {
      v4 = +[PGLogging sharedLogging];
      loggingConnection = [v4 loggingConnection];

      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v28 = @"com.apple.photos.memories.trendsmemory.trendsscenes";
        _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "PGTrendsMemoryGenerator: Couldn't load remote configuration dictionary from key: %@", buf, 0xCu);
      }
    }

    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v3, "count")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      do
      {
        v11 = 0;
        do
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [v7 objectForKeyedSubscript:*(*(&v21 + 1) + 8 * v11)];
          v13 = [[PGDictionaryConfigurationSource alloc] initWithDictionary:v12];
          v14 = [PGTrendsConfiguration alloc];
          v25 = v13;
          v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
          v16 = [(PGConfiguration *)v14 initWithSources:v15 version:1.0];

          [v6 addObject:v16];
          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v9);
    }

    v17 = trendsConfigurations__trendsConfigurations;
    trendsConfigurations__trendsConfigurations = v6;

    v2 = trendsConfigurations__trendsConfigurations;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v2;
}

@end