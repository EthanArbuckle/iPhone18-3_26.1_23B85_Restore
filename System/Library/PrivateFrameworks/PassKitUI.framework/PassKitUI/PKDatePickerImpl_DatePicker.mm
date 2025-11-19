@interface PKDatePickerImpl_DatePicker
- (NSDate)date;
- (id)initShowingDay:(BOOL)a3 month:(BOOL)a4 year:(BOOL)a5 locale:(id)a6 calendar:(id)a7;
- (void)setDate:(id)a3;
- (void)setDateValueChangedTarget:(id)a3 action:(SEL)a4;
@end

@implementation PKDatePickerImpl_DatePicker

- (id)initShowingDay:(BOOL)a3 month:(BOOL)a4 year:(BOOL)a5 locale:(id)a6 calendar:(id)a7
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v12 = a6;
  v13 = a7;
  v23.receiver = self;
  v23.super_class = PKDatePickerImpl_DatePicker;
  v14 = [(PKDatePickerImpl_DatePicker *)&v23 init];
  v15 = v14;
  if (v14)
  {
    [(PKDatePickerImpl_DatePicker *)v14 setLocale:v12];
    [(PKDatePickerImpl_DatePicker *)v15 setCalendar:v13];
    [(PKDatePickerImpl_DatePicker *)v15 setPreferredDatePickerStyle:1];
    if (v10 && v9 && v8)
    {
      v16 = v15;
      v17 = 1;
    }

    else if (v9 && v8)
    {
      v16 = v15;
      v17 = 4;
    }

    else
    {
      if (!v10 || !v9)
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
  v2 = [(PKDatePickerImpl_DatePicker *)&v4 date];

  return v2;
}

- (void)setDate:(id)a3
{
  v3.receiver = self;
  v3.super_class = PKDatePickerImpl_DatePicker;
  [(PKDatePickerImpl_DatePicker *)&v3 setDate:a3];
}

- (void)setDateValueChangedTarget:(id)a3 action:(SEL)a4
{
  v7 = a3;
  [(PKDatePickerImpl_DatePicker *)self removeTarget:0 action:0 forControlEvents:4096];
  v6 = v7;
  if (v7 && a4)
  {
    [(PKDatePickerImpl_DatePicker *)self addTarget:v7 action:a4 forControlEvents:4096];
    v6 = v7;
  }
}

@end