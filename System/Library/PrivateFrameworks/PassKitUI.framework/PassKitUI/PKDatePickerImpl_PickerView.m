@interface PKDatePickerImpl_PickerView
- (NSDate)date;
- (id)_dateComponentsForCalendarUnit:(unint64_t)a3 value:(int64_t)a4;
- (id)_dateForIndex:(unint64_t)a3;
- (id)_dateFormatForCalendarUnit:(unint64_t)a3;
- (id)_stringForIndex:(unint64_t)a3;
- (id)initShowingDay:(BOOL)a3 month:(BOOL)a4 year:(BOOL)a5 locale:(id)a6 calendar:(id)a7;
- (unint64_t)_defaultIndex;
- (void)dealloc;
- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5;
- (void)setDate:(id)a3;
- (void)setDateValueChangedTarget:(id)a3 action:(SEL)a4;
@end

@implementation PKDatePickerImpl_PickerView

- (id)initShowingDay:(BOOL)a3 month:(BOOL)a4 year:(BOOL)a5 locale:(id)a6 calendar:(id)a7
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v13 = a6;
  v14 = a7;
  v28.receiver = self;
  v28.super_class = PKDatePickerImpl_PickerView;
  v15 = [(PKDatePickerImpl_PickerView *)&v28 init];
  v16 = v15;
  if (v15)
  {
    [(PKDatePickerImpl_PickerView *)v15 setDelegate:v15];
    objc_storeStrong(&v16->_calendar, a7);
    objc_storeStrong(&v16->_locale, a6);
    if (!v11 || v10 || v9)
    {
      if (!v10 || v11 || v9)
      {
        if (!v9 || v10 || v11)
        {
          v24 = MEMORY[0x1E695DF30];
          v25 = *MEMORY[0x1E695D930];
          v26 = objc_opt_class();
          v27 = NSStringFromClass(v26);
          [v24 raise:v25 format:{@"%@ does not support the specified flags.", v27}];

          goto LABEL_15;
        }

        v17 = 4;
      }

      else
      {
        v17 = 8;
      }
    }

    else
    {
      v17 = 16;
    }

    v16->_calendarUnit = v17;
LABEL_15:
    v16->_possibleRange.location = [(NSCalendar *)v16->_calendar maximumRangeOfUnit:?];
    v16->_possibleRange.length = v18;
    v19 = objc_alloc_init(MEMORY[0x1E696AB78]);
    dateFormatter = v16->_dateFormatter;
    v16->_dateFormatter = v19;

    [(NSDateFormatter *)v16->_dateFormatter setDateStyle:3];
    [(NSDateFormatter *)v16->_dateFormatter setCalendar:v16->_calendar];
    v21 = v16->_dateFormatter;
    v22 = [(PKDatePickerImpl_PickerView *)v16 _dateFormatForCalendarUnit:v16->_calendarUnit];
    [(NSDateFormatter *)v21 setDateFormat:v22];

    [(NSDateFormatter *)v16->_dateFormatter setFormattingContext:3];
    [(PKDatePickerImpl_PickerView *)v16 reloadAllComponents];
    [(PKDatePickerImpl_PickerView *)v16 selectRow:[(PKDatePickerImpl_PickerView *)v16 _defaultIndex] inComponent:0 animated:0];
  }

  return v16;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PKDatePickerImpl_PickerView;
  [(PKDatePickerImpl_PickerView *)&v2 dealloc];
}

- (NSDate)date
{
  v3 = [(PKDatePickerImpl_PickerView *)self selectedRowInComponent:0];

  return [(PKDatePickerImpl_PickerView *)self _dateForIndex:v3];
}

- (void)setDate:(id)a3
{
  v5 = [(NSCalendar *)self->_calendar components:self->_calendarUnit fromDate:a3];
  v4 = [v5 valueForComponent:self->_calendarUnit] - self->_possibleRange.location;
  if (v4 < [(PKDatePickerImpl_PickerView *)self _numberOfItems])
  {
    [(PKDatePickerImpl_PickerView *)self selectRow:v4 inComponent:0 animated:0];
  }
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
  switch(a3)
  {
    case 4uLL:
      v3 = @"yyyy";
      break;
    case 0x10uLL:
      v3 = @"dd";
      break;
    case 8uLL:
      v3 = @"LLLL";
      break;
    default:
      v4 = MEMORY[0x1E695DF30];
      v5 = *MEMORY[0x1E695D930];
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      [v4 raise:v5 format:{@"%@ does not support the specified calendar unit.", v7}];

      v3 = &stru_1F3BD7330;
      break;
  }

  v8 = [MEMORY[0x1E695DF58] currentLocale];
  v9 = PKLocaleWithOverriddenCalendar();

  v10 = [MEMORY[0x1E696AB78] dateFormatFromTemplate:v3 options:0 locale:v9];

  return v10;
}

- (id)_dateComponentsForCalendarUnit:(unint64_t)a3 value:(int64_t)a4
{
  v7 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v7 setCalendar:self->_calendar];
  [v7 setValue:a4 forComponent:a3];

  return v7;
}

- (unint64_t)_defaultIndex
{
  calendar = self->_calendar;
  calendarUnit = self->_calendarUnit;
  v4 = [MEMORY[0x1E695DF00] date];
  v5 = [(NSCalendar *)calendar component:calendarUnit fromDate:v4];

  return v5;
}

- (id)_dateForIndex:(unint64_t)a3
{
  v4 = [(PKDatePickerImpl_PickerView *)self _dateComponentsForCalendarUnit:self->_calendarUnit value:self->_possibleRange.location + a3];
  v5 = [(NSCalendar *)self->_calendar dateFromComponents:v4];

  return v5;
}

- (id)_stringForIndex:(unint64_t)a3
{
  v4 = [(PKDatePickerImpl_PickerView *)self _dateForIndex:a3];
  if (v4)
  {
    v5 = [(NSDateFormatter *)self->_dateFormatter stringFromDate:v4];
  }

  else
  {
    v5 = @"-";
  }

  return v5;
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