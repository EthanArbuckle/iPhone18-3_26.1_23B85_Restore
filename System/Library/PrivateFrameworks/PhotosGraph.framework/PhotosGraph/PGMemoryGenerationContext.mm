@interface PGMemoryGenerationContext
- (PGMemoryGenerationContext)initWithPhotoLibrary:(id)a3 userFeedbackCalculator:(id)a4 graph:(id)a5 serviceManager:(id)a6 loggingConnection:(id)a7;
- (PGMemoryGenerationContext)initWithProcessedScenesAndFacesCache:(id)a3 momentNodesWithBlockedFeatureCache:(id)a4 locationHelper:(id)a5 serviceManager:(id)a6 loggingConnection:(id)a7;
- (double)averageContentScoreForMomentNodes:(id)a3;
- (id)_yearNodesInGraph:(id)a3;
- (id)interestingForMemoriesSubsetFromMomentNodes:(id)a3;
- (id)interestingWithAlternateJunkingSubsetFromMomentNodes:(id)a3;
- (id)momentNodesAtSensitiveLocationsInGraph:(id)a3;
- (id)momentNodesForProcessingWindow:(id)a3 inGraph:(id)a4;
- (id)yearNodesByMomentNodeInGraph:(id)a3;
- (id)yearNodesForMomentNodes:(id)a3;
- (id)yearsForYearNodes:(id)a3;
- (unint64_t)numberOfAssetsInExtendedCurationForMomentNodes:(id)a3;
@end

@implementation PGMemoryGenerationContext

- (id)_yearNodesInGraph:(id)a3
{
  yearNodes = self->_yearNodes;
  if (!yearNodes)
  {
    v5 = [(PGGraphNodeCollection *)PGGraphYearNodeCollection nodesInGraph:a3];
    v6 = self->_yearNodes;
    self->_yearNodes = v5;

    yearNodes = self->_yearNodes;
  }

  return yearNodes;
}

- (id)yearsForYearNodes:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (!self->_yearByYearNodeIdentifier)
  {
    v6 = [v4 graph];
    v7 = [(PGMemoryGenerationContext *)self _yearNodesInGraph:v6];

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
  v13 = [v5 elementIdentifiers];
  v14 = [v13 indexArray];

  v15 = [v14 countByEnumeratingWithState:&v22 objects:v28 count:16];
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
          objc_enumerationMutation(v14);
        }

        v19 = [(NSDictionary *)self->_yearByYearNodeIdentifier objectForKeyedSubscript:*(*(&v22 + 1) + 8 * i)];
        [v12 addObject:v19];
      }

      v16 = [v14 countByEnumeratingWithState:&v22 objects:v28 count:16];
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

- (id)yearNodesForMomentNodes:(id)a3
{
  v4 = a3;
  v5 = [v4 graph];
  v6 = [(PGMemoryGenerationContext *)self yearNodesByMomentNodeInGraph:v5];
  v7 = [v6 targetsForSources:v4];

  return v7;
}

- (id)yearNodesByMomentNodeInGraph:(id)a3
{
  v16[2] = *MEMORY[0x277D85DE8];
  yearNodesByMomentNode = self->_yearNodesByMomentNode;
  if (!yearNodesByMomentNode)
  {
    v5 = [(PGMemoryGenerationContext *)self _yearNodesInGraph:a3];
    v6 = MEMORY[0x277D22C90];
    v7 = +[PGGraphYearNodeCollection dateOfYear];
    v16[0] = v7;
    v8 = +[PGGraphDateNode momentOfDate];
    v16[1] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
    v10 = [v6 chain:v9];

    v11 = [MEMORY[0x277D22BF8] adjacencyWithSources:v5 relation:v10 targetsClass:objc_opt_class()];
    v12 = [v11 transposed];
    v13 = self->_yearNodesByMomentNode;
    self->_yearNodesByMomentNode = v12;

    yearNodesByMomentNode = self->_yearNodesByMomentNode;
  }

  v14 = *MEMORY[0x277D85DE8];

  return yearNodesByMomentNode;
}

- (double)averageContentScoreForMomentNodes:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    if (!self->_contentScoreByMomentNodeIdentifier)
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v6 = [v4 graph];
      v7 = [(PGGraphNodeCollection *)PGGraphMomentNodeCollection nodesInGraph:v6];

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
    [v4 enumerateIdentifiersAsCollectionsWithBlock:v14];
    v11 = v16[3];
    v12 = v11 / [v4 count];
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

- (unint64_t)numberOfAssetsInExtendedCurationForMomentNodes:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    if (!self->_numberOfAssetsInExtendedCurationByMomentNodeIdentifier)
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v6 = [v4 graph];
      v7 = [(PGGraphNodeCollection *)PGGraphMomentNodeCollection nodesInGraph:v6];

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
    [v4 enumerateIdentifiersAsCollectionsWithBlock:v13];
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

- (id)interestingForMemoriesSubsetFromMomentNodes:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    momentNodesInterestingForMemories = self->_momentNodesInterestingForMemories;
    if (!momentNodesInterestingForMemories)
    {
      v6 = [v4 graph];
      v7 = [PGGraphMomentNodeCollection momentNodesInterestingForMemoriesInGraph:v6];
      v8 = self->_momentNodesInterestingForMemories;
      self->_momentNodesInterestingForMemories = v7;

      momentNodesInterestingForMemories = self->_momentNodesInterestingForMemories;
    }

    v9 = [v4 collectionByIntersecting:momentNodesInterestingForMemories];
  }

  else
  {
    v10 = [PGGraphMomentNodeCollection alloc];
    v11 = [v4 graph];
    v9 = [(MAElementCollection *)v10 initWithGraph:v11];
  }

  return v9;
}

- (id)interestingWithAlternateJunkingSubsetFromMomentNodes:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    momentNodesInterestingWithAlternateJunking = self->_momentNodesInterestingWithAlternateJunking;
    if (!momentNodesInterestingWithAlternateJunking)
    {
      v6 = [v4 graph];
      v7 = [PGGraphMomentNodeCollection momentNodesInterestingWithAlternateJunkingInGraph:v6];
      v8 = self->_momentNodesInterestingWithAlternateJunking;
      self->_momentNodesInterestingWithAlternateJunking = v7;

      momentNodesInterestingWithAlternateJunking = self->_momentNodesInterestingWithAlternateJunking;
    }

    v9 = [v4 collectionByIntersecting:momentNodesInterestingWithAlternateJunking];
  }

  else
  {
    v10 = [PGGraphMomentNodeCollection alloc];
    v11 = [v4 graph];
    v9 = [(MAElementCollection *)v10 initWithGraph:v11];
  }

  return v9;
}

- (id)momentNodesForProcessingWindow:(id)a3 inGraph:(id)a4
{
  v6 = a3;
  v7 = a4;
  momentNodesForProcessingWindow = self->_momentNodesForProcessingWindow;
  if (!momentNodesForProcessingWindow)
  {
    if (v6)
    {
      [PGGraphMomentNodeCollection momentNodesInUniversalDateInterval:v6 inGraph:v7];
    }

    else
    {
      [(PGGraphNodeCollection *)PGGraphMomentNodeCollection nodesInGraph:v7];
    }
    v9 = ;
    v10 = self->_momentNodesForProcessingWindow;
    self->_momentNodesForProcessingWindow = v9;

    momentNodesForProcessingWindow = self->_momentNodesForProcessingWindow;
  }

  v11 = momentNodesForProcessingWindow;

  return momentNodesForProcessingWindow;
}

- (id)momentNodesAtSensitiveLocationsInGraph:(id)a3
{
  momentNodesAtSensitiveLocations = self->_momentNodesAtSensitiveLocations;
  if (!momentNodesAtSensitiveLocations)
  {
    v5 = a3;
    v6 = [PGGraphMomentNodeCollection momentNodesHappeningAtSensitiveLocationInGraph:v5];
    v7 = [PGMemoryGeneratorUtils momentNodesAtHomeOrWorkOrFrequentLocationInGraph:v5];

    v8 = [v6 collectionBySubtracting:v7];
    v9 = self->_momentNodesAtSensitiveLocations;
    self->_momentNodesAtSensitiveLocations = v8;

    momentNodesAtSensitiveLocations = self->_momentNodesAtSensitiveLocations;
  }

  return momentNodesAtSensitiveLocations;
}

- (PGMemoryGenerationContext)initWithProcessedScenesAndFacesCache:(id)a3 momentNodesWithBlockedFeatureCache:(id)a4 locationHelper:(id)a5 serviceManager:(id)a6 loggingConnection:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = PGMemoryGenerationContext;
  v17 = [(PGMemoryGenerationContext *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_processedScenesAndFacesCache, a3);
    objc_storeStrong(&v18->_momentNodesWithBlockedFeatureCache, a4);
    objc_storeStrong(&v18->_locationHelper, a5);
    objc_storeStrong(&v18->_serviceManager, a6);
    objc_storeStrong(&v18->_loggingConnection, a7);
  }

  return v18;
}

- (PGMemoryGenerationContext)initWithPhotoLibrary:(id)a3 userFeedbackCalculator:(id)a4 graph:(id)a5 serviceManager:(id)a6 loggingConnection:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [[PGMemoryProcessedScenesAndFacesCache alloc] initWithPhotoLibrary:v16];

  v18 = [[PGMemoryMomentNodesWithBlockedFeatureCache alloc] initWithUserFeedbackCalculator:v15 loggingConnection:v12];
  v19 = [[PGGraphLocationHelper alloc] initWithGraph:v14];

  v20 = [(PGMemoryGenerationContext *)self initWithProcessedScenesAndFacesCache:v17 momentNodesWithBlockedFeatureCache:v18 locationHelper:v19 serviceManager:v13 loggingConnection:v12];
  return v20;
}

@end