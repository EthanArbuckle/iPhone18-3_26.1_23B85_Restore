@interface _UIDatePickerMode_TimeInterval
- (BOOL)_shouldEnableValueForRow:(int64_t)row inComponent:(int64_t)component calendarUnit:(unint64_t)unit;
- (BOOL)areValidDateComponents:(id)components comparingUnits:(int64_t)units;
- (_NSRange)rangeForCalendarUnit:(unint64_t)unit;
- (double)widthForCalendarUnit:(unint64_t)unit font:(id)font maxWidth:(double)width;
- (id)dateComponentsByRestrictingSelectedComponents:(id)components withLastManipulatedColumn:(int64_t)column;
- (id)localizedFormatString;
- (id)titleForRow:(int64_t)row inComponent:(int64_t)component;
- (int64_t)numberOfRowsForCalendarUnit:(unint64_t)unit;
- (int64_t)valueForDate:(id)date dateComponents:(id)components calendarUnit:(unint64_t)unit;
- (unint64_t)nextUnitLargerThanUnit:(unint64_t)unit;
- (unint64_t)nextUnitSmallerThanUnit:(unint64_t)unit;
@end

@implementation _UIDatePickerMode_TimeInterval

- (id)localizedFormatString
{
  localizedFormatString = self->super._localizedFormatString;
  if (!localizedFormatString)
  {
    [(_UIDatePickerMode *)self setLocalizedFormatString:@"HH:mm"];
    localizedFormatString = self->super._localizedFormatString;
  }

  return localizedFormatString;
}

- (int64_t)numberOfRowsForCalendarUnit:(unint64_t)unit
{
  if (unit == 32)
  {
    return 24;
  }

  else
  {
    return 10000;
  }
}

- (id)titleForRow:(int64_t)row inComponent:(int64_t)component
{
  v7 = [(_UIDatePickerMode *)self calendarUnitForComponent:component];
  v8 = v7;
  if (v7 == 64 || v7 == 32)
  {
    formatter = self->super._formatter;
    if (!formatter)
    {
      v10 = objc_alloc_init(MEMORY[0x1E696ADA0]);
      v11 = self->super._formatter;
      self->super._formatter = v10;

      [(NSNumberFormatter *)self->super._formatter setFormatterBehavior:1040];
      [(NSNumberFormatter *)self->super._formatter setNumberStyle:0];
      formatter = self->super._formatter;
    }

    locale = [(_UIDatePickerMode *)self locale];
    [(NSNumberFormatter *)formatter setLocale:locale];

    v13 = [(_UIDatePickerMode *)self valueForRow:row inCalendarUnit:v8];
    v14 = [MEMORY[0x1E696AD98] numberWithInteger:v13];
    v15 = [(NSNumberFormatter *)self->super._formatter stringFromNumber:v14];
  }

  else
  {
    v17.receiver = self;
    v17.super_class = _UIDatePickerMode_TimeInterval;
    v15 = [(_UIDatePickerMode *)&v17 titleForRow:row inComponent:component];
  }

  return v15;
}

- (_NSRange)rangeForCalendarUnit:(unint64_t)unit
{
  v3 = 0x7FFFFFFFFFFFFFFFLL;
  if (unit == 64)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (unit == 64)
  {
    v3 = 60;
  }

  if (unit == 32)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  if (unit == 32)
  {
    v6 = 24;
  }

  else
  {
    v6 = v3;
  }

  result.length = v6;
  result.location = v5;
  return result;
}

- (double)widthForCalendarUnit:(unint64_t)unit font:(id)font maxWidth:(double)width
{
  v48[1] = *MEMORY[0x1E69E9840];
  result = self->_componentWidth;
  if (result == 0.0)
  {
    v8 = *off_1E70EC918;
    v47 = *off_1E70EC918;
    font = [(_UIDatePickerMode *)self fontForCalendarUnit:32, font];
    v48[0] = font;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:&v47 count:1];
    [@"00" sizeWithAttributes:v10];
    v12 = v11;

    datePickerView = [(_UIDatePickerMode *)self datePickerView];
    v38 = [datePickerView _minutesStringForHour:1 minutes:0];
    v46[0] = v38;
    datePickerView2 = [(_UIDatePickerMode *)self datePickerView];
    v15 = [datePickerView2 _minutesStringForHour:0 minutes:1];
    v46[1] = v15;
    datePickerView3 = [(_UIDatePickerMode *)self datePickerView];
    v17 = [datePickerView3 _hoursStringForHour:0];
    v46[2] = v17;
    datePickerView4 = [(_UIDatePickerMode *)self datePickerView];
    v19 = [datePickerView4 _hoursStringForHour:1];
    v46[3] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:4];

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v21 = v20;
    v22 = [v21 countByEnumeratingWithState:&v39 objects:v45 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v40;
      v25 = 0.0;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v40 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v27 = *(*(&v39 + 1) + 8 * i);
          v43 = v8;
          datePickerView5 = [(_UIDatePickerMode *)self datePickerView];
          _hrMinFont = [datePickerView5 _hrMinFont];
          v44 = _hrMinFont;
          v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
          [v27 sizeWithAttributes:v30];
          v32 = v31;

          if (v25 < v32)
          {
            v25 = v32;
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v39 objects:v45 count:16];
      }

      while (v23);
    }

    else
    {
      v25 = 0.0;
    }

    datePickerView6 = [(_UIDatePickerMode *)self datePickerView];
    traitCollection = [datePickerView6 traitCollection];
    v35 = +[UIDatePicker _styleForIdiom:](UIDatePicker, "_styleForIdiom:", [traitCollection userInterfaceIdiom]);

    [v35 pickerHorizontalEdgeInset];
    v37 = v12 + 6.0 + v25 + v36 + v36;
    self->_componentWidth = v37;
    if (v37 * [(_UIDatePickerMode *)self numberOfComponents]> width)
    {
      self->_componentWidth = floor(width / [(_UIDatePickerMode *)self numberOfComponents]);
    }

    return self->_componentWidth;
  }

  return result;
}

- (BOOL)areValidDateComponents:(id)components comparingUnits:(int64_t)units
{
  unitsCopy = units;
  componentsCopy = components;
  hour = [componentsCopy hour];
  minute = [componentsCopy minute];

  v10 = (unitsCopy & 0x20) == 0 || hour < 0x18;
  if ((unitsCopy & 0x40) != 0)
  {
    if (minute >= 0x3C)
    {
      LOBYTE(v10) = 0;
    }

    if (!v10)
    {
      return 0;
    }
  }

  else if (!v10)
  {
    return 0;
  }

  datePickerView = [(_UIDatePickerMode *)self datePickerView];
  _allowsZeroTimeInterval = [datePickerView _allowsZeroTimeInterval];

  result = 1;
  if ((~unitsCopy & 0x60) == 0)
  {
    return (_allowsZeroTimeInterval & 1) != 0 || (hour | minute) != 0;
  }

  return result;
}

- (id)dateComponentsByRestrictingSelectedComponents:(id)components withLastManipulatedColumn:(int64_t)column
{
  componentsCopy = components;
  datePickerView = [(_UIDatePickerMode *)self datePickerView];
  if (([datePickerView _allowsZeroTimeInterval] & 1) != 0 || objc_msgSend(componentsCopy, "hour"))
  {
  }

  else
  {
    minute = [componentsCopy minute];

    if (!minute)
    {
      v9 = [componentsCopy copy];

      [v9 setMinute:{-[_UIDatePickerMode _incrementForStaggeredTimeIntervals](self, "_incrementForStaggeredTimeIntervals")}];
      componentsCopy = v9;
    }
  }

  return componentsCopy;
}

- (int64_t)valueForDate:(id)date dateComponents:(id)components calendarUnit:(unint64_t)unit
{
  componentsCopy = components;
  v14.receiver = self;
  v14.super_class = _UIDatePickerMode_TimeInterval;
  _incrementForStaggeredTimeIntervals2 = [(_UIDatePickerMode *)&v14 valueForDate:date dateComponents:componentsCopy calendarUnit:unit];
  datePickerMode = [objc_opt_class() datePickerMode];
  if (unit == 64 && datePickerMode == 3)
  {
    datePickerView = [(_UIDatePickerMode *)self datePickerView];
    if (([datePickerView _allowsZeroTimeInterval] & 1) != 0 || objc_msgSend(componentsCopy, "hour"))
    {
    }

    else
    {
      _incrementForStaggeredTimeIntervals = [(_UIDatePickerMode *)self _incrementForStaggeredTimeIntervals];

      if (_incrementForStaggeredTimeIntervals2 < _incrementForStaggeredTimeIntervals)
      {
        _incrementForStaggeredTimeIntervals2 = [(_UIDatePickerMode *)self _incrementForStaggeredTimeIntervals];
      }
    }
  }

  return _incrementForStaggeredTimeIntervals2;
}

- (BOOL)_shouldEnableValueForRow:(int64_t)row inComponent:(int64_t)component calendarUnit:(unint64_t)unit
{
  if (unit == 32)
  {
    LOBYTE(v12) = 1;
  }

  else if (unit == 64)
  {
    v7 = [(_UIDatePickerMode *)self datePickerView:row];
    _allowsZeroTimeInterval = [v7 _allowsZeroTimeInterval];

    if ((_allowsZeroTimeInterval & 1) != 0 || -[_UIDatePickerMode minuteForRow:](self, "minuteForRow:", row) || (v9 = -[_UIDatePickerMode componentForCalendarUnit:](self, "componentForCalendarUnit:", 32), -[_UIDatePickerMode datePickerView](self, "datePickerView"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 selectedRowInComponent:v9], v10, (v12 = -[_UIDatePickerMode_TimeInterval hourForRow:](self, "hourForRow:", v11)) != 0))
    {
      LOBYTE(v12) = 1;
    }
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12;
}

- (unint64_t)nextUnitLargerThanUnit:(unint64_t)unit
{
  if (unit == 64)
  {
    return 32;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
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