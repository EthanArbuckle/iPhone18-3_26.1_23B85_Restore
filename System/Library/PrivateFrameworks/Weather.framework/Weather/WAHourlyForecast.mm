@interface WAHourlyForecast
+ (id)hourlyForecastForLocation:(id)location conditions:(id)conditions sunriseDateComponents:(id)components sunsetDateComponents:(id)dateComponents;
+ (int64_t)TimeValueFromString:(id)string;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)setTemperature:(id)temperature;
@end

@implementation WAHourlyForecast

+ (id)hourlyForecastForLocation:(id)location conditions:(id)conditions sunriseDateComponents:(id)components sunsetDateComponents:(id)dateComponents
{
  locationCopy = location;
  conditionsCopy = conditions;
  componentsCopy = components;
  dateComponentsCopy = dateComponents;
  if (locationCopy)
  {
    if (conditionsCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [WAHourlyForecast(WFAdditions) hourlyForecastForLocation:a2 conditions:self sunriseDateComponents:? sunsetDateComponents:?];
    if (conditionsCopy)
    {
      goto LABEL_3;
    }
  }

  [WAHourlyForecast(WFAdditions) hourlyForecastForLocation:a2 conditions:self sunriseDateComponents:? sunsetDateComponents:?];
LABEL_3:
  v13 = objc_alloc_init(WAHourlyForecast);
  [(WAHourlyForecast *)v13 setEventType:0];
  v14 = [conditionsCopy valueForComponent:*MEMORY[0x277D7B370]];
  [(WAHourlyForecast *)v13 setTemperature:v14];

  v15 = [conditionsCopy valueForComponent:*MEMORY[0x277D7B3A8]];
  -[WAHourlyForecast setHourIndex:](v13, "setHourIndex:", [v15 integerValue]);
  v16 = [conditionsCopy valueForComponent:*MEMORY[0x277D7B348]];
  [v16 floatValue];
  [(WAHourlyForecast *)v13 setPercentPrecipitation:v17];
  v18 = [conditionsCopy valueForComponent:*MEMORY[0x277D7B310]];
  date = [v18 date];
  [date timeIntervalSince1970];
  v21 = v20;

  v22 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v21];
  v23 = objc_alloc(MEMORY[0x277CBEA80]);
  v24 = [v23 initWithCalendarIdentifier:*MEMORY[0x277CBE5D0]];
  timeZone = [locationCopy timeZone];
  [v24 setTimeZone:timeZone];

  v26 = [v24 components:96 fromDate:v22];
  v27 = MEMORY[0x277CCACA8];
  hour = [v26 hour];
  minute = [v26 minute];
  minute2 = 0;
  if (minute != 0x7FFFFFFFFFFFFFFFLL)
  {
    minute2 = [v26 minute];
  }

  v31 = [v27 stringWithFormat:@"%02zd:%02zd", hour, minute2];
  [(WAHourlyForecast *)v13 setTime:v31];

  v32 = [conditionsCopy valueForComponent:*MEMORY[0x277D7B3A0]];
  v33 = v32;
  v34 = &unk_288235730;
  if (v32)
  {
    v34 = v32;
  }

  v35 = v34;

  unsignedIntegerValue = [v35 unsignedIntegerValue];
  [(WAHourlyForecast *)v13 setConditionCode:unsignedIntegerValue];

  return v13;
}

+ (int64_t)TimeValueFromString:(id)string
{
  v3 = [string componentsSeparatedByString:@":"];
  if ([v3 count] < 2)
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    firstObject = [v3 firstObject];
    v5 = 100 * [firstObject integerValue];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 8) = self->_eventType;
  v6 = [(NSString *)self->_time copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  *(v5 + 24) = self->_hourIndex;
  v8 = [(WFTemperature *)self->_temperature copyWithZone:zone];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  *(v5 + 48) = self->_conditionCode;
  *(v5 + 56) = self->_percentPrecipitation;
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    IsEqual = 1;
  }

  else
  {
    objc_opt_class();
    v5 = equalCopy;
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

    eventType = [(WAHourlyForecast *)v7 eventType];
    if (eventType != [(WAHourlyForecast *)self eventType])
    {
      goto LABEL_11;
    }

    time = [(WAHourlyForecast *)v7 time];
    time2 = [(WAHourlyForecast *)self time];
    v11 = [time isEqualToString:time2];

    if (!v11)
    {
      goto LABEL_11;
    }

    conditionCode = [(WAHourlyForecast *)v7 conditionCode];
    if (conditionCode == [(WAHourlyForecast *)self conditionCode]&& ([(WAHourlyForecast *)v7 percentPrecipitation], v14 = v13, [(WAHourlyForecast *)self percentPrecipitation], v16 = v15, WAFloatIsEqual(v14, v16)))
    {
      temperature = [(WAHourlyForecast *)v7 temperature];
      temperature2 = [(WAHourlyForecast *)self temperature];
      IsEqual = WAObjectIsEqual(temperature, temperature2);
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

- (void)setTemperature:(id)temperature
{
  temperatureCopy = temperature;
  temperature = self->_temperature;
  p_temperature = &self->_temperature;
  v8 = temperatureCopy;
  if (([(WFTemperature *)temperature isEqualToTemperature:?]& 1) == 0)
  {
    objc_storeStrong(p_temperature, temperature);
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  time = self->_time;
  v5 = MEMORY[0x277CCABB0];
  temperature = [(WAHourlyForecast *)self temperature];
  [temperature temperatureForUnit:2];
  v7 = [v5 numberWithDouble:?];
  v8 = [v3 stringWithFormat:@"<WAHourlyForecast - Hour: %@, Temp: %@, ConditionCode: %ld, Precipitation: %f>", time, v7, self->_conditionCode, *&self->_percentPrecipitation];

  return v8;
}

@end