@interface PGGraphIngestPrefetchLocationProcessor
- (BOOL)prefetchLocationsWithRegions:(id)regions loggingConnection:(id)connection progressBlock:(id)block;
- (BOOL)shouldRunWithGraphUpdate:(id)update;
- (PGGraphIngestPrefetchLocationProcessor)initWithGraphBuilder:(id)builder;
- (id)regionsWithMoments:(id)moments progressBlock:(id)block;
- (void)runWithGraphUpdate:(id)update progressBlock:(id)block;
@end

@implementation PGGraphIngestPrefetchLocationProcessor

- (BOOL)prefetchLocationsWithRegions:(id)regions loggingConnection:(id)connection progressBlock:(id)block
{
  v61[6] = *MEMORY[0x277D85DE8];
  regionsCopy = regions;
  connectionCopy = connection;
  aBlock = block;
  v9 = connectionCopy;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf[0]) = 67109120;
    HIDWORD(buf[0]) = [regionsCopy count];
    _os_log_impl(&dword_22F0FC000, v9, OS_LOG_TYPE_DEFAULT, "[PGGraphIngestPrefetchLocationProcessor] Starting to prefetch locations for %d regions", buf, 8u);
  }

  v10 = _Block_copy(aBlock);
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  if (v10)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current - v50[3] >= 0.01)
    {
      v50[3] = Current;
      LOBYTE(v57) = 0;
      v10[2](v10, &v57, 0.0);
      v12 = *(v54 + 24) | v57;
      *(v54 + 24) = v12;
      if (v12)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          buf[0] = 0xD904000202;
          LOWORD(buf[1]) = 2080;
          *(&buf[1] + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestPrefetchLocationProcessor.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v13 = 0;
        goto LABEL_36;
      }
    }
  }

  if ([regionsCopy count])
  {
    locationCache = [(PGGraphBuilder *)self->_graphBuilder locationCache];
    aoiCache = [(PGGraphBuilder *)self->_graphBuilder aoiCache];
    poiCache = [(PGGraphBuilder *)self->_graphBuilder poiCache];
    roiCache = [(PGGraphBuilder *)self->_graphBuilder roiCache];
    natureCache = [(PGGraphBuilder *)self->_graphBuilder natureCache];
    v15 = [objc_alloc(MEMORY[0x277D27720]) initWithLocationCache:locationCache];
    v61[0] = v15;
    v16 = [objc_alloc(MEMORY[0x277D27668]) initWithAOICache:aoiCache locationCache:locationCache];
    v61[1] = v16;
    v17 = [objc_alloc(MEMORY[0x277D27768]) initWithPOICache:poiCache locationCache:locationCache];
    v61[2] = v17;
    v18 = [objc_alloc(MEMORY[0x277D27770]) initWithPOICache:poiCache locationCache:locationCache];
    v61[3] = v18;
    v19 = [objc_alloc(MEMORY[0x277D277A8]) initWithROICache:roiCache locationCache:locationCache];
    v61[4] = v19;
    v20 = [objc_alloc(MEMORY[0x277D27748]) initWithNatureCache:natureCache locationCache:locationCache];
    v61[5] = v20;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:6];

    v21 = [objc_alloc(MEMORY[0x277D277A0]) initWithQueryPerformers:v38];
    [v21 setLoggingConnection:v9];
    allObjects = [regionsCopy allObjects];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __103__PGGraphIngestPrefetchLocationProcessor_prefetchLocationsWithRegions_loggingConnection_progressBlock___block_invoke;
    v44[3] = &unk_27888A188;
    v23 = v10;
    v45 = v23;
    v46 = &v49;
    v47 = &v53;
    v48 = 0x3F847AE147AE147BLL;
    v43 = 0;
    v24 = [v21 createCacheForRegions:allObjects progressBlock:v44 error:&v43];
    v25 = v43;

    if (*(v54 + 24) == 1)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_14:
        v13 = 0;
LABEL_35:

        goto LABEL_36;
      }

      buf[0] = 0xF604000202;
      LOWORD(buf[1]) = 2080;
      *(&buf[1] + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestPrefetchLocationProcessor.m";
      v26 = MEMORY[0x277D86220];
      v27 = buf;
LABEL_13:
      _os_log_impl(&dword_22F0FC000, v26, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v27, 0x12u);
      goto LABEL_14;
    }

    v60 = 0;
    memset(buf, 0, sizeof(buf));
    firstObject = [v38 firstObject];
    v29 = firstObject;
    if (firstObject)
    {
      [firstObject statistics];
    }

    else
    {
      v60 = 0;
      memset(buf, 0, sizeof(buf));
    }

    if (buf[0])
    {
      v30 = (buf[2] + buf[1]) / buf[0];
      if (v30 >= 0.95)
      {
        v13 = 1;
        if (v24)
        {
          goto LABEL_29;
        }

LABEL_28:
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v57 = 138412290;
          v58[0] = v25;
          _os_log_error_impl(&dword_22F0FC000, v9, OS_LOG_TYPE_ERROR, "error creating the location cache: %@", &v57, 0xCu);
          if (!v10)
          {
            goto LABEL_35;
          }

LABEL_30:
          v31 = CFAbsoluteTimeGetCurrent();
          if (v31 - v50[3] < 0.01)
          {
            goto LABEL_35;
          }

          v50[3] = v31;
          v42 = 0;
          v23[2](v23, &v42, 1.0);
          v32 = *(v54 + 24) | v42;
          *(v54 + 24) = v32;
          if ((v32 & 1) == 0)
          {
            goto LABEL_35;
          }

          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            goto LABEL_14;
          }

          v57 = 67109378;
          LODWORD(v58[0]) = 267;
          WORD2(v58[0]) = 2080;
          *(v58 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestPrefetchLocationProcessor.m";
          v26 = MEMORY[0x277D86220];
          v27 = &v57;
          goto LABEL_13;
        }

LABEL_29:
        if (!v10)
        {
          goto LABEL_35;
        }

        goto LABEL_30;
      }
    }

    else
    {
      v30 = 0.0;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v57 = 134218240;
      *v58 = v30;
      LOWORD(v58[1]) = 2048;
      *(&v58[1] + 2) = 0x3FEE666666666666;
      _os_log_impl(&dword_22F0FC000, v9, OS_LOG_TYPE_INFO, "Cannot use the domain location because the resolved location ratio is too small: %f <= %f", &v57, 0x16u);
    }

    v13 = 0;
    if (v24)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v13 = 1;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_22F0FC000, v9, OS_LOG_TYPE_INFO, "No location to resolve, returning YES to prefetch location succeeded", buf, 2u);
  }

LABEL_36:
  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(&v53, 8);

  v33 = *MEMORY[0x277D85DE8];
  return v13;
}

void __103__PGGraphIngestPrefetchLocationProcessor_prefetchLocationsWithRegions_loggingConnection_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.75);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (id)regionsWithMoments:(id)moments progressBlock:(id)block
{
  v86 = *MEMORY[0x277D85DE8];
  momentsCopy = moments;
  aBlock = block;
  loggingConnection = [(PGGraphBuilder *)self->_graphBuilder loggingConnection];
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109120;
    HIDWORD(buf) = [momentsCopy count];
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "[PGGraphIngestPrefetchLocationProcessor] Starting to cluster %d moments", &buf, 8u);
  }

  v50 = _Block_copy(aBlock);
  v47 = [MEMORY[0x277CBEB98] set];
  buf = 0;
  p_buf = &buf;
  v84 = 0x2020000000;
  v85 = 0;
  v72 = 0;
  v73 = &v72;
  v74 = 0x2020000000;
  v75 = 0;
  if (!v50 || (v7 = CFAbsoluteTimeGetCurrent(), v7 - v73[3] < 0.01) || (v73[3] = v7, LOBYTE(v70[0]) = 0, (*(v50 + 2))(v50, v70, 0.0), v8 = *(p_buf + 24) | LOBYTE(v70[0]), *(p_buf + 24) = v8, (v8 & 1) == 0))
  {
    loggingConnection2 = [(PGGraphBuilder *)self->_graphBuilder loggingConnection];
    v11 = os_signpost_id_generate(loggingConnection2);
    v12 = loggingConnection2;
    v13 = v12;
    spid = v11;
    v14 = v11 - 1;
    if (v14 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      LOWORD(v79) = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v13, OS_SIGNPOST_INTERVAL_BEGIN, spid, "RegionsWithMoments", "", &v79, 2u);
    }

    info = 0;
    mach_timebase_info(&info);
    v44 = mach_absolute_time();
    v15 = [MEMORY[0x277CBEB58] set];
    v16 = objc_alloc(MEMORY[0x277D3C790]);
    photoLibrary = [(PGGraphBuilder *)self->_graphBuilder photoLibrary];
    v18 = [v16 initWithPhotoLibrary:photoLibrary];

    serviceManager = [(PGGraphBuilder *)self->_graphBuilder serviceManager];
    if (!serviceManager)
    {
      __assert_rtn("[PGGraphIngestPrefetchLocationProcessor regionsWithMoments:progressBlock:]", "PGGraphIngestPrefetchLocationProcessor.m", 110, "serviceManager != nil");
    }

    v79 = 0;
    *&v80 = &v79;
    *(&v80 + 1) = 0x2020000000;
    v81 = 0;
    v20 = [momentsCopy count];
    v70[0] = 0;
    v70[1] = v70;
    v70[2] = 0x2020000000;
    v70[3] = 0;
    v69[0] = 0;
    v69[1] = v69;
    v69[2] = 0x2020000000;
    v21 = 1.0 / v20;
    v69[3] = CFAbsoluteTimeGetCurrent();
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __75__PGGraphIngestPrefetchLocationProcessor_regionsWithMoments_progressBlock___block_invoke;
    v56[3] = &unk_27888A160;
    v62 = v70;
    v22 = v13;
    v57 = v22;
    v63 = v69;
    v23 = v50;
    v61 = v23;
    v64 = &v72;
    v65 = &v79;
    v66 = &buf;
    v67 = 0x3F847AE147AE147BLL;
    v24 = v18;
    v58 = v24;
    v68 = v21;
    v25 = v15;
    v59 = v25;
    v26 = serviceManager;
    v60 = v26;
    [momentsCopy enumerateObjectsUsingBlock:v56];
    v43 = v23;
    [v26 fetchImportantLocationsOfInterest];
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v27 = v53 = 0u;
    v28 = [v27 countByEnumeratingWithState:&v52 objects:v78 count:16];
    v46 = v24;
    if (v28)
    {
      v29 = *v53;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v53 != v29)
          {
            objc_enumerationMutation(v27);
          }

          placemarkRegion = [*(*(&v52 + 1) + 8 * i) placemarkRegion];
          if (placemarkRegion)
          {
            [v25 addObject:placemarkRegion];
          }
        }

        v28 = [v27 countByEnumeratingWithState:&v52 objects:v78 count:16];
      }

      while (v28);
    }

    v32 = mach_absolute_time();
    numer = info.numer;
    denom = info.denom;
    v35 = v22;
    v36 = v35;
    if (v14 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
    {
      LOWORD(v76) = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v36, OS_SIGNPOST_INTERVAL_END, spid, "RegionsWithMoments", "", &v76, 2u);
    }

    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v76 = 136315394;
      v77[0] = "RegionsWithMoments";
      LOWORD(v77[1]) = 2048;
      *(&v77[1] + 2) = ((((v32 - v44) * numer) / denom) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v36, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", &v76, 0x16u);
    }

    if (*(p_buf + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v76 = 67109378;
        LODWORD(v77[0]) = 205;
        WORD2(v77[0]) = 2080;
        *(v77 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestPrefetchLocationProcessor.m";
        v37 = MEMORY[0x277D86220];
LABEL_30:
        _os_log_impl(&dword_22F0FC000, v37, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v76, 0x12u);
      }
    }

    else
    {
      if (!v50 || (Current = CFAbsoluteTimeGetCurrent(), Current - v73[3] < 0.01) || (v73[3] = Current, v51 = 0, v43[2](v43, &v51, 1.0), v40 = *(p_buf + 24) | v51, *(p_buf + 24) = v40, (v40 & 1) == 0))
      {
        v38 = v25;
        goto LABEL_38;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v76 = 67109378;
        LODWORD(v77[0]) = 207;
        WORD2(v77[0]) = 2080;
        *(v77 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestPrefetchLocationProcessor.m";
        v37 = MEMORY[0x277D86220];
        goto LABEL_30;
      }
    }

    v38 = v47;
LABEL_38:
    v9 = v38;

    _Block_object_dispose(v69, 8);
    _Block_object_dispose(v70, 8);
    _Block_object_dispose(&v79, 8);

    goto LABEL_39;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v79 = 0x6504000202;
    LOWORD(v80) = 2080;
    *(&v80 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestPrefetchLocationProcessor.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v79, 0x12u);
  }

  v9 = v47;
LABEL_39:
  _Block_object_dispose(&v72, 8);
  _Block_object_dispose(&buf, 8);

  v41 = *MEMORY[0x277D85DE8];

  return v9;
}

void __75__PGGraphIngestPrefetchLocationProcessor_regionsWithMoments_progressBlock___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = *(*(a1 + 72) + 8);
  v7 = *(v6 + 24);
  if (0x8F5C28F5C28F5C29 * v7 <= 0xA3D70A3D70A3D70)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v9 = *(a1 + 32);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v26 = *(*(*(a1 + 72) + 8) + 24);
      v27 = Current - *(*(*(a1 + 80) + 8) + 24);
      *buf = 67109632;
      v41 = v26;
      v42 = 1024;
      v43 = 25;
      v44 = 2048;
      v45 = v27;
      _os_log_debug_impl(&dword_22F0FC000, v9, OS_LOG_TYPE_DEBUG, "[PGGraphIngestPrefetchLocationProcessor] Clustered %d moments, batch of %d took %.2f seconds", buf, 0x18u);
    }

    *(*(*(a1 + 80) + 8) + 24) = Current;
    v6 = *(*(a1 + 72) + 8);
    v7 = *(v6 + 24);
  }

  *(v6 + 24) = v7 + 1;
  v10 = objc_autoreleasePoolPush();
  if (*(a1 + 64) && (v11 = CFAbsoluteTimeGetCurrent(), v12 = *(*(a1 + 88) + 8), v11 - *(v12 + 24) >= *(a1 + 112)) && (*(v12 + 24) = v11, buf[0] = 0, (*(*(a1 + 64) + 16))(*(*(*(a1 + 96) + 8) + 24)), *(*(*(a1 + 104) + 8) + 24) |= buf[0], *(*(*(a1 + 104) + 8) + 24) == 1))
  {
    *a3 = 1;
  }

  else
  {
    v13 = [v5 photoLibrary];
    v14 = [v13 librarySpecificFetchOptions];

    v15 = *MEMORY[0x277CD9B08];
    v39[0] = *MEMORY[0x277CD9A78];
    v39[1] = v15;
    v16 = *MEMORY[0x277CD9A70];
    v39[2] = *MEMORY[0x277CD9AC0];
    v39[3] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:4];
    [v14 setFetchPropertySets:v17];

    v18 = [MEMORY[0x277D276B8] feederPrefetchOptionsWithDefaultMode:0];
    [v18 setLocationPrefetchMode:2];
    v19 = [MEMORY[0x277D27710] feederForAssetCollection:v5 options:v14 feederPrefetchOptions:v18 curationContext:*(a1 + 40)];
    [v19 setLocationClusteringAlgorithm:0];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __75__PGGraphIngestPrefetchLocationProcessor_regionsWithMoments_progressBlock___block_invoke_240;
    v32[3] = &unk_27888A110;
    v34 = *(a1 + 96);
    v37 = *(a1 + 120);
    v20 = *(a1 + 64);
    v21 = *(a1 + 88);
    v33 = v20;
    v38 = *(a1 + 112);
    v22 = *(a1 + 104);
    v35 = v21;
    v36 = v22;
    v23 = [v19 locationClustersWithProgressBlock:v32];
    if (*(*(*(a1 + 104) + 8) + 24) == 1)
    {
      *a3 = 1;
    }

    else
    {
      [v5 gpsHorizontalAccuracy];
      v24 = [MEMORY[0x277D3ACD0] horizontalAccuracyIsCoarse:?] ^ 1;
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __75__PGGraphIngestPrefetchLocationProcessor_regionsWithMoments_progressBlock___block_invoke_2;
      v28[3] = &unk_27888A138;
      v29 = *(a1 + 48);
      v31 = v24;
      v30 = *(a1 + 56);
      [v23 enumerateKeysAndObjectsUsingBlock:v28];
      *(*(*(a1 + 96) + 8) + 24) = *(a1 + 120) + *(*(*(a1 + 96) + 8) + 24);
    }
  }

  objc_autoreleasePoolPop(v10);

  v25 = *MEMORY[0x277D85DE8];
}

void __75__PGGraphIngestPrefetchLocationProcessor_regionsWithMoments_progressBlock___block_invoke_240(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    v6 = *(*(*(a1 + 40) + 8) + 24);
    v7 = *(a1 + 64);
    Current = CFAbsoluteTimeGetCurrent();
    v9 = *(*(a1 + 48) + 8);
    if (Current - *(v9 + 24) >= *(a1 + 72))
    {
      *(v9 + 24) = Current;
      (*(*(a1 + 32) + 16))(v6 + v7 * a3);
      *(*(*(a1 + 56) + 8) + 24) = *(*(*(a1 + 56) + 8) + 24);
      if (*(*(*(a1 + 56) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __75__PGGraphIngestPrefetchLocationProcessor_regionsWithMoments_progressBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) addObject:v5];
  if (*(a1 + 48) == 1 && [v6 count])
  {
    v28 = v5;
    v7 = [v6 firstObject];
    v8 = [v7 cls_universalDate];

    v9 = v8;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v27 = v6;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v30;
      v14 = v9;
      do
      {
        v15 = 0;
        v16 = v9;
        v17 = v14;
        do
        {
          if (*v30 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v18 = [*(*(&v29 + 1) + 8 * v15) cls_universalDate];
          v14 = [v17 earlierDate:v18];

          v9 = [v16 laterDate:v18];

          ++v15;
          v16 = v9;
          v17 = v14;
        }

        while (v12 != v15);
        v12 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v12);
    }

    else
    {
      v14 = v9;
    }

    v6 = v27;
    v5 = v28;
    if (v14 && v9)
    {
      v19 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v14 endDate:v9];
      v20 = objc_alloc(MEMORY[0x277CE41F8]);
      [v28 center];
      v22 = v21;
      [v28 center];
      v23 = [v20 initWithLatitude:v22 longitude:?];
      v24 = [*(a1 + 40) locationOfInterestCloseToLocation:v23 inDateInterval:v19];
      v25 = [v24 placemarkRegion];
      if (v25)
      {
        [*(a1 + 32) addObject:v25];
      }
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)runWithGraphUpdate:(id)update progressBlock:(id)block
{
  *(&v56[2] + 4) = *MEMORY[0x277D85DE8];
  updateCopy = update;
  blockCopy = block;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0;
  v33 = _Block_copy(blockCopy);
  if (!v33 || (v6 = CFAbsoluteTimeGetCurrent(), v6 - v48[3] < 0.01) || (v48[3] = v6, LOBYTE(info.numer) = 0, (*(v33 + 2))(v33, &info, 0.0), v7 = *(v52 + 24) | LOBYTE(info.numer), *(v52 + 24) = v7, (v7 & 1) == 0))
  {
    loggingConnection = [(PGGraphBuilder *)self->_graphBuilder loggingConnection];
    v9 = os_signpost_id_generate(loggingConnection);
    v10 = loggingConnection;
    v11 = v10;
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "PGGraphIngestPrefetchLocationProcessor", "", &buf, 2u);
    }

    info = 0;
    mach_timebase_info(&info);
    v29 = mach_absolute_time();
    v12 = [updateCopy momentsToProcessForMomentUpdateTypes:4 includeMomentsToIngest:1];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __75__PGGraphIngestPrefetchLocationProcessor_runWithGraphUpdate_progressBlock___block_invoke;
    v41[3] = &unk_27888A188;
    v13 = v33;
    v42 = v13;
    v43 = &v47;
    v44 = &v51;
    v45 = 0x3F847AE147AE147BLL;
    v31 = v12;
    v14 = [(PGGraphIngestPrefetchLocationProcessor *)self regionsWithMoments:v12 progressBlock:v41];
    if (*(v52 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        buf = 67109378;
        LODWORD(v56[0]) = 73;
        WORD2(v56[0]) = 2080;
        *(v56 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestPrefetchLocationProcessor.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
      }

      goto LABEL_31;
    }

    additionalLocationsToPrefetch = [updateCopy additionalLocationsToPrefetch];
    if (additionalLocationsToPrefetch)
    {
      additionalLocationsToPrefetch2 = [updateCopy additionalLocationsToPrefetch];
      v16 = [v14 setByAddingObjectsFromSet:additionalLocationsToPrefetch2];

      v14 = v16;
    }

    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __75__PGGraphIngestPrefetchLocationProcessor_runWithGraphUpdate_progressBlock___block_invoke_231;
    v36[3] = &unk_27888A188;
    v17 = v13;
    v37 = v17;
    v38 = &v47;
    v39 = &v51;
    v40 = 0x3F847AE147AE147BLL;
    v18 = [(PGGraphIngestPrefetchLocationProcessor *)self prefetchLocationsWithRegions:v14 loggingConnection:v11 progressBlock:v36];
    if (*(v52 + 24) == 1)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_30:

LABEL_31:
        goto LABEL_32;
      }

      buf = 67109378;
      LODWORD(v56[0]) = 85;
      WORD2(v56[0]) = 2080;
      *(v56 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestPrefetchLocationProcessor.m";
      v19 = MEMORY[0x277D86220];
    }

    else
    {
      v20 = v18;
      if ([updateCopy isResumingFullAnalysis])
      {
        [(PGGraphBuilder *)self->_graphBuilder setCanUseLocationDomain:v20];
      }

      v21 = mach_absolute_time();
      numer = info.numer;
      denom = info.denom;
      v24 = v11;
      v25 = v24;
      if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
      {
        LOWORD(buf) = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v25, OS_SIGNPOST_INTERVAL_END, v9, "PGGraphIngestPrefetchLocationProcessor", "", &buf, 2u);
      }

      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        buf = 136315394;
        v56[0] = "PGGraphIngestPrefetchLocationProcessor";
        LOWORD(v56[1]) = 2048;
        *(&v56[1] + 2) = ((((v21 - v29) * numer) / denom) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v25, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", &buf, 0x16u);
      }

      if (!v33)
      {
        goto LABEL_30;
      }

      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v48[3] < 0.01)
      {
        goto LABEL_30;
      }

      v48[3] = Current;
      v35 = 0;
      (*(v17 + 2))(v17, &v35, 1.0);
      v27 = *(v52 + 24) | v35;
      *(v52 + 24) = v27;
      if ((v27 & 1) == 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_30;
      }

      buf = 67109378;
      LODWORD(v56[0]) = 93;
      WORD2(v56[0]) = 2080;
      *(v56 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestPrefetchLocationProcessor.m";
      v19 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_22F0FC000, v19, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
    goto LABEL_30;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    buf = 67109378;
    LODWORD(v56[0]) = 57;
    WORD2(v56[0]) = 2080;
    *(v56 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestPrefetchLocationProcessor.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
  }

LABEL_32:
  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v51, 8);

  v28 = *MEMORY[0x277D85DE8];
}

void __75__PGGraphIngestPrefetchLocationProcessor_runWithGraphUpdate_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.2);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __75__PGGraphIngestPrefetchLocationProcessor_runWithGraphUpdate_progressBlock___block_invoke_231(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.8 + 0.2);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (BOOL)shouldRunWithGraphUpdate:(id)update
{
  updateCopy = update;
  if ([updateCopy hasMomentsToInsert])
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    additionalLocationsToPrefetch = [updateCopy additionalLocationsToPrefetch];
    if ([additionalLocationsToPrefetch count])
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      v4 = ([updateCopy momentUpdateTypes] >> 2) & 1;
    }
  }

  return v4;
}

- (PGGraphIngestPrefetchLocationProcessor)initWithGraphBuilder:(id)builder
{
  builderCopy = builder;
  v9.receiver = self;
  v9.super_class = PGGraphIngestPrefetchLocationProcessor;
  v6 = [(PGGraphIngestPrefetchLocationProcessor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_graphBuilder, builder);
  }

  return v7;
}

@end