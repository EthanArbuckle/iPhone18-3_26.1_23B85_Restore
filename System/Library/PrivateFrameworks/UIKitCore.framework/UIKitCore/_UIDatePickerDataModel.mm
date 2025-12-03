@interface _UIDatePickerDataModel
- (NSCalendar)effectiveCalendar;
- (NSCalendar)formattingCalendar;
- (NSDate)effectiveDate;
- (NSDateComponents)effectiveDateComponents;
- (NSLocale)effectiveLocale;
- (_UIDatePickerDataModel)init;
- (id)_dateForRoundingDateToMinuteInterval:(id)interval;
- (id)createDatePickerRepresentingDataModel;
- (id)createDatePickerRepresentingDataModelForMode:(int64_t)mode style:(int64_t)style;
- (int64_t)datePickerMode;
- (void)_setupDerivedLocaleAndCalendars;
- (void)resetForCurrentLocaleOrCalendarChange;
- (void)setCalendar:(id)calendar;
- (void)setDate:(id)date;
- (void)setDatePickerStyle:(int64_t)style;
- (void)setLastSelectedDateComponents:(id)components;
- (void)setLocale:(id)locale;
- (void)setMaximumDate:(id)date;
- (void)setMinimumDate:(id)date;
- (void)setMinuteInterval:(int64_t)interval;
- (void)setTimeZone:(id)zone;
@end

@implementation _UIDatePickerDataModel

- (_UIDatePickerDataModel)init
{
  v7.receiver = self;
  v7.super_class = _UIDatePickerDataModel;
  v2 = [(_UIDatePickerDataModel *)&v7 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_datePickerStyle = xmmword_18A64BFB0;
    v2->_minuteInterval = 1;
    v2->_roundsToMinuteInterval = 1;
    v4 = objc_alloc_init(_UIDatePickerDateRange);
    dateRange = v3->_dateRange;
    v3->_dateRange = v4;
  }

  return v3;
}

- (void)_setupDerivedLocaleAndCalendars
{
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v3 = [(NSCalendar *)self->_calendar copy];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = currentCalendar;
  }

  v5 = v4;

  locale = self->_locale;
  if (locale)
  {
    currentLocale = locale;
  }

  else
  {
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  }

  v8 = currentLocale;
  if (self->_calendar)
  {
    v9 = MEMORY[0x1E695DF58];
    localeIdentifier = [(NSLocale *)currentLocale localeIdentifier];
    v11 = [v9 componentsFromLocaleIdentifier:localeIdentifier];
    v12 = [v11 mutableCopy];

    [(NSLocale *)v12 removeObjectForKey:@"calendar"];
    [(NSLocale *)v12 setObject:self->_calendar forKey:*MEMORY[0x1E695D958]];
    v13 = [MEMORY[0x1E695DF58] localeIdentifierFromComponents:v12];
    v14 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v13];
    effectiveLocale = self->_effectiveLocale;
    self->_effectiveLocale = v14;
  }

  else
  {
    v16 = currentLocale;
    v12 = self->_effectiveLocale;
    self->_effectiveLocale = v16;
  }

  calendarIdentifier = [(NSCalendar *)v5 calendarIdentifier];
  if ([calendarIdentifier isEqualToString:*MEMORY[0x1E695D828]])
  {
    goto LABEL_13;
  }

  calendarIdentifier2 = [(NSCalendar *)v5 calendarIdentifier];
  if ([calendarIdentifier2 isEqualToString:*MEMORY[0x1E695D838]])
  {

LABEL_13:
    goto LABEL_14;
  }

  calendarIdentifier3 = [(NSCalendar *)v5 calendarIdentifier];
  v24 = [calendarIdentifier3 isEqualToString:*MEMORY[0x1E695D8E0]];

  if ((v24 & 1) == 0)
  {
    chineseWrapperCalendar = self->_chineseWrapperCalendar;
    self->_chineseWrapperCalendar = 0;
    goto LABEL_19;
  }

LABEL_14:
  firstWeekday = [(NSCalendar *)v5 firstWeekday];
  [(NSCalendar *)v5 setLocale:self->_effectiveLocale];
  [(NSCalendar *)v5 setFirstWeekday:firstWeekday];
  v20 = self->_chineseWrapperCalendar;
  if (v20)
  {
    [(_UIDatePickerChineseCalendar *)v20 setRealCalendar:v5];
    goto LABEL_20;
  }

  v21 = [[_UIDatePickerChineseCalendar alloc] initWithCalendar:v5];
  chineseWrapperCalendar = self->_chineseWrapperCalendar;
  self->_chineseWrapperCalendar = v21;
LABEL_19:

LABEL_20:
  calendar = self->_calendar;
  if (!calendar)
  {
    calendar = currentCalendar;
  }

  v26 = calendar;
  timeZone = [(_UIDatePickerDataModel *)self timeZone];

  if (timeZone)
  {
    v28 = [(NSCalendar *)v26 copy];

    timeZone2 = [(_UIDatePickerDataModel *)self timeZone];
    [(NSCalendar *)v28 setTimeZone:timeZone2];

    v26 = v28;
  }

  effectiveCalendar = self->_effectiveCalendar;
  self->_effectiveCalendar = v26;
}

- (void)setLocale:(id)locale
{
  objc_storeStrong(&self->_locale, locale);
  localeCopy = locale;
  effectiveLocale = self->_effectiveLocale;
  self->_effectiveLocale = 0;
}

- (void)setCalendar:(id)calendar
{
  v4 = [calendar copy];
  calendar = self->_calendar;
  self->_calendar = v4;

  effectiveLocale = self->_effectiveLocale;
  self->_effectiveLocale = 0;

  effectiveCalendar = self->_effectiveCalendar;
  self->_effectiveCalendar = 0;
}

- (void)setTimeZone:(id)zone
{
  objc_storeStrong(&self->_timeZone, zone);
  zoneCopy = zone;
  effectiveCalendar = self->_effectiveCalendar;
  self->_effectiveCalendar = 0;
}

- (NSLocale)effectiveLocale
{
  effectiveLocale = self->_effectiveLocale;
  if (!effectiveLocale || !self->_effectiveCalendar)
  {
    [(_UIDatePickerDataModel *)self _setupDerivedLocaleAndCalendars];
    effectiveLocale = self->_effectiveLocale;
  }

  return effectiveLocale;
}

- (NSCalendar)effectiveCalendar
{
  if (!self->_effectiveLocale || !self->_effectiveCalendar)
  {
    [(_UIDatePickerDataModel *)self _setupDerivedLocaleAndCalendars];
  }

  selfCopy = self;
  if ([(_UIDatePickerDataModel *)selfCopy datePickerStyle]!= 1 || (effectiveCalendar = selfCopy->_chineseWrapperCalendar) == 0)
  {
    effectiveCalendar = selfCopy->_effectiveCalendar;
  }

  v5 = effectiveCalendar;

  return v5;
}

- (NSCalendar)formattingCalendar
{
  selfCopy = self;
  if ([(_UIDatePickerDataModel *)selfCopy datePickerStyle]== 1 && (chineseWrapperCalendar = selfCopy->_chineseWrapperCalendar) != 0)
  {
    realCalendar = [(_UIDatePickerChineseCalendar *)chineseWrapperCalendar realCalendar];
  }

  else
  {
    realCalendar = selfCopy->_effectiveCalendar;
  }

  v5 = realCalendar;

  return v5;
}

- (void)setLastSelectedDateComponents:(id)components
{
  componentsCopy = components;
  v5 = componentsCopy;
  if (componentsCopy)
  {
    calendar = [(NSCalendar *)componentsCopy calendar];

    if (calendar)
    {
      componentsCopy = 0;
    }

    else
    {
      componentsCopy = [(_UIDatePickerDataModel *)self effectiveCalendar];
    }
  }

  lastSelectedDateComponentsCalendar = self->_lastSelectedDateComponentsCalendar;
  self->_lastSelectedDateComponentsCalendar = componentsCopy;

  lastSelectedDateComponents = self->_lastSelectedDateComponents;
  self->_lastSelectedDateComponents = v5;
}

- (void)resetForCurrentLocaleOrCalendarChange
{
  if (!self->_locale || !self->_calendar)
  {
    effectiveLocale = self->_effectiveLocale;
    self->_effectiveLocale = 0;

    effectiveCalendar = self->_effectiveCalendar;
    self->_effectiveCalendar = 0;
  }
}

- (void)setDate:(id)date
{
  dateCopy = date;
  if ([(_UIDatePickerDataModel *)self roundsToMinuteInterval])
  {
    v5 = [(_UIDatePickerDataModel *)self _dateForRoundingDateToMinuteInterval:dateCopy];

    dateCopy = v5;
  }

  date = self->_date;
  self->_date = dateCopy;
}

- (NSDate)effectiveDate
{
  date = self->_date;
  if (date)
  {
    date = date;
LABEL_3:
    v5 = date;
    goto LABEL_4;
  }

  lastSelectedDateComponents = self->_lastSelectedDateComponents;
  if (!lastSelectedDateComponents)
  {
    date = objc_opt_new();
    goto LABEL_3;
  }

  calendar = [(NSDateComponents *)lastSelectedDateComponents calendar];

  if (calendar)
  {
    date = [(NSDateComponents *)self->_lastSelectedDateComponents date];
    goto LABEL_3;
  }

  lastSelectedDateComponentsCalendar = self->_lastSelectedDateComponentsCalendar;
  if (lastSelectedDateComponentsCalendar)
  {
    effectiveCalendar = lastSelectedDateComponentsCalendar;
  }

  else
  {
    effectiveCalendar = [(_UIDatePickerDataModel *)self effectiveCalendar];
  }

  v14 = effectiveCalendar;
  v5 = [(NSCalendar *)effectiveCalendar dateFromComponents:self->_lastSelectedDateComponents];

LABEL_4:
  if ([(_UIDatePickerDataModel *)self roundsToMinuteInterval])
  {
    v6 = [(_UIDatePickerDataModel *)self _dateForRoundingDateToMinuteInterval:v5];

    v5 = v6;
  }

  if (dyld_program_sdk_at_least())
  {
    dateRange = self->_dateRange;
    if (dateRange)
    {
      v8 = [(_UIDatePickerDateRange *)dateRange dateInRangeForDate:v5];

      v5 = v8;
    }
  }

  return v5;
}

- (id)_dateForRoundingDateToMinuteInterval:(id)interval
{
  intervalCopy = interval;
  if (intervalCopy && [(_UIDatePickerDataModel *)self minuteInterval]>= 2)
  {
    if (!self->_effectiveLocale || !self->_effectiveCalendar)
    {
      [(_UIDatePickerDataModel *)self _setupDerivedLocaleAndCalendars];
    }

    selfCopy = self;
    if ([(_UIDatePickerDataModel *)selfCopy datePickerStyle]!= 1 || (effectiveCalendar = selfCopy->_chineseWrapperCalendar) == 0)
    {
      effectiveCalendar = selfCopy->_effectiveCalendar;
    }

    v7 = effectiveCalendar;

    v8 = [(_UIDatePickerChineseCalendar *)v7 components:766 fromDate:intervalCopy];
    minute = [v8 minute];
    if (minute % [(_UIDatePickerDataModel *)selfCopy minuteInterval])
    {
      minute2 = [v8 minute];
      minuteInterval = [(_UIDatePickerDataModel *)selfCopy minuteInterval];
      [v8 setMinute:(floor(minute2 / minuteInterval) * minuteInterval)];
      v12 = [(_UIDatePickerChineseCalendar *)v7 dateFromComponents:v8];

      intervalCopy = v12;
    }
  }

  return intervalCopy;
}

- (NSDateComponents)effectiveDateComponents
{
  if (!self->_effectiveLocale || !self->_effectiveCalendar)
  {
    [(_UIDatePickerDataModel *)self _setupDerivedLocaleAndCalendars];
  }

  if (!self->_date)
  {
    goto LABEL_9;
  }

  selfCopy = self;
  if ([(_UIDatePickerDataModel *)selfCopy datePickerStyle]!= 1 || (effectiveCalendar = selfCopy->_chineseWrapperCalendar) == 0)
  {
    effectiveCalendar = selfCopy->_effectiveCalendar;
  }

  v5 = effectiveCalendar;

  v6 = [(_UIDatePickerChineseCalendar *)v5 components:766 fromDate:self->_date];

  if (!v6)
  {
LABEL_9:
    lastSelectedDateComponents = self->_lastSelectedDateComponents;
    if (lastSelectedDateComponents && (v8 = [(NSDateComponents *)lastSelectedDateComponents copy]) != 0)
    {
      v6 = v8;
    }

    else
    {
      selfCopy2 = self;
      if ([(_UIDatePickerDataModel *)selfCopy2 datePickerStyle]!= 1 || (chineseWrapperCalendar = selfCopy2->_chineseWrapperCalendar) == 0)
      {
        chineseWrapperCalendar = selfCopy2->_effectiveCalendar;
      }

      v11 = chineseWrapperCalendar;

      date = [MEMORY[0x1E695DF00] date];
      v6 = [(_UIDatePickerChineseCalendar *)v11 components:766 fromDate:date];
    }
  }

  calendar = [v6 calendar];

  if (!calendar)
  {
    selfCopy3 = self;
    if ([(_UIDatePickerDataModel *)selfCopy3 datePickerStyle]!= 1 || (v15 = selfCopy3->_chineseWrapperCalendar) == 0)
    {
      v15 = selfCopy3->_effectiveCalendar;
    }

    v16 = v15;

    [v6 setCalendar:v16];
  }

  return v6;
}

- (void)setMinuteInterval:(int64_t)interval
{
  if (interval <= 0x1E && ((1 << interval) & 0x4010947E) != 0)
  {
    self->_minuteInterval = interval;
  }
}

- (void)setMinimumDate:(id)date
{
  dateRange = self->_dateRange;
  if (date | dateRange)
  {
    v5 = [(_UIDatePickerDateRange *)dateRange copyWithStartDate:?];
    v6 = self->_dateRange;
    self->_dateRange = v5;
  }
}

- (void)setMaximumDate:(id)date
{
  dateRange = self->_dateRange;
  if (date | dateRange)
  {
    v5 = [(_UIDatePickerDateRange *)dateRange copyWithEndDate:?];
    v6 = self->_dateRange;
    self->_dateRange = v5;
  }
}

- (void)setDatePickerStyle:(int64_t)style
{
  if (!style)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDatePickerDataModel.m" lineNumber:283 description:@"date picker style can not be .automatic after being resolved."];
  }

  self->_datePickerStyle = style;
}

- (int64_t)datePickerMode
{
  if (self->_datePickerMode != 4272 || self->_datePickerStyle == 3)
  {
    return self->_datePickerMode;
  }

  else
  {
    return 2;
  }
}

- (id)createDatePickerRepresentingDataModel
{
  datePickerMode = [(_UIDatePickerDataModel *)self datePickerMode];
  datePickerStyle = [(_UIDatePickerDataModel *)self datePickerStyle];

  return [(_UIDatePickerDataModel *)self createDatePickerRepresentingDataModelForMode:datePickerMode style:datePickerStyle];
}

- (id)createDatePickerRepresentingDataModelForMode:(int64_t)mode style:(int64_t)style
{
  v7 = objc_opt_new();
  [v7 setDatePickerMode:mode];
  [v7 setPreferredDatePickerStyle:style];
  calendar = [(_UIDatePickerDataModel *)self calendar];
  [v7 setCalendar:calendar];

  locale = [(_UIDatePickerDataModel *)self locale];
  [v7 setLocale:locale];

  timeZone = [(_UIDatePickerDataModel *)self timeZone];
  [v7 setTimeZone:timeZone];

  minimumDate = [(_UIDatePickerDataModel *)self minimumDate];
  [v7 setMinimumDate:minimumDate];

  maximumDate = [(_UIDatePickerDataModel *)self maximumDate];
  [v7 setMaximumDate:maximumDate];

  effectiveDate = [(_UIDatePickerDataModel *)self effectiveDate];
  [v7 setDate:effectiveDate];

  [v7 setMinuteInterval:{-[_UIDatePickerDataModel minuteInterval](self, "minuteInterval")}];
  customFontDesign = [(_UIDatePickerDataModel *)self customFontDesign];
  [v7 _setCustomFontDesign:customFontDesign];

  [v7 setRoundsToMinuteInterval:{-[_UIDatePickerDataModel roundsToMinuteInterval](self, "roundsToMinuteInterval")}];

  return v7;
}

@end