@interface PGGraphIngestAOIBlockingProcessor
- (BOOL)shouldRunWithGraphUpdate:(id)a3;
- (PGGraphIngestAOIBlockingProcessor)initWithGraphBuilder:(id)a3;
- (void)processAOIBlockingWithAOINodes:(id)a3 graph:(id)a4 loggingConnection:(id)a5 progressBlock:(id)a6;
- (void)runWithGraphUpdate:(id)a3 progressBlock:(id)a4;
@end

@implementation PGGraphIngestAOIBlockingProcessor

- (void)processAOIBlockingWithAOINodes:(id)a3 graph:(id)a4 loggingConnection:(id)a5 progressBlock:(id)a6
{
  v48 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = _Block_copy(v12);
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  if (v13 && (v14 = CFAbsoluteTimeGetCurrent(), v14 - v35[3] >= 0.01) && (v35[3] = v14, LOBYTE(v42[0]) = 0, (*(v13 + 2))(v13, v42, 0.0), v15 = *(v39 + 24) | LOBYTE(v42[0]), *(v39 + 24) = v15, (v15 & 1) != 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      buf = 0x4C04000202;
      LOWORD(v46) = 2080;
      *(&v46 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestAOIBlockingProcessor.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
    }
  }

  else
  {
    v16 = [MEMORY[0x277CBEB38] dictionary];
    buf = 0;
    *&v46 = &buf;
    *(&v46 + 1) = 0x2020000000;
    v47 = 0;
    v17 = [v9 count];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __106__PGGraphIngestAOIBlockingProcessor_processAOIBlockingWithAOINodes_graph_loggingConnection_progressBlock___block_invoke;
    v24[3] = &unk_278887B28;
    p_buf = &buf;
    v32 = v17;
    v18 = v13;
    v28 = v18;
    v30 = &v34;
    v33 = 0x3F847AE147AE147BLL;
    v31 = &v38;
    v19 = v16;
    v25 = v19;
    v26 = v10;
    v27 = v11;
    [v9 enumerateNodesUsingBlock:v24];
    if (v13)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v35[3] >= 0.01)
      {
        v35[3] = Current;
        v23 = 0;
        (*(v18 + 2))(v18, &v23, 1.0);
        v21 = *(v39 + 24) | v23;
        *(v39 + 24) = v21;
        if ((v21 & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v42[0] = 67109378;
          v42[1] = 238;
          v43 = 2080;
          v44 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestAOIBlockingProcessor.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v42, 0x12u);
        }
      }
    }

    _Block_object_dispose(&buf, 8);
  }

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v38, 8);

  v22 = *MEMORY[0x277D85DE8];
}

void __106__PGGraphIngestAOIBlockingProcessor_processAOIBlockingWithAOINodes_graph_loggingConnection_progressBlock___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v101 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = *(*(a1 + 64) + 8);
  v7 = *(v6 + 24);
  v8 = *(a1 + 88);
  *(v6 + 24) = v7 + 1.0;
  if (!*(a1 + 56) || (Current = CFAbsoluteTimeGetCurrent(), v10 = *(*(a1 + 72) + 8), Current - *(v10 + 24) < *(a1 + 96)) || (*(v10 + 24) = Current, buf[0] = 0, (*(*(a1 + 56) + 16))(v7 / v8), *(*(*(a1 + 80) + 8) + 24) = *(*(*(a1 + 80) + 8) + 24), *(*(*(a1 + 80) + 8) + 24) != 1))
  {
    if ([v5 isBlocked])
    {
      goto LABEL_40;
    }

    v11 = objc_autoreleasePoolPush();
    v81 = 0;
    v82 = &v81;
    v83 = 0x2020000000;
    v84 = 0;
    v77 = 0;
    v78 = &v77;
    v79 = 0x2020000000;
    v80 = 0;
    v12 = [MEMORY[0x277CBEB58] set];
    v73 = 0;
    v74 = &v73;
    v75 = 0x2020000000;
    v76 = 0;
    v69 = 0;
    v70 = &v69;
    v71 = 0x2020000000;
    v72 = 0;
    v65 = 0;
    v66 = &v65;
    v67 = 0x2020000000;
    v68 = 0;
    v13 = [v5 collection];
    v14 = [v13 addressNodes];

    v15 = [v14 count];
    v64[0] = 0;
    v64[1] = v64;
    v64[2] = 0x2020000000;
    v64[3] = 0;
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __106__PGGraphIngestAOIBlockingProcessor_processAOIBlockingWithAOINodes_graph_loggingConnection_progressBlock___block_invoke_2;
    v48[3] = &unk_278887B00;
    v54 = v64;
    v16 = *(a1 + 88);
    v61 = v15;
    v62 = v16;
    v47 = *(a1 + 56);
    v17 = v47;
    v53 = v47;
    v63 = *(a1 + 96);
    v55 = *(a1 + 72);
    v18 = v14;
    v49 = v18;
    v56 = &v73;
    v57 = &v69;
    v19 = v5;
    v50 = v19;
    v58 = &v65;
    v20 = v12;
    v51 = v20;
    v52 = *(a1 + 32);
    v59 = &v77;
    v60 = &v81;
    [v18 enumerateNodesUsingBlock:v48];
    if (*(*(*(a1 + 80) + 8) + 24) == 1)
    {
      *a3 = 1;
LABEL_39:

      _Block_object_dispose(v64, 8);
      _Block_object_dispose(&v65, 8);
      _Block_object_dispose(&v69, 8);
      _Block_object_dispose(&v73, 8);

      _Block_object_dispose(&v77, 8);
      _Block_object_dispose(&v81, 8);
      objc_autoreleasePoolPop(v11);
      goto LABEL_40;
    }

    v21 = v82[3];
    v22 = v78[3];
    v24 = v21 / v22 >= 0.95 && v22 != 0;
    v26 = v66[3] / v21 >= 0.4 && v21 > 1;
    v27 = *(v74 + 24);
    v28 = *(v70 + 24);
    if (((v27 | (v28 | v26) & v24 & 1) == 0) | [v19 isBlocked] & 1)
    {
      if (!(v27 | (v28 | v26) & v24 & 1))
      {
        v29 = *(a1 + 48);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          v39 = [v19 name];
          v40 = v39;
          v41 = @"YES";
          if (*(v74 + 24))
          {
            v42 = @"YES";
          }

          else
          {
            v42 = @"NO";
          }

          if (*(v70 + 24))
          {
            v43 = @"YES";
          }

          else
          {
            v43 = @"NO";
          }

          if (v26)
          {
            v44 = @"YES";
          }

          else
          {
            v44 = @"NO";
          }

          v45 = v82[3];
          if (!v24)
          {
            v41 = @"NO";
          }

          v46 = v78[3];
          *buf = 138414082;
          v86 = v39;
          v87 = 2112;
          v88 = @"NO";
          v89 = 2112;
          v90 = v42;
          v91 = 2112;
          v92 = v43;
          v93 = 2112;
          v94 = v44;
          v95 = 2112;
          v96 = v41;
          v97 = 2048;
          v98 = v45;
          v99 = 2048;
          v100 = v46;
          _os_log_debug_impl(&dword_22F0FC000, v29, OS_LOG_TYPE_DEBUG, "Not blocking AOI %@: %@ (isVeryLarge %@, isUrban %@, hasManyAOIsAtSharedAddresses %@, isMatchingAddressRatio %@ (#AOI:%lu #Country:%lu))", buf, 0x52u);
        }

LABEL_38:

        goto LABEL_39;
      }
    }

    else
    {
      +[PGGraphAreaNode setIsBlocked:onNodeForIdentifier:inGraph:](PGGraphAreaNode, "setIsBlocked:onNodeForIdentifier:inGraph:", 1, [v19 identifier], *(a1 + 40));
    }

    v29 = *(a1 + 48);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v30 = [v19 name];
      v31 = v30;
      v32 = @"NO";
      if (*(v74 + 24))
      {
        v33 = @"YES";
      }

      else
      {
        v33 = @"NO";
      }

      if (*(v70 + 24))
      {
        v34 = @"YES";
      }

      else
      {
        v34 = @"NO";
      }

      if (v26)
      {
        v35 = @"YES";
      }

      else
      {
        v35 = @"NO";
      }

      v36 = v82[3];
      if (v24)
      {
        v32 = @"YES";
      }

      v37 = v78[3];
      *buf = 138414082;
      v86 = v30;
      v87 = 2112;
      v88 = @"YES";
      v89 = 2112;
      v90 = v33;
      v91 = 2112;
      v92 = v34;
      v93 = 2112;
      v94 = v35;
      v95 = 2112;
      v96 = v32;
      v97 = 2048;
      v98 = v36;
      v99 = 2048;
      v100 = v37;
      _os_log_impl(&dword_22F0FC000, v29, OS_LOG_TYPE_INFO, "Blocking AOI %@: %@ (isVeryLarge %@, isUrban %@, hasManyAOIsAtSharedAddresses %@, isMatchingAddressRatio %@ (#AOI:%lu #Country:%lu))", buf, 0x52u);
    }

    goto LABEL_38;
  }

  *a3 = 1;
LABEL_40:

  v38 = *MEMORY[0x277D85DE8];
}

void __106__PGGraphIngestAOIBlockingProcessor_processAOIBlockingWithAOINodes_graph_loggingConnection_progressBlock___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = *(*(*(a1 + 72) + 8) + 24);
  v7 = *(*(a1 + 80) + 8);
  v8 = *(v7 + 24);
  v10 = *(a1 + 144);
  v9 = *(a1 + 152);
  *(v7 + 24) = v8 + 1.0;
  if (*(a1 + 64) && (Current = CFAbsoluteTimeGetCurrent(), v12 = *(*(a1 + 88) + 8), Current - *(v12 + 24) >= *(a1 + 160)) && (*(v12 + 24) = Current, v46 = 0, (*(*(a1 + 64) + 16))((v6 + v8 / v10) / v9), *(*(*(a1 + 96) + 8) + 24) = *(*(*(a1 + 96) + 8) + 24), *(*(*(a1 + 96) + 8) + 24) == 1))
  {
    *a3 = 1;
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    [v5 coordinate];
    v15 = v14;
    v17 = v16;
    v18 = *(a1 + 32);
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __106__PGGraphIngestAOIBlockingProcessor_processAOIBlockingWithAOINodes_graph_loggingConnection_progressBlock___block_invoke_3;
    v41[3] = &unk_278887AD8;
    v19 = v5;
    v44 = v15;
    v45 = v17;
    v20 = *(a1 + 104);
    v42 = v19;
    v43 = v20;
    [v18 enumerateNodesUsingBlock:v41];
    *a3 = *(*(*(a1 + 104) + 8) + 24);
    if ((*(*(*(a1 + 104) + 8) + 24) & 1) == 0)
    {
      if ((*(*(*(a1 + 112) + 8) + 24) & 1) == 0)
      {
        v21 = [v19 collection];
        v22 = [v21 momentNodes];
        v23 = [v22 urbanRoiNodes];
        *(*(*(a1 + 112) + 8) + 24) = [v23 isEmpty] ^ 1;
      }

      v24 = [v19 collection];
      v25 = [v24 areaNodes];
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __106__PGGraphIngestAOIBlockingProcessor_processAOIBlockingWithAOINodes_graph_loggingConnection_progressBlock___block_invoke_4;
      v38[3] = &unk_278888120;
      v26 = *(a1 + 40);
      v27 = *(a1 + 120);
      v39 = v26;
      v40 = v27;
      [v25 enumerateNodesUsingBlock:v38];

      v28 = [v19 collection];
      v29 = [v28 countryNodes];
      v30 = [v29 anyNode];

      if (v30 && ([*(a1 + 48) containsObject:v30] & 1) == 0)
      {
        [*(a1 + 48) addObject:v30];
        v31 = [v30 UUID];
        if (v31 && ([*(a1 + 56) objectForKeyedSubscript:v31], v32 = objc_claimAutoreleasedReturnValue(), v33 = objc_msgSend(v32, "unsignedIntegerValue"), v32))
        {
          v34 = v33;
        }

        else
        {
          v35 = [v30 collection];
          v36 = [v35 addressNodes];
          v34 = [v36 count];

          if (v31)
          {
            v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v34];
            [*(a1 + 56) setObject:v37 forKeyedSubscript:v31];
          }

          v32 = 0;
        }

        *(*(*(a1 + 128) + 8) + 24) += v34;
      }

      ++*(*(*(a1 + 136) + 8) + 24);
    }

    objc_autoreleasePoolPop(v13);
  }
}

void __106__PGGraphIngestAOIBlockingProcessor_processAOIBlockingWithAOINodes_graph_loggingConnection_progressBlock___block_invoke_3(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = objc_autoreleasePoolPush();
  if (([*(a1 + 32) isSameNodeAsNode:v5] & 1) == 0)
  {
    [v5 coordinate];
    CLLocationCoordinate2DGetDistanceFrom();
    *(*(*(a1 + 40) + 8) + 24) = v7 >= 250000.0;
    *a3 = *(*(*(a1 + 40) + 8) + 24);
  }

  objc_autoreleasePoolPop(v6);
}

uint64_t __106__PGGraphIngestAOIBlockingProcessor_processAOIBlockingWithAOINodes_graph_loggingConnection_progressBlock___block_invoke_4(uint64_t a1, void *a2)
{
  result = [a2 isSameNodeAsNode:*(a1 + 32)];
  if ((result & 1) == 0)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  return result;
}

- (void)runWithGraphUpdate:(id)a3 progressBlock:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
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
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "PGGraphIngestAOIBlockingProcessor", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v14 = mach_absolute_time();
  v30 = self;
  if ([v6 isResumingFullAnalysis])
  {
    v15 = [(PGGraphNodeCollection *)PGGraphAreaNodeCollection nodesInGraph:v8];
  }

  else
  {
    v16 = [v6 momentNodesToProcessInGraph:v8 forMomentUpdateTypes:objc_msgSend(objc_opt_class() includeInsertedNodes:{"requiredMomentUpdateTypes"), 1}];
    [v16 addressNodes];
    v17 = v10 - 1;
    v18 = v8;
    v19 = v10;
    v20 = v6;
    v21 = v14;
    v23 = v22 = v7;
    v15 = [v23 areaNodes];

    v7 = v22;
    v14 = v21;
    v6 = v20;
    v10 = v19;
    v8 = v18;
    v13 = v17;
  }

  if ([v15 count])
  {
    [v31 processAOIBlockingWithAOINodes:v15 graph:v8 loggingConnection:v12 progressBlock:v7];
  }

  v24 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v27 = v12;
  v28 = v27;
  if (v13 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v28, OS_SIGNPOST_INTERVAL_END, v10, "PGGraphIngestAOIBlockingProcessor", "", buf, 2u);
  }

  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v34 = "PGGraphIngestAOIBlockingProcessor";
    v35 = 2048;
    v36 = ((((v24 - v14) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v28, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldRunWithGraphUpdate:(id)a3
{
  v3 = a3;
  if ([v3 isResumingFullAnalysis] & 1) != 0 || (objc_msgSend(v3, "hasMomentsToInsert"))
  {
    v4 = 1;
  }

  else
  {
    v5 = [v3 momentUpdateTypes];
    v4 = ([objc_opt_class() requiredMomentUpdateTypes] & v5) != 0;
  }

  return v4;
}

- (PGGraphIngestAOIBlockingProcessor)initWithGraphBuilder:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PGGraphIngestAOIBlockingProcessor;
  v6 = [(PGGraphIngestAOIBlockingProcessor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_graphBuilder, a3);
  }

  return v7;
}

@end