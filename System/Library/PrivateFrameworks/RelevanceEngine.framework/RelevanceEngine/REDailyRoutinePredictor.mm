@interface REDailyRoutinePredictor
- (NSDateInterval)currentRoutineInterval;
- (id)_eveningRoutineIntervalForEvening:(id)evening;
- (id)_init;
- (id)_morningRoutineIntervalForMorning:(id)morning;
- (id)routineIntervalForNextRoutine:(unint64_t)routine;
- (id)routineIntervalForPreviousRoutine:(unint64_t)routine;
- (unint64_t)currentRoutineType;
- (void)_queue_didBeginEveningRoutine;
- (void)_queue_didBeginMorningRoutine;
- (void)_queue_didEndEveningRoutine;
- (void)_queue_didEndMorningRoutine;
- (void)_queue_setupEveningBeginTimerIfNeeded;
- (void)_queue_setupMorningBeginTimerIfNeeded;
- (void)_setOverrideRoutineType:(unint64_t)type;
- (void)_updateCurrentRoutine;
- (void)dealloc;
- (void)periodOfDayPredictorDidUpdatePredictedIntervals:(id)intervals;
@end

@implementation REDailyRoutinePredictor

- (id)_init
{
  v11.receiver = self;
  v11.super_class = REDailyRoutinePredictor;
  _init = [(REObservableSingleton *)&v11 _init];
  if (_init)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v4 = dispatch_queue_create("com.apple.RelevanceEngine.REDailyRoutinePredictor", v3);
    v5 = *(_init + 6);
    *(_init + 6) = v4;

    v6 = +[(RESingleton *)REPeriodOfDayPredictor];
    v7 = *(_init + 2);
    *(_init + 2) = v6;

    [*(_init + 2) addObserver:_init];
    v8 = objc_opt_new();
    v9 = *(_init + 9);
    *(_init + 9) = v8;
  }

  return _init;
}

- (void)dealloc
{
  [(REObservableSingleton *)self->_periodOfDayPredictor removeObserver:self];
  v3.receiver = self;
  v3.super_class = REDailyRoutinePredictor;
  [(REDailyRoutinePredictor *)&v3 dealloc];
}

- (unint64_t)currentRoutineType
{
  [(NSLock *)self->_routineLock lock];
  overrideRoutineType = self->_overrideRoutineType;
  if (overrideRoutineType)
  {
    currentRoutine = [(NSNumber *)overrideRoutineType unsignedIntegerValue];
  }

  else
  {
    currentRoutine = self->_currentRoutine;
  }

  [(NSLock *)self->_routineLock unlock];
  return currentRoutine;
}

- (NSDateInterval)currentRoutineInterval
{
  [(NSLock *)self->_routineLock lock];
  v3 = [(NSDateInterval *)self->_currentRoutineInterval copy];
  [(NSLock *)self->_routineLock unlock];

  return v3;
}

- (id)routineIntervalForNextRoutine:(unint64_t)routine
{
  if (routine)
  {
    v5 = routine == 2;
  }

  else
  {
    v5 = 2;
  }

  currentPeriodOfDay = [(REPeriodOfDayPredictor *)self->_periodOfDayPredictor currentPeriodOfDay];
  periodOfDayPredictor = self->_periodOfDayPredictor;
  if (currentPeriodOfDay == v5)
  {
    [(REPeriodOfDayPredictor *)periodOfDayPredictor intervalForCurrentPeriodOfDay];
  }

  else
  {
    [(REPeriodOfDayPredictor *)periodOfDayPredictor dateIntervalForNextPeriodOfDay:v5];
  }
  v8 = ;
  if (!v8)
  {
    goto LABEL_11;
  }

  if (routine == 1)
  {
    v9 = [(REDailyRoutinePredictor *)self _morningRoutineIntervalForMorning:v8];
    goto LABEL_13;
  }

  if (routine != 2)
  {
LABEL_11:
    v10 = 0;
    goto LABEL_14;
  }

  v9 = [(REDailyRoutinePredictor *)self _eveningRoutineIntervalForEvening:v8];
LABEL_13:
  v10 = v9;
LABEL_14:

  return v10;
}

- (id)routineIntervalForPreviousRoutine:(unint64_t)routine
{
  if (routine)
  {
    v5 = routine == 2;
  }

  else
  {
    v5 = 2;
  }

  currentPeriodOfDay = [(REPeriodOfDayPredictor *)self->_periodOfDayPredictor currentPeriodOfDay];
  periodOfDayPredictor = self->_periodOfDayPredictor;
  if (currentPeriodOfDay == v5)
  {
    [(REPeriodOfDayPredictor *)periodOfDayPredictor intervalForCurrentPeriodOfDay];
  }

  else
  {
    [(REPeriodOfDayPredictor *)periodOfDayPredictor dateIntervalForPreviousPeriodOfDay:v5];
  }
  v8 = ;
  if (!v8)
  {
    goto LABEL_11;
  }

  if (routine == 1)
  {
    v9 = [(REDailyRoutinePredictor *)self _morningRoutineIntervalForMorning:v8];
    goto LABEL_13;
  }

  if (routine != 2)
  {
LABEL_11:
    v10 = 0;
    goto LABEL_14;
  }

  v9 = [(REDailyRoutinePredictor *)self _eveningRoutineIntervalForEvening:v8];
LABEL_13:
  v10 = v9;
LABEL_14:

  return v10;
}

- (id)_morningRoutineIntervalForMorning:(id)morning
{
  periodOfDayPredictor = self->_periodOfDayPredictor;
  morningCopy = morning;
  endDate = [morningCopy endDate];
  v6 = [(REPeriodOfDayPredictor *)periodOfDayPredictor dateIntervalForPreviousPeriodOfDay:2 beforeDate:endDate];

  [v6 duration];
  v8 = v7;
  v9 = v7 * 0.400000006;
  startDate = [morningCopy startDate];
  v11 = [startDate dateByAddingTimeInterval:-(v8 * 0.400000006)];

  [morningCopy duration];
  v13 = v12;

  v14 = 4320.0;
  if (v13 <= 4320.0)
  {
    v14 = v13;
  }

  v15 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v11 duration:v9 + v14];

  return v15;
}

- (id)_eveningRoutineIntervalForEvening:(id)evening
{
  v19 = *MEMORY[0x277D85DE8];
  periodOfDayPredictor = self->_periodOfDayPredictor;
  eveningCopy = evening;
  startDate = [eveningCopy startDate];
  v6 = [(REPeriodOfDayPredictor *)periodOfDayPredictor dateIntervalForNextPeriodOfDay:2 afterDate:startDate];

  [v6 duration];
  v8 = v7;
  [eveningCopy duration];
  v10 = fmin(v9, 3600.0);
  endDate = [eveningCopy endDate];

  v12 = [endDate dateByAddingTimeInterval:-v10];

  v13 = RELogForDomain(8);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = v12;
    _os_log_impl(&dword_22859F000, v13, OS_LOG_TYPE_DEFAULT, "eveningStart is: %@", &v17, 0xCu);
  }

  v14 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v12 duration:v8 * 0.400000006 + v10];
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)periodOfDayPredictorDidUpdatePredictedIntervals:(id)intervals
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__REDailyRoutinePredictor_periodOfDayPredictorDidUpdatePredictedIntervals___block_invoke;
  block[3] = &unk_2785F9AB8;
  block[4] = self;
  intervalsCopy = intervals;
  dispatch_async(queue, block);
  [(REDailyRoutinePredictor *)self periodOfDayPredictorDidUpdateCurrentPeriodOfDay:intervalsCopy];

  v6 = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__REDailyRoutinePredictor_periodOfDayPredictorDidUpdatePredictedIntervals___block_invoke_3;
  v7[3] = &unk_2785F9AB8;
  v7[4] = self;
  dispatch_async(v6, v7);
}

uint64_t __75__REDailyRoutinePredictor_periodOfDayPredictorDidUpdatePredictedIntervals___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __75__REDailyRoutinePredictor_periodOfDayPredictorDidUpdatePredictedIntervals___block_invoke_2;
  v3[3] = &unk_2785FB2C8;
  v3[4] = v1;
  return [v1 enumerateObservers:v3];
}

void __75__REDailyRoutinePredictor_periodOfDayPredictorDidUpdatePredictedIntervals___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 dailyRoutinePredictorDidUpdatedPredictedRoutines:*(a1 + 32)];
  }
}

uint64_t __75__REDailyRoutinePredictor_periodOfDayPredictorDidUpdatePredictedIntervals___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _queue_setupMorningBeginTimerIfNeeded];
  v2 = *(a1 + 32);

  return [v2 _queue_setupEveningBeginTimerIfNeeded];
}

- (void)_updateCurrentRoutine
{
  v35 = *MEMORY[0x277D85DE8];
  date = [MEMORY[0x277CBEAA8] date];
  currentPeriodOfDay = [(REPeriodOfDayPredictor *)self->_periodOfDayPredictor currentPeriodOfDay];
  intervalForCurrentPeriodOfDay = [(REPeriodOfDayPredictor *)self->_periodOfDayPredictor intervalForCurrentPeriodOfDay];
  [(NSLock *)self->_routineLock lock];
  currentRoutine = self->_currentRoutine;
  v6 = RELogForDomain(8);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v23 = self->_currentRoutine;
    if (v23 > 2)
    {
      v26 = 0;
    }

    else
    {
      v26 = off_2785FB310[v23];
    }

    currentRoutineInterval = self->_currentRoutineInterval;
    REStringForPeriodOfDay(currentPeriodOfDay);
    *buf = 138412802;
    v30 = v26;
    v31 = 2112;
    v32 = currentRoutineInterval;
    v34 = v33 = 2112;
    v25 = v34;
    _os_log_debug_impl(&dword_22859F000, v6, OS_LOG_TYPE_DEBUG, "Current routine (%@, %@) updating based on period of day: %@", buf, 0x20u);
  }

  self->_currentRoutine = 0;
  v7 = self->_currentRoutineInterval;
  self->_currentRoutineInterval = 0;

  if (currentPeriodOfDay)
  {
    if (currentPeriodOfDay != 1)
    {
      if (currentPeriodOfDay != 2)
      {
        goto LABEL_16;
      }

      v8 = 1;
      v9 = [(REPeriodOfDayPredictor *)self->_periodOfDayPredictor dateIntervalForPreviousPeriodOfDay:1];
      v10 = [(REDailyRoutinePredictor *)self _eveningRoutineIntervalForEvening:v9];

      v11 = [(REPeriodOfDayPredictor *)self->_periodOfDayPredictor dateIntervalForNextPeriodOfDay:0];
      v12 = [(REDailyRoutinePredictor *)self _morningRoutineIntervalForMorning:v11];

      v13 = [(NSDateInterval *)v12 containsDate:date];
      v14 = v12;
      if (!v13)
      {
        if (![(NSDateInterval *)v10 containsDate:date])
        {
LABEL_14:

          goto LABEL_15;
        }

        v8 = 2;
        v14 = v10;
      }

      self->_currentRoutine = v8;
      objc_storeStrong(&self->_currentRoutineInterval, v14);
      goto LABEL_14;
    }

    v10 = [(REDailyRoutinePredictor *)self _eveningRoutineIntervalForEvening:intervalForCurrentPeriodOfDay];
    if ([(NSDateInterval *)v10 containsDate:date])
    {
      v15 = 2;
LABEL_13:
      self->_currentRoutine = v15;
      v10 = v10;
      v12 = self->_currentRoutineInterval;
      self->_currentRoutineInterval = v10;
      goto LABEL_14;
    }
  }

  else
  {
    v10 = [(REDailyRoutinePredictor *)self _morningRoutineIntervalForMorning:intervalForCurrentPeriodOfDay];
    if ([(NSDateInterval *)v10 containsDate:date])
    {
      v15 = 1;
      goto LABEL_13;
    }
  }

LABEL_15:

LABEL_16:
  v16 = RELogForDomain(8);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = self->_currentRoutine;
    if (v17 > 2)
    {
      v18 = 0;
    }

    else
    {
      v18 = off_2785FB310[v17];
    }

    v19 = self->_currentRoutineInterval;
    *buf = 138412546;
    v30 = v18;
    v31 = 2112;
    v32 = v19;
    _os_log_impl(&dword_22859F000, v16, OS_LOG_TYPE_INFO, "Updated routine to %@, %@", buf, 0x16u);
  }

  v20 = self->_currentRoutine;
  [(NSLock *)self->_routineLock unlock];
  if (currentRoutine != v20)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__REDailyRoutinePredictor__updateCurrentRoutine__block_invoke;
    block[3] = &unk_2785FB2F0;
    block[4] = self;
    block[5] = currentRoutine;
    block[6] = v20;
    dispatch_async(queue, block);
  }

  v22 = *MEMORY[0x277D85DE8];
}

uint64_t __48__REDailyRoutinePredictor__updateCurrentRoutine__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 == 2)
  {
    [*(a1 + 32) _queue_didEndEveningRoutine];
  }

  else if (v2 == 1)
  {
    [*(a1 + 32) _queue_didEndMorningRoutine];
  }

  [*(a1 + 32) _queue_setupMorningBeginTimerIfNeeded];
  result = [*(a1 + 32) _queue_setupEveningBeginTimerIfNeeded];
  v4 = *(a1 + 48);
  if (v4 == 2)
  {
    v6 = *(a1 + 32);

    return [v6 _queue_didBeginEveningRoutine];
  }

  else if (v4 == 1)
  {
    v5 = *(a1 + 32);

    return [v5 _queue_didBeginMorningRoutine];
  }

  return result;
}

- (void)_queue_didBeginMorningRoutine
{
  [(REUpNextTimer *)self->_endMorningRoutineTimer invalidate];
  endMorningRoutineTimer = self->_endMorningRoutineTimer;
  self->_endMorningRoutineTimer = 0;

  v4 = RELogForDomain(8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [REDailyRoutinePredictor _queue_didBeginMorningRoutine];
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __56__REDailyRoutinePredictor__queue_didBeginMorningRoutine__block_invoke;
  v15[3] = &unk_2785FB2C8;
  v15[4] = self;
  [(REObservableSingleton *)self enumerateObservers:v15];
  intervalForCurrentPeriodOfDay = [(REPeriodOfDayPredictor *)self->_periodOfDayPredictor intervalForCurrentPeriodOfDay];
  v6 = [(REDailyRoutinePredictor *)self _morningRoutineIntervalForMorning:intervalForCurrentPeriodOfDay];
  objc_initWeak(&location, self);
  startDate = [v6 startDate];
  v8 = [startDate dateByAddingTimeInterval:2.0];
  queue = self->_queue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __56__REDailyRoutinePredictor__queue_didBeginMorningRoutine__block_invoke_2;
  v12[3] = &unk_2785F9B58;
  objc_copyWeak(&v13, &location);
  v10 = [REUpNextTimer timerWithFireDate:v8 queue:queue block:v12];
  v11 = self->_endMorningRoutineTimer;
  self->_endMorningRoutineTimer = v10;

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __56__REDailyRoutinePredictor__queue_didBeginMorningRoutine__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 dailyRoutinePredictorDidBeginMorningRoutine:*(a1 + 32)];
  }
}

void __56__REDailyRoutinePredictor__queue_didBeginMorningRoutine__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _updateCurrentRoutine];
    [v2 _queue_didEndMorningRoutine];
    WeakRetained = v2;
  }
}

- (void)_queue_didEndMorningRoutine
{
  [(REUpNextTimer *)self->_endMorningRoutineTimer invalidate];
  endMorningRoutineTimer = self->_endMorningRoutineTimer;
  self->_endMorningRoutineTimer = 0;

  v4 = RELogForDomain(8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [REDailyRoutinePredictor _queue_didEndMorningRoutine];
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__REDailyRoutinePredictor__queue_didEndMorningRoutine__block_invoke;
  v5[3] = &unk_2785FB2C8;
  v5[4] = self;
  [(REObservableSingleton *)self enumerateObservers:v5];
}

void __54__REDailyRoutinePredictor__queue_didEndMorningRoutine__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 dailyRoutinePredictorDidEndMorningRoutine:*(a1 + 32)];
  }
}

- (void)_queue_didBeginEveningRoutine
{
  [(REUpNextTimer *)self->_beginEveningRoutineTimer invalidate];
  beginEveningRoutineTimer = self->_beginEveningRoutineTimer;
  self->_beginEveningRoutineTimer = 0;

  [(REUpNextTimer *)self->_endEveningRoutineTimer invalidate];
  endEveningRoutineTimer = self->_endEveningRoutineTimer;
  self->_endEveningRoutineTimer = 0;

  v5 = RELogForDomain(8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [REDailyRoutinePredictor _queue_didBeginEveningRoutine];
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __56__REDailyRoutinePredictor__queue_didBeginEveningRoutine__block_invoke;
  v16[3] = &unk_2785FB2C8;
  v16[4] = self;
  [(REObservableSingleton *)self enumerateObservers:v16];
  intervalForCurrentPeriodOfDay = [(REPeriodOfDayPredictor *)self->_periodOfDayPredictor intervalForCurrentPeriodOfDay];
  v7 = [(REDailyRoutinePredictor *)self _eveningRoutineIntervalForEvening:intervalForCurrentPeriodOfDay];
  objc_initWeak(&location, self);
  startDate = [v7 startDate];
  v9 = [startDate dateByAddingTimeInterval:2.0];
  queue = self->_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__REDailyRoutinePredictor__queue_didBeginEveningRoutine__block_invoke_2;
  v13[3] = &unk_2785F9B58;
  objc_copyWeak(&v14, &location);
  v11 = [REUpNextTimer timerWithFireDate:v9 queue:queue block:v13];
  v12 = self->_endEveningRoutineTimer;
  self->_endEveningRoutineTimer = v11;

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __56__REDailyRoutinePredictor__queue_didBeginEveningRoutine__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 dailyRoutinePredictorDidBeginEveningRoutine:*(a1 + 32)];
  }
}

void __56__REDailyRoutinePredictor__queue_didBeginEveningRoutine__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _updateCurrentRoutine];
    [v2 _queue_didEndEveningRoutine];
    WeakRetained = v2;
  }
}

- (void)_queue_didEndEveningRoutine
{
  [(REUpNextTimer *)self->_beginEveningRoutineTimer invalidate];
  beginEveningRoutineTimer = self->_beginEveningRoutineTimer;
  self->_beginEveningRoutineTimer = 0;

  [(REUpNextTimer *)self->_endEveningRoutineTimer invalidate];
  endEveningRoutineTimer = self->_endEveningRoutineTimer;
  self->_endEveningRoutineTimer = 0;

  v5 = RELogForDomain(8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [REDailyRoutinePredictor _queue_didEndEveningRoutine];
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__REDailyRoutinePredictor__queue_didEndEveningRoutine__block_invoke;
  v6[3] = &unk_2785FB2C8;
  v6[4] = self;
  [(REObservableSingleton *)self enumerateObservers:v6];
}

void __54__REDailyRoutinePredictor__queue_didEndEveningRoutine__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 dailyRoutinePredictorDidEndEveningRoutine:*(a1 + 32)];
  }
}

- (void)_queue_setupMorningBeginTimerIfNeeded
{
  [(REUpNextTimer *)self->_endMorningRoutineTimer invalidate];
  endMorningRoutineTimer = self->_endMorningRoutineTimer;
  self->_endMorningRoutineTimer = 0;

  if ([(REPeriodOfDayPredictor *)self->_periodOfDayPredictor currentPeriodOfDay]== 2 && ![(REDailyRoutinePredictor *)self currentRoutineType])
  {
    intervalForCurrentPeriodOfDay = [(REPeriodOfDayPredictor *)self->_periodOfDayPredictor intervalForCurrentPeriodOfDay];
    v5 = [(REDailyRoutinePredictor *)self _morningRoutineIntervalForMorning:intervalForCurrentPeriodOfDay];
    objc_initWeak(&location, self);
    startDate = [v5 startDate];
    v7 = [startDate dateByAddingTimeInterval:2.0];
    queue = self->_queue;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __64__REDailyRoutinePredictor__queue_setupMorningBeginTimerIfNeeded__block_invoke;
    v11[3] = &unk_2785F9B58;
    objc_copyWeak(&v12, &location);
    v9 = [REUpNextTimer timerWithFireDate:v7 queue:queue block:v11];
    beginEveningRoutineTimer = self->_beginEveningRoutineTimer;
    self->_beginEveningRoutineTimer = v9;

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __64__REDailyRoutinePredictor__queue_setupMorningBeginTimerIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _updateCurrentRoutine];
    [v2 _queue_didBeginMorningRoutine];
    WeakRetained = v2;
  }
}

- (void)_queue_setupEveningBeginTimerIfNeeded
{
  [(REUpNextTimer *)self->_beginEveningRoutineTimer invalidate];
  beginEveningRoutineTimer = self->_beginEveningRoutineTimer;
  self->_beginEveningRoutineTimer = 0;

  [(REUpNextTimer *)self->_endEveningRoutineTimer invalidate];
  endEveningRoutineTimer = self->_endEveningRoutineTimer;
  self->_endEveningRoutineTimer = 0;

  if ([(REPeriodOfDayPredictor *)self->_periodOfDayPredictor currentPeriodOfDay]== 1 && ![(REDailyRoutinePredictor *)self currentRoutineType])
  {
    intervalForCurrentPeriodOfDay = [(REPeriodOfDayPredictor *)self->_periodOfDayPredictor intervalForCurrentPeriodOfDay];
    v6 = [(REDailyRoutinePredictor *)self _eveningRoutineIntervalForEvening:intervalForCurrentPeriodOfDay];
    objc_initWeak(&location, self);
    startDate = [v6 startDate];
    v8 = [startDate dateByAddingTimeInterval:2.0];
    queue = self->_queue;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __64__REDailyRoutinePredictor__queue_setupEveningBeginTimerIfNeeded__block_invoke;
    v12[3] = &unk_2785F9B58;
    objc_copyWeak(&v13, &location);
    v10 = [REUpNextTimer timerWithFireDate:v8 queue:queue block:v12];
    v11 = self->_beginEveningRoutineTimer;
    self->_beginEveningRoutineTimer = v10;

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __64__REDailyRoutinePredictor__queue_setupEveningBeginTimerIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _updateCurrentRoutine];
    [v2 _queue_didBeginEveningRoutine];
    WeakRetained = v2;
  }
}

- (void)_setOverrideRoutineType:(unint64_t)type
{
  if (type)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  }

  else
  {
    v4 = 0;
  }

  [(NSLock *)self->_routineLock lock];
  overrideRoutineType = self->_overrideRoutineType;
  self->_overrideRoutineType = v4;
  v6 = v4;

  [(NSLock *)self->_routineLock unlock];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__REDailyRoutinePredictor_RETrainingSimulation___setOverrideRoutineType___block_invoke;
  v7[3] = &unk_2785FB2C8;
  v7[4] = self;
  [(REObservableSingleton *)self enumerateObservers:v7];
}

@end