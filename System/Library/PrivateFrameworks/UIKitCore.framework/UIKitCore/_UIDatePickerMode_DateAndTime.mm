@interface _UIDatePickerMode_DateAndTime
- (BOOL)_shouldEnableValueForRow:(int64_t)a3 inComponent:(int64_t)a4 calendarUnit:(unint64_t)a5;
- (BOOL)_shouldEnableWeekMonthDayForRow:(int64_t)a3;
- (double)componentWidthForDateTimeCalendarUnit:(unint64_t)a3 font:(id)a4 maxWidth:(double)a5;
- (id)_dateForWeekMonthDayRow:(int64_t)a3;
- (id)baseDateComponents;
- (id)dateForRow:(int64_t)a3 inCalendarUnit:(unint64_t)a4;
- (id)dateFormatForCalendarUnit:(unint64_t)a3;
- (id)localizedFormatString;
- (id)relativeFormatter;
- (id)titleForRow:(int64_t)a3 inComponent:(int64_t)a4;
- (id)viewForRow:(int64_t)a3 inComponent:(int64_t)a4 reusingView:(id)a5;
- (id)weekdayFormatter;
- (int64_t)displayedCalendarUnits;
- (int64_t)numberOfRowsForCalendarUnit:(unint64_t)a3;
- (int64_t)rowForDate:(id)a3 dateComponents:(id)a4 component:(int64_t)a5 currentRow:(int64_t)a6;
- (unint64_t)elements;
- (unint64_t)nextUnitLargerThanUnit:(unint64_t)a3;
- (unint64_t)nextUnitSmallerThanUnit:(unint64_t)a3;
- (void)_resetBaseDateComponentsIfNecessaryFromDate:(id)a3;
- (void)_shouldReset:(id)a3;
- (void)_takeBaseDateComponentsFromDate:(id)a3;
- (void)loadDate:(id)a3 animated:(BOOL)a4;
- (void)noteCalendarChanged;
- (void)resetComponentWidths;
- (void)updateEnabledStateOfViewForRow:(int64_t)a3 inComponent:(int64_t)a4;
@end

@implementation _UIDatePickerMode_DateAndTime

- (void)_shouldReset:(id)a3
{
  v10.receiver = self;
  v10.super_class = _UIDatePickerMode_DateAndTime;
  [(_UIDatePickerMode *)&v10 _shouldReset:a3];
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
    v7 = [(_UIDatePickerMode *)self calendarForFormatters];
    [(NSDateFormatter *)v6 setCalendar:v7];

    v8 = self->_relativeFormatter;
    v9 = [(_UIDatePickerMode *)self locale];
    [(NSDateFormatter *)v8 setLocale:v9];

    v10 = self->_relativeFormatter;
    v11 = [(_UIDatePickerMode *)self timeZone];
    [(NSDateFormatter *)v10 setTimeZone:v11];

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
    v7 = [(_UIDatePickerMode *)self calendarForFormatters];
    [(NSDateFormatter *)v6 setCalendar:v7];

    v8 = self->_weekdayFormatter;
    v9 = [(_UIDatePickerMode *)self locale];
    [(NSDateFormatter *)v8 setLocale:v9];

    v10 = self->_weekdayFormatter;
    v11 = [(_UIDatePickerMode *)self timeZone];
    [(NSDateFormatter *)v10 setTimeZone:v11];

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
    v4 = [(_UIDatePickerMode *)self locale];
    v5 = _UIDatePickerDateFormatFromTemplate(@"EEE, d MMM y j:m", v4, [(_UIDatePickerMode *)self followsSystemHourCycle]);

    [(_UIDatePickerMode *)self setLocalizedFormatString:v5];
    localizedFormatString = self->super._localizedFormatString;
  }

  return localizedFormatString;
}

- (id)dateFormatForCalendarUnit:(unint64_t)a3
{
  v46 = *MEMORY[0x1E69E9840];
  p_weekdayFormat = &self->_weekdayFormat;
  if (!self->_weekdayFormat)
  {
    v35 = a3;
    v5 = [(_UIDatePickerMode_DateAndTime *)self localizedFormatString];
    v6 = [(_UIDatePickerMode *)self locale];
    v7 = [_UIDatePickerComponent componentsFromDateFormatString:v5 locale:v6 followsSystemHourCycle:[(_UIDatePickerMode *)self followsSystemHourCycle] desiredUnits:96];

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

          v15 = [v13 formatString];
          v16 = *p_minuteFormat;
          *p_minuteFormat = v15;
        }

        v10 = [v8 countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v10);
    }

    v17 = [(_UIDatePickerMode *)self locale];
    v18 = _UIDatePickerDateFormatFromTemplate(@"EEE, d MMM", v17, [(_UIDatePickerMode *)self followsSystemHourCycle]);

    v19 = [(_UIDatePickerMode *)self locale];
    v20 = [_UIDatePickerComponent componentsFromDateFormatString:v18 locale:v19 followsSystemHourCycle:[(_UIDatePickerMode *)self followsSystemHourCycle] desiredUnits:512];

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
            v27 = [v26 formatString];
            v28 = *p_weekdayFormat;
            *p_weekdayFormat = v27;
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v36 objects:v44 count:16];
      }

      while (v23);
    }

    v29 = [(_UIDatePickerMode *)self locale];
    v30 = _UIDatePickerDateFormatFromTemplate(@"d MMM", v29, [(_UIDatePickerMode *)self followsSystemHourCycle]);
    monthDayFormat = self->_monthDayFormat;
    self->_monthDayFormat = v30;

    a3 = v35;
  }

  v32 = 0;
  if (a3 <= 511)
  {
    if (a3 == 32)
    {
      v33 = &OBJC_IVAR____UIDatePickerMode_DateAndTime__hourFormat;
    }

    else
    {
      if (a3 != 64)
      {
        goto LABEL_34;
      }

      v33 = &OBJC_IVAR____UIDatePickerMode_DateAndTime__minuteFormat;
    }

LABEL_32:
    p_weekdayFormat = (&self->super.super.isa + *v33);
    goto LABEL_33;
  }

  if (a3 != 512)
  {
    if (a3 != 536)
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
    v5 = [(_UIDatePickerMode_DateAndTime *)self localizedFormatString];
    v6 = [objc_opt_class() extractableCalendarUnits];
    v7 = _UICopyCalendarUnitsFromFormatString(v5, v6, &v19);
    v8 = v19;
    if (v19 <= 4)
    {
      v18 = [MEMORY[0x1E696AAA8] currentHandler];
      [v18 handleFailureInMethod:a2 object:self file:@"_UIDatePickerMode.m" lineNumber:1911 description:{@"unexpected number of calendar units: %ld for format: %@ (expecting at least 5 elements)", v19, v5}];

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

- (void)loadDate:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(_UIDatePickerMode_DateAndTime *)self _resetBaseDateComponentsIfNecessaryFromDate:v6];
  v7.receiver = self;
  v7.super_class = _UIDatePickerMode_DateAndTime;
  [(_UIDatePickerMode *)&v7 loadDate:v6 animated:v4];
}

- (void)_resetBaseDateComponentsIfNecessaryFromDate:(id)a3
{
  v14 = a3;
  v4 = ([(_UIDatePickerMode_DateAndTime *)self numberOfRowsForCalendarUnit:536]/ 4);
  v5 = [(_UIDatePickerMode *)self baseDate];
  v6 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v6 setDay:v4];
  v7 = [(_UIDatePickerMode *)self calendar];
  v8 = [v7 dateByAddingComponents:v6 toDate:v5 options:0];

  [v6 setDay:3 * v4];
  v9 = [(_UIDatePickerMode *)self calendar];
  v10 = [v9 dateByAddingComponents:v6 toDate:v5 options:0];

  v11 = [v8 earlierDate:v14];
  v12 = v11;
  if (v11 == v14)
  {
  }

  else
  {
    v13 = [v10 laterDate:v14];

    if (v13 != v14)
    {
      goto LABEL_6;
    }
  }

  [(_UIDatePickerMode_DateAndTime *)self _takeBaseDateComponentsFromDate:v14];
LABEL_6:
}

- (void)_takeBaseDateComponentsFromDate:(id)a3
{
  v4 = a3;
  v5 = ([(_UIDatePickerMode_DateAndTime *)self numberOfRowsForCalendarUnit:536]/ 2);
  v11 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v11 setDay:-v5];
  v6 = [(_UIDatePickerMode *)self calendar];
  v7 = [v6 dateByAddingComponents:v11 toDate:v4 options:0];

  v8 = [(_UIDatePickerMode_DateAndTime *)self displayedCalendarUnits];
  v9 = [(_UIDatePickerMode *)self calendar];
  v10 = [v9 components:v8 fromDate:v7];

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
    v4 = [(_UIDatePickerMode *)self datePickerView];
    v5 = [v4 data];
    v6 = [v5 effectiveDate];
    [(_UIDatePickerMode_DateAndTime *)self _takeBaseDateComponentsFromDate:v6];

    baseDateComponents = self->super._baseDateComponents;
  }

  return baseDateComponents;
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

- (double)componentWidthForDateTimeCalendarUnit:(unint64_t)a3 font:(id)a4 maxWidth:(double)a5
{
  v88[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  p_wmdWeekMonthDayWidth = &self->_wmdWeekMonthDayWidth;
  if (self->_wmdWeekMonthDayWidth == 0.0)
  {
    v77 = &self->_wmdWeekMonthDayWidth;
    v10 = [(_UIDatePickerMode *)self amString];
    v11 = [(_UIDatePickerMode *)self pmString];
    v12 = [(_UIDatePickerMode *)self amPmFont];
    [(_UIDatePickerMode *)self componentWidthForTwoDigitCalendarUnit:32 font:v8 maxWidth:a5];
    v14 = ceil(v13);
    v15 = [(_UIDatePickerMode *)self _style];
    [v15 horizontalWeekdayTimePadding];
    self->_wmdHourWidth = v14 + v16 + v16;

    [(_UIDatePickerMode *)self componentWidthForTwoDigitCalendarUnit:64 font:v8 maxWidth:a5];
    v18 = ceil(v17);
    v19 = [(_UIDatePickerMode *)self _style];
    [v19 horizontalWeekdayTimePadding];
    self->_wmdMinuteWidth = v18 + v20 + v20;

    self->_wmdAMPMWidth = 0.0;
    v21 = *off_1E70EC918;
    if (v10)
    {
      v87 = *off_1E70EC918;
      v88[0] = v12;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v88 forKeys:&v87 count:1];
      [v10 sizeWithAttributes:v22];
      v24 = v23;

      v85 = v21;
      v86 = v12;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v86 forKeys:&v85 count:1];
      [v11 sizeWithAttributes:v25];
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
      v30 = [(_UIDatePickerMode *)self _style];
      [v30 horizontalPaddingForAMPM];
      self->_wmdAMPMWidth = v29 + v31 + v31;
    }

    v75 = v12;
    v76 = v10;
    self->_wmdWeekdayWidth = 0.0;
    v32 = [(_UIDatePickerMode_DateAndTime *)self weekdayFormatter];
    for (i = 1; i != 8; ++i)
    {
      v34 = [objc_opt_class() newDateFromGregorianYear:2007 month:1 day:i timeZone:0];
      v35 = [v32 stringFromDate:v34];
      v83 = v21;
      v84 = v8;
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
      v82 = v8;
      v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
      [v44 sizeWithAttributes:v45];
      v47 = v46;

      if (v47 >= v41)
      {
        v41 = v47;
      }
    }

    v48 = v41 + self->_wmdWeekdayWidth;
    v49 = [(_UIDatePickerMode *)self _style];
    [v49 horizontalWeekMonthDayPadding];
    *v77 = v48 + v50;

    *v77 = ceil(*v77);
    WeakRetained = objc_loadWeakRetained(&self->super._datePickerView);
    v52 = [WeakRetained traitCollection];
    v78 = +[UIDatePicker _styleForIdiom:](UIDatePicker, "_styleForIdiom:", [v52 userInterfaceIdiom]);

    v53 = _UINSLocalizedStringWithDefaultValue(@"Today", @"Today");
    v79 = v21;
    v80 = v8;
    p_wmdWeekMonthDayWidth = &self->_wmdWeekMonthDayWidth;
    v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
    [v53 sizeWithAttributes:v54];
    v56 = v55;
    v57 = [(_UIDatePickerMode *)self _style];
    [v57 horizontalWeekMonthDayPadding];
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
    if (v64 > a5)
    {
      v65 = v64 - a5;
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
  if (a3 > 535)
  {
    if (a3 == 536)
    {
LABEL_34:
      v72 = *p_wmdWeekMonthDayWidth;
      goto LABEL_35;
    }

    if (a3 == 0x10000)
    {
      v73 = &OBJC_IVAR____UIDatePickerMode_DateAndTime__wmdAMPMWidth;
      goto LABEL_33;
    }
  }

  else
  {
    if (a3 == 32)
    {
      v73 = &OBJC_IVAR____UIDatePickerMode_DateAndTime__wmdHourWidth;
      goto LABEL_33;
    }

    if (a3 == 64)
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

- (id)titleForRow:(int64_t)a3 inComponent:(int64_t)a4
{
  if ([(_UIDatePickerMode *)self calendarUnitForComponent:a4]== 536)
  {
    v7 = &stru_1EFB14550;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = _UIDatePickerMode_DateAndTime;
    v7 = [(_UIDatePickerMode *)&v9 titleForRow:a3 inComponent:a4];
  }

  return v7;
}

- (id)dateForRow:(int64_t)a3 inCalendarUnit:(unint64_t)a4
{
  if (a4 == 536)
  {
    v4 = [(_UIDatePickerMode_DateAndTime *)self _dateForWeekMonthDayRow:a3];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = _UIDatePickerMode_DateAndTime;
    v4 = [(_UIDatePickerMode *)&v6 dateForRow:a3 inCalendarUnit:?];
  }

  return v4;
}

- (int64_t)rowForDate:(id)a3 dateComponents:(id)a4 component:(int64_t)a5 currentRow:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  if ([(_UIDatePickerMode *)self calendarUnitForComponent:a5]== 536)
  {
    v12 = [(_UIDatePickerMode *)self calendar];
    v13 = [v12 components:30 fromDate:v10];

    [v13 setHour:12];
    [v13 setMinute:0];
    [v13 setSecond:0];
    v14 = [(_UIDatePickerMode *)self calendar];
    v15 = [v14 dateFromComponents:v13];

    v16 = [(_UIDatePickerMode *)self calendar];
    v17 = [(_UIDatePickerMode *)self baseDate];
    v18 = [v16 components:16 fromDate:v15 toDate:v17 options:0];

    v19 = [v18 day];
    v20 = [(_UIDatePickerMode *)self baseDate];
    v21 = [v15 compare:v20];

    if (v21 == -1 && v19 > 0 || v21 == 1 && v19 < 0)
    {
      v19 = -v19;
    }
  }

  else
  {
    v23.receiver = self;
    v23.super_class = _UIDatePickerMode_DateAndTime;
    v19 = [(_UIDatePickerMode *)&v23 rowForDate:v10 dateComponents:v11 component:a5 currentRow:a6];
  }

  return v19;
}

- (id)_dateForWeekMonthDayRow:(int64_t)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v5 setDay:a3];
  v6 = [(_UIDatePickerMode *)self calendar];
  v7 = [(_UIDatePickerMode *)self baseDate];
  v8 = [v6 dateByAddingComponents:v5 toDate:v7 options:0];

  return v8;
}

- (BOOL)_shouldEnableWeekMonthDayForRow:(int64_t)a3
{
  v4 = [(_UIDatePickerMode_DateAndTime *)self _dateForWeekMonthDayRow:a3];
  v5 = [(_UIDatePickerMode *)self calendar];
  v6 = [v5 components:30 fromDate:v4];

  v7 = [(_UIDatePickerMode *)self minimumDateComponents];
  v8 = [(_UIDatePickerMode *)self maximumDateComponents];
  v9 = v8;
  if (v7)
  {
    v10 = (_UIDatePickerCompareDateComponents(v7, v6, 30) + 1) < 2;
    if (!v9)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v10 = 1;
    if (!v8)
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

- (BOOL)_shouldEnableValueForRow:(int64_t)a3 inComponent:(int64_t)a4 calendarUnit:(unint64_t)a5
{
  if (a5 != 536)
  {
    v10 = [(_UIDatePickerMode *)self selectedDateComponents:a3];
    v11 = v10;
    switch(a5)
    {
      case 0x10000uLL:
        v16 = a3;
        break;
      case 0x40uLL:
        [v10 setMinute:{-[_UIDatePickerMode minuteForRow:](self, "minuteForRow:", a3)}];
        v17 = 64;
        goto LABEL_14;
      case 0x20uLL:
        [v10 setHour:{-[_UIDatePickerMode hourForRow:](self, "hourForRow:", a3)}];
        [v11 setMinute:0];
        v12 = [(_UIDatePickerMode *)self componentForCalendarUnit:0x10000];
        if (v12 == 0x7FFFFFFFFFFFFFFFLL)
        {
LABEL_13:
          v17 = 32;
          goto LABEL_14;
        }

        v13 = v12;
        v14 = [(_UIDatePickerMode *)self datePickerView];
        v15 = [v14 selectedRowInComponent:v13];

        v10 = v11;
        v16 = v15;
        break;
      default:
        v20 = [MEMORY[0x1E696AAA8] currentHandler];
        [v20 handleFailureInMethod:a2 object:self file:@"_UIDatePickerMode.m" lineNumber:2197 description:{@"Unknown calendar unit: %lu", a5}];

        v18 = 0x7FFFFFFFFFFFFFFFLL;
        v17 = a5;
        if (a5 == 0x7FFFFFFFFFFFFFFFLL)
        {
LABEL_16:
          v19 = [(_UIDatePickerMode *)self areValidDateComponents:v11 comparingUnits:v18];

          return v19;
        }

LABEL_14:
        v18 = a5;
        do
        {
          v18 |= v17;
          v17 = [(_UIDatePickerMode_DateAndTime *)self nextUnitLargerThanUnit:?];
        }

        while (v17 != 0x7FFFFFFFFFFFFFFFLL);
        goto LABEL_16;
    }

    _UIDateComponentsSetValue(v10, 0x10000, v16);
    goto LABEL_13;
  }

  return [(_UIDatePickerMode_DateAndTime *)self _shouldEnableWeekMonthDayForRow:a3, a4];
}

- (id)viewForRow:(int64_t)a3 inComponent:(int64_t)a4 reusingView:(id)a5
{
  v8 = a5;
  if ([(_UIDatePickerMode *)self calendarUnitForComponent:a4]!= 536)
  {
    v55.receiver = self;
    v55.super_class = _UIDatePickerMode_DateAndTime;
    v9 = [(_UIDatePickerMode *)&v55 viewForRow:a3 inComponent:a4 reusingView:v8];

    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v10 = [UIDatePickerWeekMonthDayView alloc];
    v9 = [(UIDatePickerWeekMonthDayView *)v10 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v11 = [(UIDatePickerWeekMonthDayView *)v9 dateLabel];
    v12 = [(_UIDatePickerMode *)self datePickerView];
    v13 = [v12 _textColor];
    [v11 setTextColor:v13];

    v14 = [(UIDatePickerWeekMonthDayView *)v9 dateLabel];
    v15 = [(_UIDatePickerMode *)self datePickerView];
    v16 = [v15 _textShadowColor];
    [v14 setShadowColor:v16];

    v17 = [(UIDatePickerWeekMonthDayView *)v9 weekdayLabel];
    v18 = [(_UIDatePickerMode *)self datePickerView];
    v19 = [v18 _textColor];
    [v17 setTextColor:v19];

    v20 = [(UIDatePickerWeekMonthDayView *)v9 weekdayLabel];
    v21 = [(_UIDatePickerMode *)self datePickerView];
    v22 = [v21 _textShadowColor];
    [v20 setShadowColor:v22];
  }

  v54 = a3;
  v23 = [(_UIDatePickerMode_DateAndTime *)self _dateForWeekMonthDayRow:a3];
  v24 = [(_UIDatePickerMode *)self dateFormatterForCalendarUnit:536];
  v25 = [(_UIDatePickerMode *)self calendar];
  v26 = [v25 components:766 fromDate:v23];

  [v26 setHour:12];
  [v26 setMinute:0];
  [v26 setSecond:0];
  v27 = [(_UIDatePickerMode *)self calendar];
  v28 = [v27 dateFromComponents:v26];

  v53 = [v24 stringFromDate:v28];
  v29 = [(_UIDatePickerMode *)self datePickerView];
  if (![v29 highlightsToday])
  {

LABEL_13:
    v38 = [(_UIDatePickerMode_DateAndTime *)self weekdayFormatter];
    v39 = [(UIDatePickerWeekMonthDayView *)v9 weekdayLabel];
    v40 = [v38 stringFromDate:v28];
    [v39 setText:v40];

    v41 = [(UIDatePickerWeekMonthDayView *)v9 dateLabel];
    v42 = [(_UIDatePickerMode *)self datePickerView];
    v43 = [v42 _textColor];
    [v41 setTextColor:v43];

    v44 = [(UIDatePickerWeekMonthDayView *)v9 weekdayLabel];
    v45 = [(_UIDatePickerMode *)self datePickerView];
    v46 = [v45 _textColor];
    [v44 setTextColor:v46];

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

  v35 = [(_UIDatePickerMode_DateAndTime *)self relativeFormatter];

  v36 = [(UIDatePickerWeekMonthDayView *)v9 dateLabel];
  v37 = [(_UIDatePickerMode *)self todayTextColor];
  [v36 setTextColor:v37];

  v38 = [(UIDatePickerWeekMonthDayView *)v9 weekdayLabel];
  [v38 setText:0];
  v24 = v35;
LABEL_14:

  v47 = [(UIDatePickerWeekMonthDayView *)v9 dateLabel];
  v48 = [v24 stringFromDate:v28];
  [v47 setText:v48];

  v49 = [(UIDatePickerWeekMonthDayView *)v9 dateLabel];
  v50 = [(_UIDatePickerMode *)self fontForCalendarUnit:536];
  [v49 setFont:v50];

  [(UIDatePickerWeekMonthDayView *)v9 setWeekdayLast:[(_UIDatePickerMode_DateAndTime *)self isWeekdayLast]];
  [(_UIDatePickerMode_DateAndTime *)self weekdayWidth];
  [(UIDatePickerWeekMonthDayView *)v9 setWeekdayWidth:?];
  [(UIDatePickerWeekMonthDayView *)v9 setFormattedDateString:v53];
  v51 = [(UIDatePickerWeekMonthDayView *)v9 dateLabel];
  [v51 setEnabled:{-[_UIDatePickerMode_DateAndTime _shouldEnableWeekMonthDayForRow:](self, "_shouldEnableWeekMonthDayForRow:", v54)}];

LABEL_15:

  return v9;
}

- (void)updateEnabledStateOfViewForRow:(int64_t)a3 inComponent:(int64_t)a4
{
  if ([(_UIDatePickerMode *)self calendarUnitForComponent:a4]== 536)
  {
    v7 = [(_UIDatePickerMode *)self datePickerView];
    v9 = [v7 viewForRow:a3 forComponent:a4];

    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [v9 dateLabel];
        [v8 setEnabled:{-[_UIDatePickerMode_DateAndTime _shouldEnableWeekMonthDayForRow:](self, "_shouldEnableWeekMonthDayForRow:", a3)}];
      }
    }
  }

  else
  {
    v10.receiver = self;
    v10.super_class = _UIDatePickerMode_DateAndTime;
    [(_UIDatePickerMode *)&v10 updateEnabledStateOfViewForRow:a3 inComponent:a4];
  }
}

- (unint64_t)nextUnitLargerThanUnit:(unint64_t)a3
{
  if (a3 <= 15)
  {
    if (a3 == 4)
    {
      return 2;
    }

    if (a3 == 8)
    {
      return 4;
    }
  }

  else
  {
    switch(a3)
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

- (unint64_t)nextUnitSmallerThanUnit:(unint64_t)a3
{
  if (a3 <= 7)
  {
    if (a3 == 2)
    {
      return 4;
    }

    if (a3 == 4)
    {
      return 8;
    }
  }

  else
  {
    switch(a3)
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