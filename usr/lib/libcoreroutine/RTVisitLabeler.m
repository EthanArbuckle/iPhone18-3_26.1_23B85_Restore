@interface RTVisitLabeler
- (BOOL)labelVisit:(id)a3 clientIdentifier:(id)a4 policy:(unint64_t)a5 error:(id *)a6;
- (RTVisitLabeler)initWithDefaultsManager:(id)a3 placeInferenceManager:(id)a4 locationManager:(id)a5 wifiManager:(id)a6;
- (void)_collectWiFiScansAndLabelVisit:(id)a3 clientIdentifier:(id)a4 policy:(unint64_t)a5 maxRetries:(unint64_t)a6 handler:(id)a7;
- (void)_findPointOfInterestForVisit:(id)a3 clientIdentifier:(id)a4 handler:(id)a5;
- (void)_labelConstantMonitorVisit:(id)a3 clientIdentifier:(id)a4 policy:(unint64_t)a5 handler:(id)a6;
- (void)_processVisit:(id)a3 clientIdentifier:(id)a4 policy:(unint64_t)a5 handler:(id)a6;
- (void)findPointOfInterestForVisit:(id)a3 clientIdentifier:(id)a4 handler:(id)a5;
- (void)labelConstantMonitorVisit:(id)a3 clientIdentifier:(id)a4 policy:(unint64_t)a5 handler:(id)a6;
- (void)labelEventMonitorVisit:(id)a3 clientIdentifier:(id)a4 policy:(unint64_t)a5 handler:(id)a6;
- (void)labelVisit:(id)a3 clientIdentifier:(id)a4 policy:(unint64_t)a5 handler:(id)a6;
- (void)onWiFiScanNotification:(id)a3;
- (void)setRegisteredForWifiScan:(BOOL)a3;
- (void)startWiFiScanForLabelling:(id)a3 clientIdentifier:(id)a4 policy:(unint64_t)a5 handler:(id)a6;
@end

@implementation RTVisitLabeler

- (RTVisitLabeler)initWithDefaultsManager:(id)a3 placeInferenceManager:(id)a4 locationManager:(id)a5 wifiManager:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = v14;
  if (!v11)
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v20 = "Invalid parameter not satisfying: defaultsManager";
LABEL_16:
    _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, v20, buf, 2u);
    goto LABEL_17;
  }

  if (!v12)
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v20 = "Invalid parameter not satisfying: placeInferenceManager";
    goto LABEL_16;
  }

  if (!v13)
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v20 = "Invalid parameter not satisfying: locationManager";
    goto LABEL_16;
  }

  if (!v14)
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v20 = "Invalid parameter not satisfying: wifiManager";
      goto LABEL_16;
    }

LABEL_17:

    v21 = 0;
    goto LABEL_18;
  }

  v33.receiver = self;
  v33.super_class = RTVisitLabeler;
  v16 = [(RTVisitLabeler *)&v33 init];
  if (v16)
  {
    v32 = v16;
    v17 = v16;
    attr = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [(RTVisitLabeler *)v17 UTF8String];
    }

    else
    {
      v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%p", objc_opt_class(), v17];
      label = [v23 UTF8String];

      v18 = label;
    }

    labela = dispatch_queue_create(v18, attr);

    queue = v17->_queue;
    v17->_queue = labela;

    objc_storeStrong(&v17->_defaultsManager, a3);
    objc_storeStrong(&v17->_placeInferenceManager, a4);
    objc_storeStrong(&v17->_wifiManager, a6);
    objc_storeStrong(&v17->_locationManager, a5);
    v25 = objc_opt_new();
    timerManager = v17->_timerManager;
    v17->_timerManager = v25;

    v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
    accessPoints = v17->_accessPoints;
    v17->_accessPoints = v27;

    *&v17->_registeredForWifiScan = 0;
    v16 = v32;
  }

  self = v16;
  v21 = self;
LABEL_18:

  return v21;
}

- (BOOL)labelVisit:(id)a3 clientIdentifier:(id)a4 policy:(unint64_t)a5 error:(id *)a6
{
  v55 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__12;
  v51 = __Block_byref_object_dispose__12;
  v52 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__12;
  v45 = __Block_byref_object_dispose__12;
  v46 = 0;
  v11 = dispatch_semaphore_create(0);
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __59__RTVisitLabeler_labelVisit_clientIdentifier_policy_error___block_invoke;
  v37[3] = &unk_2788C5C50;
  v39 = &v47;
  v40 = &v41;
  v12 = v11;
  v38 = v12;
  [(RTVisitLabeler *)self labelVisit:v9 clientIdentifier:v10 policy:a5 handler:v37];
  v13 = v12;
  v14 = [MEMORY[0x277CBEAA8] now];
  v15 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v13, v15))
  {
    v16 = [MEMORY[0x277CBEAA8] now];
    [v16 timeIntervalSinceDate:v14];
    v18 = v17;
    v19 = objc_opt_new();
    v20 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_10];
    v21 = [MEMORY[0x277CCACC8] callStackSymbols];
    v22 = [v21 filteredArrayUsingPredicate:v20];
    v23 = [v22 firstObject];

    [v19 submitToCoreAnalytics:v23 type:1 duration:v18];
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v24, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v25 = MEMORY[0x277CCA9B8];
    v53 = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v53 count:1];
    v27 = [v25 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v26];

    if (v27)
    {
      v28 = v27;

      v29 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v27 = 0;
  }

  v29 = 1;
LABEL_8:

  v30 = v27;
  if ((v29 & 1) == 0)
  {
    objc_storeStrong(v42 + 5, v27);
  }

  if (v42[5] || ([v48[5] placeInference], v32 = objc_claimAutoreleasedReturnValue(), v33 = v32 == 0, v32, v33))
  {
    v31 = 0;
    if (a6)
    {
      *a6 = v42[5];
    }
  }

  else
  {
    v34 = [v48[5] placeInference];
    [v9 setPlaceInference:v34];

    v31 = 1;
  }

  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v47, 8);

  return v31;
}

void __59__RTVisitLabeler_labelVisit_clientIdentifier_policy_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v5 placeInference];
      v9 = @"YES";
      v16 = 138740483;
      if (!v8)
      {
        v9 = @"NO";
      }

      v17 = v9;
      v18 = 2117;
      v19 = v5;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "labeled visit, %{sensitive}@, %{sensitive}@, error, %@", &v16, 0x20u);
    }
  }

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v5;
  v12 = v5;

  v13 = *(*(a1 + 48) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v6;
  v15 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)labelVisit:(id)a3 clientIdentifier:(id)a4 policy:(unint64_t)a5 handler:(id)a6
{
  v35 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = [v11 source];
  if (v14 <= 1)
  {
    if (v14)
    {
      if (v14 == 1)
      {
        [(RTVisitLabeler *)self labelConstantMonitorVisit:v11 clientIdentifier:v12 policy:a5 handler:v13];
      }

      goto LABEL_15;
    }

    v15 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v25 = NSStringFromSelector(a2);
      *buf = 138412546;
      v32 = v25;
      v33 = 2048;
      v34 = [v11 source];
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "%@, unsupported visit source, %lu", buf, 0x16u);
    }

    v16 = MEMORY[0x277CCA9B8];
    v17 = *MEMORY[0x277D01448];
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"unsupported visit source.", *MEMORY[0x277CCA450]];
    v28 = v18;
    v19 = MEMORY[0x277CBEAC0];
    v20 = &v28;
    v21 = &v27;
LABEL_14:
    v23 = [v19 dictionaryWithObjects:v20 forKeys:v21 count:1];
    v24 = [v16 errorWithDomain:v17 code:1 userInfo:v23];

    v13[2](v13, v11, v24);
    goto LABEL_15;
  }

  if (v14 == 3)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v26 = NSStringFromSelector(a2);
      *buf = 138412546;
      v32 = v26;
      v33 = 2048;
      v34 = [v11 source];
      _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "%@, unsupported visit source, %lu", buf, 0x16u);
    }

    v16 = MEMORY[0x277CCA9B8];
    v17 = *MEMORY[0x277D01448];
    v29 = *MEMORY[0x277CCA450];
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"unsupported visit source."];
    v30 = v18;
    v19 = MEMORY[0x277CBEAC0];
    v20 = &v30;
    v21 = &v29;
    goto LABEL_14;
  }

  if (v14 == 2)
  {
    [(RTVisitLabeler *)self labelEventMonitorVisit:v11 clientIdentifier:v12 policy:32 handler:v13];
  }

LABEL_15:
}

- (void)labelConstantMonitorVisit:(id)a3 clientIdentifier:(id)a4 policy:(unint64_t)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(RTVisitLabeler *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__RTVisitLabeler_labelConstantMonitorVisit_clientIdentifier_policy_handler___block_invoke;
  block[3] = &unk_2788C5110;
  block[4] = self;
  v18 = v10;
  v20 = v12;
  v21 = a5;
  v19 = v11;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(v13, block);
}

- (void)_labelConstantMonitorVisit:(id)a3 clientIdentifier:(id)a4 policy:(unint64_t)a5 handler:(id)a6
{
  v53[1] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a6;
  if (a5 == 1)
  {
    v13 = a4;
    [(RTVisitLabeler *)self startWiFiScanForLabelling:v11 clientIdentifier:v13 policy:1 handler:v12];
  }

  else
  {
    aSelector = a2;
    v14 = MEMORY[0x277CE41F8];
    v42 = a4;
    v15 = [v14 alloc];
    v16 = [v11 location];
    [v16 latitude];
    v18 = v17;
    v19 = [v11 location];
    [v19 longitude];
    v21 = CLLocationCoordinate2DMake(v18, v20);
    v22 = [v11 location];
    [v22 altitude];
    v24 = v23;
    v25 = [v11 location];
    [v25 horizontalUncertainty];
    v27 = v26;
    [v11 location];
    v29 = v28 = self;
    [v29 verticalUncertainty];
    v31 = v30;
    [v11 location];
    v32 = v43 = v12;
    v33 = [v32 date];
    v13 = [v15 initWithCoordinate:v33 altitude:v21.latitude horizontalAccuracy:v21.longitude verticalAccuracy:v24 timestamp:{v27, v31}];

    v34 = v28;
    v35 = objc_alloc(MEMORY[0x277D011E0]);
    v53[0] = v13;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:1];
    v37 = [v35 initWithFidelityPolicy:0 locations:v36 accessPoints:MEMORY[0x277CBEBF8] clientIdentifier:v42];

    v12 = v43;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v38 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v39 = NSStringFromSelector(aSelector);
        *buf = 138412803;
        v48 = v39;
        v49 = 2117;
        v50 = v11;
        v51 = 2048;
        v52 = 0;
        _os_log_impl(&dword_2304B3000, v38, OS_LOG_TYPE_INFO, "%@ , visit, %{sensitive}@, fidelity policy, %lu", buf, 0x20u);
      }
    }

    v40 = [(RTVisitLabeler *)v34 placeInferenceManager];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __77__RTVisitLabeler__labelConstantMonitorVisit_clientIdentifier_policy_handler___block_invoke;
    v44[3] = &unk_2788C5558;
    v45 = v11;
    v46 = v43;
    [v40 fetchPlaceInferencesForOptions:v37 handler:v44];
  }
}

void __77__RTVisitLabeler__labelConstantMonitorVisit_clientIdentifier_policy_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      *buf = 138740483;
      v32 = v8;
      v33 = 2048;
      v34 = [v5 count];
      v35 = 2112;
      v36 = v6;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "label visit, %{sensitive}@, %lu possible placeInferences to choose from, error, %@", buf, 0x20u);
    }
  }

  if (!v6 && [v5 count])
  {
    v24 = 0;
    v25 = v5;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v27;
      v14 = -1.0;
      v15 = MEMORY[0x277D86220];
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v27 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v17 = *(*(&v26 + 1) + 8 * i);
          ++v12;
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v18 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              *buf = 134218243;
              v32 = v12;
              v33 = 2117;
              v34 = v17;
              _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_INFO, "placeInference candidate %lu, %{sensitive}@", buf, 0x16u);
            }
          }

          [v17 confidence];
          if (v19 > v14)
          {
            [*(a1 + 32) setPlaceInference:v17];
            [v17 confidence];
            v14 = v20;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v11);
    }

    v21 = [*(a1 + 32) placeInference];

    v6 = v24;
    v5 = v25;
    if (v21 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v22 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = *(a1 + 32);
        *buf = 138739971;
        v32 = v23;
        _os_log_impl(&dword_2304B3000, v22, OS_LOG_TYPE_INFO, "selected placeInference for visit, %{sensitive}@", buf, 0xCu);
      }
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)labelEventMonitorVisit:(id)a3 clientIdentifier:(id)a4 policy:(unint64_t)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(RTVisitLabeler *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__RTVisitLabeler_labelEventMonitorVisit_clientIdentifier_policy_handler___block_invoke;
  block[3] = &unk_2788C5110;
  block[4] = self;
  v18 = v10;
  v20 = v12;
  v21 = a5;
  v19 = v11;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(v13, block);
}

- (void)startWiFiScanForLabelling:(id)a3 clientIdentifier:(id)a4 policy:(unint64_t)a5 handler:(id)a6
{
  v38 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a6;
  [(RTVisitLabeler *)self setWifiScanTimerFireCount:0];
  v14 = NSStringFromSelector(a2);
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = __Block_byref_object_copy__12;
  v32[4] = __Block_byref_object_dispose__12;
  v33 = [[RTPowerAssertion alloc] initWithIdentifier:v14 timeout:21.0];
  if ([(RTVisitLabeler *)self collectingWiFiScans])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v15 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = NSStringFromSelector(a2);
        *buf = 138412290;
        v35 = v16;
        _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "%@, already collecting wifi scans", buf, 0xCu);
      }
    }

    v13[2](v13, v11, 0);
  }

  else
  {
    [(RTVisitLabeler *)self setCollectingWiFiScans:1];
    v17 = [(RTVisitLabeler *)self timerManager];
    v18 = [(RTVisitLabeler *)self queue];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __76__RTVisitLabeler_startWiFiScanForLabelling_clientIdentifier_policy_handler___block_invoke;
    v25[3] = &unk_2788C5CA0;
    v30 = a2;
    v25[4] = self;
    v26 = v11;
    v31 = a5;
    v27 = v12;
    v29 = v32;
    v28 = v13;
    v19 = [v17 timerWithIdentifier:@"com.apple.routined.visit.wifiscan.delaytimer" queue:v18 handler:v25];
    [(RTVisitLabeler *)self setWifiScanDelayTimer:v19];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v20 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = NSStringFromSelector(a2);
        v22 = [(RTVisitLabeler *)self wifiScanDelayTimer];
        *buf = 138412546;
        v35 = v21;
        v36 = 2112;
        v37 = v22;
        _os_log_impl(&dword_2304B3000, v20, OS_LOG_TYPE_INFO, "%@, wifiScanDelayTimer start, %@", buf, 0x16u);
      }
    }

    v23 = [(RTVisitLabeler *)self wifiScanDelayTimer];
    [v23 fireAfterDelay:10.0];

    v24 = [(RTVisitLabeler *)self wifiScanDelayTimer];
    [v24 resume];
  }

  _Block_object_dispose(v32, 8);
}

void __76__RTVisitLabeler_startWiFiScanForLabelling_clientIdentifier_policy_handler___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 72));
      v4 = [*(a1 + 32) wifiScanDelayTimer];
      *buf = 138412546;
      v17 = v3;
      v18 = 2112;
      v19 = v4;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, wifiScanDelayTimer expiry, %@", buf, 0x16u);
    }
  }

  v5 = [*(a1 + 32) wifiScanDelayTimer];
  [v5 invalidate];

  [*(a1 + 32) setWifiScanDelayTimer:0];
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __76__RTVisitLabeler_startWiFiScanForLabelling_clientIdentifier_policy_handler___block_invoke_26;
  v13[3] = &unk_2788C5C78;
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);
  v13[4] = v6;
  v15 = v9;
  v12 = *(a1 + 56);
  v11 = v12;
  v14 = v12;
  [v6 _collectWiFiScansAndLabelVisit:v7 clientIdentifier:v8 policy:v10 maxRetries:1 handler:v13];
}

void __76__RTVisitLabeler_startWiFiScanForLabelling_clientIdentifier_policy_handler___block_invoke_26(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  [*(a1 + 32) setCollectingWiFiScans:0];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = NSStringFromSelector(*(a1 + 56));
      v11 = [v5 placeInference];
      v12 = @"YES";
      v13 = 138413059;
      v14 = v10;
      if (!v11)
      {
        v12 = @"NO";
      }

      v15 = 2117;
      v16 = v12;
      v17 = 2117;
      v18 = v5;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@, label visit, %{sensitive}@, returned visit, %{sensitive}@, error, %@", &v13, 0x2Au);
    }
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v5);
}

- (void)_collectWiFiScansAndLabelVisit:(id)a3 clientIdentifier:(id)a4 policy:(unint64_t)a5 maxRetries:(unint64_t)a6 handler:(id)a7
{
  v36 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a7;
  if (v15)
  {
    v16 = [(RTVisitLabeler *)self wifiScanTimer];

    if (v16)
    {
      v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v33 = "[RTVisitLabeler _collectWiFiScansAndLabelVisit:clientIdentifier:policy:maxRetries:handler:]";
        v34 = 1024;
        v35 = 305;
        _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Wifi scan timer already started - should not happen. (in %s:%d)", buf, 0x12u);
      }
    }

    objc_initWeak(&location, self);
    v18 = [(RTVisitLabeler *)self timerManager];
    v19 = [(RTVisitLabeler *)self queue];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __92__RTVisitLabeler__collectWiFiScansAndLabelVisit_clientIdentifier_policy_maxRetries_handler___block_invoke;
    v26[3] = &unk_2788C5CF0;
    v30[1] = a2;
    v26[4] = self;
    objc_copyWeak(v30, &location);
    v27 = v13;
    v28 = v14;
    v30[2] = a5;
    v30[3] = a6;
    v29 = v15;
    v20 = [v18 timerWithIdentifier:@"com.apple.routined.visit.wifiscan.timer" queue:v19 handler:v26];
    [(RTVisitLabeler *)self setWifiScanTimer:v20];

    [(RTVisitLabeler *)self setRegisteredForWifiScan:1];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v21 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = NSStringFromSelector(a2);
        *buf = 138412290;
        v33 = v22;
        _os_log_impl(&dword_2304B3000, v21, OS_LOG_TYPE_INFO, "%@, request wifi scan", buf, 0xCu);
      }
    }

    v23 = [(RTVisitLabeler *)self wifiManager];
    [v23 scheduleActiveScan];

    v24 = [(RTVisitLabeler *)self wifiScanTimer];
    [v24 fireAfterDelay:5.0];

    v25 = [(RTVisitLabeler *)self wifiScanTimer];
    [v25 resume];

    objc_destroyWeak(v30);
    objc_destroyWeak(&location);
  }
}

void __92__RTVisitLabeler__collectWiFiScansAndLabelVisit_clientIdentifier_policy_maxRetries_handler___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 72));
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v3;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, wifi scan timer expiry", &buf, 0xCu);
    }
  }

  v4 = [*(a1 + 32) wifiManager];
  [v4 cancelScan];

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v6 = [WeakRetained wifiScanTimer];
  [v6 invalidate];

  [WeakRetained setWifiScanTimer:0];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__12;
  v26 = __Block_byref_object_dispose__12;
  v27 = 0;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__12;
  v21[4] = __Block_byref_object_dispose__12;
  v22 = 0;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __92__RTVisitLabeler__collectWiFiScansAndLabelVisit_clientIdentifier_policy_maxRetries_handler___block_invoke_27;
  v13[3] = &unk_2788C5CC8;
  v10 = *(a1 + 80);
  v9 = *(a1 + 88);
  v13[4] = *(a1 + 32);
  p_buf = &buf;
  v18 = v21;
  v19 = v9;
  v16 = *(a1 + 56);
  v13[5] = WeakRetained;
  v14 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = *(a1 + 80);
  v15 = v11;
  v20 = v12;
  [WeakRetained _processVisit:v7 clientIdentifier:v8 policy:v10 handler:v13];

  _Block_object_dispose(v21, 8);
  _Block_object_dispose(&buf, 8);
}

void __92__RTVisitLabeler__collectWiFiScansAndLabelVisit_clientIdentifier_policy_maxRetries_handler___block_invoke_27(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v6 placeInference];
      if (v9)
      {
        v10 = @"YES";
      }

      else
      {
        v10 = @"NO";
      }

      v11 = [*(a1 + 32) wifiScanTimerFireCount];
      v15 = 138740739;
      v16 = v10;
      v17 = 2117;
      v18 = v6;
      v19 = 2112;
      v20 = v7;
      v21 = 2048;
      v22 = v11;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "label visit, %{sensitive}@, returned visit, %{sensitive}@, error, %@, wifi scan timer fire count, %lu", &v15, 0x2Au);
    }
  }

  v12 = [*(a1 + 32) accessPoints];
  [v12 removeAllObjects];

  v13 = [v6 placeInference];
  if (v13)
  {

LABEL_14:
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), a2);
    objc_storeStrong((*(*(a1 + 80) + 8) + 40), a3);
    [*(a1 + 32) setRegisteredForWifiScan:0];
    (*(*(a1 + 64) + 16))();
    goto LABEL_15;
  }

  if ([*(a1 + 32) wifiScanTimerFireCount] >= *(a1 + 88))
  {
    goto LABEL_14;
  }

  if ([*(a1 + 32) wifiScanTimerFireCount] < *(a1 + 88))
  {
    v14 = [*(*(*(a1 + 72) + 8) + 40) placeInference];

    if (!v14)
    {
      [*(a1 + 32) setWifiScanTimerFireCount:{objc_msgSend(*(a1 + 32), "wifiScanTimerFireCount") + 1}];
      [*(a1 + 40) _collectWiFiScansAndLabelVisit:*(a1 + 48) clientIdentifier:*(a1 + 56) policy:*(a1 + 96) maxRetries:*(a1 + 88) handler:*(a1 + 64)];
    }
  }

LABEL_15:
}

- (void)_processVisit:(id)a3 clientIdentifier:(id)a4 policy:(unint64_t)a5 handler:(id)a6
{
  v70[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v54 = a6;
  v10 = MEMORY[0x277CE41F8];
  v51 = a4;
  v11 = [v10 alloc];
  v12 = [v9 location];
  [v12 latitude];
  v14 = v13;
  v15 = [v9 location];
  [v15 longitude];
  v17 = CLLocationCoordinate2DMake(v14, v16);
  v18 = [v9 location];
  [v18 altitude];
  v20 = v19;
  v21 = [v9 location];
  [v21 horizontalUncertainty];
  v23 = v22;
  v24 = [v9 location];
  [v24 verticalUncertainty];
  v26 = v25;
  v27 = [v9 location];
  v28 = [v27 date];
  v29 = [v11 initWithCoordinate:v28 altitude:v17.latitude horizontalAccuracy:v17.longitude verticalAccuracy:v20 timestamp:{v23, v26}];

  v30 = self;
  v31 = objc_alloc(MEMORY[0x277D01160]);
  [v29 coordinate];
  v33 = v32;
  [v29 coordinate];
  v35 = v34;
  [v29 horizontalAccuracy];
  v37 = v36;
  v38 = [v29 timestamp];
  v39 = [v31 initWithLatitude:v38 longitude:v33 horizontalUncertainty:v35 date:v37];

  v40 = [(NSMutableArray *)self->_accessPoints copy];
  v41 = objc_alloc(MEMORY[0x277D011E0]);
  v70[0] = v29;
  v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:1];
  LOBYTE(v50) = 1;
  v43 = [v41 initWithFidelityPolicy:0.0 locations:-1 accessPoints:v50 distance:v51 location:? startDate:? endDate:? limit:? useBackground:? clientIdentifier:?];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v44 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      v45 = NSStringFromSelector(a2);
      *buf = 138413315;
      v61 = v45;
      v62 = 2117;
      v63 = v29;
      v64 = 2048;
      v65 = [v40 count];
      v66 = 2048;
      v67 = a5;
      v68 = 2048;
      v69 = [(RTVisitLabeler *)v30 wifiScanTimerFireCount];
      _os_log_impl(&dword_2304B3000, v44, OS_LOG_TYPE_INFO, "%@, location, %{sensitive}@, access point count, %lu, fidelity policy, %lu, _wifiScanTimerFireCount, %lu", buf, 0x34u);
    }
  }

  v46 = [(RTVisitLabeler *)v30 placeInferenceManager];
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __64__RTVisitLabeler__processVisit_clientIdentifier_policy_handler___block_invoke;
  v55[3] = &unk_2788C5D18;
  v55[4] = v30;
  v56 = v9;
  v57 = v39;
  v58 = v54;
  v59 = a2;
  v47 = v54;
  v48 = v39;
  v49 = v9;
  [v46 fetchPlaceInferencesForOptions:v43 handler:v55];
}

void __64__RTVisitLabeler__processVisit_clientIdentifier_policy_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __64__RTVisitLabeler__processVisit_clientIdentifier_policy_handler___block_invoke_2;
  v15[3] = &unk_2788C56E8;
  v16 = v6;
  v17 = v5;
  v8 = *(a1 + 64);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  *&v11 = *(a1 + 56);
  *(&v11 + 1) = v8;
  *&v12 = v9;
  *(&v12 + 1) = v10;
  v18 = v12;
  v19 = v11;
  v13 = v5;
  v14 = v6;
  dispatch_async(v7, v15);
}

void __64__RTVisitLabeler__processVisit_clientIdentifier_policy_handler___block_invoke_2(uint64_t a1)
{
  v1 = a1;
  v72 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 32) && [*(a1 + 40) count])
  {
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v3 = *(v1 + 40);
    v4 = [v3 countByEnumeratingWithState:&v61 objects:v71 count:16];
    if (!v4)
    {
      v2 = 0;
LABEL_32:

      goto LABEL_33;
    }

    v5 = v4;
    v6 = 0;
    v7 = 0;
    v58 = 0;
    v57 = 0;
    v8 = *v62;
    v9 = -1.0;
    v10 = MEMORY[0x277D86220];
    v11 = -1.0;
    v12 = -1.0;
    do
    {
      v13 = 0;
      v59 = v5;
      do
      {
        if (*v62 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v14 = *(*(&v61 + 1) + 8 * v13);
        ++v6;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v15 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            NSStringFromSelector(*(v1 + 72));
            v16 = v8;
            v17 = v10;
            v18 = v3;
            v19 = v7;
            v21 = v20 = v1;
            *buf = 138412802;
            v66 = v21;
            v67 = 2048;
            v68 = v6;
            v69 = 2112;
            v70 = v14;
            _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "%@, placeInference candidate %lu, %@", buf, 0x20u);

            v1 = v20;
            v7 = v19;
            v3 = v18;
            v10 = v17;
            v8 = v16;
            v5 = v59;
          }
        }

        if ([v14 placeType] == 2)
        {
          [v14 confidence];
          if (v22 > v12)
          {
            v23 = v14;

            [v23 confidence];
            v12 = v24;
            v7 = v23;
          }
        }

        else if ([v14 placeType] == 3)
        {
          [v14 confidence];
          if (v25 > v11)
          {
            v26 = v14;

            [v26 confidence];
            v11 = v27;
            v58 = v26;
          }
        }

        else if ([*(v1 + 48) source] == 1)
        {
          [v14 confidence];
          if (v28 > v9)
          {
            v29 = v14;

            [v29 confidence];
            v9 = v30;
            v57 = v29;
          }
        }

        ++v13;
      }

      while (v5 != v13);
      v5 = [v3 countByEnumeratingWithState:&v61 objects:v71 count:16];
    }

    while (v5);

    if (v58 && v7)
    {
      v2 = v57;
      if ([*(v1 + 48) source] != 2)
      {
        v60 = objc_alloc(MEMORY[0x277D011D8]);
        v31 = [v7 mapItem];
        v32 = [v58 mapItem];
        v33 = [v7 userType];
        v34 = [v7 userTypeSource];
        v35 = v1;
        v36 = [v7 placeType];
        v37 = [v7 referenceLocation];
        [v7 confidence];
        v39 = v38;
        [v58 confidence];
        v41 = v40;
        v42 = [v7 loiIdentifier];
        v43 = v36;
        v1 = v35;
        v44 = [v60 initWithMapItem:v31 finerGranularityMapItem:v32 userType:v33 userTypeSource:v34 placeType:v43 referenceLocation:v37 confidence:v39 finerGranularityMapItemConfidence:v41 loiIdentifier:v42];

        v45 = v58;
        v2 = v44;
LABEL_31:

        v3 = v45;
        goto LABEL_32;
      }
    }

    else
    {
      v2 = v57;
      if (!v58)
      {
        if (!v7)
        {
          goto LABEL_33;
        }

        v45 = v7;
        v7 = v57;
        v2 = v45;
        goto LABEL_31;
      }
    }

    v45 = v58;

    v2 = v45;
    goto LABEL_31;
  }

  v2 = 0;
LABEL_33:
  v46 = objc_alloc(MEMORY[0x277D01428]);
  v47 = [MEMORY[0x277CBEAA8] date];
  v48 = [*(v1 + 48) type];
  v49 = *(v1 + 56);
  v50 = [*(v1 + 48) entry];
  v51 = [*(v1 + 48) exit];
  v52 = [*(v1 + 48) dataPointCount];
  [*(v1 + 48) confidence];
  v53 = [v46 initWithDate:v47 type:v48 location:v49 entry:v50 exit:v51 dataPointCount:v52 confidence:v2 placeInference:?];

  if (v2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v54 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
    {
      v55 = NSStringFromSelector(*(v1 + 72));
      *buf = 138412547;
      v66 = v55;
      v67 = 2117;
      v68 = v53;
      _os_log_impl(&dword_2304B3000, v54, OS_LOG_TYPE_INFO, "%@, selected placeInference for visit, %{sensitive}@", buf, 0x16u);
    }
  }

  v56 = *(v1 + 64);
  if (v56)
  {
    (*(v56 + 16))(v56, v53, *(v1 + 32));
  }
}

- (void)onWiFiScanNotification:(id)a3
{
  v4 = a3;
  v5 = [(RTVisitLabeler *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__RTVisitLabeler_onWiFiScanNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __41__RTVisitLabeler_onWiFiScanNotification___block_invoke(uint64_t a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [*(a1 + 32) scanResults];
    v2 = [*(a1 + 40) accessPoints];
    [v2 addObjectsFromArray:v3];
  }
}

- (void)setRegisteredForWifiScan:(BOOL)a3
{
  if (self->_registeredForWifiScan != a3)
  {
    v4 = a3;
    self->_registeredForWifiScan = a3;
    v7 = [(RTVisitLabeler *)self wifiManager];
    +[(RTNotification *)RTWiFiManagerNotificationScanResults];
    if (v4)
      v6 = {;
      [v7 addObserver:self selector:sel_onWiFiScanNotification_ name:v6];
    }

    else
      v6 = {;
      [v7 removeObserver:self fromNotification:v6];
    }
  }
}

- (void)_findPointOfInterestForVisit:(id)a3 clientIdentifier:(id)a4 handler:(id)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([(RTVisitLabeler *)self collectingWiFiScans])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v12 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = NSStringFromSelector(a2);
        *buf = 138412290;
        v18 = v13;
        _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "%@, already collecting wifi scans", buf, 0xCu);
      }
    }

    v11[2](v11, v9, 0);
  }

  else
  {
    [(RTVisitLabeler *)self setCollectingWiFiScans:1];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __72__RTVisitLabeler__findPointOfInterestForVisit_clientIdentifier_handler___block_invoke;
    v14[3] = &unk_2788C5D40;
    v14[4] = self;
    v16 = a2;
    v15 = v11;
    [(RTVisitLabeler *)self _collectWiFiScansAndLabelVisit:v9 clientIdentifier:v10 policy:32 maxRetries:0 handler:v14];
  }
}

void __72__RTVisitLabeler__findPointOfInterestForVisit_clientIdentifier_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) setCollectingWiFiScans:0];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = NSStringFromSelector(*(a1 + 48));
      v9 = 138412803;
      v10 = v8;
      v11 = 2117;
      v12 = v5;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, labeled visit, %{sensitive}@, error, %@", &v9, 0x20u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)findPointOfInterestForVisit:(id)a3 clientIdentifier:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(RTVisitLabeler *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __71__RTVisitLabeler_findPointOfInterestForVisit_clientIdentifier_handler___block_invoke;
  v15[3] = &unk_2788C5530;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

@end