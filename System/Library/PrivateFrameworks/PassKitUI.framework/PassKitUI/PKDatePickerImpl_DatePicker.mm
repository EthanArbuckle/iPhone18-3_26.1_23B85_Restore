@interface PKDatePickerImpl_DatePicker
- (NSDate)date;
- (id)initShowingDay:(BOOL)day month:(BOOL)month year:(BOOL)year locale:(id)locale calendar:(id)calendar;
- (void)setDate:(id)date;
- (void)setDateValueChangedTarget:(id)target action:(SEL)action;
@end

@implementation PKDatePickerImpl_DatePicker

- (id)initShowingDay:(BOOL)day month:(BOOL)month year:(BOOL)year locale:(id)locale calendar:(id)calendar
{
  yearCopy = year;
  monthCopy = month;
  dayCopy = day;
  localeCopy = locale;
  calendarCopy = calendar;
  v23.receiver = self;
  v23.super_class = PKDatePickerImpl_DatePicker;
  v14 = [(PKDatePickerImpl_DatePicker *)&v23 init];
  v15 = v14;
  if (v14)
  {
    [(PKDatePickerImpl_DatePicker *)v14 setLocale:localeCopy];
    [(PKDatePickerImpl_DatePicker *)v15 setCalendar:calendarCopy];
    [(PKDatePickerImpl_DatePicker *)v15 setPreferredDatePickerStyle:1];
    if (dayCopy && monthCopy && yearCopy)
    {
      v16 = v15;
      v17 = 1;
    }

    else if (monthCopy && yearCopy)
    {
      v16 = v15;
      v17 = 4;
    }

    else
    {
      if (!dayCopy || !monthCopy)
      {
        v19 = MEMORY[0x1E695DF30];
        v20 = *MEMORY[0x1E695D930];
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        [v19 raise:v20 format:{@"%@ does not support the specified flags.", v22}];

        goto LABEL_11;
      }

      v16 = v15;
      v17 = 4270;
    }

    [(PKDatePickerImpl_DatePicker *)v16 setDatePickerMode:v17];
  }

LABEL_11:

  return v15;
}

- (NSDate)date
{
  v4.receiver = self;
  v4.super_class = PKDatePickerImpl_DatePicker;
  date = [(PKDatePickerImpl_DatePicker *)&v4 date];

  return date;
}

- (void)setDate:(id)date
{
  v3.receiver = self;
  v3.super_class = PKDatePickerImpl_DatePicker;
  [(PKDatePickerImpl_DatePicker *)&v3 setDate:date];
}

- (void)setDateValueChangedTarget:(id)target action:(SEL)action
{
  targetCopy = target;
  [(PKDatePickerImpl_DatePicker *)self removeTarget:0 action:0 forControlEvents:4096];
  v6 = targetCopy;
  if (targetCopy && action)
  {
    [(PKDatePickerImpl_DatePicker *)self addTarget:targetCopy action:action forControlEvents:4096];
    v6 = targetCopy;
  }
}

@end