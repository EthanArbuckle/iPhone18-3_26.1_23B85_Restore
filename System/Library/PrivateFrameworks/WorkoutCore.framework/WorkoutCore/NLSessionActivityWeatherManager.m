@interface NLSessionActivityWeatherManager
- (NLSessionActivityWeatherManagerDelegate)delegate;
- (void)_activate;
- (void)_deactivate;
- (void)_handleLocations:(id)a3;
- (void)_logLocationTransmittedForChinaRegulatoryRequirement;
- (void)authorizationStatusDidUpdateWithAuthorizationStatus:(int)a3 locationManager:(id)a4;
- (void)dealloc;
- (void)locationDidFailWithError:(id)a3 locationManager:(id)a4;
- (void)locationDidUpdateWithLocations:(id)a3 locationManager:(id)a4;
- (void)locationManagerStateDidChangeWithState:(int64_t)a3 locationManager:(id)a4;
- (void)manager:(id)a3 updatedSummary:(id)a4;
- (void)setActive:(BOOL)a3;
@end

@implementation NLSessionActivityWeatherManager

- (void)dealloc
{
  v4 = self;
  v3 = a2;
  [(NLWeatherSummaryManager *)self->_weatherManager cancelFetch];
  v2.receiver = v4;
  v2.super_class = NLSessionActivityWeatherManager;
  [(NLSessionActivityWeatherManager *)&v2 dealloc];
}

- (void)setActive:(BOOL)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v7 = self;
  v6 = a2;
  v5 = a3;
  if (self->_active != a3)
  {
    _HKInitializeLogging();
    oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      if (v5)
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
    v7->_active = v5;
    if (v5)
    {
      [(NLSessionActivityWeatherManager *)v7 _activate];
    }

    else
    {
      [(NLSessionActivityWeatherManager *)v7 _deactivate];
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

- (void)locationDidUpdateWithLocations:(id)a3 locationManager:(id)a4
{
  v10 = *MEMORY[0x277D85DE8];
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  _HKInitializeLogging();
  oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v9, [location[0] count]);
    _os_log_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_DEFAULT, "[weather] LocationManager locationDidUpdateWithLocations %lu", v9, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  [(NLSessionActivityWeatherManager *)v8 _handleLocations:location[0]];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)authorizationStatusDidUpdateWithAuthorizationStatus:(int)a3 locationManager:(id)a4
{
  v10 = *MEMORY[0x277D85DE8];
  v8 = self;
  v7 = a2;
  v6 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  _HKInitializeLogging();
  oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_4_0(v9, v6);
    _os_log_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_DEFAULT, "[weather] LocationManager authorization status changed to: %d", v9, 8u);
  }

  objc_storeStrong(&oslog, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)locationDidFailWithError:(id)a3 locationManager:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
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

- (void)locationManagerStateDidChangeWithState:(int64_t)a3 locationManager:(id)a4
{
  v10 = *MEMORY[0x277D85DE8];
  v8 = self;
  v7 = a2;
  v6 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  _HKInitializeLogging();
  oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v9, v6);
    _os_log_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_DEFAULT, "[weather] LocationManager state changed to: %ld", v9, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_handleLocations:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v40 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v38 = [location[0] reverseObjectEnumerator];
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](v38);
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

    [(NLSessionActivityWeatherManager *)v40 setLocation:v37];
    v15 = MEMORY[0x277D85CD0];
    v4 = MEMORY[0x277D85CD0];
    queue = v15;
    v30 = MEMORY[0x277D85DD0];
    v31 = -1073741824;
    v32 = 0;
    v33 = __52__NLSessionActivityWeatherManager__handleLocations___block_invoke;
    v34 = &unk_277D88890;
    v35 = MEMORY[0x277D82BE0](v40);
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
  v14 = [(NLSessionActivityWeatherManager *)v40 location];
  MEMORY[0x277D82BD8](v14);
  if (v14)
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
    if (!v40->_weatherManager)
    {
      v8 = [NLWeatherSummaryManager alloc];
      v9 = [(NLSessionActivityWeatherManager *)v40 location];
      v5 = [NLWeatherSummaryManager initWithLocation:v8 delegate:"initWithLocation:delegate:"];
      weatherManager = v40->_weatherManager;
      v40->_weatherManager = v5;
      MEMORY[0x277D82BD8](weatherManager);
      MEMORY[0x277D82BD8](v9);
      [(NLWeatherSummaryManager *)v40->_weatherManager fetchSummary];
    }

    v7 = +[WOCoreLocationManager sharedManager];
    [(WOCoreLocationManager *)v7 removeObserver:v40];
    MEMORY[0x277D82BD8](v7);
    [(NLSessionActivityWeatherManager *)v40 _logLocationTransmittedForChinaRegulatoryRequirement];
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

  objc_storeStrong(&v38, 0);
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

- (void)manager:(id)a3 updatedSummary:(id)a4
{
  v48 = *MEMORY[0x277D85DE8];
  v45 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v43 = 0;
  objc_storeStrong(&v43, a4);
  if (location[0] == v45->_weatherManager)
  {
    if (v43)
    {
      v4 = [v43 isDaytime];
      [(NLSessionActivityWeatherManager *)v45 setIsDaytime:v4];
      v24 = [v43 temperature];
      [(NLSessionActivityWeatherManager *)v45 setCurrentTemperature:?];
      MEMORY[0x277D82BD8](v24);
      v25 = [v43 humidity];
      [(NLSessionActivityWeatherManager *)v45 setCurrentHumidity:?];
      MEMORY[0x277D82BD8](v25);
      v26 = [v43 airQualityIndex];
      [(NLSessionActivityWeatherManager *)v45 setCurrentAirQualityIndex:?];
      MEMORY[0x277D82BD8](v26);
      v5 = [v43 condition];
      [(NLSessionActivityWeatherManager *)v45 setHkPrivateWeatherCondition:v5];
      v27 = [v43 sourceName];
      [(NLSessionActivityWeatherManager *)v45 setSourceName:?];
      MEMORY[0x277D82BD8](v27);
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
        v9 = [(NLSessionActivityWeatherManager *)v45 isDaytime];
        v10 = @"YES";
        if (!v9)
        {
          v10 = @"NO";
        }

        v18 = v10;
        v23 = [(NLSessionActivityWeatherManager *)v45 currentTemperature];
        v22 = [(NLSessionActivityWeatherManager *)v45 currentHumidity];
        v21 = [(NLSessionActivityWeatherManager *)v45 currentAirQualityIndex];
        __os_log_helper_16_2_7_8_66_8_0_8_0_8_66_8_66_8_66_8_66(v47, v15, v16, v17, v18, v23, v22, v21);
        _os_log_impl(&dword_20AEA4000, v19, v20, "[weather] %{public}@ received forecast data for <%f, %f>: Is Daytime? %{public}@, Temperature? %{public}@, Humidity? %{public}@, AirQualityIndex? %{public}@.", v47, 0x48u);
        MEMORY[0x277D82BD8](v21);
        MEMORY[0x277D82BD8](v22);
        MEMORY[0x277D82BD8](v23);
        objc_storeStrong(&v34, 0);
      }

      objc_storeStrong(&v36, 0);
      WeakRetained = objc_loadWeakRetained(&v45->_delegate);
      [WeakRetained weatherDidUpdate:v45];
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

    [(NLSessionActivityWeatherManager *)v45 setActive:0];
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