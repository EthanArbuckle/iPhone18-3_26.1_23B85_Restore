@interface PLDateIntervalFormatter
+ (id)_currentLocalDate;
+ (id)_dateFormatForDateFormatterType:(unint64_t)a3 displayYear:(BOOL)a4 displayLongMonth:(BOOL)a5;
+ (id)stringFromStartDate:(id)a3 endDate:(id)a4 type:(unint64_t)a5 showLongMonthFormatIfNeeded:(BOOL)a6;
- (BOOL)_yearIsNeededForDisplayingDate:(id)a3;
- (NSCalendar)gmtCalendar;
- (NSDateIntervalFormatter)dateIntervalFormatter;
- (NSLocale)locale;
- (PLDateIntervalFormatter)init;
- (id)stringFromStartDate:(id)a3 endDate:(id)a4 type:(unint64_t)a5 showLongMonthFormatIfNeeded:(BOOL)a6;
- (void)setLocale:(id)a3;
@end

@implementation PLDateIntervalFormatter

- (void)setLocale:(id)a3
{
  v5 = a3;
  p_locale = &self->_locale;
  if (self->_locale != v5)
  {
    v7 = v5;
    objc_storeStrong(p_locale, a3);
    p_locale = [(NSDateIntervalFormatter *)self->_dateIntervalFormatter setLocale:v7];
  }

  MEMORY[0x1EEE66BE0](p_locale);
}

- (NSLocale)locale
{
  locale = self->_locale;
  if (locale)
  {
    v3 = locale;
  }

  else
  {
    v3 = [MEMORY[0x1E695DF58] currentLocale];
  }

  return v3;
}

- (NSCalendar)gmtCalendar
{
  gmtCalendar = self->_gmtCalendar;
  if (!gmtCalendar)
  {
    v4 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
    v5 = self->_gmtCalendar;
    self->_gmtCalendar = v4;

    v6 = [MEMORY[0x1E695DFE8] timeZoneWithAbbreviation:@"GMT"];
    [(NSCalendar *)self->_gmtCalendar setTimeZone:v6];

    gmtCalendar = self->_gmtCalendar;
  }

  return gmtCalendar;
}

- (NSDateIntervalFormatter)dateIntervalFormatter
{
  dateIntervalFormatter = self->_dateIntervalFormatter;
  if (!dateIntervalFormatter)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AB88]);
    v5 = self->_dateIntervalFormatter;
    self->_dateIntervalFormatter = v4;

    v6 = [(PLDateIntervalFormatter *)self locale];
    [(NSDateIntervalFormatter *)self->_dateIntervalFormatter setLocale:v6];

    v7 = [MEMORY[0x1E695DFE8] timeZoneWithAbbreviation:@"GMT"];
    [(NSDateIntervalFormatter *)self->_dateIntervalFormatter setTimeZone:v7];

    dateIntervalFormatter = self->_dateIntervalFormatter;
  }

  return dateIntervalFormatter;
}

- (BOOL)_yearIsNeededForDisplayingDate:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() _currentLocalDate];
  v6 = [(PLDateIntervalFormatter *)self gmtCalendar];
  v7 = [v6 compareDate:v5 toDate:v4 toUnitGranularity:4];

  return v7 != 0;
}

- (id)stringFromStartDate:(id)a3 endDate:(id)a4 type:(unint64_t)a5 showLongMonthFormatIfNeeded:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = v11;
  v13 = 0;
  if (v10 && a5)
  {
    if (v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v10;
    }

    v15 = v14;
    v16 = [(PLDateIntervalFormatter *)self alwaysShowYear]|| [(PLDateIntervalFormatter *)self _yearIsNeededForDisplayingDate:v15];
    v17 = [objc_opt_class() _dateFormatForDateFormatterType:a5 displayYear:v16 displayLongMonth:v6];
    v18 = [(PLDateIntervalFormatter *)self dateIntervalFormatter];
    [v18 setDateTemplate:v17];

    v19 = [(PLDateIntervalFormatter *)self dateIntervalFormatter];
    v13 = [v19 stringFromDate:v10 toDate:v15];
  }

  return v13;
}

- (PLDateIntervalFormatter)init
{
  v3.receiver = self;
  v3.super_class = PLDateIntervalFormatter;
  result = [(PLDateIntervalFormatter *)&v3 init];
  if (result)
  {
    result->_alwaysShowYear = 1;
  }

  return result;
}

+ (id)_currentLocalDate
{
  v2 = [MEMORY[0x1E695DF00] date];
  v3 = [MEMORY[0x1E695DFE8] systemTimeZone];
  v4 = [v3 secondsFromGMTForDate:v2];

  v5 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:v4];

  return v5;
}

+ (id)stringFromStartDate:(id)a3 endDate:(id)a4 type:(unint64_t)a5 showLongMonthFormatIfNeeded:(BOOL)a6
{
  v6 = a6;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(PLDateIntervalFormatter);
  v12 = [(PLDateIntervalFormatter *)v11 stringFromStartDate:v10 endDate:v9 type:a5 showLongMonthFormatIfNeeded:v6];

  return v12;
}

+ (id)_dateFormatForDateFormatterType:(unint64_t)a3 displayYear:(BOOL)a4 displayLongMonth:(BOOL)a5
{
  v5 = a4;
  v19 = *MEMORY[0x1E69E9840];
  v7 = 1;
  if (a3 > 3)
  {
    if (a3 == 4)
    {
      v11 = @"MMM";
      if (a5)
      {
        v11 = @"MMMM";
      }

      [MEMORY[0x1E696AD60] stringWithFormat:@"%@%@", v11, @"d"];
    }

    else
    {
      if (a3 == 5)
      {
        v9 = MEMORY[0x1E696AD60];
        v10 = @"d";
      }

      else
      {
        if (a3 != 6)
        {
          goto LABEL_23;
        }

        v9 = MEMORY[0x1E696AD60];
        v10 = @"MMMM";
      }

      [v9 stringWithFormat:@"%@", v10, v16];
    }
    v13 = ;
    v7 = 0;
    if (v13)
    {
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  switch(a3)
  {
    case 1uLL:
      v8 = [MEMORY[0x1E696AD60] stringWithFormat:@"%@%@", a4, a5, @"MMM", @"d"];
      goto LABEL_18;
    case 2uLL:
      if (a5)
      {
        v12 = @"MMMM";
      }

      else
      {
        v12 = @"MMM";
      }

      v8 = [MEMORY[0x1E696AD60] stringWithString:v12];
LABEL_18:
      v13 = v8;
      if (v8)
      {
        goto LABEL_26;
      }

      break;
    case 3uLL:
      v8 = [MEMORY[0x1E696AD60] string];
      goto LABEL_18;
  }

LABEL_23:
  v14 = PLMomentsGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v18 = a3;
    _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Couldn't find dateFormat for type %lu", buf, 0xCu);
  }

  v13 = 0;
LABEL_26:
  if (v7 && v5)
  {
    [v13 appendString:@"y"];
  }

  return v13;
}

@end