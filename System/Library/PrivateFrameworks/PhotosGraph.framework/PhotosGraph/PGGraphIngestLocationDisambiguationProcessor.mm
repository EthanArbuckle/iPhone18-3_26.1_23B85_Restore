@interface PGGraphIngestLocationDisambiguationProcessor
- (BOOL)shouldRunWithGraphUpdate:(id)update;
- (PGGraphIngestLocationDisambiguationProcessor)initWithGraphBuilder:(id)builder;
- (void)removeDuplicateCityNodes:(id)nodes graph:(id)graph loggingConnection:(id)connection progressBlock:(id)block;
- (void)runWithGraphUpdate:(id)update progressBlock:(id)block;
@end

@implementation PGGraphIngestLocationDisambiguationProcessor

- (void)removeDuplicateCityNodes:(id)nodes graph:(id)graph loggingConnection:(id)connection progressBlock:(id)block
{
  v49 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  graphCopy = graph;
  connectionCopy = connection;
  blockCopy = block;
  v13 = _Block_copy(blockCopy);
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  if (v13 && (v14 = CFAbsoluteTimeGetCurrent(), v14 - v36[3] >= 0.01) && (v36[3] = v14, LOBYTE(v43[0]) = 0, (*(v13 + 2))(v13, v43, 0.0), v15 = *(v40 + 24) | LOBYTE(v43[0]), *(v40 + 24) = v15, (v15 & 1) != 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      buf = 0x4804000202;
      LOWORD(v47) = 2080;
      *(&v47 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestLocationDisambiguationProcessor.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
    }
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __111__PGGraphIngestLocationDisambiguationProcessor_removeDuplicateCityNodes_graph_loggingConnection_progressBlock___block_invoke;
    v33[3] = &unk_278885E70;
    v17 = dictionary;
    v34 = v17;
    [nodesCopy enumerateNodesUsingBlock:v33];
    v18 = [v17 count];
    buf = 0;
    *&v47 = &buf;
    *(&v47 + 1) = 0x2020000000;
    v48 = 0;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __111__PGGraphIngestLocationDisambiguationProcessor_removeDuplicateCityNodes_graph_loggingConnection_progressBlock___block_invoke_2;
    v24[3] = &unk_278882AC8;
    p_buf = &buf;
    v31 = 1.0 / v18;
    v19 = v13;
    v27 = v19;
    v29 = &v35;
    v32 = 0x3F847AE147AE147BLL;
    v30 = &v39;
    v25 = connectionCopy;
    v26 = graphCopy;
    [v17 enumerateKeysAndObjectsUsingBlock:v24];
    if (v13)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v36[3] >= 0.01)
      {
        v36[3] = Current;
        v23 = 0;
        (*(v19 + 2))(v19, &v23, 1.0);
        v21 = *(v40 + 24) | v23;
        *(v40 + 24) = v21;
        if ((v21 & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v43[0] = 67109378;
          v43[1] = 218;
          v44 = 2080;
          v45 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestLocationDisambiguationProcessor.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v43, 0x12u);
        }
      }
    }

    _Block_object_dispose(&buf, 8);
  }

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);

  v22 = *MEMORY[0x277D85DE8];
}

void __111__PGGraphIngestLocationDisambiguationProcessor_removeDuplicateCityNodes_graph_loggingConnection_progressBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = [v3 name];
  v4 = [*(a1 + 32) objectForKeyedSubscript:?];
  if (v4)
  {
    v5 = v4;
    [v4 addObject:v3];
  }

  else
  {
    v5 = [MEMORY[0x277CBEB58] setWithObject:v3];

    [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
  }
}

void __111__PGGraphIngestLocationDisambiguationProcessor_removeDuplicateCityNodes_graph_loggingConnection_progressBlock___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v48 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  *(*(*(a1 + 56) + 8) + 24) = *(a1 + 80) + *(*(*(a1 + 56) + 8) + 24);
  if (*(a1 + 48) && (Current = CFAbsoluteTimeGetCurrent(), v10 = *(*(a1 + 64) + 8), Current - *(v10 + 24) >= *(a1 + 88)) && (*(v10 + 24) = Current, v46 = 0, (*(*(a1 + 48) + 16))(*(*(*(a1 + 56) + 8) + 24)), *(*(*(a1 + 72) + 8) + 24) = *(*(*(a1 + 72) + 8) + 24), *(*(*(a1 + 72) + 8) + 24) == 1))
  {
    *a4 = 1;
  }

  else if ([v8 count] >= 2)
  {
    v32 = v7;
    v11 = [MEMORY[0x277CBEB38] dictionary];
    v12 = [MEMORY[0x277CBEB38] dictionary];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v31 = v8;
    obj = v8;
    v13 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v43;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v43 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v42 + 1) + 8 * i);
          v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v17, "identifier")}];
          [v11 setObject:v17 forKeyedSubscript:v18];
          v19 = [v17 collection];
          v20 = [v19 addressNodes];
          v21 = [v20 count];

          v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v21];
          [v12 setObject:v22 forKeyedSubscript:v18];
        }

        v14 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v14);
    }

    v23 = v12;
    v24 = [v12 keysSortedByValueUsingComparator:&__block_literal_global_30866];
    v25 = [MEMORY[0x277CBEB38] dictionary];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __111__PGGraphIngestLocationDisambiguationProcessor_removeDuplicateCityNodes_graph_loggingConnection_progressBlock___block_invoke_4;
    v38[3] = &unk_278882A78;
    v26 = v11;
    v39 = v26;
    v40 = v24;
    v41 = v25;
    v27 = v25;
    v28 = v24;
    [v28 enumerateObjectsUsingBlock:v38];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __111__PGGraphIngestLocationDisambiguationProcessor_removeDuplicateCityNodes_graph_loggingConnection_progressBlock___block_invoke_7;
    v34[3] = &unk_278882AA0;
    v35 = v26;
    v36 = *(a1 + 32);
    v37 = *(a1 + 40);
    v29 = v26;
    [v27 enumerateKeysAndObjectsUsingBlock:v34];

    v8 = v31;
    v7 = v32;
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __111__PGGraphIngestLocationDisambiguationProcessor_removeDuplicateCityNodes_graph_loggingConnection_progressBlock___block_invoke_4(id *a1, void *a2, uint64_t a3)
{
  v30 = a2;
  v5 = [a1[4] objectForKeyedSubscript:?];
  v6 = [v5 locationNodeCollection];
  v7 = [v6 deepParentLocationNodes];

  v32 = v5;
  v31 = [v5 fullname];
  if (!a3)
  {
    goto LABEL_18;
  }

  v8 = 0;
  v33 = a3;
  v34 = v7;
  while (1)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = [a1[5] objectAtIndexedSubscript:v8];
    v11 = [a1[6] objectForKeyedSubscript:v10];

    if (v11)
    {
      goto LABEL_14;
    }

    v12 = [a1[4] objectForKeyedSubscript:v10];
    v13 = [v12 locationNodeCollection];
    v14 = [v13 deepParentLocationNodes];

    v15 = [v7 count];
    v16 = [v12 fullname];
    if ([v14 isEqual:v7])
    {
      break;
    }

    if (v15)
    {
      v17 = [v7 count];
      if (v17 == [v14 count] && (objc_msgSend(v31, "isEqualToString:", v16) & 1) != 0)
      {
        break;
      }
    }

    v18 = [MEMORY[0x277CBEB58] set];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __111__PGGraphIngestLocationDisambiguationProcessor_removeDuplicateCityNodes_graph_loggingConnection_progressBlock___block_invoke_5;
    v37[3] = &unk_278882A50;
    v19 = v18;
    v38 = v19;
    [v7 enumerateNodesUsingBlock:v37];
    v20 = [MEMORY[0x277CBEB58] set];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __111__PGGraphIngestLocationDisambiguationProcessor_removeDuplicateCityNodes_graph_loggingConnection_progressBlock___block_invoke_6;
    v35[3] = &unk_278882A50;
    v21 = v20;
    v36 = v21;
    [v14 enumerateNodesUsingBlock:v35];
    [v21 intersectSet:v19];
    v22 = [v21 count];
    v23 = [v14 count];
    v24 = v7;
    v25 = v23;
    v26 = [v24 count];
    if (v25 <= v26)
    {
      v27 = v26;
    }

    else
    {
      v27 = v25;
    }

    if (v22 / v27 >= 0.6)
    {
      [v32 coordinate];
      [v12 coordinate];
      CLLocationCoordinate2DGetDistanceFrom();
      v29 = v28;

      a3 = v33;
      v7 = v34;
      if (v29 <= 50000.0)
      {
        goto LABEL_17;
      }
    }

    else
    {

      a3 = v33;
      v7 = v34;
    }

LABEL_14:

    objc_autoreleasePoolPop(v9);
    if (a3 == ++v8)
    {
      goto LABEL_18;
    }
  }

LABEL_17:
  [a1[6] setObject:v10 forKeyedSubscript:v30];

  objc_autoreleasePoolPop(v9);
LABEL_18:
}

void __111__PGGraphIngestLocationDisambiguationProcessor_removeDuplicateCityNodes_graph_loggingConnection_progressBlock___block_invoke_7(uint64_t a1, void *a2, uint64_t a3)
{
  v66 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v46 = [*(a1 + 32) objectForKeyedSubscript:a3];
  v40 = v5;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v5];
  v7 = *(a1 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v63 = v6;
    v64 = 2112;
    v65 = v46;
    _os_log_impl(&dword_22F0FC000, v7, OS_LOG_TYPE_DEFAULT, "Location Disambiguation [City] Node %@ is a duplicate of node %@", buf, 0x16u);
  }

  v8 = [v6 locationNodeCollection];
  v9 = [v8 deepChildLocationNodes];
  v10 = [v9 temporarySet];

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = v10;
  v43 = v6;
  v44 = [obj countByEnumeratingWithState:&v55 objects:v61 count:16];
  if (v44)
  {
    v42 = *v56;
    do
    {
      v11 = 0;
      do
      {
        if (*v56 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v45 = v11;
        v12 = *(*(&v55 + 1) + 8 * v11);
        v13 = [v12 edgesTowardNode:v6];
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v14 = [v13 countByEnumeratingWithState:&v51 objects:v60 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v52;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v52 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v51 + 1) + 8 * i);
              v19 = *(a1 + 48);
              v20 = [v18 label];
              v21 = [v18 domain];
              v22 = [v18 propertyDictionary];
              v23 = [v19 addUniqueEdgeWithLabel:v20 sourceNode:v12 targetNode:v46 domain:v21 properties:v22];
            }

            v15 = [v13 countByEnumeratingWithState:&v51 objects:v60 count:16];
          }

          while (v15);
        }

        v11 = v45 + 1;
        v6 = v43;
      }

      while (v45 + 1 != v44);
      v44 = [obj countByEnumeratingWithState:&v55 objects:v61 count:16];
    }

    while (v44);
  }

  v24 = [v6 locationNodeCollection];
  v25 = [v24 parentLocationNodes];
  v26 = [v25 anyNode];

  if (v26)
  {
    v27 = [v6 edgesTowardNode:v26];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v28 = [v27 countByEnumeratingWithState:&v47 objects:v59 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v48;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v48 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v47 + 1) + 8 * j);
          v33 = *(a1 + 48);
          v34 = [v32 label];
          v35 = [v32 domain];
          v36 = [v32 propertyDictionary];
          v37 = [v33 addUniqueEdgeWithLabel:v34 sourceNode:v46 targetNode:v26 domain:v35 properties:v36];
        }

        v29 = [v27 countByEnumeratingWithState:&v47 objects:v59 count:16];
      }

      while (v29);
    }

    v6 = v43;
  }

  v38 = objc_alloc_init(MEMORY[0x277D22C50]);
  [v38 removeNode:v6];
  [*(a1 + 48) executeGraphChangeRequest:v38];

  v39 = *MEMORY[0x277D85DE8];
}

void __111__PGGraphIngestLocationDisambiguationProcessor_removeDuplicateCityNodes_graph_loggingConnection_progressBlock___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 name];
  [v2 addObject:v3];
}

void __111__PGGraphIngestLocationDisambiguationProcessor_removeDuplicateCityNodes_graph_loggingConnection_progressBlock___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 name];
  [v2 addObject:v3];
}

- (void)runWithGraphUpdate:(id)update progressBlock:(id)block
{
  v27 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  blockCopy = block;
  graph = [(PGGraphBuilder *)self->_graphBuilder graph];
  loggingConnection = [(PGGraphBuilder *)self->_graphBuilder loggingConnection];
  v10 = os_signpost_id_generate(loggingConnection);
  v11 = loggingConnection;
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "PGGraphIngestLocationDisambiguationProcessor", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v13 = mach_absolute_time();
  if ([updateCopy isResumingFullAnalysis])
  {
    cityNodes = [(PGGraphNodeCollection *)PGGraphLocationCityNodeCollection nodesInGraph:graph];
  }

  else
  {
    v15 = [updateCopy momentNodesToProcessInGraph:graph forMomentUpdateTypes:objc_msgSend(objc_opt_class() includeInsertedNodes:{"requiredMomentUpdateTypes"), 1}];
    cityNodes = [v15 cityNodes];
  }

  if ([cityNodes count])
  {
    [(PGGraphIngestLocationDisambiguationProcessor *)self removeDuplicateCityNodes:cityNodes graph:graph loggingConnection:v12 progressBlock:blockCopy];
  }

  v16 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v19 = v12;
  v20 = v19;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v20, OS_SIGNPOST_INTERVAL_END, v10, "PGGraphIngestLocationDisambiguationProcessor", "", buf, 2u);
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v24 = "PGGraphIngestLocationDisambiguationProcessor";
    v25 = 2048;
    v26 = ((((v16 - v13) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v20, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldRunWithGraphUpdate:(id)update
{
  updateCopy = update;
  if ([updateCopy isResumingFullAnalysis] & 1) != 0 || (objc_msgSend(updateCopy, "hasInsertedMomentNodes"))
  {
    v4 = 1;
  }

  else
  {
    momentUpdateTypes = [updateCopy momentUpdateTypes];
    v4 = ([objc_opt_class() requiredMomentUpdateTypes] & momentUpdateTypes) != 0;
  }

  return v4;
}

- (PGGraphIngestLocationDisambiguationProcessor)initWithGraphBuilder:(id)builder
{
  builderCopy = builder;
  v9.receiver = self;
  v9.super_class = PGGraphIngestLocationDisambiguationProcessor;
  v6 = [(PGGraphIngestLocationDisambiguationProcessor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_graphBuilder, builder);
  }

  return v7;
}

@end