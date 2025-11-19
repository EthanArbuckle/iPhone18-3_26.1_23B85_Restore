@interface _UIDatePickerMode
+ (id)_datePickerModeWithFormatString:(id)a3 datePickerView:(id)a4;
+ (id)_datePickerModeWithMode:(int64_t)a3 datePickerView:(id)a4;
+ (id)newDateFromGregorianYear:(int64_t)a3 month:(int64_t)a4 day:(int64_t)a5 timeZone:(id)a6;
+ (int64_t)datePickerMode;
+ (unint64_t)extractableCalendarUnits;
+ (void)initialize;
- (BOOL)_isComponentScrolling:(int64_t)a3;
- (BOOL)_monthExists:(int64_t)a3 inYear:(int64_t)a4;
- (BOOL)_scrollingAnyColumnExcept:(int)a3;
- (BOOL)_shouldEnableValueForRow:(int64_t)a3 column:(int64_t)a4;
- (BOOL)_shouldEnableValueForRow:(int64_t)a3 inComponent:(int64_t)a4 calendarUnit:(unint64_t)a5;
- (BOOL)areValidDateComponents:(id)a3 comparingUnits:(int64_t)a4;
- (BOOL)followsSystemHourCycle;
- (NSDate)baseDate;
- (NSDate)originatingDate;
- (NSDateComponents)baseDateComponents;
- (NSDateComponents)selectedDateComponents;
- (NSDateComponents)todayDateComponents;
- (NSString)amString;
- (NSString)localizedFormatString;
- (NSString)pmString;
- (UIColor)todayTextColor;
- (UIFont)amPmFont;
- (UIFont)defaultTimeFont;
- (UIFont)font;
- (UIFont)sizedFont;
- (_NSRange)rangeForCalendarUnit:(unint64_t)a3;
- (_UIDatePickerMode)init;
- (_UIDatePickerView)datePickerView;
- (double)componentWidthForTwoDigitCalendarUnit:(unint64_t)a3 font:(id)a4 maxWidth:(double)a5;
- (double)todaySinceReferenceDate;
- (double)totalComponentWidth;
- (double)totalComponentWidthWithFont:(id)a3;
- (double)widthForCalendarUnit:(unint64_t)a3 font:(id)a4 maxWidth:(double)a5;
- (double)widthForComponent:(int64_t)a3 maxWidth:(double)a4;
- (id)_dateByEnsuringValue:(int64_t)a3 forCalendarUnit:(unint64_t)a4;
- (id)_dateForYearRow:(int64_t)a3;
- (id)_style;
- (id)calendar;
- (id)calendarForFormatters;
- (id)dateComponentsByRestrictingSelectedComponents:(id)a3 withLastManipulatedColumn:(int64_t)a4;
- (id)dateForRow:(int64_t)a3 inCalendarUnit:(unint64_t)a4;
- (id)dateFormatForCalendarUnit:(unint64_t)a3;
- (id)dateFormatterForCalendarUnit:(unint64_t)a3;
- (id)fontForCalendarUnit:(unint64_t)a3;
- (id)locale;
- (id)timeZone;
- (id)titleForRow:(int64_t)a3 inComponent:(int64_t)a4;
- (id)viewForRow:(int64_t)a3 inComponent:(int64_t)a4 reusingView:(id)a5;
- (int64_t)_incrementForStaggeredTimeIntervals;
- (int64_t)_numberOfDaysInDateComponents:(id)a3;
- (int64_t)_yearlessYearForMonth:(int64_t)a3;
- (int64_t)componentForCalendarUnit:(unint64_t)a3;
- (int64_t)datePickerMode;
- (int64_t)displayedCalendarUnits;
- (int64_t)eraForYearRow:(int64_t)a3;
- (int64_t)hourForRow:(int64_t)a3;
- (int64_t)numberOfRowsForCalendarUnit:(unint64_t)a3;
- (int64_t)numberOfRowsInComponent:(int64_t)a3;
- (int64_t)rowForDate:(id)a3 dateComponents:(id)a4 component:(int64_t)a5 currentRow:(int64_t)a6;
- (int64_t)rowForValue:(int64_t)a3 forCalendarUnit:(unint64_t)a4 currentRow:(int64_t)a5;
- (int64_t)titleAlignmentForCalendarUnit:(unint64_t)a3;
- (int64_t)valueForDate:(id)a3 dateComponents:(id)a4 calendarUnit:(unint64_t)a5;
- (int64_t)valueForRow:(int64_t)a3 inCalendarUnit:(unint64_t)a4;
- (int64_t)yearForRow:(int64_t)a3;
- (int64_t)yearsSinceBaseDate;
- (unint64_t)calendarUnitForComponent:(int64_t)a3;
- (unint64_t)elements;
- (unint64_t)nextUnitLargerThanUnit:(unint64_t)a3;
- (unint64_t)nextUnitSmallerThanUnit:(unint64_t)a3;
- (unint64_t)numberOfComponents;
- (void)_shouldReset:(id)a3;
- (void)_updateSelectedDateComponentsWithNewValueInComponent:(int64_t)a3 usingSelectionBarValue:(BOOL)a4;
- (void)clearBaseDate;
- (void)dealloc;
- (void)fixUpElementsForRTL;
- (void)invalidateTodayTextColor;
- (void)loadDate:(id)a3 animated:(BOOL)a4;
- (void)noteCalendarChanged;
- (void)resetComponentWidths;
- (void)setBaseDateComponents:(id)a3;
- (void)setElements:(unint64_t *)a3;
- (void)setTodayDateComponents:(id)a3;
- (void)updateDateForNewDateRange;
- (void)updateEnabledStateOfViewForRow:(int64_t)a3 inComponent:(int64_t)a4;
@end

@implementation _UIDatePickerMode

+ (void)initialize
{
  if (initialize_componentsUnitOrder_onceToken != -1)
  {
    dispatch_once(&initialize_componentsUnitOrder_onceToken, &__block_literal_global_474);
  }
}

+ (id)newDateFromGregorianYear:(int64_t)a3 month:(int64_t)a4 day:(int64_t)a5 timeZone:(id)a6
{
  v9 = MEMORY[0x1E695DF10];
  v10 = a6;
  v11 = objc_alloc_init(v9);
  [v11 setYear:a3];
  [v11 setMonth:a4];
  [v11 setDay:a5];
  [v11 setTimeZone:v10];

  v12 = objc_alloc(MEMORY[0x1E695DEE8]);
  v13 = [v12 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  v14 = [v13 dateFromComponents:v11];
  v15 = MEMORY[0x18CFE4640]();
  v16 = CFDateCreate(0, v15);

  return v16;
}

+ (int64_t)datePickerMode
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"_UIDatePickerMode.m" lineNumber:161 description:{@"%s must be overridden by subclasses", "+[_UIDatePickerMode datePickerMode]"}];

  return 0;
}

+ (id)_datePickerModeWithMode:(int64_t)a3 datePickerView:(id)a4
{
  v5 = a4;
  v6 = 0;
  if (a3 <= 3)
  {
    if (a3 < 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (a3 > 4269)
  {
    if (a3 == 4270 || a3 == 4271)
    {
      goto LABEL_10;
    }
  }

  else if (a3 == 4 || a3 == 4269)
  {
LABEL_10:
    v6 = objc_opt_class();
  }

LABEL_11:
  v7 = objc_alloc_init(v6);
  [v7 setDatePickerView:v5];
  [v7 noteCalendarChanged];

  return v7;
}

+ (id)_datePickerModeWithFormatString:(id)a3 datePickerView:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[_UIDatePickerMode_Custom alloc] initWithFormatString:v6 datePickerView:v5];

  [(_UIDatePickerMode_Custom *)v7 noteCalendarChanged];

  return v7;
}

- (_UIDatePickerMode)init
{
  v10.receiver = self;
  v10.super_class = _UIDatePickerMode;
  v3 = [(_UIDatePickerMode *)&v10 init];
  if (v3)
  {
    v4 = objc_opt_class();
    if (v4 == objc_opt_class())
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      [v6 handleFailureInMethod:a2 object:v3 file:@"_UIDatePickerMode.m" lineNumber:202 description:{@"%@ is an abstract class. You must instantiate on of its subclasses instead.", v8}];

      return 0;
    }

    else
    {
      v5 = [MEMORY[0x1E696AD88] defaultCenter];
      [v5 addObserver:v3 selector:sel__shouldReset_ name:@"_UIDatePickerModeShouldResetNotification" object:0];

      [(_UIDatePickerMode *)v3 setMinuteInterval:1];
    }
  }

  return v3;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"_UIDatePickerModeShouldResetNotification" object:0];

  elements = self->_elements;
  if (elements)
  {
    free(elements);
    self->_elements = 0;
  }

  v5.receiver = self;
  v5.super_class = _UIDatePickerMode;
  [(_UIDatePickerMode *)&v5 dealloc];
}

- (int64_t)_yearlessYearForMonth:(int64_t)a3
{
  v3 = [(_UIDatePickerMode *)self calendar];
  v4 = [v3 calendarIdentifier];

  if ([v4 isEqualToString:*MEMORY[0x1E695D860]])
  {
    v5 = 6;
  }

  else if ([v4 hasPrefix:@"islamic"])
  {
    v5 = 7;
  }

  else
  {
    v5 = 1604;
  }

  return v5;
}

- (BOOL)followsSystemHourCycle
{
  v2 = [(_UIDatePickerMode *)self datePickerView];
  v3 = [v2 data];
  v4 = [v3 followsSystemHourCycle];

  return v4;
}

- (id)calendar
{
  v2 = [(_UIDatePickerMode *)self datePickerView];
  v3 = [v2 data];
  v4 = [v3 effectiveCalendar];

  return v4;
}

- (id)calendarForFormatters
{
  v2 = [(_UIDatePickerMode *)self datePickerView];
  v3 = [v2 data];
  v4 = [v3 formattingCalendar];

  return v4;
}

- (id)locale
{
  v2 = [(_UIDatePickerMode *)self datePickerView];
  v3 = [v2 data];
  v4 = [v3 effectiveLocale];

  return v4;
}

- (id)timeZone
{
  v2 = [(_UIDatePickerMode *)self datePickerView];
  v3 = [v2 data];
  v4 = [v3 timeZone];

  return v4;
}

- (id)_style
{
  v2 = [(_UIDatePickerMode *)self datePickerView];
  v3 = [v2 datePicker];
  v4 = [v3 _style];

  return v4;
}

- (void)_shouldReset:(id)a3
{
  dateFormatters = self->_dateFormatters;
  self->_dateFormatters = 0;

  font = self->_font;
  self->_font = 0;

  amPmFont = self->_amPmFont;
  self->_amPmFont = 0;

  defaultTimeFont = self->_defaultTimeFont;
  self->_defaultTimeFont = 0;

  elements = self->_elements;
  if (elements)
  {
    free(elements);
    self->_elements = 0;
  }

  self->_numberOfComponents = 0;
  localizedFormatString = self->_localizedFormatString;
  self->_localizedFormatString = 0;

  [(_UIDatePickerMode *)self resetComponentWidths];
}

- (double)componentWidthForTwoDigitCalendarUnit:(unint64_t)a3 font:(id)a4 maxWidth:(double)a5
{
  v29[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = [MEMORY[0x1E695DEE8] currentCalendar];
  v10 = [MEMORY[0x1E695DF00] date];
  LODWORD(v11) = [v9 rangeOfUnit:a3 inUnit:a3 >> 1 forDate:v10];
  v13 = v12;
  v14 = [v9 components:766 fromDate:v10];
  v15 = [(_UIDatePickerMode *)self dateFormatterForCalendarUnit:a3];
  v16 = 0.0;
  if (v13 >= v11)
  {
    v11 = v11;
    v27 = *off_1E70EC918;
    do
    {
      _UIDateComponentsSetValue(v14, a3, v11);
      v17 = [v9 dateFromComponents:v14];

      v18 = [v15 stringFromDate:v17];
      v28 = v27;
      v29[0] = v8;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
      v19 = v13;
      v20 = a3;
      v21 = v9;
      v23 = v22 = v8;
      [v18 sizeWithAttributes:v23];
      v25 = v24;

      v8 = v22;
      v9 = v21;
      a3 = v20;
      v13 = v19;
      if (v25 >= v16)
      {
        v16 = v25;
      }

      ++v11;
      v10 = v17;
    }

    while (v19 >= v11);
  }

  else
  {
    v17 = v10;
  }

  if (v16 < a5)
  {
    a5 = v16;
  }

  return a5;
}

- (int64_t)datePickerMode
{
  v2 = objc_opt_class();

  return [v2 datePickerMode];
}

- (id)dateFormatterForCalendarUnit:(unint64_t)a3
{
  v4 = [(_UIDatePickerMode *)self componentForCalendarUnit:a3];
  if (!self->_dateFormatters)
  {
    v5 = [MEMORY[0x1E695DF70] array];
    if ([(_UIDatePickerMode *)self numberOfComponents])
    {
      v6 = 0;
      do
      {
        v7 = objc_alloc_init(MEMORY[0x1E696AB78]);
        [v7 setDateStyle:2];
        [v7 setTimeStyle:0];
        v8 = [(_UIDatePickerMode *)self locale];
        [v7 setLocale:v8];

        v9 = [(_UIDatePickerMode *)self calendarForFormatters];
        [v7 setCalendar:v9];

        v10 = [(_UIDatePickerMode *)self timeZone];
        [v7 setTimeZone:v10];

        [v7 setFormattingContext:2];
        v11 = [(_UIDatePickerMode *)self dateFormatForCalendarUnit:[(_UIDatePickerMode *)self calendarUnitForComponent:v6]];
        [v7 setDateFormat:v11];
        [v5 addObject:v7];

        ++v6;
      }

      while (v6 < [(_UIDatePickerMode *)self numberOfComponents]);
    }

    v12 = [v5 copy];
    dateFormatters = self->_dateFormatters;
    self->_dateFormatters = v12;
  }

  if (v4 == 0x7FFFFFFFFFFFFFFFLL || v4 >= [(_UIDatePickerMode *)self numberOfComponents])
  {
    v14 = 0;
  }

  else
  {
    v14 = [(NSArray *)self->_dateFormatters objectAtIndex:v4];
  }

  return v14;
}

- (void)setTodayDateComponents:(id)a3
{
  v5 = a3;
  if (self->_todayDateComponents != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_todayDateComponents, a3);
    v5 = v6;
    self->_yearsSinceBaseDate = 0;
  }
}

- (NSDateComponents)todayDateComponents
{
  todayDateComponents = self->_todayDateComponents;
  if (!todayDateComponents)
  {
    v4 = [(_UIDatePickerMode *)self calendar];
    v5 = [MEMORY[0x1E695DF00] date];
    v6 = [v4 components:766 fromDate:v5];
    v7 = self->_todayDateComponents;
    self->_todayDateComponents = v6;

    [(NSDateComponents *)self->_todayDateComponents setHour:12];
    [(NSDateComponents *)self->_todayDateComponents setMinute:0];
    [(NSDateComponents *)self->_todayDateComponents setSecond:0];
    [(_UIDatePickerMode *)self setTodaySinceReferenceDate:0.0];
    self->_yearsSinceBaseDate = 0;

    todayDateComponents = self->_todayDateComponents;
  }

  return todayDateComponents;
}

- (double)todaySinceReferenceDate
{
  result = self->_todaySinceReferenceDate;
  if (result == 0.0)
  {
    v4 = [(_UIDatePickerMode *)self calendar];
    v5 = [(_UIDatePickerMode *)self todayDateComponents];
    v6 = [v4 dateFromComponents:v5];

    [v6 timeIntervalSinceReferenceDate];
    self->_todaySinceReferenceDate = v7;

    return self->_todaySinceReferenceDate;
  }

  return result;
}

- (NSDate)originatingDate
{
  originatingDate = self->_originatingDate;
  if (!originatingDate)
  {
    v4 = [MEMORY[0x1E695DF00] date];
    [(_UIDatePickerMode *)self setOriginatingDate:v4];

    originatingDate = self->_originatingDate;
  }

  return originatingDate;
}

- (void)clearBaseDate
{
  [(_UIDatePickerMode *)self setBaseDateComponents:0];
  [(_UIDatePickerMode *)self setBaseDate:0];

  [(_UIDatePickerMode *)self setYearsSinceBaseDate:0];
}

- (void)setBaseDateComponents:(id)a3
{
  objc_storeStrong(&self->_baseDateComponents, a3);

  [(_UIDatePickerMode *)self setBaseDate:0];
}

- (NSDateComponents)baseDateComponents
{
  baseDateComponents = self->_baseDateComponents;
  if (!baseDateComponents)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF10]);
    v5 = self->_baseDateComponents;
    self->_baseDateComponents = v4;

    [(NSDateComponents *)self->_baseDateComponents setEra:1];
    [(NSDateComponents *)self->_baseDateComponents setYear:1];
    [(NSDateComponents *)self->_baseDateComponents setMonth:1];
    [(NSDateComponents *)self->_baseDateComponents setDay:1];
    [(NSDateComponents *)self->_baseDateComponents setHour:12];
    [(NSDateComponents *)self->_baseDateComponents setMinute:0];
    [(NSDateComponents *)self->_baseDateComponents setSecond:0];
    baseDateComponents = self->_baseDateComponents;
  }

  return baseDateComponents;
}

- (NSDate)baseDate
{
  baseDate = self->_baseDate;
  if (!baseDate)
  {
    v4 = [(_UIDatePickerMode *)self baseDateComponents];
    v5 = [(_UIDatePickerMode *)self calendar];
    v6 = [v5 dateFromComponents:v4];
    [(_UIDatePickerMode *)self setBaseDate:v6];

    baseDate = self->_baseDate;
  }

  return baseDate;
}

- (int64_t)yearsSinceBaseDate
{
  result = self->_yearsSinceBaseDate;
  if (!result)
  {
    v4 = [(_UIDatePickerMode *)self calendar];
    v5 = [(_UIDatePickerMode *)self baseDate];
    v6 = [MEMORY[0x1E695DF00] date];
    v7 = [v4 components:4 fromDate:v5 toDate:v6 options:0];

    self->_yearsSinceBaseDate = [v7 year];
    return self->_yearsSinceBaseDate;
  }

  return result;
}

- (NSString)amString
{
  amString = self->_amString;
  if (!amString)
  {
    v4 = [(_UIDatePickerMode *)self dateFormatterForCalendarUnit:0x10000];
    v5 = [v4 AMSymbol];
    v6 = [v5 copy];
    v7 = self->_amString;
    self->_amString = v6;

    amString = self->_amString;
  }

  return amString;
}

- (NSString)pmString
{
  pmString = self->_pmString;
  if (!pmString)
  {
    v4 = [(_UIDatePickerMode *)self dateFormatterForCalendarUnit:0x10000];
    v5 = [v4 PMSymbol];
    v6 = [v5 copy];
    v7 = self->_pmString;
    self->_pmString = v6;

    pmString = self->_pmString;
  }

  return pmString;
}

- (id)fontForCalendarUnit:(unint64_t)a3
{
  if (a3 == 0x10000)
  {
    [(_UIDatePickerMode *)self amPmFont];
  }

  else
  {
    [(_UIDatePickerMode *)self font];
  }
  v3 = ;

  return v3;
}

- (UIFont)font
{
  font = self->_font;
  if (!font)
  {
    v4 = [(_UIDatePickerMode *)self sizedFont];
    v5 = self->_font;
    self->_font = v4;

    font = self->_font;
  }

  return font;
}

- (UIFont)sizedFont
{
  WeakRetained = objc_loadWeakRetained(&self->_datePickerView);
  v4 = [WeakRetained traitCollection];
  v5 = +[UIDatePicker _styleForIdiom:](UIDatePicker, "_styleForIdiom:", [v4 userInterfaceIdiom]);

  v6 = [(_UIDatePickerMode *)self datePickerView];
  [v6 bounds];
  v8 = v7;
  [v5 pickerHorizontalEdgeInset];
  v10 = v8 - (v9 + v9);

  v11 = objc_loadWeakRetained(&self->_datePickerView);
  v12 = [v11 _style];
  v13 = objc_loadWeakRetained(&self->_datePickerView);
  v14 = [v13 traitCollection];
  v15 = [v12 centerCellFontWithTraitCollection:v14];
  [v15 pointSize];
  v17 = v16;

  v18 = 0;
  v19 = v17 + 1;
  do
  {
    v20 = objc_loadWeakRetained(&self->_datePickerView);
    v21 = [v20 _style];
    v22 = objc_loadWeakRetained(&self->_datePickerView);
    v23 = [v22 traitCollection];
    v24 = [v21 centerCellFontWithTraitCollection:v23];
    v25 = v18;

    v18 = v24;
    [(_UIDatePickerMode *)self totalComponentWidthWithFont:v18];
    if (v26 <= v10)
    {
      break;
    }

    [(_UIDatePickerMode *)self resetComponentWidths];
    --v19;
  }

  while (v19 > 14);
  if (![(_UIDatePickerMode *)self is24Hour])
  {
    amPmFont = self->_amPmFont;
    p_amPmFont = &self->_amPmFont;
    if (([v18 isEqual:amPmFont] & 1) == 0)
    {
      objc_storeStrong(p_amPmFont, v24);
    }
  }

  return v18;
}

- (UIFont)defaultTimeFont
{
  defaultTimeFont = self->_defaultTimeFont;
  if (!defaultTimeFont)
  {
    WeakRetained = objc_loadWeakRetained(&self->_datePickerView);
    v5 = [WeakRetained _style];
    v6 = objc_loadWeakRetained(&self->_datePickerView);
    v7 = [v6 traitCollection];
    v8 = [v5 centerCellFontWithTraitCollection:v7];
    v9 = self->_defaultTimeFont;
    self->_defaultTimeFont = v8;

    defaultTimeFont = self->_defaultTimeFont;
  }

  return defaultTimeFont;
}

- (UIFont)amPmFont
{
  amPmFont = self->_amPmFont;
  if (!amPmFont)
  {
    WeakRetained = objc_loadWeakRetained(&self->_datePickerView);
    v5 = [WeakRetained _style];
    v6 = objc_loadWeakRetained(&self->_datePickerView);
    v7 = [v6 traitCollection];
    v8 = [v5 centerCellFontWithTraitCollection:v7];
    v9 = self->_amPmFont;
    self->_amPmFont = v8;

    amPmFont = self->_amPmFont;
  }

  return amPmFont;
}

- (UIColor)todayTextColor
{
  todayTextColor = self->_todayTextColor;
  if (!todayTextColor)
  {
    WeakRetained = objc_loadWeakRetained(&self->_datePickerView);
    v5 = [WeakRetained _textColor];
    v6 = self->_todayTextColor;
    self->_todayTextColor = v5;

    todayTextColor = self->_todayTextColor;
  }

  return todayTextColor;
}

- (void)invalidateTodayTextColor
{
  todayTextColor = self->_todayTextColor;
  self->_todayTextColor = 0;
}

- (unint64_t)numberOfComponents
{
  result = self->_numberOfComponents;
  if (!result)
  {
    [(_UIDatePickerMode *)self elements];
    return self->_numberOfComponents;
  }

  return result;
}

- (double)widthForComponent:(int64_t)a3 maxWidth:(double)a4
{
  if (a3 < 0 || [(_UIDatePickerMode *)self numberOfComponents]<= a3)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"_UIDatePickerMode.m" lineNumber:517 description:{@"Invalid parameter not satisfying: %@", @"component >= 0 && component < [self numberOfComponents]"}];
  }

  v8 = [(_UIDatePickerMode *)self calendarUnitForComponent:a3];
  v9 = [(_UIDatePickerMode *)self font];
  [(_UIDatePickerMode *)self widthForCalendarUnit:v8 font:v9 maxWidth:a4];
  v11 = v10;

  return v11;
}

- (double)widthForCalendarUnit:(unint64_t)a3 font:(id)a4 maxWidth:(double)a5
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"_UIDatePickerMode.m" lineNumber:523 description:{@"%s must be overridden by subclasses", "-[_UIDatePickerMode widthForCalendarUnit:font:maxWidth:]"}];

  return 0.0;
}

+ (unint64_t)extractableCalendarUnits
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"_UIDatePickerMode.m" lineNumber:530 description:{@"%s must be overridden by subclasses", "+[_UIDatePickerMode extractableCalendarUnits]"}];

  return 0;
}

- (void)setElements:(unint64_t *)a3
{
  elements = self->_elements;
  if (elements != a3)
  {
    if (elements)
    {
      free(elements);
      self->_elements = 0;
      [(_UIDatePickerMode *)self setNumberOfComponents:0];
    }

    self->_elements = a3;
  }
}

- (unint64_t)elements
{
  result = self->_elements;
  if (!result)
  {
    v6 = 0;
    v4 = [(_UIDatePickerMode *)self localizedFormatString];
    v5 = [objc_opt_class() extractableCalendarUnits];
    [(_UIDatePickerMode *)self setElements:_UICopyCalendarUnitsFromFormatString(v4, v5, &v6)];

    [(_UIDatePickerMode *)self setNumberOfComponents:v6];
    [(_UIDatePickerMode *)self fixUpElementsForRTL];
    return self->_elements;
  }

  return result;
}

- (void)fixUpElementsForRTL
{
  if (self->_elements)
  {
    if (![(_UIDatePickerMode *)self isTimeIntervalMode])
    {
      WeakRetained = objc_loadWeakRetained(&self->_datePickerView);
      v4 = [WeakRetained _shouldReverseLayoutDirection];

      if (v4)
      {
        if ([(_UIDatePickerMode *)self numberOfComponents])
        {
          v5 = 0;
          v6 = -1;
          v7 = -1;
          do
          {
            v8 = self->_elements[v5];
            if (v8 == 32)
            {
              v6 = v5;
            }

            if (v8 == 64)
            {
              v7 = v5;
            }

            ++v5;
          }

          while ([(_UIDatePickerMode *)self numberOfComponents]> v5);
          if ((v7 & 0x80000000) == 0 && (v6 & 0x80000000) == 0)
          {
            elements = self->_elements;
            elements[v6] = 64;
            elements[v7] = 32;
          }
        }
      }
    }
  }
}

- (int64_t)displayedCalendarUnits
{
  v3 = [(_UIDatePickerMode *)self elements];
  if (![(_UIDatePickerMode *)self numberOfComponents])
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  do
  {
    v5 |= v3[v4++];
  }

  while (v4 < [(_UIDatePickerMode *)self numberOfComponents]);
  return v5;
}

- (NSString)localizedFormatString
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"_UIDatePickerMode.m" lineNumber:589 description:{@"%s must be overridden by subclasses", "-[_UIDatePickerMode localizedFormatString]"}];

  return 0;
}

- (unint64_t)calendarUnitForComponent:(int64_t)a3
{
  if ([(_UIDatePickerMode *)self numberOfComponents]<= a3)
  {
    return 0;
  }

  else
  {
    return [(_UIDatePickerMode *)self elements][8 * a3];
  }
}

- (int64_t)componentForCalendarUnit:(unint64_t)a3
{
  v5 = [(_UIDatePickerMode *)self numberOfComponents];
  v6 = [(_UIDatePickerMode *)self elements];
  if (v5 < 1)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v7 = v6;
  result = 0;
  while (v7[result] != a3)
  {
    if (v5 == ++result)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return result;
}

- (int64_t)numberOfRowsInComponent:(int64_t)a3
{
  v4 = [(_UIDatePickerMode *)self calendarUnitForComponent:a3];

  return [(_UIDatePickerMode *)self numberOfRowsForCalendarUnit:v4];
}

- (int64_t)numberOfRowsForCalendarUnit:(unint64_t)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"_UIDatePickerMode.m" lineNumber:613 description:{@"%s must be overridden by subclasses", "-[_UIDatePickerMode numberOfRowsForCalendarUnit:]"}];

  return 0;
}

- (void)noteCalendarChanged
{
  dateFormatters = self->_dateFormatters;
  self->_dateFormatters = 0;

  amString = self->_amString;
  self->_amString = 0;

  pmString = self->_pmString;
  self->_pmString = 0;

  [(_UIDatePickerMode *)self resetComponentWidths];
  [(_UIDatePickerMode *)self clearBaseDate];
  [(_UIDatePickerMode *)self setElements:0];
  [(_UIDatePickerMode *)self setLocalizedFormatString:0];
  [(_UIDatePickerMode *)self setTodayDateComponents:0];
  v6 = [(_UIDatePickerMode *)self calendar];
  v7 = [(_UIDatePickerMode *)self timeZone];
  [v6 setTimeZone:v7];

  v8 = [(_UIDatePickerMode *)self calendar];
  self->_maxDayRange.location = [v8 maximumRangeOfUnit:16];
  self->_maxDayRange.length = v9;

  v10 = [(_UIDatePickerMode *)self calendar];
  self->_maxMonthRange.location = [v10 maximumRangeOfUnit:8];
  self->_maxMonthRange.length = v11;

  v13 = [(_UIDatePickerMode *)self calendar];
  v12 = [v13 calendarIdentifier];
  self->_isUsingJapaneseCalendar = [v12 isEqualToString:*MEMORY[0x1E695D898]];
}

- (void)resetComponentWidths
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"_UIDatePickerMode.m" lineNumber:643 description:{@"%s must be overridden by subclasses", "-[_UIDatePickerMode resetComponentWidths]"}];
}

- (double)totalComponentWidth
{
  v3 = [(_UIDatePickerMode *)self font];
  [(_UIDatePickerMode *)self totalComponentWidthWithFont:v3];
  v5 = v4;

  return v5;
}

- (double)totalComponentWidthWithFont:(id)a3
{
  v4 = a3;
  v5 = [(_UIDatePickerMode *)self elements];
  v6 = [(_UIDatePickerMode *)self numberOfComponents];
  if (v6)
  {
    v7 = v6;
    v8 = 0.0;
    do
    {
      v9 = *v5++;
      [(_UIDatePickerMode *)self widthForCalendarUnit:v9 font:v4 maxWidth:1.79769313e308];
      v8 = v8 + v10;
      --v7;
    }

    while (v7);
  }

  else
  {
    v8 = 0.0;
  }

  return v8;
}

- (int64_t)_incrementForStaggeredTimeIntervals
{
  v3 = [(_UIDatePickerMode *)self datePickerView];
  v4 = [v3 staggerTimeIntervals];

  if (!v4)
  {
    return 1;
  }

  return [(_UIDatePickerMode *)self minuteInterval];
}

- (unint64_t)nextUnitLargerThanUnit:(unint64_t)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"_UIDatePickerMode.m" lineNumber:668 description:{@"%s must be overridden by subclasses", "-[_UIDatePickerMode nextUnitLargerThanUnit:]"}];

  return 0x7FFFFFFFFFFFFFFFLL;
}

- (unint64_t)nextUnitSmallerThanUnit:(unint64_t)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"_UIDatePickerMode.m" lineNumber:673 description:{@"%s must be overridden by subclasses", "-[_UIDatePickerMode nextUnitSmallerThanUnit:]"}];

  return 0x7FFFFFFFFFFFFFFFLL;
}

- (id)_dateByEnsuringValue:(int64_t)a3 forCalendarUnit:(unint64_t)a4
{
  if (a4 != 8 || (v7 = objc_alloc_init(MEMORY[0x1E695DF10]), [v7 setDay:1], objc_msgSend(v7, "setMonth:", a3), objc_msgSend(v7, "setYear:", -[_UIDatePickerMode _yearlessYearForMonth:](self, "_yearlessYearForMonth:", a3)), -[_UIDatePickerMode calendar](self, "calendar"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "dateFromComponents:", v7), v9 = objc_claimAutoreleasedReturnValue(), v8, v7, !v9))
  {
    v10 = [(_UIDatePickerMode *)self todayDateComponents];
    v11 = [v10 copy];

    v12 = [(_UIDatePickerMode *)self nextUnitSmallerThanUnit:a4];
    if (v12 != 0x7FFFFFFFFFFFFFFFLL)
    {
      for (i = v12; i != 0x7FFFFFFFFFFFFFFFLL; i = [(_UIDatePickerMode *)self nextUnitSmallerThanUnit:i])
      {
        v14 = [(_UIDatePickerMode *)self calendar];
        v15 = [v14 maximumRangeOfUnit:i];

        _UIDateComponentsSetValue(v11, i, v15);
      }
    }

    v16 = [(_UIDatePickerMode *)self nextUnitLargerThanUnit:a4];
    v17 = [(_UIDatePickerMode *)self calendar];
    v18 = [v17 maximumRangeOfUnit:v16];
    v20 = v19;

    if (v16 == 0x7FFFFFFFFFFFFFFFLL)
    {
      _UIDateComponentsSetValue(v11, a4, a3);
      v27 = [(_UIDatePickerMode *)self calendar];
      v9 = [v27 dateFromComponents:v11];
    }

    else
    {
      if (v16 == 4)
      {
        v18 = [v11 year];
        v20 = 30;
      }

      if (v18 >= v18 + v20)
      {
        v9 = 0;
      }

      else
      {
        v9 = 0;
        v21 = v20 - 1;
        do
        {
          v22 = v11;
          v23 = v9;
          v24 = v21;
          _UIDateComponentsSetValue(v11, a4, a3);
          _UIDateComponentsSetValue(v11, v16, v18);
          v25 = [(_UIDatePickerMode *)self calendar];
          v9 = [v25 dateFromComponents:v22];

          v26 = [(_UIDatePickerMode *)self calendar];
          v11 = [v26 components:a4 fromDate:v9];

          if (_UIDateComponentsGetValue(v11, a4) == a3)
          {
            break;
          }

          ++v18;
          v21 = v24 - 1;
        }

        while (v24);
      }
    }
  }

  return v9;
}

- (id)_dateForYearRow:(int64_t)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v5 setYear:a3];
  v6 = [(_UIDatePickerMode *)self calendar];
  v7 = [(_UIDatePickerMode *)self baseDate];
  v8 = [v6 dateByAddingComponents:v5 toDate:v7 options:0];

  return v8;
}

- (int64_t)hourForRow:(int64_t)a3
{
  v4 = [(_UIDatePickerMode *)self rangeForCalendarUnit:32];
  if (a3 % v5 + v4 == 24)
  {
    return 0;
  }

  else
  {
    return a3 % v5 + v4;
  }
}

- (int64_t)yearForRow:(int64_t)a3
{
  v4 = [(_UIDatePickerMode *)self _dateForYearRow:a3];
  v5 = [(_UIDatePickerMode *)self calendar];
  v6 = [v5 components:4 fromDate:v4];

  v7 = [v6 year];
  return v7;
}

- (int64_t)eraForYearRow:(int64_t)a3
{
  v4 = [(_UIDatePickerMode *)self _dateForYearRow:a3];
  v5 = [(_UIDatePickerMode *)self calendar];
  v6 = [v5 components:2 fromDate:v4];

  v7 = [v6 era];
  return v7;
}

- (int64_t)valueForRow:(int64_t)a3 inCalendarUnit:(unint64_t)a4
{
  if (a4 > 31)
  {
    if (a4 > 127)
    {
      if (a4 == 0x10000)
      {
        return a3;
      }

      if (a4 == 128)
      {

        return [(_UIDatePickerMode *)self secondForRow:?];
      }
    }

    else
    {
      if (a4 == 32)
      {

        return [(_UIDatePickerMode *)self hourForRow:?];
      }

      if (a4 == 64)
      {

        return [(_UIDatePickerMode *)self minuteForRow:?];
      }
    }

LABEL_33:
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"_UIDatePickerMode.m" lineNumber:813 description:{@"attempt to get value for row (%ld) of invalid calendar unit (%lu)", a3, a4}];

    return a3;
  }

  if (a4 > 7)
  {
    if (a4 == 8)
    {

      return [(_UIDatePickerMode *)self monthForRow:?];
    }

    if (a4 == 16)
    {

      return [(_UIDatePickerMode *)self dayForRow:?];
    }

    goto LABEL_33;
  }

  if (a4 != 2)
  {
    if (a4 == 4)
    {

      return [(_UIDatePickerMode *)self yearForRow:?];
    }

    goto LABEL_33;
  }

  return [(_UIDatePickerMode *)self eraForYearRow:?];
}

- (id)dateForRow:(int64_t)a3 inCalendarUnit:(unint64_t)a4
{
  if (a4 == 4 || a4 == 2)
  {
    v4 = [(_UIDatePickerMode *)self _dateForYearRow:a3];
  }

  else
  {
    v4 = [(_UIDatePickerMode *)self _dateByEnsuringValue:[(_UIDatePickerMode *)self valueForRow:a3 inCalendarUnit:a4] forCalendarUnit:a4];
  }

  return v4;
}

- (id)dateFormatForCalendarUnit:(unint64_t)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"_UIDatePickerMode.m" lineNumber:831 description:{@"%s must be overridden by subclasses", "-[_UIDatePickerMode dateFormatForCalendarUnit:]"}];

  return 0;
}

- (id)titleForRow:(int64_t)a3 inComponent:(int64_t)a4
{
  if (a3 < 0 || [(_UIDatePickerMode *)self numberOfRowsInComponent:a4]< a3)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"_UIDatePickerMode.m" lineNumber:836 description:{@"Invalid parameter not satisfying: %@", @"row >= 0 && row <= [self numberOfRowsInComponent:component]"}];
  }

  v8 = [(_UIDatePickerMode *)self calendarUnitForComponent:a4];
  if (v8 == 0x10000)
  {
    if (a3)
    {
      [(_UIDatePickerMode *)self pmString];
    }

    else
    {
      [(_UIDatePickerMode *)self amString];
    }
    v12 = ;
  }

  else
  {
    v9 = v8;
    v10 = [(_UIDatePickerMode *)self dateForRow:a3 inCalendarUnit:v8];
    v11 = [(_UIDatePickerMode *)self dateFormatterForCalendarUnit:v9];
    v12 = [v11 stringFromDate:v10];
  }

  return v12;
}

- (int64_t)titleAlignmentForCalendarUnit:(unint64_t)a3
{
  v5 = [(_UIDatePickerMode *)self componentForCalendarUnit:16];
  v6 = v5 < [(_UIDatePickerMode *)self componentForCalendarUnit:8];
  v7 = [(_UIDatePickerMode *)self _style];
  v8 = [v7 titleAlignmentForCalendarUnit:a3 datePickerMode:-[_UIDatePickerMode datePickerMode](self dayIsBeforeMonth:{"datePickerMode"), v6}];

  return v8;
}

- (_NSRange)rangeForCalendarUnit:(unint64_t)a3
{
  if (a3 > 63)
  {
    if (a3 == 64 || a3 == 128)
    {
      location = 0;
      length = 60;
      goto LABEL_17;
    }

    if (a3 == 0x10000)
    {
      location = 0;
      length = 2;
      goto LABEL_17;
    }

LABEL_15:
    location = 0;
    length = 10000;
    goto LABEL_17;
  }

  if (a3 == 8)
  {
    location = self->_maxMonthRange.location;
    length = self->_maxMonthRange.length;
    goto LABEL_17;
  }

  if (a3 == 16)
  {
    location = self->_maxDayRange.location;
    length = self->_maxDayRange.length;
    goto LABEL_17;
  }

  if (a3 != 32)
  {
    goto LABEL_15;
  }

  if ([(_UIDatePickerMode *)self is24Hour:v3])
  {
    length = 24;
  }

  else
  {
    length = 12;
  }

  location = 1;
LABEL_17:
  result.length = length;
  result.location = location;
  return result;
}

- (int64_t)rowForDate:(id)a3 dateComponents:(id)a4 component:(int64_t)a5 currentRow:(int64_t)a6
{
  v10 = a4;
  v11 = a3;
  v12 = [(_UIDatePickerMode *)self calendarUnitForComponent:a5];
  v13 = [(_UIDatePickerMode *)self valueForDate:v11 dateComponents:v10 calendarUnit:v12];

  return [(_UIDatePickerMode *)self rowForValue:v13 forCalendarUnit:v12 currentRow:a6];
}

- (int64_t)valueForDate:(id)a3 dateComponents:(id)a4 calendarUnit:(unint64_t)a5
{
  Value = _UIDateComponentsGetValue(a4, a5);
  if (a5 == 128 || a5 == 64)
  {
    v8 = [(_UIDatePickerMode *)self _incrementForStaggeredTimeIntervals];
    if (v8 >= 2)
    {
      return Value / v8 * v8;
    }
  }

  return Value;
}

- (int64_t)rowForValue:(int64_t)a3 forCalendarUnit:(unint64_t)a4 currentRow:(int64_t)a5
{
  v9 = [(_UIDatePickerMode *)self numberOfRowsForCalendarUnit:a4];
  v10 = [(_UIDatePickerMode *)self rangeForCalendarUnit:a4];
  v12 = v11;
  v13 = a3 - v10;
  if (a4 == 128 || a4 == 64)
  {
    v12 = v11 / [(_UIDatePickerMode *)self _incrementForStaggeredTimeIntervals];
    v13 /= [(_UIDatePickerMode *)self _incrementForStaggeredTimeIntervals];
  }

  if (v9 != 10000)
  {
    return v13;
  }

  if (v12 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = v12;
  }

  v15 = a5 / v14 * v14;
  v16 = v15 + v13;
  v17 = v15 - v14 + v13;
  v18 = v13 + v14 + v15;
  v19 = a5 - v16;
  if (a5 - v16 < 0)
  {
    v19 = v16 - a5;
  }

  v20 = a5 - v17;
  if (a5 - v17 < 0)
  {
    v20 = v17 - a5;
  }

  v21 = a5 - v18;
  if (a5 - v18 < 0)
  {
    v21 = v18 - a5;
  }

  if (v20 <= v21 && v20 <= v19)
  {
    v18 = v17;
  }

  if (v19 > v20 || v19 > v21)
  {
    result = v18;
  }

  else
  {
    result = v16;
  }

  if (result < 10 * v14 || result >= (10000 - 10 * v14))
  {
    return v13 + 5000 / v14 * v14;
  }

  return result;
}

- (void)loadDate:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  minimumDate = self->_minimumDate;
  if (minimumDate)
  {
    v28 = v6;
    v8 = [(NSDate *)minimumDate earlierDate:v6];

    v6 = v28;
    if (v8 == v28)
    {
      v9 = self->_minimumDate;

      v6 = v9;
    }
  }

  maximumDate = self->_maximumDate;
  v29 = v6;
  if (maximumDate)
  {
    v11 = [(NSDate *)maximumDate laterDate:v6];

    if (v11 == v29)
    {
      v12 = self->_maximumDate;

      v29 = v12;
    }
  }

  v13 = [(_UIDatePickerMode *)self calendar];
  v14 = [v13 components:-[_UIDatePickerMode displayedCalendarUnits](self fromDate:{"displayedCalendarUnits"), v29}];

  [(_UIDatePickerMode *)self setOriginatingDate:v29];
  v15 = [(_UIDatePickerMode *)self datePickerView];
  v16 = [v15 _soundsEnabled];

  if (!v4)
  {
    v17 = [(_UIDatePickerMode *)self datePickerView];
    [v17 setSoundsEnabled:0];
  }

  v18 = [(_UIDatePickerMode *)self numberOfComponents];
  if (v18 >= 1)
  {
    v19 = v18;
    for (i = 0; i != v19; ++i)
    {
      v21 = [(_UIDatePickerMode *)self datePickerView];
      v22 = [v21 selectedRowInComponent:i];

      v23 = [(_UIDatePickerMode *)self rowForDate:v29 dateComponents:v14 component:i currentRow:v22];
      v24 = v23 & ~(v23 >> 63);
      v25 = [(_UIDatePickerMode *)self datePickerView];
      [v25 selectRow:v24 inComponent:i animated:v4];
    }
  }

  [(_UIDatePickerMode *)self setSelectedDateComponents:0];
  v26 = [(_UIDatePickerMode *)self datePickerView];
  [v26 setSoundsEnabled:v16];

  v27 = [(_UIDatePickerMode *)self datePickerView];
  [v27 _updateLabels:v4];
}

- (void)_updateSelectedDateComponentsWithNewValueInComponent:(int64_t)a3 usingSelectionBarValue:(BOOL)a4
{
  v34 = a4;
  p_selectedDateComponents = &self->_selectedDateComponents;
  obj = self->_selectedDateComponents;
  if (!obj)
  {
    v7 = [(_UIDatePickerMode *)self calendar];
    v8 = [(_UIDatePickerMode *)self originatingDate];
    obj = [v7 components:254 fromDate:v8];
  }

  v9 = [(_UIDatePickerMode *)self numberOfComponents];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = 0x7FFFFFFFFFFFFFFFLL;
    while (1)
    {
      v13 = v12;
      if (a3 != 0x7FFFFFFFFFFFFFFFLL && a3 != v11)
      {
        goto LABEL_24;
      }

      v15 = [(_UIDatePickerMode *)self calendarUnitForComponent:v11];
      v12 = v11;
      if (v15 != 0x10000)
      {
        break;
      }

LABEL_25:
      if (v10 == ++v11)
      {
        if (v12 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v31 = [(_UIDatePickerMode *)self datePickerView];
          v32 = [v31 selectedRowInComponent:v12];

          _UIDateComponentsSetValue(obj, 0x10000, v32);
        }

        goto LABEL_31;
      }
    }

    v16 = v15;
    v17 = [(_UIDatePickerMode *)self datePickerView];
    v18 = v17;
    if (v34)
    {
      v19 = [v17 _selectionBarRowInComponent:v11];
    }

    else
    {
      v19 = [v17 selectedRowInComponent:v11];
    }

    v20 = v19;

    v21 = [(_UIDatePickerMode *)self dateForRow:v20 inCalendarUnit:v16];
    if (v16 == 536)
    {
      v24 = [(_UIDatePickerMode *)self calendar];
      v23 = [v24 components:30 fromDate:v21];

      -[NSDateComponents setEra:](obj, "setEra:", [v23 era]);
      -[NSDateComponents setYear:](obj, "setYear:", [v23 year]);
      -[NSDateComponents setMonth:](obj, "setMonth:", [v23 month]);
      -[NSDateComponents setDay:](obj, "setDay:", [v23 day]);
    }

    else
    {
      if (v16 != 4)
      {
        v25 = [(_UIDatePickerMode *)self valueForRow:v20 inCalendarUnit:v16];
        if (v16 == 32 && ![(_UIDatePickerMode *)self is24Hour])
        {
          Value = _UIDateComponentsGetValue(obj, 0x10000);
          v30 = obj;
          [(NSDateComponents *)v30 setHour:v25];

          if (Value == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_23;
          }

          v26 = v30;
          v27 = 0x10000;
          v28 = Value;
        }

        else
        {
          v26 = obj;
          v27 = v16;
          v28 = v25;
        }

        _UIDateComponentsSetValue(v26, v27, v28);
LABEL_23:

LABEL_24:
        v12 = v13;
        goto LABEL_25;
      }

      v22 = [(_UIDatePickerMode *)self calendar];
      v23 = [v22 components:6 fromDate:v21];

      -[NSDateComponents setYear:](obj, "setYear:", [v23 year]);
      -[NSDateComponents setEra:](obj, "setEra:", [v23 era]);
    }

    goto LABEL_23;
  }

LABEL_31:
  v33 = [(_UIDatePickerMode *)self timeZone];
  [(NSDateComponents *)obj setTimeZone:v33];

  if (!self->_selectedDateComponents)
  {
    objc_storeStrong(p_selectedDateComponents, obj);
  }
}

- (NSDateComponents)selectedDateComponents
{
  selectedDateComponents = self->_selectedDateComponents;
  if (!selectedDateComponents)
  {
    [(_UIDatePickerMode *)self updateSelectedDateComponentsWithNewValueInComponent:0x7FFFFFFFFFFFFFFFLL];
    selectedDateComponents = self->_selectedDateComponents;
  }

  v4 = [(NSDateComponents *)selectedDateComponents copy];

  return v4;
}

- (int64_t)_numberOfDaysInDateComponents:(id)a3
{
  v4 = a3;
  [v4 setDay:1];
  v5 = [(_UIDatePickerMode *)self calendar];
  v6 = [v5 dateFromComponents:v4];

  [v5 rangeOfUnit:16 inUnit:8 forDate:v6];
  v8 = v7;
  if (v7 == 1)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF10]);
    [v9 setMonth:1];
    [v9 setDay:-1];
    v10 = [v5 dateByAddingComponents:v9 toDate:v6 options:0];
    v11 = [v5 components:16 fromDate:v10];
    v8 = [v11 day];
  }

  return v8;
}

- (BOOL)_monthExists:(int64_t)a3 inYear:(int64_t)a4
{
  v7 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v7 setMonth:a3];
  [v7 setYear:a4];
  [v7 setDay:1];
  v8 = [(_UIDatePickerMode *)self calendar];
  v9 = [v8 dateFromComponents:v7];

  v10 = [(_UIDatePickerMode *)self calendar];
  v11 = [v10 components:8 fromDate:v9];

  LOBYTE(a3) = [v11 month] == a3;
  return a3;
}

- (id)dateComponentsByRestrictingSelectedComponents:(id)a3 withLastManipulatedColumn:(int64_t)a4
{
  v7 = a3;
  v8 = 0x7FFFFFFFFFFFFFFFLL;
  if (a4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [(_UIDatePickerMode *)self calendarUnitForComponent:a4];
  }

  v9 = [(_UIDatePickerMode *)self calendar];
  v10 = [v9 dateFromComponents:v7];

  if (self->_minimumDate)
  {
    v11 = [v10 earlierDate:?];

    if (v11 == v10)
    {
      minimumDateComponents = self->_minimumDateComponents;
LABEL_13:
      v14 = minimumDateComponents;

      goto LABEL_14;
    }
  }

  if (self->_maximumDate)
  {
    v12 = [v10 laterDate:?];

    if (v12 == v10)
    {
      minimumDateComponents = self->_maximumDateComponents;
      goto LABEL_13;
    }
  }

  if (v8 == 0x7FFFFFFFFFFFFFFFLL || self->_isUsingJapaneseCalendar)
  {
    v13 = [(_UIDatePickerMode *)self calendar];
    v14 = [v13 components:-[_UIDatePickerMode displayedCalendarUnits](self fromDate:{"displayedCalendarUnits"), v10}];

LABEL_10:
    goto LABEL_14;
  }

  if (v8 == 8 || v8 == 4)
  {
    if (-[_UIDatePickerMode _monthExists:inYear:](self, "_monthExists:inYear:", [v7 month], objc_msgSend(v7, "year")))
    {
      v8 = 16;
    }

    else
    {
      v8 = 8;
    }
  }

  if (([(_UIDatePickerMode *)self displayedCalendarUnits]& v8) == 0)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"_UIDatePickerMode.m" lineNumber:1160 description:{@"attempting to manipulate unknown unit: %lu in mode: %@", v8, self}];
  }

  if (v8 == 8)
  {
    v20 = [v7 month];
    v14 = [v7 copy];

    [(NSDateComponents *)v14 setMonth:v20 - 1];
  }

  else
  {
    if (v8 != 16)
    {
      v13 = [(_UIDatePickerMode *)self datePickerView];
      v21 = [v13 data];
      v14 = [v21 lastSelectedDateComponents];

      goto LABEL_10;
    }

    v17 = [v7 day];
    v18 = [(_UIDatePickerMode *)self _numberOfDaysInDateComponents:v7];
    v14 = [v7 copy];

    if (v17 <= v18)
    {
      v19 = v17 - 1;
      if (v17 < 1)
      {
        v19 = v17;
      }
    }

    else
    {
      v19 = v18;
    }

    [(NSDateComponents *)v14 setDay:v19];
  }

LABEL_14:

  return v14;
}

- (void)updateDateForNewDateRange
{
  WeakRetained = objc_loadWeakRetained(&self->_datePickerView);
  v4 = [WeakRetained data];
  v23 = [v4 minimumDate];

  v5 = objc_loadWeakRetained(&self->_datePickerView);
  v6 = [v5 data];
  v7 = [v6 maximumDate];

  minimumDateComponents = self->_minimumDateComponents;
  self->_minimumDateComponents = 0;

  minimumDate = self->_minimumDate;
  self->_minimumDate = 0;

  maximumDateComponents = self->_maximumDateComponents;
  self->_maximumDateComponents = 0;

  maximumDate = self->_maximumDate;
  self->_maximumDate = 0;

  v12 = [(_UIDatePickerMode *)self displayedCalendarUnits];
  if (v23)
  {
    v13 = [(_UIDatePickerMode *)self calendar];
    v14 = [v13 components:v12 fromDate:v23];

    if (v7)
    {
LABEL_3:
      v15 = [(_UIDatePickerMode *)self calendar];
      v16 = [v15 components:v12 fromDate:v7];

      if (v14 && v16 && (_UIDatePickerCompareDateComponents(v14, v16, v12) + 1) > 1)
      {
        goto LABEL_13;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v14 = 0;
    if (v7)
    {
      goto LABEL_3;
    }
  }

  v16 = 0;
LABEL_9:
  objc_storeStrong(&self->_minimumDateComponents, v14);
  objc_storeStrong(&self->_maximumDateComponents, v16);
  if (self->_minimumDateComponents)
  {
    v17 = [(_UIDatePickerMode *)self calendar];
    v18 = [v17 dateFromComponents:self->_minimumDateComponents];
    v19 = self->_minimumDate;
    self->_minimumDate = v18;
  }

  if (self->_maximumDateComponents)
  {
    v20 = [(_UIDatePickerMode *)self calendar];
    v21 = [v20 dateFromComponents:self->_maximumDateComponents];
    v22 = self->_maximumDate;
    self->_maximumDate = v21;
  }

LABEL_13:
}

- (id)viewForRow:(int64_t)a3 inComponent:(int64_t)a4 reusingView:(id)a5
{
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = [[UIDatePickerContentView alloc] initWithMode:self];
  }

  v10 = v9;
  v11 = [(_UIDatePickerMode *)self calendarUnitForComponent:a4];
  [(UIDatePickerContentView *)v10 setUseDigitFont:(v11 & 0xE0) != 0];
  v12 = [(UIDatePickerContentView *)v10 titleLabel];
  v13 = [(_UIDatePickerMode *)self fontForCalendarUnit:v11];
  [v12 setFont:v13];

  [(UIDatePickerContentView *)v10 setTitleAlignment:[(_UIDatePickerMode *)self titleAlignmentForCalendarUnit:v11]];
  v14 = [(UIDatePickerContentView *)v10 titleLabel];
  v15 = [(_UIDatePickerMode *)self titleForRow:a3 inComponent:a4];
  [v14 setText:v15];

  v16 = [(UIDatePickerContentView *)v10 titleLabel];
  WeakRetained = objc_loadWeakRetained(&self->_datePickerView);
  v18 = [WeakRetained _textColor];
  [v16 setTextColor:v18];

  v19 = [(UIDatePickerContentView *)v10 titleLabel];
  v20 = objc_loadWeakRetained(&self->_datePickerView);
  v21 = [v20 _textShadowColor];
  [v19 setShadowColor:v21];

  if (v11 != 32)
  {
    if (v11 == 0x10000)
    {
      [(UIDatePickerContentView *)v10 setIsAmPm:1];
    }

    goto LABEL_8;
  }

  if (![(_UIDatePickerMode *)self isTimeIntervalMode])
  {
LABEL_8:
    v22 = [(UIDatePickerContentView *)v10 titleLabel];
    [v22 setEnabled:{-[_UIDatePickerMode _shouldEnableValueForRow:column:](self, "_shouldEnableValueForRow:column:", a3, a4)}];
  }

  v23 = [(_UIDatePickerMode *)self datePickerView];
  v24 = [v23 highlightsToday];

  if (v24 && v11 <= 0x10 && ((1 << v11) & 0x10110) != 0)
  {
    v25 = [(_UIDatePickerMode *)self valueForRow:a3 inCalendarUnit:v11];
    v26 = [(_UIDatePickerMode *)self todayDateComponents];
    Value = _UIDateComponentsGetValue(v26, v11);

    if (v11 == 4)
    {
      v28 = [(_UIDatePickerMode *)self eraForYearRow:a3];
      v29 = [(_UIDatePickerMode *)self todayDateComponents];
      v30 = [v29 era];

      if (v25 != Value || v28 != v30)
      {
        goto LABEL_18;
      }
    }

    else if (v25 != Value)
    {
      goto LABEL_18;
    }

    v31 = [(UIDatePickerContentView *)v10 titleLabel];
    v32 = [(_UIDatePickerMode *)self todayTextColor];
    [v31 setTextColor:v32];
  }

LABEL_18:

  return v10;
}

- (BOOL)areValidDateComponents:(id)a3 comparingUnits:(int64_t)a4
{
  v6 = a3;
  v7 = [(_UIDatePickerMode *)self calendar];
  v8 = [v7 dateFromComponents:v6];

  if ((a4 & 0x10000) != 0)
  {
    v9 = a4 & 0xFFFFFFFFFFFEFFDFLL | 0x20;
  }

  else
  {
    v9 = a4;
  }

  v10 = [(_UIDatePickerMode *)self calendar];
  v11 = [v10 components:v9 fromDate:v8];

  v12 = _UIDatePickerCompareDateComponents(v6, v11, a4);
  v13 = v12 == 0;
  minimumDateComponents = self->_minimumDateComponents;
  if (minimumDateComponents && !v12)
  {
    v13 = (_UIDatePickerCompareDateComponents(minimumDateComponents, v6, a4) + 1) < 2;
  }

  maximumDateComponents = self->_maximumDateComponents;
  if (maximumDateComponents && v13)
  {
    LOBYTE(v13) = _UIDatePickerCompareDateComponents(maximumDateComponents, v6, a4) < 2;
  }

  return v13;
}

- (BOOL)_isComponentScrolling:(int64_t)a3
{
  v4 = [(_UIDatePickerMode *)self datePickerView];
  v5 = [v4 tableViewForColumn:a3];

  if ([v5 isDragging])
  {
    v6 = 1;
  }

  else
  {
    v6 = [v5 isDecelerating];
  }

  return v6;
}

- (BOOL)_scrollingAnyColumnExcept:(int)a3
{
  v5 = [(_UIDatePickerMode *)self numberOfComponents];
  if (v5)
  {
    v6 = 0;
    while (a3 == v6 || ![(_UIDatePickerMode *)self _isComponentScrolling:v6])
    {
      if ([(_UIDatePickerMode *)self numberOfComponents]<= ++v6)
      {
        LOBYTE(v5) = 0;
        return v5;
      }
    }

    LOBYTE(v5) = 1;
  }

  return v5;
}

- (BOOL)_shouldEnableValueForRow:(int64_t)a3 column:(int64_t)a4
{
  v7 = [(_UIDatePickerMode *)self calendarUnitForComponent:a4];
  v8 = [(_UIDatePickerMode *)self _shouldEnableValueForRow:a3 inComponent:a4 calendarUnit:v7];
  v9 = __ROR8__(v7 - 8, 3);
  if (v9 > 2)
  {
    if (v9 != 3 && v9 != 7)
    {
LABEL_13:
      if (v7 != 0x10000)
      {
        return v8 & 1;
      }
    }

LABEL_10:
    v11 = [(_UIDatePickerMode *)self _scrollingAnyColumnExcept:a4];
    goto LABEL_11;
  }

  if (v9)
  {
    if (v9 != 1)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  v13 = [(_UIDatePickerMode *)self componentForCalendarUnit:4];
  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return v8 & 1;
  }

  v11 = [(_UIDatePickerMode *)self _isComponentScrolling:v13];
LABEL_11:
  v8 |= v11;
  return v8 & 1;
}

- (BOOL)_shouldEnableValueForRow:(int64_t)a3 inComponent:(int64_t)a4 calendarUnit:(unint64_t)a5
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"_UIDatePickerMode.m" lineNumber:1347 description:{@"%s must be overridden by subclasses", "-[_UIDatePickerMode _shouldEnableValueForRow:inComponent:calendarUnit:]"}];

  return 0;
}

- (void)updateEnabledStateOfViewForRow:(int64_t)a3 inComponent:(int64_t)a4
{
  v7 = [(_UIDatePickerMode *)self datePickerView];
  v9 = [v7 viewForRow:a3 forComponent:a4];

  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v9 titleLabel];
      [v8 setEnabled:{-[_UIDatePickerMode _shouldEnableValueForRow:column:](self, "_shouldEnableValueForRow:column:", a3, a4)}];
    }
  }
}

- (_UIDatePickerView)datePickerView
{
  WeakRetained = objc_loadWeakRetained(&self->_datePickerView);

  return WeakRetained;
}

@end