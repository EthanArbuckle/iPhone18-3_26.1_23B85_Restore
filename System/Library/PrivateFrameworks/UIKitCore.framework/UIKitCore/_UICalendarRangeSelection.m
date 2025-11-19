@interface _UICalendarRangeSelection
- (BOOL)canSelectDate:(id)a3;
- (_UICalendarRangeSelection)initWithDelegate:(id)a3;
- (_UICalendarRangeSelectionDelegate)delegate;
- (id)_sanitizedDateRange:(id)a3 calendar:(id)a4;
- (void)_deselectDatesInRange:(id)a3 animated:(BOOL)a4;
- (void)didChangeAvailableDateRange:(id)a3;
- (void)didChangeCalendar:(id)a3;
- (void)didDeselectDate:(id)a3;
- (void)didMoveToCalendarView;
- (void)didSelectDate:(id)a3;
- (void)selectAllDatesAnimated:(BOOL)a3;
- (void)setDateRange:(id)a3 animated:(BOOL)a4;
@end

@implementation _UICalendarRangeSelection

- (_UICalendarRangeSelection)initWithDelegate:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _UICalendarRangeSelection;
  v5 = [(UICalendarSelection *)&v11 _init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(v5 + 5, v4);
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

- (void)setDateRange:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v30 = a3;
  v6 = [(UICalendarSelection *)self view];

  if (v6)
  {
    dateRange = self->_dateRange;
    v8 = [(UICalendarSelection *)self view];
    v9 = [v8 calendar];
    v10 = [(_UICalendarDateRange *)dateRange allDatesInRangeForCalendar:v9];
    v11 = v10;
    v12 = MEMORY[0x1E695E0F0];
    if (v10)
    {
      v12 = v10;
    }

    v13 = v12;

    v14 = [MEMORY[0x1E695DFA8] setWithArray:v13];
    v15 = [(UICalendarSelection *)self view];
    v16 = [v15 calendar];
    v17 = [(_UICalendarRangeSelection *)self _sanitizedDateRange:v30 calendar:v16];

    v18 = [(UICalendarSelection *)self view];
    v19 = [v18 calendar];
    v20 = [v17 allDatesInRangeForCalendar:v19];
    v21 = v20;
    v22 = MEMORY[0x1E695E0F0];
    if (v20)
    {
      v22 = v20;
    }

    v23 = v22;

    v24 = [MEMORY[0x1E695DFD8] setWithArray:v23];
    [v14 minusSet:v24];

    v25 = [(UICalendarSelection *)self view];
    v26 = [v14 allObjects];
    [v25 _deselectDates:v26 animated:v4];

    objc_storeStrong(&self->_dateRange, v17);
    pendingStartDate = self->_pendingStartDate;
    self->_pendingStartDate = 0;

    v28 = [(UICalendarSelection *)self view];
    [v28 _selectDates:v23 animated:v4];

    v30 = v17;
  }

  else
  {
    v14 = [MEMORY[0x1E695DEE8] currentCalendar];
    v29 = [(_UICalendarRangeSelection *)self _sanitizedDateRange:v30 calendar:v14];
    v13 = self->_dateRange;
    self->_dateRange = v29;
  }
}

- (void)didMoveToCalendarView
{
  v3 = [(UICalendarSelection *)self view];
  if (v3)
  {
    dateRange = self->_dateRange;

    if (dateRange)
    {
      v5 = self->_dateRange;
      v6 = [(UICalendarSelection *)self view];
      v7 = [v6 calendar];
      v8 = [(_UICalendarRangeSelection *)self _sanitizedDateRange:v5 calendar:v7];
      v9 = self->_dateRange;
      self->_dateRange = v8;
    }
  }

  v10 = [(UICalendarSelection *)self view];
  [v10 setAllowsMultipleSelection:1];

  [(_UICalendarRangeSelection *)self selectAllDatesAnimated:0];
}

- (id)_sanitizedDateRange:(id)a3 calendar:(id)a4
{
  v4 = a3;
  if (a3)
  {
    v5 = a4;
    v6 = v4;
    v7 = [(_UICalendarDateRange *)v6 startDate];
    v8 = _UICalendarSanitizeWithCalendar(v7, v5);

    v9 = [(_UICalendarDateRange *)v6 endDate];

    v10 = _UICalendarSanitizeWithCalendar(v9, v5);

    v4 = [[_UICalendarDateRange alloc] initWithStartDate:v8 endDate:v10];
  }

  return v4;
}

- (BOOL)canSelectDate:(id)a3
{
  if ((*&self->_delegateImplements & 1) == 0)
  {
    return 1;
  }

  v4 = self;
  v5 = a3;
  v6 = [(_UICalendarRangeSelection *)v4 delegate];
  LOBYTE(v4) = [v6 _calendarSelection:v4 canSelectDate:v5];

  return v4;
}

- (void)didSelectDate:(id)a3
{
  v26 = a3;
  if (self->_pendingStartDate)
  {
    v5 = [(UICalendarSelection *)self view];
    v6 = [v5 calendar];
    v7 = [v6 dateFromComponents:self->_pendingStartDate];

    v8 = [(UICalendarSelection *)self view];
    v9 = [v8 calendar];
    v10 = [v9 dateFromComponents:v26];

    v11 = v26;
    v12 = [v7 compare:v10];
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
        v18 = [(_UICalendarRangeSelection *)self delegate];
        [v18 _calendarRangeSelection:self didBeginSelectionWithDate:v11];
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
      v24 = [(_UICalendarRangeSelection *)self delegate];
      [v24 _calendarRangeSelection:self didEndSelectionWithDate:v17];

      delegateImplements = self->_delegateImplements;
    }

    if ((delegateImplements & 8) != 0)
    {
      v25 = [(_UICalendarRangeSelection *)self delegate];
      [v25 _calendarRangeSelection:self didSelectDateRange:self->_dateRange];
    }
  }

  else
  {
    [(_UICalendarRangeSelection *)self _deselectDatesInRange:self->_dateRange animated:0];
    v19 = self->_dateRange;
    self->_dateRange = 0;

    objc_storeStrong(&self->_pendingStartDate, a3);
    [(_UICalendarRangeSelection *)self selectAllDatesAnimated:0];
    if ((*&self->_delegateImplements & 2) == 0)
    {
      goto LABEL_15;
    }

    v7 = [(_UICalendarRangeSelection *)self delegate];
    [v7 _calendarRangeSelection:self didBeginSelectionWithDate:v26];
  }

LABEL_15:
}

- (void)didDeselectDate:(id)a3
{
  v14 = a3;
  pendingStartDate = self->_pendingStartDate;
  if (pendingStartDate)
  {
    v6 = pendingStartDate;
    v7 = [[_UICalendarDateRange alloc] initWithStartDate:v6 endDate:v6];
    dateRange = self->_dateRange;
    self->_dateRange = v7;

    v9 = self->_pendingStartDate;
    self->_pendingStartDate = 0;

    [(_UICalendarRangeSelection *)self selectAllDatesAnimated:0];
    delegateImplements = self->_delegateImplements;
    if ((delegateImplements & 4) != 0)
    {
      v11 = [(_UICalendarRangeSelection *)self delegate];
      [v11 _calendarRangeSelection:self didEndSelectionWithDate:v6];

      delegateImplements = self->_delegateImplements;
    }

    if ((delegateImplements & 8) != 0)
    {
      v12 = [(_UICalendarRangeSelection *)self delegate];
      [v12 _calendarRangeSelection:self didSelectDateRange:self->_dateRange];
    }
  }

  else
  {
    [(_UICalendarRangeSelection *)self _deselectDatesInRange:self->_dateRange animated:0];
    v13 = self->_dateRange;
    self->_dateRange = 0;

    objc_storeStrong(&self->_pendingStartDate, a3);
    [(_UICalendarRangeSelection *)self selectAllDatesAnimated:0];
    if ((*&self->_delegateImplements & 2) == 0)
    {
      goto LABEL_9;
    }

    v6 = [(_UICalendarRangeSelection *)self delegate];
    [(NSDateComponents *)v6 _calendarRangeSelection:self didBeginSelectionWithDate:v14];
  }

LABEL_9:
}

- (void)selectAllDatesAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(UICalendarSelection *)self view];

  if (v5)
  {
    v11 = objc_opt_new();
    dateRange = self->_dateRange;
    if (dateRange)
    {
      v7 = [(UICalendarSelection *)self view];
      v8 = [v7 calendar];
      v9 = [(_UICalendarDateRange *)dateRange allDatesInRangeForCalendar:v8];
      [v11 addObjectsFromArray:v9];
    }

    if (self->_pendingStartDate)
    {
      [v11 addObject:?];
    }

    v10 = [(UICalendarSelection *)self view];
    [v10 _selectDates:v11 animated:v3];
  }
}

- (void)didChangeCalendar:(id)a3
{
  v4 = [(_UICalendarRangeSelection *)self _sanitizedDateRange:self->_dateRange calendar:a3];
  dateRange = self->_dateRange;
  self->_dateRange = v4;
}

- (void)didChangeAvailableDateRange:(id)a3
{
  v4 = a3;
  if (self->_dateRange)
  {
    v37 = v4;
    v5 = [(UICalendarSelection *)self view];
    v6 = [v5 calendar];

    v7 = [(_UICalendarDateRange *)self->_dateRange startDate];
    v8 = [v7 date];
    v9 = [v37 startDate];
    v10 = [v8 compare:v9];

    if (v10 == -1)
    {
      v11 = [(UICalendarSelection *)self view];
      v12 = [v11 calendar];
      v13 = [v37 startDate];
      v14 = [v12 components:1048606 fromDate:v13];

      v15 = [_UICalendarDateRange alloc];
      v16 = [(_UICalendarDateRange *)self->_dateRange startDate];
      v17 = [(_UICalendarDateRange *)v15 initWithStartDate:v16 endDate:v14];

      [(_UICalendarRangeSelection *)self _deselectDatesInRange:v17 animated:0];
      v18 = [_UICalendarDateRange alloc];
      v19 = [(_UICalendarDateRange *)self->_dateRange endDate];
      v20 = [(_UICalendarDateRange *)v18 initWithStartDate:v14 endDate:v19];
      dateRange = self->_dateRange;
      self->_dateRange = v20;
    }

    v22 = [(_UICalendarDateRange *)self->_dateRange startDate];
    v23 = [v22 date];
    v24 = [v37 endDate];
    v25 = [v23 compare:v24];

    if (v25 == 1)
    {
      v26 = [(UICalendarSelection *)self view];
      v27 = [v26 calendar];
      v28 = [v37 endDate];
      v29 = [v27 components:1048606 fromDate:v28];

      v30 = [_UICalendarDateRange alloc];
      v31 = [(_UICalendarDateRange *)self->_dateRange endDate];
      v32 = [(_UICalendarDateRange *)v30 initWithStartDate:v29 endDate:v31];

      [(_UICalendarRangeSelection *)self _deselectDatesInRange:v32 animated:0];
      v33 = [_UICalendarDateRange alloc];
      v34 = [(_UICalendarDateRange *)self->_dateRange startDate];
      v35 = [(_UICalendarDateRange *)v33 initWithStartDate:v34 endDate:v29];
      v36 = self->_dateRange;
      self->_dateRange = v35;
    }

    v4 = v37;
  }
}

- (void)_deselectDatesInRange:(id)a3 animated:(BOOL)a4
{
  v10 = a3;
  v5 = [(UICalendarSelection *)self view];

  if (v10 && v5)
  {
    v6 = [(UICalendarSelection *)self view];
    v7 = [v6 calendar];
    v8 = [v10 allDatesInRangeForCalendar:v7];

    v9 = [(UICalendarSelection *)self view];
    [v9 _deselectDates:v8 animated:0];
  }
}

- (_UICalendarRangeSelectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end