@interface _UIDatePickerMode
+ (id)_datePickerModeWithFormatString:(id)string datePickerView:(id)view;
+ (id)_datePickerModeWithMode:(int64_t)mode datePickerView:(id)view;
+ (id)newDateFromGregorianYear:(int64_t)year month:(int64_t)month day:(int64_t)day timeZone:(id)zone;
+ (int64_t)datePickerMode;
+ (unint64_t)extractableCalendarUnits;
+ (void)initialize;
- (BOOL)_isComponentScrolling:(int64_t)scrolling;
- (BOOL)_monthExists:(int64_t)exists inYear:(int64_t)year;
- (BOOL)_scrollingAnyColumnExcept:(int)except;
- (BOOL)_shouldEnableValueForRow:(int64_t)row column:(int64_t)column;
- (BOOL)_shouldEnableValueForRow:(int64_t)row inComponent:(int64_t)component calendarUnit:(unint64_t)unit;
- (BOOL)areValidDateComponents:(id)components comparingUnits:(int64_t)units;
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
- (_NSRange)rangeForCalendarUnit:(unint64_t)unit;
- (_UIDatePickerMode)init;
- (_UIDatePickerView)datePickerView;
- (double)componentWidthForTwoDigitCalendarUnit:(unint64_t)unit font:(id)font maxWidth:(double)width;
- (double)todaySinceReferenceDate;
- (double)totalComponentWidth;
- (double)totalComponentWidthWithFont:(id)font;
- (double)widthForCalendarUnit:(unint64_t)unit font:(id)font maxWidth:(double)width;
- (double)widthForComponent:(int64_t)component maxWidth:(double)width;
- (id)_dateByEnsuringValue:(int64_t)value forCalendarUnit:(unint64_t)unit;
- (id)_dateForYearRow:(int64_t)row;
- (id)_style;
- (id)calendar;
- (id)calendarForFormatters;
- (id)dateComponentsByRestrictingSelectedComponents:(id)components withLastManipulatedColumn:(int64_t)column;
- (id)dateForRow:(int64_t)row inCalendarUnit:(unint64_t)unit;
- (id)dateFormatForCalendarUnit:(unint64_t)unit;
- (id)dateFormatterForCalendarUnit:(unint64_t)unit;
- (id)fontForCalendarUnit:(unint64_t)unit;
- (id)locale;
- (id)timeZone;
- (id)titleForRow:(int64_t)row inComponent:(int64_t)component;
- (id)viewForRow:(int64_t)row inComponent:(int64_t)component reusingView:(id)view;
- (int64_t)_incrementForStaggeredTimeIntervals;
- (int64_t)_numberOfDaysInDateComponents:(id)components;
- (int64_t)_yearlessYearForMonth:(int64_t)month;
- (int64_t)componentForCalendarUnit:(unint64_t)unit;
- (int64_t)datePickerMode;
- (int64_t)displayedCalendarUnits;
- (int64_t)eraForYearRow:(int64_t)row;
- (int64_t)hourForRow:(int64_t)row;
- (int64_t)numberOfRowsForCalendarUnit:(unint64_t)unit;
- (int64_t)numberOfRowsInComponent:(int64_t)component;
- (int64_t)rowForDate:(id)date dateComponents:(id)components component:(int64_t)component currentRow:(int64_t)row;
- (int64_t)rowForValue:(int64_t)value forCalendarUnit:(unint64_t)unit currentRow:(int64_t)row;
- (int64_t)titleAlignmentForCalendarUnit:(unint64_t)unit;
- (int64_t)valueForDate:(id)date dateComponents:(id)components calendarUnit:(unint64_t)unit;
- (int64_t)valueForRow:(int64_t)row inCalendarUnit:(unint64_t)unit;
- (int64_t)yearForRow:(int64_t)row;
- (int64_t)yearsSinceBaseDate;
- (unint64_t)calendarUnitForComponent:(int64_t)component;
- (unint64_t)elements;
- (unint64_t)nextUnitLargerThanUnit:(unint64_t)unit;
- (unint64_t)nextUnitSmallerThanUnit:(unint64_t)unit;
- (unint64_t)numberOfComponents;
- (void)_shouldReset:(id)reset;
- (void)_updateSelectedDateComponentsWithNewValueInComponent:(int64_t)component usingSelectionBarValue:(BOOL)value;
- (void)clearBaseDate;
- (void)dealloc;
- (void)fixUpElementsForRTL;
- (void)invalidateTodayTextColor;
- (void)loadDate:(id)date animated:(BOOL)animated;
- (void)noteCalendarChanged;
- (void)resetComponentWidths;
- (void)setBaseDateComponents:(id)components;
- (void)setElements:(unint64_t *)elements;
- (void)setTodayDateComponents:(id)components;
- (void)updateDateForNewDateRange;
- (void)updateEnabledStateOfViewForRow:(int64_t)row inComponent:(int64_t)component;
@end

@implementation _UIDatePickerMode

+ (void)initialize
{
  if (initialize_componentsUnitOrder_onceToken != -1)
  {
    dispatch_once(&initialize_componentsUnitOrder_onceToken, &__block_literal_global_474);
  }
}

+ (id)newDateFromGregorianYear:(int64_t)year month:(int64_t)month day:(int64_t)day timeZone:(id)zone
{
  v9 = MEMORY[0x1E695DF10];
  zoneCopy = zone;
  v11 = objc_alloc_init(v9);
  [v11 setYear:year];
  [v11 setMonth:month];
  [v11 setDay:day];
  [v11 setTimeZone:zoneCopy];

  v12 = objc_alloc(MEMORY[0x1E695DEE8]);
  v13 = [v12 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  v14 = [v13 dateFromComponents:v11];
  v15 = MEMORY[0x18CFE4640]();
  v16 = CFDateCreate(0, v15);

  return v16;
}

+ (int64_t)datePickerMode
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDatePickerMode.m" lineNumber:161 description:{@"%s must be overridden by subclasses", "+[_UIDatePickerMode datePickerMode]"}];

  return 0;
}

+ (id)_datePickerModeWithMode:(int64_t)mode datePickerView:(id)view
{
  viewCopy = view;
  v6 = 0;
  if (mode <= 3)
  {
    if (mode < 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (mode > 4269)
  {
    if (mode == 4270 || mode == 4271)
    {
      goto LABEL_10;
    }
  }

  else if (mode == 4 || mode == 4269)
  {
LABEL_10:
    v6 = objc_opt_class();
  }

LABEL_11:
  v7 = objc_alloc_init(v6);
  [v7 setDatePickerView:viewCopy];
  [v7 noteCalendarChanged];

  return v7;
}

+ (id)_datePickerModeWithFormatString:(id)string datePickerView:(id)view
{
  viewCopy = view;
  stringCopy = string;
  v7 = [[_UIDatePickerMode_Custom alloc] initWithFormatString:stringCopy datePickerView:viewCopy];

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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      [currentHandler handleFailureInMethod:a2 object:v3 file:@"_UIDatePickerMode.m" lineNumber:202 description:{@"%@ is an abstract class. You must instantiate on of its subclasses instead.", v8}];

      return 0;
    }

    else
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:v3 selector:sel__shouldReset_ name:@"_UIDatePickerModeShouldResetNotification" object:0];

      [(_UIDatePickerMode *)v3 setMinuteInterval:1];
    }
  }

  return v3;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"_UIDatePickerModeShouldResetNotification" object:0];

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

- (int64_t)_yearlessYearForMonth:(int64_t)month
{
  calendar = [(_UIDatePickerMode *)self calendar];
  calendarIdentifier = [calendar calendarIdentifier];

  if ([calendarIdentifier isEqualToString:*MEMORY[0x1E695D860]])
  {
    v5 = 6;
  }

  else if ([calendarIdentifier hasPrefix:@"islamic"])
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
  datePickerView = [(_UIDatePickerMode *)self datePickerView];
  data = [datePickerView data];
  followsSystemHourCycle = [data followsSystemHourCycle];

  return followsSystemHourCycle;
}

- (id)calendar
{
  datePickerView = [(_UIDatePickerMode *)self datePickerView];
  data = [datePickerView data];
  effectiveCalendar = [data effectiveCalendar];

  return effectiveCalendar;
}

- (id)calendarForFormatters
{
  datePickerView = [(_UIDatePickerMode *)self datePickerView];
  data = [datePickerView data];
  formattingCalendar = [data formattingCalendar];

  return formattingCalendar;
}

- (id)locale
{
  datePickerView = [(_UIDatePickerMode *)self datePickerView];
  data = [datePickerView data];
  effectiveLocale = [data effectiveLocale];

  return effectiveLocale;
}

- (id)timeZone
{
  datePickerView = [(_UIDatePickerMode *)self datePickerView];
  data = [datePickerView data];
  timeZone = [data timeZone];

  return timeZone;
}

- (id)_style
{
  datePickerView = [(_UIDatePickerMode *)self datePickerView];
  datePicker = [datePickerView datePicker];
  _style = [datePicker _style];

  return _style;
}

- (void)_shouldReset:(id)reset
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

- (double)componentWidthForTwoDigitCalendarUnit:(unint64_t)unit font:(id)font maxWidth:(double)width
{
  v29[1] = *MEMORY[0x1E69E9840];
  fontCopy = font;
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  date = [MEMORY[0x1E695DF00] date];
  LODWORD(v11) = [currentCalendar rangeOfUnit:unit inUnit:unit >> 1 forDate:date];
  v13 = v12;
  v14 = [currentCalendar components:766 fromDate:date];
  v15 = [(_UIDatePickerMode *)self dateFormatterForCalendarUnit:unit];
  v16 = 0.0;
  if (v13 >= v11)
  {
    v11 = v11;
    v27 = *off_1E70EC918;
    do
    {
      _UIDateComponentsSetValue(v14, unit, v11);
      v17 = [currentCalendar dateFromComponents:v14];

      v18 = [v15 stringFromDate:v17];
      v28 = v27;
      v29[0] = fontCopy;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
      v19 = v13;
      unitCopy = unit;
      v21 = currentCalendar;
      v23 = v22 = fontCopy;
      [v18 sizeWithAttributes:v23];
      v25 = v24;

      fontCopy = v22;
      currentCalendar = v21;
      unit = unitCopy;
      v13 = v19;
      if (v25 >= v16)
      {
        v16 = v25;
      }

      ++v11;
      date = v17;
    }

    while (v19 >= v11);
  }

  else
  {
    v17 = date;
  }

  if (v16 < width)
  {
    width = v16;
  }

  return width;
}

- (int64_t)datePickerMode
{
  v2 = objc_opt_class();

  return [v2 datePickerMode];
}

- (id)dateFormatterForCalendarUnit:(unint64_t)unit
{
  v4 = [(_UIDatePickerMode *)self componentForCalendarUnit:unit];
  if (!self->_dateFormatters)
  {
    array = [MEMORY[0x1E695DF70] array];
    if ([(_UIDatePickerMode *)self numberOfComponents])
    {
      v6 = 0;
      do
      {
        v7 = objc_alloc_init(MEMORY[0x1E696AB78]);
        [v7 setDateStyle:2];
        [v7 setTimeStyle:0];
        locale = [(_UIDatePickerMode *)self locale];
        [v7 setLocale:locale];

        calendarForFormatters = [(_UIDatePickerMode *)self calendarForFormatters];
        [v7 setCalendar:calendarForFormatters];

        timeZone = [(_UIDatePickerMode *)self timeZone];
        [v7 setTimeZone:timeZone];

        [v7 setFormattingContext:2];
        v11 = [(_UIDatePickerMode *)self dateFormatForCalendarUnit:[(_UIDatePickerMode *)self calendarUnitForComponent:v6]];
        [v7 setDateFormat:v11];
        [array addObject:v7];

        ++v6;
      }

      while (v6 < [(_UIDatePickerMode *)self numberOfComponents]);
    }

    v12 = [array copy];
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

- (void)setTodayDateComponents:(id)components
{
  componentsCopy = components;
  if (self->_todayDateComponents != componentsCopy)
  {
    v6 = componentsCopy;
    objc_storeStrong(&self->_todayDateComponents, components);
    componentsCopy = v6;
    self->_yearsSinceBaseDate = 0;
  }
}

- (NSDateComponents)todayDateComponents
{
  todayDateComponents = self->_todayDateComponents;
  if (!todayDateComponents)
  {
    calendar = [(_UIDatePickerMode *)self calendar];
    date = [MEMORY[0x1E695DF00] date];
    v6 = [calendar components:766 fromDate:date];
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
    calendar = [(_UIDatePickerMode *)self calendar];
    todayDateComponents = [(_UIDatePickerMode *)self todayDateComponents];
    v6 = [calendar dateFromComponents:todayDateComponents];

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
    date = [MEMORY[0x1E695DF00] date];
    [(_UIDatePickerMode *)self setOriginatingDate:date];

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

- (void)setBaseDateComponents:(id)components
{
  objc_storeStrong(&self->_baseDateComponents, components);

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
    baseDateComponents = [(_UIDatePickerMode *)self baseDateComponents];
    calendar = [(_UIDatePickerMode *)self calendar];
    v6 = [calendar dateFromComponents:baseDateComponents];
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
    calendar = [(_UIDatePickerMode *)self calendar];
    baseDate = [(_UIDatePickerMode *)self baseDate];
    date = [MEMORY[0x1E695DF00] date];
    v7 = [calendar components:4 fromDate:baseDate toDate:date options:0];

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
    aMSymbol = [v4 AMSymbol];
    v6 = [aMSymbol copy];
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
    pMSymbol = [v4 PMSymbol];
    v6 = [pMSymbol copy];
    v7 = self->_pmString;
    self->_pmString = v6;

    pmString = self->_pmString;
  }

  return pmString;
}

- (id)fontForCalendarUnit:(unint64_t)unit
{
  if (unit == 0x10000)
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
    sizedFont = [(_UIDatePickerMode *)self sizedFont];
    v5 = self->_font;
    self->_font = sizedFont;

    font = self->_font;
  }

  return font;
}

- (UIFont)sizedFont
{
  WeakRetained = objc_loadWeakRetained(&self->_datePickerView);
  traitCollection = [WeakRetained traitCollection];
  v5 = +[UIDatePicker _styleForIdiom:](UIDatePicker, "_styleForIdiom:", [traitCollection userInterfaceIdiom]);

  datePickerView = [(_UIDatePickerMode *)self datePickerView];
  [datePickerView bounds];
  v8 = v7;
  [v5 pickerHorizontalEdgeInset];
  v10 = v8 - (v9 + v9);

  v11 = objc_loadWeakRetained(&self->_datePickerView);
  _style = [v11 _style];
  v13 = objc_loadWeakRetained(&self->_datePickerView);
  traitCollection2 = [v13 traitCollection];
  v15 = [_style centerCellFontWithTraitCollection:traitCollection2];
  [v15 pointSize];
  v17 = v16;

  v18 = 0;
  v19 = v17 + 1;
  do
  {
    v20 = objc_loadWeakRetained(&self->_datePickerView);
    _style2 = [v20 _style];
    v22 = objc_loadWeakRetained(&self->_datePickerView);
    traitCollection3 = [v22 traitCollection];
    v24 = [_style2 centerCellFontWithTraitCollection:traitCollection3];
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
    _style = [WeakRetained _style];
    v6 = objc_loadWeakRetained(&self->_datePickerView);
    traitCollection = [v6 traitCollection];
    v8 = [_style centerCellFontWithTraitCollection:traitCollection];
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
    _style = [WeakRetained _style];
    v6 = objc_loadWeakRetained(&self->_datePickerView);
    traitCollection = [v6 traitCollection];
    v8 = [_style centerCellFontWithTraitCollection:traitCollection];
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
    _textColor = [WeakRetained _textColor];
    v6 = self->_todayTextColor;
    self->_todayTextColor = _textColor;

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

- (double)widthForComponent:(int64_t)component maxWidth:(double)width
{
  if (component < 0 || [(_UIDatePickerMode *)self numberOfComponents]<= component)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDatePickerMode.m" lineNumber:517 description:{@"Invalid parameter not satisfying: %@", @"component >= 0 && component < [self numberOfComponents]"}];
  }

  v8 = [(_UIDatePickerMode *)self calendarUnitForComponent:component];
  font = [(_UIDatePickerMode *)self font];
  [(_UIDatePickerMode *)self widthForCalendarUnit:v8 font:font maxWidth:width];
  v11 = v10;

  return v11;
}

- (double)widthForCalendarUnit:(unint64_t)unit font:(id)font maxWidth:(double)width
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDatePickerMode.m" lineNumber:523 description:{@"%s must be overridden by subclasses", "-[_UIDatePickerMode widthForCalendarUnit:font:maxWidth:]"}];

  return 0.0;
}

+ (unint64_t)extractableCalendarUnits
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDatePickerMode.m" lineNumber:530 description:{@"%s must be overridden by subclasses", "+[_UIDatePickerMode extractableCalendarUnits]"}];

  return 0;
}

- (void)setElements:(unint64_t *)elements
{
  elements = self->_elements;
  if (elements != elements)
  {
    if (elements)
    {
      free(elements);
      self->_elements = 0;
      [(_UIDatePickerMode *)self setNumberOfComponents:0];
    }

    self->_elements = elements;
  }
}

- (unint64_t)elements
{
  result = self->_elements;
  if (!result)
  {
    v6 = 0;
    localizedFormatString = [(_UIDatePickerMode *)self localizedFormatString];
    extractableCalendarUnits = [objc_opt_class() extractableCalendarUnits];
    [(_UIDatePickerMode *)self setElements:_UICopyCalendarUnitsFromFormatString(localizedFormatString, extractableCalendarUnits, &v6)];

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
      _shouldReverseLayoutDirection = [WeakRetained _shouldReverseLayoutDirection];

      if (_shouldReverseLayoutDirection)
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
  elements = [(_UIDatePickerMode *)self elements];
  if (![(_UIDatePickerMode *)self numberOfComponents])
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  do
  {
    v5 |= elements[v4++];
  }

  while (v4 < [(_UIDatePickerMode *)self numberOfComponents]);
  return v5;
}

- (NSString)localizedFormatString
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDatePickerMode.m" lineNumber:589 description:{@"%s must be overridden by subclasses", "-[_UIDatePickerMode localizedFormatString]"}];

  return 0;
}

- (unint64_t)calendarUnitForComponent:(int64_t)component
{
  if ([(_UIDatePickerMode *)self numberOfComponents]<= component)
  {
    return 0;
  }

  else
  {
    return [(_UIDatePickerMode *)self elements][8 * component];
  }
}

- (int64_t)componentForCalendarUnit:(unint64_t)unit
{
  numberOfComponents = [(_UIDatePickerMode *)self numberOfComponents];
  elements = [(_UIDatePickerMode *)self elements];
  if (numberOfComponents < 1)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v7 = elements;
  result = 0;
  while (v7[result] != unit)
  {
    if (numberOfComponents == ++result)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return result;
}

- (int64_t)numberOfRowsInComponent:(int64_t)component
{
  v4 = [(_UIDatePickerMode *)self calendarUnitForComponent:component];

  return [(_UIDatePickerMode *)self numberOfRowsForCalendarUnit:v4];
}

- (int64_t)numberOfRowsForCalendarUnit:(unint64_t)unit
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDatePickerMode.m" lineNumber:613 description:{@"%s must be overridden by subclasses", "-[_UIDatePickerMode numberOfRowsForCalendarUnit:]"}];

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
  calendar = [(_UIDatePickerMode *)self calendar];
  timeZone = [(_UIDatePickerMode *)self timeZone];
  [calendar setTimeZone:timeZone];

  calendar2 = [(_UIDatePickerMode *)self calendar];
  self->_maxDayRange.location = [calendar2 maximumRangeOfUnit:16];
  self->_maxDayRange.length = v9;

  calendar3 = [(_UIDatePickerMode *)self calendar];
  self->_maxMonthRange.location = [calendar3 maximumRangeOfUnit:8];
  self->_maxMonthRange.length = v11;

  calendar4 = [(_UIDatePickerMode *)self calendar];
  calendarIdentifier = [calendar4 calendarIdentifier];
  self->_isUsingJapaneseCalendar = [calendarIdentifier isEqualToString:*MEMORY[0x1E695D898]];
}

- (void)resetComponentWidths
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDatePickerMode.m" lineNumber:643 description:{@"%s must be overridden by subclasses", "-[_UIDatePickerMode resetComponentWidths]"}];
}

- (double)totalComponentWidth
{
  font = [(_UIDatePickerMode *)self font];
  [(_UIDatePickerMode *)self totalComponentWidthWithFont:font];
  v5 = v4;

  return v5;
}

- (double)totalComponentWidthWithFont:(id)font
{
  fontCopy = font;
  elements = [(_UIDatePickerMode *)self elements];
  numberOfComponents = [(_UIDatePickerMode *)self numberOfComponents];
  if (numberOfComponents)
  {
    v7 = numberOfComponents;
    v8 = 0.0;
    do
    {
      v9 = *elements++;
      [(_UIDatePickerMode *)self widthForCalendarUnit:v9 font:fontCopy maxWidth:1.79769313e308];
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
  datePickerView = [(_UIDatePickerMode *)self datePickerView];
  staggerTimeIntervals = [datePickerView staggerTimeIntervals];

  if (!staggerTimeIntervals)
  {
    return 1;
  }

  return [(_UIDatePickerMode *)self minuteInterval];
}

- (unint64_t)nextUnitLargerThanUnit:(unint64_t)unit
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDatePickerMode.m" lineNumber:668 description:{@"%s must be overridden by subclasses", "-[_UIDatePickerMode nextUnitLargerThanUnit:]"}];

  return 0x7FFFFFFFFFFFFFFFLL;
}

- (unint64_t)nextUnitSmallerThanUnit:(unint64_t)unit
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDatePickerMode.m" lineNumber:673 description:{@"%s must be overridden by subclasses", "-[_UIDatePickerMode nextUnitSmallerThanUnit:]"}];

  return 0x7FFFFFFFFFFFFFFFLL;
}

- (id)_dateByEnsuringValue:(int64_t)value forCalendarUnit:(unint64_t)unit
{
  if (unit != 8 || (v7 = objc_alloc_init(MEMORY[0x1E695DF10]), [v7 setDay:1], objc_msgSend(v7, "setMonth:", value), objc_msgSend(v7, "setYear:", -[_UIDatePickerMode _yearlessYearForMonth:](self, "_yearlessYearForMonth:", value)), -[_UIDatePickerMode calendar](self, "calendar"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "dateFromComponents:", v7), v9 = objc_claimAutoreleasedReturnValue(), v8, v7, !v9))
  {
    todayDateComponents = [(_UIDatePickerMode *)self todayDateComponents];
    v11 = [todayDateComponents copy];

    v12 = [(_UIDatePickerMode *)self nextUnitSmallerThanUnit:unit];
    if (v12 != 0x7FFFFFFFFFFFFFFFLL)
    {
      for (i = v12; i != 0x7FFFFFFFFFFFFFFFLL; i = [(_UIDatePickerMode *)self nextUnitSmallerThanUnit:i])
      {
        calendar = [(_UIDatePickerMode *)self calendar];
        v15 = [calendar maximumRangeOfUnit:i];

        _UIDateComponentsSetValue(v11, i, v15);
      }
    }

    v16 = [(_UIDatePickerMode *)self nextUnitLargerThanUnit:unit];
    calendar2 = [(_UIDatePickerMode *)self calendar];
    year = [calendar2 maximumRangeOfUnit:v16];
    v20 = v19;

    if (v16 == 0x7FFFFFFFFFFFFFFFLL)
    {
      _UIDateComponentsSetValue(v11, unit, value);
      calendar3 = [(_UIDatePickerMode *)self calendar];
      v9 = [calendar3 dateFromComponents:v11];
    }

    else
    {
      if (v16 == 4)
      {
        year = [v11 year];
        v20 = 30;
      }

      if (year >= year + v20)
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
          _UIDateComponentsSetValue(v11, unit, value);
          _UIDateComponentsSetValue(v11, v16, year);
          calendar4 = [(_UIDatePickerMode *)self calendar];
          v9 = [calendar4 dateFromComponents:v22];

          calendar5 = [(_UIDatePickerMode *)self calendar];
          v11 = [calendar5 components:unit fromDate:v9];

          if (_UIDateComponentsGetValue(v11, unit) == value)
          {
            break;
          }

          ++year;
          v21 = v24 - 1;
        }

        while (v24);
      }
    }
  }

  return v9;
}

- (id)_dateForYearRow:(int64_t)row
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v5 setYear:row];
  calendar = [(_UIDatePickerMode *)self calendar];
  baseDate = [(_UIDatePickerMode *)self baseDate];
  v8 = [calendar dateByAddingComponents:v5 toDate:baseDate options:0];

  return v8;
}

- (int64_t)hourForRow:(int64_t)row
{
  v4 = [(_UIDatePickerMode *)self rangeForCalendarUnit:32];
  if (row % v5 + v4 == 24)
  {
    return 0;
  }

  else
  {
    return row % v5 + v4;
  }
}

- (int64_t)yearForRow:(int64_t)row
{
  v4 = [(_UIDatePickerMode *)self _dateForYearRow:row];
  calendar = [(_UIDatePickerMode *)self calendar];
  v6 = [calendar components:4 fromDate:v4];

  year = [v6 year];
  return year;
}

- (int64_t)eraForYearRow:(int64_t)row
{
  v4 = [(_UIDatePickerMode *)self _dateForYearRow:row];
  calendar = [(_UIDatePickerMode *)self calendar];
  v6 = [calendar components:2 fromDate:v4];

  v7 = [v6 era];
  return v7;
}

- (int64_t)valueForRow:(int64_t)row inCalendarUnit:(unint64_t)unit
{
  if (unit > 31)
  {
    if (unit > 127)
    {
      if (unit == 0x10000)
      {
        return row;
      }

      if (unit == 128)
      {

        return [(_UIDatePickerMode *)self secondForRow:?];
      }
    }

    else
    {
      if (unit == 32)
      {

        return [(_UIDatePickerMode *)self hourForRow:?];
      }

      if (unit == 64)
      {

        return [(_UIDatePickerMode *)self minuteForRow:?];
      }
    }

LABEL_33:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDatePickerMode.m" lineNumber:813 description:{@"attempt to get value for row (%ld) of invalid calendar unit (%lu)", row, unit}];

    return row;
  }

  if (unit > 7)
  {
    if (unit == 8)
    {

      return [(_UIDatePickerMode *)self monthForRow:?];
    }

    if (unit == 16)
    {

      return [(_UIDatePickerMode *)self dayForRow:?];
    }

    goto LABEL_33;
  }

  if (unit != 2)
  {
    if (unit == 4)
    {

      return [(_UIDatePickerMode *)self yearForRow:?];
    }

    goto LABEL_33;
  }

  return [(_UIDatePickerMode *)self eraForYearRow:?];
}

- (id)dateForRow:(int64_t)row inCalendarUnit:(unint64_t)unit
{
  if (unit == 4 || unit == 2)
  {
    v4 = [(_UIDatePickerMode *)self _dateForYearRow:row];
  }

  else
  {
    v4 = [(_UIDatePickerMode *)self _dateByEnsuringValue:[(_UIDatePickerMode *)self valueForRow:row inCalendarUnit:unit] forCalendarUnit:unit];
  }

  return v4;
}

- (id)dateFormatForCalendarUnit:(unint64_t)unit
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDatePickerMode.m" lineNumber:831 description:{@"%s must be overridden by subclasses", "-[_UIDatePickerMode dateFormatForCalendarUnit:]"}];

  return 0;
}

- (id)titleForRow:(int64_t)row inComponent:(int64_t)component
{
  if (row < 0 || [(_UIDatePickerMode *)self numberOfRowsInComponent:component]< row)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDatePickerMode.m" lineNumber:836 description:{@"Invalid parameter not satisfying: %@", @"row >= 0 && row <= [self numberOfRowsInComponent:component]"}];
  }

  v8 = [(_UIDatePickerMode *)self calendarUnitForComponent:component];
  if (v8 == 0x10000)
  {
    if (row)
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
    v10 = [(_UIDatePickerMode *)self dateForRow:row inCalendarUnit:v8];
    v11 = [(_UIDatePickerMode *)self dateFormatterForCalendarUnit:v9];
    v12 = [v11 stringFromDate:v10];
  }

  return v12;
}

- (int64_t)titleAlignmentForCalendarUnit:(unint64_t)unit
{
  v5 = [(_UIDatePickerMode *)self componentForCalendarUnit:16];
  v6 = v5 < [(_UIDatePickerMode *)self componentForCalendarUnit:8];
  _style = [(_UIDatePickerMode *)self _style];
  v8 = [_style titleAlignmentForCalendarUnit:unit datePickerMode:-[_UIDatePickerMode datePickerMode](self dayIsBeforeMonth:{"datePickerMode"), v6}];

  return v8;
}

- (_NSRange)rangeForCalendarUnit:(unint64_t)unit
{
  if (unit > 63)
  {
    if (unit == 64 || unit == 128)
    {
      location = 0;
      length = 60;
      goto LABEL_17;
    }

    if (unit == 0x10000)
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

  if (unit == 8)
  {
    location = self->_maxMonthRange.location;
    length = self->_maxMonthRange.length;
    goto LABEL_17;
  }

  if (unit == 16)
  {
    location = self->_maxDayRange.location;
    length = self->_maxDayRange.length;
    goto LABEL_17;
  }

  if (unit != 32)
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

- (int64_t)rowForDate:(id)date dateComponents:(id)components component:(int64_t)component currentRow:(int64_t)row
{
  componentsCopy = components;
  dateCopy = date;
  v12 = [(_UIDatePickerMode *)self calendarUnitForComponent:component];
  v13 = [(_UIDatePickerMode *)self valueForDate:dateCopy dateComponents:componentsCopy calendarUnit:v12];

  return [(_UIDatePickerMode *)self rowForValue:v13 forCalendarUnit:v12 currentRow:row];
}

- (int64_t)valueForDate:(id)date dateComponents:(id)components calendarUnit:(unint64_t)unit
{
  Value = _UIDateComponentsGetValue(components, unit);
  if (unit == 128 || unit == 64)
  {
    _incrementForStaggeredTimeIntervals = [(_UIDatePickerMode *)self _incrementForStaggeredTimeIntervals];
    if (_incrementForStaggeredTimeIntervals >= 2)
    {
      return Value / _incrementForStaggeredTimeIntervals * _incrementForStaggeredTimeIntervals;
    }
  }

  return Value;
}

- (int64_t)rowForValue:(int64_t)value forCalendarUnit:(unint64_t)unit currentRow:(int64_t)row
{
  v9 = [(_UIDatePickerMode *)self numberOfRowsForCalendarUnit:unit];
  v10 = [(_UIDatePickerMode *)self rangeForCalendarUnit:unit];
  v12 = v11;
  v13 = value - v10;
  if (unit == 128 || unit == 64)
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

  v15 = row / v14 * v14;
  v16 = v15 + v13;
  v17 = v15 - v14 + v13;
  v18 = v13 + v14 + v15;
  v19 = row - v16;
  if (row - v16 < 0)
  {
    v19 = v16 - row;
  }

  v20 = row - v17;
  if (row - v17 < 0)
  {
    v20 = v17 - row;
  }

  v21 = row - v18;
  if (row - v18 < 0)
  {
    v21 = v18 - row;
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

- (void)loadDate:(id)date animated:(BOOL)animated
{
  animatedCopy = animated;
  dateCopy = date;
  minimumDate = self->_minimumDate;
  if (minimumDate)
  {
    v28 = dateCopy;
    v8 = [(NSDate *)minimumDate earlierDate:dateCopy];

    dateCopy = v28;
    if (v8 == v28)
    {
      v9 = self->_minimumDate;

      dateCopy = v9;
    }
  }

  maximumDate = self->_maximumDate;
  v29 = dateCopy;
  if (maximumDate)
  {
    v11 = [(NSDate *)maximumDate laterDate:dateCopy];

    if (v11 == v29)
    {
      v12 = self->_maximumDate;

      v29 = v12;
    }
  }

  calendar = [(_UIDatePickerMode *)self calendar];
  v14 = [calendar components:-[_UIDatePickerMode displayedCalendarUnits](self fromDate:{"displayedCalendarUnits"), v29}];

  [(_UIDatePickerMode *)self setOriginatingDate:v29];
  datePickerView = [(_UIDatePickerMode *)self datePickerView];
  _soundsEnabled = [datePickerView _soundsEnabled];

  if (!animatedCopy)
  {
    datePickerView2 = [(_UIDatePickerMode *)self datePickerView];
    [datePickerView2 setSoundsEnabled:0];
  }

  numberOfComponents = [(_UIDatePickerMode *)self numberOfComponents];
  if (numberOfComponents >= 1)
  {
    v19 = numberOfComponents;
    for (i = 0; i != v19; ++i)
    {
      datePickerView3 = [(_UIDatePickerMode *)self datePickerView];
      v22 = [datePickerView3 selectedRowInComponent:i];

      v23 = [(_UIDatePickerMode *)self rowForDate:v29 dateComponents:v14 component:i currentRow:v22];
      v24 = v23 & ~(v23 >> 63);
      datePickerView4 = [(_UIDatePickerMode *)self datePickerView];
      [datePickerView4 selectRow:v24 inComponent:i animated:animatedCopy];
    }
  }

  [(_UIDatePickerMode *)self setSelectedDateComponents:0];
  datePickerView5 = [(_UIDatePickerMode *)self datePickerView];
  [datePickerView5 setSoundsEnabled:_soundsEnabled];

  datePickerView6 = [(_UIDatePickerMode *)self datePickerView];
  [datePickerView6 _updateLabels:animatedCopy];
}

- (void)_updateSelectedDateComponentsWithNewValueInComponent:(int64_t)component usingSelectionBarValue:(BOOL)value
{
  valueCopy = value;
  p_selectedDateComponents = &self->_selectedDateComponents;
  obj = self->_selectedDateComponents;
  if (!obj)
  {
    calendar = [(_UIDatePickerMode *)self calendar];
    originatingDate = [(_UIDatePickerMode *)self originatingDate];
    obj = [calendar components:254 fromDate:originatingDate];
  }

  numberOfComponents = [(_UIDatePickerMode *)self numberOfComponents];
  if (numberOfComponents)
  {
    v10 = numberOfComponents;
    v11 = 0;
    v12 = 0x7FFFFFFFFFFFFFFFLL;
    while (1)
    {
      v13 = v12;
      if (component != 0x7FFFFFFFFFFFFFFFLL && component != v11)
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
          datePickerView = [(_UIDatePickerMode *)self datePickerView];
          v32 = [datePickerView selectedRowInComponent:v12];

          _UIDateComponentsSetValue(obj, 0x10000, v32);
        }

        goto LABEL_31;
      }
    }

    v16 = v15;
    datePickerView2 = [(_UIDatePickerMode *)self datePickerView];
    v18 = datePickerView2;
    if (valueCopy)
    {
      v19 = [datePickerView2 _selectionBarRowInComponent:v11];
    }

    else
    {
      v19 = [datePickerView2 selectedRowInComponent:v11];
    }

    v20 = v19;

    v21 = [(_UIDatePickerMode *)self dateForRow:v20 inCalendarUnit:v16];
    if (v16 == 536)
    {
      calendar2 = [(_UIDatePickerMode *)self calendar];
      v23 = [calendar2 components:30 fromDate:v21];

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

      calendar3 = [(_UIDatePickerMode *)self calendar];
      v23 = [calendar3 components:6 fromDate:v21];

      -[NSDateComponents setYear:](obj, "setYear:", [v23 year]);
      -[NSDateComponents setEra:](obj, "setEra:", [v23 era]);
    }

    goto LABEL_23;
  }

LABEL_31:
  timeZone = [(_UIDatePickerMode *)self timeZone];
  [(NSDateComponents *)obj setTimeZone:timeZone];

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

- (int64_t)_numberOfDaysInDateComponents:(id)components
{
  componentsCopy = components;
  [componentsCopy setDay:1];
  calendar = [(_UIDatePickerMode *)self calendar];
  v6 = [calendar dateFromComponents:componentsCopy];

  [calendar rangeOfUnit:16 inUnit:8 forDate:v6];
  v8 = v7;
  if (v7 == 1)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF10]);
    [v9 setMonth:1];
    [v9 setDay:-1];
    v10 = [calendar dateByAddingComponents:v9 toDate:v6 options:0];
    v11 = [calendar components:16 fromDate:v10];
    v8 = [v11 day];
  }

  return v8;
}

- (BOOL)_monthExists:(int64_t)exists inYear:(int64_t)year
{
  v7 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v7 setMonth:exists];
  [v7 setYear:year];
  [v7 setDay:1];
  calendar = [(_UIDatePickerMode *)self calendar];
  v9 = [calendar dateFromComponents:v7];

  calendar2 = [(_UIDatePickerMode *)self calendar];
  v11 = [calendar2 components:8 fromDate:v9];

  LOBYTE(exists) = [v11 month] == exists;
  return exists;
}

- (id)dateComponentsByRestrictingSelectedComponents:(id)components withLastManipulatedColumn:(int64_t)column
{
  componentsCopy = components;
  v8 = 0x7FFFFFFFFFFFFFFFLL;
  if (column != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [(_UIDatePickerMode *)self calendarUnitForComponent:column];
  }

  calendar = [(_UIDatePickerMode *)self calendar];
  v10 = [calendar dateFromComponents:componentsCopy];

  if (self->_minimumDate)
  {
    v11 = [v10 earlierDate:?];

    if (v11 == v10)
    {
      minimumDateComponents = self->_minimumDateComponents;
LABEL_13:
      lastSelectedDateComponents = minimumDateComponents;

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
    calendar2 = [(_UIDatePickerMode *)self calendar];
    lastSelectedDateComponents = [calendar2 components:-[_UIDatePickerMode displayedCalendarUnits](self fromDate:{"displayedCalendarUnits"), v10}];

LABEL_10:
    goto LABEL_14;
  }

  if (v8 == 8 || v8 == 4)
  {
    if (-[_UIDatePickerMode _monthExists:inYear:](self, "_monthExists:inYear:", [componentsCopy month], objc_msgSend(componentsCopy, "year")))
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDatePickerMode.m" lineNumber:1160 description:{@"attempting to manipulate unknown unit: %lu in mode: %@", v8, self}];
  }

  if (v8 == 8)
  {
    month = [componentsCopy month];
    lastSelectedDateComponents = [componentsCopy copy];

    [(NSDateComponents *)lastSelectedDateComponents setMonth:month - 1];
  }

  else
  {
    if (v8 != 16)
    {
      calendar2 = [(_UIDatePickerMode *)self datePickerView];
      data = [calendar2 data];
      lastSelectedDateComponents = [data lastSelectedDateComponents];

      goto LABEL_10;
    }

    v17 = [componentsCopy day];
    v18 = [(_UIDatePickerMode *)self _numberOfDaysInDateComponents:componentsCopy];
    lastSelectedDateComponents = [componentsCopy copy];

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

    [(NSDateComponents *)lastSelectedDateComponents setDay:v19];
  }

LABEL_14:

  return lastSelectedDateComponents;
}

- (void)updateDateForNewDateRange
{
  WeakRetained = objc_loadWeakRetained(&self->_datePickerView);
  data = [WeakRetained data];
  minimumDate = [data minimumDate];

  v5 = objc_loadWeakRetained(&self->_datePickerView);
  data2 = [v5 data];
  maximumDate = [data2 maximumDate];

  minimumDateComponents = self->_minimumDateComponents;
  self->_minimumDateComponents = 0;

  minimumDate = self->_minimumDate;
  self->_minimumDate = 0;

  maximumDateComponents = self->_maximumDateComponents;
  self->_maximumDateComponents = 0;

  maximumDate = self->_maximumDate;
  self->_maximumDate = 0;

  displayedCalendarUnits = [(_UIDatePickerMode *)self displayedCalendarUnits];
  if (minimumDate)
  {
    calendar = [(_UIDatePickerMode *)self calendar];
    v14 = [calendar components:displayedCalendarUnits fromDate:minimumDate];

    if (maximumDate)
    {
LABEL_3:
      calendar2 = [(_UIDatePickerMode *)self calendar];
      v16 = [calendar2 components:displayedCalendarUnits fromDate:maximumDate];

      if (v14 && v16 && (_UIDatePickerCompareDateComponents(v14, v16, displayedCalendarUnits) + 1) > 1)
      {
        goto LABEL_13;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v14 = 0;
    if (maximumDate)
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
    calendar3 = [(_UIDatePickerMode *)self calendar];
    v18 = [calendar3 dateFromComponents:self->_minimumDateComponents];
    v19 = self->_minimumDate;
    self->_minimumDate = v18;
  }

  if (self->_maximumDateComponents)
  {
    calendar4 = [(_UIDatePickerMode *)self calendar];
    v21 = [calendar4 dateFromComponents:self->_maximumDateComponents];
    v22 = self->_maximumDate;
    self->_maximumDate = v21;
  }

LABEL_13:
}

- (id)viewForRow:(int64_t)row inComponent:(int64_t)component reusingView:(id)view
{
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = viewCopy;
  }

  else
  {
    v9 = [[UIDatePickerContentView alloc] initWithMode:self];
  }

  v10 = v9;
  v11 = [(_UIDatePickerMode *)self calendarUnitForComponent:component];
  [(UIDatePickerContentView *)v10 setUseDigitFont:(v11 & 0xE0) != 0];
  titleLabel = [(UIDatePickerContentView *)v10 titleLabel];
  v13 = [(_UIDatePickerMode *)self fontForCalendarUnit:v11];
  [titleLabel setFont:v13];

  [(UIDatePickerContentView *)v10 setTitleAlignment:[(_UIDatePickerMode *)self titleAlignmentForCalendarUnit:v11]];
  titleLabel2 = [(UIDatePickerContentView *)v10 titleLabel];
  v15 = [(_UIDatePickerMode *)self titleForRow:row inComponent:component];
  [titleLabel2 setText:v15];

  titleLabel3 = [(UIDatePickerContentView *)v10 titleLabel];
  WeakRetained = objc_loadWeakRetained(&self->_datePickerView);
  _textColor = [WeakRetained _textColor];
  [titleLabel3 setTextColor:_textColor];

  titleLabel4 = [(UIDatePickerContentView *)v10 titleLabel];
  v20 = objc_loadWeakRetained(&self->_datePickerView);
  _textShadowColor = [v20 _textShadowColor];
  [titleLabel4 setShadowColor:_textShadowColor];

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
    titleLabel5 = [(UIDatePickerContentView *)v10 titleLabel];
    [titleLabel5 setEnabled:{-[_UIDatePickerMode _shouldEnableValueForRow:column:](self, "_shouldEnableValueForRow:column:", row, component)}];
  }

  datePickerView = [(_UIDatePickerMode *)self datePickerView];
  highlightsToday = [datePickerView highlightsToday];

  if (highlightsToday && v11 <= 0x10 && ((1 << v11) & 0x10110) != 0)
  {
    v25 = [(_UIDatePickerMode *)self valueForRow:row inCalendarUnit:v11];
    todayDateComponents = [(_UIDatePickerMode *)self todayDateComponents];
    Value = _UIDateComponentsGetValue(todayDateComponents, v11);

    if (v11 == 4)
    {
      v28 = [(_UIDatePickerMode *)self eraForYearRow:row];
      todayDateComponents2 = [(_UIDatePickerMode *)self todayDateComponents];
      v30 = [todayDateComponents2 era];

      if (v25 != Value || v28 != v30)
      {
        goto LABEL_18;
      }
    }

    else if (v25 != Value)
    {
      goto LABEL_18;
    }

    titleLabel6 = [(UIDatePickerContentView *)v10 titleLabel];
    todayTextColor = [(_UIDatePickerMode *)self todayTextColor];
    [titleLabel6 setTextColor:todayTextColor];
  }

LABEL_18:

  return v10;
}

- (BOOL)areValidDateComponents:(id)components comparingUnits:(int64_t)units
{
  componentsCopy = components;
  calendar = [(_UIDatePickerMode *)self calendar];
  v8 = [calendar dateFromComponents:componentsCopy];

  if ((units & 0x10000) != 0)
  {
    unitsCopy = units & 0xFFFFFFFFFFFEFFDFLL | 0x20;
  }

  else
  {
    unitsCopy = units;
  }

  calendar2 = [(_UIDatePickerMode *)self calendar];
  v11 = [calendar2 components:unitsCopy fromDate:v8];

  v12 = _UIDatePickerCompareDateComponents(componentsCopy, v11, units);
  v13 = v12 == 0;
  minimumDateComponents = self->_minimumDateComponents;
  if (minimumDateComponents && !v12)
  {
    v13 = (_UIDatePickerCompareDateComponents(minimumDateComponents, componentsCopy, units) + 1) < 2;
  }

  maximumDateComponents = self->_maximumDateComponents;
  if (maximumDateComponents && v13)
  {
    LOBYTE(v13) = _UIDatePickerCompareDateComponents(maximumDateComponents, componentsCopy, units) < 2;
  }

  return v13;
}

- (BOOL)_isComponentScrolling:(int64_t)scrolling
{
  datePickerView = [(_UIDatePickerMode *)self datePickerView];
  v5 = [datePickerView tableViewForColumn:scrolling];

  if ([v5 isDragging])
  {
    isDecelerating = 1;
  }

  else
  {
    isDecelerating = [v5 isDecelerating];
  }

  return isDecelerating;
}

- (BOOL)_scrollingAnyColumnExcept:(int)except
{
  numberOfComponents = [(_UIDatePickerMode *)self numberOfComponents];
  if (numberOfComponents)
  {
    v6 = 0;
    while (except == v6 || ![(_UIDatePickerMode *)self _isComponentScrolling:v6])
    {
      if ([(_UIDatePickerMode *)self numberOfComponents]<= ++v6)
      {
        LOBYTE(numberOfComponents) = 0;
        return numberOfComponents;
      }
    }

    LOBYTE(numberOfComponents) = 1;
  }

  return numberOfComponents;
}

- (BOOL)_shouldEnableValueForRow:(int64_t)row column:(int64_t)column
{
  v7 = [(_UIDatePickerMode *)self calendarUnitForComponent:column];
  v8 = [(_UIDatePickerMode *)self _shouldEnableValueForRow:row inComponent:column calendarUnit:v7];
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
    v11 = [(_UIDatePickerMode *)self _scrollingAnyColumnExcept:column];
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

- (BOOL)_shouldEnableValueForRow:(int64_t)row inComponent:(int64_t)component calendarUnit:(unint64_t)unit
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDatePickerMode.m" lineNumber:1347 description:{@"%s must be overridden by subclasses", "-[_UIDatePickerMode _shouldEnableValueForRow:inComponent:calendarUnit:]"}];

  return 0;
}

- (void)updateEnabledStateOfViewForRow:(int64_t)row inComponent:(int64_t)component
{
  datePickerView = [(_UIDatePickerMode *)self datePickerView];
  v9 = [datePickerView viewForRow:row forComponent:component];

  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      titleLabel = [v9 titleLabel];
      [titleLabel setEnabled:{-[_UIDatePickerMode _shouldEnableValueForRow:column:](self, "_shouldEnableValueForRow:column:", row, component)}];
    }
  }
}

- (_UIDatePickerView)datePickerView
{
  WeakRetained = objc_loadWeakRetained(&self->_datePickerView);

  return WeakRetained;
}

@end