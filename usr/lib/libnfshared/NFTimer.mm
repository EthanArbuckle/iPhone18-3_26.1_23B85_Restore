@interface NFTimer
- (NFTimer)initWithCallback:(id)a3 queue:(id)a4;
- (double)remainingTime;
- (id)description;
- (id)initSleepTimerWithCallback:(id)a3 queue:(id)a4;
- (void)dealloc;
- (void)startTimer:(double)a3 leeway:(double)a4;
@end

@implementation NFTimer

- (NFTimer)initWithCallback:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = NFTimer;
  v8 = [(NFTimer *)&v12 init];
  if (v8)
  {
    v9 = dispatch_source_create(MEMORY[0x277D85D38], 1uLL, 0, v7);
    v10 = *(v8 + 1);
    *(v8 + 1) = v9;

    dispatch_source_set_event_handler(*(v8 + 1), v6);
    dispatch_activate(*(v8 + 1));
    *(v8 + 24) = 0;
  }

  return v8;
}

- (id)initSleepTimerWithCallback:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = NFTimer;
  v8 = [(NFTimer *)&v12 init];
  if (v8)
  {
    v9 = dispatch_source_create(MEMORY[0x277D85D38], 2uLL, 0, v7);
    v10 = *(v8 + 1);
    *(v8 + 1) = v9;

    dispatch_source_set_event_handler(*(v8 + 1), v6);
    dispatch_activate(*(v8 + 1));
    *(v8 + 24) = 1;
  }

  return v8;
}

- (void)dealloc
{
  dispatch_source_cancel(self->_src);
  v3.receiver = self;
  v3.super_class = NFTimer;
  [(NFTimer *)&v3 dealloc];
}

- (void)startTimer:(double)a3 leeway:(double)a4
{
  if (self->_monotonic)
  {
    v6 = 0x8000000000000000;
  }

  else
  {
    v6 = 0;
  }

  v7 = dispatch_time(v6, (a3 * 1000000000.0));
  if (dispatch_time_to_nsec())
  {
    self->_popTimeInSeconds = 0;
  }

  dispatch_source_set_timer(self->_src, v7, 0xFFFFFFFFFFFFFFFFLL, (a4 * 1000000000.0));
}

- (double)remainingTime
{
  if (self->_monotonic)
  {
    v3 = 0x8000000000000000;
  }

  else
  {
    v3 = 0;
  }

  dispatch_time(v3, 0);
  v4 = dispatch_time_to_nsec();
  result = -1.0;
  if (v4)
  {
    return self->_popTimeInSeconds - 0;
  }

  return result;
}

- (id)description
{
  if (self->_popTimeInSeconds)
  {
    v4 = objc_alloc(MEMORY[0x277CCACA8]);
    v6 = objc_msgSend_initWithFormat_(v4, v5, @"NFTimer: popTimeInSeconds: %llu", self->_popTimeInSeconds);
  }

  else
  {
    v6 = @"NFTimer: nil";
  }

  return v6;
}

@end