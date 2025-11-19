@interface UICalendarSelectionWeekOfYear
- (BOOL)canSelectDate:(id)a3;
- (BOOL)shouldDeselectDate:(id)a3;
- (UICalendarSelectionWeekOfYear)initWithDelegate:(id)a3;
- (UICalendarSelectionWeekOfYearDelegate)delegate;
- (id)_dateComponentsForWeekOfYear:(id)a3;
- (id)_weekOfYearComponentsForDateComponents:(id)a3;
- (unint64_t)roundedEdgeForDate:(id)a3;
- (void)_sendDelegateForSelectedDateChange;
- (void)didChangeAvailableDateRange:(id)a3;
- (void)didChangeCalendar:(id)a3;
- (void)didDeselectDate:(id)a3;
- (void)didMoveToCalendarView;
- (void)didSelectDate:(id)a3;
- (void)selectAllDatesAnimated:(BOOL)a3;
- (void)setSelectedWeekOfYear:(id)a3 animated:(BOOL)a4;
- (void)willMoveToCalendarView:(id)a3;
@end

@implementation UICalendarSelectionWeekOfYear

- (UICalendarSelectionWeekOfYear)initWithDelegate:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = UICalendarSelectionWeekOfYear;
  v5 = [(UICalendarSelection *)&v9 _init];
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
  }

  return v6;
}

- (void)setSelectedWeekOfYear:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = self->_selectedWeekOfYear;
  v8 = v6;
  v20 = v8;
  if (v7 == v8)
  {

    goto LABEL_7;
  }

  if (v8 && v7)
  {
    v9 = [(NSDateComponents *)v7 isEqual:v8];

    if (!v9)
    {
      goto LABEL_9;
    }

LABEL_7:
    [(UICalendarSelectionWeekOfYear *)self selectAllDatesAnimated:v4];
    goto LABEL_14;
  }

LABEL_9:
  if (self->_selectedWeekOfYear)
  {
    v10 = [(UICalendarSelectionWeekOfYear *)self _dateComponentsForWeekOfYear:?];
    v11 = [(UICalendarSelection *)self view];
    [v11 _deselectDates:v10 animated:v4];
  }

  v12 = [(UICalendarSelectionWeekOfYear *)self _weekOfYearComponentsForDateComponents:v20];
  v13 = [(UICalendarSelection *)self view];
  v14 = [v13 calendar];
  v15 = _UICalendarSanitizeWithCalendar(v12, v14);

  objc_storeStrong(&self->_selectedWeekOfYear, v15);
  v16 = [(UICalendarSelectionWeekOfYear *)self _dateComponentsForWeekOfYear:v15];
  dateComponentsForWeekOfYear = self->_dateComponentsForWeekOfYear;
  self->_dateComponentsForWeekOfYear = v16;

  if (self->_dateComponentsForWeekOfYear)
  {
    v18 = [(UICalendarSelection *)self view];
    [v18 _selectDates:self->_dateComponentsForWeekOfYear animated:v4];

    v19 = [(UICalendarSelection *)self view];
    [v19 setVisibleDateComponents:self->_selectedWeekOfYear animated:v4];
  }

LABEL_14:
}

- (void)willMoveToCalendarView:(id)a3
{
  v4 = a3;
  v5 = [(UICalendarSelection *)self view];

  if (v5 != v4 && self->_dateComponentsForWeekOfYear)
  {
    v6 = [(UICalendarSelection *)self view];
    [v6 _deselectDates:self->_dateComponentsForWeekOfYear animated:0];
  }
}

- (void)didMoveToCalendarView
{
  v3 = [(UICalendarSelection *)self view];
  [v3 setAllowsMultipleSelection:1];

  v4 = [(UICalendarSelectionWeekOfYear *)self selectedWeekOfYear];
  v5 = [(UICalendarSelection *)self view];
  v6 = [v5 calendar];
  v7 = _UICalendarSanitizeWithCalendar(v4, v6);
  selectedWeekOfYear = self->_selectedWeekOfYear;
  self->_selectedWeekOfYear = v7;

  [(UICalendarSelectionWeekOfYear *)self selectAllDatesAnimated:0];
  if (self->_selectedWeekOfYear)
  {
    v9 = [(UICalendarSelection *)self view];
    [v9 setVisibleDateComponents:self->_selectedWeekOfYear animated:0];
  }
}

- (void)didChangeCalendar:(id)a3
{
  v4 = _UICalendarSanitizeWithCalendar(self->_selectedWeekOfYear, a3);
  selectedWeekOfYear = self->_selectedWeekOfYear;
  self->_selectedWeekOfYear = v4;
}

- (void)didChangeAvailableDateRange:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (self->_selectedWeekOfYear)
  {
    v4 = a3;
    v5 = [(UICalendarSelectionWeekOfYear *)self selectedWeekOfYear];
    v6 = [(UICalendarSelection *)self view];
    v7 = [v6 calendar];
    v8 = [v7 dateFromComponents:v5];

    LOBYTE(v6) = [v4 containsDate:v8];
    if ((v6 & 1) == 0)
    {
      v9 = [(UICalendarSelection *)self view];
      v12[0] = v5;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
      [v9 _deselectDates:v10 animated:0];

      selectedWeekOfYear = self->_selectedWeekOfYear;
      self->_selectedWeekOfYear = 0;
    }
  }
}

- (BOOL)canSelectDate:(id)a3
{
  v4 = [(UICalendarSelectionWeekOfYear *)self _weekOfYearComponentsForDateComponents:a3];
  if (*&self->_delegateImplements)
  {
    v6 = [(UICalendarSelectionWeekOfYear *)self delegate];
    v5 = [v6 weekOfYearSelection:self canSelectWeekOfYear:v4];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)didSelectDate:(id)a3
{
  v10 = a3;
  if (self->_dateComponentsForWeekOfYear)
  {
    v4 = [(UICalendarSelection *)self view];
    [v4 _deselectDates:self->_dateComponentsForWeekOfYear animated:0];
  }

  v5 = [(UICalendarSelectionWeekOfYear *)self _weekOfYearComponentsForDateComponents:v10];
  selectedWeekOfYear = self->_selectedWeekOfYear;
  self->_selectedWeekOfYear = v5;
  v7 = v5;

  v8 = [(UICalendarSelectionWeekOfYear *)self _dateComponentsForWeekOfYear:v7];
  dateComponentsForWeekOfYear = self->_dateComponentsForWeekOfYear;
  self->_dateComponentsForWeekOfYear = v8;

  [(UICalendarSelectionWeekOfYear *)self selectAllDatesAnimated:0];
  [(UICalendarSelectionWeekOfYear *)self _sendDelegateForSelectedDateChange];
}

- (BOOL)shouldDeselectDate:(id)a3
{
  if ((*&self->_delegateImplements & 1) == 0)
  {
    return 0;
  }

  v4 = self;
  v5 = [(UICalendarSelectionWeekOfYear *)self delegate];
  LOBYTE(v4) = [v5 weekOfYearSelection:v4 canSelectWeekOfYear:0];

  return v4;
}

- (void)didDeselectDate:(id)a3
{
  selectedWeekOfYear = self->_selectedWeekOfYear;
  self->_selectedWeekOfYear = 0;

  [(UICalendarSelectionWeekOfYear *)self _sendDelegateForSelectedDateChange];
}

- (void)selectAllDatesAnimated:(BOOL)a3
{
  if (self->_dateComponentsForWeekOfYear)
  {
    v3 = a3;
    v5 = [(UICalendarSelection *)self view];
    [v5 _selectDates:self->_dateComponentsForWeekOfYear animated:v3];
  }
}

- (unint64_t)roundedEdgeForDate:(id)a3
{
  v4 = a3;
  dateComponentsForWeekOfYear = self->_dateComponentsForWeekOfYear;
  if (dateComponentsForWeekOfYear && [(NSArray *)dateComponentsForWeekOfYear count]!= 1)
  {
    v7 = [v4 date];
    v8 = [(NSArray *)self->_dateComponentsForWeekOfYear firstObject];
    v9 = [v8 date];

    v10 = [(NSArray *)self->_dateComponentsForWeekOfYear lastObject];
    v11 = [v10 date];

    if ([v9 isEqual:v7])
    {
      v6 = 1;
    }

    else if ([v11 isEqual:v7])
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v13.receiver = self;
    v13.super_class = UICalendarSelectionWeekOfYear;
    v6 = [(UICalendarSelection *)&v13 roundedEdgeForDate:v4];
  }

  return v6;
}

- (void)_sendDelegateForSelectedDateChange
{
  if ((*&self->_delegateImplements & 2) != 0)
  {
    v4 = [(UICalendarSelectionWeekOfYear *)self delegate];
    [v4 weekOfYearSelection:self didSelectWeekOfYear:self->_selectedWeekOfYear];
  }
}

- (id)_weekOfYearComponentsForDateComponents:(id)a3
{
  v4 = a3;
  v5 = [(UICalendarSelection *)self view];
  v6 = [v5 calendar];
  v7 = [v6 dateFromComponents:v4];

  v8 = [(UICalendarSelection *)self view];
  v9 = [v8 calendar];
  v10 = [v9 components:1073154 fromDate:v7];

  return v10;
}

- (id)_dateComponentsForWeekOfYear:(id)a3
{
  v5 = [(UICalendarSelectionWeekOfYear *)self _weekOfYearComponentsForDateComponents:a3];
  if ([v5 weekOfYear] == 0x7FFFFFFFFFFFFFFFLL)
  {
  }

  else
  {
    v6 = [v5 yearForWeekOfYear];

    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_3;
    }
  }

  v19 = [MEMORY[0x1E696AAA8] currentHandler];
  [v19 handleFailureInMethod:a2 object:self file:@"UICalendarSelectionWeekOfYear.m" lineNumber:205 description:{@"Week of year components (%@) must include [.weekOfYear, .yearForWeekOfYear]", v5}];

LABEL_3:
  v7 = [(UICalendarSelection *)self view];
  v8 = [v7 calendar];

  v9 = objc_alloc(MEMORY[0x1E695DF70]);
  v10 = [v8 weekdaySymbols];
  v11 = [v9 initWithCapacity:{objc_msgSend(v10, "count")}];

  v12 = [v8 dateFromComponents:v5];
  v13 = [v8 dateByAddingUnit:0x2000 value:1 toDate:v12 options:0];
  v14 = v12;
  v15 = v14;
  if ([v14 compare:v13] == -1)
  {
    v16 = v14;
    do
    {
      v17 = [v8 components:1048606 fromDate:v16];
      [v11 addObject:v17];
      v15 = [v8 dateByAddingUnit:16 value:1 toDate:v16 options:0];

      v16 = v15;
    }

    while ([v15 compare:v13] == -1);
  }

  return v11;
}

- (UICalendarSelectionWeekOfYearDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end