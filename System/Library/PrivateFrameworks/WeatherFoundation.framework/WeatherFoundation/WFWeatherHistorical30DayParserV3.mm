@interface WFWeatherHistorical30DayParserV3
+ (id)dateFormatter;
+ (id)daysOfWeek;
- (id)parseForecastData:(id)data types:(unint64_t)types location:(id)location locale:(id)locale date:(id)date error:(id *)error rules:(id)rules;
- (id)parseHistorical30DayForecastDataFromJson:(id)json location:(id)location date:(id)date error:(id *)error;
- (int64_t)getDataIndexFromFirstDayOfWeek:(id)week andRequestedDate:(id)date;
@end

@implementation WFWeatherHistorical30DayParserV3

+ (id)daysOfWeek
{
  if (daysOfWeek_onceToken != -1)
  {
    +[WFWeatherHistorical30DayParserV3 daysOfWeek];
  }

  v3 = daysOfWeek__daysOfWeek;

  return v3;
}

void __46__WFWeatherHistorical30DayParserV3_daysOfWeek__block_invoke()
{
  v0 = daysOfWeek__daysOfWeek;
  daysOfWeek__daysOfWeek = &unk_288254EE0;
}

+ (id)dateFormatter
{
  if (dateFormatter_onceToken_2 != -1)
  {
    +[WFWeatherHistorical30DayParserV3 dateFormatter];
  }

  v3 = dateFormatter_dateFormatter_2;

  return v3;
}

uint64_t __49__WFWeatherHistorical30DayParserV3_dateFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = dateFormatter_dateFormatter_2;
  dateFormatter_dateFormatter_2 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (id)parseForecastData:(id)data types:(unint64_t)types location:(id)location locale:(id)locale date:(id)date error:(id *)error rules:(id)rules
{
  v28[1] = *MEMORY[0x277D85DE8];
  locationCopy = location;
  dateCopy = date;
  if (types == 64)
  {
    v26 = 0;
    v16 = [MEMORY[0x277CCAAA0] JSONObjectWithData:data options:0 error:&v26];
    v17 = v26;
    v18 = objc_alloc_init(WFParsedForecastData);
    if (v16)
    {
      v19 = [(WFWeatherHistorical30DayParserV3 *)self parseHistorical30DayForecastDataFromJson:v16 location:locationCopy date:dateCopy error:error];
      [(WFParsedForecastData *)v18 setCurrentConditions:v19];

      v20 = v18;
    }

    else
    {
      v22 = WFLogForCategory(7uLL);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [WFWeatherHistorical30DayParserV3 parseForecastData:v17 types:v22 location:? locale:? date:? error:? rules:?];
      }

      if (v17)
      {
        v23 = MEMORY[0x277CCA9B8];
        v27 = *MEMORY[0x277CCA450];
        v28[0] = @"Failed to parse historical 30 day JSON forecast data";
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
      [WFWeatherHistorical30DayParserV3 parseForecastData:v21 types:? location:? locale:? date:? error:? rules:?];
    }

    [MEMORY[0x277CCA9B8] wf_errorWithCode:6 userInfo:MEMORY[0x277CBEC10]];
    *error = v20 = 0;
  }

  return v20;
}

- (id)parseHistorical30DayForecastDataFromJson:(id)json location:(id)location date:(id)date error:(id *)error
{
  v42[1] = *MEMORY[0x277D85DE8];
  jsonCopy = json;
  locationCopy = location;
  dateCopy = date;
  v13 = [jsonCopy arrayForKey:@"dayOfWeek"];
  if (v13 && (v14 = v13, [jsonCopy arrayForKey:@"dayOfWeek"], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "objectAtIndexedSubscript:", 0), v16 = objc_claimAutoreleasedReturnValue(), v16, v15, v14, v16))
  {
    v17 = [jsonCopy arrayForKey:@"dayOfWeek"];
    v18 = [v17 objectAtIndexedSubscript:0];
    v19 = [(WFWeatherHistorical30DayParserV3 *)self getDataIndexFromFirstDayOfWeek:v18 andRequestedDate:dateCopy];

    v20 = objc_alloc_init(WFWeatherConditions);
    [(WFWeatherConditions *)v20 setLocation:locationCopy];
    [(WFWeatherConditions *)v20 setObject:dateCopy forKeyedSubscript:@"WFWeatherForecastDateComponent"];
    v21 = [jsonCopy arrayForKey:@"precip24Hour"];
    v22 = v21;
    if (v21)
    {
      v23 = [v21 objectAtIndexedSubscript:v19];

      if (v23)
      {
        v24 = [v22 objectAtIndexedSubscript:v19];
        [(WFWeatherConditions *)v20 setObject:v24 forKeyedSubscript:@"WFWeatherPrecipitationAmountComponent"];
      }
    }

    v25 = [jsonCopy arrayForKey:@"temperatureMax"];
    v26 = v25;
    if (v25)
    {
      v27 = [v25 objectAtIndexedSubscript:v19];

      if (v27)
      {
        v28 = [WFTemperature alloc];
        v29 = [v26 objectAtIndexedSubscript:v19];
        [v29 doubleValue];
        v30 = [(WFTemperature *)v28 initWithTemperatureUnit:2 value:?];
        [(WFWeatherConditions *)v20 setObject:v30 forKeyedSubscript:@"WFWeatherHighTemperatureComponent"];
      }
    }

    v31 = [jsonCopy arrayForKey:@"temperatureMin"];
    v32 = v31;
    if (v31)
    {
      v33 = [v31 objectAtIndexedSubscript:v19];

      if (v33)
      {
        v34 = [WFTemperature alloc];
        v35 = [v32 objectAtIndexedSubscript:v19];
        [v35 doubleValue];
        v36 = [(WFTemperature *)v34 initWithTemperatureUnit:2 value:?];
        [(WFWeatherConditions *)v20 setObject:v36 forKeyedSubscript:@"WFWeatherLowTemperatureComponent"];
      }
    }
  }

  else
  {
    v37 = WFLogForCategory(7uLL);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      [WFWeatherHistorical30DayParserV3 parseHistorical30DayForecastDataFromJson:v37 location:? date:? error:?];
    }

    v38 = MEMORY[0x277CCA9B8];
    v41 = *MEMORY[0x277CCA068];
    v42[0] = @"Failed to parse last twenty-four hours of observations from response.";
    v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:&v41 count:1];
    *error = [v38 wf_errorWithCode:1 userInfo:v39];

    v20 = 0;
  }

  return v20;
}

- (int64_t)getDataIndexFromFirstDayOfWeek:(id)week andRequestedDate:(id)date
{
  v5 = MEMORY[0x277CBEAA8];
  dateCopy = date;
  weekCopy = week;
  v8 = objc_alloc_init(v5);
  dateFormatter = [objc_opt_class() dateFormatter];
  [dateFormatter setDateFormat:@"EEEE"];
  v10 = [dateFormatter stringFromDate:v8];
  daysOfWeek = [objc_opt_class() daysOfWeek];
  v12 = [daysOfWeek indexOfObject:v10];

  daysOfWeek2 = [objc_opt_class() daysOfWeek];
  v14 = [daysOfWeek2 indexOfObject:weekCopy];

  v15 = v12 - v14;
  if (v12 - v14 < 0)
  {
    daysOfWeek3 = [objc_opt_class() daysOfWeek];
    v15 += [daysOfWeek3 count];
  }

  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v18 = [currentCalendar components:16 fromDate:dateCopy toDate:v8 options:0];

  v19 = [v18 day] - v15;
  return v19;
}

- (void)parseForecastData:(uint64_t)a1 types:(NSObject *)a2 location:locale:date:error:rules:.cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_272B94000, a2, OS_LOG_TYPE_ERROR, "Failed to parse historical 30 day JSON data with error %@", &v2, 0xCu);
}

- (void)parseHistorical30DayForecastDataFromJson:(os_log_t)log location:date:error:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 138543362;
  v2 = @"Failed to parse last twenty-four hours of observations from response.";
  _os_log_error_impl(&dword_272B94000, log, OS_LOG_TYPE_ERROR, "%{public}@", &v1, 0xCu);
}

@end