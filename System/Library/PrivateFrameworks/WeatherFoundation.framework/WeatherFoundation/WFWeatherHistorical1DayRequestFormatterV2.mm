@interface WFWeatherHistorical1DayRequestFormatterV2
+ (id)dateFormatter;
+ (id)forecastRequest:(unint64_t)request forLocation:(id)location withUnits:(int)units locale:(id)locale date:(id)date rules:(id)rules options:(id)options;
@end

@implementation WFWeatherHistorical1DayRequestFormatterV2

+ (id)dateFormatter
{
  if (dateFormatter_onceToken_1 != -1)
  {
    +[WFWeatherHistorical1DayRequestFormatterV2 dateFormatter];
  }

  v3 = dateFormatter_dateFormatter_1;

  return v3;
}

uint64_t __58__WFWeatherHistorical1DayRequestFormatterV2_dateFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = dateFormatter_dateFormatter_1;
  dateFormatter_dateFormatter_1 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)forecastRequest:(unint64_t)request forLocation:(id)location withUnits:(int)units locale:(id)locale date:(id)date rules:(id)rules options:(id)options
{
  locationCopy = location;
  dateCopy = date;
  rulesCopy = rules;
  geoLocation = [locationCopy geoLocation];

  if (geoLocation)
  {
    dateFormatter = [objc_opt_class() dateFormatter];
    [dateFormatter setDateFormat:@"yyyyMMdd"];
    v16 = [dateFormatter stringFromDate:dateCopy];
    v17 = objc_opt_new();
    v18 = [MEMORY[0x277CCAD18] queryItemWithName:@"units" value:@"m"];
    [v17 addObject:v18];

    v19 = [MEMORY[0x277CCAD18] queryItemWithName:@"startDate" value:v16];
    [v17 addObject:v19];

    v20 = [MEMORY[0x277CCAD18] queryItemWithName:@"apiKey" value:@"2f816d1e1526478c816d1e1526578cc7"];
    [v17 addObject:v20];

    v21 = [WFWeatherChannelRequestFormatterV2 forecastRequestForRequest:@"observations/historical.json" queryItems:v17 forLocation:locationCopy rules:rulesCopy];
  }

  else
  {
    v22 = WFLogForCategory(2uLL);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [WFWeatherStoreServiceConfiguration forecastRequestForTypes:locationCopy location:v22 units:? date:? apiVersion:? error:? requestOptions:?];
    }

    v21 = 0;
  }

  return v21;
}

@end