@interface WAHourlyForecast
+ (id)hourlyForecastForLocation:(id)a3 conditions:(id)a4 sunriseDateComponents:(id)a5 sunsetDateComponents:(id)a6;
+ (int64_t)TimeValueFromString:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)setTemperature:(id)a3;
@end

@implementation WAHourlyForecast

+ (id)hourlyForecastForLocation:(id)a3 conditions:(id)a4 sunriseDateComponents:(id)a5 sunsetDateComponents:(id)a6
{
  v11 = a3;
  v12 = a4;
  v39 = a5;
  v38 = a6;
  if (v11)
  {
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [WAHourlyForecast(WFAdditions) hourlyForecastForLocation:a2 conditions:a1 sunriseDateComponents:? sunsetDateComponents:?];
    if (v12)
    {
      goto LABEL_3;
    }
  }

  [WAHourlyForecast(WFAdditions) hourlyForecastForLocation:a2 conditions:a1 sunriseDateComponents:? sunsetDateComponents:?];
LABEL_3:
  v13 = objc_alloc_init(WAHourlyForecast);
  [(WAHourlyForecast *)v13 setEventType:0];
  v14 = [v12 valueForComponent:*MEMORY[0x277D7B370]];
  [(WAHourlyForecast *)v13 setTemperature:v14];

  v15 = [v12 valueForComponent:*MEMORY[0x277D7B3A8]];
  -[WAHourlyForecast setHourIndex:](v13, "setHourIndex:", [v15 integerValue]);
  v16 = [v12 valueForComponent:*MEMORY[0x277D7B348]];
  [v16 floatValue];
  [(WAHourlyForecast *)v13 setPercentPrecipitation:v17];
  v18 = [v12 valueForComponent:*MEMORY[0x277D7B310]];
  v19 = [v18 date];
  [v19 timeIntervalSince1970];
  v21 = v20;

  v22 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v21];
  v23 = objc_alloc(MEMORY[0x277CBEA80]);
  v24 = [v23 initWithCalendarIdentifier:*MEMORY[0x277CBE5D0]];
  v25 = [v11 timeZone];
  [v24 setTimeZone:v25];

  v26 = [v24 components:96 fromDate:v22];
  v27 = MEMORY[0x277CCACA8];
  v28 = [v26 hour];
  v29 = [v26 minute];
  v30 = 0;
  if (v29 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v30 = [v26 minute];
  }

  v31 = [v27 stringWithFormat:@"%02zd:%02zd", v28, v30];
  [(WAHourlyForecast *)v13 setTime:v31];

  v32 = [v12 valueForComponent:*MEMORY[0x277D7B3A0]];
  v33 = v32;
  v34 = &unk_288235730;
  if (v32)
  {
    v34 = v32;
  }

  v35 = v34;

  v36 = [v35 unsignedIntegerValue];
  [(WAHourlyForecast *)v13 setConditionCode:v36];

  return v13;
}

+ (int64_t)TimeValueFromString:(id)a3
{
  v3 = [a3 componentsSeparatedByString:@":"];
  if ([v3 count] < 2)
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = [v3 firstObject];
    v5 = 100 * [v4 integerValue];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 8) = self->_eventType;
  v6 = [(NSString *)self->_time copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  *(v5 + 24) = self->_hourIndex;
  v8 = [(WFTemperature *)self->_temperature copyWithZone:a3];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  *(v5 + 48) = self->_conditionCode;
  *(v5 + 56) = self->_percentPrecipitation;
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    IsEqual = 1;
  }

  else
  {
    objc_opt_class();
    v5 = v4;
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    if (!v7)
    {
      goto LABEL_11;
    }

    v8 = [(WAHourlyForecast *)v7 eventType];
    if (v8 != [(WAHourlyForecast *)self eventType])
    {
      goto LABEL_11;
    }

    v9 = [(WAHourlyForecast *)v7 time];
    v10 = [(WAHourlyForecast *)self time];
    v11 = [v9 isEqualToString:v10];

    if (!v11)
    {
      goto LABEL_11;
    }

    v12 = [(WAHourlyForecast *)v7 conditionCode];
    if (v12 == [(WAHourlyForecast *)self conditionCode]&& ([(WAHourlyForecast *)v7 percentPrecipitation], v14 = v13, [(WAHourlyForecast *)self percentPrecipitation], v16 = v15, WAFloatIsEqual(v14, v16)))
    {
      v17 = [(WAHourlyForecast *)v7 temperature];
      v18 = [(WAHourlyForecast *)self temperature];
      IsEqual = WAObjectIsEqual(v17, v18);
    }

    else
    {
LABEL_11:
      IsEqual = 0;
    }
  }

  return IsEqual;
}

- (unint64_t)hash
{
  v2 = [(WAHourlyForecast *)self description];
  v3 = [v2 hash];

  return v3;
}

- (void)setTemperature:(id)a3
{
  v5 = a3;
  temperature = self->_temperature;
  p_temperature = &self->_temperature;
  v8 = v5;
  if (([(WFTemperature *)temperature isEqualToTemperature:?]& 1) == 0)
  {
    objc_storeStrong(p_temperature, a3);
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  time = self->_time;
  v5 = MEMORY[0x277CCABB0];
  v6 = [(WAHourlyForecast *)self temperature];
  [v6 temperatureForUnit:2];
  v7 = [v5 numberWithDouble:?];
  v8 = [v3 stringWithFormat:@"<WAHourlyForecast - Hour: %@, Temp: %@, ConditionCode: %ld, Precipitation: %f>", time, v7, self->_conditionCode, *&self->_percentPrecipitation];

  return v8;
}

@end