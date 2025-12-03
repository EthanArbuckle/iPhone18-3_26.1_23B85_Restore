@interface WeatherLocationManager
+ (id)sharedWeatherLocationManager;
+ (int)locationManagerAuthorizationWithEffectiveBundleId:(id)id;
+ (void)clearSharedLocationManager;
- (BOOL)hasCrossedHourBoundary;
- (BOOL)isCacheOutOfDate;
- (BOOL)isLocalStaleOrOutOfDate;
- (BOOL)isLocationWithInRange:(id)range;
- (BOOL)limitsPrecision;
- (BOOL)localWeatherAuthorized;
- (CLLocationCoordinate2D)lastLocationCoord;
- (CLLocationManagerDelegate)delegate;
- (WeatherLocationManager)initWithPreferences:(id)preferences;
- (WeatherLocationManager)initWithPreferences:(id)preferences effectiveBundleIdentifier:(id)identifier;
- (double)distanceFilter;
- (id)location;
- (int)forceLoadingAuthorizationStatus;
- (void)accuracyFallbackTimerDidFire:(id)fire;
- (void)askForLocationManagerAuthorization;
- (void)cancelAccuracyFallbackTimer;
- (void)cancelDelayedUpdateTimer;
- (void)clearLastLocationUpdateTime;
- (void)clearLocalWeatherUpdateState;
- (void)dealloc;
- (void)delayedUpdateTimerDidFire:(id)fire;
- (void)forceLocationManagerAuthorization;
- (void)forceLocationUpdate;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)scheduleDelayedUpdate:(double)update;
- (void)setLocationTrackingActive:(BOOL)active;
- (void)setLocationUpdatesEnabled:(BOOL)enabled;
- (void)updateLocation:(id)location;
- (void)updateLocationWithNoConditionCheck;
@end

@implementation WeatherLocationManager

+ (id)sharedWeatherLocationManager
{
  if (sharedWeatherLocationManager_onceToken != -1)
  {
    +[WeatherLocationManager sharedWeatherLocationManager];
  }

  v3 = __sharedWeatherLocationManager;

  return v3;
}

void __54__WeatherLocationManager_sharedWeatherLocationManager__block_invoke()
{
  v0 = [WeatherLocationManager alloc];
  v3 = +[WeatherPreferences sharedPreferences];
  v1 = [(WeatherLocationManager *)v0 initWithPreferences:v3];
  v2 = __sharedWeatherLocationManager;
  __sharedWeatherLocationManager = v1;
}

+ (void)clearSharedLocationManager
{
  v2 = NSStringFromSelector(a2);
  NSLog(&cfstr_IsANopPleaseRe.isa, v2);
}

+ (int)locationManagerAuthorizationWithEffectiveBundleId:(id)id
{
  if (!id)
  {
    id = @"com.apple.weather";
  }

  return [MEMORY[0x277CBFC10] authorizationStatusForBundleIdentifier:id];
}

- (WeatherLocationManager)initWithPreferences:(id)preferences
{
  v23 = *MEMORY[0x277D85DE8];
  preferencesCopy = preferences;
  v20.receiver = self;
  v20.super_class = WeatherLocationManager;
  v5 = [(WeatherLocationManager *)&v20 init];
  if (v5)
  {
    if (preferencesCopy)
    {
      v6 = preferencesCopy;
    }

    else
    {
      v6 = +[WeatherPreferences sharedPreferences];
    }

    preferences = v5->_preferences;
    v5->_preferences = v6;

    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v10 = [bundleIdentifier isEqualToString:@"com.apple.weather"];

    v11 = 1800;
    if (v10)
    {
      v11 = 300;
    }

    v5->_updateInterval = v11;
    v12 = +[WeatherInternalPreferences sharedInternalPreferences];
    v5->_isInternalBuild = [v12 isInternalInstall];

    objc_storeStrong(&v5->_effectiveBundleIdentifier, @"com.apple.weather");
    if (v5->_isInternalBuild)
    {
      v13 = +[WeatherInternalPreferences sharedInternalPreferences];
      v14 = [v13 objectForKey:@"ShouldLocalWeatherUpdateRapidly"];
      bOOLValue = [v14 BOOLValue];

      if (bOOLValue)
      {
        v5->_updateInterval = 10;
        v16 = WALogForCategory(4);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          updateInterval = v5->_updateInterval;
          *buf = 134217984;
          v22 = updateInterval;
          _os_log_impl(&dword_272ACF000, v16, OS_LOG_TYPE_DEFAULT, "Overriding local weather location update interval via user defaults - %lus", buf, 0xCu);
        }
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return v5;
}

- (WeatherLocationManager)initWithPreferences:(id)preferences effectiveBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = [(WeatherLocationManager *)self initWithPreferences:preferences];
  v8 = v7;
  if (identifierCopy && v7)
  {
    v9 = [identifierCopy copy];
    effectiveBundleIdentifier = v8->_effectiveBundleIdentifier;
    v8->_effectiveBundleIdentifier = v9;
  }

  return v8;
}

- (void)dealloc
{
  [(WeatherLocationManager *)self cancelAccuracyFallbackTimer];
  [(WeatherLocationManager *)self cancelDelayedUpdateTimer];
  v3.receiver = self;
  v3.super_class = WeatherLocationManager;
  [(WeatherLocationManager *)&v3 dealloc];
}

- (double)distanceFilter
{
  locationManager = [(WeatherLocationManager *)self locationManager];
  if (locationManager)
  {
    locationManager2 = [(WeatherLocationManager *)self locationManager];
    [locationManager2 distanceFilter];
    v6 = v5;
  }

  else
  {
    v6 = 500.0;
  }

  return v6;
}

- (BOOL)limitsPrecision
{
  locationManager = [(WeatherLocationManager *)self locationManager];

  if (locationManager)
  {
    locationManager2 = [(WeatherLocationManager *)self locationManager];
    _limitsPrecision = [locationManager2 _limitsPrecision];

    return _limitsPrecision;
  }

  else
  {
    v7 = WALogForCategory(4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_272ACF000, v7, OS_LOG_TYPE_DEFAULT, "Do not have an instance of the location manager. Use coarse location.", v8, 2u);
    }

    return 1;
  }
}

- (BOOL)localWeatherAuthorized
{
  v7 = *MEMORY[0x277D85DE8];
  authorizationStatus = [(WeatherLocationManager *)self authorizationStatus];
  v3 = WALogForCategory(4);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = authorizationStatus;
    _os_log_impl(&dword_272ACF000, v3, OS_LOG_TYPE_DEFAULT, "autorizationStatus %d", v6, 8u);
  }

  result = authorizationStatus > 2;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)askForLocationManagerAuthorization
{
  v3 = WALogForCategory(4);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_272ACF000, v3, OS_LOG_TYPE_DEFAULT, "Requesting permission for in-use location usage", v5, 2u);
  }

  locationManager = [(WeatherLocationManager *)self locationManager];
  [locationManager requestWhenInUseAuthorization];
}

- (void)forceLocationManagerAuthorization
{
  v3 = WALogForCategory(4);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_272ACF000, v3, OS_LOG_TYPE_DEFAULT, "Force request permission for in-use location usage", v5, 2u);
  }

  locationManager = [(WeatherLocationManager *)self locationManager];
  [locationManager requestWhenInUseAuthorizationWithPrompt];
}

- (int)forceLoadingAuthorizationStatus
{
  v3 = objc_opt_class();
  effectiveBundleIdentifier = [(WeatherLocationManager *)self effectiveBundleIdentifier];
  -[WeatherLocationManager setAuthorizationStatus:](self, "setAuthorizationStatus:", [v3 locationManagerAuthorizationWithEffectiveBundleId:effectiveBundleIdentifier]);

  return self->_authorizationStatus;
}

- (void)setLocationTrackingActive:(BOOL)active
{
  activeCopy = active;
  v41 = *MEMORY[0x277D85DE8];
  v5 = WALogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "inactive";
    if (activeCopy)
    {
      v6 = "active";
    }

    v37 = 136315138;
    v38 = v6;
    _os_log_impl(&dword_272ACF000, v5, OS_LOG_TYPE_DEFAULT, "Setting location tracking %s", &v37, 0xCu);
  }

  [(WeatherLocationManager *)self cancelDelayedUpdateTimer];
  if (activeCopy)
  {
    preferences = [(WeatherLocationManager *)self preferences];
    v8 = [preferences readDefaultValueForKey:@"LastLocationUpdateTime"];
    [v8 doubleValue];
    [(WeatherLocationManager *)self setLastLocationUpdateTime:?];

    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSince1970];
    v11 = v10;
    [(WeatherLocationManager *)self lastLocationUpdateTime];
    v13 = v11 - v12;

    date2 = [MEMORY[0x277CBEAA8] date];
    [date2 timeIntervalSince1970];
    v16 = v15;
    v17 = [preferences readDefaultValueForKey:@"LastLocationParseTime"];
    [v17 doubleValue];
    v19 = v18;

    updateInterval = [(WeatherLocationManager *)self updateInterval];
    v21 = v13 >= 0.0 && v13 < updateInterval;
    if (v21 && ((v22 = v16 - v19, v23 = [(WeatherLocationManager *)self updateInterval], v22 >= 0.0) ? (v24 = v22 < v23) : (v24 = 0), v24 && [(WeatherLocationManager *)self authorizationStatus]))
    {
      v25 = WALogForCategory(4);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v37) = 0;
        _os_log_impl(&dword_272ACF000, v25, OS_LOG_TYPE_DEFAULT, "schedule delayed location update", &v37, 2u);
      }

      [(WeatherLocationManager *)self scheduleDelayedUpdate:[(WeatherLocationManager *)self updateInterval]- v13];
    }

    else
    {
      v27 = WALogForCategory(4);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v37) = 0;
        _os_log_impl(&dword_272ACF000, v27, OS_LOG_TYPE_DEFAULT, "First location update check passed", &v37, 2u);
      }

      v28 = WALogForCategory(4);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = [MEMORY[0x277CCABB0] numberWithBool:{-[WeatherLocationManager locationUpdatesEnabled](self, "locationUpdatesEnabled")}];
        locationManager = [(WeatherLocationManager *)self locationManager];
        v37 = 138412546;
        v38 = v29;
        v39 = 2112;
        v40 = locationManager;
        _os_log_impl(&dword_272ACF000, v28, OS_LOG_TYPE_DEFAULT, "locationUpdatesEnabled = %@, self.locationManager = %@", &v37, 0x16u);
      }

      if (![(WeatherLocationManager *)self locationUpdatesEnabled])
      {
        locationManager2 = [(WeatherLocationManager *)self locationManager];

        if (locationManager2)
        {
          v32 = WALogForCategory(4);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v37) = 0;
            _os_log_impl(&dword_272ACF000, v32, OS_LOG_TYPE_DEFAULT, "LocationUpdatesEnabled=NO", &v37, 2u);
          }

          [(WeatherLocationManager *)self oldestAllowedUpdateTime];
          if (v33 == -1.0)
          {
            date3 = [MEMORY[0x277CBEAA8] date];
            [date3 timeIntervalSince1970];
            [(WeatherLocationManager *)self setOldestAllowedUpdateTime:?];
          }

          [(WeatherLocationManager *)self setLocationUpdatesEnabled:1];
          defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
          [defaultCenter postNotificationName:@"BeganTrackingLocationNotification" object:0];
        }
      }
    }
  }

  else
  {
    v26 = WALogForCategory(4);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v37) = 0;
      _os_log_impl(&dword_272ACF000, v26, OS_LOG_TYPE_DEFAULT, "Disable location tracking, setting locationUpdatesEnabled=NO", &v37, 2u);
    }

    [(WeatherLocationManager *)self setLocationUpdatesEnabled:0];
    [(WeatherLocationManager *)self setOldestAllowedUpdateTime:-1.0];
    [(WeatherLocationManager *)self cancelDelayedUpdateTimer];
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)updateLocationWithNoConditionCheck
{
  v3 = WALogForCategory(4);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_272ACF000, v3, OS_LOG_TYPE_DEFAULT, "Update location with no condition check", v7, 2u);
  }

  [(WeatherLocationManager *)self cancelDelayedUpdateTimer];
  if (![(WeatherLocationManager *)self locationUpdatesEnabled])
  {
    [(WeatherLocationManager *)self oldestAllowedUpdateTime];
    if (v4 == -1.0)
    {
      date = [MEMORY[0x277CBEAA8] date];
      [date timeIntervalSince1970];
      [(WeatherLocationManager *)self setOldestAllowedUpdateTime:?];
    }

    [(WeatherLocationManager *)self setLocationUpdatesEnabled:1];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"BeganTrackingLocationNotification" object:0];
  }
}

- (BOOL)isLocalStaleOrOutOfDate
{
  lastLocationTimeStamp = [(WeatherLocationManager *)self lastLocationTimeStamp];

  if (!lastLocationTimeStamp)
  {
    preferences = [(WeatherLocationManager *)self preferences];
    localWeatherCity = [preferences localWeatherCity];
    updateTime = [localWeatherCity updateTime];
    [(WeatherLocationManager *)self setLastLocationTimeStamp:updateTime];
  }

  date = [MEMORY[0x277CBEAA8] date];
  lastLocationTimeStamp2 = [(WeatherLocationManager *)self lastLocationTimeStamp];
  [date timeIntervalSinceDate:lastLocationTimeStamp2];
  v10 = v9;
  updateInterval = [(WeatherLocationManager *)self updateInterval];

  [(WeatherLocationManager *)self lastLocationAccuracy];
  return v10 > updateInterval || v12 > 1500.0;
}

- (BOOL)isCacheOutOfDate
{
  [(WeatherLocationManager *)self lastLocationUpdateTime];
  if (v3 == 0.0)
  {
    preferences = [(WeatherLocationManager *)self preferences];
    v5 = [preferences readDefaultValueForKey:@"LastLocationUpdateTime"];
    [v5 doubleValue];
    [(WeatherLocationManager *)self setLastLocationUpdateTime:?];
  }

  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  v8 = v7;
  [(WeatherLocationManager *)self lastLocationUpdateTime];
  v10 = v8 - v9;

  return v10 > [(WeatherLocationManager *)self updateInterval];
}

- (BOOL)hasCrossedHourBoundary
{
  v2 = MEMORY[0x277CBEAA8];
  [(WeatherLocationManager *)self lastLocationUpdateTime];
  v3 = [v2 dateWithTimeIntervalSince1970:?];
  date = [MEMORY[0x277CBEAA8] date];
  v5 = DatesAreNotWithinSameHour(v3, date);

  return v5;
}

- (BOOL)isLocationWithInRange:(id)range
{
  v4 = MEMORY[0x277CE41F8];
  rangeCopy = range;
  v6 = [v4 alloc];
  [(WeatherLocationManager *)self lastLocationCoord];
  v8 = v7;
  [(WeatherLocationManager *)self lastLocationCoord];
  v9 = [v6 initWithLatitude:v8 longitude:?];
  [v9 distanceFromLocation:rangeCopy];
  v11 = v10;

  [(WeatherLocationManager *)self distanceFilter];
  LOBYTE(self) = v11 < v12;

  return self;
}

- (void)scheduleDelayedUpdate:(double)update
{
  v15 = *MEMORY[0x277D85DE8];
  delayedUpdateTimer = [(WeatherLocationManager *)self delayedUpdateTimer];

  if (!delayedUpdateTimer)
  {
    v6 = objc_alloc_init(MEMORY[0x277CCA958]);
    v7 = WALogForCategory(4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v6 stringFromTimeInterval:update];
      v13 = 138412290;
      v14 = v8;
      _os_log_impl(&dword_272ACF000, v7, OS_LOG_TYPE_DEFAULT, "Delaying location update for %@", &v13, 0xCu);
    }

    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSince1970];
    [(WeatherLocationManager *)self setNextPlannedUpdate:v10 + update];

    v11 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel_delayedUpdateTimerDidFire_ selector:0 userInfo:0 repeats:update];
    [(WeatherLocationManager *)self setDelayedUpdateTimer:v11];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)cancelDelayedUpdateTimer
{
  delayedUpdateTimer = [(WeatherLocationManager *)self delayedUpdateTimer];
  [delayedUpdateTimer invalidate];

  [(WeatherLocationManager *)self setDelayedUpdateTimer:0];

  [(WeatherLocationManager *)self cancelAccuracyFallbackTimer];
}

- (void)forceLocationUpdate
{
  v3 = WALogForCategory(4);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_272ACF000, v3, OS_LOG_TYPE_DEFAULT, "Forcing location update upon request", v4, 2u);
  }

  [(WeatherLocationManager *)self clearLastLocationUpdateTime];
  [(WeatherLocationManager *)self setLocationTrackingActive:1];
}

- (void)clearLastLocationUpdateTime
{
  [(WeatherLocationManager *)self setLastLocationUpdateTime:0.0];
  preferences = [(WeatherLocationManager *)self preferences];
  v3 = MEMORY[0x277CCABB0];
  [(WeatherLocationManager *)self lastLocationUpdateTime];
  v4 = [v3 numberWithDouble:?];
  [preferences writeDefaultValue:v4 forKey:@"LastLocationUpdateTime"];
}

- (void)clearLocalWeatherUpdateState
{
  [(WeatherLocationManager *)self cancelDelayedUpdateTimer];
  [(WeatherLocationManager *)self setOldestAllowedUpdateTime:-1.0];
  preferences = [(WeatherLocationManager *)self preferences];
  [preferences saveToDiskWithLocalWeatherCity:0];

  preferences2 = [(WeatherLocationManager *)self preferences];
  [preferences2 writeDefaultValue:&unk_2882356D0 forKey:@"LastLocationUpdateTime"];
}

- (void)delayedUpdateTimerDidFire:(id)fire
{
  [(WeatherLocationManager *)self cancelDelayedUpdateTimer];
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  [(WeatherLocationManager *)self setOldestAllowedUpdateTime:?];

  [(WeatherLocationManager *)self setLocationUpdatesEnabled:1];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"BeganTrackingLocationNotification" object:0];
}

- (void)accuracyFallbackTimerDidFire:(id)fire
{
  userInfo = [fire userInfo];
  [(WeatherLocationManager *)self updateLocation:userInfo];
}

- (void)updateLocation:(id)location
{
  v49 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  v6 = WALogForCategory(4);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v43 = 136315394;
    v44 = "[WeatherLocationManager updateLocation:]";
    v45 = 2112;
    v46 = *&locationCopy;
    _os_log_impl(&dword_272ACF000, v6, OS_LOG_TYPE_DEFAULT, "%s %@", &v43, 0x16u);
  }

  if (!locationCopy)
  {
    [(WeatherLocationManager *)a2 updateLocation:?];
  }

  preferences = [(WeatherLocationManager *)self preferences];
  v8 = [locationCopy objectForKeyedSubscript:@"MANAGER"];
  v9 = [locationCopy objectForKeyedSubscript:@"LOCATIONS"];
  lastObject = [v9 lastObject];
  if ([(WeatherLocationManager *)self isInternalBuild])
  {
    v11 = +[WeatherInternalPreferences sharedInternalPreferences];
    v12 = [v11 objectForKey:@"LocationSimulation"];
    bOOLValue = [v12 BOOLValue];

    if (bOOLValue)
    {
      v14 = +[WeatherInternalPreferences sharedInternalPreferences];
      v15 = [v14 objectForKey:@"LocationSimulationHAccuracy"];
      [v15 doubleValue];
      v17 = v16;

      v18 = +[WeatherInternalPreferences sharedInternalPreferences];
      v19 = [v18 objectForKey:@"LocationSimulationLatitude"];
      [v19 floatValue];
      v21 = v20;
      v22 = +[WeatherInternalPreferences sharedInternalPreferences];
      v23 = [v22 objectForKey:@"LocationSimulationLongitude"];
      [v23 floatValue];
      v25 = v24;

      v26 = WALogForCategory(4);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v43 = 134218496;
        v44 = *&v21;
        v45 = 2048;
        v46 = v25;
        v47 = 2048;
        v48 = v17;
        _os_log_impl(&dword_272ACF000, v26, OS_LOG_TYPE_DEFAULT, "Overriding weather location position and accuracy via user defaults - (%f, %f) %fm", &v43, 0x20u);
      }

      v27 = objc_alloc(MEMORY[0x277CE41F8]);
      timestamp = [lastObject timestamp];
      v29 = [v27 initWithCoordinate:timestamp altitude:v21 horizontalAccuracy:v25 verticalAccuracy:0.0 timestamp:{v17, 1.0}];

      v30 = [v9 arrayByAddingObject:v29];

      lastObject = v29;
      v9 = v30;
    }
  }

  delegate = [(WeatherLocationManager *)self delegate];
  v32 = objc_opt_respondsToSelector();

  if (v32)
  {
    v33 = WALogForCategory(4);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      delegate2 = [(WeatherLocationManager *)self delegate];
      v43 = 138412290;
      v44 = delegate2;
      _os_log_impl(&dword_272ACF000, v33, OS_LOG_TYPE_DEFAULT, "Notifying clients of updated location, %@", &v43, 0xCu);
    }

    delegate3 = [(WeatherLocationManager *)self delegate];
    [delegate3 locationManager:v8 didUpdateLocations:v9];

    if ([(WeatherLocationManager *)self isInternalBuild])
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter postNotificationName:@"BeganDataRequestNotification" object:0];
    }
  }

  [(WeatherLocationManager *)self setLocationUpdatesEnabled:0];
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  [(WeatherLocationManager *)self setLastLocationUpdateTime:?];

  v38 = MEMORY[0x277CCABB0];
  [(WeatherLocationManager *)self lastLocationUpdateTime];
  v39 = [v38 numberWithDouble:?];
  [preferences writeDefaultValue:v39 forKey:@"LastLocationUpdateTime"];

  [preferences synchronizeStateToDisk];
  [(WeatherLocationManager *)self scheduleDelayedUpdate:[(WeatherLocationManager *)self updateInterval]];
  [(WeatherLocationManager *)self setOldestAllowedUpdateTime:-1.0];
  v40 = *MEMORY[0x277CE4238];
  locationManager = [(WeatherLocationManager *)self locationManager];
  [locationManager setDesiredAccuracy:v40];

  v42 = *MEMORY[0x277D85DE8];
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  v50[2] = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  locationsCopy = locations;
  if (!self->_locationUpdatesEnabled)
  {
    v8 = WALogForCategory(4);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v45) = 138412290;
      *(&v45 + 4) = locationsCopy;
      _os_log_impl(&dword_272ACF000, v8, OS_LOG_TYPE_DEFAULT, "Received location update after CL is stopped, ignoring: %@", &v45, 0xCu);
    }

    goto LABEL_38;
  }

  [(WeatherLocationManager *)self cancelAccuracyFallbackTimer];
  if ([locationsCopy count])
  {
    v49[0] = @"MANAGER";
    v49[1] = @"LOCATIONS";
    v50[0] = managerCopy;
    v50[1] = locationsCopy;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:2];
    lastObject = [locationsCopy lastObject];
    timestamp = [lastObject timestamp];
    [timestamp timeIntervalSince1970];
    v12 = v11;

    v13 = WALogForCategory(4);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v45) = 138412290;
      *(&v45 + 4) = lastObject;
      _os_log_impl(&dword_272ACF000, v13, OS_LOG_TYPE_DEFAULT, "Received location update: %@", &v45, 0xCu);
    }

    locationManager = [(WeatherLocationManager *)self locationManager];
    _limitsPrecision = [locationManager _limitsPrecision];

    if (_limitsPrecision)
    {
      v16 = 1;
    }

    else
    {
      [lastObject horizontalAccuracy];
      v16 = v17 <= 1500.0;
    }

    [(WeatherLocationManager *)self oldestAllowedUpdateTime];
    v19 = v18;
    [lastObject horizontalAccuracy];
    v21 = v20 < 10000.0;
    v22 = 10.0;
    if (!v21)
    {
      v22 = 20.0;
    }

    v23 = v22;
    [(WeatherLocationManager *)self oldestAllowedUpdateTime];
    v25 = v12 - v24;
    v26 = v23;
    v27 = WALogForCategory(4);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      *&v45 = __PAIR64__(v16, 67109888);
      WORD4(v45) = 1024;
      *(&v45 + 10) = v19 > 0.0;
      HIWORD(v45) = 1024;
      v46 = v25 > v26;
      v47 = 2048;
      v48 = v23;
      _os_log_debug_impl(&dword_272ACF000, v27, OS_LOG_TYPE_DEBUG, "accurate: %d, requested: %d, overdue: %d (timeout: %f)", &v45, 0x1Eu);
    }

    v28 = v19 > 0.0 && v16;
    if (v28 || v25 > v26)
    {
      v32 = WALogForCategory(4);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v45) = 138412290;
        *(&v45 + 4) = lastObject;
        _os_log_impl(&dword_272ACF000, v32, OS_LOG_TYPE_DEFAULT, "New location meet our criteria: %@, use it", &v45, 0xCu);
      }

      [(WeatherLocationManager *)self updateLocation:v8];
    }

    else
    {
      v29 = v19 <= 0.0 || v16;
      v30 = WALogForCategory(4);
      v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
      if (v29)
      {
        if (v31)
        {
          LODWORD(v45) = 67109376;
          DWORD1(v45) = v16;
          WORD4(v45) = 1024;
          *(&v45 + 10) = v19 > 0.0;
          _os_log_impl(&dword_272ACF000, v30, OS_LOG_TYPE_DEFAULT, "Dropping location update - accurate: %d, requested: %d", &v45, 0xEu);
        }
      }

      else
      {
        if (v31)
        {
          LODWORD(v45) = 134217984;
          *(&v45 + 4) = v23;
          _os_log_impl(&dword_272ACF000, v30, OS_LOG_TYPE_DEFAULT, "Location update not accurate enough - waiting %fs for better update", &v45, 0xCu);
        }

        [lastObject coordinate];
        v34 = v33;
        [(WeatherLocationManager *)self lastLocationCoord];
        if (v34 == v35)
        {
          [lastObject coordinate];
          v37 = v36;
          [(WeatherLocationManager *)self lastLocationCoord];
          if (v37 == v38)
          {
            v39 = WALogForCategory(4);
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v45) = 0;
              _os_log_impl(&dword_272ACF000, v39, OS_LOG_TYPE_DEFAULT, "Temporarily boosting location accuracy", &v45, 2u);
            }

            v40 = *MEMORY[0x277CE4228];
            locationManager2 = [(WeatherLocationManager *)self locationManager];
            [locationManager2 setDesiredAccuracy:v40];
          }
        }

        v30 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel_accuracyFallbackTimerDidFire_ selector:v8 userInfo:0 repeats:{v23, v45}];
        [(WeatherLocationManager *)self setAccuracyFallbackTimer:v30];
      }
    }

    [lastObject coordinate];
    [(WeatherLocationManager *)self setLastLocationCoord:?];
    timestamp2 = [lastObject timestamp];
    [(WeatherLocationManager *)self setLastLocationTimeStamp:timestamp2];

    [lastObject horizontalAccuracy];
    *&v43 = v43;
    [(WeatherLocationManager *)self setLastLocationAccuracy:v43];

LABEL_38:
  }

  v44 = *MEMORY[0x277D85DE8];
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  errorCopy = error;
  v5 = WALogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [WeatherLocationManager locationManager:errorCopy didFailWithError:v5];
  }
}

- (void)setLocationUpdatesEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v13 = *MEMORY[0x277D85DE8];
  if ([(WeatherLocationManager *)self locationUpdatesEnabled]!= enabled)
  {
    v5 = WALogForCategory(4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "Disabling";
      if (enabledCopy)
      {
        v6 = "Enabling";
      }

      v11 = 136315138;
      v12 = v6;
      _os_log_impl(&dword_272ACF000, v5, OS_LOG_TYPE_DEFAULT, "%s location updates", &v11, 0xCu);
    }

    v7 = WALogForCategory(4);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (enabledCopy)
    {
      if (v8)
      {
        LOWORD(v11) = 0;
        _os_log_impl(&dword_272ACF000, v7, OS_LOG_TYPE_DEFAULT, "Start updating location", &v11, 2u);
      }

      locationManager = [(WeatherLocationManager *)self locationManager];
      [locationManager startUpdatingLocation];
    }

    else
    {
      if (v8)
      {
        LOWORD(v11) = 0;
        _os_log_impl(&dword_272ACF000, v7, OS_LOG_TYPE_DEFAULT, "Stop updating location", &v11, 2u);
      }

      locationManager = [(WeatherLocationManager *)self locationManager];
      [locationManager stopUpdatingLocation];
    }

    self->_locationUpdatesEnabled = enabledCopy;
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)cancelAccuracyFallbackTimer
{
  accuracyFallbackTimer = [(WeatherLocationManager *)self accuracyFallbackTimer];
  [accuracyFallbackTimer invalidate];

  [(WeatherLocationManager *)self setAccuracyFallbackTimer:0];
}

- (id)location
{
  v34 = *MEMORY[0x277D85DE8];
  if (-[WeatherLocationManager isInternalBuild](self, "isInternalBuild") && (+[WeatherInternalPreferences sharedInternalPreferences](WeatherInternalPreferences, "sharedInternalPreferences"), v3 = objc_claimAutoreleasedReturnValue(), [v3 objectForKey:@"LocationSimulation"], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "BOOLValue"), v4, v3, v5))
  {
    v6 = +[WeatherInternalPreferences sharedInternalPreferences];
    v7 = [v6 objectForKey:@"LocationSimulationHAccuracy"];
    [v7 doubleValue];
    v9 = v8;

    v10 = +[WeatherInternalPreferences sharedInternalPreferences];
    v11 = [v10 objectForKey:@"LocationSimulationLatitude"];
    [v11 floatValue];
    v13 = v12;
    v14 = +[WeatherInternalPreferences sharedInternalPreferences];
    v15 = [v14 objectForKey:@"LocationSimulationLongitude"];
    [v15 floatValue];
    v17 = v16;

    v18 = WALogForCategory(4);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 134218496;
      v29 = v13;
      v30 = 2048;
      v31 = v17;
      v32 = 2048;
      v33 = v9;
      _os_log_impl(&dword_272ACF000, v18, OS_LOG_TYPE_DEFAULT, "Overriding location position and accuracy via user defaults - (%f, %f) %fm", &v28, 0x20u);
    }

    v19 = objc_alloc(MEMORY[0x277CE41F8]);
    date = [MEMORY[0x277CBEAA8] date];
    location2 = [v19 initWithCoordinate:date altitude:v13 horizontalAccuracy:v17 verticalAccuracy:0.0 timestamp:{v9, 1.0}];
  }

  else
  {
    v22 = WALogForCategory(4);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      locationManager = [(WeatherLocationManager *)self locationManager];
      location = [locationManager location];
      v28 = 138412290;
      v29 = *&location;
      _os_log_impl(&dword_272ACF000, v22, OS_LOG_TYPE_DEFAULT, "Requested location from location manager, the location saved is:%@", &v28, 0xCu);
    }

    date = [(WeatherLocationManager *)self locationManager];
    location2 = [date location];
  }

  v25 = location2;

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

- (CLLocationManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CLLocationCoordinate2D)lastLocationCoord
{
  latitude = self->_lastLocationCoord.latitude;
  longitude = self->_lastLocationCoord.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (void)updateLocation:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"WeatherLocationManager.m" lineNumber:393 description:{@"Invalid parameter not satisfying: %@", @"info"}];
}

- (void)locationManager:(uint64_t)a1 didFailWithError:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_272ACF000, a2, OS_LOG_TYPE_ERROR, "Location manager encountered an error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end