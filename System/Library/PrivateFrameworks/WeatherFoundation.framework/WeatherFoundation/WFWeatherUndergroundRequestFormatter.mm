@interface WFWeatherUndergroundRequestFormatter
+ (id)forecastRequest:(unint64_t)a3 forLocation:(id)a4 withUnits:(int)a5 locale:(id)a6 date:(id)a7 rules:(id)a8 options:(id)a9;
@end

@implementation WFWeatherUndergroundRequestFormatter

+ (id)forecastRequest:(unint64_t)a3 forLocation:(id)a4 withUnits:(int)a5 locale:(id)a6 date:(id)a7 rules:(id)a8 options:(id)a9
{
  v10 = a4;
  v11 = a7;
  v12 = [v10 geoLocation];

  if (v12)
  {
    v13 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v13 setDateFormat:@"yyyyMMdd"];
    v14 = MEMORY[0x277CCACA8];
    v15 = [v13 stringFromDate:v11];
    v16 = [v10 geoLocation];
    [v16 coordinate];
    v19 = NSStringFromCLLocationCoordinate2D(v17, v18);
    v20 = [v14 stringWithFormat:@"https://api.wunderground.com/api/%@/%@%@/q/%@.json", @"e13f255ff1aeedb8", @"history_", v15, v19];

    v21 = MEMORY[0x277CCAB70];
    v22 = [MEMORY[0x277CBEBC0] URLWithString:v20];
    v23 = [v21 requestWithURL:v22 cachePolicy:4 timeoutInterval:30.0];

    [v23 setHTTPMethod:@"GET"];
    [v23 setValue:@"Client" forHTTPHeaderField:@"X-Client-Info"];
    [v23 setValue:@"1.1" forHTTPHeaderField:@"X-Device-Info"];
  }

  else
  {
    v24 = WFLogForCategory(2uLL);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [WFWeatherUndergroundRequestFormatter forecastRequest:v10 forLocation:v24 withUnits:? locale:? date:? rules:? options:?];
    }

    v23 = 0;
  }

  return v23;
}

+ (void)forecastRequest:(uint64_t)a1 forLocation:(NSObject *)a2 withUnits:locale:date:rules:options:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_272B94000, a2, OS_LOG_TYPE_ERROR, "Cannot format a request without a geolocation: %@", &v2, 0xCu);
}

@end