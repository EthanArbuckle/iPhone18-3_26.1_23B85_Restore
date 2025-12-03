@interface UICalendarSelectionMultiDate
- (BOOL)canSelectDate:(id)date;
- (BOOL)shouldDeselectDate:(id)date;
- (NSArray)selectedDates;
- (UICalendarSelectionMultiDate)initWithDelegate:(id)delegate;
- (id)_removeSelectedDatesSatisfyingPredicate:(id)predicate;
- (id)_sanitizeDateComponents:(id)components calendar:(id)calendar;
- (id)_selectedDatesSatisfyingPredicate:(id)predicate;
- (id)delegate;
- (void)didChangeAvailableDateRange:(id)range;
- (void)didChangeCalendar:(id)calendar;
- (void)didDeselectDate:(id)date;
- (void)didMoveToCalendarView;
- (void)didSelectDate:(id)date;
- (void)selectAllDatesAnimated:(BOOL)animated;
- (void)setSelectedDates:(NSArray *)selectedDates animated:(BOOL)animated;
- (void)willMoveToCalendarView:(id)view;
@end

@implementation UICalendarSelectionMultiDate

- (UICalendarSelectionMultiDate)initWithDelegate:(id)delegate
{
  v4 = delegate;
  v13.receiver = self;
  v13.super_class = UICalendarSelectionMultiDate;
  _init = [(UICalendarSelection *)&v13 _init];
  v6 = _init;
  if (_init)
  {
    objc_storeWeak(_init + 4, v4);
    array = [MEMORY[0x1E695DF70] array];
    v8 = v6[2];
    v6[2] = array;

    *(v6 + 24) = v6[3] & 0xFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v9 = 2;
    }

    else
    {
      v9 = 0;
    }

    *(v6 + 24) = v6[3] & 0xFD | v9;
    if (objc_opt_respondsToSelector())
    {
      v10 = 4;
    }

    else
    {
      v10 = 0;
    }

    *(v6 + 24) = v6[3] & 0xFB | v10;
    if (objc_opt_respondsToSelector())
    {
      v11 = 8;
    }

    else
    {
      v11 = 0;
    }

    *(v6 + 24) = v6[3] & 0xF7 | v11;
  }

  return v6;
}

- (NSArray)selectedDates
{
  v2 = [(NSMutableArray *)self->_selectedDates copy];

  return v2;
}

- (void)setSelectedDates:(NSArray *)selectedDates animated:(BOOL)animated
{
  v4 = animated;
  v26 = *MEMORY[0x1E69E9840];
  v7 = selectedDates;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      v11 = 0;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v21 + 1) + 8 * v11);
        if ([v12 year] == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v12, "month") == 0x7FFFFFFFFFFFFFFFLL)
        {
        }

        else
        {
          v13 = [v12 day];

          if (v13 != 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_9;
          }
        }

        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"UICalendarSelectionMultiDate.m" lineNumber:57 description:{@"dateComponents (%@) is invalid. It requires at least [.year, .month, .day].", v12}];

LABEL_9:
        ++v11;
      }

      while (v9 != v11);
      v15 = [(NSArray *)v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      v9 = v15;
    }

    while (v15);
  }

  view = [(UICalendarSelection *)self view];
  [view _deselectDates:self->_selectedDates animated:v4];

  view2 = [(UICalendarSelection *)self view];
  calendar = [view2 calendar];
  v19 = [(UICalendarSelectionMultiDate *)self _sanitizeDateComponents:v7 calendar:calendar];
  v20 = self->_selectedDates;
  self->_selectedDates = v19;

  [(UICalendarSelectionMultiDate *)self selectAllDatesAnimated:v4];
}

- (void)willMoveToCalendarView:(id)view
{
  view = [(UICalendarSelection *)self view];
  [view _deselectDates:self->_selectedDates animated:0];
}

- (void)didMoveToCalendarView
{
  selectedDates = self->_selectedDates;
  view = [(UICalendarSelection *)self view];
  calendar = [view calendar];
  v6 = [(UICalendarSelectionMultiDate *)self _sanitizeDateComponents:selectedDates calendar:calendar];
  v7 = self->_selectedDates;
  self->_selectedDates = v6;

  view2 = [(UICalendarSelection *)self view];
  [view2 setAllowsMultipleSelection:1];

  [(UICalendarSelectionMultiDate *)self selectAllDatesAnimated:0];
}

- (BOOL)canSelectDate:(id)date
{
  if ((*&self->_delegateImplements & 1) == 0)
  {
    return 1;
  }

  selfCopy = self;
  dateCopy = date;
  delegate = [(UICalendarSelectionMultiDate *)selfCopy delegate];
  LOBYTE(selfCopy) = [delegate multiDateSelection:selfCopy canSelectDate:dateCopy];

  return selfCopy;
}

- (BOOL)shouldDeselectDate:(id)date
{
  dateCopy = date;
  view = [(UICalendarSelection *)self view];
  calendar = [view calendar];

  v7 = [calendar dateFromComponents:dateCopy];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __51__UICalendarSelectionMultiDate_shouldDeselectDate___block_invoke;
  v19[3] = &unk_1E7126080;
  v8 = calendar;
  v20 = v8;
  v9 = v7;
  v21 = v9;
  v10 = [(UICalendarSelectionMultiDate *)self _selectedDatesSatisfyingPredicate:v19];
  v11 = v10;
  if ((*&self->_delegateImplements & 2) != 0)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __51__UICalendarSelectionMultiDate_shouldDeselectDate___block_invoke_2;
    v14[3] = &unk_1E71260A8;
    v14[4] = self;
    v14[5] = &v15;
    [v10 enumerateObjectsUsingBlock:v14];
    v12 = *(v16 + 24);
    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v12 = 1;
  }

  return v12 & 1;
}

uint64_t __51__UICalendarSelectionMultiDate_shouldDeselectDate___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) dateFromComponents:a2];
  v4 = [*(a1 + 32) isDate:*(a1 + 40) equalToDate:v3 toUnitGranularity:16];

  return v4;
}

void __51__UICalendarSelectionMultiDate_shouldDeselectDate___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v6 delegate];
  v9 = [v8 multiDateSelection:*(a1 + 32) canDeselectDate:v7];

  *(*(*(a1 + 40) + 8) + 24) = v9;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a4 = 1;
  }
}

- (void)didSelectDate:(id)date
{
  dateCopy = date;
  [(NSMutableArray *)self->_selectedDates addObject:?];
  if ((*&self->_delegateImplements & 4) != 0)
  {
    delegate = [(UICalendarSelectionMultiDate *)self delegate];
    [delegate multiDateSelection:self didSelectDate:dateCopy];
  }
}

- (void)didDeselectDate:(id)date
{
  v26 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  view = [(UICalendarSelection *)self view];
  calendar = [view calendar];

  v7 = [calendar dateFromComponents:dateCopy];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __48__UICalendarSelectionMultiDate_didDeselectDate___block_invoke;
  v22[3] = &unk_1E7126080;
  v8 = calendar;
  v23 = v8;
  v9 = v7;
  v24 = v9;
  v10 = [(UICalendarSelectionMultiDate *)self _removeSelectedDatesSatisfyingPredicate:v22];
  v11 = v10;
  if ((*&self->_delegateImplements & 8) != 0)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v12 = [v10 countByEnumeratingWithState:&v18 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v19;
      do
      {
        v15 = 0;
        do
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v18 + 1) + 8 * v15);
          delegate = [(UICalendarSelectionMultiDate *)self delegate];
          [delegate multiDateSelection:self didDeselectDate:v16];

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v18 objects:v25 count:16];
      }

      while (v13);
    }
  }
}

uint64_t __48__UICalendarSelectionMultiDate_didDeselectDate___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) dateFromComponents:a2];
  v4 = [*(a1 + 32) isDate:*(a1 + 40) equalToDate:v3 toUnitGranularity:16];

  return v4;
}

- (void)selectAllDatesAnimated:(BOOL)animated
{
  animatedCopy = animated;
  view = [(UICalendarSelection *)self view];
  [view _selectDates:self->_selectedDates animated:animatedCopy];
}

- (void)didChangeCalendar:(id)calendar
{
  v4 = [(UICalendarSelectionMultiDate *)self _sanitizeDateComponents:self->_selectedDates calendar:calendar];
  selectedDates = self->_selectedDates;
  self->_selectedDates = v4;
}

- (void)didChangeAvailableDateRange:(id)range
{
  rangeCopy = range;
  if ([(NSMutableArray *)self->_selectedDates count])
  {
    view = [(UICalendarSelection *)self view];
    calendar = [view calendar];

    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __60__UICalendarSelectionMultiDate_didChangeAvailableDateRange___block_invoke;
    v13 = &unk_1E7126080;
    v14 = calendar;
    v15 = rangeCopy;
    v7 = calendar;
    v8 = [(UICalendarSelectionMultiDate *)self _removeSelectedDatesSatisfyingPredicate:&v10];
    v9 = [(UICalendarSelection *)self view:v10];
    [v9 _deselectDates:v8 animated:0];
  }
}

uint64_t __60__UICalendarSelectionMultiDate_didChangeAvailableDateRange___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = [*(a1 + 32) dateFromComponents:a2];
  LODWORD(v2) = [*(v2 + 40) containsDate:v3];

  return v2 ^ 1;
}

- (id)_sanitizeDateComponents:(id)components calendar:(id)calendar
{
  v27 = *MEMORY[0x1E69E9840];
  componentsCopy = components;
  calendarCopy = calendar;
  v7 = calendarCopy;
  if (calendarCopy)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v19 = __65__UICalendarSelectionMultiDate__sanitizeDateComponents_calendar___block_invoke;
    v20 = &unk_1E71260D0;
    v21 = calendarCopy;
    v8 = componentsCopy;
    v9 = v18;
    v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v8, "count")}];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = v19(v9, *(*(&v22 + 1) + 8 * i));
          if (v16)
          {
            [v10 addObject:v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v13);
    }
  }

  else
  {
    v10 = [componentsCopy mutableCopy];
  }

  return v10;
}

id __65__UICalendarSelectionMultiDate__sanitizeDateComponents_calendar___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v3 copy];
    v6 = [v5 calendar];

    if (!v6)
    {
      [v5 setCalendar:v4];
    }

    if (v4)
    {
      v7 = [v5 calendar];
      v8 = [v7 isEqual:v4];

      if ((v8 & 1) == 0)
      {
        v9 = [v5 calendar];
        v10 = [v9 dateFromComponents:v5];

        if (!v10)
        {
          v13 = [MEMORY[0x1E696AAA8] currentHandler];
          v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSDateComponents * _Nullable _UICalendarSanitizeWithCalendar(NSDateComponents * _Nonnull __strong, NSCalendar * _Nonnull __strong)"}];
          [v13 handleFailureInFunction:v14 file:@"_UICalendarViewHelper.h" lineNumber:92 description:@"Date components yielded an invalid NSDate"];
        }

        v11 = [v4 components:1048606 fromDate:v10];

        v5 = v11;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_removeSelectedDatesSatisfyingPredicate:(id)predicate
{
  predicateCopy = predicate;
  v5 = objc_opt_new();
  v6 = [(NSMutableArray *)self->_selectedDates count];
  if (v6 - 1 >= 0)
  {
    v7 = v6;
    do
    {
      v8 = [(NSMutableArray *)self->_selectedDates objectAtIndex:--v7];
      if (predicateCopy[2](predicateCopy, v8))
      {
        [v5 addObject:v8];
        [(NSMutableArray *)self->_selectedDates removeObjectAtIndex:v7];
      }
    }

    while (v7 > 0);
  }

  return v5;
}

- (id)_selectedDatesSatisfyingPredicate:(id)predicate
{
  predicateCopy = predicate;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__211;
  v16 = __Block_byref_object_dispose__211;
  v17 = objc_opt_new();
  selectedDates = self->_selectedDates;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66__UICalendarSelectionMultiDate__selectedDatesSatisfyingPredicate___block_invoke;
  v9[3] = &unk_1E71260F8;
  v6 = predicateCopy;
  v10 = v6;
  v11 = &v12;
  [(NSMutableArray *)selectedDates enumerateObjectsUsingBlock:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __66__UICalendarSelectionMultiDate__selectedDatesSatisfyingPredicate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 32) + 16))())
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v3];
  }
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end