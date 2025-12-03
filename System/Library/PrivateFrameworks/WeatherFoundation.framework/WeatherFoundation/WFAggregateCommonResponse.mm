@interface WFAggregateCommonResponse
- (WFAggregateCommonResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFAggregateCommonResponse

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();
  v4 = objc_opt_new();
  airQualityObservations = [(WFAggregateCommonResponse *)self airQualityObservations];
  v6 = [airQualityObservations copy];
  [v4 setAirQualityObservations:v6];

  currentObservations = [(WFAggregateCommonResponse *)self currentObservations];
  v8 = [currentObservations copy];
  [v4 setCurrentObservations:v8];

  v9 = objc_alloc(MEMORY[0x277CBEA60]);
  lastTwentyFourHoursOfObservations = [(WFAggregateCommonResponse *)self lastTwentyFourHoursOfObservations];
  v11 = [v9 initWithArray:lastTwentyFourHoursOfObservations copyItems:1];
  [v4 setLastTwentyFourHoursOfObservations:v11];

  v12 = objc_alloc(MEMORY[0x277CBEA60]);
  hourlyForecastedConditions = [(WFAggregateCommonResponse *)self hourlyForecastedConditions];
  v14 = [v12 initWithArray:hourlyForecastedConditions copyItems:1];
  [v4 setHourlyForecastedConditions:v14];

  v15 = objc_alloc(MEMORY[0x277CBEA60]);
  dailyForecastedConditions = [(WFAggregateCommonResponse *)self dailyForecastedConditions];
  v17 = [v15 initWithArray:dailyForecastedConditions copyItems:1];
  [v4 setDailyForecastedConditions:v17];

  v18 = objc_alloc(MEMORY[0x277CBEA60]);
  dailyPollenForecastedConditions = [(WFAggregateCommonResponse *)self dailyPollenForecastedConditions];
  v20 = [v18 initWithArray:dailyPollenForecastedConditions copyItems:1];
  [v4 setDailyPollenForecastedConditions:v20];

  v21 = objc_alloc(MEMORY[0x277CBEA60]);
  changeForecasts = [(WFAggregateCommonResponse *)self changeForecasts];
  v23 = [v21 initWithArray:changeForecasts copyItems:1];
  [v4 setChangeForecasts:v23];

  v24 = objc_alloc(MEMORY[0x277CBEA60]);
  severeWeatherEvents = [(WFAggregateCommonResponse *)self severeWeatherEvents];
  v26 = [v24 initWithArray:severeWeatherEvents copyItems:1];
  [v4 setSevereWeatherEvents:v26];

  nextHourPrecipitation = [(WFAggregateCommonResponse *)self nextHourPrecipitation];
  v28 = [nextHourPrecipitation copy];
  [v4 setNextHourPrecipitation:v28];

  rawAPIData = [(WFAggregateCommonResponse *)self rawAPIData];
  [v4 setRawAPIData:rawAPIData];

  [v4 setResponseWasFromCache:{-[WFAggregateCommonResponse responseWasFromCache](self, "responseWasFromCache")}];
  return v4;
}

- (WFAggregateCommonResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v36.receiver = self;
  v36.super_class = WFAggregateCommonResponse;
  v5 = [(WFResponse *)&v36 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), v6, v7, 0}];
    v9 = objc_opt_class();
    v10 = NSStringFromSelector(sel_airQualityObservations);
    v11 = [coderCopy decodeObjectOfClass:v9 forKey:v10];
    [(WFAggregateCommonResponse *)v5 setAirQualityObservations:v11];

    v12 = NSStringFromSelector(sel_currentObservations);
    v13 = [coderCopy decodeObjectOfClass:v6 forKey:v12];
    [(WFAggregateCommonResponse *)v5 setCurrentObservations:v13];

    v14 = NSStringFromSelector(sel_lastTwentyFourHoursOfObservations);
    v15 = [coderCopy decodeObjectOfClasses:v8 forKey:v14];
    [(WFAggregateCommonResponse *)v5 setLastTwentyFourHoursOfObservations:v15];

    v16 = NSStringFromSelector(sel_hourlyForecastedConditions);
    v17 = [coderCopy decodeObjectOfClasses:v8 forKey:v16];
    [(WFAggregateCommonResponse *)v5 setHourlyForecastedConditions:v17];

    v18 = NSStringFromSelector(sel_dailyForecastedConditions);
    v19 = [coderCopy decodeObjectOfClasses:v8 forKey:v18];
    [(WFAggregateCommonResponse *)v5 setDailyForecastedConditions:v19];

    v20 = NSStringFromSelector(sel_dailyPollenForecastedConditions);
    v21 = [coderCopy decodeObjectOfClasses:v8 forKey:v20];
    [(WFAggregateCommonResponse *)v5 setDailyPollenForecastedConditions:v21];

    v22 = objc_opt_class();
    v23 = NSStringFromSelector(sel_changeForecasts);
    v24 = [coderCopy decodeObjectOfClass:v22 forKey:v23];
    [(WFAggregateCommonResponse *)v5 setChangeForecasts:v24];

    v25 = objc_opt_class();
    v26 = NSStringFromSelector(sel_severeWeatherEvents);
    v27 = [coderCopy decodeObjectOfClass:v25 forKey:v26];
    [(WFAggregateCommonResponse *)v5 setSevereWeatherEvents:v27];

    v28 = objc_opt_class();
    v29 = NSStringFromSelector(sel_nextHourPrecipitation);
    v30 = [coderCopy decodeObjectOfClass:v28 forKey:v29];
    [(WFAggregateCommonResponse *)v5 setNextHourPrecipitation:v30];

    v31 = objc_opt_class();
    v32 = NSStringFromSelector(sel_rawAPIData);
    v33 = [coderCopy decodeObjectOfClass:v31 forKey:v32];
    [(WFAggregateCommonResponse *)v5 setRawAPIData:v33];

    v34 = NSStringFromSelector(sel_responseWasFromCache);
    -[WFAggregateCommonResponse setResponseWasFromCache:](v5, "setResponseWasFromCache:", [coderCopy decodeBoolForKey:v34]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v27.receiver = self;
  v27.super_class = WFAggregateCommonResponse;
  coderCopy = coder;
  [(WFResponse *)&v27 encodeWithCoder:coderCopy];
  v5 = [(WFAggregateCommonResponse *)self airQualityObservations:v27.receiver];
  v6 = NSStringFromSelector(sel_airQualityObservations);
  [coderCopy encodeObject:v5 forKey:v6];

  currentObservations = [(WFAggregateCommonResponse *)self currentObservations];
  v8 = NSStringFromSelector(sel_currentObservations);
  [coderCopy encodeObject:currentObservations forKey:v8];

  lastTwentyFourHoursOfObservations = [(WFAggregateCommonResponse *)self lastTwentyFourHoursOfObservations];
  v10 = NSStringFromSelector(sel_lastTwentyFourHoursOfObservations);
  [coderCopy encodeObject:lastTwentyFourHoursOfObservations forKey:v10];

  hourlyForecastedConditions = [(WFAggregateCommonResponse *)self hourlyForecastedConditions];
  v12 = NSStringFromSelector(sel_hourlyForecastedConditions);
  [coderCopy encodeObject:hourlyForecastedConditions forKey:v12];

  dailyForecastedConditions = [(WFAggregateCommonResponse *)self dailyForecastedConditions];
  v14 = NSStringFromSelector(sel_dailyForecastedConditions);
  [coderCopy encodeObject:dailyForecastedConditions forKey:v14];

  dailyPollenForecastedConditions = [(WFAggregateCommonResponse *)self dailyPollenForecastedConditions];
  v16 = NSStringFromSelector(sel_dailyPollenForecastedConditions);
  [coderCopy encodeObject:dailyPollenForecastedConditions forKey:v16];

  responseWasFromCache = [(WFAggregateCommonResponse *)self responseWasFromCache];
  v18 = NSStringFromSelector(sel_responseWasFromCache);
  [coderCopy encodeBool:responseWasFromCache forKey:v18];

  changeForecasts = [(WFAggregateCommonResponse *)self changeForecasts];
  v20 = NSStringFromSelector(sel_changeForecasts);
  [coderCopy encodeObject:changeForecasts forKey:v20];

  severeWeatherEvents = [(WFAggregateCommonResponse *)self severeWeatherEvents];
  v22 = NSStringFromSelector(sel_severeWeatherEvents);
  [coderCopy encodeObject:severeWeatherEvents forKey:v22];

  nextHourPrecipitation = [(WFAggregateCommonResponse *)self nextHourPrecipitation];
  v24 = NSStringFromSelector(sel_nextHourPrecipitation);
  [coderCopy encodeObject:nextHourPrecipitation forKey:v24];

  rawAPIData = [(WFAggregateCommonResponse *)self rawAPIData];
  v26 = NSStringFromSelector(sel_rawAPIData);
  [coderCopy encodeObject:rawAPIData forKey:v26];
}

@end