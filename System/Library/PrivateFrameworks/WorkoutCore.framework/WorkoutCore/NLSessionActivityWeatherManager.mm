@interface NLSessionActivityWeatherManager
- (NLSessionActivityWeatherManagerDelegate)delegate;
- (void)_activate;
- (void)_deactivate;
- (void)_handleLocations:(id)locations;
- (void)_logLocationTransmittedForChinaRegulatoryRequirement;
- (void)authorizationStatusDidUpdateWithAuthorizationStatus:(int)status locationManager:(id)manager;
- (void)dealloc;
- (void)locationDidFailWithError:(id)error locationManager:(id)manager;
- (void)locationDidUpdateWithLocations:(id)locations locationManager:(id)manager;
- (void)locationManagerStateDidChangeWithState:(int64_t)state locationManager:(id)manager;
- (void)manager:(id)manager updatedSummary:(id)summary;
- (void)setActive:(BOOL)active;
@end

@implementation NLSessionActivityWeatherManager

- (void)dealloc
{
  selfCopy = self;
  v3 = a2;
  [(NLWeatherSummaryManager *)self->_weatherManager cancelFetch];
  v2.receiver = selfCopy;
  v2.super_class = NLSessionActivityWeatherManager;
  [(NLSessionActivityWeatherManager *)&v2 dealloc];
}

- (void)setActive:(BOOL)active
{
  v9 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v6 = a2;
  activeCopy = active;
  if (self->_active != active)
  {
    _HKInitializeLogging();
    oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      if (activeCopy)
      {
        v3 = "active";
      }

      else
      {
        v3 = "inactive";
      }

      __os_log_helper_16_2_1_8_34(v8, v3);
      _os_log_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_DEFAULT, "[weather] Weather Manager going %{public}s", v8, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    selfCopy->_active = activeCopy;
    if (activeCopy)
    {
      [(NLSessionActivityWeatherManager *)selfCopy _activate];
    }

    else
    {
      [(NLSessionActivityWeatherManager *)selfCopy _deactivate];
    }
  }

  *MEMORY[0x277D85DE8];
}

- (void)_activate
{
  v2 = +[WOCoreLocationManager sharedManager];
  [(WOCoreLocationManager *)v2 addObserver:self];
  MEMORY[0x277D82BD8](v2);
}

- (void)_deactivate
{
  v2 = +[WOCoreLocationManager sharedManager];
  [(WOCoreLocationManager *)v2 removeObserver:self];
  MEMORY[0x277D82BD8](v2);
  [(NLWeatherSummaryManager *)self->_weatherManager cancelFetch];
  objc_storeStrong(&self->_weatherManager, 0);
}

- (void)locationDidUpdateWithLocations:(id)locations locationManager:(id)manager
{
  v10 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, locations);
  v6 = 0;
  objc_storeStrong(&v6, manager);
  _HKInitializeLogging();
  oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v9, [location[0] count]);
    _os_log_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_DEFAULT, "[weather] LocationManager locationDidUpdateWithLocations %lu", v9, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  [(NLSessionActivityWeatherManager *)selfCopy _handleLocations:location[0]];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)authorizationStatusDidUpdateWithAuthorizationStatus:(int)status locationManager:(id)manager
{
  v10 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v7 = a2;
  statusCopy = status;
  location = 0;
  objc_storeStrong(&location, manager);
  _HKInitializeLogging();
  oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_4_0(v9, statusCopy);
    _os_log_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_DEFAULT, "[weather] LocationManager authorization status changed to: %d", v9, 8u);
  }

  objc_storeStrong(&oslog, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)locationDidFailWithError:(id)error locationManager:(id)manager
{
  v14 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  v11 = 0;
  objc_storeStrong(&v11, manager);
  _HKInitializeLogging();
  v10 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v9 = 16;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    log = v10;
    type = v9;
    v6 = [location[0] description];
    v8 = MEMORY[0x277D82BE0](v6);
    __os_log_helper_16_2_1_8_64(v13, v8);
    _os_log_error_impl(&dword_20AEA4000, log, type, "[weather] LocationManager locationDidFail error: %@", v13, 0xCu);
    MEMORY[0x277D82BD8](v6);
    objc_storeStrong(&v8, 0);
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)locationManagerStateDidChangeWithState:(int64_t)state locationManager:(id)manager
{
  v10 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v7 = a2;
  stateCopy = state;
  location = 0;
  objc_storeStrong(&location, manager);
  _HKInitializeLogging();
  oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v9, stateCopy);
    _os_log_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_DEFAULT, "[weather] LocationManager state changed to: %ld", v9, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_handleLocations:(id)locations
{
  v42 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, locations);
  reverseObjectEnumerator = [location[0] reverseObjectEnumerator];
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](reverseObjectEnumerator);
  v22 = [obj countByEnumeratingWithState:__b objects:v41 count:16];
  if (v22)
  {
    v18 = *__b[2];
    v19 = 0;
    v20 = v22;
    while (1)
    {
      v17 = v19;
      if (*__b[2] != v18)
      {
        objc_enumerationMutation(obj);
      }

      v37 = *(__b[1] + 8 * v19);
      [v37 horizontalAccuracy];
      if (v3 >= 0.0)
      {
        break;
      }

      ++v19;
      if (v17 + 1 >= v20)
      {
        v19 = 0;
        v20 = [obj countByEnumeratingWithState:__b objects:v41 count:16];
        if (!v20)
        {
          goto LABEL_9;
        }
      }
    }

    [(NLSessionActivityWeatherManager *)selfCopy setLocation:v37];
    v15 = MEMORY[0x277D85CD0];
    v4 = MEMORY[0x277D85CD0];
    queue = v15;
    v30 = MEMORY[0x277D85DD0];
    v31 = -1073741824;
    v32 = 0;
    v33 = __52__NLSessionActivityWeatherManager__handleLocations___block_invoke;
    v34 = &unk_277D88890;
    v35 = MEMORY[0x277D82BE0](selfCopy);
    dispatch_async(queue, &v30);
    MEMORY[0x277D82BD8](queue);
    v29 = 2;
    objc_storeStrong(&v35, 0);
  }

  else
  {
LABEL_9:
    v29 = 0;
  }

  MEMORY[0x277D82BD8](obj);
  location = [(NLSessionActivityWeatherManager *)selfCopy location];
  MEMORY[0x277D82BD8](location);
  if (location)
  {
    _HKInitializeLogging();
    v25 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v24 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v25;
      v11 = v24;
      __os_log_helper_16_0_0(v23);
      _os_log_impl(&dword_20AEA4000, v10, v11, "[weather] Fetch current weather, log location, stop location updates", v23, 2u);
    }

    objc_storeStrong(&v25, 0);
    if (!selfCopy->_weatherManager)
    {
      v8 = [NLWeatherSummaryManager alloc];
      location2 = [(NLSessionActivityWeatherManager *)selfCopy location];
      v5 = [NLWeatherSummaryManager initWithLocation:v8 delegate:"initWithLocation:delegate:"];
      weatherManager = selfCopy->_weatherManager;
      selfCopy->_weatherManager = v5;
      MEMORY[0x277D82BD8](weatherManager);
      MEMORY[0x277D82BD8](location2);
      [(NLWeatherSummaryManager *)selfCopy->_weatherManager fetchSummary];
    }

    v7 = +[WOCoreLocationManager sharedManager];
    [(WOCoreLocationManager *)v7 removeObserver:selfCopy];
    MEMORY[0x277D82BD8](v7);
    [(NLSessionActivityWeatherManager *)selfCopy _logLocationTransmittedForChinaRegulatoryRequirement];
    v29 = 0;
  }

  else
  {
    _HKInitializeLogging();
    oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      log = oslog;
      v13 = type;
      __os_log_helper_16_0_0(v26);
      _os_log_impl(&dword_20AEA4000, log, v13, "[weather] location nil, waiting for another location", v26, 2u);
    }

    objc_storeStrong(&oslog, 0);
    v29 = 1;
  }

  objc_storeStrong(&reverseObjectEnumerator, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

uint64_t __52__NLSessionActivityWeatherManager__handleLocations___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  [WeakRetained locationDidUpdate:*(a1 + 32)];
  return MEMORY[0x277D82BD8](WeakRetained);
}

- (void)_logLocationTransmittedForChinaRegulatoryRequirement
{
  location[3] = self;
  location[2] = a2;
  location[1] = ct_green_tea_logger_create();
  location[0] = getCTGreenTeaOsLogHandle();
  if (location[0])
  {
    oslog = MEMORY[0x277D82BE0](location[0]);
    type = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
    {
      log = oslog;
      v3 = type;
      __os_log_helper_16_0_0(v4);
      _os_log_impl(&dword_20AEA4000, log, v3, "Obtained location update for local weather forecast during workout.", v4, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong(location, 0);
  ct_green_tea_logger_destroy();
}

- (void)manager:(id)manager updatedSummary:(id)summary
{
  v48 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v43 = 0;
  objc_storeStrong(&v43, summary);
  if (location[0] == selfCopy->_weatherManager)
  {
    if (v43)
    {
      isDaytime = [v43 isDaytime];
      [(NLSessionActivityWeatherManager *)selfCopy setIsDaytime:isDaytime];
      temperature = [v43 temperature];
      [(NLSessionActivityWeatherManager *)selfCopy setCurrentTemperature:?];
      MEMORY[0x277D82BD8](temperature);
      humidity = [v43 humidity];
      [(NLSessionActivityWeatherManager *)selfCopy setCurrentHumidity:?];
      MEMORY[0x277D82BD8](humidity);
      airQualityIndex = [v43 airQualityIndex];
      [(NLSessionActivityWeatherManager *)selfCopy setCurrentAirQualityIndex:?];
      MEMORY[0x277D82BD8](airQualityIndex);
      condition = [v43 condition];
      [(NLSessionActivityWeatherManager *)selfCopy setHkPrivateWeatherCondition:condition];
      sourceName = [v43 sourceName];
      [(NLSessionActivityWeatherManager *)selfCopy setSourceName:?];
      MEMORY[0x277D82BD8](sourceName);
      [v43 coordinate];
      v37 = v6;
      v38 = v7;
      _HKInitializeLogging();
      v36 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
      v35 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v19 = v36;
        v20 = v35;
        v8 = objc_opt_class();
        v15 = MEMORY[0x277D82BE0](v8);
        v34 = v15;
        v16 = v37;
        v17 = v38;
        isDaytime2 = [(NLSessionActivityWeatherManager *)selfCopy isDaytime];
        v10 = @"YES";
        if (!isDaytime2)
        {
          v10 = @"NO";
        }

        v18 = v10;
        currentTemperature = [(NLSessionActivityWeatherManager *)selfCopy currentTemperature];
        currentHumidity = [(NLSessionActivityWeatherManager *)selfCopy currentHumidity];
        currentAirQualityIndex = [(NLSessionActivityWeatherManager *)selfCopy currentAirQualityIndex];
        __os_log_helper_16_2_7_8_66_8_0_8_0_8_66_8_66_8_66_8_66(v47, v15, v16, v17, v18, currentTemperature, currentHumidity, currentAirQualityIndex);
        _os_log_impl(&dword_20AEA4000, v19, v20, "[weather] %{public}@ received forecast data for <%f, %f>: Is Daytime? %{public}@, Temperature? %{public}@, Humidity? %{public}@, AirQualityIndex? %{public}@.", v47, 0x48u);
        MEMORY[0x277D82BD8](currentAirQualityIndex);
        MEMORY[0x277D82BD8](currentHumidity);
        MEMORY[0x277D82BD8](currentTemperature);
        objc_storeStrong(&v34, 0);
      }

      objc_storeStrong(&v36, 0);
      WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
      [WeakRetained weatherDidUpdate:selfCopy];
      MEMORY[0x277D82BD8](WeakRetained);
    }

    else
    {
      _HKInitializeLogging();
      v33 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
      v32 = 16;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v12 = v33;
        v13 = v32;
        v11 = objc_opt_class();
        v31 = MEMORY[0x277D82BE0](v11);
        __os_log_helper_16_2_1_8_66(v46, v31);
        _os_log_error_impl(&dword_20AEA4000, v12, v13, "[weather] %{public}@ did not receive forecast data.", v46, 0xCu);
        objc_storeStrong(&v31, 0);
      }

      objc_storeStrong(&v33, 0);
    }

    [(NLSessionActivityWeatherManager *)selfCopy setActive:0];
    v39 = 0;
  }

  else
  {
    _HKInitializeLogging();
    v42 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v41 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      log = v42;
      type = v41;
      __os_log_helper_16_0_0(v40);
      _os_log_impl(&dword_20AEA4000, log, type, "[weather] Received a summary but not for our manager, stale, ignoring.", v40, 2u);
    }

    objc_storeStrong(&v42, 0);
    v39 = 1;
  }

  objc_storeStrong(&v43, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (NLSessionActivityWeatherManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end