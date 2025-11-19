@interface WFWeatherChannelRequestFormatterV3
+ (id)forecastRequest:(id)a3 forLocation:(id)a4 locale:(id)a5 date:(id)a6 queryItems:(id)a7 rules:(id)a8;
+ (id)forecastRequest:(unint64_t)a3 forLocation:(id)a4 withUnits:(int)a5 locale:(id)a6 date:(id)a7 rules:(id)a8 options:(id)a9;
+ (id)forecastRequestForComponents:(id)a3 location:(id)a4 locale:(id)a5 date:(id)a6 queryItems:(id)a7;
@end

@implementation WFWeatherChannelRequestFormatterV3

+ (id)forecastRequest:(unint64_t)a3 forLocation:(id)a4 withUnits:(int)a5 locale:(id)a6 date:(id)a7 rules:(id)a8 options:(id)a9
{
  v68 = *MEMORY[0x277D85DE8];
  v13 = a4;
  v14 = a6;
  v61 = a7;
  v15 = a8;
  v16 = [MEMORY[0x277CBEB18] arrayWithCapacity:12];
  v17 = [MEMORY[0x277CBEB58] setWithCapacity:2];
  v18 = 0x277CCA000uLL;
  v19 = a3;
  if (WFForecastTypeIsRequestedInTypes(1, a3))
  {
    if ([WFRequestFormattingRules aqiEnabledByRules:v15 forLocation:v13])
    {
      v19 = a3 & 0xFFFFFFFFFFFFFFFELL;
      [v16 addObject:@"v3-wx-globalAirQuality"];
      v20 = [v14 countryCode];
      AqiScaleForCountryCode(v20);
      v21 = a3;
      v22 = v13;
      v23 = v14;
      v25 = v24 = v15;

      v26 = MEMORY[0x277CCAD18];
      v27 = [v25 name];
      v28 = [v26 queryItemWithName:@"scale" value:v27];
      [v17 addObject:v28];

      v15 = v24;
      v14 = v23;
      v13 = v22;
      a3 = v21;
      v18 = 0x277CCA000;
    }

    else
    {
      v19 = a3;
      if (WFForecastTypeIsSingleType(a3))
      {
        v29 = 0;
        v30 = v61;
        goto LABEL_37;
      }
    }
  }

  if (WFForecastTypeIsRequestedInTypes(2, v19))
  {
    v19 &= ~2uLL;
    [v16 addObject:@"v3-wx-observations-current"];
    v31 = [*(v18 + 3352) queryItemWithName:@"units" value:@"m"];
    [v17 addObject:v31];
  }

  if (WFForecastTypeIsRequestedInTypes(4, v19))
  {
    v19 &= ~4uLL;
    [v16 addObject:@"v3-wx-forecast-hourly-1day"];
    v32 = [*(v18 + 3352) queryItemWithName:@"units" value:@"m"];
    [v17 addObject:v32];
  }

  if (WFForecastTypeIsRequestedInTypes(8, v19))
  {
    v19 &= ~8uLL;
    [v16 addObject:@"v3-wx-forecast-daily-10day"];
    v33 = [*(v18 + 3352) queryItemWithName:@"units" value:@"m"];
    [v17 addObject:v33];
  }

  if (WFForecastTypeIsRequestedInTypes(256, v19))
  {
    v19 &= ~0x100uLL;
    [v16 addObject:@"v3-links"];
    v34 = [*(v18 + 3352) queryItemWithName:@"par" value:@"apple_TWC"];
    [v17 addObject:v34];
  }

  if (WFForecastTypeIsRequestedInTypes(16, v19))
  {
    v19 &= ~0x10uLL;
    [v16 addObject:@"v2idxPollenDaypart10"];
  }

  v60 = v15;
  if (WFForecastTypeIsRequestedInTypes(32, v19))
  {
    v19 &= ~0x20uLL;
    [v16 addObject:@"v3-wx-conditions-historical-hourly-1day"];
    v35 = [*(v18 + 3352) queryItemWithName:@"units" value:@"m"];
    [v17 addObject:v35];
  }

  v36 = [v17 allObjects];
  v37 = [v36 mutableCopy];

  v38 = *(v18 + 3352);
  v39 = [v13 wf_weatherChannelGeocodeValue];
  v40 = [v38 queryItemWithName:@"geocode" value:v39];
  [v37 addObject:v40];

  v41 = [*(v18 + 3352) queryItemWithName:@"format" value:@"json"];
  [v37 addObject:v41];

  v42 = *(v18 + 3352);
  v43 = [v14 languageCode];
  v44 = v43;
  if (v43)
  {
    v45 = v43;
  }

  else
  {
    v45 = @"en";
  }

  v46 = [v42 queryItemWithName:@"language" value:v45];
  [v37 addObject:v46];

  v47 = [*(v18 + 3352) queryItemWithName:@"apiKey" value:@"daab481aeef8450eab481aeef8950e4d"];
  [v37 addObject:v47];

  v30 = v61;
  if (v19)
  {
    v48 = WFLogForCategory(0);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      [WFWeatherChannelRequestFormatterV3 forecastRequest:a3 forLocation:v48 withUnits:? locale:? date:? rules:? options:?];
    }
  }

  if ([v16 count])
  {
    v49 = objc_alloc(MEMORY[0x277CCACE0]);
    v50 = [a1 hostURLForService];
    v51 = [v49 initWithURL:v50 resolvingAgainstBaseURL:0];

    if ([v16 count] == 1)
    {
      v52 = [v16 firstObject];
      if ([@"v2idxPollenDaypart10" isEqualToString:v52])
      {
        v53 = @"v2/indices/pollen/daypart/10day";
      }

      else
      {
        v53 = [v52 stringByReplacingOccurrencesOfString:@"-" withString:@"/"];
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

    v29 = [WFWeatherChannelRequestFormatterV3 forecastRequestForComponents:v51 location:v13 locale:v14 date:v61 queryItems:v37];
  }

  else
  {
    v51 = WFLogForCategory(0);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v63 = objc_opt_class();
      v64 = 2048;
      v65 = a3;
      v66 = 2112;
      v67 = v13;
      v58 = v63;
      _os_log_error_impl(&dword_272B94000, v51, OS_LOG_TYPE_ERROR, "%{public}@ is unable to build %lu forecast request for %@.", buf, 0x20u);
    }

    v29 = 0;
  }

  v15 = v60;
LABEL_37:

  return v29;
}

+ (id)forecastRequest:(id)a3 forLocation:(id)a4 locale:(id)a5 date:(id)a6 queryItems:(id)a7 rules:(id)a8
{
  v13 = MEMORY[0x277CCACE0];
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = [v13 alloc];
  v20 = [a1 hostURLForService];
  v21 = [v19 initWithURL:v20 resolvingAgainstBaseURL:0];

  v22 = MEMORY[0x277CCACA8];
  v23 = [v18 stringByReplacingOccurrencesOfString:@"-" withString:@"/"];

  v24 = [v22 stringWithFormat:@"/%@", v23];
  [v21 setPath:v24];

  v25 = [WFWeatherChannelRequestFormatterV3 forecastRequestForComponents:v21 location:v17 locale:v16 date:v15 queryItems:v14];

  return v25;
}

+ (id)forecastRequestForComponents:(id)a3 location:(id)a4 locale:(id)a5 date:(id)a6 queryItems:(id)a7
{
  v8 = a3;
  [v8 setQueryItems:a7];
  v9 = MEMORY[0x277CCAB70];
  v10 = [v8 URL];

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