@interface RTBluePOIMonitor
- (BOOL)isSignificantConfidenceUpdateFromConfidence:(double)a3 toConfidence:(double)a4;
- (BOOL)shouldPostUpdateOnPOIEstimate:(id)a3 fromPOIEstimate:(id)a4;
- (BOOL)shouldRefreshAOIAtLocation:(id)a3;
- (RTBluePOIMonitor)initWithDefaultsManager:(id)a3 bluePOIMetricManager:(id)a4 bluePOIMonitorEnabler:(id)a5 bluePOITileManager:(id)a6 distanceCalculator:(id)a7 fingerprintManager:(id)a8 locationManager:(id)a9 mapItemManager:(id)a10 mapServiceManager:(id)a11 platform:(id)a12 wifiManager:(id)a13;
- (id)_fetchLocalMapItemsFromReferenceLocation:(id)a3 locations:(id)a4 accessPoints:(id)a5 signalEnv:(int)a6 skipAggregation:(BOOL)a7 collectMetrics:(BOOL)a8 error:(id *)a9;
- (id)fetchLocalMapItemsFromReferenceLocation:(id)a3 locations:(id)a4 accessPoints:(id)a5 signalEnv:(int)a6 skipAggregation:(BOOL)a7 collectMetrics:(BOOL)a8 error:(id *)a9;
- (id)localBluePOIResultForReferenceLocation:(id)a3 locations:(id)a4 accessPoints:(id)a5 signalEnv:(int)a6 tileRequestPriority:(unint64_t)a7 collectMetrics:(BOOL)a8 error:(id *)a9;
- (void)_processScanResultBuffer;
- (void)_processWifiScanResults:(id)a3;
- (void)_updateLocalMapItemsFromReferenceLocation:(id)a3 locations:(id)a4 accessPoints:(id)a5 signalEnv:(int)a6 error:(id *)a7;
- (void)logLocalBluePOIResult:(id)a3 aggregatedPOIEstimate:(id)a4;
- (void)onLeechWifiScanResultsNotification:(id)a3;
@end

@implementation RTBluePOIMonitor

- (RTBluePOIMonitor)initWithDefaultsManager:(id)a3 bluePOIMetricManager:(id)a4 bluePOIMonitorEnabler:(id)a5 bluePOITileManager:(id)a6 distanceCalculator:(id)a7 fingerprintManager:(id)a8 locationManager:(id)a9 mapItemManager:(id)a10 mapServiceManager:(id)a11 platform:(id)a12 wifiManager:(id)a13
{
  v18 = a3;
  v53 = a4;
  v19 = a4;
  v54 = a5;
  v58 = a5;
  v60 = a6;
  v55 = a7;
  v59 = a7;
  v56 = a8;
  v63 = a8;
  v64 = a9;
  v67 = a10;
  v66 = a11;
  v65 = a12;
  v20 = a13;
  v62 = v20;
  if (!v18)
  {
    v21 = v19;
    v46 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v46, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: defaultsManager", buf, 2u);
    }

    v45 = 0;
    v44 = self;
    goto LABEL_25;
  }

  v21 = v19;
  if (!v19)
  {
    v47 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    v44 = self;
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v47, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: bluePOIMetricManager", buf, 2u);
    }

    v45 = 0;
LABEL_25:
    v22 = v58;
    v24 = v59;
    v23 = v60;
    v26 = v63;
    v25 = v64;
    goto LABEL_48;
  }

  v22 = v58;
  if (!v58)
  {
    v48 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    v24 = v59;
    v23 = v60;
    v25 = v64;
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v48, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: bluePOIMonitorEnabler", buf, 2u);
    }

    v45 = 0;
    v26 = v63;
    goto LABEL_47;
  }

  v24 = v59;
  v23 = v60;
  v25 = v64;
  if (!v60)
  {
    v49 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    v26 = v63;
    if (!os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_46;
    }

    *buf = 0;
    v50 = "Invalid parameter not satisfying: bluePOITileManager";
LABEL_45:
    _os_log_error_impl(&dword_2304B3000, v49, OS_LOG_TYPE_ERROR, v50, buf, 2u);
    goto LABEL_46;
  }

  v26 = v63;
  if (!v59)
  {
    v49 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_46;
    }

    *buf = 0;
    v50 = "Invalid parameter not satisfying: distanceCalculator";
    goto LABEL_45;
  }

  if (!v63)
  {
    v49 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_46;
    }

    *buf = 0;
    v50 = "Invalid parameter not satisfying: fingerprintManager";
    goto LABEL_45;
  }

  if (!v64)
  {
    v49 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_46;
    }

    *buf = 0;
    v50 = "Invalid parameter not satisfying: locationManager";
    goto LABEL_45;
  }

  if (!v67)
  {
    v49 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_46;
    }

    *buf = 0;
    v50 = "Invalid parameter not satisfying: mapItemManager";
    goto LABEL_45;
  }

  if (!v66)
  {
    v49 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_46;
    }

    *buf = 0;
    v50 = "Invalid parameter not satisfying: mapServiceManager";
    goto LABEL_45;
  }

  if (!v65)
  {
    v49 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_46;
    }

    *buf = 0;
    v50 = "Invalid parameter not satisfying: platform";
    goto LABEL_45;
  }

  if (!v20)
  {
    v49 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v50 = "Invalid parameter not satisfying: wifiManager";
      goto LABEL_45;
    }

LABEL_46:

    v45 = 0;
LABEL_47:
    v44 = self;
    goto LABEL_48;
  }

  v68.receiver = self;
  v68.super_class = RTBluePOIMonitor;
  v27 = [(RTNotifier *)&v68 init];
  v28 = v27;
  if (!v27)
  {
LABEL_18:
    v44 = v28;
    v45 = v44;
    goto LABEL_48;
  }

  objc_storeStrong(&v27->_defaultsManager, a3);
  v28->_aoiRefreshBackoffInterval = 5.0;
  v29 = [[RTBluePOIAggregator alloc] initWithBluePOIMetricManager:v21 defaultsManager:v18 distanceCalculator:v59 platform:v65];
  bluePOIAggregator = v28->_bluePOIAggregator;
  v28->_bluePOIAggregator = v29;

  if (v28->_bluePOIAggregator)
  {
    objc_storeStrong(&v28->_bluePOIMetricManager, v53);
    objc_storeStrong(&v28->_bluePOIMonitorEnabler, v54);
    objc_storeStrong(&v28->_bluePOITileManager, a6);
    objc_storeStrong(&v28->_distanceCalculator, v55);
    v28->_distanceToRefreshAOI = 0.0;
    objc_storeStrong(&v28->_fingerprintManager, v56);
    lastAOIRefreshResult = v28->_lastAOIRefreshResult;
    v28->_lastAOIRefreshResult = 0;

    lastInferredScanResultDate = v28->_lastInferredScanResultDate;
    v28->_lastInferredScanResultDate = 0;

    lastPostedBluePOIEstimate = v28->_lastPostedBluePOIEstimate;
    v28->_lastPostedBluePOIEstimate = 0;

    objc_storeStrong(&v28->_locationManager, a9);
    objc_storeStrong(&v28->_mapItemManager, a10);
    objc_storeStrong(&v28->_mapServiceManager, a11);
    nextAOIRefreshDate = v28->_nextAOIRefreshDate;
    v28->_nextAOIRefreshDate = 0;

    objc_storeStrong(&v28->_platform, a12);
    v35 = objc_opt_new();
    scanResultBuffer = v28->_scanResultBuffer;
    v28->_scanResultBuffer = v35;

    v37 = v28;
    objc_storeStrong(&v28->_wifiManager, a13);
    wifiManager = v28->_wifiManager;
    v39 = +[(RTNotification *)RTWiFiManagerNotificationLeechScanResults];
    v40 = wifiManager;
    v28 = v37;
    v41 = v37;
    v25 = v64;
    [(RTNotifier *)v40 addObserver:v41 selector:sel_onLeechWifiScanResultsNotification_ name:v39];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v42 = v28;
      v43 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2304B3000, v43, OS_LOG_TYPE_INFO, "initialized RTBluePOIMonitor", buf, 2u);
      }

      v28 = v42;
    }

    goto LABEL_18;
  }

  v44 = v28;
  v52 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v52, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: _bluePOIAggregator", buf, 2u);
  }

  v45 = 0;
LABEL_48:

  return v45;
}

- (void)onLeechWifiScanResultsNotification:(id)a3
{
  v4 = a3;
  v5 = [(RTBluePOIMonitorEnabler *)self->_bluePOIMonitorEnabler enabled];
  v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v6)
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEBUG, "Background POI monitoring ENABLED", buf, 2u);
      }
    }

    v8 = [(RTNotifier *)self queue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __55__RTBluePOIMonitor_onLeechWifiScanResultsNotification___block_invoke;
    v10[3] = &unk_2788C4A70;
    v11 = v4;
    v12 = self;
    dispatch_async(v8, v10);

    v9 = v11;
LABEL_10:

    goto LABEL_11;
  }

  if (v6)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEBUG, "Background POI monitoring NOT ENABLED", buf, 2u);
    }

    goto LABEL_10;
  }

LABEL_11:
}

uint64_t __55__RTBluePOIMonitor_onLeechWifiScanResultsNotification___block_invoke(uint64_t a1)
{
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    v3 = [*(a1 + 32) scanResults];
    if (v3)
    {
      [*(a1 + 40) _processWifiScanResults:v3];
    }

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

- (void)_processWifiScanResults:(id)a3
{
  v4 = a3;
  v5 = [(RTBluePOIMonitor *)self lastInferredScanResultDate];
  v6 = [v4 firstObject];
  v7 = [v6 date];
  [v5 timeIntervalSinceDate:v7];
  v9 = v8;

  if (v9 <= 0.0)
  {
    v11 = [(RTBluePOIMonitor *)self scanResultBuffer];
    v12 = [v11 count];

    v13 = [(RTBluePOIMonitor *)self scanResultBuffer];
    v14 = v13;
    if (v12)
    {
      v15 = [v13 firstObject];
      v16 = [v15 date];

      v17 = [v4 firstObject];
      v18 = [v17 date];

      [v18 timeIntervalSinceDate:v16];
      if (v19 >= 5.0)
      {
        [(RTBluePOIMonitor *)self _processScanResultBuffer];
        v23 = [(RTBluePOIMonitor *)self scanResultBuffer];
        [v23 addObjectsFromArray:v4];

        v24 = dispatch_time(0, 5000000000);
        v25 = [(RTNotifier *)self queue];
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __44__RTBluePOIMonitor__processWifiScanResults___block_invoke_2;
        v26[3] = &unk_2788C4EA0;
        v26[4] = self;
        dispatch_after(v24, v25, v26);
      }

      else
      {
        v20 = [(RTBluePOIMonitor *)self scanResultBuffer];
        [v20 addObjectsFromArray:v4];
      }
    }

    else
    {
      [v13 addObjectsFromArray:v4];

      v21 = dispatch_time(0, 5000000000);
      v22 = [(RTNotifier *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __44__RTBluePOIMonitor__processWifiScanResults___block_invoke;
      block[3] = &unk_2788C4EA0;
      block[4] = self;
      dispatch_after(v21, v22, block);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "ignoring scan result before last inferred scan result", buf, 2u);
    }
  }
}

- (void)_processScanResultBuffer
{
  v3 = [(RTBluePOIMonitor *)self scanResultBuffer];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(RTBluePOIMonitor *)self scanResultBuffer];
    v6 = [v5 copy];

    v7 = [(RTBluePOIMonitor *)self scanResultBuffer];
    [v7 removeAllObjects];

    v8 = [v6 firstObject];
    v9 = [v8 date];

    v10 = [(RTBluePOIMonitor *)self lastInferredScanResultDate];
    [v10 timeIntervalSinceDate:v9];
    v12 = v11;

    if (v12 <= 0.0)
    {
      *buf = 0;
      v23 = buf;
      v24 = 0x3032000000;
      v25 = __Block_byref_object_copy__50;
      v26 = __Block_byref_object_dispose__50;
      v27 = 0;
      v20[0] = 0;
      v20[1] = v20;
      v20[2] = 0x3032000000;
      v20[3] = __Block_byref_object_copy__50;
      v20[4] = __Block_byref_object_dispose__50;
      v21 = 0;
      v14 = [(RTBluePOIMonitor *)self locationManager];
      v15 = [objc_alloc(MEMORY[0x277D01198]) initWithDate:v9];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __44__RTBluePOIMonitor__processScanResultBuffer__block_invoke;
      v16[3] = &unk_2788C69F0;
      v16[4] = self;
      v18 = v20;
      v19 = buf;
      v17 = v6;
      [v14 fetchLocationsFromCoreLocationWithOptions:v15 handler:v16];

      _Block_object_dispose(v20, 8);
      _Block_object_dispose(buf, 8);
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "ignoring buffered scan result before last inferred scan result", buf, 2u);
      }
    }
  }
}

void __44__RTBluePOIMonitor__processScanResultBuffer__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__RTBluePOIMonitor__processScanResultBuffer__block_invoke_2;
  block[3] = &unk_2788C92D0;
  v14 = v6;
  v15 = v5;
  v8 = *(a1 + 32);
  v18 = *(a1 + 56);
  v16 = v8;
  v12 = *(a1 + 40);
  v9 = v12;
  v17 = v12;
  v10 = v5;
  v11 = v6;
  dispatch_async(v7, block);
}

void __44__RTBluePOIMonitor__processScanResultBuffer__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), v2);
  }

  v3 = [*(a1 + 40) firstObject];
  v4 = [v3 location];

  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277D01160]) initWithCLLocation:v4];
    v6 = *(*(a1 + 72) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = *(a1 + 48);
    v9 = *(*(*(a1 + 72) + 8) + 40);
    v10 = [MEMORY[0x277CBEA60] arrayWithObject:v9];
    v11 = *(a1 + 56);
    v12 = 0;
    [v8 _updateLocalMapItemsFromReferenceLocation:v9 locations:v10 accessPoints:v11 signalEnv:objc_msgSend(v4 error:{"signalEnvironmentType"), &v12}];
  }
}

- (BOOL)shouldRefreshAOIAtLocation:(id)a3
{
  v64 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(RTBluePOIMonitor *)self nextAOIRefreshDate];
  if (v6)
  {
    v7 = v6;
    v8 = [v5 date];
    v9 = [(RTBluePOIMonitor *)self nextAOIRefreshDate];
    v10 = [v8 isOnOrAfter:v9];

    if ((v10 & 1) == 0)
    {
      v11 = [v5 date];
      v12 = [(RTBluePOIMonitor *)self nextAOIRefreshDate];
      [v11 timeIntervalSinceDate:v12];
      v14 = v13;

      if (v14 < 0.0)
      {
        v14 = -v14;
      }

      v15 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
      if (v14 <= 3600.0)
      {
        if (!v15)
        {
          v33 = 0;
          goto LABEL_26;
        }

        v22 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v44 = NSStringFromSelector(a2);
          v45 = [(RTBluePOIMonitor *)self nextAOIRefreshDate];
          v46 = [v5 date];
          *buf = 138412802;
          v49 = v44;
          v50 = 2112;
          v51 = v45;
          v52 = 2112;
          v53 = v46;
          _os_log_impl(&dword_2304B3000, v22, OS_LOG_TYPE_INFO, "%@, NO, nextAOIRefreshDate, %@, updatedLocationDate, %@", buf, 0x20u);
        }

        v33 = 0;
        goto LABEL_25;
      }

      if (v15)
      {
        v16 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = NSStringFromSelector(a2);
          v18 = [(RTBluePOIMonitor *)self nextAOIRefreshDate];
          v19 = [v5 date];
          *buf = 138412802;
          v49 = v17;
          v50 = 2112;
          v51 = v18;
          v52 = 2112;
          v53 = v19;
          _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "%@, resetting nextAOIRefreshDate, %@, updatedLocationDate, %@", buf, 0x20u);
        }
      }

      v20 = [v5 date];
      [(RTBluePOIMonitor *)self setNextAOIRefreshDate:v20];
    }
  }

  v21 = [(RTBluePOIMonitor *)self lastAOIRefreshResult];
  v22 = [v21 referenceLocation];

  if (v22)
  {
    v23 = [(RTBluePOIMonitor *)self distanceCalculator];
    v47 = 0;
    [v23 distanceFromLocation:v22 toLocation:v5 error:&v47];
    v25 = v24;
    v26 = v47;

    [v22 horizontalUncertainty];
    v28 = v27;
    [v5 horizontalUncertainty];
    v30 = v25 + v29;
    if (v28 < v30)
    {
      v28 = v30;
    }

    [(RTBluePOIMonitor *)self distanceToRefreshAOI];
    v32 = v31;
    v33 = v28 >= v31;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v34 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v35 = NSStringFromSelector(a2);
        if (v28 < v32)
        {
          v36 = @"NO";
        }

        else
        {
          v36 = @"YES";
        }

        v37 = [(RTBluePOIMonitor *)self nextAOIRefreshDate];
        v38 = [v5 date];
        [(RTBluePOIMonitor *)self distanceToRefreshAOI];
        *buf = 138414083;
        v49 = v35;
        v50 = 2112;
        v51 = v36;
        v52 = 2112;
        v53 = v37;
        v54 = 2112;
        v55 = v38;
        v56 = 2117;
        v57 = v22;
        v58 = 2117;
        v59 = v5;
        v60 = 2048;
        v61 = v28;
        v62 = 2048;
        v63 = v39;
        _os_log_impl(&dword_2304B3000, v34, OS_LOG_TYPE_INFO, "%@, %@, nextAOIRefreshDate, %@, updatedLocationDate, %@, lastAOIRefreshLocation, %{sensitive}@, updatedLocation, %{sensitive}@, distanceWithUncertainty, %f, distanceToRefreshAOI, %f", buf, 0x52u);
      }
    }
  }

  else
  {
    v33 = 1;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v22 = 0;
      goto LABEL_25;
    }

    v26 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v40 = NSStringFromSelector(a2);
      v41 = [(RTBluePOIMonitor *)self nextAOIRefreshDate];
      v42 = [v5 date];
      *buf = 138413059;
      v49 = v40;
      v50 = 2112;
      v51 = v41;
      v52 = 2112;
      v53 = v42;
      v54 = 2117;
      v55 = 0;
      _os_log_impl(&dword_2304B3000, v26, OS_LOG_TYPE_INFO, "%@, YES, nextAOIRefreshDate, %@, updatedLocationDate, %@, lastAOIRefreshLocation, %{sensitive}@", buf, 0x2Au);
    }
  }

LABEL_25:
LABEL_26:

  return v33;
}

- (BOOL)isSignificantConfidenceUpdateFromConfidence:(double)a3 toConfidence:(double)a4
{
  if ([&unk_2845A0C38 count] == 1)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  do
  {
    v9 = [&unk_2845A0C38 objectAtIndexedSubscript:v6];
    [v9 doubleValue];
    if (v10 <= a3)
    {
      v11 = [&unk_2845A0C38 objectAtIndexedSubscript:v6 + 1];
      [v11 doubleValue];
      v13 = v12;

      if (v13 > a3)
      {
        v8 = v6;
      }
    }

    else
    {
    }

    v14 = [&unk_2845A0C38 objectAtIndexedSubscript:v6];
    [v14 doubleValue];
    if (v15 <= a4)
    {
      v16 = [&unk_2845A0C38 objectAtIndexedSubscript:v6 + 1];
      [v16 doubleValue];
      v18 = v17;

      if (v18 > a4)
      {
        v7 = v6;
      }

      ++v6;
    }

    else
    {

      ++v6;
    }
  }

  while ([&unk_2845A0C38 count] - 1 > v6);
  if (v7 == v8)
  {
    return 0;
  }

  if (v7 <= v8)
  {
    return a3 - a4 > 0.15;
  }

  return 1;
}

- (BOOL)shouldPostUpdateOnPOIEstimate:(id)a3 fromPOIEstimate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v37 = !v7 || ((v9 = [v7 mostConfidentPOI], v10 = objc_msgSend(v6, "mostConfidentPOI"), objc_msgSend(v8, "poiConfidences"), v11 = v8 = v7;

  return v37;
}

- (void)logLocalBluePOIResult:(id)a3 aggregatedPOIEstimate:(id)a4
{
  v83 = *MEMORY[0x277D85DE8];
  v57 = a3;
  v58 = a4;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v5 = [v57 poiConfidences];
  v6 = [v5 allKeys];

  v7 = [v6 countByEnumeratingWithState:&v71 objects:v82 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v72;
    v10 = MEMORY[0x277D86220];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v72 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v71 + 1) + 8 * i);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v13 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v14 = [v12 unsignedIntegerValue];
            v15 = [v57 poiConfidences];
            v16 = [v15 objectForKeyedSubscript:v12];
            [v16 doubleValue];
            *buf = 134218240;
            v79 = v14;
            v80 = 2048;
            v81 = v17;
            _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "originalBluePOIResult, POI, %lu, confidence, %f", buf, 0x16u);
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v71 objects:v82 count:16];
    }

    while (v8);
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v18 = [v58 poiConfidences];
  v19 = [v18 allKeys];

  v20 = [v19 countByEnumeratingWithState:&v67 objects:v77 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v68;
    v23 = MEMORY[0x277D86220];
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v68 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v25 = *(*(&v67 + 1) + 8 * j);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v26 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            v27 = [v25 unsignedIntegerValue];
            v28 = [v58 poiConfidences];
            v29 = [v28 objectForKeyedSubscript:v25];
            [v29 doubleValue];
            *buf = 134218240;
            v79 = v27;
            v80 = 2048;
            v81 = v30;
            _os_log_impl(&dword_2304B3000, v26, OS_LOG_TYPE_INFO, "aggregatedPOIEstimate, POI, %lu, confidence, %f", buf, 0x16u);
          }
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v67 objects:v77 count:16];
    }

    while (v21);
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v31 = [v57 aoiConfidences];
  v32 = [v31 allKeys];

  v33 = [v32 countByEnumeratingWithState:&v63 objects:v76 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v64;
    v36 = MEMORY[0x277D86220];
    do
    {
      for (k = 0; k != v34; ++k)
      {
        if (*v64 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v38 = *(*(&v63 + 1) + 8 * k);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          v39 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
          {
            v40 = [v38 unsignedIntegerValue];
            v41 = [v57 aoiConfidences];
            v42 = [v41 objectForKeyedSubscript:v38];
            [v42 doubleValue];
            *buf = 134218240;
            v79 = v40;
            v80 = 2048;
            v81 = v43;
            _os_log_impl(&dword_2304B3000, v39, OS_LOG_TYPE_INFO, "originalBluePOIResult, AOI, %lu, confidence, %f", buf, 0x16u);
          }
        }
      }

      v34 = [v32 countByEnumeratingWithState:&v63 objects:v76 count:16];
    }

    while (v34);
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v44 = [v58 aoiConfidences];
  v45 = [v44 allKeys];

  v46 = [v45 countByEnumeratingWithState:&v59 objects:v75 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v60;
    v49 = MEMORY[0x277D86220];
    do
    {
      for (m = 0; m != v47; ++m)
      {
        if (*v60 != v48)
        {
          objc_enumerationMutation(v45);
        }

        v51 = *(*(&v59 + 1) + 8 * m);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
        {
          v52 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
          if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
          {
            v53 = [v51 unsignedIntegerValue];
            v54 = [v58 aoiConfidences];
            v55 = [v54 objectForKeyedSubscript:v51];
            [v55 doubleValue];
            *buf = 134218240;
            v79 = v53;
            v80 = 2048;
            v81 = v56;
            _os_log_impl(&dword_2304B3000, v52, OS_LOG_TYPE_INFO, "aggregatedPOIEstimate, AOI, %lu, confidence, %f", buf, 0x16u);
          }
        }
      }

      v47 = [v45 countByEnumeratingWithState:&v59 objects:v75 count:16];
    }

    while (v47);
  }
}

- (id)localBluePOIResultForReferenceLocation:(id)a3 locations:(id)a4 accessPoints:(id)a5 signalEnv:(int)a6 tileRequestPriority:(unint64_t)a7 collectMetrics:(BOOL)a8 error:(id *)a9
{
  dsema = a8;
  v198 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v189[0] = MEMORY[0x277D85DD0];
  v189[1] = 3221225472;
  v189[2] = __133__RTBluePOIMonitor_localBluePOIResultForReferenceLocation_locations_accessPoints_signalEnv_tileRequestPriority_collectMetrics_error___block_invoke;
  v189[3] = &__block_descriptor_40_e34_v32__0__RTWiFiAccessPoint_8Q16_B24l;
  aSelector = a2;
  v189[4] = a2;
  v149 = v14;
  [v14 enumerateObjectsUsingBlock:v189];
  v188[0] = MEMORY[0x277D85DD0];
  v188[1] = 3221225472;
  v188[2] = __133__RTBluePOIMonitor_localBluePOIResultForReferenceLocation_locations_accessPoints_signalEnv_tileRequestPriority_collectMetrics_error___block_invoke_61;
  v188[3] = &__block_descriptor_40_e27_v32__0__RTLocation_8Q16_B24l;
  v188[4] = a2;
  [v13 enumerateObjectsUsingBlock:v188];
  v186 = 0u;
  v187 = 0u;
  v184 = 0u;
  v185 = 0u;
  obj = v13;
  v15 = [obj countByEnumeratingWithState:&v184 objects:v195 count:16];
  if (v15)
  {
    v16 = *v185;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v185 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v184 + 1) + 8 * i);
        [v18 horizontalUncertainty];
        if (v19 > 0.0)
        {
          if (v12)
          {
            [v18 horizontalUncertainty];
            v21 = v20;
            [v12 horizontalUncertainty];
            if (v21 < v22)
            {
              v23 = v18;

              v12 = v23;
            }
          }

          else
          {
            v12 = v18;
          }
        }
      }

      v15 = [obj countByEnumeratingWithState:&v184 objects:v195 count:16];
    }

    while (v15);
  }

  v24 = [v12 date];
  if (!v24)
  {
    goto LABEL_17;
  }

  v25 = [v149 firstObject];
  v26 = [v25 date];
  v27 = [v12 date];
  [v26 timeIntervalSinceDate:v27];
  v29 = v28;

  v30 = -v29;
  if (v29 >= 0.0)
  {
    v30 = v29;
  }

  v31 = v30 > 60.0;

  if (!v31)
  {
    v150 = v12;
  }

  else
  {
LABEL_17:
    v32 = objc_alloc(MEMORY[0x277D01160]);
    [v12 latitude];
    v34 = v33;
    [v12 longitude];
    v36 = v35;
    [v12 horizontalUncertainty];
    v38 = v37;
    [v12 altitude];
    v40 = v39;
    [v12 verticalUncertainty];
    v42 = v41;
    v43 = [v149 firstObject];
    v44 = [v43 date];
    v45 = [v12 referenceFrame];
    [v12 speed];
    v150 = [v32 initWithLatitude:v44 longitude:v45 horizontalUncertainty:objc_msgSend(v12 altitude:"sourceAccuracy") verticalUncertainty:v34 date:v36 referenceFrame:v38 speed:v40 sourceAccuracy:{v42, v46}];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v47 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        v48 = NSStringFromSelector(aSelector);
        *buf = 138412547;
        *&buf[4] = v48;
        *&buf[12] = 2117;
        *&buf[14] = v150;
        _os_log_impl(&dword_2304B3000, v47, OS_LOG_TYPE_INFO, "%@, corrected reference location, %{sensitive}@", buf, 0x16u);
      }
    }
  }

  if (dsema)
  {
    if (a7 == 1)
    {
      v49 = 1;
    }

    else
    {
      v49 = 2;
    }

    v50 = [(RTBluePOIMonitor *)self bluePOIMetricManager];
    v51 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v49];
    [v50 setEventMetricsValue:v51 forKey:@"queryType"];

    v52 = [(RTBluePOIMonitor *)self bluePOIMetricManager];
    v145 = [v52 objectForKey:@"BluePOIQueryEventLastActiveWiFiScanDate"];

    if (v145)
    {
      v53 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-5.0];
      v54 = [v145 isAfterDate:v53];
    }

    else
    {
      v54 = 0;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v55 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
      {
        v56 = NSStringFromSelector(aSelector);
        v57 = @"NO";
        *buf = 138412802;
        *&buf[4] = v56;
        *&buf[12] = 2112;
        if (v54)
        {
          v57 = @"YES";
        }

        *&buf[14] = v145;
        *&buf[22] = 2112;
        v191 = v57;
        _os_log_impl(&dword_2304B3000, v55, OS_LOG_TYPE_INFO, "%@, lastActiveWiFiScanDate, %@, activeWiFiScanRequest, %@", buf, 0x20u);
      }
    }

    v58 = [(RTBluePOIMonitor *)self bluePOIMetricManager];
    v59 = [MEMORY[0x277CCABB0] numberWithBool:v54];
    [v58 setEventMetricsValue:v59 forKey:@"activeWiFiScanRequest"];

    v60 = 1;
    v61 = MEMORY[0x277CBEC28];
    do
    {
      v62 = [(RTBluePOIMonitor *)self bluePOIMetricManager];
      v63 = [MEMORY[0x277CCACA8] stringWithFormat:@"kRTBluePOIQueryEventHasResultWiFiChannel%lu", v60];
      [v62 setEventMetricsValue:v61 forKey:v63];

      ++v60;
    }

    while (v60 != 14);
    v182 = 0u;
    v183 = 0u;
    v180 = 0u;
    v181 = 0u;
    v64 = v149;
    v65 = [v64 countByEnumeratingWithState:&v180 objects:v194 count:16];
    if (v65)
    {
      v66 = *v181;
      v67 = MEMORY[0x277CBEC38];
      do
      {
        for (j = 0; j != v65; ++j)
        {
          if (*v181 != v66)
          {
            objc_enumerationMutation(v64);
          }

          v69 = *(*(&v180 + 1) + 8 * j);
          if ([v69 channel] && objc_msgSend(v69, "channel") <= 0xD)
          {
            v70 = [(RTBluePOIMonitor *)self bluePOIMetricManager];
            v71 = [MEMORY[0x277CCACA8] stringWithFormat:@"kRTBluePOIQueryEventHasResultWiFiChannel%ld", objc_msgSend(v69, "channel")];
            [v70 setEventMetricsValue:v67 forKey:v71];
          }
        }

        v65 = [v64 countByEnumeratingWithState:&v180 objects:v194 count:16];
      }

      while (v65);
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v191 = __Block_byref_object_copy__50;
  v192 = __Block_byref_object_dispose__50;
  v193 = 0;
  v174 = 0;
  v175 = &v174;
  v176 = 0x3032000000;
  v177 = __Block_byref_object_copy__50;
  v178 = __Block_byref_object_dispose__50;
  v179 = 0;
  v168 = 0;
  v169 = &v168;
  v170 = 0x3032000000;
  v171 = __Block_byref_object_copy__50;
  v172 = __Block_byref_object_dispose__50;
  v173 = 0;
  v72 = dispatch_semaphore_create(0);
  v73 = [(RTBluePOIMonitor *)self bluePOITileManager];
  v162[0] = MEMORY[0x277D85DD0];
  v162[1] = 3221225472;
  v162[2] = __133__RTBluePOIMonitor_localBluePOIResultForReferenceLocation_locations_accessPoints_signalEnv_tileRequestPriority_collectMetrics_error___block_invoke_75;
  v162[3] = &unk_2788C8258;
  v167 = aSelector;
  v163 = v150;
  v165 = &v174;
  v166 = buf;
  v74 = v72;
  v164 = v74;
  v151 = v163;
  [v73 fetchBluePOITileAtLocation:v163 priority:a7 validateTile:0 collectMetrics:dsema handler:v162];

  aSelectora = v74;
  v75 = [MEMORY[0x277CBEAA8] now];
  v76 = dispatch_time(0, 3600000000000);
  v77 = dispatch_semaphore_wait(aSelectora, v76);
  v78 = MEMORY[0x277D01448];
  if (v77)
  {
    v79 = [MEMORY[0x277CBEAA8] now];
    [v79 timeIntervalSinceDate:v75];
    v81 = v80;
    v82 = objc_opt_new();
    v83 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_239_0];
    v84 = [MEMORY[0x277CCACC8] callStackSymbols];
    v85 = [v84 filteredArrayUsingPredicate:v83];
    v86 = [v85 firstObject];

    [v82 submitToCoreAnalytics:v86 type:1 duration:v81];
    v87 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v87, OS_LOG_TYPE_FAULT))
    {
      *v197 = 0;
      _os_log_fault_impl(&dword_2304B3000, v87, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v197, 2u);
    }

    v88 = MEMORY[0x277CCA9B8];
    v196 = *MEMORY[0x277CCA450];
    *v197 = @"semaphore wait timeout";
    v89 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v197 forKeys:&v196 count:1];
    v90 = [v88 errorWithDomain:*v78 code:15 userInfo:v89];

    if (v90)
    {
      v91 = v90;

      v92 = 0;
      goto LABEL_55;
    }
  }

  else
  {
    v90 = 0;
  }

  v92 = 1;
LABEL_55:

  v148 = v90;
  if ((v92 & 1) == 0)
  {
    objc_storeStrong(v175 + 5, v90);
  }

  v93 = [(RTBluePOIMonitor *)self shouldRefreshAOIAtLocation:v151];
  v94 = dispatch_semaphore_create(0);
  v95 = [(RTBluePOIMonitor *)self mapServiceManager];
  v96 = *(*&buf[8] + 40);
  v158[0] = MEMORY[0x277D85DD0];
  v158[1] = 3221225472;
  v158[2] = __133__RTBluePOIMonitor_localBluePOIResultForReferenceLocation_locations_accessPoints_signalEnv_tileRequestPriority_collectMetrics_error___block_invoke_77;
  v158[3] = &unk_2788C9318;
  v160 = &v168;
  v161 = &v174;
  v97 = v94;
  v159 = v97;
  [v95 inferLocalBluePOIWithReferenceLocation:v151 locations:obj accessPoints:v149 bluePOITile:v96 signalEnv:a6 refreshAOI:v93 handler:v158];

  dsemaa = v97;
  v98 = [MEMORY[0x277CBEAA8] now];
  v99 = dispatch_time(0, 15000000000);
  if (!dispatch_semaphore_wait(dsemaa, v99))
  {
    goto LABEL_62;
  }

  v100 = [MEMORY[0x277CBEAA8] now];
  [v100 timeIntervalSinceDate:v98];
  v102 = v101;
  v103 = objc_opt_new();
  v104 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_239_0];
  v105 = [MEMORY[0x277CCACC8] callStackSymbols];
  v106 = [v105 filteredArrayUsingPredicate:v104];
  v107 = [v106 firstObject];

  [v103 submitToCoreAnalytics:v107 type:1 duration:v102];
  v108 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v108, OS_LOG_TYPE_FAULT))
  {
    *v197 = 0;
    _os_log_fault_impl(&dword_2304B3000, v108, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v197, 2u);
  }

  v109 = MEMORY[0x277CCA9B8];
  v196 = *MEMORY[0x277CCA450];
  *v197 = @"semaphore wait timeout";
  v110 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v197 forKeys:&v196 count:1];
  v111 = [v109 errorWithDomain:*v78 code:15 userInfo:v110];

  if (v111)
  {
    v112 = v111;

    v113 = 0;
  }

  else
  {
LABEL_62:
    v113 = 1;
    v111 = v148;
  }

  v114 = v111;
  if ((v113 & 1) == 0)
  {
    objc_storeStrong(v175 + 5, v111);
  }

  if (v93)
  {
    [(RTBluePOIMonitor *)self setLastAOIRefreshResult:v169[5]];
    v115 = [(RTBluePOIMonitor *)self lastAOIRefreshResult];
    v116 = [v115 distanceToNearestAOILowerBound];
    [v116 doubleValue];
    [(RTBluePOIMonitor *)self setDistanceToRefreshAOI:?];

    if ([v175[5] hasStorageFullError])
    {
      v117 = 3600.0;
    }

    else
    {
      v118 = [v175[5] hasAOIInferenceError];
      v117 = 5.0;
      if (v118)
      {
        [(RTBluePOIMonitor *)self aoiRefreshBackoffInterval];
        v117 = fmin(v119 + v119, 3600.0);
      }
    }

    [(RTBluePOIMonitor *)self setAoiRefreshBackoffInterval:v117];
    v120 = MEMORY[0x277CBEAA8];
    [(RTBluePOIMonitor *)self aoiRefreshBackoffInterval];
    v122 = v121;
    v123 = [v151 date];
    v124 = [v120 dateWithTimeInterval:v123 sinceDate:v122];
    [(RTBluePOIMonitor *)self setNextAOIRefreshDate:v124];
  }

  v125 = [(RTBluePOIMonitor *)self lastAOIRefreshResult];
  v126 = [v125 aoiConfidences];
  v127 = v126;
  v128 = MEMORY[0x277CBEC10];
  if (v126)
  {
    v128 = v126;
  }

  v129 = v128;

  v130 = [(RTBluePOIMonitor *)self lastAOIRefreshResult];
  v131 = [v130 distanceToNearestAOILowerBound];
  v132 = v131;
  v133 = &unk_2845A1B38;
  if (v131)
  {
    v133 = v131;
  }

  v134 = v133;

  *a9 = v175[5];
  if (v169[5])
  {
    v135 = objc_alloc(MEMORY[0x277D01158]);
    v136 = [v169[5] poiConfidences];
    v137 = [v169[5] referenceLocation];
    v138 = [v169[5] queryTime];
    v139 = [v135 initWithPOIConfidences:v136 aoiConfidences:v129 distanceToNearestAOILowerBound:v134 referenceLocation:v137 queryTime:v138];
    v140 = v169[5];
    v169[5] = v139;
  }

  else
  {
    v141 = objc_alloc(MEMORY[0x277D01158]);
    v136 = [MEMORY[0x277CBEAA8] now];
    v142 = [v141 initWithPOIConfidences:MEMORY[0x277CBEC10] aoiConfidences:v129 distanceToNearestAOILowerBound:v134 referenceLocation:v151 queryTime:v136];
    v137 = v169[5];
    v169[5] = v142;
  }

  v143 = v169[5];
  _Block_object_dispose(&v168, 8);

  _Block_object_dispose(&v174, 8);
  _Block_object_dispose(buf, 8);

  return v143;
}

void __133__RTBluePOIMonitor_localBluePOIResultForReferenceLocation_locations_accessPoints_signalEnv_tileRequestPriority_collectMetrics_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = NSStringFromSelector(*(a1 + 32));
      v8 = 138412802;
      v9 = v7;
      v10 = 2048;
      v11 = a3 + 1;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, accessPoint %lu, %@", &v8, 0x20u);
    }
  }
}

void __133__RTBluePOIMonitor_localBluePOIResultForReferenceLocation_locations_accessPoints_signalEnv_tileRequestPriority_collectMetrics_error___block_invoke_61(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = NSStringFromSelector(*(a1 + 32));
      v8 = 138412803;
      v9 = v7;
      v10 = 2048;
      v11 = a3 + 1;
      v12 = 2117;
      v13 = v5;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, location %lu, %{sensitive}@", &v8, 0x20u);
    }
  }
}

void __133__RTBluePOIMonitor_localBluePOIResultForReferenceLocation_locations_accessPoints_signalEnv_tileRequestPriority_collectMetrics_error___block_invoke_75(uint64_t a1, void *a2, void *a3)
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
      v16 = 138413059;
      v17 = v8;
      v18 = 2117;
      v19 = v9;
      v20 = 2117;
      v21 = v5;
      v22 = 2112;
      v23 = v6;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, location, %{sensitive}@, tile, %{sensitive}@, error, %@", &v16, 0x2Au);
    }
  }

  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v6;
  v12 = v6;

  v13 = *(*(a1 + 56) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v5;
  v15 = v5;

  dispatch_semaphore_signal(*(a1 + 40));
}

void __133__RTBluePOIMonitor_localBluePOIResultForReferenceLocation_locations_accessPoints_signalEnv_tileRequestPriority_collectMetrics_error___block_invoke_77(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)_updateLocalMapItemsFromReferenceLocation:(id)a3 locations:(id)a4 accessPoints:(id)a5 signalEnv:(int)a6 error:(id *)a7
{
  v7 = *&a6;
  v90 = *MEMORY[0x277D85DE8];
  v60 = a3;
  v59 = a4;
  v63 = a5;
  v75 = 0;
  v76 = &v75;
  v77 = 0x3032000000;
  v78 = __Block_byref_object_copy__50;
  v79 = __Block_byref_object_dispose__50;
  v80 = 0;
  v12 = [(RTBluePOIMonitor *)self bluePOIMetricManager];
  v62 = [v12 requestCollectQueryEvent];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = NSStringFromSelector(a2);
      v15 = v14;
      v16 = @"NO";
      if (v62)
      {
        v16 = @"YES";
      }

      *buf = 138412546;
      v82 = v14;
      v83 = 2112;
      v84 = v16;
      _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%@, collectMetrics, %@", buf, 0x16u);
    }
  }

  v17 = (v76 + 5);
  obj = v76[5];
  v61 = [(RTBluePOIMonitor *)self localBluePOIResultForReferenceLocation:v60 locations:v59 accessPoints:v63 signalEnv:v7 tileRequestPriority:1 collectMetrics:v62 error:&obj];
  objc_storeStrong(v17, obj);
  if (!v76[5] || v61)
  {
    v19 = [v63 lastObject];
    v20 = [v19 date];
    [(RTBluePOIMonitor *)self setLastInferredScanResultDate:v20];

    v21 = [(RTBluePOIMonitor *)self bluePOIAggregator];
    v73 = 0;
    v58 = [v21 updateAndFetchAggregatedPOIEstimateWithLocalBluePOIResult:v61 collectMetrics:v62 error:&v73];
    v56 = v73;

    v22 = [(RTBluePOIMonitor *)self lastPostedBluePOIEstimate];
    v23 = [(RTBluePOIMonitor *)self shouldPostUpdateOnPOIEstimate:v58 fromPOIEstimate:v22];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v24 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        if (v23)
        {
          v25 = @"YES";
        }

        else
        {
          v25 = @"NO";
        }

        v26 = [v58 queryTime];
        v27 = [v58 referenceLocation];
        *buf = 138412803;
        v82 = v25;
        v83 = 2112;
        v84 = v26;
        v85 = 2117;
        v86 = v27;
        _os_log_impl(&dword_2304B3000, v24, OS_LOG_TYPE_INFO, "shouldPostUpdate, %@, on Updated POI Estimate at query time, %@, location, %{sensitive}@", buf, 0x20u);
      }
    }

    [(RTBluePOIMonitor *)self logLocalBluePOIResult:v61 aggregatedPOIEstimate:v58];
    if (v23)
    {
      v28 = [MEMORY[0x277CBEAA8] distantFuture];
      v29 = [MEMORY[0x277CBEAA8] distantPast];
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v30 = v63;
      v31 = [v30 countByEnumeratingWithState:&v69 objects:v89 count:16];
      if (v31)
      {
        v32 = *v70;
        do
        {
          for (i = 0; i != v31; ++i)
          {
            if (*v70 != v32)
            {
              objc_enumerationMutation(v30);
            }

            v34 = *(*(&v69 + 1) + 8 * i);
            v35 = [v34 date];
            v36 = [v35 compare:v28] == -1;

            if (v36)
            {
              v37 = [v34 date];

              v28 = v37;
            }

            v38 = [v34 date];
            v39 = [v38 compare:v29] == 1;

            if (v39)
            {
              v40 = [v34 date];

              v29 = v40;
            }
          }

          v31 = [v30 countByEnumeratingWithState:&v69 objects:v89 count:16];
        }

        while (v31);
      }

      [(RTBluePOIMonitor *)self setLastPostedBluePOIEstimate:v58];
      v41 = [(RTBluePOIMonitor *)self mapItemManager];
      v68 = 0;
      v42 = [v41 mapItemsFromLocalBluePOIResult:v58 withConfidenceThreshold:&v68 error:0.5];
      v43 = v68;

      if ([RTBluePOIHelper shouldFilterByBusinessHours:[(RTPlatform *)self->_platform internalInstall]])
      {
        v44 = [[_RTMap alloc] initWithInput:v42];
        v64[0] = MEMORY[0x277D85DD0];
        v64[1] = 3221225472;
        v64[2] = __101__RTBluePOIMonitor__updateLocalMapItemsFromReferenceLocation_locations_accessPoints_signalEnv_error___block_invoke;
        v64[3] = &unk_2788C82A8;
        v64[4] = self;
        v65 = v28;
        v66 = v29;
        v67 = &v75;
        v45 = [(_RTMap *)v44 withBlock:v64];
      }

      else
      {
        v46 = [[_RTMap alloc] initWithInput:v42];
        v45 = [(_RTMap *)v46 withBlock:&__block_literal_global_37];
      }

      v47 = [[RTBluePOIMonitorEstimateUpdateNotification alloc] initWithInferredMapItems:v45 referenceLocation:v60 locations:v59 accessPoints:v30];
      [(RTNotifier *)self postNotification:v47];
    }

    v18 = v58;
  }

  else
  {
    v18 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v48 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
    {
      v49 = [v63 count];
      v50 = v76[5];
      *buf = 138740739;
      v82 = v60;
      v83 = 2048;
      v84 = v49;
      v85 = 2117;
      v86 = v18;
      v87 = 2112;
      v88 = v50;
      _os_log_impl(&dword_2304B3000, v48, OS_LOG_TYPE_INFO, "local blue poi update with location, %{sensitive}@, access points, %lu, latest POI estimate, %{sensitive}@, error, %@", buf, 0x2Au);
    }
  }

  v51 = v76[5];
  if (v51)
  {
    *a7 = v51;
  }

  if (v62)
  {
    v52 = [(RTBluePOIMonitor *)self bluePOIMetricManager];
    [v52 setEventMetricsValue:@"com.apple.CoreRoutine.BluePOIMonitor" forKey:@"appIdentifier"];

    v53 = [(RTBluePOIMonitor *)self bluePOIMetricManager];
    [v53 stopCollectQueryEvent];
  }

  v54 = [(RTBluePOIMonitor *)self bluePOIMetricManager];
  v55 = [v54 dailyMetrics];
  [v55 increaseCountForKey:@"BluePOIDailyEventBackgroundQueryCount"];

  _Block_object_dispose(&v75, 8);
}

id __101__RTBluePOIMonitor__updateLocalMapItemsFromReferenceLocation_locations_accessPoints_signalEnv_error___block_invoke(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = dispatch_semaphore_create(0);
  v5 = objc_alloc(MEMORY[0x277D011B0]);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v35 = [v5 initWithUseBackgroundTraits:1 analyticsIdentifier:v7];

  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0x3FF0000000000000;
  v8 = [*(a1 + 32) mapServiceManager];
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __101__RTBluePOIMonitor__updateLocalMapItemsFromReferenceLocation_locations_accessPoints_signalEnv_error___block_invoke_2;
  v36[3] = &unk_2788C8280;
  v38 = &v39;
  v11 = v4;
  v37 = v11;
  [v8 fetchConfidenceWeightForMapItem:v3 startDate:v9 endDate:v10 options:v35 handler:v36];

  v12 = v11;
  v13 = [MEMORY[0x277CBEAA8] now];
  v14 = dispatch_time(0, 15000000000);
  if (dispatch_semaphore_wait(v12, v14))
  {
    v15 = [MEMORY[0x277CBEAA8] now];
    [v15 timeIntervalSinceDate:v13];
    v17 = v16;
    v18 = objc_opt_new();
    v19 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_239_0];
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
    v43 = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v43 count:1];
    v26 = [v24 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v25];

    if (v26)
    {
      v27 = v26;

      v28 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v26 = 0;
  }

  v28 = 1;
LABEL_8:

  v29 = v26;
  if ((v28 & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), v26);
  }

  v30 = objc_alloc(MEMORY[0x277D01128]);
  v31 = [v3 extendedAttributes];
  [v31 wifiConfidence];
  v33 = [v30 initWithMapItem:v3 confidence:0x100000 source:v32 * v40[3]];

  _Block_object_dispose(&v39, 8);

  return v33;
}

intptr_t __101__RTBluePOIMonitor__updateLocalMapItemsFromReferenceLocation_locations_accessPoints_signalEnv_error___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    [a2 doubleValue];
    *(*(*(a1 + 40) + 8) + 24) = v3;
  }

  v4 = *(a1 + 32);

  return dispatch_semaphore_signal(v4);
}

id __101__RTBluePOIMonitor__updateLocalMapItemsFromReferenceLocation_locations_accessPoints_signalEnv_error___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D01128];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 extendedAttributes];
  [v5 wifiConfidence];
  v6 = [v4 initWithMapItem:v3 confidence:0x100000 source:?];

  return v6;
}

- (id)fetchLocalMapItemsFromReferenceLocation:(id)a3 locations:(id)a4 accessPoints:(id)a5 signalEnv:(int)a6 skipAggregation:(BOOL)a7 collectMetrics:(BOOL)a8 error:(id *)a9
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__50;
  v43 = __Block_byref_object_dispose__50;
  v44 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__50;
  v37 = __Block_byref_object_dispose__50;
  v38 = 0;
  v17 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __130__RTBluePOIMonitor_fetchLocalMapItemsFromReferenceLocation_locations_accessPoints_signalEnv_skipAggregation_collectMetrics_error___block_invoke;
  block[3] = &unk_2788C9340;
  v28 = &v39;
  block[4] = self;
  v18 = v14;
  v25 = v18;
  v19 = v15;
  v26 = v19;
  v20 = v16;
  v30 = a6;
  v31 = a7;
  v32 = a8;
  v27 = v20;
  v29 = &v33;
  dispatch_sync(v17, block);

  if (a9)
  {
    *a9 = v34[5];
  }

  v21 = v40[5];

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v39, 8);

  return v21;
}

void __130__RTBluePOIMonitor_fetchLocalMapItemsFromReferenceLocation_locations_accessPoints_signalEnv_skipAggregation_collectMetrics_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 80);
  v7 = *(a1 + 84);
  v8 = *(a1 + 85);
  v9 = *(*(a1 + 72) + 8);
  obj = *(v9 + 40);
  v10 = [v2 _fetchLocalMapItemsFromReferenceLocation:v3 locations:v4 accessPoints:v5 signalEnv:v6 skipAggregation:v7 collectMetrics:v8 error:&obj];
  objc_storeStrong((v9 + 40), obj);
  v11 = *(*(a1 + 64) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

- (id)_fetchLocalMapItemsFromReferenceLocation:(id)a3 locations:(id)a4 accessPoints:(id)a5 signalEnv:(int)a6 skipAggregation:(BOOL)a7 collectMetrics:(BOOL)a8 error:(id *)a9
{
  v54 = a8;
  v84 = *MEMORY[0x277D85DE8];
  v57 = a3;
  v56 = a4;
  v12 = a5;
  v13 = [MEMORY[0x277CBEAA8] distantFuture];
  v14 = [MEMORY[0x277CBEAA8] distantPast];
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v15 = v12;
  v16 = [v15 countByEnumeratingWithState:&v71 objects:v83 count:16];
  if (v16)
  {
    v17 = *v72;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v72 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = *(*(&v71 + 1) + 8 * i);
        v20 = [v19 date];
        v21 = [v20 compare:v13] == -1;

        if (v21)
        {
          v22 = [v19 date];

          v13 = v22;
        }

        v23 = [v19 date];
        v24 = [v23 compare:v14] == 1;

        if (v24)
        {
          v25 = [v19 date];

          v14 = v25;
        }
      }

      v16 = [v15 countByEnumeratingWithState:&v71 objects:v83 count:16];
    }

    while (v16);
  }

  v65 = 0;
  v66 = &v65;
  v67 = 0x3032000000;
  v68 = __Block_byref_object_copy__50;
  v69 = __Block_byref_object_dispose__50;
  v70 = 0;
  obj = 0;
  v26 = [(RTBluePOIMonitor *)self localBluePOIResultForReferenceLocation:v57 locations:v56 accessPoints:v15 signalEnv:a6 tileRequestPriority:3 collectMetrics:v54 error:&obj];
  objc_storeStrong(&v70, obj);
  if (!v66[5] || v26)
  {
    v28 = v26;
    v29 = v28;
    if (a7)
    {
      v30 = v28;
    }

    else
    {
      v31 = [v15 lastObject];
      v32 = [v31 date];
      [(RTBluePOIMonitor *)self setLastInferredScanResultDate:v32];

      v33 = [(RTBluePOIMonitor *)self bluePOIAggregator];
      v63 = 0;
      v30 = [v33 updateAndFetchAggregatedPOIEstimateWithLocalBluePOIResult:v29 collectMetrics:v54 error:&v63];
      v34 = v63;

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v35 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          v53 = v34;
          v55 = [v30 queryTime];
          v36 = [v30 referenceLocation];
          *buf = 138412547;
          v76 = v55;
          v77 = 2117;
          v78 = v36;
          _os_log_impl(&dword_2304B3000, v35, OS_LOG_TYPE_INFO, "Updated POI Estimate at query time, %@, location, %{sensitive}@", buf, 0x16u);

          v34 = v53;
        }
      }

      [(RTBluePOIMonitor *)self setLastPostedBluePOIEstimate:v30];
      [(RTBluePOIMonitor *)self logLocalBluePOIResult:v29 aggregatedPOIEstimate:v30];
    }

    v37 = [(RTBluePOIMonitor *)self mapItemManager];
    v62 = 0;
    v27 = [v37 mapItemsFromLocalBluePOIResult:v30 withConfidenceThreshold:&v62 error:0.5];
    v38 = v62;
    v39 = v62;

    if (v39)
    {
      objc_storeStrong(v66 + 5, v38);
    }
  }

  else
  {
    v27 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v40 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      v41 = [v15 count];
      v42 = [v27 count];
      v43 = v66[5];
      *buf = 138740739;
      v76 = v57;
      v77 = 2048;
      v78 = v41;
      v79 = 2048;
      v80 = v42;
      v81 = 2112;
      v82 = v43;
      _os_log_impl(&dword_2304B3000, v40, OS_LOG_TYPE_INFO, "local blue poi request at location, %{sensitive}@, access points, %lu, mapItems, %lu, error, %@", buf, 0x2Au);
    }
  }

  [v27 enumerateObjectsUsingBlock:&__block_literal_global_94];
  if ([RTBluePOIHelper shouldFilterByBusinessHours:[(RTPlatform *)self->_platform internalInstall]])
  {
    v44 = [[_RTMap alloc] initWithInput:v27];
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __131__RTBluePOIMonitor__fetchLocalMapItemsFromReferenceLocation_locations_accessPoints_signalEnv_skipAggregation_collectMetrics_error___block_invoke_95;
    v58[3] = &unk_2788C82A8;
    v58[4] = self;
    v59 = v13;
    v60 = v14;
    v61 = &v65;
    v45 = [(_RTMap *)v44 withBlock:v58];
  }

  else
  {
    v46 = [[_RTMap alloc] initWithInput:v27];
    v45 = [(_RTMap *)v46 withBlock:&__block_literal_global_97];
  }

  v47 = v66[5];
  if (v47)
  {
    *a9 = v47;
  }

  v48 = [(RTBluePOIMonitor *)self bluePOIMetricManager];
  v49 = [v48 dailyMetrics];
  [v49 increaseCountForKey:@"BluePOIDailyEventOnDemandQueryCount"];

  _Block_object_dispose(&v65, 8);

  return v45;
}

void __131__RTBluePOIMonitor__fetchLocalMapItemsFromReferenceLocation_locations_accessPoints_signalEnv_skipAggregation_collectMetrics_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = a3 + 1;
      v7 = [v4 extendedAttributes];
      [v7 wifiConfidence];
      v9 = 134218755;
      v10 = v6;
      v11 = 2117;
      v12 = v4;
      v13 = 2048;
      v14 = v8;
      v15 = 2048;
      v16 = [v4 mapItemPlaceType];
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "mapItem, %lu, %{sensitive}@, confidence, %lf, type, %ld", &v9, 0x2Au);
    }
  }
}

id __131__RTBluePOIMonitor__fetchLocalMapItemsFromReferenceLocation_locations_accessPoints_signalEnv_skipAggregation_collectMetrics_error___block_invoke_95(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = dispatch_semaphore_create(0);
  v5 = objc_alloc(MEMORY[0x277D011B0]);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v35 = [v5 initWithUseBackgroundTraits:1 analyticsIdentifier:v7];

  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0x3FF0000000000000;
  v8 = [*(a1 + 32) mapServiceManager];
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __131__RTBluePOIMonitor__fetchLocalMapItemsFromReferenceLocation_locations_accessPoints_signalEnv_skipAggregation_collectMetrics_error___block_invoke_2;
  v36[3] = &unk_2788C8280;
  v38 = &v39;
  v11 = v4;
  v37 = v11;
  [v8 fetchConfidenceWeightForMapItem:v3 startDate:v9 endDate:v10 options:v35 handler:v36];

  v12 = v11;
  v13 = [MEMORY[0x277CBEAA8] now];
  v14 = dispatch_time(0, 15000000000);
  if (dispatch_semaphore_wait(v12, v14))
  {
    v15 = [MEMORY[0x277CBEAA8] now];
    [v15 timeIntervalSinceDate:v13];
    v17 = v16;
    v18 = objc_opt_new();
    v19 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_239_0];
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
    v43 = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v43 count:1];
    v26 = [v24 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v25];

    if (v26)
    {
      v27 = v26;

      v28 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v26 = 0;
  }

  v28 = 1;
LABEL_8:

  v29 = v26;
  if ((v28 & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), v26);
  }

  v30 = objc_alloc(MEMORY[0x277D01128]);
  v31 = [v3 extendedAttributes];
  [v31 wifiConfidence];
  v33 = [v30 initWithMapItem:v3 confidence:0x100000 source:v32 * v40[3]];

  _Block_object_dispose(&v39, 8);

  return v33;
}

intptr_t __131__RTBluePOIMonitor__fetchLocalMapItemsFromReferenceLocation_locations_accessPoints_signalEnv_skipAggregation_collectMetrics_error___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    [a2 doubleValue];
    *(*(*(a1 + 40) + 8) + 24) = v3;
  }

  v4 = *(a1 + 32);

  return dispatch_semaphore_signal(v4);
}

id __131__RTBluePOIMonitor__fetchLocalMapItemsFromReferenceLocation_locations_accessPoints_signalEnv_skipAggregation_collectMetrics_error___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D01128];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 extendedAttributes];
  [v5 wifiConfidence];
  v6 = [v4 initWithMapItem:v3 confidence:0x100000 source:?];

  return v6;
}

@end