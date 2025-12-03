@interface PGOverTimeMemoryGenerator
- (BOOL)_shouldCreateFeaturedSeasonMemoryForMomentNodes:(id)nodes featureNodes:(id)featureNodes;
- (BOOL)_shouldCreateFeaturedTimePeriodMemoriesForMomentNodes:(id)nodes configuration:(id)configuration;
- (BOOL)_shouldCreateFeaturedYearMemoryForMomentNodes:(id)nodes featureNodes:(id)featureNodes inYear:(int64_t)year configuration:(id)configuration;
- (BOOL)_shouldCreateMemoryForMomentNodes:(id)nodes featureNodes:(id)featureNodes withConfiguration:(id)configuration;
- (BOOL)_shouldCreateOverTheYearsMemoryForMomentNodes:(id)nodes featureNodes:(id)featureNodes configuration:(id)configuration;
- (id)_filteredMomentNodesFromMomentNodes:(id)nodes featureNodes:(id)featureNodes;
- (id)chapterTitleGeneratorForTriggeredMemory:(id)memory curatedAssets:(id)assets extendedCuratedAssets:(id)curatedAssets titleGenerationContext:(id)context inGraph:(id)graph;
- (id)generatePotentialMemoriesForProcessingWindow:(id)window graph:(id)graph progressBlock:(id)block;
- (unint64_t)memoryCategory;
- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)type;
- (unint64_t)numberOfRelevantAssetsForMomentNodes:(id)nodes featureNodes:(id)featureNodes;
- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)graph usingBlock:(id)block;
@end

@implementation PGOverTimeMemoryGenerator

- (id)chapterTitleGeneratorForTriggeredMemory:(id)memory curatedAssets:(id)assets extendedCuratedAssets:(id)curatedAssets titleGenerationContext:(id)context inGraph:(id)graph
{
  memoryCopy = memory;
  memoryFeatureNodes = [memoryCopy memoryFeatureNodes];
  v9 = [(PGGraphNodeCollection *)PGGraphOverTheYearsNodeCollection subsetInCollection:memoryFeatureNodes];

  if ([v9 count])
  {
    v10 = [[PGYearChapterTitleGenerator alloc] initWithTriggeredMemory:memoryCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)numberOfRelevantAssetsForMomentNodes:(id)nodes featureNodes:(id)featureNodes
{
  nodesCopy = nodes;
  featureNodesCopy = featureNodes;
  if ([(PGOverTimeMemoryGenerator *)self intersectRelevantAssetsForFeatures])
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__62619;
    v21 = __Block_byref_object_dispose__62620;
    v22 = 0;
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __79__PGOverTimeMemoryGenerator_numberOfRelevantAssetsForMomentNodes_featureNodes___block_invoke;
    v14 = &unk_278888358;
    v15 = nodesCopy;
    v16 = &v17;
    [featureNodesCopy enumerateIdentifiersAsCollectionsWithBlock:&v11];
    numberOfRelevantAssets = [v18[5] count];

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v9 = [(PGGraphEdgeCollection *)PGGraphMomentFeaturesEdgeCollection edgesFromNodes:nodesCopy toNodes:featureNodesCopy];
    numberOfRelevantAssets = [v9 numberOfRelevantAssets];
  }

  return numberOfRelevantAssets;
}

void __79__PGOverTimeMemoryGenerator_numberOfRelevantAssetsForMomentNodes_featureNodes___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [(PGGraphEdgeCollection *)PGGraphMomentFeaturesEdgeCollection edgesFromNodes:*(a1 + 32) toNodes:a3];
  v9 = [v4 allRelevantAssetUUIDs];

  v5 = *(*(*(a1 + 40) + 8) + 40);
  if (v5)
  {
    [v5 intersectSet:v9];
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB58]) initWithSet:v9];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

- (BOOL)_shouldCreateMemoryForMomentNodes:(id)nodes featureNodes:(id)featureNodes withConfiguration:(id)configuration
{
  nodesCopy = nodes;
  featureNodesCopy = featureNodes;
  configurationCopy = configuration;
  v11 = [nodesCopy count];
  if (v11 < [configurationCopy minimumNumberOfMoments])
  {
    goto LABEL_2;
  }

  momentRequirements = [(PGOverTimeMemoryGenerator *)self momentRequirements];
  if (([momentRequirements filterUninterestingWithAlternateJunking] & 1) != 0 || !objc_msgSend(configurationCopy, "minimumNumberOfMomentsInterestingWithAlternateJunking"))
  {
  }

  else
  {
    memoryGenerationContext = [(PGMemoryGenerator *)self memoryGenerationContext];
    v16 = [memoryGenerationContext interestingWithAlternateJunkingSubsetFromMomentNodes:nodesCopy];
    v17 = [v16 count];
    minimumNumberOfMomentsInterestingWithAlternateJunking = [configurationCopy minimumNumberOfMomentsInterestingWithAlternateJunking];

    if (v17 < minimumNumberOfMomentsInterestingWithAlternateJunking)
    {
      goto LABEL_2;
    }
  }

  momentRequirements2 = [(PGOverTimeMemoryGenerator *)self momentRequirements];
  if (([momentRequirements2 filterUninterestingForMemories] & 1) != 0 || !objc_msgSend(configurationCopy, "minimumNumberOfMomentsInterestingForMemories"))
  {

    goto LABEL_14;
  }

  memoryGenerationContext2 = [(PGMemoryGenerator *)self memoryGenerationContext];
  v21 = [memoryGenerationContext2 interestingForMemoriesSubsetFromMomentNodes:nodesCopy];
  v22 = [v21 count];
  minimumNumberOfMomentsInterestingForMemories = [configurationCopy minimumNumberOfMomentsInterestingForMemories];

  if (v22 < minimumNumberOfMomentsInterestingForMemories)
  {
LABEL_2:
    v12 = 0;
    goto LABEL_3;
  }

LABEL_14:
  if ([configurationCopy minimumNumberOfAssetsInExtendedCuration])
  {
    memoryGenerationContext3 = [(PGMemoryGenerator *)self memoryGenerationContext];
    v25 = [memoryGenerationContext3 numberOfAssetsInExtendedCurationForMomentNodes:nodesCopy];
    minimumNumberOfAssetsInExtendedCuration = [configurationCopy minimumNumberOfAssetsInExtendedCuration];

    if (v25 < minimumNumberOfAssetsInExtendedCuration)
    {
      goto LABEL_2;
    }
  }

  if ([configurationCopy minimumNumberOfRelevantAssets])
  {
    v27 = [(PGOverTimeMemoryGenerator *)self numberOfRelevantAssetsForMomentNodes:nodesCopy featureNodes:featureNodesCopy];
    if (v27 < [configurationCopy minimumNumberOfRelevantAssets])
    {
      goto LABEL_2;
    }
  }

  [configurationCopy aboveMomentAverageContentScoreThreshold];
  if (v28 > 0.0)
  {
    memoryGenerationContext4 = [(PGMemoryGenerator *)self memoryGenerationContext];
    [memoryGenerationContext4 averageContentScoreForMomentNodes:nodesCopy];
    v31 = v30;
    [configurationCopy aboveMomentAverageContentScoreThreshold];
    v33 = v32;

    if (v31 <= v33)
    {
      goto LABEL_2;
    }
  }

  if ([configurationCopy allMomentsMustHaveScenesProcessed])
  {
    processedScenesAndFacesCache = [(PGMemoryGenerator *)self processedScenesAndFacesCache];
    v35 = [processedScenesAndFacesCache allMomentNodesInCollectionHaveScenesProcessed:nodesCopy];

    if (!v35)
    {
      goto LABEL_2;
    }
  }

  if ([configurationCopy allMomentsMustHaveFacesProcessed])
  {
    processedScenesAndFacesCache2 = [(PGMemoryGenerator *)self processedScenesAndFacesCache];
    v12 = [processedScenesAndFacesCache2 allMomentNodesInCollectionHaveFacesProcessed:nodesCopy];
  }

  else
  {
    v12 = 1;
  }

LABEL_3:

  return v12 & 1;
}

- (BOOL)_shouldCreateFeaturedSeasonMemoryForMomentNodes:(id)nodes featureNodes:(id)featureNodes
{
  v42 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  featureNodesCopy = featureNodes;
  featuredSeasonConfiguration = [(PGOverTimeMemoryGenerator *)self featuredSeasonConfiguration];
  universalDateInterval = [nodesCopy universalDateInterval];
  [universalDateInterval duration];
  v11 = v10;
  [featuredSeasonConfiguration minimumOverallTimeIntervalOfMoments];
  v13 = v12;

  if (v11 >= v13)
  {
    v34 = featuredSeasonConfiguration;
    v35 = featureNodesCopy;
    graph = [nodesCopy graph];
    memoryGenerationContext = [(PGMemoryGenerator *)self memoryGenerationContext];
    v36 = nodesCopy;
    v17 = [memoryGenerationContext yearNodesForMomentNodes:nodesCopy];

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    memoryGenerationContext2 = [(PGMemoryGenerator *)self memoryGenerationContext];
    v33 = v17;
    universalStartDates = [memoryGenerationContext2 yearsForYearNodes:v17];

    v20 = [universalStartDates countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v38;
      while (2)
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v38 != v22)
          {
            objc_enumerationMutation(universalStartDates);
          }

          v24 = *(*(&v37 + 1) + 8 * i);
          processedScenesAndFacesCache = [(PGMemoryGenerator *)self processedScenesAndFacesCache];
          v26 = [processedScenesAndFacesCache libraryHasEnoughScenesProcessed:-[PGOverTimeMemoryGenerator requireSceneProcessingMeetsThresholdOverTime](self andProcessedFaces:"requireSceneProcessingMeetsThresholdOverTime") forYear:-[PGOverTimeMemoryGenerator requireFaceProcessingMeetsThresholdOverTime](self inGraph:{"requireFaceProcessingMeetsThresholdOverTime"), objc_msgSend(v24, "integerValue"), graph}];

          if (!v26)
          {
            v14 = 0;
            featureNodesCopy = v35;
            nodesCopy = v36;
            featuredSeasonConfiguration = v34;
            goto LABEL_16;
          }
        }

        v21 = [universalStartDates countByEnumeratingWithState:&v37 objects:v41 count:16];
        if (v21)
        {
          continue;
        }

        break;
      }
    }

    if (-[PGOverTimeMemoryGenerator requireSceneProcessingMeetsThresholdOverTime](self, "requireSceneProcessingMeetsThresholdOverTime") && (-[PGMemoryGenerator processedScenesAndFacesCache](self, "processedScenesAndFacesCache"), v27 = objc_claimAutoreleasedReturnValue(), v28 = [v27 libraryHasEnoughScenesProcessedWithMinimumSceneAnalysisVersion:{-[PGOverTimeMemoryGenerator minimumSceneAnalysisVersion](self, "minimumSceneAnalysisVersion")}], v27, !v28))
    {
      v14 = 0;
      featureNodesCopy = v35;
      nodesCopy = v36;
      v30 = v33;
      featuredSeasonConfiguration = v34;
    }

    else
    {
      nodesCopy = v36;
      universalStartDates = [v36 universalStartDates];
      featuredSeasonConfiguration = v34;
      minimumNumberOfMoments = [v34 minimumNumberOfMoments];
      [v34 minimumMomentSpreadicityTimeInterval];
      if ([PGMemoryGenerationHelper dates:universalStartDates passSpreadicityWithMinimumCardinal:minimumNumberOfMoments minimumTimeInterval:?])
      {
        featureNodesCopy = v35;
        v14 = [(PGOverTimeMemoryGenerator *)self _shouldCreateMemoryForMomentNodes:v36 featureNodes:v35 withConfiguration:v34];
      }

      else
      {
        v14 = 0;
        featureNodesCopy = v35;
      }

LABEL_16:
      v30 = v33;
    }
  }

  else
  {
    v14 = 0;
  }

  v31 = *MEMORY[0x277D85DE8];
  return v14;
}

- (BOOL)_shouldCreateFeaturedYearMemoryForMomentNodes:(id)nodes featureNodes:(id)featureNodes inYear:(int64_t)year configuration:(id)configuration
{
  nodesCopy = nodes;
  featureNodesCopy = featureNodes;
  configurationCopy = configuration;
  universalDateInterval = [nodesCopy universalDateInterval];
  [universalDateInterval duration];
  v15 = v14;
  [configurationCopy minimumOverallTimeIntervalOfMoments];
  v17 = v16;

  if (v15 >= v17)
  {
    universalStartDates = [nodesCopy universalStartDates];
    minimumNumberOfMoments = [configurationCopy minimumNumberOfMoments];
    [configurationCopy minimumMomentSpreadicityTimeInterval];
    if (![PGMemoryGenerationHelper dates:universalStartDates passSpreadicityWithMinimumCardinal:minimumNumberOfMoments minimumTimeInterval:?])
    {
      goto LABEL_8;
    }

    processedScenesAndFacesCache = [(PGMemoryGenerator *)self processedScenesAndFacesCache];
    requireSceneProcessingMeetsThresholdOverTime = [(PGOverTimeMemoryGenerator *)self requireSceneProcessingMeetsThresholdOverTime];
    requireFaceProcessingMeetsThresholdOverTime = [(PGOverTimeMemoryGenerator *)self requireFaceProcessingMeetsThresholdOverTime];
    graph = [nodesCopy graph];
    v25 = [processedScenesAndFacesCache libraryHasEnoughScenesProcessed:requireSceneProcessingMeetsThresholdOverTime andProcessedFaces:requireFaceProcessingMeetsThresholdOverTime forYear:year inGraph:graph];

    if (!v25)
    {
      goto LABEL_8;
    }

    if (!-[PGOverTimeMemoryGenerator requireSceneProcessingMeetsThresholdOverTime](self, "requireSceneProcessingMeetsThresholdOverTime") || (-[PGMemoryGenerator processedScenesAndFacesCache](self, "processedScenesAndFacesCache"), v26 = objc_claimAutoreleasedReturnValue(), v27 = [v26 libraryHasEnoughScenesProcessedWithMinimumSceneAnalysisVersion:{-[PGOverTimeMemoryGenerator minimumSceneAnalysisVersion](self, "minimumSceneAnalysisVersion")}], v26, v27))
    {
      v18 = [(PGOverTimeMemoryGenerator *)self _shouldCreateMemoryForMomentNodes:nodesCopy featureNodes:featureNodesCopy withConfiguration:configurationCopy];
    }

    else
    {
LABEL_8:
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (BOOL)_shouldCreateFeaturedTimePeriodMemoriesForMomentNodes:(id)nodes configuration:(id)configuration
{
  if (!configuration)
  {
    return 0;
  }

  configurationCopy = configuration;
  v6 = [nodes count];
  minimumNumberOfMoments = [configurationCopy minimumNumberOfMoments];

  return v6 >= minimumNumberOfMoments;
}

- (BOOL)_shouldCreateOverTheYearsMemoryForMomentNodes:(id)nodes featureNodes:(id)featureNodes configuration:(id)configuration
{
  nodesCopy = nodes;
  featureNodesCopy = featureNodes;
  configurationCopy = configuration;
  v11 = configurationCopy;
  if (!configurationCopy)
  {
    v16 = 0;
    goto LABEL_19;
  }

  minimumNumberOfMoments = [configurationCopy minimumNumberOfMoments];
  memoryGenerationContext = [(PGMemoryGenerator *)self memoryGenerationContext];
  v14 = [memoryGenerationContext yearNodesForMomentNodes:nodesCopy];

  v15 = [v14 count];
  if (v15 < [v11 minimumNumberOfYears])
  {
    v16 = 0;
    if (![v11 allowTwoConsecutiveYears] || v15 != 2)
    {
      goto LABEL_17;
    }

    memoryGenerationContext2 = [(PGMemoryGenerator *)self memoryGenerationContext];
    universalStartDates = [memoryGenerationContext2 yearsForYearNodes:v14];

    firstObject = [universalStartDates firstObject];
    integerValue = [firstObject integerValue];
    lastObject = [universalStartDates lastObject];
    integerValue2 = [lastObject integerValue];
    if (integerValue - integerValue2 >= 0)
    {
      v23 = integerValue - integerValue2;
    }

    else
    {
      v23 = integerValue2 - integerValue;
    }

    if (v23 != 1)
    {
      goto LABEL_15;
    }

    minimumNumberOfMoments = [v11 minimumNumberOfMomentsForTwoConsecutiveYears];
  }

  universalStartDates = [nodesCopy universalStartDates];
  [v11 minimumMomentSpreadicityTimeInterval];
  if (![PGMemoryGenerationHelper dates:universalStartDates passSpreadicityWithMinimumCardinal:minimumNumberOfMoments minimumTimeInterval:?])
  {
    goto LABEL_15;
  }

  processedScenesAndFacesCache = [(PGMemoryGenerator *)self processedScenesAndFacesCache];
  v25 = [processedScenesAndFacesCache libraryHasEnoughScenesProcessed:-[PGOverTimeMemoryGenerator requireSceneProcessingMeetsThresholdOverTime](self andProcessedFaces:{"requireSceneProcessingMeetsThresholdOverTime"), -[PGOverTimeMemoryGenerator requireFaceProcessingMeetsThresholdOverTime](self, "requireFaceProcessingMeetsThresholdOverTime")}];

  if (!v25 || -[PGOverTimeMemoryGenerator requireSceneProcessingMeetsThresholdOverTime](self, "requireSceneProcessingMeetsThresholdOverTime") && (-[PGMemoryGenerator processedScenesAndFacesCache](self, "processedScenesAndFacesCache"), v26 = objc_claimAutoreleasedReturnValue(), v27 = [v26 libraryHasEnoughScenesProcessedWithMinimumSceneAnalysisVersion:{-[PGOverTimeMemoryGenerator minimumSceneAnalysisVersion](self, "minimumSceneAnalysisVersion")}], v26, !v27))
  {
LABEL_15:
    v16 = 0;
    goto LABEL_16;
  }

  v16 = [(PGOverTimeMemoryGenerator *)self _shouldCreateMemoryForMomentNodes:nodesCopy featureNodes:featureNodesCopy withConfiguration:v11];
LABEL_16:

LABEL_17:
LABEL_19:

  return v16;
}

- (id)_filteredMomentNodesFromMomentNodes:(id)nodes featureNodes:(id)featureNodes
{
  nodesCopy = nodes;
  featureNodesCopy = featureNodes;
  v8 = nodesCopy;
  momentRequirements = [(PGOverTimeMemoryGenerator *)self momentRequirements];
  filterUninterestingWithAlternateJunking = [momentRequirements filterUninterestingWithAlternateJunking];

  v11 = v8;
  if (filterUninterestingWithAlternateJunking)
  {
    memoryGenerationContext = [(PGMemoryGenerator *)self memoryGenerationContext];
    v11 = [memoryGenerationContext interestingWithAlternateJunkingSubsetFromMomentNodes:v8];
  }

  momentRequirements2 = [(PGOverTimeMemoryGenerator *)self momentRequirements];
  filterUninterestingForMemories = [momentRequirements2 filterUninterestingForMemories];

  if (filterUninterestingForMemories)
  {
    memoryGenerationContext2 = [(PGMemoryGenerator *)self memoryGenerationContext];
    v16 = [memoryGenerationContext2 interestingForMemoriesSubsetFromMomentNodes:v11];

    v11 = v16;
  }

  momentRequirements3 = [(PGOverTimeMemoryGenerator *)self momentRequirements];
  minimumNumberOfRelevantAssets = [momentRequirements3 minimumNumberOfRelevantAssets];

  momentRequirements4 = [(PGOverTimeMemoryGenerator *)self momentRequirements];
  minimumNumberOfAssetsInExtendedCuration = [momentRequirements4 minimumNumberOfAssetsInExtendedCuration];

  v33 = MEMORY[0x277D85DD0];
  v34 = 3221225472;
  v35 = __78__PGOverTimeMemoryGenerator__filteredMomentNodesFromMomentNodes_featureNodes___block_invoke;
  v36 = &unk_278888330;
  v39 = minimumNumberOfAssetsInExtendedCuration;
  v40 = minimumNumberOfRelevantAssets;
  selfCopy = self;
  v38 = featureNodesCopy;
  v21 = featureNodesCopy;
  v22 = [v11 filteredCollectionUsingBlock:&v33];

  v23 = [(PGOverTimeMemoryGenerator *)self momentRequirements:v33];
  [v23 aboveContentScoreThreshold];
  v25 = v24;

  if (v25 > 0.0)
  {
    momentRequirements5 = [(PGOverTimeMemoryGenerator *)self momentRequirements];
    [momentRequirements5 aboveContentScoreThreshold];
    v27 = [v22 momentNodesWithContentScoreAbove:?];

    v22 = v27;
  }

  momentRequirements6 = [(PGOverTimeMemoryGenerator *)self momentRequirements];
  minimumNumberOfPersons = [momentRequirements6 minimumNumberOfPersons];

  if (minimumNumberOfPersons)
  {
    momentRequirements7 = [(PGOverTimeMemoryGenerator *)self momentRequirements];
    v31 = [v22 momentNodesWithMinimumNumberOfPersons:{objc_msgSend(momentRequirements7, "minimumNumberOfPersons")}];

    v22 = v31;
  }

  return v22;
}

uint64_t __78__PGOverTimeMemoryGenerator__filteredMomentNodesFromMomentNodes_featureNodes___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  if (*(a1 + 48) && ([*(a1 + 32) memoryGenerationContext], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "numberOfAssetsInExtendedCurationForMomentNodes:", v3), v7 = *(a1 + 48), v5, v6 < v7) || *(a1 + 56) && objc_msgSend(*(a1 + 32), "numberOfRelevantAssetsForMomentNodes:featureNodes:", v3, *(a1 + 40)) < *(a1 + 56))
  {
    v8 = 0;
  }

  else
  {
    v9 = [*(a1 + 32) momentRequirements];
    if ([v9 filterMomentsWithNotEnoughScenesProcessed])
    {
      v10 = [*(a1 + 32) processedScenesAndFacesCache];
      v8 = [v10 allMomentNodesInCollectionHaveScenesProcessed:v3];
    }

    else
    {
      v8 = 1;
    }
  }

  objc_autoreleasePoolPop(v4);

  return v8 & 1;
}

- (id)generatePotentialMemoriesForProcessingWindow:(id)window graph:(id)graph progressBlock:(id)block
{
  v60 = *MEMORY[0x277D85DE8];
  windowCopy = window;
  graphCopy = graph;
  blockCopy = block;
  overTheYearsConfiguration = [(PGOverTimeMemoryGenerator *)self overTheYearsConfiguration];
  if (overTheYearsConfiguration || ([(PGOverTimeMemoryGenerator *)self featuredYearConfiguration], (overTheYearsConfiguration = objc_claimAutoreleasedReturnValue()) != 0))
  {

    goto LABEL_4;
  }

  featuredSeasonConfiguration = [(PGOverTimeMemoryGenerator *)self featuredSeasonConfiguration];

  if (featuredSeasonConfiguration)
  {
LABEL_4:
    v10 = [MEMORY[0x277D22C80] progressReporterWithProgressBlock:blockCopy];
    *v58 = 0;
    *&v58[8] = v58;
    *&v58[16] = 0x2020000000;
    LOBYTE(v59) = 0;
    memoryGenerationContext = [(PGMemoryGenerator *)self memoryGenerationContext];
    v12 = [memoryGenerationContext momentNodesForProcessingWindow:windowCopy inGraph:graphCopy];

    momentNodesWithBlockedFeatureCache = [(PGMemoryGenerator *)self momentNodesWithBlockedFeatureCache];
    momentNodesWithBlockedFeature = [momentNodesWithBlockedFeatureCache momentNodesWithBlockedFeature];

    memoryGenerationContext2 = [(PGMemoryGenerator *)self memoryGenerationContext];
    v16 = [memoryGenerationContext2 momentNodesAtSensitiveLocationsInGraph:graphCopy];

    v17 = [(PGGraphNodeCollection *)PGGraphOverTheYearsNodeCollection nodesInGraph:graphCopy];
    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __94__PGOverTimeMemoryGenerator_generatePotentialMemoriesForProcessingWindow_graph_progressBlock___block_invoke;
    v41[3] = &unk_278888308;
    v52 = v58;
    loggingConnection = v10;
    v42 = loggingConnection;
    v53 = 0x3FE0000000000000;
    v21 = momentNodesWithBlockedFeature;
    v43 = v21;
    v22 = v16;
    v44 = v22;
    selfCopy = self;
    v23 = v12;
    v46 = v23;
    v47 = windowCopy;
    v24 = v17;
    v48 = v24;
    v25 = v18;
    v49 = v25;
    v26 = v19;
    v50 = v26;
    v51 = graphCopy;
    [(PGOverTimeMemoryGenerator *)self enumerateMomentNodesAndFeatureNodesInGraph:v51 usingBlock:v41];
    if (*(*&v58[8] + 24))
    {
      *(*&v58[8] + 24) = 1;
LABEL_7:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v55 = 157;
        v56 = 2080;
        v57 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/Memory Generators/PGOverTimeMemoryGenerator.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v28 = MEMORY[0x277CBEBF8];
      goto LABEL_20;
    }

    v27 = [loggingConnection isCancelledWithProgress:1.0];
    *(*&v58[8] + 24) = v27;
    if (v27)
    {
      goto LABEL_7;
    }

    fallbackOverTheYearsConfiguration = [(PGOverTimeMemoryGenerator *)self fallbackOverTheYearsConfiguration];
    if (fallbackOverTheYearsConfiguration)
    {
    }

    else
    {
      fallbackFeaturedYearConfiguration = [(PGOverTimeMemoryGenerator *)self fallbackFeaturedYearConfiguration];
      v32 = fallbackFeaturedYearConfiguration == 0;

      if (v32)
      {
LABEL_19:
        v28 = v25;
LABEL_20:

        _Block_object_dispose(v58, 8);
        goto LABEL_21;
      }
    }

    v33 = [v25 count];
    if (v33 < [(PGOverTimeMemoryGenerator *)self minimumNumberOfDefaultMemories])
    {
      [v25 addObjectsFromArray:v26];
    }

    goto LABEL_19;
  }

  loggingConnection = [(PGMemoryGenerator *)self loggingConnection];
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
  {
    overTheYearsConfiguration2 = [(PGOverTimeMemoryGenerator *)self overTheYearsConfiguration];
    featuredYearConfiguration = [(PGOverTimeMemoryGenerator *)self featuredYearConfiguration];
    featuredSeasonConfiguration2 = [(PGOverTimeMemoryGenerator *)self featuredSeasonConfiguration];
    *v58 = 138412802;
    *&v58[4] = overTheYearsConfiguration2;
    *&v58[12] = 2112;
    *&v58[14] = featuredYearConfiguration;
    *&v58[22] = 2112;
    v59 = featuredSeasonConfiguration2;
    _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[PGOverTimeMemoryGenerator] At least one of the overTheYearsConfiguration (%@), featuredYearConfiguration (%@), or featuredSeasonConfiguration (%@) must not be nil", v58, 0x20u);
  }

  v28 = MEMORY[0x277CBEBF8];
LABEL_21:

  v34 = *MEMORY[0x277D85DE8];

  return v28;
}

void __94__PGOverTimeMemoryGenerator_generatePotentialMemoriesForProcessingWindow_graph_progressBlock___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v71 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = objc_autoreleasePoolPush();
  v10 = *(*(a1 + 112) + 8);
  if (*(v10 + 24))
  {
    v11 = 1;
  }

  else
  {
    v11 = [*(a1 + 32) isCancelledWithProgress:*(a1 + 120)];
    v10 = *(*(a1 + 112) + 8);
  }

  *(v10 + 24) = v11;
  if (*(*(*(a1 + 112) + 8) + 24) != 1)
  {
    v12 = [v7 collectionBySubtracting:*(a1 + 40)];

    v7 = [v12 collectionBySubtracting:*(a1 + 48)];

    v13 = [v7 count];
    v14 = [*(a1 + 56) overTheYearsConfiguration];
    if (v13 >= [v14 minimumNumberOfMoments])
    {
    }

    else
    {
      v15 = [*(a1 + 56) featuredYearConfiguration];
      v16 = [v15 minimumNumberOfMoments];

      if (v13 < v16)
      {
        goto LABEL_23;
      }
    }

    v17 = [*(a1 + 56) _filteredMomentNodesFromMomentNodes:v7 featureNodes:v8];
    v18 = [v17 intersectsCollection:*(a1 + 64)];
    v19 = *(a1 + 56);
    if ((v18 & 1) == 0)
    {
      v27 = [*(a1 + 56) loggingConnection];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        v28 = *(a1 + 56);
        v29 = objc_opt_class();
        v30 = NSStringFromClass(v29);
        v31 = *(a1 + 72);
        *buf = 138412546;
        v68 = v30;
        v69 = 2112;
        v70 = v31;
        _os_log_debug_impl(&dword_22F0FC000, v27, OS_LOG_TYPE_DEBUG, "[%@] Skipping over the years: moments do not intersect processing window %@", buf, 0x16u);
      }

      goto LABEL_22;
    }

    v20 = [*(a1 + 56) overTheYearsConfiguration];
    v21 = [v19 _shouldCreateOverTheYearsMemoryForMomentNodes:v17 featureNodes:v8 configuration:v20];

    if (v21)
    {
      v22 = [*(a1 + 80) featureNodeCollection];
      v23 = [v8 collectionByFormingUnionWith:v22];

      v24 = [*(a1 + 56) allFeatureNodesForMemoryNodeWithFeatureNodes:v23];

      v25 = -[PGGraphMemory initWithMemoryCategory:memoryCategorySubcategory:momentNodes:featureNodes:]([PGGraphMemory alloc], "initWithMemoryCategory:memoryCategorySubcategory:momentNodes:featureNodes:", [*(a1 + 56) memoryCategory], objc_msgSend(*(a1 + 56), "memoryCategorySubcategoryForOverTimeType:", 3), v17, v24);
      v26 = 88;
    }

    else
    {
      v32 = *(a1 + 56);
      v33 = [v32 fallbackOverTheYearsConfiguration];
      LODWORD(v32) = [v32 _shouldCreateOverTheYearsMemoryForMomentNodes:v17 featureNodes:v8 configuration:v33];

      if (!v32)
      {
LABEL_18:
        v27 = [*(a1 + 56) featuredYearConfiguration];
        v36 = "MusicKitRequestFactory";
        if ([*(a1 + 56) _shouldCreateFeaturedTimePeriodMemoriesForMomentNodes:v17 configuration:v27])
        {
          v37 = [*(a1 + 56) fallbackFeaturedYearConfiguration];
          v51 = [*(a1 + 56) _shouldCreateFeaturedTimePeriodMemoriesForMomentNodes:v17 configuration:v37];
          v38 = [*(a1 + 56) memoryGenerationContext];
          v39 = [v38 yearNodesByMomentNodeInGraph:*(a1 + 104)];
          v40 = [v39 intersectingSourcesWith:v17];

          v36 = "MusicKitRequestFactory";
          v41 = [v40 transposed];
          v58[0] = MEMORY[0x277D85DD0];
          v58[1] = 3221225472;
          v58[2] = __94__PGOverTimeMemoryGenerator_generatePotentialMemoriesForProcessingWindow_graph_progressBlock___block_invoke_226;
          v58[3] = &unk_2788882B8;
          v42 = *(a1 + 64);
          v58[4] = *(a1 + 56);
          v59 = v42;
          v60 = *(a1 + 72);
          v61 = v8;
          v62 = v27;
          v43 = *(a1 + 88);
          v66 = v51;
          v63 = v43;
          v64 = v37;
          v65 = *(a1 + 96);
          v44 = v37;
          [v41 enumerateTargetsBySourceWithBlock:v58];
        }

        v45 = *(a1 + 56);
        v46 = [v45 featuredSeasonConfiguration];
        LODWORD(v45) = [v45 _shouldCreateFeaturedTimePeriodMemoriesForMomentNodes:v17 configuration:v46];

        if (v45)
        {
          v47 = [*(a1 + 56) loggingConnection];
          v52[0] = MEMORY[0x277D85DD0];
          v52[1] = *(v36 + 256);
          v52[2] = __94__PGOverTimeMemoryGenerator_generatePotentialMemoriesForProcessingWindow_graph_progressBlock___block_invoke_229;
          v52[3] = &unk_2788882E0;
          v48 = *(a1 + 64);
          v49 = *(a1 + 56);
          v53 = v48;
          v54 = v49;
          v55 = *(a1 + 72);
          v56 = v8;
          v57 = *(a1 + 88);
          [PGSeasonMemoryGenerator enumerateMomentNodesBySeasonInYearFromMomentNodes:v17 loggingConnection:v47 usingBlock:v52];
        }

LABEL_22:

        goto LABEL_23;
      }

      v34 = [*(a1 + 80) featureNodeCollection];
      v35 = [v8 collectionByFormingUnionWith:v34];

      v24 = [*(a1 + 56) allFeatureNodesForMemoryNodeWithFeatureNodes:v35];

      v25 = -[PGGraphMemory initWithMemoryCategory:memoryCategorySubcategory:momentNodes:featureNodes:generatedWithFallbackRequirements:]([PGGraphMemory alloc], "initWithMemoryCategory:memoryCategorySubcategory:momentNodes:featureNodes:generatedWithFallbackRequirements:", [*(a1 + 56) memoryCategory], objc_msgSend(*(a1 + 56), "memoryCategorySubcategoryForOverTimeType:", 3), v17, v24, 1);
      v26 = 96;
    }

    [*(a1 + v26) addObject:v25];

    goto LABEL_18;
  }

  *a4 = 1;
LABEL_23:
  objc_autoreleasePoolPop(v9);

  v50 = *MEMORY[0x277D85DE8];
}

void __94__PGOverTimeMemoryGenerator_generatePotentialMemoriesForProcessingWindow_graph_progressBlock___block_invoke_226(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) memoryGenerationContext];
  v8 = [v7 yearsForYearNodes:v5];
  v9 = [v8 firstObject];
  v10 = [v9 integerValue];

  v11 = [v6 intersectsCollection:*(a1 + 40)];
  v12 = *(a1 + 32);
  if ((v11 & 1) == 0)
  {
    v16 = [v12 loggingConnection];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v23 = *(a1 + 32);
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      v26 = *(a1 + 48);
      v27 = 138412802;
      v28 = v25;
      v29 = 2048;
      v30 = v10;
      v31 = 2112;
      v32 = v26;
      _os_log_debug_impl(&dword_22F0FC000, v16, OS_LOG_TYPE_DEBUG, "[%@] Skipping year %ld: moments do not intersect processing window %@", &v27, 0x20u);
    }

    goto LABEL_7;
  }

  if ([v12 _shouldCreateFeaturedYearMemoryForMomentNodes:v6 featureNodes:*(a1 + 56) inYear:v10 configuration:*(a1 + 64)])
  {
    v13 = *(a1 + 56);
    v14 = [v5 featureNodeCollection];
    v15 = [v13 collectionByFormingUnionWith:v14];

    v16 = [*(a1 + 32) allFeatureNodesForMemoryNodeWithFeatureNodes:v15];

    v17 = -[PGGraphMemory initWithMemoryCategory:memoryCategorySubcategory:momentNodes:featureNodes:]([PGGraphMemory alloc], "initWithMemoryCategory:memoryCategorySubcategory:momentNodes:featureNodes:", [*(a1 + 32) memoryCategory], objc_msgSend(*(a1 + 32), "memoryCategorySubcategoryForOverTimeType:", 1), v6, v16);
    v18 = *(a1 + 72);
LABEL_4:
    [v18 addObject:v17];

LABEL_7:
    goto LABEL_8;
  }

  if (*(a1 + 96) == 1 && [*(a1 + 32) _shouldCreateFeaturedYearMemoryForMomentNodes:v6 featureNodes:*(a1 + 56) inYear:v10 configuration:*(a1 + 80)])
  {
    v20 = *(a1 + 56);
    v21 = [v5 featureNodeCollection];
    v22 = [v20 collectionByFormingUnionWith:v21];

    v16 = [*(a1 + 32) allFeatureNodesForMemoryNodeWithFeatureNodes:v22];

    v17 = -[PGGraphMemory initWithMemoryCategory:memoryCategorySubcategory:momentNodes:featureNodes:generatedWithFallbackRequirements:]([PGGraphMemory alloc], "initWithMemoryCategory:memoryCategorySubcategory:momentNodes:featureNodes:generatedWithFallbackRequirements:", [*(a1 + 32) memoryCategory], objc_msgSend(*(a1 + 32), "memoryCategorySubcategoryForOverTimeType:", 1), v6, v16, 1);
    v18 = *(a1 + 88);
    goto LABEL_4;
  }

LABEL_8:

  v19 = *MEMORY[0x277D85DE8];
}

void __94__PGOverTimeMemoryGenerator_generatePotentialMemoriesForProcessingWindow_graph_progressBlock___block_invoke_229(uint64_t a1, void *a2, void *a3, void *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = objc_autoreleasePoolPush();
  if ([v7 intersectsCollection:*(a1 + 32)])
  {
    v11 = [v8 featureNodeCollection];
    v12 = [v9 featureNodeCollection];
    v13 = [v11 collectionByFormingUnionWith:v12];

    v14 = [v13 collectionByFormingUnionWith:*(a1 + 56)];

    if ([*(a1 + 40) _shouldCreateFeaturedSeasonMemoryForMomentNodes:v7 featureNodes:v14])
    {
      v15 = [*(a1 + 40) allFeatureNodesForMemoryNodeWithFeatureNodes:v14];

      v16 = -[PGGraphMemory initWithMemoryCategory:memoryCategorySubcategory:momentNodes:featureNodes:]([PGGraphMemory alloc], "initWithMemoryCategory:memoryCategorySubcategory:momentNodes:featureNodes:", [*(a1 + 40) memoryCategory], objc_msgSend(*(a1 + 40), "memoryCategorySubcategoryForOverTimeType:", 2), v7, v15);
      [*(a1 + 64) addObject:v16];

      v14 = v15;
    }
  }

  else
  {
    v14 = [*(a1 + 40) loggingConnection];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v18 = *(a1 + 40);
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v21 = *(a1 + 48);
      v22 = 138412546;
      v23 = v20;
      v24 = 2112;
      v25 = v21;
      _os_log_debug_impl(&dword_22F0FC000, v14, OS_LOG_TYPE_DEBUG, "[%@] Skipping season: moments do not intersect processing window %@", &v22, 0x16u);
    }
  }

  objc_autoreleasePoolPop(v10);
  v17 = *MEMORY[0x277D85DE8];
}

- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)graph usingBlock:(id)block
{
  graphCopy = graph;
  blockCopy = block;
  v9 = PGAbstractMethodException(self, a2);
  objc_exception_throw(v9);
}

- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)type
{
  v3 = PGAbstractMethodException(self, a2);
  objc_exception_throw(v3);
}

- (unint64_t)memoryCategory
{
  v2 = PGAbstractMethodException(self, a2);
  objc_exception_throw(v2);
}

@end