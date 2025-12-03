@interface SCLScheduleSettings
- (BOOL)isActiveAtDate:(id)date calendar:(id)calendar;
- (BOOL)isEqual:(id)equal;
- (SCLScheduleSettings)init;
- (SCLScheduleSettings)initWithCoder:(id)coder;
- (SCLScheduleSettings)initWithSchoolModeScheduleSettings:(id)settings;
- (id)dateIntervalForActiveScheduleOnOrAfterDate:(id)date calendar:(id)calendar;
- (id)debugDescription;
- (id)description;
- (id)endTimeForDay:(int64_t)day;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)recurrenceForActiveScheduleOnOrAfterDate:(id)date calendar:(id)calendar;
- (id)startTimeForDay:(int64_t)day;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SCLScheduleSettings

- (SCLScheduleSettings)init
{
  v6.receiver = self;
  v6.super_class = SCLScheduleSettings;
  v2 = [(SCLScheduleSettings *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(SCLSchedule);
    schedule = v2->_schedule;
    v2->_schedule = v3;
  }

  return v2;
}

- (SCLScheduleSettings)initWithSchoolModeScheduleSettings:(id)settings
{
  settingsCopy = settings;
  v9.receiver = self;
  v9.super_class = SCLScheduleSettings;
  v5 = [(SCLScheduleSettings *)&v9 init];
  if (v5)
  {
    schedule = [settingsCopy schedule];
    schedule = v5->_schedule;
    v5->_schedule = schedule;

    v5->_enabled = [settingsCopy isEnabled];
    v5->_version = [objc_opt_class() version];
  }

  return v5;
}

- (SCLScheduleSettings)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = SCLScheduleSettings;
  v5 = [(SCLScheduleSettings *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"schedule"];
    schedule = v5->_schedule;
    v5->_schedule = v6;

    if (!v5->_schedule)
    {
      v8 = objc_alloc_init(SCLSchedule);
      v9 = v5->_schedule;
      v5->_schedule = v8;
    }

    v5->_enabled = [coderCopy decodeBoolForKey:@"enabled"];
    v5->_version = [coderCopy decodeIntegerForKey:@"version"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  schedule = self->_schedule;
  coderCopy = coder;
  [coderCopy encodeObject:schedule forKey:@"schedule"];
  [coderCopy encodeBool:self->_enabled forKey:@"enabled"];
  [coderCopy encodeInteger:self->_version forKey:@"version"];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [SCLMutableScheduleSettings alloc];

  return [(SCLScheduleSettings *)v4 initWithSchoolModeScheduleSettings:self];
}

- (unint64_t)hash
{
  schedule = [(SCLScheduleSettings *)self schedule];
  v4 = [schedule hash];
  enabled = self->_enabled;

  return v4 ^ enabled;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    isEnabled = [v5 isEnabled];
    if (isEnabled == [(SCLScheduleSettings *)self isEnabled])
    {
      schedule = [v5 schedule];
      schedule2 = [(SCLScheduleSettings *)self schedule];
      v7 = [schedule isEqual:schedule2];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  isEnabled = [(SCLScheduleSettings *)self isEnabled];
  schedule = [(SCLScheduleSettings *)self schedule];
  v8 = [v3 stringWithFormat:@"<%@ %p enabled=%u; schedule=%@>", v5, self, isEnabled, schedule];;

  return v8;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  isEnabled = [(SCLScheduleSettings *)self isEnabled];
  schedule = [(SCLScheduleSettings *)self schedule];
  v8 = [schedule debugDescription];
  v9 = [v3 stringWithFormat:@"<%@ %p enabled=%u; schedule=%@>", v5, self, isEnabled, v8];;

  return v9;
}

- (id)startTimeForDay:(int64_t)day
{
  schedule = [(SCLScheduleSettings *)self schedule];
  v5 = [schedule startTimeForDay:day];

  return v5;
}

- (id)endTimeForDay:(int64_t)day
{
  schedule = [(SCLScheduleSettings *)self schedule];
  v5 = [schedule endTimeForDay:day];

  return v5;
}

- (BOOL)isActiveAtDate:(id)date calendar:(id)calendar
{
  dateCopy = date;
  v7 = [(SCLScheduleSettings *)self dateIntervalForActiveScheduleOnOrAfterDate:dateCopy calendar:calendar];
  LOBYTE(self) = [v7 containsDate:dateCopy];

  return self;
}

- (id)dateIntervalForActiveScheduleOnOrAfterDate:(id)date calendar:(id)calendar
{
  dateCopy = date;
  calendarCopy = calendar;
  v8 = calendarCopy;
  v9 = 0;
  if (dateCopy && calendarCopy)
  {
    if (!-[SCLScheduleSettings isEnabled](self, "isEnabled") || (-[SCLScheduleSettings schedule](self, "schedule"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 isEmpty], v10, (v11 & 1) != 0))
    {
      v9 = 0;
      goto LABEL_21;
    }

    schedule = [(SCLScheduleSettings *)self schedule];
    recurrences = [schedule recurrences];

    schedule2 = [(SCLScheduleSettings *)self schedule];
    scheduledDays = [schedule2 scheduledDays];

    if (scheduledDays == 127)
    {
      v70 = 0;
      v71 = &v70;
      v72 = 0x2020000000;
      firstObject = [recurrences firstObject];
      lastObject = [recurrences lastObject];
      if ([firstObject intersectsRecurrence:lastObject])
      {
        v18 = 1;
      }

      else
      {
        lastObject2 = [recurrences lastObject];
        firstObject2 = [recurrences firstObject];
        v18 = [lastObject2 isContiguousWithRecurrence:firstObject2];
      }

      LOBYTE(v73) = v18;
      if (*(v71 + 24) == 1)
      {
        v76[0] = MEMORY[0x277D85DD0];
        v76[1] = 3221225472;
        v76[2] = __85__SCLScheduleSettings_Extended__dateIntervalForActiveScheduleOnOrAfterDate_calendar___block_invoke;
        v76[3] = &unk_279B6C8C0;
        v77 = recurrences;
        v78 = &v70;
        [v77 enumerateObjectsUsingBlock:v76];

        if (v71[3])
        {
          v21 = objc_alloc(MEMORY[0x277CCA970]);
          distantPast = [MEMORY[0x277CBEAA8] distantPast];
          distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
          v9 = [v21 initWithStartDate:distantPast endDate:distantFuture];

          _Block_object_dispose(&v70, 8);
LABEL_20:

          goto LABEL_21;
        }
      }

      _Block_object_dispose(&v70, 8);
    }

    v70 = 0;
    v71 = &v70;
    v72 = 0x3032000000;
    v73 = __Block_byref_object_copy__2;
    v74 = __Block_byref_object_dispose__2;
    v75 = 0;
    v66 = 0;
    v67 = &v66;
    v68 = 0x2020000000;
    v69 = 0x7FFFFFFFFFFFFFFFLL;
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = __85__SCLScheduleSettings_Extended__dateIntervalForActiveScheduleOnOrAfterDate_calendar___block_invoke_70;
    v61[3] = &unk_279B6C8E8;
    v62 = dateCopy;
    v24 = v8;
    v63 = v24;
    v64 = &v70;
    v65 = &v66;
    [recurrences enumerateObjectsUsingBlock:v61];
    if (v67[3] != 0x7FFFFFFFFFFFFFFFLL && [recurrences count] >= 2)
    {
      v25 = [recurrences objectAtIndexedSubscript:v67[3]];
      array = [MEMORY[0x277CBEB18] array];
      v27 = v67[3];
      v28 = [recurrences count];
      v29 = [recurrences subarrayWithRange:{v27, v28 - v67[3]}];
      [array addObjectsFromArray:v29];

      v30 = [recurrences subarrayWithRange:{0, v67[3]}];
      [array addObjectsFromArray:v30];

      v31 = objc_alloc_init(MEMORY[0x277CBEB18]);
      [v31 addObject:v25];
      v54 = v25;
      v32 = [array count];
      v33 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{1, v32 - 1}];
      v58[0] = MEMORY[0x277D85DD0];
      v58[1] = 3221225472;
      v58[2] = __85__SCLScheduleSettings_Extended__dateIntervalForActiveScheduleOnOrAfterDate_calendar___block_invoke_2;
      v58[3] = &unk_279B6C910;
      v34 = array;
      v59 = v34;
      v35 = v31;
      v60 = v35;
      [v34 enumerateObjectsAtIndexes:v33 options:0 usingBlock:v58];

      [v34 removeObjectAtIndex:0];
      [v34 addObject:v54];
      v36 = [v34 count];
      v37 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, v36 - 1}];
      v55[0] = MEMORY[0x277D85DD0];
      v55[1] = 3221225472;
      v55[2] = __85__SCLScheduleSettings_Extended__dateIntervalForActiveScheduleOnOrAfterDate_calendar___block_invoke_3;
      v55[3] = &unk_279B6C910;
      v38 = v34;
      v56 = v38;
      v39 = v35;
      v57 = v39;
      [v38 enumerateObjectsAtIndexes:v37 options:2 usingBlock:v55];

      if ([v39 count] >= 2)
      {
        firstObject3 = [v39 firstObject];
        timeInterval = [firstObject3 timeInterval];
        startTime = [timeInterval startTime];
        dateComponents = [startTime dateComponents];

        [dateComponents setWeekday:{objc_msgSend(firstObject3, "day")}];
        v52 = dateComponents;
        lastObject3 = [v39 lastObject];
        timeInterval2 = [lastObject3 timeInterval];
        endTime = [timeInterval2 endTime];
        dateComponents2 = [endTime dateComponents];

        [dateComponents2 setWeekday:{objc_msgSend(lastObject3, "day")}];
        v47 = MEMORY[0x277CCA970];
        startDate = [v71[5] startDate];
        v49 = [v47 SCL_dateIntervalForActiveScheduleOnOrAfterDate:startDate calendar:v24 startComponents:v52 endComponents:dateComponents2];
        v50 = v71[5];
        v71[5] = v49;
      }
    }

    v9 = v71[5];

    _Block_object_dispose(&v66, 8);
    _Block_object_dispose(&v70, 8);

    goto LABEL_20;
  }

LABEL_21:

  return v9;
}

void __85__SCLScheduleSettings_Extended__dateIntervalForActiveScheduleOnOrAfterDate_calendar___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (a3)
  {
    v10 = v7;
    v8 = [*(a1 + 32) objectAtIndexedSubscript:a3 - 1];
    if ([v10 intersectsRecurrence:v8])
    {
      v9 = 1;
    }

    else
    {
      v9 = [v8 isContiguousWithRecurrence:v10];
    }

    *(*(*(a1 + 40) + 8) + 24) &= v9;
    if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
    {
      *a4 = 1;
    }

    v7 = v10;
  }
}

void __85__SCLScheduleSettings_Extended__dateIntervalForActiveScheduleOnOrAfterDate_calendar___block_invoke_70(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  obj = [a2 dateIntervalForActiveScheduleOnOrAfterDate:a1[4] calendar:a1[5]];
  if ([obj containsDate:a1[4]])
  {
    objc_storeStrong((*(a1[6] + 8) + 40), obj);
    *(*(a1[7] + 8) + 24) = a3;
    *a4 = 1;
  }

  v7 = [obj startDate];
  v8 = [v7 earlierDate:a1[4]];
  v9 = a1[4];

  if (v8 == v9)
  {
    v10 = obj;
    v11 = *(a1[6] + 8);
    v13 = *(v11 + 40);
    v12 = (v11 + 40);
    if (v13)
    {
      v14 = [obj startDate];
      v15 = [*(*(a1[6] + 8) + 40) startDate];
      v16 = [v14 compare:v15];

      if (v16 != -1)
      {
        goto LABEL_8;
      }

      v12 = (*(a1[6] + 8) + 40);
      v10 = obj;
    }

    objc_storeStrong(v12, v10);
    *(*(a1[7] + 8) + 24) = a3;
  }

LABEL_8:
}

void __85__SCLScheduleSettings_Extended__dateIntervalForActiveScheduleOnOrAfterDate_calendar___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  v7 = [*(a1 + 32) objectAtIndexedSubscript:a3 - 1];
  if (([v7 isContiguousWithRecurrence:v8] & 1) != 0 || objc_msgSend(v7, "intersectsRecurrence:", v8))
  {
    [*(a1 + 40) addObject:v8];
  }

  else
  {
    *a4 = 1;
  }
}

void __85__SCLScheduleSettings_Extended__dateIntervalForActiveScheduleOnOrAfterDate_calendar___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  v7 = [*(a1 + 32) objectAtIndexedSubscript:a3 + 1];
  if (([v8 isContiguousWithRecurrence:v7] & 1) != 0 || objc_msgSend(v8, "intersectsRecurrence:", v7))
  {
    [*(a1 + 40) insertObject:v8 atIndex:0];
  }

  else
  {
    *a4 = 1;
  }
}

- (id)recurrenceForActiveScheduleOnOrAfterDate:(id)date calendar:(id)calendar
{
  dateCopy = date;
  calendarCopy = calendar;
  v8 = calendarCopy;
  v9 = 0;
  if (dateCopy && calendarCopy)
  {
    if (-[SCLScheduleSettings isEnabled](self, "isEnabled") && (-[SCLScheduleSettings schedule](self, "schedule"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 isEmpty], v10, (v11 & 1) == 0))
    {
      schedule = [(SCLScheduleSettings *)self schedule];
      recurrences = [schedule recurrences];

      v27[0] = 0;
      v27[1] = v27;
      v27[2] = 0x3032000000;
      v27[3] = __Block_byref_object_copy__2;
      v27[4] = __Block_byref_object_dispose__2;
      v28 = 0;
      v23 = 0;
      v24 = &v23;
      v25 = 0x2020000000;
      v26 = 0x7FFFFFFFFFFFFFFFLL;
      v15 = MEMORY[0x277D85DD0];
      v16 = 3221225472;
      v17 = __83__SCLScheduleSettings_Extended__recurrenceForActiveScheduleOnOrAfterDate_calendar___block_invoke;
      v18 = &unk_279B6C8E8;
      v19 = dateCopy;
      v20 = v8;
      v21 = v27;
      v22 = &v23;
      [recurrences enumerateObjectsUsingBlock:&v15];
      if (v24[3] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v9 = 0;
      }

      else
      {
        v9 = [recurrences objectAtIndexedSubscript:{v15, v16, v17, v18, v19}];
      }

      _Block_object_dispose(&v23, 8);
      _Block_object_dispose(v27, 8);
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

void __83__SCLScheduleSettings_Extended__recurrenceForActiveScheduleOnOrAfterDate_calendar___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  obj = [a2 dateIntervalForActiveScheduleOnOrAfterDate:a1[4] calendar:a1[5]];
  if ([obj containsDate:a1[4]])
  {
    objc_storeStrong((*(a1[6] + 8) + 40), obj);
    *(*(a1[7] + 8) + 24) = a3;
    *a4 = 1;
  }

  v7 = [obj startDate];
  v8 = [v7 earlierDate:a1[4]];
  v9 = a1[4];

  if (v8 == v9)
  {
    v10 = obj;
    v11 = *(a1[6] + 8);
    v13 = *(v11 + 40);
    v12 = (v11 + 40);
    if (v13)
    {
      v14 = [obj startDate];
      v15 = [*(*(a1[6] + 8) + 40) startDate];
      v16 = [v14 compare:v15];

      if (v16 != -1)
      {
        goto LABEL_8;
      }

      v12 = (*(a1[6] + 8) + 40);
      v10 = obj;
    }

    objc_storeStrong(v12, v10);
    *(*(a1[7] + 8) + 24) = a3;
  }

LABEL_8:
}

@end