@interface PROverridableDateProvider
- (NSDate)date;
- (PROverridableDateProvider)init;
- (void)_minuteTimerFired;
- (void)_notifyObserversDidUpdateDate:(id)date;
- (void)_scheduleNextMinuteTimer;
- (void)_updateMinuteTimer;
- (void)addMinuteUpdateObserver:(id)observer;
- (void)removeMinuteUpdateObserver:(id)observer;
- (void)setOverrideDate:(id)date;
@end

@implementation PROverridableDateProvider

- (PROverridableDateProvider)init
{
  v6.receiver = self;
  v6.super_class = PROverridableDateProvider;
  v2 = [(PROverridableDateProvider *)&v6 init];
  if (v2)
  {
    autoupdatingCurrentCalendar = [MEMORY[0x1E695DEE8] autoupdatingCurrentCalendar];
    calendar = v2->_calendar;
    v2->_calendar = autoupdatingCurrentCalendar;
  }

  return v2;
}

- (void)setOverrideDate:(id)date
{
  dateCopy = date;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = [dateCopy copy];
    overrideDate = self->_overrideDate;
    self->_overrideDate = v4;

    [(PROverridableDateProvider *)self _updateMinuteTimer];
    date = [(PROverridableDateProvider *)self date];
    [(PROverridableDateProvider *)self _notifyObserversDidUpdateDate:date];
  }
}

- (NSDate)date
{
  date = self->_overrideDate;
  if (!date)
  {
    date = [MEMORY[0x1E695DF00] date];
  }

  return date;
}

- (void)addMinuteUpdateObserver:(id)observer
{
  observerCopy = observer;
  v5 = observerCopy;
  if (observerCopy)
  {
    minuteObservers = self->_minuteObservers;
    v9 = v5;
    if (!minuteObservers)
    {
      weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      v8 = self->_minuteObservers;
      self->_minuteObservers = weakObjectsHashTable;

      minuteObservers = self->_minuteObservers;
    }

    [(NSHashTable *)minuteObservers addObject:v9];
    observerCopy = [(PROverridableDateProvider *)self _updateMinuteTimer];
    v5 = v9;
  }

  MEMORY[0x1EEE66BB8](observerCopy, v5);
}

- (void)removeMinuteUpdateObserver:(id)observer
{
  if (observer)
  {
    [(NSHashTable *)self->_minuteObservers removeObject:?];

    [(PROverridableDateProvider *)self _updateMinuteTimer];
  }
}

- (void)_updateMinuteTimer
{
  if ([(NSHashTable *)self->_minuteObservers count])
  {
    minuteTimer = self->_minuteTimer;
    v4 = self->_overrideDate == 0;
    if (minuteTimer == 0 && v4)
    {

      [(PROverridableDateProvider *)self _scheduleNextMinuteTimer];
      return;
    }

    p_minuteTimer = &self->_minuteTimer;
    if (!minuteTimer)
    {
      return;
    }
  }

  else
  {
    v4 = 0;
    v6 = self->_minuteTimer;
    p_minuteTimer = &self->_minuteTimer;
    minuteTimer = v6;
    if (!v6)
    {
      return;
    }
  }

  if (!v4)
  {
    [(NSTimer *)minuteTimer invalidate];
    v7 = *p_minuteTimer;
    *p_minuteTimer = 0;
  }
}

- (void)_scheduleNextMinuteTimer
{
  date = [(PROverridableDateProvider *)self date];
  v18 = 0;
  v16 = 0;
  v17 = 0;
  v15 = 0;
  [(NSCalendar *)self->_calendar getHour:&v18 minute:&v17 second:&v16 nanosecond:&v15 fromDate:date];
  v4 = 60.0 - (v15 / 1000000000.0 + v16);
  [(NSTimer *)self->_minuteTimer invalidate];
  objc_initWeak(&location, self);
  v5 = MEMORY[0x1E695DFF0];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __53__PROverridableDateProvider__scheduleNextMinuteTimer__block_invoke;
  v12 = &unk_1E7844DE0;
  objc_copyWeak(&v13, &location);
  v6 = [v5 timerWithTimeInterval:0 repeats:&v9 block:v4];
  minuteTimer = self->_minuteTimer;
  self->_minuteTimer = v6;

  currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
  [currentRunLoop addTimer:self->_minuteTimer forMode:*MEMORY[0x1E695DA28]];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __53__PROverridableDateProvider__scheduleNextMinuteTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _minuteTimerFired];
    WeakRetained = v2;
  }
}

- (void)_minuteTimerFired
{
  date = [(PROverridableDateProvider *)self date];
  [date timeIntervalSince1970];
  v6 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:ceil(v4)];

  [(PROverridableDateProvider *)self _notifyObserversDidUpdateDate:v6];
  [(NSTimer *)self->_minuteTimer invalidate];
  minuteTimer = self->_minuteTimer;
  self->_minuteTimer = 0;

  [(PROverridableDateProvider *)self _updateMinuteTimer];
}

- (void)_notifyObserversDidUpdateDate:(id)date
{
  v15 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  allObjects = [(NSHashTable *)self->_minuteObservers allObjects];
  v6 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(allObjects);
        }

        [*(*(&v10 + 1) + 8 * v9++) dateProvider:self didUpdateDate:dateCopy];
      }

      while (v7 != v9);
      v7 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end