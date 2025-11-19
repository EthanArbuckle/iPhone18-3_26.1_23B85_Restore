@interface SCLScheduleAttributes
- (SCLScheduleAttributes)initWithSchedule:(id)a3 options:(unint64_t)a4;
- (void)_prepareWithRecurrences:(id)a3;
@end

@implementation SCLScheduleAttributes

- (SCLScheduleAttributes)initWithSchedule:(id)a3 options:(unint64_t)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = SCLScheduleAttributes;
  v7 = [(SCLScheduleAttributes *)&v12 init];
  if (v7)
  {
    v8 = [v6 copy];
    schedule = v7->_schedule;
    v7->_schedule = v8;

    v7->_validationOptions = a4;
    v10 = [v6 recurrences];
    [(SCLScheduleAttributes *)v7 _prepareWithRecurrences:v10];
  }

  return v7;
}

- (void)_prepareWithRecurrences:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = 0;
  v5 = [MEMORY[0x277CBEB58] set];
  v6 = [MEMORY[0x277CBEB58] set];
  v7 = [MEMORY[0x277CBEB38] dictionary];
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __49__SCLScheduleAttributes__prepareWithRecurrences___block_invoke;
  v34[3] = &unk_279B6CB08;
  v40 = &v42;
  v8 = v7;
  v35 = v8;
  v36 = self;
  v41 = &v46;
  v9 = v6;
  v37 = v9;
  v10 = v4;
  v38 = v10;
  v11 = v5;
  v39 = v11;
  [v10 enumerateObjectsUsingBlock:v34];
  self->_scheduledDays = v43[3];
  v12 = v47[3];
  self->_valid = v12 == 0;
  if (v12)
  {
    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v13 setObject:@"Recurrence validation failed." forKeyedSubscript:*MEMORY[0x277CCA450]];
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v47[3]];
    [v13 setObject:v14 forKeyedSubscript:@"FailedValidations"];

    if ([v11 count])
    {
      [v13 setObject:v11 forKeyedSubscript:@"OverlappingRecurrences"];
    }

    if ([v9 count])
    {
      [v13 setObject:v9 forKeyedSubscript:@"CrossDayBoundaryRecurrences"];
    }

    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.schooltime" code:3 userInfo:v13];
    validationError = self->_validationError;
    self->_validationError = v15;
  }

  else
  {
    v17 = [v8 count] != 0;
    v18 = [v8 objectEnumerator];
    v13 = [v18 nextObject];

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v19 = [v8 objectEnumerator];
    v20 = [v19 countByEnumeratingWithState:&v30 objects:v50 count:16];
    v26 = v11;
    v27 = v9;
    v28 = v8;
    v29 = v10;
    if (v20)
    {
      v21 = *v31;
      v22 = 1;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v31 != v21)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v30 + 1) + 8 * i);
          v22 &= [v24 isEqual:{v13, v26, v27, v28, v29}];
          v17 &= [v24 count] < 2;
        }

        v20 = [v19 countByEnumeratingWithState:&v30 objects:v50 count:16];
      }

      while (v20);
    }

    else
    {
      LOBYTE(v22) = 1;
    }

    v8 = v28;
    v10 = v29;
    v11 = v26;
    v9 = v27;
    self->_hasUniformIntervals = v22;
    self->_hasSingleIntervalPerDay = v17;
  }

  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v46, 8);

  v25 = *MEMORY[0x277D85DE8];
}

void __49__SCLScheduleAttributes__prepareWithRecurrences___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 72) + 8) + 24) |= SCLRepeatScheduleForDay([v3 day]);
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "day")}];
  v5 = [*(a1 + 32) objectForKeyedSubscript:v4];
  if (!v5)
  {
    v5 = [MEMORY[0x277CBEB58] set];
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v4];
  }

  v6 = [v3 timeInterval];
  [v5 addObject:v6];

  if ((*(*(a1 + 40) + 24) & 2) != 0)
  {
    v7 = [v3 timeInterval];
    v8 = [v7 crossesDayBoundary];

    if (v8)
    {
      *(*(*(a1 + 80) + 8) + 24) |= 2uLL;
      [*(a1 + 48) addObject:v3];
    }
  }

  if (*(*(a1 + 40) + 24))
  {
    v9 = *(a1 + 56);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __49__SCLScheduleAttributes__prepareWithRecurrences___block_invoke_2;
    v12[3] = &unk_279B6CAE0;
    v10 = v3;
    v11 = *(a1 + 80);
    v13 = v10;
    v15 = v11;
    v14 = *(a1 + 64);
    [v9 enumerateObjectsUsingBlock:v12];
  }
}

uint64_t __49__SCLScheduleAttributes__prepareWithRecurrences___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4 != v3)
  {
    v6 = v3;
    if ([v4 intersectsRecurrence:v3])
    {
      *(*(*(a1 + 48) + 8) + 24) |= 1uLL;
      [*(a1 + 40) addObject:*(a1 + 32)];
      [*(a1 + 40) addObject:v6];
    }
  }

  return MEMORY[0x2821F96F8]();
}

@end