@interface _UICalendarViewDataSourceController
- (_UICalendarViewDataSourceController)initWithCalendar:(id)calendar dataSource:(id)source;
- (int64_t)cleanupDataSourceWithScrollPositionIfNecessary:(id)necessary;
- (int64_t)prepareDataSourceWithScrollPositionIfNecessary:(id)necessary;
- (void)_reloadDataSourceWithScrollPosition:(id)position;
@end

@implementation _UICalendarViewDataSourceController

- (_UICalendarViewDataSourceController)initWithCalendar:(id)calendar dataSource:(id)source
{
  calendarCopy = calendar;
  sourceCopy = source;
  v16.receiver = self;
  v16.super_class = _UICalendarViewDataSourceController;
  v9 = [(_UICalendarViewDataSourceController *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_calendar, calendar);
    objc_storeStrong(&v10->_dataSource, source);
    v11 = [[_UIDatePickerCalendarMonthSet alloc] initWithCalendar:calendarCopy rangeLength:7];
    loadedMonthSet = v10->_loadedMonthSet;
    v10->_loadedMonthSet = v11;

    v13 = [[_UIDatePickerCalendarDaySet alloc] initWithCalendar:calendarCopy];
    loadedDaySet = v10->_loadedDaySet;
    v10->_loadedDaySet = v13;
  }

  return v10;
}

- (void)_reloadDataSourceWithScrollPosition:(id)position
{
  v20 = *MEMORY[0x1E69E9840];
  [(_UIDatePickerCalendarMonthSet *)self->_loadedMonthSet reloadWithMonthsAroundMonth:position];
  loadedDaySet = self->_loadedDaySet;
  loadedMonths = [(_UIDatePickerCalendarMonthSet *)self->_loadedMonthSet loadedMonths];
  [(_UIDatePickerCalendarDaySet *)loadedDaySet cleanupDaysKeepingDaysForMonths:loadedMonths];

  v6 = objc_opt_new();
  loadedMonths2 = [(_UIDatePickerCalendarMonthSet *)self->_loadedMonthSet loadedMonths];
  [v6 appendSectionsWithIdentifiers:loadedMonths2];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  loadedMonths3 = [(_UIDatePickerCalendarMonthSet *)self->_loadedMonthSet loadedMonths];
  v9 = [loadedMonths3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(loadedMonths3);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        v14 = [(_UIDatePickerCalendarDaySet *)self->_loadedDaySet daysForMonth:v13 includingOverlapDays:1];
        [v6 appendItemsWithIdentifiers:v14 intoSectionWithIdentifier:v13];
      }

      v10 = [loadedMonths3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  [(UICollectionViewDiffableDataSource *)self->_dataSource applySnapshotUsingReloadData:v6];
}

- (int64_t)cleanupDataSourceWithScrollPositionIfNecessary:(id)necessary
{
  loadedMonthSet = self->_loadedMonthSet;
  necessaryCopy = necessary;
  v7 = [(_UIDatePickerCalendarMonthSet *)loadedMonthSet indexOfMonth:necessaryCopy];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UICalendarViewDataSourceController.m" lineNumber:69 description:@"Cleaning up the data source around a month that is not loaded."];
  }

  [(_UICalendarViewDataSourceController *)self _reloadDataSourceWithScrollPosition:necessaryCopy];
  v8 = [(_UIDatePickerCalendarMonthSet *)self->_loadedMonthSet indexOfMonth:necessaryCopy];

  return v8 - v7;
}

- (int64_t)prepareDataSourceWithScrollPositionIfNecessary:(id)necessary
{
  v24 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v22 = 0;
  [(_UIDatePickerCalendarMonthSet *)self->_loadedMonthSet insertMonthsAroundMonth:necessary loadedIndexRange:&v21];
  if (!v22)
  {
    return 0;
  }

  snapshot = [(UICollectionViewDiffableDataSource *)self->_dataSource snapshot];
  loadedMonths = [(_UIDatePickerCalendarMonthSet *)self->_loadedMonthSet loadedMonths];
  v6 = [loadedMonths subarrayWithRange:{v21, v22}];
  if (v21)
  {
    v7 = [loadedMonths objectAtIndexedSubscript:v21 - 1];
    [snapshot insertSectionsWithIdentifiers:v6 afterSectionWithIdentifier:v7];
  }

  else
  {
    v7 = [loadedMonths objectAtIndexedSubscript:v22];
    [snapshot insertSectionsWithIdentifiers:v6 beforeSectionWithIdentifier:v7];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        v15 = [(_UIDatePickerCalendarDaySet *)self->_loadedDaySet daysForMonth:v14 includingOverlapDays:1, v17];
        [snapshot appendItemsWithIdentifiers:v15 intoSectionWithIdentifier:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v11);
  }

  [(UICollectionViewDiffableDataSource *)self->_dataSource applySnapshotUsingReloadData:snapshot];
  if (v21)
  {
    v8 = 0;
  }

  else
  {
    v8 = v22;
  }

  return v8;
}

@end