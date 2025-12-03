@interface UIDatePicker
+ (id)_styleForIdiom:(int64_t)idiom;
+ (void)_prepareStyleStorageIfNecessary;
+ (void)_registerStyle:(id)style forIdiom:(int64_t)idiom;
- (BOOL)_allowsZeroCountDownDuration;
- (BOOL)_allowsZeroTimeInterval;
- (BOOL)_isTimeIntervalMode;
- (BOOL)becomeFirstResponder;
- (BOOL)resignFirstResponder;
- (CGSize)_intrinsicSizeWithinSize:(CGSize)size;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSCalendar)calendar;
- (NSDate)_dateUnderSelectionBar;
- (NSDictionary)_overrideCompactTextAttributes;
- (NSLocale)locale;
- (UIColor)_highlightColor;
- (UIColor)_magnifierLineColor;
- (UIColor)_textColor;
- (UIColor)_textShadowColor;
- (UIDatePicker)initWithCoder:(id)coder;
- (UIDatePicker)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)_appliedInsetsToEdgeOfContent;
- (_UIDatePickerCompactStyleDelegate)_compactStyleDelegate;
- (_UIDatePickerOverlayPresentation)_overlayPresentation;
- (double)_contentWidth;
- (double)timeInterval;
- (id)_systemDefaultFocusGroupIdentifier;
- (id)dateComponents;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_commonInit;
- (void)_compactStyleSetActiveComponent:(int64_t)component;
- (void)_datePickerReset:(id)reset;
- (void)_emitValueChanged;
- (void)_installPickerView:(id)view updatingSize:(BOOL)size;
- (void)_performScrollTest:(id)test withIterations:(int64_t)iterations rowsToScroll:(int64_t)scroll inComponent:(int64_t)component;
- (void)_populateArchivedSubviews:(id)subviews;
- (void)_registerObservers;
- (void)_setAllowsZeroCountDownDuration:(BOOL)duration;
- (void)_setAllowsZeroTimeInterval:(BOOL)interval;
- (void)_setCompactStyleDelegate:(id)delegate;
- (void)_setCustomFontDesign:(id)design;
- (void)_setDisplaysTimeZone:(BOOL)zone;
- (void)_setHighlightColor:(id)color;
- (void)_setHighlightsToday:(BOOL)today;
- (void)_setMagnifierLineColor:(id)color;
- (void)_setOverrideCompactTextAttributes:(id)attributes;
- (void)_setSelectionBarIgnoresInset:(BOOL)inset;
- (void)_setTextColor:(id)color;
- (void)_setTextShadowColor:(id)color;
- (void)_setUpInitialValues;
- (void)_updatePickerDateFromOldDate:(id)date animated:(BOOL)animated;
- (void)_updatePickerViewIfNecessary;
- (void)_workaround66574039_updateLayoutMargins;
- (void)awakeFromNib;
- (void)encodeWithCoder:(id)coder;
- (void)invalidateIntrinsicContentSize;
- (void)layoutMarginsDidChange;
- (void)setBounds:(CGRect)bounds;
- (void)setCalendar:(NSCalendar *)calendar;
- (void)setContentHorizontalAlignment:(int64_t)alignment;
- (void)setDate:(NSDate *)date;
- (void)setDate:(NSDate *)date animated:(BOOL)animated;
- (void)setDatePickerMode:(UIDatePickerMode)datePickerMode;
- (void)setEnabled:(BOOL)enabled;
- (void)setFrame:(CGRect)frame;
- (void)setLocale:(NSLocale *)locale;
- (void)setMaximumDate:(NSDate *)maximumDate;
- (void)setMinimumDate:(NSDate *)minimumDate;
- (void)setMinuteInterval:(NSInteger)minuteInterval;
- (void)setPreferredDatePickerStyle:(UIDatePickerStyle)preferredDatePickerStyle;
- (void)setRoundsToMinuteInterval:(BOOL)roundsToMinuteInterval;
- (void)setTimeInterval:(double)interval;
- (void)setTimeZone:(NSTimeZone *)timeZone;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation UIDatePicker

- (UIDatePicker)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (dyld_program_sdk_at_least())
  {
    v8 = [objc_alloc(_UIDatePickerClassForStyleAndMode(0 2))];
    [(UIView *)v8 frame];
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v13 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v13 userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      [(UIPickerView *)_UIDatePickerView sizeForMainScreenTraitsThatFits:width, height];
    }

    else
    {
      +[(UIPickerView *)_UIDatePickerView];
    }

    v10 = v15;
    v12 = v16;
    v17 = [_UIDatePickerView alloc];
    [(UIView *)self bounds];
    v8 = [(_UIDatePickerView *)v17 initWithFrame:?];
  }

  v22.receiver = self;
  v22.super_class = UIDatePicker;
  v18 = [(UIControl *)&v22 initWithFrame:x, y, v10, v12];
  if (v18)
  {
    v19 = objc_opt_new();
    data = v18->_data;
    v18->_data = v19;

    [(UIDatePicker *)v18 _installPickerView:v8 updatingSize:1];
    [(UIDatePicker *)v18 _setUpInitialValues];
    [(UIDatePicker *)v18 _commonInit];
  }

  return v18;
}

- (UIDatePicker)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = UIDatePicker;
  v5 = [(UIControl *)&v21 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_opt_new();
    data = v5->_data;
    v5->_data = v6;

    v5->_preferredDatePickerStyle = [coderCopy decodeIntegerForKey:@"UIPickerStyle"];
    if ([coderCopy containsValueForKey:@"UIDatePickerMode"])
    {
      v8 = [coderCopy decodeIntegerForKey:@"UIDatePickerMode"];
    }

    else
    {
      v8 = 2;
    }

    v9 = objc_alloc(_UIDatePickerClassForStyleAndMode(v5->_preferredDatePickerStyle, v8));
    [(UIView *)v5 bounds];
    v10 = [v9 initWithFrame:?];
    [(UIDatePicker *)v5 _installPickerView:v10 updatingSize:0];
    [(UIDatePicker *)v5 setDatePickerMode:v8];
    v11 = [coderCopy decodeObjectForKey:@"UILocale"];
    [(UIDatePicker *)v5 setLocale:v11];

    v12 = [coderCopy decodeObjectForKey:@"UITimeZone"];
    [(UIDatePicker *)v5 setTimeZone:v12];

    v13 = [coderCopy decodeObjectForKey:@"UICalendar"];
    [(UIDatePicker *)v5 setCalendar:v13];

    if ([coderCopy containsValueForKey:@"UIMinuteInterval"])
    {
      v14 = [coderCopy decodeIntegerForKey:@"UIMinuteInterval"];
    }

    else
    {
      v14 = 1;
    }

    [(UIDatePicker *)v5 setMinuteInterval:v14];
    if ([(UIDatePicker *)v5 _isTimeIntervalMode])
    {
      [coderCopy decodeFloatForKey:@"UICountDownDuration"];
      [(UIDatePicker *)v5 setTimeInterval:v15];
    }

    else
    {
      v16 = [coderCopy decodeObjectForKey:@"UIMinimumDate"];
      [(UIDatePicker *)v5 setMinimumDate:v16];

      v17 = [coderCopy decodeObjectForKey:@"UIMaximumDate"];
      [(UIDatePicker *)v5 setMaximumDate:v17];

      v18 = [coderCopy decodeObjectForKey:@"UIDate"];
      [(UIDatePicker *)v5 setDate:v18];
    }

    [(UIDatePicker *)v5 _setUpInitialValues];
    if ([coderCopy containsValueForKey:@"UIDatePickerUseCurrentDateDuringDecoding"])
    {
      -[UIDatePicker _setUseCurrentDateDuringDecoding:](v5, "_setUseCurrentDateDuringDecoding:", [coderCopy decodeBoolForKey:@"UIDatePickerUseCurrentDateDuringDecoding"]);
    }

    [(UIDatePicker *)v5 _commonInit];
    v19 = v5;
  }

  return v5;
}

- (void)_commonInit
{
  v5[3] = *MEMORY[0x1E69E9840];
  [(UIDatePicker *)self _registerObservers];
  if (dyld_program_sdk_at_least())
  {
    v5[0] = 0x1EFE32398;
    v5[1] = 0x1EFE323F8;
    v5[2] = 0x1EFE32410;
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:3];
    v4 = [(UIView *)self _registerForTraitTokenChanges:v3 withTarget:self action:sel_invalidateIntrinsicContentSize];
  }
}

- (void)awakeFromNib
{
  v4.receiver = self;
  v4.super_class = UIDatePicker;
  [&v4 awakeFromNib];
  if ([(UIDatePicker *)self _useCurrentDateDuringDecoding])
  {
    date = [MEMORY[0x1E695DF00] date];
    [(UIDatePicker *)self setDate:date];
  }
}

- (void)_populateArchivedSubviews:(id)subviews
{
  subviewsCopy = subviews;
  v5.receiver = self;
  v5.super_class = UIDatePicker;
  [(UIView *)&v5 _populateArchivedSubviews:subviewsCopy];
  if (self->_pickerView)
  {
    [subviewsCopy removeObject:?];
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = UIDatePicker;
  [(UIControl *)&v20 encodeWithCoder:coderCopy];
  preferredDatePickerStyle = self->_preferredDatePickerStyle;
  if (preferredDatePickerStyle)
  {
    [coderCopy encodeInteger:preferredDatePickerStyle forKey:@"UIPickerStyle"];
  }

  if ([(UIDatePicker *)self datePickerMode]!= UIDatePickerModeDateAndTime)
  {
    [coderCopy encodeInteger:-[UIDatePicker datePickerMode](self forKey:{"datePickerMode"), @"UIDatePickerMode"}];
  }

  locale = [(_UIDatePickerDataModel *)self->_data locale];

  if (locale)
  {
    locale2 = [(_UIDatePickerDataModel *)self->_data locale];
    [coderCopy encodeObject:locale2 forKey:@"UILocale"];
  }

  timeZone = [(UIDatePicker *)self timeZone];

  if (timeZone)
  {
    timeZone2 = [(UIDatePicker *)self timeZone];
    [coderCopy encodeObject:timeZone2 forKey:@"UITimeZone"];
  }

  calendar = [(_UIDatePickerDataModel *)self->_data calendar];

  if (calendar)
  {
    calendar2 = [(_UIDatePickerDataModel *)self->_data calendar];
    [coderCopy encodeObject:calendar2 forKey:@"UICalendar"];
  }

  if ([(UIDatePicker *)self _isTimeIntervalMode])
  {
    [(UIDatePicker *)self timeInterval];
    if (v12 != 0.0)
    {
      [(UIDatePicker *)self timeInterval];
      *&v13 = v13;
      [coderCopy encodeFloat:@"UICountDownDuration" forKey:v13];
    }
  }

  else
  {
    date = [(UIDatePicker *)self date];

    if (date)
    {
      date2 = [(UIDatePicker *)self date];
      [coderCopy encodeObject:date2 forKey:@"UIDate"];
    }

    minimumDate = [(UIDatePicker *)self minimumDate];

    if (minimumDate)
    {
      minimumDate2 = [(UIDatePicker *)self minimumDate];
      [coderCopy encodeObject:minimumDate2 forKey:@"UIMinimumDate"];
    }

    maximumDate = [(UIDatePicker *)self maximumDate];

    if (maximumDate)
    {
      maximumDate2 = [(UIDatePicker *)self maximumDate];
      [coderCopy encodeObject:maximumDate2 forKey:@"UIMaximumDate"];
    }
  }

  if ([(UIDatePicker *)self minuteInterval]!= 1)
  {
    [coderCopy encodeInteger:-[UIDatePicker minuteInterval](self forKey:{"minuteInterval"), @"UIMinuteInterval"}];
  }

  if (![(UIDatePicker *)self _useCurrentDateDuringDecoding])
  {
    [coderCopy encodeBool:-[UIDatePicker _useCurrentDateDuringDecoding](self forKey:{"_useCurrentDateDuringDecoding"), @"UIDatePickerUseCurrentDateDuringDecoding"}];
  }
}

- (void)_setUpInitialValues
{
  date = [(UIDatePicker *)self date];

  if (!date)
  {
    date2 = [MEMORY[0x1E695DF00] date];
    [(UIDatePicker *)self setDate:date2];
  }

  traitCollection = [(UIView *)self traitCollection];
  v6 = +[UIDatePicker _styleForIdiom:](UIDatePicker, "_styleForIdiom:", [traitCollection userInterfaceIdiom]);
  style = self->_style;
  self->_style = v6;

  self->_ignoresEmitValueChanged = 0;
  [(UIDatePicker *)self _setUseCurrentDateDuringDecoding:1];
  if (dyld_program_sdk_at_least())
  {

    [(UIView *)self setPreservesSuperviewLayoutMargins:1];
  }
}

- (void)_registerObservers
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__datePickerReset_ name:0x1EFB8A3D0 object:0];
  [defaultCenter addObserver:self selector:sel__todayChanged_ name:0x1EFB8EE90 object:UIApp];
}

- (void)_datePickerReset:(id)reset
{
  [(_UIDatePickerDataModel *)self->_data resetForCurrentLocaleOrCalendarChange];
  [(_UIDatePickerViewComponent *)self->_pickerView didReset];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__UIDatePicker__datePickerReset___block_invoke;
  block[3] = &unk_1E70F3590;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __33__UIDatePicker__datePickerReset___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 472) calendar];

  if (!v2)
  {
    v3 = *(*(a1 + 32) + 464);

    [v3 didChangeCalendar];
  }
}

- (void)_updatePickerViewIfNecessary
{
  v3 = _UIDatePickerClassForStyleAndMode(self->_preferredDatePickerStyle, [(_UIDatePickerDataModel *)self->_data datePickerMode]);
  if (v3 != objc_opt_class())
  {
    [(_UIDatePickerViewComponent *)self->_pickerView removeFromSuperview];
    v4 = objc_opt_new();
    [(UIDatePicker *)self _installPickerView:v4 updatingSize:1];
    [(UIDatePicker *)self _setUpInitialValues];
    [(UIView *)self setNeedsLayout];
    [(UIDatePicker *)self invalidateIntrinsicContentSize];
  }
}

- (void)_installPickerView:(id)view updatingSize:(BOOL)size
{
  sizeCopy = size;
  v26[4] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  objc_storeStrong(&self->_pickerView, view);
  [(_UIDatePickerViewComponent *)self->_pickerView setDatePicker:self];
  if (!self->_data)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIDatePicker.m" lineNumber:392 description:@"Installing picker view before data model has been created"];
  }

  -[_UIDatePickerDataModel setDatePickerStyle:](self->_data, "setDatePickerStyle:", [viewCopy datePickerStyle]);
  [(_UIDatePickerViewComponent *)self->_pickerView setData:self->_data];
  [(_UIDatePickerViewComponent *)self->_pickerView _setEnabled:[(UIControl *)self isEnabled]];
  [(UIDatePicker *)self _workaround66574039_updateLayoutMargins];
  [(UIView *)self addSubview:self->_pickerView];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([(_UIDatePickerViewComponent *)self->_pickerView usesAutoLayout]& 1) != 0)
  {
    [(_UIDatePickerViewComponent *)self->_pickerView setTranslatesAutoresizingMaskIntoConstraints:0];
    v19 = MEMORY[0x1E69977A0];
    leadingAnchor = [(_UIDatePickerViewComponent *)self->_pickerView leadingAnchor];
    leadingAnchor2 = [(UIView *)self leadingAnchor];
    v22 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v26[0] = v22;
    trailingAnchor = [(_UIDatePickerViewComponent *)self->_pickerView trailingAnchor];
    trailingAnchor2 = [(UIView *)self trailingAnchor];
    v18 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v26[1] = v18;
    topAnchor = [(_UIDatePickerViewComponent *)self->_pickerView topAnchor];
    topAnchor2 = [(UIView *)self topAnchor];
    v11 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v26[2] = v11;
    bottomAnchor = [(_UIDatePickerViewComponent *)self->_pickerView bottomAnchor];
    bottomAnchor2 = [(UIView *)self bottomAnchor];
    v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v26[3] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:4];
    [v19 activateConstraints:v15];
  }

  else
  {
    pickerView = self->_pickerView;
    [(UIView *)self bounds];
    [(_UIDatePickerViewComponent *)pickerView setFrame:?];
    [(_UIDatePickerViewComponent *)self->_pickerView setAutoresizingMask:18];
  }

  v25.receiver = self;
  v25.super_class = UIDatePicker;
  [(UIView *)&v25 invalidateIntrinsicContentSize];
  if (sizeCopy)
  {
    [(UIView *)self sizeToFit];
  }
}

- (void)setDatePickerMode:(UIDatePickerMode)datePickerMode
{
  if ([(_UIDatePickerDataModel *)self->_data datePickerMode]!= datePickerMode)
  {
    [(_UIDatePickerDataModel *)self->_data setDatePickerMode:datePickerMode];
    [(UIDatePicker *)self _updatePickerViewIfNecessary];
    [(_UIDatePickerViewComponent *)self->_pickerView didChangeMode];
    if (dyld_program_sdk_at_least())
    {

      [(UIDatePicker *)self invalidateIntrinsicContentSize];
    }
  }
}

- (NSLocale)locale
{
  locale = [(_UIDatePickerDataModel *)self->_data locale];
  v3 = _UIDatePickerUserLocaleForLocale(locale);

  return v3;
}

- (void)setLocale:(NSLocale *)locale
{
  v4 = _UIDatePickerStoredLocaleForLocale(locale);
  locale = [(_UIDatePickerDataModel *)self->_data locale];
  v8 = v4;
  v6 = locale;
  if (v8 == v6)
  {

    goto LABEL_9;
  }

  if (!v8 || !v6)
  {

    goto LABEL_8;
  }

  v7 = [v8 isEqual:v6];

  if ((v7 & 1) == 0)
  {
LABEL_8:
    [(_UIDatePickerDataModel *)self->_data setLocale:v8];
    [(_UIDatePickerViewComponent *)self->_pickerView didChangeLocale];
  }

LABEL_9:
}

- (NSCalendar)calendar
{
  calendar = [(_UIDatePickerDataModel *)self->_data calendar];
  v3 = _UIDatePickerUserCalendarForCalendar(calendar);

  return v3;
}

- (void)setCalendar:(NSCalendar *)calendar
{
  v4 = _UIDatePickerStoredCalendarForCalendar(calendar);
  calendar = [(_UIDatePickerDataModel *)self->_data calendar];
  v6 = v4;
  v8 = v6;
  if (calendar == v6)
  {

    goto LABEL_9;
  }

  if (!v6 || !calendar)
  {

    goto LABEL_8;
  }

  v7 = [calendar isEqual:v6];

  if ((v7 & 1) == 0)
  {
LABEL_8:
    [(_UIDatePickerDataModel *)self->_data setCalendar:v8];
    [(_UIDatePickerViewComponent *)self->_pickerView didChangeCalendar];
  }

LABEL_9:
}

- (void)setTimeZone:(NSTimeZone *)timeZone
{
  v4 = timeZone;
  timeZone = [(_UIDatePickerDataModel *)self->_data timeZone];
  v6 = v4;
  v8 = v6;
  if (timeZone == v6)
  {

    goto LABEL_9;
  }

  if (!v6 || !timeZone)
  {

    goto LABEL_8;
  }

  v7 = [(NSTimeZone *)timeZone isEqual:v6];

  if ((v7 & 1) == 0)
  {
LABEL_8:
    [(_UIDatePickerDataModel *)self->_data setTimeZone:v8];
    [(_UIDatePickerViewComponent *)self->_pickerView didChangeTimeZone];
  }

LABEL_9:
}

- (void)setDate:(NSDate *)date
{
  v6 = date;
  window = [(UIView *)self window];
  v5 = window != 0;

  [(UIDatePicker *)self setDate:v6 animated:v5];
}

- (void)setMinimumDate:(NSDate *)minimumDate
{
  v4 = minimumDate;
  minimumDate = [(_UIDatePickerDataModel *)self->_data minimumDate];
  v6 = v4;
  v11 = v6;
  if (minimumDate == v6)
  {

LABEL_10:
    v8 = v11;
    goto LABEL_11;
  }

  if (!v6 || !minimumDate)
  {

LABEL_8:
    minimumDate = [(_UIDatePickerDataModel *)self->_data effectiveDate];
    [(_UIDatePickerDataModel *)self->_data setMinimumDate:v11];
    [(_UIDatePickerViewComponent *)self->_pickerView didChangeMinimumDate];
    effectiveDate = [(_UIDatePickerDataModel *)self->_data effectiveDate];
    v10 = [(NSDate *)minimumDate isEqualToDate:effectiveDate];

    if (!v10)
    {
      [(UIDatePicker *)self _updatePickerDateFromOldDate:minimumDate animated:0];
    }

    goto LABEL_10;
  }

  v7 = [(NSDate *)minimumDate isEqual:v6];

  v8 = v11;
  if ((v7 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_11:
}

- (void)setMaximumDate:(NSDate *)maximumDate
{
  v4 = maximumDate;
  maximumDate = [(_UIDatePickerDataModel *)self->_data maximumDate];
  v6 = v4;
  v11 = v6;
  if (maximumDate == v6)
  {

LABEL_10:
    v8 = v11;
    goto LABEL_11;
  }

  if (!v6 || !maximumDate)
  {

LABEL_8:
    maximumDate = [(_UIDatePickerDataModel *)self->_data effectiveDate];
    [(_UIDatePickerDataModel *)self->_data setMaximumDate:v11];
    [(_UIDatePickerViewComponent *)self->_pickerView didChangeMaximumDate];
    effectiveDate = [(_UIDatePickerDataModel *)self->_data effectiveDate];
    v10 = [(NSDate *)maximumDate isEqualToDate:effectiveDate];

    if (!v10)
    {
      [(UIDatePicker *)self _updatePickerDateFromOldDate:maximumDate animated:0];
    }

    goto LABEL_10;
  }

  v7 = [(NSDate *)maximumDate isEqual:v6];

  v8 = v11;
  if ((v7 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_11:
}

- (void)setMinuteInterval:(NSInteger)minuteInterval
{
  if ([(_UIDatePickerDataModel *)self->_data minuteInterval]!= minuteInterval)
  {
    [(_UIDatePickerDataModel *)self->_data setMinuteInterval:minuteInterval];
    pickerView = self->_pickerView;

    [(_UIDatePickerViewComponent *)pickerView didChangeMinuteInterval];
  }
}

- (void)setDate:(NSDate *)date animated:(BOOL)animated
{
  v4 = animated;
  v6 = date;
  date = [(_UIDatePickerDataModel *)self->_data date];
  v8 = v6;
  v13 = v8;
  if (date == v8)
  {
  }

  else
  {
    if (!v8 || !date)
    {

LABEL_9:
      effectiveDate = [(_UIDatePickerDataModel *)self->_data effectiveDate];
      [(_UIDatePickerDataModel *)self->_data setDate:v13];
      effectiveDate2 = [(_UIDatePickerDataModel *)self->_data effectiveDate];
      v12 = [effectiveDate isEqualToDate:effectiveDate2];

      if (v12)
      {
        [(_UIDatePickerViewComponent *)self->_pickerView displaySelectedDateAnimated:v4];
      }

      else
      {
        [(UIDatePicker *)self _updatePickerDateFromOldDate:effectiveDate animated:v4];
      }

      goto LABEL_13;
    }

    v9 = [(NSDate *)date isEqual:v8];

    if ((v9 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  [(_UIDatePickerViewComponent *)self->_pickerView displaySelectedDateAnimated:v4];
LABEL_13:
}

- (void)setPreferredDatePickerStyle:(UIDatePickerStyle)preferredDatePickerStyle
{
  if (self->_preferredDatePickerStyle != preferredDatePickerStyle)
  {
    self->_preferredDatePickerStyle = preferredDatePickerStyle;
    [(UIDatePicker *)self _updatePickerViewIfNecessary];
  }
}

- (void)setRoundsToMinuteInterval:(BOOL)roundsToMinuteInterval
{
  v3 = roundsToMinuteInterval;
  if ([(_UIDatePickerDataModel *)self->_data roundsToMinuteInterval]!= roundsToMinuteInterval)
  {
    [(_UIDatePickerDataModel *)self->_data setRoundsToMinuteInterval:v3];
    pickerView = self->_pickerView;

    [(_UIDatePickerViewComponent *)pickerView didChangeRoundsToMinuteInterval];
  }
}

- (void)_setSelectionBarIgnoresInset:(BOOL)inset
{
  if (self->_datePickerViewFlags.selectionBarIgnoresInset != inset)
  {
    insetCopy = inset;
    self->_datePickerViewFlags.selectionBarIgnoresInset = inset;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      pickerView = self->_pickerView;

      [(_UIDatePickerViewComponent *)pickerView _setSelectionBarIgnoresInset:insetCopy];
    }
  }
}

- (void)_setCustomFontDesign:(id)design
{
  designCopy = design;
  customFontDesign = [(_UIDatePickerDataModel *)self->_data customFontDesign];
  v6 = designCopy;
  v8 = v6;
  if (customFontDesign == v6)
  {

    goto LABEL_10;
  }

  if (v6 && customFontDesign)
  {
    v7 = [customFontDesign isEqual:v6];

    if (v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  [(_UIDatePickerDataModel *)self->_data setCustomFontDesign:v8];
  if (objc_opt_respondsToSelector())
  {
    [(_UIDatePickerViewComponent *)self->_pickerView didChangeCustomFontDesign];
  }

LABEL_10:
}

- (UIEdgeInsets)_appliedInsetsToEdgeOfContent
{
  [(_UIDatePickerViewComponent *)self->_pickerView appliedInsetsToEdgeOfContent];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (double)_contentWidth
{
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([(_UIDatePickerViewComponent *)self->_pickerView usesAutoLayout]& 1) != 0 || ![(_UIDatePickerViewComponent *)self->_pickerView hasDefaultSize])
  {
    [(UIView *)self bounds];
    return v5;
  }

  else
  {
    pickerView = self->_pickerView;

    [(_UIDatePickerViewComponent *)pickerView contentWidth];
  }

  return result;
}

- (CGSize)_intrinsicSizeWithinSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([(_UIDatePickerViewComponent *)self->_pickerView usesAutoLayout]& 1) != 0)
  {
    v6 = -1.0;
    v7 = -1.0;
  }

  else
  {
    hasDefaultSize = [(_UIDatePickerViewComponent *)self->_pickerView hasDefaultSize];
    pickerView = self->_pickerView;
    if (hasDefaultSize)
    {

      [(_UIDatePickerViewComponent *)pickerView defaultSize];
    }

    else
    {

      [(_UIDatePickerViewComponent *)pickerView _sizeThatFits:width, height];
    }
  }

  result.height = v7;
  result.width = v6;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [(_UIDatePickerViewComponent *)self->_pickerView usesAutoLayout])
  {
    pickerView = self->_pickerView;

    [(_UIDatePickerViewComponent *)pickerView systemLayoutSizeFittingSize:width, height];
  }

  else
  {

    [(UIDatePicker *)self _intrinsicSizeWithinSize:width, height];
  }

  result.height = v8;
  result.width = v7;
  return result;
}

- (void)invalidateIntrinsicContentSize
{
  [(_UIDatePickerViewComponent *)self->_pickerView invalidateIntrinsicContentSize];
  v3.receiver = self;
  v3.super_class = UIDatePicker;
  [(UIView *)&v3 invalidateIntrinsicContentSize];
}

- (void)traitCollectionDidChange:(id)change
{
  if (dyld_program_sdk_at_least())
  {

    [(UIDatePicker *)self invalidateIntrinsicContentSize];
  }
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  if (UIViewIgnoresTouchEvents(self))
  {
    v8 = 0;
  }

  else
  {
    v8 = [(_UIDatePickerViewComponent *)self->_pickerView hitTest:eventCopy withEvent:x, y];
  }

  return v8;
}

- (void)layoutMarginsDidChange
{
  v3.receiver = self;
  v3.super_class = UIDatePicker;
  [(UIView *)&v3 layoutMarginsDidChange];
  [(UIDatePicker *)self _workaround66574039_updateLayoutMargins];
}

- (void)_workaround66574039_updateLayoutMargins
{
  if (objc_opt_respondsToSelector())
  {
    pickerView = self->_pickerView;

    [(_UIDatePickerViewComponent *)pickerView _workaround66574039_datePickerDidUpdateLayoutMargins];
  }
}

- (void)setContentHorizontalAlignment:(int64_t)alignment
{
  v7.receiver = self;
  v7.super_class = UIDatePicker;
  [(UIControl *)&v7 setContentHorizontalAlignment:?];
  v5 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [(_UIDatePickerViewComponent *)self->_pickerView setContentHorizontalAlignment:alignment];
  }
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if ((dyld_program_sdk_at_least() & 1) == 0 && self->_pickerView && ((objc_opt_respondsToSelector() & 1) == 0 || ([(_UIDatePickerViewComponent *)self->_pickerView usesAutoLayout]& 1) == 0))
  {
    [(_UIDatePickerViewComponent *)self->_pickerView _sizeThatFits:width, height];
    width = v8;
    height = v9;
  }

  v10.receiver = self;
  v10.super_class = UIDatePicker;
  [(UIView *)&v10 setFrame:x, y, width, height];
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  if ((dyld_program_sdk_at_least() & 1) == 0 && self->_pickerView && ((objc_opt_respondsToSelector() & 1) == 0 || ([(_UIDatePickerViewComponent *)self->_pickerView usesAutoLayout]& 1) == 0))
  {
    [(_UIDatePickerViewComponent *)self->_pickerView _sizeThatFits:width, height];
    width = v8;
    height = v9;
  }

  v10.receiver = self;
  v10.super_class = UIDatePicker;
  [(UIView *)&v10 setBounds:x, y, width, height];
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5.receiver = self;
  v5.super_class = UIDatePicker;
  [(UIControl *)&v5 setEnabled:?];
  [(_UIDatePickerViewComponent *)self->_pickerView _setEnabled:enabledCopy];
}

- (void)_emitValueChanged
{
  if (!self->_ignoresEmitValueChanged)
  {
    [(UIControl *)self sendActionsForControlEvents:4096];
  }
}

- (void)_updatePickerDateFromOldDate:(id)date animated:(BOOL)animated
{
  self->_ignoresEmitValueChanged = 1;
  [(_UIDatePickerViewComponent *)self->_pickerView didChangeDateFrom:date animated:animated];
  self->_ignoresEmitValueChanged = 0;
}

- (id)_systemDefaultFocusGroupIdentifier
{
  _focusBehavior = [(UIView *)self _focusBehavior];
  focusGroupContainmentBehavior = [_focusBehavior focusGroupContainmentBehavior];

  if ((focusGroupContainmentBehavior & 0x10) != 0)
  {
    _systemDefaultFocusGroupIdentifier = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UIDatePicker;
    _systemDefaultFocusGroupIdentifier = [(UIControl *)&v7 _systemDefaultFocusGroupIdentifier];
  }

  return _systemDefaultFocusGroupIdentifier;
}

- (BOOL)becomeFirstResponder
{
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([(_UIDatePickerViewComponent *)self->_pickerView primaryFirstResponder], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    becomeFirstResponder = [v3 becomeFirstResponder];

    return becomeFirstResponder;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UIDatePicker;
    return [(UIView *)&v7 becomeFirstResponder];
  }
}

- (BOOL)resignFirstResponder
{
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([(_UIDatePickerViewComponent *)self->_pickerView primaryFirstResponder], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    resignFirstResponder = [v3 resignFirstResponder];

    return resignFirstResponder;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UIDatePicker;
    return [(UIResponder *)&v7 resignFirstResponder];
  }
}

+ (void)_prepareStyleStorageIfNecessary
{
  if (_prepareStyleStorageIfNecessary_once != -1)
  {
    dispatch_once(&_prepareStyleStorageIfNecessary_once, &__block_literal_global_469);
  }
}

void __47__UIDatePicker__prepareStyleStorageIfNecessary__block_invoke()
{
  v2 = objc_alloc_init(_UIDatePickerStyle_iOS);
  v0 = [MEMORY[0x1E695DF90] dictionary];
  v1 = __datePickerIdiomsToStyles;
  __datePickerIdiomsToStyles = v0;
}

+ (void)_registerStyle:(id)style forIdiom:(int64_t)idiom
{
  styleCopy = style;
  [self _prepareStyleStorageIfNecessary];
  v7 = __datePickerIdiomsToStyles;
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:idiom];
  [v7 setObject:styleCopy forKey:v8];
}

+ (id)_styleForIdiom:(int64_t)idiom
{
  v3 = __datePickerIdiomsToStyles;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:idiom];
  v5 = [v3 objectForKey:v4];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    if (_UISolariumEnabled())
    {
      v7 = _UIDatePickerStyle_Glass;
    }

    else
    {
      v7 = _UIDatePickerStyle_iOS;
    }

    v6 = objc_alloc_init(v7);
  }

  v8 = v6;

  return v8;
}

- (void)_setCompactStyleDelegate:(id)delegate
{
  objc_storeWeak(&self->__compactStyleDelegate, delegate);
  v6 = self->_pickerView;
  v4 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [(_UIDatePickerViewComponent *)v6 didChangeCompactStyleDelegate];
  }
}

- (_UIDatePickerCompactStyleDelegate)_compactStyleDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->__compactStyleDelegate);

  return WeakRetained;
}

- (void)_compactStyleSetActiveComponent:(int64_t)component
{
  v6 = self->_pickerView;
  v4 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [(_UIDatePickerViewComponent *)v6 setActiveComponent:component];
  }
}

- (NSDictionary)_overrideCompactTextAttributes
{
  v2 = self->_pickerView;
  v3 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    overrideAttributes = [(_UIDatePickerViewComponent *)v2 overrideAttributes];
  }

  else
  {
    overrideAttributes = 0;
  }

  return overrideAttributes;
}

- (void)_setOverrideCompactTextAttributes:(id)attributes
{
  attributesCopy = attributes;
  v4 = self->_pickerView;
  v5 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [(_UIDatePickerViewComponent *)v4 setOverrideAttributes:attributesCopy];
  }
}

- (void)_setDisplaysTimeZone:(BOOL)zone
{
  if (self->__displaysTimeZone != zone)
  {
    self->__displaysTimeZone = zone;
    v6 = self->_pickerView;
    v4 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      [(_UIDatePickerViewComponent *)v6 updateTimeZoneDisplay];
    }
  }
}

- (NSDate)_dateUnderSelectionBar
{
  if (objc_opt_respondsToSelector())
  {
    pickerView = self->_pickerView;
  }

  else
  {
    pickerView = 0;
  }

  [(_UIDatePickerViewComponent *)pickerView _updateDateOrTime];

  return [(UIDatePicker *)self date];
}

- (BOOL)_isTimeIntervalMode
{
  if (objc_opt_respondsToSelector())
  {
    pickerView = self->_pickerView;
  }

  else
  {
    pickerView = 0;
  }

  return [(_UIDatePickerViewComponent *)pickerView _isTimeIntervalMode];
}

- (void)_setHighlightsToday:(BOOL)today
{
  todayCopy = today;
  if (objc_opt_respondsToSelector())
  {
    pickerView = self->_pickerView;
  }

  else
  {
    pickerView = 0;
  }

  [(_UIDatePickerViewComponent *)pickerView setHighlightsToday:todayCopy];
}

- (BOOL)_allowsZeroCountDownDuration
{
  if (objc_opt_respondsToSelector())
  {
    pickerView = self->_pickerView;
  }

  else
  {
    pickerView = 0;
  }

  return [(_UIDatePickerViewComponent *)pickerView _allowsZeroCountDownDuration];
}

- (void)_setAllowsZeroCountDownDuration:(BOOL)duration
{
  durationCopy = duration;
  if (objc_opt_respondsToSelector())
  {
    pickerView = self->_pickerView;
  }

  else
  {
    pickerView = 0;
  }

  [(_UIDatePickerViewComponent *)pickerView _setAllowsZeroCountDownDuration:durationCopy];
}

- (BOOL)_allowsZeroTimeInterval
{
  if (objc_opt_respondsToSelector())
  {
    pickerView = self->_pickerView;
  }

  else
  {
    pickerView = 0;
  }

  return [(_UIDatePickerViewComponent *)pickerView _allowsZeroTimeInterval];
}

- (void)_setAllowsZeroTimeInterval:(BOOL)interval
{
  intervalCopy = interval;
  if (objc_opt_respondsToSelector())
  {
    pickerView = self->_pickerView;
  }

  else
  {
    pickerView = 0;
  }

  [(_UIDatePickerViewComponent *)pickerView _setAllowsZeroTimeInterval:intervalCopy];
}

- (UIColor)_highlightColor
{
  if (objc_opt_respondsToSelector())
  {
    pickerView = self->_pickerView;
  }

  else
  {
    pickerView = 0;
  }

  return [(_UIDatePickerViewComponent *)pickerView _highlightColor];
}

- (void)_setHighlightColor:(id)color
{
  colorCopy = color;
  if (objc_opt_respondsToSelector())
  {
    pickerView = self->_pickerView;
  }

  else
  {
    pickerView = 0;
  }

  [(_UIDatePickerViewComponent *)pickerView _setHighlightColor:colorCopy];
}

- (UIColor)_textColor
{
  if (objc_opt_respondsToSelector())
  {
    pickerView = self->_pickerView;
  }

  else
  {
    pickerView = 0;
  }

  return [(_UIDatePickerViewComponent *)pickerView _textColor];
}

- (void)_setTextColor:(id)color
{
  colorCopy = color;
  if (objc_opt_respondsToSelector())
  {
    pickerView = self->_pickerView;
  }

  else
  {
    pickerView = 0;
  }

  [(_UIDatePickerViewComponent *)pickerView _setTextColor:colorCopy];
  [(_UIDatePickerDataModel *)self->_data setCustomTextColor:colorCopy];

  v6 = self->_pickerView;

  [(_UIDatePickerViewComponent *)v6 didReset];
}

- (UIColor)_textShadowColor
{
  if (objc_opt_respondsToSelector())
  {
    pickerView = self->_pickerView;
  }

  else
  {
    pickerView = 0;
  }

  return [(_UIDatePickerViewComponent *)pickerView _textShadowColor];
}

- (void)_setTextShadowColor:(id)color
{
  colorCopy = color;
  if (objc_opt_respondsToSelector())
  {
    pickerView = self->_pickerView;
  }

  else
  {
    pickerView = 0;
  }

  [(_UIDatePickerViewComponent *)pickerView _setTextShadowColor:colorCopy];
}

- (UIColor)_magnifierLineColor
{
  if (objc_opt_respondsToSelector())
  {
    pickerView = self->_pickerView;
  }

  else
  {
    pickerView = 0;
  }

  return [(_UIDatePickerViewComponent *)pickerView _magnifierLineColor];
}

- (void)_setMagnifierLineColor:(id)color
{
  colorCopy = color;
  if (objc_opt_respondsToSelector())
  {
    pickerView = self->_pickerView;
  }

  else
  {
    pickerView = 0;
  }

  [(_UIDatePickerViewComponent *)pickerView _setMagnifierLineColor:colorCopy];
}

- (double)timeInterval
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0.0;
  }

  pickerView = self->_pickerView;

  [(_UIDatePickerViewComponent *)pickerView timeInterval];
  return result;
}

- (void)setTimeInterval:(double)interval
{
  if (objc_opt_respondsToSelector())
  {
    pickerView = self->_pickerView;

    [(_UIDatePickerViewComponent *)pickerView setTimeInterval:interval];
  }
}

- (id)dateComponents
{
  lastSelectedDateComponents = [(_UIDatePickerDataModel *)self->_data lastSelectedDateComponents];
  v3 = [lastSelectedDateComponents copy];

  return v3;
}

- (_UIDatePickerOverlayPresentation)_overlayPresentation
{
  WeakRetained = objc_loadWeakRetained(&self->__overlayPresentation);

  return WeakRetained;
}

- (void)_performScrollTest:(id)test withIterations:(int64_t)iterations rowsToScroll:(int64_t)scroll inComponent:(int64_t)component
{
  testCopy = test;
  if (objc_opt_respondsToSelector())
  {
    [(_UIDatePickerViewComponent *)self->_pickerView _performScrollTest:testCopy withIterations:iterations rowsToScroll:scroll inComponent:component];
  }
}

@end