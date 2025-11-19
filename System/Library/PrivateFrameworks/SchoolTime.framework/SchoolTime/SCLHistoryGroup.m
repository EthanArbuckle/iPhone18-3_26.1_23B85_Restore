@interface SCLHistoryGroup
+ (id)historyGroupsByPrioritizingSchedule:(id)a3 forDate:(id)a4 inCalendar:(id)a5 items:(id)a6;
- (BOOL)canContainUnlockHistoryItem:(id)a3;
- (SCLHistoryGroup)initWithEffectiveSchedule:(id)a3 calendar:(id)a4 referenceDate:(id)a5;
@end

@implementation SCLHistoryGroup

+ (id)historyGroupsByPrioritizingSchedule:(id)a3 forDate:(id)a4 inCalendar:(id)a5 items:(id)a6
{
  v50[3] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v41 = a5;
  v11 = MEMORY[0x277CBEB18];
  v12 = a6;
  v13 = objc_alloc_init(v11);
  v14 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  v15 = [MEMORY[0x277CBEB58] set];
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __80__SCLHistoryGroup_historyGroupsByPrioritizingSchedule_forDate_inCalendar_items___block_invoke;
  v45[3] = &unk_279B6C250;
  v16 = v15;
  v46 = v16;
  v17 = v14;
  v47 = v17;
  v18 = v9;
  v48 = v18;
  v19 = v13;
  v49 = v19;
  [v12 enumerateObjectsUsingBlock:v45];

  [v19 enumerateObjectsUsingBlock:&__block_literal_global_1];
  v20 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"referenceDate" ascending:0];
  v21 = MEMORY[0x277CCAC98];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __80__SCLHistoryGroup_historyGroupsByPrioritizingSchedule_forDate_inCalendar_items___block_invoke_5;
  v43[3] = &unk_279B6C2B8;
  v22 = v16;
  v23 = v10;
  v24 = v22;
  v44 = v22;
  v25 = [v21 sortDescriptorWithKey:0 ascending:1 comparator:v43];
  v26 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:0 ascending:1 comparator:&__block_literal_global_43];
  v42 = v20;
  v50[0] = v20;
  v50[1] = v25;
  v50[2] = v26;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:3];
  [v19 sortUsingDescriptors:v27];

  v28 = v41;
  v29 = [v41 component:512 fromDate:v23];
  if ([v18 isScheduledForDay:v29])
  {
    v30 = [v19 firstObject];
    v31 = [v41 startOfDayForDate:v23];
    v40 = [v30 referenceDate];
    if (!v30 || ![v24 containsObject:v30] || (objc_msgSend(v41, "isDate:inSameDayAsDate:", v31, v40) & 1) == 0)
    {
      v39 = v23;
      v32 = [SCLRecurrenceSchedule alloc];
      v33 = [v18 recurrencesForDay:v29];
      v34 = [(SCLRecurrenceSchedule *)v32 initWithRecurrences:v33];

      v35 = [[SCLHistoryGroup alloc] initWithEffectiveSchedule:v34 calendar:v41 referenceDate:v31];
      [v19 insertObject:v35 atIndex:0];

      v23 = v39;
    }

    v28 = v41;
  }

  v36 = v19;

  v37 = *MEMORY[0x277D85DE8];
  return v19;
}

void __80__SCLHistoryGroup_historyGroupsByPrioritizingSchedule_forDate_inCalendar_items___block_invoke(id *a1, void *a2)
{
  v51[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy_;
  v49 = __Block_byref_object_dispose_;
  v50 = 0;
  v4 = a1[4];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __80__SCLHistoryGroup_historyGroupsByPrioritizingSchedule_forDate_inCalendar_items___block_invoke_25;
  v42[3] = &unk_279B6C228;
  v5 = v3;
  v43 = v5;
  v44 = &v45;
  [v4 enumerateObjectsUsingBlock:v42];
  v6 = v46[5];
  if (!v6)
  {
    v7 = [v5 unlockedInterval];
    v8 = [v7 startDate];

    v9 = [v5 calendar];
    v38 = [v9 startOfDayForDate:v8];

    v10 = [SCLHistoryGroupKey alloc];
    v11 = [v5 calendar];
    v37 = [(SCLHistoryGroupKey *)v10 initWithCalendar:v11 referenceDate:v38];

    v12 = [a1[5] objectForKey:v37];
    if (!v12)
    {
      v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
      [a1[5] setObject:v12 forKey:v37];
    }

    v13 = [v5 calendar];
    v14 = [v13 component:512 fromDate:v8];

    v15 = [a1[6] recurrencesForDay:v14];
    if ([v15 count])
    {
      v16 = [SCLRecurrenceSchedule alloc];
      v17 = [a1[6] recurrencesForDay:v14];
      v18 = [(SCLRecurrenceSchedule *)v16 initWithRecurrences:v17];

      v19 = [SCLHistoryGroup alloc];
      v20 = [v5 calendar];
      v21 = [(SCLHistoryGroup *)v19 initWithEffectiveSchedule:v18 calendar:v20 referenceDate:v38];

      if ([(SCLHistoryGroup *)v21 canContainUnlockHistoryItem:v5])
      {
        objc_storeStrong(v46 + 5, v21);
        [a1[4] addObject:v46[5]];
        [v12 addObject:v46[5]];
        [a1[7] addObject:v46[5]];
      }
    }

    if (!v46[5])
    {
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __80__SCLHistoryGroup_historyGroupsByPrioritizingSchedule_forDate_inCalendar_items___block_invoke_2;
      v39[3] = &unk_279B6C228;
      v22 = v5;
      v40 = v22;
      v41 = &v45;
      [v12 enumerateObjectsUsingBlock:v39];

      if (!v46[5])
      {
        v23 = [SCLTimeInterval alloc];
        v24 = [v22 scheduleStartTime];
        v25 = [v22 scheduleEndTime];
        v26 = [(SCLTimeInterval *)v23 initWithStartTime:v24 endTime:v25];

        v27 = [[SCLScheduleRecurrence alloc] initWithTimeInterval:v26 day:v14];
        v28 = [SCLRecurrenceSchedule alloc];
        v51[0] = v27;
        v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:1];
        v30 = [(SCLRecurrenceSchedule *)v28 initWithRecurrences:v29];

        v31 = [SCLHistoryGroup alloc];
        v32 = [v22 calendar];
        v33 = [(SCLHistoryGroup *)v31 initWithEffectiveSchedule:v30 calendar:v32 referenceDate:v38];
        v34 = v46[5];
        v46[5] = v33;

        [v12 addObject:v46[5]];
        [a1[7] addObject:v46[5]];
      }
    }

    v6 = v46[5];
  }

  v35 = [v6 items];
  [v35 addObject:v5];

  _Block_object_dispose(&v45, 8);
  v36 = *MEMORY[0x277D85DE8];
}

void __80__SCLHistoryGroup_historyGroupsByPrioritizingSchedule_forDate_inCalendar_items___block_invoke_25(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if ([v6 canContainUnlockHistoryItem:*(a1 + 32)])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

void __80__SCLHistoryGroup_historyGroupsByPrioritizingSchedule_forDate_inCalendar_items___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if ([v6 canContainUnlockHistoryItem:*(a1 + 32)])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

void __80__SCLHistoryGroup_historyGroupsByPrioritizingSchedule_forDate_inCalendar_items___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 items];
  [v2 sortUsingComparator:&__block_literal_global_36];
}

uint64_t __80__SCLHistoryGroup_historyGroupsByPrioritizingSchedule_forDate_inCalendar_items___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 unlockedInterval];
  v6 = [v5 startDate];
  v7 = [v4 unlockedInterval];

  v8 = [v7 startDate];
  v9 = [v6 compare:v8];

  return v9;
}

uint64_t __80__SCLHistoryGroup_historyGroupsByPrioritizingSchedule_forDate_inCalendar_items___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = a3;
  LODWORD(v6) = [v6 containsObject:v5];
  v8 = [*(a1 + 32) containsObject:v7];

  if (v6 == v8)
  {
    v9 = 0;
  }

  else if ([*(a1 + 32) containsObject:v5])
  {
    v9 = -1;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

uint64_t __80__SCLHistoryGroup_historyGroupsByPrioritizingSchedule_forDate_inCalendar_items___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 items];
  v6 = [v5 firstObject];

  v7 = [v4 items];

  v8 = [v7 firstObject];

  if (v6 | v8)
  {
    v9 = -1;
  }

  else
  {
    v9 = 0;
  }

  if (v6)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  if (v6 && v8)
  {
    v11 = [v6 unlockedInterval];
    v12 = [v11 startDate];
    v13 = [v8 unlockedInterval];
    v14 = [v13 startDate];
    v10 = [v12 compare:v14];
  }

  return v10;
}

- (SCLHistoryGroup)initWithEffectiveSchedule:(id)a3 calendar:(id)a4 referenceDate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = SCLHistoryGroup;
  v11 = [(SCLHistoryGroup *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_calendar, a4);
    objc_storeStrong(&v12->_referenceDate, a5);
    v13 = [v8 copy];
    effectiveSchedule = v12->_effectiveSchedule;
    v12->_effectiveSchedule = v13;

    v15 = [MEMORY[0x277CBEB18] array];
    items = v12->_items;
    v12->_items = v15;
  }

  return v12;
}

- (BOOL)canContainUnlockHistoryItem:(id)a3
{
  v4 = a3;
  v5 = [v4 unlockedInterval];
  v6 = [v5 startDate];

  v7 = [(SCLHistoryGroup *)self calendar];
  v8 = [(SCLHistoryGroup *)self referenceDate];
  v9 = [v7 isDate:v6 inSameDayAsDate:v8];

  if (v9)
  {
    v10 = [(SCLHistoryGroup *)self effectiveSchedule];
    v11 = [v10 recurrences];
    v12 = [v4 effectiveRecurrence];
    v13 = [v11 containsObject:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end