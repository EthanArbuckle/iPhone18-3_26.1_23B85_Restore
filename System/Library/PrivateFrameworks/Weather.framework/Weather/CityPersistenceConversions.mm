@interface CityPersistenceConversions
+ (BOOL)cityDictionaryHasValidCoordinates:(id)a3;
+ (BOOL)isCityValid:(id)a3;
+ (id)cityFromALCity:(id)a3;
+ (id)cityFromCloudDictionary:(id)a3;
+ (id)cityFromDictionary:(id)a3;
+ (id)cloudDictionaryRepresentationOfALCity:(id)a3;
+ (id)cloudDictionaryRepresentationOfCity:(id)a3;
+ (id)dayForecastDictionariesFromCity:(id)a3;
+ (id)dictionaryRepresentationOfCity:(id)a3;
+ (id)dictionaryRepresentationOfScaleCategory:(id)a3;
+ (id)dictionaryRepresentationOfTemperature:(id)a3;
+ (id)hourlyForecastDictionariesFromCity:(id)a3;
+ (id)scaleCategoryFromDictionaryRepresentation:(id)a3;
+ (id)temperatureFromDictionaryRepresentation:(id)a3;
+ (id)weatherDetailsDictionaryFromCity:(id)a3;
+ (void)populateCity:(id)a3 withDayForecastDictionaries:(id)a4;
+ (void)populateCity:(id)a3 withHourlyForecastDictionaries:(id)a4;
@end

@implementation CityPersistenceConversions

+ (id)cityFromDictionary:(id)a3
{
  v93[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v93[0] = @"Name";
  v93[1] = @"Lat";
  v93[2] = @"Lon";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v93 count:3];
  v90[0] = MEMORY[0x277D85DD0];
  v90[1] = 3221225472;
  v90[2] = __49__CityPersistenceConversions_cityFromDictionary___block_invoke;
  v90[3] = &unk_279E68788;
  v6 = v4;
  v91 = v6;
  if (![v5 na_all:v90])
  {
    v7 = 0;
    goto LABEL_28;
  }

  v85 = v5;
  v7 = objc_alloc_init(City);
  v8 = [v6 objectForKey:@"Name"];
  [(City *)v7 setName:v8];

  v9 = [v6 objectForKey:@"Lat"];
  [v9 doubleValue];
  [(City *)v7 setLatitude:?];

  v10 = [v6 objectForKey:@"Lon"];
  [v10 doubleValue];
  [(City *)v7 setLongitude:?];

  v11 = [v6 objectForKey:@"Country"];
  [(City *)v7 setISO3166CountryAbbreviation:v11];

  v12 = MEMORY[0x277CBEBC0];
  v13 = [v6 objectForKey:@"Link"];
  v14 = [v12 URLWithString:v13];
  [(City *)v7 setLink:v14];

  v15 = MEMORY[0x277CBEBC0];
  v16 = [v6 objectForKey:@"Deeplink"];
  v17 = [v15 URLWithString:v16];
  [(City *)v7 setDeeplink:v17];

  v18 = [v6 objectForKey:@"UpdateStatus"];
  -[City setLastUpdateStatus:](v7, "setLastUpdateStatus:", [v18 intValue]);

  v19 = [v6 objectForKey:@"UpateTime"];
  [(City *)v7 setUpdateTime:v19];

  v20 = [v6 objectForKey:@"WindChill"];
  [v20 floatValue];
  [(City *)v7 setWindChill:?];

  v21 = [v6 objectForKey:@"HeatIndex"];
  [v21 floatValue];
  [(City *)v7 setHeatIndex:?];

  v22 = objc_opt_class();
  v23 = [v6 objectForKey:@"FeelsLike"];
  v24 = [v22 temperatureFromDictionaryRepresentation:v23];
  [(City *)v7 setFeelsLike:v24];

  v25 = [v6 objectForKey:@"DewPoint"];
  [v25 floatValue];
  [(City *)v7 setDewPoint:?];

  v26 = [v6 objectForKey:@"WindSpeed"];
  [v26 floatValue];
  [(City *)v7 setWindSpeed:?];

  v27 = [v6 objectForKey:@"WindDirection"];
  [v27 floatValue];
  [(City *)v7 setWindDirection:?];

  v28 = [v6 objectForKey:@"Humidity"];
  [v28 floatValue];
  [(City *)v7 setHumidity:?];

  v29 = [v6 objectForKey:@"Visibility"];
  [v29 floatValue];
  [(City *)v7 setVisibility:?];

  v30 = [v6 objectForKey:@"Pressure"];
  [v30 floatValue];
  [(City *)v7 setPressure:?];

  v31 = [v6 objectForKey:@"PressureRising"];
  -[City setPressureRising:](v7, "setPressureRising:", [v31 integerValue]);

  v32 = objc_opt_class();
  v33 = [v6 objectForKey:@"Temperature"];
  v34 = [v32 temperatureFromDictionaryRepresentation:v33];
  [(City *)v7 setTemperature:v34];

  if (v6)
  {
    v35 = [v6 objectForKey:@"BigIcon"];
    -[City setConditionCode:](v7, "setConditionCode:", [v35 unsignedIntValue]);
  }

  else
  {
    [(City *)v7 setConditionCode:3200];
  }

  v36 = [v6 objectForKey:@"ObservationTime"];
  -[City setObservationTime:](v7, "setObservationTime:", [v36 unsignedIntValue]);

  v37 = [v6 objectForKey:@"SunsetTime"];
  -[City setSunsetTime:](v7, "setSunsetTime:", [v37 unsignedIntValue]);

  v38 = [v6 objectForKey:@"SunriseTime"];
  -[City setSunriseTime:](v7, "setSunriseTime:", [v38 unsignedIntValue]);

  v39 = [v6 objectForKey:@"MoonPhase"];
  -[City setMoonPhase:](v7, "setMoonPhase:", [v39 unsignedIntValue]);

  v40 = [v6 objectForKey:@"AirQualityIdxKey"];
  [(City *)v7 setAirQualityIdx:v40];

  v41 = [v6 objectForKey:@"AirQualityCategoryKey"];
  [(City *)v7 setAirQualityCategory:v41];

  v42 = [v6 objectForKey:@"AirQualitySignificance"];
  -[City setAirQualitySignificance:](v7, "setAirQualitySignificance:", [v42 unsignedIntegerValue]);

  v43 = [v6 objectForKey:@"CityWeatherDisplayName"];
  [(City *)v7 setWeatherDisplayName:v43];

  v44 = [v6 objectForKey:@"CityWeatherLocationName"];
  [(City *)v7 setWeatherLocationName:v44];

  v45 = [v6 objectForKey:@"CitySearchTitle"];
  [(City *)v7 setSearchTitle:v45];

  v46 = [v6 objectForKey:@"CitySearchSubtitle"];
  [(City *)v7 setSearchSubtitle:v46];

  v47 = [v6 objectForKey:@"TimeZone"];
  if (v47)
  {
    v48 = [MEMORY[0x277CBEBB0] timeZoneWithName:v47];
    [(City *)v7 setTimeZone:v48];
  }

  v49 = [(City *)v7 location];
  if (v49)
  {
    v50 = v49;
    v51 = [(City *)v7 name];
    if (!v51)
    {
LABEL_14:

      goto LABEL_15;
    }

    v52 = v51;
    v53 = [(City *)v7 timeZone];

    if (v53)
    {
      v50 = objc_opt_new();
      v54 = [(City *)v7 name];
      [v50 setDisplayName:v54];

      v55 = [(City *)v7 location];
      [v50 setGeoLocation:v55];

      v56 = [(City *)v7 weatherDisplayName];
      [v50 setWeatherDisplayName:v56];

      v57 = [(City *)v7 weatherLocationName];
      [v50 setWeatherLocationName:v57];

      v58 = [(City *)v7 ISO3166CountryAbbreviation];

      if (v58)
      {
        v59 = [(City *)v7 ISO3166CountryAbbreviation];
        [v50 setCountryAbbreviation:v59];
      }

      v60 = [(City *)v7 timeZone];
      [v50 setTimeZone:v60];

      [(City *)v7 setWfLocation:v50];
      goto LABEL_14;
    }
  }

LABEL_15:
  v61 = [v6 objectForKey:@"CityTimeZoneUpdateDateKey"];
  v62 = [v61 unsignedIntegerValue];

  v84 = v47;
  if (v62)
  {
    [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v62];
  }

  else
  {
    [MEMORY[0x277CBEAA8] distantPast];
  }
  v83 = ;
  [(City *)v7 setTimeZoneUpdateDate:v83];
  v63 = [v6 objectForKeyedSubscript:@"Past24HoursPrecipitation"];
  [v63 floatValue];
  [(City *)v7 setPrecipitationPast24Hours:v64];

  v65 = [v6 objectForKeyedSubscript:@"UVIndex"];
  -[City setUVIndex:](v7, "setUVIndex:", [v65 unsignedIntegerValue]);

  v66 = [v6 objectForKeyedSubscript:@"DayForecasts"];
  [a1 populateCity:v7 withDayForecastDictionaries:v66];

  v67 = [v6 objectForKeyedSubscript:@"HourlyForecasts"];
  [a1 populateCity:v7 withHourlyForecastDictionaries:v67];

  v68 = objc_opt_class();
  v69 = [v6 objectForKeyedSubscript:@"AQIScaleCategory"];
  v70 = [v68 scaleCategoryFromDictionaryRepresentation:v69];
  [(City *)v7 setAirQualityScaleCategory:v70];

  v71 = [v6 objectForKey:@"NextHourPrecipitation"];
  if (v71)
  {
    v72 = [objc_alloc(MEMORY[0x277D7B288]) initWithDictionary:v71];
    [(City *)v7 setNextHourPrecipitation:v72];
  }

  v73 = [v6 objectForKey:@"SevereWeatherEvents"];
  v74 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v75 = v73;
  v76 = [v75 countByEnumeratingWithState:&v86 objects:v92 count:16];
  if (v76)
  {
    v77 = v76;
    v78 = *v87;
    do
    {
      for (i = 0; i != v77; ++i)
      {
        if (*v87 != v78)
        {
          objc_enumerationMutation(v75);
        }

        v80 = [objc_alloc(MEMORY[0x277D7B2B8]) initWithDictionary:*(*(&v86 + 1) + 8 * i)];
        [v74 addObject:v80];
      }

      v77 = [v75 countByEnumeratingWithState:&v86 objects:v92 count:16];
    }

    while (v77);
  }

  [(City *)v7 updateCityForSevereWeatherEvents:v74];
  v5 = v85;
LABEL_28:

  v81 = *MEMORY[0x277D85DE8];

  return v7;
}

uint64_t __49__CityPersistenceConversions_cityFromDictionary___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 allKeys];
  v5 = [v4 containsObject:v3];

  return v5;
}

+ (void)populateCity:(id)a3 withDayForecastDictionaries:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v25 = a3;
  v5 = a4;
  v6 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    LODWORD(v9) = 0;
    v10 = *v28;
    do
    {
      v11 = 0;
      v9 = v9;
      do
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v27 + 1) + 8 * v11);
        v13 = objc_alloc_init(WADayForecast);
        v14 = [v12 objectForKey:@"ForecastDayOfWeek"];
        -[WADayForecast setDayOfWeek:](v13, "setDayOfWeek:", [v14 unsignedIntValue]);

        [(WADayForecast *)v13 setDayNumber:v9];
        v15 = objc_opt_class();
        v16 = [v12 objectForKey:@"High"];
        v17 = [v15 temperatureFromDictionaryRepresentation:v16];
        [(WADayForecast *)v13 setHigh:v17];

        v18 = objc_opt_class();
        v19 = [v12 objectForKey:@"Low"];
        v20 = [v18 temperatureFromDictionaryRepresentation:v19];
        [(WADayForecast *)v13 setLow:v20];

        v21 = [v12 objectForKey:@"Precipitation"];
        [v21 floatValue];
        [(WADayForecast *)v13 setPercentPrecipitation:v22];

        v23 = [v12 objectForKey:@"Icon"];
        -[WADayForecast setIcon:](v13, "setIcon:", [v23 unsignedIntValue]);

        [v6 na_safeAddObject:v13];
        ++v9;

        ++v11;
      }

      while (v8 != v11);
      v8 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v8);
  }

  [v25 setDayForecasts:v6];
  v24 = *MEMORY[0x277D85DE8];
}

+ (void)populateCity:(id)a3 withHourlyForecastDictionaries:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v21 = a3;
  v5 = a4;
  v6 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      v10 = 0;
      do
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v23 + 1) + 8 * v10);
        v12 = objc_alloc_init(WAHourlyForecast);
        v13 = objc_opt_class();
        v14 = [v11 objectForKey:@"Temperature"];
        v15 = [v13 temperatureFromDictionaryRepresentation:v14];
        [(WAHourlyForecast *)v12 setTemperature:v15];

        v16 = [v11 objectForKey:@"Time24"];
        [(WAHourlyForecast *)v12 setTime:v16];

        v17 = [v11 objectForKey:@"Condition"];
        -[WAHourlyForecast setConditionCode:](v12, "setConditionCode:", [v17 integerValue]);

        v18 = [v11 objectForKey:@"Precipitation"];
        [v18 floatValue];
        [(WAHourlyForecast *)v12 setPercentPrecipitation:v19];

        [v6 na_safeAddObject:v12];
        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v8);
  }

  [v21 setHourlyForecasts:v6];
  v20 = *MEMORY[0x277D85DE8];
}

+ (BOOL)isCityValid:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && ([v3 coordinate], CLLocationCoordinate2DIsValid(v8)))
  {
    v5 = [v4 name];
    v6 = [v5 length] != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)dictionaryRepresentationOfScaleCategory:(id)a3
{
  v14[3] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 localizedCategoryDescription];
    if (v5 && [v4 categoryIndex])
    {
      v6 = [v4 scaleClassName];

      if (v6)
      {
        v13[0] = @"AQICategoryDescription";
        v7 = [v4 localizedCategoryDescription];
        v14[0] = v7;
        v13[1] = @"AQICategoryIndex";
        v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "categoryIndex")}];
        v14[1] = v8;
        v13[2] = @"AQIScaleClass";
        v9 = [v4 scaleClassName];
        v14[2] = v9;
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];

        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  v10 = 0;
LABEL_8:

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)scaleCategoryFromDictionaryRepresentation:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"AQICategoryIndex"];
  v5 = [v4 integerValue];

  v6 = [v3 objectForKeyedSubscript:@"AQICategoryDescription"];
  v7 = v6;
  v8 = &stru_2882270E8;
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;

  v10 = [v3 objectForKeyedSubscript:@"AQIScaleClass"];

  v11 = NSClassFromString(v10);
  v12 = objc_alloc_init(v11);
  v13 = [v12 scaleCategoryForCategoryIndex:v5 localizedCategoryDescription:v9];

  return v13;
}

+ (id)dictionaryRepresentationOfTemperature:(id)a3
{
  v19[3] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v3 = a3;
    v4 = NSStringFromWFTemperatureUnit();
    v18[0] = v4;
    v5 = MEMORY[0x277CCABB0];
    [v3 fahrenheit];
    v6 = [v5 numberWithDouble:?];
    v19[0] = v6;
    v7 = NSStringFromWFTemperatureUnit();
    v18[1] = v7;
    v8 = MEMORY[0x277CCABB0];
    [v3 celsius];
    v9 = [v8 numberWithDouble:?];
    v19[1] = v9;
    v10 = NSStringFromWFTemperatureUnit();
    v18[2] = v10;
    v11 = MEMORY[0x277CCABB0];
    [v3 kelvin];
    v13 = v12;

    v14 = [v11 numberWithDouble:v13];
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

+ (id)temperatureFromDictionaryRepresentation:(id)a3
{
  v3 = a3;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v3 count])
      {
        v4 = objc_opt_new();
        v5 = NSStringFromWFTemperatureUnit();
        v6 = [v3 objectForKeyedSubscript:v5];
        [v6 doubleValue];
        [v4 setCelsius:?];

        v7 = NSStringFromWFTemperatureUnit();
        v8 = [v3 objectForKeyedSubscript:v7];
        [v8 doubleValue];
        [v4 setKelvin:?];

        v9 = NSStringFromWFTemperatureUnit();
        v10 = [v3 objectForKeyedSubscript:v9];
        [v10 doubleValue];
        [v4 setFahrenheit:?];

        goto LABEL_10;
      }
    }

    else
    {
      v11 = WALogForCategory(1);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [CityPersistenceConversions temperatureFromDictionaryRepresentation:v11];
      }

      if (objc_opt_respondsToSelector())
      {
        [v3 doubleValue];
        v4 = [objc_alloc(MEMORY[0x277D7B2C0]) initWithTemperatureUnit:2 value:v12];
        goto LABEL_10;
      }
    }
  }

  v4 = 0;
LABEL_10:

  return v4;
}

+ (id)dictionaryRepresentationOfCity:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([a1 isCityValid:v4])
  {
    v5 = [a1 weatherDetailsDictionaryFromCity:v4];
    v6 = [a1 dayForecastDictionariesFromCity:v4];
    [v5 na_safeSetObject:v6 forKey:@"DayForecasts"];

    v7 = [a1 hourlyForecastDictionariesFromCity:v4];
    [v5 na_safeSetObject:v7 forKey:@"HourlyForecasts"];

    v8 = [v4 nextHourPrecipitation];

    if (v8)
    {
      v9 = [v4 nextHourPrecipitation];
      v10 = [v9 dictionaryRepresentation];
      [v5 setObject:v10 forKey:@"NextHourPrecipitation"];
    }

    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = [v4 severeWeatherEvents];
    v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v21;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v20 + 1) + 8 * i) dictionaryRepresentation];
          [v11 addObject:v17];
        }

        v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v14);
    }

    if ([v11 count])
    {
      [v5 setObject:v11 forKey:@"SevereWeatherEvents"];
    }
  }

  else
  {
    v5 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (BOOL)cityDictionaryHasValidCoordinates:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 objectForKey:@"Lat"];
  v5 = [v3 objectForKey:@"Lon"];
  v6 = v5;
  if (v4 && v5 && (([v4 doubleValue], v7 != 0.0) || (objc_msgSend(v6, "doubleValue"), v8 != 0.0)))
  {
    v10 = 1;
  }

  else
  {
    v9 = WALogForCategory(5);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v3;
      _os_log_impl(&dword_272ACF000, v9, OS_LOG_TYPE_DEFAULT, "Not loading city due to invalid coordinates: %@", &v13, 0xCu);
    }

    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

+ (id)dayForecastDictionariesFromCity:(id)a3
{
  v4 = a3;
  if ([a1 isCityValid:v4])
  {
    v5 = [v4 dayForecasts];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __62__CityPersistenceConversions_dayForecastDictionariesFromCity___block_invoke;
    v8[3] = &__block_descriptor_40_e23__16__0__WADayForecast_8l;
    v8[4] = a1;
    v6 = [v5 na_map:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id __62__CityPersistenceConversions_dayForecastDictionariesFromCity___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a2;
  v5 = [v3 dictionary];
  v6 = *(a1 + 32);
  v7 = objc_opt_class();
  v8 = [v4 high];
  v9 = [v7 dictionaryRepresentationOfTemperature:v8];
  [v5 na_safeSetObject:v9 forKey:@"High"];

  v10 = *(a1 + 32);
  v11 = objc_opt_class();
  v12 = [v4 low];
  v13 = [v11 dictionaryRepresentationOfTemperature:v12];
  [v5 na_safeSetObject:v13 forKey:@"Low"];

  v14 = MEMORY[0x277CCABB0];
  [v4 percentPrecipitation];
  v15 = [v14 numberWithDouble:?];
  [v5 na_safeSetObject:v15 forKey:@"Precipitation"];

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "icon")}];
  [v5 na_safeSetObject:v16 forKey:@"Icon"];

  v17 = MEMORY[0x277CCABB0];
  v18 = [v4 dayOfWeek];

  v19 = [v17 numberWithUnsignedInteger:v18];
  [v5 na_safeSetObject:v19 forKey:@"ForecastDayOfWeek"];

  return v5;
}

+ (id)hourlyForecastDictionariesFromCity:(id)a3
{
  v4 = a3;
  if ([a1 isCityValid:v4])
  {
    v5 = [v4 hourlyForecasts];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __65__CityPersistenceConversions_hourlyForecastDictionariesFromCity___block_invoke;
    v8[3] = &__block_descriptor_40_e40___NSDictionary_16__0__WAHourlyForecast_8l;
    v8[4] = a1;
    v6 = [v5 na_map:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id __65__CityPersistenceConversions_hourlyForecastDictionariesFromCity___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a2;
  v5 = [v3 dictionary];
  v6 = *(a1 + 32);
  v7 = objc_opt_class();
  v8 = [v4 temperature];
  v9 = [v7 dictionaryRepresentationOfTemperature:v8];
  [v5 na_safeSetObject:v9 forKey:@"Temperature"];

  v10 = [v4 time];
  [v5 na_safeSetObject:v10 forKey:@"Time24"];

  v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "conditionCode")}];
  [v5 na_safeSetObject:v11 forKey:@"Condition"];

  v12 = MEMORY[0x277CCABB0];
  [v4 percentPrecipitation];
  v14 = v13;

  v15 = [v12 numberWithDouble:v14];
  [v5 na_safeSetObject:v15 forKey:@"Precipitation"];

  return v5;
}

+ (id)weatherDetailsDictionaryFromCity:(id)a3
{
  v4 = a3;
  if ([a1 isCityValid:v4])
  {
    v5 = [MEMORY[0x277CBEB38] dictionary];
    v6 = [v4 name];
    [v5 na_safeSetObject:v6 forKey:@"Name"];

    v7 = [v4 ISO3166CountryAbbreviation];
    [v5 na_safeSetObject:v7 forKey:@"Country"];

    v8 = [v4 link];
    v9 = [v8 absoluteString];
    [v5 na_safeSetObject:v9 forKey:@"Link"];

    v10 = [v4 deeplink];
    v11 = [v10 absoluteString];
    [v5 na_safeSetObject:v11 forKey:@"Deeplink"];

    v12 = MEMORY[0x277CCABB0];
    [v4 windChill];
    v13 = [v12 numberWithFloat:?];
    [v5 na_safeSetObject:v13 forKey:@"WindChill"];

    v14 = MEMORY[0x277CCABB0];
    [v4 heatIndex];
    v15 = [v14 numberWithFloat:?];
    [v5 na_safeSetObject:v15 forKey:@"HeatIndex"];

    v16 = objc_opt_class();
    v17 = [v4 feelsLike];
    v18 = [v16 dictionaryRepresentationOfTemperature:v17];
    [v5 na_safeSetObject:v18 forKey:@"FeelsLike"];

    v19 = MEMORY[0x277CCABB0];
    [v4 dewPoint];
    v20 = [v19 numberWithFloat:?];
    [v5 na_safeSetObject:v20 forKey:@"DewPoint"];

    v21 = MEMORY[0x277CCABB0];
    [v4 windSpeed];
    v22 = [v21 numberWithFloat:?];
    [v5 na_safeSetObject:v22 forKey:@"WindSpeed"];

    v23 = MEMORY[0x277CCABB0];
    [v4 windDirection];
    v24 = [v23 numberWithFloat:?];
    [v5 na_safeSetObject:v24 forKey:@"WindDirection"];

    v25 = MEMORY[0x277CCABB0];
    [v4 humidity];
    v26 = [v25 numberWithFloat:?];
    [v5 na_safeSetObject:v26 forKey:@"Humidity"];

    v27 = MEMORY[0x277CCABB0];
    [v4 visibility];
    v28 = [v27 numberWithFloat:?];
    [v5 na_safeSetObject:v28 forKey:@"Visibility"];

    v29 = MEMORY[0x277CCABB0];
    [v4 pressure];
    v30 = [v29 numberWithFloat:?];
    [v5 na_safeSetObject:v30 forKey:@"Pressure"];

    v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "pressureRising")}];
    [v5 na_safeSetObject:v31 forKey:@"PressureRising"];

    v32 = MEMORY[0x277CCABB0];
    [v4 latitude];
    v33 = [v32 numberWithDouble:?];
    [v5 na_safeSetObject:v33 forKey:@"Lat"];

    v34 = MEMORY[0x277CCABB0];
    [v4 longitude];
    v35 = [v34 numberWithDouble:?];
    [v5 na_safeSetObject:v35 forKey:@"Lon"];

    v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "lastUpdateStatus")}];
    [v5 na_safeSetObject:v36 forKey:@"UpdateStatus"];

    v37 = [v4 updateTime];
    if (v37)
    {
      [v5 na_safeSetObject:v37 forKey:@"UpateTime"];
    }

    else
    {
      v38 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:0.0];
      [v5 na_safeSetObject:v38 forKey:@"UpateTime"];
    }

    v39 = objc_opt_class();
    v40 = [v4 temperature];
    v41 = [v39 dictionaryRepresentationOfTemperature:v40];
    [v5 na_safeSetObject:v41 forKey:@"Temperature"];

    v42 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "conditionCode")}];
    [v5 na_safeSetObject:v42 forKey:@"BigIcon"];

    v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "observationTime")}];
    [v5 na_safeSetObject:v43 forKey:@"ObservationTime"];

    v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "sunsetTime")}];
    [v5 na_safeSetObject:v44 forKey:@"SunsetTime"];

    v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "sunriseTime")}];
    [v5 na_safeSetObject:v45 forKey:@"SunriseTime"];

    v46 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "moonPhase")}];
    [v5 na_safeSetObject:v46 forKey:@"MoonPhase"];

    v47 = [v4 airQualityIdx];
    [v5 na_safeSetObject:v47 forKey:@"AirQualityIdxKey"];

    v48 = [v4 airQualityCategory];
    [v5 na_safeSetObject:v48 forKey:@"AirQualityCategoryKey"];

    v49 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "airQualitySignificance")}];
    [v5 na_safeSetObject:v49 forKey:@"AirQualitySignificance"];

    v50 = [v4 weatherDisplayName];
    [v5 na_safeSetObject:v50 forKey:@"CityWeatherDisplayName"];

    v51 = [v4 weatherLocationName];
    [v5 na_safeSetObject:v51 forKey:@"CityWeatherLocationName"];

    v52 = [v4 searchTitle];
    [v5 na_safeSetObject:v52 forKey:@"CitySearchTitle"];

    v53 = [v4 searchSubtitle];
    [v5 na_safeSetObject:v53 forKey:@"CitySearchSubtitle"];

    v54 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "uvIndex")}];
    [v5 na_safeSetObject:v54 forKey:@"UVIndex"];

    v55 = MEMORY[0x277CCABB0];
    [v4 precipitationPast24Hours];
    v56 = [v55 numberWithDouble:?];
    [v5 na_safeSetObject:v56 forKey:@"Past24HoursPrecipitation"];

    v57 = [v4 timeZone];

    if (v57)
    {
      v58 = [v4 timeZone];
      v59 = [v58 name];
      [v5 na_safeSetObject:v59 forKey:@"TimeZone"];
    }

    v60 = [v4 timeZoneUpdateDate];
    if (v60)
    {
      v61 = [v4 timeZoneUpdateDate];
      v62 = [MEMORY[0x277CBEAA8] distantPast];
      v63 = [v61 isEqualToDate:v62];

      if (v63)
      {
        v60 = 0;
      }

      else
      {
        v64 = MEMORY[0x277CCABB0];
        v65 = [v4 timeZoneUpdateDate];
        [v65 timeIntervalSince1970];
        v60 = [v64 numberWithDouble:?];
      }
    }

    [v5 na_safeSetObject:v60 forKey:@"CityTimeZoneUpdateDateKey"];
    v66 = objc_opt_class();
    v67 = [v4 airQualityScaleCategory];
    v68 = [v66 dictionaryRepresentationOfScaleCategory:v67];
    [v5 na_safeSetObject:v68 forKey:@"AQIScaleCategory"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)cityFromCloudDictionary:(id)a3
{
  v19[3] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = *MEMORY[0x277D7B200];
  v5 = *MEMORY[0x277D7B1F0];
  v19[0] = *MEMORY[0x277D7B200];
  v19[1] = v5;
  v6 = *MEMORY[0x277D7B1F8];
  v19[2] = *MEMORY[0x277D7B1F8];
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:3];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __54__CityPersistenceConversions_cityFromCloudDictionary___block_invoke;
  v17[3] = &unk_279E68788;
  v8 = v3;
  v18 = v8;
  if ([v7 na_all:v17])
  {
    v9 = objc_alloc_init(City);
    v10 = [v8 objectForKeyedSubscript:v4];
    [(City *)v9 setName:v10];

    v11 = [v8 objectForKeyedSubscript:v5];
    [v11 doubleValue];
    [(City *)v9 setLatitude:?];

    v12 = [v8 objectForKeyedSubscript:v6];
    [v12 doubleValue];
    [(City *)v9 setLongitude:?];

    v13 = [v8 objectForKeyedSubscript:*MEMORY[0x277D7B210]];
    [(City *)v9 setSearchTitle:v13];

    v14 = [v8 objectForKeyedSubscript:*MEMORY[0x277D7B208]];
    [(City *)v9 setSearchSubtitle:v14];
  }

  else
  {
    v9 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v9;
}

uint64_t __54__CityPersistenceConversions_cityFromCloudDictionary___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 allKeys];
  v5 = [v4 containsObject:v3];

  return v5;
}

+ (id)cloudDictionaryRepresentationOfCity:(id)a3
{
  v22[3] = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (([v3 isLocalWeatherCity] & 1) != 0 || (objc_msgSend(v3, "latitude"), v4 == 0.0) || (objc_msgSend(v3, "longitude"), v5 == 0.0) || (objc_msgSend(v3, "name"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "length"), v9, !v10))
  {
    v6 = 0;
  }

  else
  {
    v21[0] = *MEMORY[0x277D7B200];
    v11 = [v3 name];
    v22[0] = v11;
    v21[1] = *MEMORY[0x277D7B1F0];
    v12 = MEMORY[0x277CCABB0];
    [v3 latitude];
    v13 = [v12 numberWithDouble:?];
    v22[1] = v13;
    v21[2] = *MEMORY[0x277D7B1F8];
    v14 = MEMORY[0x277CCABB0];
    [v3 longitude];
    v15 = [v14 numberWithDouble:?];
    v22[2] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];
    v6 = [v16 mutableCopy];

    v17 = [v3 searchTitle];

    if (v17)
    {
      v18 = [v3 searchTitle];
      [v6 setObject:v18 forKeyedSubscript:*MEMORY[0x277D7B210]];
    }

    v19 = [v3 searchSubtitle];

    if (v19)
    {
      v20 = [v3 searchSubtitle];
      [v6 setObject:v20 forKeyedSubscript:*MEMORY[0x277D7B208]];
    }
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)cityFromALCity:(id)a3
{
  v3 = a3;
  v4 = [v3 name];
  v5 = [v4 length];

  if (!v5 || ([v3 latitude], v6 == 0.0) || (objc_msgSend(v3, "longitude"), v7 == 0.0))
  {
    v8 = 0;
  }

  else
  {
    v8 = objc_alloc_init(City);
    v10 = [v3 name];
    [(City *)v8 setName:v10];

    [v3 latitude];
    [(City *)v8 setLatitude:v11];
    [v3 longitude];
    [(City *)v8 setLongitude:v12];
    v13 = [v3 localeCode];
    [(City *)v8 setISO3166CountryAbbreviation:v13];
  }

  return v8;
}

+ (id)cloudDictionaryRepresentationOfALCity:(id)a3
{
  v16[3] = *MEMORY[0x277D85DE8];
  v15[0] = *MEMORY[0x277D7B200];
  v3 = a3;
  v4 = [v3 name];
  v16[0] = v4;
  v15[1] = *MEMORY[0x277D7B1F0];
  v5 = MEMORY[0x277CCABB0];
  [v3 latitude];
  v6 = [v5 numberWithFloat:?];
  v16[1] = v6;
  v15[2] = *MEMORY[0x277D7B1F8];
  v7 = MEMORY[0x277CCABB0];
  [v3 longitude];
  v9 = v8;

  LODWORD(v10) = v9;
  v11 = [v7 numberWithFloat:v10];
  v16[2] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end