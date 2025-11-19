@interface PROverridableDateProvider
- (NSDate)date;
- (PROverridableDateProvider)init;
- (void)_minuteTimerFired;
- (void)_notifyObserversDidUpdateDate:(id)a3;
- (void)_scheduleNextMinuteTimer;
- (void)_updateMinuteTimer;
- (void)addMinuteUpdateObserver:(id)a3;
- (void)removeMinuteUpdateObserver:(id)a3;
- (void)setOverrideDate:(id)a3;
@end

@implementation PROverridableDateProvider

- (PROverridableDateProvider)init
{
  v6.receiver = self;
  v6.super_class = PROverridableDateProvider;
  v2 = [(PROverridableDateProvider *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DEE8] autoupdatingCurrentCalendar];
    calendar = v2->_calendar;
    v2->_calendar = v3;
  }

  return v2;
}

- (void)setOverrideDate:(id)a3
{
  v7 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = [v7 copy];
    overrideDate = self->_overrideDate;
    self->_overrideDate = v4;

    [(PROverridableDateProvider *)self _updateMinuteTimer];
    v6 = [(PROverridableDateProvider *)self date];
    [(PROverridableDateProvider *)self _notifyObserversDidUpdateDate:v6];
  }
}

- (NSDate)date
{
  v2 = self->_overrideDate;
  if (!v2)
  {
    v2 = [MEMORY[0x1E695DF00] date];
  }

  return v2;
}

- (void)addMinuteUpdateObserver:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    minuteObservers = self->_minuteObservers;
    v9 = v5;
    if (!minuteObservers)
    {
      v7 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      v8 = self->_minuteObservers;
      self->_minuteObservers = v7;

      minuteObservers = self->_minuteObservers;
    }

    [(NSHashTable *)minuteObservers addObject:v9];
    v4 = [(PROverridableDateProvider *)self _updateMinuteTimer];
    v5 = v9;
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)removeMinuteUpdateObserver:(id)a3
{
  if (a3)
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
  v3 = [(PROverridableDateProvider *)self date];
  v18 = 0;
  v16 = 0;
  v17 = 0;
  v15 = 0;
  [(NSCalendar *)self->_calendar getHour:&v18 minute:&v17 second:&v16 nanosecond:&v15 fromDate:v3];
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

  v8 = [MEMORY[0x1E695DFD0] currentRunLoop];
  [v8 addTimer:self->_minuteTimer forMode:*MEMORY[0x1E695DA28]];

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
  v3 = [(PROverridableDateProvider *)self date];
  [v3 timeIntervalSince1970];
  v6 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:ceil(v4)];

  [(PROverridableDateProvider *)self _notifyObserversDidUpdateDate:v6];
  [(NSTimer *)self->_minuteTimer invalidate];
  minuteTimer = self->_minuteTimer;
  self->_minuteTimer = 0;

  [(PROverridableDateProvider *)self _updateMinuteTimer];
}

- (void)_notifyObserversDidUpdateDate:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(NSHashTable *)self->_minuteObservers allObjects];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) dateProvider:self didUpdateDate:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end