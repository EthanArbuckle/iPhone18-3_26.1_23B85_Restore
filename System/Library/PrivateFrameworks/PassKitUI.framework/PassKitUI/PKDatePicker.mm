@interface PKDatePicker
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (Class)_classForDay:(BOOL)a3 month:(BOOL)a4 year:(BOOL)a5 style:(unint64_t)a6;
- (PKDatePicker)initWithCoder:(id)a3;
- (PKDatePicker)initWithFrame:(CGRect)a3;
- (PKDatePickerDelegate)delegate;
- (void)_dateValueChanged:(id)a3;
- (void)_forceReloadInternalPicker;
- (void)dealloc;
- (void)layoutSubviews;
- (void)reconfigureToShowDay:(BOOL)a3 month:(BOOL)a4 year:(BOOL)a5 style:(unint64_t)a6 locale:(id)a7 calendar:(id)a8;
- (void)setBackgroundColor:(id)a3;
- (void)setDate:(id)a3;
@end

@implementation PKDatePicker

- (PKDatePicker)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11.receiver = self;
  v11.super_class = PKDatePicker;
  v7 = [(PKDatePicker *)&v11 initWithFrame:?];
  if (v7)
  {
    v8 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
    v9 = [MEMORY[0x1E695DEE8] autoupdatingCurrentCalendar];
    [(PKDatePicker *)v7 reconfigureToShowDay:1 month:1 year:1 style:0 locale:v8 calendar:v9];

    v12.origin.x = x;
    v12.origin.y = y;
    v12.size.width = width;
    v12.size.height = height;
    if (CGRectEqualToRect(v12, *MEMORY[0x1E695F058]))
    {
      [(PKDatePicker *)v7 sizeToFit];
    }
  }

  return v7;
}

- (PKDatePicker)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D930];
  v6 = a3;
  [v4 raise:v5 format:@"This class is not NSCoding compliant."];
  v9.receiver = self;
  v9.super_class = PKDatePicker;
  v7 = [(PKDatePicker *)&v9 initWithCoder:v6];

  return v7;
}

- (void)dealloc
{
  objc_storeWeak(&self->_delegate, 0);
  [(PKDatePickerInternalImplementationProtocol *)self->_internalPicker prepareToDie];
  v3.receiver = self;
  v3.super_class = PKDatePicker;
  [(PKDatePicker *)&v3 dealloc];
}

- (void)reconfigureToShowDay:(BOOL)a3 month:(BOOL)a4 year:(BOOL)a5 style:(unint64_t)a6 locale:(id)a7 calendar:(id)a8
{
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v28 = a7;
  v27 = a8;
  internalPicker = self->_internalPicker;
  if (!internalPicker || self->_showsDay != v13 || self->_showsMonth != v12 || self->_showsYear != v11 || self->_style != a6)
  {
    v16 = [(PKDatePickerInternalImplementationProtocol *)internalPicker date];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = [MEMORY[0x1E695DF00] date];
    }

    v19 = v18;

    v20 = [(PKDatePicker *)self _classForDay:v13 month:v12 year:v11 style:a6];
    if (!v20)
    {
      v13 = 1;
      v21 = [(PKDatePicker *)self _classForDay:1 month:1 year:1 style:0];
      if (!v21)
      {
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Failed to find an required PKDatePicker_Impl class."];
        goto LABEL_13;
      }

      v20 = v21;
      v12 = 1;
      v11 = 1;
    }

    [(PKDatePickerInternalImplementationProtocol *)self->_internalPicker removeFromSuperview];
    [(PKDatePickerInternalImplementationProtocol *)self->_internalPicker prepareToDie];
    v22 = [[v20 alloc] initShowingDay:v13 month:v12 year:v11 locale:v28 calendar:v27];
    v23 = self->_internalPicker;
    self->_internalPicker = v22;

    [(PKDatePickerInternalImplementationProtocol *)self->_internalPicker setDateValueChangedTarget:self action:sel__dateValueChanged_];
    [(PKDatePickerInternalImplementationProtocol *)self->_internalPicker setDate:v19];
    [(PKDatePicker *)self addSubview:self->_internalPicker];
    v24 = [MEMORY[0x1E69DC888] clearColor];
    [(PKDatePicker *)self setBackgroundColor:v24];

    [(PKDatePicker *)self setNeedsDisplay];
    [(PKDatePicker *)self setNeedsLayout];
    self->_showsDay = v13;
    self->_showsMonth = v12;
    self->_showsYear = v11;
    self->_style = a6;
    objc_storeStrong(&self->_locale, a7);
    objc_storeStrong(&self->_calendar, a8);
    v25 = [(PKDatePickerInternalImplementationProtocol *)self->_internalPicker date];
    date = self->_date;
    self->_date = v25;

LABEL_13:
  }
}

- (void)setDate:(id)a3
{
  objc_storeStrong(&self->_date, a3);
  v5 = a3;
  [(PKDatePickerInternalImplementationProtocol *)self->_internalPicker setDate:self->_date];
}

- (void)setBackgroundColor:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKDatePicker;
  v4 = a3;
  [(PKDatePicker *)&v5 setBackgroundColor:v4];
  [(PKDatePickerInternalImplementationProtocol *)self->_internalPicker setBackgroundColor:v4, v5.receiver, v5.super_class];
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = PKDatePicker;
  [(PKDatePicker *)&v14 layoutSubviews];
  [(PKDatePicker *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if ((PKHomeButtonIsAvailable() & 1) == 0)
  {
    v11 = [MEMORY[0x1E69DC668] sharedApplication];
    v12 = [v11 keyWindow];
    [v12 safeAreaInsets];
    v10 = v10 - v13;
  }

  [(PKDatePickerInternalImplementationProtocol *)self->_internalPicker setFrame:v4, v6, v8, v10];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(PKDatePickerInternalImplementationProtocol *)self->_internalPicker sizeThatFits:a3.width, a3.height];
  v4 = v3;
  v6 = v5;
  if ((PKHomeButtonIsAvailable() & 1) == 0)
  {
    v7 = [MEMORY[0x1E69DC668] sharedApplication];
    v8 = [v7 keyWindow];
    [v8 safeAreaInsets];
    v6 = v6 + v9;
  }

  v10 = v4;
  v11 = v6;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGSize)intrinsicContentSize
{
  [(PKDatePickerInternalImplementationProtocol *)self->_internalPicker intrinsicContentSize];
  v3 = v2;
  v5 = v4;
  if ((PKHomeButtonIsAvailable() & 1) == 0)
  {
    v6 = [MEMORY[0x1E69DC668] sharedApplication];
    v7 = [v6 keyWindow];
    [v7 safeAreaInsets];
    v5 = v5 + v8;
  }

  v9 = v3;
  v10 = v5;
  result.height = v10;
  result.width = v9;
  return result;
}

- (Class)_classForDay:(BOOL)a3 month:(BOOL)a4 year:(BOOL)a5 style:(unint64_t)a6
{
  v7 = a3 && a4;
  if (a6)
  {
    v8 = 0;
  }

  else
  {
    v8 = a5;
  }

  if (v7 && v8 || a6 == 2 && a3 && a4 && a5 || a6 == 1 && a4 && a5)
  {
    goto LABEL_14;
  }

  if (v7)
  {
    if (a6)
    {
      goto LABEL_19;
    }

LABEL_14:
    v9 = objc_opt_class();

    return v9;
  }

  if (!a6 && a4 && a5)
  {
    goto LABEL_14;
  }

  if ((a3 ^ a4) != 1 || a5)
  {
    if (v8 && !a3 && !a4)
    {
      goto LABEL_14;
    }
  }

  else if (!a6)
  {
    goto LABEL_14;
  }

LABEL_19:
  v9 = 0;

  return v9;
}

- (void)_dateValueChanged:(id)a3
{
  v4 = [a3 date];
  date = self->_date;
  self->_date = v4;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 datePicker:self didChangeDate:self->_date];
  }
}

- (void)_forceReloadInternalPicker
{
  v3 = [(PKDatePickerInternalImplementationProtocol *)self->_internalPicker date];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x1E695DF00] date];
  }

  v7 = v5;

  [(PKDatePickerInternalImplementationProtocol *)self->_internalPicker removeFromSuperview];
  [(PKDatePickerInternalImplementationProtocol *)self->_internalPicker prepareToDie];
  internalPicker = self->_internalPicker;
  self->_internalPicker = 0;

  [(PKDatePicker *)self reconfigureToShowDay:self->_showsDay month:self->_showsMonth year:self->_showsYear style:self->_style locale:self->_locale calendar:self->_calendar];
  [(PKDatePicker *)self setDate:v7];
}

- (PKDatePickerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end