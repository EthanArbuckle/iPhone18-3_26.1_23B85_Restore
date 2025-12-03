@interface PGMemoryGenerationContext
- (PGMemoryGenerationContext)initWithPhotoLibrary:(id)library userFeedbackCalculator:(id)calculator graph:(id)graph serviceManager:(id)manager loggingConnection:(id)connection;
- (PGMemoryGenerationContext)initWithProcessedScenesAndFacesCache:(id)cache momentNodesWithBlockedFeatureCache:(id)featureCache locationHelper:(id)helper serviceManager:(id)manager loggingConnection:(id)connection;
- (double)averageContentScoreForMomentNodes:(id)nodes;
- (id)_yearNodesInGraph:(id)graph;
- (id)interestingForMemoriesSubsetFromMomentNodes:(id)nodes;
- (id)interestingWithAlternateJunkingSubsetFromMomentNodes:(id)nodes;
- (id)momentNodesAtSensitiveLocationsInGraph:(id)graph;
- (id)momentNodesForProcessingWindow:(id)window inGraph:(id)graph;
- (id)yearNodesByMomentNodeInGraph:(id)graph;
- (id)yearNodesForMomentNodes:(id)nodes;
- (id)yearsForYearNodes:(id)nodes;
- (unint64_t)numberOfAssetsInExtendedCurationForMomentNodes:(id)nodes;
@end

@implementation PGMemoryGenerationContext

- (id)_yearNodesInGraph:(id)graph
{
  yearNodes = self->_yearNodes;
  if (!yearNodes)
  {
    v5 = [(PGGraphNodeCollection *)PGGraphYearNodeCollection nodesInGraph:graph];
    v6 = self->_yearNodes;
    self->_yearNodes = v5;

    yearNodes = self->_yearNodes;
  }

  return yearNodes;
}

- (id)yearsForYearNodes:(id)nodes
{
  v29 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  v5 = nodesCopy;
  if (!self->_yearByYearNodeIdentifier)
  {
    graph = [nodesCopy graph];
    v7 = [(PGMemoryGenerationContext *)self _yearNodesInGraph:graph];

    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __47__PGMemoryGenerationContext_yearsForYearNodes___block_invoke;
    v26[3] = &unk_278887280;
    v9 = v8;
    v27 = v9;
    [v7 enumerateYearsUsingBlock:v26];
    yearByYearNodeIdentifier = self->_yearByYearNodeIdentifier;
    self->_yearByYearNodeIdentifier = v9;
    v11 = v9;
  }

  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  elementIdentifiers = [v5 elementIdentifiers];
  indexArray = [elementIdentifiers indexArray];

  v15 = [indexArray countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(indexArray);
        }

        v19 = [(NSDictionary *)self->_yearByYearNodeIdentifier objectForKeyedSubscript:*(*(&v22 + 1) + 8 * i)];
        [v12 addObject:v19];
      }

      v16 = [indexArray countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v16);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v12;
}

void __47__PGMemoryGenerationContext_yearsForYearNodes___block_invoke(uint64_t a1, uint64_t a2)
{
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  [v4 setObject:v6 forKeyedSubscript:v5];
}

- (id)yearNodesForMomentNodes:(id)nodes
{
  nodesCopy = nodes;
  graph = [nodesCopy graph];
  v6 = [(PGMemoryGenerationContext *)self yearNodesByMomentNodeInGraph:graph];
  v7 = [v6 targetsForSources:nodesCopy];

  return v7;
}

- (id)yearNodesByMomentNodeInGraph:(id)graph
{
  v16[2] = *MEMORY[0x277D85DE8];
  yearNodesByMomentNode = self->_yearNodesByMomentNode;
  if (!yearNodesByMomentNode)
  {
    v5 = [(PGMemoryGenerationContext *)self _yearNodesInGraph:graph];
    v6 = MEMORY[0x277D22C90];
    v7 = +[PGGraphYearNodeCollection dateOfYear];
    v16[0] = v7;
    v8 = +[PGGraphDateNode momentOfDate];
    v16[1] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
    v10 = [v6 chain:v9];

    v11 = [MEMORY[0x277D22BF8] adjacencyWithSources:v5 relation:v10 targetsClass:objc_opt_class()];
    transposed = [v11 transposed];
    v13 = self->_yearNodesByMomentNode;
    self->_yearNodesByMomentNode = transposed;

    yearNodesByMomentNode = self->_yearNodesByMomentNode;
  }

  v14 = *MEMORY[0x277D85DE8];

  return yearNodesByMomentNode;
}

- (double)averageContentScoreForMomentNodes:(id)nodes
{
  nodesCopy = nodes;
  if ([nodesCopy count])
  {
    if (!self->_contentScoreByMomentNodeIdentifier)
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
      graph = [nodesCopy graph];
      v7 = [(PGGraphNodeCollection *)PGGraphMomentNodeCollection nodesInGraph:graph];

      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __63__PGMemoryGenerationContext_averageContentScoreForMomentNodes___block_invoke;
      v19[3] = &unk_278883B58;
      v8 = v5;
      v20 = v8;
      [v7 enumerateContentScoresUsingBlock:v19];
      contentScoreByMomentNodeIdentifier = self->_contentScoreByMomentNodeIdentifier;
      self->_contentScoreByMomentNodeIdentifier = v8;
      v10 = v8;
    }

    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __63__PGMemoryGenerationContext_averageContentScoreForMomentNodes___block_invoke_2;
    v14[3] = &unk_278889540;
    v14[4] = self;
    v14[5] = &v15;
    [nodesCopy enumerateIdentifiersAsCollectionsWithBlock:v14];
    v11 = v16[3];
    v12 = v11 / [nodesCopy count];
    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v12 = 0.0;
  }

  return v12;
}

void __63__PGMemoryGenerationContext_averageContentScoreForMomentNodes___block_invoke(uint64_t a1, uint64_t a2)
{
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  [v4 setObject:v6 forKeyedSubscript:v5];
}

void __63__PGMemoryGenerationContext_averageContentScoreForMomentNodes___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 48);
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v4 = [v3 objectForKeyedSubscript:v6];
  [v4 doubleValue];
  *(*(*(a1 + 40) + 8) + 24) = v5 + *(*(*(a1 + 40) + 8) + 24);
}

- (unint64_t)numberOfAssetsInExtendedCurationForMomentNodes:(id)nodes
{
  nodesCopy = nodes;
  if ([nodesCopy count])
  {
    if (!self->_numberOfAssetsInExtendedCurationByMomentNodeIdentifier)
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
      graph = [nodesCopy graph];
      v7 = [(PGGraphNodeCollection *)PGGraphMomentNodeCollection nodesInGraph:graph];

      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __76__PGMemoryGenerationContext_numberOfAssetsInExtendedCurationForMomentNodes___block_invoke;
      v18[3] = &unk_2788849E0;
      v8 = v5;
      v19 = v8;
      [v7 enumerateNumberOfAssetsInExtendedCurationUsingBlock:v18];
      numberOfAssetsInExtendedCurationByMomentNodeIdentifier = self->_numberOfAssetsInExtendedCurationByMomentNodeIdentifier;
      self->_numberOfAssetsInExtendedCurationByMomentNodeIdentifier = v8;
      v10 = v8;
    }

    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __76__PGMemoryGenerationContext_numberOfAssetsInExtendedCurationForMomentNodes___block_invoke_2;
    v13[3] = &unk_278889540;
    v13[4] = self;
    v13[5] = &v14;
    [nodesCopy enumerateIdentifiersAsCollectionsWithBlock:v13];
    v11 = v15[3];
    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __76__PGMemoryGenerationContext_numberOfAssetsInExtendedCurationForMomentNodes___block_invoke(uint64_t a1, uint64_t a2)
{
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  [v4 setObject:v6 forKeyedSubscript:v5];
}

void __76__PGMemoryGenerationContext_numberOfAssetsInExtendedCurationForMomentNodes___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 40);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v4 = [v3 objectForKeyedSubscript:v5];
  *(*(*(a1 + 40) + 8) + 24) += [v4 unsignedIntegerValue];
}

- (id)interestingForMemoriesSubsetFromMomentNodes:(id)nodes
{
  nodesCopy = nodes;
  if ([nodesCopy count])
  {
    momentNodesInterestingForMemories = self->_momentNodesInterestingForMemories;
    if (!momentNodesInterestingForMemories)
    {
      graph = [nodesCopy graph];
      v7 = [PGGraphMomentNodeCollection momentNodesInterestingForMemoriesInGraph:graph];
      v8 = self->_momentNodesInterestingForMemories;
      self->_momentNodesInterestingForMemories = v7;

      momentNodesInterestingForMemories = self->_momentNodesInterestingForMemories;
    }

    v9 = [nodesCopy collectionByIntersecting:momentNodesInterestingForMemories];
  }

  else
  {
    v10 = [PGGraphMomentNodeCollection alloc];
    graph2 = [nodesCopy graph];
    v9 = [(MAElementCollection *)v10 initWithGraph:graph2];
  }

  return v9;
}

- (id)interestingWithAlternateJunkingSubsetFromMomentNodes:(id)nodes
{
  nodesCopy = nodes;
  if ([nodesCopy count])
  {
    momentNodesInterestingWithAlternateJunking = self->_momentNodesInterestingWithAlternateJunking;
    if (!momentNodesInterestingWithAlternateJunking)
    {
      graph = [nodesCopy graph];
      v7 = [PGGraphMomentNodeCollection momentNodesInterestingWithAlternateJunkingInGraph:graph];
      v8 = self->_momentNodesInterestingWithAlternateJunking;
      self->_momentNodesInterestingWithAlternateJunking = v7;

      momentNodesInterestingWithAlternateJunking = self->_momentNodesInterestingWithAlternateJunking;
    }

    v9 = [nodesCopy collectionByIntersecting:momentNodesInterestingWithAlternateJunking];
  }

  else
  {
    v10 = [PGGraphMomentNodeCollection alloc];
    graph2 = [nodesCopy graph];
    v9 = [(MAElementCollection *)v10 initWithGraph:graph2];
  }

  return v9;
}

- (id)momentNodesForProcessingWindow:(id)window inGraph:(id)graph
{
  windowCopy = window;
  graphCopy = graph;
  momentNodesForProcessingWindow = self->_momentNodesForProcessingWindow;
  if (!momentNodesForProcessingWindow)
  {
    if (windowCopy)
    {
      [PGGraphMomentNodeCollection momentNodesInUniversalDateInterval:windowCopy inGraph:graphCopy];
    }

    else
    {
      [(PGGraphNodeCollection *)PGGraphMomentNodeCollection nodesInGraph:graphCopy];
    }
    v9 = ;
    v10 = self->_momentNodesForProcessingWindow;
    self->_momentNodesForProcessingWindow = v9;

    momentNodesForProcessingWindow = self->_momentNodesForProcessingWindow;
  }

  v11 = momentNodesForProcessingWindow;

  return momentNodesForProcessingWindow;
}

- (id)momentNodesAtSensitiveLocationsInGraph:(id)graph
{
  momentNodesAtSensitiveLocations = self->_momentNodesAtSensitiveLocations;
  if (!momentNodesAtSensitiveLocations)
  {
    graphCopy = graph;
    v6 = [PGGraphMomentNodeCollection momentNodesHappeningAtSensitiveLocationInGraph:graphCopy];
    v7 = [PGMemoryGeneratorUtils momentNodesAtHomeOrWorkOrFrequentLocationInGraph:graphCopy];

    v8 = [v6 collectionBySubtracting:v7];
    v9 = self->_momentNodesAtSensitiveLocations;
    self->_momentNodesAtSensitiveLocations = v8;

    momentNodesAtSensitiveLocations = self->_momentNodesAtSensitiveLocations;
  }

  return momentNodesAtSensitiveLocations;
}

- (PGMemoryGenerationContext)initWithProcessedScenesAndFacesCache:(id)cache momentNodesWithBlockedFeatureCache:(id)featureCache locationHelper:(id)helper serviceManager:(id)manager loggingConnection:(id)connection
{
  cacheCopy = cache;
  featureCacheCopy = featureCache;
  helperCopy = helper;
  managerCopy = manager;
  connectionCopy = connection;
  v21.receiver = self;
  v21.super_class = PGMemoryGenerationContext;
  v17 = [(PGMemoryGenerationContext *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_processedScenesAndFacesCache, cache);
    objc_storeStrong(&v18->_momentNodesWithBlockedFeatureCache, featureCache);
    objc_storeStrong(&v18->_locationHelper, helper);
    objc_storeStrong(&v18->_serviceManager, manager);
    objc_storeStrong(&v18->_loggingConnection, connection);
  }

  return v18;
}

- (PGMemoryGenerationContext)initWithPhotoLibrary:(id)library userFeedbackCalculator:(id)calculator graph:(id)graph serviceManager:(id)manager loggingConnection:(id)connection
{
  connectionCopy = connection;
  managerCopy = manager;
  graphCopy = graph;
  calculatorCopy = calculator;
  libraryCopy = library;
  v17 = [[PGMemoryProcessedScenesAndFacesCache alloc] initWithPhotoLibrary:libraryCopy];

  v18 = [[PGMemoryMomentNodesWithBlockedFeatureCache alloc] initWithUserFeedbackCalculator:calculatorCopy loggingConnection:connectionCopy];
  v19 = [[PGGraphLocationHelper alloc] initWithGraph:graphCopy];

  v20 = [(PGMemoryGenerationContext *)self initWithProcessedScenesAndFacesCache:v17 momentNodesWithBlockedFeatureCache:v18 locationHelper:v19 serviceManager:managerCopy loggingConnection:connectionCopy];
  return v20;
}

@end