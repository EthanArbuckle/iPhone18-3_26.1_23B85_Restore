@interface WFWeatherDataServiceRequestFormatterV1
+ (id)aqiRequestForScaleNamed:(id)named language:(id)language;
+ (id)forecastRequest:(unint64_t)request forLocation:(id)location withUnits:(int)units locale:(id)locale date:(id)date rules:(id)rules options:(id)options;
+ (id)geocodePathForLocation:(id)location rules:(id)rules;
+ (id)hostURLForEnvironment:(id)environment;
+ (id)hostURLForService;
+ (id)languagePathForLocale:(id)locale;
@end

@implementation WFWeatherDataServiceRequestFormatterV1

+ (id)hostURLForEnvironment:(id)environment
{
  v3 = WeatherFoundationInternalUserDefaults();
  v4 = [v3 stringForKey:@"WDSEndpointOverride"];

  if (v4 && ([v4 isEqualToString:@"default"] & 1) == 0)
  {
    v9 = [MEMORY[0x277CBEBC0] URLWithString:v4];
  }

  else
  {
    v5 = WeatherFoundationInternalUserDefaults();
    v6 = [v5 stringForKey:@"WDSEnvironment"];

    if ([v6 isEqualToString:@"wdsv1_prod_origin"])
    {
      v7 = MEMORY[0x277CBEBC0];
      v8 = @"https://weather-data-origin.apple.com";
    }

    else if ([v6 isEqualToString:@"wdsv1_dev"])
    {
      v7 = MEMORY[0x277CBEBC0];
      v8 = @"https://devel.weather-data.newsapps.apple.com";
    }

    else if ([v6 isEqualToString:@"wdsv1_test"])
    {
      v7 = MEMORY[0x277CBEBC0];
      v8 = @"https://test.weather-data.newsapps.apple.com";
    }

    else if ([v6 isEqualToString:@"wdsv1_qa"])
    {
      v7 = MEMORY[0x277CBEBC0];
      v8 = @"https://qa.weather-data.newsapps.apple.com";
    }

    else
    {
      v10 = [v6 isEqualToString:@"wdsv1_staging"];
      v7 = MEMORY[0x277CBEBC0];
      if (v10)
      {
        v8 = @"https://staging-weather-data.apple.com";
      }

      else
      {
        v8 = @"https://weather-data.apple.com";
      }
    }

    v9 = [v7 URLWithString:v8];
  }

  return v9;
}

+ (id)hostURLForService
{
  v2 = objc_opt_class();

  return [v2 hostURLForEnvironment:0];
}

+ (id)forecastRequest:(unint64_t)request forLocation:(id)location withUnits:(int)units locale:(id)locale date:(id)date rules:(id)rules options:(id)options
{
  v81 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  localeCopy = locale;
  dateCopy = date;
  rulesCopy = rules;
  v18 = locationCopy;
  optionsCopy = options;
  geoLocation = [locationCopy geoLocation];

  if (geoLocation)
  {
    v69 = optionsCopy;
    v21 = +[WFWeatherConditions calendar];
    v22 = [v21 copy];

    timeZone = [v18 timeZone];
    v70 = localeCopy;
    if (timeZone)
    {
      [v22 setTimeZone:timeZone];
    }

    else
    {
      systemTimeZone = [MEMORY[0x277CBEBB0] systemTimeZone];
      [v22 setTimeZone:systemTimeZone];
    }

    v64 = v22;
    v65 = dateCopy;
    v28 = [v22 components:28 fromDate:dateCopy];
    v29 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v28, "year")}];
    stringValue = [v29 stringValue];

    v30 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v28, "day")}];
    stringValue2 = [v30 stringValue];

    v31 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v28, "month")}];
    stringValue3 = [v31 stringValue];

    v32 = [MEMORY[0x277CBEB18] arrayWithCapacity:12];
    v33 = objc_alloc_init(MEMORY[0x277CBEB58]);
    requestCopy2 = request;
    v63 = v28;
    if (WFForecastTypeIsRequestedInTypes(1, request))
    {
      if (rulesCopy && ![v18 shouldQueryForAirQualityData])
      {
        if (WFForecastTypeIsSingleType(request))
        {
          v24 = rulesCopy;
          v26 = 0;
          optionsCopy = v69;
          localeCopy = v70;
LABEL_54:

          v25 = v64;
          dateCopy = v65;
          goto LABEL_55;
        }

        v59 = WFLogForCategory(2uLL);
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v76 = v18;
          _os_log_impl(&dword_272B94000, v59, OS_LOG_TYPE_DEFAULT, "AQI is not enabled for the location. AQI will not be requested. location=%{public}@", buf, 0xCu);
        }

        requestCopy2 = request;
      }

      else
      {
        requestCopy2 = request & 0xFFFFFFFFFFFFFFFELL;
        [v32 addObject:@"air_quality"];
      }
    }

    if (WFForecastTypeIsRequestedInTypes(2, requestCopy2))
    {
      requestCopy2 &= ~2uLL;
      [v32 addObject:@"current_observations"];
    }

    if (WFForecastTypeIsRequestedInTypes(4, requestCopy2))
    {
      requestCopy2 &= ~4uLL;
      [v32 addObject:@"hourly_forecast"];
    }

    if (WFForecastTypeIsRequestedInTypes(8, requestCopy2))
    {
      requestCopy2 &= ~8uLL;
      [v32 addObject:@"daily_forecast"];
    }

    if (WFForecastTypeIsRequestedInTypes(256, requestCopy2))
    {
      requestCopy2 &= ~0x100uLL;
      [v32 addObject:@"now_links"];
    }

    if (WFForecastTypeIsRequestedInTypes(16, requestCopy2))
    {
      requestCopy2 &= ~0x10uLL;
      [v32 addObject:@"primaryPollutant"];
    }

    if (WFForecastTypeIsRequestedInTypes(64, requestCopy2))
    {
      requestCopy2 &= ~0x40uLL;
      [v32 addObject:@"daily_history"];
      v35 = [MEMORY[0x277CCAD18] queryItemWithName:@"dayOfMonth" value:stringValue2];
      [v33 addObject:v35];

      v36 = [MEMORY[0x277CCAD18] queryItemWithName:@"month" value:stringValue3];
      [v33 addObject:v36];

      v37 = [MEMORY[0x277CCAD18] queryItemWithName:@"year" value:stringValue];
      [v33 addObject:v37];
    }

    if (WFForecastTypeIsRequestedInTypes(128, requestCopy2))
    {
      requestCopy2 &= ~0x80uLL;
      [v32 addObject:@"daily_almanac"];
      v38 = [MEMORY[0x277CCAD18] queryItemWithName:@"dayOfMonth" value:stringValue2];
      [v33 addObject:v38];

      v39 = [MEMORY[0x277CCAD18] queryItemWithName:@"month" value:stringValue3];
      [v33 addObject:v39];
    }

    if (WFForecastTypeIsRequestedInTypes(512, requestCopy2))
    {
      requestCopy2 &= ~0x200uLL;
      [v32 addObject:@"weather_change"];
    }

    if (WFForecastTypeIsRequestedInTypes(1024, requestCopy2))
    {
      requestCopy2 &= ~0x400uLL;
      [v32 addObject:@"severe_weather"];
    }

    if (WFForecastTypeIsRequestedInTypes(2048, requestCopy2))
    {
      requestCopy2 &= ~0x800uLL;
      [v32 addObject:@"next_hour_forecast"];
    }

    if (requestCopy2)
    {
      v40 = WFLogForCategory(0);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        +[WFWeatherDataServiceRequestFormatterV1 forecastRequest:forLocation:withUnits:locale:date:rules:options:];
      }
    }

    if (![v32 count])
    {
      v24 = rulesCopy;
      hostURLForService = WFLogForCategory(0);
      if (os_log_type_enabled(hostURLForService, OS_LOG_TYPE_ERROR))
      {
        v60 = objc_opt_class();
        *buf = 138543874;
        v76 = v60;
        v77 = 2048;
        requestCopy3 = request;
        v79 = 2112;
        v80 = v18;
        v61 = v60;
        _os_log_error_impl(&dword_272B94000, hostURLForService, OS_LOG_TYPE_ERROR, "%{public}@ is unable to build %lu forecast request for %@.", buf, 0x20u);
      }

      v26 = 0;
      goto LABEL_53;
    }

    hostURLForService = [self hostURLForService];
    v42 = [v32 componentsJoinedByString:{@", "}];
    v43 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:hostURLForService resolvingAgainstBaseURL:0];
    v62 = v42;
    v44 = [MEMORY[0x277CCAD18] queryItemWithName:@"include" value:v42];
    [v33 addObject:v44];

    if ((units - 2) < 2)
    {
      v46 = @"m";
    }

    else if (units == 1)
    {
      v46 = @"e";
    }

    else
    {
      if (!units)
      {
        v45 = MEMORY[0x277CCAD18];
        v46 = @"m";
LABEL_50:
        v47 = [v45 queryItemWithName:@"units" value:v46];
        [v33 addObject:v47];

        allObjects = [v33 allObjects];
        [v43 setQueryItems:allObjects];

        v49 = [self languagePathForLocale:v70];
        v67 = v18;
        v24 = rulesCopy;
        v50 = [objc_opt_class() geocodePathForLocation:v18 rules:rulesCopy];
        v51 = [MEMORY[0x277CCACA8] stringWithFormat:@"/v1/weather/%@/%@", v49, v50];
        [v43 setPath:v51];

        v52 = MEMORY[0x277CCAB70];
        v53 = [v43 URL];
        v54 = [v52 requestWithURL:v53 cachePolicy:4 timeoutInterval:30.0];

        v55 = objc_opt_new();
        [WFWeatherDataServiceRequestSigner signRequest:v54 withDate:v55];

        [v54 setHTTPMethod:@"GET"];
        [v54 setHTTPShouldHandleCookies:0];
        httpHeaderDictionary = [v69 httpHeaderDictionary];
        v73[0] = MEMORY[0x277D85DD0];
        v73[1] = 3221225472;
        v73[2] = __106__WFWeatherDataServiceRequestFormatterV1_forecastRequest_forLocation_withUnits_locale_date_rules_options___block_invoke;
        v73[3] = &unk_279E6ED10;
        v26 = v54;
        v74 = v26;
        [httpHeaderDictionary enumerateKeysAndObjectsUsingBlock:v73];
        v57 = WFLogForCategory(2uLL);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
        {
          [WFWeatherDataServiceRequestFormatterV1 forecastRequest:v26 forLocation:? withUnits:? locale:? date:? rules:? options:?];
        }

        v18 = v67;
LABEL_53:
        optionsCopy = v69;

        localeCopy = v70;
        goto LABEL_54;
      }

      v46 = 0;
    }

    v45 = MEMORY[0x277CCAD18];
    goto LABEL_50;
  }

  v24 = rulesCopy;
  v25 = WFLogForCategory(2uLL);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    +[WFWeatherDataServiceRequestFormatterV1 forecastRequest:forLocation:withUnits:locale:date:rules:options:];
  }

  v26 = 0;
LABEL_55:

  return v26;
}

+ (id)aqiRequestForScaleNamed:(id)named language:(id)language
{
  namedCopy = named;
  languageCopy = language;
  if (namedCopy)
  {
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    v9 = MEMORY[0x277CCACA8];
    countryCode = [currentLocale countryCode];
    v11 = [v9 stringWithFormat:@"%@_%@", languageCopy, countryCode];

    hostURLForService = [self hostURLForService];
    v13 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:hostURLForService resolvingAgainstBaseURL:0];
    namedCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@/%@", @"/v1/airQualityScale", v11, namedCopy];
    [v13 setPath:namedCopy];

    v15 = MEMORY[0x277CCAB70];
    v16 = [v13 URL];
    v17 = [v15 requestWithURL:v16 cachePolicy:4 timeoutInterval:30.0];

    v18 = objc_opt_new();
    [WFWeatherDataServiceRequestSigner signRequest:v17 withDate:v18];

    [v17 setHTTPMethod:@"GET"];
    [v17 setHTTPShouldHandleCookies:0];
    v19 = WFLogForCategory(2uLL);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [WFWeatherDataServiceRequestFormatterV1 aqiRequestForScaleNamed:v17 language:?];
    }
  }

  else
  {
    currentLocale = WFLogForCategory(2uLL);
    if (os_log_type_enabled(currentLocale, OS_LOG_TYPE_ERROR))
    {
      [WFWeatherDataServiceRequestFormatterV1 aqiRequestForScaleNamed:currentLocale language:?];
    }

    v17 = 0;
  }

  return v17;
}

+ (id)geocodePathForLocation:(id)location rules:(id)rules
{
  locationCopy = location;
  rulesCopy = rules;
  v7 = rulesCopy;
  if (rulesCopy)
  {
    locationNumDecimalsOfPrecision = [rulesCopy locationNumDecimalsOfPrecision];
    if (locationNumDecimalsOfPrecision < 0)
    {
      v9 = MEMORY[0x277CCACA8];
      geoLocation = [locationCopy geoLocation];
      [geoLocation coordinate];
      v12 = v11;
      geoLocation2 = [locationCopy geoLocation];
      [geoLocation2 coordinate];
      v15 = [v9 stringWithFormat:@"%f/%f", v12, v14];

      v16 = WFLogForCategory(2uLL);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        +[WFWeatherDataServiceRequestFormatterV1 geocodePathForLocation:rules:];
      }

      goto LABEL_9;
    }
  }

  else
  {
    locationNumDecimalsOfPrecision = 3;
  }

  v17 = MEMORY[0x277CCACA8];
  geoLocation3 = [locationCopy geoLocation];
  [geoLocation3 coordinate];
  v16 = [v17 stringWithFormat:@"%.*f", locationNumDecimalsOfPrecision, v19];

  v20 = MEMORY[0x277CCACA8];
  geoLocation4 = [locationCopy geoLocation];
  [geoLocation4 coordinate];
  v23 = [v20 stringWithFormat:@"%.*f", locationNumDecimalsOfPrecision, v22];

  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", v16, v23];
  v24 = WFLogForCategory(2uLL);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    [(WFWeatherDataServiceRequestFormatterV1 *)v15 geocodePathForLocation:locationNumDecimalsOfPrecision rules:v24];
  }

LABEL_9:

  return v15;
}

+ (id)languagePathForLocale:(id)locale
{
  v3 = MEMORY[0x277CCA8D8];
  localeCopy = locale;
  mainBundle = [v3 mainBundle];
  preferredLocalizations = [mainBundle preferredLocalizations];
  v7 = [preferredLocalizations objectAtIndex:0];

  v8 = [v7 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

  v9 = MEMORY[0x277CCACA8];
  countryCode = [localeCopy countryCode];

  v11 = [v9 stringWithFormat:@"%@_%@", v8, countryCode];

  return v11;
}

+ (void)forecastRequest:forLocation:withUnits:locale:date:rules:options:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v3 = 2048;
  v4 = v0;
  _os_log_error_impl(&dword_272B94000, v1, OS_LOG_TYPE_ERROR, "Unhandled forecast request type. initialRequest=%lu, unhandled=%lu", v2, 0x16u);
}

+ (void)forecastRequest:(void *)a1 forLocation:withUnits:locale:date:rules:options:.cold.2(void *a1)
{
  v1 = [a1 URL];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2(&dword_272B94000, v2, v3, "formatted WDS forecast request: %@", v4, v5, v6, v7, v8);
}

+ (void)forecastRequest:forLocation:withUnits:locale:date:rules:options:.cold.3()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_272B94000, v0, OS_LOG_TYPE_ERROR, "Cannot format a forecast request without a geolocation: %@", v1, 0xCu);
}

+ (void)aqiRequestForScaleNamed:(void *)a1 language:.cold.1(void *a1)
{
  v1 = [a1 URL];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2(&dword_272B94000, v2, v3, "formatted WDS AQI scale request: %@", v4, v5, v6, v7, v8);
}

+ (void)geocodePathForLocation:rules:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_272B94000, v0, OS_LOG_TYPE_DEBUG, "Using the maximum digits of precision: %@", v1, 0xCu);
}

+ (void)geocodePathForLocation:(os_log_t)log rules:.cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 134218242;
  v4 = a2;
  v5 = 2112;
  v6 = a1;
  _os_log_debug_impl(&dword_272B94000, log, OS_LOG_TYPE_DEBUG, "Using %ld digits of precision: %@", &v3, 0x16u);
}

@end