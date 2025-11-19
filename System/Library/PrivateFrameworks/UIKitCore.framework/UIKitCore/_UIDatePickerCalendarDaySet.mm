@interface _UIDatePickerCalendarDaySet
- (_UIDatePickerCalendarDaySet)initWithCalendar:(id)a3;
- (id)_createDaysForMonth:(id)a3;
- (id)_partialDaysForMonth:(id)a3 atBeginningOfMonth:(BOOL)a4 count:(unint64_t)a5;
- (id)daysForMonth:(id)a3 includingOverlapDays:(BOOL)a4;
- (id)loadedDays;
- (void)cleanupDaysKeepingDaysForMonths:(id)a3;
@end

@implementation _UIDatePickerCalendarDaySet

- (_UIDatePickerCalendarDaySet)initWithCalendar:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = _UIDatePickerCalendarDaySet;
  v6 = [(_UIDatePickerCalendarDaySet *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_calendar, a3);
    v8 = objc_opt_new();
    loadedDays = v7->_loadedDays;
    v7->_loadedDays = v8;
  }

  return v7;
}

- (id)_createDaysForMonth:(id)a3
{
  v5 = a3;
  v6 = self->_calendar;
  v7 = [v5 date];
  v27 = 0;
  v28 = 0.0;
  v8 = [(NSCalendar *)v6 rangeOfUnit:8 startDate:&v27 interval:&v28 forDate:v7];
  v9 = v27;
  if (!v8)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"_UIDatePickerCalendarDaySet.m" lineNumber:54 description:{@"Unable to find calendar range for date %@", v7}];
  }

  v25 = a2;
  v26 = self;
  v10 = [v9 dateByAddingTimeInterval:v28];
  v11 = objc_opt_new();
  v12 = objc_opt_new();
  [v12 setDay:0];
  v13 = v9;
  v14 = v13;
  if (v13)
  {
    v15 = v13;
    do
    {
      if ([v15 compare:v10] != -1)
      {
        break;
      }

      v16 = [v5 dayWithDate:v15 assignedMonth:0];
      [v11 addObject:v16];
      [v12 setDay:{objc_msgSend(v12, "day") + 1}];
      v17 = [(NSCalendar *)v6 dateByAddingComponents:v12 toDate:v14 options:0];

      v15 = v17;
    }

    while (v17);
  }

  v18 = [v11 count];
  v19 = [MEMORY[0x1E695DFD8] setWithArray:v11];
  v20 = [v19 count];

  if (v18 != v20)
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:v25 object:v26 file:@"_UIDatePickerCalendarDaySet.m" lineNumber:71 description:{@"Invalid date calculation. Duplicate days found in days for month %@.", v5}];
  }

  v21 = [v11 copy];

  return v21;
}

- (id)_partialDaysForMonth:(id)a3 atBeginningOfMonth:(BOOL)a4 count:(unint64_t)a5
{
  v8 = a3;
  v9 = [(_UIDatePickerCalendarDaySet *)self daysForMonth:v8 includingOverlapDays:0];
  v10 = [v9 count];
  if (a4)
  {
    if (v10 < a5)
    {
      do
      {
        v11 = v9;
        v12 = v8;
        v8 = [v8 nextMonth];

        v13 = [(_UIDatePickerCalendarDaySet *)self daysForMonth:v8 includingOverlapDays:0];
        v9 = [v11 arrayByAddingObjectsFromArray:v13];
      }

      while ([v9 count] < a5);
    }

    v14 = 0;
  }

  else
  {
    if (v10 >= a5)
    {
      v17 = v9;
      v15 = v8;
    }

    else
    {
      do
      {
        v15 = [v8 previousMonth];

        v16 = [(_UIDatePickerCalendarDaySet *)self daysForMonth:v15 includingOverlapDays:0];
        v17 = [v16 arrayByAddingObjectsFromArray:v9];

        v8 = v15;
        v9 = v17;
      }

      while ([v17 count] < a5);
    }

    v14 = [v17 count] - a5;
    v9 = v17;
    v8 = v15;
  }

  v18 = [v9 subarrayWithRange:{v14, a5}];

  return v18;
}

- (id)daysForMonth:(id)a3 includingOverlapDays:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v8 = [(NSMutableDictionary *)self->_loadedDays objectForKeyedSubscript:v7];
  if (v8)
  {
    if (!v4)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v8 = [(_UIDatePickerCalendarDaySet *)self _createDaysForMonth:v7];
    [(NSMutableDictionary *)self->_loadedDays setObject:v8 forKeyedSubscript:v7];
    if (!v4)
    {
      goto LABEL_18;
    }
  }

  v9 = [v8 firstObject];
  v10 = [v9 date];

  calendar = self->_calendar;
  v50 = 0;
  LOBYTE(v9) = [(NSCalendar *)calendar rangeOfUnit:4096 startDate:&v50 interval:0 forDate:v10];
  v12 = v50;
  if ((v9 & 1) == 0)
  {
    v40 = [MEMORY[0x1E696AAA8] currentHandler];
    [v40 handleFailureInMethod:a2 object:self file:@"_UIDatePickerCalendarDaySet.m" lineNumber:139 description:{@"Unable to find the beginning of the week for date %@.", v10}];
  }

  v47 = v10;
  v13 = _UIDatePickerNumberOfDaysBetweenDates(self->_calendar, v12, v10);
  if (v13 < 1)
  {
    v16 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v14 = v13;
    v15 = [v7 previousMonth];
    v16 = [(_UIDatePickerCalendarDaySet *)self _partialDaysForMonth:v15 atBeginningOfMonth:0 count:v14];
  }

  v17 = [v8 lastObject];
  v18 = [v17 date];

  v48 = 0;
  v49 = 0.0;
  LOBYTE(v17) = [(NSCalendar *)self->_calendar rangeOfUnit:4096 startDate:&v48 interval:&v49 forDate:v18];
  v19 = v48;
  if ((v17 & 1) == 0)
  {
    v41 = [MEMORY[0x1E696AAA8] currentHandler];
    [v41 handleFailureInMethod:a2 object:self file:@"_UIDatePickerCalendarDaySet.m" lineNumber:147 description:{@"Unable to find the beginning of the week for date %@.", v18}];
  }

  v20 = [v19 dateByAddingTimeInterval:v49 + -1.0];
  v45 = v18;
  v21 = _UIDatePickerNumberOfDaysBetweenDates(self->_calendar, v18, v20);
  v43 = a2;
  v44 = v19;
  v46 = v12;
  if (v21 < 1)
  {
    v24 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v22 = v21;
    v23 = [v7 nextMonth];
    v24 = [(_UIDatePickerCalendarDaySet *)self _partialDaysForMonth:v23 atBeginningOfMonth:1 count:v22];
  }

  v25 = _daysAssignedToMonth(v16, v7);
  v26 = _daysAssignedToMonth(v24, v7);
  v34 = _joinedArrayFromArrays(v26, v27, v28, v29, v30, v31, v32, v33, v25);

  v35 = [v34 count];
  [(NSCalendar *)self->_calendar weekdaySymbols];
  v37 = v36 = v16;
  v38 = v35 % [v37 count];

  if (v38)
  {
    v42 = [MEMORY[0x1E696AAA8] currentHandler];
    [v42 handleFailureInMethod:v43 object:self file:@"_UIDatePickerCalendarDaySet.m" lineNumber:156 description:@"Invalid calculation: number of calculated days is not dividable by the number of days in a week."];
  }

  v8 = v34;
LABEL_18:

  return v8;
}

- (void)cleanupDaysKeepingDaysForMonths:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  loadedDays = self->_loadedDays;
  v6 = v4;
  v7 = loadedDays;
  v8 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
        v15 = [(NSMutableDictionary *)v7 objectForKey:v14, v17];
        if (v15)
        {
          [(NSMutableDictionary *)v8 setObject:v15 forKey:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v16 = self->_loadedDays;
  self->_loadedDays = v8;
}

- (id)loadedDays
{
  v2 = [(NSMutableDictionary *)self->_loadedDays copy];

  return v2;
}

@end