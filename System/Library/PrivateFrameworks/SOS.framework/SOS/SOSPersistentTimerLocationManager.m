@interface SOSPersistentTimerLocationManager
+ (SOSPersistentTimerLocationManager)sharedInstance;
- (SOSPersistentTimerLocationManager)init;
- (SOSPersistentTimerLocationManagerDelegate)delegate;
- (void)_emergencyLocationAssertionTimeOut:(id)a3;
- (void)_requestLocationsTimeout:(id)a3;
- (void)_sosPersistentTimerInitialRequest:(id)a3;
- (void)_sosPersistentTimerLocationManagerTic:(id)a3;
- (void)_startTimer;
- (void)dealloc;
- (void)fireAndStartTimertWithTimeInterval:(double)a3;
- (void)invalidateInitialTimer;
- (void)invalidateRequestLocationsTimer;
- (void)invalidateTimer;
- (void)locationManager:(id)a3 didFailWithError:(id)a4;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
- (void)requestLocation;
- (void)setForceEnableLocationAssertion:(id)a3;
- (void)setRequestingLocation:(BOOL)a3;
- (void)stopRequestingLocationUpdates;
- (void)warmUpLocationRequest;
@end

@implementation SOSPersistentTimerLocationManager

+ (SOSPersistentTimerLocationManager)sharedInstance
{
  if (sharedInstance_onceToken_4 != -1)
  {
    +[SOSPersistentTimerLocationManager sharedInstance];
  }

  v3 = sharedInstance_sSOSPersistentTimerLocationManager;

  return v3;
}

uint64_t __51__SOSPersistentTimerLocationManager_sharedInstance__block_invoke()
{
  sharedInstance_sSOSPersistentTimerLocationManager = objc_alloc_init(SOSPersistentTimerLocationManager);

  return MEMORY[0x2821F96F8]();
}

- (SOSPersistentTimerLocationManager)init
{
  v8.receiver = self;
  v8.super_class = SOSPersistentTimerLocationManager;
  v2 = [(SOSPersistentTimerLocationManager *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CBFC10]);
    v4 = +[SOSUtilities sosLocationBundle];
    v5 = [v3 initWithEffectiveBundle:v4 delegate:v2 onQueue:MEMORY[0x277D85CD0]];
    locationManager = v2->_locationManager;
    v2->_locationManager = v5;

    [(CLLocationManager *)v2->_locationManager setDesiredAccuracy:*MEMORY[0x277CE4208]];
  }

  return v2;
}

- (void)dealloc
{
  [(SOSPersistentTimerLocationManager *)self invalidateTimer];
  [(SOSPersistentTimerLocationManager *)self invalidateInitialTimer];
  [(PCPersistentTimer *)self->_assertionTimer invalidate];
  v3.receiver = self;
  v3.super_class = SOSPersistentTimerLocationManager;
  [(SOSPersistentTimerLocationManager *)&v3 dealloc];
}

- (void)warmUpLocationRequest
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = sos_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[SOSPersistentTimerLocationManager warmUpLocationRequest]";
    _os_log_impl(&dword_264323000, v3, OS_LOG_TYPE_DEFAULT, "%s - Warming up location request", &v6, 0xCu);
  }

  [(SOSPersistentTimerLocationManager *)self invalidateInitialTimer];
  lastLocation = self->_lastLocation;
  self->_lastLocation = 0;

  [(SOSPersistentTimerLocationManager *)self requestLocation];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)requestLocation
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = sos_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[SOSPersistentTimerLocationManager requestLocation]";
    v10 = 1024;
    v11 = [(SOSPersistentTimerLocationManager *)self isRequestingLocation];
    _os_log_impl(&dword_264323000, v3, OS_LOG_TYPE_DEFAULT, "%s - Requesting location; self.isRequestingLocation: %d", &v8, 0x12u);
  }

  if (![(SOSPersistentTimerLocationManager *)self isRequestingLocation])
  {
    [(SOSPersistentTimerLocationManager *)self setRequestingLocation:1];
    [(CLLocationManager *)self->_locationManager startUpdatingLocation];
  }

  [(SOSPersistentTimerLocationManager *)self invalidateRequestLocationsTimer];
  if ([(SOSPersistentTimerLocationManager *)self shouldStopRequestingLocationAfterCallback])
  {
    v4 = sos_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[SOSPersistentTimerLocationManager requestLocation]";
      _os_log_impl(&dword_264323000, v4, OS_LOG_TYPE_DEFAULT, "%s - starting _requestLocationsTimer", &v8, 0xCu);
    }

    v5 = [objc_alloc(MEMORY[0x277D3A180]) initWithTimeInterval:@"com.apple.sos.locationManager" serviceIdentifier:self target:sel__requestLocationsTimeout_ selector:0 userInfo:35.0];
    requestLocationsTimer = self->_requestLocationsTimer;
    self->_requestLocationsTimer = v5;
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_requestLocationsTimeout:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = sos_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[SOSPersistentTimerLocationManager _requestLocationsTimeout:]";
    v9 = 2048;
    v10 = 0x4041800000000000;
    _os_log_impl(&dword_264323000, v4, OS_LOG_TYPE_DEFAULT, "%s - Timing out after requesting location for %f seconds", &v7, 0x16u);
  }

  [(SOSPersistentTimerLocationManager *)self stopRequestingLocationUpdates];
  if ([(SOSPersistentTimerLocationManager *)self isValid])
  {
    v5 = [(SOSPersistentTimerLocationManager *)self delegate];
    [v5 sosPersistentTimerLocationManagerTimerFired:self location:self->_lastLocation];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)invalidateRequestLocationsTimer
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = sos_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    requestLocationsTimer = self->_requestLocationsTimer;
    v7 = 136315394;
    v8 = "[SOSPersistentTimerLocationManager invalidateRequestLocationsTimer]";
    v9 = 2112;
    v10 = requestLocationsTimer;
    _os_log_impl(&dword_264323000, v3, OS_LOG_TYPE_DEFAULT, "%s - _requestLocationsTimer: %@", &v7, 0x16u);
  }

  [(PCPersistentTimer *)self->_requestLocationsTimer invalidate];
  v5 = self->_requestLocationsTimer;
  self->_requestLocationsTimer = 0;

  v6 = *MEMORY[0x277D85DE8];
}

- (void)stopRequestingLocationUpdates
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = sos_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[SOSPersistentTimerLocationManager stopRequestingLocationUpdates]";
    v7 = 1024;
    v8 = [(SOSPersistentTimerLocationManager *)self isRequestingLocation];
    _os_log_impl(&dword_264323000, v3, OS_LOG_TYPE_DEFAULT, "%s - self.isRequestingLocation: %d", &v5, 0x12u);
  }

  if ([(SOSPersistentTimerLocationManager *)self isRequestingLocation])
  {
    [(SOSPersistentTimerLocationManager *)self setRequestingLocation:0];
    [(CLLocationManager *)self->_locationManager stopUpdatingLocation];
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_startTimer
{
  v14 = *MEMORY[0x277D85DE8];
  [(SOSPersistentTimerLocationManager *)self invalidateTimer];
  v3 = [objc_alloc(MEMORY[0x277D3A180]) initWithTimeInterval:@"com.apple.sos.locationManager" serviceIdentifier:self target:sel__sosPersistentTimerLocationManagerTic_ selector:0 userInfo:self->_ti];
  locationUpdateTimer = self->_locationUpdateTimer;
  self->_locationUpdateTimer = v3;

  v5 = sos_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = self->_locationUpdateTimer;
    v10 = 136315394;
    v11 = "[SOSPersistentTimerLocationManager _startTimer]";
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "%s - _locationUpdateTimer: %@", &v10, 0x16u);
  }

  [(PCPersistentTimer *)self->_locationUpdateTimer setMinimumEarlyFireProportion:1.0];
  v7 = self->_locationUpdateTimer;
  v8 = [MEMORY[0x277CBEB88] mainRunLoop];
  [(PCPersistentTimer *)v7 scheduleInRunLoop:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)fireAndStartTimertWithTimeInterval:(double)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = sos_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    lastLocation = self->_lastLocation;
    v16 = 136315394;
    v17 = "[SOSPersistentTimerLocationManager fireAndStartTimertWithTimeInterval:]";
    v18 = 2112;
    v19 = lastLocation;
    _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "%s - _lastLocation: %@", &v16, 0x16u);
  }

  self->_ti = a3;
  [(SOSPersistentTimerLocationManager *)self _startTimer];
  if (self->_lastLocation && (-[SOSPersistentTimerLocationManager delegate](self, "delegate"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 locationIsValidToSend:self->_lastLocation], v7, v8))
  {
    [(SOSPersistentTimerLocationManager *)self stopRequestingLocationUpdates];
    v9 = [(SOSPersistentTimerLocationManager *)self delegate];
    [v9 sosPersistentTimerLocationManagerTimerFired:self location:self->_lastLocation];
  }

  else
  {
    if (![(SOSPersistentTimerLocationManager *)self isRequestingLocation])
    {
      [(SOSPersistentTimerLocationManager *)self requestLocation];
    }

    [(SOSPersistentTimerLocationManager *)self invalidateInitialTimer];
    v10 = [objc_alloc(MEMORY[0x277D3A180]) initWithTimeInterval:@"com.apple.sos.locationManager.initialRequest" serviceIdentifier:self target:sel__sosPersistentTimerInitialRequest_ selector:0 userInfo:20.0];
    initalRequestTimer = self->_initalRequestTimer;
    self->_initalRequestTimer = v10;

    v12 = sos_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = self->_initalRequestTimer;
      v16 = 136315394;
      v17 = "[SOSPersistentTimerLocationManager fireAndStartTimertWithTimeInterval:]";
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&dword_264323000, v12, OS_LOG_TYPE_DEFAULT, "%s - Created _initalRequestTimer: %@", &v16, 0x16u);
    }

    [(PCPersistentTimer *)self->_initalRequestTimer setMinimumEarlyFireProportion:1.0];
    v14 = self->_initalRequestTimer;
    v9 = [MEMORY[0x277CBEB88] mainRunLoop];
    [(PCPersistentTimer *)v14 scheduleInRunLoop:v9];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)invalidateTimer
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = sos_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    locationUpdateTimer = self->_locationUpdateTimer;
    v7 = 136315394;
    v8 = "[SOSPersistentTimerLocationManager invalidateTimer]";
    v9 = 2112;
    v10 = locationUpdateTimer;
    _os_log_impl(&dword_264323000, v3, OS_LOG_TYPE_DEFAULT, "%s - _locationUpdateTimer: %@", &v7, 0x16u);
  }

  [(PCPersistentTimer *)self->_locationUpdateTimer invalidate];
  v5 = self->_locationUpdateTimer;
  self->_locationUpdateTimer = 0;

  v6 = *MEMORY[0x277D85DE8];
}

- (void)invalidateInitialTimer
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = sos_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    initalRequestTimer = self->_initalRequestTimer;
    v7 = 136315394;
    v8 = "[SOSPersistentTimerLocationManager invalidateInitialTimer]";
    v9 = 2112;
    v10 = initalRequestTimer;
    _os_log_impl(&dword_264323000, v3, OS_LOG_TYPE_DEFAULT, "%s - _initalRequestTimer: %@", &v7, 0x16u);
  }

  [(PCPersistentTimer *)self->_initalRequestTimer invalidate];
  v5 = self->_initalRequestTimer;
  self->_initalRequestTimer = 0;

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_sosPersistentTimerInitialRequest:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = sos_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[SOSPersistentTimerLocationManager _sosPersistentTimerInitialRequest:]";
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "%s - _initalRequestTimer fired: %@", &v8, 0x16u);
  }

  v6 = [(SOSPersistentTimerLocationManager *)self delegate];
  [v6 sosPersistentTimerLocationManagerTimerFired:self location:self->_lastLocation];

  [(SOSPersistentTimerLocationManager *)self invalidateInitialTimer];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_sosPersistentTimerLocationManagerTic:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = sos_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[SOSPersistentTimerLocationManager _sosPersistentTimerLocationManagerTic:]";
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "%s - timer: %@", &v8, 0x16u);
  }

  [(SOSPersistentTimerLocationManager *)self requestLocation];
  [(SOSPersistentTimerLocationManager *)self _startTimer];
  v6 = [(SOSPersistentTimerLocationManager *)self delegate];
  [v6 sosPersistentTimerLocationManagerTimerFired:self location:self->_lastLocation];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)setRequestingLocation:(BOOL)a3
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_requestingLocation != a3)
  {
    self->_requestingLocation = a3;
    if (a3)
    {
      v4 = MEMORY[0x277CBFBD0];
      v5 = +[SOSUtilities sosLocationBundle];
      v6 = [v4 newAssertionForBundle:v5 withReason:@"com.apple.sos.locationManager"];
      [(SOSPersistentTimerLocationManager *)self setForceEnableLocationAssertion:v6];
    }

    else
    {
      [(SOSPersistentTimerLocationManager *)self setForceEnableLocationAssertion:0];
    }

    v7 = sos_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      requestingLocation = self->_requestingLocation;
      v10 = 136315394;
      v11 = "[SOSPersistentTimerLocationManager setRequestingLocation:]";
      v12 = 1024;
      v13 = requestingLocation;
      _os_log_impl(&dword_264323000, v7, OS_LOG_TYPE_DEFAULT, "%s - Updated _requestingLocation to %d", &v10, 0x12u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setForceEnableLocationAssertion:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = sos_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136315138;
    v19 = "[SOSPersistentTimerLocationManager setForceEnableLocationAssertion:]";
    _os_log_impl(&dword_264323000, v6, OS_LOG_TYPE_DEFAULT, "%s - forceEnableLocationAssertion", &v18, 0xCu);
  }

  p_forceEnableLocationAssertion = &self->_forceEnableLocationAssertion;
  forceEnableLocationAssertion = self->_forceEnableLocationAssertion;
  if (forceEnableLocationAssertion != v5)
  {
    if (forceEnableLocationAssertion)
    {
      [(CLAssertion *)forceEnableLocationAssertion invalidate];
      [(PCPersistentTimer *)self->_assertionTimer invalidate];
      assertionTimer = self->_assertionTimer;
      self->_assertionTimer = 0;
    }

    objc_storeStrong(&self->_forceEnableLocationAssertion, a3);
    if (*p_forceEnableLocationAssertion)
    {
      v10 = sos_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 136315138;
        v19 = "[SOSPersistentTimerLocationManager setForceEnableLocationAssertion:]";
        _os_log_impl(&dword_264323000, v10, OS_LOG_TYPE_DEFAULT, "%s - Setting up new location _assertionTimer", &v18, 0xCu);
      }

      [(PCPersistentTimer *)self->_assertionTimer invalidate];
      v11 = [objc_alloc(MEMORY[0x277D3A180]) initWithTimeInterval:@"com.apple.sos.locationManager" serviceIdentifier:self target:sel__emergencyLocationAssertionTimeOut_ selector:0 userInfo:60.0];
      v12 = self->_assertionTimer;
      self->_assertionTimer = v11;

      [(PCPersistentTimer *)self->_assertionTimer setMinimumEarlyFireProportion:1.0];
      v13 = self->_assertionTimer;
      v14 = [MEMORY[0x277CBEB88] mainRunLoop];
      [(PCPersistentTimer *)v13 scheduleInRunLoop:v14];
    }

    v15 = sos_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *p_forceEnableLocationAssertion;
      v18 = 136315394;
      v19 = "[SOSPersistentTimerLocationManager setForceEnableLocationAssertion:]";
      v20 = 2112;
      v21 = v16;
      _os_log_impl(&dword_264323000, v15, OS_LOG_TYPE_DEFAULT, "%s - Created new _forceEnableLocationAssertion: %@", &v18, 0x16u);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = sos_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v10 = "[SOSPersistentTimerLocationManager locationManager:didUpdateLocations:]";
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_264323000, v6, OS_LOG_TYPE_DEFAULT, "%s - didUpdateLocations: %@", buf, 0x16u);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __72__SOSPersistentTimerLocationManager_locationManager_didUpdateLocations___block_invoke;
  v8[3] = &unk_279B53F30;
  v8[4] = self;
  [v5 enumerateObjectsWithOptions:2 usingBlock:v8];

  v7 = *MEMORY[0x277D85DE8];
}

void __72__SOSPersistentTimerLocationManager_locationManager_didUpdateLocations___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = sos_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315394;
    v16 = "[SOSPersistentTimerLocationManager locationManager:didUpdateLocations:]_block_invoke";
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&dword_264323000, v8, OS_LOG_TYPE_DEFAULT, "%s - location: %@", &v15, 0x16u);
  }

  v9 = [*(a1 + 32) delegate];
  v10 = [v9 locationIsValidToSend:v7];

  if (v10)
  {
    objc_storeStrong((*(a1 + 32) + 88), a2);
    [*(*(a1 + 32) + 56) invalidate];
    v11 = *(a1 + 32);
    v12 = *(v11 + 56);
    *(v11 + 56) = 0;

    if ([*(a1 + 32) shouldStopRequestingLocationAfterCallback])
    {
      [*(a1 + 32) stopRequestingLocationUpdates];
      [*(a1 + 32) invalidateRequestLocationsTimer];
      if ([*(a1 + 32) isValid])
      {
        v13 = [*(a1 + 32) delegate];
        [v13 sosPersistentTimerLocationManagerTimerFired:*(a1 + 32) location:*(*(a1 + 32) + 88)];

        [*(a1 + 32) invalidateInitialTimer];
      }
    }

    *a4 = 1;
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)locationManager:(id)a3 didFailWithError:(id)a4
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a4;
  v5 = sos_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "[WARN] CLLocationManager error: %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_emergencyLocationAssertionTimeOut:(id)a3
{
  v4 = sos_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_264323000, v4, OS_LOG_TYPE_DEFAULT, "locationManager _emergencyLocationAssertionTimeOut", v6, 2u);
  }

  assertionTimer = self->_assertionTimer;
  self->_assertionTimer = 0;

  [(SOSPersistentTimerLocationManager *)self stopRequestingLocationUpdates];
  [(SOSPersistentTimerLocationManager *)self setForceEnableLocationAssertion:0];
}

- (SOSPersistentTimerLocationManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end