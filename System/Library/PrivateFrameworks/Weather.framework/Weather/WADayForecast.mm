@interface WADayForecast
+ (id)dayForecastForLocation:(id)a3 conditions:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)compareDayNumberToDayForecast:(id)a3;
- (unint64_t)hash;
- (void)setHigh:(id)a3;
- (void)setLow:(id)a3;
@end

@implementation WADayForecast

+ (id)dayForecastForLocation:(id)a3 conditions:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [WADayForecast(WFAdditions) dayForecastForLocation:a2 conditions:a1];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [WADayForecast(WFAdditions) dayForecastForLocation:a2 conditions:a1];
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

  v19 = [v18 unsignedIntegerValue];
  [(WADayForecast *)v10 setIcon:v19];
  v20 = [v9 valueForComponent:*MEMORY[0x277D7B310]];
  v21 = [v20 date];

  v22 = objc_alloc(MEMORY[0x277CBEA80]);
  v23 = [v22 initWithCalendarIdentifier:*MEMORY[0x277CBE5D0]];
  v24 = [v7 timeZone];
  [v23 setTimeZone:v24];

  v25 = [v23 components:512 fromDate:v21];
  -[WADayForecast setDayOfWeek:](v10, "setDayOfWeek:", [v25 weekday]);
  v26 = [v7 timeZone];
  [(WADayForecast *)v10 setIsYesterday:DateIsYesterdayInTimezone(v21, v26)];

  v27 = [v9 valueForComponent:*MEMORY[0x277D7B3A8]];
  -[WADayForecast setDayNumber:](v10, "setDayNumber:", [v27 integerValue] - 1);

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[WADayForecast allocWithZone:?]];
  v5 = [(WADayForecast *)self high];
  [(WADayForecast *)v4 setHigh:v5];

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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    LOBYTE(v19) = 1;
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

    v8 = [(WADayForecast *)self high];
    v9 = [(WADayForecast *)v7 high];
    if (WAObjectIsEqual(v8, v9))
    {
      v10 = [(WADayForecast *)self low];
      v11 = [(WADayForecast *)v7 low];
      if (WAObjectIsEqual(v10, v11) && ([(WADayForecast *)self percentPrecipitation], v13 = v12, [(WADayForecast *)v7 percentPrecipitation], v13 == v14) && (v15 = [(WADayForecast *)self icon], v15 == [(WADayForecast *)v7 icon]) && (v16 = [(WADayForecast *)self dayNumber], v16 == [(WADayForecast *)v7 dayNumber]) && (v17 = [(WADayForecast *)self dayOfWeek], v17 == [(WADayForecast *)v7 dayOfWeek]))
      {
        v18 = [(WADayForecast *)self isYesterday];
        v19 = v18 ^ [(WADayForecast *)v7 isYesterday]^ 1;
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

- (void)setHigh:(id)a3
{
  v5 = a3;
  high = self->_high;
  p_high = &self->_high;
  v8 = v5;
  if (([(WFTemperature *)high isEqualToTemperature:?]& 1) == 0)
  {
    objc_storeStrong(p_high, a3);
  }
}

- (void)setLow:(id)a3
{
  v5 = a3;
  low = self->_low;
  p_low = &self->_low;
  v8 = v5;
  if (([(WFTemperature *)low isEqualToTemperature:?]& 1) == 0)
  {
    objc_storeStrong(p_low, a3);
  }
}

- (int64_t)compareDayNumberToDayForecast:(id)a3
{
  if ([a3 dayNumber] > self->_dayNumber)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

@end