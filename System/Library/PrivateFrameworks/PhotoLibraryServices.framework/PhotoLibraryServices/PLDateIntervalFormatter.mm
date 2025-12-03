@interface PLDateIntervalFormatter
+ (id)_currentLocalDate;
+ (id)_dateFormatForDateFormatterType:(unint64_t)type displayYear:(BOOL)year displayLongMonth:(BOOL)month;
+ (id)stringFromStartDate:(id)date endDate:(id)endDate type:(unint64_t)type showLongMonthFormatIfNeeded:(BOOL)needed;
- (BOOL)_yearIsNeededForDisplayingDate:(id)date;
- (NSCalendar)gmtCalendar;
- (NSDateIntervalFormatter)dateIntervalFormatter;
- (NSLocale)locale;
- (PLDateIntervalFormatter)init;
- (id)stringFromStartDate:(id)date endDate:(id)endDate type:(unint64_t)type showLongMonthFormatIfNeeded:(BOOL)needed;
- (void)setLocale:(id)locale;
@end

@implementation PLDateIntervalFormatter

- (void)setLocale:(id)locale
{
  localeCopy = locale;
  p_locale = &self->_locale;
  if (self->_locale != localeCopy)
  {
    v7 = localeCopy;
    objc_storeStrong(p_locale, locale);
    p_locale = [(NSDateIntervalFormatter *)self->_dateIntervalFormatter setLocale:v7];
  }

  MEMORY[0x1EEE66BE0](p_locale);
}

- (NSLocale)locale
{
  locale = self->_locale;
  if (locale)
  {
    currentLocale = locale;
  }

  else
  {
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  }

  return currentLocale;
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

    locale = [(PLDateIntervalFormatter *)self locale];
    [(NSDateIntervalFormatter *)self->_dateIntervalFormatter setLocale:locale];

    v7 = [MEMORY[0x1E695DFE8] timeZoneWithAbbreviation:@"GMT"];
    [(NSDateIntervalFormatter *)self->_dateIntervalFormatter setTimeZone:v7];

    dateIntervalFormatter = self->_dateIntervalFormatter;
  }

  return dateIntervalFormatter;
}

- (BOOL)_yearIsNeededForDisplayingDate:(id)date
{
  dateCopy = date;
  _currentLocalDate = [objc_opt_class() _currentLocalDate];
  gmtCalendar = [(PLDateIntervalFormatter *)self gmtCalendar];
  v7 = [gmtCalendar compareDate:_currentLocalDate toDate:dateCopy toUnitGranularity:4];

  return v7 != 0;
}

- (id)stringFromStartDate:(id)date endDate:(id)endDate type:(unint64_t)type showLongMonthFormatIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  dateCopy = date;
  endDateCopy = endDate;
  v12 = endDateCopy;
  v13 = 0;
  if (dateCopy && type)
  {
    if (endDateCopy)
    {
      v14 = endDateCopy;
    }

    else
    {
      v14 = dateCopy;
    }

    v15 = v14;
    v16 = [(PLDateIntervalFormatter *)self alwaysShowYear]|| [(PLDateIntervalFormatter *)self _yearIsNeededForDisplayingDate:v15];
    v17 = [objc_opt_class() _dateFormatForDateFormatterType:type displayYear:v16 displayLongMonth:neededCopy];
    dateIntervalFormatter = [(PLDateIntervalFormatter *)self dateIntervalFormatter];
    [dateIntervalFormatter setDateTemplate:v17];

    dateIntervalFormatter2 = [(PLDateIntervalFormatter *)self dateIntervalFormatter];
    v13 = [dateIntervalFormatter2 stringFromDate:dateCopy toDate:v15];
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
  date = [MEMORY[0x1E695DF00] date];
  systemTimeZone = [MEMORY[0x1E695DFE8] systemTimeZone];
  v4 = [systemTimeZone secondsFromGMTForDate:date];

  v5 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:v4];

  return v5;
}

+ (id)stringFromStartDate:(id)date endDate:(id)endDate type:(unint64_t)type showLongMonthFormatIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  endDateCopy = endDate;
  dateCopy = date;
  v11 = objc_alloc_init(PLDateIntervalFormatter);
  v12 = [(PLDateIntervalFormatter *)v11 stringFromStartDate:dateCopy endDate:endDateCopy type:type showLongMonthFormatIfNeeded:neededCopy];

  return v12;
}

+ (id)_dateFormatForDateFormatterType:(unint64_t)type displayYear:(BOOL)year displayLongMonth:(BOOL)month
{
  yearCopy = year;
  v19 = *MEMORY[0x1E69E9840];
  v7 = 1;
  if (type > 3)
  {
    if (type == 4)
    {
      v11 = @"MMM";
      if (month)
      {
        v11 = @"MMMM";
      }

      [MEMORY[0x1E696AD60] stringWithFormat:@"%@%@", v11, @"d"];
    }

    else
    {
      if (type == 5)
      {
        v9 = MEMORY[0x1E696AD60];
        v10 = @"d";
      }

      else
      {
        if (type != 6)
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

  switch(type)
  {
    case 1uLL:
      string = [MEMORY[0x1E696AD60] stringWithFormat:@"%@%@", year, month, @"MMM", @"d"];
      goto LABEL_18;
    case 2uLL:
      if (month)
      {
        v12 = @"MMMM";
      }

      else
      {
        v12 = @"MMM";
      }

      string = [MEMORY[0x1E696AD60] stringWithString:v12];
LABEL_18:
      v13 = string;
      if (string)
      {
        goto LABEL_26;
      }

      break;
    case 3uLL:
      string = [MEMORY[0x1E696AD60] string];
      goto LABEL_18;
  }

LABEL_23:
  v14 = PLMomentsGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    typeCopy = type;
    _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Couldn't find dateFormat for type %lu", buf, 0xCu);
  }

  v13 = 0;
LABEL_26:
  if (v7 && yearCopy)
  {
    [v13 appendString:@"y"];
  }

  return v13;
}

@end