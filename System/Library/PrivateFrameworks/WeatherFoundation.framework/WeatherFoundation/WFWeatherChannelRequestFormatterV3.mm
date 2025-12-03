@interface WFWeatherChannelRequestFormatterV3
+ (id)forecastRequest:(id)request forLocation:(id)location locale:(id)locale date:(id)date queryItems:(id)items rules:(id)rules;
+ (id)forecastRequest:(unint64_t)request forLocation:(id)location withUnits:(int)units locale:(id)locale date:(id)date rules:(id)rules options:(id)options;
+ (id)forecastRequestForComponents:(id)components location:(id)location locale:(id)locale date:(id)date queryItems:(id)items;
@end

@implementation WFWeatherChannelRequestFormatterV3

+ (id)forecastRequest:(unint64_t)request forLocation:(id)location withUnits:(int)units locale:(id)locale date:(id)date rules:(id)rules options:(id)options
{
  v68 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  localeCopy = locale;
  dateCopy = date;
  rulesCopy = rules;
  v16 = [MEMORY[0x277CBEB18] arrayWithCapacity:12];
  v17 = [MEMORY[0x277CBEB58] setWithCapacity:2];
  v18 = 0x277CCA000uLL;
  requestCopy3 = request;
  if (WFForecastTypeIsRequestedInTypes(1, request))
  {
    if ([WFRequestFormattingRules aqiEnabledByRules:rulesCopy forLocation:locationCopy])
    {
      requestCopy3 = request & 0xFFFFFFFFFFFFFFFELL;
      [v16 addObject:@"v3-wx-globalAirQuality"];
      countryCode = [localeCopy countryCode];
      AqiScaleForCountryCode(countryCode);
      requestCopy2 = request;
      v22 = locationCopy;
      v23 = localeCopy;
      v25 = v24 = rulesCopy;

      v26 = MEMORY[0x277CCAD18];
      name = [v25 name];
      v28 = [v26 queryItemWithName:@"scale" value:name];
      [v17 addObject:v28];

      rulesCopy = v24;
      localeCopy = v23;
      locationCopy = v22;
      request = requestCopy2;
      v18 = 0x277CCA000;
    }

    else
    {
      requestCopy3 = request;
      if (WFForecastTypeIsSingleType(request))
      {
        v29 = 0;
        v30 = dateCopy;
        goto LABEL_37;
      }
    }
  }

  if (WFForecastTypeIsRequestedInTypes(2, requestCopy3))
  {
    requestCopy3 &= ~2uLL;
    [v16 addObject:@"v3-wx-observations-current"];
    v31 = [*(v18 + 3352) queryItemWithName:@"units" value:@"m"];
    [v17 addObject:v31];
  }

  if (WFForecastTypeIsRequestedInTypes(4, requestCopy3))
  {
    requestCopy3 &= ~4uLL;
    [v16 addObject:@"v3-wx-forecast-hourly-1day"];
    v32 = [*(v18 + 3352) queryItemWithName:@"units" value:@"m"];
    [v17 addObject:v32];
  }

  if (WFForecastTypeIsRequestedInTypes(8, requestCopy3))
  {
    requestCopy3 &= ~8uLL;
    [v16 addObject:@"v3-wx-forecast-daily-10day"];
    v33 = [*(v18 + 3352) queryItemWithName:@"units" value:@"m"];
    [v17 addObject:v33];
  }

  if (WFForecastTypeIsRequestedInTypes(256, requestCopy3))
  {
    requestCopy3 &= ~0x100uLL;
    [v16 addObject:@"v3-links"];
    v34 = [*(v18 + 3352) queryItemWithName:@"par" value:@"apple_TWC"];
    [v17 addObject:v34];
  }

  if (WFForecastTypeIsRequestedInTypes(16, requestCopy3))
  {
    requestCopy3 &= ~0x10uLL;
    [v16 addObject:@"v2idxPollenDaypart10"];
  }

  v60 = rulesCopy;
  if (WFForecastTypeIsRequestedInTypes(32, requestCopy3))
  {
    requestCopy3 &= ~0x20uLL;
    [v16 addObject:@"v3-wx-conditions-historical-hourly-1day"];
    v35 = [*(v18 + 3352) queryItemWithName:@"units" value:@"m"];
    [v17 addObject:v35];
  }

  allObjects = [v17 allObjects];
  v37 = [allObjects mutableCopy];

  v38 = *(v18 + 3352);
  wf_weatherChannelGeocodeValue = [locationCopy wf_weatherChannelGeocodeValue];
  v40 = [v38 queryItemWithName:@"geocode" value:wf_weatherChannelGeocodeValue];
  [v37 addObject:v40];

  v41 = [*(v18 + 3352) queryItemWithName:@"format" value:@"json"];
  [v37 addObject:v41];

  v42 = *(v18 + 3352);
  languageCode = [localeCopy languageCode];
  v44 = languageCode;
  if (languageCode)
  {
    v45 = languageCode;
  }

  else
  {
    v45 = @"en";
  }

  v46 = [v42 queryItemWithName:@"language" value:v45];
  [v37 addObject:v46];

  v47 = [*(v18 + 3352) queryItemWithName:@"apiKey" value:@"daab481aeef8450eab481aeef8950e4d"];
  [v37 addObject:v47];

  v30 = dateCopy;
  if (requestCopy3)
  {
    v48 = WFLogForCategory(0);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      [WFWeatherChannelRequestFormatterV3 forecastRequest:request forLocation:v48 withUnits:? locale:? date:? rules:? options:?];
    }
  }

  if ([v16 count])
  {
    v49 = objc_alloc(MEMORY[0x277CCACE0]);
    hostURLForService = [self hostURLForService];
    v51 = [v49 initWithURL:hostURLForService resolvingAgainstBaseURL:0];

    if ([v16 count] == 1)
    {
      firstObject = [v16 firstObject];
      if ([@"v2idxPollenDaypart10" isEqualToString:firstObject])
      {
        v53 = @"v2/indices/pollen/daypart/10day";
      }

      else
      {
        v53 = [firstObject stringByReplacingOccurrencesOfString:@"-" withString:@"/"];
      }

      v55 = v53;

      [MEMORY[0x277CCACA8] stringWithFormat:@"/%@", v55];
    }

    else
    {
      v54 = MEMORY[0x277CCACA8];
      v55 = [v16 componentsJoinedByString:@""];;
      [v54 stringWithFormat:@"/v3/aggcommon/%@", v55];
    }
    v56 = ;
    [v51 setPath:v56];

    v29 = [WFWeatherChannelRequestFormatterV3 forecastRequestForComponents:v51 location:locationCopy locale:localeCopy date:dateCopy queryItems:v37];
  }

  else
  {
    v51 = WFLogForCategory(0);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v63 = objc_opt_class();
      v64 = 2048;
      requestCopy4 = request;
      v66 = 2112;
      v67 = locationCopy;
      v58 = v63;
      _os_log_error_impl(&dword_272B94000, v51, OS_LOG_TYPE_ERROR, "%{public}@ is unable to build %lu forecast request for %@.", buf, 0x20u);
    }

    v29 = 0;
  }

  rulesCopy = v60;
LABEL_37:

  return v29;
}

+ (id)forecastRequest:(id)request forLocation:(id)location locale:(id)locale date:(id)date queryItems:(id)items rules:(id)rules
{
  v13 = MEMORY[0x277CCACE0];
  itemsCopy = items;
  dateCopy = date;
  localeCopy = locale;
  locationCopy = location;
  requestCopy = request;
  v19 = [v13 alloc];
  hostURLForService = [self hostURLForService];
  v21 = [v19 initWithURL:hostURLForService resolvingAgainstBaseURL:0];

  v22 = MEMORY[0x277CCACA8];
  v23 = [requestCopy stringByReplacingOccurrencesOfString:@"-" withString:@"/"];

  v24 = [v22 stringWithFormat:@"/%@", v23];
  [v21 setPath:v24];

  v25 = [WFWeatherChannelRequestFormatterV3 forecastRequestForComponents:v21 location:locationCopy locale:localeCopy date:dateCopy queryItems:itemsCopy];

  return v25;
}

+ (id)forecastRequestForComponents:(id)components location:(id)location locale:(id)locale date:(id)date queryItems:(id)items
{
  componentsCopy = components;
  [componentsCopy setQueryItems:items];
  v9 = MEMORY[0x277CCAB70];
  v10 = [componentsCopy URL];

  v11 = [v9 requestWithURL:v10 cachePolicy:4 timeoutInterval:30.0];

  [v11 setHTTPShouldHandleCookies:0];

  return v11;
}

+ (void)forecastRequest:(uint64_t)a1 forLocation:(NSObject *)a2 withUnits:locale:date:rules:options:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_272B94000, a2, OS_LOG_TYPE_ERROR, "Unhandled forecast request type: %lu", &v2, 0xCu);
}

@end