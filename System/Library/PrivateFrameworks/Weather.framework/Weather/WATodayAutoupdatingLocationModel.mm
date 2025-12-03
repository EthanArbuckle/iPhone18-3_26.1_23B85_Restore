@interface WATodayAutoupdatingLocationModel
- (BOOL)_reloadForecastData:(BOOL)data;
- (BOOL)shouldNotUseUpdatedLocation;
- (BOOL)shouldUseNewLocation:(id)location oldLocation:(id)oldLocation;
- (BOOL)updateLocationTrackingStatus;
- (WATodayAutoupdatingLocationModel)init;
- (WATodayAutoupdatingLocationModel)initWithPreferences:(id)preferences effectiveBundleIdentifier:(id)identifier;
- (double)minDistanceChangeInMeters;
- (double)minTimeBetweenUpdates;
- (id)forecastModel;
- (void)_executeLocationUpdateForFirstWeatherCityWithCompletion:(id)completion;
- (void)_executeLocationUpdateForLocalWeatherCityWithCompletion:(id)completion;
- (void)_executeLocationUpdateWithCompletion:(id)completion;
- (void)_kickstartLocationManager;
- (void)_persistStateWithModel:(id)model;
- (void)_teardownLocationManager;
- (void)_willDeliverForecastModel:(id)model;
- (void)checkIfNeedsToUpdate;
- (void)clearLocationUpdateState;
- (void)dealloc;
- (void)locationManager:(id)manager didChangeAuthorizationStatus:(int)status;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)setCitySource:(unint64_t)source fireNotification:(BOOL)notification;
- (void)setLocationServicesActive:(BOOL)active;
- (void)setPreferences:(id)preferences;
- (void)syncLastUpdateTime;
- (void)ubiquitousDefaultsDidChange:(id)change;
- (void)weatherPreferencesWereSynchronized;
@end

@implementation WATodayAutoupdatingLocationModel

- (WATodayAutoupdatingLocationModel)initWithPreferences:(id)preferences effectiveBundleIdentifier:(id)identifier
{
  v38 = *MEMORY[0x277D85DE8];
  preferencesCopy = preferences;
  identifierCopy = identifier;
  v33.receiver = self;
  v33.super_class = WATodayAutoupdatingLocationModel;
  v8 = [(WATodayModel *)&v33 init];
  if (v8)
  {
    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __82__WATodayAutoupdatingLocationModel_initWithPreferences_effectiveBundleIdentifier___block_invoke;
    v30 = &unk_279E67CE8;
    v9 = preferencesCopy;
    v31 = v9;
    v32 = identifierCopy;
    [(WATodayAutoupdatingLocationModel *)v8 setWeatherLocationManagerGenerator:&v27];
    [(WATodayAutoupdatingLocationModel *)v8 setStopUpdateIfNeeded:0, v27, v28, v29, v30];
    [(WATodayAutoupdatingLocationModel *)v8 setPreferences:v9];
    lastUpdateDate = [(WATodayModel *)v8 lastUpdateDate];

    if (!lastUpdateDate)
    {
      v11 = MEMORY[0x277CBEAA8];
      v12 = [v9 readDefaultValueForKey:@"LastWidgetForecastUpdateDate"];
      [v12 doubleValue];
      v13 = [v11 dateWithTimeIntervalSince1970:?];
      [(WATodayModel *)v8 setLastUpdateDate:v13];
    }

    mEMORY[0x277D7B2B0] = [MEMORY[0x277D7B2B0] sharedInstance];
    settings = [mEMORY[0x277D7B2B0] settings];

    [settings locationUpdateMinTimeInterval];
    v8->_minTimeBetweenUpdates = v16;
    [settings locationUpdateMinDistance];
    v8->_minDistanceChangeInMeters = v17;
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    lastLocationUpdateDate = v8->_lastLocationUpdateDate;
    v8->_lastLocationUpdateDate = distantPast;

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

    defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
    [defaultCenter addObserver:v8 selector:sel_weatherPreferencesWereSynchronized name:@"WeatherPrefAppToPrefsDidUpdateNotification" object:0 suspensionBehavior:2];

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
  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter removeObserver:self];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.weather.WeatherCityListPrefsChangedNotification", 0);
  [(WATodayAutoupdatingLocationModel *)self _teardownLocationManager];
  v5.receiver = self;
  v5.super_class = WATodayAutoupdatingLocationModel;
  [(WATodayModel *)&v5 dealloc];
}

- (void)clearLocationUpdateState
{
  locationManager = [(WATodayAutoupdatingLocationModel *)self locationManager];
  [locationManager stopLocationUpdate];
}

- (void)setPreferences:(id)preferences
{
  preferencesCopy = preferences;
  preferences = self->_preferences;
  if (preferences != preferencesCopy)
  {
    v7 = preferencesCopy;
    [(WeatherPreferences *)preferences setSyncDelegate:0];
    objc_storeStrong(&self->_preferences, preferences);
    preferences = [(WeatherPreferences *)self->_preferences setSyncDelegate:self];
    preferencesCopy = v7;
  }

  MEMORY[0x2821F96F8](preferences, preferencesCopy);
}

- (id)forecastModel
{
  v9.receiver = self;
  v9.super_class = WATodayAutoupdatingLocationModel;
  forecastModel = [(WATodayModel *)&v9 forecastModel];
  v4 = forecastModel;
  if (forecastModel)
  {
    forecastModel2 = forecastModel;
LABEL_5:
    v6 = forecastModel2;
    goto LABEL_6;
  }

  if ([(WATodayAutoupdatingLocationModel *)self _reloadForecastData:0])
  {
    v8.receiver = self;
    v8.super_class = WATodayAutoupdatingLocationModel;
    forecastModel2 = [(WATodayModel *)&v8 forecastModel];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_6:

  return v6;
}

- (void)setCitySource:(unint64_t)source fireNotification:(BOOL)notification
{
  if (self->_citySource != source)
  {
    notificationCopy = notification;
    self->_citySource = source;
    [(WATodayAutoupdatingLocationModel *)self _reloadForecastData:0];
    if (notificationCopy)
    {

      [(WATodayModel *)self _fireTodayModelWantsUpdate];
    }
  }
}

- (void)setLocationServicesActive:(BOOL)active
{
  if (self->_locationServicesActive != active)
  {
    self->_locationServicesActive = active;
    if (active)
    {
      [(WATodayAutoupdatingLocationModel *)self _kickstartLocationManager];
    }

    else
    {
      [(WATodayAutoupdatingLocationModel *)self _teardownLocationManager];
    }
  }
}

- (void)locationManager:(id)manager didChangeAuthorizationStatus:(int)status
{
  preferences = [(WATodayAutoupdatingLocationModel *)self preferences];
  locationManager = [(WATodayAutoupdatingLocationModel *)self locationManager];
  if ([locationManager locationTrackingIsReady])
  {
    if (status >= 3)
    {
      [preferences setLocalWeatherEnabled:1];
      [(WATodayAutoupdatingLocationModel *)self setIsLocationTrackingEnabled:1];
      [locationManager setLocationTrackingActive:1];
      locationManager2 = [(WATodayAutoupdatingLocationModel *)self locationManager];
      [locationManager2 clearLocalWeatherUpdateState];

      [(WATodayAutoupdatingLocationModel *)self setCitySource:1];
      goto LABEL_8;
    }

    [preferences setLocalWeatherEnabled:0];
    [locationManager setLocationTrackingActive:0];
    [(WATodayAutoupdatingLocationModel *)self setIsLocationTrackingEnabled:0];
    locationManager3 = [(WATodayAutoupdatingLocationModel *)self locationManager];
    [locationManager3 clearLocalWeatherUpdateState];
  }

  else if (status > 2)
  {
    goto LABEL_8;
  }

  [(WATodayAutoupdatingLocationModel *)self setCitySource:[(WATodayAutoupdatingLocationModel *)self fallbackCitySource]];
  if (!status)
  {
    [locationManager askForLocationManagerAuthorization];
  }

LABEL_8:
  [(WATodayModel *)self _fireTodayModelWantsUpdate];
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  v14 = *MEMORY[0x277D85DE8];
  locationsCopy = locations;
  isLocationTrackingEnabled = self->_isLocationTrackingEnabled;
  v7 = WALogForCategory(4);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (isLocationTrackingEnabled)
  {
    if (v8)
    {
      v9 = [(__CFString *)locationsCopy count];
      if (v9)
      {
        lastObject = [(__CFString *)locationsCopy lastObject];
      }

      else
      {
        lastObject = @"No new location";
      }

      v12 = 138412290;
      v13 = lastObject;
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
      v13 = locationsCopy;
      _os_log_impl(&dword_272ACF000, v7, OS_LOG_TYPE_DEFAULT, "Received location update after CL is stopped, ignoring: %@", &v12, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_kickstartLocationManager
{
  weatherLocationManagerGenerator = [(WATodayAutoupdatingLocationModel *)self WeatherLocationManagerGenerator];
  v4 = weatherLocationManagerGenerator[2]();
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
  locationManager = [(WATodayAutoupdatingLocationModel *)self locationManager];
  [locationManager setUpdateInterval:v7];

  locationManager2 = [(WATodayAutoupdatingLocationModel *)self locationManager];
  [locationManager2 setDelegate:self];

  locationServicesEnabled = [MEMORY[0x277CBFC10] locationServicesEnabled];
  locationManager3 = [(WATodayAutoupdatingLocationModel *)self locationManager];
  localWeatherAuthorized = [locationManager3 localWeatherAuthorized];

  preferences = [(WATodayAutoupdatingLocationModel *)self preferences];
  [preferences setLocalWeatherEnabled:locationServicesEnabled & localWeatherAuthorized];

  if (locationServicesEnabled && (localWeatherAuthorized & 1) != 0)
  {
    fallbackCitySource = 1;
  }

  else
  {
    fallbackCitySource = [(WATodayAutoupdatingLocationModel *)self fallbackCitySource];
  }

  [(WATodayAutoupdatingLocationModel *)self setCitySource:fallbackCitySource fireNotification:0];
  if ((localWeatherAuthorized & 1) == 0)
  {
    locationManager4 = [(WATodayAutoupdatingLocationModel *)self locationManager];
    [locationManager4 askForLocationManagerAuthorization];
  }

  [(WATodayAutoupdatingLocationModel *)self setIsLocationTrackingEnabled:locationServicesEnabled];
  locationManager5 = [(WATodayAutoupdatingLocationModel *)self locationManager];
  [locationManager5 setLocationTrackingActive:1];
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

    locationManager = [(WATodayAutoupdatingLocationModel *)self locationManager];
    if (([locationManager isLocalStaleOrOutOfDate] & 1) == 0)
    {
      locationManager2 = [(WATodayAutoupdatingLocationModel *)self locationManager];
      if (![locationManager2 isCacheOutOfDate])
      {
        hasCrossedHourlyBoundary = [(WATodayModel *)self hasCrossedHourlyBoundary];

        if (!hasCrossedHourlyBoundary)
        {
          v10 = WALogForCategory(0);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            *v12 = 0;
            _os_log_impl(&dword_272ACF000, v10, OS_LOG_TYPE_DEFAULT, "Check current location to see if movement is within distance filter", v12, 2u);
          }

          [(WATodayAutoupdatingLocationModel *)self setStopUpdateIfNeeded:1];
          locationManager3 = [(WATodayAutoupdatingLocationModel *)self locationManager];
          [locationManager3 updateLocationWithNoConditionCheck];
          goto LABEL_11;
        }

LABEL_8:
        v6 = WALogForCategory(0);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v13 = 0;
          _os_log_impl(&dword_272ACF000, v6, OS_LOG_TYPE_DEFAULT, "Forced location update", v13, 2u);
        }

        locationManager3 = [(WATodayAutoupdatingLocationModel *)self locationManager];
        [locationManager3 forceLocationUpdate];
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
  locationManager = [(WATodayAutoupdatingLocationModel *)self locationManager];
  [locationManager setLocationTrackingReady:0 activelyTracking:0 watchKitExtension:0];

  locationManager2 = [(WATodayAutoupdatingLocationModel *)self locationManager];
  [locationManager2 setDelegate:0];

  [(WATodayAutoupdatingLocationModel *)self setLocationManager:0];
  fallbackCitySource = [(WATodayAutoupdatingLocationModel *)self fallbackCitySource];

  [(WATodayAutoupdatingLocationModel *)self setCitySource:fallbackCitySource fireNotification:0];
}

- (void)syncLastUpdateTime
{
  preferences = [(WATodayAutoupdatingLocationModel *)self preferences];
  v4 = MEMORY[0x277CCABB0];
  lastUpdateDate = [(WATodayModel *)self lastUpdateDate];
  [lastUpdateDate timeIntervalSince1970];
  v6 = [v4 numberWithDouble:?];
  [preferences writeDefaultValue:v6 forKey:@"LastWidgetForecastUpdateDate"];

  preferences2 = [(WATodayAutoupdatingLocationModel *)self preferences];
  [preferences2 synchronizeStateToDisk];
}

- (BOOL)updateLocationTrackingStatus
{
  locationManager = [(WATodayAutoupdatingLocationModel *)self locationManager];

  if (locationManager)
  {
    locationServicesEnabled = [MEMORY[0x277CBFC10] locationServicesEnabled];
    LODWORD(locationManager) = locationServicesEnabled & ![(WATodayAutoupdatingLocationModel *)self isLocationTrackingEnabled];
    -[WATodayAutoupdatingLocationModel setIsLocationTrackingEnabled:](self, "setIsLocationTrackingEnabled:", [MEMORY[0x277CBFC10] locationServicesEnabled]);
  }

  return locationManager;
}

- (void)weatherPreferencesWereSynchronized
{
  if ([(WATodayAutoupdatingLocationModel *)self _reloadForecastData:1])
  {
    forecastModel = [(WATodayAutoupdatingLocationModel *)self forecastModel];
    [(WATodayModel *)self _fireTodayModelForecastWasUpdated:forecastModel];
  }
}

- (void)_executeLocationUpdateWithCompletion:(id)completion
{
  completionCopy = completion;
  citySource = [(WATodayAutoupdatingLocationModel *)self citySource];
  if (citySource == 2)
  {
    [(WATodayAutoupdatingLocationModel *)self _executeLocationUpdateForFirstWeatherCityWithCompletion:completionCopy];
  }

  else if (citySource == 1)
  {
    [(WATodayAutoupdatingLocationModel *)self _executeLocationUpdateForLocalWeatherCityWithCompletion:completionCopy];
  }

  else
  {
    v6 = WALogForCategory(4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [WATodayAutoupdatingLocationModel _executeLocationUpdateWithCompletion:v6];
    }

    if (completionCopy)
    {
      v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.weather.errorDomain" code:-1 userInfo:0];
      completionCopy[2](completionCopy, 0, v7);
    }
  }
}

- (void)_willDeliverForecastModel:(id)model
{
  modelCopy = model;
  citySource = [(WATodayAutoupdatingLocationModel *)self citySource];
  v6 = WACityFromForecastModel(modelCopy);
  [modelCopy setCity:v6];

  city = [modelCopy city];
  [city setIsLocalWeatherCity:citySource == 1];

  v8.receiver = self;
  v8.super_class = WATodayAutoupdatingLocationModel;
  [(WATodayModel *)&v8 _willDeliverForecastModel:modelCopy];
}

- (BOOL)shouldNotUseUpdatedLocation
{
  v26 = *MEMORY[0x277D85DE8];
  preferences = [(WATodayAutoupdatingLocationModel *)self preferences];
  v4 = WATodayLoadSavedLastForecastModelFromPreferences(preferences);

  locationManager = [(WATodayAutoupdatingLocationModel *)self locationManager];
  location = [locationManager location];

  location2 = [v4 location];
  forecastModel = [(WATodayAutoupdatingLocationModel *)self forecastModel];
  location3 = [forecastModel location];
  geoLocation = [location3 geoLocation];

  v11 = WALogForCategory(4);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138412290;
    v25 = location2;
    _os_log_impl(&dword_272ACF000, v11, OS_LOG_TYPE_DEFAULT, "savedModelLocation is %@", &v24, 0xCu);
  }

  v12 = 0;
  if (location2 && location)
  {
    geoLocation2 = [location2 geoLocation];
    [geoLocation2 distanceFromLocation:location];
    v15 = v14;
    locationManager2 = [(WATodayAutoupdatingLocationModel *)self locationManager];
    [locationManager2 distanceFilter];
    v12 = v15 < v17;
  }

  if (geoLocation)
  {
    [geoLocation distanceFromLocation:location];
    v19 = v18;
    locationManager3 = [(WATodayAutoupdatingLocationModel *)self locationManager];
    [locationManager3 distanceFilter];
    v12 &= v19 < v21;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)shouldUseNewLocation:(id)location oldLocation:(id)oldLocation
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = COERCE_DOUBLE(location);
  oldLocationCopy = oldLocation;
  if (oldLocationCopy)
  {
    if (v6 == 0.0)
    {
      date2 = WALogForCategory(4);
      if (os_log_type_enabled(date2, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v30) = 0;
        v20 = "[WATodayAutoupdatingLocationModel] invalid new location, bailing";
        v21 = date2;
        v22 = 2;
        goto LABEL_15;
      }

LABEL_16:
      v27 = 0;
      goto LABEL_17;
    }

    date = [MEMORY[0x277CBEAA8] date];
    lastLocationUpdateDate = [(WATodayAutoupdatingLocationModel *)self lastLocationUpdateDate];
    [date timeIntervalSinceDate:lastLocationUpdateDate];
    v11 = v10;

    [*&v6 distanceFromLocation:oldLocationCopy];
    v13 = v12;
    [(WATodayAutoupdatingLocationModel *)self minTimeBetweenUpdates];
    if (v11 < v14)
    {
      [(WATodayAutoupdatingLocationModel *)self minDistanceChangeInMeters];
      if (v13 < v15)
      {
        date2 = WALogForCategory(4);
        if (os_log_type_enabled(date2, OS_LOG_TYPE_DEFAULT))
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
          v21 = date2;
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

    date2 = [MEMORY[0x277CBEAA8] date];
    [(WATodayAutoupdatingLocationModel *)self setLastLocationUpdateDate:date2];
  }

  else
  {
    date2 = WALogForCategory(4);
    if (os_log_type_enabled(date2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v30) = 0;
      _os_log_impl(&dword_272ACF000, date2, OS_LOG_TYPE_DEFAULT, "[WATodayAutoupdatingLocationModel] we do not have an old location, we shall use the new one", &v30, 2u);
    }
  }

  v27 = 1;
LABEL_17:

  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

- (void)_executeLocationUpdateForLocalWeatherCityWithCompletion:(id)completion
{
  v34 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  preferences = [(WATodayAutoupdatingLocationModel *)self preferences];
  v6 = WATodayLoadSavedLastForecastModelFromPreferences(preferences);

  locationManager = [(WATodayAutoupdatingLocationModel *)self locationManager];
  location = [locationManager location];

  location2 = [v6 location];
  v10 = WALogForCategory(4);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v31 = location;
    v32 = 2112;
    v33 = location2;
    _os_log_impl(&dword_272ACF000, v10, OS_LOG_TYPE_DEFAULT, "start updating location: %@, lastKnownLocation is %@", buf, 0x16u);
  }

  if (location2 && ([v6 location], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "geoLocation"), v12 = objc_claimAutoreleasedReturnValue(), v13 = -[WATodayAutoupdatingLocationModel shouldUseNewLocation:oldLocation:](self, "shouldUseNewLocation:oldLocation:", location, v12), v12, v11, !v13))
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

    completionCopy[2](completionCopy, location2, v14);
  }

  else
  {
    v14 = location;
    if (v14)
    {
      geocodeRequest = [(WATodayAutoupdatingLocationModel *)self geocodeRequest];

      if (geocodeRequest)
      {
        geocodeRequest2 = [(WATodayAutoupdatingLocationModel *)self geocodeRequest];
        [geocodeRequest2 cancel];
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
      v29 = completionCopy;
      v22 = [v17 initWithCoordinate:v28 resultHandler:{v19, v21}];
      [(WATodayAutoupdatingLocationModel *)self setGeocodeRequest:v22];

      geocodeRequest3 = [(WATodayAutoupdatingLocationModel *)self geocodeRequest];
      [geocodeRequest3 start];

      v24 = v29;
      goto LABEL_17;
    }

    if (completionCopy)
    {
      v24 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.weather.errorDomain" code:4 userInfo:0];
      completionCopy[2](completionCopy, 0, v24);
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

- (void)_executeLocationUpdateForFirstWeatherCityWithCompletion:(id)completion
{
  completionCopy = completion;
  preferences = [(WATodayAutoupdatingLocationModel *)self preferences];
  v5 = WATodayLoadSavedFirstCityFromPreferences(preferences);

  [(WATodayModel *)self setForecastModel:v5];
  if (completionCopy)
  {
    location = [v5 location];
    completionCopy[2](completionCopy, location, 0);
  }
}

- (void)ubiquitousDefaultsDidChange:(id)change
{
  if ([(WATodayAutoupdatingLocationModel *)self _reloadForecastData:0])
  {
    forecastModel = [(WATodayAutoupdatingLocationModel *)self forecastModel];
    [(WATodayModel *)self _fireTodayModelForecastWasUpdated:forecastModel];
  }
}

- (BOOL)_reloadForecastData:(BOOL)data
{
  dataCopy = data;
  citySource = [(WATodayAutoupdatingLocationModel *)self citySource];
  v12.receiver = self;
  v12.super_class = WATodayAutoupdatingLocationModel;
  forecastModel = [(WATodayModel *)&v12 forecastModel];
  preferences = [(WATodayAutoupdatingLocationModel *)self preferences];
  v8 = preferences;
  if (citySource == 1)
  {
    WATodayLoadSavedLastForecastModelFromPreferences(preferences);
  }

  else
  {
    WATodayLoadSavedFirstCityFromPreferences(preferences);
  }
  v9 = ;

  if (v9 && forecastModel)
  {
    if ([v9 isEqual:forecastModel])
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
  if (dataCopy)
  {
    [(WATodayModel *)self _fireTodayModelForecastWasUpdated:v9];
  }

  v10 = 1;
LABEL_12:

  return v10;
}

- (void)_persistStateWithModel:(id)model
{
  modelCopy = model;
  if ([modelCopy isPopulated])
  {
    city = [modelCopy city];
    if (city)
    {
      v6 = city;
      [city updateCityForModel:modelCopy];
    }

    else
    {
      v6 = WACityFromForecastModel(modelCopy);
      if (!v6)
      {
        goto LABEL_13;
      }
    }

    citySource = [(WATodayAutoupdatingLocationModel *)self citySource];
    preferences = [(WATodayAutoupdatingLocationModel *)self preferences];
    v9 = preferences;
    if (citySource == 1)
    {
      [preferences saveToDiskWithLocalWeatherCity:v6];
    }

    else
    {
      loadSavedCities = [preferences loadSavedCities];
      v11 = [loadSavedCities na_filter:&__block_literal_global_0];
      v12 = [v11 mutableCopy];

      if ([v12 count])
      {
        [v12 setObject:v6 atIndexedSubscript:0];
        preferences2 = [(WATodayAutoupdatingLocationModel *)self preferences];
        [preferences2 saveToDiskWithCities:v12];
      }

      else
      {
        preferences2 = WALogForCategory(1);
        if (os_log_type_enabled(preferences2, OS_LOG_TYPE_DEFAULT))
        {
          *v14 = 0;
          _os_log_impl(&dword_272ACF000, preferences2, OS_LOG_TYPE_DEFAULT, "unable to persist first weather city; preferences doesn't currently have any cities", v14, 2u);
        }
      }
    }
  }

LABEL_13:
}

@end