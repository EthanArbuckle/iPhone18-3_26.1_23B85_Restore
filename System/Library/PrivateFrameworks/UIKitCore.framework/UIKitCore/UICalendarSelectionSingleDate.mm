@interface UICalendarSelectionSingleDate
- (BOOL)canSelectDate:(id)date;
- (BOOL)shouldDeselectDate:(id)date;
- (UICalendarSelectionSingleDate)initWithDelegate:(id)delegate;
- (id)delegate;
- (void)_sendDelegateForSelectedDateChange;
- (void)didChangeAvailableDateRange:(id)range;
- (void)didChangeCalendar:(id)calendar;
- (void)didChangeVisibleMonth:(id)month;
- (void)didDeselectDate:(id)date;
- (void)didMoveToCalendarView;
- (void)didSelectDate:(id)date;
- (void)selectAllDatesAnimated:(BOOL)animated;
- (void)setSelectedDate:(NSDateComponents *)selectedDate animated:(BOOL)animated;
- (void)willMoveToCalendarView:(id)view;
@end

@implementation UICalendarSelectionSingleDate

- (UICalendarSelectionSingleDate)initWithDelegate:(id)delegate
{
  v4 = delegate;
  v9.receiver = self;
  v9.super_class = UICalendarSelectionSingleDate;
  _init = [(UICalendarSelection *)&v9 _init];
  v6 = _init;
  if (_init)
  {
    objc_storeWeak(_init + 3, v4);
    *(v6 + 16) = v6[2] & 0xFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }

    *(v6 + 16) = v6[2] & 0xFD | v7;
  }

  return v6;
}

- (void)setSelectedDate:(NSDateComponents *)selectedDate animated:(BOOL)animated
{
  v4 = animated;
  v25[1] = *MEMORY[0x1E69E9840];
  v7 = selectedDate;
  v8 = self->_selectedDate;
  v9 = v7;
  v10 = v9;
  if (v8 == v9)
  {

    goto LABEL_7;
  }

  if (!v9 || !v8)
  {

    if (!v10)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  v11 = [(NSDateComponents *)v8 isEqual:v9];

  if (v11)
  {
LABEL_7:
    [(UICalendarSelectionSingleDate *)self selectAllDatesAnimated:v4];
    goto LABEL_18;
  }

LABEL_9:
  v12 = v10;
  if ([(NSDateComponents *)v12 year]== 0x7FFFFFFFFFFFFFFFLL || [(NSDateComponents *)v12 month]== 0x7FFFFFFFFFFFFFFFLL)
  {
  }

  else
  {
    v14 = [(NSDateComponents *)v12 day];

    if (v14 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_14;
    }
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UICalendarSelectionSingleDate.m" lineNumber:50 description:{@"dateComponents (%@) is invalid. It requires at least [.year, .month, .day]", v12}];

LABEL_14:
  if (self->_selectedDate)
  {
    view = [(UICalendarSelection *)self view];
    v25[0] = self->_selectedDate;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
    [view _deselectDates:v16 animated:v4];
  }

  view2 = [(UICalendarSelection *)self view];
  calendar = [view2 calendar];
  v19 = _UICalendarSanitizeWithCalendar(v10, calendar);
  v20 = self->_selectedDate;
  self->_selectedDate = v19;

  if (self->_selectedDate)
  {
    view3 = [(UICalendarSelection *)self view];
    v24 = self->_selectedDate;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
    [view3 _selectDates:v22 animated:v4];

    view4 = [(UICalendarSelection *)self view];
    [view4 setVisibleDateComponents:self->_selectedDate animated:v4];
  }

LABEL_18:
}

- (void)willMoveToCalendarView:(id)view
{
  v8[1] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  view = [(UICalendarSelection *)self view];

  if (view != viewCopy)
  {
    if (self->_selectedDate)
    {
      view2 = [(UICalendarSelection *)self view];
      v8[0] = self->_selectedDate;
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
      [view2 _deselectDates:v7 animated:0];
    }
  }
}

- (void)didMoveToCalendarView
{
  view = [(UICalendarSelection *)self view];
  [view setAllowsMultipleSelection:1];

  selectedDate = [(UICalendarSelectionSingleDate *)self selectedDate];
  view2 = [(UICalendarSelection *)self view];
  calendar = [view2 calendar];
  v7 = _UICalendarSanitizeWithCalendar(selectedDate, calendar);
  selectedDate = self->_selectedDate;
  self->_selectedDate = v7;

  [(UICalendarSelectionSingleDate *)self selectAllDatesAnimated:0];
  if (self->_selectedDate)
  {
    view3 = [(UICalendarSelection *)self view];
    [view3 setVisibleDateComponents:self->_selectedDate animated:0];
  }
}

- (void)didChangeCalendar:(id)calendar
{
  calendarCopy = calendar;
  selectedDate = [(UICalendarSelectionSingleDate *)self selectedDate];
  v5 = _UICalendarSanitizeWithCalendar(selectedDate, calendarCopy);

  selectedDate = self->_selectedDate;
  self->_selectedDate = v5;
}

- (void)didChangeAvailableDateRange:(id)range
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (self->_selectedDate)
  {
    rangeCopy = range;
    selectedDate = [(UICalendarSelectionSingleDate *)self selectedDate];
    view = [(UICalendarSelection *)self view];
    calendar = [view calendar];
    v8 = [calendar dateFromComponents:selectedDate];

    LOBYTE(view) = [rangeCopy containsDate:v8];
    if ((view & 1) == 0)
    {
      view2 = [(UICalendarSelection *)self view];
      v12[0] = selectedDate;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
      [view2 _deselectDates:v10 animated:0];

      selectedDate = self->_selectedDate;
      self->_selectedDate = 0;
    }
  }
}

- (void)didChangeVisibleMonth:(id)month
{
  monthCopy = month;
  if (self->_selectedDate && [(UICalendarSelectionSingleDate *)self _selectionFollowsMonthSelection])
  {
    view = [(UICalendarSelection *)self view];
    _dataModel = [view _dataModel];
    effectiveCalendar = [_dataModel effectiveCalendar];

    v7 = [_UIDatePickerCalendarMonth alloc];
    v8 = [effectiveCalendar dateFromComponents:monthCopy];
    v9 = [(_UIDatePickerCalendarDateComponent *)v7 initWithDate:v8 calendar:effectiveCalendar];

    v10 = [_UIDatePickerCalendarDay alloc];
    date = [(NSDateComponents *)self->_selectedDate date];
    v12 = [(_UIDatePickerCalendarDay *)v10 initWithDate:date calendar:effectiveCalendar];

    v13 = [(_UIDatePickerCalendarMonth *)v9 dayMatchingOrdinalDay:v12];
    view2 = [(UICalendarSelection *)self view];
    _dataModel2 = [view2 _dataModel];
    availableDateRange = [_dataModel2 availableDateRange];

    if (([availableDateRange _ui_containsDay:v13] & 1) == 0)
    {
      date2 = [v13 date];
      v18 = [availableDateRange _ui_dateInRangeForDate:date2];

      v19 = [[_UIDatePickerCalendarDay alloc] initWithDate:v18 calendar:effectiveCalendar];
      v13 = v19;
    }

    components = [v13 components];
    [(UICalendarSelectionSingleDate *)self setSelectedDate:components];
    [(UICalendarSelectionSingleDate *)self didSelectDate:components];
  }
}

- (BOOL)canSelectDate:(id)date
{
  if ((*&self->_delegateImplements & 1) == 0)
  {
    return 1;
  }

  selfCopy = self;
  dateCopy = date;
  delegate = [(UICalendarSelectionSingleDate *)selfCopy delegate];
  LOBYTE(selfCopy) = [delegate dateSelection:selfCopy canSelectDate:dateCopy];

  return selfCopy;
}

- (void)didSelectDate:(id)date
{
  v9[1] = *MEMORY[0x1E69E9840];
  dateCopy = date;
  selectedDate = [(UICalendarSelectionSingleDate *)self selectedDate];

  if (selectedDate)
  {
    view = [(UICalendarSelection *)self view];
    v9[0] = self->_selectedDate;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    [view _deselectDates:v7 animated:0];
  }

  selectedDate = self->_selectedDate;
  self->_selectedDate = dateCopy;

  [(UICalendarSelectionSingleDate *)self _sendDelegateForSelectedDateChange];
}

- (BOOL)shouldDeselectDate:(id)date
{
  if ((*&self->_delegateImplements & 1) == 0)
  {
    return 0;
  }

  selfCopy = self;
  delegate = [(UICalendarSelectionSingleDate *)self delegate];
  LOBYTE(selfCopy) = [delegate dateSelection:selfCopy canSelectDate:0];

  return selfCopy;
}

- (void)didDeselectDate:(id)date
{
  selectedDate = self->_selectedDate;
  self->_selectedDate = 0;

  [(UICalendarSelectionSingleDate *)self _sendDelegateForSelectedDateChange];
}

- (void)selectAllDatesAnimated:(BOOL)animated
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (self->_selectedDate)
  {
    animatedCopy = animated;
    view = [(UICalendarSelection *)self view];
    v7[0] = self->_selectedDate;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
    [view _selectDates:v6 animated:animatedCopy];
  }
}

- (void)_sendDelegateForSelectedDateChange
{
  if ((*&self->_delegateImplements & 2) != 0)
  {
    delegate = [(UICalendarSelectionSingleDate *)self delegate];
    [delegate dateSelection:self didSelectDate:self->_selectedDate];
  }
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end