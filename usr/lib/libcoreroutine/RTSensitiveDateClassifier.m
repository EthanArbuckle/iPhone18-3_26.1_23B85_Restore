@interface RTSensitiveDateClassifier
- (BOOL)_accessPointsConditionsMet;
- (BOOL)_isNearSensitiveLocation:(id)a3;
- (BOOL)_sensitiveMotionSignalDetectedForMotion:(id)a3 startDate:(id)a4 endDate:(id)a5;
- (RTSensitiveDateClassifier)initWithDefaultsManager:(id)a3 healthKitManager:(id)a4 learnedLocationStore:(id)a5 locationManager:(id)a6 motionActivityManager:(id)a7 timerManager:(id)a8 vehicleLocationProvider:(id)a9 wifiManager:(id)a10;
- (id)_compareWorkoutStartDateToLookbackWindowStartDate:(id)a3 motionLookbackWindowStartDate:(id)a4;
- (id)_getLastParkedCarDate;
- (id)_getLocationLookbackWindowStartDateWithDateInterval:(id)a3 currentLocation:(id)a4;
- (id)_getLookbackWindowStartDateWithLocation:(id)a3 error:(id *)a4;
- (id)_getMotionLookbackWindowStartDateWithDateInterval:(id)a3;
- (id)_locationsForOptions:(id)a3;
- (id)_motionsForDateInterval:(id)a3;
- (id)_sensitiveLocationsOfInterestWithError:(id *)a3;
- (void)_fetchCurrentLocationWithHandler:(id)a3;
- (void)_fetchInWifiDenseAreaWithHandler:(id)a3;
- (void)_processRecentWorkoutSignal;
- (void)_processWifiScanResults;
- (void)_stopMonitoringWifiScans;
- (void)fetchLookbackWindowStartDateWithLocation:(id)a3 handler:(id)a4;
- (void)onWifiScanResultsNotification:(id)a3;
@end

@implementation RTSensitiveDateClassifier

- (RTSensitiveDateClassifier)initWithDefaultsManager:(id)a3 healthKitManager:(id)a4 learnedLocationStore:(id)a5 locationManager:(id)a6 motionActivityManager:(id)a7 timerManager:(id)a8 vehicleLocationProvider:(id)a9 wifiManager:(id)a10
{
  v16 = a3;
  v17 = a4;
  v45 = a5;
  v48 = a6;
  v47 = a7;
  v43 = a8;
  v46 = a9;
  v18 = a10;
  v44 = v16;
  v42 = v18;
  if (!v16)
  {
    v32 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v32, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: defaultsManager", buf, 2u);
    }

    v33 = 0;
    v19 = v45;
    goto LABEL_28;
  }

  if (!v17)
  {
    v34 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    v19 = v45;
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    *buf = 0;
    v35 = "Invalid parameter not satisfying: healthKitManager";
LABEL_26:
    _os_log_error_impl(&dword_2304B3000, v34, OS_LOG_TYPE_ERROR, v35, buf, 2u);
    goto LABEL_27;
  }

  v19 = v45;
  if (!v45)
  {
    v34 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    *buf = 0;
    v35 = "Invalid parameter not satisfying: learnedLocationStore";
    goto LABEL_26;
  }

  if (!v48)
  {
    v34 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    *buf = 0;
    v35 = "Invalid parameter not satisfying: locationManager";
    goto LABEL_26;
  }

  if (!v47)
  {
    v34 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    *buf = 0;
    v35 = "Invalid parameter not satisfying: motionActivityManager";
    goto LABEL_26;
  }

  if (!v46)
  {
    v34 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    *buf = 0;
    v35 = "Invalid parameter not satisfying: vehicleLocationProvider";
    goto LABEL_26;
  }

  if (!v18)
  {
    v34 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v35 = "Invalid parameter not satisfying: wifiManager";
      goto LABEL_26;
    }

LABEL_27:

    v33 = 0;
LABEL_28:
    v36 = self;
    goto LABEL_29;
  }

  v49.receiver = self;
  v49.super_class = RTSensitiveDateClassifier;
  v20 = [(RTSensitiveDateClassifier *)&v49 init];
  if (v20)
  {
    v21 = objc_opt_new();
    accessPoints = v20->_accessPoints;
    v20->_accessPoints = v21;

    v23 = objc_opt_new();
    distanceCalculator = v20->_distanceCalculator;
    v20->_distanceCalculator = v23;

    objc_storeStrong(&v20->_defaultsManager, a3);
    objc_storeStrong(&v20->_healthKitManager, a4);
    v20->_inWifiDenseArea = 0;
    latestWorkoutDateInterval = v20->_latestWorkoutDateInterval;
    v20->_latestWorkoutDateInterval = 0;

    objc_storeStrong(&v20->_learnedLocationStore, a5);
    objc_storeStrong(&v20->_locationManager, a6);
    v26 = objc_opt_new();
    metrics = v20->_metrics;
    v20->_metrics = v26;

    objc_storeStrong(&v20->_motionActivityManager, a7);
    nearSensitiveLocationDetectionDate = v20->_nearSensitiveLocationDetectionDate;
    v20->_nearSensitiveLocationDetectionDate = 0;

    v29 = v20;
    v30 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = [(RTSensitiveDateClassifier *)v29 UTF8String];
    }

    else
    {
      v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%p", objc_opt_class(), v29];
      v31 = [v38 UTF8String];
    }

    v39 = dispatch_queue_create(v31, v30);

    queue = v29->_queue;
    v29->_queue = v39;

    objc_storeStrong(&v29->_timerManager, a8);
    objc_storeStrong(&v29->_vehicleLocationProvider, a9);
    objc_storeStrong(&v29->_wifiManager, a10);
  }

  v36 = v20;
  v33 = v36;
  v19 = v45;
LABEL_29:

  return v33;
}

- (void)fetchLookbackWindowStartDateWithLocation:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [(RTSensitiveDateClassifier *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __78__RTSensitiveDateClassifier_fetchLookbackWindowStartDateWithLocation_handler___block_invoke;
    block[3] = &unk_2788C67D8;
    block[4] = self;
    v12 = v7;
    v11 = v6;
    dispatch_async(v8, block);
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }
  }
}

void __78__RTSensitiveDateClassifier_fetchLookbackWindowStartDateWithLocation_handler___block_invoke(id *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] defaultsManager];
  v3 = [v2 objectForKey:@"RTDefaultsSensitiveDateClassifierOverrideLookbackWindow"];

  v4 = a1[4];
  if (v3)
  {
    v5 = [v4 defaultsManager];
    v6 = [v5 objectForKey:@"RTDefaultsSensitiveDateClassifierOverrideLookbackWindow"];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilitySensitiveDate);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [v6 stringFromDate];
        *buf = 136315394;
        v14 = "[RTSensitiveDateClassifier fetchLookbackWindowStartDateWithLocation:handler:]_block_invoke";
        v15 = 2112;
        v16 = v8;
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%s, user override lookback window with date, %@", buf, 0x16u);
      }
    }

    (*(a1[6] + 2))();
  }

  else
  {
    [v4 _processRecentWorkoutSignal];
    v9 = a1[4];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __78__RTSensitiveDateClassifier_fetchLookbackWindowStartDateWithLocation_handler___block_invoke_14;
    v10[3] = &unk_2788C8368;
    v10[4] = v9;
    v12 = a1[6];
    v11 = a1[5];
    [v9 _fetchInWifiDenseAreaWithHandler:v10];
  }
}

void __78__RTSensitiveDateClassifier_fetchLookbackWindowStartDateWithLocation_handler___block_invoke_14(id *a1, char a2)
{
  v4 = [a1[4] queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __78__RTSensitiveDateClassifier_fetchLookbackWindowStartDateWithLocation_handler___block_invoke_2;
  v5[3] = &unk_2788C8340;
  v8 = a2;
  v5[4] = a1[4];
  v7 = a1[6];
  v6 = a1[5];
  dispatch_async(v4, v5);
}

void __78__RTSensitiveDateClassifier_fetchLookbackWindowStartDateWithLocation_handler___block_invoke_2(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  if (*(a1 + 56) == 1 && ([*(a1 + 32) setInWifiDenseArea:1], objc_msgSend(*(a1 + 32), "metrics"), v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277CBEAA8], "date"), v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "processSignal:date:", 5, v3), v3, v2, objc_msgSend(*(a1 + 32), "latestWorkoutDateInterval"), v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v14 = _rt_log_facility_get_os_log(RTLogFacilitySensitiveDate);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v21 = "[RTSensitiveDateClassifier fetchLookbackWindowStartDateWithLocation:handler:]_block_invoke_2";
        _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "%s, wifi dense area detected, returning current date", buf, 0xCu);
      }
    }

    v15 = [MEMORY[0x277CBEAA8] now];
    v16 = [*(a1 + 32) metrics];
    [v16 submitMetricsWithLookbackWindowDate:v15];

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    if (v5)
    {
      v19 = 0;
      v7 = [v6 _getLookbackWindowStartDateWithLocation:v5 error:&v19];
      v8 = v19;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v9 = _rt_log_facility_get_os_log(RTLogFacilitySensitiveDate);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = [v7 stringFromDate];
          v11 = *(a1 + 40);
          *buf = 136315906;
          v21 = "[RTSensitiveDateClassifier fetchLookbackWindowStartDateWithLocation:handler:]_block_invoke";
          v22 = 2112;
          v23 = v10;
          v24 = 2112;
          v25 = v11;
          v26 = 2112;
          v27 = v8;
          _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%s, Fetched lookbackWindowStartDate, %@, currentLocation provided, %@, error, %@", buf, 0x2Au);
        }
      }

      v12 = [*(a1 + 32) metrics];
      [v12 addCurrentLocation:*(a1 + 40) fromSource:2];

      v13 = [*(a1 + 32) metrics];
      [v13 submitMetricsWithLookbackWindowDate:v7];

      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __78__RTSensitiveDateClassifier_fetchLookbackWindowStartDateWithLocation_handler___block_invoke_16;
      v17[3] = &unk_2788C8318;
      v17[4] = v6;
      v18 = *(a1 + 48);
      [v6 _fetchCurrentLocationWithHandler:v17];
    }
  }
}

void __78__RTSensitiveDateClassifier_fetchLookbackWindowStartDateWithLocation_handler___block_invoke_16(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __78__RTSensitiveDateClassifier_fetchLookbackWindowStartDateWithLocation_handler___block_invoke_2_17;
  v12[3] = &unk_2788C5530;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v15 = v5;
  v16 = v9;
  v10 = v5;
  v11 = v6;
  dispatch_async(v7, v12);
}

void __78__RTSensitiveDateClassifier_fetchLookbackWindowStartDateWithLocation_handler___block_invoke_2_17(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v11 = *(a1 + 32);
  v4 = v11;
  v5 = [v2 _getLookbackWindowStartDateWithLocation:v3 error:&v11];
  v6 = v11;

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilitySensitiveDate);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v5 stringFromDate];
      v9 = *(a1 + 48);
      *buf = 136315907;
      v13 = "[RTSensitiveDateClassifier fetchLookbackWindowStartDateWithLocation:handler:]_block_invoke_2";
      v14 = 2112;
      v15 = v8;
      v16 = 2117;
      v17 = v9;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%s, Fetched lookbackWindowStartDate, %@, currentLocation, %{sensitive}@, error, %@", buf, 0x2Au);
    }
  }

  v10 = [*(a1 + 40) metrics];
  [v10 submitMetricsWithLookbackWindowDate:v5];

  (*(*(a1 + 56) + 16))();
}

- (id)_getLookbackWindowStartDateWithLocation:(id)a3 error:(id *)a4
{
  v59 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (v6)
  {
    v48 = 0;
    v7 = [(RTSensitiveDateClassifier *)self _sensitiveLocationsOfInterestWithError:&v48];
    v8 = v48;
    sensitiveLocations = self->_sensitiveLocations;
    self->_sensitiveLocations = v7;

    if (v8)
    {
      if (a4)
      {
        v10 = v8;
        *a4 = v8;
      }

      goto LABEL_5;
    }

    v14 = [(RTSensitiveDateClassifier *)self defaultsManager];
    v15 = [v14 objectForKey:@"RTDefaultsSensitiveDateClassifierBypassSensitiveLocationCheck"];
    if (v15)
    {
    }

    else
    {
      v16 = _os_feature_enabled_impl();

      if ((v16 & 1) == 0)
      {
        if ([(RTSensitiveDateClassifier *)self _isNearSensitiveLocation:v6])
        {
LABEL_5:
          v11 = [v6 timestamp];
LABEL_30:

          goto LABEL_31;
        }

LABEL_18:
        v18 = [(RTSensitiveDateClassifier *)self _getLastParkedCarDate];
        v19 = objc_alloc(MEMORY[0x277CCA970]);
        v20 = [v6 timestamp];
        v21 = [v20 dateByAddingTimeInterval:-259200.0];
        v22 = [v6 timestamp];
        v23 = [v19 initWithStartDate:v21 endDate:v22];

        v24 = [(RTSensitiveDateClassifier *)self _getMotionLookbackWindowStartDateWithDateInterval:v23];
        v25 = objc_alloc(MEMORY[0x277CCA970]);
        v26 = [v6 timestamp];
        v27 = [v25 initWithStartDate:v24 endDate:v26];

        v47 = v27;
        v28 = [(RTSensitiveDateClassifier *)self _getLocationLookbackWindowStartDateWithDateInterval:v27 currentLocation:v6];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v29 = _rt_log_facility_get_os_log(RTLogFacilitySensitiveDate);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            v44 = [v24 stringFromDate];
            v30 = [v28 stringFromDate];
            [v18 stringFromDate];
            v31 = v45 = v23;
            v43 = [(NSDateInterval *)self->_latestWorkoutDateInterval startDate];
            v32 = [v43 stringFromDate];
            *buf = 136316162;
            v50 = "[RTSensitiveDateClassifier _getLookbackWindowStartDateWithLocation:error:]";
            v51 = 2112;
            v52 = v44;
            v53 = 2112;
            v54 = v30;
            v55 = 2112;
            v56 = v31;
            v57 = 2112;
            v58 = v32;
            v33 = v32;
            _os_log_impl(&dword_2304B3000, v29, OS_LOG_TYPE_INFO, "%s, motionLookbackWindowStart, %@, locationLookbackWindowStart, %@, parkedCarDate, %@, latestWorkoutStartDate, %@", buf, 0x34u);

            v23 = v45;
          }
        }

        v34 = [v28 earlierDate:v18];
        if ([v34 isEqualToDate:v18])
        {
          v46 = v23;
          v35 = [(RTSensitiveDateClassifier *)self nearSensitiveLocationDetectionDate];
          v36 = [v18 earlierDate:v35];
          v37 = [(RTSensitiveDateClassifier *)self nearSensitiveLocationDetectionDate];
          if ([v36 isEqualToDate:v37])
          {
            [v28 timeIntervalSinceDate:v18];
            v39 = v38;

            v40 = v18;
            v23 = v46;
            if (v39 <= 600.0)
            {
              goto LABEL_29;
            }

            goto LABEL_28;
          }

          v23 = v46;
        }

LABEL_28:
        v40 = v28;
LABEL_29:
        v41 = v40;
        v11 = [(RTSensitiveDateClassifier *)self _compareWorkoutStartDateToLookbackWindowStartDate:v41 motionLookbackWindowStartDate:v24];

        goto LABEL_30;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v17 = _rt_log_facility_get_os_log(RTLogFacilitySensitiveDate);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v50 = "[RTSensitiveDateClassifier _getLookbackWindowStartDateWithLocation:error:]";
        _os_log_impl(&dword_2304B3000, v17, OS_LOG_TYPE_INFO, "%s, bypassing sensitive location check for all location signal, via user defaults or feature flag", buf, 0xCu);
      }
    }

    goto LABEL_18;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilitySensitiveDate);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = *a4;
      *buf = 136315394;
      v50 = "[RTSensitiveDateClassifier _getLookbackWindowStartDateWithLocation:error:]";
      v51 = 2112;
      v52 = v13;
      _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "%s, lookback window passed in nil location, error, %@", buf, 0x16u);
    }
  }

  v11 = [MEMORY[0x277CBEAA8] date];
LABEL_31:

  return v11;
}

- (void)_fetchInWifiDenseAreaWithHandler:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(RTSensitiveDateClassifier *)self defaultsManager];
  v6 = [v5 objectForKey:@"RTDefaultsSensitiveDateClassifierBypassWifiAccessPointsCheck"];
  if (v6)
  {

LABEL_4:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilitySensitiveDate);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v23 = "[RTSensitiveDateClassifier _fetchInWifiDenseAreaWithHandler:]";
        _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%s, bypassing wifi access points check via user defaults or feature flag", buf, 0xCu);
      }
    }

    v4[2](v4, 1);
    goto LABEL_9;
  }

  v7 = _os_feature_enabled_impl();

  if (v7)
  {
    goto LABEL_4;
  }

  objc_initWeak(&location, self);
  v9 = [(RTSensitiveDateClassifier *)self timerManager];
  v10 = [(RTSensitiveDateClassifier *)self queue];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __62__RTSensitiveDateClassifier__fetchInWifiDenseAreaWithHandler___block_invoke;
  v19[3] = &unk_2788C7638;
  v19[4] = self;
  objc_copyWeak(&v20, &location);
  v11 = [v9 timerWithIdentifier:@"RTSensitiveDateClassifierWifiScanTimer" queue:v10 handler:v19];
  [(RTSensitiveDateClassifier *)self setWifiScanTimer:v11];

  [(RTSensitiveDateClassifier *)self setWifiDenseHandler:v4];
  v12 = [(RTSensitiveDateClassifier *)self accessPoints];
  [v12 removeAllObjects];

  v13 = [(RTSensitiveDateClassifier *)self wifiManager];
  v14 = +[(RTNotification *)RTWiFiManagerNotificationScanResults];
  [v13 addObserver:self selector:sel_onWifiScanResultsNotification_ name:v14];

  v15 = [(RTSensitiveDateClassifier *)self wifiManager];
  [v15 scheduleScanWithChannels:&unk_2845A0B00];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilitySensitiveDate);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v23 = "[RTSensitiveDateClassifier _fetchInWifiDenseAreaWithHandler:]";
      _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "%s, start monitoring for wifi scan results", buf, 0xCu);
    }
  }

  v17 = [(RTSensitiveDateClassifier *)self wifiScanTimer];
  [v17 fireAfterDelay:1.0];

  v18 = [(RTSensitiveDateClassifier *)self wifiScanTimer];
  [v18 resume];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
LABEL_9:
}

void __62__RTSensitiveDateClassifier__fetchInWifiDenseAreaWithHandler___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) wifiDenseHandler];

  v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
  if (v2)
  {
    if (v3)
    {
      v4 = _rt_log_facility_get_os_log(RTLogFacilitySensitiveDate);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v6 = 136315138;
        v7 = "[RTSensitiveDateClassifier _fetchInWifiDenseAreaWithHandler:]_block_invoke";
        _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%s, wifi timer expiry: no early exit, proceeding to process wifi access points", &v6, 0xCu);
      }
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _processWifiScanResults];
LABEL_7:

    return;
  }

  if (v3)
  {
    WeakRetained = _rt_log_facility_get_os_log(RTLogFacilitySensitiveDate);
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_INFO))
    {
      v6 = 136315138;
      v7 = "[RTSensitiveDateClassifier _fetchInWifiDenseAreaWithHandler:]_block_invoke";
      _os_log_impl(&dword_2304B3000, WeakRetained, OS_LOG_TYPE_INFO, "%s, wifi timer expiry: handler already returned. Exiting now.", &v6, 0xCu);
    }

    goto LABEL_7;
  }
}

- (void)_fetchCurrentLocationWithHandler:(id)a3
{
  v54 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__37;
  v50 = __Block_byref_object_dispose__37;
  v51 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__37;
  v44 = __Block_byref_object_dispose__37;
  v45 = 0;
  v4 = dispatch_semaphore_create(0);
  v33 = [MEMORY[0x277CBEAA8] date];
  v5 = [[RTLocationRequestOptions alloc] initWithDesiredAccuracy:1 horizontalAccuracy:1 maxAge:100.0 yieldLastLocation:100.0 timeout:10.0 fallback:1.0 fallbackHorizontalAccuracy:200.0 fallbackMaxAge:240.0];
  v6 = [(RTSensitiveDateClassifier *)self locationManager];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __62__RTSensitiveDateClassifier__fetchCurrentLocationWithHandler___block_invoke;
  v36[3] = &unk_2788C8390;
  v38 = &v46;
  v39 = &v40;
  v7 = v4;
  v37 = v7;
  [v6 fetchCurrentLocationWithOptions:v5 handler:v36];

  v8 = v7;
  v9 = [MEMORY[0x277CBEAA8] now];
  v10 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v8, v10))
  {
    v11 = [MEMORY[0x277CBEAA8] now];
    [v11 timeIntervalSinceDate:v9];
    v13 = v12;
    v14 = objc_opt_new();
    v15 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_31];
    v16 = [MEMORY[0x277CCACC8] callStackSymbols];
    v17 = [v16 filteredArrayUsingPredicate:v15];
    v18 = [v17 firstObject];

    [v14 submitToCoreAnalytics:v18 type:1 duration:v13];
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v19, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v20 = MEMORY[0x277CCA9B8];
    v52 = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v52 count:1];
    v22 = [v20 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v21];

    if (v22)
    {
      v23 = v22;

      v24 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v22 = 0;
  }

  v24 = 1;
LABEL_8:

  v25 = v22;
  if ((v24 & 1) == 0)
  {
    objc_storeStrong(v41 + 5, v22);
  }

  v26 = [v47[5] timestamp];
  v27 = [v26 earlierDate:v34];
  v28 = [v47[5] timestamp];
  v29 = [v27 isEqualToDate:v28];

  v30 = [(RTSensitiveDateClassifier *)self metrics];
  v31 = v30;
  if (v29)
  {
    v32 = 3;
  }

  else
  {
    v32 = 4;
  }

  [v30 addCurrentLocation:v47[5] fromSource:v32];

  v3[2](v3, v47[5], v41[5]);
  _Block_object_dispose(&v40, 8);

  _Block_object_dispose(&v46, 8);
}

void __62__RTSensitiveDateClassifier__fetchCurrentLocationWithHandler___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (id)_getLastParkedCarDate
{
  v53[1] = *MEMORY[0x277D85DE8];
  v3 = [(RTSensitiveDateClassifier *)self defaultsManager];
  v4 = [v3 objectForKey:@"RTDefaultsSensitiveDateClassifierBypassParkedCarEventCheck"];
  if (v4)
  {

LABEL_4:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilitySensitiveDate);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = "[RTSensitiveDateClassifier _getLastParkedCarDate]";
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%s, bypassing parked car signal check via user defaults or feature flag, returning distant past date for parked car signal", &buf, 0xCu);
      }
    }

    v7 = [MEMORY[0x277CBEAA8] distantPast];
    goto LABEL_9;
  }

  v5 = _os_feature_enabled_impl();

  if (v5)
  {
    goto LABEL_4;
  }

  v9 = dispatch_semaphore_create(0);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__37;
  v51 = __Block_byref_object_dispose__37;
  v52 = 0;
  v10 = [(RTSensitiveDateClassifier *)self vehicleLocationProvider];
  v39 = MEMORY[0x277D85DD0];
  v40 = 3221225472;
  v41 = __50__RTSensitiveDateClassifier__getLastParkedCarDate__block_invoke;
  v42 = &unk_2788C45F0;
  p_buf = &buf;
  v11 = v9;
  v43 = v11;
  [v10 fetchLastVehicleEventsWithHandler:&v39];

  v12 = v11;
  v13 = [MEMORY[0x277CBEAA8] now];
  v14 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v12, v14))
  {
    v15 = [MEMORY[0x277CBEAA8] now];
    [v15 timeIntervalSinceDate:v13];
    v17 = v16;
    v18 = objc_opt_new();
    v19 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_31];
    v20 = [MEMORY[0x277CCACC8] callStackSymbols];
    v21 = [v20 filteredArrayUsingPredicate:v19];
    v22 = [v21 firstObject];

    [v18 submitToCoreAnalytics:v22 type:1 duration:v17];
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      *v45 = 0;
      _os_log_fault_impl(&dword_2304B3000, v23, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v45, 2u);
    }

    v24 = MEMORY[0x277CCA9B8];
    v53[0] = *MEMORY[0x277CCA450];
    *v45 = @"semaphore wait timeout";
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v53 count:1];
    v26 = [v24 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v25];

    if (v26)
    {
      v27 = v26;

      v28 = 0;
      goto LABEL_19;
    }
  }

  else
  {
    v26 = 0;
  }

  v28 = 1;
LABEL_19:

  v29 = v26;
  if ((v28 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v30 = _rt_log_facility_get_os_log(RTLogFacilitySensitiveDate);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      *v45 = 136315138;
      *&v45[4] = "[RTSensitiveDateClassifier _getLastParkedCarDate]";
      _os_log_debug_impl(&dword_2304B3000, v30, OS_LOG_TYPE_DEBUG, "%s, Vehicle Event fetch timed out", v45, 0xCu);
    }
  }

  v31 = *(*(&buf + 1) + 40);
  v32 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
  if (v31)
  {
    if (v32)
    {
      v33 = _rt_log_facility_get_os_log(RTLogFacilitySensitiveDate);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v34 = *(*(&buf + 1) + 40);
        *v45 = 136315394;
        *&v45[4] = "[RTSensitiveDateClassifier _getLastParkedCarDate]";
        v46 = 2112;
        v47 = v34;
        _os_log_impl(&dword_2304B3000, v33, OS_LOG_TYPE_INFO, "%s, Vehicle Event found, %@", v45, 0x16u);
      }
    }

    v35 = [(RTSensitiveDateClassifier *)self metrics];
    v36 = [*(*(&buf + 1) + 40) date];
    [v35 processSignal:4 date:v36];

    v37 = [*(*(&buf + 1) + 40) date];
  }

  else
  {
    if (v32)
    {
      v38 = _rt_log_facility_get_os_log(RTLogFacilitySensitiveDate);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        *v45 = 136315138;
        *&v45[4] = "[RTSensitiveDateClassifier _getLastParkedCarDate]";
        _os_log_impl(&dword_2304B3000, v38, OS_LOG_TYPE_INFO, "%s, Vehicle Event not found, returning distant past", v45, 0xCu);
      }
    }

    v37 = [MEMORY[0x277CBEAA8] distantPast];
  }

  v7 = v37;

  _Block_object_dispose(&buf, 8);
LABEL_9:

  return v7;
}

intptr_t __50__RTSensitiveDateClassifier__getLastParkedCarDate__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 firstObject];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  return dispatch_semaphore_signal(v6);
}

- (id)_getLocationLookbackWindowStartDateWithDateInterval:(id)a3 currentLocation:(id)a4
{
  v57 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v43 = a4;
  v42 = v6;
  v7 = [v6 endDate];
  v8 = [v6 startDate];
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__37;
  v53 = __Block_byref_object_dispose__37;
  v41 = v7;
  v54 = v41;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v9 = objc_alloc(MEMORY[0x277CE41F8]);
  [v43 coordinate];
  v11 = v10;
  v13 = v12;
  [v43 altitude];
  v15 = v14;
  [v43 verticalAccuracy];
  v17 = v16;
  v18 = [v43 timestamp];
  v19 = [v9 initWithCoordinate:v18 altitude:v11 horizontalAccuracy:v13 verticalAccuracy:v15 timestamp:{250000.0, v17}];

  v20 = [(RTSensitiveDateClassifier *)self defaultsManager];
  v21 = [v20 objectForKey:@"RTDefaultsSensitiveDateClassifierBypassCurrentLocationCheck"];
  if (v21)
  {
  }

  else
  {
    v22 = _os_feature_enabled_impl();

    if ((v22 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilitySensitiveDate);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v56 = "[RTSensitiveDateClassifier _getLocationLookbackWindowStartDateWithDateInterval:currentLocation:]";
      _os_log_impl(&dword_2304B3000, v23, OS_LOG_TYPE_INFO, "%s, bypassing current location distance fetch via user defaults or feature flags", buf, 0xCu);
    }
  }

  v19 = 0;
LABEL_9:
  v24 = [(RTSensitiveDateClassifier *)self defaultsManager];
  v25 = [v24 objectForKey:@"RTDefaultsSensitiveDateClassifierBypassSensitiveLocationCheck"];
  if (v25)
  {

LABEL_12:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v27 = _rt_log_facility_get_os_log(RTLogFacilitySensitiveDate);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v56 = "[RTSensitiveDateClassifier _getLocationLookbackWindowStartDateWithDateInterval:currentLocation:]";
        _os_log_impl(&dword_2304B3000, v27, OS_LOG_TYPE_INFO, "%s, bypassing sensitive location check for all location signal, via user defaults or feature flag", buf, 0xCu);
      }
    }

    v28 = 0;
    i = v41;
    goto LABEL_17;
  }

  v26 = _os_feature_enabled_impl();

  if (v26)
  {
    goto LABEL_12;
  }

  v28 = 0;
  for (i = v41; ; i = v28)
  {
    [i timeIntervalSinceDate:v8];
    if (v32 <= 0.0 || (v46[3] & 1) != 0)
    {
      break;
    }

    v33 = objc_autoreleasePoolPush();
    v34 = [i dateByAddingTimeInterval:-3600.0];
    v35 = [v34 laterDate:v8];

    v36 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v35 endDate:i];
    v37 = [(RTSensitiveDateClassifier *)self defaultsManager];
    v38 = [v37 objectForKey:@"RTDefaultsSensitiveDateClassifierBypassCurrentLocationCheck"];

    if (v38)
    {

      v19 = 0;
    }

    v39 = [objc_alloc(MEMORY[0x277D01320]) initWithDateInterval:v36 horizontalAccuracy:3600 batchSize:v19 boundingBoxLocation:250.0];
    v40 = [(RTSensitiveDateClassifier *)self _locationsForOptions:v39];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __97__RTSensitiveDateClassifier__getLocationLookbackWindowStartDateWithDateInterval_currentLocation___block_invoke;
    v44[3] = &unk_2788C83B8;
    v44[4] = self;
    v44[5] = &v45;
    v44[6] = &v49;
    [v40 enumerateObjectsWithOptions:2 usingBlock:v44];
    v28 = v35;

    objc_autoreleasePoolPop(v33);
  }

LABEL_17:
  v30 = v50[5];

  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v49, 8);

  return v30;
}

void __97__RTSensitiveDateClassifier__getLocationLookbackWindowStartDateWithDateInterval_currentLocation___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  if ([*(a1 + 32) _isNearSensitiveLocation:?])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  else
  {
    v6 = [v9 timestamp];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

- (id)_getMotionLookbackWindowStartDateWithDateInterval:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 endDate];
  v6 = [v4 startDate];
  v21 = v5;
  v7 = [(RTSensitiveDateClassifier *)self defaultsManager];
  v8 = [v7 objectForKey:@"RTDefaultsSensitiveDateClassifierBypassMotionCheck"];
  if (v8)
  {
  }

  else
  {
    v9 = _os_feature_enabled_impl();

    if ((v9 & 1) == 0)
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v34 = 0x3032000000;
      v35 = __Block_byref_object_copy__37;
      v36 = __Block_byref_object_dispose__37;
      v12 = v21;
      v14 = 0;
      v37 = v12;
      v31[0] = 0;
      v31[1] = v31;
      v31[2] = 0x3032000000;
      v31[3] = __Block_byref_object_copy__37;
      v31[4] = __Block_byref_object_dispose__37;
      v32 = 0;
      v27 = 0;
      v28 = &v27;
      v29 = 0x2020000000;
      v30 = 0;
      while (1)
      {
        [v12 timeIntervalSinceDate:v6];
        if (v15 <= 0.0 || (v28[3] & 1) != 0)
        {
          break;
        }

        v16 = objc_autoreleasePoolPush();
        v17 = [v12 dateByAddingTimeInterval:-3600.0];
        v18 = [v17 laterDate:v6];

        v19 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v18 endDate:v12];
        v20 = [(RTSensitiveDateClassifier *)self _motionsForDateInterval:v19];
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __79__RTSensitiveDateClassifier__getMotionLookbackWindowStartDateWithDateInterval___block_invoke;
        v22[3] = &unk_2788C83E0;
        v22[4] = self;
        p_buf = &buf;
        v25 = &v27;
        v26 = v31;
        v23 = v6;
        [v20 enumerateObjectsWithOptions:2 usingBlock:v22];
        v14 = v18;

        objc_autoreleasePoolPop(v16);
        v12 = v14;
      }

      v11 = *(*(&buf + 1) + 40);
      _Block_object_dispose(&v27, 8);
      _Block_object_dispose(v31, 8);

      _Block_object_dispose(&buf, 8);
      goto LABEL_9;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilitySensitiveDate);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[RTSensitiveDateClassifier _getMotionLookbackWindowStartDateWithDateInterval:]";
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%s, bypassing motion check via user defaults or feature flag", &buf, 0xCu);
    }
  }

  v11 = v6;
  v12 = v21;
LABEL_9:

  return v11;
}

void __79__RTSensitiveDateClassifier__getMotionLookbackWindowStartDateWithDateInterval___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = *(a1 + 32);
  v9 = [v7 startDate];
  LODWORD(v8) = [v8 _sensitiveMotionSignalDetectedForMotion:v7 startDate:v9 endDate:*(*(*(a1 + 48) + 8) + 40)];

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilitySensitiveDate);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [v7 startDate];
        v12 = [v11 stringFromDate];
        v20 = 136315394;
        v21 = "[RTSensitiveDateClassifier _getMotionLookbackWindowStartDateWithDateInterval:]_block_invoke";
        v22 = 2112;
        v23 = v12;
        _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%s, driving motion detected, driving motion activity start date, %@", &v20, 0x16u);
      }
    }

    v13 = [*(a1 + 32) metrics];
    [v13 processSignal:1 date:*(*(*(a1 + 48) + 8) + 40)];

    *(*(*(a1 + 56) + 8) + 24) = 1;
    *a4 = 1;
  }

  else
  {
    v14 = [v7 type];
    if (v14 != [*(*(*(a1 + 64) + 8) + 40) type] || (v15 = objc_msgSend(v7, "confidence"), v15 != objc_msgSend(*(*(*(a1 + 64) + 8) + 40), "confidence")))
    {
      v16 = [v7 startDate];
      v17 = [v16 laterDate:*(a1 + 40)];
      v18 = *(*(a1 + 48) + 8);
      v19 = *(v18 + 40);
      *(v18 + 40) = v17;
    }

    objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
  }
}

- (void)_processRecentWorkoutSignal
{
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [v3 dateByAddingTimeInterval:-3600.0];

  v5 = [(RTSensitiveDateClassifier *)self healthKitManager];
  v7 = 0;
  v6 = [v5 getLatestWorkoutDateIntervalWithStartDate:v4 error:&v7];
  [(RTSensitiveDateClassifier *)self setLatestWorkoutDateInterval:v6];
}

- (BOOL)_isNearSensitiveLocation:(id)a3
{
  v56 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(RTSensitiveDateClassifier *)self defaultsManager];
  v6 = [v5 objectForKey:@"RTDefaultsSensitiveDateClassifierBypassSensitiveLocationCheck"];
  if (v6)
  {

    goto LABEL_4;
  }

  v7 = _os_feature_enabled_impl();

  if ((v7 & 1) == 0)
  {
    v11 = [(RTSensitiveDateClassifier *)self defaultsManager];
    v12 = [v11 objectForKey:@"RTDefaultsSensitiveDateClassifierBypassSignalEnvironmentCheck"];
    if (v12)
    {
    }

    else
    {
      v13 = _os_feature_enabled_impl();

      if ((v13 & 1) == 0)
      {
        if ([v4 signalEnvironmentType] == 3 || objc_msgSend(v4, "signalEnvironmentType") == 4)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v19 = _rt_log_facility_get_os_log(RTLogFacilitySensitiveDate);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              *buf = 136315395;
              *&buf[4] = "[RTSensitiveDateClassifier _isNearSensitiveLocation:]";
              *&buf[12] = 2117;
              *&buf[14] = v4;
              _os_log_impl(&dword_2304B3000, v19, OS_LOG_TYPE_INFO, "%s, sensitive signal environment detected for location, %{sensitive}@", buf, 0x16u);
            }
          }

          v8 = [(RTSensitiveDateClassifier *)self metrics];
          v20 = [v4 timestamp];
          [v8 processSignal:3 date:v20];

          v10 = 1;
          goto LABEL_9;
        }

LABEL_17:
        v15 = [(RTSensitiveDateClassifier *)self defaultsManager];
        v16 = [v15 objectForKey:@"RTDefaultsSensitiveDateClassifierBypassSensitiveLOICheck"];
        if (v16)
        {
        }

        else
        {
          v17 = _os_feature_enabled_impl();

          if ((v17 & 1) == 0)
          {
            v21 = [objc_alloc(MEMORY[0x277D01160]) initWithCLLocation:v4];
            v42 = 0;
            v43 = &v42;
            v44 = 0x2020000000;
            v45 = 0;
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3032000000;
            v53 = __Block_byref_object_copy__37;
            v54 = __Block_byref_object_dispose__37;
            v55 = 0;
            v36 = 0;
            v37 = &v36;
            v38 = 0x3032000000;
            v39 = __Block_byref_object_copy__37;
            v40 = __Block_byref_object_dispose__37;
            v41 = 0;
            sensitiveLocations = self->_sensitiveLocations;
            v26 = MEMORY[0x277D85DD0];
            v27 = 3221225472;
            v28 = __54__RTSensitiveDateClassifier__isNearSensitiveLocation___block_invoke;
            v29 = &unk_2788C8408;
            v30 = self;
            v8 = v21;
            v31 = v8;
            v33 = &v36;
            v34 = &v42;
            v35 = buf;
            v23 = v4;
            v32 = v23;
            [(NSArray *)sensitiveLocations enumerateObjectsUsingBlock:&v26];
            if (*(*&buf[8] + 40))
            {
              [(RTSensitiveDateClassifier *)self setNearSensitiveLocationDetectionDate:v26, v27, v28, v29, v30, v31];
            }

            if (v37[5])
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
              {
                v24 = _rt_log_facility_get_os_log(RTLogFacilitySensitiveDate);
                if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
                {
                  v25 = v37[5];
                  *v46 = 136315651;
                  v47 = "[RTSensitiveDateClassifier _isNearSensitiveLocation:]";
                  v48 = 2112;
                  v49 = v25;
                  v50 = 2117;
                  v51 = v23;
                  _os_log_debug_impl(&dword_2304B3000, v24, OS_LOG_TYPE_DEBUG, "%s, error for near sensitive location check: error, %@, location, %{sensitive}@", v46, 0x20u);
                }
              }

              v10 = 0;
            }

            else
            {
              v10 = *(v43 + 24);
            }

            _Block_object_dispose(&v36, 8);
            _Block_object_dispose(buf, 8);

            _Block_object_dispose(&v42, 8);
            goto LABEL_9;
          }
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v8 = _rt_log_facility_get_os_log(RTLogFacilitySensitiveDate);
          if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
          {
            goto LABEL_8;
          }

          *buf = 136315138;
          *&buf[4] = "[RTSensitiveDateClassifier _isNearSensitiveLocation:]";
          v9 = "%s, bypassing sensitive LOI check via user defaults or feature flag";
          goto LABEL_7;
        }

LABEL_23:
        v10 = 0;
        goto LABEL_24;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v14 = _rt_log_facility_get_os_log(RTLogFacilitySensitiveDate);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        *&buf[4] = "[RTSensitiveDateClassifier _isNearSensitiveLocation:]";
        _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "%s, bypassing signal environment check via user defaults or feature flag", buf, 0xCu);
      }
    }

    goto LABEL_17;
  }

LABEL_4:
  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    goto LABEL_23;
  }

  v8 = _rt_log_facility_get_os_log(RTLogFacilitySensitiveDate);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    *&buf[4] = "[RTSensitiveDateClassifier _isNearSensitiveLocation:]";
    v9 = "%s, bypassing sensitive location check for LOI and signal environment, via user defaults or feature flag";
LABEL_7:
    _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, v9, buf, 0xCu);
  }

LABEL_8:
  v10 = 0;
LABEL_9:

LABEL_24:
  return v10 & 1;
}

void __54__RTSensitiveDateClassifier__isNearSensitiveLocation___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = *(a1 + 40);
  v8 = *(*(a1 + 32) + 16);
  v9 = [v6 location];
  v10 = [v9 location];
  v24 = 0;
  [v8 distanceFromLocation:v7 toLocation:v10 error:&v24];
  v12 = v11;
  v13 = v24;
  v14 = v24;

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), v13);
  if (v12 <= 1000.0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v15 = _rt_log_facility_get_os_log(RTLogFacilitySensitiveDate);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = *(a1 + 40);
        v17 = [v6 location];
        v18 = [v17 location];
        *buf = 136315907;
        v26 = "[RTSensitiveDateClassifier _isNearSensitiveLocation:]_block_invoke";
        v27 = 2117;
        v28 = v16;
        v29 = 2117;
        v30 = v18;
        v31 = 2048;
        v32 = v12;
        _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "%s, near sensitive location detected, currentLocation, %{sensitive}@, sensitiveLocation, %{sensitive}@, distance, %.2f", buf, 0x2Au);
      }
    }

    *(*(*(a1 + 64) + 8) + 24) = 1;
    v19 = [*(a1 + 40) date];
    v20 = *(*(a1 + 72) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;

    *a4 = 1;
    v22 = [*(a1 + 32) metrics];
    v23 = [*(a1 + 48) timestamp];
    [v22 processSignal:2 date:v23];
  }
}

- (id)_locationsForOptions:(id)a3
{
  v62[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__37;
  v51 = __Block_byref_object_dispose__37;
  v52 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__37;
  v45 = __Block_byref_object_dispose__37;
  v46 = objc_opt_new();
  v5 = dispatch_semaphore_create(0);
  locationManager = self->_locationManager;
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __50__RTSensitiveDateClassifier__locationsForOptions___block_invoke;
  v37[3] = &unk_2788C4490;
  v39 = &v47;
  v40 = &v41;
  v7 = v5;
  v38 = v7;
  [(RTLocationManager *)locationManager fetchStoredLocationsWithOptions:v4 handler:v37];
  v8 = v7;
  v9 = [MEMORY[0x277CBEAA8] now];
  v10 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v8, v10))
  {
    v11 = [MEMORY[0x277CBEAA8] now];
    [v11 timeIntervalSinceDate:v9];
    v13 = v12;
    v14 = objc_opt_new();
    v15 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_31];
    v16 = [MEMORY[0x277CCACC8] callStackSymbols];
    v17 = [v16 filteredArrayUsingPredicate:v15];
    v18 = [v17 firstObject];

    [v14 submitToCoreAnalytics:v18 type:1 duration:v13];
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v19, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v20 = MEMORY[0x277CCA9B8];
    v62[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v62 count:1];
    v22 = [v20 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v21];

    if (v22)
    {
      v23 = v22;

      v24 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v22 = 0;
  }

  v24 = 1;
LABEL_8:

  v25 = v22;
  if ((v24 & 1) == 0)
  {
    objc_storeStrong(v48 + 5, v22);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilitySensitiveDate);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v36 = [v42[5] count];
      v29 = [v4 dateInterval];
      v30 = [v29 startDate];
      v31 = [v30 stringFromDate];
      v32 = [v4 dateInterval];
      v33 = [v32 endDate];
      v34 = [v33 stringFromDate];
      v35 = v48[5];
      *buf = 136316162;
      *&buf[4] = "[RTSensitiveDateClassifier _locationsForOptions:]";
      v54 = 2048;
      v55 = v36;
      v56 = 2112;
      v57 = v31;
      v58 = 2112;
      v59 = v34;
      v60 = 2112;
      v61 = v35;
      _os_log_debug_impl(&dword_2304B3000, v26, OS_LOG_TYPE_DEBUG, "%s, Fetched %lu locations, batch from, %@, to, %@, error, %@", buf, 0x34u);
    }
  }

  if (v48[5])
  {
    v27 = 0;
  }

  else
  {
    v27 = v42[5];
  }

  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v47, 8);

  return v27;
}

void __50__RTSensitiveDateClassifier__locationsForOptions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  v9 = a3;
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_motionsForDateInterval:(id)a3
{
  v62[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__37;
  v51 = __Block_byref_object_dispose__37;
  v52 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__37;
  v45 = __Block_byref_object_dispose__37;
  v46 = objc_opt_new();
  v5 = dispatch_semaphore_create(0);
  motionActivityManager = self->_motionActivityManager;
  v7 = [v4 startDate];
  v8 = [v4 endDate];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __53__RTSensitiveDateClassifier__motionsForDateInterval___block_invoke;
  v37[3] = &unk_2788C4490;
  v39 = &v41;
  v40 = &v47;
  v9 = v5;
  v38 = v9;
  [(RTMotionActivityManager *)motionActivityManager fetchMotionActivitiesFromStartDate:v7 endDate:v8 handler:v37];

  v10 = v9;
  v11 = [MEMORY[0x277CBEAA8] now];
  v12 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v10, v12))
  {
    v13 = [MEMORY[0x277CBEAA8] now];
    [v13 timeIntervalSinceDate:v11];
    v15 = v14;
    v16 = objc_opt_new();
    v17 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_31];
    v18 = [MEMORY[0x277CCACC8] callStackSymbols];
    v19 = [v18 filteredArrayUsingPredicate:v17];
    v20 = [v19 firstObject];

    [v16 submitToCoreAnalytics:v20 type:1 duration:v15];
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v21, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v22 = MEMORY[0x277CCA9B8];
    v62[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v62 count:1];
    v24 = [v22 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v23];

    if (v24)
    {
      v25 = v24;

      v26 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v24 = 0;
  }

  v26 = 1;
LABEL_8:

  v27 = v24;
  if ((v26 & 1) == 0)
  {
    objc_storeStrong(v48 + 5, v24);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v28 = _rt_log_facility_get_os_log(RTLogFacilitySensitiveDate);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      v31 = [v42[5] count];
      v32 = [v4 startDate];
      v33 = [v32 stringFromDate];
      v34 = [v4 endDate];
      v35 = [v34 stringFromDate];
      v36 = v48[5];
      *buf = 136316162;
      *&buf[4] = "[RTSensitiveDateClassifier _motionsForDateInterval:]";
      v54 = 2048;
      v55 = v31;
      v56 = 2112;
      v57 = v33;
      v58 = 2112;
      v59 = v35;
      v60 = 2112;
      v61 = v36;
      _os_log_debug_impl(&dword_2304B3000, v28, OS_LOG_TYPE_DEBUG, "%s, Fetched %lu motion activities, batch from, %@, to, %@, error, %@", buf, 0x34u);
    }
  }

  if (v48[5])
  {
    v29 = 0;
  }

  else
  {
    v29 = v42[5];
  }

  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v47, 8);

  return v29;
}

void __53__RTSensitiveDateClassifier__motionsForDateInterval___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (id)_sensitiveLocationsOfInterestWithError:(id *)a3
{
  v62 = *MEMORY[0x277D85DE8];
  v33 = [MEMORY[0x277CBEB18] array];
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v3 = [&unk_2845A0B18 countByEnumeratingWithState:&v55 objects:v59 count:16];
  if (v3)
  {
    v36 = *v56;
    v34 = *MEMORY[0x277D01448];
    v35 = *MEMORY[0x277CCA450];
LABEL_3:
    v4 = 0;
    while (1)
    {
      if (*v56 != v36)
      {
        objc_enumerationMutation(&unk_2845A0B18);
      }

      v5 = *(*(&v55 + 1) + 8 * v4);
      v49 = 0;
      v50 = &v49;
      v51 = 0x3032000000;
      v52 = __Block_byref_object_copy__37;
      v53 = __Block_byref_object_dispose__37;
      v54 = 0;
      v43 = 0;
      v44 = &v43;
      v45 = 0x3032000000;
      v46 = __Block_byref_object_copy__37;
      v47 = __Block_byref_object_dispose__37;
      v48 = 0;
      v6 = dispatch_semaphore_create(0);
      learnedLocationStore = self->_learnedLocationStore;
      v8 = [v5 unsignedIntegerValue];
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __68__RTSensitiveDateClassifier__sensitiveLocationsOfInterestWithError___block_invoke;
      v39[3] = &unk_2788C69F0;
      v39[4] = v5;
      v41 = &v49;
      v42 = &v43;
      v9 = v6;
      v40 = v9;
      [(RTLearnedLocationStore *)learnedLocationStore fetchLocationsOfInterestWithPlaceType:v8 handler:v39];
      v10 = v9;
      v11 = [MEMORY[0x277CBEAA8] now];
      v12 = dispatch_time(0, 3600000000000);
      if (!dispatch_semaphore_wait(v10, v12))
      {
        break;
      }

      v13 = [MEMORY[0x277CBEAA8] now];
      [v13 timeIntervalSinceDate:v11];
      v15 = v14;
      v16 = objc_opt_new();
      v17 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_31];
      v18 = [MEMORY[0x277CCACC8] callStackSymbols];
      v19 = [v18 filteredArrayUsingPredicate:v17];
      v20 = [v19 firstObject];

      [v16 submitToCoreAnalytics:v20 type:1 duration:v15];
      v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v21, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
      }

      v22 = MEMORY[0x277CCA9B8];
      v60 = v35;
      *buf = @"semaphore wait timeout";
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v60 count:1];
      v24 = [v22 errorWithDomain:v34 code:15 userInfo:v23];

      if (!v24)
      {
        goto LABEL_12;
      }

      v25 = v24;

      v26 = 0;
LABEL_13:

      v27 = v24;
      if ((v26 & 1) == 0)
      {
        objc_storeStrong(v50 + 5, v24);
      }

      v28 = v50[5];
      if (v28)
      {
        if (a3)
        {
          v29 = v28;
          *a3 = v28;
        }
      }

      else if (v44[5])
      {
        [v33 addObjectsFromArray:?];
      }

      _Block_object_dispose(&v43, 8);
      _Block_object_dispose(&v49, 8);

      if (v28)
      {
        v31 = 0;
        v30 = v33;
        goto LABEL_25;
      }

      if (v3 == ++v4)
      {
        v3 = [&unk_2845A0B18 countByEnumeratingWithState:&v55 objects:v59 count:16];
        if (v3)
        {
          goto LABEL_3;
        }

        goto LABEL_23;
      }
    }

    v24 = 0;
LABEL_12:
    v26 = 1;
    goto LABEL_13;
  }

LABEL_23:
  v30 = v33;
  v31 = v33;
LABEL_25:

  return v31;
}

void __68__RTSensitiveDateClassifier__sensitiveLocationsOfInterestWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilitySensitiveDate);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v5 count];
      v9 = [*(a1 + 32) unsignedIntegerValue];
      v16 = 136315650;
      v17 = "[RTSensitiveDateClassifier _sensitiveLocationsOfInterestWithError:]_block_invoke";
      v18 = 2048;
      v19 = v8;
      v20 = 2048;
      v21 = v9;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%s, fetched %lu learned location of interest from learned location store, of placeType, %lu", &v16, 0x20u);
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

- (BOOL)_sensitiveMotionSignalDetectedForMotion:(id)a3 startDate:(id)a4 endDate:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v7 type] != 4)
  {
    goto LABEL_6;
  }

  [v9 timeIntervalSinceDate:v8];
  v11 = v10;
  if (v10 >= 180.0 && [v7 confidence] == 3)
  {
LABEL_12:
    v12 = 1;
    goto LABEL_13;
  }

  if (v11 >= 240.0)
  {
    v13 = [v7 confidence];
    if (v11 < 300.0 && v13 != 2)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

  if (v11 >= 300.0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v12 = 0;
LABEL_13:

  return v12;
}

- (id)_compareWorkoutStartDateToLookbackWindowStartDate:(id)a3 motionLookbackWindowStartDate:(id)a4
{
  v47 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(RTSensitiveDateClassifier *)self latestWorkoutDateInterval];
  v9 = [v8 startDate];

  v10 = [(RTSensitiveDateClassifier *)self latestWorkoutDateInterval];
  v11 = [v10 endDate];

  v12 = [(RTSensitiveDateClassifier *)self nearSensitiveLocationDetectionDate];
  if (v12)
  {
    v13 = [(RTSensitiveDateClassifier *)self nearSensitiveLocationDetectionDate];
    v14 = [v13 laterDate:v7];
  }

  else
  {
    v14 = v7;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilitySensitiveDate);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      [v9 stringFromDate];
      v16 = v34 = v7;
      [v11 stringFromDate];
      v17 = v33 = v6;
      v18 = [(RTSensitiveDateClassifier *)self nearSensitiveLocationDetectionDate];
      v19 = [v18 stringFromDate];
      [v34 stringFromDate];
      v20 = v32 = v11;
      v21 = [v14 stringFromDate];
      *buf = 136316418;
      v36 = "[RTSensitiveDateClassifier _compareWorkoutStartDateToLookbackWindowStartDate:motionLookbackWindowStartDate:]";
      v37 = 2112;
      v38 = v16;
      v39 = 2112;
      v40 = v17;
      v41 = 2112;
      v42 = v19;
      v43 = 2112;
      v44 = v20;
      v45 = 2112;
      v46 = v21;
      _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "%s, workoutStartDate, %@, workoutEndDate, %@, nearSensitiveLocationDetectionDate, %@, motionLookbackWindowStartDate, %@, gatingSignalStartDate, %@", buf, 0x3Eu);

      v11 = v32;
      v6 = v33;

      v7 = v34;
    }
  }

  v22 = [(RTSensitiveDateClassifier *)self latestWorkoutDateInterval];
  if (!v22)
  {
    goto LABEL_23;
  }

  v23 = v22;
  v24 = [v6 compare:v9];

  if (v24 == -1)
  {
    goto LABEL_23;
  }

  if (!v11 || [v11 compare:v14] != -1)
  {
    v25 = [v9 laterDate:v14];
    goto LABEL_24;
  }

  v26 = [(RTSensitiveDateClassifier *)self inWifiDenseArea];
  v27 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
  if (!v26)
  {
    if (v27)
    {
      v29 = _rt_log_facility_get_os_log(RTLogFacilitySensitiveDate);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v36 = "[RTSensitiveDateClassifier _compareWorkoutStartDateToLookbackWindowStartDate:motionLookbackWindowStartDate:]";
        _os_log_impl(&dword_2304B3000, v29, OS_LOG_TYPE_INFO, "%s, workout end date precedes sensitive LOI or driving motion, lookbackWindowStartDate not altered", buf, 0xCu);
      }
    }

LABEL_23:
    v25 = v6;
    goto LABEL_24;
  }

  if (v27)
  {
    v28 = _rt_log_facility_get_os_log(RTLogFacilitySensitiveDate);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v36 = "[RTSensitiveDateClassifier _compareWorkoutStartDateToLookbackWindowStartDate:motionLookbackWindowStartDate:]";
      _os_log_impl(&dword_2304B3000, v28, OS_LOG_TYPE_INFO, "%s, workout end date precedes sensitive LOI or driving motion, returning current date due to wifi dense area detection", buf, 0xCu);
    }
  }

  v25 = [MEMORY[0x277CBEAA8] date];
LABEL_24:
  v30 = v25;

  return v30;
}

- (BOOL)_accessPointsConditionsMet
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = [(RTSensitiveDateClassifier *)self accessPoints];
  if (v3 && (v4 = v3, -[RTSensitiveDateClassifier accessPoints](self, "accessPoints"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v4, v6))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilitySensitiveDate);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [(RTSensitiveDateClassifier *)self accessPoints];
        v9 = [v8 count];
        v10 = [(RTSensitiveDateClassifier *)self accessPoints];
        *buf = 136315650;
        v27 = "[RTSensitiveDateClassifier _accessPointsConditionsMet]";
        v28 = 2048;
        v29 = v9;
        v30 = 2112;
        v31 = v10;
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%s, wifi access points count, %lu, accessPoints, %@", buf, 0x20u);
      }
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = [(RTSensitiveDateClassifier *)self accessPoints];
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      v15 = *v22;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v11);
          }

          if ([*(*(&v21 + 1) + 8 * i) rssi] > -96)
          {
            ++v14;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v13);
    }

    else
    {
      v14 = 0;
    }

    v19 = [(RTSensitiveDateClassifier *)self metrics];
    [v19 updateWifiAccessPointCount:v14];

    LOBYTE(v17) = v14 > 7;
  }

  else
  {
    v17 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
    if (v17)
    {
      v18 = _rt_log_facility_get_os_log(RTLogFacilitySensitiveDate);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v27 = "[RTSensitiveDateClassifier _accessPointsConditionsMet]";
        _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_INFO, "%s, no wifi access points received", buf, 0xCu);
      }

      LOBYTE(v17) = 0;
    }
  }

  return v17;
}

- (void)_processWifiScanResults
{
  v3 = [(RTSensitiveDateClassifier *)self wifiDenseHandler];

  if (v3)
  {
    [(RTSensitiveDateClassifier *)self _stopMonitoringWifiScans];
    v4 = [(RTSensitiveDateClassifier *)self wifiDenseHandler];
    (v4)[2](v4, [(RTSensitiveDateClassifier *)self _accessPointsConditionsMet]);

    [(RTSensitiveDateClassifier *)self setWifiDenseHandler:0];
  }
}

- (void)_stopMonitoringWifiScans
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [(RTSensitiveDateClassifier *)self wifiManager];
  [v3 cancelScan];

  v4 = [(RTSensitiveDateClassifier *)self wifiManager];
  v5 = +[(RTNotification *)RTWiFiManagerNotificationScanResults];
  [v4 removeObserver:self fromNotification:v5];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySensitiveDate);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = 136315138;
      v9 = "[RTSensitiveDateClassifier _stopMonitoringWifiScans]";
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%s, stop monitoring for wifi scan results", &v8, 0xCu);
    }
  }

  v7 = [(RTSensitiveDateClassifier *)self wifiScanTimer];
  [v7 invalidate];

  [(RTSensitiveDateClassifier *)self setWifiScanTimer:0];
}

- (void)onWifiScanResultsNotification:(id)a3
{
  v4 = a3;
  v5 = [(RTSensitiveDateClassifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__RTSensitiveDateClassifier_onWifiScanResultsNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __59__RTSensitiveDateClassifier_onWifiScanResultsNotification___block_invoke(uint64_t a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [*(a1 + 32) scanResults];
    v2 = [*(a1 + 40) accessPoints];
    [v2 addObjectsFromArray:v3];

    [*(a1 + 40) _processWifiScanResults];
  }
}

@end