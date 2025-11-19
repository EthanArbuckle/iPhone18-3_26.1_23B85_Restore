@interface _UICalendarViewDataSourceController
- (_UICalendarViewDataSourceController)initWithCalendar:(id)a3 dataSource:(id)a4;
- (int64_t)cleanupDataSourceWithScrollPositionIfNecessary:(id)a3;
- (int64_t)prepareDataSourceWithScrollPositionIfNecessary:(id)a3;
- (void)_reloadDataSourceWithScrollPosition:(id)a3;
@end

@implementation _UICalendarViewDataSourceController

- (_UICalendarViewDataSourceController)initWithCalendar:(id)a3 dataSource:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = _UICalendarViewDataSourceController;
  v9 = [(_UICalendarViewDataSourceController *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_calendar, a3);
    objc_storeStrong(&v10->_dataSource, a4);
    v11 = [[_UIDatePickerCalendarMonthSet alloc] initWithCalendar:v7 rangeLength:7];
    loadedMonthSet = v10->_loadedMonthSet;
    v10->_loadedMonthSet = v11;

    v13 = [[_UIDatePickerCalendarDaySet alloc] initWithCalendar:v7];
    loadedDaySet = v10->_loadedDaySet;
    v10->_loadedDaySet = v13;
  }

  return v10;
}

- (void)_reloadDataSourceWithScrollPosition:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  [(_UIDatePickerCalendarMonthSet *)self->_loadedMonthSet reloadWithMonthsAroundMonth:a3];
  loadedDaySet = self->_loadedDaySet;
  v5 = [(_UIDatePickerCalendarMonthSet *)self->_loadedMonthSet loadedMonths];
  [(_UIDatePickerCalendarDaySet *)loadedDaySet cleanupDaysKeepingDaysForMonths:v5];

  v6 = objc_opt_new();
  v7 = [(_UIDatePickerCalendarMonthSet *)self->_loadedMonthSet loadedMonths];
  [v6 appendSectionsWithIdentifiers:v7];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [(_UIDatePickerCalendarMonthSet *)self->_loadedMonthSet loadedMonths];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        v14 = [(_UIDatePickerCalendarDaySet *)self->_loadedDaySet daysForMonth:v13 includingOverlapDays:1];
        [v6 appendItemsWithIdentifiers:v14 intoSectionWithIdentifier:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  [(UICollectionViewDiffableDataSource *)self->_dataSource applySnapshotUsingReloadData:v6];
}

- (int64_t)cleanupDataSourceWithScrollPositionIfNecessary:(id)a3
{
  loadedMonthSet = self->_loadedMonthSet;
  v6 = a3;
  v7 = [(_UIDatePickerCalendarMonthSet *)loadedMonthSet indexOfMonth:v6];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"_UICalendarViewDataSourceController.m" lineNumber:69 description:@"Cleaning up the data source around a month that is not loaded."];
  }

  [(_UICalendarViewDataSourceController *)self _reloadDataSourceWithScrollPosition:v6];
  v8 = [(_UIDatePickerCalendarMonthSet *)self->_loadedMonthSet indexOfMonth:v6];

  return v8 - v7;
}

- (int64_t)prepareDataSourceWithScrollPositionIfNecessary:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v22 = 0;
  [(_UIDatePickerCalendarMonthSet *)self->_loadedMonthSet insertMonthsAroundMonth:a3 loadedIndexRange:&v21];
  if (!v22)
  {
    return 0;
  }

  v4 = [(UICollectionViewDiffableDataSource *)self->_dataSource snapshot];
  v5 = [(_UIDatePickerCalendarMonthSet *)self->_loadedMonthSet loadedMonths];
  v6 = [v5 subarrayWithRange:{v21, v22}];
  if (v21)
  {
    v7 = [v5 objectAtIndexedSubscript:v21 - 1];
    [v4 insertSectionsWithIdentifiers:v6 afterSectionWithIdentifier:v7];
  }

  else
  {
    v7 = [v5 objectAtIndexedSubscript:v22];
    [v4 insertSectionsWithIdentifiers:v6 beforeSectionWithIdentifier:v7];
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
        [v4 appendItemsWithIdentifiers:v15 intoSectionWithIdentifier:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v11);
  }

  [(UICollectionViewDiffableDataSource *)self->_dataSource applySnapshotUsingReloadData:v4];
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