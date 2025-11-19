@interface WFWeatherChannelRequestFormatterV2
+ (id)airQualityRequestForLocation:(id)a3 locale:(id)a4;
+ (id)forecastRequest:(unint64_t)a3 forLocation:(id)a4 withUnits:(int)a5 locale:(id)a6 date:(id)a7 rules:(id)a8 options:(id)a9;
+ (id)forecastRequestForRequest:(id)a3 queryItems:(id)a4 forLocation:(id)a5 rules:(id)a6;
+ (id)forecastRequestForURL:(id)a3 queryItems:(id)a4;
@end

@implementation WFWeatherChannelRequestFormatterV2

+ (id)forecastRequest:(unint64_t)a3 forLocation:(id)a4 withUnits:(int)a5 locale:(id)a6 date:(id)a7 rules:(id)a8 options:(id)a9
{
  v13 = a4;
  v14 = a6;
  v15 = a8;
  v16 = [v13 geoLocation];

  if (!v16)
  {
    v18 = WFLogForCategory(2uLL);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [WFWeatherStoreServiceConfiguration forecastRequestForTypes:v13 location:v18 units:? date:? apiVersion:? error:? requestOptions:?];
    }

LABEL_8:
    v17 = 0;
    goto LABEL_10;
  }

  if (a3 == 1)
  {
    if ([WFRequestFormattingRules aqiEnabledByRules:v15 forLocation:v13])
    {
      v17 = [a1 airQualityRequestForLocation:v13 locale:v14];
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v19 = objc_opt_new();
  v20 = [MEMORY[0x277CCAD18] queryItemWithName:@"products" value:{@"conditionsshort, fcstdaily10short, fcsthourly24short, nowlinks"}];
  [v19 addObject:v20];

  v21 = [MEMORY[0x277CCAD18] queryItemWithName:@"apiKey" value:@"e45ff1b7c7bda231216c7ab7c33509b8"];
  [v19 addObject:v21];

  v17 = [objc_opt_class() forecastRequestForRequest:@"aggregate.json" queryItems:v19 forLocation:v13 rules:v15];

LABEL_10:

  return v17;
}

+ (id)airQualityRequestForLocation:(id)a3 locale:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v6)
  {
    v6 = [MEMORY[0x277CBEAF8] currentLocale];
  }

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"https://api.weather.com/v2/globalairquality"];
  v8 = [objc_alloc(MEMORY[0x277CCACE0]) initWithString:v7];
  v9 = MEMORY[0x277CCACA8];
  v10 = [v6 objectForKey:*MEMORY[0x277CBE6C8]];
  v11 = [v6 objectForKey:*MEMORY[0x277CBE690]];
  v12 = [v9 stringWithFormat:@"%@-%@", v10, v11];

  v13 = MEMORY[0x277CCACA8];
  v14 = [v5 geoLocation];
  [v14 coordinate];
  v16 = v15;
  v17 = [v5 geoLocation];
  [v17 coordinate];
  v19 = [v13 stringWithFormat:@"%f, %f", v16, v18];

  v20 = [v8 queryItems];
  v21 = [v20 mutableCopy];
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

+ (id)forecastRequestForRequest:(id)a3 queryItems:(id)a4 forLocation:(id)a5 rules:(id)a6
{
  v8 = MEMORY[0x277CCACA8];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v9 geoLocation];
  [v12 coordinate];
  v14 = v13;
  v15 = [v9 geoLocation];

  [v15 coordinate];
  v17 = [v8 stringWithFormat:@"https://api.weather.com/v1/geocode/%f/%f/%@", v14, v16, v11];

  v18 = [objc_alloc(MEMORY[0x277CCACE0]) initWithString:v17];
  v19 = [objc_opt_class() forecastRequestForURL:v18 queryItems:v10];

  return v19;
}

+ (id)forecastRequestForURL:(id)a3 queryItems:(id)a4
{
  v5 = a3;
  [v5 setQueryItems:a4];
  v6 = MEMORY[0x277CCAB70];
  v7 = [v5 URL];

  v8 = [v6 requestWithURL:v7 cachePolicy:4 timeoutInterval:30.0];

  [v8 setHTTPMethod:@"GET"];
  [v8 setHTTPShouldHandleCookies:0];

  return v8;
}

@end