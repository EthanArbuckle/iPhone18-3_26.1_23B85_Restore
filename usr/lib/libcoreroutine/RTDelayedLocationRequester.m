@interface RTDelayedLocationRequester
- (RTDelayedLocationRequester)initWithLocationManager:(id)a3 maxHorizontalAccuracy:(double)a4 queue:(id)a5;
- (RTDelayedLocationRequester)initWithLocationManager:(id)a3 timerManager:(id)a4 maxHorizontalAccuracy:(double)a5 queue:(id)a6;
- (void)_onLocation:(id)a3;
- (void)_shutdownWithHandler:(id)a3;
- (void)_startUpdatingLocation;
- (void)_stopUpdatingLocation;
- (void)_updateDelayTimer;
- (void)_updateFireDate:(id)a3 handler:(id)a4;
- (void)onLocationNotification:(id)a3;
- (void)shutdownWithHandler:(id)a3;
- (void)updateFireDate:(id)a3 handler:(id)a4;
@end

@implementation RTDelayedLocationRequester

- (RTDelayedLocationRequester)initWithLocationManager:(id)a3 maxHorizontalAccuracy:(double)a4 queue:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = objc_opt_new();
  v11 = [(RTDelayedLocationRequester *)self initWithLocationManager:v9 timerManager:v10 maxHorizontalAccuracy:v8 queue:a4];

  return v11;
}

- (RTDelayedLocationRequester)initWithLocationManager:(id)a3 timerManager:(id)a4 maxHorizontalAccuracy:(double)a5 queue:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = v13;
  if (!v11)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v19 = "Invalid parameter not satisfying: locationManager";
LABEL_13:
    _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, v19, buf, 2u);
    goto LABEL_14;
  }

  if (!v12)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v19 = "Invalid parameter not satisfying: timerManager";
    goto LABEL_13;
  }

  if (!v13)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v19 = "Invalid parameter not satisfying: queue";
      goto LABEL_13;
    }

LABEL_14:

    v17 = 0;
    goto LABEL_15;
  }

  v21.receiver = self;
  v21.super_class = RTDelayedLocationRequester;
  v15 = [(RTDelayedLocationRequester *)&v21 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_locationManager, a3);
    objc_storeStrong(&v16->_timerManager, a4);
    v16->_maxHorizontalAccuracy = a5;
    objc_storeStrong(&v16->_queue, a6);
  }

  self = v16;
  v17 = self;
LABEL_15:

  return v17;
}

- (void)_shutdownWithHandler:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityDelayedLocationRequester);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v9 = NSStringFromSelector(a2);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = 138412546;
      v13 = v9;
      v14 = 2112;
      v15 = v11;
      _os_log_debug_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEBUG, "%@, %@", &v12, 0x16u);
    }
  }

  [(RTTimer *)self->_delayTimer invalidate];
  delayTimer = self->_delayTimer;
  self->_delayTimer = 0;

  [(RTTimer *)self->_activeTimer invalidate];
  activeTimer = self->_activeTimer;
  self->_activeTimer = 0;

  [(RTNotifier *)self->_locationManager removeObserver:self];
  if (v5)
  {
    v5[2](v5, 0);
  }
}

- (void)shutdownWithHandler:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__193;
  v21[4] = __Block_byref_object_dispose__193;
  v6 = MEMORY[0x277CCACA8];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = NSStringFromSelector(a2);
  v10 = [v6 stringWithFormat:@"%@-%@", v8, v9];
  v11 = v10;
  [v10 UTF8String];
  v22 = os_transaction_create();

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = NSStringFromSelector(a2);
      *buf = 138412546;
      v24 = v16;
      v25 = 2112;
      v26 = v17;
      _os_log_debug_impl(&dword_2304B3000, v12, OS_LOG_TYPE_DEBUG, "creating os_transaction, %@, %@", buf, 0x16u);
    }
  }

  v13 = [(RTDelayedLocationRequester *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__RTDelayedLocationRequester_shutdownWithHandler___block_invoke;
  block[3] = &unk_2788D2D20;
  block[4] = self;
  v19 = v5;
  v20 = v21;
  v14 = v5;
  dispatch_async(v13, block);

  _Block_object_dispose(v21, 8);
}

void __50__RTDelayedLocationRequester_shutdownWithHandler___block_invoke(uint64_t a1)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__RTDelayedLocationRequester_shutdownWithHandler___block_invoke_2;
  v5[3] = &unk_2788D2CF8;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v3;
  v7 = v4;
  [v2 _shutdownWithHandler:v5];
}

void __50__RTDelayedLocationRequester_shutdownWithHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

- (void)_onLocation:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v11 = v4;
    [v4 horizontalUncertainty];
    v6 = v5;
    [(RTDelayedLocationRequester *)self maxHorizontalAccuracy];
    v4 = v11;
    if (v6 <= v7)
    {
      v8 = [(RTDelayedLocationRequester *)self delegate];
      v9 = objc_opt_respondsToSelector();

      if (v9)
      {
        v10 = [(RTDelayedLocationRequester *)self delegate];
        [v10 onLocation:v11 error:0];
      }

      [(RTDelayedLocationRequester *)self _stopUpdatingLocation];
      v4 = v11;
    }
  }
}

- (void)onLocationNotification:(id)a3
{
  v4 = a3;
  v5 = [(RTDelayedLocationRequester *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__RTDelayedLocationRequester_onLocationNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __53__RTDelayedLocationRequester_onLocationNotification___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) name];
  v3 = +[(RTNotification *)RTLocationManagerNotificationLocationsAccuracyHundredMeters];
  v4 = [v2 isEqualToString:v3];

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277D01160]);
    v6 = [*(a1 + 32) locations];
    v7 = [v6 lastObject];
    v10 = [v5 initWithCLLocation:v7];

    [*(a1 + 40) _onLocation:v10];
  }

  else
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [*(a1 + 32) name];
      *buf = 138412802;
      v12 = v9;
      v13 = 2080;
      v14 = "[RTDelayedLocationRequester onLocationNotification:]_block_invoke";
      v15 = 1024;
      v16 = 139;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "unhandled notification name, %@ (in %s:%d)", buf, 0x1Cu);
    }
  }
}

- (void)_startUpdatingLocation
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEAA8] date];
  [(RTDelayedLocationRequester *)self setActiveStartDate:v4];

  v5 = [(RTDelayedLocationRequester *)self locationManager];
  v6 = +[(RTNotification *)RTLocationManagerNotificationLocationsAccuracyHundredMeters];
  [v5 addObserver:self selector:sel_onLocationNotification_ name:v6];

  v7 = [(RTDelayedLocationRequester *)self activeTimer];

  if (v7)
  {
    v8 = [(RTDelayedLocationRequester *)self activeTimer];
    [v8 invalidate];

    [(RTDelayedLocationRequester *)self setActiveTimer:0];
  }

  v9 = [MEMORY[0x277CBEAA8] date];
  v10 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v9 sinceDate:15.0];
  objc_initWeak(&location, self);
  v11 = [(RTDelayedLocationRequester *)self timerManager];
  v12 = [(RTDelayedLocationRequester *)self queue];
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __52__RTDelayedLocationRequester__startUpdatingLocation__block_invoke;
  v25 = &unk_2788CF4E8;
  v13 = v9;
  v26 = v13;
  v14 = v10;
  v27 = v14;
  objc_copyWeak(&v28, &location);
  v15 = [v11 timerWithIdentifier:@"RTDelayedLocationRequesterActiveTimer" queue:v12 handler:&v22];
  [(RTDelayedLocationRequester *)self setActiveTimer:v15, v22, v23, v24, v25];

  v16 = [(RTDelayedLocationRequester *)self activeTimer];
  [v16 fireAfterDelay:15.0];

  v17 = [(RTDelayedLocationRequester *)self activeTimer];
  [v17 resume];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityDelayedLocationRequester);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = NSStringFromSelector(a2);
      v20 = [(RTDelayedLocationRequester *)self fireDate];
      v21 = [v20 stringFromDate];
      *buf = 138413058;
      v31 = v19;
      v32 = 2112;
      v33 = @"RTDelayedLocationRequesterActiveTimer";
      v34 = 2112;
      v35 = v21;
      v36 = 2048;
      v37 = 0x402E000000000000;
      _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_INFO, "%@, %@, fireDate, %@, interval, %.2f", buf, 0x2Au);
    }
  }

  objc_destroyWeak(&v28);

  objc_destroyWeak(&location);
}

void __52__RTDelayedLocationRequester__startUpdatingLocation__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEAA8] date];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityDelayedLocationRequester);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      [v2 timeIntervalSinceDate:*(a1 + 32)];
      v5 = v4;
      [v2 timeIntervalSinceDate:*(a1 + 40)];
      v8 = 138412802;
      v9 = @"RTDelayedLocationRequesterActiveTimer";
      v10 = 2048;
      v11 = v5;
      v12 = 2048;
      v13 = v6;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%@ expiry, %.2f since created, %.2f since fireDate", &v8, 0x20u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _onActiveTimerExpiry];
}

- (void)_stopUpdatingLocation
{
  v17 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityDelayedLocationRequester);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = NSStringFromSelector(a2);
      v6 = [MEMORY[0x277CBEAA8] date];
      v7 = [(RTDelayedLocationRequester *)self activeStartDate];
      [v6 timeIntervalSinceDate:v7];
      v13 = 138412546;
      v14 = v5;
      v15 = 2048;
      v16 = v8;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, duration, %.2f", &v13, 0x16u);
    }
  }

  [(RTDelayedLocationRequester *)self setActiveStartDate:0];
  v9 = [(RTDelayedLocationRequester *)self locationManager];
  v10 = +[(RTNotification *)RTLocationManagerNotificationLocationsAccuracyHundredMeters];
  [v9 removeObserver:self fromNotification:v10];

  v11 = [(RTDelayedLocationRequester *)self activeTimer];

  if (v11)
  {
    v12 = [(RTDelayedLocationRequester *)self activeTimer];
    [v12 invalidate];

    [(RTDelayedLocationRequester *)self setActiveTimer:0];
  }

  [(RTDelayedLocationRequester *)self _updateDelayTimer];
}

- (void)_updateDelayTimer
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = [(RTDelayedLocationRequester *)self delayTimer];

  if (v4)
  {
    v5 = [(RTDelayedLocationRequester *)self delayTimer];
    [v5 invalidate];

    [(RTDelayedLocationRequester *)self setDelayTimer:0];
  }

  v6 = [(RTDelayedLocationRequester *)self fireDate];

  if (v6)
  {
    v7 = [(RTDelayedLocationRequester *)self fireDate];
    v8 = [MEMORY[0x277CBEAA8] date];
    v9 = [v7 isBeforeDate:v8];

    if ((v9 & 1) == 0)
    {
      v10 = [MEMORY[0x277CBEAA8] date];
      v11 = [(RTDelayedLocationRequester *)self fireDate];
      [v11 timeIntervalSinceNow];
      v13 = v12;

      objc_initWeak(&location, self);
      v14 = [(RTDelayedLocationRequester *)self timerManager];
      v15 = [(RTDelayedLocationRequester *)self queue];
      v24 = MEMORY[0x277D85DD0];
      v25 = 3221225472;
      v26 = __47__RTDelayedLocationRequester__updateDelayTimer__block_invoke;
      v27 = &unk_2788CF4E8;
      v16 = v10;
      v28 = v16;
      v29 = self;
      objc_copyWeak(&v30, &location);
      v17 = [v14 timerWithIdentifier:@"RTDelayedLocationRequesterDelayTimer" queue:v15 handler:&v24];
      [(RTDelayedLocationRequester *)self setDelayTimer:v17, v24, v25, v26, v27];

      v18 = [(RTDelayedLocationRequester *)self delayTimer];
      [v18 fireAfterDelay:v13];

      v19 = [(RTDelayedLocationRequester *)self delayTimer];
      [v19 resume];

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v20 = _rt_log_facility_get_os_log(RTLogFacilityDelayedLocationRequester);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = NSStringFromSelector(a2);
          v22 = [(RTDelayedLocationRequester *)self fireDate];
          v23 = [v22 stringFromDate];
          *buf = 138413058;
          v33 = v21;
          v34 = 2112;
          v35 = @"RTDelayedLocationRequesterDelayTimer";
          v36 = 2112;
          v37 = v23;
          v38 = 2048;
          v39 = v13;
          _os_log_impl(&dword_2304B3000, v20, OS_LOG_TYPE_INFO, "%@, %@, fireDate, %@, interval, %.2f", buf, 0x2Au);
        }
      }

      objc_destroyWeak(&v30);

      objc_destroyWeak(&location);
    }
  }
}

void __47__RTDelayedLocationRequester__updateDelayTimer__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEAA8] date];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityDelayedLocationRequester);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      [v2 timeIntervalSinceDate:*(a1 + 32)];
      v5 = v4;
      v6 = [*(a1 + 40) fireDate];
      [v2 timeIntervalSinceDate:v6];
      v9 = 138412802;
      v10 = @"RTDelayedLocationRequesterDelayTimer";
      v11 = 2048;
      v12 = v5;
      v13 = 2048;
      v14 = v7;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%@ expiry, %.2f since created, %.2f since fireDate", &v9, 0x20u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _onDelayTimerExpiry];
}

- (void)_updateFireDate:(id)a3 handler:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(RTDelayedLocationRequester *)self fireDate];
  v8 = [v7 isEqualToDate:v9];

  if ((v8 & 1) == 0)
  {
    [(RTDelayedLocationRequester *)self setFireDate:v9];
    [(RTDelayedLocationRequester *)self _updateDelayTimer];
  }

  if (v6)
  {
    v6[2](v6, 0);
  }
}

- (void)updateFireDate:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTDelayedLocationRequester *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__RTDelayedLocationRequester_updateFireDate_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

@end