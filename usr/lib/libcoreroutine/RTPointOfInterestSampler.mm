@interface RTPointOfInterestSampler
- (RTPointOfInterestSampler)initWithDefaultsManager:(id)manager locationManager:(id)locationManager placeInferenceManager:(id)inferenceManager timerManager:(id)timerManager wifiManager:(id)wifiManager;
- (void)_addRequester:(id)requester samplingInterval:(double)interval;
- (void)_removeRequester:(id)requester;
- (void)_shutdownWithHandler:(id)handler;
- (void)_startSampling;
- (void)_updateSamplingInterval;
- (void)onWiFiScanNotification:(id)notification;
- (void)setRegisteredForWifiScan:(BOOL)scan;
- (void)setSamplingInterval:(double)interval;
- (void)startSamplingPointOfInterestFromRequester:(id)requester samplingInterval:(double)interval;
- (void)stopSamplingPointOfInterestFromRequester:(id)requester;
@end

@implementation RTPointOfInterestSampler

- (RTPointOfInterestSampler)initWithDefaultsManager:(id)manager locationManager:(id)locationManager placeInferenceManager:(id)inferenceManager timerManager:(id)timerManager wifiManager:(id)wifiManager
{
  managerCopy = manager;
  locationManagerCopy = locationManager;
  inferenceManagerCopy = inferenceManager;
  timerManagerCopy = timerManager;
  wifiManagerCopy = wifiManager;
  v30 = wifiManagerCopy;
  if (!managerCopy)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v28 = "Invalid parameter not satisfying: defaultsManager";
LABEL_19:
    _os_log_error_impl(&dword_2304B3000, v27, OS_LOG_TYPE_ERROR, v28, buf, 2u);
    goto LABEL_20;
  }

  if (!locationManagerCopy)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v28 = "Invalid parameter not satisfying: locationManager";
    goto LABEL_19;
  }

  if (!inferenceManagerCopy)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v28 = "Invalid parameter not satisfying: placeInferenceManager";
    goto LABEL_19;
  }

  if (!timerManagerCopy)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v28 = "Invalid parameter not satisfying: timerManager";
    goto LABEL_19;
  }

  if (!wifiManagerCopy)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v28 = "Invalid parameter not satisfying: wifiManager";
      goto LABEL_19;
    }

LABEL_20:

    selfCopy = 0;
    goto LABEL_21;
  }

  v31.receiver = self;
  v31.super_class = RTPointOfInterestSampler;
  v18 = [(RTNotifier *)&v31 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_defaultsManager, manager);
    objc_storeStrong(&v19->_locationManager, locationManager);
    objc_storeStrong(&v19->_placeInferenceManager, inferenceManager);
    objc_storeStrong(&v19->_timerManager, timerManager);
    objc_storeStrong(&v19->_wifiManager, wifiManager);
    v20 = objc_opt_new();
    requesters = v19->_requesters;
    v19->_requesters = v20;

    v19->_samplingInterval = 1.79769313e308;
    samplingTimer = v19->_samplingTimer;
    v19->_samplingTimer = 0;

    wifiScanTimer = v19->_wifiScanTimer;
    v19->_wifiScanTimer = 0;

    v19->_registeredForWifiScan = 0;
    v24 = objc_opt_new();
    accessPoints = v19->_accessPoints;
    v19->_accessPoints = v24;

    v19->_running = 0;
    v19->_shouldRun = 0;
  }

  self = v19;
  selfCopy = self;
LABEL_21:

  return selfCopy;
}

- (void)_shutdownWithHandler:(id)handler
{
  handlerCopy = handler;
  [(RTPointOfInterestSampler *)self setRegisteredForWifiScan:0];
  [(RTPointOfInterestSampler *)self setRunning:0];
  [(RTPointOfInterestSampler *)self setShouldRun:0];
  wifiScanTimer = [(RTPointOfInterestSampler *)self wifiScanTimer];
  [wifiScanTimer invalidate];

  [(RTPointOfInterestSampler *)self setWifiScanTimer:0];
  samplingTimer = [(RTPointOfInterestSampler *)self samplingTimer];
  [samplingTimer invalidate];

  [(RTPointOfInterestSampler *)self setSamplingTimer:0];
  v6 = handlerCopy;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
    v6 = handlerCopy;
  }
}

- (void)startSamplingPointOfInterestFromRequester:(id)requester samplingInterval:(double)interval
{
  requesterCopy = requester;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__RTPointOfInterestSampler_startSamplingPointOfInterestFromRequester_samplingInterval___block_invoke;
  block[3] = &unk_2788C5020;
  block[4] = self;
  v10 = requesterCopy;
  intervalCopy = interval;
  v8 = requesterCopy;
  dispatch_async(queue, block);
}

- (void)stopSamplingPointOfInterestFromRequester:(id)requester
{
  requesterCopy = requester;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__RTPointOfInterestSampler_stopSamplingPointOfInterestFromRequester___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = requesterCopy;
  v6 = requesterCopy;
  dispatch_async(queue, v7);
}

- (void)_addRequester:(id)requester samplingInterval:(double)interval
{
  v19 = *MEMORY[0x277D85DE8];
  requesterCopy = requester;
  if (interval <= 0.0)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13) = 0;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: samplingInterval > 0", &v13, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = NSStringFromSelector(a2);
        v13 = 138412802;
        v14 = v9;
        v15 = 2112;
        v16 = requesterCopy;
        v17 = 2048;
        intervalCopy = interval;
        _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@, add requester, %@, sampling interval, %.1f", &v13, 0x20u);
      }
    }

    requesters = [(RTPointOfInterestSampler *)self requesters];
    v11 = [MEMORY[0x277CCABB0] numberWithDouble:interval];
    [requesters setObject:v11 forKey:requesterCopy];

    [(RTPointOfInterestSampler *)self _updateSamplingInterval];
  }
}

- (void)_removeRequester:(id)requester
{
  v17 = *MEMORY[0x277D85DE8];
  requesterCopy = requester;
  requesters = [(RTPointOfInterestSampler *)self requesters];
  v7 = [requesters objectForKey:requesterCopy];

  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = NSStringFromSelector(a2);
        v13 = 138412546;
        v14 = v9;
        v15 = 2112;
        v16 = requesterCopy;
        _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@, remove requester, %@", &v13, 0x16u);
      }
    }

    requesters2 = [(RTPointOfInterestSampler *)self requesters];
    [requesters2 removeObjectForKey:requesterCopy];

    [(RTPointOfInterestSampler *)self _updateSamplingInterval];
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = NSStringFromSelector(a2);
      v13 = 138412546;
      v14 = v12;
      v15 = 2112;
      v16 = requesterCopy;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "%@, requester not found, %@", &v13, 0x16u);
    }
  }
}

- (void)_updateSamplingInterval
{
  v37 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  requesters = [(RTPointOfInterestSampler *)self requesters];
  v4 = [requesters countByEnumeratingWithState:&v24 objects:v36 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v25;
    v8 = 1.79769313e308;
    v9 = MEMORY[0x277D86220];
    *&v5 = 138413058;
    v21 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(requesters);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v12 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            v17 = NSStringFromSelector(a2);
            requesters2 = [(RTPointOfInterestSampler *)self requesters];
            v18 = [requesters2 objectForKey:*&v11];
            *buf = v21;
            v29 = v17;
            v30 = 2112;
            v31 = v11;
            v32 = 2112;
            v33 = v18;
            v34 = 2048;
            v35 = v8;
            _os_log_debug_impl(&dword_2304B3000, v12, OS_LOG_TYPE_DEBUG, "%@, requester, %@, interval, %@, interval min, %.1f", buf, 0x2Au);
          }
        }

        requesters3 = [(RTPointOfInterestSampler *)self requesters];
        v14 = [requesters3 objectForKey:*&v11];
        [v14 doubleValue];
        v16 = v15;

        if (v16 < v8)
        {
          v8 = v16;
        }
      }

      v6 = [requesters countByEnumeratingWithState:&v24 objects:v36 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = 1.79769313e308;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = NSStringFromSelector(a2);
      *buf = 138412546;
      v29 = v20;
      v30 = 2048;
      v31 = v8;
      _os_log_impl(&dword_2304B3000, v19, OS_LOG_TYPE_INFO, "%@, updated interval, %.1f", buf, 0x16u);
    }
  }

  [(RTPointOfInterestSampler *)self setSamplingInterval:v8];
}

- (void)setSamplingInterval:(double)interval
{
  v13 = *MEMORY[0x277D85DE8];
  if (interval > 0.0)
  {
    if (vabdd_f64(self->_samplingInterval, interval) >= 0.1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v7 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v8 = NSStringFromSelector(a2);
          v9 = 138412546;
          v10 = v8;
          v11 = 2048;
          intervalCopy = interval;
          _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, updated interval, %.1f", &v9, 0x16u);
        }
      }

      self->_samplingInterval = interval;
      if (interval == 1.79769313e308)
      {
        [(RTPointOfInterestSampler *)self setShouldRun:0];
      }

      else
      {
        [(RTPointOfInterestSampler *)self setShouldRun:1];
        if (![(RTPointOfInterestSampler *)self running])
        {
          [(RTPointOfInterestSampler *)self _startSampling];
        }
      }
    }
  }

  else
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v9) = 0;
      _os_log_error_impl(&dword_2304B3000, v3, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: samplingInterval > 0", &v9, 2u);
    }
  }
}

- (void)_startSampling
{
  if (![(RTPointOfInterestSampler *)self running])
  {
    [(RTPointOfInterestSampler *)self setRunning:1];
    locationManager = [(RTPointOfInterestSampler *)self locationManager];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __42__RTPointOfInterestSampler__startSampling__block_invoke;
    v5[3] = &unk_2788CC668;
    v5[4] = self;
    v5[5] = a2;
    [locationManager fetchCurrentLocationWithHandler:v5];
  }
}

void __42__RTPointOfInterestSampler__startSampling__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __42__RTPointOfInterestSampler__startSampling__block_invoke_2;
  v11[3] = &unk_2788C4C70;
  v8 = *(a1 + 40);
  v11[4] = *(a1 + 32);
  v12 = v5;
  v13 = v6;
  v14 = v8;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, v11);
}

void __42__RTPointOfInterestSampler__startSampling__block_invoke_2(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) running])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v2 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        v3 = NSStringFromSelector(*(a1 + 56));
        v4 = *(a1 + 40);
        v5 = *(a1 + 48);
        *buf = 138412803;
        v34 = v3;
        v35 = 2117;
        v36 = v4;
        v37 = 2112;
        v38 = v5;
        _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, current location, %{sensitive}@, error, %@", buf, 0x20u);
      }
    }

    v6 = *(a1 + 32);
    if (*(a1 + 48))
    {
      v7 = [v6 timerManager];
      v8 = [*(a1 + 32) queue];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __42__RTPointOfInterestSampler__startSampling__block_invoke_12;
      v32[3] = &unk_2788C52E8;
      v9 = *(a1 + 56);
      v32[4] = *(a1 + 32);
      v32[5] = v9;
      v10 = [v7 timerWithIdentifier:@"com.apple.routined.poisampler.sampling.timer" queue:v8 handler:v32];
      [*(a1 + 32) setSamplingTimer:v10];

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v11 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = NSStringFromSelector(*(a1 + 56));
          v13 = [*(a1 + 32) samplingTimer];
          [*(a1 + 32) samplingInterval];
          *buf = 138412802;
          v34 = v12;
          v35 = 2112;
          v36 = v13;
          v37 = 2048;
          v38 = v14;
          _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%@, sampling timer start, timer, %@, interval, %.1f", buf, 0x20u);
        }
      }

      v15 = [*(a1 + 32) samplingTimer];
      [*(a1 + 32) samplingInterval];
      [v15 fireAfterDelay:?];

      v16 = [*(a1 + 32) samplingTimer];
      [v16 resume];
    }

    else
    {
      v17 = [v6 accessPoints];
      [v17 removeAllObjects];

      [*(a1 + 32) setRegisteredForWifiScan:1];
      v18 = [*(a1 + 32) wifiManager];
      [v18 scheduleActiveScan];

      v19 = [*(a1 + 32) timerManager];
      v20 = [*(a1 + 32) queue];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __42__RTPointOfInterestSampler__startSampling__block_invoke_13;
      v29[3] = &unk_2788C5020;
      v21 = *(a1 + 56);
      v22 = *(a1 + 40);
      v29[4] = *(a1 + 32);
      v31 = v21;
      v30 = v22;
      v23 = [v19 timerWithIdentifier:@"com.apple.routined.poisampler.wifiscan.timer" queue:v20 handler:v29];
      [*(a1 + 32) setWifiScanTimer:v23];

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v24 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v25 = [*(a1 + 32) wifiScanTimer];
          v26 = NSStringFromSelector(*(a1 + 56));
          *buf = 138412802;
          v34 = v25;
          v35 = 2112;
          v36 = v26;
          v37 = 2048;
          v38 = 0x4014000000000000;
          _os_log_impl(&dword_2304B3000, v24, OS_LOG_TYPE_INFO, "%@, wifi scan timer start, timer, %@, interval, %.1f", buf, 0x20u);
        }
      }

      v27 = [*(a1 + 32) wifiScanTimer];
      [v27 fireAfterDelay:5.0];

      v28 = [*(a1 + 32) wifiScanTimer];
      [v28 resume];

      v16 = v30;
    }
  }
}

uint64_t __42__RTPointOfInterestSampler__startSampling__block_invoke_12(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) running];
  if (result)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v3 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = NSStringFromSelector(*(a1 + 40));
        v5 = [*(a1 + 32) samplingTimer];
        v7 = 138412546;
        v8 = v4;
        v9 = 2112;
        v10 = v5;
        _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%@, sampling timer expiry, timer, %@", &v7, 0x16u);
      }
    }

    v6 = [*(a1 + 32) samplingTimer];
    [v6 invalidate];

    [*(a1 + 32) setSamplingTimer:0];
    [*(a1 + 32) setRunning:0];
    result = [*(a1 + 32) shouldRun];
    if (result)
    {
      return [*(a1 + 32) _startSampling];
    }
  }

  return result;
}

void __42__RTPointOfInterestSampler__startSampling__block_invoke_13(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) running])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v2 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        v3 = NSStringFromSelector(*(a1 + 48));
        v4 = [*(a1 + 32) wifiScanTimer];
        *buf = 138412546;
        v18 = v3;
        v19 = 2112;
        v20 = v4;
        _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, wifi scan timer expiry, timer, %@", buf, 0x16u);
      }
    }

    v5 = [*(a1 + 32) wifiManager];
    [v5 cancelScan];

    v6 = [*(a1 + 32) wifiScanTimer];
    [v6 invalidate];

    [*(a1 + 32) setWifiScanTimer:0];
    [*(a1 + 32) setRegisteredForWifiScan:0];
    v7 = objc_alloc(MEMORY[0x277D011E0]);
    v16 = *(a1 + 40);
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
    v9 = [*(a1 + 32) accessPoints];
    v10 = [v7 initWithFidelityPolicy:32 locations:v8 accessPoints:v9 clientIdentifier:@"com.apple.CoreRoutine.poisampler"];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = NSStringFromSelector(*(a1 + 48));
        *buf = 138412546;
        v18 = v12;
        v19 = 2112;
        v20 = v10;
        _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%@, run placeInference with options, %@", buf, 0x16u);
      }
    }

    v13 = [*(a1 + 32) placeInferenceManager];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __42__RTPointOfInterestSampler__startSampling__block_invoke_16;
    v15[3] = &unk_2788C4C98;
    v14 = *(a1 + 48);
    v15[4] = *(a1 + 32);
    v15[5] = v14;
    [v13 fetchPlaceInferencesForOptions:v10 handler:v15];
  }
}

void __42__RTPointOfInterestSampler__startSampling__block_invoke_16(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __42__RTPointOfInterestSampler__startSampling__block_invoke_2_17;
  v11[3] = &unk_2788C4C70;
  v8 = *(a1 + 40);
  v11[4] = *(a1 + 32);
  v12 = v5;
  v13 = v6;
  v14 = v8;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, v11);
}

void __42__RTPointOfInterestSampler__startSampling__block_invoke_2_17(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) running])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v2 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        v3 = NSStringFromSelector(*(a1 + 56));
        v4 = [*(a1 + 40) count];
        v5 = *(a1 + 48);
        *buf = 138412802;
        v20 = v3;
        v21 = 2048;
        v22 = v4;
        v23 = 2112;
        v24 = v5;
        _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, placeInference count, %lu, error, %@", buf, 0x20u);
      }
    }

    v6 = *(a1 + 40);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __42__RTPointOfInterestSampler__startSampling__block_invoke_18;
    v18[3] = &__block_descriptor_40_e33_v32__0__RTPlaceInference_8Q16_B24l;
    v18[4] = *(a1 + 56);
    [v6 enumerateObjectsUsingBlock:v18];
    v7 = [*(a1 + 32) timerManager];
    v8 = [*(a1 + 32) queue];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __42__RTPointOfInterestSampler__startSampling__block_invoke_20;
    v17[3] = &unk_2788C52E8;
    v9 = *(a1 + 56);
    v17[4] = *(a1 + 32);
    v17[5] = v9;
    v10 = [v7 timerWithIdentifier:@"com.apple.routined.poisampler.sampling.timer" queue:v8 handler:v17];
    [*(a1 + 32) setSamplingTimer:v10];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = NSStringFromSelector(*(a1 + 56));
        v13 = [*(a1 + 32) samplingTimer];
        [*(a1 + 32) samplingInterval];
        *buf = 138412802;
        v20 = v12;
        v21 = 2112;
        v22 = v13;
        v23 = 2048;
        v24 = v14;
        _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%@, sampling timer start, timer, %@, interval, %.1f", buf, 0x20u);
      }
    }

    v15 = [*(a1 + 32) samplingTimer];
    [*(a1 + 32) samplingInterval];
    [v15 fireAfterDelay:?];

    v16 = [*(a1 + 32) samplingTimer];
    [v16 resume];
  }
}

void __42__RTPointOfInterestSampler__startSampling__block_invoke_18(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = NSStringFromSelector(*(a1 + 32));
      v8 = 138412803;
      v9 = v7;
      v10 = 2048;
      v11 = a3;
      v12 = 2117;
      v13 = v5;
      _os_log_debug_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEBUG, "%@, idx, %lu, placeInference, %{sensitive}@", &v8, 0x20u);
    }
  }
}

uint64_t __42__RTPointOfInterestSampler__startSampling__block_invoke_20(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) running];
  if (result)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v3 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = NSStringFromSelector(*(a1 + 40));
        v5 = [*(a1 + 32) samplingTimer];
        v7 = 138412546;
        v8 = v4;
        v9 = 2112;
        v10 = v5;
        _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%@, sampling timer expiry, timer, %@", &v7, 0x16u);
      }
    }

    v6 = [*(a1 + 32) samplingTimer];
    [v6 invalidate];

    [*(a1 + 32) setSamplingTimer:0];
    [*(a1 + 32) setRunning:0];
    result = [*(a1 + 32) shouldRun];
    if (result)
    {
      return [*(a1 + 32) _startSampling];
    }
  }

  return result;
}

- (void)setRegisteredForWifiScan:(BOOL)scan
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_registeredForWifiScan != scan)
  {
    scanCopy = scan;
    self->_registeredForWifiScan = scan;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = NSStringFromSelector(a2);
        v8 = v7;
        if (self->_registeredForWifiScan)
        {
          v9 = @"YES";
        }

        else
        {
          v9 = @"NO";
        }

        v12 = 138412546;
        v13 = v7;
        v14 = 2112;
        v15 = v9;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, registeredForWifiScan, %@", &v12, 0x16u);
      }

      if (!self->_registeredForWifiScan)
      {
        goto LABEL_9;
      }
    }

    else if (!scanCopy)
    {
LABEL_9:
      wifiManager = [(RTPointOfInterestSampler *)self wifiManager];
      v11 = +[(RTNotification *)RTWiFiManagerNotificationScanResults];
      [wifiManager removeObserver:self fromNotification:v11];
LABEL_12:

      return;
    }

    wifiManager = [(RTPointOfInterestSampler *)self wifiManager];
    v11 = +[(RTNotification *)RTWiFiManagerNotificationScanResults];
    [wifiManager addObserver:self selector:sel_onWiFiScanNotification_ name:v11];
    goto LABEL_12;
  }
}

- (void)onWiFiScanNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__RTPointOfInterestSampler_onWiFiScanNotification___block_invoke;
  block[3] = &unk_2788C5020;
  selfCopy = self;
  v11 = a2;
  v9 = notificationCopy;
  v7 = notificationCopy;
  dispatch_async(queue, block);
}

void __51__RTPointOfInterestSampler_onWiFiScanNotification___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [*(a1 + 32) scanResults];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v3 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = NSStringFromSelector(*(a1 + 48));
        v5 = [v2 count];
        v6 = [*(a1 + 40) accessPoints];
        v7 = [v6 count];
        v8 = [*(a1 + 40) accessPoints];
        v9 = [v8 count];
        v11 = 138413058;
        v12 = v4;
        v13 = 2048;
        v14 = v5;
        v15 = 2048;
        v16 = v7;
        v17 = 2048;
        v18 = [v2 count] + v9;
        _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%@, received scan result count, %lu, total count, before, %lu, after, %lu", &v11, 0x2Au);
      }
    }

    v10 = [*(a1 + 40) accessPoints];
    [v10 addObjectsFromArray:v2];
  }
}

@end