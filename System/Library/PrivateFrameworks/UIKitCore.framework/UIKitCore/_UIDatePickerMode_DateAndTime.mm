@interface _UIDatePickerMode_DateAndTime
- (BOOL)_shouldEnableValueForRow:(int64_t)row inComponent:(int64_t)component calendarUnit:(unint64_t)unit;
- (BOOL)_shouldEnableWeekMonthDayForRow:(int64_t)row;
- (double)componentWidthForDateTimeCalendarUnit:(unint64_t)unit font:(id)font maxWidth:(double)width;
- (id)_dateForWeekMonthDayRow:(int64_t)row;
- (id)baseDateComponents;
- (id)dateForRow:(int64_t)row inCalendarUnit:(unint64_t)unit;
- (id)dateFormatForCalendarUnit:(unint64_t)unit;
- (id)localizedFormatString;
- (id)relativeFormatter;
- (id)titleForRow:(int64_t)row inComponent:(int64_t)component;
- (id)viewForRow:(int64_t)row inComponent:(int64_t)component reusingView:(id)view;
- (id)weekdayFormatter;
- (int64_t)displayedCalendarUnits;
- (int64_t)numberOfRowsForCalendarUnit:(unint64_t)unit;
- (int64_t)rowForDate:(id)date dateComponents:(id)components component:(int64_t)component currentRow:(int64_t)row;
- (unint64_t)elements;
- (unint64_t)nextUnitLargerThanUnit:(unint64_t)unit;
- (unint64_t)nextUnitSmallerThanUnit:(unint64_t)unit;
- (void)_resetBaseDateComponentsIfNecessaryFromDate:(id)date;
- (void)_shouldReset:(id)reset;
- (void)_takeBaseDateComponentsFromDate:(id)date;
- (void)loadDate:(id)date animated:(BOOL)animated;
- (void)noteCalendarChanged;
- (void)resetComponentWidths;
- (void)updateEnabledStateOfViewForRow:(int64_t)row inComponent:(int64_t)component;
@end

@implementation _UIDatePickerMode_DateAndTime

- (void)_shouldReset:(id)reset
{
  v10.receiver = self;
  v10.super_class = _UIDatePickerMode_DateAndTime;
  [(_UIDatePickerMode *)&v10 _shouldReset:reset];
  relativeFormatter = self->_relativeFormatter;
  self->_relativeFormatter = 0;

  weekdayFormatter = self->_weekdayFormatter;
  self->_weekdayFormatter = 0;

  weekdayFormat = self->_weekdayFormat;
  self->_weekdayFormat = 0;

  monthDayFormat = self->_monthDayFormat;
  self->_monthDayFormat = 0;

  hourFormat = self->_hourFormat;
  self->_hourFormat = 0;

  minuteFormat = self->_minuteFormat;
  self->_minuteFormat = 0;
}

- (void)resetComponentWidths
{
  self->_wmdWeekMonthDayWidth = 0.0;
  self->_wmdHourWidth = 0.0;
  self->_wmdMinuteWidth = 0.0;
  self->_wmdAMPMWidth = 0.0;
}

- (void)noteCalendarChanged
{
  weekdayFormat = self->_weekdayFormat;
  self->_weekdayFormat = 0;

  monthDayFormat = self->_monthDayFormat;
  self->_monthDayFormat = 0;

  hourFormat = self->_hourFormat;
  self->_hourFormat = 0;

  minuteFormat = self->_minuteFormat;
  self->_minuteFormat = 0;

  weekdayFormatter = self->_weekdayFormatter;
  self->_weekdayFormatter = 0;

  relativeFormatter = self->_relativeFormatter;
  self->_relativeFormatter = 0;

  v9.receiver = self;
  v9.super_class = _UIDatePickerMode_DateAndTime;
  [(_UIDatePickerMode *)&v9 noteCalendarChanged];
}

- (id)relativeFormatter
{
  relativeFormatter = self->_relativeFormatter;
  if (!relativeFormatter)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v5 = self->_relativeFormatter;
    self->_relativeFormatter = v4;

    v6 = self->_relativeFormatter;
    calendarForFormatters = [(_UIDatePickerMode *)self calendarForFormatters];
    [(NSDateFormatter *)v6 setCalendar:calendarForFormatters];

    v8 = self->_relativeFormatter;
    locale = [(_UIDatePickerMode *)self locale];
    [(NSDateFormatter *)v8 setLocale:locale];

    v10 = self->_relativeFormatter;
    timeZone = [(_UIDatePickerMode *)self timeZone];
    [(NSDateFormatter *)v10 setTimeZone:timeZone];

    [(NSDateFormatter *)self->_relativeFormatter setFormattingContext:2];
    [(NSDateFormatter *)self->_relativeFormatter setDoesRelativeDateFormatting:1];
    [(NSDateFormatter *)self->_relativeFormatter setTimeStyle:0];
    [(NSDateFormatter *)self->_relativeFormatter setDateStyle:2];
    relativeFormatter = self->_relativeFormatter;
  }

  return relativeFormatter;
}

- (id)weekdayFormatter
{
  weekdayFormatter = self->_weekdayFormatter;
  if (!weekdayFormatter)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v5 = self->_weekdayFormatter;
    self->_weekdayFormatter = v4;

    v6 = self->_weekdayFormatter;
    calendarForFormatters = [(_UIDatePickerMode *)self calendarForFormatters];
    [(NSDateFormatter *)v6 setCalendar:calendarForFormatters];

    v8 = self->_weekdayFormatter;
    locale = [(_UIDatePickerMode *)self locale];
    [(NSDateFormatter *)v8 setLocale:locale];

    v10 = self->_weekdayFormatter;
    timeZone = [(_UIDatePickerMode *)self timeZone];
    [(NSDateFormatter *)v10 setTimeZone:timeZone];

    [(NSDateFormatter *)self->_weekdayFormatter setFormattingContext:2];
    [(NSDateFormatter *)self->_weekdayFormatter setTimeStyle:0];
    [(NSDateFormatter *)self->_weekdayFormatter setDateStyle:0];
    v12 = self->_weekdayFormatter;
    v13 = [(_UIDatePickerMode_DateAndTime *)self dateFormatForCalendarUnit:512];
    [(NSDateFormatter *)v12 setDateFormat:v13];

    weekdayFormatter = self->_weekdayFormatter;
  }

  return weekdayFormatter;
}

- (id)localizedFormatString
{
  localizedFormatString = self->super._localizedFormatString;
  if (!localizedFormatString)
  {
    locale = [(_UIDatePickerMode *)self locale];
    v5 = _UIDatePickerDateFormatFromTemplate(@"EEE, d MMM y j:m", locale, [(_UIDatePickerMode *)self followsSystemHourCycle]);

    [(_UIDatePickerMode *)self setLocalizedFormatString:v5];
    localizedFormatString = self->super._localizedFormatString;
  }

  return localizedFormatString;
}

- (id)dateFormatForCalendarUnit:(unint64_t)unit
{
  v46 = *MEMORY[0x1E69E9840];
  p_weekdayFormat = &self->_weekdayFormat;
  if (!self->_weekdayFormat)
  {
    unitCopy = unit;
    localizedFormatString = [(_UIDatePickerMode_DateAndTime *)self localizedFormatString];
    locale = [(_UIDatePickerMode *)self locale];
    v7 = [_UIDatePickerComponent componentsFromDateFormatString:localizedFormatString locale:locale followsSystemHourCycle:[(_UIDatePickerMode *)self followsSystemHourCycle] desiredUnits:96];

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v41;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v41 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v40 + 1) + 8 * i);
          if ([v13 calendarUnit] != 32 || (p_minuteFormat = &self->_hourFormat, self->_hourFormat))
          {
            if ([v13 calendarUnit] != 64)
            {
              continue;
            }

            p_minuteFormat = &self->_minuteFormat;
            if (self->_minuteFormat)
            {
              continue;
            }
          }

          formatString = [v13 formatString];
          v16 = *p_minuteFormat;
          *p_minuteFormat = formatString;
        }

        v10 = [v8 countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v10);
    }

    locale2 = [(_UIDatePickerMode *)self locale];
    v18 = _UIDatePickerDateFormatFromTemplate(@"EEE, d MMM", locale2, [(_UIDatePickerMode *)self followsSystemHourCycle]);

    locale3 = [(_UIDatePickerMode *)self locale];
    v20 = [_UIDatePickerComponent componentsFromDateFormatString:v18 locale:locale3 followsSystemHourCycle:[(_UIDatePickerMode *)self followsSystemHourCycle] desiredUnits:512];

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v21 = v20;
    v22 = [v21 countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v37;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v37 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v36 + 1) + 8 * j);
          if ([v26 calendarUnit] == 512)
          {
            formatString2 = [v26 formatString];
            v28 = *p_weekdayFormat;
            *p_weekdayFormat = formatString2;
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v36 objects:v44 count:16];
      }

      while (v23);
    }

    locale4 = [(_UIDatePickerMode *)self locale];
    v30 = _UIDatePickerDateFormatFromTemplate(@"d MMM", locale4, [(_UIDatePickerMode *)self followsSystemHourCycle]);
    monthDayFormat = self->_monthDayFormat;
    self->_monthDayFormat = v30;

    unit = unitCopy;
  }

  v32 = 0;
  if (unit <= 511)
  {
    if (unit == 32)
    {
      v33 = &OBJC_IVAR____UIDatePickerMode_DateAndTime__hourFormat;
    }

    else
    {
      if (unit != 64)
      {
        goto LABEL_34;
      }

      v33 = &OBJC_IVAR____UIDatePickerMode_DateAndTime__minuteFormat;
    }

LABEL_32:
    p_weekdayFormat = (&self->super.super.isa + *v33);
    goto LABEL_33;
  }

  if (unit != 512)
  {
    if (unit != 536)
    {
      goto LABEL_34;
    }

    v33 = &OBJC_IVAR____UIDatePickerMode_DateAndTime__monthDayFormat;
    goto LABEL_32;
  }

LABEL_33:
  v32 = *p_weekdayFormat;
LABEL_34:

  return v32;
}

- (int64_t)displayedCalendarUnits
{
  v3.receiver = self;
  v3.super_class = _UIDatePickerMode_DateAndTime;
  return [(_UIDatePickerMode *)&v3 displayedCalendarUnits]& 0xFFFFFFFFFFFFFDE1 | 0x1E;
}

- (unint64_t)elements
{
  result = self->super._elements;
  if (!result)
  {
    v19 = 0;
    localizedFormatString = [(_UIDatePickerMode_DateAndTime *)self localizedFormatString];
    extractableCalendarUnits = [objc_opt_class() extractableCalendarUnits];
    v7 = _UICopyCalendarUnitsFromFormatString(localizedFormatString, extractableCalendarUnits, &v19);
    v8 = v19;
    if (v19 <= 4)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDatePickerMode.m" lineNumber:1911 description:{@"unexpected number of calendar units: %ld for format: %@ (expecting at least 5 elements)", v19, localizedFormatString}];

      v8 = v19;
    }

    v9 = v8 - 2;
    v10 = malloc_type_calloc(v8 - 2, 8uLL, 0x100004000313F17uLL);
    if (v19)
    {
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      do
      {
        v15 = v7[v12];
        if ((v15 & v11) == 0)
        {
          if ((v15 & 0x218) != 0)
          {
            v16 = 536;
          }

          else
          {
            v16 = v7[v12];
          }

          v10[v14++] = v16;
          v11 |= v16;
        }

        if (v15 == 512 || v15 == 16)
        {
          if ((v13 & 1) == 0)
          {
            self->_weekdayLast = v15 == 16;
          }

          v13 = 1;
        }

        ++v12;
      }

      while (v12 < v19);
    }

    [(_UIDatePickerMode *)self setElements:v10];
    [(_UIDatePickerMode *)self setNumberOfComponents:v9];
    [(_UIDatePickerMode *)self fixUpElementsForRTL];
    free(v7);

    return self->super._elements;
  }

  return result;
}

- (void)loadDate:(id)date animated:(BOOL)animated
{
  animatedCopy = animated;
  dateCopy = date;
  [(_UIDatePickerMode_DateAndTime *)self _resetBaseDateComponentsIfNecessaryFromDate:dateCopy];
  v7.receiver = self;
  v7.super_class = _UIDatePickerMode_DateAndTime;
  [(_UIDatePickerMode *)&v7 loadDate:dateCopy animated:animatedCopy];
}

- (void)_resetBaseDateComponentsIfNecessaryFromDate:(id)date
{
  dateCopy = date;
  v4 = ([(_UIDatePickerMode_DateAndTime *)self numberOfRowsForCalendarUnit:536]/ 4);
  baseDate = [(_UIDatePickerMode *)self baseDate];
  v6 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v6 setDay:v4];
  calendar = [(_UIDatePickerMode *)self calendar];
  v8 = [calendar dateByAddingComponents:v6 toDate:baseDate options:0];

  [v6 setDay:3 * v4];
  calendar2 = [(_UIDatePickerMode *)self calendar];
  v10 = [calendar2 dateByAddingComponents:v6 toDate:baseDate options:0];

  v11 = [v8 earlierDate:dateCopy];
  v12 = v11;
  if (v11 == dateCopy)
  {
  }

  else
  {
    v13 = [v10 laterDate:dateCopy];

    if (v13 != dateCopy)
    {
      goto LABEL_6;
    }
  }

  [(_UIDatePickerMode_DateAndTime *)self _takeBaseDateComponentsFromDate:dateCopy];
LABEL_6:
}

- (void)_takeBaseDateComponentsFromDate:(id)date
{
  dateCopy = date;
  v5 = ([(_UIDatePickerMode_DateAndTime *)self numberOfRowsForCalendarUnit:536]/ 2);
  v11 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v11 setDay:-v5];
  calendar = [(_UIDatePickerMode *)self calendar];
  v7 = [calendar dateByAddingComponents:v11 toDate:dateCopy options:0];

  displayedCalendarUnits = [(_UIDatePickerMode_DateAndTime *)self displayedCalendarUnits];
  calendar2 = [(_UIDatePickerMode *)self calendar];
  v10 = [calendar2 components:displayedCalendarUnits fromDate:v7];

  [v10 setHour:12];
  [v10 setMinute:0];
  [v10 setSecond:0];
  [(_UIDatePickerMode *)self setBaseDateComponents:v10];
}

- (id)baseDateComponents
{
  baseDateComponents = self->super._baseDateComponents;
  if (!baseDateComponents)
  {
    datePickerView = [(_UIDatePickerMode *)self datePickerView];
    data = [datePickerView data];
    effectiveDate = [data effectiveDate];
    [(_UIDatePickerMode_DateAndTime *)self _takeBaseDateComponentsFromDate:effectiveDate];

    baseDateComponents = self->super._baseDateComponents;
  }

  return baseDateComponents;
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

- (double)componentWidthForDateTimeCalendarUnit:(unint64_t)unit font:(id)font maxWidth:(double)width
{
  v88[1] = *MEMORY[0x1E69E9840];
  fontCopy = font;
  p_wmdWeekMonthDayWidth = &self->_wmdWeekMonthDayWidth;
  if (self->_wmdWeekMonthDayWidth == 0.0)
  {
    v77 = &self->_wmdWeekMonthDayWidth;
    amString = [(_UIDatePickerMode *)self amString];
    pmString = [(_UIDatePickerMode *)self pmString];
    amPmFont = [(_UIDatePickerMode *)self amPmFont];
    [(_UIDatePickerMode *)self componentWidthForTwoDigitCalendarUnit:32 font:fontCopy maxWidth:width];
    v14 = ceil(v13);
    _style = [(_UIDatePickerMode *)self _style];
    [_style horizontalWeekdayTimePadding];
    self->_wmdHourWidth = v14 + v16 + v16;

    [(_UIDatePickerMode *)self componentWidthForTwoDigitCalendarUnit:64 font:fontCopy maxWidth:width];
    v18 = ceil(v17);
    _style2 = [(_UIDatePickerMode *)self _style];
    [_style2 horizontalWeekdayTimePadding];
    self->_wmdMinuteWidth = v18 + v20 + v20;

    self->_wmdAMPMWidth = 0.0;
    v21 = *off_1E70EC918;
    if (amString)
    {
      v87 = *off_1E70EC918;
      v88[0] = amPmFont;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v88 forKeys:&v87 count:1];
      [amString sizeWithAttributes:v22];
      v24 = v23;

      v85 = v21;
      v86 = amPmFont;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v86 forKeys:&v85 count:1];
      [pmString sizeWithAttributes:v25];
      v27 = v26;

      if (v24 >= v27)
      {
        v28 = v24;
      }

      else
      {
        v28 = v27;
      }

      v29 = ceil(v28);
      _style3 = [(_UIDatePickerMode *)self _style];
      [_style3 horizontalPaddingForAMPM];
      self->_wmdAMPMWidth = v29 + v31 + v31;
    }

    v75 = amPmFont;
    v76 = amString;
    self->_wmdWeekdayWidth = 0.0;
    weekdayFormatter = [(_UIDatePickerMode_DateAndTime *)self weekdayFormatter];
    for (i = 1; i != 8; ++i)
    {
      v34 = [objc_opt_class() newDateFromGregorianYear:2007 month:1 day:i timeZone:0];
      v35 = [weekdayFormatter stringFromDate:v34];
      v83 = v21;
      v84 = fontCopy;
      v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
      [v35 sizeWithAttributes:v36];
      v38 = v37;

      wmdWeekdayWidth = self->_wmdWeekdayWidth;
      if (v38 >= wmdWeekdayWidth)
      {
        wmdWeekdayWidth = v38;
      }

      self->_wmdWeekdayWidth = ceil(wmdWeekdayWidth);
    }

    v40 = [(_UIDatePickerMode *)self dateFormatterForCalendarUnit:536];

    v41 = 0.0;
    for (j = 1; j != 13; ++j)
    {
      v43 = [objc_opt_class() newDateFromGregorianYear:2007 month:j day:28 timeZone:0];
      v44 = [v40 stringFromDate:v43];
      v81 = v21;
      v82 = fontCopy;
      v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
      [v44 sizeWithAttributes:v45];
      v47 = v46;

      if (v47 >= v41)
      {
        v41 = v47;
      }
    }

    v48 = v41 + self->_wmdWeekdayWidth;
    _style4 = [(_UIDatePickerMode *)self _style];
    [_style4 horizontalWeekMonthDayPadding];
    *v77 = v48 + v50;

    *v77 = ceil(*v77);
    WeakRetained = objc_loadWeakRetained(&self->super._datePickerView);
    traitCollection = [WeakRetained traitCollection];
    v78 = +[UIDatePicker _styleForIdiom:](UIDatePicker, "_styleForIdiom:", [traitCollection userInterfaceIdiom]);

    v53 = _UINSLocalizedStringWithDefaultValue(@"Today", @"Today");
    v79 = v21;
    v80 = fontCopy;
    p_wmdWeekMonthDayWidth = &self->_wmdWeekMonthDayWidth;
    v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
    [v53 sizeWithAttributes:v54];
    v56 = v55;
    _style5 = [(_UIDatePickerMode *)self _style];
    [_style5 horizontalWeekMonthDayPadding];
    v59 = v56 + v58;
    [v78 pickerHorizontalEdgeInset];
    v61 = v59 + v60;

    v62 = *v77;
    if (*v77 < v61)
    {
      v62 = v61;
    }

    *v77 = v62;
    wmdAMPMWidth = self->_wmdAMPMWidth;
    v64 = v62 + self->_wmdHourWidth + self->_wmdMinuteWidth + wmdAMPMWidth;
    if (v64 > width)
    {
      v65 = v64 - width;
      if (self->_weekdayLast)
      {
        v66 = fmin(v65, 10.0);
        self->_wmdWeekdayWidth = self->_wmdWeekdayWidth - v66;
        v65 = v65 - v66;
        wmdAMPMWidth = self->_wmdAMPMWidth;
        v62 = *v77;
      }

      v67 = wmdAMPMWidth <= 0.0;
      v68 = 3.0;
      if (!v67)
      {
        v68 = 4.0;
      }

      v69 = round(fmin(v65 / v68, 16.0));
      *v77 = v62 - v69;
      v70 = round((v65 - v69) / (v68 + -1.0));
      self->_wmdHourWidth = self->_wmdHourWidth - v70;
      self->_wmdMinuteWidth = self->_wmdMinuteWidth - v70;
      v71 = self->_wmdAMPMWidth;
      if (v71 > 0.0)
      {
        self->_wmdAMPMWidth = v71 - v70;
      }
    }
  }

  v72 = 0.0;
  if (unit > 535)
  {
    if (unit == 536)
    {
LABEL_34:
      v72 = *p_wmdWeekMonthDayWidth;
      goto LABEL_35;
    }

    if (unit == 0x10000)
    {
      v73 = &OBJC_IVAR____UIDatePickerMode_DateAndTime__wmdAMPMWidth;
      goto LABEL_33;
    }
  }

  else
  {
    if (unit == 32)
    {
      v73 = &OBJC_IVAR____UIDatePickerMode_DateAndTime__wmdHourWidth;
      goto LABEL_33;
    }

    if (unit == 64)
    {
      v73 = &OBJC_IVAR____UIDatePickerMode_DateAndTime__wmdMinuteWidth;
LABEL_33:
      p_wmdWeekMonthDayWidth = (self + *v73);
      goto LABEL_34;
    }
  }

LABEL_35:

  return v72;
}

- (id)titleForRow:(int64_t)row inComponent:(int64_t)component
{
  if ([(_UIDatePickerMode *)self calendarUnitForComponent:component]== 536)
  {
    v7 = &stru_1EFB14550;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = _UIDatePickerMode_DateAndTime;
    v7 = [(_UIDatePickerMode *)&v9 titleForRow:row inComponent:component];
  }

  return v7;
}

- (id)dateForRow:(int64_t)row inCalendarUnit:(unint64_t)unit
{
  if (unit == 536)
  {
    v4 = [(_UIDatePickerMode_DateAndTime *)self _dateForWeekMonthDayRow:row];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = _UIDatePickerMode_DateAndTime;
    v4 = [(_UIDatePickerMode *)&v6 dateForRow:row inCalendarUnit:?];
  }

  return v4;
}

- (int64_t)rowForDate:(id)date dateComponents:(id)components component:(int64_t)component currentRow:(int64_t)row
{
  dateCopy = date;
  componentsCopy = components;
  if ([(_UIDatePickerMode *)self calendarUnitForComponent:component]== 536)
  {
    calendar = [(_UIDatePickerMode *)self calendar];
    v13 = [calendar components:30 fromDate:dateCopy];

    [v13 setHour:12];
    [v13 setMinute:0];
    [v13 setSecond:0];
    calendar2 = [(_UIDatePickerMode *)self calendar];
    v15 = [calendar2 dateFromComponents:v13];

    calendar3 = [(_UIDatePickerMode *)self calendar];
    baseDate = [(_UIDatePickerMode *)self baseDate];
    v18 = [calendar3 components:16 fromDate:v15 toDate:baseDate options:0];

    v19 = [v18 day];
    baseDate2 = [(_UIDatePickerMode *)self baseDate];
    v21 = [v15 compare:baseDate2];

    if (v21 == -1 && v19 > 0 || v21 == 1 && v19 < 0)
    {
      v19 = -v19;
    }
  }

  else
  {
    v23.receiver = self;
    v23.super_class = _UIDatePickerMode_DateAndTime;
    v19 = [(_UIDatePickerMode *)&v23 rowForDate:dateCopy dateComponents:componentsCopy component:component currentRow:row];
  }

  return v19;
}

- (id)_dateForWeekMonthDayRow:(int64_t)row
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v5 setDay:row];
  calendar = [(_UIDatePickerMode *)self calendar];
  baseDate = [(_UIDatePickerMode *)self baseDate];
  v8 = [calendar dateByAddingComponents:v5 toDate:baseDate options:0];

  return v8;
}

- (BOOL)_shouldEnableWeekMonthDayForRow:(int64_t)row
{
  v4 = [(_UIDatePickerMode_DateAndTime *)self _dateForWeekMonthDayRow:row];
  calendar = [(_UIDatePickerMode *)self calendar];
  v6 = [calendar components:30 fromDate:v4];

  minimumDateComponents = [(_UIDatePickerMode *)self minimumDateComponents];
  maximumDateComponents = [(_UIDatePickerMode *)self maximumDateComponents];
  v9 = maximumDateComponents;
  if (minimumDateComponents)
  {
    v10 = (_UIDatePickerCompareDateComponents(minimumDateComponents, v6, 30) + 1) < 2;
    if (!v9)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v10 = 1;
    if (!maximumDateComponents)
    {
      goto LABEL_5;
    }
  }

  if (_UIDatePickerCompareDateComponents(v9, v6, 30) >= 2)
  {
    v10 = 0;
  }

LABEL_5:

  return v10;
}

- (BOOL)_shouldEnableValueForRow:(int64_t)row inComponent:(int64_t)component calendarUnit:(unint64_t)unit
{
  if (unit != 536)
  {
    v10 = [(_UIDatePickerMode *)self selectedDateComponents:row];
    v11 = v10;
    switch(unit)
    {
      case 0x10000uLL:
        rowCopy = row;
        break;
      case 0x40uLL:
        [v10 setMinute:{-[_UIDatePickerMode minuteForRow:](self, "minuteForRow:", row)}];
        unitCopy = 64;
        goto LABEL_14;
      case 0x20uLL:
        [v10 setHour:{-[_UIDatePickerMode hourForRow:](self, "hourForRow:", row)}];
        [v11 setMinute:0];
        v12 = [(_UIDatePickerMode *)self componentForCalendarUnit:0x10000];
        if (v12 == 0x7FFFFFFFFFFFFFFFLL)
        {
LABEL_13:
          unitCopy = 32;
          goto LABEL_14;
        }

        v13 = v12;
        datePickerView = [(_UIDatePickerMode *)self datePickerView];
        v15 = [datePickerView selectedRowInComponent:v13];

        v10 = v11;
        rowCopy = v15;
        break;
      default:
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDatePickerMode.m" lineNumber:2197 description:{@"Unknown calendar unit: %lu", unit}];

        unitCopy2 = 0x7FFFFFFFFFFFFFFFLL;
        unitCopy = unit;
        if (unit == 0x7FFFFFFFFFFFFFFFLL)
        {
LABEL_16:
          v19 = [(_UIDatePickerMode *)self areValidDateComponents:v11 comparingUnits:unitCopy2];

          return v19;
        }

LABEL_14:
        unitCopy2 = unit;
        do
        {
          unitCopy2 |= unitCopy;
          unitCopy = [(_UIDatePickerMode_DateAndTime *)self nextUnitLargerThanUnit:?];
        }

        while (unitCopy != 0x7FFFFFFFFFFFFFFFLL);
        goto LABEL_16;
    }

    _UIDateComponentsSetValue(v10, 0x10000, rowCopy);
    goto LABEL_13;
  }

  return [(_UIDatePickerMode_DateAndTime *)self _shouldEnableWeekMonthDayForRow:row, component];
}

- (id)viewForRow:(int64_t)row inComponent:(int64_t)component reusingView:(id)view
{
  viewCopy = view;
  if ([(_UIDatePickerMode *)self calendarUnitForComponent:component]!= 536)
  {
    v55.receiver = self;
    v55.super_class = _UIDatePickerMode_DateAndTime;
    v9 = [(_UIDatePickerMode *)&v55 viewForRow:row inComponent:component reusingView:viewCopy];

    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = viewCopy;
  }

  else
  {
    v10 = [UIDatePickerWeekMonthDayView alloc];
    v9 = [(UIDatePickerWeekMonthDayView *)v10 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    dateLabel = [(UIDatePickerWeekMonthDayView *)v9 dateLabel];
    datePickerView = [(_UIDatePickerMode *)self datePickerView];
    _textColor = [datePickerView _textColor];
    [dateLabel setTextColor:_textColor];

    dateLabel2 = [(UIDatePickerWeekMonthDayView *)v9 dateLabel];
    datePickerView2 = [(_UIDatePickerMode *)self datePickerView];
    _textShadowColor = [datePickerView2 _textShadowColor];
    [dateLabel2 setShadowColor:_textShadowColor];

    weekdayLabel = [(UIDatePickerWeekMonthDayView *)v9 weekdayLabel];
    datePickerView3 = [(_UIDatePickerMode *)self datePickerView];
    _textColor2 = [datePickerView3 _textColor];
    [weekdayLabel setTextColor:_textColor2];

    weekdayLabel2 = [(UIDatePickerWeekMonthDayView *)v9 weekdayLabel];
    datePickerView4 = [(_UIDatePickerMode *)self datePickerView];
    _textShadowColor2 = [datePickerView4 _textShadowColor];
    [weekdayLabel2 setShadowColor:_textShadowColor2];
  }

  rowCopy = row;
  v23 = [(_UIDatePickerMode_DateAndTime *)self _dateForWeekMonthDayRow:row];
  v24 = [(_UIDatePickerMode *)self dateFormatterForCalendarUnit:536];
  calendar = [(_UIDatePickerMode *)self calendar];
  v26 = [calendar components:766 fromDate:v23];

  [v26 setHour:12];
  [v26 setMinute:0];
  [v26 setSecond:0];
  calendar2 = [(_UIDatePickerMode *)self calendar];
  v28 = [calendar2 dateFromComponents:v26];

  v53 = [v24 stringFromDate:v28];
  datePickerView5 = [(_UIDatePickerMode *)self datePickerView];
  if (![datePickerView5 highlightsToday])
  {

LABEL_13:
    weekdayFormatter = [(_UIDatePickerMode_DateAndTime *)self weekdayFormatter];
    weekdayLabel3 = [(UIDatePickerWeekMonthDayView *)v9 weekdayLabel];
    v40 = [weekdayFormatter stringFromDate:v28];
    [weekdayLabel3 setText:v40];

    dateLabel3 = [(UIDatePickerWeekMonthDayView *)v9 dateLabel];
    datePickerView6 = [(_UIDatePickerMode *)self datePickerView];
    _textColor3 = [datePickerView6 _textColor];
    [dateLabel3 setTextColor:_textColor3];

    weekdayLabel4 = [(UIDatePickerWeekMonthDayView *)v9 weekdayLabel];
    datePickerView7 = [(_UIDatePickerMode *)self datePickerView];
    _textColor4 = [datePickerView7 _textColor];
    [weekdayLabel4 setTextColor:_textColor4];

    goto LABEL_14;
  }

  [v28 timeIntervalSinceReferenceDate];
  v31 = v30;
  [(_UIDatePickerMode *)self todaySinceReferenceDate];
  v33 = v31 - v32;
  if (v33 >= 0.0)
  {
    v34 = v33;
  }

  else
  {
    v34 = -v33;
  }

  if (v34 > 0.1)
  {
    goto LABEL_13;
  }

  relativeFormatter = [(_UIDatePickerMode_DateAndTime *)self relativeFormatter];

  dateLabel4 = [(UIDatePickerWeekMonthDayView *)v9 dateLabel];
  todayTextColor = [(_UIDatePickerMode *)self todayTextColor];
  [dateLabel4 setTextColor:todayTextColor];

  weekdayFormatter = [(UIDatePickerWeekMonthDayView *)v9 weekdayLabel];
  [weekdayFormatter setText:0];
  v24 = relativeFormatter;
LABEL_14:

  dateLabel5 = [(UIDatePickerWeekMonthDayView *)v9 dateLabel];
  v48 = [v24 stringFromDate:v28];
  [dateLabel5 setText:v48];

  dateLabel6 = [(UIDatePickerWeekMonthDayView *)v9 dateLabel];
  v50 = [(_UIDatePickerMode *)self fontForCalendarUnit:536];
  [dateLabel6 setFont:v50];

  [(UIDatePickerWeekMonthDayView *)v9 setWeekdayLast:[(_UIDatePickerMode_DateAndTime *)self isWeekdayLast]];
  [(_UIDatePickerMode_DateAndTime *)self weekdayWidth];
  [(UIDatePickerWeekMonthDayView *)v9 setWeekdayWidth:?];
  [(UIDatePickerWeekMonthDayView *)v9 setFormattedDateString:v53];
  dateLabel7 = [(UIDatePickerWeekMonthDayView *)v9 dateLabel];
  [dateLabel7 setEnabled:{-[_UIDatePickerMode_DateAndTime _shouldEnableWeekMonthDayForRow:](self, "_shouldEnableWeekMonthDayForRow:", rowCopy)}];

LABEL_15:

  return v9;
}

- (void)updateEnabledStateOfViewForRow:(int64_t)row inComponent:(int64_t)component
{
  if ([(_UIDatePickerMode *)self calendarUnitForComponent:component]== 536)
  {
    datePickerView = [(_UIDatePickerMode *)self datePickerView];
    v9 = [datePickerView viewForRow:row forComponent:component];

    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        dateLabel = [v9 dateLabel];
        [dateLabel setEnabled:{-[_UIDatePickerMode_DateAndTime _shouldEnableWeekMonthDayForRow:](self, "_shouldEnableWeekMonthDayForRow:", row)}];
      }
    }
  }

  else
  {
    v10.receiver = self;
    v10.super_class = _UIDatePickerMode_DateAndTime;
    [(_UIDatePickerMode *)&v10 updateEnabledStateOfViewForRow:row inComponent:component];
  }
}

- (unint64_t)nextUnitLargerThanUnit:(unint64_t)unit
{
  if (unit <= 15)
  {
    if (unit == 4)
    {
      return 2;
    }

    if (unit == 8)
    {
      return 4;
    }
  }

  else
  {
    switch(unit)
    {
      case 0x10uLL:
        return 8;
      case 0x40uLL:
        return 32;
      case 0x20uLL:
        return 16;
    }
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

- (unint64_t)nextUnitSmallerThanUnit:(unint64_t)unit
{
  if (unit <= 7)
  {
    if (unit == 2)
    {
      return 4;
    }

    if (unit == 4)
    {
      return 8;
    }
  }

  else
  {
    switch(unit)
    {
      case 8uLL:
        return 16;
      case 0x10uLL:
        return 32;
      case 0x20uLL:
        return 64;
    }
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

@end