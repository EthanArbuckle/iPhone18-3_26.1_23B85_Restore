@interface RTDelayedLocationRequester
- (RTDelayedLocationRequester)initWithLocationManager:(id)manager maxHorizontalAccuracy:(double)accuracy queue:(id)queue;
- (RTDelayedLocationRequester)initWithLocationManager:(id)manager timerManager:(id)timerManager maxHorizontalAccuracy:(double)accuracy queue:(id)queue;
- (void)_onLocation:(id)location;
- (void)_shutdownWithHandler:(id)handler;
- (void)_startUpdatingLocation;
- (void)_stopUpdatingLocation;
- (void)_updateDelayTimer;
- (void)_updateFireDate:(id)date handler:(id)handler;
- (void)onLocationNotification:(id)notification;
- (void)shutdownWithHandler:(id)handler;
- (void)updateFireDate:(id)date handler:(id)handler;
@end

@implementation RTDelayedLocationRequester

- (RTDelayedLocationRequester)initWithLocationManager:(id)manager maxHorizontalAccuracy:(double)accuracy queue:(id)queue
{
  queueCopy = queue;
  managerCopy = manager;
  v10 = objc_opt_new();
  v11 = [(RTDelayedLocationRequester *)self initWithLocationManager:managerCopy timerManager:v10 maxHorizontalAccuracy:queueCopy queue:accuracy];

  return v11;
}

- (RTDelayedLocationRequester)initWithLocationManager:(id)manager timerManager:(id)timerManager maxHorizontalAccuracy:(double)accuracy queue:(id)queue
{
  managerCopy = manager;
  timerManagerCopy = timerManager;
  queueCopy = queue;
  v14 = queueCopy;
  if (!managerCopy)
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

  if (!timerManagerCopy)
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

  if (!queueCopy)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v19 = "Invalid parameter not satisfying: queue";
      goto LABEL_13;
    }

LABEL_14:

    selfCopy = 0;
    goto LABEL_15;
  }

  v21.receiver = self;
  v21.super_class = RTDelayedLocationRequester;
  v15 = [(RTDelayedLocationRequester *)&v21 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_locationManager, manager);
    objc_storeStrong(&v16->_timerManager, timerManager);
    v16->_maxHorizontalAccuracy = accuracy;
    objc_storeStrong(&v16->_queue, queue);
  }

  self = v16;
  selfCopy = self;
LABEL_15:

  return selfCopy;
}

- (void)_shutdownWithHandler:(id)handler
{
  v16 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
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
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)shutdownWithHandler:(id)handler
{
  v27 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
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

  queue = [(RTDelayedLocationRequester *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__RTDelayedLocationRequester_shutdownWithHandler___block_invoke;
  block[3] = &unk_2788D2D20;
  block[4] = self;
  v19 = handlerCopy;
  v20 = v21;
  v14 = handlerCopy;
  dispatch_async(queue, block);

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

- (void)_onLocation:(id)location
{
  locationCopy = location;
  if (locationCopy)
  {
    v11 = locationCopy;
    [locationCopy horizontalUncertainty];
    v6 = v5;
    [(RTDelayedLocationRequester *)self maxHorizontalAccuracy];
    locationCopy = v11;
    if (v6 <= v7)
    {
      delegate = [(RTDelayedLocationRequester *)self delegate];
      v9 = objc_opt_respondsToSelector();

      if (v9)
      {
        delegate2 = [(RTDelayedLocationRequester *)self delegate];
        [delegate2 onLocation:v11 error:0];
      }

      [(RTDelayedLocationRequester *)self _stopUpdatingLocation];
      locationCopy = v11;
    }
  }
}

- (void)onLocationNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(RTDelayedLocationRequester *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__RTDelayedLocationRequester_onLocationNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
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
  date = [MEMORY[0x277CBEAA8] date];
  [(RTDelayedLocationRequester *)self setActiveStartDate:date];

  locationManager = [(RTDelayedLocationRequester *)self locationManager];
  v6 = +[(RTNotification *)RTLocationManagerNotificationLocationsAccuracyHundredMeters];
  [locationManager addObserver:self selector:sel_onLocationNotification_ name:v6];

  activeTimer = [(RTDelayedLocationRequester *)self activeTimer];

  if (activeTimer)
  {
    activeTimer2 = [(RTDelayedLocationRequester *)self activeTimer];
    [activeTimer2 invalidate];

    [(RTDelayedLocationRequester *)self setActiveTimer:0];
  }

  date2 = [MEMORY[0x277CBEAA8] date];
  v10 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:date2 sinceDate:15.0];
  objc_initWeak(&location, self);
  timerManager = [(RTDelayedLocationRequester *)self timerManager];
  queue = [(RTDelayedLocationRequester *)self queue];
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __52__RTDelayedLocationRequester__startUpdatingLocation__block_invoke;
  v25 = &unk_2788CF4E8;
  v13 = date2;
  v26 = v13;
  v14 = v10;
  v27 = v14;
  objc_copyWeak(&v28, &location);
  v15 = [timerManager timerWithIdentifier:@"RTDelayedLocationRequesterActiveTimer" queue:queue handler:&v22];
  [(RTDelayedLocationRequester *)self setActiveTimer:v15, v22, v23, v24, v25];

  activeTimer3 = [(RTDelayedLocationRequester *)self activeTimer];
  [activeTimer3 fireAfterDelay:15.0];

  activeTimer4 = [(RTDelayedLocationRequester *)self activeTimer];
  [activeTimer4 resume];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityDelayedLocationRequester);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = NSStringFromSelector(a2);
      fireDate = [(RTDelayedLocationRequester *)self fireDate];
      stringFromDate = [fireDate stringFromDate];
      *buf = 138413058;
      v31 = v19;
      v32 = 2112;
      v33 = @"RTDelayedLocationRequesterActiveTimer";
      v34 = 2112;
      v35 = stringFromDate;
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
      date = [MEMORY[0x277CBEAA8] date];
      activeStartDate = [(RTDelayedLocationRequester *)self activeStartDate];
      [date timeIntervalSinceDate:activeStartDate];
      v13 = 138412546;
      v14 = v5;
      v15 = 2048;
      v16 = v8;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, duration, %.2f", &v13, 0x16u);
    }
  }

  [(RTDelayedLocationRequester *)self setActiveStartDate:0];
  locationManager = [(RTDelayedLocationRequester *)self locationManager];
  v10 = +[(RTNotification *)RTLocationManagerNotificationLocationsAccuracyHundredMeters];
  [locationManager removeObserver:self fromNotification:v10];

  activeTimer = [(RTDelayedLocationRequester *)self activeTimer];

  if (activeTimer)
  {
    activeTimer2 = [(RTDelayedLocationRequester *)self activeTimer];
    [activeTimer2 invalidate];

    [(RTDelayedLocationRequester *)self setActiveTimer:0];
  }

  [(RTDelayedLocationRequester *)self _updateDelayTimer];
}

- (void)_updateDelayTimer
{
  v40 = *MEMORY[0x277D85DE8];
  delayTimer = [(RTDelayedLocationRequester *)self delayTimer];

  if (delayTimer)
  {
    delayTimer2 = [(RTDelayedLocationRequester *)self delayTimer];
    [delayTimer2 invalidate];

    [(RTDelayedLocationRequester *)self setDelayTimer:0];
  }

  fireDate = [(RTDelayedLocationRequester *)self fireDate];

  if (fireDate)
  {
    fireDate2 = [(RTDelayedLocationRequester *)self fireDate];
    date = [MEMORY[0x277CBEAA8] date];
    v9 = [fireDate2 isBeforeDate:date];

    if ((v9 & 1) == 0)
    {
      date2 = [MEMORY[0x277CBEAA8] date];
      fireDate3 = [(RTDelayedLocationRequester *)self fireDate];
      [fireDate3 timeIntervalSinceNow];
      v13 = v12;

      objc_initWeak(&location, self);
      timerManager = [(RTDelayedLocationRequester *)self timerManager];
      queue = [(RTDelayedLocationRequester *)self queue];
      v24 = MEMORY[0x277D85DD0];
      v25 = 3221225472;
      v26 = __47__RTDelayedLocationRequester__updateDelayTimer__block_invoke;
      v27 = &unk_2788CF4E8;
      v16 = date2;
      v28 = v16;
      selfCopy = self;
      objc_copyWeak(&v30, &location);
      v17 = [timerManager timerWithIdentifier:@"RTDelayedLocationRequesterDelayTimer" queue:queue handler:&v24];
      [(RTDelayedLocationRequester *)self setDelayTimer:v17, v24, v25, v26, v27];

      delayTimer3 = [(RTDelayedLocationRequester *)self delayTimer];
      [delayTimer3 fireAfterDelay:v13];

      delayTimer4 = [(RTDelayedLocationRequester *)self delayTimer];
      [delayTimer4 resume];

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v20 = _rt_log_facility_get_os_log(RTLogFacilityDelayedLocationRequester);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = NSStringFromSelector(a2);
          fireDate4 = [(RTDelayedLocationRequester *)self fireDate];
          stringFromDate = [fireDate4 stringFromDate];
          *buf = 138413058;
          v33 = v21;
          v34 = 2112;
          v35 = @"RTDelayedLocationRequesterDelayTimer";
          v36 = 2112;
          v37 = stringFromDate;
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

- (void)_updateFireDate:(id)date handler:(id)handler
{
  dateCopy = date;
  handlerCopy = handler;
  fireDate = [(RTDelayedLocationRequester *)self fireDate];
  v8 = [fireDate isEqualToDate:dateCopy];

  if ((v8 & 1) == 0)
  {
    [(RTDelayedLocationRequester *)self setFireDate:dateCopy];
    [(RTDelayedLocationRequester *)self _updateDelayTimer];
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)updateFireDate:(id)date handler:(id)handler
{
  dateCopy = date;
  handlerCopy = handler;
  queue = [(RTDelayedLocationRequester *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__RTDelayedLocationRequester_updateFireDate_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = dateCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = dateCopy;
  dispatch_async(queue, block);
}

@end