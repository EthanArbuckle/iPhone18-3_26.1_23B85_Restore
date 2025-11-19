@interface PKDatePickerImpl_CCExpiryPickerView
- (BOOL)_useDoubleMonthStyle;
- (NSDate)date;
- (double)_calculateWidthForComponent:(int64_t)a3 usingFont:(id)a4;
- (id)_dateFormatForCalendarUnit:(unint64_t)a3;
- (id)_dateWithCalendarUnit:(unint64_t)a3 value:(int64_t)a4;
- (id)_stringForComponent:(int64_t)a3 index:(unint64_t)a4;
- (id)initShowingDay:(BOOL)a3 month:(BOOL)a4 year:(BOOL)a5 locale:(id)a6 calendar:(id)a7;
- (id)pickerView:(id)a3 viewForRow:(int64_t)a4 forComponent:(int64_t)a5 reusingView:(id)a6;
- (unint64_t)_defaultIndexForComponent:(int64_t)a3;
- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5;
- (void)setDate:(id)a3;
- (void)setDateValueChangedTarget:(id)a3 action:(SEL)a4;
@end

@implementation PKDatePickerImpl_CCExpiryPickerView

- (id)initShowingDay:(BOOL)a3 month:(BOOL)a4 year:(BOOL)a5 locale:(id)a6 calendar:(id)a7
{
  v8 = a5;
  v9 = a4;
  v12 = a6;
  v47.receiver = self;
  v47.super_class = PKDatePickerImpl_CCExpiryPickerView;
  v13 = [(PKDatePickerImpl_CCExpiryPickerView *)&v47 init];
  v14 = v13;
  if (v13)
  {
    [(PKDatePickerImpl_CCExpiryPickerView *)v13 setDelegate:v13];
    v15 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
    v16 = 632;
    calendar = v14->_calendar;
    v14->_calendar = v15;

    objc_storeStrong(&v14->_locale, a6);
    v18 = [MEMORY[0x1E69DB878] systemFontOfSize:23.5];
    v19 = 648;
    font = v14->_font;
    v14->_font = v18;

    v45 = v12;
    if (v9 && v8 && !a3)
    {
      *v14->_calendarUnit = xmmword_1BE1165D0;
    }

    else
    {
      v21 = MEMORY[0x1E695DF30];
      v22 = *MEMORY[0x1E695D930];
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      [v21 raise:v22 format:{@"%@ does not support the specified flags.", v24}];
    }

    v25 = 0;
    calendarUnit = v14->_calendarUnit;
    possibleRange = v14->_possibleRange;
    v28 = 1;
    v29 = 0x1E696A000;
    do
    {
      v46 = v28;
      v30 = calendarUnit[v25];
      v31 = &possibleRange[v25];
      v31->location = [*(&v14->super.super.super.super.isa + v16) maximumRangeOfUnit:v30];
      v31->length = v32;
      if (v30 == 4)
      {
        v33 = *(&v14->super.super.super.super.isa + v16);
        [MEMORY[0x1E695DF00] date];
        v34 = v16;
        v35 = possibleRange;
        v36 = calendarUnit;
        v38 = v37 = v19;
        v31->location = [v33 component:4 fromDate:v38] - 1;

        v19 = v37;
        calendarUnit = v36;
        possibleRange = v35;
        v16 = v34;
        v29 = 0x1E696A000uLL;
        v31->length = 32;
      }

      v39 = objc_alloc_init(*(v29 + 2936));
      v40 = v14->_dateFormatter[v25];
      v14->_dateFormatter[v25] = v39;

      [(NSDateFormatter *)v14->_dateFormatter[v25] setDateStyle:4];
      [(NSDateFormatter *)v14->_dateFormatter[v25] setCalendar:*(&v14->super.super.super.super.isa + v16)];
      [(NSDateFormatter *)v14->_dateFormatter[v25] setFormattingContext:3];
      v41 = v14->_dateFormatter[v25];
      v42 = [(PKDatePickerImpl_CCExpiryPickerView *)v14 _dateFormatForCalendarUnit:v30];
      [(NSDateFormatter *)v41 setDateFormat:v42];

      [(PKDatePickerImpl_CCExpiryPickerView *)v14 _calculateWidthForComponent:v25 usingFont:*(&v14->super.super.super.super.isa + v19)];
      v28 = 0;
      v14->_width[v25] = v43;
      v25 = 1;
    }

    while ((v46 & 1) != 0);
    [(PKDatePickerImpl_CCExpiryPickerView *)v14 reloadAllComponents];
    [(PKDatePickerImpl_CCExpiryPickerView *)v14 selectRow:[(PKDatePickerImpl_CCExpiryPickerView *)v14 _defaultIndexForComponent:0] inComponent:0 animated:0];
    [(PKDatePickerImpl_CCExpiryPickerView *)v14 selectRow:[(PKDatePickerImpl_CCExpiryPickerView *)v14 _defaultIndexForComponent:1] inComponent:1 animated:0];
    v12 = v45;
  }

  return v14;
}

- (NSDate)date
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v3 setCalendar:self->_calendar];
  v4 = 0;
  v5 = 1;
  do
  {
    v6 = v5;
    [v3 setValue:self->_possibleRange[v4].location + -[PKDatePickerImpl_CCExpiryPickerView selectedRowInComponent:](self forComponent:{"selectedRowInComponent:", v4), self->_calendarUnit[v4]}];
    v5 = 0;
    v4 = 1;
  }

  while ((v6 & 1) != 0);
  v7 = [(NSCalendar *)self->_calendar dateFromComponents:v3];

  return v7;
}

- (void)setDate:(id)a3
{
  v5 = 0;
  calendarUnit = self->_calendarUnit;
  v7 = 1;
  do
  {
    v8 = v7;
    v9 = [(NSCalendar *)self->_calendar component:calendarUnit[v5] fromDate:a3];
    v10 = &self->_possibleRange[v5];
    v11 = v9 >= v10->location;
    v12 = v9 - v10->location;
    if (v12 >= 0)
    {
      length = v10->length;
      if (v11 && v12 < length && v12 < [(PKDatePickerImpl_CCExpiryPickerView *)self _numberOfItemsForComponent:v5])
      {
        v15 = [(PKDatePickerImpl_CCExpiryPickerView *)self selectedRowInComponent:v5];
        if (v15 == -1 || v12 != v15)
        {
          [(PKDatePickerImpl_CCExpiryPickerView *)self selectRow:v12 inComponent:v5 animated:0];
        }
      }
    }

    v7 = 0;
    v5 = 1;
  }

  while ((v8 & 1) != 0);
}

- (void)setDateValueChangedTarget:(id)a3 action:(SEL)a4
{
  objc_storeStrong(&self->_changeTarget, a3);
  if (a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = 0;
  }

  self->_changeAction = v6;
}

- (id)_dateFormatForCalendarUnit:(unint64_t)a3
{
  if (a3 == 4)
  {
    v4 = @"yyyy";
  }

  else if (a3 == 8)
  {
    if ([(PKDatePickerImpl_CCExpiryPickerView *)self _useDoubleMonthStyle])
    {
      v3 = @"LL '-' LLLL";
      goto LABEL_9;
    }

    v4 = @"LLLL";
  }

  else
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D930];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [v5 raise:v6 format:{@"%@ does not support the specified calendar unit.", v8}];

    v4 = &stru_1F3BD7330;
  }

  v9 = [MEMORY[0x1E695DF58] currentLocale];
  v10 = PKLocaleWithOverriddenCalendar();

  v3 = [MEMORY[0x1E696AB78] dateFormatFromTemplate:v4 options:0 locale:v10];

LABEL_9:

  return v3;
}

- (BOOL)_useDoubleMonthStyle
{
  v18 = *MEMORY[0x1E69E9840];
  useDoubleMonthStyle = self->_useDoubleMonthStyle;
  if (!useDoubleMonthStyle)
  {
    v4 = [(PKDatePickerImpl_CCExpiryPickerView *)self _dateWithCalendarUnit:8 value:1];
    v5 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v5 setDateStyle:4];
    [v5 setCalendar:self->_calendar];
    [v5 setFormattingContext:3];
    [v5 setDateFormat:@"LLLL"];
    v6 = [v5 stringFromDate:v4];
    [v5 setDateFormat:@"L"];
    v7 = [v5 stringFromDate:v4];
    v8 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v6, "containsString:", v7) ^ 1}];
    v9 = self->_useDoubleMonthStyle;
    self->_useDoubleMonthStyle = v8;

    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(NSNumber *)self->_useDoubleMonthStyle BOOLValue];
      v13[0] = 67109634;
      v13[1] = v11;
      v14 = 2112;
      v15 = v6;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "PKDatePicker: useDoubleMonthStyle: %i (long:'%@' short:'%@')", v13, 0x1Cu);
    }

    useDoubleMonthStyle = self->_useDoubleMonthStyle;
  }

  return [(NSNumber *)useDoubleMonthStyle BOOLValue];
}

- (id)_dateWithCalendarUnit:(unint64_t)a3 value:(int64_t)a4
{
  v7 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v7 setCalendar:self->_calendar];
  [v7 setValue:a4 forComponent:a3];
  v8 = [(NSCalendar *)self->_calendar dateFromComponents:v7];

  return v8;
}

- (double)_calculateWidthForComponent:(int64_t)a3 usingFont:(id)a4
{
  v31[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = self->_calendarUnit[a3];
  v8 = &self->_possibleRange[a3];
  location = v8->location;
  length = v8->length;
  v11 = self->_dateFormatter[a3];
  v12 = [MEMORY[0x1E695DF00] date];
  v13 = v12;
  v14 = 0.0;
  if (location < length + location)
  {
    v26 = v12;
    v27 = *MEMORY[0x1E69DB648];
    do
    {
      v15 = [(NSCalendar *)self->_calendar dateBySettingUnit:v7 value:location ofDate:v13 options:0, v26];
      if (v15)
      {
        v16 = [(NSDateFormatter *)v11 stringFromDate:v15];
        v30 = v27;
        v31[0] = v6;
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
        [v16 sizeWithAttributes:v17];
        if (v18 > v14)
        {
          v28 = v27;
          v29 = v6;
          [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
          v19 = v11;
          v20 = v7;
          v21 = self;
          v23 = v22 = v6;
          [v16 sizeWithAttributes:v23];
          v14 = v24;

          v6 = v22;
          self = v21;
          v7 = v20;
          v11 = v19;
          v13 = v26;
        }
      }

      ++location;
      --length;
    }

    while (length);
  }

  return ceil(v14) + 2.0;
}

- (unint64_t)_defaultIndexForComponent:(int64_t)a3
{
  v5 = self->_calendarUnit[a3];
  calendar = self->_calendar;
  v7 = [MEMORY[0x1E695DF00] date];
  v8 = [(NSCalendar *)calendar component:v5 fromDate:v7]- self->_possibleRange[a3].location;

  return v8;
}

- (id)_stringForComponent:(int64_t)a3 index:(unint64_t)a4
{
  v6 = [(PKDatePickerImpl_CCExpiryPickerView *)self _dateForComponent:a3 index:a4];
  if (v6)
  {
    v7 = [(NSDateFormatter *)self->_dateFormatter[a3] stringFromDate:v6];
  }

  else
  {
    v7 = @"-";
  }

  return v7;
}

- (id)pickerView:(id)a3 viewForRow:(int64_t)a4 forComponent:(int64_t)a5 reusingView:(id)a6
{
  v9 = a6;
  v10 = v9;
  if (!v9)
  {
    v10 = objc_alloc_init(PKDatePickerLabel);
  }

  v11 = [(PKDatePickerImpl_CCExpiryPickerView *)self _stringForComponent:a5 index:a4];
  [(PKDatePickerLabel *)v10 setText:v11];
  if (a5)
  {
    v12 = 10.0;
  }

  else
  {
    v12 = 5.0;
  }

  if (a5)
  {
    v13 = 5.0;
  }

  else
  {
    v13 = 10.0;
  }

  [(PKDatePickerLabel *)v10 setTextAlignment:2 * (a5 != 0)];
  [(PKDatePickerLabel *)v10 setFont:self->_font];
  v14 = [(PKDatePickerImpl_CCExpiryPickerView *)self _textColor];
  [(PKDatePickerLabel *)v10 setTextColor:v14];

  [(PKDatePickerLabel *)v10 setContentInset:0.0, v12, 0.0, v13];

  return v10;
}

- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5
{
  v6 = a3;
  if (self->_changeTarget)
  {
    if (self->_changeAction)
    {
      v9 = v6;
      v7 = objc_opt_respondsToSelector();
      v6 = v9;
      if (v7)
      {
        if (self->_changeAction)
        {
          changeAction = self->_changeAction;
        }

        else
        {
          changeAction = 0;
        }

        [self->_changeTarget performSelector:changeAction withObject:self];
        v6 = v9;
      }
    }
  }
}

@end