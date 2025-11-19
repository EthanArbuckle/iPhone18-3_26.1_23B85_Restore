@interface TWCLocationUpdater
+ (id)sharedLocationUpdater;
- (TWCLocationUpdater)init;
- (void)_completeReverseGeocodeForLocation:(id)a3 currentCity:(id)a4 geocodeError:(id)a5 completionHandler:(id)a6;
- (void)_geocodeLocation:(id)a3 currentCity:(id)a4 completionHandler:(id)a5;
- (void)_updateWeatherForLocation:(id)a3 city:(id)a4 completionHandler:(id)a5;
- (void)dealloc;
- (void)parsedResultCity:(id)a3;
- (void)updateWeatherForCities:(id)a3 withCompletionHandler:(id)a4;
- (void)updateWeatherForCity:(id)a3;
- (void)updateWeatherForLocation:(id)a3 city:(id)a4;
@end

@implementation TWCLocationUpdater

+ (id)sharedLocationUpdater
{
  if (sharedLocationUpdater_onceToken != -1)
  {
    +[TWCLocationUpdater sharedLocationUpdater];
  }

  v3 = sharedLocationUpdater___sharedLocationUpdater;

  return v3;
}

uint64_t __43__TWCLocationUpdater_sharedLocationUpdater__block_invoke()
{
  v0 = objc_alloc_init(TWCLocationUpdater);
  v1 = sharedLocationUpdater___sharedLocationUpdater;
  sharedLocationUpdater___sharedLocationUpdater = v0;

  v2 = +[WeatherInternalPreferences sharedInternalPreferences];
  __internalInstall = [v2 isInternalInstall];

  v3 = +[WeatherInternalPreferences sharedInternalPreferences];
  v4 = [v3 objectForKey:@"ForceLocalFallback"];
  [v4 BOOLValue];

  v5 = +[WeatherInternalPreferences sharedInternalPreferences];
  v6 = [v5 objectForKey:@"kMaxLatLonAccuracy"];
  __maxLatLonAccuracy = [v6 intValue];

  result = [*MEMORY[0x277D76620] launchedToTest];
  __launchedToTest = result;
  if (__maxLatLonAccuracy <= 0)
  {
    __maxLatLonAccuracy = 5;
  }

  return result;
}

- (TWCLocationUpdater)init
{
  v4.receiver = self;
  v4.super_class = TWCLocationUpdater;
  v2 = [(TWCCityUpdater *)&v4 init];
  if (v2)
  {
    v2->_greenTeaLogger = ct_green_tea_logger_create();
  }

  return v2;
}

- (void)dealloc
{
  [(TWCLocationUpdater *)self greenTeaLogger];
  ct_green_tea_logger_destroy();
  v3.receiver = self;
  v3.super_class = TWCLocationUpdater;
  [(TWCLocationUpdater *)&v3 dealloc];
}

- (void)parsedResultCity:(id)a3
{
  v3 = a3;
  v4 = [v3 locationID];
  if (v4)
  {
    v5 = v4;
    v6 = [v3 isRequestedByFrameworkClient];

    if ((v6 & 1) == 0)
    {
      v7 = [v3 wfLocation];
      v8 = [v7 displayName];
      if (v8)
      {
        [v3 setName:v8];
      }

      else
      {
        v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v10 = [v9 localizedStringForKey:@"LOCAL_WEATHER" value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];
        [v3 setName:v10];
      }

      v11 = [v7 geoLocation];
      [v3 setLocation:v11];

      v12 = [MEMORY[0x277CBEAA8] date];
      [v3 setUpdateTime:v12];

      v13 = +[WeatherPreferences sharedPreferences];
      if (__internalInstall == 1)
      {
        v14 = +[WeatherInternalPreferences sharedInternalPreferences];
        v15 = [v14 objectForKey:@"RandomizeWeather"];
        v16 = [v15 BOOLValue];

        if (v16)
        {
          v17 = [objc_alloc(MEMORY[0x277D7B2C0]) initWithTemperatureUnit:2 value:(rand() % 50 - 50)];
          [v3 setTemperature:v17];
          [v3 setConditionCode:rand() % 37];
          v18 = WALogForCategory(0);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            [TWCLocationUpdater parsedResultCity:v18];
          }
        }
      }

      [v13 saveToDiskWithLocalWeatherCity:v3];
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.weather.localCityChanged", 0, 0, 1u);
    }
  }

  if ((__launchedToTest & 1) == 0 && __internalInstall == 1)
  {
    v20 = [MEMORY[0x277CCAB98] defaultCenter];
    [v20 postNotificationName:@"RestStateNotification" object:0];
  }
}

- (void)updateWeatherForCity:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = WALogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v4, "isLocalWeatherCity")}];
    v12 = 138412546;
    v13 = v4;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_272ACF000, v5, OS_LOG_TYPE_DEFAULT, "Update weather for city : %@, isLocalWeatherCity=%@", &v12, 0x16u);
  }

  if ([v4 isLocalWeatherCity])
  {
    v7 = +[WeatherLocationManager sharedWeatherLocationManager];
    v8 = [v7 location];
    v9 = WALogForCategory(0);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v10)
      {
        v12 = 138412290;
        v13 = v8;
        _os_log_impl(&dword_272ACF000, v9, OS_LOG_TYPE_DEFAULT, "Has location: %@", &v12, 0xCu);
      }

      [(TWCLocationUpdater *)self updateWeatherForLocation:v8 city:v4];
    }

    else
    {
      if (v10)
      {
        LOWORD(v12) = 0;
        _os_log_impl(&dword_272ACF000, v9, OS_LOG_TYPE_DEFAULT, "Does not have location from location manager, force location update", &v12, 2u);
      }

      [v7 forceLocationUpdate];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)updateWeatherForLocation:(id)a3 city:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v6 setIsRequestedByFrameworkClient:0];
  [(TWCLocationUpdater *)self _updateWeatherForLocation:v7 city:v6 completionHandler:0];
}

- (void)_updateWeatherForLocation:(id)a3 city:(id)a4 completionHandler:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = WALogForCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315650;
    v15 = "[TWCLocationUpdater _updateWeatherForLocation:city:completionHandler:]";
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&dword_272ACF000, v11, OS_LOG_TYPE_DEFAULT, "%s currentLocation=%@, localCity=%@", &v14, 0x20u);
  }

  if (v9)
  {
    [(TWCLocationUpdater *)self setCurrentCity:v9];
    [(TWCLocationUpdater *)self _geocodeLocation:v8 currentCity:v9 completionHandler:v10];
  }

  else if (v10)
  {
    v12 = WAErrorWithCode(4, 0, 0, 0);
    v10[2](v10, 0, v12);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_geocodeLocation:(id)a3 currentCity:(id)a4 completionHandler:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = WALogForCategory(4);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v23 = "[TWCLocationUpdater _geocodeLocation:currentCity:completionHandler:]";
    v24 = 2112;
    v25 = v8;
    v26 = 2112;
    v27 = v9;
    _os_log_impl(&dword_272ACF000, v11, OS_LOG_TYPE_DEFAULT, "%s location=%@, currentCity=%@", buf, 0x20u);
  }

  if ([v9 isLocalWeatherCity])
  {
    [(TWCLocationUpdater *)self greenTeaLogger];
    v12 = getCTGreenTeaOsLogHandle();
    v13 = v12;
    if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_272ACF000, v13, OS_LOG_TYPE_INFO, "Transmitting current location to CoreLocation for reverse geocode request.", buf, 2u);
    }
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __69__TWCLocationUpdater__geocodeLocation_currentCity_completionHandler___block_invoke;
  v18[3] = &unk_279E69400;
  v18[4] = self;
  v19 = v8;
  v20 = v9;
  v21 = v10;
  v14 = v10;
  v15 = v9;
  v16 = v8;
  dispatch_async(MEMORY[0x277D85CD0], v18);

  v17 = *MEMORY[0x277D85DE8];
}

void __69__TWCLocationUpdater__geocodeLocation_currentCity_completionHandler___block_invoke(id *a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] reverseGeocoder];
  v3 = [v2 isGeocoding];

  if (v3)
  {
    v4 = WALogForCategory(4);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [a1[4] reverseGeocoder];
      v6 = a1[5];
      v7 = a1[6];
      *buf = 138412802;
      v24 = v5;
      v25 = 2112;
      v26 = v6;
      v27 = 2112;
      v28 = v7;
      _os_log_impl(&dword_272ACF000, v4, OS_LOG_TYPE_DEFAULT, "cancelGeocode reverseGeocoder=%@ for location=%@, currentCity=%@", buf, 0x20u);
    }

    v8 = [a1[4] reverseGeocoder];
    [v8 cancelGeocode];
  }

  v9 = objc_alloc_init(MEMORY[0x277CBFBE8]);
  [a1[4] setReverseGeocoder:v9];
  v10 = WALogForCategory(4);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = a1[5];
    v12 = a1[6];
    *buf = 138412546;
    v24 = v11;
    v25 = 2112;
    v26 = v12;
    _os_log_impl(&dword_272ACF000, v10, OS_LOG_TYPE_DEFAULT, "Will start reverseGeocodeLocation: location=%@, currentCity=%@", buf, 0x16u);
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __69__TWCLocationUpdater__geocodeLocation_currentCity_completionHandler___block_invoke_33;
  v20[3] = &unk_279E693D8;
  v13 = a1[5];
  v14 = a1[6];
  v19 = a1[4];
  v15 = a1[7];
  *&v16 = v19;
  *(&v16 + 1) = v15;
  *&v17 = v13;
  *(&v17 + 1) = v14;
  v21 = v17;
  v22 = v16;
  [v9 reverseGeocodeLocation:v13 completionHandler:v20];

  v18 = *MEMORY[0x277D85DE8];
}

void __69__TWCLocationUpdater__geocodeLocation_currentCity_completionHandler___block_invoke_33(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = WALogForCategory(4);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 firstObject];
    v9 = *(a1 + 32);
    v18 = 138412802;
    v19 = v8;
    v20 = 2112;
    v21 = v9;
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&dword_272ACF000, v7, OS_LOG_TYPE_DEFAULT, "Reverse-geocoded Weather Location finished: placemark=%@, location=%@, error=%@", &v18, 0x20u);
  }

  if (v6)
  {
    v10 = 0;
  }

  else
  {
    v11 = objc_alloc(MEMORY[0x277CD4E80]);
    v12 = objc_alloc(MEMORY[0x277CD4F00]);
    v13 = [v5 firstObject];
    v14 = [v12 initWithPlacemark:v13];
    v15 = [v11 initWithPlacemark:v14];

    v16 = WALogForCategory(4);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = v15;
      _os_log_impl(&dword_272ACF000, v16, OS_LOG_TYPE_DEFAULT, "ReversGeocoded mapitem is: %@", &v18, 0xCu);
    }

    v10 = [objc_alloc(MEMORY[0x277D7B280]) initWithMapItem:v15 isCurrentLocation:{objc_msgSend(*(a1 + 40), "isLocalWeatherCity")}];
  }

  [*(a1 + 48) _completeReverseGeocodeForLocation:v10 currentCity:*(a1 + 40) geocodeError:v6 completionHandler:*(a1 + 56)];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_completeReverseGeocodeForLocation:(id)a3 currentCity:(id)a4 geocodeError:(id)a5 completionHandler:(id)a6
{
  v45 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = WALogForCategory(4);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v38 = "[TWCLocationUpdater _completeReverseGeocodeForLocation:currentCity:geocodeError:completionHandler:]";
    v39 = 2112;
    v40 = v10;
    v41 = 2112;
    v42 = v11;
    v43 = 2112;
    v44 = v12;
    _os_log_impl(&dword_272ACF000, v14, OS_LOG_TYPE_DEFAULT, "%s resultLocation=%@, currentCity=%@, geocodeError=%@", buf, 0x2Au);
  }

  v15 = +[WeatherPreferences sharedPreferences];
  v16 = v15;
  if (v12)
  {
    [v15 saveToDiskWithLocalWeatherCity:v11];
    v17 = WALogForCategory(4);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [TWCLocationUpdater _completeReverseGeocodeForLocation:v12 currentCity:v11 geocodeError:v17 completionHandler:?];
    }

    v18 = [v12 domain];
    if ([v18 isEqualToString:*MEMORY[0x277CBFCF0]])
    {
      v19 = [v12 code];

      if (v19 == 10)
      {
        v20 = v12;
LABEL_15:
        v25 = v20;
        [v11 cityDidFinishUpdatingWithError:v20];
        if (v13)
        {
          v13[2](v13, v11, v25);
        }

        goto LABEL_24;
      }
    }

    else
    {
    }

    v20 = WAErrorWithCode(2, v12, v11, 0);
    goto LABEL_15;
  }

  v21 = MEMORY[0x277CCABB0];
  v22 = [MEMORY[0x277CBEAA8] date];
  [v22 timeIntervalSince1970];
  v23 = [v21 numberWithDouble:?];
  [v16 writeDefaultValue:v23 forKey:@"LastLocationParseTime"];

  v24 = WALogForCategory(4);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v38 = v11;
    v39 = 2112;
    v40 = v10;
    _os_log_impl(&dword_272ACF000, v24, OS_LOG_TYPE_DEFAULT, "Updating City '%@' with geocode location '%@'", buf, 0x16u);
  }

  [v11 setWfLocation:v10];
  [v11 clearForecasts];
  v16 = [v10 displayName];
  if (v16)
  {
    [v11 setName:v16];
  }

  else
  {
    v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v27 = [v26 localizedStringForKey:@"LOCAL_WEATHER" value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];
    [v11 setName:v27];
  }

  v28 = +[WeatherPreferences sharedPreferences];
  [v28 saveToDiskWithLocalWeatherCity:v11];

  v29 = WALogForCategory(4);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v38 = v10;
    v39 = 2112;
    v40 = v11;
    _os_log_impl(&dword_272ACF000, v29, OS_LOG_TYPE_DEFAULT, "Received reverse geocode for %@, currentCity=%@", buf, 0x16u);
  }

  v30 = WALogForCategory(4);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = v11;
    _os_log_impl(&dword_272ACF000, v30, OS_LOG_TYPE_DEFAULT, "Updating weather for currentCity: %@", buf, 0xCu);
  }

  v36 = v11;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __100__TWCLocationUpdater__completeReverseGeocodeForLocation_currentCity_geocodeError_completionHandler___block_invoke;
  v33[3] = &unk_279E69428;
  v33[4] = self;
  v34 = v11;
  v35 = v13;
  [(TWCLocationUpdater *)self updateWeatherForCities:v31 withCompletionHandler:v33];

LABEL_24:
  v32 = *MEMORY[0x277D85DE8];
}

void __100__TWCLocationUpdater__completeReverseGeocodeForLocation_currentCity_geocodeError_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = (a1 + 40);
  [*(a1 + 32) parsedResultCity:*(a1 + 40)];
  v6 = WALogForCategory(0);
  v7 = v6;
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __100__TWCLocationUpdater__completeReverseGeocodeForLocation_currentCity_geocodeError_completionHandler___block_invoke_cold_1((a1 + 40), v4, v7);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *v5;
    v11 = 138412290;
    v12 = v8;
    _os_log_impl(&dword_272ACF000, v7, OS_LOG_TYPE_DEFAULT, "Finished forecast retrieval for: %@", &v11, 0xCu);
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    (*(v9 + 16))(v9, *v5, v4);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)updateWeatherForCities:(id)a3 withCompletionHandler:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = WALogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v12 = "[TWCLocationUpdater updateWeatherForCities:withCompletionHandler:]";
    v13 = 2112;
    v14 = self;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_272ACF000, v8, OS_LOG_TYPE_DEFAULT, "%s self=%@, updating weather for cities: %@ in locationUpdater", buf, 0x20u);
  }

  [(TWCCityUpdater *)self cancel];
  v10.receiver = self;
  v10.super_class = TWCLocationUpdater;
  [(TWCCityUpdater *)&v10 updateWeatherForCities:v6 withCompletionHandler:v7];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_completeReverseGeocodeForLocation:(NSObject *)a3 currentCity:geocodeError:completionHandler:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138412546;
  *&v4[4] = a1;
  *&v4[12] = 2112;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_1_0(&dword_272ACF000, a2, a3, "ReverseGeocode completed with error: %@, save the failed city: %@", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

void __100__TWCLocationUpdater__completeReverseGeocodeForLocation_currentCity_geocodeError_completionHandler___block_invoke_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138412546;
  *&v4[4] = *a1;
  *&v4[12] = 2112;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_1_0(&dword_272ACF000, a2, a3, "Forecast retrieval failed retrieval for %@ with error %@", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

@end