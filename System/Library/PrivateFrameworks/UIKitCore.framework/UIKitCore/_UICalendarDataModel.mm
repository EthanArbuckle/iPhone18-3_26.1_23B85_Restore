@interface _UICalendarDataModel
- (NSCalendar)effectiveCalendar;
- (NSLocale)effectiveLocale;
- (NSTimeZone)effectiveTimeZone;
- (_UICalendarDataModel)init;
- (_UIDatePickerCalendarMonth)visibleMonth;
- (void)_deriveEffectiveLocaleAndCalendarIfNeeded;
- (void)setCalendar:(id)a3;
- (void)setLocale:(id)a3;
- (void)setTimeZone:(id)a3;
@end

@implementation _UICalendarDataModel

- (_UICalendarDataModel)init
{
  v13.receiver = self;
  v13.super_class = _UICalendarDataModel;
  v2 = [(_UICalendarDataModel *)&v13 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF58] currentLocale];
    locale = v2->_locale;
    v2->_locale = v3;

    v5 = [MEMORY[0x1E695DEE8] currentCalendar];
    calendar = v2->_calendar;
    v2->_calendar = v5;

    objc_storeStrong(&v2->_fontDesign, *off_1E70ECCA8);
    v7 = objc_alloc(MEMORY[0x1E696AB80]);
    v8 = [MEMORY[0x1E695DF00] distantPast];
    v9 = [MEMORY[0x1E695DF00] distantFuture];
    v10 = [v7 initWithStartDate:v8 endDate:v9];
    availableDateRange = v2->_availableDateRange;
    v2->_availableDateRange = v10;
  }

  return v2;
}

- (void)setCalendar:(id)a3
{
  objc_storeStrong(&self->_calendar, a3);
  v7 = a3;
  effectiveCalendar = self->_effectiveCalendar;
  self->_effectiveCalendar = 0;

  effectiveLocale = self->_effectiveLocale;
  self->_effectiveLocale = 0;
}

- (void)setLocale:(id)a3
{
  objc_storeStrong(&self->_locale, a3);
  v6 = a3;
  effectiveLocale = self->_effectiveLocale;
  self->_effectiveLocale = 0;
}

- (void)setTimeZone:(id)a3
{
  objc_storeStrong(&self->_timeZone, a3);
  v6 = a3;
  effectiveCalendar = self->_effectiveCalendar;
  self->_effectiveCalendar = 0;
}

- (NSCalendar)effectiveCalendar
{
  [(_UICalendarDataModel *)self _deriveEffectiveLocaleAndCalendarIfNeeded];
  effectiveCalendar = self->_effectiveCalendar;

  return effectiveCalendar;
}

- (NSLocale)effectiveLocale
{
  [(_UICalendarDataModel *)self _deriveEffectiveLocaleAndCalendarIfNeeded];
  effectiveLocale = self->_effectiveLocale;

  return effectiveLocale;
}

- (NSTimeZone)effectiveTimeZone
{
  v2 = [(_UICalendarDataModel *)self effectiveCalendar];
  v3 = [v2 timeZone];

  return v3;
}

- (_UIDatePickerCalendarMonth)visibleMonth
{
  if (!self->_effectiveCalendar || (v3 = self->_visibleMonth) == 0 || (-[_UIDatePickerCalendarDateComponent calendar](v3, "calendar"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 isEqual:self->_effectiveCalendar], v4, (v5 & 1) == 0))
  {
    visibleMonth = self->_visibleMonth;
    if (visibleMonth)
    {
      v7 = [(_UIDatePickerCalendarDateComponent *)visibleMonth calendar];
      v8 = [v7 timeZone];
      v9 = [(_UICalendarDataModel *)self effectiveTimeZone];
      v10 = v8;
      v11 = v9;
      v12 = v11;
      if (v10 == v11)
      {
      }

      else
      {
        if (v10 && v11)
        {
          v13 = [v10 isEqual:v11];

          if (v13)
          {
            goto LABEL_13;
          }
        }

        else
        {
        }

        v14 = [(_UIDatePickerCalendarDateComponent *)self->_visibleMonth components];
        v15 = [(_UICalendarDataModel *)self effectiveTimeZone];
        [v14 setTimeZone:v15];

        v16 = [v14 date];

        if (v16)
        {
LABEL_17:
          v20 = [_UIDatePickerCalendarMonth alloc];
          v21 = [(_UICalendarDataModel *)self effectiveCalendar];
          v22 = [(_UIDatePickerCalendarDateComponent *)v20 initWithDate:v16 calendar:v21];
          v23 = self->_visibleMonth;
          self->_visibleMonth = v22;

          goto LABEL_18;
        }
      }
    }

LABEL_13:
    v17 = [(_UIDatePickerCalendarDateComponent *)self->_visibleMonth date];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = [MEMORY[0x1E695DF00] now];
    }

    v16 = v19;

    goto LABEL_17;
  }

LABEL_18:
  v24 = self->_visibleMonth;

  return v24;
}

- (void)_deriveEffectiveLocaleAndCalendarIfNeeded
{
  if (!self->_effectiveLocale || !self->_effectiveCalendar)
  {
    v3 = [(_UICalendarDataModel *)self locale];
    v4 = [(_UICalendarDataModel *)self calendar];
    v5 = [v4 copy];

    v6 = [(NSCalendar *)v5 locale];
    v7 = [v6 isEqual:v3];

    if ((v7 & 1) == 0)
    {
      v8 = [(NSCalendar *)v5 firstWeekday];
      [(NSCalendar *)v5 setLocale:v3];
      [(NSCalendar *)v5 setFirstWeekday:v8];
    }

    if (self->_timeZone)
    {
      [(NSCalendar *)v5 setTimeZone:?];
    }

    effectiveCalendar = self->_effectiveCalendar;
    self->_effectiveCalendar = v5;
    v11 = v5;

    effectiveLocale = self->_effectiveLocale;
    self->_effectiveLocale = v3;
  }
}

@end