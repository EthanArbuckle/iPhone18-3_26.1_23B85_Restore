@interface _UICalendarMonthYearSelector
- (_UICalendarMonthYearSelector)initWithDataModel:(id)model;
- (_UICalendarMonthYearSelectorDelegate)delegate;
- (void)_didSelectDate:(id)date;
- (void)_setupViewHierarchy;
- (void)didUpdateCalendar;
- (void)didUpdateLocale;
- (void)didUpdateTimeZone;
- (void)didUpdateVisibleMonth;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)setSelectedMonth:(id)month animated:(BOOL)animated;
@end

@implementation _UICalendarMonthYearSelector

- (_UICalendarMonthYearSelector)initWithDataModel:(id)model
{
  modelCopy = model;
  v9.receiver = self;
  v9.super_class = _UICalendarMonthYearSelector;
  v6 = [(UIView *)&v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataModel, model);
    [(_UICalendarMonthYearSelector *)v7 _setupViewHierarchy];
  }

  return v7;
}

- (void)_setupViewHierarchy
{
  [(UIView *)self setPreservesSuperviewLayoutMargins:1];
  v3 = objc_opt_new();
  [(UIDatePicker *)v3 setPreferredDatePickerStyle:1];
  [(UIDatePicker *)v3 setDatePickerMode:4];
  [(UIDatePicker *)v3 _setSelectionBarIgnoresInset:1];
  calendar = [(_UICalendarDataModel *)self->_dataModel calendar];
  [(UIDatePicker *)v3 setCalendar:calendar];

  locale = [(_UICalendarDataModel *)self->_dataModel locale];
  [(UIDatePicker *)v3 setLocale:locale];

  timeZone = [(_UICalendarDataModel *)self->_dataModel timeZone];
  [(UIDatePicker *)v3 setTimeZone:timeZone];

  availableDateRange = [(_UICalendarDataModel *)self->_dataModel availableDateRange];
  startDate = [availableDateRange startDate];
  [(UIDatePicker *)v3 setMinimumDate:startDate];

  availableDateRange2 = [(_UICalendarDataModel *)self->_dataModel availableDateRange];
  endDate = [availableDateRange2 endDate];
  [(UIDatePicker *)v3 setMaximumDate:endDate];

  visibleMonth = [(_UICalendarDataModel *)self->_dataModel visibleMonth];
  date = [visibleMonth date];
  [(UIDatePicker *)v3 setDate:date];

  [(UIControl *)v3 addTarget:self action:sel__didSelectDate_ forControlEvents:4096];
  [(UIView *)self addSubview:v3];
  datePicker = self->_datePicker;
  self->_datePicker = v3;
}

- (void)layoutSubviews
{
  v17.receiver = self;
  v17.super_class = _UICalendarMonthYearSelector;
  [(UIView *)&v17 layoutSubviews];
  [(UIView *)self bounds];
  v4 = v3;
  v6 = v5;
  [(UIView *)self layoutMargins];
  v9 = v4 - (v7 + v8);
  v12 = v6 - (v10 + v11);
  [(UIDatePicker *)self->_datePicker sizeThatFits:v9, v12];
  v14 = v13;
  v15 = (v12 - v13) * 0.5;
  [(UIView *)self layoutMargins];
  [(UIDatePicker *)self->_datePicker setFrame:v16, v15, v9, v14];
}

- (void)layoutMarginsDidChange
{
  v3.receiver = self;
  v3.super_class = _UICalendarMonthYearSelector;
  [(UIView *)&v3 layoutMarginsDidChange];
  [(UIView *)self setNeedsLayout];
}

- (void)didUpdateCalendar
{
  calendar = [(_UICalendarDataModel *)self->_dataModel calendar];
  [(UIDatePicker *)self->_datePicker setCalendar:calendar];
}

- (void)didUpdateLocale
{
  locale = [(_UICalendarDataModel *)self->_dataModel locale];
  [(UIDatePicker *)self->_datePicker setLocale:locale];
}

- (void)didUpdateTimeZone
{
  timeZone = [(_UICalendarDataModel *)self->_dataModel timeZone];
  [(UIDatePicker *)self->_datePicker setTimeZone:timeZone];
}

- (void)didUpdateVisibleMonth
{
  visibleMonth = [(_UICalendarDataModel *)self->_dataModel visibleMonth];
  [(_UICalendarMonthYearSelector *)self setSelectedMonth:visibleMonth];
}

- (void)setSelectedMonth:(id)month animated:(BOOL)animated
{
  animatedCopy = animated;
  monthCopy = month;
  availableDateRange = [(_UICalendarDataModel *)self->_dataModel availableDateRange];
  v8 = [availableDateRange _ui_containsMonth:monthCopy];

  if ((v8 & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UICalendarMonthYearSelector.m" lineNumber:96 description:@"Unable to set a selected month that is before the minimum or after the maximum date."];
  }

  datePicker = self->_datePicker;
  date = [monthCopy date];
  [(UIDatePicker *)datePicker setDate:date animated:animatedCopy];
}

- (void)_didSelectDate:(id)date
{
  dateCopy = date;
  v5 = [_UIDatePickerCalendarMonth alloc];
  date = [dateCopy date];

  effectiveCalendar = [(_UICalendarDataModel *)self->_dataModel effectiveCalendar];
  v9 = [(_UIDatePickerCalendarDateComponent *)v5 initWithDate:date calendar:effectiveCalendar];

  delegate = [(_UICalendarMonthYearSelector *)self delegate];
  [delegate monthYearSelector:self didSelectMonth:v9];
}

- (_UICalendarMonthYearSelectorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end