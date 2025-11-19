@interface PGGraphIngestNextEdgesProcessor
- (BOOL)shouldRunWithGraphUpdate:(id)a3;
- (PGGraphIngestNextEdgesProcessor)initWithGraphBuilder:(id)a3;
- (void)processNextEdgesWithSortedMomentNodes:(id)a3 graph:(id)a4 progressBlock:(id)a5;
- (void)runWithGraphUpdate:(id)a3 progressBlock:(id)a4;
@end

@implementation PGGraphIngestNextEdgesProcessor

- (void)processNextEdgesWithSortedMomentNodes:(id)a3 graph:(id)a4 progressBlock:(id)a5
{
  v73 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = _Block_copy(a5);
  v10 = 0.0;
  if (!v9 || (Current = CFAbsoluteTimeGetCurrent(), Current < 0.01))
  {
    v49 = v9;
    v47 = 0;
LABEL_4:
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v50 = v7;
    v13 = v7;
    v14 = [v13 countByEnumeratingWithState:&v62 objects:v68 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v63;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v63 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v62 + 1) + 8 * i);
          v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v18, "identifier")}];
          [v12 setObject:v18 forKeyedSubscript:v19];
        }

        v15 = [v13 countByEnumeratingWithState:&v62 objects:v68 count:16];
      }

      while (v15);
    }

    v51 = v8;
    v20 = [(MAElementCollection *)[PGGraphMomentNodeCollection alloc] initWithArray:v13 graph:v8];
    v21 = MEMORY[0x277D22BF8];
    v22 = +[PGGraphMomentNode nextMomentOfMoment];
    v48 = v20;
    v23 = [v21 adjacencyWithSources:v20 relation:v22 targetsClass:objc_opt_class()];

    v24 = objc_alloc_init(MEMORY[0x277D22BC8]);
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v25 = v13;
    v26 = [v25 countByEnumeratingWithState:&v58 objects:v67 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = 0;
      v29 = *v59;
      do
      {
        v30 = 0;
        v31 = v28;
        do
        {
          if (*v59 != v29)
          {
            objc_enumerationMutation(v25);
          }

          v32 = *(*(&v58 + 1) + 8 * v30);
          if (v31)
          {
            [v24 insertSource:objc_msgSend(v31 target:{"identifier"), objc_msgSend(v32, "identifier")}];
          }

          v28 = v32;

          ++v30;
          v31 = v28;
        }

        while (v27 != v30);
        v27 = [v25 countByEnumeratingWithState:&v58 objects:v67 count:16];
      }

      while (v27);
    }

    v33 = objc_alloc_init(MEMORY[0x277D22C50]);
    v34 = [v23 adjacency];
    v35 = [v24 differenceWith:v34];

    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __93__PGGraphIngestNextEdgesProcessor_processNextEdgesWithSortedMomentNodes_graph_progressBlock___block_invoke;
    v55[3] = &unk_278880630;
    v36 = v12;
    v56 = v36;
    v37 = v33;
    v57 = v37;
    [v35 enumerateTargetsBySourceWith:v55];
    v38 = [v23 adjacency];
    v39 = [v38 differenceWith:v24];

    v40 = [PGGraphMomentNodeCollection alloc];
    v41 = [v39 sources];
    v42 = [(MAElementCollection *)v40 initWithGraph:v8 elementIdentifiers:v41];

    v43 = [(PGGraphEdgeCollection *)PGGraphMomentNextEdgeCollection edgesFromNodes:v42];
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __93__PGGraphIngestNextEdgesProcessor_processNextEdgesWithSortedMomentNodes_graph_progressBlock___block_invoke_3;
    v52[3] = &unk_278880658;
    v53 = v39;
    v44 = v37;
    v54 = v44;
    v45 = v39;
    [v43 enumerateEdgesUsingBlock:v52];
    [v51 executeGraphChangeRequest:v44];
    v9 = v49;
    v7 = v50;
    if (v49)
    {
      if (CFAbsoluteTimeGetCurrent() - v10 >= 0.01)
      {
        v66 = 0;
        v49[2](v49, &v66, 1.0);
        if (v47 | v66)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v70 = 145;
            v71 = 2080;
            v72 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestNextEdgesProcessor.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }
        }
      }
    }

    v8 = v51;
    goto LABEL_27;
  }

  v66 = 0;
  v9[2](v9, &v66, 0.0);
  if (v66 != 1)
  {
    v47 = v66;
    v49 = v9;
    v10 = Current;
    goto LABEL_4;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v70 = 92;
    v71 = 2080;
    v72 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestNextEdgesProcessor.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_27:

  v46 = *MEMORY[0x277D85DE8];
}

void __93__PGGraphIngestNextEdgesProcessor_processNextEdgesWithSortedMomentNodes_graph_progressBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithUnsignedInteger:a2];
  v9 = [v5 objectForKeyedSubscript:v8];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __93__PGGraphIngestNextEdgesProcessor_processNextEdgesWithSortedMomentNodes_graph_progressBlock___block_invoke_2;
  v11[3] = &unk_278880608;
  v12 = *(a1 + 32);
  v13 = v9;
  v14 = *(a1 + 40);
  v10 = v9;
  [v7 enumerateIdentifiersWithBlock:v11];
}

void __93__PGGraphIngestNextEdgesProcessor_processNextEdgesWithSortedMomentNodes_graph_progressBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = *(a1 + 32);
  v4 = [v7 sourceNode];
  v5 = [v4 identifier];
  v6 = [v7 targetNode];
  LODWORD(v3) = [v3 containsSource:v5 target:{objc_msgSend(v6, "identifier")}];

  if (v3)
  {
    [*(a1 + 40) removeEdge:v7];
  }
}

void __93__PGGraphIngestNextEdgesProcessor_processNextEdgesWithSortedMomentNodes_graph_progressBlock___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v6 = [v3 objectForKeyedSubscript:v4];

  v5 = [[PGGraphMomentNextEdge alloc] initFromMomentNode:*(a1 + 40) toMomentNode:v6];
  [*(a1 + 48) addEdge:v5];
}

- (void)runWithGraphUpdate:(id)a3 progressBlock:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(PGGraphBuilder *)self->_graphBuilder graph];
  v9 = [(PGGraphBuilder *)self->_graphBuilder loggingConnection];
  v10 = os_signpost_id_generate(v9);
  v11 = v9;
  v12 = v11;
  v13 = v10 - 1;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "PGGraphIngestNextEdgesProcessor", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v14 = mach_absolute_time();
  v15 = [v8 momentNodes];
  if ([v15 count])
  {
    spid = v10;
    v38 = v14;
    v39 = v15;
    v40 = v7;
    v16 = [v15 set];
    v17 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalStartDate" ascending:1];
    *buf = v17;
    [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalEndDate" ascending:1];
    v18 = v8;
    v20 = v19 = v6;
    *&buf[8] = v20;
    v21 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"UUID" ascending:1];
    *&buf[16] = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:buf count:3];

    v6 = v19;
    v8 = v18;

    v23 = [v16 sortedArrayUsingDescriptors:v22];

    if ([v6 isResumingFullAnalysis])
    {
      v24 = [(PGGraphEdgeCollection *)PGGraphMomentNextEdgeCollection edgesInGraph:v18];
      v25 = objc_alloc_init(MEMORY[0x277D22C50]);
      [v25 removeEdges:v24];
      [v18 executeGraphChangeRequest:v25];
    }

    v7 = v40;
    [(PGGraphIngestNextEdgesProcessor *)self processNextEdgesWithSortedMomentNodes:v23 graph:v18 progressBlock:v40];
    v26 = mach_absolute_time();
    numer = info.numer;
    denom = info.denom;
    v29 = v12;
    v30 = v29;
    if (v13 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v30, OS_SIGNPOST_INTERVAL_END, spid, "PGGraphIngestNextEdgesProcessor", "", buf, 2u);
    }

    v15 = v39;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "PGGraphIngestNextEdgesProcessor";
      *&buf[12] = 2048;
      *&buf[14] = ((((v26 - v38) * numer) / denom) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v30, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }
  }

  else
  {
    v31 = mach_absolute_time();
    v33 = info.numer;
    v32 = info.denom;
    v34 = v12;
    v35 = v34;
    if (v13 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v35, OS_SIGNPOST_INTERVAL_END, v10, "PGGraphIngestNextEdgesProcessor", "", buf, 2u);
    }

    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "PGGraphIngestNextEdgesProcessor";
      *&buf[12] = 2048;
      *&buf[14] = ((((v31 - v14) * v33) / v32) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v35, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldRunWithGraphUpdate:(id)a3
{
  v4 = a3;
  if (([v4 isResumingFullAnalysis] & 1) != 0 || (v5 = objc_msgSend(v4, "momentUpdateTypes"), (objc_msgSend(objc_opt_class(), "requiredMomentUpdateTypes") & v5) != 0))
  {
    v6 = 1;
  }

  else if (([v4 hasDeletedMomentNodes] & 1) != 0 || objc_msgSend(v4, "hasInsertedMomentNodes"))
  {
    v8 = [(PGGraphBuilder *)self->_graphBuilder graph];
    v9 = [v8 edgesCountForLabel:@"NEXT" domain:101];
    v6 = v9 != [v8 numberOfMomentNodes] - 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (PGGraphIngestNextEdgesProcessor)initWithGraphBuilder:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PGGraphIngestNextEdgesProcessor;
  v6 = [(PGGraphIngestNextEdgesProcessor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_graphBuilder, a3);
  }

  return v7;
}

@end