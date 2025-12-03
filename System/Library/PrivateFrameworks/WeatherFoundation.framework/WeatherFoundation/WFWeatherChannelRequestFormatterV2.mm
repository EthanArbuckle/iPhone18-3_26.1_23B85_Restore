@interface WFWeatherChannelRequestFormatterV2
+ (id)airQualityRequestForLocation:(id)location locale:(id)locale;
+ (id)forecastRequest:(unint64_t)request forLocation:(id)location withUnits:(int)units locale:(id)locale date:(id)date rules:(id)rules options:(id)options;
+ (id)forecastRequestForRequest:(id)request queryItems:(id)items forLocation:(id)location rules:(id)rules;
+ (id)forecastRequestForURL:(id)l queryItems:(id)items;
@end

@implementation WFWeatherChannelRequestFormatterV2

+ (id)forecastRequest:(unint64_t)request forLocation:(id)location withUnits:(int)units locale:(id)locale date:(id)date rules:(id)rules options:(id)options
{
  locationCopy = location;
  localeCopy = locale;
  rulesCopy = rules;
  geoLocation = [locationCopy geoLocation];

  if (!geoLocation)
  {
    v18 = WFLogForCategory(2uLL);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [WFWeatherStoreServiceConfiguration forecastRequestForTypes:locationCopy location:v18 units:? date:? apiVersion:? error:? requestOptions:?];
    }

LABEL_8:
    v17 = 0;
    goto LABEL_10;
  }

  if (request == 1)
  {
    if ([WFRequestFormattingRules aqiEnabledByRules:rulesCopy forLocation:locationCopy])
    {
      v17 = [self airQualityRequestForLocation:locationCopy locale:localeCopy];
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v19 = objc_opt_new();
  v20 = [MEMORY[0x277CCAD18] queryItemWithName:@"products" value:{@"conditionsshort, fcstdaily10short, fcsthourly24short, nowlinks"}];
  [v19 addObject:v20];

  v21 = [MEMORY[0x277CCAD18] queryItemWithName:@"apiKey" value:@"e45ff1b7c7bda231216c7ab7c33509b8"];
  [v19 addObject:v21];

  v17 = [objc_opt_class() forecastRequestForRequest:@"aggregate.json" queryItems:v19 forLocation:locationCopy rules:rulesCopy];

LABEL_10:

  return v17;
}

+ (id)airQualityRequestForLocation:(id)location locale:(id)locale
{
  locationCopy = location;
  localeCopy = locale;
  if (!localeCopy)
  {
    localeCopy = [MEMORY[0x277CBEAF8] currentLocale];
  }

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"https://api.weather.com/v2/globalairquality"];
  v8 = [objc_alloc(MEMORY[0x277CCACE0]) initWithString:v7];
  v9 = MEMORY[0x277CCACA8];
  v10 = [localeCopy objectForKey:*MEMORY[0x277CBE6C8]];
  v11 = [localeCopy objectForKey:*MEMORY[0x277CBE690]];
  v12 = [v9 stringWithFormat:@"%@-%@", v10, v11];

  v13 = MEMORY[0x277CCACA8];
  geoLocation = [locationCopy geoLocation];
  [geoLocation coordinate];
  v16 = v15;
  geoLocation2 = [locationCopy geoLocation];
  [geoLocation2 coordinate];
  v19 = [v13 stringWithFormat:@"%f, %f", v16, v18];

  queryItems = [v8 queryItems];
  v21 = [queryItems mutableCopy];
  v22 = v21;
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = objc_opt_new();
  }

  v24 = v23;

  v25 = [MEMORY[0x277CCAD18] queryItemWithName:@"geocode" value:v19];
  [v24 addObject:v25];

  v26 = [MEMORY[0x277CCAD18] queryItemWithName:@"language" value:v12];
  [v24 addObject:v26];

  v27 = [MEMORY[0x277CCAD18] queryItemWithName:@"format" value:@"json"];
  [v24 addObject:v27];

  v28 = [MEMORY[0x277CCAD18] queryItemWithName:@"apiKey" value:@"e45ff1b7c7bda231216c7ab7c33509b8"];
  [v24 addObject:v28];

  v29 = [objc_opt_class() forecastRequestForURL:v8 queryItems:v24];

  return v29;
}

+ (id)forecastRequestForRequest:(id)request queryItems:(id)items forLocation:(id)location rules:(id)rules
{
  v8 = MEMORY[0x277CCACA8];
  locationCopy = location;
  itemsCopy = items;
  requestCopy = request;
  geoLocation = [locationCopy geoLocation];
  [geoLocation coordinate];
  v14 = v13;
  geoLocation2 = [locationCopy geoLocation];

  [geoLocation2 coordinate];
  requestCopy = [v8 stringWithFormat:@"https://api.weather.com/v1/geocode/%f/%f/%@", v14, v16, requestCopy];

  v18 = [objc_alloc(MEMORY[0x277CCACE0]) initWithString:requestCopy];
  v19 = [objc_opt_class() forecastRequestForURL:v18 queryItems:itemsCopy];

  return v19;
}

+ (id)forecastRequestForURL:(id)l queryItems:(id)items
{
  lCopy = l;
  [lCopy setQueryItems:items];
  v6 = MEMORY[0x277CCAB70];
  v7 = [lCopy URL];

  v8 = [v6 requestWithURL:v7 cachePolicy:4 timeoutInterval:30.0];

  [v8 setHTTPMethod:@"GET"];
  [v8 setHTTPShouldHandleCookies:0];

  return v8;
}

@end