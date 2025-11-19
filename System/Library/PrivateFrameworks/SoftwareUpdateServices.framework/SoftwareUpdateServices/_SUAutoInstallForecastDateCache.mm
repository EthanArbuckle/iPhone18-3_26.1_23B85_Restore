@interface _SUAutoInstallForecastDateCache
- (BOOL)_isStart:(id)a3 end:(id)a4 withinDateRange:(id)a5 end:(id)a6;
- (_SUAutoInstallForecastDateCache)initWithForecast:(id)a3;
- (id)description;
- (void)_computeTonightRangeRelativeToDate:(id)a3 extraDayOffset:(int64_t)a4 outStart:(id *)a5 outEnd:(id *)a6;
- (void)_parseForecast;
@end

@implementation _SUAutoInstallForecastDateCache

- (_SUAutoInstallForecastDateCache)initWithForecast:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _SUAutoInstallForecastDateCache;
  v5 = [(_SUAutoInstallForecastDateCache *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_weak_forecast, v4);
    v7 = [MEMORY[0x277CBEA80] autoupdatingCurrentCalendar];
    calendar = v6->_calendar;
    v6->_calendar = v7;

    v9 = v6->_calendar;
    v10 = [MEMORY[0x277CBEBB0] defaultTimeZone];
    [(NSCalendar *)v9 setTimeZone:v10];

    [(_SUAutoInstallForecastDateCache *)v6 _parseForecast];
  }

  return v6;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"[<_SUAutoInstallForecastDateCache:%p> ", self];
  [v3 appendString:v4];

  v5 = MEMORY[0x277CCACA8];
  v6 = SUStringForAutoInstallForecastScheduleType(self->_scheduleType);
  v7 = [v5 stringWithFormat:@"ForecastScheduleType=%@, ", v6];
  [v3 appendString:v7];

  v8 = MEMORY[0x277CCACA8];
  v9 = [MEMORY[0x277CF0BF0] sharedInstance];
  WeakRetained = objc_loadWeakRetained(&self->_weak_forecast);
  v11 = [WeakRetained suStartDate];
  v12 = [v9 formatDateAsLongYMDHMSZPosixLocaleWithDate:v11];
  v13 = [v8 stringWithFormat:@"startDate=%@, ", v12];
  [v3 appendString:v13];

  v14 = MEMORY[0x277CCACA8];
  v15 = [MEMORY[0x277CF0BF0] sharedInstance];
  v16 = [v15 formatDateAsLongYMDHMSZPosixLocaleWithDate:self->_roundedStartDate];
  v17 = [v14 stringWithFormat:@"startDateRounded=%@, ", v16];
  [v3 appendString:v17];

  v18 = MEMORY[0x277CCACA8];
  v19 = [MEMORY[0x277CF0BF0] sharedInstance];
  v20 = objc_loadWeakRetained(&self->_weak_forecast);
  v21 = [v20 suEndDate];
  v22 = [v19 formatDateAsLongYMDHMSZPosixLocaleWithDate:v21];
  v23 = [v18 stringWithFormat:@"endDate=%@, ", v22];
  [v3 appendString:v23];

  v24 = MEMORY[0x277CCACA8];
  v25 = [MEMORY[0x277CF0BF0] sharedInstance];
  v26 = [v25 formatDateAsLongYMDHMSZPosixLocaleWithDate:self->_roundedEndDate];
  v27 = [v24 stringWithFormat:@"endDateRounded=%@", v26];
  [v3 appendString:v27];

  [v3 appendString:@"]"];

  return v3;
}

- (void)_parseForecast
{
  WeakRetained = objc_loadWeakRetained(&self->_weak_forecast);
  v4 = [WeakRetained suStartDate];

  v5 = objc_loadWeakRetained(&self->_weak_forecast);
  v6 = [v5 suEndDate];

  v7 = [MEMORY[0x277CBEAA8] date];
  v8 = [(_SUAutoInstallForecastDateCache *)self _componentsFromDate:v4];
  [v8 setMinute:0];
  [v8 setSecond:0];
  [v8 setNanosecond:0];
  v9 = [(NSCalendar *)self->_calendar dateFromComponents:v8];
  roundedStartDate = self->_roundedStartDate;
  self->_roundedStartDate = v9;

  v11 = [(_SUAutoInstallForecastDateCache *)self _componentsFromDate:v6];
  if ([v11 minute])
  {
    v12 = [(NSCalendar *)self->_calendar dateByAddingUnit:32 value:1 toDate:v6 options:0];
    v13 = [(_SUAutoInstallForecastDateCache *)self _componentsFromDate:v12];

    v11 = v13;
  }

  [v11 setMinute:0];
  [v11 setSecond:0];
  [v11 setNanosecond:0];
  v14 = [(NSCalendar *)self->_calendar dateFromComponents:v11];
  roundedEndDate = self->_roundedEndDate;
  self->_roundedEndDate = v14;

  v16 = [MEMORY[0x277CF0BF8] sharedInstance];
  [v4 timeIntervalSinceReferenceDate];
  v17 = [v16 isToday:?];

  v18 = [MEMORY[0x277CF0BF8] sharedInstance];
  [v4 timeIntervalSinceReferenceDate];
  v19 = [v18 isTomorrow:?];

  v20 = [(NSCalendar *)self->_calendar dateByAddingUnit:16 value:2 toDate:v7 options:0];
  if (![v4 isAfterDate:v20] && v4 && v6 && self->_roundedStartDate && self->_roundedEndDate)
  {
    v41 = 0;
    v42 = 0;
    [(_SUAutoInstallForecastDateCache *)self _computeTonightRangeRelativeToDate:v7 extraDayOffset:-1 outStart:&v42 outEnd:&v41];
    v35 = v42;
    v21 = v41;
    v39 = 0;
    v40 = 0;
    [(_SUAutoInstallForecastDateCache *)self _computeTonightRangeRelativeToDate:v7 extraDayOffset:0 outStart:&v40 outEnd:&v39];
    v33 = v40;
    v36 = v39;
    v37 = 0;
    v38 = 0;
    [(_SUAutoInstallForecastDateCache *)self _computeTonightRangeRelativeToDate:v7 extraDayOffset:1 outStart:&v38 outEnd:&v37];
    v34 = v38;
    v22 = v37;
    v23 = v22;
    self->_scheduleType = 3;
    if (v17)
    {
      v24 = v22;
      v25 = v21;
      if ([(_SUAutoInstallForecastDateCache *)self _isStart:v4 end:v6 withinDateRange:v35 end:v21])
      {
        v26 = [v7 isBeforeDate:v21];
        v27 = v33;
        v23 = v24;
        if (v26)
        {
          v28 = 1;
LABEL_23:
          self->_scheduleType = v28;
        }
      }

      else
      {
        v27 = v33;
        v30 = [(_SUAutoInstallForecastDateCache *)self _isStart:v4 end:v6 withinDateRange:v33 end:v36];
        v23 = v24;
        if (v30)
        {
          v31 = [v7 isBeforeDate:v25];
          v23 = v24;
          v28 = 1;
          if (v31)
          {
            v28 = 2;
          }

          goto LABEL_23;
        }
      }
    }

    else
    {
      v25 = v21;
      v27 = v33;
      if (v19)
      {
        v29 = v22;
        if ([(_SUAutoInstallForecastDateCache *)self _isStart:v4 end:v6 withinDateRange:v33 end:v36])
        {
          v28 = 1;
          v23 = v29;
          goto LABEL_23;
        }

        v32 = [(_SUAutoInstallForecastDateCache *)self _isStart:v4 end:v6 withinDateRange:v34 end:v29];
        v23 = v29;
        if (v32)
        {
          v28 = 2;
          goto LABEL_23;
        }
      }
    }

    goto LABEL_13;
  }

  self->_scheduleType = 0;
LABEL_13:
}

- (BOOL)_isStart:(id)a3 end:(id)a4 withinDateRange:(id)a5 end:(id)a6
{
  v9 = a4;
  v10 = a6;
  v11 = v10;
  v12 = 0;
  if (a3 && v9 && a5 && v10)
  {
    if ([a3 isAfterDate:a5])
    {
      v12 = [v9 isBeforeDate:v11];
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (void)_computeTonightRangeRelativeToDate:(id)a3 extraDayOffset:(int64_t)a4 outStart:(id *)a5 outEnd:(id *)a6
{
  v10 = a3;
  v11 = v10;
  v21 = v10;
  if (a4)
  {
    v11 = [(NSCalendar *)self->_calendar dateByAddingUnit:16 value:a4 toDate:v10 options:0];

    v10 = v21;
  }

  if (v11)
  {
    v12 = [(_SUAutoInstallForecastDateCache *)self _componentsFromDate:v11];
    [v12 setHour:20];
    [v12 setMinute:0];
    [v12 setSecond:0];
    [v12 setNanosecond:0];
    v13 = [(NSCalendar *)self->_calendar dateFromComponents:v12];

    if (v13)
    {
      v11 = [(NSCalendar *)self->_calendar dateByAddingUnit:64 value:-5 toDate:v13 options:0];
    }

    else
    {
      v11 = 0;
    }

    v10 = v21;
  }

  v14 = v10;
  v15 = a4 + 1;
  if (a4 != -1)
  {
    v14 = [(NSCalendar *)self->_calendar dateByAddingUnit:16 value:v15 toDate:v21 options:0];
  }

  if (v14)
  {
    v16 = [(_SUAutoInstallForecastDateCache *)self _componentsFromDate:v14, v15];
    [v16 setHour:5];
    [v16 setMinute:0];
    [v16 setSecond:0];
    [v16 setNanosecond:0];
    v17 = [(NSCalendar *)self->_calendar dateFromComponents:v16];

    if (v17)
    {
      v18 = [(NSCalendar *)self->_calendar dateByAddingUnit:64 value:5 toDate:v17 options:0];
    }

    else
    {
      v18 = 0;
    }

    if (!a5)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v18 = 0;
    if (!a5)
    {
      goto LABEL_19;
    }
  }

  if (v11)
  {
    v19 = v11;
    *a5 = v11;
  }

LABEL_19:
  if (a6 && v18)
  {
    v20 = v18;
    *a6 = v18;
  }
}

@end