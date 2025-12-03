@interface _UIDatePickerMode_Time
- (BOOL)_shouldEnableValueForRow:(int64_t)row inComponent:(int64_t)component calendarUnit:(unint64_t)unit;
- (double)widthForCalendarUnit:(unint64_t)unit font:(id)font maxWidth:(double)width;
- (id)dateFormatForCalendarUnit:(unint64_t)unit;
- (id)localizedFormatString;
- (int64_t)displayedCalendarUnits;
- (int64_t)numberOfRowsForCalendarUnit:(unint64_t)unit;
- (unint64_t)nextUnitLargerThanUnit:(unint64_t)unit;
- (unint64_t)nextUnitSmallerThanUnit:(unint64_t)unit;
- (void)_shouldReset:(id)reset;
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

- (void)_shouldReset:(id)reset
{
  v6.receiver = self;
  v6.super_class = _UIDatePickerMode_Time;
  [(_UIDatePickerMode *)&v6 _shouldReset:reset];
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
    locale = [(_UIDatePickerMode *)self locale];
    v5 = _UIDatePickerDateFormatFromTemplate(@"j:m", locale, [(_UIDatePickerMode *)self followsSystemHourCycle]);

    [(_UIDatePickerMode *)self setLocalizedFormatString:v5];
    localizedFormatString = self->super._localizedFormatString;
  }

  return localizedFormatString;
}

- (id)dateFormatForCalendarUnit:(unint64_t)unit
{
  v25 = *MEMORY[0x1E69E9840];
  p_hourFormat = &self->_hourFormat;
  if (!self->_hourFormat)
  {
    localizedFormatString = [(_UIDatePickerMode_Time *)self localizedFormatString];
    locale = [(_UIDatePickerMode *)self locale];
    v8 = [_UIDatePickerComponent componentsFromDateFormatString:localizedFormatString locale:locale followsSystemHourCycle:[(_UIDatePickerMode *)self followsSystemHourCycle]];

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
          formatString = [v14 formatString];
          minuteFormat = *p_hourFormat;
          *p_hourFormat = formatString;
        }

        else
        {
          if ([v14 calendarUnit] != 64)
          {
            continue;
          }

          formatString2 = [v14 formatString];
          minuteFormat = self->_minuteFormat;
          self->_minuteFormat = formatString2;
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

  if (unit == 32)
  {
    goto LABEL_18;
  }

  if (unit == 64)
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

- (int64_t)numberOfRowsForCalendarUnit:(unint64_t)unit
{
  if (unit == 0x10000)
  {
    return 2;
  }

  else
  {
    return 10000;
  }
}

- (double)widthForCalendarUnit:(unint64_t)unit font:(id)font maxWidth:(double)width
{
  v47[1] = *MEMORY[0x1E69E9840];
  fontCopy = font;
  p_timeHourWidth = &self->_timeHourWidth;
  if (self->_timeHourWidth == 0.0)
  {
    amString = [(_UIDatePickerMode *)self amString];
    pmString = [(_UIDatePickerMode *)self pmString];
    amPmFont = [(_UIDatePickerMode *)self amPmFont];
    [(_UIDatePickerMode *)self componentWidthForTwoDigitCalendarUnit:32 font:fontCopy maxWidth:width];
    v14 = ceil(v13);
    _style = [(_UIDatePickerMode *)self _style];
    [_style horizontalTimeColumnPadding];
    *p_timeHourWidth = v14 + v16 + v16;

    [(_UIDatePickerMode *)self componentWidthForTwoDigitCalendarUnit:64 font:fontCopy maxWidth:width];
    v18 = ceil(v17);
    _style2 = [(_UIDatePickerMode *)self _style];
    [_style2 horizontalWeekdayTimePadding];
    self->_timeMinuteWidth = v18 + v20 + v20;

    v43 = amString;
    if (amString)
    {
      v46 = *off_1E70EC918;
      v21 = v46;
      v47[0] = amPmFont;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:&v46 count:{1, amString}];
      [amString sizeWithAttributes:v22];
      v24 = v23;

      v44 = v21;
      v45 = amPmFont;
      v25 = amPmFont;
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
      [pmString sizeWithAttributes:v26];
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
      _style3 = [(_UIDatePickerMode *)self _style];
      [_style3 horizontalTimeColumnPadding];
      self->_timeAMPMWidth = v30 + v32 + v32;
    }

    else
    {
      v25 = amPmFont;
    }

    timeAMPMWidth = self->_timeAMPMWidth;
    v34 = *p_timeHourWidth + self->_timeMinuteWidth + timeAMPMWidth;
    if (v34 > width)
    {
      v35 = v34 - width;
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

  if (unit == 32)
  {
    goto LABEL_21;
  }

  if (unit == 64)
  {
    v41 = &OBJC_IVAR____UIDatePickerMode_Time__timeMinuteWidth;
    goto LABEL_20;
  }

  v40 = 0.0;
  if (unit == 0x10000)
  {
    v41 = &OBJC_IVAR____UIDatePickerMode_Time__timeAMPMWidth;
LABEL_20:
    p_timeHourWidth = (self + *v41);
LABEL_21:
    v40 = *p_timeHourWidth;
  }

  return v40;
}

- (BOOL)_shouldEnableValueForRow:(int64_t)row inComponent:(int64_t)component calendarUnit:(unint64_t)unit
{
  v9 = [(_UIDatePickerMode *)self selectedDateComponents:row];
  displayedCalendarUnits = [(_UIDatePickerMode_Time *)self displayedCalendarUnits];
  if (unit == 0x10000)
  {
    v15 = v9;
    rowCopy = row;
    goto LABEL_8;
  }

  if (unit != 64)
  {
    if (unit != 32)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDatePickerMode.m" lineNumber:1751 description:{@"Unknown calendar unit: %lu", unit}];

      goto LABEL_11;
    }

    [v9 setHour:{-[_UIDatePickerMode hourForRow:](self, "hourForRow:", row)}];
    [v9 setMinute:0];
    v11 = [(_UIDatePickerMode *)self componentForCalendarUnit:0x10000];
    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_9;
    }

    v12 = v11;
    datePickerView = [(_UIDatePickerMode *)self datePickerView];
    v14 = [datePickerView selectedRowInComponent:v12];

    v15 = v9;
    rowCopy = v14;
LABEL_8:
    _UIDateComponentsSetValue(v15, 0x10000, rowCopy);
LABEL_9:
    displayedCalendarUnits &= ~0x40uLL;
    goto LABEL_11;
  }

  [v9 setMinute:{-[_UIDatePickerMode minuteForRow:](self, "minuteForRow:", row)}];
LABEL_11:
  v18 = [(_UIDatePickerMode *)self areValidDateComponents:v9 comparingUnits:displayedCalendarUnits];

  return v18;
}

- (unint64_t)nextUnitLargerThanUnit:(unint64_t)unit
{
  v3 = 16;
  if (unit != 32)
  {
    v3 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (unit == 64)
  {
    return 32;
  }

  else
  {
    return v3;
  }
}

- (unint64_t)nextUnitSmallerThanUnit:(unint64_t)unit
{
  if (unit == 32)
  {
    return 64;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

@end