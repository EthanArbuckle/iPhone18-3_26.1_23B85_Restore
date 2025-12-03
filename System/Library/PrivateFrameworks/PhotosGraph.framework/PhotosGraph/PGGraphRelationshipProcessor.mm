@interface PGGraphRelationshipProcessor
- (PGGraphRelationshipProcessor)initWithPersonNodes:(id)nodes runOptions:(unint64_t)options serviceManager:(id)manager;
- (id)_socialGroupNodesIncludingPersonLocalIdentifiers:(id)identifiers minimumMatches:(unint64_t)matches amongSocialGroupNodes:(id)nodes;
- (id)relationshipAnalyzerPropertiesForPersonLocalIdentifier:(id)identifier;
- (void)_aggregateScores;
- (void)_enumerateInferredParentsUsingBlock:(id)block;
- (void)_enumerateInferredPartnerUsingBlock:(id)block;
- (void)_enumerateInferredRelationshipMembersFromScores:(id)scores cumulativeThreshold:(double)threshold minimumConfidence:(double)confidence usingBlock:(id)block;
- (void)_extractSignalsFromRunOptions;
- (void)enumerateHighRecallInferredRelationshipsExcludingPersonNodes:(id)nodes usingBlock:(id)block;
- (void)enumerateInferredRelationshipsUsingBlock:(id)block;
- (void)runRelationshipAnalysisWithLoggingConnection:(id)connection progressBlock:(id)block;
@end

@implementation PGGraphRelationshipProcessor

- (id)relationshipAnalyzerPropertiesForPersonLocalIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(PGGraph *)self->_graph personNodeForPersonLocalIdentifier:identifierCopy];
  if (v5 && [(MANodeCollection *)self->_personNodes containsNode:v5])
  {
    v6 = [(NSMutableDictionary *)self->_relationshipAnalyzerPropertiesByPersonLocalIdentifier objectForKeyedSubscript:identifierCopy];
    if (!v6)
    {
      v6 = objc_alloc_init(PGPersonRelationshipAnalyzerProperties);
      [(NSMutableDictionary *)self->_relationshipAnalyzerPropertiesByPersonLocalIdentifier setObject:v6 forKeyedSubscript:identifierCopy];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_enumerateInferredParentsUsingBlock:(id)block
{
  blockCopy = block;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v20[3] = 0;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = __Block_byref_object_copy__16046;
  v18[4] = __Block_byref_object_dispose__16047;
  v19 = 0;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = __Block_byref_object_copy__16046;
  v16[4] = __Block_byref_object_dispose__16047;
  v17 = 0;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v15[3] = 0;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v14[3] = 0;
  parentScoreByPersonLocalIdentifier = self->_parentScoreByPersonLocalIdentifier;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__PGGraphRelationshipProcessor__enumerateInferredParentsUsingBlock___block_invoke;
  v13[3] = &unk_2788809C0;
  v13[4] = v15;
  v13[5] = v14;
  v13[6] = v16;
  v13[7] = v18;
  v13[8] = v20;
  [(NSMutableDictionary *)parentScoreByPersonLocalIdentifier enumerateKeysAndObjectsUsingBlock:v13];
  v6 = self->_parentScoreByPersonLocalIdentifier;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__PGGraphRelationshipProcessor__enumerateInferredParentsUsingBlock___block_invoke_2;
  v8[3] = &unk_2788809E8;
  v10 = v18;
  v11 = v16;
  v12 = v20;
  v7 = blockCopy;
  v9 = v7;
  [(NSMutableDictionary *)v6 enumerateKeysAndObjectsUsingBlock:v8];

  _Block_object_dispose(v14, 8);
  _Block_object_dispose(v15, 8);
  _Block_object_dispose(v16, 8);

  _Block_object_dispose(v18, 8);
  _Block_object_dispose(v20, 8);
}

void __68__PGGraphRelationshipProcessor__enumerateInferredParentsUsingBlock___block_invoke(void *a1, void *a2, void *a3)
{
  v11 = a2;
  [a3 doubleValue];
  v7 = v6;
  v8 = *(*(a1[4] + 8) + 24);
  v9 = *(a1[5] + 8);
  if (v7 <= v8)
  {
    if (v7 <= *(v9 + 24))
    {
      goto LABEL_6;
    }

    *(v9 + 24) = v7;
    v10 = a1 + 6;
  }

  else
  {
    *(v9 + 24) = v8;
    *(*(a1[4] + 8) + 24) = v7;
    v10 = a1 + 7;
    objc_storeStrong((*(a1[6] + 8) + 40), *(*(a1[7] + 8) + 40));
  }

  objc_storeStrong((*(*v10 + 8) + 40), a2);
LABEL_6:
  *(*(a1[8] + 8) + 24) = v7 + *(*(a1[8] + 8) + 24);
}

void __68__PGGraphRelationshipProcessor__enumerateInferredParentsUsingBlock___block_invoke_2(void *a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (([v7 isEqualToString:*(*(a1[5] + 8) + 40)] & 1) == 0 && !objc_msgSend(v7, "isEqualToString:", *(*(a1[6] + 8) + 40)) || (objc_msgSend(v5, "doubleValue"), v6.n128_f64[0] = v6.n128_f64[0] / *(*(a1[7] + 8) + 24), v6.n128_f64[0] <= 0.4))
  {
    v6.n128_u64[0] = 0;
  }

  (*(a1[4] + 16))(v6);
}

- (id)_socialGroupNodesIncludingPersonLocalIdentifiers:(id)identifiers minimumMatches:(unint64_t)matches amongSocialGroupNodes:(id)nodes
{
  identifiersCopy = identifiers;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __118__PGGraphRelationshipProcessor__socialGroupNodesIncludingPersonLocalIdentifiers_minimumMatches_amongSocialGroupNodes___block_invoke;
  v11[3] = &unk_278880998;
  v12 = identifiersCopy;
  matchesCopy = matches;
  v8 = identifiersCopy;
  v9 = [nodes filteredCollectionUsingBlock:v11];

  return v9;
}

BOOL __118__PGGraphRelationshipProcessor__socialGroupNodesIncludingPersonLocalIdentifiers_minimumMatches_amongSocialGroupNodes___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 personNodes];
  if ([v3 count] >= *(a1 + 40))
  {
    v5 = [v3 localIdentifiers];
    v6 = [v5 mutableCopy];

    [v6 intersectSet:*(a1 + 32)];
    v4 = [v6 count] >= *(a1 + 40);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_enumerateInferredRelationshipMembersFromScores:(id)scores cumulativeThreshold:(double)threshold minimumConfidence:(double)confidence usingBlock:(id)block
{
  v75[1] = *MEMORY[0x277D85DE8];
  scoresCopy = scores;
  blockCopy = block;
  v68 = 0;
  v69 = &v68;
  v70 = 0x2020000000;
  v71 = 0;
  if ([scoresCopy count])
  {
    v12 = MEMORY[0x277CCA9C0];
    allValues = [scoresCopy allValues];
    v48 = [v12 expressionForConstantValue:allValues];

    v14 = MEMORY[0x277CCA9C0];
    v75[0] = v48;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v75 count:1];
    v16 = [v14 expressionForFunction:@"average:" arguments:v15];
    v17 = [v16 expressionValueWithObject:0 context:0];
    [v17 doubleValue];
    v19 = v18;

    v20 = MEMORY[0x277CCA9C0];
    v74 = v48;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v74 count:1];
    v22 = [v20 expressionForFunction:@"stddev:" arguments:v21];
    v23 = [v22 expressionValueWithObject:0 context:0];
    [v23 doubleValue];
    v25 = v24;

    v26 = [MEMORY[0x277CBEB58] set];
    v27 = [MEMORY[0x277CBEB58] set];
    v28 = MEMORY[0x277CBEB58];
    allKeys = [scoresCopy allKeys];
    v46 = [v28 setWithArray:allKeys];

    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __129__PGGraphRelationshipProcessor__enumerateInferredRelationshipMembersFromScores_cumulativeThreshold_minimumConfidence_usingBlock___block_invoke;
    v62[3] = &unk_278880920;
    v64 = &v68;
    v65 = v19;
    v66 = v25;
    thresholdCopy = threshold;
    v30 = v26;
    v63 = v30;
    [scoresCopy enumerateKeysAndObjectsUsingBlock:v62];
    if ([v30 count])
    {
      v31 = [(PGGraphNodeCollection *)PGGraphSocialGroupNodeCollection nodesInGraph:self->_graph, v46];
      v32 = [(PGGraphRelationshipProcessor *)self _socialGroupNodesIncludingPersonLocalIdentifiers:v30 minimumMatches:2 amongSocialGroupNodes:v31];
      v57[0] = MEMORY[0x277D85DD0];
      v57[1] = 3221225472;
      v57[2] = __129__PGGraphRelationshipProcessor__enumerateInferredRelationshipMembersFromScores_cumulativeThreshold_minimumConfidence_usingBlock___block_invoke_2;
      v57[3] = &unk_278880970;
      v58 = scoresCopy;
      v60 = &v68;
      confidenceCopy = confidence;
      v59 = v27;
      [v32 enumerateIdentifiersAsCollectionsWithBlock:v57];
    }

    [v30 unionSet:{v27, v46}];
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v33 = v30;
    v34 = [v33 countByEnumeratingWithState:&v53 objects:v73 count:16];
    if (v34)
    {
      v35 = *v54;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v54 != v35)
          {
            objc_enumerationMutation(v33);
          }

          v37 = *(*(&v53 + 1) + 8 * i);
          v38 = [scoresCopy objectForKeyedSubscript:v37];
          [v38 doubleValue];
          blockCopy[2](blockCopy, v37, v39 / v69[3]);
        }

        v34 = [v33 countByEnumeratingWithState:&v53 objects:v73 count:16];
      }

      while (v34);
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v40 = v47;
    v41 = [v40 countByEnumeratingWithState:&v49 objects:v72 count:16];
    if (v41)
    {
      v42 = *v50;
      do
      {
        for (j = 0; j != v41; ++j)
        {
          if (*v50 != v42)
          {
            objc_enumerationMutation(v40);
          }

          v44 = *(*(&v49 + 1) + 8 * j);
          if (([v33 containsObject:v44] & 1) == 0)
          {
            blockCopy[2](blockCopy, v44, 0.0);
          }
        }

        v41 = [v40 countByEnumeratingWithState:&v49 objects:v72 count:16];
      }

      while (v41);
    }
  }

  _Block_object_dispose(&v68, 8);

  v45 = *MEMORY[0x277D85DE8];
}

void __129__PGGraphRelationshipProcessor__enumerateInferredRelationshipMembersFromScores_cumulativeThreshold_minimumConfidence_usingBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  [a3 doubleValue];
  *(*(*(a1 + 40) + 8) + 24) = v5 + *(*(*(a1 + 40) + 8) + 24);
  [MEMORY[0x277D27688] cumulativeNormalDistributionForX:v5 mu:*(a1 + 48) sigma:*(a1 + 56)];
  if (v6 >= *(a1 + 64))
  {
    [*(a1 + 32) addObject:v7];
  }
}

void __129__PGGraphRelationshipProcessor__enumerateInferredRelationshipMembersFromScores_cumulativeThreshold_minimumConfidence_usingBlock___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 personNodes];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __129__PGGraphRelationshipProcessor__enumerateInferredRelationshipMembersFromScores_cumulativeThreshold_minimumConfidence_usingBlock___block_invoke_3;
  v7[3] = &unk_278880948;
  v8 = *(a1 + 32);
  v10 = *(a1 + 56);
  v6 = *(a1 + 40);
  v5 = v6;
  v9 = v6;
  [v4 enumerateNodesUsingBlock:v7];
}

void __129__PGGraphRelationshipProcessor__enumerateInferredRelationshipMembersFromScores_cumulativeThreshold_minimumConfidence_usingBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v6 = [a2 localIdentifier];
  v3 = [*(a1 + 32) objectForKeyedSubscript:?];
  v4 = v3;
  if (v3)
  {
    [v3 doubleValue];
    if (v5 / *(*(*(a1 + 48) + 8) + 24) >= *(a1 + 56))
    {
      [*(a1 + 40) addObject:v6];
    }
  }
}

- (void)_enumerateInferredPartnerUsingBlock:(id)block
{
  blockCopy = block;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v16[3] = 0;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = __Block_byref_object_copy__16046;
  v14[4] = __Block_byref_object_dispose__16047;
  v15 = 0;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v13[3] = 0;
  partnerScoreByPersonLocalIdentifier = self->_partnerScoreByPersonLocalIdentifier;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __68__PGGraphRelationshipProcessor__enumerateInferredPartnerUsingBlock___block_invoke;
  v12[3] = &unk_2788808D0;
  v12[4] = v13;
  v12[5] = v14;
  v12[6] = v16;
  [(NSMutableDictionary *)partnerScoreByPersonLocalIdentifier enumerateKeysAndObjectsUsingBlock:v12];
  v6 = self->_partnerScoreByPersonLocalIdentifier;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__PGGraphRelationshipProcessor__enumerateInferredPartnerUsingBlock___block_invoke_2;
  v8[3] = &unk_2788808F8;
  v10 = v14;
  v11 = v16;
  v7 = blockCopy;
  v9 = v7;
  [(NSMutableDictionary *)v6 enumerateKeysAndObjectsUsingBlock:v8];

  _Block_object_dispose(v13, 8);
  _Block_object_dispose(v14, 8);

  _Block_object_dispose(v16, 8);
}

void __68__PGGraphRelationshipProcessor__enumerateInferredPartnerUsingBlock___block_invoke(void *a1, void *a2, void *a3)
{
  v8 = a2;
  [a3 doubleValue];
  v7 = v6;
  if (v6 > *(*(a1[4] + 8) + 24))
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a2);
    *(*(a1[4] + 8) + 24) = v7;
  }

  *(*(a1[6] + 8) + 24) = v7 + *(*(a1[6] + 8) + 24);
}

void __68__PGGraphRelationshipProcessor__enumerateInferredPartnerUsingBlock___block_invoke_2(void *a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (![v7 isEqualToString:*(*(a1[5] + 8) + 40)] || (objc_msgSend(v5, "doubleValue"), v6.n128_f64[0] = v6.n128_f64[0] / *(*(a1[6] + 8) + 24), v6.n128_f64[0] <= 0.5))
  {
    v6.n128_u64[0] = 0;
  }

  (*(a1[4] + 16))(v6);
}

- (void)_aggregateScores
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  partnerScoreByPersonLocalIdentifier = self->_partnerScoreByPersonLocalIdentifier;
  self->_partnerScoreByPersonLocalIdentifier = dictionary;

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  parentScoreByPersonLocalIdentifier = self->_parentScoreByPersonLocalIdentifier;
  self->_parentScoreByPersonLocalIdentifier = dictionary2;

  dictionary3 = [MEMORY[0x277CBEB38] dictionary];
  childScoreByPersonLocalIdentifier = self->_childScoreByPersonLocalIdentifier;
  self->_childScoreByPersonLocalIdentifier = dictionary3;

  dictionary4 = [MEMORY[0x277CBEB38] dictionary];
  familyScoreByPersonLocalIdentifier = self->_familyScoreByPersonLocalIdentifier;
  self->_familyScoreByPersonLocalIdentifier = dictionary4;

  dictionary5 = [MEMORY[0x277CBEB38] dictionary];
  coworkerScoreByPersonLocalIdentifier = self->_coworkerScoreByPersonLocalIdentifier;
  self->_coworkerScoreByPersonLocalIdentifier = dictionary5;

  dictionary6 = [MEMORY[0x277CBEB38] dictionary];
  friendScoreByPersonLocalIdentifier = self->_friendScoreByPersonLocalIdentifier;
  self->_friendScoreByPersonLocalIdentifier = dictionary6;

  relationshipAnalyzerPropertiesByPersonLocalIdentifier = self->_relationshipAnalyzerPropertiesByPersonLocalIdentifier;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __48__PGGraphRelationshipProcessor__aggregateScores__block_invoke;
  v16[3] = &unk_2788808A8;
  v16[4] = self;
  [(NSMutableDictionary *)relationshipAnalyzerPropertiesByPersonLocalIdentifier enumerateKeysAndObjectsUsingBlock:v16];
}

void __48__PGGraphRelationshipProcessor__aggregateScores__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = a2;
  v5 = a3;
  [v5 partnerScore];
  if (v6 > 0.0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    v8 = [*(a1 + 32) partnerScoreByPersonLocalIdentifier];
    [v8 setObject:v7 forKeyedSubscript:v24];
  }

  [v5 parentScore];
  if (v9 > 0.0)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    v11 = [*(a1 + 32) parentScoreByPersonLocalIdentifier];
    [v11 setObject:v10 forKeyedSubscript:v24];
  }

  [v5 childScore];
  if (v12 > 0.0)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    v14 = [*(a1 + 32) childScoreByPersonLocalIdentifier];
    [v14 setObject:v13 forKeyedSubscript:v24];
  }

  [v5 familyScore];
  if (v15 > 0.0)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    v17 = [*(a1 + 32) familyScoreByPersonLocalIdentifier];
    [v17 setObject:v16 forKeyedSubscript:v24];
  }

  [v5 coworkerScore];
  if (v18 > 0.0)
  {
    v19 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    v20 = [*(a1 + 32) coworkerScoreByPersonLocalIdentifier];
    [v20 setObject:v19 forKeyedSubscript:v24];
  }

  [v5 friendScore];
  if (v21 > 0.0)
  {
    v22 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    v23 = [*(a1 + 32) friendScoreByPersonLocalIdentifier];
    [v23 setObject:v22 forKeyedSubscript:v24];
  }
}

- (void)_extractSignalsFromRunOptions
{
  if ([PGPeopleInferencesConveniences signalInRunOptions:self->_runOptions signal:2])
  {
    analyzersToRun = self->_analyzersToRun;
    v4 = [[PGRelationshipTripAnalyzer alloc] initWithRelationshipProcessor:self];
    [(NSMutableArray *)analyzersToRun addObject:v4];
  }

  if ([PGPeopleInferencesConveniences signalInRunOptions:self->_runOptions signal:4])
  {
    v5 = self->_analyzersToRun;
    v6 = [[PGRelationshipNightOutAnalyzer alloc] initWithRelationshipProcessor:self];
    [(NSMutableArray *)v5 addObject:v6];
  }

  if ([PGPeopleInferencesConveniences signalInRunOptions:self->_runOptions signal:16])
  {
    v7 = self->_analyzersToRun;
    v8 = [[PGRelationshipHolidayAnalyzer alloc] initWithRelationshipProcessor:self];
    [(NSMutableArray *)v7 addObject:v8];
  }

  if ([PGPeopleInferencesConveniences signalInRunOptions:self->_runOptions signal:32])
  {
    v9 = self->_analyzersToRun;
    v10 = [[PGRelationshipContactNameAnalyzer alloc] initWithRelationshipProcessor:self];
    [(NSMutableArray *)v9 addObject:v10];
  }

  if ([PGPeopleInferencesConveniences signalInRunOptions:self->_runOptions signal:64])
  {
    v11 = self->_analyzersToRun;
    v12 = [[PGRelationshipHomeAnalyzer alloc] initWithRelationshipProcessor:self];
    [(NSMutableArray *)v11 addObject:v12];
  }

  if ([PGPeopleInferencesConveniences signalInRunOptions:self->_runOptions signal:128])
  {
    v13 = self->_analyzersToRun;
    v14 = [[PGRelationshipAnniversaryAnalyzer alloc] initWithRelationshipProcessor:self];
    [(NSMutableArray *)v13 addObject:v14];
  }

  if ([PGPeopleInferencesConveniences signalInRunOptions:self->_runOptions signal:256])
  {
    v15 = self->_analyzersToRun;
    v16 = [[PGRelationshipSocialGroupAnalyzer alloc] initWithRelationshipProcessor:self];
    [(NSMutableArray *)v15 addObject:v16];
  }

  if ([PGPeopleInferencesConveniences signalInRunOptions:self->_runOptions signal:8])
  {
    v17 = self->_analyzersToRun;
    v18 = [[PGRelationshipMomentFrequencyAnalyzer alloc] initWithRelationshipProcessor:self];
    [(NSMutableArray *)v17 addObject:v18];
  }

  if ([PGPeopleInferencesConveniences signalInRunOptions:self->_runOptions signal:512])
  {
    v19 = self->_analyzersToRun;
    v20 = [[PGRelationshipWeekendAnalyzer alloc] initWithRelationshipProcessor:self];
    [(NSMutableArray *)v19 addObject:v20];
  }

  if ([PGPeopleInferencesConveniences signalInRunOptions:self->_runOptions signal:1024])
  {
    v21 = self->_analyzersToRun;
    v22 = [[PGRelationshipCalendarAnalyzer alloc] initWithRelationshipProcessor:self];
    [(NSMutableArray *)v21 addObject:v22];
  }

  if ([PGPeopleInferencesConveniences signalInRunOptions:self->_runOptions signal:2048])
  {
    v23 = self->_analyzersToRun;
    v24 = [[PGRelationshipWorkAnalyzer alloc] initWithRelationshipProcessor:self];
    [(NSMutableArray *)v23 addObject:v24];
  }

  if ([PGPeopleInferencesConveniences signalInRunOptions:self->_runOptions signal:4096])
  {
    v25 = self->_analyzersToRun;
    v26 = [[PGRelationshipAgeAnalyzer alloc] initWithRelationshipProcessor:self];
    [(NSMutableArray *)v25 addObject:v26];
  }

  self->_numberOfSignals = [(NSMutableArray *)self->_analyzersToRun count];
}

- (void)enumerateHighRecallInferredRelationshipsExcludingPersonNodes:(id)nodes usingBlock:(id)block
{
  blockCopy = block;
  nodesCopy = nodes;
  personNodes = [(PGGraphRelationshipProcessor *)self personNodes];
  v9 = [personNodes collectionBySubtracting:nodesCopy];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __104__PGGraphRelationshipProcessor_enumerateHighRecallInferredRelationshipsExcludingPersonNodes_usingBlock___block_invoke;
  v11[3] = &unk_278880880;
  v11[4] = self;
  v12 = blockCopy;
  v10 = blockCopy;
  [v9 enumerateLocalIdentifiersUsingBlock:v11];
}

void __104__PGGraphRelationshipProcessor_enumerateHighRecallInferredRelationshipsExcludingPersonNodes_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) relationshipAnalyzerPropertiesByPersonLocalIdentifier];
  v4 = [v3 objectForKeyedSubscript:v5];

  if (![v4 isInferredHighRecallChild])
  {
    [v4 isInferredHighRecallHouseholdMember];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)enumerateInferredRelationshipsUsingBlock:(id)block
{
  blockCopy = block;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x2020000000;
  v37 = 0;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __73__PGGraphRelationshipProcessor_enumerateInferredRelationshipsUsingBlock___block_invoke;
  v33[3] = &unk_278880830;
  v33[4] = self;
  v5 = blockCopy;
  v34 = v5;
  v35 = v36;
  [(PGGraphRelationshipProcessor *)self _enumerateInferredPartnerUsingBlock:v33];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __73__PGGraphRelationshipProcessor_enumerateInferredRelationshipsUsingBlock___block_invoke_2;
  v28[3] = &unk_278880858;
  v7 = dictionary;
  v29 = v7;
  selfCopy = self;
  v8 = v5;
  v31 = v8;
  v32 = v36;
  [(PGGraphRelationshipProcessor *)self _enumerateInferredFamilyMembersUsingBlock:v28];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __73__PGGraphRelationshipProcessor_enumerateInferredRelationshipsUsingBlock___block_invoke_3;
  v23[3] = &unk_278880858;
  v9 = v7;
  v24 = v9;
  selfCopy2 = self;
  v10 = v8;
  v26 = v10;
  v27 = v36;
  [(PGGraphRelationshipProcessor *)self _enumerateInferredFriendsUsingBlock:v23];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __73__PGGraphRelationshipProcessor_enumerateInferredRelationshipsUsingBlock___block_invoke_237;
  v20[3] = &unk_278880830;
  v20[4] = self;
  v11 = v10;
  v21 = v11;
  v22 = v36;
  [(PGGraphRelationshipProcessor *)self _enumerateInferredParentsUsingBlock:v20];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __73__PGGraphRelationshipProcessor_enumerateInferredRelationshipsUsingBlock___block_invoke_2_238;
  v17[3] = &unk_278880830;
  v17[4] = self;
  v12 = v11;
  v18 = v12;
  v19 = v36;
  [(PGGraphRelationshipProcessor *)self _enumerateInferredChildrenUsingBlock:v17];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __73__PGGraphRelationshipProcessor_enumerateInferredRelationshipsUsingBlock___block_invoke_3_239;
  v14[3] = &unk_278880830;
  v14[4] = self;
  v13 = v12;
  v15 = v13;
  v16 = v36;
  [(PGGraphRelationshipProcessor *)self _enumerateInferredCoworkersUsingBlock:v14];

  _Block_object_dispose(v36, 8);
}

void __73__PGGraphRelationshipProcessor_enumerateInferredRelationshipsUsingBlock___block_invoke(void *a1, void *a2, double a3)
{
  v5 = a1[4];
  v6 = a2;
  v7 = [v5 relationshipAnalyzerPropertiesByPersonLocalIdentifier];
  v10 = [v7 objectForKeyedSubscript:v6];

  v8 = [v10 edgeProperties];
  v9 = *(a1[6] + 8);
  (*(a1[5] + 16))(a3);
}

void __73__PGGraphRelationshipProcessor_enumerateInferredRelationshipsUsingBlock___block_invoke_2(uint64_t a1, void *a2, double a3)
{
  v5 = MEMORY[0x277CCABB0];
  v6 = a2;
  v7 = [v5 numberWithDouble:a3];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];

  v8 = [*(a1 + 40) relationshipAnalyzerPropertiesByPersonLocalIdentifier];
  v11 = [v8 objectForKeyedSubscript:v6];

  v9 = [v11 edgeProperties];
  v10 = *(*(a1 + 56) + 8);
  (*(*(a1 + 48) + 16))(a3);
}

void __73__PGGraphRelationshipProcessor_enumerateInferredRelationshipsUsingBlock___block_invoke_3(uint64_t a1, void *a2, double a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v5];
  [v6 doubleValue];
  if (v7 <= a3)
  {
    v10 = [*(a1 + 40) relationshipAnalyzerPropertiesByPersonLocalIdentifier];
    v11 = [v10 objectForKeyedSubscript:v5];

    v12 = [v11 edgeProperties];
    v13 = *(*(a1 + 56) + 8);
    (*(*(a1 + 48) + 16))(a3);
  }

  else
  {
    v8 = +[PGLogging sharedLogging];
    v9 = [v8 loggingConnection];

    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v15 = 138412290;
      v16 = v5;
      _os_log_impl(&dword_22F0FC000, v9, OS_LOG_TYPE_INFO, "Person %@ is inferred family, filtering out of friends", &v15, 0xCu);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __73__PGGraphRelationshipProcessor_enumerateInferredRelationshipsUsingBlock___block_invoke_237(void *a1, void *a2, double a3)
{
  v5 = a1[4];
  v6 = a2;
  v7 = [v5 relationshipAnalyzerPropertiesByPersonLocalIdentifier];
  v10 = [v7 objectForKeyedSubscript:v6];

  v8 = [v10 edgeProperties];
  v9 = *(a1[6] + 8);
  (*(a1[5] + 16))(a3);
}

void __73__PGGraphRelationshipProcessor_enumerateInferredRelationshipsUsingBlock___block_invoke_2_238(void *a1, void *a2, double a3)
{
  v5 = a1[4];
  v6 = a2;
  v7 = [v5 relationshipAnalyzerPropertiesByPersonLocalIdentifier];
  v10 = [v7 objectForKeyedSubscript:v6];

  v8 = [v10 edgeProperties];
  v9 = *(a1[6] + 8);
  (*(a1[5] + 16))(a3);
}

void __73__PGGraphRelationshipProcessor_enumerateInferredRelationshipsUsingBlock___block_invoke_3_239(void *a1, void *a2, double a3)
{
  v5 = a1[4];
  v6 = a2;
  v7 = [v5 relationshipAnalyzerPropertiesByPersonLocalIdentifier];
  v10 = [v7 objectForKeyedSubscript:v6];

  v8 = [v10 edgeProperties];
  v9 = *(a1[6] + 8);
  (*(a1[5] + 16))(a3);
}

- (void)runRelationshipAnalysisWithLoggingConnection:(id)connection progressBlock:(id)block
{
  v78 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  aBlock = block;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  relationshipAnalyzerPropertiesByPersonLocalIdentifier = self->_relationshipAnalyzerPropertiesByPersonLocalIdentifier;
  self->_relationshipAnalyzerPropertiesByPersonLocalIdentifier = dictionary;

  v7 = [PGPeopleInferencesConveniences personLocalIdentifierByContactIdentifierFromPersonNodes:self->_personNodes];
  personLocalIdentifierByContactIdentifier = self->_personLocalIdentifierByContactIdentifier;
  self->_personLocalIdentifierByContactIdentifier = v7;

  v9 = MEMORY[0x277CBEB98];
  allKeys = [(NSDictionary *)self->_personLocalIdentifierByContactIdentifier allKeys];
  v11 = [v9 setWithArray:allKeys];
  contactIdentifiers = self->_contactIdentifiers;
  self->_contactIdentifiers = v11;

  v66 = 0;
  v67 = &v66;
  v68 = 0x2020000000;
  v69 = 0;
  v62 = 0;
  v63 = &v62;
  v64 = 0x2020000000;
  v65 = 0;
  v43 = _Block_copy(aBlock);
  if (v43 && (v13 = CFAbsoluteTimeGetCurrent(), v13 - v63[3] >= 0.01) && (v63[3] = v13, LOBYTE(v58) = 0, (*(v43 + 2))(v43, &v58, 0.0), v14 = *(v67 + 24) | v58, *(v67 + 24) = v14, (v14 & 1) != 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *&buf[4] = 96;
      LOWORD(v76) = 2080;
      *(&v76 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/People Inferences/Relationship/PGGraphRelationshipProcessor.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }
  }

  else
  {
    *buf = 0;
    *&v76 = buf;
    *(&v76 + 1) = 0x2020000000;
    v77 = 0;
    v58 = 0;
    v59 = &v58;
    v60 = 0x2020000000;
    v61 = 0;
    numberOfSignals = self->_numberOfSignals;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    obj = self->_analyzersToRun;
    v16 = [(NSMutableArray *)obj countByEnumeratingWithState:&v54 objects:v74 count:16];
    if (v16)
    {
      v17 = *v55;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v55 != v17)
          {
            objc_enumerationMutation(obj);
          }

          if (*(v76 + 24))
          {

            goto LABEL_29;
          }

          v19 = *(*(&v54 + 1) + 8 * i);
          v20 = v59[3];
          v21 = connectionCopy;
          v22 = os_signpost_id_generate(v21);
          v23 = v21;
          v24 = v23;
          if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
          {
            *v70 = 0;
            _os_signpost_emit_with_name_impl(&dword_22F0FC000, v24, OS_SIGNPOST_INTERVAL_BEGIN, v22, "RelationshipAnalyzer", "", v70, 2u);
          }

          info = 0;
          mach_timebase_info(&info);
          v25 = mach_absolute_time();
          v26 = objc_autoreleasePoolPush();
          v44[0] = MEMORY[0x277D85DD0];
          v44[1] = 3221225472;
          v44[2] = __91__PGGraphRelationshipProcessor_runRelationshipAnalysisWithLoggingConnection_progressBlock___block_invoke;
          v44[3] = &unk_278880808;
          v45 = v43;
          v46 = &v62;
          v47 = &v58;
          v48 = &v66;
          v51 = v20;
          v52 = 0.9 / numberOfSignals;
          v50 = 0x3F847AE147AE147BLL;
          v49 = buf;
          [v19 runAnalysisWithProgressBlock:v44];

          objc_autoreleasePoolPop(v26);
          v27 = mach_absolute_time();
          v28 = info;
          v29 = v24;
          v30 = v29;
          if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
          {
            name = [v19 name];
            *v70 = 138412290;
            *v71 = name;
            _os_signpost_emit_with_name_impl(&dword_22F0FC000, v30, OS_SIGNPOST_INTERVAL_END, v22, "RelationshipAnalyzer", "Relationship Analyzer: %@", v70, 0xCu);
          }

          v32 = v30;
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            v33 = MEMORY[0x277CCACA8];
            name2 = [v19 name];
            v35 = [v33 stringWithFormat:@"Relationship Analyzer: %@", name2];
            *v70 = 136315650;
            *v71 = "RelationshipAnalyzer";
            *&v71[8] = 2112;
            *&v71[10] = v35;
            v72 = 2048;
            v73 = ((((v27 - v25) * v28.numer) / v28.denom) / 1000000.0);
            _os_log_impl(&dword_22F0FC000, v32, OS_LOG_TYPE_INFO, "[Performance] %s - %@: %f ms", v70, 0x20u);
          }
        }

        v16 = [(NSMutableArray *)obj countByEnumeratingWithState:&v54 objects:v74 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    if ((*(v76 + 24) & 1) == 0)
    {
      [(PGGraphRelationshipProcessor *)self _aggregateScores];
      if (v43)
      {
        Current = CFAbsoluteTimeGetCurrent();
        if (Current - v63[3] >= 0.01)
        {
          v63[3] = Current;
          LOBYTE(info.numer) = 0;
          (*(v43 + 2))(v43, &info, 1.0);
          v37 = *(v67 + 24) | LOBYTE(info.numer);
          *(v67 + 24) = v37;
          if ((v37 & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *v70 = 67109378;
            *v71 = 129;
            *&v71[4] = 2080;
            *&v71[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/People Inferences/Relationship/PGGraphRelationshipProcessor.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v70, 0x12u);
          }
        }
      }
    }

LABEL_29:
    _Block_object_dispose(&v58, 8);
    _Block_object_dispose(buf, 8);
  }

  _Block_object_dispose(&v62, 8);
  _Block_object_dispose(&v66, 8);

  v38 = *MEMORY[0x277D85DE8];
}

void __91__PGGraphRelationshipProcessor_runRelationshipAnalysisWithLoggingConnection_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32) && (Current = CFAbsoluteTimeGetCurrent(), v7 = *(*(a1 + 40) + 8), Current - *(v7 + 24) >= *(a1 + 72)) && (*(v7 + 24) = Current, (*(*(a1 + 32) + 16))(*(*(*(a1 + 48) + 8) + 24)), *(*(*(a1 + 56) + 8) + 24) = *(*(*(a1 + 56) + 8) + 24), (*(*(*(a1 + 56) + 8) + 24) & 1) != 0))
  {
    *a2 = 1;
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = *(a1 + 80) + *(a1 + 88) * a3;
    *(*(*(a1 + 64) + 8) + 24) = *a2;
  }
}

- (PGGraphRelationshipProcessor)initWithPersonNodes:(id)nodes runOptions:(unint64_t)options serviceManager:(id)manager
{
  nodesCopy = nodes;
  managerCopy = manager;
  v23.receiver = self;
  v23.super_class = PGGraphRelationshipProcessor;
  v11 = [(PGGraphRelationshipProcessor *)&v23 init];
  if (v11)
  {
    graph = [nodesCopy graph];
    graph = v11->_graph;
    v11->_graph = graph;

    objc_storeStrong(&v11->_personNodes, nodes);
    momentNodes = [nodesCopy momentNodes];
    momentNodes = v11->_momentNodes;
    v11->_momentNodes = momentNodes;

    v16 = [MEMORY[0x277CBEB98] set];
    contactIdentifiers = v11->_contactIdentifiers;
    v11->_contactIdentifiers = v16;

    dictionary = [MEMORY[0x277CBEAC0] dictionary];
    personLocalIdentifierByContactIdentifier = v11->_personLocalIdentifierByContactIdentifier;
    v11->_personLocalIdentifierByContactIdentifier = dictionary;

    v11->_runOptions = options;
    array = [MEMORY[0x277CBEB18] array];
    analyzersToRun = v11->_analyzersToRun;
    v11->_analyzersToRun = array;

    objc_storeStrong(&v11->_serviceManager, manager);
    [(PGGraphRelationshipProcessor *)v11 _extractSignalsFromRunOptions];
  }

  return v11;
}

@end