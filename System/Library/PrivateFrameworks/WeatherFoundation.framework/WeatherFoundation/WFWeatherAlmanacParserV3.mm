@interface WFWeatherAlmanacParserV3
- (id)parseAlmanacForecastDataFromJson:(id)json location:(id)location date:(id)date;
- (id)parseForecastData:(id)data types:(unint64_t)types location:(id)location locale:(id)locale date:(id)date error:(id *)error rules:(id)rules;
@end

@implementation WFWeatherAlmanacParserV3

- (id)parseForecastData:(id)data types:(unint64_t)types location:(id)location locale:(id)locale date:(id)date error:(id *)error rules:(id)rules
{
  v28[1] = *MEMORY[0x277D85DE8];
  locationCopy = location;
  dateCopy = date;
  v26 = 0;
  v16 = [MEMORY[0x277CCAAA0] JSONObjectWithData:data options:0 error:&v26];
  v17 = v26;
  v18 = objc_alloc_init(WFParsedForecastData);
  if (types == 128)
  {
    if (v16)
    {
      v19 = [(WFWeatherAlmanacParserV3 *)self parseAlmanacForecastDataFromJson:v16 location:locationCopy date:dateCopy];
      [(WFParsedForecastData *)v18 setCurrentConditions:v19];

      v20 = v18;
    }

    else
    {
      v22 = WFLogForCategory(7uLL);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [WFWeatherAlmanacParserV3 parseForecastData:v17 types:v22 location:? locale:? date:? error:? rules:?];
      }

      if (v17)
      {
        v23 = MEMORY[0x277CCA9B8];
        v27 = *MEMORY[0x277CCA450];
        v28[0] = @"Failed to parse JSON forecast data";
        v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
        *error = [v23 wf_errorWithCode:1 encapsulatedError:v17 userInfo:v24];
      }

      v20 = 0;
    }
  }

  else
  {
    v21 = WFLogForCategory(7uLL);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [WFWeatherAlmanacParserV3 parseForecastData:v21 types:? location:? locale:? date:? error:? rules:?];
    }

    [MEMORY[0x277CCA9B8] wf_errorWithCode:6 userInfo:MEMORY[0x277CBEC10]];
    *error = v20 = 0;
  }

  return v20;
}

- (id)parseAlmanacForecastDataFromJson:(id)json location:(id)location date:(id)date
{
  jsonCopy = json;
  dateCopy = date;
  locationCopy = location;
  v10 = objc_alloc_init(WFWeatherConditions);
  [(WFWeatherConditions *)v10 setLocation:locationCopy];

  [(WFWeatherConditions *)v10 setObject:dateCopy forKeyedSubscript:@"WFWeatherForecastDateComponent"];
  v11 = [jsonCopy arrayForKey:@"precipitationAverage"];
  if ([v11 count])
  {
    firstObject = [v11 firstObject];
    [(WFWeatherConditions *)v10 setObject:firstObject forKeyedSubscript:@"WFWeatherPrecipitationAmountComponent"];
  }

  v13 = [jsonCopy arrayForKey:@"temperatureAverageMax"];
  if ([v13 count])
  {
    v14 = [WFTemperature alloc];
    firstObject2 = [v13 firstObject];
    [firstObject2 doubleValue];
    v16 = [(WFTemperature *)v14 initWithTemperatureUnit:2 value:?];
    [(WFWeatherConditions *)v10 setObject:v16 forKeyedSubscript:@"WFWeatherHighTemperatureComponent"];
  }

  v17 = [jsonCopy arrayForKey:@"temperatureAverageMin"];
  if ([v17 count])
  {
    v18 = [WFTemperature alloc];
    firstObject3 = [v17 firstObject];
    [firstObject3 doubleValue];
    v20 = [(WFTemperature *)v18 initWithTemperatureUnit:2 value:?];
    [(WFWeatherConditions *)v10 setObject:v20 forKeyedSubscript:@"WFWeatherLowTemperatureComponent"];
  }

  return v10;
}

- (void)parseForecastData:(uint64_t)a1 types:(NSObject *)a2 location:locale:date:error:rules:.cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_272B94000, a2, OS_LOG_TYPE_ERROR, "Failed to parse JSON data with error %@", &v2, 0xCu);
}

@end