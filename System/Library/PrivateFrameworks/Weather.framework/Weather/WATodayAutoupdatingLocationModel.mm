@interface WATodayAutoupdatingLocationModel
- (BOOL)_reloadForecastData:(BOOL)a3;
- (BOOL)shouldNotUseUpdatedLocation;
- (BOOL)shouldUseNewLocation:(id)a3 oldLocation:(id)a4;
- (BOOL)updateLocationTrackingStatus;
- (WATodayAutoupdatingLocationModel)init;
- (WATodayAutoupdatingLocationModel)initWithPreferences:(id)a3 effectiveBundleIdentifier:(id)a4;
- (double)minDistanceChangeInMeters;
- (double)minTimeBetweenUpdates;
- (id)forecastModel;
- (void)_executeLocationUpdateForFirstWeatherCityWithCompletion:(id)a3;
- (void)_executeLocationUpdateForLocalWeatherCityWithCompletion:(id)a3;
- (void)_executeLocationUpdateWithCompletion:(id)a3;
- (void)_kickstartLocationManager;
- (void)_persistStateWithModel:(id)a3;
- (void)_teardownLocationManager;
- (void)_willDeliverForecastModel:(id)a3;
- (void)checkIfNeedsToUpdate;
- (void)clearLocationUpdateState;
- (void)dealloc;
- (void)locationManager:(id)a3 didChangeAuthorizationStatus:(int)a4;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
- (void)setCitySource:(unint64_t)a3 fireNotification:(BOOL)a4;
- (void)setLocationServicesActive:(BOOL)a3;
- (void)setPreferences:(id)a3;
- (void)syncLastUpdateTime;
- (void)ubiquitousDefaultsDidChange:(id)a3;
- (void)weatherPreferencesWereSynchronized;
@end

@implementation WATodayAutoupdatingLocationModel

- (WATodayAutoupdatingLocationModel)initWithPreferences:(id)a3 effectiveBundleIdentifier:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v33.receiver = self;
  v33.super_class = WATodayAutoupdatingLocationModel;
  v8 = [(WATodayModel *)&v33 init];
  if (v8)
  {
    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __82__WATodayAutoupdatingLocationModel_initWithPreferences_effectiveBundleIdentifier___block_invoke;
    v30 = &unk_279E67CE8;
    v9 = v6;
    v31 = v9;
    v32 = v7;
    [(WATodayAutoupdatingLocationModel *)v8 setWeatherLocationManagerGenerator:&v27];
    [(WATodayAutoupdatingLocationModel *)v8 setStopUpdateIfNeeded:0, v27, v28, v29, v30];
    [(WATodayAutoupdatingLocationModel *)v8 setPreferences:v9];
    v10 = [(WATodayModel *)v8 lastUpdateDate];

    if (!v10)
    {
      v11 = MEMORY[0x277CBEAA8];
      v12 = [v9 readDefaultValueForKey:@"LastWidgetForecastUpdateDate"];
      [v12 doubleValue];
      v13 = [v11 dateWithTimeIntervalSince1970:?];
      [(WATodayModel *)v8 setLastUpdateDate:v13];
    }

    v14 = [MEMORY[0x277D7B2B0] sharedInstance];
    v15 = [v14 settings];

    [v15 locationUpdateMinTimeInterval];
    v8->_minTimeBetweenUpdates = v16;
    [v15 locationUpdateMinDistance];
    v8->_minDistanceChangeInMeters = v17;
    v18 = [MEMORY[0x277CBEAA8] distantPast];
    lastLocationUpdateDate = v8->_lastLocationUpdateDate;
    v8->_lastLocationUpdateDate = v18;

    v20 = WALogForCategory(4);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      minTimeBetweenUpdates = v8->_minTimeBetweenUpdates;
      minDistanceChangeInMeters = v8->_minDistanceChangeInMeters;
      *buf = 134218240;
      v35 = minTimeBetweenUpdates;
      v36 = 2048;
      v37 = minDistanceChangeInMeters;
      _os_log_impl(&dword_272ACF000, v20, OS_LOG_TYPE_DEFAULT, "[WATodayAutoupdatingLocationModel] initialize with minTimeBetweenUpdates: %f, minDistanceChangeInMeters: %f", buf, 0x16u);
    }

    v23 = [MEMORY[0x277CCA9A0] defaultCenter];
    [v23 addObserver:v8 selector:sel_weatherPreferencesWereSynchronized name:@"WeatherPrefAppToPrefsDidUpdateNotification" object:0 suspensionBehavior:2];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v8, WeatherCityListChanged, @"com.apple.weather.WeatherCityListPrefsChangedNotification", 0, 1024);
  }

  v25 = *MEMORY[0x277D85DE8];
  return v8;
}

WeatherLocationManager *__82__WATodayAutoupdatingLocationModel_initWithPreferences_effectiveBundleIdentifier___block_invoke(uint64_t a1)
{
  v1 = [[WeatherLocationManager alloc] initWithPreferences:*(a1 + 32) effectiveBundleIdentifier:*(a1 + 40)];

  return v1;
}

- (WATodayAutoupdatingLocationModel)init
{
  v3 = objc_opt_new();
  v4 = [(WATodayAutoupdatingLocationModel *)self initWithPreferences:v3 effectiveBundleIdentifier:0];

  return v4;
}

- (double)minTimeBetweenUpdates
{
  result = self->_minTimeBetweenUpdates;
  if (result <= 0.0)
  {
    self->_minTimeBetweenUpdates = 1800.0;
    return 1800.0;
  }

  return result;
}

- (double)minDistanceChangeInMeters
{
  result = self->_minDistanceChangeInMeters;
  if (result <= 0.0)
  {
    self->_minDistanceChangeInMeters = 1500.0;
    return 1500.0;
  }

  return result;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCA9A0] defaultCenter];
  [v3 removeObserver:self];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.weather.WeatherCityListPrefsChangedNotification", 0);
  [(WATodayAutoupdatingLocationModel *)self _teardownLocationManager];
  v5.receiver = self;
  v5.super_class = WATodayAutoupdatingLocationModel;
  [(WATodayModel *)&v5 dealloc];
}

- (void)clearLocationUpdateState
{
  v2 = [(WATodayAutoupdatingLocationModel *)self locationManager];
  [v2 stopLocationUpdate];
}

- (void)setPreferences:(id)a3
{
  v5 = a3;
  preferences = self->_preferences;
  if (preferences != v5)
  {
    v7 = v5;
    [(WeatherPreferences *)preferences setSyncDelegate:0];
    objc_storeStrong(&self->_preferences, a3);
    preferences = [(WeatherPreferences *)self->_preferences setSyncDelegate:self];
    v5 = v7;
  }

  MEMORY[0x2821F96F8](preferences, v5);
}

- (id)forecastModel
{
  v9.receiver = self;
  v9.super_class = WATodayAutoupdatingLocationModel;
  v3 = [(WATodayModel *)&v9 forecastModel];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
LABEL_5:
    v6 = v5;
    goto LABEL_6;
  }

  if ([(WATodayAutoupdatingLocationModel *)self _reloadForecastData:0])
  {
    v8.receiver = self;
    v8.super_class = WATodayAutoupdatingLocationModel;
    v5 = [(WATodayModel *)&v8 forecastModel];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_6:

  return v6;
}

- (void)setCitySource:(unint64_t)a3 fireNotification:(BOOL)a4
{
  if (self->_citySource != a3)
  {
    v4 = a4;
    self->_citySource = a3;
    [(WATodayAutoupdatingLocationModel *)self _reloadForecastData:0];
    if (v4)
    {

      [(WATodayModel *)self _fireTodayModelWantsUpdate];
    }
  }
}

- (void)setLocationServicesActive:(BOOL)a3
{
  if (self->_locationServicesActive != a3)
  {
    self->_locationServicesActive = a3;
    if (a3)
    {
      [(WATodayAutoupdatingLocationModel *)self _kickstartLocationManager];
    }

    else
    {
      [(WATodayAutoupdatingLocationModel *)self _teardownLocationManager];
    }
  }
}

- (void)locationManager:(id)a3 didChangeAuthorizationStatus:(int)a4
{
  v9 = [(WATodayAutoupdatingLocationModel *)self preferences];
  v6 = [(WATodayAutoupdatingLocationModel *)self locationManager];
  if ([v6 locationTrackingIsReady])
  {
    if (a4 >= 3)
    {
      [v9 setLocalWeatherEnabled:1];
      [(WATodayAutoupdatingLocationModel *)self setIsLocationTrackingEnabled:1];
      [v6 setLocationTrackingActive:1];
      v8 = [(WATodayAutoupdatingLocationModel *)self locationManager];
      [v8 clearLocalWeatherUpdateState];

      [(WATodayAutoupdatingLocationModel *)self setCitySource:1];
      goto LABEL_8;
    }

    [v9 setLocalWeatherEnabled:0];
    [v6 setLocationTrackingActive:0];
    [(WATodayAutoupdatingLocationModel *)self setIsLocationTrackingEnabled:0];
    v7 = [(WATodayAutoupdatingLocationModel *)self locationManager];
    [v7 clearLocalWeatherUpdateState];
  }

  else if (a4 > 2)
  {
    goto LABEL_8;
  }

  [(WATodayAutoupdatingLocationModel *)self setCitySource:[(WATodayAutoupdatingLocationModel *)self fallbackCitySource]];
  if (!a4)
  {
    [v6 askForLocationManagerAuthorization];
  }

LABEL_8:
  [(WATodayModel *)self _fireTodayModelWantsUpdate];
}

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a4;
  isLocationTrackingEnabled = self->_isLocationTrackingEnabled;
  v7 = WALogForCategory(4);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (isLocationTrackingEnabled)
  {
    if (v8)
    {
      v9 = [(__CFString *)v5 count];
      if (v9)
      {
        v10 = [(__CFString *)v5 lastObject];
      }

      else
      {
        v10 = @"No new location";
      }

      v12 = 138412290;
      v13 = v10;
      _os_log_impl(&dword_272ACF000, v7, OS_LOG_TYPE_DEFAULT, "[WATodayAutoupdatingLocationModel] Received location update: %@", &v12, 0xCu);
      if (v9)
      {
      }
    }

    [(WATodayModel *)self _fireTodayModelWantsUpdate];
  }

  else
  {
    if (v8)
    {
      v12 = 138412290;
      v13 = v5;
      _os_log_impl(&dword_272ACF000, v7, OS_LOG_TYPE_DEFAULT, "Received location update after CL is stopped, ignoring: %@", &v12, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_kickstartLocationManager
{
  v3 = [(WATodayAutoupdatingLocationModel *)self WeatherLocationManagerGenerator];
  v4 = v3[2]();
  if (v4)
  {
    [(WATodayAutoupdatingLocationModel *)self setLocationManager:v4];
  }

  else
  {
    v5 = objc_opt_new();
    [(WATodayAutoupdatingLocationModel *)self setLocationManager:v5];
  }

  [(WATodayAutoupdatingLocationModel *)self minTimeBetweenUpdates];
  v7 = v6;
  v8 = [(WATodayAutoupdatingLocationModel *)self locationManager];
  [v8 setUpdateInterval:v7];

  v9 = [(WATodayAutoupdatingLocationModel *)self locationManager];
  [v9 setDelegate:self];

  v10 = [MEMORY[0x277CBFC10] locationServicesEnabled];
  v11 = [(WATodayAutoupdatingLocationModel *)self locationManager];
  v12 = [v11 localWeatherAuthorized];

  v13 = [(WATodayAutoupdatingLocationModel *)self preferences];
  [v13 setLocalWeatherEnabled:v10 & v12];

  if (v10 && (v12 & 1) != 0)
  {
    v14 = 1;
  }

  else
  {
    v14 = [(WATodayAutoupdatingLocationModel *)self fallbackCitySource];
  }

  [(WATodayAutoupdatingLocationModel *)self setCitySource:v14 fireNotification:0];
  if ((v12 & 1) == 0)
  {
    v15 = [(WATodayAutoupdatingLocationModel *)self locationManager];
    [v15 askForLocationManagerAuthorization];
  }

  [(WATodayAutoupdatingLocationModel *)self setIsLocationTrackingEnabled:v10];
  v16 = [(WATodayAutoupdatingLocationModel *)self locationManager];
  [v16 setLocationTrackingActive:1];
}

- (void)checkIfNeedsToUpdate
{
  if (![(WATodayAutoupdatingLocationModel *)self updateLocationTrackingStatus])
  {
    v3 = WALogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_272ACF000, v3, OS_LOG_TYPE_DEFAULT, "Check if needs to update", buf, 2u);
    }

    v4 = [(WATodayAutoupdatingLocationModel *)self locationManager];
    if (([v4 isLocalStaleOrOutOfDate] & 1) == 0)
    {
      v5 = [(WATodayAutoupdatingLocationModel *)self locationManager];
      if (![v5 isCacheOutOfDate])
      {
        v9 = [(WATodayModel *)self hasCrossedHourlyBoundary];

        if (!v9)
        {
          v10 = WALogForCategory(0);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            *v12 = 0;
            _os_log_impl(&dword_272ACF000, v10, OS_LOG_TYPE_DEFAULT, "Check current location to see if movement is within distance filter", v12, 2u);
          }

          [(WATodayAutoupdatingLocationModel *)self setStopUpdateIfNeeded:1];
          v7 = [(WATodayAutoupdatingLocationModel *)self locationManager];
          [v7 updateLocationWithNoConditionCheck];
          goto LABEL_11;
        }

LABEL_8:
        v6 = WALogForCategory(0);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v13 = 0;
          _os_log_impl(&dword_272ACF000, v6, OS_LOG_TYPE_DEFAULT, "Forced location update", v13, 2u);
        }

        v7 = [(WATodayAutoupdatingLocationModel *)self locationManager];
        [v7 forceLocationUpdate];
LABEL_11:

        goto LABEL_12;
      }
    }

    goto LABEL_8;
  }

LABEL_12:
  v8 = WALogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_272ACF000, v8, OS_LOG_TYPE_DEFAULT, "Update location tracking status", v11, 2u);
  }
}

- (void)_teardownLocationManager
{
  v3 = [(WATodayAutoupdatingLocationModel *)self locationManager];
  [v3 setLocationTrackingReady:0 activelyTracking:0 watchKitExtension:0];

  v4 = [(WATodayAutoupdatingLocationModel *)self locationManager];
  [v4 setDelegate:0];

  [(WATodayAutoupdatingLocationModel *)self setLocationManager:0];
  v5 = [(WATodayAutoupdatingLocationModel *)self fallbackCitySource];

  [(WATodayAutoupdatingLocationModel *)self setCitySource:v5 fireNotification:0];
}

- (void)syncLastUpdateTime
{
  v3 = [(WATodayAutoupdatingLocationModel *)self preferences];
  v4 = MEMORY[0x277CCABB0];
  v5 = [(WATodayModel *)self lastUpdateDate];
  [v5 timeIntervalSince1970];
  v6 = [v4 numberWithDouble:?];
  [v3 writeDefaultValue:v6 forKey:@"LastWidgetForecastUpdateDate"];

  v7 = [(WATodayAutoupdatingLocationModel *)self preferences];
  [v7 synchronizeStateToDisk];
}

- (BOOL)updateLocationTrackingStatus
{
  v3 = [(WATodayAutoupdatingLocationModel *)self locationManager];

  if (v3)
  {
    v4 = [MEMORY[0x277CBFC10] locationServicesEnabled];
    LODWORD(v3) = v4 & ![(WATodayAutoupdatingLocationModel *)self isLocationTrackingEnabled];
    -[WATodayAutoupdatingLocationModel setIsLocationTrackingEnabled:](self, "setIsLocationTrackingEnabled:", [MEMORY[0x277CBFC10] locationServicesEnabled]);
  }

  return v3;
}

- (void)weatherPreferencesWereSynchronized
{
  if ([(WATodayAutoupdatingLocationModel *)self _reloadForecastData:1])
  {
    v3 = [(WATodayAutoupdatingLocationModel *)self forecastModel];
    [(WATodayModel *)self _fireTodayModelForecastWasUpdated:v3];
  }
}

- (void)_executeLocationUpdateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(WATodayAutoupdatingLocationModel *)self citySource];
  if (v5 == 2)
  {
    [(WATodayAutoupdatingLocationModel *)self _executeLocationUpdateForFirstWeatherCityWithCompletion:v4];
  }

  else if (v5 == 1)
  {
    [(WATodayAutoupdatingLocationModel *)self _executeLocationUpdateForLocalWeatherCityWithCompletion:v4];
  }

  else
  {
    v6 = WALogForCategory(4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [WATodayAutoupdatingLocationModel _executeLocationUpdateWithCompletion:v6];
    }

    if (v4)
    {
      v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.weather.errorDomain" code:-1 userInfo:0];
      v4[2](v4, 0, v7);
    }
  }
}

- (void)_willDeliverForecastModel:(id)a3
{
  v4 = a3;
  v5 = [(WATodayAutoupdatingLocationModel *)self citySource];
  v6 = WACityFromForecastModel(v4);
  [v4 setCity:v6];

  v7 = [v4 city];
  [v7 setIsLocalWeatherCity:v5 == 1];

  v8.receiver = self;
  v8.super_class = WATodayAutoupdatingLocationModel;
  [(WATodayModel *)&v8 _willDeliverForecastModel:v4];
}

- (BOOL)shouldNotUseUpdatedLocation
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [(WATodayAutoupdatingLocationModel *)self preferences];
  v4 = WATodayLoadSavedLastForecastModelFromPreferences(v3);

  v5 = [(WATodayAutoupdatingLocationModel *)self locationManager];
  v6 = [v5 location];

  v7 = [v4 location];
  v8 = [(WATodayAutoupdatingLocationModel *)self forecastModel];
  v9 = [v8 location];
  v10 = [v9 geoLocation];

  v11 = WALogForCategory(4);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138412290;
    v25 = v7;
    _os_log_impl(&dword_272ACF000, v11, OS_LOG_TYPE_DEFAULT, "savedModelLocation is %@", &v24, 0xCu);
  }

  v12 = 0;
  if (v7 && v6)
  {
    v13 = [v7 geoLocation];
    [v13 distanceFromLocation:v6];
    v15 = v14;
    v16 = [(WATodayAutoupdatingLocationModel *)self locationManager];
    [v16 distanceFilter];
    v12 = v15 < v17;
  }

  if (v10)
  {
    [v10 distanceFromLocation:v6];
    v19 = v18;
    v20 = [(WATodayAutoupdatingLocationModel *)self locationManager];
    [v20 distanceFilter];
    v12 &= v19 < v21;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)shouldUseNewLocation:(id)a3 oldLocation:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = COERCE_DOUBLE(a3);
  v7 = a4;
  if (v7)
  {
    if (v6 == 0.0)
    {
      v16 = WALogForCategory(4);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v30) = 0;
        v20 = "[WATodayAutoupdatingLocationModel] invalid new location, bailing";
        v21 = v16;
        v22 = 2;
        goto LABEL_15;
      }

LABEL_16:
      v27 = 0;
      goto LABEL_17;
    }

    v8 = [MEMORY[0x277CBEAA8] date];
    v9 = [(WATodayAutoupdatingLocationModel *)self lastLocationUpdateDate];
    [v8 timeIntervalSinceDate:v9];
    v11 = v10;

    [*&v6 distanceFromLocation:v7];
    v13 = v12;
    [(WATodayAutoupdatingLocationModel *)self minTimeBetweenUpdates];
    if (v11 < v14)
    {
      [(WATodayAutoupdatingLocationModel *)self minDistanceChangeInMeters];
      if (v13 < v15)
      {
        v16 = WALogForCategory(4);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          [(WATodayAutoupdatingLocationModel *)self minTimeBetweenUpdates];
          v18 = v17;
          [(WATodayAutoupdatingLocationModel *)self minDistanceChangeInMeters];
          v30 = 134218752;
          v31 = v11;
          v32 = 2048;
          v33 = v13;
          v34 = 2048;
          v35 = v18;
          v36 = 2048;
          v37 = v19;
          v20 = "[WATodayAutoupdatingLocationModel] Dropping location received %f seconds since the last update, and %f meters from the previous location. Min time in seconds: %f, min change in meters: %f";
          v21 = v16;
          v22 = 42;
LABEL_15:
          _os_log_impl(&dword_272ACF000, v21, OS_LOG_TYPE_DEFAULT, v20, &v30, v22);
          goto LABEL_16;
        }

        goto LABEL_16;
      }
    }

    v23 = WALogForCategory(4);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      [(WATodayAutoupdatingLocationModel *)self minTimeBetweenUpdates];
      v25 = v24;
      [(WATodayAutoupdatingLocationModel *)self minDistanceChangeInMeters];
      v30 = 138413314;
      v31 = v6;
      v32 = 2048;
      v33 = v11;
      v34 = 2048;
      v35 = v13;
      v36 = 2048;
      v37 = v25;
      v38 = 2048;
      v39 = v26;
      _os_log_impl(&dword_272ACF000, v23, OS_LOG_TYPE_DEFAULT, "[WATodayAutoupdatingLocationModel] Use new location: %@, %f seconds since the last update, and %f meters from the previous location. Min time in seconds: %f, min change in meters: %f", &v30, 0x34u);
    }

    v16 = [MEMORY[0x277CBEAA8] date];
    [(WATodayAutoupdatingLocationModel *)self setLastLocationUpdateDate:v16];
  }

  else
  {
    v16 = WALogForCategory(4);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v30) = 0;
      _os_log_impl(&dword_272ACF000, v16, OS_LOG_TYPE_DEFAULT, "[WATodayAutoupdatingLocationModel] we do not have an old location, we shall use the new one", &v30, 2u);
    }
  }

  v27 = 1;
LABEL_17:

  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

- (void)_executeLocationUpdateForLocalWeatherCityWithCompletion:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WATodayAutoupdatingLocationModel *)self preferences];
  v6 = WATodayLoadSavedLastForecastModelFromPreferences(v5);

  v7 = [(WATodayAutoupdatingLocationModel *)self locationManager];
  v8 = [v7 location];

  v9 = [v6 location];
  v10 = WALogForCategory(4);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v31 = v8;
    v32 = 2112;
    v33 = v9;
    _os_log_impl(&dword_272ACF000, v10, OS_LOG_TYPE_DEFAULT, "start updating location: %@, lastKnownLocation is %@", buf, 0x16u);
  }

  if (v9 && ([v6 location], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "geoLocation"), v12 = objc_claimAutoreleasedReturnValue(), v13 = -[WATodayAutoupdatingLocationModel shouldUseNewLocation:oldLocation:](self, "shouldUseNewLocation:oldLocation:", v8, v12), v12, v11, !v13))
  {
    if ([(WATodayAutoupdatingLocationModel *)self stopUpdateIfNeeded])
    {
      v25 = WALogForCategory(4);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_272ACF000, v25, OS_LOG_TYPE_DEFAULT, "Latest location is within 500m range of last one, do not need to update", buf, 2u);
      }

      v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.weather.errorDomain" code:8 userInfo:0];
      [(WATodayAutoupdatingLocationModel *)self setStopUpdateIfNeeded:0];
    }

    else
    {
      v14 = 0;
    }

    v26 = WALogForCategory(4);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_272ACF000, v26, OS_LOG_TYPE_DEFAULT, "last location is still good, use that", buf, 2u);
    }

    v4[2](v4, v9, v14);
  }

  else
  {
    v14 = v8;
    if (v14)
    {
      v15 = [(WATodayAutoupdatingLocationModel *)self geocodeRequest];

      if (v15)
      {
        v16 = [(WATodayAutoupdatingLocationModel *)self geocodeRequest];
        [v16 cancel];
      }

      if (WAIsPadAndChinaSKU())
      {
        WAPresentFirstUsageDialogIfNeeded();
      }

      v17 = objc_alloc(MEMORY[0x277D7B278]);
      [v14 coordinate];
      v19 = v18;
      v21 = v20;
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __92__WATodayAutoupdatingLocationModel__executeLocationUpdateForLocalWeatherCityWithCompletion___block_invoke;
      v28[3] = &unk_279E67D38;
      v29 = v4;
      v22 = [v17 initWithCoordinate:v28 resultHandler:{v19, v21}];
      [(WATodayAutoupdatingLocationModel *)self setGeocodeRequest:v22];

      v23 = [(WATodayAutoupdatingLocationModel *)self geocodeRequest];
      [v23 start];

      v24 = v29;
      goto LABEL_17;
    }

    if (v4)
    {
      v24 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.weather.errorDomain" code:4 userInfo:0];
      v4[2](v4, 0, v24);
LABEL_17:
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __92__WATodayAutoupdatingLocationModel__executeLocationUpdateForLocalWeatherCityWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __92__WATodayAutoupdatingLocationModel__executeLocationUpdateForLocalWeatherCityWithCompletion___block_invoke_2;
  block[3] = &unk_279E67D10;
  v10 = v5;
  v11 = v6;
  v12 = *(a1 + 32);
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __92__WATodayAutoupdatingLocationModel__executeLocationUpdateForLocalWeatherCityWithCompletion___block_invoke_2(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = WALogForCategory(4);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    v9 = 138412546;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_272ACF000, v2, OS_LOG_TYPE_DEFAULT, "geocodeRequest ended with newLocation: %@, error: %@", &v9, 0x16u);
  }

  v5 = a1[5];
  v6 = a1[4];
  result = (*(a1[6] + 16))();
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_executeLocationUpdateForFirstWeatherCityWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(WATodayAutoupdatingLocationModel *)self preferences];
  v5 = WATodayLoadSavedFirstCityFromPreferences(v4);

  [(WATodayModel *)self setForecastModel:v5];
  if (v7)
  {
    v6 = [v5 location];
    v7[2](v7, v6, 0);
  }
}

- (void)ubiquitousDefaultsDidChange:(id)a3
{
  if ([(WATodayAutoupdatingLocationModel *)self _reloadForecastData:0])
  {
    v4 = [(WATodayAutoupdatingLocationModel *)self forecastModel];
    [(WATodayModel *)self _fireTodayModelForecastWasUpdated:v4];
  }
}

- (BOOL)_reloadForecastData:(BOOL)a3
{
  v3 = a3;
  v5 = [(WATodayAutoupdatingLocationModel *)self citySource];
  v12.receiver = self;
  v12.super_class = WATodayAutoupdatingLocationModel;
  v6 = [(WATodayModel *)&v12 forecastModel];
  v7 = [(WATodayAutoupdatingLocationModel *)self preferences];
  v8 = v7;
  if (v5 == 1)
  {
    WATodayLoadSavedLastForecastModelFromPreferences(v7);
  }

  else
  {
    WATodayLoadSavedFirstCityFromPreferences(v7);
  }
  v9 = ;

  if (v9 && v6)
  {
    if ([v9 isEqual:v6])
    {
LABEL_7:
      v10 = 0;
      goto LABEL_12;
    }
  }

  else if (!v9)
  {
    goto LABEL_7;
  }

  [(WATodayModel *)self setForecastModel:v9];
  if (v3)
  {
    [(WATodayModel *)self _fireTodayModelForecastWasUpdated:v9];
  }

  v10 = 1;
LABEL_12:

  return v10;
}

- (void)_persistStateWithModel:(id)a3
{
  v4 = a3;
  if ([v4 isPopulated])
  {
    v5 = [v4 city];
    if (v5)
    {
      v6 = v5;
      [v5 updateCityForModel:v4];
    }

    else
    {
      v6 = WACityFromForecastModel(v4);
      if (!v6)
      {
        goto LABEL_13;
      }
    }

    v7 = [(WATodayAutoupdatingLocationModel *)self citySource];
    v8 = [(WATodayAutoupdatingLocationModel *)self preferences];
    v9 = v8;
    if (v7 == 1)
    {
      [v8 saveToDiskWithLocalWeatherCity:v6];
    }

    else
    {
      v10 = [v8 loadSavedCities];
      v11 = [v10 na_filter:&__block_literal_global_0];
      v12 = [v11 mutableCopy];

      if ([v12 count])
      {
        [v12 setObject:v6 atIndexedSubscript:0];
        v13 = [(WATodayAutoupdatingLocationModel *)self preferences];
        [v13 saveToDiskWithCities:v12];
      }

      else
      {
        v13 = WALogForCategory(1);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *v14 = 0;
          _os_log_impl(&dword_272ACF000, v13, OS_LOG_TYPE_DEFAULT, "unable to persist first weather city; preferences doesn't currently have any cities", v14, 2u);
        }
      }
    }
  }

LABEL_13:
}

@end