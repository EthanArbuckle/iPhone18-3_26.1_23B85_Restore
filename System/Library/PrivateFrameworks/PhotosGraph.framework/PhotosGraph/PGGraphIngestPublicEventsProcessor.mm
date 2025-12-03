@interface PGGraphIngestPublicEventsProcessor
- (BOOL)shouldRunWithGraphUpdate:(id)update;
- (PGGraphIngestPublicEventsProcessor)initWithGraphBuilder:(id)builder;
- (void)_enumeratePublicEventsFromMomentNodes:(id)nodes graphUpdate:(id)update progressBlock:(id)block usingBlock:(id)usingBlock;
- (void)_insertPublicEventsFromMomentNodes:(id)nodes graphUpdate:(id)update progressBlock:(id)block;
- (void)deletePerformerNodeWithNoEdgesInGraph:(id)graph;
- (void)deletePublicEventCategoryWithNoEdgesInGraph:(id)graph;
- (void)deletePublicEventEdgesWithMomentNodes:(id)nodes inGraph:(id)graph;
- (void)deletePublicEventNodesWithNoInEdgesInGraph:(id)graph;
- (void)runWithGraphUpdate:(id)update progressBlock:(id)block;
@end

@implementation PGGraphIngestPublicEventsProcessor

- (void)_enumeratePublicEventsFromMomentNodes:(id)nodes graphUpdate:(id)update progressBlock:(id)block usingBlock:(id)usingBlock
{
  v113 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  updateCopy = update;
  blockCopy = block;
  usingBlockCopy = usingBlock;
  v52 = blockCopy;
  v101 = 0;
  v102 = &v101;
  v103 = 0x2020000000;
  v104 = 0;
  v97 = 0;
  v98 = &v97;
  v99 = 0x2020000000;
  v100 = 0;
  v68 = _Block_copy(blockCopy);
  if (v68)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current - v98[3] >= 0.01)
    {
      v98[3] = Current;
      v108[0] = 0;
      v68[2](v68, v108, 0.0);
      v13 = *(v102 + 24) | v108[0];
      *(v102 + 24) = v13;
      if (v13)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *&buf[4] = 181;
          LOWORD(v111) = 2080;
          *(&v111 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestPublicEventsProcessor.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        goto LABEL_63;
      }
    }
  }

  *buf = 0;
  *&v111 = buf;
  *(&v111 + 1) = 0x2020000000;
  v112 = 0;
  graph = [(PGGraphBuilder *)self->_graphBuilder graph];
  v14 = MEMORY[0x277D22C80];
  v91[0] = MEMORY[0x277D85DD0];
  v91[1] = 3221225472;
  v91[2] = __113__PGGraphIngestPublicEventsProcessor__enumeratePublicEventsFromMomentNodes_graphUpdate_progressBlock_usingBlock___block_invoke;
  v91[3] = &unk_278885500;
  v93 = buf;
  v55 = v68;
  v92 = v55;
  v94 = &v97;
  v95 = &v101;
  v96 = 0x3F847AE147AE147BLL;
  v58 = [v14 progressReporterWithProgressBlock:v91];
  v67 = objc_alloc_init(MEMORY[0x277D27778]);
  [v67 setFetchLimit:{objc_msgSend(MEMORY[0x277D27778], "noFetchLimit")}];
  updateType = [updateCopy updateType];
  v16 = updateType;
  if (!updateType)
  {
    if ([updateCopy isResumingFullAnalysis])
    {
      goto LABEL_9;
    }

LABEL_12:
    loggingConnection = [(PGGraphBuilder *)self->_graphBuilder loggingConnection];
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      *v108 = 134217984;
      *v109 = v16;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[PublicEvents] enumeratePublicEventsFromMomentNodes - unexpected update type %ld.", v108, 0xCu);
    }

    v17 = 4;
    goto LABEL_15;
  }

  if (updateType == 1)
  {
    v17 = 3;
    goto LABEL_15;
  }

  if (updateType != 3)
  {
    goto LABEL_12;
  }

LABEL_9:
  v17 = 1;
LABEL_15:
  [v67 setJobContext:v17];
  v57 = [[PGPublicEventCachingFetchRequest alloc] initWithGraph:graph momentNodeCollection:nodesCopy cachingOptions:v67];
  v56 = [[PGPublicEventCacher alloc] initWithDisambiguator:self->_disambiguator];
  publicEventManager = [(PGGraphBuilder *)self->_graphBuilder publicEventManager];
  v90 = 0;
  v54 = [(PGPublicEventCacher *)v56 executeFetchRequest:v57 publicEventManager:publicEventManager progressReporter:v58 error:&v90];
  v60 = v90;

  if (v60)
  {
    loggingConnection2 = [(PGGraphBuilder *)self->_graphBuilder loggingConnection];
    if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_ERROR))
    {
      *v108 = 138412290;
      *v109 = v60;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_ERROR, "[PublicEvents] enumeratePublicEventsFromMomentNodes - cacher error: %@", v108, 0xCu);
    }
  }

  *(v111 + 24) = 0x3FE4CCCCCCCCCCCDLL;
  if (v68 && (v21 = CFAbsoluteTimeGetCurrent(), v21 - v98[3] >= 0.01) && (v98[3] = v21, v89 = 0, v55[2](v55, &v89, *(v111 + 24)), v22 = *(v102 + 24) | v89, *(v102 + 24) = v22, (v22 & 1) != 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *v108 = 67109378;
      *v109 = 225;
      *&v109[4] = 2080;
      *&v109[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestPublicEventsProcessor.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v108, 0x12u);
    }
  }

  else
  {
    momentNodesForConsolidatedAddresses = [v54 momentNodesForConsolidatedAddresses];
    consolidatedAddressesByMomentIdentifier = [v54 consolidatedAddressesByMomentIdentifier];
    publicEventsByTimeLocationTupleIdentifier = [v54 publicEventsByTimeLocationTupleIdentifier];
    v24 = *(v111 + 24);
    v25 = [momentNodesForConsolidatedAddresses count];
    serviceManager = [(PGGraphBuilder *)self->_graphBuilder serviceManager];
    v26 = [PGMeaningfulEventProcessorCache alloc];
    v27 = [(MAElementCollection *)[PGGraphMomentNodeCollection alloc] initWithSet:momentNodesForConsolidatedAddresses graph:graph];
    v71 = [(PGMeaningfulEventProcessorCache *)v26 initWithMomentNodes:v27];

    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    obj = momentNodesForConsolidatedAddresses;
    v28 = [obj countByEnumeratingWithState:&v85 objects:v107 count:16];
    if (v28)
    {
      v30 = (0.95 - v24) / v25;
      v59 = *v86;
      *&v29 = 67109378;
      v51 = v29;
      selfCopy = self;
      while (2)
      {
        v31 = 0;
        v53 = v28;
        do
        {
          if (*v86 != v59)
          {
            objc_enumerationMutation(obj);
          }

          v66 = v31;
          v32 = *(*(&v85 + 1) + 8 * v31);
          context = objc_autoreleasePoolPush();
          v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v32, "identifier")}];
          v34 = [consolidatedAddressesByMomentIdentifier objectForKeyedSubscript:v33];

          v83 = 0u;
          v84 = 0u;
          v81 = 0u;
          v82 = 0u;
          v69 = v34;
          v35 = [v69 countByEnumeratingWithState:&v81 objects:v106 count:16];
          if (v35)
          {
            v76 = *v82;
            do
            {
              v36 = 0;
              v74 = v35;
              do
              {
                if (*v82 != v76)
                {
                  objc_enumerationMutation(v69);
                }

                v37 = *(*(&v81 + 1) + 8 * v36);
                timeLocationIdentifier = [v37 timeLocationIdentifier];
                v39 = [publicEventsByTimeLocationTupleIdentifier objectForKeyedSubscript:timeLocationIdentifier];

                if ([v39 count])
                {
                  v40 = [(PGPublicEventDisambiguator *)self->_disambiguator disambiguateEvents:v39 forTimeLocationTuple:v37 momentNode:v32 graph:graph meaningfulEventProcessorCache:v71 serviceManager:serviceManager];
                  v79 = 0u;
                  v80 = 0u;
                  v77 = 0u;
                  v78 = 0u;
                  v41 = v40;
                  v42 = [v41 countByEnumeratingWithState:&v77 objects:v105 count:16];
                  if (v42)
                  {
                    v43 = *v78;
                    do
                    {
                      for (i = 0; i != v42; ++i)
                      {
                        if (*v78 != v43)
                        {
                          objc_enumerationMutation(v41);
                        }

                        usingBlockCopy[2](usingBlockCopy, v32, *(*(&v77 + 1) + 8 * i), v37);
                      }

                      v42 = [v41 countByEnumeratingWithState:&v77 objects:v105 count:16];
                    }

                    while (v42);
                  }

                  self = selfCopy;
                  v35 = v74;
                }

                ++v36;
              }

              while (v36 != v35);
              v35 = [v69 countByEnumeratingWithState:&v81 objects:v106 count:16];
            }

            while (v35);
          }

          *(v111 + 24) = v30 + *(v111 + 24);
          if (v68 && (v45 = CFAbsoluteTimeGetCurrent(), v45 - v98[3] >= 0.01) && (v98[3] = v45, v89 = 0, v55[2](v55, &v89, *(v111 + 24)), v46 = *(v102 + 24) | v89, *(v102 + 24) = v46, (v46 & 1) != 0))
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *v108 = v51;
              *v109 = 255;
              *&v109[4] = 2080;
              *&v109[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestPublicEventsProcessor.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v108, 0x12u);
            }

            v47 = 0;
          }

          else
          {
            v47 = 1;
          }

          objc_autoreleasePoolPop(context);
          if (!v47)
          {

            goto LABEL_61;
          }

          v31 = v66 + 1;
        }

        while (v66 + 1 != v53);
        v28 = [obj countByEnumeratingWithState:&v85 objects:v107 count:16];
        if (v28)
        {
          continue;
        }

        break;
      }
    }

    if (v68)
    {
      v48 = CFAbsoluteTimeGetCurrent();
      if (v48 - v98[3] >= 0.01)
      {
        v98[3] = v48;
        v89 = 0;
        v55[2](v55, &v89, 1.0);
        v49 = *(v102 + 24) | v89;
        *(v102 + 24) = v49;
        if ((v49 & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *v108 = 67109378;
          *v109 = 258;
          *&v109[4] = 2080;
          *&v109[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestPublicEventsProcessor.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v108, 0x12u);
        }
      }
    }

LABEL_61:
  }

  _Block_object_dispose(buf, 8);
LABEL_63:
  _Block_object_dispose(&v97, 8);
  _Block_object_dispose(&v101, 8);

  v50 = *MEMORY[0x277D85DE8];
}

void __113__PGGraphIngestPublicEventsProcessor__enumeratePublicEventsFromMomentNodes_graphUpdate_progressBlock_usingBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  *(*(*(a1 + 40) + 8) + 24) = a3 * 0.65;
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v6 = *(*(a1 + 48) + 8);
    if (Current - *(v6 + 24) >= *(a1 + 64))
    {
      *(v6 + 24) = Current;
      (*(*(a1 + 32) + 16))(*(*(*(a1 + 40) + 8) + 24));
      *(*(*(a1 + 56) + 8) + 24) = *(*(*(a1 + 56) + 8) + 24);
      if (*(*(*(a1 + 56) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (void)_insertPublicEventsFromMomentNodes:(id)nodes graphUpdate:(id)update progressBlock:(id)block
{
  nodesCopy = nodes;
  updateCopy = update;
  blockCopy = block;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = __Block_byref_object_copy__38368;
  v15[4] = __Block_byref_object_dispose__38369;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __99__PGGraphIngestPublicEventsProcessor__insertPublicEventsFromMomentNodes_graphUpdate_progressBlock___block_invoke;
  v12[3] = &unk_278883EF0;
  v14 = v15;
  v12[4] = self;
  v11 = updateCopy;
  v13 = v11;
  [(PGGraphIngestPublicEventsProcessor *)self _enumeratePublicEventsFromMomentNodes:nodesCopy graphUpdate:v11 progressBlock:blockCopy usingBlock:v12];

  _Block_object_dispose(v15, 8);
}

void __99__PGGraphIngestPublicEventsProcessor__insertPublicEventsFromMomentNodes_graphUpdate_progressBlock___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(*(*(a1 + 48) + 8) + 40);
  v11 = [v7 UUID];
  v12 = [v10 objectForKeyedSubscript:v11];

  if (!v12)
  {
    v12 = [MEMORY[0x277CBEB38] dictionary];
    v13 = *(*(*(a1 + 48) + 8) + 40);
    v14 = [v7 UUID];
    [v13 setObject:v12 forKeyedSubscript:v14];
  }

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v8, "muid")}];
  v16 = [v12 objectForKeyedSubscript:v15];
  if (v16)
  {
    v17 = v16;
LABEL_8:
    if ([v8 hasValidMuid])
    {
      [*(a1 + 40) registerPublicEventNode:v17 withConsolidatedAddress:v9 toResolveBusinessItemMuid:{objc_msgSend(v8, "businessItemMuid")}];
    }

    goto LABEL_10;
  }

  v18 = [*(*(a1 + 32) + 8) loggingConnection];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = [v7 uuid];
    v21 = 138412546;
    v22 = v8;
    v23 = 2112;
    v24 = v19;
    _os_log_impl(&dword_22F0FC000, v18, OS_LOG_TYPE_INFO, "[PublicEvents] inserted PE node from event (%@) for moment node (%@)", &v21, 0x16u);
  }

  v17 = [*(*(a1 + 32) + 8) insertPublicEvent:v8 fromEventNode:v7];
  [v12 setObject:v17 forKeyedSubscript:v15];
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_10:

  v20 = *MEMORY[0x277D85DE8];
}

- (void)deletePerformerNodeWithNoEdgesInGraph:(id)graph
{
  v12 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v5 = +[PGGraphPerformerNode filter];
  [v5 setWhereNoInAndOutEdges:1];
  v6 = [graphCopy nodeIdentifiersMatchingFilter:v5];
  loggingConnection = [(PGGraphBuilder *)self->_graphBuilder loggingConnection];
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEBUG))
  {
    v10 = 134217984;
    v11 = [v6 count];
    _os_log_debug_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEBUG, "[PublicEvents] Deleted %lu public event performer nodes from the graph", &v10, 0xCu);
  }

  v8 = objc_alloc_init(MEMORY[0x277D22C50]);
  [v8 removeNodesForIdentifiers:v6];
  [graphCopy executeGraphChangeRequest:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)deletePublicEventCategoryWithNoEdgesInGraph:(id)graph
{
  v14 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v5 = [(PGGraphNodeCollection *)PGGraphPublicEventCategoryNodeCollection nodesInGraph:graphCopy];
  categories = [v5 categories];
  v7 = [PGGraphPublicEventCategoryNode filterWithCategories:categories];
  [v7 setWhereNoInAndOutEdges:1];
  v8 = [graphCopy nodeIdentifiersMatchingFilter:v7];
  loggingConnection = [(PGGraphBuilder *)self->_graphBuilder loggingConnection];
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEBUG))
  {
    v12 = 134217984;
    v13 = [v8 count];
    _os_log_debug_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEBUG, "[PublicEvents] Deleted %lu public event category nodes from the graph", &v12, 0xCu);
  }

  v10 = objc_alloc_init(MEMORY[0x277D22C50]);
  [v10 removeNodesForIdentifiers:v8];
  [graphCopy executeGraphChangeRequest:v10];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)deletePublicEventNodesWithNoInEdgesInGraph:(id)graph
{
  v12 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v5 = +[PGGraphPublicEventNode filter];
  [v5 setWhereNoInEdges:1];
  v6 = [graphCopy nodeIdentifiersMatchingFilter:v5];
  loggingConnection = [(PGGraphBuilder *)self->_graphBuilder loggingConnection];
  v8 = loggingConnection;
  if (v6)
  {
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEBUG))
    {
      v10 = 134217984;
      v11 = [v6 count];
      _os_log_debug_impl(&dword_22F0FC000, v8, OS_LOG_TYPE_DEBUG, "[PublicEvents] Deleted %lu public event nodes from the graph", &v10, 0xCu);
    }

    v8 = objc_alloc_init(MEMORY[0x277D22C50]);
    [v8 removeNodesForIdentifiers:v6];
    [graphCopy executeGraphChangeRequest:v8];
  }

  else if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_FAULT))
  {
    v10 = 138412290;
    v11 = v5;
    _os_log_fault_impl(&dword_22F0FC000, v8, OS_LOG_TYPE_FAULT, "[PublicEvents] unexpected nil return from MAGraph nodeIdentifiersMatchingFilter:%@", &v10, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)deletePublicEventEdgesWithMomentNodes:(id)nodes inGraph:(id)graph
{
  v5 = MEMORY[0x277D22C50];
  graphCopy = graph;
  nodesCopy = nodes;
  v10 = objc_alloc_init(v5);
  publicEventNodes = [nodesCopy publicEventNodes];
  v9 = [(PGGraphEdgeCollection *)PGGraphPublicEventEdgeCollection edgesFromNodes:nodesCopy toNodes:publicEventNodes];

  [v10 removeEdges:v9];
  [graphCopy executeGraphChangeRequest:v10];
}

- (void)runWithGraphUpdate:(id)update progressBlock:(id)block
{
  v31 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  blockCopy = block;
  v8 = +[PGUserDefaults isPublicEventsEnabled];
  loggingConnection = [(PGGraphBuilder *)self->_graphBuilder loggingConnection];
  graph = loggingConnection;
  if (v8)
  {
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22F0FC000, graph, OS_LOG_TYPE_DEFAULT, "[PublicEvents] processor running", buf, 2u);
    }

    graph = [(PGGraphBuilder *)self->_graphBuilder graph];
    loggingConnection2 = [(PGGraphBuilder *)self->_graphBuilder loggingConnection];
    v12 = os_signpost_id_generate(loggingConnection2);
    v13 = loggingConnection2;
    v14 = v13;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "PGGraphIngestPublicEventsProcessor", "", buf, 2u);
    }

    info = 0;
    mach_timebase_info(&info);
    v15 = mach_absolute_time();
    v16 = [updateCopy momentNodesToProcessInGraph:graph forMomentUpdateTypes:objc_msgSend(objc_opt_class() includeInsertedNodes:{"requiredMomentUpdateTypes"), 1}];
    loggingConnection3 = [(PGGraphBuilder *)self->_graphBuilder loggingConnection];
    if (os_log_type_enabled(loggingConnection3, OS_LOG_TYPE_INFO))
    {
      v18 = [v16 count];
      *buf = 134217984;
      v28 = v18;
      _os_log_impl(&dword_22F0FC000, loggingConnection3, OS_LOG_TYPE_INFO, "[PublicEvents] processor running with %lu moment nodes", buf, 0xCu);
    }

    if ([v16 count])
    {
      [(PGGraphIngestPublicEventsProcessor *)self deletePublicEventEdgesWithMomentNodes:v16 inGraph:graph];
      [(PGGraphIngestPublicEventsProcessor *)self _insertPublicEventsFromMomentNodes:v16 graphUpdate:updateCopy progressBlock:blockCopy];
    }

    [(PGGraphIngestPublicEventsProcessor *)self deletePublicEventNodesWithNoInEdgesInGraph:graph];
    [(PGGraphIngestPublicEventsProcessor *)self deletePublicEventCategoryWithNoEdgesInGraph:graph];
    [(PGGraphIngestPublicEventsProcessor *)self deletePerformerNodeWithNoEdgesInGraph:graph];
    loggingConnection4 = [(PGGraphBuilder *)self->_graphBuilder loggingConnection];
    if (os_log_type_enabled(loggingConnection4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22F0FC000, loggingConnection4, OS_LOG_TYPE_DEFAULT, "[PublicEvents] processor finished running", buf, 2u);
    }

    v20 = mach_absolute_time();
    numer = info.numer;
    denom = info.denom;
    v23 = v14;
    v24 = v23;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v24, OS_SIGNPOST_INTERVAL_END, v12, "PGGraphIngestPublicEventsProcessor", "", buf, 2u);
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v28 = "PGGraphIngestPublicEventsProcessor";
      v29 = 2048;
      v30 = ((((v20 - v15) * numer) / denom) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v24, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_22F0FC000, graph, OS_LOG_TYPE_ERROR, "[PublicEvents] processor not running because public event processing is disabled in user defaults", buf, 2u);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldRunWithGraphUpdate:(id)update
{
  updateCopy = update;
  if (+[PGUserDefaults isPublicEventsEnabled])
  {
    if ([updateCopy isResumingFullAnalysis] & 1) != 0 || (objc_msgSend(updateCopy, "hasMomentsToInsert") & 1) != 0 || (objc_msgSend(updateCopy, "hasMomentsToDelete"))
    {
      v5 = 1;
    }

    else
    {
      momentUpdateTypes = [updateCopy momentUpdateTypes];
      v5 = ([objc_opt_class() requiredMomentUpdateTypes] & momentUpdateTypes) != 0;
    }
  }

  else
  {
    loggingConnection = [(PGGraphBuilder *)self->_graphBuilder loggingConnection];
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[PublicEvents] processor should run check returning NO because public event processing is disabled in user defaults", v9, 2u);
    }

    v5 = 0;
  }

  return v5;
}

- (PGGraphIngestPublicEventsProcessor)initWithGraphBuilder:(id)builder
{
  builderCopy = builder;
  v14.receiver = self;
  v14.super_class = PGGraphIngestPublicEventsProcessor;
  v6 = [(PGGraphIngestPublicEventsProcessor *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_graphBuilder, builder);
    v8 = [PGPublicEventDisambiguator alloc];
    sceneTaxonomy = [builderCopy sceneTaxonomy];
    loggingConnection = [builderCopy loggingConnection];
    v11 = [(PGPublicEventDisambiguator *)v8 initWithSceneTaxonomy:sceneTaxonomy loggingConnection:loggingConnection];
    disambiguator = v7->_disambiguator;
    v7->_disambiguator = v11;
  }

  return v7;
}

@end