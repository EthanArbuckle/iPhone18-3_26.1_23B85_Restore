@interface _UIDatePickerMode_Date
- (BOOL)_shouldEnableValueForRow:(int64_t)row inComponent:(int64_t)component calendarUnit:(unint64_t)unit;
- (double)widthForCalendarUnit:(unint64_t)unit font:(id)font maxWidth:(double)width;
- (id)_dateForYearRow:(int64_t)row;
- (id)dateFormatForCalendarUnit:(unint64_t)unit;
- (id)localizedFormatString;
- (int64_t)rowForDate:(id)date dateComponents:(id)components component:(int64_t)component currentRow:(int64_t)row;
- (unint64_t)nextUnitLargerThanUnit:(unint64_t)unit;
- (unint64_t)nextUnitSmallerThanUnit:(unint64_t)unit;
- (void)_shouldReset:(id)reset;
- (void)noteCalendarChanged;
- (void)resetComponentWidths;
@end

@implementation _UIDatePickerMode_Date

- (void)_shouldReset:(id)reset
{
  v7.receiver = self;
  v7.super_class = _UIDatePickerMode_Date;
  [(_UIDatePickerMode *)&v7 _shouldReset:reset];
  yearFormat = self->_yearFormat;
  self->_yearFormat = 0;

  monthFormat = self->_monthFormat;
  self->_monthFormat = 0;

  dayFormat = self->_dayFormat;
  self->_dayFormat = 0;
}

- (id)localizedFormatString
{
  localizedFormatString = self->super._localizedFormatString;
  if (!localizedFormatString)
  {
    locale = [(_UIDatePickerMode *)self locale];
    v5 = _UIDatePickerDateFormatFromTemplate(@"dMMMMy", locale, [(_UIDatePickerMode *)self followsSystemHourCycle]);

    [(_UIDatePickerMode *)self setLocalizedFormatString:v5];
    localizedFormatString = self->super._localizedFormatString;
  }

  return localizedFormatString;
}

- (id)dateFormatForCalendarUnit:(unint64_t)unit
{
  v31 = *MEMORY[0x1E69E9840];
  p_yearFormat = &self->_yearFormat;
  if (!self->_yearFormat)
  {
    v24 = &self->_yearFormat;
    unitCopy = unit;
    localizedFormatString = [(_UIDatePickerMode_Date *)self localizedFormatString];
    locale = [(_UIDatePickerMode *)self locale];
    v7 = [_UIDatePickerComponent componentsFromDateFormatString:localizedFormatString locale:locale followsSystemHourCycle:[(_UIDatePickerMode *)self followsSystemHourCycle]];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (!v9)
    {
      v11 = 0;
      goto LABEL_22;
    }

    v10 = v9;
    v11 = 0;
    v12 = *v27;
    while (1)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        if ([v14 calendarUnit] == 4 || objc_msgSend(v14, "calendarUnit") == 2)
        {
          formatString = [v14 formatString];
          v16 = formatString;
          if (!v11)
          {
            v11 = formatString;
            continue;
          }

          v17 = [v11 stringByAppendingFormat:@" %@", formatString];

          v11 = v17;
        }

        else
        {
          if ([v14 calendarUnit] == 8)
          {
            formatString2 = [v14 formatString];
            v19 = 272;
          }

          else
          {
            if ([v14 calendarUnit] != 16)
            {
              continue;
            }

            formatString2 = [v14 formatString];
            v19 = 280;
          }

          v16 = *(&self->super.super.isa + v19);
          *(&self->super.super.isa + v19) = formatString2;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (!v10)
      {
LABEL_22:

        p_yearFormat = v24;
        v20 = *v24;
        *v24 = v11;

        unit = unitCopy;
        break;
      }
    }
  }

  switch(unit)
  {
    case 4uLL:
      goto LABEL_29;
    case 8uLL:
      v21 = &OBJC_IVAR____UIDatePickerMode_Date__monthFormat;
      goto LABEL_28;
    case 0x10uLL:
      v21 = &OBJC_IVAR____UIDatePickerMode_Date__dayFormat;
LABEL_28:
      p_yearFormat = (self + *v21);
LABEL_29:
      v22 = *p_yearFormat;
      goto LABEL_31;
  }

  v22 = 0;
LABEL_31:

  return v22;
}

- (void)resetComponentWidths
{
  self->_dateYearWidth = 0.0;
  self->_dateMonthWidth = 0.0;
  self->_dateDayWidth = 0.0;
}

- (void)noteCalendarChanged
{
  yearFormat = self->_yearFormat;
  self->_yearFormat = 0;

  monthFormat = self->_monthFormat;
  self->_monthFormat = 0;

  dayFormat = self->_dayFormat;
  self->_dayFormat = 0;

  v6.receiver = self;
  v6.super_class = _UIDatePickerMode_Date;
  [(_UIDatePickerMode *)&v6 noteCalendarChanged];
}

- (double)widthForCalendarUnit:(unint64_t)unit font:(id)font maxWidth:(double)width
{
  v61[1] = *MEMORY[0x1E69E9840];
  fontCopy = font;
  p_dateYearWidth = &self->_dateYearWidth;
  if (self->_dateYearWidth <= 0.0)
  {
    unitCopy = unit;
    v10 = [(_UIDatePickerMode *)self dateFormatterForCalendarUnit:4];
    v11 = [objc_opt_class() newDateFromGregorianYear:2007 month:1 day:28 timeZone:0];
    v12 = [v10 stringFromDate:v11];

    v13 = *off_1E70EC918;
    v60 = *off_1E70EC918;
    v61[0] = fontCopy;
    v14 = 0x1E695D000uLL;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:&v60 count:1];
    v53 = v12;
    [v12 sizeWithAttributes:v15];
    v17 = ceil(v16);
    _style = [(_UIDatePickerMode *)self _style];
    [_style horizontalDatePadding];
    v54 = &self->_dateYearWidth;
    *p_dateYearWidth = v17 + v19 + v19;

    v20 = [(_UIDatePickerMode *)self dateFormatterForCalendarUnit:16];

    calendar = [(_UIDatePickerMode *)self calendar];
    v22 = [calendar maximumRangeOfUnit:16];
    v24 = v23;

    if (v22 < v22 + v24)
    {
      do
      {
        v25 = [(_UIDatePickerMode *)self _dateByEnsuringValue:v22 forCalendarUnit:16];
        v26 = [v20 stringFromDate:v25];
        v58 = v13;
        v59 = fontCopy;
        v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
        [v26 sizeWithAttributes:v27];
        v29 = v28;
        _style2 = [(_UIDatePickerMode *)self _style];
        [_style2 horizontalDatePadding];
        v32 = ceil(v29 + v31 + v31);

        v14 = 0x1E695D000uLL;
        dateDayWidth = self->_dateDayWidth;
        if (dateDayWidth < v32)
        {
          dateDayWidth = v32;
        }

        self->_dateDayWidth = dateDayWidth;

        ++v22;
        --v24;
      }

      while (v24);
    }

    v34 = [(_UIDatePickerMode *)self dateFormatterForCalendarUnit:8];

    calendar2 = [(_UIDatePickerMode *)self calendar];
    v36 = [calendar2 maximumRangeOfUnit:8];
    v38 = v37;

    if (v36 < v36 + v38)
    {
      do
      {
        v39 = [(_UIDatePickerMode *)self _dateByEnsuringValue:v36 forCalendarUnit:8];
        v40 = [v34 stringFromDate:v39];
        v56 = v13;
        v57 = fontCopy;
        v41 = [*(v14 + 3872) dictionaryWithObjects:&v57 forKeys:&v56 count:1];
        [v40 sizeWithAttributes:v41];
        v43 = v42;
        _style3 = [(_UIDatePickerMode *)self _style];
        [_style3 horizontalDatePadding];
        v46 = ceil(v43 + v45 + v45);

        v14 = 0x1E695D000;
        dateMonthWidth = self->_dateMonthWidth;
        if (dateMonthWidth < v46)
        {
          dateMonthWidth = v46;
        }

        self->_dateMonthWidth = dateMonthWidth;

        ++v36;
        --v38;
      }

      while (v38);
    }

    p_dateYearWidth = &self->_dateYearWidth;
    unit = unitCopy;
    v48 = *v54 + self->_dateMonthWidth + self->_dateDayWidth;
    if (v48 > width)
    {
      v49 = round((v48 - width) * 0.5);
      *v54 = *v54 - v49;
      self->_dateMonthWidth = self->_dateMonthWidth - v49;
    }
  }

  if (unit == 4)
  {
    goto LABEL_19;
  }

  if (unit == 8)
  {
    v51 = &OBJC_IVAR____UIDatePickerMode_Date__dateMonthWidth;
    goto LABEL_18;
  }

  v50 = 0.0;
  if (unit == 16)
  {
    v51 = &OBJC_IVAR____UIDatePickerMode_Date__dateDayWidth;
LABEL_18:
    p_dateYearWidth = (self + *v51);
LABEL_19:
    v50 = *p_dateYearWidth;
  }

  return v50;
}

- (int64_t)rowForDate:(id)date dateComponents:(id)components component:(int64_t)component currentRow:(int64_t)row
{
  dateCopy = date;
  componentsCopy = components;
  if ([(_UIDatePickerMode *)self calendarUnitForComponent:component]== 4)
  {
    baseDate = [(_UIDatePickerMode *)self baseDate];
    calendar = [(_UIDatePickerMode *)self calendar];
    v14 = [calendar components:6 fromDate:dateCopy];

    baseDateComponents = [(_UIDatePickerMode *)self baseDateComponents];
    v16 = [baseDateComponents copy];

    [v16 setEra:{objc_msgSend(v14, "era")}];
    [v16 setYear:{objc_msgSend(v14, "year")}];
    calendar2 = [(_UIDatePickerMode *)self calendar];
    v18 = [calendar2 dateFromComponents:v16];

    calendar3 = [(_UIDatePickerMode *)self calendar];
    v20 = [calendar3 components:4 fromDate:baseDate toDate:v18 options:0];

    year = [v20 year];
  }

  else
  {
    v23.receiver = self;
    v23.super_class = _UIDatePickerMode_Date;
    year = [(_UIDatePickerMode *)&v23 rowForDate:dateCopy dateComponents:componentsCopy component:component currentRow:row];
  }

  return year;
}

- (id)_dateForYearRow:(int64_t)row
{
  v18.receiver = self;
  v18.super_class = _UIDatePickerMode_Date;
  v4 = [(_UIDatePickerMode *)&v18 _dateForYearRow:row];
  calendar = [(_UIDatePickerMode *)self calendar];
  v6 = [calendar components:-[_UIDatePickerMode_Date displayedCalendarUnits](self fromDate:{"displayedCalendarUnits"), v4}];

  v7 = [(_UIDatePickerMode *)self componentForCalendarUnit:8];
  datePickerView = [(_UIDatePickerMode *)self datePickerView];
  v9 = [datePickerView selectedRowInComponent:v7];

  [v6 setMonth:{-[_UIDatePickerMode valueForRow:inCalendarUnit:](self, "valueForRow:inCalendarUnit:", v9, 8)}];
  v10 = [(_UIDatePickerMode *)self componentForCalendarUnit:16];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = 1;
  }

  else
  {
    v12 = v10;
    datePickerView2 = [(_UIDatePickerMode *)self datePickerView];
    v14 = [datePickerView2 selectedRowInComponent:v12];

    v11 = [(_UIDatePickerMode *)self valueForRow:v14 inCalendarUnit:16];
  }

  [v6 setDay:v11];
  calendar2 = [(_UIDatePickerMode *)self calendar];
  v16 = [calendar2 dateFromComponents:v6];

  return v16;
}

- (BOOL)_shouldEnableValueForRow:(int64_t)row inComponent:(int64_t)component calendarUnit:(unint64_t)unit
{
  v9 = [(_UIDatePickerMode *)self selectedDateComponents:row];
  switch(unit)
  {
    case 0x10uLL:
      v14 = [(_UIDatePickerMode *)self dayForRow:row];
      v13 = v9;
      goto LABEL_7;
    case 8uLL:
      [v9 setMonth:{-[_UIDatePickerMode monthForRow:](self, "monthForRow:", row)}];
      v13 = v9;
      v14 = 1;
LABEL_7:
      [v13 setDay:v14];
      goto LABEL_8;
    case 4uLL:
      v10 = [(_UIDatePickerMode_Date *)self _dateForYearRow:row];
      calendar = [(_UIDatePickerMode *)self calendar];
      v12 = [calendar components:6 fromDate:v10];

      [v9 setEra:{objc_msgSend(v12, "era")}];
      [v9 setYear:{objc_msgSend(v12, "year")}];

      goto LABEL_8;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDatePickerMode.m" lineNumber:1564 description:{@"Unknown calendar unit: %lu", unit}];

  if (unit != 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_8:
    v15 = 0;
    do
    {
      v15 |= unit;
      unit = [(_UIDatePickerMode_Date *)self nextUnitLargerThanUnit:unit];
    }

    while (unit != 0x7FFFFFFFFFFFFFFFLL);
    goto LABEL_10;
  }

  v15 = 0;
LABEL_10:
  if (self->super._isUsingJapaneseCalendar)
  {
    v16 = v15 | 6;
  }

  else
  {
    v16 = v15;
  }

  v17 = [(_UIDatePickerMode *)self areValidDateComponents:v9 comparingUnits:v16];

  return v17;
}

- (unint64_t)nextUnitLargerThanUnit:(unint64_t)unit
{
  v3 = 4;
  if (unit != 8)
  {
    v3 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (unit == 16)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

- (unint64_t)nextUnitSmallerThanUnit:(unint64_t)unit
{
  v3 = 16;
  if (unit != 8)
  {
    v3 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (unit == 4)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

@end