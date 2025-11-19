@interface PGGraphIngestTripProcessor
- (BOOL)shouldRunWithGraphUpdate:(id)a3;
- (PGGraphIngestTripProcessor)initWithGraphBuilder:(id)a3;
- (id)allTripNodes;
- (id)featuredLocationNodesByHighlightGroupNode;
- (id)tripsMissingFeaturedLocations;
- (void)ingestLocationFeaturesForTripNodes:(id)a3 graph:(id)a4 loggingConnection:(id)a5 progressBlock:(id)a6 isResumingFullAnalysis:(BOOL)a7;
- (void)runWithGraphUpdate:(id)a3 progressBlock:(id)a4;
@end

@implementation PGGraphIngestTripProcessor

- (void)ingestLocationFeaturesForTripNodes:(id)a3 graph:(id)a4 loggingConnection:(id)a5 progressBlock:(id)a6 isResumingFullAnalysis:(BOOL)a7
{
  v56 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [v12 targets];
  v17 = [v16 count];

  if (v17)
  {
    v18 = [MEMORY[0x277D22C80] progressReporterWithProgressBlock:v15];
    v19 = [objc_alloc(MEMORY[0x277D22C88]) initWithProgressReporter:v18];
    *buf = 0;
    v49 = buf;
    v50 = 0x2020000000;
    v51 = 0;
    v20 = [v12 targets];
    v21 = [v20 count];

    v22 = [[PGGraphLocationHelper alloc] initWithGraph:v13];
    v23 = v18;
    v44 = 0;
    v45 = &v44;
    v46 = 0x2020000000;
    v47 = 0;
    v30 = MEMORY[0x277D85DD0];
    v31 = 3221225472;
    v32 = __126__PGGraphIngestTripProcessor_ingestLocationFeaturesForTripNodes_graph_loggingConnection_progressBlock_isResumingFullAnalysis___block_invoke;
    v33 = &unk_2788893F8;
    v24 = v19;
    v34 = v24;
    v40 = buf;
    v42 = 1.0 / v21;
    v35 = v13;
    v25 = v22;
    v36 = v25;
    v37 = v14;
    v41 = &v44;
    v26 = v23;
    v43 = a7;
    v38 = v26;
    v39 = self;
    [v12 enumerateTargetsBySourceWithBlock:&v30];
    if (*(v45 + 24) == 1)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_11:

        _Block_object_dispose(&v44, 8);
        _Block_object_dispose(buf, 8);

        goto LABEL_12;
      }

      *v52 = 67109378;
      v53 = 175;
      v54 = 2080;
      v55 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestTripProcessor.m";
      v27 = MEMORY[0x277D86220];
    }

    else
    {
      v28 = [v26 isCancelledWithProgress:{1.0, v30, v31, v32, v33, v34, v35, v36, v37}];
      *(v45 + 24) = v28;
      if (!v28 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_11;
      }

      *v52 = 67109378;
      v53 = 176;
      v54 = 2080;
      v55 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestTripProcessor.m";
      v27 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_22F0FC000, v27, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v52, 0x12u);
    goto LABEL_11;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22F0FC000, v14, OS_LOG_TYPE_INFO, "[PGGraphIngestTripProcessor] No highlight to be ingest.", buf, 2u);
  }

LABEL_12:

  v29 = *MEMORY[0x277D85DE8];
}

void __126__PGGraphIngestTripProcessor_ingestLocationFeaturesForTripNodes_graph_loggingConnection_progressBlock_isResumingFullAnalysis___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v59 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = *(a1 + 32);
  v9 = *(*(*(a1 + 80) + 8) + 24) + *(a1 + 96) * 0.9;
  v10 = a3;
  v11 = [v8 childProgressReporterToCheckpoint:v9];
  *(*(*(a1 + 80) + 8) + 24) = *(a1 + 96) + *(*(*(a1 + 80) + 8) + 24);
  v12 = [v7 anyNode];
  v13 = [v12 uuid];
  v14 = [PGTripFeatureProcessor alloc];
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  v54 = 0;
  v17 = [(PGTripFeatureProcessor *)v14 initWithMomentNodes:v10 graph:v15 locationHelper:v16 error:&v54];

  v18 = v54;
  v19 = v18;
  if (v17)
  {
    v53 = v18;
    v20 = [(PGTripFeatureProcessor *)v17 processTripLocationsWithReporter:v11 error:&v53];
    v21 = v53;

    v22 = *(*(a1 + 88) + 8);
    if (*(v22 + 24))
    {
      v23 = 1;
    }

    else
    {
      v23 = [*(a1 + 64) isCancelledWithProgress:*(*(*(a1 + 80) + 8) + 24)];
      v22 = *(*(a1 + 88) + 8);
    }

    *(v22 + 24) = v23;
    if (*(*(*(a1 + 88) + 8) + 24) == 1)
    {
      *a4 = 1;
    }

    else
    {
      if (*(a1 + 104) == 1)
      {
        [(PGTripFeatureProcessor *)v17 sendAnalyticsEvent];
      }

      if (v20)
      {
        v45 = a4;
        v25 = [v20 count];
        v26 = *(a1 + 56);
        v27 = os_log_type_enabled(v26, OS_LOG_TYPE_INFO);
        if (v25)
        {
          if (v27)
          {
            v28 = v26;
            v29 = [v20 count];
            *buf = 138412546;
            v56 = v13;
            v57 = 2048;
            v58 = v29;
            _os_log_impl(&dword_22F0FC000, v28, OS_LOG_TYPE_INFO, "[PGGraphIngestTripProcessor] Trip with uuid %@ does have %lu featuredLocationNodes retrieved from processor.", buf, 0x16u);
          }
        }

        else if (v27)
        {
          *buf = 138412290;
          v56 = v13;
          _os_log_impl(&dword_22F0FC000, v26, OS_LOG_TYPE_INFO, "[PGGraphIngestTripProcessor] Trip with uuid %@ does not have any featuredLocationNodes.", buf, 0xCu);
        }

        v49 = objc_alloc_init(MEMORY[0x277D22C50]);
        v31 = [*(a1 + 72) featuredLocationNodesByHighlightGroupNode];
        v32 = [v31 targetsForSources:v7];

        v47 = [(MAElementCollection *)[PGGraphFeatureNodeCollection alloc] initWithArray:v20 graph:*(a1 + 40)];
        v48 = v32;
        v46 = [(MAElementCollection *)v47 collectionBySubtracting:v32];
        v33 = v45;
        if ([v46 count])
        {
          v34 = *(a1 + 56);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
          {
            v35 = v34;
            v36 = [v46 count];
            *buf = 134218242;
            v56 = v36;
            v57 = 2112;
            v58 = v13;
            _os_log_impl(&dword_22F0FC000, v35, OS_LOG_TYPE_INFO, "[PGGraphIngestTripProcessor] adding %lu featured location nodes to trip with uuid @%@", buf, 0x16u);
          }

          v50[0] = MEMORY[0x277D85DD0];
          v50[1] = 3221225472;
          v50[2] = __126__PGGraphIngestTripProcessor_ingestLocationFeaturesForTripNodes_graph_loggingConnection_progressBlock_isResumingFullAnalysis___block_invoke_235;
          v50[3] = &unk_2788893D0;
          v51 = v12;
          v52 = v49;
          [v46 enumerateNodesUsingBlock:v50];
        }

        v37 = [v48 collectionBySubtracting:v47];
        if ([v37 count])
        {
          v38 = *(a1 + 56);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
          {
            v39 = v38;
            v40 = [v37 count];
            *buf = 134218242;
            v56 = v40;
            v57 = 2112;
            v58 = v13;
            _os_log_impl(&dword_22F0FC000, v39, OS_LOG_TYPE_INFO, "[PGGraphIngestTripProcessor] removing %lu featured location nodes to trip with uuid @%@", buf, 0x16u);
          }

          v41 = [(PGGraphEdgeCollection *)PGGraphTripFeatureEdgeCollection edgesFromNodes:v7 toNodes:v37];
          [v49 removeEdges:v41];

          v33 = v45;
        }

        [*(a1 + 40) executeGraphChangeRequest:v49];
        v42 = *(*(a1 + 88) + 8);
        if (*(v42 + 24))
        {
          v43 = 1;
        }

        else
        {
          v43 = [*(a1 + 64) isCancelledWithProgress:*(*(*(a1 + 80) + 8) + 24)];
          v42 = *(*(a1 + 88) + 8);
        }

        *(v42 + 24) = v43;
        if (*(*(*(a1 + 88) + 8) + 24) == 1)
        {
          *v33 = 1;
        }
      }

      else
      {
        v30 = *(a1 + 56);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v56 = v21;
          v57 = 2112;
          v58 = v13;
          _os_log_error_impl(&dword_22F0FC000, v30, OS_LOG_TYPE_ERROR, "[PGGraphIngestTripProcessor] Cannot retrieve featuredLocationNodes with error %@ on trip with uuid %@", buf, 0x16u);
        }
      }
    }
  }

  else
  {
    v24 = *(a1 + 56);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v56 = v19;
      v57 = 2112;
      v58 = v13;
      _os_log_error_impl(&dword_22F0FC000, v24, OS_LOG_TYPE_ERROR, "[PGGraphIngestTripProcessor] PGTripFeatureProcessor init failed with error %@ on trip with uuid %@", buf, 0x16u);
    }

    v21 = v19;
  }

  v44 = *MEMORY[0x277D85DE8];
}

void __126__PGGraphIngestTripProcessor_ingestLocationFeaturesForTripNodes_graph_loggingConnection_progressBlock_isResumingFullAnalysis___block_invoke_235(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[PGGraphTripFeatureEdge alloc] initFromHighlightGroupNode:*(a1 + 32) toFeatureNode:v3];

  [*(a1 + 40) addEdge:v4];
}

- (void)runWithGraphUpdate:(id)a3 progressBlock:(id)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v39 = a4;
  v40 = [(PGGraphBuilder *)self->_graphBuilder graph];
  v7 = [(PGGraphBuilder *)self->_graphBuilder loggingConnection];
  v8 = os_signpost_id_generate(v7);
  v9 = v7;
  v10 = v9;
  v11 = v8 - 1;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "PGGraphIngestTripProcessor", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v38 = mach_absolute_time();
  v12 = [v6 isResumingFullAnalysis];
  if (v12)
  {
    v13 = [(PGGraphIngestTripProcessor *)self allTripNodes];
  }

  else
  {
    v14 = [v6 momentNodesToProcessInGraph:v40 forMomentUpdateTypes:objc_msgSend(objc_opt_class() includeInsertedNodes:{"requiredMomentUpdateTypes"), 1}];
    v13 = [(PGGraphIngestTripProcessor *)self tripsMissingFeaturedLocations];
    if ([v14 count])
    {
      [v14 highlightNodes];
      v15 = v34 = v13;
      [v15 highlightGroupNodes];
      v16 = v35 = v8 - 1;
      [(PGGraphIngestTripProcessor *)self allTripNodes];
      v18 = v17 = v6;
      [v16 collectionByIntersecting:v18];
      v19 = spida = v8;

      v6 = v17;
      v13 = [v34 collectionByFormingUnionWith:v19];

      v11 = v35;
      v8 = spida;
    }
  }

  if ([v13 isEmpty])
  {
    v20 = mach_absolute_time();
    numer = info.numer;
    denom = info.denom;
    v23 = v10;
    v24 = v23;
    if (v11 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v24, OS_SIGNPOST_INTERVAL_END, v8, "PGGraphIngestTripProcessor", "", buf, 2u);
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v43 = "PGGraphIngestTripProcessor";
      v44 = 2048;
      v45 = ((((v20 - v38) * numer) / denom) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v24, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }
  }

  else
  {
    spid = v8;
    v25 = MEMORY[0x277D22BF8];
    v26 = +[PGGraphHighlightGroupNode momentInHighlight];
    v27 = [v25 adjacencyWithSources:v13 relation:v26 targetsClass:objc_opt_class()];

    [(PGGraphIngestTripProcessor *)self ingestLocationFeaturesForTripNodes:v27 graph:v40 loggingConnection:v10 progressBlock:v39 isResumingFullAnalysis:v12];
    v28 = mach_absolute_time();
    v30 = info.numer;
    v29 = info.denom;
    v31 = v10;
    v32 = v31;
    if (v11 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v32, OS_SIGNPOST_INTERVAL_END, spid, "PGGraphIngestTripProcessor", "", buf, 2u);
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v43 = "PGGraphIngestTripProcessor";
      v44 = 2048;
      v45 = ((((v28 - v38) * v30) / v29) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v32, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldRunWithGraphUpdate:(id)a3
{
  v4 = a3;
  if ([v4 isResumingFullAnalysis] & 1) != 0 || (-[PGGraphIngestTripProcessor tripsMissingFeaturedLocations](self, "tripsMissingFeaturedLocations"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEmpty"), v5, (objc_msgSend(v4, "hasMomentsToInsert")))
  {
    v7 = 1;
  }

  else
  {
    v8 = v6 ^ 1;
    v9 = [v4 momentUpdateTypes];
    v7 = (([objc_opt_class() requiredMomentUpdateTypes] & v9) != 0) | v8;
  }

  return v7 & 1;
}

- (id)tripsMissingFeaturedLocations
{
  tripsMissingFeaturedLocations = self->_tripsMissingFeaturedLocations;
  if (!tripsMissingFeaturedLocations)
  {
    v4 = [(PGGraphIngestTripProcessor *)self allTripNodes];
    v5 = [(PGGraphIngestTripProcessor *)self featuredLocationNodesByHighlightGroupNode];
    v6 = [v5 sources];
    v7 = [v4 collectionBySubtracting:v6];
    v8 = self->_tripsMissingFeaturedLocations;
    self->_tripsMissingFeaturedLocations = v7;

    tripsMissingFeaturedLocations = self->_tripsMissingFeaturedLocations;
  }

  return tripsMissingFeaturedLocations;
}

- (id)featuredLocationNodesByHighlightGroupNode
{
  featuredLocationNodesByHighlightGroupNode = self->_featuredLocationNodesByHighlightGroupNode;
  if (!featuredLocationNodesByHighlightGroupNode)
  {
    v4 = MEMORY[0x277D22BF8];
    v5 = [(PGGraphIngestTripProcessor *)self allTripNodes];
    v6 = +[PGGraphHighlightGroupNodeCollection locationFeatureOfHighlightGroup];
    v7 = [v4 adjacencyWithSources:v5 relation:v6 targetsClass:objc_opt_class()];
    v8 = self->_featuredLocationNodesByHighlightGroupNode;
    self->_featuredLocationNodesByHighlightGroupNode = v7;

    featuredLocationNodesByHighlightGroupNode = self->_featuredLocationNodesByHighlightGroupNode;
  }

  return featuredLocationNodesByHighlightGroupNode;
}

- (id)allTripNodes
{
  allTripNodes = self->_allTripNodes;
  if (!allTripNodes)
  {
    v4 = [(PGGraphBuilder *)self->_graphBuilder graph];
    v5 = [PGGraphHighlightTypeNodeCollection tripTypeNodesInGraph:v4];
    v6 = [v5 highlightGroupNodes];
    v7 = self->_allTripNodes;
    self->_allTripNodes = v6;

    allTripNodes = self->_allTripNodes;
  }

  return allTripNodes;
}

- (PGGraphIngestTripProcessor)initWithGraphBuilder:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PGGraphIngestTripProcessor;
  v6 = [(PGGraphIngestTripProcessor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_graphBuilder, a3);
  }

  return v7;
}

@end