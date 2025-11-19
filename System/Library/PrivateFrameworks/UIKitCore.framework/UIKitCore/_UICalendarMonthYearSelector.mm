@interface _UICalendarMonthYearSelector
- (_UICalendarMonthYearSelector)initWithDataModel:(id)a3;
- (_UICalendarMonthYearSelectorDelegate)delegate;
- (void)_didSelectDate:(id)a3;
- (void)_setupViewHierarchy;
- (void)didUpdateCalendar;
- (void)didUpdateLocale;
- (void)didUpdateTimeZone;
- (void)didUpdateVisibleMonth;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)setSelectedMonth:(id)a3 animated:(BOOL)a4;
@end

@implementation _UICalendarMonthYearSelector

- (_UICalendarMonthYearSelector)initWithDataModel:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _UICalendarMonthYearSelector;
  v6 = [(UIView *)&v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataModel, a3);
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
  v4 = [(_UICalendarDataModel *)self->_dataModel calendar];
  [(UIDatePicker *)v3 setCalendar:v4];

  v5 = [(_UICalendarDataModel *)self->_dataModel locale];
  [(UIDatePicker *)v3 setLocale:v5];

  v6 = [(_UICalendarDataModel *)self->_dataModel timeZone];
  [(UIDatePicker *)v3 setTimeZone:v6];

  v7 = [(_UICalendarDataModel *)self->_dataModel availableDateRange];
  v8 = [v7 startDate];
  [(UIDatePicker *)v3 setMinimumDate:v8];

  v9 = [(_UICalendarDataModel *)self->_dataModel availableDateRange];
  v10 = [v9 endDate];
  [(UIDatePicker *)v3 setMaximumDate:v10];

  v11 = [(_UICalendarDataModel *)self->_dataModel visibleMonth];
  v12 = [v11 date];
  [(UIDatePicker *)v3 setDate:v12];

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
  v3 = [(_UICalendarDataModel *)self->_dataModel calendar];
  [(UIDatePicker *)self->_datePicker setCalendar:v3];
}

- (void)didUpdateLocale
{
  v3 = [(_UICalendarDataModel *)self->_dataModel locale];
  [(UIDatePicker *)self->_datePicker setLocale:v3];
}

- (void)didUpdateTimeZone
{
  v3 = [(_UICalendarDataModel *)self->_dataModel timeZone];
  [(UIDatePicker *)self->_datePicker setTimeZone:v3];
}

- (void)didUpdateVisibleMonth
{
  v3 = [(_UICalendarDataModel *)self->_dataModel visibleMonth];
  [(_UICalendarMonthYearSelector *)self setSelectedMonth:v3];
}

- (void)setSelectedMonth:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v12 = a3;
  v7 = [(_UICalendarDataModel *)self->_dataModel availableDateRange];
  v8 = [v7 _ui_containsMonth:v12];

  if ((v8 & 1) == 0)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"_UICalendarMonthYearSelector.m" lineNumber:96 description:@"Unable to set a selected month that is before the minimum or after the maximum date."];
  }

  datePicker = self->_datePicker;
  v10 = [v12 date];
  [(UIDatePicker *)datePicker setDate:v10 animated:v4];
}

- (void)_didSelectDate:(id)a3
{
  v4 = a3;
  v5 = [_UIDatePickerCalendarMonth alloc];
  v6 = [v4 date];

  v7 = [(_UICalendarDataModel *)self->_dataModel effectiveCalendar];
  v9 = [(_UIDatePickerCalendarDateComponent *)v5 initWithDate:v6 calendar:v7];

  v8 = [(_UICalendarMonthYearSelector *)self delegate];
  [v8 monthYearSelector:self didSelectMonth:v9];
}

- (_UICalendarMonthYearSelectorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end