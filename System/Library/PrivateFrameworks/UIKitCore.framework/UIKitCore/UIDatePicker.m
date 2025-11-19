@interface UIDatePicker
+ (id)_styleForIdiom:(int64_t)a3;
+ (void)_prepareStyleStorageIfNecessary;
+ (void)_registerStyle:(id)a3 forIdiom:(int64_t)a4;
- (BOOL)_allowsZeroCountDownDuration;
- (BOOL)_allowsZeroTimeInterval;
- (BOOL)_isTimeIntervalMode;
- (BOOL)becomeFirstResponder;
- (BOOL)resignFirstResponder;
- (CGSize)_intrinsicSizeWithinSize:(CGSize)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSCalendar)calendar;
- (NSDate)_dateUnderSelectionBar;
- (NSDictionary)_overrideCompactTextAttributes;
- (NSLocale)locale;
- (UIColor)_highlightColor;
- (UIColor)_magnifierLineColor;
- (UIColor)_textColor;
- (UIColor)_textShadowColor;
- (UIDatePicker)initWithCoder:(id)a3;
- (UIDatePicker)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)_appliedInsetsToEdgeOfContent;
- (_UIDatePickerCompactStyleDelegate)_compactStyleDelegate;
- (_UIDatePickerOverlayPresentation)_overlayPresentation;
- (double)_contentWidth;
- (double)timeInterval;
- (id)_systemDefaultFocusGroupIdentifier;
- (id)dateComponents;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_commonInit;
- (void)_compactStyleSetActiveComponent:(int64_t)a3;
- (void)_datePickerReset:(id)a3;
- (void)_emitValueChanged;
- (void)_installPickerView:(id)a3 updatingSize:(BOOL)a4;
- (void)_performScrollTest:(id)a3 withIterations:(int64_t)a4 rowsToScroll:(int64_t)a5 inComponent:(int64_t)a6;
- (void)_populateArchivedSubviews:(id)a3;
- (void)_registerObservers;
- (void)_setAllowsZeroCountDownDuration:(BOOL)a3;
- (void)_setAllowsZeroTimeInterval:(BOOL)a3;
- (void)_setCompactStyleDelegate:(id)a3;
- (void)_setCustomFontDesign:(id)a3;
- (void)_setDisplaysTimeZone:(BOOL)a3;
- (void)_setHighlightColor:(id)a3;
- (void)_setHighlightsToday:(BOOL)a3;
- (void)_setMagnifierLineColor:(id)a3;
- (void)_setOverrideCompactTextAttributes:(id)a3;
- (void)_setSelectionBarIgnoresInset:(BOOL)a3;
- (void)_setTextColor:(id)a3;
- (void)_setTextShadowColor:(id)a3;
- (void)_setUpInitialValues;
- (void)_updatePickerDateFromOldDate:(id)a3 animated:(BOOL)a4;
- (void)_updatePickerViewIfNecessary;
- (void)_workaround66574039_updateLayoutMargins;
- (void)awakeFromNib;
- (void)encodeWithCoder:(id)a3;
- (void)invalidateIntrinsicContentSize;
- (void)layoutMarginsDidChange;
- (void)setBounds:(CGRect)a3;
- (void)setCalendar:(NSCalendar *)calendar;
- (void)setContentHorizontalAlignment:(int64_t)a3;
- (void)setDate:(NSDate *)date;
- (void)setDate:(NSDate *)date animated:(BOOL)animated;
- (void)setDatePickerMode:(UIDatePickerMode)datePickerMode;
- (void)setEnabled:(BOOL)a3;
- (void)setFrame:(CGRect)a3;
- (void)setLocale:(NSLocale *)locale;
- (void)setMaximumDate:(NSDate *)maximumDate;
- (void)setMinimumDate:(NSDate *)minimumDate;
- (void)setMinuteInterval:(NSInteger)minuteInterval;
- (void)setPreferredDatePickerStyle:(UIDatePickerStyle)preferredDatePickerStyle;
- (void)setRoundsToMinuteInterval:(BOOL)roundsToMinuteInterval;
- (void)setTimeInterval:(double)a3;
- (void)setTimeZone:(NSTimeZone *)timeZone;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation UIDatePicker

- (UIDatePicker)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
    v14 = [v13 userInterfaceIdiom];

    if ((v14 & 0xFFFFFFFFFFFFFFFBLL) == 1)
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

- (UIDatePicker)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = UIDatePicker;
  v5 = [(UIControl *)&v21 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_opt_new();
    data = v5->_data;
    v5->_data = v6;

    v5->_preferredDatePickerStyle = [v4 decodeIntegerForKey:@"UIPickerStyle"];
    if ([v4 containsValueForKey:@"UIDatePickerMode"])
    {
      v8 = [v4 decodeIntegerForKey:@"UIDatePickerMode"];
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
    v11 = [v4 decodeObjectForKey:@"UILocale"];
    [(UIDatePicker *)v5 setLocale:v11];

    v12 = [v4 decodeObjectForKey:@"UITimeZone"];
    [(UIDatePicker *)v5 setTimeZone:v12];

    v13 = [v4 decodeObjectForKey:@"UICalendar"];
    [(UIDatePicker *)v5 setCalendar:v13];

    if ([v4 containsValueForKey:@"UIMinuteInterval"])
    {
      v14 = [v4 decodeIntegerForKey:@"UIMinuteInterval"];
    }

    else
    {
      v14 = 1;
    }

    [(UIDatePicker *)v5 setMinuteInterval:v14];
    if ([(UIDatePicker *)v5 _isTimeIntervalMode])
    {
      [v4 decodeFloatForKey:@"UICountDownDuration"];
      [(UIDatePicker *)v5 setTimeInterval:v15];
    }

    else
    {
      v16 = [v4 decodeObjectForKey:@"UIMinimumDate"];
      [(UIDatePicker *)v5 setMinimumDate:v16];

      v17 = [v4 decodeObjectForKey:@"UIMaximumDate"];
      [(UIDatePicker *)v5 setMaximumDate:v17];

      v18 = [v4 decodeObjectForKey:@"UIDate"];
      [(UIDatePicker *)v5 setDate:v18];
    }

    [(UIDatePicker *)v5 _setUpInitialValues];
    if ([v4 containsValueForKey:@"UIDatePickerUseCurrentDateDuringDecoding"])
    {
      -[UIDatePicker _setUseCurrentDateDuringDecoding:](v5, "_setUseCurrentDateDuringDecoding:", [v4 decodeBoolForKey:@"UIDatePickerUseCurrentDateDuringDecoding"]);
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
    v3 = [MEMORY[0x1E695DF00] date];
    [(UIDatePicker *)self setDate:v3];
  }
}

- (void)_populateArchivedSubviews:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = UIDatePicker;
  [(UIView *)&v5 _populateArchivedSubviews:v4];
  if (self->_pickerView)
  {
    [v4 removeObject:?];
  }
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = UIDatePicker;
  [(UIControl *)&v20 encodeWithCoder:v4];
  preferredDatePickerStyle = self->_preferredDatePickerStyle;
  if (preferredDatePickerStyle)
  {
    [v4 encodeInteger:preferredDatePickerStyle forKey:@"UIPickerStyle"];
  }

  if ([(UIDatePicker *)self datePickerMode]!= UIDatePickerModeDateAndTime)
  {
    [v4 encodeInteger:-[UIDatePicker datePickerMode](self forKey:{"datePickerMode"), @"UIDatePickerMode"}];
  }

  v6 = [(_UIDatePickerDataModel *)self->_data locale];

  if (v6)
  {
    v7 = [(_UIDatePickerDataModel *)self->_data locale];
    [v4 encodeObject:v7 forKey:@"UILocale"];
  }

  v8 = [(UIDatePicker *)self timeZone];

  if (v8)
  {
    v9 = [(UIDatePicker *)self timeZone];
    [v4 encodeObject:v9 forKey:@"UITimeZone"];
  }

  v10 = [(_UIDatePickerDataModel *)self->_data calendar];

  if (v10)
  {
    v11 = [(_UIDatePickerDataModel *)self->_data calendar];
    [v4 encodeObject:v11 forKey:@"UICalendar"];
  }

  if ([(UIDatePicker *)self _isTimeIntervalMode])
  {
    [(UIDatePicker *)self timeInterval];
    if (v12 != 0.0)
    {
      [(UIDatePicker *)self timeInterval];
      *&v13 = v13;
      [v4 encodeFloat:@"UICountDownDuration" forKey:v13];
    }
  }

  else
  {
    v14 = [(UIDatePicker *)self date];

    if (v14)
    {
      v15 = [(UIDatePicker *)self date];
      [v4 encodeObject:v15 forKey:@"UIDate"];
    }

    v16 = [(UIDatePicker *)self minimumDate];

    if (v16)
    {
      v17 = [(UIDatePicker *)self minimumDate];
      [v4 encodeObject:v17 forKey:@"UIMinimumDate"];
    }

    v18 = [(UIDatePicker *)self maximumDate];

    if (v18)
    {
      v19 = [(UIDatePicker *)self maximumDate];
      [v4 encodeObject:v19 forKey:@"UIMaximumDate"];
    }
  }

  if ([(UIDatePicker *)self minuteInterval]!= 1)
  {
    [v4 encodeInteger:-[UIDatePicker minuteInterval](self forKey:{"minuteInterval"), @"UIMinuteInterval"}];
  }

  if (![(UIDatePicker *)self _useCurrentDateDuringDecoding])
  {
    [v4 encodeBool:-[UIDatePicker _useCurrentDateDuringDecoding](self forKey:{"_useCurrentDateDuringDecoding"), @"UIDatePickerUseCurrentDateDuringDecoding"}];
  }
}

- (void)_setUpInitialValues
{
  v3 = [(UIDatePicker *)self date];

  if (!v3)
  {
    v4 = [MEMORY[0x1E695DF00] date];
    [(UIDatePicker *)self setDate:v4];
  }

  v5 = [(UIView *)self traitCollection];
  v6 = +[UIDatePicker _styleForIdiom:](UIDatePicker, "_styleForIdiom:", [v5 userInterfaceIdiom]);
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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__datePickerReset_ name:0x1EFB8A3D0 object:0];
  [v3 addObserver:self selector:sel__todayChanged_ name:0x1EFB8EE90 object:UIApp];
}

- (void)_datePickerReset:(id)a3
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

- (void)_installPickerView:(id)a3 updatingSize:(BOOL)a4
{
  v4 = a4;
  v26[4] = *MEMORY[0x1E69E9840];
  v8 = a3;
  objc_storeStrong(&self->_pickerView, a3);
  [(_UIDatePickerViewComponent *)self->_pickerView setDatePicker:self];
  if (!self->_data)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"UIDatePicker.m" lineNumber:392 description:@"Installing picker view before data model has been created"];
  }

  -[_UIDatePickerDataModel setDatePickerStyle:](self->_data, "setDatePickerStyle:", [v8 datePickerStyle]);
  [(_UIDatePickerViewComponent *)self->_pickerView setData:self->_data];
  [(_UIDatePickerViewComponent *)self->_pickerView _setEnabled:[(UIControl *)self isEnabled]];
  [(UIDatePicker *)self _workaround66574039_updateLayoutMargins];
  [(UIView *)self addSubview:self->_pickerView];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([(_UIDatePickerViewComponent *)self->_pickerView usesAutoLayout]& 1) != 0)
  {
    [(_UIDatePickerViewComponent *)self->_pickerView setTranslatesAutoresizingMaskIntoConstraints:0];
    v19 = MEMORY[0x1E69977A0];
    v24 = [(_UIDatePickerViewComponent *)self->_pickerView leadingAnchor];
    v23 = [(UIView *)self leadingAnchor];
    v22 = [v24 constraintEqualToAnchor:v23];
    v26[0] = v22;
    v21 = [(_UIDatePickerViewComponent *)self->_pickerView trailingAnchor];
    v20 = [(UIView *)self trailingAnchor];
    v18 = [v21 constraintEqualToAnchor:v20];
    v26[1] = v18;
    v9 = [(_UIDatePickerViewComponent *)self->_pickerView topAnchor];
    v10 = [(UIView *)self topAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];
    v26[2] = v11;
    v12 = [(_UIDatePickerViewComponent *)self->_pickerView bottomAnchor];
    v13 = [(UIView *)self bottomAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];
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
  if (v4)
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
  v2 = [(_UIDatePickerDataModel *)self->_data locale];
  v3 = _UIDatePickerUserLocaleForLocale(v2);

  return v3;
}

- (void)setLocale:(NSLocale *)locale
{
  v4 = _UIDatePickerStoredLocaleForLocale(locale);
  v5 = [(_UIDatePickerDataModel *)self->_data locale];
  v8 = v4;
  v6 = v5;
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
  v2 = [(_UIDatePickerDataModel *)self->_data calendar];
  v3 = _UIDatePickerUserCalendarForCalendar(v2);

  return v3;
}

- (void)setCalendar:(NSCalendar *)calendar
{
  v4 = _UIDatePickerStoredCalendarForCalendar(calendar);
  v5 = [(_UIDatePickerDataModel *)self->_data calendar];
  v6 = v4;
  v8 = v6;
  if (v5 == v6)
  {

    goto LABEL_9;
  }

  if (!v6 || !v5)
  {

    goto LABEL_8;
  }

  v7 = [v5 isEqual:v6];

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
  v5 = [(_UIDatePickerDataModel *)self->_data timeZone];
  v6 = v4;
  v8 = v6;
  if (v5 == v6)
  {

    goto LABEL_9;
  }

  if (!v6 || !v5)
  {

    goto LABEL_8;
  }

  v7 = [(NSTimeZone *)v5 isEqual:v6];

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
  v4 = [(UIView *)self window];
  v5 = v4 != 0;

  [(UIDatePicker *)self setDate:v6 animated:v5];
}

- (void)setMinimumDate:(NSDate *)minimumDate
{
  v4 = minimumDate;
  v5 = [(_UIDatePickerDataModel *)self->_data minimumDate];
  v6 = v4;
  v11 = v6;
  if (v5 == v6)
  {

LABEL_10:
    v8 = v11;
    goto LABEL_11;
  }

  if (!v6 || !v5)
  {

LABEL_8:
    v5 = [(_UIDatePickerDataModel *)self->_data effectiveDate];
    [(_UIDatePickerDataModel *)self->_data setMinimumDate:v11];
    [(_UIDatePickerViewComponent *)self->_pickerView didChangeMinimumDate];
    v9 = [(_UIDatePickerDataModel *)self->_data effectiveDate];
    v10 = [(NSDate *)v5 isEqualToDate:v9];

    if (!v10)
    {
      [(UIDatePicker *)self _updatePickerDateFromOldDate:v5 animated:0];
    }

    goto LABEL_10;
  }

  v7 = [(NSDate *)v5 isEqual:v6];

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
  v5 = [(_UIDatePickerDataModel *)self->_data maximumDate];
  v6 = v4;
  v11 = v6;
  if (v5 == v6)
  {

LABEL_10:
    v8 = v11;
    goto LABEL_11;
  }

  if (!v6 || !v5)
  {

LABEL_8:
    v5 = [(_UIDatePickerDataModel *)self->_data effectiveDate];
    [(_UIDatePickerDataModel *)self->_data setMaximumDate:v11];
    [(_UIDatePickerViewComponent *)self->_pickerView didChangeMaximumDate];
    v9 = [(_UIDatePickerDataModel *)self->_data effectiveDate];
    v10 = [(NSDate *)v5 isEqualToDate:v9];

    if (!v10)
    {
      [(UIDatePicker *)self _updatePickerDateFromOldDate:v5 animated:0];
    }

    goto LABEL_10;
  }

  v7 = [(NSDate *)v5 isEqual:v6];

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
  v7 = [(_UIDatePickerDataModel *)self->_data date];
  v8 = v6;
  v13 = v8;
  if (v7 == v8)
  {
  }

  else
  {
    if (!v8 || !v7)
    {

LABEL_9:
      v10 = [(_UIDatePickerDataModel *)self->_data effectiveDate];
      [(_UIDatePickerDataModel *)self->_data setDate:v13];
      v11 = [(_UIDatePickerDataModel *)self->_data effectiveDate];
      v12 = [v10 isEqualToDate:v11];

      if (v12)
      {
        [(_UIDatePickerViewComponent *)self->_pickerView displaySelectedDateAnimated:v4];
      }

      else
      {
        [(UIDatePicker *)self _updatePickerDateFromOldDate:v10 animated:v4];
      }

      goto LABEL_13;
    }

    v9 = [(NSDate *)v7 isEqual:v8];

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

- (void)_setSelectionBarIgnoresInset:(BOOL)a3
{
  if (self->_datePickerViewFlags.selectionBarIgnoresInset != a3)
  {
    v3 = a3;
    self->_datePickerViewFlags.selectionBarIgnoresInset = a3;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      pickerView = self->_pickerView;

      [(_UIDatePickerViewComponent *)pickerView _setSelectionBarIgnoresInset:v3];
    }
  }
}

- (void)_setCustomFontDesign:(id)a3
{
  v4 = a3;
  v5 = [(_UIDatePickerDataModel *)self->_data customFontDesign];
  v6 = v4;
  v8 = v6;
  if (v5 == v6)
  {

    goto LABEL_10;
  }

  if (v6 && v5)
  {
    v7 = [v5 isEqual:v6];

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

- (CGSize)_intrinsicSizeWithinSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([(_UIDatePickerViewComponent *)self->_pickerView usesAutoLayout]& 1) != 0)
  {
    v6 = -1.0;
    v7 = -1.0;
  }

  else
  {
    v8 = [(_UIDatePickerViewComponent *)self->_pickerView hasDefaultSize];
    pickerView = self->_pickerView;
    if (v8)
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

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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

- (void)traitCollectionDidChange:(id)a3
{
  if (dyld_program_sdk_at_least())
  {

    [(UIDatePicker *)self invalidateIntrinsicContentSize];
  }
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if (UIViewIgnoresTouchEvents(self))
  {
    v8 = 0;
  }

  else
  {
    v8 = [(_UIDatePickerViewComponent *)self->_pickerView hitTest:v7 withEvent:x, y];
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

- (void)setContentHorizontalAlignment:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = UIDatePicker;
  [(UIControl *)&v7 setContentHorizontalAlignment:?];
  v5 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [(_UIDatePickerViewComponent *)self->_pickerView setContentHorizontalAlignment:a3];
  }
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = UIDatePicker;
  [(UIControl *)&v5 setEnabled:?];
  [(_UIDatePickerViewComponent *)self->_pickerView _setEnabled:v3];
}

- (void)_emitValueChanged
{
  if (!self->_ignoresEmitValueChanged)
  {
    [(UIControl *)self sendActionsForControlEvents:4096];
  }
}

- (void)_updatePickerDateFromOldDate:(id)a3 animated:(BOOL)a4
{
  self->_ignoresEmitValueChanged = 1;
  [(_UIDatePickerViewComponent *)self->_pickerView didChangeDateFrom:a3 animated:a4];
  self->_ignoresEmitValueChanged = 0;
}

- (id)_systemDefaultFocusGroupIdentifier
{
  v3 = [(UIView *)self _focusBehavior];
  v4 = [v3 focusGroupContainmentBehavior];

  if ((v4 & 0x10) != 0)
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UIDatePicker;
    v5 = [(UIControl *)&v7 _systemDefaultFocusGroupIdentifier];
  }

  return v5;
}

- (BOOL)becomeFirstResponder
{
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([(_UIDatePickerViewComponent *)self->_pickerView primaryFirstResponder], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    v5 = [v3 becomeFirstResponder];

    return v5;
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
    v5 = [v3 resignFirstResponder];

    return v5;
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

+ (void)_registerStyle:(id)a3 forIdiom:(int64_t)a4
{
  v6 = a3;
  [a1 _prepareStyleStorageIfNecessary];
  v7 = __datePickerIdiomsToStyles;
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [v7 setObject:v6 forKey:v8];
}

+ (id)_styleForIdiom:(int64_t)a3
{
  v3 = __datePickerIdiomsToStyles;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
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

- (void)_setCompactStyleDelegate:(id)a3
{
  objc_storeWeak(&self->__compactStyleDelegate, a3);
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

- (void)_compactStyleSetActiveComponent:(int64_t)a3
{
  v6 = self->_pickerView;
  v4 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [(_UIDatePickerViewComponent *)v6 setActiveComponent:a3];
  }
}

- (NSDictionary)_overrideCompactTextAttributes
{
  v2 = self->_pickerView;
  v3 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(_UIDatePickerViewComponent *)v2 overrideAttributes];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_setOverrideCompactTextAttributes:(id)a3
{
  v7 = a3;
  v4 = self->_pickerView;
  v5 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [(_UIDatePickerViewComponent *)v4 setOverrideAttributes:v7];
  }
}

- (void)_setDisplaysTimeZone:(BOOL)a3
{
  if (self->__displaysTimeZone != a3)
  {
    self->__displaysTimeZone = a3;
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

- (void)_setHighlightsToday:(BOOL)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    pickerView = self->_pickerView;
  }

  else
  {
    pickerView = 0;
  }

  [(_UIDatePickerViewComponent *)pickerView setHighlightsToday:v3];
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

- (void)_setAllowsZeroCountDownDuration:(BOOL)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    pickerView = self->_pickerView;
  }

  else
  {
    pickerView = 0;
  }

  [(_UIDatePickerViewComponent *)pickerView _setAllowsZeroCountDownDuration:v3];
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

- (void)_setAllowsZeroTimeInterval:(BOOL)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    pickerView = self->_pickerView;
  }

  else
  {
    pickerView = 0;
  }

  [(_UIDatePickerViewComponent *)pickerView _setAllowsZeroTimeInterval:v3];
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

- (void)_setHighlightColor:(id)a3
{
  v5 = a3;
  if (objc_opt_respondsToSelector())
  {
    pickerView = self->_pickerView;
  }

  else
  {
    pickerView = 0;
  }

  [(_UIDatePickerViewComponent *)pickerView _setHighlightColor:v5];
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

- (void)_setTextColor:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    pickerView = self->_pickerView;
  }

  else
  {
    pickerView = 0;
  }

  [(_UIDatePickerViewComponent *)pickerView _setTextColor:v4];
  [(_UIDatePickerDataModel *)self->_data setCustomTextColor:v4];

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

- (void)_setTextShadowColor:(id)a3
{
  v5 = a3;
  if (objc_opt_respondsToSelector())
  {
    pickerView = self->_pickerView;
  }

  else
  {
    pickerView = 0;
  }

  [(_UIDatePickerViewComponent *)pickerView _setTextShadowColor:v5];
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

- (void)_setMagnifierLineColor:(id)a3
{
  v5 = a3;
  if (objc_opt_respondsToSelector())
  {
    pickerView = self->_pickerView;
  }

  else
  {
    pickerView = 0;
  }

  [(_UIDatePickerViewComponent *)pickerView _setMagnifierLineColor:v5];
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

- (void)setTimeInterval:(double)a3
{
  if (objc_opt_respondsToSelector())
  {
    pickerView = self->_pickerView;

    [(_UIDatePickerViewComponent *)pickerView setTimeInterval:a3];
  }
}

- (id)dateComponents
{
  v2 = [(_UIDatePickerDataModel *)self->_data lastSelectedDateComponents];
  v3 = [v2 copy];

  return v3;
}

- (_UIDatePickerOverlayPresentation)_overlayPresentation
{
  WeakRetained = objc_loadWeakRetained(&self->__overlayPresentation);

  return WeakRetained;
}

- (void)_performScrollTest:(id)a3 withIterations:(int64_t)a4 rowsToScroll:(int64_t)a5 inComponent:(int64_t)a6
{
  v10 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(_UIDatePickerViewComponent *)self->_pickerView _performScrollTest:v10 withIterations:a4 rowsToScroll:a5 inComponent:a6];
  }
}

@end