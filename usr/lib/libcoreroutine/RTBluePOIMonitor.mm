@interface RTBluePOIMonitor
- (BOOL)isSignificantConfidenceUpdateFromConfidence:(double)confidence toConfidence:(double)toConfidence;
- (BOOL)shouldPostUpdateOnPOIEstimate:(id)estimate fromPOIEstimate:(id)iEstimate;
- (BOOL)shouldRefreshAOIAtLocation:(id)location;
- (RTBluePOIMonitor)initWithDefaultsManager:(id)manager bluePOIMetricManager:(id)metricManager bluePOIMonitorEnabler:(id)enabler bluePOITileManager:(id)tileManager distanceCalculator:(id)calculator fingerprintManager:(id)fingerprintManager locationManager:(id)locationManager mapItemManager:(id)self0 mapServiceManager:(id)self1 platform:(id)self2 wifiManager:(id)self3;
- (id)_fetchLocalMapItemsFromReferenceLocation:(id)location locations:(id)locations accessPoints:(id)points signalEnv:(int)env skipAggregation:(BOOL)aggregation collectMetrics:(BOOL)metrics error:(id *)error;
- (id)fetchLocalMapItemsFromReferenceLocation:(id)location locations:(id)locations accessPoints:(id)points signalEnv:(int)env skipAggregation:(BOOL)aggregation collectMetrics:(BOOL)metrics error:(id *)error;
- (id)localBluePOIResultForReferenceLocation:(id)location locations:(id)locations accessPoints:(id)points signalEnv:(int)env tileRequestPriority:(unint64_t)priority collectMetrics:(BOOL)metrics error:(id *)error;
- (void)_processScanResultBuffer;
- (void)_processWifiScanResults:(id)results;
- (void)_updateLocalMapItemsFromReferenceLocation:(id)location locations:(id)locations accessPoints:(id)points signalEnv:(int)env error:(id *)error;
- (void)logLocalBluePOIResult:(id)result aggregatedPOIEstimate:(id)estimate;
- (void)onLeechWifiScanResultsNotification:(id)notification;
@end

@implementation RTBluePOIMonitor

- (RTBluePOIMonitor)initWithDefaultsManager:(id)manager bluePOIMetricManager:(id)metricManager bluePOIMonitorEnabler:(id)enabler bluePOITileManager:(id)tileManager distanceCalculator:(id)calculator fingerprintManager:(id)fingerprintManager locationManager:(id)locationManager mapItemManager:(id)self0 mapServiceManager:(id)self1 platform:(id)self2 wifiManager:(id)self3
{
  managerCopy = manager;
  metricManagerCopy = metricManager;
  metricManagerCopy2 = metricManager;
  enablerCopy = enabler;
  enablerCopy2 = enabler;
  tileManagerCopy = tileManager;
  calculatorCopy = calculator;
  calculatorCopy2 = calculator;
  fingerprintManagerCopy = fingerprintManager;
  fingerprintManagerCopy2 = fingerprintManager;
  locationManagerCopy = locationManager;
  itemManagerCopy = itemManager;
  serviceManagerCopy = serviceManager;
  platformCopy = platform;
  wifiManagerCopy = wifiManager;
  v62 = wifiManagerCopy;
  if (!managerCopy)
  {
    v21 = metricManagerCopy2;
    v46 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v46, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: defaultsManager", buf, 2u);
    }

    v45 = 0;
    selfCopy3 = self;
    goto LABEL_25;
  }

  v21 = metricManagerCopy2;
  if (!metricManagerCopy2)
  {
    v47 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    selfCopy3 = self;
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v47, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: bluePOIMetricManager", buf, 2u);
    }

    v45 = 0;
LABEL_25:
    v22 = enablerCopy2;
    v24 = calculatorCopy2;
    v23 = tileManagerCopy;
    v26 = fingerprintManagerCopy2;
    v25 = locationManagerCopy;
    goto LABEL_48;
  }

  v22 = enablerCopy2;
  if (!enablerCopy2)
  {
    v48 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    v24 = calculatorCopy2;
    v23 = tileManagerCopy;
    v25 = locationManagerCopy;
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v48, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: bluePOIMonitorEnabler", buf, 2u);
    }

    v45 = 0;
    v26 = fingerprintManagerCopy2;
    goto LABEL_47;
  }

  v24 = calculatorCopy2;
  v23 = tileManagerCopy;
  v25 = locationManagerCopy;
  if (!tileManagerCopy)
  {
    v49 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    v26 = fingerprintManagerCopy2;
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

  v26 = fingerprintManagerCopy2;
  if (!calculatorCopy2)
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

  if (!fingerprintManagerCopy2)
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

  if (!locationManagerCopy)
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

  if (!itemManagerCopy)
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

  if (!serviceManagerCopy)
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

  if (!platformCopy)
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

  if (!wifiManagerCopy)
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
    selfCopy3 = self;
    goto LABEL_48;
  }

  v68.receiver = self;
  v68.super_class = RTBluePOIMonitor;
  v27 = [(RTNotifier *)&v68 init];
  v28 = v27;
  if (!v27)
  {
LABEL_18:
    selfCopy3 = v28;
    v45 = selfCopy3;
    goto LABEL_48;
  }

  objc_storeStrong(&v27->_defaultsManager, manager);
  v28->_aoiRefreshBackoffInterval = 5.0;
  v29 = [[RTBluePOIAggregator alloc] initWithBluePOIMetricManager:v21 defaultsManager:managerCopy distanceCalculator:calculatorCopy2 platform:platformCopy];
  bluePOIAggregator = v28->_bluePOIAggregator;
  v28->_bluePOIAggregator = v29;

  if (v28->_bluePOIAggregator)
  {
    objc_storeStrong(&v28->_bluePOIMetricManager, metricManagerCopy);
    objc_storeStrong(&v28->_bluePOIMonitorEnabler, enablerCopy);
    objc_storeStrong(&v28->_bluePOITileManager, tileManager);
    objc_storeStrong(&v28->_distanceCalculator, calculatorCopy);
    v28->_distanceToRefreshAOI = 0.0;
    objc_storeStrong(&v28->_fingerprintManager, fingerprintManagerCopy);
    lastAOIRefreshResult = v28->_lastAOIRefreshResult;
    v28->_lastAOIRefreshResult = 0;

    lastInferredScanResultDate = v28->_lastInferredScanResultDate;
    v28->_lastInferredScanResultDate = 0;

    lastPostedBluePOIEstimate = v28->_lastPostedBluePOIEstimate;
    v28->_lastPostedBluePOIEstimate = 0;

    objc_storeStrong(&v28->_locationManager, locationManager);
    objc_storeStrong(&v28->_mapItemManager, itemManager);
    objc_storeStrong(&v28->_mapServiceManager, serviceManager);
    nextAOIRefreshDate = v28->_nextAOIRefreshDate;
    v28->_nextAOIRefreshDate = 0;

    objc_storeStrong(&v28->_platform, platform);
    v35 = objc_opt_new();
    scanResultBuffer = v28->_scanResultBuffer;
    v28->_scanResultBuffer = v35;

    v37 = v28;
    objc_storeStrong(&v28->_wifiManager, wifiManager);
    wifiManager = v28->_wifiManager;
    v39 = +[(RTNotification *)RTWiFiManagerNotificationLeechScanResults];
    wifiManagerCopy2 = wifiManager;
    v28 = v37;
    v41 = v37;
    v25 = locationManagerCopy;
    [(RTNotifier *)wifiManagerCopy2 addObserver:v41 selector:sel_onLeechWifiScanResultsNotification_ name:v39];

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

  selfCopy3 = v28;
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

- (void)onLeechWifiScanResultsNotification:(id)notification
{
  notificationCopy = notification;
  enabled = [(RTBluePOIMonitorEnabler *)self->_bluePOIMonitorEnabler enabled];
  v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
  if (enabled)
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

    queue = [(RTNotifier *)self queue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __55__RTBluePOIMonitor_onLeechWifiScanResultsNotification___block_invoke;
    v10[3] = &unk_2788C4A70;
    v11 = notificationCopy;
    selfCopy = self;
    dispatch_async(queue, v10);

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

- (void)_processWifiScanResults:(id)results
{
  resultsCopy = results;
  lastInferredScanResultDate = [(RTBluePOIMonitor *)self lastInferredScanResultDate];
  firstObject = [resultsCopy firstObject];
  date = [firstObject date];
  [lastInferredScanResultDate timeIntervalSinceDate:date];
  v9 = v8;

  if (v9 <= 0.0)
  {
    scanResultBuffer = [(RTBluePOIMonitor *)self scanResultBuffer];
    v12 = [scanResultBuffer count];

    scanResultBuffer2 = [(RTBluePOIMonitor *)self scanResultBuffer];
    v14 = scanResultBuffer2;
    if (v12)
    {
      firstObject2 = [scanResultBuffer2 firstObject];
      date2 = [firstObject2 date];

      firstObject3 = [resultsCopy firstObject];
      date3 = [firstObject3 date];

      [date3 timeIntervalSinceDate:date2];
      if (v19 >= 5.0)
      {
        [(RTBluePOIMonitor *)self _processScanResultBuffer];
        scanResultBuffer3 = [(RTBluePOIMonitor *)self scanResultBuffer];
        [scanResultBuffer3 addObjectsFromArray:resultsCopy];

        v24 = dispatch_time(0, 5000000000);
        queue = [(RTNotifier *)self queue];
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __44__RTBluePOIMonitor__processWifiScanResults___block_invoke_2;
        v26[3] = &unk_2788C4EA0;
        v26[4] = self;
        dispatch_after(v24, queue, v26);
      }

      else
      {
        scanResultBuffer4 = [(RTBluePOIMonitor *)self scanResultBuffer];
        [scanResultBuffer4 addObjectsFromArray:resultsCopy];
      }
    }

    else
    {
      [scanResultBuffer2 addObjectsFromArray:resultsCopy];

      v21 = dispatch_time(0, 5000000000);
      queue2 = [(RTNotifier *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __44__RTBluePOIMonitor__processWifiScanResults___block_invoke;
      block[3] = &unk_2788C4EA0;
      block[4] = self;
      dispatch_after(v21, queue2, block);
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
  scanResultBuffer = [(RTBluePOIMonitor *)self scanResultBuffer];
  v4 = [scanResultBuffer count];

  if (v4)
  {
    scanResultBuffer2 = [(RTBluePOIMonitor *)self scanResultBuffer];
    v6 = [scanResultBuffer2 copy];

    scanResultBuffer3 = [(RTBluePOIMonitor *)self scanResultBuffer];
    [scanResultBuffer3 removeAllObjects];

    firstObject = [v6 firstObject];
    date = [firstObject date];

    lastInferredScanResultDate = [(RTBluePOIMonitor *)self lastInferredScanResultDate];
    [lastInferredScanResultDate timeIntervalSinceDate:date];
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
      locationManager = [(RTBluePOIMonitor *)self locationManager];
      v15 = [objc_alloc(MEMORY[0x277D01198]) initWithDate:date];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __44__RTBluePOIMonitor__processScanResultBuffer__block_invoke;
      v16[3] = &unk_2788C69F0;
      v16[4] = self;
      v18 = v20;
      v19 = buf;
      v17 = v6;
      [locationManager fetchLocationsFromCoreLocationWithOptions:v15 handler:v16];

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

- (BOOL)shouldRefreshAOIAtLocation:(id)location
{
  v64 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  nextAOIRefreshDate = [(RTBluePOIMonitor *)self nextAOIRefreshDate];
  if (nextAOIRefreshDate)
  {
    v7 = nextAOIRefreshDate;
    date = [locationCopy date];
    nextAOIRefreshDate2 = [(RTBluePOIMonitor *)self nextAOIRefreshDate];
    v10 = [date isOnOrAfter:nextAOIRefreshDate2];

    if ((v10 & 1) == 0)
    {
      date2 = [locationCopy date];
      nextAOIRefreshDate3 = [(RTBluePOIMonitor *)self nextAOIRefreshDate];
      [date2 timeIntervalSinceDate:nextAOIRefreshDate3];
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

        referenceLocation = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
        if (os_log_type_enabled(referenceLocation, OS_LOG_TYPE_INFO))
        {
          v44 = NSStringFromSelector(a2);
          nextAOIRefreshDate4 = [(RTBluePOIMonitor *)self nextAOIRefreshDate];
          date3 = [locationCopy date];
          *buf = 138412802;
          v49 = v44;
          v50 = 2112;
          v51 = nextAOIRefreshDate4;
          v52 = 2112;
          v53 = date3;
          _os_log_impl(&dword_2304B3000, referenceLocation, OS_LOG_TYPE_INFO, "%@, NO, nextAOIRefreshDate, %@, updatedLocationDate, %@", buf, 0x20u);
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
          nextAOIRefreshDate5 = [(RTBluePOIMonitor *)self nextAOIRefreshDate];
          date4 = [locationCopy date];
          *buf = 138412802;
          v49 = v17;
          v50 = 2112;
          v51 = nextAOIRefreshDate5;
          v52 = 2112;
          v53 = date4;
          _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "%@, resetting nextAOIRefreshDate, %@, updatedLocationDate, %@", buf, 0x20u);
        }
      }

      date5 = [locationCopy date];
      [(RTBluePOIMonitor *)self setNextAOIRefreshDate:date5];
    }
  }

  lastAOIRefreshResult = [(RTBluePOIMonitor *)self lastAOIRefreshResult];
  referenceLocation = [lastAOIRefreshResult referenceLocation];

  if (referenceLocation)
  {
    distanceCalculator = [(RTBluePOIMonitor *)self distanceCalculator];
    v47 = 0;
    [distanceCalculator distanceFromLocation:referenceLocation toLocation:locationCopy error:&v47];
    v25 = v24;
    v26 = v47;

    [referenceLocation horizontalUncertainty];
    v28 = v27;
    [locationCopy horizontalUncertainty];
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

        nextAOIRefreshDate6 = [(RTBluePOIMonitor *)self nextAOIRefreshDate];
        date6 = [locationCopy date];
        [(RTBluePOIMonitor *)self distanceToRefreshAOI];
        *buf = 138414083;
        v49 = v35;
        v50 = 2112;
        v51 = v36;
        v52 = 2112;
        v53 = nextAOIRefreshDate6;
        v54 = 2112;
        v55 = date6;
        v56 = 2117;
        v57 = referenceLocation;
        v58 = 2117;
        v59 = locationCopy;
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
      referenceLocation = 0;
      goto LABEL_25;
    }

    v26 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v40 = NSStringFromSelector(a2);
      nextAOIRefreshDate7 = [(RTBluePOIMonitor *)self nextAOIRefreshDate];
      date7 = [locationCopy date];
      *buf = 138413059;
      v49 = v40;
      v50 = 2112;
      v51 = nextAOIRefreshDate7;
      v52 = 2112;
      v53 = date7;
      v54 = 2117;
      v55 = 0;
      _os_log_impl(&dword_2304B3000, v26, OS_LOG_TYPE_INFO, "%@, YES, nextAOIRefreshDate, %@, updatedLocationDate, %@, lastAOIRefreshLocation, %{sensitive}@", buf, 0x2Au);
    }
  }

LABEL_25:
LABEL_26:

  return v33;
}

- (BOOL)isSignificantConfidenceUpdateFromConfidence:(double)confidence toConfidence:(double)toConfidence
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
    if (v10 <= confidence)
    {
      v11 = [&unk_2845A0C38 objectAtIndexedSubscript:v6 + 1];
      [v11 doubleValue];
      v13 = v12;

      if (v13 > confidence)
      {
        v8 = v6;
      }
    }

    else
    {
    }

    v14 = [&unk_2845A0C38 objectAtIndexedSubscript:v6];
    [v14 doubleValue];
    if (v15 <= toConfidence)
    {
      v16 = [&unk_2845A0C38 objectAtIndexedSubscript:v6 + 1];
      [v16 doubleValue];
      v18 = v17;

      if (v18 > toConfidence)
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
    return confidence - toConfidence > 0.15;
  }

  return 1;
}

- (BOOL)shouldPostUpdateOnPOIEstimate:(id)estimate fromPOIEstimate:(id)iEstimate
{
  estimateCopy = estimate;
  iEstimateCopy = iEstimate;
  v37 = !iEstimateCopy || ((v9 = [iEstimateCopy mostConfidentPOI], v10 = objc_msgSend(estimateCopy, "mostConfidentPOI"), objc_msgSend(v8, "poiConfidences"), v11 = v8 = iEstimateCopy;

  return v37;
}

- (void)logLocalBluePOIResult:(id)result aggregatedPOIEstimate:(id)estimate
{
  v83 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  estimateCopy = estimate;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  poiConfidences = [resultCopy poiConfidences];
  allKeys = [poiConfidences allKeys];

  v7 = [allKeys countByEnumeratingWithState:&v71 objects:v82 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v12 = *(*(&v71 + 1) + 8 * i);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v13 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            unsignedIntegerValue = [v12 unsignedIntegerValue];
            poiConfidences2 = [resultCopy poiConfidences];
            v16 = [poiConfidences2 objectForKeyedSubscript:v12];
            [v16 doubleValue];
            *buf = 134218240;
            v79 = unsignedIntegerValue;
            v80 = 2048;
            v81 = v17;
            _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "originalBluePOIResult, POI, %lu, confidence, %f", buf, 0x16u);
          }
        }
      }

      v8 = [allKeys countByEnumeratingWithState:&v71 objects:v82 count:16];
    }

    while (v8);
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  poiConfidences3 = [estimateCopy poiConfidences];
  allKeys2 = [poiConfidences3 allKeys];

  v20 = [allKeys2 countByEnumeratingWithState:&v67 objects:v77 count:16];
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
          objc_enumerationMutation(allKeys2);
        }

        v25 = *(*(&v67 + 1) + 8 * j);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v26 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            unsignedIntegerValue2 = [v25 unsignedIntegerValue];
            poiConfidences4 = [estimateCopy poiConfidences];
            v29 = [poiConfidences4 objectForKeyedSubscript:v25];
            [v29 doubleValue];
            *buf = 134218240;
            v79 = unsignedIntegerValue2;
            v80 = 2048;
            v81 = v30;
            _os_log_impl(&dword_2304B3000, v26, OS_LOG_TYPE_INFO, "aggregatedPOIEstimate, POI, %lu, confidence, %f", buf, 0x16u);
          }
        }
      }

      v21 = [allKeys2 countByEnumeratingWithState:&v67 objects:v77 count:16];
    }

    while (v21);
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  aoiConfidences = [resultCopy aoiConfidences];
  allKeys3 = [aoiConfidences allKeys];

  v33 = [allKeys3 countByEnumeratingWithState:&v63 objects:v76 count:16];
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
          objc_enumerationMutation(allKeys3);
        }

        v38 = *(*(&v63 + 1) + 8 * k);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          v39 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
          {
            unsignedIntegerValue3 = [v38 unsignedIntegerValue];
            aoiConfidences2 = [resultCopy aoiConfidences];
            v42 = [aoiConfidences2 objectForKeyedSubscript:v38];
            [v42 doubleValue];
            *buf = 134218240;
            v79 = unsignedIntegerValue3;
            v80 = 2048;
            v81 = v43;
            _os_log_impl(&dword_2304B3000, v39, OS_LOG_TYPE_INFO, "originalBluePOIResult, AOI, %lu, confidence, %f", buf, 0x16u);
          }
        }
      }

      v34 = [allKeys3 countByEnumeratingWithState:&v63 objects:v76 count:16];
    }

    while (v34);
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  aoiConfidences3 = [estimateCopy aoiConfidences];
  allKeys4 = [aoiConfidences3 allKeys];

  v46 = [allKeys4 countByEnumeratingWithState:&v59 objects:v75 count:16];
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
          objc_enumerationMutation(allKeys4);
        }

        v51 = *(*(&v59 + 1) + 8 * m);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
        {
          v52 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
          if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
          {
            unsignedIntegerValue4 = [v51 unsignedIntegerValue];
            aoiConfidences4 = [estimateCopy aoiConfidences];
            v55 = [aoiConfidences4 objectForKeyedSubscript:v51];
            [v55 doubleValue];
            *buf = 134218240;
            v79 = unsignedIntegerValue4;
            v80 = 2048;
            v81 = v56;
            _os_log_impl(&dword_2304B3000, v52, OS_LOG_TYPE_INFO, "aggregatedPOIEstimate, AOI, %lu, confidence, %f", buf, 0x16u);
          }
        }
      }

      v47 = [allKeys4 countByEnumeratingWithState:&v59 objects:v75 count:16];
    }

    while (v47);
  }
}

- (id)localBluePOIResultForReferenceLocation:(id)location locations:(id)locations accessPoints:(id)points signalEnv:(int)env tileRequestPriority:(unint64_t)priority collectMetrics:(BOOL)metrics error:(id *)error
{
  dsema = metrics;
  v198 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  locationsCopy = locations;
  pointsCopy = points;
  v189[0] = MEMORY[0x277D85DD0];
  v189[1] = 3221225472;
  v189[2] = __133__RTBluePOIMonitor_localBluePOIResultForReferenceLocation_locations_accessPoints_signalEnv_tileRequestPriority_collectMetrics_error___block_invoke;
  v189[3] = &__block_descriptor_40_e34_v32__0__RTWiFiAccessPoint_8Q16_B24l;
  aSelector = a2;
  v189[4] = a2;
  v149 = pointsCopy;
  [pointsCopy enumerateObjectsUsingBlock:v189];
  v188[0] = MEMORY[0x277D85DD0];
  v188[1] = 3221225472;
  v188[2] = __133__RTBluePOIMonitor_localBluePOIResultForReferenceLocation_locations_accessPoints_signalEnv_tileRequestPriority_collectMetrics_error___block_invoke_61;
  v188[3] = &__block_descriptor_40_e27_v32__0__RTLocation_8Q16_B24l;
  v188[4] = a2;
  [locationsCopy enumerateObjectsUsingBlock:v188];
  v186 = 0u;
  v187 = 0u;
  v184 = 0u;
  v185 = 0u;
  obj = locationsCopy;
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
          if (locationCopy)
          {
            [v18 horizontalUncertainty];
            v21 = v20;
            [locationCopy horizontalUncertainty];
            if (v21 < v22)
            {
              v23 = v18;

              locationCopy = v23;
            }
          }

          else
          {
            locationCopy = v18;
          }
        }
      }

      v15 = [obj countByEnumeratingWithState:&v184 objects:v195 count:16];
    }

    while (v15);
  }

  date = [locationCopy date];
  if (!date)
  {
    goto LABEL_17;
  }

  firstObject = [v149 firstObject];
  date2 = [firstObject date];
  date3 = [locationCopy date];
  [date2 timeIntervalSinceDate:date3];
  v29 = v28;

  v30 = -v29;
  if (v29 >= 0.0)
  {
    v30 = v29;
  }

  v31 = v30 > 60.0;

  if (!v31)
  {
    v150 = locationCopy;
  }

  else
  {
LABEL_17:
    v32 = objc_alloc(MEMORY[0x277D01160]);
    [locationCopy latitude];
    v34 = v33;
    [locationCopy longitude];
    v36 = v35;
    [locationCopy horizontalUncertainty];
    v38 = v37;
    [locationCopy altitude];
    v40 = v39;
    [locationCopy verticalUncertainty];
    v42 = v41;
    firstObject2 = [v149 firstObject];
    date4 = [firstObject2 date];
    referenceFrame = [locationCopy referenceFrame];
    [locationCopy speed];
    v150 = [v32 initWithLatitude:date4 longitude:referenceFrame horizontalUncertainty:objc_msgSend(locationCopy altitude:"sourceAccuracy") verticalUncertainty:v34 date:v36 referenceFrame:v38 speed:v40 sourceAccuracy:{v42, v46}];

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
    if (priority == 1)
    {
      v49 = 1;
    }

    else
    {
      v49 = 2;
    }

    bluePOIMetricManager = [(RTBluePOIMonitor *)self bluePOIMetricManager];
    v51 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v49];
    [bluePOIMetricManager setEventMetricsValue:v51 forKey:@"queryType"];

    bluePOIMetricManager2 = [(RTBluePOIMonitor *)self bluePOIMetricManager];
    v145 = [bluePOIMetricManager2 objectForKey:@"BluePOIQueryEventLastActiveWiFiScanDate"];

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

    bluePOIMetricManager3 = [(RTBluePOIMonitor *)self bluePOIMetricManager];
    v59 = [MEMORY[0x277CCABB0] numberWithBool:v54];
    [bluePOIMetricManager3 setEventMetricsValue:v59 forKey:@"activeWiFiScanRequest"];

    v60 = 1;
    v61 = MEMORY[0x277CBEC28];
    do
    {
      bluePOIMetricManager4 = [(RTBluePOIMonitor *)self bluePOIMetricManager];
      v63 = [MEMORY[0x277CCACA8] stringWithFormat:@"kRTBluePOIQueryEventHasResultWiFiChannel%lu", v60];
      [bluePOIMetricManager4 setEventMetricsValue:v61 forKey:v63];

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
            bluePOIMetricManager5 = [(RTBluePOIMonitor *)self bluePOIMetricManager];
            v71 = [MEMORY[0x277CCACA8] stringWithFormat:@"kRTBluePOIQueryEventHasResultWiFiChannel%ld", objc_msgSend(v69, "channel")];
            [bluePOIMetricManager5 setEventMetricsValue:v67 forKey:v71];
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
  bluePOITileManager = [(RTBluePOIMonitor *)self bluePOITileManager];
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
  [bluePOITileManager fetchBluePOITileAtLocation:v163 priority:priority validateTile:0 collectMetrics:dsema handler:v162];

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
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v85 = [callStackSymbols filteredArrayUsingPredicate:v83];
    firstObject3 = [v85 firstObject];

    [v82 submitToCoreAnalytics:firstObject3 type:1 duration:v81];
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
  mapServiceManager = [(RTBluePOIMonitor *)self mapServiceManager];
  v96 = *(*&buf[8] + 40);
  v158[0] = MEMORY[0x277D85DD0];
  v158[1] = 3221225472;
  v158[2] = __133__RTBluePOIMonitor_localBluePOIResultForReferenceLocation_locations_accessPoints_signalEnv_tileRequestPriority_collectMetrics_error___block_invoke_77;
  v158[3] = &unk_2788C9318;
  v160 = &v168;
  v161 = &v174;
  v97 = v94;
  v159 = v97;
  [mapServiceManager inferLocalBluePOIWithReferenceLocation:v151 locations:obj accessPoints:v149 bluePOITile:v96 signalEnv:env refreshAOI:v93 handler:v158];

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
  callStackSymbols2 = [MEMORY[0x277CCACC8] callStackSymbols];
  v106 = [callStackSymbols2 filteredArrayUsingPredicate:v104];
  firstObject4 = [v106 firstObject];

  [v103 submitToCoreAnalytics:firstObject4 type:1 duration:v102];
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
    lastAOIRefreshResult = [(RTBluePOIMonitor *)self lastAOIRefreshResult];
    distanceToNearestAOILowerBound = [lastAOIRefreshResult distanceToNearestAOILowerBound];
    [distanceToNearestAOILowerBound doubleValue];
    [(RTBluePOIMonitor *)self setDistanceToRefreshAOI:?];

    if ([v175[5] hasStorageFullError])
    {
      v117 = 3600.0;
    }

    else
    {
      hasAOIInferenceError = [v175[5] hasAOIInferenceError];
      v117 = 5.0;
      if (hasAOIInferenceError)
      {
        [(RTBluePOIMonitor *)self aoiRefreshBackoffInterval];
        v117 = fmin(v119 + v119, 3600.0);
      }
    }

    [(RTBluePOIMonitor *)self setAoiRefreshBackoffInterval:v117];
    v120 = MEMORY[0x277CBEAA8];
    [(RTBluePOIMonitor *)self aoiRefreshBackoffInterval];
    v122 = v121;
    date5 = [v151 date];
    v124 = [v120 dateWithTimeInterval:date5 sinceDate:v122];
    [(RTBluePOIMonitor *)self setNextAOIRefreshDate:v124];
  }

  lastAOIRefreshResult2 = [(RTBluePOIMonitor *)self lastAOIRefreshResult];
  aoiConfidences = [lastAOIRefreshResult2 aoiConfidences];
  v127 = aoiConfidences;
  v128 = MEMORY[0x277CBEC10];
  if (aoiConfidences)
  {
    v128 = aoiConfidences;
  }

  v129 = v128;

  lastAOIRefreshResult3 = [(RTBluePOIMonitor *)self lastAOIRefreshResult];
  distanceToNearestAOILowerBound2 = [lastAOIRefreshResult3 distanceToNearestAOILowerBound];
  v132 = distanceToNearestAOILowerBound2;
  v133 = &unk_2845A1B38;
  if (distanceToNearestAOILowerBound2)
  {
    v133 = distanceToNearestAOILowerBound2;
  }

  v134 = v133;

  *error = v175[5];
  if (v169[5])
  {
    v135 = objc_alloc(MEMORY[0x277D01158]);
    poiConfidences = [v169[5] poiConfidences];
    referenceLocation = [v169[5] referenceLocation];
    queryTime = [v169[5] queryTime];
    v139 = [v135 initWithPOIConfidences:poiConfidences aoiConfidences:v129 distanceToNearestAOILowerBound:v134 referenceLocation:referenceLocation queryTime:queryTime];
    v140 = v169[5];
    v169[5] = v139;
  }

  else
  {
    v141 = objc_alloc(MEMORY[0x277D01158]);
    poiConfidences = [MEMORY[0x277CBEAA8] now];
    v142 = [v141 initWithPOIConfidences:MEMORY[0x277CBEC10] aoiConfidences:v129 distanceToNearestAOILowerBound:v134 referenceLocation:v151 queryTime:poiConfidences];
    referenceLocation = v169[5];
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

- (void)_updateLocalMapItemsFromReferenceLocation:(id)location locations:(id)locations accessPoints:(id)points signalEnv:(int)env error:(id *)error
{
  v7 = *&env;
  v90 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  locationsCopy = locations;
  pointsCopy = points;
  v75 = 0;
  v76 = &v75;
  v77 = 0x3032000000;
  v78 = __Block_byref_object_copy__50;
  v79 = __Block_byref_object_dispose__50;
  v80 = 0;
  bluePOIMetricManager = [(RTBluePOIMonitor *)self bluePOIMetricManager];
  requestCollectQueryEvent = [bluePOIMetricManager requestCollectQueryEvent];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = NSStringFromSelector(a2);
      v15 = v14;
      v16 = @"NO";
      if (requestCollectQueryEvent)
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
  v61 = [(RTBluePOIMonitor *)self localBluePOIResultForReferenceLocation:locationCopy locations:locationsCopy accessPoints:pointsCopy signalEnv:v7 tileRequestPriority:1 collectMetrics:requestCollectQueryEvent error:&obj];
  objc_storeStrong(v17, obj);
  if (!v76[5] || v61)
  {
    lastObject = [pointsCopy lastObject];
    date = [lastObject date];
    [(RTBluePOIMonitor *)self setLastInferredScanResultDate:date];

    bluePOIAggregator = [(RTBluePOIMonitor *)self bluePOIAggregator];
    v73 = 0;
    v58 = [bluePOIAggregator updateAndFetchAggregatedPOIEstimateWithLocalBluePOIResult:v61 collectMetrics:requestCollectQueryEvent error:&v73];
    v56 = v73;

    lastPostedBluePOIEstimate = [(RTBluePOIMonitor *)self lastPostedBluePOIEstimate];
    v23 = [(RTBluePOIMonitor *)self shouldPostUpdateOnPOIEstimate:v58 fromPOIEstimate:lastPostedBluePOIEstimate];

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

        queryTime = [v58 queryTime];
        referenceLocation = [v58 referenceLocation];
        *buf = 138412803;
        v82 = v25;
        v83 = 2112;
        v84 = queryTime;
        v85 = 2117;
        v86 = referenceLocation;
        _os_log_impl(&dword_2304B3000, v24, OS_LOG_TYPE_INFO, "shouldPostUpdate, %@, on Updated POI Estimate at query time, %@, location, %{sensitive}@", buf, 0x20u);
      }
    }

    [(RTBluePOIMonitor *)self logLocalBluePOIResult:v61 aggregatedPOIEstimate:v58];
    if (v23)
    {
      distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
      distantPast = [MEMORY[0x277CBEAA8] distantPast];
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v30 = pointsCopy;
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
            date2 = [v34 date];
            v36 = [date2 compare:distantFuture] == -1;

            if (v36)
            {
              date3 = [v34 date];

              distantFuture = date3;
            }

            date4 = [v34 date];
            v39 = [date4 compare:distantPast] == 1;

            if (v39)
            {
              date5 = [v34 date];

              distantPast = date5;
            }
          }

          v31 = [v30 countByEnumeratingWithState:&v69 objects:v89 count:16];
        }

        while (v31);
      }

      [(RTBluePOIMonitor *)self setLastPostedBluePOIEstimate:v58];
      mapItemManager = [(RTBluePOIMonitor *)self mapItemManager];
      v68 = 0;
      v42 = [mapItemManager mapItemsFromLocalBluePOIResult:v58 withConfidenceThreshold:&v68 error:0.5];
      v43 = v68;

      if ([RTBluePOIHelper shouldFilterByBusinessHours:[(RTPlatform *)self->_platform internalInstall]])
      {
        v44 = [[_RTMap alloc] initWithInput:v42];
        v64[0] = MEMORY[0x277D85DD0];
        v64[1] = 3221225472;
        v64[2] = __101__RTBluePOIMonitor__updateLocalMapItemsFromReferenceLocation_locations_accessPoints_signalEnv_error___block_invoke;
        v64[3] = &unk_2788C82A8;
        v64[4] = self;
        v65 = distantFuture;
        v66 = distantPast;
        v67 = &v75;
        v45 = [(_RTMap *)v44 withBlock:v64];
      }

      else
      {
        v46 = [[_RTMap alloc] initWithInput:v42];
        v45 = [(_RTMap *)v46 withBlock:&__block_literal_global_37];
      }

      v47 = [[RTBluePOIMonitorEstimateUpdateNotification alloc] initWithInferredMapItems:v45 referenceLocation:locationCopy locations:locationsCopy accessPoints:v30];
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
      v49 = [pointsCopy count];
      v50 = v76[5];
      *buf = 138740739;
      v82 = locationCopy;
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
    *error = v51;
  }

  if (requestCollectQueryEvent)
  {
    bluePOIMetricManager2 = [(RTBluePOIMonitor *)self bluePOIMetricManager];
    [bluePOIMetricManager2 setEventMetricsValue:@"com.apple.CoreRoutine.BluePOIMonitor" forKey:@"appIdentifier"];

    bluePOIMetricManager3 = [(RTBluePOIMonitor *)self bluePOIMetricManager];
    [bluePOIMetricManager3 stopCollectQueryEvent];
  }

  bluePOIMetricManager4 = [(RTBluePOIMonitor *)self bluePOIMetricManager];
  dailyMetrics = [bluePOIMetricManager4 dailyMetrics];
  [dailyMetrics increaseCountForKey:@"BluePOIDailyEventBackgroundQueryCount"];

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

- (id)fetchLocalMapItemsFromReferenceLocation:(id)location locations:(id)locations accessPoints:(id)points signalEnv:(int)env skipAggregation:(BOOL)aggregation collectMetrics:(BOOL)metrics error:(id *)error
{
  locationCopy = location;
  locationsCopy = locations;
  pointsCopy = points;
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
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __130__RTBluePOIMonitor_fetchLocalMapItemsFromReferenceLocation_locations_accessPoints_signalEnv_skipAggregation_collectMetrics_error___block_invoke;
  block[3] = &unk_2788C9340;
  v28 = &v39;
  block[4] = self;
  v18 = locationCopy;
  v25 = v18;
  v19 = locationsCopy;
  v26 = v19;
  v20 = pointsCopy;
  envCopy = env;
  aggregationCopy = aggregation;
  metricsCopy = metrics;
  v27 = v20;
  v29 = &v33;
  dispatch_sync(queue, block);

  if (error)
  {
    *error = v34[5];
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

- (id)_fetchLocalMapItemsFromReferenceLocation:(id)location locations:(id)locations accessPoints:(id)points signalEnv:(int)env skipAggregation:(BOOL)aggregation collectMetrics:(BOOL)metrics error:(id *)error
{
  metricsCopy = metrics;
  v84 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  locationsCopy = locations;
  pointsCopy = points;
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v15 = pointsCopy;
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
        date = [v19 date];
        v21 = [date compare:distantFuture] == -1;

        if (v21)
        {
          date2 = [v19 date];

          distantFuture = date2;
        }

        date3 = [v19 date];
        v24 = [date3 compare:distantPast] == 1;

        if (v24)
        {
          date4 = [v19 date];

          distantPast = date4;
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
  v26 = [(RTBluePOIMonitor *)self localBluePOIResultForReferenceLocation:locationCopy locations:locationsCopy accessPoints:v15 signalEnv:env tileRequestPriority:3 collectMetrics:metricsCopy error:&obj];
  objc_storeStrong(&v70, obj);
  if (!v66[5] || v26)
  {
    v28 = v26;
    v29 = v28;
    if (aggregation)
    {
      v30 = v28;
    }

    else
    {
      lastObject = [v15 lastObject];
      date5 = [lastObject date];
      [(RTBluePOIMonitor *)self setLastInferredScanResultDate:date5];

      bluePOIAggregator = [(RTBluePOIMonitor *)self bluePOIAggregator];
      v63 = 0;
      v30 = [bluePOIAggregator updateAndFetchAggregatedPOIEstimateWithLocalBluePOIResult:v29 collectMetrics:metricsCopy error:&v63];
      v34 = v63;

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v35 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          v53 = v34;
          queryTime = [v30 queryTime];
          referenceLocation = [v30 referenceLocation];
          *buf = 138412547;
          v76 = queryTime;
          v77 = 2117;
          v78 = referenceLocation;
          _os_log_impl(&dword_2304B3000, v35, OS_LOG_TYPE_INFO, "Updated POI Estimate at query time, %@, location, %{sensitive}@", buf, 0x16u);

          v34 = v53;
        }
      }

      [(RTBluePOIMonitor *)self setLastPostedBluePOIEstimate:v30];
      [(RTBluePOIMonitor *)self logLocalBluePOIResult:v29 aggregatedPOIEstimate:v30];
    }

    mapItemManager = [(RTBluePOIMonitor *)self mapItemManager];
    v62 = 0;
    v27 = [mapItemManager mapItemsFromLocalBluePOIResult:v30 withConfidenceThreshold:&v62 error:0.5];
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
      v76 = locationCopy;
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
    v59 = distantFuture;
    v60 = distantPast;
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
    *error = v47;
  }

  bluePOIMetricManager = [(RTBluePOIMonitor *)self bluePOIMetricManager];
  dailyMetrics = [bluePOIMetricManager dailyMetrics];
  [dailyMetrics increaseCountForKey:@"BluePOIDailyEventOnDemandQueryCount"];

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