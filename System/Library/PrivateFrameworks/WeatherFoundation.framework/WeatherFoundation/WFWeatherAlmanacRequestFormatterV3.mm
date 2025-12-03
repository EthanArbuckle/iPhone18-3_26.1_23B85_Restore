@interface WFWeatherAlmanacRequestFormatterV3
+ (id)forecastRequest:(unint64_t)request forLocation:(id)location withUnits:(int)units locale:(id)locale date:(id)date rules:(id)rules options:(id)options;
@end

@implementation WFWeatherAlmanacRequestFormatterV3

+ (id)forecastRequest:(unint64_t)request forLocation:(id)location withUnits:(int)units locale:(id)locale date:(id)date rules:(id)rules options:(id)options
{
  locationCopy = location;
  rulesCopy = rules;
  dateCopy = date;
  localeCopy = locale;
  v14 = +[WFWeatherConditions calendar];
  v15 = [v14 copy];

  timeZone = [locationCopy timeZone];
  if (timeZone)
  {
    [v15 setTimeZone:timeZone];
  }

  else
  {
    systemTimeZone = [MEMORY[0x277CBEBB0] systemTimeZone];
    [v15 setTimeZone:systemTimeZone];
  }

  v18 = [v15 components:24 fromDate:dateCopy];
  v19 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v18, "month")}];
  stringValue = [v19 stringValue];

  v21 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v18, "day")}];
  stringValue2 = [v21 stringValue];

  v23 = objc_opt_new();
  v24 = [MEMORY[0x277CCAD18] queryItemWithName:@"month" value:stringValue];
  [v23 addObject:v24];

  v25 = [MEMORY[0x277CCAD18] queryItemWithName:@"day" value:stringValue2];
  [v23 addObject:v25];

  v26 = MEMORY[0x277CCAD18];
  wf_weatherChannelGeocodeValue = [locationCopy wf_weatherChannelGeocodeValue];
  v28 = [v26 queryItemWithName:@"geocode" value:wf_weatherChannelGeocodeValue];
  [v23 addObject:v28];

  v29 = [MEMORY[0x277CCAD18] queryItemWithName:@"format" value:@"json"];
  [v23 addObject:v29];

  v30 = [MEMORY[0x277CCAD18] queryItemWithName:@"units" value:@"m"];
  [v23 addObject:v30];

  v31 = [MEMORY[0x277CCAD18] queryItemWithName:@"apiKey" value:@"2f816d1e1526478c816d1e1526578cc7"];
  [v23 addObject:v31];

  v32 = [WFWeatherChannelRequestFormatterV3 forecastRequest:@"v3-wx-almanac-daily-1day" forLocation:locationCopy locale:localeCopy date:dateCopy queryItems:v23 rules:rulesCopy];

  return v32;
}

@end