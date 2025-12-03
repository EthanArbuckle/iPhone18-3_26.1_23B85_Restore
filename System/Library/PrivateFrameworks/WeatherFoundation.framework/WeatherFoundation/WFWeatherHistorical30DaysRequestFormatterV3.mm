@interface WFWeatherHistorical30DaysRequestFormatterV3
+ (id)forecastRequest:(unint64_t)request forLocation:(id)location withUnits:(int)units locale:(id)locale date:(id)date rules:(id)rules options:(id)options;
@end

@implementation WFWeatherHistorical30DaysRequestFormatterV3

+ (id)forecastRequest:(unint64_t)request forLocation:(id)location withUnits:(int)units locale:(id)locale date:(id)date rules:(id)rules options:(id)options
{
  rulesCopy = rules;
  dateCopy = date;
  localeCopy = locale;
  locationCopy = location;
  v16 = objc_opt_new();
  v17 = [MEMORY[0x277CCAD18] queryItemWithName:@"units" value:@"m"];
  [v16 addObject:v17];

  v18 = MEMORY[0x277CCAD18];
  languageCode = [localeCopy languageCode];
  v20 = languageCode;
  if (languageCode)
  {
    v21 = languageCode;
  }

  else
  {
    v21 = @"en";
  }

  v22 = [v18 queryItemWithName:@"language" value:v21];
  [v16 addObject:v22];

  v23 = MEMORY[0x277CCAD18];
  wf_weatherChannelGeocodeValue = [locationCopy wf_weatherChannelGeocodeValue];
  v25 = [v23 queryItemWithName:@"geocode" value:wf_weatherChannelGeocodeValue];
  [v16 addObject:v25];

  v26 = [MEMORY[0x277CCAD18] queryItemWithName:@"format" value:@"json"];
  [v16 addObject:v26];

  v27 = [MEMORY[0x277CCAD18] queryItemWithName:@"apiKey" value:@"2f816d1e1526478c816d1e1526578cc7"];
  [v16 addObject:v27];

  v28 = [WFWeatherChannelRequestFormatterV3 forecastRequest:@"v3-wx-conditions-historical-dailysummary-30day" forLocation:locationCopy locale:localeCopy date:dateCopy queryItems:v16 rules:rulesCopy];

  return v28;
}

@end