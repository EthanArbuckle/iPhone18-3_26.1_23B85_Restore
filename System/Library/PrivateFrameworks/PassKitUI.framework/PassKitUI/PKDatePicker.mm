@interface PKDatePicker
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (Class)_classForDay:(BOOL)day month:(BOOL)month year:(BOOL)year style:(unint64_t)style;
- (PKDatePicker)initWithCoder:(id)coder;
- (PKDatePicker)initWithFrame:(CGRect)frame;
- (PKDatePickerDelegate)delegate;
- (void)_dateValueChanged:(id)changed;
- (void)_forceReloadInternalPicker;
- (void)dealloc;
- (void)layoutSubviews;
- (void)reconfigureToShowDay:(BOOL)day month:(BOOL)month year:(BOOL)year style:(unint64_t)style locale:(id)locale calendar:(id)calendar;
- (void)setBackgroundColor:(id)color;
- (void)setDate:(id)date;
@end

@implementation PKDatePicker

- (PKDatePicker)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v11.receiver = self;
  v11.super_class = PKDatePicker;
  v7 = [(PKDatePicker *)&v11 initWithFrame:?];
  if (v7)
  {
    autoupdatingCurrentLocale = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
    autoupdatingCurrentCalendar = [MEMORY[0x1E695DEE8] autoupdatingCurrentCalendar];
    [(PKDatePicker *)v7 reconfigureToShowDay:1 month:1 year:1 style:0 locale:autoupdatingCurrentLocale calendar:autoupdatingCurrentCalendar];

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

- (PKDatePicker)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D930];
  coderCopy = coder;
  [v4 raise:v5 format:@"This class is not NSCoding compliant."];
  v9.receiver = self;
  v9.super_class = PKDatePicker;
  v7 = [(PKDatePicker *)&v9 initWithCoder:coderCopy];

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

- (void)reconfigureToShowDay:(BOOL)day month:(BOOL)month year:(BOOL)year style:(unint64_t)style locale:(id)locale calendar:(id)calendar
{
  yearCopy = year;
  monthCopy = month;
  dayCopy = day;
  localeCopy = locale;
  calendarCopy = calendar;
  internalPicker = self->_internalPicker;
  if (!internalPicker || self->_showsDay != dayCopy || self->_showsMonth != monthCopy || self->_showsYear != yearCopy || self->_style != style)
  {
    date = [(PKDatePickerInternalImplementationProtocol *)internalPicker date];
    v17 = date;
    if (date)
    {
      date2 = date;
    }

    else
    {
      date2 = [MEMORY[0x1E695DF00] date];
    }

    v19 = date2;

    v20 = [(PKDatePicker *)self _classForDay:dayCopy month:monthCopy year:yearCopy style:style];
    if (!v20)
    {
      dayCopy = 1;
      v21 = [(PKDatePicker *)self _classForDay:1 month:1 year:1 style:0];
      if (!v21)
      {
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Failed to find an required PKDatePicker_Impl class."];
        goto LABEL_13;
      }

      v20 = v21;
      monthCopy = 1;
      yearCopy = 1;
    }

    [(PKDatePickerInternalImplementationProtocol *)self->_internalPicker removeFromSuperview];
    [(PKDatePickerInternalImplementationProtocol *)self->_internalPicker prepareToDie];
    v22 = [[v20 alloc] initShowingDay:dayCopy month:monthCopy year:yearCopy locale:localeCopy calendar:calendarCopy];
    v23 = self->_internalPicker;
    self->_internalPicker = v22;

    [(PKDatePickerInternalImplementationProtocol *)self->_internalPicker setDateValueChangedTarget:self action:sel__dateValueChanged_];
    [(PKDatePickerInternalImplementationProtocol *)self->_internalPicker setDate:v19];
    [(PKDatePicker *)self addSubview:self->_internalPicker];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(PKDatePicker *)self setBackgroundColor:clearColor];

    [(PKDatePicker *)self setNeedsDisplay];
    [(PKDatePicker *)self setNeedsLayout];
    self->_showsDay = dayCopy;
    self->_showsMonth = monthCopy;
    self->_showsYear = yearCopy;
    self->_style = style;
    objc_storeStrong(&self->_locale, locale);
    objc_storeStrong(&self->_calendar, calendar);
    date3 = [(PKDatePickerInternalImplementationProtocol *)self->_internalPicker date];
    date = self->_date;
    self->_date = date3;

LABEL_13:
  }
}

- (void)setDate:(id)date
{
  objc_storeStrong(&self->_date, date);
  dateCopy = date;
  [(PKDatePickerInternalImplementationProtocol *)self->_internalPicker setDate:self->_date];
}

- (void)setBackgroundColor:(id)color
{
  v5.receiver = self;
  v5.super_class = PKDatePicker;
  colorCopy = color;
  [(PKDatePicker *)&v5 setBackgroundColor:colorCopy];
  [(PKDatePickerInternalImplementationProtocol *)self->_internalPicker setBackgroundColor:colorCopy, v5.receiver, v5.super_class];
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
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    keyWindow = [mEMORY[0x1E69DC668] keyWindow];
    [keyWindow safeAreaInsets];
    v10 = v10 - v13;
  }

  [(PKDatePickerInternalImplementationProtocol *)self->_internalPicker setFrame:v4, v6, v8, v10];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(PKDatePickerInternalImplementationProtocol *)self->_internalPicker sizeThatFits:fits.width, fits.height];
  v4 = v3;
  v6 = v5;
  if ((PKHomeButtonIsAvailable() & 1) == 0)
  {
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    keyWindow = [mEMORY[0x1E69DC668] keyWindow];
    [keyWindow safeAreaInsets];
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
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    keyWindow = [mEMORY[0x1E69DC668] keyWindow];
    [keyWindow safeAreaInsets];
    v5 = v5 + v8;
  }

  v9 = v3;
  v10 = v5;
  result.height = v10;
  result.width = v9;
  return result;
}

- (Class)_classForDay:(BOOL)day month:(BOOL)month year:(BOOL)year style:(unint64_t)style
{
  v7 = day && month;
  if (style)
  {
    yearCopy = 0;
  }

  else
  {
    yearCopy = year;
  }

  if (v7 && yearCopy || style == 2 && day && month && year || style == 1 && month && year)
  {
    goto LABEL_14;
  }

  if (v7)
  {
    if (style)
    {
      goto LABEL_19;
    }

LABEL_14:
    v9 = objc_opt_class();

    return v9;
  }

  if (!style && month && year)
  {
    goto LABEL_14;
  }

  if ((day ^ month) != 1 || year)
  {
    if (yearCopy && !day && !month)
    {
      goto LABEL_14;
    }
  }

  else if (!style)
  {
    goto LABEL_14;
  }

LABEL_19:
  v9 = 0;

  return v9;
}

- (void)_dateValueChanged:(id)changed
{
  date = [changed date];
  date = self->_date;
  self->_date = date;

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
  date = [(PKDatePickerInternalImplementationProtocol *)self->_internalPicker date];
  v4 = date;
  if (date)
  {
    date2 = date;
  }

  else
  {
    date2 = [MEMORY[0x1E695DF00] date];
  }

  v7 = date2;

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