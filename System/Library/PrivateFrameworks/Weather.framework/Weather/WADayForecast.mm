@interface WADayForecast
+ (id)dayForecastForLocation:(id)location conditions:(id)conditions;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)compareDayNumberToDayForecast:(id)forecast;
- (unint64_t)hash;
- (void)setHigh:(id)high;
- (void)setLow:(id)low;
@end

@implementation WADayForecast

+ (id)dayForecastForLocation:(id)location conditions:(id)conditions
{
  locationCopy = location;
  conditionsCopy = conditions;
  v9 = conditionsCopy;
  if (locationCopy)
  {
    if (conditionsCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [WADayForecast(WFAdditions) dayForecastForLocation:a2 conditions:self];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [WADayForecast(WFAdditions) dayForecastForLocation:a2 conditions:self];
LABEL_3:
  v10 = objc_alloc_init(WADayForecast);
  v11 = [v9 valueForComponent:*MEMORY[0x277D7B318]];
  [(WADayForecast *)v10 setHigh:v11];

  v12 = [v9 valueForComponent:*MEMORY[0x277D7B330]];
  [(WADayForecast *)v10 setLow:v12];

  v13 = [v9 valueForComponent:*MEMORY[0x277D7B348]];
  [v13 floatValue];
  [(WADayForecast *)v10 setPercentPrecipitation:v14];
  v15 = [v9 valueForComponent:*MEMORY[0x277D7B3A0]];
  v16 = v15;
  v17 = &unk_288235748;
  if (v15)
  {
    v17 = v15;
  }

  v18 = v17;

  unsignedIntegerValue = [v18 unsignedIntegerValue];
  [(WADayForecast *)v10 setIcon:unsignedIntegerValue];
  v20 = [v9 valueForComponent:*MEMORY[0x277D7B310]];
  date = [v20 date];

  v22 = objc_alloc(MEMORY[0x277CBEA80]);
  v23 = [v22 initWithCalendarIdentifier:*MEMORY[0x277CBE5D0]];
  timeZone = [locationCopy timeZone];
  [v23 setTimeZone:timeZone];

  v25 = [v23 components:512 fromDate:date];
  -[WADayForecast setDayOfWeek:](v10, "setDayOfWeek:", [v25 weekday]);
  timeZone2 = [locationCopy timeZone];
  [(WADayForecast *)v10 setIsYesterday:DateIsYesterdayInTimezone(date, timeZone2)];

  v27 = [v9 valueForComponent:*MEMORY[0x277D7B3A8]];
  -[WADayForecast setDayNumber:](v10, "setDayNumber:", [v27 integerValue] - 1);

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[WADayForecast allocWithZone:?]];
  high = [(WADayForecast *)self high];
  [(WADayForecast *)v4 setHigh:high];

  v6 = [(WADayForecast *)self low];
  [(WADayForecast *)v4 setLow:v6];

  [(WADayForecast *)self percentPrecipitation];
  [(WADayForecast *)v4 setPercentPrecipitation:?];
  [(WADayForecast *)v4 setIcon:[(WADayForecast *)self icon]];
  [(WADayForecast *)v4 setDayNumber:[(WADayForecast *)self dayNumber]];
  [(WADayForecast *)v4 setDayOfWeek:[(WADayForecast *)self dayOfWeek]];
  [(WADayForecast *)v4 setIsYesterday:[(WADayForecast *)self isYesterday]];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v19) = 1;
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

    high = [(WADayForecast *)self high];
    high2 = [(WADayForecast *)v7 high];
    if (WAObjectIsEqual(high, high2))
    {
      v10 = [(WADayForecast *)self low];
      v11 = [(WADayForecast *)v7 low];
      if (WAObjectIsEqual(v10, v11) && ([(WADayForecast *)self percentPrecipitation], v13 = v12, [(WADayForecast *)v7 percentPrecipitation], v13 == v14) && (v15 = [(WADayForecast *)self icon], v15 == [(WADayForecast *)v7 icon]) && (v16 = [(WADayForecast *)self dayNumber], v16 == [(WADayForecast *)v7 dayNumber]) && (v17 = [(WADayForecast *)self dayOfWeek], v17 == [(WADayForecast *)v7 dayOfWeek]))
      {
        isYesterday = [(WADayForecast *)self isYesterday];
        v19 = isYesterday ^ [(WADayForecast *)v7 isYesterday]^ 1;
      }

      else
      {
        LOBYTE(v19) = 0;
      }
    }

    else
    {
      LOBYTE(v19) = 0;
    }
  }

  return v19;
}

- (unint64_t)hash
{
  v2 = [(WADayForecast *)self description];
  v3 = [v2 hash];

  return v3;
}

- (void)setHigh:(id)high
{
  highCopy = high;
  high = self->_high;
  p_high = &self->_high;
  v8 = highCopy;
  if (([(WFTemperature *)high isEqualToTemperature:?]& 1) == 0)
  {
    objc_storeStrong(p_high, high);
  }
}

- (void)setLow:(id)low
{
  lowCopy = low;
  low = self->_low;
  p_low = &self->_low;
  v8 = lowCopy;
  if (([(WFTemperature *)low isEqualToTemperature:?]& 1) == 0)
  {
    objc_storeStrong(p_low, low);
  }
}

- (int64_t)compareDayNumberToDayForecast:(id)forecast
{
  if ([forecast dayNumber] > self->_dayNumber)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

@end