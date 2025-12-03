@interface UICalendarSelectionWeekOfYear
- (BOOL)canSelectDate:(id)date;
- (BOOL)shouldDeselectDate:(id)date;
- (UICalendarSelectionWeekOfYear)initWithDelegate:(id)delegate;
- (UICalendarSelectionWeekOfYearDelegate)delegate;
- (id)_dateComponentsForWeekOfYear:(id)year;
- (id)_weekOfYearComponentsForDateComponents:(id)components;
- (unint64_t)roundedEdgeForDate:(id)date;
- (void)_sendDelegateForSelectedDateChange;
- (void)didChangeAvailableDateRange:(id)range;
- (void)didChangeCalendar:(id)calendar;
- (void)didDeselectDate:(id)date;
- (void)didMoveToCalendarView;
- (void)didSelectDate:(id)date;
- (void)selectAllDatesAnimated:(BOOL)animated;
- (void)setSelectedWeekOfYear:(id)year animated:(BOOL)animated;
- (void)willMoveToCalendarView:(id)view;
@end

@implementation UICalendarSelectionWeekOfYear

- (UICalendarSelectionWeekOfYear)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v9.receiver = self;
  v9.super_class = UICalendarSelectionWeekOfYear;
  _init = [(UICalendarSelection *)&v9 _init];
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
  }

  return v6;
}

- (void)setSelectedWeekOfYear:(id)year animated:(BOOL)animated
{
  animatedCopy = animated;
  yearCopy = year;
  v7 = self->_selectedWeekOfYear;
  v8 = yearCopy;
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
    [(UICalendarSelectionWeekOfYear *)self selectAllDatesAnimated:animatedCopy];
    goto LABEL_14;
  }

LABEL_9:
  if (self->_selectedWeekOfYear)
  {
    v10 = [(UICalendarSelectionWeekOfYear *)self _dateComponentsForWeekOfYear:?];
    view = [(UICalendarSelection *)self view];
    [view _deselectDates:v10 animated:animatedCopy];
  }

  v12 = [(UICalendarSelectionWeekOfYear *)self _weekOfYearComponentsForDateComponents:v20];
  view2 = [(UICalendarSelection *)self view];
  calendar = [view2 calendar];
  v15 = _UICalendarSanitizeWithCalendar(v12, calendar);

  objc_storeStrong(&self->_selectedWeekOfYear, v15);
  v16 = [(UICalendarSelectionWeekOfYear *)self _dateComponentsForWeekOfYear:v15];
  dateComponentsForWeekOfYear = self->_dateComponentsForWeekOfYear;
  self->_dateComponentsForWeekOfYear = v16;

  if (self->_dateComponentsForWeekOfYear)
  {
    view3 = [(UICalendarSelection *)self view];
    [view3 _selectDates:self->_dateComponentsForWeekOfYear animated:animatedCopy];

    view4 = [(UICalendarSelection *)self view];
    [view4 setVisibleDateComponents:self->_selectedWeekOfYear animated:animatedCopy];
  }

LABEL_14:
}

- (void)willMoveToCalendarView:(id)view
{
  viewCopy = view;
  view = [(UICalendarSelection *)self view];

  if (view != viewCopy && self->_dateComponentsForWeekOfYear)
  {
    view2 = [(UICalendarSelection *)self view];
    [view2 _deselectDates:self->_dateComponentsForWeekOfYear animated:0];
  }
}

- (void)didMoveToCalendarView
{
  view = [(UICalendarSelection *)self view];
  [view setAllowsMultipleSelection:1];

  selectedWeekOfYear = [(UICalendarSelectionWeekOfYear *)self selectedWeekOfYear];
  view2 = [(UICalendarSelection *)self view];
  calendar = [view2 calendar];
  v7 = _UICalendarSanitizeWithCalendar(selectedWeekOfYear, calendar);
  selectedWeekOfYear = self->_selectedWeekOfYear;
  self->_selectedWeekOfYear = v7;

  [(UICalendarSelectionWeekOfYear *)self selectAllDatesAnimated:0];
  if (self->_selectedWeekOfYear)
  {
    view3 = [(UICalendarSelection *)self view];
    [view3 setVisibleDateComponents:self->_selectedWeekOfYear animated:0];
  }
}

- (void)didChangeCalendar:(id)calendar
{
  v4 = _UICalendarSanitizeWithCalendar(self->_selectedWeekOfYear, calendar);
  selectedWeekOfYear = self->_selectedWeekOfYear;
  self->_selectedWeekOfYear = v4;
}

- (void)didChangeAvailableDateRange:(id)range
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (self->_selectedWeekOfYear)
  {
    rangeCopy = range;
    selectedWeekOfYear = [(UICalendarSelectionWeekOfYear *)self selectedWeekOfYear];
    view = [(UICalendarSelection *)self view];
    calendar = [view calendar];
    v8 = [calendar dateFromComponents:selectedWeekOfYear];

    LOBYTE(view) = [rangeCopy containsDate:v8];
    if ((view & 1) == 0)
    {
      view2 = [(UICalendarSelection *)self view];
      v12[0] = selectedWeekOfYear;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
      [view2 _deselectDates:v10 animated:0];

      selectedWeekOfYear = self->_selectedWeekOfYear;
      self->_selectedWeekOfYear = 0;
    }
  }
}

- (BOOL)canSelectDate:(id)date
{
  v4 = [(UICalendarSelectionWeekOfYear *)self _weekOfYearComponentsForDateComponents:date];
  if (*&self->_delegateImplements)
  {
    delegate = [(UICalendarSelectionWeekOfYear *)self delegate];
    v5 = [delegate weekOfYearSelection:self canSelectWeekOfYear:v4];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)didSelectDate:(id)date
{
  dateCopy = date;
  if (self->_dateComponentsForWeekOfYear)
  {
    view = [(UICalendarSelection *)self view];
    [view _deselectDates:self->_dateComponentsForWeekOfYear animated:0];
  }

  v5 = [(UICalendarSelectionWeekOfYear *)self _weekOfYearComponentsForDateComponents:dateCopy];
  selectedWeekOfYear = self->_selectedWeekOfYear;
  self->_selectedWeekOfYear = v5;
  v7 = v5;

  v8 = [(UICalendarSelectionWeekOfYear *)self _dateComponentsForWeekOfYear:v7];
  dateComponentsForWeekOfYear = self->_dateComponentsForWeekOfYear;
  self->_dateComponentsForWeekOfYear = v8;

  [(UICalendarSelectionWeekOfYear *)self selectAllDatesAnimated:0];
  [(UICalendarSelectionWeekOfYear *)self _sendDelegateForSelectedDateChange];
}

- (BOOL)shouldDeselectDate:(id)date
{
  if ((*&self->_delegateImplements & 1) == 0)
  {
    return 0;
  }

  selfCopy = self;
  delegate = [(UICalendarSelectionWeekOfYear *)self delegate];
  LOBYTE(selfCopy) = [delegate weekOfYearSelection:selfCopy canSelectWeekOfYear:0];

  return selfCopy;
}

- (void)didDeselectDate:(id)date
{
  selectedWeekOfYear = self->_selectedWeekOfYear;
  self->_selectedWeekOfYear = 0;

  [(UICalendarSelectionWeekOfYear *)self _sendDelegateForSelectedDateChange];
}

- (void)selectAllDatesAnimated:(BOOL)animated
{
  if (self->_dateComponentsForWeekOfYear)
  {
    animatedCopy = animated;
    view = [(UICalendarSelection *)self view];
    [view _selectDates:self->_dateComponentsForWeekOfYear animated:animatedCopy];
  }
}

- (unint64_t)roundedEdgeForDate:(id)date
{
  dateCopy = date;
  dateComponentsForWeekOfYear = self->_dateComponentsForWeekOfYear;
  if (dateComponentsForWeekOfYear && [(NSArray *)dateComponentsForWeekOfYear count]!= 1)
  {
    date = [dateCopy date];
    firstObject = [(NSArray *)self->_dateComponentsForWeekOfYear firstObject];
    date2 = [firstObject date];

    lastObject = [(NSArray *)self->_dateComponentsForWeekOfYear lastObject];
    date3 = [lastObject date];

    if ([date2 isEqual:date])
    {
      v6 = 1;
    }

    else if ([date3 isEqual:date])
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
    v6 = [(UICalendarSelection *)&v13 roundedEdgeForDate:dateCopy];
  }

  return v6;
}

- (void)_sendDelegateForSelectedDateChange
{
  if ((*&self->_delegateImplements & 2) != 0)
  {
    delegate = [(UICalendarSelectionWeekOfYear *)self delegate];
    [delegate weekOfYearSelection:self didSelectWeekOfYear:self->_selectedWeekOfYear];
  }
}

- (id)_weekOfYearComponentsForDateComponents:(id)components
{
  componentsCopy = components;
  view = [(UICalendarSelection *)self view];
  calendar = [view calendar];
  v7 = [calendar dateFromComponents:componentsCopy];

  view2 = [(UICalendarSelection *)self view];
  calendar2 = [view2 calendar];
  v10 = [calendar2 components:1073154 fromDate:v7];

  return v10;
}

- (id)_dateComponentsForWeekOfYear:(id)year
{
  v5 = [(UICalendarSelectionWeekOfYear *)self _weekOfYearComponentsForDateComponents:year];
  if ([v5 weekOfYear] == 0x7FFFFFFFFFFFFFFFLL)
  {
  }

  else
  {
    yearForWeekOfYear = [v5 yearForWeekOfYear];

    if (yearForWeekOfYear != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_3;
    }
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UICalendarSelectionWeekOfYear.m" lineNumber:205 description:{@"Week of year components (%@) must include [.weekOfYear, .yearForWeekOfYear]", v5}];

LABEL_3:
  view = [(UICalendarSelection *)self view];
  calendar = [view calendar];

  v9 = objc_alloc(MEMORY[0x1E695DF70]);
  weekdaySymbols = [calendar weekdaySymbols];
  v11 = [v9 initWithCapacity:{objc_msgSend(weekdaySymbols, "count")}];

  v12 = [calendar dateFromComponents:v5];
  v13 = [calendar dateByAddingUnit:0x2000 value:1 toDate:v12 options:0];
  v14 = v12;
  v15 = v14;
  if ([v14 compare:v13] == -1)
  {
    v16 = v14;
    do
    {
      v17 = [calendar components:1048606 fromDate:v16];
      [v11 addObject:v17];
      v15 = [calendar dateByAddingUnit:16 value:1 toDate:v16 options:0];

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