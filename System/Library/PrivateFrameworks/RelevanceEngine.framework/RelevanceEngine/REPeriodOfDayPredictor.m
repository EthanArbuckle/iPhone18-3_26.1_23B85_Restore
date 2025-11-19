@interface REPeriodOfDayPredictor
- (NSDateInterval)intervalForCurrentPeriodOfDay;
- (id)_defaultDayPeriodsOfDayForDate:(id)a3;
- (id)_init;
- (id)_nextDayPeriodUpdateDate;
- (id)_periodsOfDayForSleepIntervals:(id)a3;
- (id)dateIntervalForNextPeriodOfDay:(unint64_t)a3;
- (id)dateIntervalForNextPeriodOfDay:(unint64_t)a3 afterDate:(id)a4;
- (id)dateIntervalForPreviousPeriodOfDay:(unint64_t)a3;
- (id)dateIntervalForPreviousPeriodOfDay:(unint64_t)a3 beforeDate:(id)a4;
- (unint64_t)currentPeriodOfDay;
- (void)_getAllSleepIntervalsWithCompletion:(id)a3;
- (void)_getHistoricSleepIntervalsWithCompletion:(id)a3;
- (void)_getPredictedSleepIntervalsWithCompletion:(id)a3;
- (void)_handleSignificantTimeChange;
- (void)_queue_updateNextDateUpdateTimer;
- (void)currentPeriodOfDay;
- (void)dealloc;
- (void)update;
@end

@implementation REPeriodOfDayPredictor

- (id)_init
{
  v17.receiver = self;
  v17.super_class = REPeriodOfDayPredictor;
  v2 = [(REPredictor *)&v17 _init];
  if (v2)
  {
    v3 = objc_opt_new();
    v4 = v2[9];
    v2[9] = v3;

    v5 = [MEMORY[0x277CBEAA8] date];
    v6 = [v2 _defaultDayPeriodsOfDayForDate:v5];
    v7 = v2[8];
    v2[8] = v6;

    v8 = +[(RESingleton *)REDuetKnowledgeStore];
    v9 = v2[11];
    v2[11] = v8;

    v10 = [objc_alloc(MEMORY[0x277D62528]) initWithIdentifier:@"com.apple.RelevanceEngine.REPeriodOfDayPredictor"];
    v11 = v2[12];
    v2[12] = v10;

    v12 = [MEMORY[0x277CCAB98] defaultCenter];
    v13 = RESignificantTimeChangeNotification();
    [v12 addObserver:v2 selector:sel__handleSignificantTimeChange name:v13 object:0];

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __31__REPeriodOfDayPredictor__init__block_invoke;
    v15[3] = &unk_2785F9AB8;
    v16 = v2;
    [v16 onQueue:v15];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = RESignificantTimeChangeNotification();
  [v3 removeObserver:self name:v4 object:0];

  v5.receiver = self;
  v5.super_class = REPeriodOfDayPredictor;
  [(REPredictor *)&v5 dealloc];
}

- (id)_defaultDayPeriodsOfDayForDate:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEA80] currentCalendar];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __57__REPeriodOfDayPredictor__defaultDayPeriodsOfDayForDate___block_invoke;
  v26[3] = &unk_2785FA9B8;
  v5 = v4;
  v27 = v5;
  v6 = MEMORY[0x22AABC5E0](v26);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __57__REPeriodOfDayPredictor__defaultDayPeriodsOfDayForDate___block_invoke_2;
  v24[3] = &unk_2785FA9B8;
  v7 = v5;
  v25 = v7;
  v8 = MEMORY[0x22AABC5E0](v24);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __57__REPeriodOfDayPredictor__defaultDayPeriodsOfDayForDate___block_invoke_3;
  v22[3] = &unk_2785FA9E0;
  v18 = v7;
  v23 = v18;
  v9 = MEMORY[0x22AABC5E0](v22);
  v21 = v3;
  v10 = (v9)[2](v9, v3, -3);
  v20 = [MEMORY[0x277CBEB18] array];
  for (i = -2; i != 4; ++i)
  {
    v12 = v10;
    v10 = (v9)[2](v9, v21, i);
    v13 = (v8)[2](v8, v12);
    v14 = (v6)[2](v6, v10);

    v15 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v13 endDate:v14];
    [v20 addObject:v15];
  }

  v16 = [(REPeriodOfDayPredictor *)self _periodsOfDayForSleepIntervals:v20];

  return v16;
}

id __57__REPeriodOfDayPredictor__defaultDayPeriodsOfDayForDate___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [v3 dateByAddingUnit:16 value:a3 toDate:a2 options:0];
  v5 = [v3 startOfDayForDate:v4];

  return v5;
}

- (void)_handleSignificantTimeChange
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __54__REPeriodOfDayPredictor__handleSignificantTimeChange__block_invoke;
  v2[3] = &unk_2785F9AB8;
  v2[4] = self;
  [(REPredictor *)self onQueue:v2];
}

uint64_t __54__REPeriodOfDayPredictor__handleSignificantTimeChange__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __54__REPeriodOfDayPredictor__handleSignificantTimeChange__block_invoke_2;
  v3[3] = &unk_2785FAA08;
  v3[4] = v1;
  return [v1 enumerateObservers:v3];
}

void __54__REPeriodOfDayPredictor__handleSignificantTimeChange__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 periodOfDayPredictorDidUpdatePredictedIntervals:*(a1 + 32)];
  }
}

- (unint64_t)currentPeriodOfDay
{
  [(NSLock *)self->_storedPeriodsLock lock];
  v3 = [(NSArray *)self->_storedPeriods copy];
  [(NSLock *)self->_storedPeriodsLock unlock];
  v4 = [MEMORY[0x277CBEAA8] date];
  v5 = REIndexOfDateInPeriodsOfDay(v4, v3);
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = RELogForDomain(8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [REPeriodOfDayPredictor currentPeriodOfDay];
    }

    v7 = [(REPeriodOfDayPredictor *)self _defaultDayPeriodsOfDayForDate:v4];
    v8 = [v7 objectAtIndexedSubscript:{REIndexOfDateInPeriodsOfDay(v4, v7)}];
    v9 = [v8 periodOfDay];
  }

  else
  {
    v7 = [v3 objectAtIndexedSubscript:v5];
    v9 = [v7 periodOfDay];
  }

  return v9;
}

- (NSDateInterval)intervalForCurrentPeriodOfDay
{
  [(NSLock *)self->_storedPeriodsLock lock];
  v3 = [(NSArray *)self->_storedPeriods copy];
  [(NSLock *)self->_storedPeriodsLock unlock];
  v4 = [MEMORY[0x277CBEAA8] date];
  v5 = REIndexOfDateInPeriodsOfDay(v4, v3);
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = RELogForDomain(8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [REPeriodOfDayPredictor currentPeriodOfDay];
    }

    v7 = [(REPeriodOfDayPredictor *)self _defaultDayPeriodsOfDayForDate:v4];
    v8 = [v7 objectAtIndexedSubscript:{REIndexOfDateInPeriodsOfDay(v4, v7)}];
    v9 = [v8 interval];
  }

  else
  {
    v7 = [v3 objectAtIndexedSubscript:v5];
    v9 = [v7 interval];
  }

  return v9;
}

- (id)dateIntervalForNextPeriodOfDay:(unint64_t)a3
{
  v5 = [MEMORY[0x277CBEAA8] date];
  v6 = [(REPeriodOfDayPredictor *)self dateIntervalForNextPeriodOfDay:a3 afterDate:v5];
  if (!v6)
  {
    v7 = MEMORY[0x277CBEAD8];
    v8 = *MEMORY[0x277CBE658];
    if (a3 > 2)
    {
      v9 = 0;
    }

    else
    {
      v9 = off_2785FAB38[a3];
    }

    v10 = [(REPeriodOfDayPredictor *)self _defaultDayPeriodsOfDayForDate:v5];
    [v7 raise:v8 format:{@"Unable to find %@ after date %@ in default dates: %@", v9, v5, v10}];
  }

  return v6;
}

- (id)dateIntervalForNextPeriodOfDay:(unint64_t)a3 afterDate:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a4;
  [(NSLock *)self->_storedPeriodsLock lock];
  v7 = [(NSArray *)self->_storedPeriods copy];
  [(NSLock *)self->_storedPeriodsLock unlock];
  v8 = REIndexOfDateInPeriodsOfDay(v6, v7);
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    for (i = v8 + 1; i < [v7 count]; ++i)
    {
      v12 = [v7 objectAtIndexedSubscript:i];
      if ([v12 periodOfDay] == a3)
      {
        v17 = [v12 interval];

        goto LABEL_18;
      }
    }
  }

  v9 = RELogForDomain(8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    if (a3 > 2)
    {
      v10 = 0;
    }

    else
    {
      v10 = off_2785FAB38[a3];
    }

    v20 = 138412546;
    v21 = v10;
    v22 = 2112;
    v23 = v7;
    _os_log_impl(&dword_22859F000, v9, OS_LOG_TYPE_INFO, "Unable to find %@ in current data: %@\nfalling back to default data", &v20, 0x16u);
  }

  v13 = [MEMORY[0x277CBEAA8] date];
  v14 = [(REPeriodOfDayPredictor *)self _defaultDayPeriodsOfDayForDate:v13];

  for (j = REIndexOfDateInPeriodsOfDay(v6, v14) + 1; ; ++j)
  {
    if (j >= [v14 count])
    {
      v17 = 0;
      goto LABEL_17;
    }

    v16 = [v14 objectAtIndexedSubscript:j];
    if ([v16 periodOfDay] == a3)
    {
      break;
    }
  }

  v17 = [v16 interval];

LABEL_17:
LABEL_18:

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)dateIntervalForPreviousPeriodOfDay:(unint64_t)a3
{
  v5 = [MEMORY[0x277CBEAA8] date];
  v6 = [(REPeriodOfDayPredictor *)self dateIntervalForPreviousPeriodOfDay:a3 beforeDate:v5];
  if (!v6)
  {
    v7 = MEMORY[0x277CBEAD8];
    v8 = *MEMORY[0x277CBE658];
    if (a3 > 2)
    {
      v9 = 0;
    }

    else
    {
      v9 = off_2785FAB38[a3];
    }

    v10 = [(REPeriodOfDayPredictor *)self _defaultDayPeriodsOfDayForDate:v5];
    [v7 raise:v8 format:{@"Unable to find %@ before date %@ in default dates: %@", v9, v5, v10}];
  }

  return v6;
}

- (id)dateIntervalForPreviousPeriodOfDay:(unint64_t)a3 beforeDate:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a4;
  [(NSLock *)self->_storedPeriodsLock lock];
  v7 = [(NSArray *)self->_storedPeriods copy];
  [(NSLock *)self->_storedPeriodsLock unlock];
  v8 = REIndexOfDateInPeriodsOfDay(v6, v7);
  if ((v8 - 0x7FFFFFFFFFFFFFFFLL) < 0x8000000000000002)
  {
LABEL_5:
    v11 = RELogForDomain(8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      if (a3 > 2)
      {
        v12 = 0;
      }

      else
      {
        v12 = off_2785FAB38[a3];
      }

      v21 = 138412546;
      v22 = v12;
      v23 = 2112;
      v24 = v7;
      _os_log_impl(&dword_22859F000, v11, OS_LOG_TYPE_INFO, "Unable to find %@ in current data: %@\nfalling back to default data", &v21, 0x16u);
    }

    v14 = [MEMORY[0x277CBEAA8] date];
    v15 = [(REPeriodOfDayPredictor *)self _defaultDayPeriodsOfDayForDate:v14];

    v16 = REIndexOfDateInPeriodsOfDay(v6, v15);
    if ((v16 - 0x7FFFFFFFFFFFFFFFLL) < 0x8000000000000002)
    {
LABEL_15:
      v13 = 0;
    }

    else
    {
      v17 = v16 + 1;
      while (1)
      {
        v18 = [v15 objectAtIndexedSubscript:v17 - 2];
        if ([v18 periodOfDay] == a3)
        {
          break;
        }

        if (--v17 < 2)
        {
          goto LABEL_15;
        }
      }

      v13 = [v18 interval];
    }
  }

  else
  {
    v9 = v8 + 1;
    while (1)
    {
      v10 = [v7 objectAtIndexedSubscript:v9 - 2];
      if ([v10 periodOfDay] == a3)
      {
        break;
      }

      if (--v9 < 2)
      {
        goto LABEL_5;
      }
    }

    v13 = [v10 interval];
  }

  v19 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)update
{
  v3 = RELogForDomain(8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [REPeriodOfDayPredictor update];
  }

  [(REPredictor *)self beginFetchingData];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __32__REPeriodOfDayPredictor_update__block_invoke;
  v4[3] = &unk_2785FAA78;
  v4[4] = self;
  [(REPeriodOfDayPredictor *)self _getAllSleepIntervalsWithCompletion:v4];
}

void __32__REPeriodOfDayPredictor_update__block_invoke(uint64_t a1, void *a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [MEMORY[0x277CBEB18] array];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v2;
  v4 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v40;
    do
    {
      v7 = 0;
      do
      {
        if (*v40 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v39 + 1) + 8 * v7);
        if ([v3 count])
        {
          v9 = [v3 lastObject];
          v10 = [MEMORY[0x277CBEA80] currentCalendar];
          v11 = [v9 endDate];
          v12 = [v8 startDate];
          v13 = [v10 isDate:v11 equalToDate:v12 toUnitGranularity:128];

          v14 = [v9 intersectsDateInterval:v8];
          if ((v13 & 1) != 0 || v14)
          {
            if (v14)
            {
              v15 = RELogForDomain(8);
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412546;
                v44 = v9;
                v45 = 2112;
                v46 = v8;
                _os_log_debug_impl(&dword_22859F000, v15, OS_LOG_TYPE_DEBUG, "Found overlapping intervals %@ and %@", buf, 0x16u);
              }
            }

            [v3 removeLastObject];
            v16 = REDateIntervalUnion(v9, v8);
            [v3 addObject:v16];
          }

          else
          {
            [v3 addObject:v8];
          }
        }

        else
        {
          [v3 addObject:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
    }

    while (v5);
  }

  v17 = [MEMORY[0x277CBEAA8] date];
  v18 = RELogForDomain(8);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    __32__REPeriodOfDayPredictor_update__block_invoke_cold_1();
  }

  v19 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_371];
  [v3 filterUsingPredicate:v19];

  v20 = [*(a1 + 32) _periodsOfDayForSleepIntervals:v3];
  if (![v20 count])
  {
    v21 = [*(a1 + 32) _defaultDayPeriodsOfDayForDate:v17];

    v20 = v21;
  }

  v22 = RELogForDomain(8);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    __32__REPeriodOfDayPredictor_update__block_invoke_cold_2();
  }

  v23 = [*(a1 + 32) currentPeriodOfDay];
  [*(*(a1 + 32) + 72) lock];
  v24 = [*(*(a1 + 32) + 64) isEqualToArray:v20];
  v25 = *(a1 + 32);
  v26 = *(v25 + 64);
  *(v25 + 64) = v20;
  v27 = v20;

  [*(*(a1 + 32) + 72) unlock];
  v28 = [*(a1 + 32) currentPeriodOfDay];
  v29 = v23 == v28;
  v30 = v23 != v28;
  v31 = *(a1 + 32);
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __32__REPeriodOfDayPredictor_update__block_invoke_372;
  v36[3] = &unk_2785FAA50;
  if (v29)
  {
    v32 = v24;
  }

  else
  {
    v32 = 1;
  }

  v36[4] = v31;
  v37 = v32;
  v38 = v30;
  [v31 onQueue:v36];

  v33 = *MEMORY[0x277D85DE8];
}

uint64_t __32__REPeriodOfDayPredictor_update__block_invoke_372(uint64_t a1)
{
  [*(a1 + 32) finishFetchingData];
  if (*(a1 + 40) == 1)
  {
    [*(a1 + 32) updateObservers];
  }

  v2 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __32__REPeriodOfDayPredictor_update__block_invoke_2;
  v6[3] = &unk_2785FAA08;
  v6[4] = v2;
  [v2 enumerateObservers:v6];
  if (*(a1 + 41) == 1)
  {
    v3 = *(a1 + 32);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __32__REPeriodOfDayPredictor_update__block_invoke_3;
    v5[3] = &unk_2785FAA08;
    v5[4] = v3;
    [v3 enumerateObservers:v5];
  }

  return [*(a1 + 32) _queue_updateNextDateUpdateTimer];
}

void __32__REPeriodOfDayPredictor_update__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 periodOfDayPredictorDidUpdatePredictedIntervals:*(a1 + 32)];
  }
}

void __32__REPeriodOfDayPredictor_update__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 periodOfDayPredictorDidUpdateCurrentPeriodOfDay:*(a1 + 32)];
  }
}

- (void)_getAllSleepIntervalsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __62__REPeriodOfDayPredictor__getAllSleepIntervalsWithCompletion___block_invoke;
    v6[3] = &unk_2785FAAA0;
    v6[4] = self;
    v7 = v4;
    [(REPeriodOfDayPredictor *)self _getHistoricSleepIntervalsWithCompletion:v6];
  }
}

void __62__REPeriodOfDayPredictor__getAllSleepIntervalsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__REPeriodOfDayPredictor__getAllSleepIntervalsWithCompletion___block_invoke_2;
  v6[3] = &unk_2785FAAA0;
  v7 = v3;
  v4 = *(a1 + 32);
  v8 = *(a1 + 40);
  v5 = v3;
  [v4 _getPredictedSleepIntervalsWithCompletion:v6];
}

void __62__REPeriodOfDayPredictor__getAllSleepIntervalsWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) arrayByAddingObjectsFromArray:a2];
  (*(*(a1 + 40) + 16))();
}

- (id)_periodsOfDayForSleepIntervals:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __57__REPeriodOfDayPredictor__periodsOfDayForSleepIntervals___block_invoke;
  v12 = &unk_2785FAAC8;
  v13 = v4;
  v14 = v3;
  v5 = v3;
  v6 = v4;
  [v5 enumerateObjectsUsingBlock:&v9];
  v7 = [v6 copy];

  return v7;
}

void __57__REPeriodOfDayPredictor__periodsOfDayForSleepIntervals___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = [[_REPeriodOfDay alloc] initWithInterval:v5 periodOfDay:2];
  [v6 addObject:v7];

  v8 = a3 + 1;
  if (v8 < [*(a1 + 40) count])
  {
    v9 = [*(a1 + 40) objectAtIndexedSubscript:v8];
    v10 = [v5 endDate];
    v11 = [v9 startDate];
    if ([v10 compare:v11] == -1)
    {
      v13 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v10 endDate:v11];
      v14 = REDateIntervalMidpoint(v13);

      v15 = [_REPeriodOfDay alloc];
      v16 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v10 endDate:v14];
      v17 = [(_REPeriodOfDay *)v15 initWithInterval:v16 periodOfDay:0];

      v18 = [_REPeriodOfDay alloc];
      v19 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v14 endDate:v11];
      v20 = [(_REPeriodOfDay *)v18 initWithInterval:v19 periodOfDay:1];

      [*(a1 + 32) addObject:v17];
      [*(a1 + 32) addObject:v20];
    }

    else
    {
      v12 = RELogForDomain(8);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __57__REPeriodOfDayPredictor__periodsOfDayForSleepIntervals___block_invoke_cold_1();
      }
    }
  }
}

- (void)_getPredictedSleepIntervalsWithCompletion:(id)a3
{
  v54 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    [(REPredictor *)self beginFetchingData];
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __68__REPeriodOfDayPredictor__getPredictedSleepIntervalsWithCompletion___block_invoke;
    v50[3] = &unk_2785FAAA0;
    v50[4] = self;
    v5 = v4;
    v51 = v5;
    v6 = MEMORY[0x22AABC5E0](v50);
    v7 = [MEMORY[0x277CBEB18] array];
    v8 = [MEMORY[0x277CBEA80] currentCalendar];
    v9 = [MEMORY[0x277CBEAA8] date];
    sleepStore = self->_sleepStore;
    v49 = 0;
    v43 = [(HKSPSleepStore *)sleepStore currentSleepScheduleWithError:&v49];
    v11 = v49;
    if (v11)
    {
      v12 = RELogForDomain(8);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v53 = v11;
        _os_log_impl(&dword_22859F000, v12, OS_LOG_TYPE_DEFAULT, "Unable to get the current sleep schedule: %@", buf, 0xCu);
      }
    }

    v42 = v11;
    if (v43)
    {
      v37 = v5;
      v38 = self;
      v41 = v6;
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __68__REPeriodOfDayPredictor__getPredictedSleepIntervalsWithCompletion___block_invoke_377;
      v47[3] = &unk_2785FA9E0;
      v40 = v8;
      v48 = v8;
      v13 = MEMORY[0x22AABC5E0](v47);
      v39 = v9;
      v14 = v9;
      v15 = 1;
      v16 = v14;
      do
      {
        v17 = v16;
        v16 = (v13)[2](v13, v14, v15);
        v18 = [_TtC15RelevanceEngine20RESleepScheduleEntry sleepEntryForDatesWithCurrent:v17 next:v16 schedule:v43];
        v19 = [v18 bedtime];
        v20 = [v18 wakeupTime];

        if (v19)
        {
          v21 = v20 == 0;
        }

        else
        {
          v21 = 1;
        }

        if (!v21)
        {
          v22 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v19 endDate:v20];
          [v7 addObject:v22];
        }

        ++v15;
      }

      while (v15 != 4);
      if ([v7 count])
      {
        [(REPredictor *)v38 finishFetchingData];
        v37[2](v37, v7);

        v23 = v48;
        v6 = v41;
        v9 = v39;
        v8 = v40;
LABEL_27:

        goto LABEL_28;
      }

      v6 = v41;
      v9 = v39;
      v8 = v40;
      self = v38;
    }

    v23 = [(REDuetKnowledgeStore *)self->_knowledgeStore sleepInterval];
    v24 = RELogForDomain(8);
    v25 = v24;
    if (v23)
    {
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v53 = v23;
        _os_log_impl(&dword_22859F000, v25, OS_LOG_TYPE_DEFAULT, "Received expected in bed period: %@", buf, 0xCu);
      }

      v26 = [v23 startDate];
      v27 = [v8 components:224 fromDate:v26];

      v28 = [MEMORY[0x277CBEAA8] date];
      v29 = [v8 nextDateAfterDate:v28 matchingHour:objc_msgSend(v27 minute:"hour") second:objc_msgSend(v27 options:{"minute"), objc_msgSend(v27, "second"), 1024}];

      v30 = objc_alloc(MEMORY[0x277CCA970]);
      [v23 duration];
      if (v31 < 0.0)
      {
        v31 = 0.0;
      }

      v32 = [v30 initWithStartDate:v29 duration:v31];
      [v7 addObject:v32];
      v33 = [v7 copy];
      (v6)[2](v6, v33);
    }

    else
    {
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        [REPeriodOfDayPredictor _getPredictedSleepIntervalsWithCompletion:];
      }

      v27 = [(REDuetKnowledgeStore *)self->_knowledgeStore queryForPredictedChargingEventsWithMinimumDuration:60.0];
      knowledgeStore = self->_knowledgeStore;
      v35 = [(REPredictor *)self queue];
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __68__REPeriodOfDayPredictor__getPredictedSleepIntervalsWithCompletion___block_invoke_379;
      v44[3] = &unk_2785FAB18;
      v45 = v7;
      v46 = v6;
      [(REDuetKnowledgeStore *)knowledgeStore executeQuery:v27 responseQueue:v35 completion:v44];

      v29 = v45;
    }

    goto LABEL_27;
  }

LABEL_28:

  v36 = *MEMORY[0x277D85DE8];
}

void __68__REPeriodOfDayPredictor__getPredictedSleepIntervalsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = REUpNextDuplicateIntervalsByAddingUnit(a2, 16, 1uLL, 3);
  v4 = RELogForDomain(8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_22859F000, v4, OS_LOG_TYPE_INFO, "Updated predicted sleep events: %@", &v6, 0xCu);
  }

  [*(a1 + 32) finishFetchingData];
  (*(*(a1 + 40) + 16))();

  v5 = *MEMORY[0x277D85DE8];
}

id __68__REPeriodOfDayPredictor__getPredictedSleepIntervalsWithCompletion___block_invoke_377(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [v3 dateByAddingUnit:16 value:a3 toDate:a2 options:0];
  v5 = [v3 startOfDayForDate:v4];

  return v5;
}

void __68__REPeriodOfDayPredictor__getPredictedSleepIntervalsWithCompletion___block_invoke_379(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = RELogForDomain(8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __68__REPeriodOfDayPredictor__getPredictedSleepIntervalsWithCompletion___block_invoke_379_cold_1();
  }

  if (v3)
  {
    v5 = [v3 transitionDates];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __68__REPeriodOfDayPredictor__getPredictedSleepIntervalsWithCompletion___block_invoke_380;
    v9[3] = &unk_2785FAAF0;
    v10 = v5;
    v11 = v3;
    v12 = *(a1 + 32);
    v6 = v5;
    [v6 enumerateObjectsUsingBlock:v9];
  }

  v7 = *(a1 + 40);
  v8 = [*(a1 + 32) copy];
  (*(v7 + 16))(v7, v8);
}

void __68__REPeriodOfDayPredictor__getPredictedSleepIntervalsWithCompletion___block_invoke_380(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 32);
    v5 = a3 - 1;
    v6 = a2;
    v12 = [v4 objectAtIndex:v5];
    v7 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v12 endDate:v6];

    v8 = *(a1 + 40);
    v9 = REDateIntervalMidpoint(v7);
    v10 = [v8 valueForDate:v9];

    if (v10)
    {
      [v10 floatValue];
      if (v11 > 0.78)
      {
        [*(a1 + 48) addObject:v7];
      }
    }
  }
}

- (void)_getHistoricSleepIntervalsWithCompletion:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x277CBEB18] array];
    v6 = [MEMORY[0x277CBEA80] currentCalendar];
    v41 = [MEMORY[0x277CBEAA8] date];
    sleepStore = self->_sleepStore;
    v47 = 0;
    v40 = [(HKSPSleepStore *)sleepStore currentSleepScheduleWithError:&v47];
    v8 = v47;
    if (v8)
    {
      v9 = RELogForDomain(8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v50 = v8;
        _os_log_impl(&dword_22859F000, v9, OS_LOG_TYPE_DEFAULT, "Unable to get the current sleep schedule: %@", buf, 0xCu);
      }
    }

    if (v40)
    {
      v38 = self;
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __67__REPeriodOfDayPredictor__getHistoricSleepIntervalsWithCompletion___block_invoke;
      v45[3] = &unk_2785FA9E0;
      v39 = v6;
      v46 = v6;
      v10 = MEMORY[0x22AABC5E0](v45);
      v11 = -3;
      v12 = (v10)[2](v10, v41, -3);
      do
      {
        v13 = v12;
        v12 = (v10)[2](v10, v41, ++v11);
        v14 = [_TtC15RelevanceEngine20RESleepScheduleEntry sleepEntryForDatesWithCurrent:v13 next:v12 schedule:v40];
        v15 = [v14 bedtime];
        v16 = [v14 wakeupTime];

        if (v15)
        {
          v17 = v16 == 0;
        }

        else
        {
          v17 = 1;
        }

        if (!v17)
        {
          v18 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v15 endDate:v16];
          [v5 addObject:v18];
        }
      }

      while (v11);
      if ([v5 count])
      {
        v19 = [v5 copy];
        v4[2](v4, v19);

        v20 = v46;
        v6 = v39;
LABEL_31:

        goto LABEL_32;
      }

      v6 = v39;
      self = v38;
    }

    v20 = [(REDuetKnowledgeStore *)self->_knowledgeStore sleepInterval];
    v21 = RELogForDomain(8);
    v22 = v21;
    if (v20)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v50 = v20;
        _os_log_impl(&dword_22859F000, v22, OS_LOG_TYPE_DEFAULT, "Received expected in bed period (using for historic calculation): %@", buf, 0xCu);
      }

      v23 = [v20 containsDate:v41];
      v24 = [v20 startDate];
      if ((v23 & 1) == 0)
      {
        v25 = [v6 components:224 fromDate:v24];

        v26 = [MEMORY[0x277CBEAA8] date];
        v27 = [v6 dateByAddingUnit:16 value:-1 toDate:v26 options:0];

        v24 = [v6 nextDateAfterDate:v27 matchingHour:objc_msgSend(v25 minute:"hour") second:objc_msgSend(v25 options:{"minute"), objc_msgSend(v25, "second"), 1024}];
      }

      v28 = objc_alloc(MEMORY[0x277CCA970]);
      [v20 duration];
      if (v29 < 0.0)
      {
        v29 = 0.0;
      }

      v30 = [v28 initWithStartDate:v24 duration:v29];
      v48 = v30;
      v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:1];
      v32 = REUpNextDuplicateIntervalsByAddingUnit(v31, 16, 0xFFFFFFFFFFFFFFFFLL, 3);
      [v5 addObjectsFromArray:v32];

      v33 = RELogForDomain(8);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        [REPeriodOfDayPredictor _getHistoricSleepIntervalsWithCompletion:];
      }

      v34 = [v5 copy];
      v4[2](v4, v34);
    }

    else
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [REPeriodOfDayPredictor _getHistoricSleepIntervalsWithCompletion:];
      }

      v24 = [(REDuetKnowledgeStore *)self->_knowledgeStore queryForHistoricChargingEventsWithMinimumDuration:3 inThePastDays:60.0];
      knowledgeStore = self->_knowledgeStore;
      v36 = [(REPredictor *)self queue];
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __67__REPeriodOfDayPredictor__getHistoricSleepIntervalsWithCompletion___block_invoke_384;
      v42[3] = &unk_2785FAB18;
      v43 = v5;
      v44 = v4;
      [(REDuetKnowledgeStore *)knowledgeStore executeQuery:v24 responseQueue:v36 completion:v42];

      v30 = v43;
    }

    goto LABEL_31;
  }

LABEL_32:

  v37 = *MEMORY[0x277D85DE8];
}

id __67__REPeriodOfDayPredictor__getHistoricSleepIntervalsWithCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [v3 dateByAddingUnit:16 value:a3 toDate:a2 options:0];
  v5 = [v3 startOfDayForDate:v4];

  return v5;
}

void __67__REPeriodOfDayPredictor__getHistoricSleepIntervalsWithCompletion___block_invoke_384(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = RELogForDomain(8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __67__REPeriodOfDayPredictor__getHistoricSleepIntervalsWithCompletion___block_invoke_384_cold_1();
  }

  if (v3)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          [v10 confidence];
          if (v11 > 0.779999971)
          {
            v12 = *(a1 + 32);
            v13 = [v10 interval];
            [v12 addObject:v13];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }
  }

  v14 = *(a1 + 40);
  v15 = [*(a1 + 32) copy];
  (*(v14 + 16))(v14, v15);

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_queue_updateNextDateUpdateTimer
{
  periodOfDayUpdateTimer = self->_periodOfDayUpdateTimer;
  if (periodOfDayUpdateTimer)
  {
    [(REUpNextTimer *)periodOfDayUpdateTimer invalidate];
  }

  v4 = [(REPeriodOfDayPredictor *)self _nextDayPeriodUpdateDate];
  objc_initWeak(&location, self);
  v5 = [(REPredictor *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__REPeriodOfDayPredictor__queue_updateNextDateUpdateTimer__block_invoke;
  v8[3] = &unk_2785F9B58;
  objc_copyWeak(&v9, &location);
  v6 = [REUpNextTimer timerWithFireDate:v4 queue:v5 block:v8];
  v7 = self->_periodOfDayUpdateTimer;
  self->_periodOfDayUpdateTimer = v6;

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __58__REPeriodOfDayPredictor__queue_updateNextDateUpdateTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __58__REPeriodOfDayPredictor__queue_updateNextDateUpdateTimer__block_invoke_2;
    v4[3] = &unk_2785FAA08;
    v4[4] = WeakRetained;
    [WeakRetained enumerateObservers:v4];
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __58__REPeriodOfDayPredictor__queue_updateNextDateUpdateTimer__block_invoke_3;
    v3[3] = &unk_2785F9AB8;
    v3[4] = v2;
    [v2 onQueue:v3];
  }
}

void __58__REPeriodOfDayPredictor__queue_updateNextDateUpdateTimer__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 periodOfDayPredictorDidUpdateCurrentPeriodOfDay:*(a1 + 32)];
  }
}

- (id)_nextDayPeriodUpdateDate
{
  v2 = [(REPeriodOfDayPredictor *)self intervalForCurrentPeriodOfDay];
  v3 = [v2 endDate];
  v4 = [v3 dateByAddingTimeInterval:60.0];

  return v4;
}

- (void)currentPeriodOfDay
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(&dword_22859F000, v0, OS_LOG_TYPE_ERROR, "Unable to find now in current data: %@\nfalling back to default data", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __32__REPeriodOfDayPredictor_update__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  v4 = 2112;
  v5 = v0;
  _os_log_debug_impl(&dword_22859F000, v1, OS_LOG_TYPE_DEBUG, "Determined sleep intervals: %@\nFor date: %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

void __32__REPeriodOfDayPredictor_update__block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __57__REPeriodOfDayPredictor__periodsOfDayForSleepIntervals___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_22859F000, v1, OS_LOG_TYPE_ERROR, "Trying to create invalid interval from %@ to %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

void __68__REPeriodOfDayPredictor__getPredictedSleepIntervalsWithCompletion___block_invoke_379_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_getHistoricSleepIntervalsWithCompletion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __67__REPeriodOfDayPredictor__getHistoricSleepIntervalsWithCompletion___block_invoke_384_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end