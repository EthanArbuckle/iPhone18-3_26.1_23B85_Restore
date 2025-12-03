@interface PGGraphIngestMeaningfulEventsProcessor
- (BOOL)shouldRunWithGraphUpdate:(id)update;
- (PGGraphIngestMeaningfulEventsProcessor)initWithGraphBuilder:(id)builder;
- (id)meaningfulEventMatchingResultsForMomentNode:(id)node withRequiredMeaningfulEventCriteriaByIdentifier:(id)identifier andMeaningfulEventProcessorCache:(id)cache;
- (void)_updateMeaningsOfMomentNode:(id)node graph:(id)graph withValidMeaningLabels:(id)labels legacyLabels:(id)legacyLabels;
- (void)processMeaningfulEventsWithMomentNodes:(id)nodes graph:(id)graph progressBlock:(id)block;
- (void)processMeaningfulEventsWithMomentNodes:(id)nodes graph:(id)graph requiredMeaningfulEventCriteriaByIdentifier:(id)identifier progressBlock:(id)block;
- (void)runWithGraphUpdate:(id)update progressBlock:(id)block;
- (void)updateMeaningsOfMomentNode:(id)node graph:(id)graph affectedMeaningLabels:(id)labels withMatchedResults:(id)results;
@end

@implementation PGGraphIngestMeaningfulEventsProcessor

void __129__PGGraphIngestMeaningfulEventsProcessor__removeInvalidMeaningEdgesWithDomain_momentNode_validMeaningLabels_legacyMeaningLabels___block_invoke(id *a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = [a3 label];
  if (([a1[4] containsObject:v5] & 1) == 0 && objc_msgSend(a1[5], "containsObject:", v5))
  {
    [a1[6] addObject:v6];
  }
}

- (void)_updateMeaningsOfMomentNode:(id)node graph:(id)graph withValidMeaningLabels:(id)labels legacyLabels:(id)legacyLabels
{
  v28 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  graphCopy = graph;
  labelsCopy = labels;
  legacyLabelsCopy = legacyLabels;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = [labelsCopy countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v24;
    do
    {
      v17 = 0;
      do
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(labelsCopy);
        }

        [(PGGraphBuilder *)self->_graphBuilder addMeaningToMeaningfulEventNode:nodeCopy meaningLabel:*(*(&v23 + 1) + 8 * v17++) meaningIsReliable:1];
      }

      while (v15 != v17);
      v15 = [labelsCopy countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v15);
  }

  v18 = [MEMORY[0x277CBEB98] setWithArray:labelsCopy];
  v19 = [(PGGraphIngestMeaningfulEventsProcessor *)self _removeInvalidMeaningEdgesWithDomain:700 momentNode:nodeCopy validMeaningLabels:v18 legacyMeaningLabels:legacyLabelsCopy];

  v20 = [MEMORY[0x277CBEB98] setWithArray:labelsCopy];
  v21 = [(PGGraphIngestMeaningfulEventsProcessor *)self _removeInvalidMeaningEdgesWithDomain:702 momentNode:nodeCopy validMeaningLabels:v20 legacyMeaningLabels:legacyLabelsCopy];

  [v19 unionSet:v21];
  [graphCopy legacyRemoveEdges:v19];

  v22 = *MEMORY[0x277D85DE8];
}

- (void)updateMeaningsOfMomentNode:(id)node graph:(id)graph affectedMeaningLabels:(id)labels withMatchedResults:(id)results
{
  v31 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  graphCopy = graph;
  labelsCopy = labels;
  resultsCopy = results;
  v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v13 = resultsCopy;
  v14 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v27;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v26 + 1) + 8 * i);
        requiredCriteria = [v18 requiredCriteria];
        meaningNodeLabel = [requiredCriteria meaningNodeLabel];

        -[PGGraphBuilder addMeaningToMeaningfulEventNode:meaningLabel:meaningIsReliable:](self->_graphBuilder, "addMeaningToMeaningfulEventNode:meaningLabel:meaningIsReliable:", nodeCopy, meaningNodeLabel, [v18 isReliable]);
        [v12 addObject:meaningNodeLabel];
      }

      v15 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v15);
  }

  v21 = [(PGGraphIngestMeaningfulEventsProcessor *)self _removeInvalidMeaningEdgesWithDomain:700 momentNode:nodeCopy validMeaningLabels:v12 legacyMeaningLabels:labelsCopy];
  v22 = [(PGGraphIngestMeaningfulEventsProcessor *)self _removeInvalidMeaningEdgesWithDomain:702 momentNode:nodeCopy validMeaningLabels:v12 legacyMeaningLabels:labelsCopy];
  [v21 unionSet:v22];
  [graphCopy legacyRemoveEdges:v21];

  v23 = *MEMORY[0x277D85DE8];
}

- (id)meaningfulEventMatchingResultsForMomentNode:(id)node withRequiredMeaningfulEventCriteriaByIdentifier:(id)identifier andMeaningfulEventProcessorCache:(id)cache
{
  graphBuilder = self->_graphBuilder;
  cacheCopy = cache;
  identifierCopy = identifier;
  nodeCopy = node;
  serviceManager = [(PGGraphBuilder *)graphBuilder serviceManager];
  v12 = [PGMeaningfulEventProcessor processRequiredCriteria:identifierCopy forMoment:nodeCopy meaningfulEventProcessorCache:cacheCopy serviceManager:serviceManager];

  return v12;
}

- (void)processMeaningfulEventsWithMomentNodes:(id)nodes graph:(id)graph requiredMeaningfulEventCriteriaByIdentifier:(id)identifier progressBlock:(id)block
{
  v54 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  graphCopy = graph;
  identifierCopy = identifier;
  blockCopy = block;
  v14 = _Block_copy(blockCopy);
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  if (v14 && (v15 = CFAbsoluteTimeGetCurrent(), v15 - v39[3] >= 0.01) && (v39[3] = v15, LOBYTE(v35[0]) = 0, (*(v14 + 2))(v14, v35, 0.0), v16 = *(v43 + 24) | LOBYTE(v35[0]), *(v43 + 24) = v16, (v16 & 1) != 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      buf = 0x5304000202;
      LOWORD(v50) = 2080;
      *(&v50 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestMeaningfulEventsProcessor.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
    }
  }

  else
  {
    buf = 0;
    *&v50 = &buf;
    *(&v50 + 1) = 0x3032000000;
    v51 = __Block_byref_object_copy__47819;
    v52 = __Block_byref_object_dispose__47820;
    v17 = objc_alloc(MEMORY[0x277CBEB98]);
    allKeys = [identifierCopy allKeys];
    v53 = [v17 initWithArray:allKeys];

    v37[0] = 0;
    v37[1] = v37;
    v37[2] = 0x2020000000;
    v37[3] = 0;
    v35[0] = 0;
    v35[1] = v35;
    v35[2] = 0x3032000000;
    v35[3] = __Block_byref_object_copy__47819;
    v35[4] = __Block_byref_object_dispose__47820;
    v36 = [[PGMeaningfulEventProcessorCache alloc] initWithMomentNodes:nodesCopy];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __145__PGGraphIngestMeaningfulEventsProcessor_processMeaningfulEventsWithMomentNodes_graph_requiredMeaningfulEventCriteriaByIdentifier_progressBlock___block_invoke;
    v24[3] = &unk_278884FE0;
    v24[4] = self;
    v25 = identifierCopy;
    v29 = v35;
    v26 = graphCopy;
    p_buf = &buf;
    v31 = v37;
    v27 = nodesCopy;
    v19 = v14;
    v28 = v19;
    v32 = &v38;
    v33 = &v42;
    v34 = 0x3F847AE147AE147BLL;
    [v27 enumerateNodesUsingBlock:v24];
    if (v14)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v39[3] >= 0.01)
      {
        v39[3] = Current;
        v23 = 0;
        (*(v19 + 2))(v19, &v23, 1.0);
        v21 = *(v43 + 24) | v23;
        *(v43 + 24) = v21;
        if ((v21 & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v46[0] = 67109378;
          v46[1] = 105;
          v47 = 2080;
          v48 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestMeaningfulEventsProcessor.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v46, 0x12u);
        }
      }
    }

    _Block_object_dispose(v35, 8);
    _Block_object_dispose(v37, 8);
    _Block_object_dispose(&buf, 8);
  }

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v42, 8);

  v22 = *MEMORY[0x277D85DE8];
}

void __145__PGGraphIngestMeaningfulEventsProcessor_processMeaningfulEventsWithMomentNodes_graph_requiredMeaningfulEventCriteriaByIdentifier_progressBlock___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = objc_autoreleasePoolPush();
  v7 = [*(a1 + 32) meaningfulEventMatchingResultsForMomentNode:v5 withRequiredMeaningfulEventCriteriaByIdentifier:*(a1 + 40) andMeaningfulEventProcessorCache:*(*(*(a1 + 72) + 8) + 40)];
  [*(a1 + 32) updateMeaningsOfMomentNode:v5 graph:*(a1 + 48) affectedMeaningLabels:*(*(*(a1 + 80) + 8) + 40) withMatchedResults:v7];
  [*(*(a1 + 32) + 8) upsertPeopleEventEdgesOfMomentNode:v5 matchingResults:v7];
  v8 = *(*(*(a1 + 88) + 8) + 24);
  v9 = [*(a1 + 56) count];
  if (*(a1 + 64) && (v10 = v9, Current = CFAbsoluteTimeGetCurrent(), v12 = *(*(a1 + 96) + 8), Current - *(v12 + 24) >= *(a1 + 112)) && (*(v12 + 24) = Current, (*(*(a1 + 64) + 16))(v8 / v10), *(*(*(a1 + 104) + 8) + 24) = *(*(*(a1 + 104) + 8) + 24), *(*(*(a1 + 104) + 8) + 24) == 1))
  {
    *a3 = 1;
  }

  else
  {
    ++*(*(*(a1 + 88) + 8) + 24);
  }

  objc_autoreleasePoolPop(v6);
}

- (void)processMeaningfulEventsWithMomentNodes:(id)nodes graph:(id)graph progressBlock:(id)block
{
  v33 = *MEMORY[0x277D85DE8];
  graphBuilder = self->_graphBuilder;
  blockCopy = block;
  graphCopy = graph;
  nodesCopy = nodes;
  loggingConnection = [(PGGraphBuilder *)graphBuilder loggingConnection];
  v13 = os_signpost_id_generate(loggingConnection);
  v14 = loggingConnection;
  v15 = v14;
  v16 = v13 - 1;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "PGGraphIngestMeaningfulEventsProcessor", "", buf, 2u);
  }

  spid = v13;

  info = 0;
  mach_timebase_info(&info);
  v27 = mach_absolute_time();
  v17 = +[PGMeaningfulEventRequiredCriteriaFactory availableMeaningLabels];
  v18 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v17];
  sceneTaxonomy = [(PGGraphBuilder *)self->_graphBuilder sceneTaxonomy];
  v20 = [PGMeaningfulEventRequiredCriteriaFactory requiredCriteriaForIdentifiers:v18 inferenceType:0 graph:graphCopy sceneTaxonomy:sceneTaxonomy];
  [(PGGraphIngestMeaningfulEventsProcessor *)self processMeaningfulEventsWithMomentNodes:nodesCopy graph:graphCopy requiredMeaningfulEventCriteriaByIdentifier:v20 progressBlock:blockCopy];

  v21 = mach_absolute_time();
  v22 = info;
  v23 = v15;
  v24 = v23;
  if (v16 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v24, OS_SIGNPOST_INTERVAL_END, spid, "PGGraphIngestMeaningfulEventsProcessor", "", buf, 2u);
  }

  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v30 = "PGGraphIngestMeaningfulEventsProcessor";
    v31 = 2048;
    v32 = ((((v21 - v27) * v22.numer) / v22.denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v24, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)runWithGraphUpdate:(id)update progressBlock:(id)block
{
  blockCopy = block;
  graphBuilder = self->_graphBuilder;
  updateCopy = update;
  graph = [(PGGraphBuilder *)graphBuilder graph];
  v9 = [updateCopy momentNodesToProcessInGraph:graph forMomentUpdateTypes:31 includeInsertedNodes:1];

  if ([v9 count])
  {
    [(PGGraphIngestMeaningfulEventsProcessor *)self processMeaningfulEventsWithMomentNodes:v9 graph:graph progressBlock:blockCopy];
  }
}

- (BOOL)shouldRunWithGraphUpdate:(id)update
{
  updateCopy = update;
  if ([updateCopy isResumingFullAnalysis] & 1) != 0 || (objc_msgSend(updateCopy, "hasMomentsToInsert"))
  {
    hasMomentsToUpdate = 1;
  }

  else
  {
    hasMomentsToUpdate = [updateCopy hasMomentsToUpdate];
  }

  return hasMomentsToUpdate;
}

- (PGGraphIngestMeaningfulEventsProcessor)initWithGraphBuilder:(id)builder
{
  builderCopy = builder;
  v9.receiver = self;
  v9.super_class = PGGraphIngestMeaningfulEventsProcessor;
  v6 = [(PGGraphIngestMeaningfulEventsProcessor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_graphBuilder, builder);
  }

  return v7;
}

@end