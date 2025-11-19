@interface WFWeatherHistorical30DaysRequestFormatterV3
+ (id)forecastRequest:(unint64_t)a3 forLocation:(id)a4 withUnits:(int)a5 locale:(id)a6 date:(id)a7 rules:(id)a8 options:(id)a9;
@end

@implementation WFWeatherHistorical30DaysRequestFormatterV3

+ (id)forecastRequest:(unint64_t)a3 forLocation:(id)a4 withUnits:(int)a5 locale:(id)a6 date:(id)a7 rules:(id)a8 options:(id)a9
{
  v12 = a8;
  v13 = a7;
  v14 = a6;
  v15 = a4;
  v16 = objc_opt_new();
  v17 = [MEMORY[0x277CCAD18] queryItemWithName:@"units" value:@"m"];
  [v16 addObject:v17];

  v18 = MEMORY[0x277CCAD18];
  v19 = [v14 languageCode];
  v20 = v19;
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = @"en";
  }

  v22 = [v18 queryItemWithName:@"language" value:v21];
  [v16 addObject:v22];

  v23 = MEMORY[0x277CCAD18];
  v24 = [v15 wf_weatherChannelGeocodeValue];
  v25 = [v23 queryItemWithName:@"geocode" value:v24];
  [v16 addObject:v25];

  v26 = [MEMORY[0x277CCAD18] queryItemWithName:@"format" value:@"json"];
  [v16 addObject:v26];

  v27 = [MEMORY[0x277CCAD18] queryItemWithName:@"apiKey" value:@"2f816d1e1526478c816d1e1526578cc7"];
  [v16 addObject:v27];

  v28 = [WFWeatherChannelRequestFormatterV3 forecastRequest:@"v3-wx-conditions-historical-dailysummary-30day" forLocation:v15 locale:v14 date:v13 queryItems:v16 rules:v12];

  return v28;
}

@end