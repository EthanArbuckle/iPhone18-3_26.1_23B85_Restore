@interface PGGraphAssetRevGeocodeEnrichmentProcessor
+ (id)homeLocationsWithServiceManager:(id)a3;
- (BOOL)_allowReverseGeocodingWithUpdateType:(int64_t)a3;
- (BOOL)revGeoProviderDidChangeForGraphApplicationDataURL:(id)a3;
- (PGGraphAssetRevGeocodeEnrichmentProcessor)init;
- (void)_processMetricsOfAssetClustersInMoment:(id)a3;
- (void)enrichDataModelWithManager:(id)a3 curationContext:(id)a4 graphUpdateInventory:(id)a5 progressReporter:(id)a6;
- (void)invalidateReverseLocationDataForRevGeoProviderChangeUsingManager:(id)a3 progressBlock:(id)a4;
- (void)sendMetricsForGeocodeProcesssor:(id)a3 toAnalytics:(id)a4 progressBlock:(id)a5;
- (void)setCurrentGeoProviderInGraphApplicationDataURL:(id)a3;
@end

@implementation PGGraphAssetRevGeocodeEnrichmentProcessor

- (BOOL)_allowReverseGeocodingWithUpdateType:(int64_t)a3
{
  v3 = 1;
  if (a3 <= 3 && a3 != 1)
  {
    v4 = [MEMORY[0x277D27798] reachabilityForInternetConnection];
    v3 = [v4 currentNetworkStatus] == 2;
  }

  return v3;
}

- (void)_processMetricsOfAssetClustersInMoment:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = a3;
  v28 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v28)
  {
    v27 = *v36;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v36 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v35 + 1) + 8 * i);
        v6 = [v5 assets];
        v7 = [v6 count];

        v8 = [v5 region];
        v33 = 0;
        v34 = 0;
        [v8 center];
        v33 = v9;
        v34 = v10;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v11 = [v5 assets];
        v12 = [v11 countByEnumeratingWithState:&v29 objects:v39 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v30;
          v15 = 0.0;
LABEL_8:
          v16 = 0;
          while (1)
          {
            if (*v30 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v17 = [*(*(&v29 + 1) + 8 * v16) location];
            [v17 coordinate];

            CLLocationCoordinate2DGetDistanceFrom();
            if (v15 < v18)
            {
              v15 = v18;
            }

            if (v15 >= 100.0)
            {
              break;
            }

            if (v13 == ++v16)
            {
              v13 = [v11 countByEnumeratingWithState:&v29 objects:v39 count:16];
              if (v13)
              {
                goto LABEL_8;
              }

              break;
            }
          }

          v19 = 88;
          if (v15 < 100.0)
          {
            v19 = 80;
          }

          p_numberOfAssetClustersWithin50mOfCenter = (self + v19);
          if (v15 < 50.0)
          {
            p_numberOfAssetClustersWithin50mOfCenter = &self->_numberOfAssetClustersWithin50mOfCenter;
          }

          if (v15 < 20.0)
          {
            p_numberOfAssetClustersWithin50mOfCenter = &self->_numberOfAssetClustersWithin20mOfCenter;
          }

          if (v15 < 10.0)
          {
            p_numberOfAssetClustersWithin50mOfCenter = &self->_numberOfAssetClustersWithin10mOfCenter;
          }
        }

        else
        {

          p_numberOfAssetClustersWithin50mOfCenter = &self->_numberOfAssetClustersWithin10mOfCenter;
        }

        *p_numberOfAssetClustersWithin50mOfCenter = *p_numberOfAssetClustersWithin50mOfCenter + 1.0;
        v21 = self->_sumSquareNumberOfAssetsPerCluster + (v7 * v7);
        self->_sumNumberOfAssetsPerCluster = self->_sumNumberOfAssetsPerCluster + v7;
        self->_sumSquareNumberOfAssetsPerCluster = v21;
      }

      v28 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v28);
  }

  v22 = [obj count];
  v23 = self->_sumSquareNumberOfAssetClustersPerMoment + (v22 * v22);
  self->_sumNumberOfAssetClustersPerMoment = self->_sumNumberOfAssetClustersPerMoment + v22;
  self->_sumSquareNumberOfAssetClustersPerMoment = v23;
  v24.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v24.i64[1] = v22;
  *&self->_numberOfMomentsRevGeocoded = vaddq_s64(*&self->_numberOfMomentsRevGeocoded, v24);

  v25 = *MEMORY[0x277D85DE8];
}

- (void)sendMetricsForGeocodeProcesssor:(id)a3 toAnalytics:(id)a4 progressBlock:(id)a5
{
  v68 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v48 = a4;
  v47 = a5;
  v60 = 0;
  v61 = &v60;
  v62 = 0x2020000000;
  v63 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v59 = 0;
  v49 = _Block_copy(v47);
  if (!v49 || (v8 = CFAbsoluteTimeGetCurrent(), v8 - v57[3] < 0.01) || (v57[3] = v8, v55 = 0, (*(v49 + 2))(v49, &v55, 0.0), v9 = *(v61 + 24) | v55, *(v61 + 24) = v9, (v9 & 1) == 0))
  {
    [v7 sumNumberOfAssetClustersPerMoment];
    v46 = v10;
    v11 = [v7 numberOfMomentsRevGeocoded];
    [v7 sumNumberOfAssetClustersPerMoment];
    v45 = v12;
    [v7 sumSquareNumberOfAssetClustersPerMoment];
    v44 = v13;
    v14 = [v7 numberOfMomentsRevGeocoded];
    [v7 sumNumberOfAssetsPerCluster];
    v16 = v15;
    v17 = [v7 numberOfAssetClustersRevGeocoded];
    [v7 sumNumberOfAssetsPerCluster];
    v19 = v18;
    [v7 sumSquareNumberOfAssetsPerCluster];
    v21 = v20;
    v22 = [v7 numberOfAssetClustersRevGeocoded];
    [v7 numberOfAssetClustersWithin10mOfCenter];
    v24 = v23;
    v25 = [v7 numberOfAssetClustersRevGeocoded];
    [v7 numberOfAssetClustersWithin20mOfCenter];
    v27 = v26;
    v28 = [v7 numberOfAssetClustersRevGeocoded];
    [v7 numberOfAssetClustersWithin50mOfCenter];
    v30 = v29;
    v31 = [v7 numberOfAssetClustersRevGeocoded];
    [v7 numberOfAssetClustersWithin100mOfCenter];
    v33 = v32;
    v34 = [v7 numberOfAssetClustersRevGeocoded];
    [v7 numberOfAssetClusters100mPlusFromCenter];
    v36 = -[PGRevGeoMetricEvent initWithNumberOfAssetClustersPerMomentMean:numberOfAssetClustersPerMomentStdDev:numberOfAssetsPerClusterMean:numberOfAssetsPerClusterStdDev:ratioAssetClustersWithin10mOfCenter:ratioAssetClustersWithin20mOfCenter:ratioAssetClustersWithin50mOfCenter:ratioAssetClustersWithin100mOfCenter:ratioAssetClusters100mPlusFromCenter:]([PGRevGeoMetricEvent alloc], "initWithNumberOfAssetClustersPerMomentMean:numberOfAssetClustersPerMomentStdDev:numberOfAssetsPerClusterMean:numberOfAssetsPerClusterStdDev:ratioAssetClustersWithin10mOfCenter:ratioAssetClustersWithin20mOfCenter:ratioAssetClustersWithin50mOfCenter:ratioAssetClustersWithin100mOfCenter:ratioAssetClusters100mPlusFromCenter:", v46 / v11, sqrt(v14 * v44 - v45 * v45) / v14, v16 / v17, sqrt(v22 * v21 - v19 * v19) / v22, v24 / v25, v27 / v28, v30 / v31, v33 / v34, v35 / [v7 numberOfAssetClustersRevGeocoded]);
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __103__PGGraphAssetRevGeocodeEnrichmentProcessor_sendMetricsForGeocodeProcesssor_toAnalytics_progressBlock___block_invoke;
    v50[3] = &unk_27888A188;
    v37 = v49;
    v51 = v37;
    v52 = &v56;
    v53 = &v60;
    v54 = 0x3F847AE147AE147BLL;
    [(PGAbstractMetricEvent *)v36 gatherMetricsWithProgressBlock:v50];
    if (*(v61 + 24) == 1)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_15:

        goto LABEL_16;
      }

      *buf = 67109378;
      v65 = 305;
      v66 = 2080;
      v67 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphAssetRevGeocodeEnrichmentProcessor.m";
      v38 = MEMORY[0x277D86220];
    }

    else
    {
      v39 = [(PGRevGeoMetricEvent *)v36 identifier];
      v40 = [(PGRevGeoMetricEvent *)v36 payload];
      [v48 sendEvent:v39 withPayload:v40];

      if (!v49)
      {
        goto LABEL_15;
      }

      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v57[3] < 0.01)
      {
        goto LABEL_15;
      }

      v57[3] = Current;
      v55 = 0;
      (*(v37 + 2))(v37, &v55, 1.0);
      v42 = *(v61 + 24) | v55;
      *(v61 + 24) = v42;
      if ((v42 & 1) == 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_15;
      }

      *buf = 67109378;
      v65 = 308;
      v66 = 2080;
      v67 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphAssetRevGeocodeEnrichmentProcessor.m";
      v38 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_22F0FC000, v38, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    goto LABEL_15;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v65 = 287;
    v66 = 2080;
    v67 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphAssetRevGeocodeEnrichmentProcessor.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_16:
  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(&v60, 8);

  v43 = *MEMORY[0x277D85DE8];
}

void __103__PGGraphAssetRevGeocodeEnrichmentProcessor_sendMetricsForGeocodeProcesssor_toAnalytics_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.1);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (void)enrichDataModelWithManager:(id)a3 curationContext:(id)a4 graphUpdateInventory:(id)a5 progressReporter:(id)a6
{
  v98 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v75 = a4;
  v76 = a5;
  v11 = a6;
  v91 = 0;
  v92 = &v91;
  v93 = 0x2020000000;
  v94 = 0;
  v12 = [v11 isCancelledWithProgress:0.0];
  *(v92 + 24) = v12;
  if (!v12)
  {
    v13 = [v10 enrichmentLoggingConnection];
    v14 = os_signpost_id_generate(v13);
    v15 = v13;
    v16 = v15;
    v72 = v14 - 1;
    spid = v14;
    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "PGGraphAssetRevGeocodeEnrichmentProcessor", "", buf, 2u);
    }

    info = 0;
    mach_timebase_info(&info);
    v71 = mach_absolute_time();
    if (-[PGGraphAssetRevGeocodeEnrichmentProcessor _allowReverseGeocodingWithUpdateType:](self, "_allowReverseGeocodingWithUpdateType:", [v76 updateType]))
    {
      v70 = [v10 photoLibrary];
      v74 = [v70 pg_urlForGraphApplicationData];
      if (!v74)
      {
        v23 = +[PGLogging sharedLogging];
        v24 = [v23 loggingConnection];

        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_22F0FC000, v24, OS_LOG_TYPE_ERROR, "AssetsRevGeocoding: nil graph application data URL", buf, 2u);
        }

        if (v92[3])
        {
          *(v92 + 24) = 1;
        }

        else
        {
          v30 = [v11 isCancelledWithProgress:1.0];
          *(v92 + 24) = v30;
          if ((v30 & 1) == 0)
          {
            v42 = mach_absolute_time();
            numer = info.numer;
            denom = info.denom;
            v45 = v16;
            v46 = v45;
            if (v72 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v45))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_22F0FC000, v46, OS_SIGNPOST_INTERVAL_END, v14, "PGGraphAssetRevGeocodeEnrichmentProcessor", "", buf, 2u);
            }

            if (!os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
            {
              goto LABEL_83;
            }

            *buf = 136315394;
            *v97 = "PGGraphAssetRevGeocodeEnrichmentProcessor";
            *&v97[8] = 2048;
            *&v97[10] = ((((v42 - v71) * numer) / denom) / 1000000.0);
            v32 = "[Performance] %s: %f ms";
            v31 = v46;
            v34 = 22;
            goto LABEL_41;
          }
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v97 = 220;
          *&v97[4] = 2080;
          *&v97[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphAssetRevGeocodeEnrichmentProcessor.m";
          v31 = MEMORY[0x277D86220];
          v32 = "Cancelled at line %d in file %s";
LABEL_40:
          v34 = 18;
LABEL_41:
          _os_log_impl(&dword_22F0FC000, v31, OS_LOG_TYPE_INFO, v32, buf, v34);
        }

LABEL_83:

        goto LABEL_84;
      }

      if ([(PGGraphAssetRevGeocodeEnrichmentProcessor *)self revGeoProviderDidChangeForGraphApplicationDataURL:?])
      {
        v87[0] = MEMORY[0x277D85DD0];
        v87[1] = 3221225472;
        v87[2] = __126__PGGraphAssetRevGeocodeEnrichmentProcessor_enrichDataModelWithManager_curationContext_graphUpdateInventory_progressReporter___block_invoke;
        v87[3] = &unk_278889448;
        v89 = &v91;
        v88 = v11;
        [(PGGraphAssetRevGeocodeEnrichmentProcessor *)self invalidateReverseLocationDataForRevGeoProviderChangeUsingManager:v10 progressBlock:v87];
        if (*(v92 + 24) == 1)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v97 = 230;
            *&v97[4] = 2080;
            *&v97[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphAssetRevGeocodeEnrichmentProcessor.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          goto LABEL_83;
        }

        [(PGGraphAssetRevGeocodeEnrichmentProcessor *)self setCurrentGeoProviderInGraphApplicationDataURL:v74];
      }

      if (v92[3])
      {
        *(v92 + 24) = 1;
        goto LABEL_38;
      }

      v33 = [v11 isCancelledWithProgress:0.2];
      *(v92 + 24) = v33;
      if (v33)
      {
LABEL_38:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v97 = 235;
          *&v97[4] = 2080;
          *&v97[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphAssetRevGeocodeEnrichmentProcessor.m";
          v31 = MEMORY[0x277D86220];
          v32 = "Cancelled at line %d in file %s";
          goto LABEL_40;
        }

        goto LABEL_83;
      }

      v35 = [MEMORY[0x277CBEB58] set];
      v69 = [v76 isResumingFullAnalysis];
      if ((v69 & 1) == 0)
      {
        [v76 momentsToProcessForMomentUpdateTypes:20 includeMomentsToIngest:1];
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v36 = v84 = 0u;
        v37 = [v36 countByEnumeratingWithState:&v83 objects:v95 count:16];
        if (v37)
        {
          v38 = *v84;
          do
          {
            for (i = 0; i != v37; ++i)
            {
              if (*v84 != v38)
              {
                objc_enumerationMutation(v36);
              }

              v40 = [*(*(&v83 + 1) + 8 * i) uuid];
              [v35 addObject:v40];
            }

            v37 = [v36 countByEnumeratingWithState:&v83 objects:v95 count:16];
          }

          while (v37);
        }
      }

      v41 = [PGRevGeocodeProcessor momentsRequiringRevGeocodingWithUUIDs:v35 inPhotoLibrary:v70 defaultToAllAssets:v69 loggingConnection:v16];
      if (v92[3])
      {
        *(v92 + 24) = 1;
        goto LABEL_59;
      }

      v47 = [v11 isCancelledWithProgress:0.3];
      *(v92 + 24) = v47;
      if (v47)
      {
LABEL_59:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v97 = 252;
          *&v97[4] = 2080;
          *&v97[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphAssetRevGeocodeEnrichmentProcessor.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        goto LABEL_82;
      }

      v48 = objc_opt_class();
      v49 = [v10 serviceManager];
      v50 = [v48 homeLocationsWithServiceManager:v49];
      homeLocations = self->_homeLocations;
      self->_homeLocations = v50;

      v52 = [PGRevGeocodeProcessor alloc];
      v53 = self->_homeLocations;
      v54 = [v10 locationCache];
      v55 = [(PGRevGeocodeProcessor *)v52 initWithPhotoLibrary:v70 homeLocations:v53 loggingConnection:v16 locationCache:v54];

      v80[0] = MEMORY[0x277D85DD0];
      v80[1] = 3221225472;
      v80[2] = __126__PGGraphAssetRevGeocodeEnrichmentProcessor_enrichDataModelWithManager_curationContext_graphUpdateInventory_progressReporter___block_invoke_269;
      v80[3] = &unk_278889448;
      v82 = &v91;
      v56 = v11;
      v81 = v56;
      v57 = [(PGRevGeocodeProcessor *)v55 revGeocodeMoments:v41 progressBlock:v80];
      if (v92[3])
      {
        *(v92 + 24) = 1;
      }

      else
      {
        v58 = v57;
        v59 = [v56 isCancelledWithProgress:0.7];
        *(v92 + 24) = v59;
        if ((v59 & 1) == 0)
        {
          if (!v58)
          {
            goto LABEL_81;
          }

          if ([(PGRevGeocodeProcessor *)v55 numberOfMomentsRevGeocoded]&& [(PGRevGeocodeProcessor *)v55 numberOfAssetClustersRevGeocoded])
          {
            v61 = [v10 analytics];
            v77[0] = MEMORY[0x277D85DD0];
            v77[1] = 3221225472;
            v77[2] = __126__PGGraphAssetRevGeocodeEnrichmentProcessor_enrichDataModelWithManager_curationContext_graphUpdateInventory_progressReporter___block_invoke_270;
            v77[3] = &unk_278889448;
            v79 = &v91;
            v78 = v56;
            [(PGGraphAssetRevGeocodeEnrichmentProcessor *)self sendMetricsForGeocodeProcesssor:v55 toAnalytics:v61 progressBlock:v77];
          }

          v62 = mach_absolute_time();
          v63 = info.numer;
          v64 = info.denom;
          v65 = v16;
          v66 = v65;
          if (v72 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v65))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_22F0FC000, v66, OS_SIGNPOST_INTERVAL_END, spid, "PGGraphAssetRevGeocodeEnrichmentProcessor", "", buf, 2u);
          }

          if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            *v97 = "PGGraphAssetRevGeocodeEnrichmentProcessor";
            *&v97[8] = 2048;
            *&v97[10] = ((((v62 - v71) * v63) / v64) / 1000000.0);
            _os_log_impl(&dword_22F0FC000, v66, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
          }

          if (v92[3])
          {
            *(v92 + 24) = 1;
          }

          else
          {
            v67 = [v56 isCancelledWithProgress:1.0];
            *(v92 + 24) = v67;
            if ((v67 & 1) == 0)
            {
              goto LABEL_81;
            }
          }

          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            goto LABEL_81;
          }

          *buf = 67109378;
          *v97 = 270;
          *&v97[4] = 2080;
          *&v97[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphAssetRevGeocodeEnrichmentProcessor.m";
          v60 = MEMORY[0x277D86220];
          goto LABEL_66;
        }
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_81:

LABEL_82:
        goto LABEL_83;
      }

      *buf = 67109378;
      *v97 = 258;
      *&v97[4] = 2080;
      *&v97[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphAssetRevGeocodeEnrichmentProcessor.m";
      v60 = MEMORY[0x277D86220];
LABEL_66:
      _os_log_impl(&dword_22F0FC000, v60, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      goto LABEL_81;
    }

    v17 = +[PGLogging sharedLogging];
    v18 = [v17 loggingConnection];

    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22F0FC000, v18, OS_LOG_TYPE_INFO, "AssetsRevGeocoding: reverse geocoding not allowed", buf, 2u);
    }

    if (v92[3])
    {
      *(v92 + 24) = 1;
    }

    else
    {
      v19 = [v11 isCancelledWithProgress:1.0];
      *(v92 + 24) = v19;
      if ((v19 & 1) == 0)
      {
        v25 = mach_absolute_time();
        v26 = info.numer;
        v27 = info.denom;
        v28 = v16;
        v29 = v28;
        if (v72 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_22F0FC000, v29, OS_SIGNPOST_INTERVAL_END, v14, "PGGraphAssetRevGeocodeEnrichmentProcessor", "", buf, 2u);
        }

        if (!os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          goto LABEL_84;
        }

        *buf = 136315394;
        *v97 = "PGGraphAssetRevGeocodeEnrichmentProcessor";
        *&v97[8] = 2048;
        *&v97[10] = ((((v25 - v71) * v26) / v27) / 1000000.0);
        v21 = "[Performance] %s: %f ms";
        v20 = v29;
        v22 = 22;
        goto LABEL_30;
      }
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
LABEL_84:

      goto LABEL_85;
    }

    *buf = 67109378;
    *v97 = 209;
    *&v97[4] = 2080;
    *&v97[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphAssetRevGeocodeEnrichmentProcessor.m";
    v20 = MEMORY[0x277D86220];
    v21 = "Cancelled at line %d in file %s";
    v22 = 18;
LABEL_30:
    _os_log_impl(&dword_22F0FC000, v20, OS_LOG_TYPE_INFO, v21, buf, v22);
    goto LABEL_84;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *v97 = 199;
    *&v97[4] = 2080;
    *&v97[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphAssetRevGeocodeEnrichmentProcessor.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_85:
  _Block_object_dispose(&v91, 8);

  v68 = *MEMORY[0x277D85DE8];
}

uint64_t __126__PGGraphAssetRevGeocodeEnrichmentProcessor_enrichDataModelWithManager_curationContext_graphUpdateInventory_progressReporter___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  v5 = *(*(a1 + 40) + 8);
  if (*(v5 + 24))
  {
    result = 1;
  }

  else
  {
    result = [*(a1 + 32) isCancelledWithProgress:a3 * 0.2];
    v5 = *(*(a1 + 40) + 8);
  }

  *(v5 + 24) = result;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a2 = 1;
  }

  return result;
}

uint64_t __126__PGGraphAssetRevGeocodeEnrichmentProcessor_enrichDataModelWithManager_curationContext_graphUpdateInventory_progressReporter___block_invoke_269(uint64_t a1, _BYTE *a2, double a3)
{
  v5 = *(*(a1 + 40) + 8);
  if (*(v5 + 24))
  {
    result = 1;
  }

  else
  {
    result = [*(a1 + 32) isCancelledWithProgress:a3 * 0.3 + 0.3];
    v5 = *(*(a1 + 40) + 8);
  }

  *(v5 + 24) = result;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a2 = 1;
  }

  return result;
}

uint64_t __126__PGGraphAssetRevGeocodeEnrichmentProcessor_enrichDataModelWithManager_curationContext_graphUpdateInventory_progressReporter___block_invoke_270(uint64_t a1, _BYTE *a2, double a3)
{
  v5 = *(*(a1 + 40) + 8);
  if (*(v5 + 24))
  {
    result = 1;
  }

  else
  {
    result = [*(a1 + 32) isCancelledWithProgress:a3 * 0.3 + 0.7];
    v5 = *(*(a1 + 40) + 8);
  }

  *(v5 + 24) = result;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a2 = 1;
  }

  return result;
}

- (void)invalidateReverseLocationDataForRevGeoProviderChangeUsingManager:(id)a3 progressBlock:(id)a4
{
  v63[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 enrichmentLoggingConnection];
  v8 = os_signpost_id_generate(v7);
  v9 = v7;
  v10 = v9;
  v45 = v8 - 1;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "InvalidReverseLocationRevGeoProviderChange", "", buf, 2u);
  }

  spid = v8;
  v48 = v10;

  info = 0;
  mach_timebase_info(&info);
  v44 = mach_absolute_time();
  v49 = v6;
  v11 = _Block_copy(v6);
  v50 = v5;
  v12 = [v5 photoLibrary];
  v13 = [v12 librarySpecificFetchOptions];
  v63[0] = *MEMORY[0x277CD9AF8];
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:1];
  [v13 addFetchPropertySets:v14];

  [v13 setIncludeGuestAssets:1];
  v15 = [MEMORY[0x277CCAC30] predicateWithFormat:@"additionalAttributes.reverseLocationDataIsValid == YES"];
  [v13 setInternalPredicate:v15];

  v47 = v13;
  v16 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:v13];
  v17 = dispatch_group_create();
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __124__PGGraphAssetRevGeocodeEnrichmentProcessor_invalidateReverseLocationDataForRevGeoProviderChangeUsingManager_progressBlock___block_invoke;
  aBlock[3] = &unk_278884D60;
  group = v17;
  v56 = group;
  v46 = v12;
  v57 = v46;
  v18 = _Block_copy(aBlock);
  v19 = [MEMORY[0x277CBEB18] array];
  v51 = v18;
  if ([v16 count])
  {
    v53 = 0;
    v20 = 0;
    v21 = 0.0;
    while (1)
    {
      v22 = objc_autoreleasePoolPush();
      v23 = [v16 objectAtIndex:v20];
      v24 = MEMORY[0x277D3ACD0];
      [v23 locationCoordinate];
      if ([v24 canUseCoordinate:?])
      {
        v25 = MEMORY[0x277D3AD68];
        v26 = [v23 photosOneUpProperties];
        v27 = [v26 reverseLocationData];
        v28 = [v25 infoFromPlistData:v27];

        if (([v28 locationWasResolvedWithBestRevGeoProvider] & 1) == 0)
        {
          [v19 addObject:v23];
        }

        if ([v19 count] >= 0x3E8)
        {
          dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
          v29 = [v19 copy];
          v51[2](v51, v29);

          v53 += [v19 count];
          [v19 removeAllObjects];
        }

        if (v11)
        {
          Current = CFAbsoluteTimeGetCurrent();
          if (Current - v21 >= 0.01)
          {
            v54 = 0;
            v11[2](v11, &v54, 0.5);
            if (v54)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                *buf = 67109378;
                *v60 = 183;
                *&v60[4] = 2080;
                *&v60[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphAssetRevGeocodeEnrichmentProcessor.m";
                _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
              }

              objc_autoreleasePoolPop(v22);
              v33 = v48;
              v31 = v51;
              goto LABEL_28;
            }

            v21 = Current;
          }
        }
      }

      objc_autoreleasePoolPop(v22);
      if (++v20 >= [v16 count])
      {
        goto LABEL_19;
      }
    }
  }

  v53 = 0;
LABEL_19:
  if ([v19 count])
  {
    v31 = v51;
    v51[2](v51, v19);
    v32 = [v19 count] + v53;
    v33 = v48;
  }

  else
  {
    v33 = v48;
    v31 = v51;
    v32 = v53;
  }

  dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
  v34 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v37 = v33;
  v38 = v37;
  if (v45 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
  {
    *buf = 134217984;
    *v60 = v32;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v38, OS_SIGNPOST_INTERVAL_END, spid, "InvalidReverseLocationRevGeoProviderChange", "%ld assets invalidated", buf, 0xCu);
  }

  v39 = v38;
  if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
  {
    v40 = (((v34 - v44) * numer) / denom) / 1000000.0;
    v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld assets invalidated", v32];
    *buf = 136315650;
    *v60 = "InvalidReverseLocationRevGeoProviderChange";
    *&v60[8] = 2112;
    *&v60[10] = v41;
    v61 = 2048;
    v62 = v40;
    _os_log_impl(&dword_22F0FC000, v39, OS_LOG_TYPE_INFO, "[Performance] %s - %@: %f ms", buf, 0x20u);
  }

LABEL_28:
  v42 = *MEMORY[0x277D85DE8];
}

void __124__PGGraphAssetRevGeocodeEnrichmentProcessor_invalidateReverseLocationDataForRevGeoProviderChangeUsingManager_progressBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_group_enter(*(a1 + 32));
  v4 = *(a1 + 40);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __124__PGGraphAssetRevGeocodeEnrichmentProcessor_invalidateReverseLocationDataForRevGeoProviderChangeUsingManager_progressBlock___block_invoke_2;
  v8[3] = &unk_27888A660;
  v9 = v3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __124__PGGraphAssetRevGeocodeEnrichmentProcessor_invalidateReverseLocationDataForRevGeoProviderChangeUsingManager_progressBlock___block_invoke_3;
  v6[3] = &unk_278884D38;
  v7 = *(a1 + 32);
  v5 = v3;
  [v4 performChanges:v8 completionHandler:v6];
}

void __124__PGGraphAssetRevGeocodeEnrichmentProcessor_invalidateReverseLocationDataForRevGeoProviderChangeUsingManager_progressBlock___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v9;
    do
    {
      v5 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = [MEMORY[0x277CD97B0] changeRequestForAsset:{*(*(&v8 + 1) + 8 * v5), v8}];
        [v6 setReverseLocationData:0];
        [v6 setReverseLocationDataIsValid:0];

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __124__PGGraphAssetRevGeocodeEnrichmentProcessor_invalidateReverseLocationDataForRevGeoProviderChangeUsingManager_progressBlock___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = +[PGLogging sharedLogging];
    v7 = [v6 loggingConnection];

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_error_impl(&dword_22F0FC000, v7, OS_LOG_TYPE_ERROR, "Cannot reset the reverse location information with error %@", &v9, 0xCu);
    }
  }

  dispatch_group_leave(*(a1 + 32));

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setCurrentGeoProviderInGraphApplicationDataURL:(id)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = [a3 URLByAppendingPathComponent:@"revgeoprovider.plist"];
  v4 = [MEMORY[0x277D3AD60] currentRevGeoProvider];
  v14 = @"revgeoprovider";
  v15[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v11 = 0;
  v6 = [v5 writeToURL:v3 error:&v11];
  v7 = v11;
  if ((v6 & 1) == 0)
  {
    v8 = +[PGLogging sharedLogging];
    v9 = [v8 loggingConnection];

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v7;
      _os_log_error_impl(&dword_22F0FC000, v9, OS_LOG_TYPE_ERROR, "AssetsRevGeocoding: Could not save the new rev geo provider with error (%@)", buf, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)revGeoProviderDidChangeForGraphApplicationDataURL:(id)a3
{
  v3 = [a3 URLByAppendingPathComponent:@"revgeoprovider.plist"];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v3];
  v5 = [MEMORY[0x277D3AD60] currentRevGeoProvider];
  v6 = [v4 objectForKeyedSubscript:@"revgeoprovider"];
  v7 = [v5 isEqualToString:v6];

  return v7 ^ 1;
}

- (PGGraphAssetRevGeocodeEnrichmentProcessor)init
{
  v6.receiver = self;
  v6.super_class = PGGraphAssetRevGeocodeEnrichmentProcessor;
  v2 = [(PGGraphAssetRevGeocodeEnrichmentProcessor *)&v6 init];
  v3 = v2;
  if (v2)
  {
    homeLocations = v2->_homeLocations;
    v2->_homeLocations = MEMORY[0x277CBEBF8];

    v3->_requiresValidGraph = 0;
  }

  return v3;
}

+ (id)homeLocationsWithServiceManager:(id)a3
{
  v3 = MEMORY[0x277CBEB18];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [v4 mePerson];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __77__PGGraphAssetRevGeocodeEnrichmentProcessor_homeLocationsWithServiceManager___block_invoke;
  v9[3] = &unk_278884D88;
  v7 = v5;
  v10 = v7;
  [v6 enumerateAddressesOfType:0 asCLLocationsWithBlock:v9];

  return v7;
}

@end