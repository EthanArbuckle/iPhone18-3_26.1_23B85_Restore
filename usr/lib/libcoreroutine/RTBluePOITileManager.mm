@interface RTBluePOITileManager
- (BOOL)_purgeCompiledModelsIfStorageLimitExceededWithError:(id *)a3;
- (BOOL)_removeBluePOITilesWithGeoTileKeys:(id)a3 modelURLs:(id)a4 outError:(id *)a5;
- (BOOL)_validateMetadata:(id)a3;
- (RTBluePOITileManager)initWithBatteryManager:(id)a3 bluePOIMetricManager:(id)a4 bluePOITileStore:(id)a5 defaultsManager:(id)a6 distanceCalculator:(id)a7 fileManager:(id)a8 geoExternalTileLoader:(id)a9 learnedLocationStore:(id)a10 mapServiceManager:(id)a11 platform:(id)a12 xpcActivityManager:(id)a13;
- (double)totalModelSizeInKB;
- (id)_compileCoreMLModelAtURL:(id)a3 outError:(id *)a4;
- (id)_downloadBluePOITilesWithDownloadKeys:(id)a3 collectMetrics:(BOOL)a4 outError:(id *)a5;
- (id)_lazyLoadProtobufTileWithGeoTileKey:(unint64_t)a3 outError:(id *)a4;
- (id)_validateTiles:(id)a3;
- (id)downloadKeyForLocation:(id)a3;
- (id)downloadKeysForLocation:(id)a3 radius:(double)a4;
- (id)geoTileKeysForLocation:(id)a3 radius:(double)a4;
- (id)selectDownloadKeysFromCandidates:(id)a3;
- (unint64_t)geoTileKeyForLocation:(id)a3;
- (unint64_t)geoTileKeyForLocationDeprecated:(id)a3;
- (void)_addToPendingTiles:(id)a3;
- (void)_fetchBluePOIMetadataWithHandler:(id)a3;
- (void)_fetchBluePOITileAtLocation:(id)a3 priority:(unint64_t)a4 validateTile:(BOOL)a5 collectMetrics:(BOOL)a6 handler:(id)a7;
- (void)_fetchBluePOITilesForDownloadKeys:(id)a3 atIndex:(unint64_t)a4 batchSize:(unint64_t)a5 priority:(unint64_t)a6 validateTile:(BOOL)a7 handler:(id)a8;
- (void)_fetchBluePOITilesForDownloadKeys:(id)a3 priority:(unint64_t)a4 validateTile:(BOOL)a5 collectMetrics:(BOOL)a6 handler:(id)a7;
- (void)_fetchCandidatesForTilePredownloadingOnBatteryWithHandler:(id)a3;
- (void)_fetchCandidatesForTilePredownloadingOnChargerWithHandler:(id)a3;
- (void)_fetchPOICategoryDenyListWithHandler:(id)a3;
- (void)_fetchPredictedLocationsForTimeInterval:(double)a3 limit:(unint64_t)a4 minProbability:(double)a5 handler:(id)a6;
- (void)_onBatteryManagerNotification:(id)a3;
- (void)_onBluePOITileStoreNotification:(id)a3;
- (void)_onVisitManagerVisitIncidentNotification:(id)a3;
- (void)_performPurgeOfType:(int64_t)a3 referenceDate:(id)a4 completion:(id)a5;
- (void)_predownloadBluePOITileForPredictedLocationWithHandler:(id)a3;
- (void)_predownloadBluePOITilesOnChargerWithHandler:(id)a3;
- (void)_registerXpcActivityPredownloadTileOnBattery;
- (void)_registerXpcActivityPredownloadTileOnCharger;
- (void)_registerXpcActivityRetryDownloadTiles;
- (void)_setup;
- (void)_shutdownWithHandler:(id)a3;
- (void)_unregisterXpcActivityPredownloadTileOnBattery;
- (void)_unregisterXpcActivityRetryDownloadTiles;
- (void)fetchBluePOIMetadataWithHandler:(id)a3;
- (void)fetchBluePOITileAtLocation:(id)a3 priority:(unint64_t)a4 validateTile:(BOOL)a5 collectMetrics:(BOOL)a6 handler:(id)a7;
- (void)fetchBluePOITileWithGeoTileKey:(unint64_t)a3 handler:(id)a4;
- (void)fetchBluePOITilesForDownloadKeys:(id)a3 priority:(unint64_t)a4 validateTile:(BOOL)a5 collectMetrics:(BOOL)a6 handler:(id)a7;
- (void)fetchPOICategoryDenyListWithHandler:(id)a3;
- (void)onBatteryManagerNotification:(id)a3;
- (void)onBluePOITileStoreNotification:(id)a3;
- (void)onVisitManagerVisitIncidentNotification:(id)a3;
- (void)performPurgeOfType:(int64_t)a3 referenceDate:(id)a4 completion:(id)a5;
- (void)predownloadBluePOITileForPredictedLocationWithHandler:(id)a3;
- (void)predownloadBluePOITilesOnChargerWithHandler:(id)a3;
- (void)setPredownloadBluePOITiles:(BOOL)a3;
- (void)setRetryDownloadBluePOITiles:(BOOL)a3;
- (void)setVisitManager:(id)a3;
- (void)storeBluePOITiles:(id)a3 handler:(id)a4;
@end

@implementation RTBluePOITileManager

- (RTBluePOITileManager)initWithBatteryManager:(id)a3 bluePOIMetricManager:(id)a4 bluePOITileStore:(id)a5 defaultsManager:(id)a6 distanceCalculator:(id)a7 fileManager:(id)a8 geoExternalTileLoader:(id)a9 learnedLocationStore:(id)a10 mapServiceManager:(id)a11 platform:(id)a12 xpcActivityManager:(id)a13
{
  v18 = a3;
  v50 = a4;
  v19 = a4;
  v51 = a5;
  v55 = a5;
  v52 = a6;
  v20 = a6;
  v53 = a7;
  v21 = a7;
  v54 = a8;
  v22 = a8;
  v23 = a9;
  v24 = a10;
  v59 = a11;
  v60 = a12;
  v25 = a13;
  v57 = v25;
  v58 = v18;
  if (!v18)
  {
    v26 = v19;
    v44 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v44, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: batteryManager", buf, 2u);
    }

    v43 = 0;
    v27 = v55;
    v28 = v24;
    goto LABEL_21;
  }

  v26 = v19;
  if (!v19)
  {
    v45 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    v27 = v55;
    v28 = v24;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v45, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: bluePOIMetricManager", buf, 2u);
    }

    v43 = 0;
LABEL_21:
    v29 = v59;
LABEL_42:
    v42 = self;
    goto LABEL_43;
  }

  v27 = v55;
  v28 = v24;
  if (!v55)
  {
    v46 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    v29 = v59;
    if (!os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_41;
    }

    *buf = 0;
    v47 = "Invalid parameter not satisfying: bluePOITileStore";
LABEL_40:
    _os_log_error_impl(&dword_2304B3000, v46, OS_LOG_TYPE_ERROR, v47, buf, 2u);
    goto LABEL_41;
  }

  v29 = v59;
  if (!v20)
  {
    v46 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_41;
    }

    *buf = 0;
    v47 = "Invalid parameter not satisfying: defaultsManager";
    goto LABEL_40;
  }

  if (!v21)
  {
    v46 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_41;
    }

    *buf = 0;
    v47 = "Invalid parameter not satisfying: distanceCalculator";
    goto LABEL_40;
  }

  if (!v22)
  {
    v46 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_41;
    }

    *buf = 0;
    v47 = "Invalid parameter not satisfying: fileManager";
    goto LABEL_40;
  }

  if (!v23)
  {
    v46 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_41;
    }

    *buf = 0;
    v47 = "Invalid parameter not satisfying: geoExternalTileLoader";
    goto LABEL_40;
  }

  if (!v28)
  {
    v46 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_41;
    }

    *buf = 0;
    v47 = "Invalid parameter not satisfying: learnedLocationStore";
    goto LABEL_40;
  }

  if (!v59)
  {
    v46 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_41;
    }

    *buf = 0;
    v47 = "Invalid parameter not satisfying: mapServiceManager";
    goto LABEL_40;
  }

  if (!v60)
  {
    v46 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_41;
    }

    *buf = 0;
    v47 = "Invalid parameter not satisfying: platform";
    goto LABEL_40;
  }

  if (!v25)
  {
    v46 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v47 = "Invalid parameter not satisfying: xpcActivityManager";
      goto LABEL_40;
    }

LABEL_41:

    v43 = 0;
    goto LABEL_42;
  }

  v61.receiver = self;
  v61.super_class = RTBluePOITileManager;
  v30 = [(RTNotifier *)&v61 init];
  v31 = v30;
  if (v30)
  {
    objc_storeStrong(&v30->_batteryManager, a3);
    objc_storeStrong(&v31->_bluePOIMetricManager, v50);
    objc_storeStrong(&v31->_bluePOITileStore, v51);
    objc_storeStrong(&v31->_defaultsManager, v52);
    objc_storeStrong(&v31->_distanceCalculator, v53);
    objc_storeStrong(&v31->_fileManager, v54);
    objc_storeStrong(&v31->_tileLoader, a9);
    objc_storeStrong(&v31->_learnedLocationStore, a10);
    objc_storeStrong(&v31->_mapServiceManager, a11);
    objc_storeStrong(&v31->_platform, a12);
    objc_storeStrong(&v31->_xpcActivityManager, a13);
    v32 = [MEMORY[0x277CCAA00] pathInCacheDirectory:@"BluePOIModels"];
    bluePOIModelPath = v31->_bluePOIModelPath;
    v31->_bluePOIModelPath = v32;

    v34 = [MEMORY[0x277CCAA00] frameworkBundle];
    v35 = [v34 pathForResource:@"BluePOITiles" ofType:0];
    bluePOITilePath = v31->_bluePOITilePath;
    v31->_bluePOITilePath = v35;

    v29 = v59;
    v37 = [MEMORY[0x277CCAA00] pathInCacheDirectory:@"BluePOITemp"];
    bluePOITempPath = v31->_bluePOITempPath;
    v31->_bluePOITempPath = v37;

    v31->_predownloadBluePOITiles = 0;
    currentVisit = v31->_currentVisit;
    v31->_currentVisit = 0;

    v40 = objc_opt_new();
    pendingTiles = v31->_pendingTiles;
    v31->_pendingTiles = v40;

    v31->_retryDownloadBluePOITiles = 0;
  }

  [(RTService *)v31 setup];
  v42 = v31;
  v43 = v42;
LABEL_43:

  return v43;
}

- (void)_setup
{
  v66 = *MEMORY[0x277D85DE8];
  if (_os_feature_enabled_impl())
  {
    v4 = [(RTBluePOITileManager *)self bluePOITileStore];
    v5 = +[(RTNotification *)RTStoreNotificationAvailabilityDidChange];
    [v4 addObserver:self selector:sel_onBluePOITileStoreNotification_ name:v5];

    v6 = [(RTBluePOITileManager *)self batteryManager];
    v7 = +[(RTNotification *)RTBatteryManagerNotificationChargerConnected];
    [v6 addObserver:self selector:sel_onBatteryManagerNotification_ name:v7];

    v56 = 0;
    v8 = [(RTBluePOITileManager *)self fileManager];
    v9 = [(RTBluePOITileManager *)self bluePOIModelPath];
    LODWORD(v7) = [v8 fileExistsAtPath:v9 isDirectory:&v56];
    v10 = v56;

    if (!v7 || (v10 & 1) == 0)
    {
      v11 = [(RTBluePOITileManager *)self fileManager];
      v12 = [(RTBluePOITileManager *)self bluePOIModelPath];
      v55 = 0;
      v13 = [v11 createDirectoryAtPath:v12 withIntermediateDirectories:1 attributes:0 error:&v55];
      v14 = v55;

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v15 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = NSStringFromSelector(a2);
          v17 = [(RTBluePOITileManager *)self bluePOIModelPath];
          v18 = v17;
          v19 = @"NO";
          *buf = 138413058;
          v59 = v16;
          v60 = 2112;
          if (v13)
          {
            v19 = @"YES";
          }

          v61 = v17;
          v62 = 2112;
          v63 = v19;
          v64 = 2112;
          v65 = v14;
          _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "%@, create BluePOI model directory, %@, success, %@, error, %@", buf, 0x2Au);
        }
      }
    }

    v20 = [(RTBluePOITileManager *)self fileManager];
    v21 = [(RTBluePOITileManager *)self bluePOITempPath];
    v22 = [v20 fileExistsAtPath:v21 isDirectory:&v56];
    v23 = v56;

    if (!v22 || (v23 & 1) == 0)
    {
      v24 = [(RTBluePOITileManager *)self fileManager];
      v25 = [(RTBluePOITileManager *)self bluePOITempPath];
      v54 = 0;
      v26 = [v24 createDirectoryAtPath:v25 withIntermediateDirectories:1 attributes:0 error:&v54];
      v27 = v54;

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v28 = _rt_log_facility_get_os_log(RTLogFacilityStore);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          v29 = NSStringFromSelector(a2);
          v30 = [(RTBluePOITileManager *)self bluePOIModelPath];
          v31 = v30;
          v32 = @"NO";
          *buf = 138413058;
          v59 = v29;
          v60 = 2112;
          if (v26)
          {
            v32 = @"YES";
          }

          v61 = v30;
          v62 = 2112;
          v63 = v32;
          v64 = 2112;
          v65 = v27;
          _os_log_impl(&dword_2304B3000, v28, OS_LOG_TYPE_INFO, "%@, create BluePOI temp directory, %@, success, %@, error, %@", buf, 0x2Au);
        }
      }
    }

    v33 = [(RTBluePOITileManager *)self fileManager];
    v34 = [(RTBluePOITileManager *)self bluePOITempPath];
    v35 = [v33 contentsOfDirectoryAtPath:v34 error:0];

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v36 = v35;
    v37 = [v36 countByEnumeratingWithState:&v50 objects:v57 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v51;
      do
      {
        v40 = 0;
        do
        {
          if (*v51 != v39)
          {
            objc_enumerationMutation(v36);
          }

          v41 = *(*(&v50 + 1) + 8 * v40);
          v42 = [(RTBluePOITileManager *)self fileManager];
          v43 = [(RTBluePOITileManager *)self bluePOITempPath];
          v44 = [v43 stringByAppendingPathComponent:v41];
          [v42 removeItemAtPath:v44 error:0];

          ++v40;
        }

        while (v38 != v40);
        v38 = [v36 countByEnumeratingWithState:&v50 objects:v57 count:16];
      }

      while (v38);
    }

    [(RTBluePOITileManager *)self _registerXpcActivityPredownloadTileOnCharger];
    v45 = objc_alloc(MEMORY[0x277D01340]);
    v46 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D01470]];
    v47 = [v45 initWithAscending:0 confidence:v46 dateInterval:0 labelVisit:1 limit:&unk_28459C948];

    v48 = [(RTBluePOITileManager *)self visitManager];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __30__RTBluePOITileManager__setup__block_invoke;
    v49[3] = &unk_2788C6B10;
    v49[4] = self;
    [v48 fetchStoredVisitsWithOptions:v47 handler:v49];
  }
}

void __30__RTBluePOITileManager__setup__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 firstObject];
  [*(a1 + 32) setCurrentVisit:v3];
}

- (void)setVisitManager:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__RTBluePOITileManager_setVisitManager___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __40__RTBluePOITileManager_setVisitManager___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 128), *(a1 + 40));
  v2 = *(a1 + 32);
  v3 = *(v2 + 128);
  v4 = +[(RTNotification *)RTVisitManagerVisitIncidentNotification];
  [v3 addObserver:v2 selector:sel_onVisitManagerVisitIncidentNotification_ name:v4];
}

- (void)_shutdownWithHandler:(id)a3
{
  v7 = a3;
  v4 = [(RTBluePOITileManager *)self bluePOITileStore];
  [v4 removeObserver:self];

  v5 = [(RTBluePOITileManager *)self visitManager];
  [v5 removeObserver:self];

  v6 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, 0);
    v6 = v7;
  }
}

- (void)_addToPendingTiles:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = NSStringFromSelector(a2);
      v7 = [(RTBluePOITileManager *)self currentVisit];
      *buf = 138412547;
      v41 = v6;
      v42 = 2117;
      v43 = v7;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%@, current visit, %{sensitive}@", buf, 0x16u);
    }
  }

  v8 = [(RTBluePOITileManager *)self currentVisit];

  if (v8)
  {
    v9 = [(RTBluePOITileManager *)self pendingTiles];
    v10 = [v9 objectForKey:v4];

    if (!v10)
    {
      v11 = [(RTBluePOITileManager *)self pendingTiles];
      [v11 setObject:&unk_28459C960 forKey:v4];
    }

    v33 = v4;
    v12 = objc_opt_new();
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v13 = [(RTBluePOITileManager *)self pendingTiles];
    v35 = [v13 countByEnumeratingWithState:&v36 objects:v46 count:16];
    if (v35)
    {
      v14 = *v37;
      v15 = MEMORY[0x277D86220];
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v37 != v14)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v36 + 1) + 8 * i);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v18 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              v19 = NSStringFromSelector(a2);
              [(RTBluePOITileManager *)self pendingTiles];
              v20 = v14;
              v21 = self;
              v22 = v13;
              v24 = v23 = v12;
              v25 = [v24 objectForKeyedSubscript:v17];
              v26 = [v25 unsignedIntegerValue];
              *buf = 138412802;
              v41 = v19;
              v42 = 2112;
              v43 = v17;
              v44 = 2048;
              v45 = v26;
              _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_INFO, "%@, downloadKey, %@, retry count, %lu", buf, 0x20u);

              v12 = v23;
              v13 = v22;
              self = v21;
              v14 = v20;
              v15 = MEMORY[0x277D86220];
            }
          }

          v27 = [(RTBluePOITileManager *)self pendingTiles];
          v28 = [v27 objectForKeyedSubscript:v17];
          v29 = [v28 unsignedIntegerValue];

          if (v29 <= 2)
          {
            [v12 addObject:v17];
          }
        }

        v35 = [v13 countByEnumeratingWithState:&v36 objects:v46 count:16];
      }

      while (v35);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v30 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = NSStringFromSelector(a2);
        v32 = [v12 count];
        *buf = 138412546;
        v41 = v31;
        v42 = 2048;
        v43 = v32;
        _os_log_impl(&dword_2304B3000, v30, OS_LOG_TYPE_INFO, "%@, pending downloadKey count, %lu", buf, 0x16u);
      }
    }

    v4 = v33;
    if ([v12 count])
    {
      [(RTBluePOITileManager *)self setRetryDownloadBluePOITiles:1];
    }
  }
}

- (void)setRetryDownloadBluePOITiles:(BOOL)a3
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->_retryDownloadBluePOITiles != a3)
  {
    v3 = a3;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = NSStringFromSelector(a2);
        v8 = v7;
        v9 = @"NO";
        if (self->_retryDownloadBluePOITiles)
        {
          v10 = @"YES";
        }

        else
        {
          v10 = @"NO";
        }

        v11 = 138412802;
        v12 = v7;
        v14 = v10;
        v13 = 2112;
        if (v3)
        {
          v9 = @"YES";
        }

        v15 = 2112;
        v16 = v9;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, retryDownloadBluePOITiles transitioned from, %@, to, %@", &v11, 0x20u);
      }
    }

    self->_retryDownloadBluePOITiles = v3;
    if (v3)
    {
      [(RTBluePOITileManager *)self _registerXpcActivityRetryDownloadTiles];
    }

    else
    {
      [(RTBluePOITileManager *)self _unregisterXpcActivityRetryDownloadTiles];
    }
  }
}

- (void)_registerXpcActivityRetryDownloadTiles
{
  v4 = [(RTBluePOITileManager *)self defaultsManager];
  v5 = [v4 objectForKey:@"RTDefaultsBluePOITileManagerTileRetryDownloadXpcActivityDelay"];
  if (v5)
  {
    v6 = [(RTBluePOITileManager *)self defaultsManager];
    v7 = [v6 objectForKey:@"RTDefaultsBluePOITileManagerTileRetryDownloadXpcActivityDelay"];
    [v7 doubleValue];
    v9 = v8;
  }

  else
  {
    v9 = 300.0;
  }

  LOBYTE(v12) = 1;
  v10 = [[RTXPCActivityCriteria alloc] initWithInterval:1 gracePeriod:1 priority:0 requireNetworkConnectivity:1024 requireInexpensiveNetworkConnectivity:102400 networkTransferUploadSize:1 networkTransferDownloadSize:0.0 allowBattery:60.0 powerNap:v9 delay:v12 requireBatteryLevel:0];
  objc_initWeak(&location, self);
  v11 = [(RTBluePOITileManager *)self xpcActivityManager];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __62__RTBluePOITileManager__registerXpcActivityRetryDownloadTiles__block_invoke;
  v13[3] = &unk_2788C6B38;
  v14[1] = a2;
  objc_copyWeak(v14, &location);
  v13[4] = self;
  [v11 registerActivityWithIdentifier:@"com.apple.routined.bluePOITileManager.retryDownloadTile" criteria:v10 handler:v13];

  objc_destroyWeak(v14);
  objc_destroyWeak(&location);
}

void __62__RTBluePOITileManager__registerXpcActivityRetryDownloadTiles__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = NSStringFromSelector(*(a1 + 48));
        *buf = 138412546;
        v38 = v8;
        v39 = 2112;
        v40 = v6;
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, error, %@", buf, 0x16u);
      }
    }

    if (v5)
    {
      v5[2](v5, v6, 0);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v10 = WeakRetained;
    if (WeakRetained)
    {
      v28 = WeakRetained;
      v29 = v5;
      v30 = objc_opt_new();
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v11 = [*(a1 + 32) pendingTiles];
      v12 = [v11 countByEnumeratingWithState:&v33 objects:v43 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v34;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v34 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v33 + 1) + 8 * i);
            v17 = [*(a1 + 32) pendingTiles];
            v18 = [v17 objectForKeyedSubscript:v16];
            v19 = [v18 unsignedIntegerValue];

            if (v19 <= 2)
            {
              [v30 addObject:v16];
              v20 = MEMORY[0x277CCABB0];
              v21 = [*(a1 + 32) pendingTiles];
              v22 = [v21 objectForKeyedSubscript:v16];
              v23 = [v20 numberWithInteger:{objc_msgSend(v22, "integerValue") + 1}];
              v24 = [*(a1 + 32) pendingTiles];
              [v24 setObject:v23 forKeyedSubscript:v16];
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v33 objects:v43 count:16];
        }

        while (v13);
      }

      v5 = v29;
      v10 = v28;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v25 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v26 = NSStringFromSelector(*(a1 + 48));
          v27 = [v30 count];
          *buf = 138412802;
          v38 = v26;
          v39 = 2048;
          v40 = v27;
          v41 = 2112;
          v42 = v30;
          _os_log_impl(&dword_2304B3000, v25, OS_LOG_TYPE_INFO, "%@, pending downloadKey count, %lu, keys, %@", buf, 0x20u);
        }
      }

      if ([v30 count])
      {
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __62__RTBluePOITileManager__registerXpcActivityRetryDownloadTiles__block_invoke_75;
        v31[3] = &unk_2788C4550;
        v31[4] = v10;
        v32 = v29;
        [v10 fetchBluePOITilesForDownloadKeys:v30 priority:3 validateTile:0 collectMetrics:0 handler:v31];
      }

      else
      {
        v29[2](v29, 0, 0);
      }

      v6 = 0;
    }

    else if (v5)
    {
      v5[2](v5, 0, 0);
    }
  }
}

uint64_t __62__RTBluePOITileManager__registerXpcActivityRetryDownloadTiles__block_invoke_75(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 setRetryDownloadBluePOITiles:0];
}

- (void)_unregisterXpcActivityRetryDownloadTiles
{
  v3 = [(RTBluePOITileManager *)self xpcActivityManager];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __64__RTBluePOITileManager__unregisterXpcActivityRetryDownloadTiles__block_invoke;
  v4[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v4[4] = a2;
  [v3 unregisterActivityWithIdentifier:@"com.apple.routined.bluePOITileManager.retryDownloadTile" handler:v4];
}

void __64__RTBluePOITileManager__unregisterXpcActivityRetryDownloadTiles__block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = NSStringFromSelector(*(a1 + 32));
      v6 = 138412546;
      v7 = v5;
      v8 = 2112;
      v9 = v3;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, error, %@", &v6, 0x16u);
    }
  }
}

- (void)setPredownloadBluePOITiles:(BOOL)a3
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->_predownloadBluePOITiles != a3)
  {
    v3 = a3;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = NSStringFromSelector(a2);
        v8 = v7;
        v9 = @"NO";
        if (self->_predownloadBluePOITiles)
        {
          v10 = @"YES";
        }

        else
        {
          v10 = @"NO";
        }

        v11 = 138412802;
        v12 = v7;
        v14 = v10;
        v13 = 2112;
        if (v3)
        {
          v9 = @"YES";
        }

        v15 = 2112;
        v16 = v9;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, downloadBluePOITile transitioned from, %@, to, %@", &v11, 0x20u);
      }
    }

    self->_predownloadBluePOITiles = v3;
    if (v3)
    {
      [(RTBluePOITileManager *)self _registerXpcActivityPredownloadTileOnBattery];
    }

    else
    {
      [(RTBluePOITileManager *)self _unregisterXpcActivityPredownloadTileOnBattery];
    }
  }
}

- (void)_registerXpcActivityPredownloadTileOnBattery
{
  LOBYTE(v6) = 1;
  v4 = [[RTXPCActivityCriteria alloc] initWithInterval:1 gracePeriod:1 priority:0 requireNetworkConnectivity:1024 requireInexpensiveNetworkConnectivity:102400 networkTransferUploadSize:1 networkTransferDownloadSize:0.0 allowBattery:60.0 powerNap:0.0 delay:v6 requireBatteryLevel:0];
  objc_initWeak(&location, self);
  v5 = [(RTBluePOITileManager *)self xpcActivityManager];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__RTBluePOITileManager__registerXpcActivityPredownloadTileOnBattery__block_invoke;
  v7[3] = &unk_2788C6B38;
  v8[1] = a2;
  objc_copyWeak(v8, &location);
  v7[4] = self;
  [v5 registerActivityWithIdentifier:@"com.apple.routined.bluePOITileManager.predownloadTilesOnBattery" criteria:v4 handler:v7];

  objc_destroyWeak(v8);
  objc_destroyWeak(&location);
}

void __68__RTBluePOITileManager__registerXpcActivityPredownloadTileOnBattery__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = NSStringFromSelector(*(a1 + 48));
        *buf = 138412546;
        v15 = v8;
        v16 = 2112;
        v17 = v6;
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, error, %@", buf, 0x16u);
      }
    }

    if (v5)
    {
      v5[2](v5, v6, 0);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    if (WeakRetained)
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __68__RTBluePOITileManager__registerXpcActivityPredownloadTileOnBattery__block_invoke_78;
      v11[3] = &unk_2788C6B80;
      v13 = *(a1 + 48);
      v10 = v5;
      v11[4] = *(a1 + 32);
      v12 = v10;
      [WeakRetained predownloadBluePOITileForPredictedLocationWithHandler:v11];
    }

    else if (v5)
    {
      v5[2](v5, 0, 0);
    }
  }
}

void __68__RTBluePOITileManager__registerXpcActivityPredownloadTileOnBattery__block_invoke_78(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = NSStringFromSelector(*(a1 + 48));
      v6 = 138412546;
      v7 = v5;
      v8 = 2112;
      v9 = v3;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, error, %@", &v6, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) setPredownloadBluePOITiles:0];
}

- (void)_unregisterXpcActivityPredownloadTileOnBattery
{
  v3 = [(RTBluePOITileManager *)self xpcActivityManager];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __70__RTBluePOITileManager__unregisterXpcActivityPredownloadTileOnBattery__block_invoke;
  v4[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v4[4] = a2;
  [v3 unregisterActivityWithIdentifier:@"com.apple.routined.bluePOITileManager.predownloadTilesOnBattery" handler:v4];
}

void __70__RTBluePOITileManager__unregisterXpcActivityPredownloadTileOnBattery__block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = NSStringFromSelector(*(a1 + 32));
      v6 = 138412546;
      v7 = v5;
      v8 = 2112;
      v9 = v3;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, error, %@", &v6, 0x16u);
    }
  }
}

- (void)_registerXpcActivityPredownloadTileOnCharger
{
  v4 = [[RTXPCActivityCriteria alloc] initWithInterval:2 gracePeriod:1 priority:1 requireNetworkConnectivity:2 requireInexpensiveNetworkConnectivity:0 networkTransferDirection:1 allowBattery:14400.0 powerNap:7200.0];
  objc_initWeak(&location, self);
  v5 = [(RTBluePOITileManager *)self xpcActivityManager];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__RTBluePOITileManager__registerXpcActivityPredownloadTileOnCharger__block_invoke;
  v6[3] = &unk_2788C6A18;
  v7[1] = a2;
  objc_copyWeak(v7, &location);
  [v5 registerActivityWithIdentifier:@"com.apple.routined.bluePOITileManager.predownloadTilesOnCharger" criteria:v4 handler:v6];

  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

void __68__RTBluePOITileManager__registerXpcActivityPredownloadTileOnCharger__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = NSStringFromSelector(*(a1 + 40));
        *buf = 138412546;
        v14 = v8;
        v15 = 2112;
        v16 = v6;
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, error, %@", buf, 0x16u);
      }
    }

    if (v5)
    {
      v5[2](v5, v6, 0);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __68__RTBluePOITileManager__registerXpcActivityPredownloadTileOnCharger__block_invoke_79;
      v10[3] = &unk_2788C4780;
      v12 = *(a1 + 40);
      v11 = v5;
      [WeakRetained predownloadBluePOITilesOnChargerWithHandler:v10];
    }

    else if (v5)
    {
      v5[2](v5, 0, 0);
    }
  }
}

void __68__RTBluePOITileManager__registerXpcActivityPredownloadTileOnCharger__block_invoke_79(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = NSStringFromSelector(*(a1 + 40));
      v7 = 138412546;
      v8 = v5;
      v9 = 2112;
      v10 = v3;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, failed to download tiles, error, %@", &v7, 0x16u);
    }
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v3, 0);
  }
}

- (void)fetchBluePOITileAtLocation:(id)a3 priority:(unint64_t)a4 validateTile:(BOOL)a5 collectMetrics:(BOOL)a6 handler:(id)a7
{
  v12 = a3;
  v13 = a7;
  v14 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __96__RTBluePOITileManager_fetchBluePOITileAtLocation_priority_validateTile_collectMetrics_handler___block_invoke;
  block[3] = &unk_2788C6BA8;
  block[4] = self;
  v18 = v12;
  v21 = a5;
  v22 = a6;
  v19 = v13;
  v20 = a4;
  v15 = v13;
  v16 = v12;
  dispatch_async(v14, block);
}

- (void)_fetchBluePOITileAtLocation:(id)a3 priority:(unint64_t)a4 validateTile:(BOOL)a5 collectMetrics:(BOOL)a6 handler:(id)a7
{
  v8 = a6;
  v9 = a5;
  v106[1] = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a7;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = NSStringFromSelector(a2);
      v17 = @"NO";
      *buf = 138413059;
      v100 = 2117;
      *&buf[4] = v16;
      if (v9)
      {
        v17 = @"YES";
      }

      v101 = v13;
      v102 = 2048;
      v103 = a4;
      v104 = 2112;
      v105 = v17;
      _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "%@, fetch tile, location, %{sensitive}@, priority, %lu, validateTile, %@", buf, 0x2Au);
    }
  }

  if (v14)
  {
    if (v13)
    {
      v18 = [(RTBluePOITileManager *)self downloadKeyForLocation:v13];
      if (v18)
      {
        v84 = a2;
        v85 = a4;
        if (v8)
        {
          v86 = v8;
          v19 = [(RTBluePOITileManager *)self currentVisit];
          v20 = v19 != 0;

          v21 = [(RTBluePOITileManager *)self currentVisit];
          v22 = [v21 placeInference];
          v23 = [v22 placeType];

          v24 = [(RTBluePOITileManager *)self bluePOIMetricManager];
          v25 = [MEMORY[0x277CCABB0] numberWithBool:v20];
          [v24 setEventMetricsValue:v25 forKey:@"inVisit"];

          v26 = [(RTBluePOITileManager *)self bluePOIMetricManager];
          v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v23];
          [v26 setEventMetricsValue:v27 forKey:@"knownPlaceType"];

          v28 = dispatch_semaphore_create(0);
          v29 = [(RTBluePOITileManager *)self learnedLocationStore];
          v92[0] = MEMORY[0x277D85DD0];
          v92[1] = 3221225472;
          v92[2] = __97__RTBluePOITileManager__fetchBluePOITileAtLocation_priority_validateTile_collectMetrics_handler___block_invoke;
          v92[3] = &unk_2788C6BD0;
          v92[4] = self;
          v93 = v13;
          v30 = v28;
          v94 = v30;
          [v29 fetchLocationsOfInterestWithinDistance:v93 location:v92 handler:1000.0];

          v31 = v30;
          v32 = [MEMORY[0x277CBEAA8] now];
          v33 = dispatch_time(0, 5000000000);
          if (dispatch_semaphore_wait(v31, v33))
          {
            v83 = [MEMORY[0x277CBEAA8] now];
            v81 = v32;
            [v83 timeIntervalSinceDate:v32];
            v35 = v34;
            v36 = objc_opt_new();
            v37 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_401];
            v38 = [MEMORY[0x277CCACC8] callStackSymbols];
            v80 = v37;
            v39 = [v38 filteredArrayUsingPredicate:v37];
            v40 = [v39 firstObject];

            v82 = v36;
            [v36 submitToCoreAnalytics:v40 type:1 duration:v35];
            v41 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
            if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_fault_impl(&dword_2304B3000, v41, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
            }

            v42 = MEMORY[0x277CCA9B8];
            v43 = *MEMORY[0x277D01448];
            v106[0] = *MEMORY[0x277CCA450];
            *buf = @"semaphore wait timeout";
            v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v106 count:1];
            v45 = [v42 errorWithDomain:v43 code:15 userInfo:v44];

            v32 = v81;
            if (v45)
            {
              v46 = v45;
            }
          }

          v8 = v86;
          a4 = v85;
        }

        v47 = [(RTBluePOITileManager *)self defaultsManager];
        v48 = [v47 objectForKey:@"RTDefaultsBluePOITileManagerPreloadTile"];
        if (v48)
        {
          v49 = [(RTBluePOITileManager *)self defaultsManager];
          [v49 objectForKey:@"RTDefaultsBluePOITileManagerPreloadTile"];
          v50 = self;
          v51 = v14;
          v52 = v13;
          v53 = v18;
          v54 = v9;
          v56 = v55 = v8;
          v87 = [v56 BOOLValue] ^ 1;

          v8 = v55;
          v9 = v54;
          v18 = v53;
          v13 = v52;
          v14 = v51;
          self = v50;
          a4 = v85;
        }

        else
        {
          v87 = 1;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v68 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
          if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
          {
            v69 = NSStringFromSelector(v84);
            v70 = v69;
            v71 = @"YES";
            if (v87)
            {
              v71 = @"NO";
            }

            *buf = 138412546;
            *&buf[4] = v69;
            v100 = 2112;
            v101 = v71;
            _os_log_impl(&dword_2304B3000, v68, OS_LOG_TYPE_INFO, "%@, predownloadTile, %@", buf, 0x16u);
          }
        }

        if (v87)
        {
          v72 = [MEMORY[0x277CBEB98] setWithObject:v18];
          v88[0] = MEMORY[0x277D85DD0];
          v88[1] = 3221225472;
          v88[2] = __97__RTBluePOITileManager__fetchBluePOITileAtLocation_priority_validateTile_collectMetrics_handler___block_invoke_93;
          v88[3] = &unk_2788C6BF8;
          v90 = v84;
          v89 = v14;
          [(RTBluePOITileManager *)self _fetchBluePOITilesForDownloadKeys:v72 priority:a4 validateTile:v9 collectMetrics:v8 handler:v88];

          v66 = v89;
        }

        else
        {
          v91 = 0;
          v73 = [(RTBluePOITileManager *)self _lazyLoadProtobufTileWithGeoTileKey:[(RTBluePOITileManager *)self geoTileKeyForLocation:v13] outError:&v91];
          v66 = v91;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v74 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
            if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
            {
              v75 = NSStringFromSelector(v84);
              v76 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v73, "geoTileKey")}];
              v77 = [v73 identifier];
              *buf = 138413059;
              *&buf[4] = v75;
              v100 = 2117;
              v101 = v76;
              v102 = 2112;
              v103 = v77;
              v104 = 2112;
              v105 = v66;
              _os_log_impl(&dword_2304B3000, v74, OS_LOG_TYPE_INFO, "%@, lazy load preinstalled tile, geo tile key, %{sensitive}@, identifier, %@, error, %@", buf, 0x2Au);
            }
          }

          (*(v14 + 2))(v14, v73, v66);
        }
      }

      else
      {
        v62 = MEMORY[0x277CCA9B8];
        v63 = *MEMORY[0x277D01448];
        v95 = *MEMORY[0x277CCA450];
        v64 = [MEMORY[0x277CCACA8] stringWithFormat:@"invalid download key."];
        v96 = v64;
        v65 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v96 forKeys:&v95 count:1];
        v66 = [v62 errorWithDomain:v63 code:7 userInfo:v65];

        v67 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
        if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
        {
          v79 = NSStringFromSelector(a2);
          *buf = 138412290;
          *&buf[4] = v79;
          _os_log_error_impl(&dword_2304B3000, v67, OS_LOG_TYPE_ERROR, "%@, invalid download key", buf, 0xCu);
        }

        (*(v14 + 2))(v14, 0, v66);
      }
    }

    else
    {
      v57 = MEMORY[0x277CCA9B8];
      v58 = *MEMORY[0x277D01448];
      v97 = *MEMORY[0x277CCA450];
      v59 = [MEMORY[0x277CCACA8] stringWithFormat:@"location is required."];
      v98 = v59;
      v60 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v98 forKeys:&v97 count:1];
      v18 = [v57 errorWithDomain:v58 code:7 userInfo:v60];

      v61 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        v78 = NSStringFromSelector(a2);
        *buf = 138412290;
        *&buf[4] = v78;
        _os_log_error_impl(&dword_2304B3000, v61, OS_LOG_TYPE_ERROR, "%@, location is required", buf, 0xCu);
      }

      (*(v14 + 2))(v14, 0, v18);
    }
  }
}

void __97__RTBluePOITileManager__fetchBluePOITileAtLocation_priority_validateTile_collectMetrics_handler___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    v7 = 1000.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [*(a1 + 32) distanceCalculator];
        v11 = *(a1 + 40);
        v12 = [v9 location];
        v13 = [v12 location];
        [v10 distanceFromLocation:v11 toLocation:v13 error:0];
        v15 = v14;

        if (v15 < v7)
        {
          v7 = v15;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 1000.0;
  }

  v16 = [*(a1 + 32) bluePOIMetricManager];
  v17 = [MEMORY[0x277CCABB0] numberWithDouble:ceil(v7)];
  [v16 setEventMetricsValue:v17 forKey:@"distanceFromClosestLOI"];

  dispatch_semaphore_signal(*(a1 + 48));
}

void __97__RTBluePOITileManager__fetchBluePOITileAtLocation_priority_validateTile_collectMetrics_handler___block_invoke_93(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = NSStringFromSelector(*(a1 + 40));
      v9 = [v5 count];
      v10 = [v5 firstObject];
      v13 = 138413059;
      v14 = v8;
      v15 = 2048;
      v16 = v9;
      v17 = 2112;
      v18 = v6;
      v19 = 2117;
      v20 = v10;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, downloaded tile count, %lu, error, %@, first tile, %{sensitive}@", &v13, 0x2Au);
    }
  }

  v11 = *(a1 + 32);
  v12 = [v5 firstObject];
  (*(v11 + 16))(v11, v12, v6);
}

- (void)fetchBluePOITileWithGeoTileKey:(unint64_t)a3 handler:(id)a4
{
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__RTBluePOITileManager_fetchBluePOITileWithGeoTileKey_handler___block_invoke;
  v10[3] = &unk_2788C6710;
  v12 = a3;
  v13 = a2;
  v10[4] = self;
  v11 = v7;
  v9 = v7;
  dispatch_async(v8, v10);
}

void __63__RTBluePOITileManager_fetchBluePOITileWithGeoTileKey_handler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) bluePOITileStore];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__RTBluePOITileManager_fetchBluePOITileWithGeoTileKey_handler___block_invoke_2;
  v5[3] = &unk_2788C6C48;
  v3 = *(a1 + 48);
  v7 = *(a1 + 56);
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  v8 = *(a1 + 48);
  [v2 fetchBluePOITileWithGeoTileKey:v3 handler:v5];
}

void __63__RTBluePOITileManager_fetchBluePOITileWithGeoTileKey_handler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = NSStringFromSelector(*(a1 + 48));
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v5, "geoTileKey")}];
      v10 = [v5 identifier];
      *buf = 138413059;
      v20 = v8;
      v21 = 2117;
      v22 = v9;
      v23 = 2112;
      v24 = v10;
      v25 = 2112;
      v26 = v6;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, fetched tile, geo tile key, %{sensitive}@, identifier, %@, error, %@", buf, 0x2Au);
    }
  }

  if (v5)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v11 = [*(a1 + 32) queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__RTBluePOITileManager_fetchBluePOITileWithGeoTileKey_handler___block_invoke_94;
    block[3] = &unk_2788C6C20;
    v13 = *(a1 + 48);
    v12 = *(a1 + 56);
    block[4] = *(a1 + 32);
    v17 = v12;
    v18 = v13;
    v15 = v6;
    v16 = *(a1 + 40);
    dispatch_async(v11, block);
  }
}

void __63__RTBluePOITileManager_fetchBluePOITileWithGeoTileKey_handler___block_invoke_94(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  v11 = 0;
  v4 = [v2 _lazyLoadProtobufTileWithGeoTileKey:v3 outError:&v11];
  v5 = v11;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityStore);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = NSStringFromSelector(*(a1 + 64));
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v4, "geoTileKey")}];
      v9 = [v4 identifier];
      v10 = *(a1 + 40);
      *buf = 138413059;
      v13 = v7;
      v14 = 2117;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, lazy load tile, geo tile key, %{sensitive}@, identifier, %@, error, %@", buf, 0x2Au);
    }
  }

  (*(*(a1 + 48) + 16))();
}

- (void)fetchBluePOITilesForDownloadKeys:(id)a3 priority:(unint64_t)a4 validateTile:(BOOL)a5 collectMetrics:(BOOL)a6 handler:(id)a7
{
  v12 = a3;
  v13 = a7;
  v14 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __102__RTBluePOITileManager_fetchBluePOITilesForDownloadKeys_priority_validateTile_collectMetrics_handler___block_invoke;
  block[3] = &unk_2788C6BA8;
  block[4] = self;
  v18 = v12;
  v21 = a5;
  v22 = a6;
  v19 = v13;
  v20 = a4;
  v15 = v13;
  v16 = v12;
  dispatch_async(v14, block);
}

- (void)_fetchBluePOITilesForDownloadKeys:(id)a3 priority:(unint64_t)a4 validateTile:(BOOL)a5 collectMetrics:(BOOL)a6 handler:(id)a7
{
  v9 = a5;
  v42 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a7;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = NSStringFromSelector(a2);
      v17 = [v13 count];
      v18 = @"NO";
      *buf = 138413058;
      v35 = v16;
      if (v9)
      {
        v18 = @"YES";
      }

      v36 = 2048;
      v37 = v17;
      v38 = 2048;
      v39 = a4;
      v40 = 2112;
      v41 = v18;
      _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "%@, fetch tiles, download key count, %lu, priority, %lu, validateTile, %@", buf, 0x2Au);
    }
  }

  if (v14)
  {
    if ([v13 count])
    {
      v19 = [(RTBluePOITileManager *)self bluePOITileStore];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __103__RTBluePOITileManager__fetchBluePOITilesForDownloadKeys_priority_validateTile_collectMetrics_handler___block_invoke;
      v25[3] = &unk_2788C6C98;
      v25[4] = self;
      v28 = a2;
      v30 = v9;
      v31 = a6;
      v26 = v13;
      v29 = a4;
      v27 = v14;
      [v19 fetchBluePOITilesWithDownloadKeys:v26 handler:v25];
    }

    else
    {
      v20 = MEMORY[0x277CCA9B8];
      v21 = *MEMORY[0x277D01448];
      v32 = *MEMORY[0x277CCA450];
      v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"download keys are required."];
      v33 = v22;
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      v24 = [v20 errorWithDomain:v21 code:7 userInfo:v23];

      (*(v14 + 2))(v14, 0, v24);
    }
  }
}

void __103__RTBluePOITileManager__fetchBluePOITilesForDownloadKeys_priority_validateTile_collectMetrics_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __103__RTBluePOITileManager__fetchBluePOITilesForDownloadKeys_priority_validateTile_collectMetrics_handler___block_invoke_2;
  block[3] = &unk_2788C6C70;
  v16 = v5;
  v17 = v6;
  v8 = *(a1 + 56);
  v9 = *(a1 + 40);
  v21 = *(a1 + 72);
  v20 = *(a1 + 64);
  *&v10 = v9;
  *(&v10 + 1) = *(a1 + 32);
  v14 = v10;
  *&v11 = *(a1 + 48);
  *(&v11 + 1) = v8;
  v18 = v14;
  v19 = v11;
  v12 = v6;
  v13 = v5;
  dispatch_async(v7, block);
}

void __103__RTBluePOITileManager__fetchBluePOITilesForDownloadKeys_priority_validateTile_collectMetrics_handler___block_invoke_2(uint64_t a1)
{
  v60 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 72));
      v4 = [*(a1 + 32) count];
      v5 = *(a1 + 40);
      *buf = 138412802;
      v55 = v3;
      v56 = 2048;
      v57 = v4;
      v58 = 2112;
      v59 = v5;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@ fetched tile count, %lu, error, %@", buf, 0x20u);
    }
  }

  v44 = [objc_alloc(MEMORY[0x277CBEB58]) initWithSet:*(a1 + 48)];
  v6 = objc_opt_new();
  v45 = objc_opt_new();
  v43 = v6;
  if (*(a1 + 88) == 1 && [*(a1 + 32) count])
  {
    v7 = [*(a1 + 56) _validateTiles:*(a1 + 32)];
  }

  else
  {
    v7 = 0;
  }

  v42 = objc_opt_new();
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v8 = *(a1 + 32);
  v9 = [v8 countByEnumeratingWithState:&v49 objects:v53 count:16];
  v46 = v7;
  if (v9)
  {
    v11 = v9;
    v12 = *v50;
    *&v10 = 138412803;
    v41 = v10;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v50 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v49 + 1) + 8 * i);
        v19 = 1;
        if (*(a1 + 88) == 1)
        {
          v15 = [v7 objectForKey:*(*(&v49 + 1) + 8 * i)];
          if (!v15 || (v16 = v15, [v7 objectForKey:v14], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "BOOLValue"), v17, v7 = v46, v16, (v18 & 1) == 0))
          {
            v19 = 0;
          }
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v20 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v21 = NSStringFromSelector(*(a1 + 72));
            v22 = [v14 downloadKey];
            v23 = v22;
            *buf = v41;
            v24 = @"NO";
            if (v19)
            {
              v24 = @"YES";
            }

            v55 = v21;
            v56 = 2117;
            v57 = v22;
            v58 = 2112;
            v59 = v24;
            _os_log_impl(&dword_2304B3000, v20, OS_LOG_TYPE_INFO, "%@ found tile, download key, %{sensitive}@, valid, %@", buf, 0x20u);

            v7 = v46;
          }
        }

        if (v19)
        {
          v25 = [v14 downloadKey];
          [v44 removeObject:v25];

          [v42 addObject:v14];
        }

        else
        {
          v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v14, "geoTileKey")}];
          [v43 addObject:v26];

          v27 = [v14 modelURLs];
          [v45 addObjectsFromArray:v27];
        }
      }

      v11 = [v8 countByEnumeratingWithState:&v49 objects:v53 count:16];
    }

    while (v11);
  }

  if (*(a1 + 89) == 1)
  {
    v28 = [v42 count] != 0;
    v29 = [*(a1 + 56) bluePOIMetricManager];
    v30 = [MEMORY[0x277CCABB0] numberWithBool:v28];
    [v29 setEventMetricsValue:v30 forKey:@"cachedTileAvailable"];

    if ([v42 count])
    {
      v31 = 0;
    }

    else
    {
      v31 = *(a1 + 80) == 3;
    }

    v32 = [*(a1 + 56) bluePOIMetricManager];
    v33 = [MEMORY[0x277CCABB0] numberWithBool:v31];
    [v32 setEventMetricsValue:v33 forKey:@"requestDownloadTile"];
  }

  if (*(a1 + 80) == 1)
  {
    (*(*(a1 + 64) + 16))();
  }

  else if ([v43 count] && (v34 = *(a1 + 56), v48 = 0, objc_msgSend(v34, "_removeBluePOITilesWithGeoTileKeys:modelURLs:outError:", v43, v45, &v48), (v35 = v48) != 0))
  {
    v36 = v35;
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v37 = *(a1 + 56);
    v38 = *(a1 + 89);
    v47 = 0;
    v39 = [v37 _downloadBluePOITilesWithDownloadKeys:v44 collectMetrics:v38 outError:{&v47, v41}];
    v40 = v47;
    if (!v40 && [v39 count])
    {
      [v42 addObjectsFromArray:v39];
    }

    (*(*(a1 + 64) + 16))();
  }
}

- (void)_fetchBluePOITilesForDownloadKeys:(id)a3 atIndex:(unint64_t)a4 batchSize:(unint64_t)a5 priority:(unint64_t)a6 validateTile:(BOOL)a7 handler:(id)a8
{
  v9 = a7;
  v14 = a3;
  v15 = a8;
  if ([v14 count] <= a4)
  {
    v15[2](v15, 0);
  }

  else
  {
    v16 = [v14 count];
    if (v16 - a4 >= a5)
    {
      v17 = a5;
    }

    else
    {
      v17 = v16 - a4;
    }

    v18 = [v14 subarrayWithRange:{a4, v17}];
    v19 = [MEMORY[0x277CBEB98] setWithArray:v18];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __106__RTBluePOITileManager__fetchBluePOITilesForDownloadKeys_atIndex_batchSize_priority_validateTile_handler___block_invoke;
    v20[3] = &unk_2788C6CC0;
    v22 = v15;
    v20[4] = self;
    v21 = v14;
    v23 = a4;
    v24 = a5;
    v25 = a6;
    v26 = v9;
    [(RTBluePOITileManager *)self _fetchBluePOITilesForDownloadKeys:v19 priority:a6 validateTile:v9 collectMetrics:0 handler:v20];
  }
}

uint64_t __106__RTBluePOITileManager__fetchBluePOITilesForDownloadKeys_atIndex_batchSize_priority_validateTile_handler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(*(a1 + 48) + 16);

    return v4();
  }

  else
  {
    v6 = [*(a1 + 32) defaultsManager];
    v7 = [v6 objectForKey:@"RTDefaultsBluePOITileManagerModelDirecotryMaxSizeInKB"];
    if (v7)
    {
      v8 = [*(a1 + 32) defaultsManager];
      v9 = [v8 objectForKey:@"RTDefaultsBluePOITileManagerModelDirecotryMaxSizeInKB"];
      [v9 doubleValue];
      v11 = v10;
    }

    else
    {
      v11 = 102400.0;
    }

    [*(a1 + 32) totalModelSizeInKB];
    if (v12 <= v11)
    {
      v14 = *(a1 + 32);
      v15 = *(a1 + 40);
      v16 = *(a1 + 64) + *(a1 + 56);

      return [v14 _fetchBluePOITilesForDownloadKeys:v15 atIndex:v16 batchSize:? priority:? validateTile:? handler:?];
    }

    else
    {
      v13 = *(*(a1 + 48) + 16);

      return v13();
    }
  }
}

- (id)_downloadBluePOITilesWithDownloadKeys:(id)a3 collectMetrics:(BOOL)a4 outError:(id *)a5
{
  v6 = a4;
  v129[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  if ([v7 count])
  {
    v93 = v6;
    v94 = a5;
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v92 = v7;
    obj = v7;
    v8 = [obj countByEnumeratingWithState:&v106 objects:v128 count:16];
    if (v8)
    {
      v9 = *v107;
      v10 = MEMORY[0x277D86220];
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v107 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v106 + 1) + 8 * i);
          v13 = [(RTBluePOITileManager *)self deviceCharging];
          v14 = [(RTBluePOITileManager *)self bluePOIMetricManager];
          v15 = [v14 dailyMetrics];
          v16 = v15;
          if (v13)
          {
            v17 = @"BluePOIDailyEventTileDownloadCountOnCharger";
          }

          else
          {
            v17 = @"BluePOIDailyEventTileDownloadCountOnBattery";
          }

          [v15 increaseCountForKey:v17];

          v119 = 0uLL;
          v18 = v12;
          v119 = *[v12 bytes];
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            v19 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              v20 = NSStringFromSelector(a2);
              v21 = GEOExternalTileKeyAsString();
              *buf = 138412803;
              *&buf[4] = v20;
              *&buf[12] = 2117;
              *&buf[14] = v12;
              *&buf[22] = 2117;
              v125 = v21;
              _os_log_impl(&dword_2304B3000, v19, OS_LOG_TYPE_INFO, "%@, download key, %{sensitive}@, external key, %{sensitive}@", buf, 0x20u);
            }
          }
        }

        v8 = [obj countByEnumeratingWithState:&v106 objects:v128 count:16];
      }

      while (v8);
    }

    v22 = dispatch_semaphore_create(0);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v125 = __Block_byref_object_copy__24;
    v126 = __Block_byref_object_dispose__24;
    v127 = 0;
    *&v119 = 0;
    *(&v119 + 1) = &v119;
    v120 = 0x3032000000;
    v121 = __Block_byref_object_copy__24;
    v122 = __Block_byref_object_dispose__24;
    v123 = 0;
    v23 = [(RTBluePOITileManager *)self mapServiceManager];
    v101[0] = MEMORY[0x277D85DD0];
    v101[1] = 3221225472;
    v101[2] = __86__RTBluePOITileManager__downloadBluePOITilesWithDownloadKeys_collectMetrics_outError___block_invoke;
    v101[3] = &unk_2788C6CE8;
    v103 = buf;
    v104 = &v119;
    v105 = a2;
    v24 = v22;
    v102 = v24;
    [v23 fetchBluePOITilesForDownloadKeys:obj handler:v101];

    v25 = v24;
    v26 = [MEMORY[0x277CBEAA8] now];
    v27 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v25, v27))
    {
      v28 = [MEMORY[0x277CBEAA8] now];
      [v28 timeIntervalSinceDate:v26];
      v30 = v29;
      v31 = objc_opt_new();
      v32 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_401];
      v33 = [MEMORY[0x277CCACC8] callStackSymbols];
      v34 = [v33 filteredArrayUsingPredicate:v32];
      v35 = [v34 firstObject];

      [v31 submitToCoreAnalytics:v35 type:1 duration:v30];
      v36 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
      {
        *v115 = 0;
        _os_log_fault_impl(&dword_2304B3000, v36, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v115, 2u);
      }

      v37 = MEMORY[0x277CCA9B8];
      *v110 = *MEMORY[0x277CCA450];
      *v115 = @"semaphore wait timeout";
      v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v115 forKeys:v110 count:1];
      v39 = [v37 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v38];

      if (v39)
      {
        v40 = v39;

        v41 = 0;
LABEL_26:

        v43 = v39;
        if ((v41 & 1) == 0)
        {
          objc_storeStrong((*(&v119 + 1) + 40), v39);
        }

        if (v93)
        {
          if ([*(*&buf[8] + 40) count] >= 2)
          {
            v44 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
            if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
            {
              v90 = NSStringFromSelector(a2);
              v91 = [*(*&buf[8] + 40) count];
              *v115 = 138412546;
              *&v115[4] = v90;
              *&v115[12] = 2048;
              *&v115[14] = v91;
              _os_log_fault_impl(&dword_2304B3000, v44, OS_LOG_TYPE_FAULT, "%@, shouldn't happen, downloadResult count, %lu", v115, 0x16u);
            }
          }

          v45 = *(*(&v119 + 1) + 40);
          if (v45)
          {
            v46 = [*(*(&v119 + 1) + 40) code];
          }

          else
          {
            v46 = -1;
          }

          v47 = [(RTBluePOITileManager *)self bluePOIMetricManager];
          v48 = [MEMORY[0x277CCABB0] numberWithBool:v45 == 0];
          [v47 setEventMetricsValue:v48 forKey:@"tileDownloadSucceeds"];

          v49 = [(RTBluePOITileManager *)self bluePOIMetricManager];
          v50 = [MEMORY[0x277CCABB0] numberWithBool:v45 == 0];
          [v49 setEventMetricsValue:v50 forKey:@"tileProcessSucceeds"];

          v51 = [(RTBluePOITileManager *)self bluePOIMetricManager];
          v52 = [MEMORY[0x277CCABB0] numberWithInteger:v46];
          [v51 setEventMetricsValue:v52 forKey:@"errorCode"];

          v53 = [*(*&buf[8] + 40) firstObject];
          [v53 size];
          v55 = v54;

          v56 = [(RTBluePOITileManager *)self bluePOIMetricManager];
          v57 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:vcvtpd_u64_f64(v55)];
          [v56 setEventMetricsValue:v57 forKey:@"modelSize"];

          v58 = [*(*&buf[8] + 40) firstObject];
          v59 = [v58 pointsOfInterest];
          v60 = [v59 count];

          v61 = [(RTBluePOITileManager *)self bluePOIMetricManager];
          v62 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:vcvtpd_u64_f64(v60 / 10.0)];
          [v61 setEventMetricsValue:v62 forKey:@"poiDensity"];
        }

        v63 = dispatch_semaphore_create(0);

        *v115 = 0;
        *&v115[8] = v115;
        *&v115[16] = 0x3032000000;
        v116 = __Block_byref_object_copy__24;
        v117 = __Block_byref_object_dispose__24;
        v118 = 0;
        v64 = [(RTBluePOITileManager *)self bluePOITileStore];
        v65 = *(*&buf[8] + 40);
        v98[0] = MEMORY[0x277D85DD0];
        v98[1] = 3221225472;
        v98[2] = __86__RTBluePOITileManager__downloadBluePOITilesWithDownloadKeys_collectMetrics_outError___block_invoke_109;
        v98[3] = &unk_2788C4618;
        v100 = v115;
        v66 = v63;
        v99 = v66;
        [v64 storeBluePOITiles:v65 handler:v98];

        v67 = v66;
        v68 = [MEMORY[0x277CBEAA8] now];
        v69 = dispatch_time(0, 10000000000);
        v70 = v43;
        if (dispatch_semaphore_wait(v67, v69))
        {
          v71 = [MEMORY[0x277CBEAA8] now];
          [v71 timeIntervalSinceDate:v68];
          v73 = v72;
          v74 = objc_opt_new();
          v75 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_401];
          v76 = [MEMORY[0x277CCACC8] callStackSymbols];
          v77 = [v76 filteredArrayUsingPredicate:v75];
          v78 = [v77 firstObject];

          [v74 submitToCoreAnalytics:v78 type:1 duration:v73];
          v79 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v79, OS_LOG_TYPE_FAULT))
          {
            *v110 = 0;
            _os_log_fault_impl(&dword_2304B3000, v79, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v110, 2u);
          }

          v80 = MEMORY[0x277CCA9B8];
          v129[0] = *MEMORY[0x277CCA450];
          *v110 = @"semaphore wait timeout";
          v81 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v110 forKeys:v129 count:1];
          v82 = [v80 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v81];

          v70 = v43;
          if (v82)
          {
            v83 = v82;

            v70 = v82;
          }
        }

        v84 = v70;
        if (v84)
        {
          objc_storeStrong((*&v115[8] + 40), v70);
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v85 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
          if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
          {
            v86 = NSStringFromSelector(a2);
            v87 = [*(*&buf[8] + 40) count];
            v88 = *(*&v115[8] + 40);
            *v110 = 138412802;
            *&v110[4] = v86;
            v111 = 2048;
            v112 = v87;
            v113 = 2112;
            v114 = v88;
            _os_log_impl(&dword_2304B3000, v85, OS_LOG_TYPE_INFO, "%@, saved tile count, %lu, error, %@", v110, 0x20u);
          }
        }

        if (v94)
        {
          *v94 = *(*(&v119 + 1) + 40);
        }

        v42 = *(*&buf[8] + 40);

        _Block_object_dispose(v115, 8);
        _Block_object_dispose(&v119, 8);

        _Block_object_dispose(buf, 8);
        v7 = v92;
        goto LABEL_51;
      }
    }

    else
    {
      v39 = 0;
    }

    v41 = 1;
    goto LABEL_26;
  }

  if (a5)
  {
    *a5 = 0;
  }

  v42 = MEMORY[0x277CBEBF8];
LABEL_51:

  return v42;
}

void __86__RTBluePOITileManager__downloadBluePOITilesWithDownloadKeys_collectMetrics_outError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = NSStringFromSelector(*(a1 + 56));
      v10 = [*(*(*(a1 + 40) + 8) + 40) count];
      v11 = *(*(*(a1 + 48) + 8) + 40);
      v12 = 138412802;
      v13 = v9;
      v14 = 2048;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@, downloaded tile count, %lu, error, %@", &v12, 0x20u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __86__RTBluePOITileManager__downloadBluePOITilesWithDownloadKeys_collectMetrics_outError___block_invoke_109(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)predownloadBluePOITilesOnChargerWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__RTBluePOITileManager_predownloadBluePOITilesOnChargerWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_predownloadBluePOITilesOnChargerWithHandler:(id)a3
{
  v5 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__RTBluePOITileManager__predownloadBluePOITilesOnChargerWithHandler___block_invoke;
  v7[3] = &unk_2788C6D38;
  v8 = v5;
  v9 = a2;
  v7[4] = self;
  v6 = v5;
  [(RTBluePOITileManager *)self _fetchCandidatesForTilePredownloadingOnChargerWithHandler:v7];
}

void __69__RTBluePOITileManager__predownloadBluePOITilesOnChargerWithHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v109[1] = *MEMORY[0x277D85DE8];
  v68 = a2;
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    v6 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = NSStringFromSelector(*(a1 + 48));
      *buf = 138412802;
      *&buf[4] = v7;
      *&buf[12] = 2048;
      *&buf[14] = [v68 count];
      *&buf[22] = 2112;
      v106 = v5;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, candidate category count, %lu, error, %@", buf, 0x20u);
    }

    v4 = v5;
  }

  v64 = v4;
  if (v4)
  {
    (*(*(a1 + 40) + 16))();
    goto LABEL_57;
  }

  v8 = [v68 objectForKeyedSubscript:@"primaryLOILocations"];
  v78 = [v8 mutableCopy];

  v9 = [v68 objectForKeyedSubscript:@"secondaryLOILocations"];
  [v78 unionSet:v9];

  v10 = [v68 objectForKeyedSubscript:@"predictedLocations"];
  [v78 unionSet:v10];

  v70 = [MEMORY[0x277CBEAA8] distantPast];
  v69 = [MEMORY[0x277CBEAA8] now];
  v11 = objc_alloc(MEMORY[0x277CCA970]);
  v98 = 0;
  v73 = [v11 rt_initWithStartDate:v70 endDate:v69 error:&v98];
  v67 = v98;

  if (v67)
  {
    (*(*(a1 + 40) + 16))();
    goto LABEL_56;
  }

  v77 = objc_opt_new();
  v76 = objc_opt_new();
  v67 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v106 = __Block_byref_object_copy__24;
  v107 = __Block_byref_object_dispose__24;
  v108 = 0;
  v65 = *MEMORY[0x277D01448];
  v66 = *MEMORY[0x277CCA450];
  do
  {
    context = objc_autoreleasePoolPush();
    v12 = dispatch_semaphore_create(0);
    v92 = 0;
    v93 = &v92;
    v94 = 0x3032000000;
    v95 = __Block_byref_object_copy__24;
    v96 = __Block_byref_object_dispose__24;
    v97 = 0;
    v13 = [*(a1 + 32) bluePOITileStore];
    v85[0] = MEMORY[0x277D85DD0];
    v85[1] = 3221225472;
    v85[2] = __69__RTBluePOITileManager__predownloadBluePOITilesOnChargerWithHandler___block_invoke_115;
    v85[3] = &unk_2788C6D10;
    v91 = *(a1 + 48);
    v14 = v73;
    v89 = &v92;
    v90 = buf;
    v86 = v14;
    v87 = 0;
    v15 = v12;
    v88 = v15;
    v73 = v14;
    [v13 fetchBluePOITilesWithDateInterval:v14 ascending:1 limit:&unk_28459C978 handler:v85];

    dsema = v15;
    v16 = [MEMORY[0x277CBEAA8] now];
    v17 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(dsema, v17))
    {
      v18 = [MEMORY[0x277CBEAA8] now];
      [v18 timeIntervalSinceDate:v16];
      v20 = v19;
      v21 = objc_opt_new();
      v22 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_401];
      v23 = [MEMORY[0x277CCACC8] callStackSymbols];
      v24 = [v23 filteredArrayUsingPredicate:v22];
      v25 = [v24 firstObject];

      [v21 submitToCoreAnalytics:v25 type:1 duration:v20];
      v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        *v99 = 0;
        _os_log_fault_impl(&dword_2304B3000, v26, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v99, 2u);
      }

      v27 = MEMORY[0x277CCA9B8];
      v109[0] = v66;
      *v99 = @"semaphore wait timeout";
      v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v99 forKeys:v109 count:1];
      v29 = [v27 errorWithDomain:v65 code:15 userInfo:v28];

      if (v29)
      {
        v30 = v29;

        v31 = 0;
        goto LABEL_17;
      }
    }

    else
    {
      v29 = 0;
    }

    v31 = 1;
LABEL_17:

    v71 = v29;
    if ((v31 & 1) == 0)
    {
      objc_storeStrong((*&buf[8] + 40), v29);
    }

    if (*(*&buf[8] + 40))
    {
      v32 = 0;
    }

    else
    {
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v33 = v93[5];
      v34 = [v33 countByEnumeratingWithState:&v81 objects:v104 count:16];
      if (v34)
      {
        v35 = *v82;
        do
        {
          for (i = 0; i != v34; ++i)
          {
            if (*v82 != v35)
            {
              objc_enumerationMutation(v33);
            }

            v37 = *(*(&v81 + 1) + 8 * i);
            v38 = [v37 downloadKey];
            if (v38)
            {
              v39 = [v37 downloadKey];
              v40 = [v78 containsObject:v39];

              v41 = v40 ^ 1;
            }

            else
            {
              v41 = 1;
            }

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v42 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
              if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
              {
                v43 = NSStringFromSelector(*(a1 + 48));
                v44 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v37, "geoTileKey")}];
                v45 = v44;
                *v99 = 138412803;
                v46 = @"NO";
                if (v41)
                {
                  v46 = @"YES";
                }

                *&v99[4] = v43;
                v100 = 2117;
                v101 = v44;
                v102 = 2112;
                v103 = v46;
                _os_log_impl(&dword_2304B3000, v42, OS_LOG_TYPE_INFO, "%@, tile, %{sensitive}@, shouldRemove, %@", v99, 0x20u);
              }
            }

            if (v41)
            {
              v47 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v37, "geoTileKey")}];
              [v77 addObject:v47];

              v48 = [v37 modelURLs];
              [v76 addObjectsFromArray:v48];
            }
          }

          v34 = [v33 countByEnumeratingWithState:&v81 objects:v104 count:16];
        }

        while (v34);
      }

      v49 = [v93[5] lastObject];
      v50 = [v49 date];
      v51 = [v50 dateByAddingTimeInterval:0.001];

      v52 = [v73 endDate];

      if ([v93[5] count] && !objc_msgSend(v52, "isBeforeDate:", v51))
      {
        v54 = objc_alloc(MEMORY[0x277CCA970]);
        v80 = v67;
        v55 = [v54 rt_initWithStartDate:v51 endDate:v52 error:&v80];
        v56 = v80;

        v32 = v56 == 0;
        v73 = v55;
        v67 = v56;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          v53 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
          {
            v57 = NSStringFromSelector(*(a1 + 48));
            *v99 = 138412290;
            *&v99[4] = v57;
            _os_log_debug_impl(&dword_2304B3000, v53, OS_LOG_TYPE_DEBUG, "%@, no more tiles to fetch.", v99, 0xCu);
          }
        }

        v32 = 0;
      }

      v69 = v52;
      v70 = v51;
    }

    _Block_object_dispose(&v92, 8);
    objc_autoreleasePoolPop(context);
  }

  while (v32);
  if (*(*&buf[8] + 40) | v67)
  {
    v58 = _RTSafeArray();
    v59 = _RTMultiErrorCreate();

    (*(*(a1 + 40) + 16))(*(a1 + 40), v59);
  }

  else if ([v77 count] && (v60 = *(a1 + 32), v79 = 0, objc_msgSend(v60, "_removeBluePOITilesWithGeoTileKeys:modelURLs:outError:", v77, v76, &v79), (v61 = v79) != 0))
  {
    v59 = v61;
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v59 = [*(a1 + 32) selectDownloadKeysFromCandidates:v68];
    v62 = *(a1 + 32);
    v63 = [v59 allObjects];
    [v62 _fetchBluePOITilesForDownloadKeys:v63 atIndex:0 batchSize:1 priority:3 validateTile:1 handler:*(a1 + 40)];
  }

  _Block_object_dispose(buf, 8);
LABEL_56:

LABEL_57:
}

void __69__RTBluePOITileManager__predownloadBluePOITilesOnChargerWithHandler___block_invoke_115(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = NSStringFromSelector(*(a1 + 72));
      v9 = *(a1 + 32);
      v13 = 138413058;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      v17 = 2048;
      v18 = [v5 count];
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, date interval, %@, fetch tile count, %lu, error, %@", &v13, 0x2Au);
    }
  }

  v10 = *(*(a1 + 56) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v5;
  v12 = v5;

  objc_storeStrong((*(*(a1 + 64) + 8) + 40), *(a1 + 40));
  dispatch_semaphore_signal(*(a1 + 48));
}

- (void)predownloadBluePOITileForPredictedLocationWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __78__RTBluePOITileManager_predownloadBluePOITileForPredictedLocationWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_predownloadBluePOITileForPredictedLocationWithHandler:(id)a3
{
  v5 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__RTBluePOITileManager__predownloadBluePOITileForPredictedLocationWithHandler___block_invoke;
  v7[3] = &unk_2788C6D38;
  v8 = v5;
  v9 = a2;
  v7[4] = self;
  v6 = v5;
  [(RTBluePOITileManager *)self _fetchCandidatesForTilePredownloadingOnBatteryWithHandler:v7];
}

void __79__RTBluePOITileManager__predownloadBluePOITileForPredictedLocationWithHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a2 objectForKey:@"predictedLocations"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = NSStringFromSelector(*(a1 + 48));
      *buf = 138412802;
      v13 = v8;
      v14 = 2048;
      v15 = [v6 count];
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, candidate category count, %lu, error, %@", buf, 0x20u);
    }
  }

  if (v5 || ![v6 count])
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __79__RTBluePOITileManager__predownloadBluePOITileForPredictedLocationWithHandler___block_invoke_117;
    v10[3] = &unk_2788C6D60;
    v9 = *(a1 + 32);
    v11 = *(a1 + 40);
    [v9 _fetchBluePOITilesForDownloadKeys:v6 priority:3 validateTile:0 collectMetrics:0 handler:v10];
  }
}

- (double)totalModelSizeInKB
{
  v2 = MEMORY[0x277CCAA00];
  v3 = [(RTBluePOITileManager *)self bluePOIModelPath];
  v4 = vcvtd_n_f64_u64([v2 directorySizeAtPath:v3], 0xAuLL);

  return v4;
}

- (void)_fetchPredictedLocationsForTimeInterval:(double)a3 limit:(unint64_t)a4 minProbability:(double)a5 handler:(id)a6
{
  v40 = *MEMORY[0x277D85DE8];
  v11 = a6;
  v12 = [(RTBluePOITileManager *)self predictedContextManager];

  if (v12)
  {
    v13 = objc_alloc(MEMORY[0x277CCA970]);
    v14 = [MEMORY[0x277CBEAA8] now];
    v15 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:a3];
    v34 = 0;
    v16 = [v13 rt_initWithStartDate:v14 endDate:v15 error:&v34];
    v17 = v34;

    v18 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"probability" ascending:0];
    v19 = objc_alloc(MEMORY[0x277D01238]);
    v35 = v18;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
    v21 = [v19 initWithForecastWindowDateInterval:v16 filterContextTypeMask:1 filterLocations:0 resultSortDescriptors:v20];

    v22 = [(RTBluePOITileManager *)self predictedContextManager];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __93__RTBluePOITileManager__fetchPredictedLocationsForTimeInterval_limit_minProbability_handler___block_invoke;
    v29[3] = &unk_2788C6DB0;
    v31 = a4;
    v32 = a5;
    v33 = a2;
    v30 = v11;
    [v22 fetchPredictedContextWithOptions:v21 handler:v29];
  }

  else
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v28 = NSStringFromSelector(a2);
      *buf = 138412290;
      v39 = v28;
      _os_log_error_impl(&dword_2304B3000, v23, OS_LOG_TYPE_ERROR, "%@, predictedContextManager not available", buf, 0xCu);
    }

    v24 = objc_alloc(MEMORY[0x277CCA9B8]);
    v25 = *MEMORY[0x277D01448];
    v36 = *MEMORY[0x277CCA450];
    v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"predictedContextManager not available"];
    v37 = v26;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    v16 = [v24 initWithDomain:v25 code:0 userInfo:v27];

    (*(v11 + 2))(v11, 0, v16);
  }
}

void __93__RTBluePOITileManager__fetchPredictedLocationsForTimeInterval_limit_minProbability_handler___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277CBEB18];
  v6 = a3;
  v7 = a2;
  v8 = [[v5 alloc] initWithCapacity:a1[5]];
  v9 = [v7 nextStepPredictedContextsWithFilterMask:1];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __93__RTBluePOITileManager__fetchPredictedLocationsForTimeInterval_limit_minProbability_handler___block_invoke_2;
  v14[3] = &unk_2788C6D88;
  v16 = a1[6];
  v10 = a1[7];
  v15 = v8;
  v11 = a1[5];
  v17 = v10;
  v18 = v11;
  v12 = v8;
  [v9 enumerateObjectsUsingBlock:v14];

  (*(a1[4] + 16))(a1[4], v12, v6, v13);
}

void __93__RTBluePOITileManager__fetchPredictedLocationsForTimeInterval_limit_minProbability_handler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = v7;
  if (!a3 || ([v7 probability], v9 > *(a1 + 40)))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v8 locationOfInterest];
      v11 = [v10 location];

      if (v11)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v12 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            v13 = NSStringFromSelector(*(a1 + 48));
            v14 = [v8 locationOfInterest];
            [v8 probability];
            v20 = 138412803;
            v21 = v13;
            v22 = 2117;
            v23 = v14;
            v24 = 2048;
            v25 = v15;
            _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "%@, Predicted LOI location, %{sensitive}@, probability, %.1f", &v20, 0x20u);
          }
        }

        v16 = *(a1 + 32);
        v17 = [v8 locationOfInterest];
        v18 = [v17 location];
        [v16 addObject:v18];
      }
    }
  }

  if ([*(a1 + 32) count] >= *(a1 + 56) || (objc_msgSend(v8, "probability"), v19 < *(a1 + 40)))
  {
    *a4 = 1;
  }
}

- (void)_fetchCandidatesForTilePredownloadingOnBatteryWithHandler:(id)a3
{
  v5 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __82__RTBluePOITileManager__fetchCandidatesForTilePredownloadingOnBatteryWithHandler___block_invoke;
  v7[3] = &unk_2788C6E00;
  v8 = v5;
  v9 = a2;
  v7[4] = self;
  v6 = v5;
  [(RTBluePOITileManager *)self _fetchPredictedLocationsForTimeInterval:1 limit:v7 minProbability:3600.0 handler:0.8];
}

void __82__RTBluePOITileManager__fetchCandidatesForTilePredownloadingOnBatteryWithHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = NSStringFromSelector(*(a1 + 48));
      *buf = 138413058;
      v22 = v8;
      v23 = 2048;
      v24 = [v5 count];
      v25 = 2048;
      v26 = 0x40F5180000000000;
      v27 = 2112;
      v28 = v6;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, Predicted location count, %lu, interval, %.f, error, %@", buf, 0x2Au);
    }
  }

  if (v6)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v9 = objc_opt_new();
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __82__RTBluePOITileManager__fetchCandidatesForTilePredownloadingOnBatteryWithHandler___block_invoke_130;
    v16 = &unk_2788C6DD8;
    v17 = *(a1 + 32);
    v18 = v9;
    v10 = v9;
    [v5 enumerateObjectsUsingBlock:&v13];
    v11 = *(a1 + 40);
    v19 = @"predictedLocations";
    v20 = v10;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:{1, v13, v14, v15, v16, v17}];
    (*(v11 + 16))(v11, v12, 0);
  }
}

uint64_t __82__RTBluePOITileManager__fetchCandidatesForTilePredownloadingOnBatteryWithHandler___block_invoke_130(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) downloadKeyForLocation:a2];
  if (v3)
  {
    [*(a1 + 40) addObject:v3];
  }

  return MEMORY[0x2821F96F8]();
}

- (id)selectDownloadKeysFromCandidates:(id)a3
{
  v59 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"predictedLocations"];
  v7 = [v6 mutableCopy];

  v8 = [v5 objectForKeyedSubscript:@"primaryLOILocations"];
  [v7 unionSet:v8];

  v9 = [(RTBluePOITileManager *)self defaultsManager];
  v10 = [v9 objectForKey:@"RTDefaultsBluePOITileManagerSecondaryLOIGroupIndex"];
  if (v10)
  {
    v11 = [(RTBluePOITileManager *)self defaultsManager];
    v12 = [v11 objectForKey:@"RTDefaultsBluePOITileManagerSecondaryLOIGroupIndex"];
    v13 = [v12 unsignedIntegerValue];

    if (v13)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  v14 = [v5 objectForKeyedSubscript:@"secondaryLOILocations"];
  if ([v14 count])
  {
    v15 = [v5 objectForKeyedSubscript:@"secondaryLOILocations"];
    v16 = ([v15 count] - 1) / 0xAuLL;
  }

  else
  {
    v16 = 0;
  }

  v17 = [(RTBluePOITileManager *)self defaultsManager];
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v16];
  [v17 setObject:v18 forKey:@"RTDefaultsBluePOITileManagerSecondaryLOIGroupMaxIndex"];

  v13 = 0;
LABEL_9:
  v19 = [(RTBluePOITileManager *)self defaultsManager];
  v20 = [v19 objectForKey:@"RTDefaultsBluePOITileManagerSecondaryLOIGroupMaxIndex"];
  v21 = [v20 unsignedIntegerValue];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = NSStringFromSelector(a2);
      v24 = [v5 objectForKeyedSubscript:@"secondaryLOILocations"];
      *buf = 138413058;
      v50 = v23;
      v51 = 2048;
      v52 = v13;
      v53 = 2048;
      v54 = v21;
      v55 = 2048;
      v56 = [v24 count];
      _os_log_impl(&dword_2304B3000, v22, OS_LOG_TYPE_INFO, "%@, secondaryLOIGroupMaxIndex, %lu, secondaryLOIGroupMaxIndex, %lu, secondary LOI count, %lu", buf, 0x2Au);
    }
  }

  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v25 = [v5 objectForKeyedSubscript:@"secondaryLOILocations"];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __57__RTBluePOITileManager_selectDownloadKeysFromCandidates___block_invoke;
  v39[3] = &unk_2788C6E28;
  v42 = a2;
  v43 = v21;
  v44 = v13;
  v26 = v7;
  v40 = v26;
  v41 = &v45;
  [v25 enumerateObjectsUsingBlock:v39];

  v27 = [(RTBluePOITileManager *)self defaultsManager];
  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:(v13 + 1) % (v21 + 1)];
  [v27 setObject:v28 forKey:@"RTDefaultsBluePOITileManagerSecondaryLOIGroupIndex"];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v30 = NSStringFromSelector(a2);
      v31 = [v5 objectForKeyedSubscript:@"predictedLocations"];
      v32 = [v31 count];
      v33 = [v5 objectForKeyedSubscript:@"primaryLOILocations"];
      v34 = [v33 count];
      v35 = [v5 objectForKeyedSubscript:@"secondaryLOILocations"];
      v36 = [v35 count];
      v37 = v46[3];
      *buf = 138413314;
      v50 = v30;
      v51 = 2048;
      v52 = v32;
      v53 = 2048;
      v54 = v34;
      v55 = 2048;
      v56 = v36;
      v57 = 2048;
      v58 = v37;
      _os_log_impl(&dword_2304B3000, v29, OS_LOG_TYPE_INFO, "%@, predicted location count, %lu, primary LOI count, %lu, secondary LOI count, before, %lu, after, %lu", buf, 0x34u);
    }
  }

  _Block_object_dispose(&v45, 8);

  return v26;
}

void __57__RTBluePOITileManager_selectDownloadKeysFromCandidates___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 sha256Hash];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = NSStringFromSelector(*(a1 + 48));
      v7 = 138412802;
      v8 = v6;
      v9 = 2112;
      v10 = v3;
      v11 = 2048;
      v12 = [v4 hash];
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%@, download key, %@, hash value, %lu", &v7, 0x20u);
    }
  }

  if ([v4 hash] % (*(a1 + 56) + 1) == *(a1 + 64))
  {
    [*(a1 + 32) addObject:v3];
    ++*(*(*(a1 + 40) + 8) + 24);
  }
}

- (void)_fetchCandidatesForTilePredownloadingOnChargerWithHandler:(id)a3
{
  v27 = a3;
  v5 = dispatch_group_create();
  v6 = [MEMORY[0x277CBEAA8] now];
  v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-86400.0];
  v8 = objc_opt_new();
  v29 = objc_opt_new();
  v28 = objc_opt_new();
  v63[0] = 0;
  v63[1] = v63;
  v63[2] = 0x3032000000;
  v63[3] = __Block_byref_object_copy__24;
  v63[4] = __Block_byref_object_dispose__24;
  v64 = 0;
  v61[0] = 0;
  v61[1] = v61;
  v61[2] = 0x3032000000;
  v61[3] = __Block_byref_object_copy__24;
  v61[4] = __Block_byref_object_dispose__24;
  v62 = 0;
  v59[0] = 0;
  v59[1] = v59;
  v59[2] = 0x3032000000;
  v59[3] = __Block_byref_object_copy__24;
  v59[4] = __Block_byref_object_dispose__24;
  v60 = 0;
  dispatch_group_enter(v5);
  v9 = [(RTBluePOITileManager *)self learnedLocationStore];
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __82__RTBluePOITileManager__fetchCandidatesForTilePredownloadingOnChargerWithHandler___block_invoke;
  v51[3] = &unk_2788C6E78;
  v58 = a2;
  v10 = v7;
  v52 = v10;
  v11 = v6;
  v57 = v63;
  v53 = v11;
  v54 = self;
  v12 = v8;
  v55 = v12;
  v13 = v5;
  v56 = v13;
  [v9 fetchLocationsOfInterestVisitedBetweenStartDate:v10 endDate:v11 handler:v51];

  v14 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-2419200.0];
  dispatch_group_enter(v13);
  v15 = [(RTBluePOITileManager *)self learnedLocationStore];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __82__RTBluePOITileManager__fetchCandidatesForTilePredownloadingOnChargerWithHandler___block_invoke_141;
  v43[3] = &unk_2788C6E78;
  v50 = a2;
  v16 = v14;
  v44 = v16;
  v17 = v10;
  v49 = v61;
  v45 = v17;
  v46 = self;
  v18 = v29;
  v47 = v18;
  v19 = v13;
  v48 = v19;
  [v15 fetchLocationsOfInterestVisitedBetweenStartDate:v16 endDate:v17 handler:v43];

  dispatch_group_enter(v19);
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __82__RTBluePOITileManager__fetchCandidatesForTilePredownloadingOnChargerWithHandler___block_invoke_143;
  v38[3] = &unk_2788C6EA0;
  v41 = v59;
  v42 = a2;
  v38[4] = self;
  v20 = v28;
  v39 = v20;
  v21 = v19;
  v40 = v21;
  [(RTBluePOITileManager *)self _fetchPredictedLocationsForTimeInterval:5 limit:v38 minProbability:86400.0 handler:0.8];
  v22 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__RTBluePOITileManager__fetchCandidatesForTilePredownloadingOnChargerWithHandler___block_invoke_2;
  block[3] = &unk_2788C6EC8;
  v31 = v12;
  v32 = v18;
  v35 = v63;
  v36 = v61;
  v37 = v59;
  v33 = v20;
  v34 = v27;
  v23 = v27;
  v24 = v20;
  v25 = v18;
  v26 = v12;
  dispatch_group_notify(v21, v22, block);

  _Block_object_dispose(v59, 8);
  _Block_object_dispose(v61, 8);

  _Block_object_dispose(v63, 8);
}

void __82__RTBluePOITileManager__fetchCandidatesForTilePredownloadingOnChargerWithHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = NSStringFromSelector(*(a1 + 80));
      v9 = [v5 count];
      v10 = [*(a1 + 32) stringFromDate];
      v11 = [*(a1 + 40) stringFromDate];
      *buf = 138413314;
      v21 = v8;
      v22 = 2048;
      v23 = v9;
      v24 = 2112;
      v25 = v10;
      v26 = 2112;
      v27 = v11;
      v28 = 2112;
      v29 = v6;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, fetchedLocationsOfInterest count, %lu, start date, %@, end date, %@, error, %@", buf, 0x34u);
    }
  }

  v12 = *(*(a1 + 72) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v6;
  v14 = v6;

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __82__RTBluePOITileManager__fetchCandidatesForTilePredownloadingOnChargerWithHandler___block_invoke_139;
  v17[3] = &unk_2788C6E50;
  v15 = *(a1 + 48);
  v16 = *(a1 + 56);
  v19 = *(a1 + 80);
  v17[4] = v15;
  v18 = v16;
  [v5 enumerateObjectsUsingBlock:v17];
  dispatch_group_leave(*(a1 + 64));
}

void __82__RTBluePOITileManager__fetchCandidatesForTilePredownloadingOnChargerWithHandler___block_invoke_139(uint64_t a1, void *a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = NSStringFromSelector(*(a1 + 48));
      v12 = 138412803;
      v13 = v7;
      v14 = 2048;
      v15 = a3;
      v16 = 2117;
      v17 = v5;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, primary LOI, idx, %lu, LOI, %{sensitive}@", &v12, 0x20u);
    }
  }

  v8 = *(a1 + 32);
  v9 = [v5 location];
  v10 = [v9 location];
  v11 = [v8 downloadKeyForLocation:v10];

  if (v11)
  {
    [*(a1 + 40) addObject:v11];
  }
}

void __82__RTBluePOITileManager__fetchCandidatesForTilePredownloadingOnChargerWithHandler___block_invoke_141(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = NSStringFromSelector(*(a1 + 80));
      v9 = [v5 count];
      v10 = [*(a1 + 32) stringFromDate];
      v11 = [*(a1 + 40) stringFromDate];
      *buf = 138413314;
      v21 = v8;
      v22 = 2048;
      v23 = v9;
      v24 = 2112;
      v25 = v10;
      v26 = 2112;
      v27 = v11;
      v28 = 2112;
      v29 = v6;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, fetchedLocationsOfInterest count, %lu, start date, %@, end date, %@, error, %@", buf, 0x34u);
    }
  }

  v12 = *(*(a1 + 72) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v6;
  v14 = v6;

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __82__RTBluePOITileManager__fetchCandidatesForTilePredownloadingOnChargerWithHandler___block_invoke_142;
  v17[3] = &unk_2788C6E50;
  v15 = *(a1 + 48);
  v16 = *(a1 + 56);
  v19 = *(a1 + 80);
  v17[4] = v15;
  v18 = v16;
  [v5 enumerateObjectsUsingBlock:v17];
  dispatch_group_leave(*(a1 + 64));
}

void __82__RTBluePOITileManager__fetchCandidatesForTilePredownloadingOnChargerWithHandler___block_invoke_142(uint64_t a1, void *a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = NSStringFromSelector(*(a1 + 48));
      v12 = 138412803;
      v13 = v7;
      v14 = 2048;
      v15 = a3;
      v16 = 2117;
      v17 = v5;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, secondary LOI, idx, %lu, LOI, %{sensitive}@", &v12, 0x20u);
    }
  }

  v8 = *(a1 + 32);
  v9 = [v5 location];
  v10 = [v9 location];
  v11 = [v8 downloadKeyForLocation:v10];

  if (v11)
  {
    [*(a1 + 40) addObject:v11];
  }
}

void __82__RTBluePOITileManager__fetchCandidatesForTilePredownloadingOnChargerWithHandler___block_invoke_143(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = NSStringFromSelector(*(a1 + 64));
      *buf = 138413058;
      v16 = v8;
      v17 = 2048;
      v18 = [v5 count];
      v19 = 2048;
      v20 = 0x40F5180000000000;
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, Predicted location count, %lu, interval, %.f, error, %@", buf, 0x2Au);
    }
  }

  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __82__RTBluePOITileManager__fetchCandidatesForTilePredownloadingOnChargerWithHandler___block_invoke_144;
  v13[3] = &unk_2788C6DD8;
  v12 = *(a1 + 40);
  v13[4] = *(a1 + 32);
  v14 = v12;
  [v5 enumerateObjectsUsingBlock:v13];
  dispatch_group_leave(*(a1 + 48));
}

uint64_t __82__RTBluePOITileManager__fetchCandidatesForTilePredownloadingOnChargerWithHandler___block_invoke_144(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) downloadKeyForLocation:a2];
  if (v3)
  {
    [*(a1 + 40) addObject:v3];
  }

  return MEMORY[0x2821F96F8]();
}

void __82__RTBluePOITileManager__fetchCandidatesForTilePredownloadingOnChargerWithHandler___block_invoke_2(void *a1)
{
  v4 = objc_opt_new();
  [v4 setObject:a1[4] forKey:@"primaryLOILocations"];
  [v4 setObject:a1[5] forKey:@"secondaryLOILocations"];
  [v4 setObject:a1[6] forKey:@"predictedLocations"];
  v2 = _RTSafeArray();
  v3 = _RTMultiErrorCreate();

  (*(a1[7] + 16))(a1[7], v4, v3);
}

- (void)storeBluePOITiles:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__RTBluePOITileManager_storeBluePOITiles_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __50__RTBluePOITileManager_storeBluePOITiles_handler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) bluePOITileStore];
  [v2 storeBluePOITiles:*(a1 + 40) handler:*(a1 + 48)];
}

- (BOOL)_removeBluePOITilesWithGeoTileKeys:(id)a3 modelURLs:(id)a4 outError:(id *)a5
{
  v67[1] = *MEMORY[0x277D85DE8];
  v41 = a3;
  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = __Block_byref_object_copy__24;
  v59 = __Block_byref_object_dispose__24;
  v60 = 0;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = a4;
  v7 = [obj countByEnumeratingWithState:&v51 objects:v66 count:16];
  if (v7)
  {
    v8 = *v52;
    v9 = MEMORY[0x277D86220];
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v52 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v51 + 1) + 8 * v10);
      v12 = [(RTBluePOITileManager *)self fileManager];
      v13 = v56 + 5;
      v50 = v56[5];
      [v12 removeItemAtPath:v11 error:&v50];
      objc_storeStrong(v13, v50);

      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v14 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = NSStringFromSelector(a2);
          v16 = v56[5];
          *buf = 138412803;
          *&buf[4] = v15;
          v62 = 2117;
          v63 = v11;
          v64 = 2112;
          v65 = v16;
          _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "%@, remove model from disk, model, %{sensitive}@, error, %@", buf, 0x20u);
        }
      }

      if (v56[5])
      {
        break;
      }

      if (v7 == ++v10)
      {
        v7 = [obj countByEnumeratingWithState:&v51 objects:v66 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v17 = v56[5];
  if (v17)
  {
    v18 = 0;
    if (a5)
    {
      *a5 = v17;
    }

    goto LABEL_29;
  }

  v19 = dispatch_semaphore_create(0);
  v20 = [(RTBluePOITileManager *)self bluePOITileStore];
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __78__RTBluePOITileManager__removeBluePOITilesWithGeoTileKeys_modelURLs_outError___block_invoke;
  v45[3] = &unk_2788C6EF0;
  v49 = a2;
  v46 = v41;
  v48 = &v55;
  v21 = v19;
  v47 = v21;
  [v20 removeBluePOITilesWithGeoTileKeys:v46 handler:v45];

  v22 = v21;
  v23 = [MEMORY[0x277CBEAA8] now];
  v24 = dispatch_time(0, 3600000000000);
  if (!dispatch_semaphore_wait(v22, v24))
  {
    v36 = 0;
LABEL_23:
    v38 = 1;
    goto LABEL_24;
  }

  v25 = [MEMORY[0x277CBEAA8] now];
  [v25 timeIntervalSinceDate:v23];
  v27 = v26;
  v28 = objc_opt_new();
  v29 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_401];
  v30 = [MEMORY[0x277CCACC8] callStackSymbols];
  v31 = [v30 filteredArrayUsingPredicate:v29];
  v32 = [v31 firstObject];

  [v28 submitToCoreAnalytics:v32 type:1 duration:v27];
  v33 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_2304B3000, v33, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
  }

  v34 = MEMORY[0x277CCA9B8];
  v67[0] = *MEMORY[0x277CCA450];
  *buf = @"semaphore wait timeout";
  v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v67 count:1];
  v36 = [v34 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v35];

  if (!v36)
  {
    goto LABEL_23;
  }

  v37 = v36;

  v38 = 0;
LABEL_24:

  v39 = v36;
  if ((v38 & 1) == 0)
  {
    objc_storeStrong(v56 + 5, v36);
  }

  if (a5)
  {
    *a5 = v56[5];
  }

  v18 = v56[5] == 0;

LABEL_29:
  _Block_object_dispose(&v55, 8);

  return v18;
}

void __78__RTBluePOITileManager__removeBluePOITilesWithGeoTileKeys_modelURLs_outError___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = NSStringFromSelector(*(a1 + 56));
      v6 = *(a1 + 32);
      v10 = 138412803;
      v11 = v5;
      v12 = 2117;
      v13 = v6;
      v14 = 2112;
      v15 = v3;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, geoTileKeys, %{sensitive}@, error, %@", &v10, 0x20u);
    }
  }

  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v3;
  v9 = v3;

  dispatch_semaphore_signal(*(a1 + 40));
}

- (BOOL)_purgeCompiledModelsIfStorageLimitExceededWithError:(id *)a3
{
  v110[1] = *MEMORY[0x277D85DE8];
  [(RTBluePOITileManager *)self totalModelSizeInKB];
  v5 = v4;
  v73 = self;
  v6 = [(RTBluePOITileManager *)self defaultsManager];
  v7 = [v6 objectForKey:@"RTDefaultsBluePOITileManagerModelDirecotryMaxSizeInKB"];
  if (v7)
  {
    v8 = [(RTBluePOITileManager *)v73 defaultsManager];
    v9 = [v8 objectForKey:@"RTDefaultsBluePOITileManagerModelDirecotryMaxSizeInKB"];
    [v9 doubleValue];
    v11 = v10;
  }

  else
  {
    v11 = 102400.0;
  }

  v12 = v5 - v11;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = NSStringFromSelector(a2);
      *buf = 138413058;
      *&buf[4] = v14;
      *&buf[12] = 2048;
      *&buf[14] = v5;
      *&buf[22] = 2048;
      v108 = *&v11;
      LOWORD(v109) = 2048;
      *(&v109 + 2) = v5 - v11;
      _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%@, total model size, %.1f (kB), size limit, %.1f (kB), storage to release, %.1f (kB)", buf, 0x2Au);
    }
  }

  if (v12 <= 0.0)
  {
    goto LABEL_63;
  }

  v79 = objc_opt_new();
  v78 = objc_opt_new();
  v70 = [MEMORY[0x277CBEAA8] distantPast];
  v69 = [MEMORY[0x277CBEAA8] now];
  v15 = objc_alloc(MEMORY[0x277CCA970]);
  v98 = 0;
  v76 = [v15 rt_initWithStartDate:v70 endDate:v69 error:&v98];
  v68 = v98;

  if (v68)
  {
    if (a3)
    {
      v17 = v68;
      v18 = 0;
      LOBYTE(v19) = 0;
      *a3 = v68;
    }

    else
    {
      v18 = 0;
      LOBYTE(v19) = 0;
    }

    goto LABEL_62;
  }

  v68 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v108 = __Block_byref_object_copy__24;
  *&v109 = __Block_byref_object_dispose__24;
  *(&v109 + 1) = 0;
  v71 = *MEMORY[0x277D01448];
  v72 = *MEMORY[0x277CCA450];
  *&v16 = 138412290;
  v66 = v16;
  do
  {
    context = objc_autoreleasePoolPush();
    v20 = dispatch_semaphore_create(0);
    v92 = 0;
    v93 = &v92;
    v94 = 0x3032000000;
    v95 = __Block_byref_object_copy__24;
    v96 = __Block_byref_object_dispose__24;
    v97 = 0;
    v21 = [(RTBluePOITileManager *)v73 bluePOITileStore];
    v86[0] = MEMORY[0x277D85DD0];
    v86[1] = 3221225472;
    v86[2] = __76__RTBluePOITileManager__purgeCompiledModelsIfStorageLimitExceededWithError___block_invoke;
    v86[3] = &unk_2788C68F0;
    v91 = a2;
    v22 = v76;
    v87 = v22;
    v89 = &v92;
    v90 = buf;
    v23 = v20;
    v88 = v23;
    v76 = v22;
    [v21 fetchBluePOITilesWithDateInterval:v22 ascending:1 limit:&unk_28459C948 handler:v86];

    v24 = v23;
    v25 = [MEMORY[0x277CBEAA8] now];
    v26 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v24, v26))
    {
      v27 = [MEMORY[0x277CBEAA8] now];
      [v27 timeIntervalSinceDate:v25];
      v29 = v28;
      v30 = objc_opt_new();
      v31 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_401];
      v32 = [MEMORY[0x277CCACC8] callStackSymbols];
      v33 = [v32 filteredArrayUsingPredicate:v31];
      v34 = [v33 firstObject];

      [v30 submitToCoreAnalytics:v34 type:1 duration:v29];
      v35 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
      {
        *v99 = 0;
        _os_log_fault_impl(&dword_2304B3000, v35, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v99, 2u);
      }

      v36 = MEMORY[0x277CCA9B8];
      v110[0] = v72;
      *v99 = @"semaphore wait timeout";
      v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v99 forKeys:v110 count:1];
      v38 = [v36 errorWithDomain:v71 code:15 userInfo:v37];

      if (v38)
      {
        v39 = v38;

        v40 = 0;
        goto LABEL_20;
      }
    }

    else
    {
      v38 = 0;
    }

    v40 = 1;
LABEL_20:

    v74 = v38;
    if ((v40 & 1) == 0)
    {
      objc_storeStrong((*&buf[8] + 40), v38);
    }

    if (*(*&buf[8] + 40))
    {
      v19 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v60 = NSStringFromSelector(a2);
        v61 = *(*&buf[8] + 40);
        *v99 = 138412546;
        *&v99[4] = v60;
        v100 = 2112;
        v101 = v61;
        _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "%@, fetch error, %@", v99, 0x16u);
      }

LABEL_39:
      v52 = 0;
      goto LABEL_40;
    }

    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v41 = v93[5];
    v19 = [v41 countByEnumeratingWithState:&v82 objects:v106 count:16];
    if (v19)
    {
      v42 = *v83;
LABEL_28:
      v43 = 0;
      while (1)
      {
        if (*v83 != v42)
        {
          objc_enumerationMutation(v41);
        }

        v44 = *(*(&v82 + 1) + 8 * v43);
        v45 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v44, "geoTileKey", v66)}];
        [v79 addObject:v45];

        v46 = [v44 modelURLs];
        [v78 addObjectsFromArray:v46];

        [v44 size];
        v12 = v12 - v47;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v48 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
          if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
          {
            v49 = NSStringFromSelector(a2);
            v50 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v44, "geoTileKey")}];
            [v44 size];
            *v99 = 138413059;
            *&v99[4] = v49;
            v100 = 2117;
            v101 = v50;
            v102 = 2048;
            v103 = v51;
            v104 = 2048;
            v105 = v12;
            _os_log_impl(&dword_2304B3000, v48, OS_LOG_TYPE_INFO, "%@, remove tile, %{sensitive}@, size, %.1f (kB), StorageSizeToRelease, %.1f", v99, 0x2Au);
          }
        }

        if (v12 < 0.0)
        {
          break;
        }

        if (v19 == ++v43)
        {
          v19 = [v41 countByEnumeratingWithState:&v82 objects:v106 count:16];
          if (v19)
          {
            goto LABEL_28;
          }

          break;
        }
      }
    }

    if (v12 < 0.0)
    {
      goto LABEL_39;
    }

    v53 = [v93[5] lastObject];
    v54 = [v53 date];
    v19 = [v54 dateByAddingTimeInterval:0.001];

    v55 = [v76 endDate];

    if ([v93[5] count] && !objc_msgSend(v55, "isBeforeDate:", v19))
    {
      v57 = objc_alloc(MEMORY[0x277CCA970]);
      v81 = v68;
      v58 = [v57 rt_initWithStartDate:v19 endDate:v55 error:&v81];
      v59 = v81;

      v52 = v59 == 0;
      v76 = v58;
      v68 = v59;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v56 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
        {
          v62 = NSStringFromSelector(a2);
          *v99 = v66;
          *&v99[4] = v62;
          _os_log_debug_impl(&dword_2304B3000, v56, OS_LOG_TYPE_DEBUG, "%@, no more tiles to fetch.", v99, 0xCu);
        }
      }

      v52 = 0;
    }

    v69 = v55;
    v70 = v19;
LABEL_40:

    _Block_object_dispose(&v92, 8);
    objc_autoreleasePoolPop(context);
  }

  while (v52);
  v63 = *(*&buf[8] + 40);
  if (v63)
  {
    v18 = 0;
    LOBYTE(v19) = 0;
    if (a3)
    {
      *a3 = v63;
    }
  }

  else if ([v79 count])
  {
    v80 = 0;
    [(RTBluePOITileManager *)v73 _removeBluePOITilesWithGeoTileKeys:v79 modelURLs:v78 outError:&v80];
    v64 = v80;
    if (a3)
    {
      v64 = v64;
      *a3 = v64;
    }

    LOBYTE(v19) = v64 == 0;

    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  _Block_object_dispose(buf, 8);

LABEL_62:
  if (v18)
  {
LABEL_63:
    if (a3)
    {
      *a3 = 0;
    }

    LOBYTE(v19) = 1;
  }

  return v19 & 1;
}

void __76__RTBluePOITileManager__purgeCompiledModelsIfStorageLimitExceededWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = NSStringFromSelector(*(a1 + 64));
      v9 = *(a1 + 32);
      v16 = 138413058;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      v20 = 2048;
      v21 = [v5 count];
      v22 = 2112;
      v23 = v6;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, date interval, %@, fetch tile count, %lu, error, %@", &v16, 0x2Au);
    }
  }

  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v5;
  v12 = v5;

  v13 = *(*(a1 + 56) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v6;
  v15 = v6;

  dispatch_semaphore_signal(*(a1 + 40));
}

- (void)_performPurgeOfType:(int64_t)a3 referenceDate:(id)a4 completion:(id)a5
{
  v78 = *MEMORY[0x277D85DE8];
  v53 = a4;
  v8 = a5;
  v52 = v8;
  if ((a3 - 1) <= 1)
  {
    v73 = 0;
    v54 = self;
    v9 = [(RTBluePOITileManager *)self fileManager];
    v10 = [(RTBluePOITileManager *)self bluePOIModelPath];
    v11 = [v9 fileExistsAtPath:v10 isDirectory:&v73];
    v12 = v73;

    if ((v11 & v12) != 0)
    {
      v13 = [(RTBluePOITileManager *)v54 fileManager];
      v14 = [(RTBluePOITileManager *)v54 bluePOIModelPath];
      v72 = 0;
      v46 = [v13 contentsOfDirectoryAtPath:v14 error:&v72];
      v15 = v72;

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v16 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = NSStringFromSelector(a2);
          v18 = [(RTBluePOITileManager *)v54 bluePOIModelPath];
          v19 = [v46 count];
          *buf = 138413314;
          *&buf[4] = v17;
          *&buf[12] = 2112;
          *&buf[14] = v18;
          *&buf[22] = 2048;
          v76 = v19;
          *v77 = 2112;
          *&v77[2] = v15;
          *&v77[10] = 2112;
          *&v77[12] = v46;
          _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "%@, BluePOI model path, %@, file count, %lu, error, %@, files, %@", buf, 0x34u);
        }
      }

      if (v15)
      {
        v52[2](v52, v15);
LABEL_37:

        goto LABEL_38;
      }

      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      obj = v46;
      v50 = [obj countByEnumeratingWithState:&v68 objects:v74 count:16];
      if (v50)
      {
        v49 = *v69;
        v48 = *MEMORY[0x277CCA150];
        while (2)
        {
          for (i = 0; i != v50; ++i)
          {
            if (*v69 != v49)
            {
              objc_enumerationMutation(obj);
            }

            v23 = *(*(&v68 + 1) + 8 * i);
            v24 = [(RTBluePOITileManager *)v54 bluePOIModelPath];
            v25 = [v24 stringByAppendingPathComponent:v23];

            v26 = [(RTBluePOITileManager *)v54 fileManager];
            v67 = 0;
            v27 = [v26 attributesOfItemAtPath:v25 error:&v67];
            v15 = v67;

            if (v15)
            {
              v52[2](v52, v15);
LABEL_36:

              goto LABEL_37;
            }

            v28 = [v27 objectForKey:v48];
            v29 = [v28 isBeforeDate:v53];
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v30 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
              if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
              {
                v31 = NSStringFromSelector(a2);
                v32 = [v28 stringFromDate];
                v33 = [v53 stringFromDate];
                v34 = v33;
                *buf = 138413314;
                v35 = @"NO";
                if (v29)
                {
                  v35 = @"YES";
                }

                *&buf[4] = v31;
                *&buf[12] = 2112;
                *&buf[14] = v23;
                *&buf[22] = 2112;
                v76 = v32;
                *v77 = 2112;
                *&v77[2] = v33;
                *&v77[10] = 2112;
                *&v77[12] = v35;
                _os_log_impl(&dword_2304B3000, v30, OS_LOG_TYPE_INFO, "%@, file, %@, modificationDate, %@, referenceDate, %@, shouldDelete, %@", buf, 0x34u);
              }
            }

            if (v29)
            {
              v36 = [(RTBluePOITileManager *)v54 fileManager];
              v66 = 0;
              [v36 removeItemAtPath:v25 error:&v66];
              v15 = v66;

              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                v37 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
                if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
                {
                  v38 = NSStringFromSelector(a2);
                  *buf = 138412802;
                  *&buf[4] = v38;
                  *&buf[12] = 2112;
                  *&buf[14] = v23;
                  *&buf[22] = 2112;
                  v76 = v15;
                  _os_log_impl(&dword_2304B3000, v37, OS_LOG_TYPE_INFO, "%@, delete file, %@, error, %@", buf, 0x20u);
                }
              }

              if (v15)
              {
                v52[2](v52, v15);

                goto LABEL_36;
              }
            }
          }

          v50 = [obj countByEnumeratingWithState:&v68 objects:v74 count:16];
          if (v50)
          {
            continue;
          }

          break;
        }
      }
    }

    v39 = dispatch_group_create();
    dispatch_group_enter(v39);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v76 = __Block_byref_object_copy__24;
    *v77 = __Block_byref_object_dispose__24;
    *&v77[8] = 0;
    v40 = [(RTBluePOITileManager *)v54 bluePOITileStore];
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __69__RTBluePOITileManager__performPurgeOfType_referenceDate_completion___block_invoke;
    v62[3] = &unk_2788C6F18;
    v64 = buf;
    v65 = a2;
    v41 = v39;
    v63 = v41;
    [v40 purgeBluePOITilesPredating:v53 handler:v62];

    dispatch_group_enter(v41);
    v60[0] = 0;
    v60[1] = v60;
    v60[2] = 0x3032000000;
    v60[3] = __Block_byref_object_copy__24;
    v60[4] = __Block_byref_object_dispose__24;
    v61 = 0;
    v42 = [(RTBluePOITileManager *)v54 bluePOITileStore];
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __69__RTBluePOITileManager__performPurgeOfType_referenceDate_completion___block_invoke_145;
    v56[3] = &unk_2788C6F18;
    v58 = v60;
    v59 = a2;
    v43 = v41;
    v57 = v43;
    [v42 purgeBluePOIMetadataWithHandler:v56];

    v44 = _RTSafeArray();
    v45 = _RTMultiErrorCreate();

    dispatch_group_wait(v43, 0xFFFFFFFFFFFFFFFFLL);
    v52[2](v52, v45);

    _Block_object_dispose(v60, 8);
    _Block_object_dispose(buf, 8);

LABEL_38:
    v20 = v52;
    goto LABEL_39;
  }

  if (!a3)
  {
    v55 = 0;
    [(RTBluePOITileManager *)self _purgeCompiledModelsIfStorageLimitExceededWithError:&v55];
    v21 = v55;
    v52[2](v52, v21);

    goto LABEL_38;
  }

  v20 = v8;
  v8[2](v8, 0);
LABEL_39:
}

void __69__RTBluePOITileManager__performPurgeOfType_referenceDate_completion___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = NSStringFromSelector(*(a1 + 48));
      v9 = 138412546;
      v10 = v5;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, purge tile error, %@", &v9, 0x16u);
    }
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
  v8 = v3;

  dispatch_group_leave(*(a1 + 32));
}

void __69__RTBluePOITileManager__performPurgeOfType_referenceDate_completion___block_invoke_145(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = NSStringFromSelector(*(a1 + 48));
      v9 = 138412546;
      v10 = v5;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, purge metadata error, %@", &v9, 0x16u);
    }
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
  v8 = v3;

  dispatch_group_leave(*(a1 + 32));
}

- (void)performPurgeOfType:(int64_t)a3 referenceDate:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(RTNotifier *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__RTBluePOITileManager_performPurgeOfType_referenceDate_completion___block_invoke;
  v13[3] = &unk_2788C4C20;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a3;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

- (id)_compileCoreMLModelAtURL:(id)a3 outError:(id *)a4
{
  v54 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = dispatch_semaphore_create(0);
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__24;
  v50 = __Block_byref_object_dispose__24;
  v51 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__24;
  v44 = __Block_byref_object_dispose__24;
  v45 = 0;
  v9 = [(RTBluePOITileManager *)self mapServiceManager];
  v31 = MEMORY[0x277D85DD0];
  v32 = 3221225472;
  v33 = __58__RTBluePOITileManager__compileCoreMLModelAtURL_outError___block_invoke;
  v34 = &unk_2788C6F40;
  v37 = &v46;
  v38 = &v40;
  v39 = a2;
  v10 = v7;
  v35 = v10;
  v11 = v8;
  v36 = v11;
  [v9 compileCoreMLModelAtURL:v10 handler:&v31];

  v12 = v11;
  v13 = [MEMORY[0x277CBEAA8] now];
  v14 = dispatch_time(0, 30000000000);
  if (dispatch_semaphore_wait(v12, v14))
  {
    v15 = [MEMORY[0x277CBEAA8] now];
    [v15 timeIntervalSinceDate:v13];
    v17 = v16;
    v18 = objc_opt_new();
    v19 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_401];
    v20 = [MEMORY[0x277CCACC8] callStackSymbols];
    v21 = [v20 filteredArrayUsingPredicate:v19];
    v22 = [v21 firstObject];

    [v18 submitToCoreAnalytics:v22 type:1 duration:v17];
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v23, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v24 = MEMORY[0x277CCA9B8];
    v52 = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v52 count:1];
    v26 = [v24 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v25];

    if (v26)
    {
      v27 = v26;
    }
  }

  else
  {
    v26 = 0;
  }

  v28 = v26;
  if (v28)
  {
    objc_storeStrong(v41 + 5, v26);
  }

  if (a4)
  {
    *a4 = v41[5];
  }

  v29 = v47[5];

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v46, 8);

  return v29;
}

void __58__RTBluePOITileManager__compileCoreMLModelAtURL_outError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = NSStringFromSelector(*(a1 + 64));
      v10 = *(a1 + 32);
      v11 = 138413058;
      v12 = v9;
      v13 = 2112;
      v14 = v10;
      v15 = 2112;
      v16 = v6;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@, model URL, %@, compiled model URL, %@, error, %@", &v11, 0x2Au);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (id)_lazyLoadProtobufTileWithGeoTileKey:(unint64_t)a3 outError:(id *)a4
{
  v62[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CCACA8];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v8 = [v6 stringWithFormat:@"%@.bin", v7];

  v9 = [(RTBluePOITileManager *)self bluePOITilePath];
  v10 = [v9 stringByAppendingPathComponent:v8];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = NSStringFromSelector(a2);
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
      *buf = 138412803;
      *&buf[4] = v12;
      *&buf[12] = 2117;
      *&buf[14] = v13;
      *&buf[22] = 2112;
      v59 = v10;
      _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%@, geo tile key, %{sensitive}@, tile path, %@", buf, 0x20u);
    }
  }

  v14 = dispatch_semaphore_create(0);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v59 = __Block_byref_object_copy__24;
  v60 = __Block_byref_object_dispose__24;
  v61 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__24;
  v51 = __Block_byref_object_dispose__24;
  v52 = 0;
  v15 = [(RTBluePOITileManager *)self mapServiceManager];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __69__RTBluePOITileManager__lazyLoadProtobufTileWithGeoTileKey_outError___block_invoke;
  v43[3] = &unk_2788C6F68;
  v45 = buf;
  v46 = &v47;
  v16 = v14;
  v44 = v16;
  [v15 loadProtobufTileAtPath:v10 handler:v43];

  v17 = v16;
  v18 = [MEMORY[0x277CBEAA8] now];
  v19 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v17, v19))
  {
    v20 = [MEMORY[0x277CBEAA8] now];
    [v20 timeIntervalSinceDate:v18];
    v22 = v21;
    v23 = objc_opt_new();
    v24 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_401];
    v25 = [MEMORY[0x277CCACC8] callStackSymbols];
    v26 = [v25 filteredArrayUsingPredicate:v24];
    v27 = [v26 firstObject];

    [v23 submitToCoreAnalytics:v27 type:1 duration:v22];
    v28 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
    {
      *v53 = 0;
      _os_log_fault_impl(&dword_2304B3000, v28, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v53, 2u);
    }

    v29 = MEMORY[0x277CCA9B8];
    v62[0] = *MEMORY[0x277CCA450];
    *v53 = @"semaphore wait timeout";
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v62 count:1];
    v31 = [v29 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v30];

    if (v31)
    {
      v32 = v31;

      v33 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v31 = 0;
  }

  v33 = 1;
LABEL_12:

  v34 = v31;
  if ((v33 & 1) == 0)
  {
    objc_storeStrong(v48 + 5, v31);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v35 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v36 = NSStringFromSelector(a2);
      v37 = *(*&buf[8] + 40);
      v38 = v48[5];
      *v53 = 138412803;
      *&v53[4] = v36;
      v54 = 2117;
      v55 = v37;
      v56 = 2112;
      v57 = v38;
      _os_log_impl(&dword_2304B3000, v35, OS_LOG_TYPE_INFO, "%@, tile, %{sensitive}@, error, %@", v53, 0x20u);
    }
  }

  if (a4)
  {
    *a4 = v48[5];
  }

  v39 = *(*&buf[8] + 40);

  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(buf, 8);

  return v39;
}

void __69__RTBluePOITileManager__lazyLoadProtobufTileWithGeoTileKey_outError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_validateTiles:(id)a3
{
  v62 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v38 = self;
    log = objc_opt_new();
    v41 = objc_opt_new();
    v5 = objc_opt_new();
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v39 = v4;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v52 objects:v61 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v53;
      v10 = MEMORY[0x277D86220];
      v11 = MEMORY[0x277CBEC28];
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v53 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v13 = *(*(&v52 + 1) + 8 * i);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            v14 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              v15 = NSStringFromSelector(a2);
              *buf = 138412546;
              v58 = v15;
              v59 = 2112;
              v60 = v13;
              _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "%@, tile to validate, %@", buf, 0x16u);
            }
          }

          [v5 setObject:v11 forKey:{v13, v38}];
          v16 = [v13 downloadKey];

          if (v16)
          {
            v17 = [v13 downloadKey];
            [log setObject:v13 forKey:v17];
          }

          v18 = [v13 geoCacheInfo];

          if (v18)
          {
            v19 = objc_alloc(MEMORY[0x277D0EB08]);
            v20 = [v13 geoCacheInfo];
            v21 = [v19 initWithData:v20];

            if (v21)
            {
              [v41 addObject:v21];
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v52 objects:v61 count:16];
      }

      while (v8);
    }

    v22 = objc_opt_new();
    v23 = dispatch_group_create();
    dispatch_group_enter(v23);
    v24 = [(RTBluePOITileManager *)v38 tileLoader];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __39__RTBluePOITileManager__validateTiles___block_invoke;
    v49[3] = &unk_2788C6F90;
    v51 = a2;
    v25 = v22;
    v50 = v25;
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __39__RTBluePOITileManager__validateTiles___block_invoke_153;
    v47[3] = &unk_2788C4EA0;
    v26 = v23;
    v48 = v26;
    [v24 validateCaches:v41 result:v49 finished:v47];

    dispatch_group_wait(v26, 0xFFFFFFFFFFFFFFFFLL);
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v27 = v25;
    v28 = [v27 countByEnumeratingWithState:&v43 objects:v56 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v44;
      v31 = MEMORY[0x277CBEC38];
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v44 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v33 = *(*(&v43 + 1) + 8 * j);
          v34 = [v27 objectForKeyedSubscript:{v33, v38}];
          v35 = [v34 BOOLValue];

          if (v35)
          {
            v36 = [log objectForKeyedSubscript:v33];
            [v5 setObject:v31 forKeyedSubscript:v36];
          }
        }

        v29 = [v27 countByEnumeratingWithState:&v43 objects:v56 count:16];
      }

      while (v29);
    }

    v4 = v39;
  }

  else
  {
    log = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, log, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: bluePOITiles.count > 0", buf, 2u);
    }

    v5 = MEMORY[0x277CBEC10];
  }

  return v5;
}

void __39__RTBluePOITileManager__validateTiles___block_invoke(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v30[2] = *MEMORY[0x277D85DE8];
  v30[0] = a3;
  v30[1] = a4;
  v9 = a7;
  v10 = [MEMORY[0x277CBEA90] dataWithBytes:v30 length:16];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = NSStringFromSelector(*(a1 + 40));
      v13 = GEOExternalTileKeyAsString();
      v14 = v13;
      if (a2 > 5)
      {
        v15 = @"<unknown>";
      }

      else
      {
        v15 = off_2788C70C0[a2];
      }

      v20 = 138413314;
      v21 = v12;
      v22 = 2112;
      v23 = v10;
      v24 = 2112;
      v25 = v13;
      v26 = 2112;
      v27 = v15;
      v28 = 2112;
      v29 = v9;
      _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%@, download key, %@, external key, %@, result, %@, error, %@", &v20, 0x34u);
    }
  }

  if (v10)
  {
    v16 = a2 > 5;
  }

  else
  {
    v16 = 1;
  }

  if (!v16)
  {
    if (((1 << a2) & 0x29) != 0)
    {
      v17 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        v19 = NSStringFromSelector(*(a1 + 40));
        v20 = 138412290;
        v21 = v19;
        _os_log_fault_impl(&dword_2304B3000, v17, OS_LOG_TYPE_FAULT, "%@, unexpected result for tile validation", &v20, 0xCu);
      }
    }

    else
    {
      if (((1 << a2) & 0x14) != 0)
      {
        v18 = MEMORY[0x277CBEC28];
      }

      else
      {
        v18 = MEMORY[0x277CBEC38];
      }

      [*(a1 + 32) setObject:v18 forKey:v10];
    }
  }
}

- (void)_onBluePOITileStoreNotification:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 name];
  v7 = +[(RTNotification *)RTStoreNotificationAvailabilityDidChange];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    v9 = v5;
    v10 = [(RTBluePOITileManager *)self defaultsManager];
    v11 = [v10 objectForKey:@"RTDefaultsBluePOITileManagerOneTimePurgeComplete"];
    if (v11)
    {
      v12 = [(RTBluePOITileManager *)self defaultsManager];
      v13 = [v12 objectForKey:@"RTDefaultsBluePOITileManagerSecondTimePurgeComplete"];
      v14 = v13 == 0;
    }

    else
    {
      v14 = 1;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v15 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = NSStringFromSelector(a2);
        v17 = +[RTStore availabilityToString:](RTStore, "availabilityToString:", [v9 availability]);
        v18 = v17;
        v19 = @"NO";
        *buf = 138412802;
        v23 = v16;
        v24 = 2112;
        if (v14)
        {
          v19 = @"YES";
        }

        v25 = v17;
        v26 = 2112;
        v27 = v19;
        _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "%@, BluePOI tile store available, %@, should one-time purge, %@", buf, 0x20u);
      }
    }

    if ([v9 availability] == 2 && v14)
    {
      v20 = [MEMORY[0x277CBEAA8] date];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __56__RTBluePOITileManager__onBluePOITileStoreNotification___block_invoke;
      v21[3] = &unk_2788C4D10;
      v21[4] = self;
      v21[5] = a2;
      [(RTBluePOITileManager *)self _performPurgeOfType:1 referenceDate:v20 completion:v21];
    }
  }
}

void __56__RTBluePOITileManager__onBluePOITileStoreNotification___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) defaultsManager];
  v5 = MEMORY[0x277CBEC38];
  [v4 setObject:MEMORY[0x277CBEC38] forKey:@"RTDefaultsBluePOITileManagerOneTimePurgeComplete"];

  v6 = [*(a1 + 32) defaultsManager];
  [v6 setObject:v5 forKey:@"RTDefaultsBluePOITileManagerSecondTimePurgeComplete"];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = NSStringFromSelector(*(a1 + 40));
      v9 = 138412546;
      v10 = v8;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, purge error, %@", &v9, 0x16u);
    }
  }
}

- (void)onBluePOITileStoreNotification:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__RTBluePOITileManager_onBluePOITileStoreNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_onBatteryManagerNotification:(id)a3
{
  v7 = a3;
  v4 = [v7 name];
  v5 = +[(RTNotification *)RTBatteryManagerNotificationChargerConnected];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    -[RTBluePOITileManager setDeviceCharging:](self, "setDeviceCharging:", [v7 connected]);
  }
}

- (void)onBatteryManagerNotification:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__RTBluePOITileManager_onBatteryManagerNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (unint64_t)geoTileKeyForLocation:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  [v5 latitude];
  [v5 longitude];
  [(RTBluePOITileManager *)self geoTileKeyForLocationDeprecated:v5];
  v6 = GEOGetQuadKeyForCoordinate();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = NSStringFromSelector(a2);
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v6];
      v11 = 138412803;
      v12 = v8;
      v13 = 2117;
      v14 = v5;
      v15 = 2117;
      v16 = v9;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, location, %{sensitive}@, geoTileKey, %{sensitive}@", &v11, 0x20u);
    }
  }

  return v6;
}

- (id)geoTileKeysForLocation:(id)a3 radius:(double)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  [v6 latitude];
  [v6 longitude];
  v7 = GEOGetQuadKeysWithinRadiusFromCoordinate();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = NSStringFromSelector(a2);
      v10 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
      *buf = 138412803;
      v14 = v9;
      v15 = 2117;
      v16 = v6;
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@, location, %{sensitive}@, radius, %@", buf, 0x20u);
    }
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __54__RTBluePOITileManager_geoTileKeysForLocation_radius___block_invoke;
  v12[3] = &__block_descriptor_40_e22_v24__0__NSNumber_8_B16l;
  v12[4] = a2;
  [v7 enumerateObjectsUsingBlock:v12];

  return v7;
}

void __54__RTBluePOITileManager_geoTileKeysForLocation_radius___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = NSStringFromSelector(*(a1 + 32));
      v6 = 138412547;
      v7 = v5;
      v8 = 2117;
      v9 = v3;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, geoTileKey, %{sensitive}@", &v6, 0x16u);
    }
  }
}

- (id)downloadKeyForLocation:(id)a3
{
  v22[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  [v4 latitude];
  [v4 longitude];
  v22[0] = 0;
  v22[1] = 0;
  v5 = GEOExternalTileKeyForLocation();
  v6 = 0;
  if (v5)
  {
    v6 = [MEMORY[0x277CBEA90] dataWithBytes:v22 length:16];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = NSStringFromSelector(a2);
      if (v5)
      {
        v9 = @"YES";
      }

      else
      {
        v9 = @"NO";
      }

      v10 = GEOExternalTileKeyAsString();
      v12 = 138413315;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      v16 = 2117;
      v17 = v4;
      v18 = 2112;
      v19 = v6;
      v20 = 2112;
      v21 = v10;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, success, %@, location, %{sensitive}@, download key, %@, external key, %@", &v12, 0x34u);
    }
  }

  return v6;
}

- (id)downloadKeysForLocation:(id)a3 radius:(double)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  [v6 latitude];
  [v6 longitude];
  v7 = objc_opt_new();
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __55__RTBluePOITileManager_downloadKeysForLocation_radius___block_invoke;
  v20 = &unk_2788C6FD8;
  v22 = a2;
  v8 = v7;
  v21 = v8;
  v9 = _Block_copy(&v17);
  v10 = GEOExternalTileKeysForArea();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = NSStringFromSelector(a2);
      if (v10)
      {
        v13 = @"YES";
      }

      else
      {
        v13 = @"NO";
      }

      v14 = [v8 count];
      *buf = 138413315;
      v24 = v12;
      v25 = 2117;
      v26 = v6;
      v27 = 2048;
      v28 = a4;
      v29 = 2112;
      v30 = v13;
      v31 = 2048;
      v32 = v14;
      _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%@, location, %{sensitive}@, radius, %.1f, result, %@, download key count, %lu", buf, 0x34u);
    }
  }

  v15 = v8;

  return v8;
}

void __55__RTBluePOITileManager_downloadKeysForLocation_radius___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v14[0] = a2;
  v14[1] = a3;
  v4 = [MEMORY[0x277CBEA90] dataWithBytes:v14 length:16];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = NSStringFromSelector(*(a1 + 40));
      v7 = GEOExternalTileKeyAsString();
      v8 = 138412803;
      v9 = v6;
      v10 = 2117;
      v11 = v7;
      v12 = 2117;
      v13 = v4;
      _os_log_debug_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEBUG, "%@, geo external tile key, %{sensitive}@, download key, %{sensitive}@", &v8, 0x20u);
    }
  }

  if (v4)
  {
    [*(a1 + 32) addObject:v4];
  }
}

- (unint64_t)geoTileKeyForLocationDeprecated:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [v4 latitude];
  v6 = v5;
  [v4 longitude];
  v8 = fmax(v6, -85.0511288);
  if (v8 > 85.0511288)
  {
    v8 = 85.0511288;
  }

  v9 = fmax(v7, -180.0);
  if (v9 > 180.0)
  {
    v9 = 180.0;
  }

  v10 = (v9 + 180.0) / 360.0;
  v11 = sin(v8 * 3.14159265 / 180.0);
  v12 = log((v11 + 1.0) / (1.0 - v11));
  v13 = vcvtmd_u64_f64(v10 * 262144.0);
  v14 = vcvtmd_u64_f64((v12 / -12.5663706 + 0.5) * 262144.0);
  if (v13 >= 0x3FFFF)
  {
    v13 = 0x3FFFFLL;
  }

  if (v14 >= 0x3FFFF)
  {
    v14 = 0x3FFFFLL;
  }

  v15 = (v13 | (v13 << 16)) & 0x3000000FFLL | (((v13 | (v13 << 16)) & 0x30000FFFFLL) << 8) & 0xFFFF00FFFFFF00FFLL;
  v16 = (v15 | (16 * v15)) & 0xF303F303F303F303 | (4 * ((v15 | (16 * v15)) & 0xFF0FFF0FFF0FFF0FLL)) & 0xF3F3F3F3F3F3F3F3;
  v17 = (v14 | (v14 << 16)) & 0x3000000FFLL | (((v14 | (v14 << 16)) & 0x30000FFFFLL) << 8) & 0xFFFF00FFFFFF00FFLL;
  v18 = (v17 | (16 * v17)) & 0xF303F303F303F303 | (4 * ((v17 | (16 * v17)) & 0xFF0FFF0FFF0FFF0FLL)) & 0xF3F3F3F3F3F3F3F3;
  v19 = (v16 | (2 * v16)) & 0xDDDDDDDDDDDDDDDDLL | ((4 * v18) | (2 * v18)) & 0xBBBBBBBBBBBBBBBBLL;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = NSStringFromSelector(a2);
      v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v19 | 0x1000000000];
      v24 = 138412803;
      v25 = v21;
      v26 = 2117;
      v27 = v4;
      v28 = 2117;
      v29 = v22;
      _os_log_impl(&dword_2304B3000, v20, OS_LOG_TYPE_INFO, "%@, location, %{sensitive}@, geoTileKey, %{sensitive}@", &v24, 0x20u);
    }
  }

  return v19 | 0x1000000000;
}

- (BOOL)_validateMetadata:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v6 = objc_alloc(MEMORY[0x277D0EB08]);
  v7 = [v5 geoCacheInfo];
  v8 = [v6 initWithData:v7];

  if (v8)
  {
    v9 = dispatch_group_create();
    dispatch_group_enter(v9);
    v10 = [(RTBluePOITileManager *)self tileLoader];
    v23 = v8;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __42__RTBluePOITileManager__validateMetadata___block_invoke;
    v18[3] = &unk_2788C7000;
    v18[4] = &v19;
    v18[5] = a2;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __42__RTBluePOITileManager__validateMetadata___block_invoke_164;
    v16[3] = &unk_2788C4EA0;
    v12 = v9;
    v17 = v12;
    [v10 validateCaches:v11 result:v18 finished:v16];

    v13 = *(v20 + 24);
  }

  else
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = NSStringFromSelector(a2);
      *buf = 138412290;
      v25 = v15;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "%@, nil cache info", buf, 0xCu);
    }

    v13 = 0;
  }

  _Block_object_dispose(&v19, 8);
  return v13 & 1;
}

void __42__RTBluePOITileManager__validateMetadata___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7)
{
  v31 = *MEMORY[0x277D85DE8];
  v29 = a3;
  v30 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a7;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = NSStringFromSelector(*(a1 + 40));
      v16 = GEOExternalTileKeyAsString();
      v17 = v16;
      if (a2 > 5)
      {
        v18 = @"<unknown>";
      }

      else
      {
        v18 = off_2788C70C0[a2];
      }

      v21 = 138413058;
      v22 = v15;
      v23 = 2112;
      v24 = v16;
      v25 = 2112;
      v26 = v18;
      v27 = 2112;
      v28 = v13;
      _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "%@, external key, %@, result, %@, error, %@", &v21, 0x2Au);
    }
  }

  if (a2 > 2)
  {
    if (a2 != 5 && a2 != 3)
    {
      goto LABEL_17;
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
    }

    goto LABEL_17;
  }

  v19 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
  {
    v20 = NSStringFromSelector(*(a1 + 40));
    v21 = 138412290;
    v22 = v20;
    _os_log_fault_impl(&dword_2304B3000, v19, OS_LOG_TYPE_FAULT, "%@, unexpected result for tile validation", &v21, 0xCu);
  }

LABEL_17:
}

- (void)fetchPOICategoryDenyListWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__RTBluePOITileManager_fetchPOICategoryDenyListWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_fetchPOICategoryDenyListWithHandler:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTDefaultsPOICategoryDenylistOverride"];

  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTDefaultsPOICategoryDenylistOverride"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_7:
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __61__RTBluePOITileManager__fetchPOICategoryDenyListWithHandler___block_invoke_170;
    v13[3] = &unk_2788C7048;
    v15 = a2;
    v14 = v5;
    [(RTBluePOITileManager *)self _fetchBluePOIMetadataWithHandler:v13];
    v8 = v14;
    goto LABEL_8;
  }

  v8 = v7;
  v9 = [[_RTMap alloc] initWithInput:v8];
  v10 = [(_RTMap *)v9 withBlock:&__block_literal_global_19];

  v11 = [MEMORY[0x277CBEB98] setWithArray:v10];
  v12 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v11;
    _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_DEFAULT, "overriding category denylist due to default, %@", buf, 0xCu);
  }

  (*(v5 + 2))(v5, v11, 0);
LABEL_8:
}

uint64_t __61__RTBluePOITileManager__fetchPOICategoryDenyListWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 longLongValue];

  return [v2 numberWithLongLong:v3];
}

void __61__RTBluePOITileManager__fetchPOICategoryDenyListWithHandler___block_invoke_170(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = NSStringFromSelector(*(a1 + 40));
      v14 = 138412802;
      v15 = v8;
      v16 = 2112;
      v17 = v5;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, fetched metadata, %@, error, %@", &v14, 0x20u);
    }
  }

  if (v6 || ([v5 categoryDenyList], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "count"), v9, !v10))
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v11 = MEMORY[0x277CBEB98];
    v12 = [v5 categoryDenyList];
    v13 = [v11 setWithArray:v12];

    (*(*(a1 + 32) + 16))();
  }
}

- (void)fetchBluePOIMetadataWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__RTBluePOITileManager_fetchBluePOIMetadataWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_fetchBluePOIMetadataWithHandler:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = [(RTBluePOITileManager *)self bluePOITileStore];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __57__RTBluePOITileManager__fetchBluePOIMetadataWithHandler___block_invoke;
    v7[3] = &unk_2788C7098;
    v7[4] = self;
    v9 = a2;
    v8 = v5;
    [v6 fetchBluePOIMetadataWithHandler:v7];
  }
}

void __57__RTBluePOITileManager__fetchBluePOIMetadataWithHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__RTBluePOITileManager__fetchBluePOIMetadataWithHandler___block_invoke_2;
  block[3] = &unk_2788C47F8;
  v13 = v5;
  v14 = v6;
  v11 = *(a1 + 40);
  v8 = v11;
  v16 = v11;
  v15 = *(a1 + 32);
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void __57__RTBluePOITileManager__fetchBluePOIMetadataWithHandler___block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 64));
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      *buf = 138412802;
      v16 = v3;
      v17 = 2112;
      v18 = v4;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, fetched metadata, %@, error, %@", buf, 0x20u);
    }
  }

  if (*(a1 + 40))
  {
    v6 = *(*(a1 + 56) + 16);
LABEL_7:
    v6();
    return;
  }

  if (*(a1 + 32) && [*(a1 + 48) _validateMetadata:?])
  {
    v6 = *(*(a1 + 56) + 16);
    goto LABEL_7;
  }

  v7 = [*(a1 + 48) mapServiceManager];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__RTBluePOITileManager__fetchBluePOIMetadataWithHandler___block_invoke_172;
  v10[3] = &unk_2788C7070;
  v13 = *(a1 + 56);
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  v11 = v8;
  v12 = v9;
  v14 = *(a1 + 64);
  [v7 fetchBluePOIMetadataWithHandler:v10];
}

void __57__RTBluePOITileManager__fetchBluePOIMetadataWithHandler___block_invoke_172(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = v6;
  if (v5 || !v6)
  {
    if (*(a1 + 32))
    {
      v9 = objc_alloc(MEMORY[0x277D010A8]);
      v10 = [*(a1 + 32) identifier];
      v11 = [v5 categoryDenyList];
      v12 = [v5 geoCacheInfo];
      v13 = [v5 modelCalibrationParameters];
      v14 = [v9 initWithIdentifier:v10 categoryDenyList:v11 geoCacheInfo:v12 modelCalibrationParameters:v13];

      v15 = [*(a1 + 40) bluePOITileStore];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __57__RTBluePOITileManager__fetchBluePOIMetadataWithHandler___block_invoke_2_174;
      v23[3] = &unk_2788C4D10;
      v16 = *(a1 + 56);
      v24 = v14;
      v25 = v16;
      v17 = v14;
      [v15 updateBluePOIMetadata:v17 handler:v23];
    }

    else
    {
      v18 = [*(a1 + 40) bluePOITileStore];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __57__RTBluePOITileManager__fetchBluePOIMetadataWithHandler___block_invoke_175;
      v20[3] = &unk_2788C4D10;
      v22 = *(a1 + 56);
      v21 = *(a1 + 32);
      [v18 storeBluePOIMetadata:v5 handler:v20];

      v17 = v21;
    }

    (*(*(a1 + 48) + 16))(*(a1 + 48), v5, 0, v19);
  }

  else
  {
    (*(*(a1 + 48) + 16))(*(a1 + 48), 0, v6, v7);
  }
}

void __57__RTBluePOITileManager__fetchBluePOIMetadataWithHandler___block_invoke_2_174(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = NSStringFromSelector(*(a1 + 40));
      v6 = *(a1 + 32);
      v7 = 138412802;
      v8 = v5;
      v9 = 2112;
      v10 = v6;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, updated metadata, %@, error, %@", &v7, 0x20u);
    }
  }
}

void __57__RTBluePOITileManager__fetchBluePOIMetadataWithHandler___block_invoke_175(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = NSStringFromSelector(*(a1 + 40));
      v6 = *(a1 + 32);
      v7 = 138412802;
      v8 = v5;
      v9 = 2112;
      v10 = v6;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, saved metadata, %@, error, %@", &v7, 0x20u);
    }
  }
}

- (void)_onVisitManagerVisitIncidentNotification:(id)a3
{
  v12 = a3;
  v4 = [v12 name];
  v5 = +[(RTNotification *)RTVisitManagerVisitIncidentNotification];
  v6 = [v4 isEqualToString:v5];

  v7 = v12;
  if (v6)
  {
    v8 = [v12 visitIncident];
    if ([v8 type] == 1 && (objc_msgSend(v8, "confidence"), v9 == *MEMORY[0x277D01470]))
    {
      [(RTBluePOITileManager *)self setPredownloadBluePOITiles:0];
      [(RTBluePOITileManager *)self setCurrentVisit:v8];
    }

    else if ([v8 type] == 3)
    {
      [v8 confidence];
      if (v10 == *MEMORY[0x277D01470])
      {
        [(RTBluePOITileManager *)self setPredownloadBluePOITiles:1];
        [(RTBluePOITileManager *)self setCurrentVisit:0];
        v11 = [(RTBluePOITileManager *)self pendingTiles];
        [v11 removeAllObjects];
      }
    }

    v7 = v12;
  }
}

- (void)onVisitManagerVisitIncidentNotification:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__RTBluePOITileManager_onVisitManagerVisitIncidentNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

@end