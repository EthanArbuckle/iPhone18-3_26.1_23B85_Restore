@interface WAForecastOperation
- (BOOL)_needsGeolocation;
- (BOOL)shouldRequestChangeInConditions;
- (WAForecastModel)forecastModel;
- (WAForecastOperation)initWithCity:(id)city withUnits:(int)units requestOptions:(id)options canGeocode:(BOOL)geocode onConnection:(id)connection;
- (WAForecastOperation)initWithLocation:(id)location onConnection:(id)connection;
- (void)_determineSunriseAndSunset;
- (void)_failWithError:(id)error;
- (void)_mapReferralLinks;
- (void)_needsGeolocation;
- (void)cancel;
- (void)main;
@end

@implementation WAForecastOperation

- (WAForecastOperation)initWithCity:(id)city withUnits:(int)units requestOptions:(id)options canGeocode:(BOOL)geocode onConnection:(id)connection
{
  cityCopy = city;
  optionsCopy = options;
  connectionCopy = connection;
  if (cityCopy)
  {
    v16 = [(WAForecastOperation *)self init];
    if (v16)
    {
      wfLocation = [cityCopy wfLocation];
      location = v16->_location;
      v16->_location = wfLocation;

      objc_storeStrong(&v16->_city, city);
      v16->_units = units;
      objc_storeStrong(&v16->_requestOptions, options);
      objc_storeStrong(&v16->_connection, connection);
      v16->_isLocationInGeocodeSample = geocode;
    }

    self = v16;
    selfCopy = self;
  }

  else
  {
    NSLog(&cfstr_NoCityBailing.isa);
    selfCopy = 0;
  }

  return selfCopy;
}

- (WAForecastOperation)initWithLocation:(id)location onConnection:(id)connection
{
  locationCopy = location;
  connectionCopy = connection;
  if (locationCopy)
  {
    v12.receiver = self;
    v12.super_class = WAForecastOperation;
    v8 = [(WAForecastOperation *)&v12 init];
    v9 = v8;
    if (v8)
    {
      [(WAForecastOperation *)v8 setLocation:locationCopy];
      objc_storeStrong(&v9->_connection, connection);
      v9->_isLocationInGeocodeSample = 1;
    }

    self = v9;
    selfCopy = self;
  }

  else
  {
    NSLog(&cfstr_NoLocationBail.isa);
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)_needsGeolocation
{
  city = [(WAForecastOperation *)self city];
  v4 = +[WeatherInternalPreferences sharedInternalPreferences];
  v5 = [v4 BOOLForKey:@"EnableTimeZoneNeverFresh"];

  timeZoneIsFresh = [city timeZoneIsFresh];
  if (city && ((timeZoneIsFresh ^ 1 | v5) & 1) != 0 && [(WAForecastOperation *)self isLocationInGeocodeSample])
  {
    v7 = WALogForCategory(4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(WAForecastOperation *)city _needsGeolocation];
    }
  }

  else
  {
    location = [(WAForecastOperation *)self location];
    if (location)
    {
      v9 = location;
      location2 = [(WAForecastOperation *)self location];
      needsGeocoding = [location2 needsGeocoding];

      if (!needsGeocoding)
      {
        v12 = 0;
        goto LABEL_12;
      }
    }

    v7 = WALogForCategory(4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(WAForecastOperation *)self _needsGeolocation];
    }
  }

  v12 = 1;
LABEL_12:

  return v12;
}

- (void)main
{
  *buf = 138412546;
  *(buf + 4) = self;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_272ACF000, log, OS_LOG_TYPE_ERROR, "Location data missing for location %@ / city %@", buf, 0x16u);
}

void __27__WAForecastOperation_main__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  if (v8 && !v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained setLocation:v8];

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

void __27__WAForecastOperation_main__block_invoke_30(uint64_t a1, void *a2, void *a3, void *a4)
{
  v55[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = v9;
LABEL_3:
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained _failWithError:v10];
    goto LABEL_10;
  }

  if (!*(*(*(a1 + 48) + 8) + 40) || ([v7 currentObservations], v12 = objc_claimAutoreleasedReturnValue(), v12, !v12))
  {
    v13 = [*(a1 + 32) city];
    v54 = *MEMORY[0x277CCA450];
    v55[0] = @"A successful todayRequestHandler callback should always have valid location and conditions set";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:&v54 count:1];
    v10 = WAErrorWithCode(0, 0, v13, v14);

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v15 = [v7 currentObservations];
  v16 = objc_loadWeakRetained((a1 + 56));
  [v16 setCurrentWeatherConditions:v15];

  v17 = [v7 dailyForecastedConditions];
  v18 = objc_loadWeakRetained((a1 + 56));
  [v18 setDailyForecastConditions:v17];

  v19 = [v7 hourlyForecastedConditions];
  v20 = objc_loadWeakRetained((a1 + 56));
  [v20 setHourlyForecastConditions:v19];

  v21 = [v7 airQualityObservations];
  v22 = objc_loadWeakRetained((a1 + 56));
  [v22 setAirQualityConditions:v21];

  v23 = [v7 severeWeatherEvents];
  v24 = objc_loadWeakRetained((a1 + 56));
  [v24 setSevereWeatherEvents:v23];

  v25 = [v7 changeForecasts];
  v26 = objc_loadWeakRetained((a1 + 56));
  [v26 setChangeForecasts:v25];

  v27 = [v7 nextHourPrecipitation];
  v28 = objc_loadWeakRetained((a1 + 56));
  [v28 setNextHourPrecipitation:v27];

  v29 = *(*(*(a1 + 48) + 8) + 40);
  v30 = [v7 currentObservations];
  v31 = [WACurrentForecast currentForecastForLocation:v29 conditions:v30];
  v32 = objc_loadWeakRetained((a1 + 56));
  [v32 setCurrentConditions:v31];

  v33 = [v7 dailyForecastedConditions];
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __27__WAForecastOperation_main__block_invoke_2;
  v53[3] = &unk_279E683F8;
  v53[4] = *(a1 + 48);
  v10 = [v33 na_map:v53];

  v34 = objc_loadWeakRetained((a1 + 56));
  [v34 setDailyForecasts:v10];

  v35 = objc_loadWeakRetained((a1 + 56));
  v36 = [v35 currentWeatherConditions];
  v37 = [v36 valueForComponent:*MEMORY[0x277D7B360]];

  v38 = objc_loadWeakRetained((a1 + 56));
  v39 = [v38 currentWeatherConditions];
  v40 = [v39 valueForComponent:*MEMORY[0x277D7B368]];

  v41 = [v7 hourlyForecastedConditions];
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __27__WAForecastOperation_main__block_invoke_3;
  v49[3] = &unk_279E68420;
  v42 = *(a1 + 48);
  v51 = v40;
  v52 = v42;
  v50 = v37;
  v43 = v40;
  WeakRetained = v37;
  v44 = [v41 na_map:v49];

  v45 = objc_loadWeakRetained((a1 + 56));
  [v45 setHourlyForecasts:v44];

  v46 = objc_loadWeakRetained((a1 + 56));
  LODWORD(v41) = [v46 shouldAttachRawAPIData];

  if (v41)
  {
    v47 = objc_loadWeakRetained((a1 + 56));
    [v47 setRawAPIData:v8];
  }

LABEL_10:
  dispatch_group_leave(*(a1 + 40));

  v48 = *MEMORY[0x277D85DE8];
}

- (void)cancel
{
  v6.receiver = self;
  v6.super_class = WAForecastOperation;
  [(WAForecastOperation *)&v6 cancel];
  aggregateRequest = [(WAForecastOperation *)self aggregateRequest];
  [aggregateRequest cancel];

  city = [(WAForecastOperation *)self city];
  v5 = WAErrorWithCode(3072, 0, city, 0);
  [(WAForecastOperation *)self _failWithError:v5];
}

- (BOOL)shouldRequestChangeInConditions
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  v7 = 0;
  if ([bundleIdentifier isEqualToString:@"com.apple.weather.widget"])
  {
    v4 = [MEMORY[0x277CBEAA8] now];
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v6 = [currentCalendar component:32 fromDate:v4];

    if (v6 > 18)
    {
      v7 = 1;
    }
  }

  return v7;
}

- (void)_failWithError:(id)error
{
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  error = [(WAForecastOperation *)selfCopy error];

  if (!error)
  {
    [(WAForecastOperation *)selfCopy setError:errorCopy];
  }

  objc_sync_exit(selfCopy);
}

- (void)_determineSunriseAndSunset
{
  v45 = *MEMORY[0x277D85DE8];
  currentWeatherConditions = [(WAForecastOperation *)self currentWeatherConditions];
  v4 = *MEMORY[0x277D7B310];
  v5 = [currentWeatherConditions valueForComponent:*MEMORY[0x277D7B310]];
  date = [v5 date];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  selfCopy = self;
  obj = [(WAForecastOperation *)self dailyForecastConditions];
  v6 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
  v36 = v4;
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    v10 = *v41;
    v11 = *MEMORY[0x277D7B360];
    v12 = *MEMORY[0x277D7B368];
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v41 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v40 + 1) + 8 * v13);
      v15 = [v14 valueForComponent:{v11, v36}];
      date2 = [v15 date];

      if (!v9 && date2)
      {
        v17 = [date2 laterDate:date];

        if (v17 == date2)
        {
          v9 = date2;
        }

        else
        {
          v9 = 0;
        }
      }

      v18 = [v14 valueForComponent:v12];
      date3 = [v18 date];

      if (!v8 && date3)
      {
        v20 = [date3 laterDate:date];

        if (v20 == date3)
        {
          v8 = date3;
        }

        else
        {
          v8 = 0;
        }
      }

      if (v8)
      {
        if (v9)
        {
          break;
        }
      }

      if (v7 == ++v13)
      {
        v7 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  [(WAForecastOperation *)selfCopy setSunset:v8];
  [(WAForecastOperation *)selfCopy setSunrise:v9];
  currentWeatherConditions2 = [(WAForecastOperation *)selfCopy currentWeatherConditions];
  v22 = [currentWeatherConditions2 valueForComponent:v36];
  date4 = [v22 date];
  [date4 timeIntervalSince1970];
  v25 = v24;

  sunset = [(WAForecastOperation *)selfCopy sunset];
  [sunset timeIntervalSince1970];
  v28 = v27;

  sunrise = [(WAForecastOperation *)selfCopy sunrise];
  [sunrise timeIntervalSince1970];
  v31 = v30;

  v32 = v25 <= v28;
  if (v25 >= v31)
  {
    v32 = 1;
  }

  v33 = v25 > v31;
  if (v25 >= v28)
  {
    v33 = 0;
  }

  if (v28 > v31)
  {
    v34 = v33;
  }

  else
  {
    v34 = v32;
  }

  [(WAForecastOperation *)selfCopy setIsDay:v34, v36];

  v35 = *MEMORY[0x277D85DE8];
}

- (void)_mapReferralLinks
{
  v10 = objc_opt_new();
  currentWeatherConditions = [(WAForecastOperation *)self currentWeatherConditions];
  v4 = [currentWeatherConditions valueForComponent:*MEMORY[0x277D7B328]];

  currentWeatherConditions2 = [(WAForecastOperation *)self currentWeatherConditions];
  v6 = [currentWeatherConditions2 valueForComponent:*MEMORY[0x277D7B338]];

  currentWeatherConditions3 = [(WAForecastOperation *)self currentWeatherConditions];
  v8 = [currentWeatherConditions3 valueForComponent:*MEMORY[0x277D7B388]];

  if (v4)
  {
    [v10 setObject:v4 forKeyedSubscript:@"ios"];
  }

  if (v8)
  {
    [v10 setObject:v8 forKeyedSubscript:@"web"];
  }

  v9 = v10;
  if (v6)
  {
    [v10 setObject:v6 forKeyedSubscript:@"mobile"];
    v9 = v10;
  }

  [(WAForecastOperation *)self setLinks:v9];
}

- (WAForecastModel)forecastModel
{
  error = [(WAForecastOperation *)self error];

  if (error)
  {
    v4 = 0;
  }

  else
  {
    v4 = objc_opt_new();
    city = [(WAForecastOperation *)self city];
    [v4 setCity:city];

    location = [(WAForecastOperation *)self location];
    [v4 setLocation:location];

    currentConditions = [(WAForecastOperation *)self currentConditions];
    [v4 setCurrentConditions:currentConditions];

    hourlyForecasts = [(WAForecastOperation *)self hourlyForecasts];
    [v4 setHourlyForecasts:hourlyForecasts];

    dailyForecasts = [(WAForecastOperation *)self dailyForecasts];
    [v4 setDailyForecasts:dailyForecasts];

    airQualityConditions = [(WAForecastOperation *)self airQualityConditions];
    [v4 setAirQualityConditions:airQualityConditions];

    sunrise = [(WAForecastOperation *)self sunrise];
    [v4 setSunrise:sunrise];

    sunset = [(WAForecastOperation *)self sunset];
    [v4 setSunset:sunset];

    currentWeatherConditions = [(WAForecastOperation *)self currentWeatherConditions];
    v14 = [currentWeatherConditions valueForComponent:*MEMORY[0x277D7B328]];
    [v4 setDeepLink:v14];

    currentWeatherConditions2 = [(WAForecastOperation *)self currentWeatherConditions];
    v16 = [currentWeatherConditions2 valueForComponent:*MEMORY[0x277D7B338]];
    [v4 setLink:v16];

    currentWeatherConditions3 = [(WAForecastOperation *)self currentWeatherConditions];
    [v4 setUnderlyingCurrentConditions:currentWeatherConditions3];

    hourlyForecastConditions = [(WAForecastOperation *)self hourlyForecastConditions];
    [v4 setUnderlyingHourlyConditions:hourlyForecastConditions];

    dailyForecastConditions = [(WAForecastOperation *)self dailyForecastConditions];
    [v4 setUnderlyingDailyConditions:dailyForecastConditions];

    changeForecasts = [(WAForecastOperation *)self changeForecasts];
    [v4 setChangeForecasts:changeForecasts];

    severeWeatherEvents = [(WAForecastOperation *)self severeWeatherEvents];
    [v4 setSevereWeatherEvents:severeWeatherEvents];

    nextHourPrecipitation = [(WAForecastOperation *)self nextHourPrecipitation];
    [v4 setNextHourPrecipitation:nextHourPrecipitation];
  }

  return v4;
}

- (void)_needsGeolocation
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_272ACF000, a2, OS_LOG_TYPE_ERROR, "Executing Geocode for reason: Timezone lacks freshness. (%@)", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end