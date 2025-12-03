@interface REUpNextTimer
+ (REUpNextTimer)timerWithFireDate:(id)date queue:(id)queue block:(id)block;
+ (REUpNextTimer)timerWithFireInterval:(id)interval atRate:(double)rate queue:(id)queue block:(id)block;
- (BOOL)isValid;
- (REUpNextTimer)initWithDateInterval:(id)interval rate:(double)rate queue:(id)queue block:(id)block;
- (void)_handleTimer;
- (void)_rescheduleTimer;
- (void)_scheduleTimerWithInterval:(id)interval rate:(double)rate;
- (void)dealloc;
- (void)invalidate;
@end

@implementation REUpNextTimer

+ (REUpNextTimer)timerWithFireDate:(id)date queue:(id)queue block:(id)block
{
  v8 = MEMORY[0x277CCA970];
  blockCopy = block;
  queueCopy = queue;
  dateCopy = date;
  v12 = [[v8 alloc] initWithStartDate:dateCopy duration:0.0];

  v13 = [self timerWithFireInterval:v12 atRate:queueCopy queue:blockCopy block:0.0];

  return v13;
}

+ (REUpNextTimer)timerWithFireInterval:(id)interval atRate:(double)rate queue:(id)queue block:(id)block
{
  blockCopy = block;
  queueCopy = queue;
  intervalCopy = interval;
  v13 = [[self alloc] initWithDateInterval:intervalCopy rate:queueCopy queue:blockCopy block:rate];

  return v13;
}

- (REUpNextTimer)initWithDateInterval:(id)interval rate:(double)rate queue:(id)queue block:(id)block
{
  intervalCopy = interval;
  queueCopy = queue;
  blockCopy = block;
  v28.receiver = self;
  v28.super_class = REUpNextTimer;
  v14 = [(REUpNextTimer *)&v28 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_fireInterval, interval);
    v15->_rate = rate;
    v16 = MEMORY[0x22AABC5E0](blockCopy);
    block = v15->_block;
    v15->_block = v16;

    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s.RETimer", dispatch_queue_get_label(queueCopy)];
    v19 = dispatch_queue_create_with_target_V2([v18 UTF8String], 0, queueCopy);
    queue = v15->_queue;
    v15->_queue = v19;

    v21 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v15->_queue);
    [(REUpNextTimer *)v15 setDispatch_timer:v21];

    [(REUpNextTimer *)v15 _scheduleTimerWithInterval:intervalCopy rate:rate];
    objc_initWeak(&location, v15);
    dispatch_timer = [(REUpNextTimer *)v15 dispatch_timer];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __55__REUpNextTimer_initWithDateInterval_rate_queue_block___block_invoke;
    handler[3] = &unk_2785F9A90;
    objc_copyWeak(&v26, &location);
    dispatch_source_set_event_handler(dispatch_timer, handler);

    dispatch_timer2 = [(REUpNextTimer *)v15 dispatch_timer];
    dispatch_resume(dispatch_timer2);

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  return v15;
}

void __55__REUpNextTimer_initWithDateInterval_rate_queue_block___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleTimer];
}

- (void)dealloc
{
  dispatch_timer = [(REUpNextTimer *)self dispatch_timer];

  if (dispatch_timer)
  {
    dispatch_timer2 = [(REUpNextTimer *)self dispatch_timer];
    dispatch_source_cancel(dispatch_timer2);
  }

  v5.receiver = self;
  v5.super_class = REUpNextTimer;
  [(REUpNextTimer *)&v5 dealloc];
}

- (void)_scheduleTimerWithInterval:(id)interval rate:(double)rate
{
  intervalCopy = interval;
  if ([(REUpNextTimer *)self isValid])
  {
    date = [MEMORY[0x277CBEAA8] date];
    if ([(REUpNextTimer *)self _isNowRepeatingTimerWithCurrentDate:date])
    {
      lastFireDate = self->_lastFireDate;
      if (!lastFireDate)
      {
        objc_storeStrong(&self->_lastFireDate, date);
        lastFireDate = self->_lastFireDate;
      }

      startDate = [(NSDate *)lastFireDate dateByAddingTimeInterval:self->_rate];
      v10 = 1;
    }

    else
    {
      [intervalCopy duration];
      v13 = v12;
      v10 = v12 > 2.22044605e-16;
      endDate = [intervalCopy endDate];
      v15 = [endDate earlierDate:date];

      if (v15 != date)
      {
        [0 timeIntervalSinceDate:date];
        startDate = 0;
        v16 = -1;
        v17 = -1;
        if (v13 <= 2.22044605e-16)
        {
          goto LABEL_30;
        }

        goto LABEL_23;
      }

      startDate = [intervalCopy startDate];
    }

    [startDate timeIntervalSinceDate:date];
    if (startDate)
    {
      if (v18 > 0.0)
      {
        if (v18 <= 9223372040.0)
        {
          v19 = (v18 * 1000000000.0);
        }

        else
        {
          v19 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v16 = dispatch_walltime(0, v19);
        if (!v10)
        {
          goto LABEL_29;
        }

        goto LABEL_23;
      }

      v16 = 0;
    }

    else
    {
      v16 = -1;
    }

    if (!v10)
    {
LABEL_29:
      v17 = -1;
LABEL_30:
      dispatch_timer = [(REUpNextTimer *)self dispatch_timer];
      dispatch_source_set_timer(dispatch_timer, v16, v17, 0x1DCD6500uLL);

      goto LABEL_31;
    }

LABEL_23:
    if (rate > 1.84467441e10)
    {
      v17 = -1;
    }

    else
    {
      v17 = (rate * 1000000000.0);
    }

    if (v16 == -1 || v17)
    {
      goto LABEL_30;
    }

    [intervalCopy duration];
    v27 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    _REGenerateSimulatedCrash(@"UpNextBadTimerInterval", @"About to invoke dispatch with a zero repeat interval. repeats=%d start=%lld [interval duration]=%@ %016llX rate=%f leeway=%llu nextFireDate=%@ now=%@ interval=<<%@>>", v20, v21, v22, v23, v24, v25, 1);

    goto LABEL_29;
  }

  v11 = RELogForDomain(9);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [REUpNextTimer _scheduleTimerWithInterval:v11 rate:?];
  }

LABEL_31:
}

- (void)_handleTimer
{
  if (self->_block && [(REUpNextTimer *)self isValid])
  {
    (*(self->_block + 2))();
  }

  date = [MEMORY[0x277CBEAA8] date];
  lastFireDate = self->_lastFireDate;
  self->_lastFireDate = date;

  fireInterval = self->_fireInterval;
  if (fireInterval)
  {
    endDate = [(NSDateInterval *)fireInterval endDate];
    date2 = [MEMORY[0x277CBEAA8] date];
    v8 = [endDate compare:date2];

    if (v8 == -1)
    {

      [(REUpNextTimer *)self invalidate];
    }
  }
}

- (void)_rescheduleTimer
{
  if ([(REUpNextTimer *)self isValid])
  {
    date = [MEMORY[0x277CBEAA8] date];
    endDate = [(NSDateInterval *)self->_fireInterval endDate];
    v4 = [endDate compare:date];

    if (v4 == -1)
    {
      [(REUpNextTimer *)self _handleTimer];
    }

    else
    {
      [(REUpNextTimer *)self _scheduleTimerWithInterval:self->_fireInterval rate:self->_rate];
    }
  }
}

- (BOOL)isValid
{
  dispatch_timer = [(REUpNextTimer *)self dispatch_timer];
  v3 = dispatch_timer != 0;

  return v3;
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__REUpNextTimer_invalidate__block_invoke;
  block[3] = &unk_2785F9AB8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __27__REUpNextTimer_invalidate__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dispatch_timer];

  if (v2)
  {
    v3 = [*(a1 + 32) dispatch_timer];
    dispatch_source_cancel(v3);

    v4 = *(a1 + 32);

    [v4 setDispatch_timer:0];
  }
}

- (void)_scheduleTimerWithInterval:(uint64_t)a1 rate:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_22859F000, a2, OS_LOG_TYPE_ERROR, "Trying to schedule invalid timer %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end