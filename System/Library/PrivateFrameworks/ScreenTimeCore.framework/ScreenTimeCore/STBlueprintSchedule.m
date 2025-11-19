@interface STBlueprintSchedule
+ (id)_boundaryForState:(int64_t)a3 fromStartBoundaries:(id)a4 fromEndBoundaries:(id)a5;
+ (id)_nextBoundaryAfterDate:(id)a3 matchingDate:(id)a4 onDay:(int64_t)a5 inCalendar:(id)a6;
+ (id)endDateKeyPaths;
+ (id)startDateKeyPaths;
- (BOOL)_computeNextStartDate:(id *)a3 nextEndDate:(id *)a4 afterDate:(id)a5 forDay:(int64_t)a6 usingCalendar:(id)a7;
- (BOOL)_computeStartBoundaries:(id *)a3 endBoundaries:(id *)a4 forCreationDate:(id)a5 calendar:(id)a6;
- (BOOL)_validateBlueprint:(id)a3;
- (BOOL)isActiveAtDate:(id)a3 inCalendar:(id)a4;
- (BOOL)updateWithDictionaryRepresentation:(id)a3;
- (BOOL)validateForDelete:(id *)a3;
- (BOOL)validateForInsert:(id *)a3;
- (BOOL)validateForUpdate:(id *)a3;
- (STBlueprintScheduleRepresentation)scheduleRepresentation;
- (id)computeNextOverrideEndDateForState:(int64_t)a3 creationDate:(id)a4 inCalendar:(id)a5;
- (id)computeNextScheduleBoundaryAfterDate:(id)a3 inCalendar:(id)a4 isStartDate:(BOOL *)a5;
- (id)dictionaryRepresentation;
- (void)_datePairForDay:(int64_t)a3 startDate:(id *)a4 endDate:(id *)a5;
- (void)setScheduleRepresentation:(id)a3;
- (void)setStartTime:(id)a3 endTime:(id)a4;
- (void)setStartTime:(id)a3 endTime:(id)a4 forDay:(unint64_t)a5;
@end

@implementation STBlueprintSchedule

+ (id)startDateKeyPaths
{
  v5[7] = *MEMORY[0x1E69E9840];
  v5[0] = @"day0Start";
  v5[1] = @"day1Start";
  v5[2] = @"day2Start";
  v5[3] = @"day3Start";
  v5[4] = @"day4Start";
  v5[5] = @"day5Start";
  v5[6] = @"day6Start";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:7];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (id)endDateKeyPaths
{
  v5[7] = *MEMORY[0x1E69E9840];
  v5[0] = @"day0End";
  v5[1] = @"day1End";
  v5[2] = @"day2End";
  v5[3] = @"day3End";
  v5[4] = @"day4End";
  v5[5] = @"day5End";
  v5[6] = @"day6End";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:7];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (STBlueprintScheduleRepresentation)scheduleRepresentation
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
  v5 = [MEMORY[0x1E695DFE8] timeZoneWithAbbreviation:@"UTC"];
  v35 = v4;
  [v4 setTimeZone:v5];

  v6 = +[STBlueprintSchedule startDateKeyPaths];
  v7 = +[STBlueprintSchedule endDateKeyPaths];
  v8 = objc_opt_new();
  v33 = v7;
  if (![v6 count])
  {
    [(STBlueprintScheduleRepresentation *)v3 setCustomScheduleItems:v8];
    v9 = 0;
    v34 = 0;
LABEL_16:
    v24 = [v8 firstObject];
    v25 = objc_opt_new();
    v26 = [v24 startTime];
    [v25 setStartTime:v26];

    v27 = [v24 endTime];
    [v25 setEndTime:v27];

    v7 = v33;
    [(STBlueprintScheduleRepresentation *)v3 setSimpleSchedule:v25];

    goto LABEL_17;
  }

  v31 = self;
  v32 = v8;
  v30 = v3;
  v9 = 0;
  v34 = 0;
  v10 = 0;
  v11 = 1;
  v36 = 1;
  do
  {
    v12 = [v6 objectAtIndexedSubscript:v10];
    v13 = [(STBlueprintSchedule *)self valueForKey:v12];

    v14 = [v7 objectAtIndexedSubscript:v10];
    v15 = [(STBlueprintSchedule *)self valueForKey:v14];

    if (v13 && v15)
    {
      v16 = v6;
      v17 = objc_opt_new();
      [v17 setDay:v10];
      v18 = [v35 components:96 fromDate:v13];
      if (v9)
      {
        v19 = v9;
        v20 = [v9 isEqual:v18] & v11;
      }

      else
      {
        v19 = 0;
        v20 = v11;
      }

      [v17 setStartTime:v18];
      v21 = [v35 components:96 fromDate:v15];
      if (v34)
      {
        v36 &= [v34 isEqual:v21];
      }

      [v17 setEndTime:v21];
      v22 = v18;

      [v32 addObject:v17];
      v34 = v21;
      v9 = v22;
      v7 = v33;
      v11 = v20;
      v6 = v16;
      self = v31;
    }

    else
    {
      v36 = 0;
      v11 = 0;
    }

    ++v10;
  }

  while (v10 < [v6 count]);
  v23 = v11 & v36;
  v3 = v30;
  v8 = v32;
  [(STBlueprintScheduleRepresentation *)v30 setCustomScheduleItems:v32];
  if (v23)
  {
    goto LABEL_16;
  }

LABEL_17:
  v28 = v3;

  return v3;
}

- (void)setScheduleRepresentation:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 simpleSchedule];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 startTime];
    v8 = [v6 endTime];
    [(STBlueprintSchedule *)self setStartTime:v7 endTime:v8];
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [v4 customScheduleItems];
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        v15 = [v14 startTime];
        v16 = [v14 endTime];
        -[STBlueprintSchedule setStartTime:endTime:forDay:](self, "setStartTime:endTime:forDay:", v15, v16, [v14 day]);
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)setStartTime:(id)a3 endTime:(id)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
  v9 = [MEMORY[0x1E695DFE8] timeZoneWithAbbreviation:@"UTC"];
  [v8 setTimeZone:v9];

  v34 = v6;
  v10 = [v8 dateFromComponents:v6];
  v32 = v8;
  v33 = v7;
  v11 = [v8 dateFromComponents:v7];
  v12 = +[STBlueprintSchedule startDateKeyPaths];
  v30 = +[STBlueprintSchedule endDateKeyPaths];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v40;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v40 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v39 + 1) + 8 * i);
        v19 = [(STBlueprintSchedule *)self valueForKey:v18];
        v20 = [v19 isEqualToDate:v10];

        if ((v20 & 1) == 0)
        {
          [(STBlueprintSchedule *)self setValue:v10 forKey:v18];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v15);
  }

  v31 = v13;

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v21 = v30;
  v22 = [v21 countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v36;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v36 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v35 + 1) + 8 * j);
        v27 = [(STBlueprintSchedule *)self valueForKey:v26];
        v28 = [v27 isEqualToDate:v11];

        if ((v28 & 1) == 0)
        {
          [(STBlueprintSchedule *)self setValue:v11 forKey:v26];
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v23);
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (void)setStartTime:(id)a3 endTime:(id)a4 forDay:(unint64_t)a5
{
  v14 = a3;
  v9 = a4;
  if (a5 >= 7)
  {
    [STBlueprintSchedule setStartTime:a2 endTime:self forDay:?];
  }

  v10 = 0;
  if (v14)
  {
    v11 = 0;
    if (v9)
    {
      v12 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
      v13 = [MEMORY[0x1E695DFE8] timeZoneWithAbbreviation:@"UTC"];
      [v12 setTimeZone:v13];

      v11 = [v12 dateFromComponents:v14];
      v10 = [v12 dateFromComponents:v9];
    }
  }

  else
  {
    v11 = 0;
  }

  if (a5 <= 2)
  {
    if (a5)
    {
      if (a5 == 1)
      {
        [(STBlueprintSchedule *)self setDay1Start:v11];
        [(STBlueprintSchedule *)self setDay1End:v10];
      }

      else if (a5 == 2)
      {
        [(STBlueprintSchedule *)self setDay2Start:v11];
        [(STBlueprintSchedule *)self setDay2End:v10];
      }
    }

    else
    {
      [(STBlueprintSchedule *)self setDay0Start:v11];
      [(STBlueprintSchedule *)self setDay0End:v10];
    }
  }

  else if (a5 > 4)
  {
    if (a5 == 5)
    {
      [(STBlueprintSchedule *)self setDay5Start:v11];
      [(STBlueprintSchedule *)self setDay5End:v10];
    }

    else if (a5 == 6)
    {
      [(STBlueprintSchedule *)self setDay6Start:v11];
      [(STBlueprintSchedule *)self setDay6End:v10];
    }
  }

  else if (a5 == 3)
  {
    [(STBlueprintSchedule *)self setDay3Start:v11];
    [(STBlueprintSchedule *)self setDay3End:v10];
  }

  else
  {
    [(STBlueprintSchedule *)self setDay4Start:v11];
    [(STBlueprintSchedule *)self setDay4End:v10];
  }
}

- (void)_datePairForDay:(int64_t)a3 startDate:(id *)a4 endDate:(id *)a5
{
  v8 = 0;
  if (a3 <= 3)
  {
    if (a3 == 1)
    {
      v11 = [(STBlueprintSchedule *)self day0Start];
      v9 = [(STBlueprintSchedule *)self day0End];
    }

    else if (a3 == 2)
    {
      v11 = [(STBlueprintSchedule *)self day1Start];
      v9 = [(STBlueprintSchedule *)self day1End];
    }

    else
    {
      v11 = 0;
      if (a3 != 3)
      {
        goto LABEL_18;
      }

      v11 = [(STBlueprintSchedule *)self day2Start];
      v9 = [(STBlueprintSchedule *)self day2End];
    }
  }

  else if (a3 > 5)
  {
    if (a3 == 6)
    {
      v11 = [(STBlueprintSchedule *)self day5Start];
      v9 = [(STBlueprintSchedule *)self day5End];
    }

    else
    {
      v11 = 0;
      if (a3 != 7)
      {
        goto LABEL_18;
      }

      v11 = [(STBlueprintSchedule *)self day6Start];
      v9 = [(STBlueprintSchedule *)self day6End];
    }
  }

  else
  {
    if (a3 == 4)
    {
      v11 = [(STBlueprintSchedule *)self day3Start];
      [(STBlueprintSchedule *)self day3End];
    }

    else
    {
      v11 = [(STBlueprintSchedule *)self day4Start];
      [(STBlueprintSchedule *)self day4End];
    }
    v9 = ;
  }

  v8 = v9;
LABEL_18:
  if (a4)
  {
    *a4 = v11;
  }

  if (a5)
  {
    v10 = v8;
    *a5 = v8;
  }
}

- (BOOL)isActiveAtDate:(id)a3 inCalendar:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(STBlueprintSchedule *)self enabled])
  {
    v11 = 0;
    v8 = [(STBlueprintSchedule *)self computeNextScheduleBoundaryAfterDate:v6 inCalendar:v7 isStartDate:&v11];
    v9 = (v8 != 0) & (v11 ^ 1);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)computeNextScheduleBoundaryAfterDate:(id)a3 inCalendar:(id)a4 isStartDate:(BOOL *)a5
{
  v8 = a4;
  v9 = STUTCErasedDateFromDate(a3, v8);
  v10 = [v8 copy];

  v11 = STUTCTimeZone();
  [v10 setTimeZone:v11];

  v24 = 0;
  v25 = 0;
  v12 = [(STBlueprintSchedule *)self _computeStartBoundaries:&v25 endBoundaries:&v24 forCreationDate:v9 calendar:v10];
  v13 = v25;
  v14 = v24;
  v15 = 0;
  if (v12)
  {
    v16 = [v13 mutableCopy];
    v17 = [v14 mutableCopy];
    [v16 sortUsingComparator:&__block_literal_global_2];
    [v17 sortUsingComparator:&__block_literal_global_2];
    v18 = [v16 firstObject];
    v19 = [v17 firstObject];
    v20 = v19;
    v15 = 0;
    if (v18 && v19)
    {
      v21 = [v18 compare:v19];
      if (v21 == -1)
      {
        v22 = v18;
      }

      else
      {
        v22 = v20;
      }

      if (a5)
      {
        *a5 = v21 == -1;
      }

      v15 = v22;
    }
  }

  return v15;
}

- (id)computeNextOverrideEndDateForState:(int64_t)a3 creationDate:(id)a4 inCalendar:(id)a5
{
  v8 = a5;
  v9 = STUTCErasedDateFromDate(a4, v8);
  v10 = [v8 copy];

  v11 = STUTCTimeZone();
  [v10 setTimeZone:v11];

  v17 = 0;
  v18 = 0;
  v12 = [(STBlueprintSchedule *)self _computeStartBoundaries:&v18 endBoundaries:&v17 forCreationDate:v9 calendar:v10];
  v13 = v18;
  v14 = v17;
  v15 = 0;
  if (v12)
  {
    v15 = [STBlueprintSchedule _boundaryForState:a3 fromStartBoundaries:v13 fromEndBoundaries:v14];
  }

  return v15;
}

- (BOOL)_computeStartBoundaries:(id *)a3 endBoundaries:(id *)a4 forCreationDate:(id)a5 calendar:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = v11;
  if (a3)
  {
    v13 = a4 == 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = !v13;
  if (!v13)
  {
    v26 = a3;
    v27 = a4;
    v28 = v14;
    v15 = [v11 component:512 fromDate:v10];
    v16 = [MEMORY[0x1E695DEE8] currentCalendar];
    [v16 maximumRangeOfUnit:512];
    v18 = v17;

    v19 = objc_opt_new();
    v29 = objc_opt_new();
    if (v18 >= 1)
    {
      v20 = (v15 - 1) % v18;
      v21 = v18;
      do
      {
        v30 = 0;
        v31 = 0;
        v22 = [(STBlueprintSchedule *)self _computeNextStartDate:&v31 nextEndDate:&v30 afterDate:v10 forDay:v20 % v18 + 1 usingCalendar:v12];
        v23 = v31;
        v24 = v30;
        if (v22)
        {
          [v19 addObject:v23];
          [v29 addObject:v24];
        }

        ++v20;
        --v21;
      }

      while (v21);
    }

    *v26 = [v19 copy];
    *v27 = [v29 copy];

    v14 = v28;
  }

  return v14;
}

- (BOOL)_computeNextStartDate:(id *)a3 nextEndDate:(id *)a4 afterDate:(id)a5 forDay:(int64_t)a6 usingCalendar:(id)a7
{
  v12 = a5;
  v13 = a7;
  v14 = [MEMORY[0x1E695DFE8] timeZoneWithAbbreviation:@"UTC"];
  [v13 setTimeZone:v14];

  v31 = 0;
  v32 = 0;
  [(STBlueprintSchedule *)self _datePairForDay:a6 startDate:&v32 endDate:&v31];
  v15 = v32;
  v16 = v31;
  v17 = v16;
  v18 = 0;
  if (v15 && v16)
  {
    v19 = [STBlueprintSchedule _nextBoundaryAfterDate:v12 matchingDate:v15 onDay:a6 inCalendar:v13];
    if ([v15 compare:v17] == 1)
    {
      v20 = [MEMORY[0x1E695DEE8] currentCalendar];
      [v20 maximumRangeOfUnit:512];
      v21 = a3;
      v22 = a4;
      v24 = v23;

      v25 = a6 % v24;
      a4 = v22;
      a3 = v21;
      a6 = v25 + 1;
    }

    v26 = [STBlueprintSchedule _nextBoundaryAfterDate:v12 matchingDate:v17 onDay:a6 inCalendar:v13];
    v27 = v26;
    v18 = 0;
    if (v19 && v26)
    {
      if (a3)
      {
        v28 = v19;
        *a3 = v19;
      }

      if (a4)
      {
        v29 = v27;
        *a4 = v27;
      }

      v18 = 1;
    }
  }

  return v18;
}

+ (id)_boundaryForState:(int64_t)a3 fromStartBoundaries:(id)a4 fromEndBoundaries:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = v8;
  if (a3 == 1)
  {
    goto LABEL_4;
  }

  if (!a3)
  {
    v8 = v7;
LABEL_4:
    v10 = [v8 mutableCopy];
    goto LABEL_6;
  }

  v10 = 0;
LABEL_6:
  [v10 sortUsingComparator:&__block_literal_global_110];
  v11 = [v10 firstObject];
  v12 = [v11 copy];

  return v12;
}

+ (id)_nextBoundaryAfterDate:(id)a3 matchingDate:(id)a4 onDay:(int64_t)a5 inCalendar:(id)a6
{
  v9 = a6;
  v10 = a3;
  v11 = [v9 components:96 fromDate:a4];
  [v11 setWeekday:a5];
  v12 = [v9 nextDateAfterDate:v10 matchingComponents:v11 options:1024];

  return v12;
}

- (BOOL)updateWithDictionaryRepresentation:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"calendarIdentifier"];
  [(STBlueprintSchedule *)self setCalendarIdentifier:v5];

  v6 = [v4 objectForKeyedSubscript:@"notificationTimeInterval"];
  [(STBlueprintSchedule *)self setNotificationTimeInterval:v6];

  v7 = [v4 objectForKeyedSubscript:@"enabled"];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 BOOLValue];
  }

  else
  {
    v9 = 1;
  }

  [(STBlueprintSchedule *)self setEnabled:v9];
  v10 = +[STBlueprintSchedule startDateKeyPaths];
  v11 = +[STBlueprintSchedule endDateKeyPaths];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v33;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v33 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v32 + 1) + 8 * i);
        v18 = [v4 objectForKeyedSubscript:v17];
        [(STBlueprintSchedule *)self setValue:v18 forKeyPath:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v14);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v19 = v11;
  v20 = [v19 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v29;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v29 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v28 + 1) + 8 * j);
        v25 = [v4 objectForKeyedSubscript:{v24, v28}];
        [(STBlueprintSchedule *)self setValue:v25 forKeyPath:v24];
      }

      v21 = [v19 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v21);
  }

  v26 = *MEMORY[0x1E69E9840];
  return 1;
}

- (id)dictionaryRepresentation
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = [(STBlueprintSchedule *)self calendarIdentifier];
  [v3 setObject:v4 forKeyedSubscript:@"calendarIdentifier"];

  v5 = [(STBlueprintSchedule *)self notificationTimeInterval];
  [v3 setObject:v5 forKeyedSubscript:@"notificationTimeInterval"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[STBlueprintSchedule enabled](self, "enabled")}];
  [v3 setObject:v6 forKeyedSubscript:@"enabled"];

  v7 = +[STBlueprintSchedule startDateKeyPaths];
  v8 = +[STBlueprintSchedule endDateKeyPaths];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v31;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v30 + 1) + 8 * i);
        v15 = [(STBlueprintSchedule *)self valueForKeyPath:v14];
        [v3 setObject:v15 forKeyedSubscript:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v11);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v16 = v8;
  v17 = [v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v27;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v26 + 1) + 8 * j);
        v22 = [(STBlueprintSchedule *)self valueForKeyPath:v21, v26];
        [v3 setObject:v22 forKeyedSubscript:v21];
      }

      v18 = [v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v18);
  }

  v23 = [v3 copy];
  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

- (BOOL)validateForUpdate:(id *)a3
{
  v10.receiver = self;
  v10.super_class = STBlueprintSchedule;
  if ([(STBlueprintSchedule *)&v10 validateForUpdate:?])
  {
    if (!_os_feature_enabled_impl())
    {
      return 1;
    }

    v5 = objc_opt_new();
    [(STBlueprintSchedule *)self _validateBlueprint:v5];
    if ([v5 count])
    {
      v6 = +[STLog coreDataValidation];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        [STBlueprintSchedule validateForUpdate:a3];
      }
    }

    v9.receiver = self;
    v9.super_class = STBlueprintSchedule;
    v7 = [(NSManagedObject *)&v9 parseValidationErrors:a3 otherErrors:v5];
  }

  else
  {
    v5 = +[STLog coreDataValidation];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [STBlueprintSchedule validateForUpdate:a3];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)validateForInsert:(id *)a3
{
  v10.receiver = self;
  v10.super_class = STBlueprintSchedule;
  if ([(STBlueprintSchedule *)&v10 validateForInsert:?])
  {
    if (!_os_feature_enabled_impl())
    {
      return 1;
    }

    v5 = objc_opt_new();
    [(STBlueprintSchedule *)self _validateBlueprint:v5];
    if ([v5 count])
    {
      v6 = +[STLog coreDataValidation];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        [STBlueprintSchedule validateForInsert:a3];
      }
    }

    v9.receiver = self;
    v9.super_class = STBlueprintSchedule;
    v7 = [(NSManagedObject *)&v9 parseValidationErrors:a3 otherErrors:v5];
  }

  else
  {
    v5 = +[STLog coreDataValidation];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [STBlueprintSchedule validateForInsert:a3];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)validateForDelete:(id *)a3
{
  v10.receiver = self;
  v10.super_class = STBlueprintSchedule;
  if ([(STBlueprintSchedule *)&v10 validateForDelete:?])
  {
    if (!_os_feature_enabled_impl())
    {
      return 1;
    }

    v5 = objc_opt_new();
    if ([v5 count])
    {
      v6 = +[STLog coreDataValidation];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        [STBlueprintSchedule validateForDelete:a3];
      }
    }

    v9.receiver = self;
    v9.super_class = STBlueprintSchedule;
    v7 = [(NSManagedObject *)&v9 parseValidationErrors:a3 otherErrors:v5];
  }

  else
  {
    v5 = +[STLog coreDataValidation];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [STBlueprintSchedule validateForDelete:a3];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)_validateBlueprint:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(STBlueprintSchedule *)self blueprint];

  if (!v5)
  {
    v6 = MEMORY[0x1E696ABC0];
    v11 = *MEMORY[0x1E696A578];
    v12[0] = @"STBlueprintSchedule is missing a blueprint.";
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v8 = [v6 errorWithDomain:@"STErrorDomain" code:549 userInfo:v7];
    [v4 addObject:v8];
  }

  v9 = *MEMORY[0x1E69E9840];
  return v5 != 0;
}

- (void)setStartTime:(uint64_t)a1 endTime:(uint64_t)a2 forDay:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"STBlueprintSchedule.m" lineNumber:214 description:{@"Invalid parameter not satisfying: %@", @"day < 7"}];
}

- (void)validateForUpdate:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0(&dword_1B831F000, v1, v2, "%{public}s Built-in CoreData Validation for update on BlueprintSchedule failed with: %{public}@", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)validateForInsert:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0(&dword_1B831F000, v1, v2, "%{public}s Built-in CoreData Validation for insert on BlueprintSchedule failed with: %{public}@", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)validateForDelete:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0(&dword_1B831F000, v1, v2, "%{public}s Built-in CoreData Validation for delete on BlueprintSchedule failed with: %{public}@", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x1E69E9840];
}

@end