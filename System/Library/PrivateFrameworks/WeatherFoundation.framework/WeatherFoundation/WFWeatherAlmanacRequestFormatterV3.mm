@interface WFWeatherAlmanacRequestFormatterV3
+ (id)forecastRequest:(unint64_t)a3 forLocation:(id)a4 withUnits:(int)a5 locale:(id)a6 date:(id)a7 rules:(id)a8 options:(id)a9;
@end

@implementation WFWeatherAlmanacRequestFormatterV3

+ (id)forecastRequest:(unint64_t)a3 forLocation:(id)a4 withUnits:(int)a5 locale:(id)a6 date:(id)a7 rules:(id)a8 options:(id)a9
{
  v12 = a4;
  v35 = a8;
  v13 = a7;
  v34 = a6;
  v14 = +[WFWeatherConditions calendar];
  v15 = [v14 copy];

  v16 = [v12 timeZone];
  if (v16)
  {
    [v15 setTimeZone:v16];
  }

  else
  {
    v17 = [MEMORY[0x277CBEBB0] systemTimeZone];
    [v15 setTimeZone:v17];
  }

  v18 = [v15 components:24 fromDate:v13];
  v19 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v18, "month")}];
  v20 = [v19 stringValue];

  v21 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v18, "day")}];
  v22 = [v21 stringValue];

  v23 = objc_opt_new();
  v24 = [MEMORY[0x277CCAD18] queryItemWithName:@"month" value:v20];
  [v23 addObject:v24];

  v25 = [MEMORY[0x277CCAD18] queryItemWithName:@"day" value:v22];
  [v23 addObject:v25];

  v26 = MEMORY[0x277CCAD18];
  v27 = [v12 wf_weatherChannelGeocodeValue];
  v28 = [v26 queryItemWithName:@"geocode" value:v27];
  [v23 addObject:v28];

  v29 = [MEMORY[0x277CCAD18] queryItemWithName:@"format" value:@"json"];
  [v23 addObject:v29];

  v30 = [MEMORY[0x277CCAD18] queryItemWithName:@"units" value:@"m"];
  [v23 addObject:v30];

  v31 = [MEMORY[0x277CCAD18] queryItemWithName:@"apiKey" value:@"2f816d1e1526478c816d1e1526578cc7"];
  [v23 addObject:v31];

  v32 = [WFWeatherChannelRequestFormatterV3 forecastRequest:@"v3-wx-almanac-daily-1day" forLocation:v12 locale:v34 date:v13 queryItems:v23 rules:v35];

  return v32;
}

@end