@interface SBFDefaultDateProvider
- (SBFDefaultDateProvider)init;
- (id)observeMinuteUpdatesWithHandler:(id)a3;
- (void)_minuteTimerFired;
- (void)_scheduleNextMinuteTimer;
- (void)_updateMinuteTimer;
- (void)removeMinuteUpdateHandler:(id)a3;
@end

@implementation SBFDefaultDateProvider

- (SBFDefaultDateProvider)init
{
  v6.receiver = self;
  v6.super_class = SBFDefaultDateProvider;
  v2 = [(SBFDefaultDateProvider *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DEE8] autoupdatingCurrentCalendar];
    calendar = v2->_calendar;
    v2->_calendar = v3;
  }

  return v2;
}

- (id)observeMinuteUpdatesWithHandler:(id)a3
{
  v4 = a3;
  if (!self->_minuteHandlers)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    minuteHandlers = self->_minuteHandlers;
    self->_minuteHandlers = v5;
  }

  v7 = MEMORY[0x1E696AD98];
  ++self->_nextToken;
  v8 = [v7 numberWithUnsignedInteger:?];
  v9 = [v4 copy];
  v10 = MEMORY[0x1BFB4D9B0]();
  [(NSMutableDictionary *)self->_minuteHandlers setObject:v10 forKeyedSubscript:v8];

  [(SBFDefaultDateProvider *)self _updateMinuteTimer];

  return v8;
}

- (void)removeMinuteUpdateHandler:(id)a3
{
  [(NSMutableDictionary *)self->_minuteHandlers removeObjectForKey:a3];

  [(SBFDefaultDateProvider *)self _updateMinuteTimer];
}

- (void)_updateMinuteTimer
{
  v3 = [(NSMutableDictionary *)self->_minuteHandlers count];
  minuteTimer = self->_minuteTimer;
  if (v3)
  {
    if (!minuteTimer)
    {

      [(SBFDefaultDateProvider *)self _scheduleNextMinuteTimer];
      return;
    }
  }

  else if (!minuteTimer)
  {
    return;
  }

  if (![(NSMutableDictionary *)self->_minuteHandlers count])
  {
    [(NSTimer *)self->_minuteTimer invalidate];
    v5 = self->_minuteTimer;
    self->_minuteTimer = 0;
  }
}

- (void)_scheduleNextMinuteTimer
{
  v3 = [(SBFDefaultDateProvider *)self date];
  v9 = 0;
  v10 = 0;
  v7 = 0;
  v8 = 0;
  [(NSCalendar *)self->_calendar getHour:&v10 minute:&v9 second:&v8 nanosecond:&v7 fromDate:v3];
  v4 = 60.0 - (v7 / 1000000000.0 + v8);
  [(NSTimer *)self->_minuteTimer invalidate];
  v5 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__minuteTimerFired selector:0 userInfo:0 repeats:v4];
  minuteTimer = self->_minuteTimer;
  self->_minuteTimer = v5;
}

- (void)_minuteTimerFired
{
  v3 = [(SBFDefaultDateProvider *)self date];
  minuteHandlers = self->_minuteHandlers;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__SBFDefaultDateProvider__minuteTimerFired__block_invoke;
  v6[3] = &unk_1E807F560;
  v7 = v3;
  v5 = v3;
  [(NSMutableDictionary *)minuteHandlers enumerateKeysAndObjectsUsingBlock:v6];
  [(SBFDefaultDateProvider *)self _scheduleNextMinuteTimer];
}

@end