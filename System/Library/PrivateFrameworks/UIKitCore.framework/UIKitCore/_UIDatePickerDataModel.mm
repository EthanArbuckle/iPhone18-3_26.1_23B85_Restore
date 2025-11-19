@interface _UIDatePickerDataModel
- (NSCalendar)effectiveCalendar;
- (NSCalendar)formattingCalendar;
- (NSDate)effectiveDate;
- (NSDateComponents)effectiveDateComponents;
- (NSLocale)effectiveLocale;
- (_UIDatePickerDataModel)init;
- (id)_dateForRoundingDateToMinuteInterval:(id)a3;
- (id)createDatePickerRepresentingDataModel;
- (id)createDatePickerRepresentingDataModelForMode:(int64_t)a3 style:(int64_t)a4;
- (int64_t)datePickerMode;
- (void)_setupDerivedLocaleAndCalendars;
- (void)resetForCurrentLocaleOrCalendarChange;
- (void)setCalendar:(id)a3;
- (void)setDate:(id)a3;
- (void)setDatePickerStyle:(int64_t)a3;
- (void)setLastSelectedDateComponents:(id)a3;
- (void)setLocale:(id)a3;
- (void)setMaximumDate:(id)a3;
- (void)setMinimumDate:(id)a3;
- (void)setMinuteInterval:(int64_t)a3;
- (void)setTimeZone:(id)a3;
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
  v31 = [MEMORY[0x1E695DEE8] currentCalendar];
  v3 = [(NSCalendar *)self->_calendar copy];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v31;
  }

  v5 = v4;

  locale = self->_locale;
  if (locale)
  {
    v7 = locale;
  }

  else
  {
    v7 = [MEMORY[0x1E695DF58] currentLocale];
  }

  v8 = v7;
  if (self->_calendar)
  {
    v9 = MEMORY[0x1E695DF58];
    v10 = [(NSLocale *)v7 localeIdentifier];
    v11 = [v9 componentsFromLocaleIdentifier:v10];
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
    v16 = v7;
    v12 = self->_effectiveLocale;
    self->_effectiveLocale = v16;
  }

  v17 = [(NSCalendar *)v5 calendarIdentifier];
  if ([v17 isEqualToString:*MEMORY[0x1E695D828]])
  {
    goto LABEL_13;
  }

  v18 = [(NSCalendar *)v5 calendarIdentifier];
  if ([v18 isEqualToString:*MEMORY[0x1E695D838]])
  {

LABEL_13:
    goto LABEL_14;
  }

  v23 = [(NSCalendar *)v5 calendarIdentifier];
  v24 = [v23 isEqualToString:*MEMORY[0x1E695D8E0]];

  if ((v24 & 1) == 0)
  {
    chineseWrapperCalendar = self->_chineseWrapperCalendar;
    self->_chineseWrapperCalendar = 0;
    goto LABEL_19;
  }

LABEL_14:
  v19 = [(NSCalendar *)v5 firstWeekday];
  [(NSCalendar *)v5 setLocale:self->_effectiveLocale];
  [(NSCalendar *)v5 setFirstWeekday:v19];
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
    calendar = v31;
  }

  v26 = calendar;
  v27 = [(_UIDatePickerDataModel *)self timeZone];

  if (v27)
  {
    v28 = [(NSCalendar *)v26 copy];

    v29 = [(_UIDatePickerDataModel *)self timeZone];
    [(NSCalendar *)v28 setTimeZone:v29];

    v26 = v28;
  }

  effectiveCalendar = self->_effectiveCalendar;
  self->_effectiveCalendar = v26;
}

- (void)setLocale:(id)a3
{
  objc_storeStrong(&self->_locale, a3);
  v6 = a3;
  effectiveLocale = self->_effectiveLocale;
  self->_effectiveLocale = 0;
}

- (void)setCalendar:(id)a3
{
  v4 = [a3 copy];
  calendar = self->_calendar;
  self->_calendar = v4;

  effectiveLocale = self->_effectiveLocale;
  self->_effectiveLocale = 0;

  effectiveCalendar = self->_effectiveCalendar;
  self->_effectiveCalendar = 0;
}

- (void)setTimeZone:(id)a3
{
  objc_storeStrong(&self->_timeZone, a3);
  v6 = a3;
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

  v3 = self;
  if ([(_UIDatePickerDataModel *)v3 datePickerStyle]!= 1 || (effectiveCalendar = v3->_chineseWrapperCalendar) == 0)
  {
    effectiveCalendar = v3->_effectiveCalendar;
  }

  v5 = effectiveCalendar;

  return v5;
}

- (NSCalendar)formattingCalendar
{
  v2 = self;
  if ([(_UIDatePickerDataModel *)v2 datePickerStyle]== 1 && (chineseWrapperCalendar = v2->_chineseWrapperCalendar) != 0)
  {
    v4 = [(_UIDatePickerChineseCalendar *)chineseWrapperCalendar realCalendar];
  }

  else
  {
    v4 = v2->_effectiveCalendar;
  }

  v5 = v4;

  return v5;
}

- (void)setLastSelectedDateComponents:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [(NSCalendar *)v4 calendar];

    if (v6)
    {
      v4 = 0;
    }

    else
    {
      v4 = [(_UIDatePickerDataModel *)self effectiveCalendar];
    }
  }

  lastSelectedDateComponentsCalendar = self->_lastSelectedDateComponentsCalendar;
  self->_lastSelectedDateComponentsCalendar = v4;

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

- (void)setDate:(id)a3
{
  v4 = a3;
  if ([(_UIDatePickerDataModel *)self roundsToMinuteInterval])
  {
    v5 = [(_UIDatePickerDataModel *)self _dateForRoundingDateToMinuteInterval:v4];

    v4 = v5;
  }

  date = self->_date;
  self->_date = v4;
}

- (NSDate)effectiveDate
{
  date = self->_date;
  if (date)
  {
    v4 = date;
LABEL_3:
    v5 = v4;
    goto LABEL_4;
  }

  lastSelectedDateComponents = self->_lastSelectedDateComponents;
  if (!lastSelectedDateComponents)
  {
    v4 = objc_opt_new();
    goto LABEL_3;
  }

  v11 = [(NSDateComponents *)lastSelectedDateComponents calendar];

  if (v11)
  {
    v4 = [(NSDateComponents *)self->_lastSelectedDateComponents date];
    goto LABEL_3;
  }

  lastSelectedDateComponentsCalendar = self->_lastSelectedDateComponentsCalendar;
  if (lastSelectedDateComponentsCalendar)
  {
    v13 = lastSelectedDateComponentsCalendar;
  }

  else
  {
    v13 = [(_UIDatePickerDataModel *)self effectiveCalendar];
  }

  v14 = v13;
  v5 = [(NSCalendar *)v13 dateFromComponents:self->_lastSelectedDateComponents];

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

- (id)_dateForRoundingDateToMinuteInterval:(id)a3
{
  v4 = a3;
  if (v4 && [(_UIDatePickerDataModel *)self minuteInterval]>= 2)
  {
    if (!self->_effectiveLocale || !self->_effectiveCalendar)
    {
      [(_UIDatePickerDataModel *)self _setupDerivedLocaleAndCalendars];
    }

    v5 = self;
    if ([(_UIDatePickerDataModel *)v5 datePickerStyle]!= 1 || (effectiveCalendar = v5->_chineseWrapperCalendar) == 0)
    {
      effectiveCalendar = v5->_effectiveCalendar;
    }

    v7 = effectiveCalendar;

    v8 = [(_UIDatePickerChineseCalendar *)v7 components:766 fromDate:v4];
    v9 = [v8 minute];
    if (v9 % [(_UIDatePickerDataModel *)v5 minuteInterval])
    {
      v10 = [v8 minute];
      v11 = [(_UIDatePickerDataModel *)v5 minuteInterval];
      [v8 setMinute:(floor(v10 / v11) * v11)];
      v12 = [(_UIDatePickerChineseCalendar *)v7 dateFromComponents:v8];

      v4 = v12;
    }
  }

  return v4;
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

  v3 = self;
  if ([(_UIDatePickerDataModel *)v3 datePickerStyle]!= 1 || (effectiveCalendar = v3->_chineseWrapperCalendar) == 0)
  {
    effectiveCalendar = v3->_effectiveCalendar;
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
      v9 = self;
      if ([(_UIDatePickerDataModel *)v9 datePickerStyle]!= 1 || (chineseWrapperCalendar = v9->_chineseWrapperCalendar) == 0)
      {
        chineseWrapperCalendar = v9->_effectiveCalendar;
      }

      v11 = chineseWrapperCalendar;

      v12 = [MEMORY[0x1E695DF00] date];
      v6 = [(_UIDatePickerChineseCalendar *)v11 components:766 fromDate:v12];
    }
  }

  v13 = [v6 calendar];

  if (!v13)
  {
    v14 = self;
    if ([(_UIDatePickerDataModel *)v14 datePickerStyle]!= 1 || (v15 = v14->_chineseWrapperCalendar) == 0)
    {
      v15 = v14->_effectiveCalendar;
    }

    v16 = v15;

    [v6 setCalendar:v16];
  }

  return v6;
}

- (void)setMinuteInterval:(int64_t)a3
{
  if (a3 <= 0x1E && ((1 << a3) & 0x4010947E) != 0)
  {
    self->_minuteInterval = a3;
  }
}

- (void)setMinimumDate:(id)a3
{
  dateRange = self->_dateRange;
  if (a3 | dateRange)
  {
    v5 = [(_UIDatePickerDateRange *)dateRange copyWithStartDate:?];
    v6 = self->_dateRange;
    self->_dateRange = v5;
  }
}

- (void)setMaximumDate:(id)a3
{
  dateRange = self->_dateRange;
  if (a3 | dateRange)
  {
    v5 = [(_UIDatePickerDateRange *)dateRange copyWithEndDate:?];
    v6 = self->_dateRange;
    self->_dateRange = v5;
  }
}

- (void)setDatePickerStyle:(int64_t)a3
{
  if (!a3)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"_UIDatePickerDataModel.m" lineNumber:283 description:@"date picker style can not be .automatic after being resolved."];
  }

  self->_datePickerStyle = a3;
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
  v3 = [(_UIDatePickerDataModel *)self datePickerMode];
  v4 = [(_UIDatePickerDataModel *)self datePickerStyle];

  return [(_UIDatePickerDataModel *)self createDatePickerRepresentingDataModelForMode:v3 style:v4];
}

- (id)createDatePickerRepresentingDataModelForMode:(int64_t)a3 style:(int64_t)a4
{
  v7 = objc_opt_new();
  [v7 setDatePickerMode:a3];
  [v7 setPreferredDatePickerStyle:a4];
  v8 = [(_UIDatePickerDataModel *)self calendar];
  [v7 setCalendar:v8];

  v9 = [(_UIDatePickerDataModel *)self locale];
  [v7 setLocale:v9];

  v10 = [(_UIDatePickerDataModel *)self timeZone];
  [v7 setTimeZone:v10];

  v11 = [(_UIDatePickerDataModel *)self minimumDate];
  [v7 setMinimumDate:v11];

  v12 = [(_UIDatePickerDataModel *)self maximumDate];
  [v7 setMaximumDate:v12];

  v13 = [(_UIDatePickerDataModel *)self effectiveDate];
  [v7 setDate:v13];

  [v7 setMinuteInterval:{-[_UIDatePickerDataModel minuteInterval](self, "minuteInterval")}];
  v14 = [(_UIDatePickerDataModel *)self customFontDesign];
  [v7 _setCustomFontDesign:v14];

  [v7 setRoundsToMinuteInterval:{-[_UIDatePickerDataModel roundsToMinuteInterval](self, "roundsToMinuteInterval")}];

  return v7;
}

@end