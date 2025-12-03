@interface STBlueprintSchedule
+ (id)_boundaryForState:(int64_t)state fromStartBoundaries:(id)boundaries fromEndBoundaries:(id)endBoundaries;
+ (id)_nextBoundaryAfterDate:(id)date matchingDate:(id)matchingDate onDay:(int64_t)day inCalendar:(id)calendar;
+ (id)endDateKeyPaths;
+ (id)startDateKeyPaths;
- (BOOL)_computeNextStartDate:(id *)date nextEndDate:(id *)endDate afterDate:(id)afterDate forDay:(int64_t)day usingCalendar:(id)calendar;
- (BOOL)_computeStartBoundaries:(id *)boundaries endBoundaries:(id *)endBoundaries forCreationDate:(id)date calendar:(id)calendar;
- (BOOL)_validateBlueprint:(id)blueprint;
- (BOOL)isActiveAtDate:(id)date inCalendar:(id)calendar;
- (BOOL)updateWithDictionaryRepresentation:(id)representation;
- (BOOL)validateForDelete:(id *)delete;
- (BOOL)validateForInsert:(id *)insert;
- (BOOL)validateForUpdate:(id *)update;
- (STBlueprintScheduleRepresentation)scheduleRepresentation;
- (id)computeNextOverrideEndDateForState:(int64_t)state creationDate:(id)date inCalendar:(id)calendar;
- (id)computeNextScheduleBoundaryAfterDate:(id)date inCalendar:(id)calendar isStartDate:(BOOL *)startDate;
- (id)dictionaryRepresentation;
- (void)_datePairForDay:(int64_t)day startDate:(id *)date endDate:(id *)endDate;
- (void)setScheduleRepresentation:(id)representation;
- (void)setStartTime:(id)time endTime:(id)endTime;
- (void)setStartTime:(id)time endTime:(id)endTime forDay:(unint64_t)day;
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
    firstObject = [v8 firstObject];
    v25 = objc_opt_new();
    startTime = [firstObject startTime];
    [v25 setStartTime:startTime];

    endTime = [firstObject endTime];
    [v25 setEndTime:endTime];

    v7 = v33;
    [(STBlueprintScheduleRepresentation *)v3 setSimpleSchedule:v25];

    goto LABEL_17;
  }

  selfCopy = self;
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
      self = selfCopy;
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

- (void)setScheduleRepresentation:(id)representation
{
  v23 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  simpleSchedule = [representationCopy simpleSchedule];
  v6 = simpleSchedule;
  if (simpleSchedule)
  {
    startTime = [simpleSchedule startTime];
    endTime = [v6 endTime];
    [(STBlueprintSchedule *)self setStartTime:startTime endTime:endTime];
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  customScheduleItems = [representationCopy customScheduleItems];
  v10 = [customScheduleItems countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(customScheduleItems);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        startTime2 = [v14 startTime];
        endTime2 = [v14 endTime];
        -[STBlueprintSchedule setStartTime:endTime:forDay:](self, "setStartTime:endTime:forDay:", startTime2, endTime2, [v14 day]);
      }

      v11 = [customScheduleItems countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)setStartTime:(id)time endTime:(id)endTime
{
  v45 = *MEMORY[0x1E69E9840];
  timeCopy = time;
  endTimeCopy = endTime;
  v8 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
  v9 = [MEMORY[0x1E695DFE8] timeZoneWithAbbreviation:@"UTC"];
  [v8 setTimeZone:v9];

  v34 = timeCopy;
  v10 = [v8 dateFromComponents:timeCopy];
  v32 = v8;
  v33 = endTimeCopy;
  v11 = [v8 dateFromComponents:endTimeCopy];
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

- (void)setStartTime:(id)time endTime:(id)endTime forDay:(unint64_t)day
{
  timeCopy = time;
  endTimeCopy = endTime;
  if (day >= 7)
  {
    [STBlueprintSchedule setStartTime:a2 endTime:self forDay:?];
  }

  v10 = 0;
  if (timeCopy)
  {
    v11 = 0;
    if (endTimeCopy)
    {
      v12 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
      v13 = [MEMORY[0x1E695DFE8] timeZoneWithAbbreviation:@"UTC"];
      [v12 setTimeZone:v13];

      v11 = [v12 dateFromComponents:timeCopy];
      v10 = [v12 dateFromComponents:endTimeCopy];
    }
  }

  else
  {
    v11 = 0;
  }

  if (day <= 2)
  {
    if (day)
    {
      if (day == 1)
      {
        [(STBlueprintSchedule *)self setDay1Start:v11];
        [(STBlueprintSchedule *)self setDay1End:v10];
      }

      else if (day == 2)
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

  else if (day > 4)
  {
    if (day == 5)
    {
      [(STBlueprintSchedule *)self setDay5Start:v11];
      [(STBlueprintSchedule *)self setDay5End:v10];
    }

    else if (day == 6)
    {
      [(STBlueprintSchedule *)self setDay6Start:v11];
      [(STBlueprintSchedule *)self setDay6End:v10];
    }
  }

  else if (day == 3)
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

- (void)_datePairForDay:(int64_t)day startDate:(id *)date endDate:(id *)endDate
{
  v8 = 0;
  if (day <= 3)
  {
    if (day == 1)
    {
      day0Start = [(STBlueprintSchedule *)self day0Start];
      day0End = [(STBlueprintSchedule *)self day0End];
    }

    else if (day == 2)
    {
      day0Start = [(STBlueprintSchedule *)self day1Start];
      day0End = [(STBlueprintSchedule *)self day1End];
    }

    else
    {
      day0Start = 0;
      if (day != 3)
      {
        goto LABEL_18;
      }

      day0Start = [(STBlueprintSchedule *)self day2Start];
      day0End = [(STBlueprintSchedule *)self day2End];
    }
  }

  else if (day > 5)
  {
    if (day == 6)
    {
      day0Start = [(STBlueprintSchedule *)self day5Start];
      day0End = [(STBlueprintSchedule *)self day5End];
    }

    else
    {
      day0Start = 0;
      if (day != 7)
      {
        goto LABEL_18;
      }

      day0Start = [(STBlueprintSchedule *)self day6Start];
      day0End = [(STBlueprintSchedule *)self day6End];
    }
  }

  else
  {
    if (day == 4)
    {
      day0Start = [(STBlueprintSchedule *)self day3Start];
      [(STBlueprintSchedule *)self day3End];
    }

    else
    {
      day0Start = [(STBlueprintSchedule *)self day4Start];
      [(STBlueprintSchedule *)self day4End];
    }
    day0End = ;
  }

  v8 = day0End;
LABEL_18:
  if (date)
  {
    *date = day0Start;
  }

  if (endDate)
  {
    v10 = v8;
    *endDate = v8;
  }
}

- (BOOL)isActiveAtDate:(id)date inCalendar:(id)calendar
{
  dateCopy = date;
  calendarCopy = calendar;
  if ([(STBlueprintSchedule *)self enabled])
  {
    v11 = 0;
    v8 = [(STBlueprintSchedule *)self computeNextScheduleBoundaryAfterDate:dateCopy inCalendar:calendarCopy isStartDate:&v11];
    v9 = (v8 != 0) & (v11 ^ 1);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)computeNextScheduleBoundaryAfterDate:(id)date inCalendar:(id)calendar isStartDate:(BOOL *)startDate
{
  calendarCopy = calendar;
  v9 = STUTCErasedDateFromDate(date, calendarCopy);
  v10 = [calendarCopy copy];

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
    firstObject = [v16 firstObject];
    firstObject2 = [v17 firstObject];
    v20 = firstObject2;
    v15 = 0;
    if (firstObject && firstObject2)
    {
      v21 = [firstObject compare:firstObject2];
      if (v21 == -1)
      {
        v22 = firstObject;
      }

      else
      {
        v22 = v20;
      }

      if (startDate)
      {
        *startDate = v21 == -1;
      }

      v15 = v22;
    }
  }

  return v15;
}

- (id)computeNextOverrideEndDateForState:(int64_t)state creationDate:(id)date inCalendar:(id)calendar
{
  calendarCopy = calendar;
  v9 = STUTCErasedDateFromDate(date, calendarCopy);
  v10 = [calendarCopy copy];

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
    v15 = [STBlueprintSchedule _boundaryForState:state fromStartBoundaries:v13 fromEndBoundaries:v14];
  }

  return v15;
}

- (BOOL)_computeStartBoundaries:(id *)boundaries endBoundaries:(id *)endBoundaries forCreationDate:(id)date calendar:(id)calendar
{
  dateCopy = date;
  calendarCopy = calendar;
  v12 = calendarCopy;
  if (boundaries)
  {
    v13 = endBoundaries == 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = !v13;
  if (!v13)
  {
    boundariesCopy = boundaries;
    endBoundariesCopy = endBoundaries;
    v28 = v14;
    v15 = [calendarCopy component:512 fromDate:dateCopy];
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    [currentCalendar maximumRangeOfUnit:512];
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
        v22 = [(STBlueprintSchedule *)self _computeNextStartDate:&v31 nextEndDate:&v30 afterDate:dateCopy forDay:v20 % v18 + 1 usingCalendar:v12];
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

    *boundariesCopy = [v19 copy];
    *endBoundariesCopy = [v29 copy];

    v14 = v28;
  }

  return v14;
}

- (BOOL)_computeNextStartDate:(id *)date nextEndDate:(id *)endDate afterDate:(id)afterDate forDay:(int64_t)day usingCalendar:(id)calendar
{
  afterDateCopy = afterDate;
  calendarCopy = calendar;
  v14 = [MEMORY[0x1E695DFE8] timeZoneWithAbbreviation:@"UTC"];
  [calendarCopy setTimeZone:v14];

  v31 = 0;
  v32 = 0;
  [(STBlueprintSchedule *)self _datePairForDay:day startDate:&v32 endDate:&v31];
  v15 = v32;
  v16 = v31;
  v17 = v16;
  v18 = 0;
  if (v15 && v16)
  {
    v19 = [STBlueprintSchedule _nextBoundaryAfterDate:afterDateCopy matchingDate:v15 onDay:day inCalendar:calendarCopy];
    if ([v15 compare:v17] == 1)
    {
      currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
      [currentCalendar maximumRangeOfUnit:512];
      dateCopy = date;
      endDateCopy = endDate;
      v24 = v23;

      v25 = day % v24;
      endDate = endDateCopy;
      date = dateCopy;
      day = v25 + 1;
    }

    v26 = [STBlueprintSchedule _nextBoundaryAfterDate:afterDateCopy matchingDate:v17 onDay:day inCalendar:calendarCopy];
    v27 = v26;
    v18 = 0;
    if (v19 && v26)
    {
      if (date)
      {
        v28 = v19;
        *date = v19;
      }

      if (endDate)
      {
        v29 = v27;
        *endDate = v27;
      }

      v18 = 1;
    }
  }

  return v18;
}

+ (id)_boundaryForState:(int64_t)state fromStartBoundaries:(id)boundaries fromEndBoundaries:(id)endBoundaries
{
  boundariesCopy = boundaries;
  endBoundariesCopy = endBoundaries;
  v9 = endBoundariesCopy;
  if (state == 1)
  {
    goto LABEL_4;
  }

  if (!state)
  {
    endBoundariesCopy = boundariesCopy;
LABEL_4:
    v10 = [endBoundariesCopy mutableCopy];
    goto LABEL_6;
  }

  v10 = 0;
LABEL_6:
  [v10 sortUsingComparator:&__block_literal_global_110];
  firstObject = [v10 firstObject];
  v12 = [firstObject copy];

  return v12;
}

+ (id)_nextBoundaryAfterDate:(id)date matchingDate:(id)matchingDate onDay:(int64_t)day inCalendar:(id)calendar
{
  calendarCopy = calendar;
  dateCopy = date;
  v11 = [calendarCopy components:96 fromDate:matchingDate];
  [v11 setWeekday:day];
  v12 = [calendarCopy nextDateAfterDate:dateCopy matchingComponents:v11 options:1024];

  return v12;
}

- (BOOL)updateWithDictionaryRepresentation:(id)representation
{
  v38 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v5 = [representationCopy objectForKeyedSubscript:@"calendarIdentifier"];
  [(STBlueprintSchedule *)self setCalendarIdentifier:v5];

  v6 = [representationCopy objectForKeyedSubscript:@"notificationTimeInterval"];
  [(STBlueprintSchedule *)self setNotificationTimeInterval:v6];

  v7 = [representationCopy objectForKeyedSubscript:@"enabled"];
  v8 = v7;
  if (v7)
  {
    bOOLValue = [v7 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  [(STBlueprintSchedule *)self setEnabled:bOOLValue];
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
        v18 = [representationCopy objectForKeyedSubscript:v17];
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
        v25 = [representationCopy objectForKeyedSubscript:{v24, v28}];
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
  calendarIdentifier = [(STBlueprintSchedule *)self calendarIdentifier];
  [v3 setObject:calendarIdentifier forKeyedSubscript:@"calendarIdentifier"];

  notificationTimeInterval = [(STBlueprintSchedule *)self notificationTimeInterval];
  [v3 setObject:notificationTimeInterval forKeyedSubscript:@"notificationTimeInterval"];

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

- (BOOL)validateForUpdate:(id *)update
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
        [STBlueprintSchedule validateForUpdate:update];
      }
    }

    v9.receiver = self;
    v9.super_class = STBlueprintSchedule;
    v7 = [(NSManagedObject *)&v9 parseValidationErrors:update otherErrors:v5];
  }

  else
  {
    v5 = +[STLog coreDataValidation];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [STBlueprintSchedule validateForUpdate:update];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)validateForInsert:(id *)insert
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
        [STBlueprintSchedule validateForInsert:insert];
      }
    }

    v9.receiver = self;
    v9.super_class = STBlueprintSchedule;
    v7 = [(NSManagedObject *)&v9 parseValidationErrors:insert otherErrors:v5];
  }

  else
  {
    v5 = +[STLog coreDataValidation];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [STBlueprintSchedule validateForInsert:insert];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)validateForDelete:(id *)delete
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
        [STBlueprintSchedule validateForDelete:delete];
      }
    }

    v9.receiver = self;
    v9.super_class = STBlueprintSchedule;
    v7 = [(NSManagedObject *)&v9 parseValidationErrors:delete otherErrors:v5];
  }

  else
  {
    v5 = +[STLog coreDataValidation];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [STBlueprintSchedule validateForDelete:delete];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)_validateBlueprint:(id)blueprint
{
  v12[1] = *MEMORY[0x1E69E9840];
  blueprintCopy = blueprint;
  blueprint = [(STBlueprintSchedule *)self blueprint];

  if (!blueprint)
  {
    v6 = MEMORY[0x1E696ABC0];
    v11 = *MEMORY[0x1E696A578];
    v12[0] = @"STBlueprintSchedule is missing a blueprint.";
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v8 = [v6 errorWithDomain:@"STErrorDomain" code:549 userInfo:v7];
    [blueprintCopy addObject:v8];
  }

  v9 = *MEMORY[0x1E69E9840];
  return blueprint != 0;
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