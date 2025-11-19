@interface _UIDatePickerMode_Time
- (BOOL)_shouldEnableValueForRow:(int64_t)a3 inComponent:(int64_t)a4 calendarUnit:(unint64_t)a5;
- (double)widthForCalendarUnit:(unint64_t)a3 font:(id)a4 maxWidth:(double)a5;
- (id)dateFormatForCalendarUnit:(unint64_t)a3;
- (id)localizedFormatString;
- (int64_t)displayedCalendarUnits;
- (int64_t)numberOfRowsForCalendarUnit:(unint64_t)a3;
- (unint64_t)nextUnitLargerThanUnit:(unint64_t)a3;
- (unint64_t)nextUnitSmallerThanUnit:(unint64_t)a3;
- (void)_shouldReset:(id)a3;
- (void)noteCalendarChanged;
- (void)resetComponentWidths;
@end

@implementation _UIDatePickerMode_Time

- (int64_t)displayedCalendarUnits
{
  v3.receiver = self;
  v3.super_class = _UIDatePickerMode_Time;
  return [(_UIDatePickerMode *)&v3 displayedCalendarUnits]| 0x1E;
}

- (void)_shouldReset:(id)a3
{
  v6.receiver = self;
  v6.super_class = _UIDatePickerMode_Time;
  [(_UIDatePickerMode *)&v6 _shouldReset:a3];
  hourFormat = self->_hourFormat;
  self->_hourFormat = 0;

  minuteFormat = self->_minuteFormat;
  self->_minuteFormat = 0;
}

- (id)localizedFormatString
{
  localizedFormatString = self->super._localizedFormatString;
  if (!localizedFormatString)
  {
    v4 = [(_UIDatePickerMode *)self locale];
    v5 = _UIDatePickerDateFormatFromTemplate(@"j:m", v4, [(_UIDatePickerMode *)self followsSystemHourCycle]);

    [(_UIDatePickerMode *)self setLocalizedFormatString:v5];
    localizedFormatString = self->super._localizedFormatString;
  }

  return localizedFormatString;
}

- (id)dateFormatForCalendarUnit:(unint64_t)a3
{
  v25 = *MEMORY[0x1E69E9840];
  p_hourFormat = &self->_hourFormat;
  if (!self->_hourFormat)
  {
    v6 = [(_UIDatePickerMode_Time *)self localizedFormatString];
    v7 = [(_UIDatePickerMode *)self locale];
    v8 = [_UIDatePickerComponent componentsFromDateFormatString:v6 locale:v7 followsSystemHourCycle:[(_UIDatePickerMode *)self followsSystemHourCycle]];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (!v10)
    {
      goto LABEL_14;
    }

    v11 = v10;
    v12 = *v21;
    while (1)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        if ([v14 calendarUnit] == 32)
        {
          v15 = [v14 formatString];
          minuteFormat = *p_hourFormat;
          *p_hourFormat = v15;
        }

        else
        {
          if ([v14 calendarUnit] != 64)
          {
            continue;
          }

          v17 = [v14 formatString];
          minuteFormat = self->_minuteFormat;
          self->_minuteFormat = v17;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (!v11)
      {
LABEL_14:

        break;
      }
    }
  }

  if (a3 == 32)
  {
    goto LABEL_18;
  }

  if (a3 == 64)
  {
    p_hourFormat = &self->_minuteFormat;
LABEL_18:
    v18 = *p_hourFormat;
    goto LABEL_20;
  }

  v18 = 0;
LABEL_20:

  return v18;
}

- (void)resetComponentWidths
{
  self->_timeHourWidth = 0.0;
  self->_timeMinuteWidth = 0.0;
  self->_timeAMPMWidth = 0.0;
}

- (void)noteCalendarChanged
{
  hourFormat = self->_hourFormat;
  self->_hourFormat = 0;

  minuteFormat = self->_minuteFormat;
  self->_minuteFormat = 0;

  v5.receiver = self;
  v5.super_class = _UIDatePickerMode_Time;
  [(_UIDatePickerMode *)&v5 noteCalendarChanged];
}

- (int64_t)numberOfRowsForCalendarUnit:(unint64_t)a3
{
  if (a3 == 0x10000)
  {
    return 2;
  }

  else
  {
    return 10000;
  }
}

- (double)widthForCalendarUnit:(unint64_t)a3 font:(id)a4 maxWidth:(double)a5
{
  v47[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  p_timeHourWidth = &self->_timeHourWidth;
  if (self->_timeHourWidth == 0.0)
  {
    v10 = [(_UIDatePickerMode *)self amString];
    v11 = [(_UIDatePickerMode *)self pmString];
    v12 = [(_UIDatePickerMode *)self amPmFont];
    [(_UIDatePickerMode *)self componentWidthForTwoDigitCalendarUnit:32 font:v8 maxWidth:a5];
    v14 = ceil(v13);
    v15 = [(_UIDatePickerMode *)self _style];
    [v15 horizontalTimeColumnPadding];
    *p_timeHourWidth = v14 + v16 + v16;

    [(_UIDatePickerMode *)self componentWidthForTwoDigitCalendarUnit:64 font:v8 maxWidth:a5];
    v18 = ceil(v17);
    v19 = [(_UIDatePickerMode *)self _style];
    [v19 horizontalWeekdayTimePadding];
    self->_timeMinuteWidth = v18 + v20 + v20;

    v43 = v10;
    if (v10)
    {
      v46 = *off_1E70EC918;
      v21 = v46;
      v47[0] = v12;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:&v46 count:{1, v10}];
      [v10 sizeWithAttributes:v22];
      v24 = v23;

      v44 = v21;
      v45 = v12;
      v25 = v12;
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
      [v11 sizeWithAttributes:v26];
      v28 = v27;

      if (v24 >= v28)
      {
        v29 = v24;
      }

      else
      {
        v29 = v28;
      }

      v30 = ceil(v29);
      v31 = [(_UIDatePickerMode *)self _style];
      [v31 horizontalTimeColumnPadding];
      self->_timeAMPMWidth = v30 + v32 + v32;
    }

    else
    {
      v25 = v12;
    }

    timeAMPMWidth = self->_timeAMPMWidth;
    v34 = *p_timeHourWidth + self->_timeMinuteWidth + timeAMPMWidth;
    if (v34 > a5)
    {
      v35 = v34 - a5;
      v36 = timeAMPMWidth <= 0.0;
      v37 = 2.0;
      if (!v36)
      {
        v37 = 3.0;
      }

      v38 = round(v35 / v37);
      *p_timeHourWidth = *p_timeHourWidth - v38;
      self->_timeMinuteWidth = self->_timeMinuteWidth - v38;
      v39 = self->_timeAMPMWidth;
      if (v39 <= 0.0)
      {
        v38 = 0.0;
      }

      self->_timeAMPMWidth = v39 - v38;
    }
  }

  if (a3 == 32)
  {
    goto LABEL_21;
  }

  if (a3 == 64)
  {
    v41 = &OBJC_IVAR____UIDatePickerMode_Time__timeMinuteWidth;
    goto LABEL_20;
  }

  v40 = 0.0;
  if (a3 == 0x10000)
  {
    v41 = &OBJC_IVAR____UIDatePickerMode_Time__timeAMPMWidth;
LABEL_20:
    p_timeHourWidth = (self + *v41);
LABEL_21:
    v40 = *p_timeHourWidth;
  }

  return v40;
}

- (BOOL)_shouldEnableValueForRow:(int64_t)a3 inComponent:(int64_t)a4 calendarUnit:(unint64_t)a5
{
  v9 = [(_UIDatePickerMode *)self selectedDateComponents:a3];
  v10 = [(_UIDatePickerMode_Time *)self displayedCalendarUnits];
  if (a5 == 0x10000)
  {
    v15 = v9;
    v16 = a3;
    goto LABEL_8;
  }

  if (a5 != 64)
  {
    if (a5 != 32)
    {
      v17 = [MEMORY[0x1E696AAA8] currentHandler];
      [v17 handleFailureInMethod:a2 object:self file:@"_UIDatePickerMode.m" lineNumber:1751 description:{@"Unknown calendar unit: %lu", a5}];

      goto LABEL_11;
    }

    [v9 setHour:{-[_UIDatePickerMode hourForRow:](self, "hourForRow:", a3)}];
    [v9 setMinute:0];
    v11 = [(_UIDatePickerMode *)self componentForCalendarUnit:0x10000];
    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_9;
    }

    v12 = v11;
    v13 = [(_UIDatePickerMode *)self datePickerView];
    v14 = [v13 selectedRowInComponent:v12];

    v15 = v9;
    v16 = v14;
LABEL_8:
    _UIDateComponentsSetValue(v15, 0x10000, v16);
LABEL_9:
    v10 &= ~0x40uLL;
    goto LABEL_11;
  }

  [v9 setMinute:{-[_UIDatePickerMode minuteForRow:](self, "minuteForRow:", a3)}];
LABEL_11:
  v18 = [(_UIDatePickerMode *)self areValidDateComponents:v9 comparingUnits:v10];

  return v18;
}

- (unint64_t)nextUnitLargerThanUnit:(unint64_t)a3
{
  v3 = 16;
  if (a3 != 32)
  {
    v3 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (a3 == 64)
  {
    return 32;
  }

  else
  {
    return v3;
  }
}

- (unint64_t)nextUnitSmallerThanUnit:(unint64_t)a3
{
  if (a3 == 32)
  {
    return 64;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

@end