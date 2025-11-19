@interface PGGraphIngestFrequentLocationProcessor
- (BOOL)shouldRunWithGraphUpdate:(id)a3;
- (PGGraphIngestFrequentLocationProcessor)initWithGraphBuilder:(id)a3;
- (id)processFrequentLocationWithGraph:(id)a3 progressBlock:(id)a4;
- (void)deleteFrequentLocationNodesInGraph:(id)a3 changeRequest:(id)a4;
- (void)processAndInsertFrequentLocationWithMomentNodes:(id)a3 inGraph:(id)a4 changeRequest:(id)a5 progressBlock:(id)a6;
- (void)runWithGraphUpdate:(id)a3 progressBlock:(id)a4;
@end

@implementation PGGraphIngestFrequentLocationProcessor

- (id)processFrequentLocationWithGraph:(id)a3 progressBlock:(id)a4
{
  v59 = *MEMORY[0x277D85DE8];
  v40 = a3;
  v38 = a4;
  v6 = _Block_copy(v38);
  v39 = [MEMORY[0x277CBEB98] set];
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  if (!v6 || (v7 = CFAbsoluteTimeGetCurrent(), v7 - v50[3] < 0.01) || (v50[3] = v7, v48 = 0, v6[2](v6, &v48, 0.0), v8 = *(v54 + 24) | v48, *(v54 + 24) = v8, (v8 & 1) == 0))
  {
    v10 = objc_opt_new();
    v11 = [v40 meNode];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __89__PGGraphIngestFrequentLocationProcessor_processFrequentLocationWithGraph_progressBlock___block_invoke;
    v46[3] = &unk_27887F790;
    v12 = v10;
    v47 = v12;
    [v11 enumerateHomeOrWorkAddressNodesUsingBlock:v46];
    v37 = v11;
    if (v6)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v50[3] >= 0.01)
      {
        v50[3] = Current;
        v48 = 0;
        v6[2](v6, &v48, 0.1);
        v14 = *(v54 + 24) | v48;
        *(v54 + 24) = v14;
        if (v14)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v58 = 182;
            *&v58[4] = 2080;
            *&v58[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestFrequentLocationProcessor.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v9 = v39;
          goto LABEL_33;
        }
      }
    }

    v15 = [(PGGraphBuilder *)self->_graphBuilder photoLibrary:v11];
    v16 = [v15 librarySpecificFetchOptions];

    v17 = [MEMORY[0x277CD98F8] fetchMomentsWithOptions:v16];
    v18 = MEMORY[0x277CBEB98];
    v19 = [v17 fetchedObjects];
    v20 = [v18 setWithArray:v19];

    v21 = self->_loggingConnection;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = [v20 count];
      *buf = 134217984;
      *v58 = v22;
      _os_log_impl(&dword_22F0FC000, v21, OS_LOG_TYPE_INFO, "Processing frequent location for %tu moments", buf, 0xCu);
    }

    v23 = os_signpost_id_generate(self->_loggingConnection);
    v24 = self->_loggingConnection;
    v25 = v24;
    if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v25, OS_SIGNPOST_INTERVAL_BEGIN, v23, "ProcessFrequentLocations", "", buf, 2u);
    }

    v26 = MEMORY[0x277D3AC78];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __89__PGGraphIngestFrequentLocationProcessor_processFrequentLocationWithGraph_progressBlock___block_invoke_245;
    v41[3] = &unk_27888A188;
    v27 = v6;
    v42 = v27;
    v43 = &v49;
    v44 = &v53;
    v45 = 0x3F847AE147AE147BLL;
    v28 = [v26 processFrequentLocationsWithItems:v20 locationsOfInterest:v12 progressBlock:v41];
    v29 = self->_loggingConnection;
    v30 = v29;
    if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v30, OS_SIGNPOST_INTERVAL_END, v23, "ProcessFrequentLocations", "", buf, 2u);
    }

    if (*(v54 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v58 = 196;
        *&v58[4] = 2080;
        *&v58[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestFrequentLocationProcessor.m";
        v31 = MEMORY[0x277D86220];
LABEL_24:
        _os_log_impl(&dword_22F0FC000, v31, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }
    }

    else
    {
      if (!v6 || (v33 = CFAbsoluteTimeGetCurrent(), v33 - v50[3] < 0.01) || (v50[3] = v33, v48 = 0, v27[2](v27, &v48, 1.0), v34 = *(v54 + 24) | v48, *(v54 + 24) = v34, (v34 & 1) == 0))
      {
        v32 = v28;
        goto LABEL_32;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v58 = 198;
        *&v58[4] = 2080;
        *&v58[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestFrequentLocationProcessor.m";
        v31 = MEMORY[0x277D86220];
        goto LABEL_24;
      }
    }

    v32 = v39;
LABEL_32:
    v9 = v32;

LABEL_33:
    goto LABEL_34;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *v58 = 169;
    *&v58[4] = 2080;
    *&v58[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestFrequentLocationProcessor.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v9 = v39;
LABEL_34:
  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(&v53, 8);

  v35 = *MEMORY[0x277D85DE8];

  return v9;
}

void __89__PGGraphIngestFrequentLocationProcessor_processFrequentLocationWithGraph_progressBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 isHome] ^ 1;
  v11 = [MEMORY[0x277CCAD78] UUID];
  v7 = objc_alloc(MEMORY[0x277D3ACC8]);
  v8 = [v5 location];

  v9 = [v7 initWithLocation:v8 uncertainty:*MEMORY[0x277D3ADD0]];
  v10 = [objc_alloc(MEMORY[0x277D3ACC0]) initWithIdentifier:v11 locationOfInterestType:v6 typeRadius:0 routineLocation:v9 mapItemLocation:250.0];
  [*(a1 + 32) addObject:v10];
}

void __89__PGGraphIngestFrequentLocationProcessor_processFrequentLocationWithGraph_progressBlock___block_invoke_245(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.9 + 0.1);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (void)processAndInsertFrequentLocationWithMomentNodes:(id)a3 inGraph:(id)a4 changeRequest:(id)a5 progressBlock:(id)a6
{
  v97 = *MEMORY[0x277D85DE8];
  v50 = a3;
  v53 = a4;
  v62 = a5;
  v51 = a6;
  v87 = 0;
  v88 = 0;
  v89 = &v88;
  v90 = 0x2020000000;
  v91 = 0;
  v84 = 0;
  v85 = &v84;
  v86 = 0x2020000000;
  v56 = _Block_copy(v51);
  if (!v56 || (v9 = CFAbsoluteTimeGetCurrent(), v9 - v85[3] < 0.01) || (v85[3] = v9, v83 = 0, (*(v56 + 2))(v56, &v83, 0.0), v10 = *(v89 + 24) | v83, *(v89 + 24) = v10, (v10 & 1) == 0))
  {
    v78[0] = MEMORY[0x277D85DD0];
    v78[1] = 3221225472;
    v78[2] = __126__PGGraphIngestFrequentLocationProcessor_processAndInsertFrequentLocationWithMomentNodes_inGraph_changeRequest_progressBlock___block_invoke;
    v78[3] = &unk_27888A188;
    v54 = v56;
    v79 = v54;
    v80 = &v84;
    v81 = &v88;
    v82 = 0x3F847AE147AE147BLL;
    v52 = [(PGGraphIngestFrequentLocationProcessor *)self processFrequentLocationWithGraph:v53 progressBlock:v78];
    if (*(v89 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v94 = 102;
        *&v94[4] = 2080;
        *&v94[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestFrequentLocationProcessor.m";
        v11 = MEMORY[0x277D86220];
LABEL_9:
        _os_log_impl(&dword_22F0FC000, v11, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }
    }

    else
    {
      v12 = [v52 count];
      loggingConnection = self->_loggingConnection;
      v14 = os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO);
      if (v12)
      {
        if (v14)
        {
          *buf = 134217984;
          *v94 = v12;
          _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "Ingesting %tu frequent locations", buf, 0xCu);
        }

        v49 = [(PGGraphNodeCollection *)PGGraphMomentNodeCollection nodesInGraph:v53];
        v15 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v49, "count")}];
        v76[0] = MEMORY[0x277D85DD0];
        v76[1] = 3221225472;
        v76[2] = __126__PGGraphIngestFrequentLocationProcessor_processAndInsertFrequentLocationWithMomentNodes_inGraph_changeRequest_progressBlock___block_invoke_231;
        v76[3] = &unk_278889290;
        v16 = v15;
        v77 = v16;
        [v49 enumerateNodesUsingBlock:v76];
        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        obj = v52;
        v58 = [obj countByEnumeratingWithState:&v72 objects:v96 count:16];
        if (v58)
        {
          v17 = 1.0 / v12;
          v57 = *v73;
          v18 = 0.0;
          while (2)
          {
            for (i = 0; i != v58; ++i)
            {
              if (*v73 != v57)
              {
                objc_enumerationMutation(obj);
              }

              v61 = *(*(&v72 + 1) + 8 * i);
              v19 = [PGGraphFrequentLocationNode alloc];
              v20 = [v61 dateInterval];
              v63 = [(PGGraphFrequentLocationNode *)v19 initWithUniversalDateInterval:v20];

              v21 = [v61 centroid];
              v22 = [v21 pl_uuid];
              v23 = [v16 objectForKeyedSubscript:v22];
              v24 = [v23 bestAddressNode];

              if (!v24)
              {
                v25 = self->_loggingConnection;
                if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  *v94 = v61;
                  _os_log_impl(&dword_22F0FC000, v25, OS_LOG_TYPE_INFO, "Failed to retrieve centroid address node for frequent location: %@. Will pick from another moment instead.", buf, 0xCu);
                }
              }

              v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
              v70 = 0u;
              v71 = 0u;
              v68 = 0u;
              v69 = 0u;
              v27 = [v61 sortedMoments];
              v28 = [v27 countByEnumeratingWithState:&v68 objects:v95 count:16];
              if (v28)
              {
                v29 = 0;
                v30 = *v69;
                do
                {
                  for (j = 0; j != v28; ++j)
                  {
                    if (*v69 != v30)
                    {
                      objc_enumerationMutation(v27);
                    }

                    v32 = [*(*(&v68 + 1) + 8 * j) pl_uuid];
                    v33 = [v16 objectForKeyedSubscript:v32];

                    if (v33)
                    {
                      if (!v24)
                      {
                        v24 = [v33 bestAddressNode];
                      }

                      v34 = [[PGGraphFrequentLocationInEdge alloc] initFromMomentNode:v33 toFrequentLocationNode:v63];
                      [v26 addObject:v34];
                    }

                    else
                    {
                      ++v29;
                    }
                  }

                  v28 = [v27 countByEnumeratingWithState:&v68 objects:v95 count:16];
                }

                while (v28);

                if (v29)
                {
                  v35 = self->_loggingConnection;
                  if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
                  {
                    *buf = 134218242;
                    *v94 = v29;
                    *&v94[8] = 2112;
                    *&v94[10] = v61;
                    _os_log_impl(&dword_22F0FC000, v35, OS_LOG_TYPE_INFO, "Failed to retrieve %tu moments for frequent location: %@", buf, 0x16u);
                  }
                }
              }

              else
              {
              }

              if (v24)
              {
                [v62 addNode:v63];
                v66 = 0u;
                v67 = 0u;
                v64 = 0u;
                v65 = 0u;
                v36 = v26;
                v37 = [v36 countByEnumeratingWithState:&v64 objects:v92 count:16];
                if (v37)
                {
                  v38 = *v65;
                  do
                  {
                    for (k = 0; k != v37; ++k)
                    {
                      if (*v65 != v38)
                      {
                        objc_enumerationMutation(v36);
                      }

                      [v62 addEdge:{*(*(&v64 + 1) + 8 * k), v49}];
                    }

                    v37 = [v36 countByEnumeratingWithState:&v64 objects:v92 count:16];
                  }

                  while (v37);
                }

                v40 = [[PGGraphFrequentLocationAtEdge alloc] initFromFrequentLocationNode:v63 toAddressNode:v24];
                [v62 addEdge:v40];
                v18 = v17 + v18;
                if (v56)
                {
                  Current = CFAbsoluteTimeGetCurrent();
                  if (Current - v85[3] >= 0.01)
                  {
                    v85[3] = Current;
                    buf[0] = 0;
                    (*(v54 + 2))(v54, buf, v18 * 0.1 + 0.9);
                    v42 = *(v89 + 24) | buf[0];
                    *(v89 + 24) = v42;
                    if (v42)
                    {

                      goto LABEL_63;
                    }
                  }
                }

                v26 = v24;
              }

              else
              {
                v43 = self->_loggingConnection;
                if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  *v94 = v61;
                  _os_log_error_impl(&dword_22F0FC000, v43, OS_LOG_TYPE_ERROR, "Failed to retrieve any centroid address node for frequent location: %@; Skipping ingest", buf, 0xCu);
                }
              }
            }

            v58 = [obj countByEnumeratingWithState:&v72 objects:v96 count:16];
            if (v58)
            {
              continue;
            }

            break;
          }
        }

        if (v56)
        {
LABEL_63:
          v46 = CFAbsoluteTimeGetCurrent();
          if (v46 - v85[3] >= 0.01)
          {
            v85[3] = v46;
            v83 = 0;
            (*(v54 + 2))(v54, &v83, 1.0);
            v47 = *(v89 + 24) | v83;
            *(v89 + 24) = v47;
            if ((v47 & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              *v94 = 164;
              *&v94[4] = 2080;
              *&v94[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestFrequentLocationProcessor.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }
          }
        }

        goto LABEL_68;
      }

      if (v14)
      {
        *buf = 0;
        _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "No frequent location to ingest", buf, 2u);
      }

      if (v56)
      {
        v44 = CFAbsoluteTimeGetCurrent();
        if (v44 - v85[3] >= 0.01)
        {
          v85[3] = v44;
          v83 = 0;
          (*(v54 + 2))(v54, &v83, 1.0);
          v45 = *(v89 + 24) | v83;
          *(v89 + 24) = v45;
          if ((v45 & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v94 = 107;
            *&v94[4] = 2080;
            *&v94[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestFrequentLocationProcessor.m";
            v11 = MEMORY[0x277D86220];
            goto LABEL_9;
          }
        }
      }
    }

LABEL_68:

    goto LABEL_69;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *v94 = 97;
    *&v94[4] = 2080;
    *&v94[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestFrequentLocationProcessor.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_69:
  _Block_object_dispose(&v84, 8);
  _Block_object_dispose(&v88, 8);

  v48 = *MEMORY[0x277D85DE8];
}

void __126__PGGraphIngestFrequentLocationProcessor_processAndInsertFrequentLocationWithMomentNodes_inGraph_changeRequest_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.9);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __126__PGGraphIngestFrequentLocationProcessor_processAndInsertFrequentLocationWithMomentNodes_inGraph_changeRequest_progressBlock___block_invoke_231(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 uuid];
  [v2 setObject:v3 forKeyedSubscript:v4];
}

- (void)deleteFrequentLocationNodesInGraph:(id)a3 changeRequest:(id)a4
{
  v5 = a4;
  v6 = [(PGGraphNodeCollection *)PGGraphFrequentLocationNodeCollection nodesInGraph:a3];
  [v5 removeNodes:v6];
}

- (void)runWithGraphUpdate:(id)a3 progressBlock:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  graphBuilder = self->_graphBuilder;
  v6 = a4;
  v7 = [(PGGraphBuilder *)graphBuilder graph];
  v8 = self->_loggingConnection;
  v9 = os_signpost_id_generate(v8);
  v10 = v8;
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "PGGraphIngestFrequentLocationProcessor", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v12 = mach_absolute_time();
  [v7 invalidateSupersetCaches];
  v13 = [(PGGraphNodeCollection *)PGGraphMomentNodeCollection nodesInGraph:v7];
  if ([(PGGraphBuilder *)self->_graphBuilder isSharedLibraryEnabled])
  {
    v14 = [(PGGraphBuilder *)self->_graphBuilder momentNodesWhereMeIsPresent];
    if ([v14 count])
    {
      v15 = v14;

      v13 = v15;
    }

    else
    {
      loggingConnection = self->_loggingConnection;
      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "No moments in library where Me is present. Not applying presence filtering", buf, 2u);
      }
    }
  }

  v17 = objc_alloc_init(MEMORY[0x277D22C50]);
  [(PGGraphIngestFrequentLocationProcessor *)self deleteFrequentLocationNodesInGraph:v7 changeRequest:v17];
  [(PGGraphIngestFrequentLocationProcessor *)self processAndInsertFrequentLocationWithMomentNodes:v13 inGraph:v7 changeRequest:v17 progressBlock:v6];

  [v7 executeGraphChangeRequest:v17];
  v18 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v21 = v11;
  v22 = v21;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v22, OS_SIGNPOST_INTERVAL_END, v9, "PGGraphIngestFrequentLocationProcessor", "", buf, 2u);
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v26 = "PGGraphIngestFrequentLocationProcessor";
    v27 = 2048;
    v28 = ((((v18 - v12) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v22, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldRunWithGraphUpdate:(id)a3
{
  v3 = a3;
  if ([v3 isResumingFullAnalysis] & 1) != 0 || (objc_msgSend(v3, "hasMomentsToInsert") & 1) != 0 || (objc_msgSend(v3, "hasMomentsToDelete"))
  {
    v4 = 1;
  }

  else
  {
    v6 = [v3 momentUpdateTypes];
    v4 = ([objc_opt_class() requiredMomentUpdateTypes] & v6) != 0;
  }

  return v4;
}

- (PGGraphIngestFrequentLocationProcessor)initWithGraphBuilder:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = PGGraphIngestFrequentLocationProcessor;
  v6 = [(PGGraphIngestFrequentLocationProcessor *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_graphBuilder, a3);
    v8 = os_log_create("com.apple.PhotosGraph", "FrequentLocationProcessor");
    loggingConnection = v7->_loggingConnection;
    v7->_loggingConnection = v8;
  }

  return v7;
}

@end