@interface WAForecastOperation
- (BOOL)_needsGeolocation;
- (BOOL)shouldRequestChangeInConditions;
- (WAForecastModel)forecastModel;
- (WAForecastOperation)initWithCity:(id)a3 withUnits:(int)a4 requestOptions:(id)a5 canGeocode:(BOOL)a6 onConnection:(id)a7;
- (WAForecastOperation)initWithLocation:(id)a3 onConnection:(id)a4;
- (void)_determineSunriseAndSunset;
- (void)_failWithError:(id)a3;
- (void)_mapReferralLinks;
- (void)_needsGeolocation;
- (void)cancel;
- (void)main;
@end

@implementation WAForecastOperation

- (WAForecastOperation)initWithCity:(id)a3 withUnits:(int)a4 requestOptions:(id)a5 canGeocode:(BOOL)a6 onConnection:(id)a7
{
  v13 = a3;
  v14 = a5;
  v15 = a7;
  if (v13)
  {
    v16 = [(WAForecastOperation *)self init];
    if (v16)
    {
      v17 = [v13 wfLocation];
      location = v16->_location;
      v16->_location = v17;

      objc_storeStrong(&v16->_city, a3);
      v16->_units = a4;
      objc_storeStrong(&v16->_requestOptions, a5);
      objc_storeStrong(&v16->_connection, a7);
      v16->_isLocationInGeocodeSample = a6;
    }

    self = v16;
    v19 = self;
  }

  else
  {
    NSLog(&cfstr_NoCityBailing.isa);
    v19 = 0;
  }

  return v19;
}

- (WAForecastOperation)initWithLocation:(id)a3 onConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v12.receiver = self;
    v12.super_class = WAForecastOperation;
    v8 = [(WAForecastOperation *)&v12 init];
    v9 = v8;
    if (v8)
    {
      [(WAForecastOperation *)v8 setLocation:v6];
      objc_storeStrong(&v9->_connection, a4);
      v9->_isLocationInGeocodeSample = 1;
    }

    self = v9;
    v10 = self;
  }

  else
  {
    NSLog(&cfstr_NoLocationBail.isa);
    v10 = 0;
  }

  return v10;
}

- (BOOL)_needsGeolocation
{
  v3 = [(WAForecastOperation *)self city];
  v4 = +[WeatherInternalPreferences sharedInternalPreferences];
  v5 = [v4 BOOLForKey:@"EnableTimeZoneNeverFresh"];

  v6 = [v3 timeZoneIsFresh];
  if (v3 && ((v6 ^ 1 | v5) & 1) != 0 && [(WAForecastOperation *)self isLocationInGeocodeSample])
  {
    v7 = WALogForCategory(4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(WAForecastOperation *)v3 _needsGeolocation];
    }
  }

  else
  {
    v8 = [(WAForecastOperation *)self location];
    if (v8)
    {
      v9 = v8;
      v10 = [(WAForecastOperation *)self location];
      v11 = [v10 needsGeocoding];

      if (!v11)
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
  *(buf + 4) = a1;
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
  v3 = [(WAForecastOperation *)self aggregateRequest];
  [v3 cancel];

  v4 = [(WAForecastOperation *)self city];
  v5 = WAErrorWithCode(3072, 0, v4, 0);
  [(WAForecastOperation *)self _failWithError:v5];
}

- (BOOL)shouldRequestChangeInConditions
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 bundleIdentifier];

  v7 = 0;
  if ([v3 isEqualToString:@"com.apple.weather.widget"])
  {
    v4 = [MEMORY[0x277CBEAA8] now];
    v5 = [MEMORY[0x277CBEA80] currentCalendar];
    v6 = [v5 component:32 fromDate:v4];

    if (v6 > 18)
    {
      v7 = 1;
    }
  }

  return v7;
}

- (void)_failWithError:(id)a3
{
  v6 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(WAForecastOperation *)v4 error];

  if (!v5)
  {
    [(WAForecastOperation *)v4 setError:v6];
  }

  objc_sync_exit(v4);
}

- (void)_determineSunriseAndSunset
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = [(WAForecastOperation *)self currentWeatherConditions];
  v4 = *MEMORY[0x277D7B310];
  v5 = [v3 valueForComponent:*MEMORY[0x277D7B310]];
  v39 = [v5 date];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v37 = self;
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
      v16 = [v15 date];

      if (!v9 && v16)
      {
        v17 = [v16 laterDate:v39];

        if (v17 == v16)
        {
          v9 = v16;
        }

        else
        {
          v9 = 0;
        }
      }

      v18 = [v14 valueForComponent:v12];
      v19 = [v18 date];

      if (!v8 && v19)
      {
        v20 = [v19 laterDate:v39];

        if (v20 == v19)
        {
          v8 = v19;
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

  [(WAForecastOperation *)v37 setSunset:v8];
  [(WAForecastOperation *)v37 setSunrise:v9];
  v21 = [(WAForecastOperation *)v37 currentWeatherConditions];
  v22 = [v21 valueForComponent:v36];
  v23 = [v22 date];
  [v23 timeIntervalSince1970];
  v25 = v24;

  v26 = [(WAForecastOperation *)v37 sunset];
  [v26 timeIntervalSince1970];
  v28 = v27;

  v29 = [(WAForecastOperation *)v37 sunrise];
  [v29 timeIntervalSince1970];
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

  [(WAForecastOperation *)v37 setIsDay:v34, v36];

  v35 = *MEMORY[0x277D85DE8];
}

- (void)_mapReferralLinks
{
  v10 = objc_opt_new();
  v3 = [(WAForecastOperation *)self currentWeatherConditions];
  v4 = [v3 valueForComponent:*MEMORY[0x277D7B328]];

  v5 = [(WAForecastOperation *)self currentWeatherConditions];
  v6 = [v5 valueForComponent:*MEMORY[0x277D7B338]];

  v7 = [(WAForecastOperation *)self currentWeatherConditions];
  v8 = [v7 valueForComponent:*MEMORY[0x277D7B388]];

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
  v3 = [(WAForecastOperation *)self error];

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = objc_opt_new();
    v5 = [(WAForecastOperation *)self city];
    [v4 setCity:v5];

    v6 = [(WAForecastOperation *)self location];
    [v4 setLocation:v6];

    v7 = [(WAForecastOperation *)self currentConditions];
    [v4 setCurrentConditions:v7];

    v8 = [(WAForecastOperation *)self hourlyForecasts];
    [v4 setHourlyForecasts:v8];

    v9 = [(WAForecastOperation *)self dailyForecasts];
    [v4 setDailyForecasts:v9];

    v10 = [(WAForecastOperation *)self airQualityConditions];
    [v4 setAirQualityConditions:v10];

    v11 = [(WAForecastOperation *)self sunrise];
    [v4 setSunrise:v11];

    v12 = [(WAForecastOperation *)self sunset];
    [v4 setSunset:v12];

    v13 = [(WAForecastOperation *)self currentWeatherConditions];
    v14 = [v13 valueForComponent:*MEMORY[0x277D7B328]];
    [v4 setDeepLink:v14];

    v15 = [(WAForecastOperation *)self currentWeatherConditions];
    v16 = [v15 valueForComponent:*MEMORY[0x277D7B338]];
    [v4 setLink:v16];

    v17 = [(WAForecastOperation *)self currentWeatherConditions];
    [v4 setUnderlyingCurrentConditions:v17];

    v18 = [(WAForecastOperation *)self hourlyForecastConditions];
    [v4 setUnderlyingHourlyConditions:v18];

    v19 = [(WAForecastOperation *)self dailyForecastConditions];
    [v4 setUnderlyingDailyConditions:v19];

    v20 = [(WAForecastOperation *)self changeForecasts];
    [v4 setChangeForecasts:v20];

    v21 = [(WAForecastOperation *)self severeWeatherEvents];
    [v4 setSevereWeatherEvents:v21];

    v22 = [(WAForecastOperation *)self nextHourPrecipitation];
    [v4 setNextHourPrecipitation:v22];
  }

  return v4;
}

- (void)_needsGeolocation
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_272ACF000, a2, OS_LOG_TYPE_ERROR, "Executing Geocode for reason: Timezone lacks freshness. (%@)", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end