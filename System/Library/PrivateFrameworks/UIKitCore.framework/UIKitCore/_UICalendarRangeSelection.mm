@interface _UICalendarRangeSelection
- (BOOL)canSelectDate:(id)date;
- (_UICalendarRangeSelection)initWithDelegate:(id)delegate;
- (_UICalendarRangeSelectionDelegate)delegate;
- (id)_sanitizedDateRange:(id)range calendar:(id)calendar;
- (void)_deselectDatesInRange:(id)range animated:(BOOL)animated;
- (void)didChangeAvailableDateRange:(id)range;
- (void)didChangeCalendar:(id)calendar;
- (void)didDeselectDate:(id)date;
- (void)didMoveToCalendarView;
- (void)didSelectDate:(id)date;
- (void)selectAllDatesAnimated:(BOOL)animated;
- (void)setDateRange:(id)range animated:(BOOL)animated;
@end

@implementation _UICalendarRangeSelection

- (_UICalendarRangeSelection)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v11.receiver = self;
  v11.super_class = _UICalendarRangeSelection;
  _init = [(UICalendarSelection *)&v11 _init];
  v6 = _init;
  if (_init)
  {
    objc_storeWeak(_init + 5, delegateCopy);
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
    if (objc_opt_respondsToSelector())
    {
      v8 = 4;
    }

    else
    {
      v8 = 0;
    }

    *(v6 + 16) = v6[2] & 0xFB | v8;
    if (objc_opt_respondsToSelector())
    {
      v9 = 8;
    }

    else
    {
      v9 = 0;
    }

    *(v6 + 16) = v6[2] & 0xF7 | v9;
  }

  return v6;
}

- (void)setDateRange:(id)range animated:(BOOL)animated
{
  animatedCopy = animated;
  rangeCopy = range;
  view = [(UICalendarSelection *)self view];

  if (view)
  {
    dateRange = self->_dateRange;
    view2 = [(UICalendarSelection *)self view];
    calendar = [view2 calendar];
    v10 = [(_UICalendarDateRange *)dateRange allDatesInRangeForCalendar:calendar];
    v11 = v10;
    v12 = MEMORY[0x1E695E0F0];
    if (v10)
    {
      v12 = v10;
    }

    v13 = v12;

    currentCalendar = [MEMORY[0x1E695DFA8] setWithArray:v13];
    view3 = [(UICalendarSelection *)self view];
    calendar2 = [view3 calendar];
    v17 = [(_UICalendarRangeSelection *)self _sanitizedDateRange:rangeCopy calendar:calendar2];

    view4 = [(UICalendarSelection *)self view];
    calendar3 = [view4 calendar];
    v20 = [v17 allDatesInRangeForCalendar:calendar3];
    v21 = v20;
    v22 = MEMORY[0x1E695E0F0];
    if (v20)
    {
      v22 = v20;
    }

    v23 = v22;

    v24 = [MEMORY[0x1E695DFD8] setWithArray:v23];
    [currentCalendar minusSet:v24];

    view5 = [(UICalendarSelection *)self view];
    allObjects = [currentCalendar allObjects];
    [view5 _deselectDates:allObjects animated:animatedCopy];

    objc_storeStrong(&self->_dateRange, v17);
    pendingStartDate = self->_pendingStartDate;
    self->_pendingStartDate = 0;

    view6 = [(UICalendarSelection *)self view];
    [view6 _selectDates:v23 animated:animatedCopy];

    rangeCopy = v17;
  }

  else
  {
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    v29 = [(_UICalendarRangeSelection *)self _sanitizedDateRange:rangeCopy calendar:currentCalendar];
    v13 = self->_dateRange;
    self->_dateRange = v29;
  }
}

- (void)didMoveToCalendarView
{
  view = [(UICalendarSelection *)self view];
  if (view)
  {
    dateRange = self->_dateRange;

    if (dateRange)
    {
      v5 = self->_dateRange;
      view2 = [(UICalendarSelection *)self view];
      calendar = [view2 calendar];
      v8 = [(_UICalendarRangeSelection *)self _sanitizedDateRange:v5 calendar:calendar];
      v9 = self->_dateRange;
      self->_dateRange = v8;
    }
  }

  view3 = [(UICalendarSelection *)self view];
  [view3 setAllowsMultipleSelection:1];

  [(_UICalendarRangeSelection *)self selectAllDatesAnimated:0];
}

- (id)_sanitizedDateRange:(id)range calendar:(id)calendar
{
  rangeCopy = range;
  if (range)
  {
    calendarCopy = calendar;
    v6 = rangeCopy;
    startDate = [(_UICalendarDateRange *)v6 startDate];
    v8 = _UICalendarSanitizeWithCalendar(startDate, calendarCopy);

    endDate = [(_UICalendarDateRange *)v6 endDate];

    v10 = _UICalendarSanitizeWithCalendar(endDate, calendarCopy);

    rangeCopy = [[_UICalendarDateRange alloc] initWithStartDate:v8 endDate:v10];
  }

  return rangeCopy;
}

- (BOOL)canSelectDate:(id)date
{
  if ((*&self->_delegateImplements & 1) == 0)
  {
    return 1;
  }

  selfCopy = self;
  dateCopy = date;
  delegate = [(_UICalendarRangeSelection *)selfCopy delegate];
  LOBYTE(selfCopy) = [delegate _calendarSelection:selfCopy canSelectDate:dateCopy];

  return selfCopy;
}

- (void)didSelectDate:(id)date
{
  dateCopy = date;
  if (self->_pendingStartDate)
  {
    view = [(UICalendarSelection *)self view];
    calendar = [view calendar];
    delegate4 = [calendar dateFromComponents:self->_pendingStartDate];

    view2 = [(UICalendarSelection *)self view];
    calendar2 = [view2 calendar];
    v10 = [calendar2 dateFromComponents:dateCopy];

    v11 = dateCopy;
    v12 = [delegate4 compare:v10];
    v13 = [_UICalendarDateRange alloc];
    if (v12 == 1)
    {
      v14 = [(_UICalendarDateRange *)v13 initWithStartDate:v11 endDate:self->_pendingStartDate];
      dateRange = self->_dateRange;
      self->_dateRange = v14;

      pendingStartDate = self->_pendingStartDate;
      self->_pendingStartDate = 0;

      v17 = self->_pendingStartDate;
      [(_UICalendarRangeSelection *)self selectAllDatesAnimated:0];
      if (v11 && (*&self->_delegateImplements & 2) != 0)
      {
        delegate = [(_UICalendarRangeSelection *)self delegate];
        [delegate _calendarRangeSelection:self didBeginSelectionWithDate:v11];
      }
    }

    else
    {
      v20 = [(_UICalendarDateRange *)v13 initWithStartDate:self->_pendingStartDate endDate:v11];
      v21 = self->_dateRange;
      self->_dateRange = v20;

      v22 = self->_pendingStartDate;
      self->_pendingStartDate = 0;

      [(_UICalendarRangeSelection *)self selectAllDatesAnimated:0];
      v17 = v11;
      v11 = 0;
    }

    delegateImplements = self->_delegateImplements;
    if ((delegateImplements & 4) != 0)
    {
      delegate2 = [(_UICalendarRangeSelection *)self delegate];
      [delegate2 _calendarRangeSelection:self didEndSelectionWithDate:v17];

      delegateImplements = self->_delegateImplements;
    }

    if ((delegateImplements & 8) != 0)
    {
      delegate3 = [(_UICalendarRangeSelection *)self delegate];
      [delegate3 _calendarRangeSelection:self didSelectDateRange:self->_dateRange];
    }
  }

  else
  {
    [(_UICalendarRangeSelection *)self _deselectDatesInRange:self->_dateRange animated:0];
    v19 = self->_dateRange;
    self->_dateRange = 0;

    objc_storeStrong(&self->_pendingStartDate, date);
    [(_UICalendarRangeSelection *)self selectAllDatesAnimated:0];
    if ((*&self->_delegateImplements & 2) == 0)
    {
      goto LABEL_15;
    }

    delegate4 = [(_UICalendarRangeSelection *)self delegate];
    [delegate4 _calendarRangeSelection:self didBeginSelectionWithDate:dateCopy];
  }

LABEL_15:
}

- (void)didDeselectDate:(id)date
{
  dateCopy = date;
  pendingStartDate = self->_pendingStartDate;
  if (pendingStartDate)
  {
    delegate3 = pendingStartDate;
    v7 = [[_UICalendarDateRange alloc] initWithStartDate:delegate3 endDate:delegate3];
    dateRange = self->_dateRange;
    self->_dateRange = v7;

    v9 = self->_pendingStartDate;
    self->_pendingStartDate = 0;

    [(_UICalendarRangeSelection *)self selectAllDatesAnimated:0];
    delegateImplements = self->_delegateImplements;
    if ((delegateImplements & 4) != 0)
    {
      delegate = [(_UICalendarRangeSelection *)self delegate];
      [delegate _calendarRangeSelection:self didEndSelectionWithDate:delegate3];

      delegateImplements = self->_delegateImplements;
    }

    if ((delegateImplements & 8) != 0)
    {
      delegate2 = [(_UICalendarRangeSelection *)self delegate];
      [delegate2 _calendarRangeSelection:self didSelectDateRange:self->_dateRange];
    }
  }

  else
  {
    [(_UICalendarRangeSelection *)self _deselectDatesInRange:self->_dateRange animated:0];
    v13 = self->_dateRange;
    self->_dateRange = 0;

    objc_storeStrong(&self->_pendingStartDate, date);
    [(_UICalendarRangeSelection *)self selectAllDatesAnimated:0];
    if ((*&self->_delegateImplements & 2) == 0)
    {
      goto LABEL_9;
    }

    delegate3 = [(_UICalendarRangeSelection *)self delegate];
    [(NSDateComponents *)delegate3 _calendarRangeSelection:self didBeginSelectionWithDate:dateCopy];
  }

LABEL_9:
}

- (void)selectAllDatesAnimated:(BOOL)animated
{
  animatedCopy = animated;
  view = [(UICalendarSelection *)self view];

  if (view)
  {
    v11 = objc_opt_new();
    dateRange = self->_dateRange;
    if (dateRange)
    {
      view2 = [(UICalendarSelection *)self view];
      calendar = [view2 calendar];
      v9 = [(_UICalendarDateRange *)dateRange allDatesInRangeForCalendar:calendar];
      [v11 addObjectsFromArray:v9];
    }

    if (self->_pendingStartDate)
    {
      [v11 addObject:?];
    }

    view3 = [(UICalendarSelection *)self view];
    [view3 _selectDates:v11 animated:animatedCopy];
  }
}

- (void)didChangeCalendar:(id)calendar
{
  v4 = [(_UICalendarRangeSelection *)self _sanitizedDateRange:self->_dateRange calendar:calendar];
  dateRange = self->_dateRange;
  self->_dateRange = v4;
}

- (void)didChangeAvailableDateRange:(id)range
{
  rangeCopy = range;
  if (self->_dateRange)
  {
    v37 = rangeCopy;
    view = [(UICalendarSelection *)self view];
    calendar = [view calendar];

    startDate = [(_UICalendarDateRange *)self->_dateRange startDate];
    date = [startDate date];
    startDate2 = [v37 startDate];
    v10 = [date compare:startDate2];

    if (v10 == -1)
    {
      view2 = [(UICalendarSelection *)self view];
      calendar2 = [view2 calendar];
      startDate3 = [v37 startDate];
      v14 = [calendar2 components:1048606 fromDate:startDate3];

      v15 = [_UICalendarDateRange alloc];
      startDate4 = [(_UICalendarDateRange *)self->_dateRange startDate];
      v17 = [(_UICalendarDateRange *)v15 initWithStartDate:startDate4 endDate:v14];

      [(_UICalendarRangeSelection *)self _deselectDatesInRange:v17 animated:0];
      v18 = [_UICalendarDateRange alloc];
      endDate = [(_UICalendarDateRange *)self->_dateRange endDate];
      v20 = [(_UICalendarDateRange *)v18 initWithStartDate:v14 endDate:endDate];
      dateRange = self->_dateRange;
      self->_dateRange = v20;
    }

    startDate5 = [(_UICalendarDateRange *)self->_dateRange startDate];
    date2 = [startDate5 date];
    endDate2 = [v37 endDate];
    v25 = [date2 compare:endDate2];

    if (v25 == 1)
    {
      view3 = [(UICalendarSelection *)self view];
      calendar3 = [view3 calendar];
      endDate3 = [v37 endDate];
      v29 = [calendar3 components:1048606 fromDate:endDate3];

      v30 = [_UICalendarDateRange alloc];
      endDate4 = [(_UICalendarDateRange *)self->_dateRange endDate];
      v32 = [(_UICalendarDateRange *)v30 initWithStartDate:v29 endDate:endDate4];

      [(_UICalendarRangeSelection *)self _deselectDatesInRange:v32 animated:0];
      v33 = [_UICalendarDateRange alloc];
      startDate6 = [(_UICalendarDateRange *)self->_dateRange startDate];
      v35 = [(_UICalendarDateRange *)v33 initWithStartDate:startDate6 endDate:v29];
      v36 = self->_dateRange;
      self->_dateRange = v35;
    }

    rangeCopy = v37;
  }
}

- (void)_deselectDatesInRange:(id)range animated:(BOOL)animated
{
  rangeCopy = range;
  view = [(UICalendarSelection *)self view];

  if (rangeCopy && view)
  {
    view2 = [(UICalendarSelection *)self view];
    calendar = [view2 calendar];
    v8 = [rangeCopy allDatesInRangeForCalendar:calendar];

    view3 = [(UICalendarSelection *)self view];
    [view3 _deselectDates:v8 animated:0];
  }
}

- (_UICalendarRangeSelectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end