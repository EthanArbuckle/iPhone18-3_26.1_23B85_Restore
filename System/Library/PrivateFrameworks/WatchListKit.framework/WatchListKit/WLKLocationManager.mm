@interface WLKLocationManager
+ (id)defaultLocationManager;
+ (void)locationServicesEnabled:(id)enabled;
- (BOOL)_isIgnorableLocationError:(id)error;
- (BOOL)_isLastKnownLocation:(id)location freshForMaxAge:(double)age fromNewTimestamp:(double)timestamp;
- (BOOL)_isLastKnownLocation:(id)location significantlyOlderThanNewLocation:(id)newLocation;
- (BOOL)_isLastKnownLocationFresh:(id)fresh;
- (BOOL)_shouldLastKnownLocation:(id)location beUpdatedTo:(id)to;
- (BOOL)isAuthorizationDenied;
- (NSDictionary)lastKnownLocation;
- (WLKLocationManager)init;
- (double)_getDistanceOfLastKnownLocationDictionary:(id)dictionary fromLocation:(id)location;
- (id)_cachedDictionary:(BOOL)dictionary;
- (id)_connection;
- (id)_copyLastKnownLocation;
- (id)_createLocationObjFromLocationDictionary:(id)dictionary;
- (id)_dictionaryForCLLocation:(id)location;
- (id)_dictionaryRepresentation;
- (id)_locationQueryParameters;
- (int64_t)_statusForCLAuthorizationStatus:(int)status;
- (int64_t)authorizationStatus;
- (void)_deleteLastKnownLocation;
- (void)_locationAuthorizationStatus:(id)status;
- (void)_networkReachbilityDidChange:(id)change;
- (void)_requestActiveLocationChangeUpdates;
- (void)_requestCLLocationUpdates:(id)updates;
- (void)_requestRecentCLLocation:(id)location;
- (void)_setLastKnownLocation:(id)location;
- (void)_updateLocationIfNeeded;
- (void)dealloc;
- (void)fetchAuthorizationStatus:(id)status;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
- (void)requestAuthorizationWithForcedPrompt:(BOOL)prompt;
@end

@implementation WLKLocationManager

+ (id)defaultLocationManager
{
  if (defaultLocationManager___once != -1)
  {
    +[WLKLocationManager defaultLocationManager];
  }

  v3 = defaultLocationManager___defaultLocationManager;

  return v3;
}

uint64_t __44__WLKLocationManager_defaultLocationManager__block_invoke()
{
  defaultLocationManager___defaultLocationManager = objc_alloc_init(WLKLocationManager);

  return MEMORY[0x2821F96F8]();
}

- (WLKLocationManager)init
{
  v15.receiver = self;
  v15.super_class = WLKLocationManager;
  v2 = [(WLKLocationManager *)&v15 init];
  if (v2)
  {
    v3 = WLKSystemLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_272A0F000, v3, OS_LOG_TYPE_DEFAULT, "WLKLocationManager - Init", buf, 2u);
    }

    v4 = dispatch_queue_create("WLKLocationQueue-CoreLocation", 0);
    v5 = *(v2 + 3);
    *(v2 + 3) = v4;

    objc_initWeak(buf, v2);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __26__WLKLocationManager_init__block_invoke;
    v12[3] = &unk_279E5EC50;
    objc_copyWeak(&v13, buf);
    v6 = MEMORY[0x2743D2DF0](v12);
    dispatch_async(*(v2 + 3), v6);
    v7 = MEMORY[0x277D85CD0];
    v8 = MEMORY[0x277D85CD0];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __26__WLKLocationManager_init__block_invoke_29;
    v10[3] = &unk_279E5F5B8;
    v11 = v2;
    notify_register_dispatch("com.apple.WatchListKit.WLKLocationManagerLocationDidChangeNotification", v2 + 2, v7, v10);

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }

  return v2;
}

- (void)_deleteLastKnownLocation
{
  v6 = *MEMORY[0x277D85DE8];
  localizedDescription = [self localizedDescription];
  [localizedDescription UTF8String];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_272A0F000, a2, OS_LOG_TYPE_ERROR, "WLKLocationManager - Failed to remove last known location file with error: %s", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

void __26__WLKLocationManager_init__block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WLKSystemLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v22) = 0;
    _os_log_impl(&dword_272A0F000, v2, OS_LOG_TYPE_DEFAULT, "WLKLocationManager - Creating CLLocationManager", &v22, 2u);
  }

  if (WLKIsTVApp())
  {
    v3 = WLKSystemLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&dword_272A0F000, v3, OS_LOG_TYPE_DEFAULT, "WLKLocationManager - WLK is TVApp", &v22, 2u);
    }

    v4 = objc_alloc(MEMORY[0x277CBFC10]);
    v5 = [WeakRetained clQueue];
    v6 = [v4 _initWithDelegate:WeakRetained onQueue:v5];
    [WeakRetained setClLocationManager:v6];
  }

  else if (WLKIsDaemon())
  {
    v7 = objc_alloc(MEMORY[0x277CBFC10]);
    v5 = WLKTVAppBundleID();
    v6 = [WeakRetained clQueue];
    v8 = [v7 initWithEffectiveBundleIdentifier:v5 delegate:WeakRetained onQueue:v6];
    [WeakRetained setClLocationManager:v8];
  }

  else
  {
    v15 = [MEMORY[0x277CCA8D8] mainBundle];
    v5 = [v15 bundlePath];

    v16 = objc_alloc(MEMORY[0x277CBFC10]);
    v17 = [WeakRetained clQueue];
    v18 = [v16 initWithEffectiveBundlePath:v5 delegate:WeakRetained onQueue:v17];
    [WeakRetained setClLocationManager:v18];

    v19 = [WeakRetained clLocationManager];

    if (v19)
    {
      goto LABEL_10;
    }

    v6 = WLKSystemLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [MEMORY[0x277CCA8D8] mainBundle];
      v21 = [v20 bundleIdentifier];
      v22 = 138412290;
      v23 = v21;
      _os_log_impl(&dword_272A0F000, v6, OS_LOG_TYPE_DEFAULT, "WLKLocationManager - bundle id:%@ does not have the right entitlement for location data.", &v22, 0xCu);
    }
  }

LABEL_10:
  v9 = [WeakRetained clLocationManager];
  [v9 setDesiredAccuracy:*MEMORY[0x277CE4258]];

  v10 = [WeakRetained clLocationManager];
  [v10 setDistanceFilter:1000.0];

  v11 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.WatchListKit"];
  [v11 removeObjectForKey:@"LastKnownLocation"];
  [WeakRetained _deleteLastKnownLocation];
  v12 = [MEMORY[0x277CCAB98] defaultCenter];
  v13 = +[WLKReachabilityMonitor sharedInstance];
  [v12 addObserver:WeakRetained selector:sel__networkReachbilityDidChange_ name:@"WLKReachabilityMonitorReachabilityDidChange" object:v13];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_updateLocationIfNeeded
{
  v9 = *MEMORY[0x277D85DE8];
  if ([(WLKLocationManager *)self isAuthorizationApproved])
  {
    _copyLastKnownLocation = [(WLKLocationManager *)self _copyLastKnownLocation];
    if (_copyLastKnownLocation && [(WLKLocationManager *)self _isLastKnownLocationFresh:_copyLastKnownLocation])
    {
      v4 = WLKSystemLogObject();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136315138;
        v8 = "[WLKLocationManager _updateLocationIfNeeded]";
        _os_log_impl(&dword_272A0F000, v4, OS_LOG_TYPE_DEFAULT, "WLKLocationManager - %s: not updating lkl, using cached", &v7, 0xCu);
      }
    }

    else
    {
      v5 = WLKSystemLogObject();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136315138;
        v8 = "[WLKLocationManager _updateLocationIfNeeded]";
        _os_log_impl(&dword_272A0F000, v5, OS_LOG_TYPE_DEFAULT, "WLKLocationManager - %s: requesting recent location", &v7, 0xCu);
      }

      [(WLKLocationManager *)self _requestActiveLocationChangeUpdates];
    }
  }

  else
  {
    _copyLastKnownLocation = WLKSystemLogObject();
    if (os_log_type_enabled(_copyLastKnownLocation, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&dword_272A0F000, _copyLastKnownLocation, OS_LOG_TYPE_DEFAULT, "WLKLocationManager - _updateLocationIfNeeded: location not authorized", &v7, 2u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __26__WLKLocationManager_init__block_invoke_29(uint64_t a1)
{
  state64 = 0;
  notify_get_state(*(*(a1 + 32) + 8), &state64);
  if (state64 != getpid())
  {
    v1 = WLKSystemLogObject();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_272A0F000, v1, OS_LOG_TYPE_DEFAULT, "WLKLocationManager - Received didChange notification", buf, 2u);
    }

    v2 = WLKSystemLogObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_272A0F000, v2, OS_LOG_TYPE_DEFAULT, "WLKLocationManager - Firing local notification", v4, 2u);
    }

    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 postNotificationName:@"WLKLocationManagerLocationDidChangeNotification" object:0];
  }
}

- (BOOL)isAuthorizationDenied
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  clQueue = self->_clQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__WLKLocationManager_isAuthorizationDenied__block_invoke;
  v5[3] = &unk_279E5F280;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(clQueue, v5);
  v3 = (*(v7 + 6) - 1) < 2;
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int64_t)authorizationStatus
{
  v3 = dispatch_semaphore_create(0);
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = -1;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__WLKLocationManager_authorizationStatus__block_invoke;
  v8[3] = &unk_279E5F5E0;
  v10 = &v11;
  v4 = v3;
  v9 = v4;
  [(WLKLocationManager *)self _locationAuthorizationStatus:v8];
  v5 = dispatch_time(0, 3000000000);
  dispatch_semaphore_wait(v4, v5);
  v6 = v12[3];

  _Block_object_dispose(&v11, 8);
  return v6;
}

- (id)_locationQueryParameters
{
  v15[1] = *MEMORY[0x277D85DE8];
  lastKnownLocation = [(WLKLocationManager *)self lastKnownLocation];
  if ([(WLKLocationManager *)self isAuthorizationDenied])
  {
    v4 = &unk_288222E28;
  }

  else if (lastKnownLocation)
  {
    v14 = @"latlong";
    v5 = MEMORY[0x277CCACA8];
    v6 = [lastKnownLocation objectForKeyedSubscript:@"reducedPrecisionLatitudeString"];
    v7 = [lastKnownLocation objectForKeyedSubscript:@"reducedPrecisionLongitudeString"];
    v8 = [v5 stringWithFormat:@"%@, %@", v6, v7];
    v15[0] = v8;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  }

  else
  {
    v4 = 0;
  }

  v9 = WLKSystemLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v4;
    _os_log_impl(&dword_272A0F000, v9, OS_LOG_TYPE_DEFAULT, "WLKLocationManager - Loc query params: %@", buf, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v4;
}

- (NSDictionary)lastKnownLocation
{
  _copyLastKnownLocation = [(WLKLocationManager *)self _copyLastKnownLocation];

  return _copyLastKnownLocation;
}

- (id)_copyLastKnownLocation
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSDictionary *)selfCopy->_lastKnownLocation copy];
  objc_sync_exit(selfCopy);

  return v3;
}

uint64_t __43__WLKLocationManager_isAuthorizationDenied__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 40) authorizationStatus];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

+ (void)locationServicesEnabled:(id)enabled
{
  enabledCopy = enabled;
  if (enabledCopy)
  {
    defaultLocationManager = [self defaultLocationManager];
    clQueue = [defaultLocationManager clQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__WLKLocationManager_locationServicesEnabled___block_invoke;
    block[3] = &unk_279E5EA90;
    v8 = enabledCopy;
    dispatch_async(clQueue, block);
  }
}

void __46__WLKLocationManager_locationServicesEnabled___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBFC10] locationServicesEnabled];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __46__WLKLocationManager_locationServicesEnabled___block_invoke_2;
  v3[3] = &unk_279E5F590;
  v4 = *(a1 + 32);
  v5 = v2;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

- (void)_networkReachbilityDidChange:(id)change
{
  changeCopy = change;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [WLKLocationManager _networkReachbilityDidChange:];
  }

  clQueue = self->_clQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__WLKLocationManager__networkReachbilityDidChange___block_invoke;
  block[3] = &unk_279E5EE08;
  block[4] = self;
  dispatch_async(clQueue, block);
}

void __51__WLKLocationManager__networkReachbilityDidChange___block_invoke(uint64_t a1)
{
  v2 = +[WLKReachabilityMonitor sharedInstance];
  v3 = [v2 isNetworkReachable];

  if (v3)
  {
    v4 = *(a1 + 32);

    [v4 _updateLocationIfNeeded];
  }
}

- (void)dealloc
{
  clQueue = self->_clQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__WLKLocationManager_dealloc__block_invoke;
  block[3] = &unk_279E5EE08;
  block[4] = self;
  dispatch_async(clQueue, block);
  didChangeNotificationToken = self->_didChangeNotificationToken;
  if (didChangeNotificationToken)
  {
    notify_cancel(didChangeNotificationToken);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v6.receiver = self;
  v6.super_class = WLKLocationManager;
  [(WLKLocationManager *)&v6 dealloc];
}

void __29__WLKLocationManager_dealloc__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
  v3 = v2;

  [v3 stopUpdatingLocation];
  [v3 setDelegate:0];
}

- (void)fetchAuthorizationStatus:(id)status
{
  statusCopy = status;
  if (!statusCopy)
  {
    [WLKLocationManager fetchAuthorizationStatus:];
  }

  v5 = statusCopy;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v16 = 0;
  v6 = dispatch_time(0, 3000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__WLKLocationManager_fetchAuthorizationStatus___block_invoke;
  block[3] = &unk_279E5F608;
  v14 = v15;
  v7 = v5;
  v13 = v7;
  dispatch_after(v6, MEMORY[0x277D85CD0], block);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__WLKLocationManager_fetchAuthorizationStatus___block_invoke_38;
  v9[3] = &unk_279E5F658;
  v11 = v15;
  v8 = v7;
  v10 = v8;
  [(WLKLocationManager *)self _locationAuthorizationStatus:v9];

  _Block_object_dispose(v15, 8);
}

uint64_t __47__WLKLocationManager_fetchAuthorizationStatus___block_invoke(uint64_t result)
{
  v1 = *(*(result + 40) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    v2 = result;
    *(v1 + 24) = 1;
    v3 = WLKSystemLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __47__WLKLocationManager_fetchAuthorizationStatus___block_invoke_cold_1();
    }

    return (*(*(v2 + 32) + 16))();
  }

  return result;
}

void __47__WLKLocationManager_fetchAuthorizationStatus___block_invoke_38(uint64_t a1, uint64_t a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__WLKLocationManager_fetchAuthorizationStatus___block_invoke_2;
  block[3] = &unk_279E5F630;
  v4 = *(a1 + 32);
  v3 = v4;
  v6 = v4;
  v7 = a2;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __47__WLKLocationManager_fetchAuthorizationStatus___block_invoke_2(uint64_t result)
{
  v1 = *(*(result + 40) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    v2 = result;
    *(v1 + 24) = 1;
    v3 = WLKSystemLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_272A0F000, v3, OS_LOG_TYPE_DEFAULT, "WLKLocationManager - fetchAuthorizationStatus completed", v5, 2u);
    }

    v4 = *(v2 + 48);
    return (*(*(v2 + 32) + 16))();
  }

  return result;
}

- (void)requestAuthorizationWithForcedPrompt:(BOOL)prompt
{
  if (!prompt || [(WLKLocationManager *)self _locationServicesEnabled]&& [(WLKLocationManager *)self authorizationStatus])
  {
    clQueue = self->_clQueue;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __59__WLKLocationManager_requestAuthorizationWithForcedPrompt___block_invoke_2;
    v6[3] = &unk_279E5EE08;
    v6[4] = self;
    v5 = v6;
  }

  else
  {
    clQueue = self->_clQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__WLKLocationManager_requestAuthorizationWithForcedPrompt___block_invoke;
    block[3] = &unk_279E5EE08;
    block[4] = self;
    v5 = block;
  }

  dispatch_async(clQueue, v5);
}

- (void)_requestActiveLocationChangeUpdates
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = WLKSystemLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "[WLKLocationManager _requestActiveLocationChangeUpdates]";
    _os_log_impl(&dword_272A0F000, v3, OS_LOG_TYPE_DEFAULT, "WLKLocationManager - %s: starting location updates", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__WLKLocationManager__requestActiveLocationChangeUpdates__block_invoke;
  v5[3] = &unk_279E5F680;
  objc_copyWeak(&v6, buf);
  v5[4] = self;
  [(WLKLocationManager *)self _requestCLLocationUpdates:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
  v4 = *MEMORY[0x277D85DE8];
}

void __57__WLKLocationManager__requestActiveLocationChangeUpdates__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = WLKSystemLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v6;
    _os_log_impl(&dword_272A0F000, v7, OS_LOG_TYPE_DEFAULT, "WLKLocationManager - Active location request returned err: %@", &v13, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!v5 || v6)
  {
    v9 = WLKSystemLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v6 localizedDescription];
      v11 = [v10 UTF8String];
      v13 = 136315394;
      v14 = "[WLKLocationManager _requestActiveLocationChangeUpdates]_block_invoke";
      v15 = 2080;
      v16 = v11;
      _os_log_impl(&dword_272A0F000, v9, OS_LOG_TYPE_DEFAULT, "WLKLocationManager - %s: nil new location, error:%s", &v13, 0x16u);
    }
  }

  else
  {
    v9 = [*(a1 + 32) _dictionaryForCLLocation:v5];
    [WeakRetained _setLastKnownLocation:v9];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isIgnorableLocationError:(id)error
{
  v13 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v4 = errorCopy;
  if (errorCopy && ([errorCopy domain], v5 = objc_claimAutoreleasedReturnValue(), v6 = *MEMORY[0x277CBFCF0], v5, v5 == v6))
  {
    v8 = WLKSystemLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134217984;
      code = [v4 code];
      _os_log_impl(&dword_272A0F000, v8, OS_LOG_TYPE_DEFAULT, "WLKLocationManager - Ignoring location error: %ld", &v11, 0xCu);
    }

    v7 = [v4 code] == 0;
  }

  else
  {
    v7 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)_dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [(NSDictionary *)selfCopy->_lastKnownLocation copy];
  [dictionary setObject:v5 forKeyedSubscript:@"LastKnownLocation"];

  objc_sync_exit(selfCopy);

  return dictionary;
}

- (BOOL)_isLastKnownLocation:(id)location freshForMaxAge:(double)age fromNewTimestamp:(double)timestamp
{
  v21 = *MEMORY[0x277D85DE8];
  if (location)
  {
    v7 = [location objectForKeyedSubscript:@"secondsSinceEpoch"];
    [v7 doubleValue];
    v9 = v8;

    v10 = timestamp - v9;
    v11 = WLKSystemLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315650;
      v16 = "[WLKLocationManager _isLastKnownLocation:freshForMaxAge:fromNewTimestamp:]";
      v17 = 2048;
      v18 = v10;
      v19 = 2048;
      ageCopy = age;
      _os_log_impl(&dword_272A0F000, v11, OS_LOG_TYPE_DEFAULT, "WLKLocationManager - %s: locationAge %f, maxAge %f", &v15, 0x20u);
    }

    result = v10 < age;
  }

  else
  {
    v13 = WLKSystemLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315138;
      v16 = "[WLKLocationManager _isLastKnownLocation:freshForMaxAge:fromNewTimestamp:]";
      _os_log_impl(&dword_272A0F000, v13, OS_LOG_TYPE_DEFAULT, "WLKLocationManager - %s: nil lkl", &v15, 0xCu);
    }

    result = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)_isLastKnownLocationFresh:(id)fresh
{
  v4 = MEMORY[0x277CBEAA8];
  freshCopy = fresh;
  date = [v4 date];
  [date timeIntervalSince1970];
  LOBYTE(self) = [(WLKLocationManager *)self _isLastKnownLocation:freshCopy freshForMaxAge:86400.0 fromNewTimestamp:v7];

  return self;
}

- (BOOL)_shouldLastKnownLocation:(id)location beUpdatedTo:(id)to
{
  v16 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  toCopy = to;
  if ([(WLKLocationManager *)self _isLastKnownLocation:locationCopy significantlyOlderThanNewLocation:toCopy])
  {
    v8 = WLKSystemLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315138;
      v15 = "[WLKLocationManager _shouldLastKnownLocation:beUpdatedTo:]";
      v9 = "WLKLocationManager - %s: new location is after significant time";
LABEL_7:
      _os_log_impl(&dword_272A0F000, v8, OS_LOG_TYPE_DEFAULT, v9, &v14, 0xCu);
    }
  }

  else
  {
    [(WLKLocationManager *)self _getDistanceOfLastKnownLocationDictionary:locationCopy fromLocation:toCopy];
    if (v10 <= 1000.0)
    {
      v11 = 0;
      goto LABEL_10;
    }

    v8 = WLKSystemLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315138;
      v15 = "[WLKLocationManager _shouldLastKnownLocation:beUpdatedTo:]";
      v9 = "WLKLocationManager - %s: new location is significantantly farther";
      goto LABEL_7;
    }
  }

  v11 = 1;
LABEL_10:

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)_isLastKnownLocation:(id)location significantlyOlderThanNewLocation:(id)newLocation
{
  if (!newLocation)
  {
    return 0;
  }

  locationCopy = location;
  timestamp = [newLocation timestamp];
  [timestamp timeIntervalSince1970];
  LOBYTE(self) = [(WLKLocationManager *)self _isLastKnownLocation:locationCopy freshForMaxAge:7200.0 fromNewTimestamp:v8];

  return self;
}

- (id)_createLocationObjFromLocationDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [dictionaryCopy objectForKey:@"reducedPrecisionLatitudeString"];
    v5 = v4;
    if (v4)
    {
      [v4 doubleValue];
      v7 = v6;
      v8 = [dictionaryCopy objectForKey:@"reducedPrecisionLongitudeString"];
      v9 = v8;
      if (v8)
      {
        [v8 doubleValue];
        v11 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:v7 longitude:v10];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (double)_getDistanceOfLastKnownLocationDictionary:(id)dictionary fromLocation:(id)location
{
  v19 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  locationCopy = location;
  if (!locationCopy)
  {
    v12 = WLKSystemLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315138;
      v18 = "[WLKLocationManager _getDistanceOfLastKnownLocationDictionary:fromLocation:]";
      v13 = "WLKLocationManager - %s: nil newLocation";
LABEL_9:
      _os_log_impl(&dword_272A0F000, v12, OS_LOG_TYPE_DEFAULT, v13, &v17, 0xCu);
    }

LABEL_10:

    v11 = *MEMORY[0x277CE41E0];
    goto LABEL_15;
  }

  if (!dictionaryCopy)
  {
    v12 = WLKSystemLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315138;
      v18 = "[WLKLocationManager _getDistanceOfLastKnownLocationDictionary:fromLocation:]";
      v13 = "WLKLocationManager - %s: nil location";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v8 = [(WLKLocationManager *)self _createLocationObjFromLocationDictionary:dictionaryCopy];
  v9 = v8;
  if (v8)
  {
    [v8 distanceFromLocation:locationCopy];
    v11 = v10;
  }

  else
  {
    v14 = WLKSystemLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315138;
      v18 = "[WLKLocationManager _getDistanceOfLastKnownLocationDictionary:fromLocation:]";
      _os_log_impl(&dword_272A0F000, v14, OS_LOG_TYPE_DEFAULT, "WLKLocationManager - %s: nil lastKnownLocObj", &v17, 0xCu);
    }

    v11 = *MEMORY[0x277CE41E0];
  }

LABEL_15:
  v15 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)_setLastKnownLocation:(id)location
{
  v14 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  v5 = WLKSystemLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "[WLKLocationManager _setLastKnownLocation:]";
    _os_log_impl(&dword_272A0F000, v5, OS_LOG_TYPE_DEFAULT, "WLKLocationManager - %s", &v12, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  lastKnownLocation = selfCopy->_lastKnownLocation;
  selfCopy->_lastKnownLocation = locationCopy;

  objc_sync_exit(selfCopy);
  v8 = WLKSystemLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&dword_272A0F000, v8, OS_LOG_TYPE_DEFAULT, "WLKLocationManager - Wrote location", &v12, 2u);
  }

  dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_45_0);
  didChangeNotificationToken = selfCopy->_didChangeNotificationToken;
  v10 = getpid();
  notify_set_state(didChangeNotificationToken, v10);
  notify_post("com.apple.WatchListKit.WLKLocationManagerLocationDidChangeNotification");
  v11 = *MEMORY[0x277D85DE8];
}

void __44__WLKLocationManager__setLastKnownLocation___block_invoke()
{
  v0 = WLKSystemLogObject();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_272A0F000, v0, OS_LOG_TYPE_DEFAULT, "WLKLocationManager - Notifying of location change", v2, 2u);
  }

  v1 = [MEMORY[0x277CCAB98] defaultCenter];
  [v1 postNotificationName:@"WLKLocationManagerLocationDidChangeNotification" object:0];
}

- (void)_requestRecentCLLocation:(id)location
{
  locationCopy = location;
  clQueue = self->_clQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__WLKLocationManager__requestRecentCLLocation___block_invoke;
  v7[3] = &unk_279E5F6A8;
  v7[4] = self;
  v8 = locationCopy;
  v6 = locationCopy;
  dispatch_async(clQueue, v7);
}

void __47__WLKLocationManager__requestRecentCLLocation___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = [*(*(a1 + 32) + 40) location];
    v3 = WLKSystemLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_272A0F000, v3, OS_LOG_TYPE_DEFAULT, "WLKLocationManager - Request recent cl location", buf, 2u);
    }

    [v2 horizontalAccuracy];
    if (v4 > 1000.0)
    {
      v5 = WLKSystemLogObject();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_272A0F000, v5, OS_LOG_TYPE_DEFAULT, "WLKLocationManager - Recent cl location accuracy unusable", v11, 2u);
      }

      v2 = 0;
    }

    v6 = [v2 timestamp];
    [v6 timeIntervalSinceNow];
    v8 = v7;

    if (v8 < -86400.0)
    {
      v9 = WLKSystemLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_272A0F000, v9, OS_LOG_TYPE_DEFAULT, "WLKLocationManager - Recent cl location is stale", v10, 2u);
      }

      v2 = 0;
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (void)_requestCLLocationUpdates:(id)updates
{
  updatesCopy = updates;
  if (updatesCopy)
  {
    [(WLKLocationManager *)self setLocationUpdateBlock:updatesCopy];
  }

  v5 = WLKSystemLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_272A0F000, v5, OS_LOG_TYPE_DEFAULT, "WLKLocationManager - Updating location", v6, 2u);
  }

  [(CLLocationManager *)self->_clLocationManager requestLocation];
}

- (id)_dictionaryForCLLocation:(id)location
{
  v19[3] = *MEMORY[0x277D85DE8];
  if (location)
  {
    v3 = MEMORY[0x277CCACA8];
    locationCopy = location;
    v5 = [v3 stringWithFormat:@"%s%df", "%0.0", 3];
    v6 = MEMORY[0x277CCACA8];
    [locationCopy coordinate];
    v8 = [v6 stringWithValidatedFormat:v5 validFormatSpecifiers:@"%f" error:0, v7];
    v9 = MEMORY[0x277CCACA8];
    [locationCopy coordinate];
    v11 = [v9 stringWithValidatedFormat:v5 validFormatSpecifiers:@"%f" error:0, v10];
    v18[0] = @"reducedPrecisionLatitudeString";
    v18[1] = @"reducedPrecisionLongitudeString";
    v19[0] = v8;
    v19[1] = v11;
    v18[2] = @"secondsSinceEpoch";
    v12 = MEMORY[0x277CCABB0];
    timestamp = [locationCopy timestamp];

    [timestamp timeIntervalSince1970];
    v14 = [v12 numberWithDouble:?];
    v19[2] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (int64_t)_statusForCLAuthorizationStatus:(int)status
{
  if ((status - 2) > 2)
  {
    return -1;
  }

  else
  {
    return qword_272A7F548[status - 2];
  }
}

- (id)_cachedDictionary:(BOOL)dictionary
{
  if (!dictionary)
  {
    goto LABEL_4;
  }

  v4 = +[WLKAppLibrary defaultAppLibrary];
  isTVAppInstalled = [v4 isTVAppInstalled];

  if (isTVAppInstalled)
  {
    if ([(WLKLocationManager *)self isAuthorizationApproved])
    {
LABEL_4:
      _copyLastKnownLocation = [(WLKLocationManager *)self _copyLastKnownLocation];
      goto LABEL_12;
    }
  }

  else
  {
    v7 = WLKSystemLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_272A0F000, v7, OS_LOG_TYPE_DEFAULT, "WLKLocationManager - _dictionaryOnDisk: app is not installed", buf, 2u);
    }

    if ([(WLKLocationManager *)self isAuthorizationApproved])
    {
      goto LABEL_11;
    }
  }

  v8 = WLKSystemLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_272A0F000, v8, OS_LOG_TYPE_DEFAULT, "WLKLocationManager - _dictionaryOnDisk: location not authorized", v10, 2u);
  }

LABEL_11:
  _copyLastKnownLocation = 0;
LABEL_12:

  return _copyLastKnownLocation;
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  location[1] = *MEMORY[0x277D85DE8];
  authorizationCopy = authorization;
  dispatch_assert_queue_V2(self->_clQueue);
  authorizationStatus = [authorizationCopy authorizationStatus];
  if ([(WLKLocationManager *)self isAuthorizationApproved])
  {
    if (!self->_lastKnownLocation)
    {
      v6 = [(WLKLocationManager *)self _statusForCLAuthorizationStatus:authorizationStatus];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __60__WLKLocationManager_locationManagerDidChangeAuthorization___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = v6;
      dispatch_async(MEMORY[0x277D85CD0], block);
      objc_initWeak(location, self);
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __60__WLKLocationManager_locationManagerDidChangeAuthorization___block_invoke_56;
      v12[3] = &unk_279E5F6D0;
      v12[4] = self;
      objc_copyWeak(&v13, location);
      [(WLKLocationManager *)self _requestCLLocationUpdates:v12];
      objc_destroyWeak(&v13);
      objc_destroyWeak(location);
    }
  }

  else
  {
    v7 = WLKSystemLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(location[0]) = 67109120;
      HIDWORD(location[0]) = authorizationStatus;
      _os_log_impl(&dword_272A0F000, v7, OS_LOG_TYPE_DEFAULT, "WLKLocationManager - Authorization status is not approved with status: %d", location, 8u);
    }

    if ((authorizationStatus & 0xFFFFFFFD) == 0)
    {
      v8 = WLKSystemLogObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(location[0]) = 0;
        _os_log_impl(&dword_272A0F000, v8, OS_LOG_TYPE_DEFAULT, "WLKLocationManager - Deleting last known location and sending authorization did change notification", location, 2u);
      }

      [(WLKLocationManager *)self _setLastKnownLocation:0];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __60__WLKLocationManager_locationManagerDidChangeAuthorization___block_invoke_57;
      v10[3] = &unk_279E5F6F8;
      v10[4] = self;
      v11 = authorizationStatus;
      dispatch_async(MEMORY[0x277D85CD0], v10);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __60__WLKLocationManager_locationManagerDidChangeAuthorization___block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = WLKSystemLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_272A0F000, v2, OS_LOG_TYPE_DEFAULT, "WLKLocationManager - Notifying of authorization status change", v7, 2u);
  }

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v8 = @"status";
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 32)];
  v9[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [v3 postNotificationName:@"WLKLocationManagerAuthorizationStatusDidChangeNotification" object:0 userInfo:v5];

  v6 = *MEMORY[0x277D85DE8];
}

void __60__WLKLocationManager_locationManagerDidChangeAuthorization___block_invoke_56(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 24));
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v5 || ![*(a1 + 32) _isIgnorableLocationError:v6])
  {
    v8 = [WeakRetained _dictionaryForCLLocation:v5];
    [WeakRetained _setLastKnownLocation:v8];
  }

  else
  {
    v8 = WLKSystemLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __60__WLKLocationManager_locationManagerDidChangeAuthorization___block_invoke_56_cold_1();
    }
  }
}

void __60__WLKLocationManager_locationManagerDidChangeAuthorization___block_invoke_57(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) _statusForCLAuthorizationStatus:*(a1 + 40)];
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v6 = @"status";
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:v1];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [v2 postNotificationName:@"WLKLocationManagerAuthorizationStatusDidChangeNotification" object:0 userInfo:v4];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  locationsCopy = locations;
  clQueue = self->_clQueue;
  managerCopy = manager;
  dispatch_assert_queue_V2(clQueue);
  clLocationManager = self->_clLocationManager;

  if (clLocationManager == managerCopy)
  {
    locationUpdateBlock = [(WLKLocationManager *)self locationUpdateBlock];

    if (locationUpdateBlock)
    {
      if ([locationsCopy count])
      {
        locationUpdateBlock2 = [(WLKLocationManager *)self locationUpdateBlock];
        lastObject = [locationsCopy lastObject];
        (*(locationUpdateBlock2 + 16))(locationUpdateBlock2, lastObject, 0);

        goto LABEL_12;
      }

      locationUpdateBlock2 = WLKSystemLogObject();
      if (!os_log_type_enabled(locationUpdateBlock2, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }

      v15 = 0;
      v11 = "WLKLocationManager - No location in update";
      v12 = &v15;
    }

    else
    {
      locationUpdateBlock2 = WLKSystemLogObject();
      if (!os_log_type_enabled(locationUpdateBlock2, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }

      v16 = 0;
      v11 = "WLKLocationManager - No location update block";
      v12 = &v16;
    }

    goto LABEL_4;
  }

  locationUpdateBlock2 = WLKSystemLogObject();
  if (os_log_type_enabled(locationUpdateBlock2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v11 = "WLKLocationManager - Location manager ref don't match";
    v12 = buf;
LABEL_4:
    _os_log_impl(&dword_272A0F000, locationUpdateBlock2, OS_LOG_TYPE_DEFAULT, v11, v12, 2u);
  }

LABEL_12:
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  errorCopy = error;
  clQueue = self->_clQueue;
  managerCopy = manager;
  dispatch_assert_queue_V2(clQueue);
  clLocationManager = self->_clLocationManager;

  if (clLocationManager == managerCopy)
  {
    v10 = WLKSystemLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [WLKLocationManager locationManager:didFailWithError:];
    }

    locationUpdateBlock = [(WLKLocationManager *)self locationUpdateBlock];

    if (locationUpdateBlock)
    {
      locationUpdateBlock2 = [(WLKLocationManager *)self locationUpdateBlock];
      (locationUpdateBlock2)[2](locationUpdateBlock2, 0, errorCopy);
    }
  }
}

- (void)_locationAuthorizationStatus:(id)status
{
  statusCopy = status;
  if ((WLKShouldRunInProcess() & 1) != 0 || WLKIsTVApp())
  {
    objc_initWeak(location, self);
    clQueue = self->_clQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__WLKLocationManager__locationAuthorizationStatus___block_invoke;
    block[3] = &unk_279E5EB88;
    objc_copyWeak(&v18, location);
    block[4] = self;
    v17 = statusCopy;
    v6 = statusCopy;
    dispatch_async(clQueue, block);

    objc_destroyWeak(&v18);
    objc_destroyWeak(location);
  }

  else
  {
    _connection = [(WLKLocationManager *)self _connection];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __51__WLKLocationManager__locationAuthorizationStatus___block_invoke_2;
    v14[3] = &unk_279E5EB38;
    v8 = statusCopy;
    v15 = v8;
    v9 = [_connection remoteObjectProxyWithErrorHandler:v14];

    v10 = WLKSystemLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_272A0F000, v10, OS_LOG_TYPE_DEFAULT, "WLKLocationManager - Calling out to daemon for auth status", location, 2u);
    }

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __51__WLKLocationManager__locationAuthorizationStatus___block_invoke_73;
    v12[3] = &unk_279E5F720;
    v13 = v8;
    v11 = v8;
    [v9 fetchLocationAuthorizationStatus:v12];
  }
}

void __51__WLKLocationManager__locationAuthorizationStatus___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WLKIsTVApp())
  {
    v2 = [WeakRetained clLocationManager];
    v3 = [v2 authorizationStatus];
  }

  else
  {
    v4 = MEMORY[0x277CBFC10];
    v2 = WLKTVAppBundleID();
    v3 = [v4 authorizationStatusForBundleIdentifier:v2];
  }

  v5 = v3;

  v6 = [*(a1 + 32) _statusForCLAuthorizationStatus:v5];
  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v6);
  }
}

void __51__WLKLocationManager__locationAuthorizationStatus___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WLKSystemLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __51__WLKLocationManager__locationAuthorizationStatus___block_invoke_2_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, -1);
  }
}

uint64_t __51__WLKLocationManager__locationAuthorizationStatus___block_invoke_73(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = WLKSystemLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = a2;
    _os_log_impl(&dword_272A0F000, v4, OS_LOG_TYPE_DEFAULT, "WLKLocationManager - Daemon callback for auth status %ld", &v7, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    result = (*(result + 16))(result, a2);
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_connection
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  connection = selfCopy->_connection;
  if (!connection)
  {
    v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.watchlistd.xpc" options:0];
    v5 = selfCopy->_connection;
    selfCopy->_connection = v4;

    v6 = selfCopy->_connection;
    v7 = WLKConnectionClientInterface();
    [(NSXPCConnection *)v6 setExportedInterface:v7];

    [(NSXPCConnection *)selfCopy->_connection setExportedObject:selfCopy];
    v8 = selfCopy->_connection;
    v9 = WLKConnectionServerInterface();
    [(NSXPCConnection *)v8 setRemoteObjectInterface:v9];

    [(NSXPCConnection *)selfCopy->_connection setInterruptionHandler:&__block_literal_global_79];
    objc_initWeak(&location, selfCopy);
    v10 = selfCopy->_connection;
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __33__WLKLocationManager__connection__block_invoke_80;
    v16 = &unk_279E5EC50;
    objc_copyWeak(&v17, &location);
    [(NSXPCConnection *)v10 setInvalidationHandler:&v13];
    [(NSXPCConnection *)selfCopy->_connection resume:v13];
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
    connection = selfCopy->_connection;
  }

  v11 = connection;
  objc_sync_exit(selfCopy);

  return v11;
}

void __33__WLKLocationManager__connection__block_invoke()
{
  v0 = WLKSystemLogObject();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_272A0F000, v0, OS_LOG_TYPE_DEFAULT, "WLKLocationManager - Connection interrupted.", v1, 2u);
  }
}

void __33__WLKLocationManager__connection__block_invoke_80(uint64_t a1)
{
  v2 = WLKSystemLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_272A0F000, v2, OS_LOG_TYPE_DEFAULT, "WLKLocationManager - Connection invalidated.", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = *(WeakRetained + 6);
    *(WeakRetained + 6) = 0;
  }
}

void __60__WLKLocationManager_locationManagerDidChangeAuthorization___block_invoke_56_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)locationManager:didFailWithError:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __51__WLKLocationManager__locationAuthorizationStatus___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end