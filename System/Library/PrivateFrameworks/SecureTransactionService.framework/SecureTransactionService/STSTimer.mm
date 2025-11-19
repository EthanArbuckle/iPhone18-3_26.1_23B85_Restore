@interface STSTimer
- (STSTimer)initWithCallback:(id)a3 queue:(id)a4;
- (id)description;
- (id)initSleepTimerWithCallback:(id)a3 queue:(id)a4;
- (void)dealloc;
- (void)startTimer:(double)a3 leeway:(double)a4;
- (void)stopTimer;
@end

@implementation STSTimer

- (STSTimer)initWithCallback:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = STSTimer;
  v8 = [(STSTimer *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_queue, a4);
    v10 = dispatch_source_create(MEMORY[0x277D85D38], 1uLL, 0, v7);
    src = v9->_src;
    v9->_src = v10;

    dispatch_source_set_event_handler(v9->_src, v6);
    dispatch_activate(v9->_src);
    v9->_monotonic = 0;
  }

  return v9;
}

- (id)initSleepTimerWithCallback:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = STSTimer;
  v8 = [(STSTimer *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_queue, a4);
    v10 = dispatch_source_create(MEMORY[0x277D85D38], 2uLL, 0, v7);
    src = v9->_src;
    v9->_src = v10;

    dispatch_source_set_event_handler(v9->_src, v6);
    dispatch_activate(v9->_src);
    v9->_monotonic = 1;
  }

  return v9;
}

- (void)dealloc
{
  v3 = [(STSTimer *)self src];
  dispatch_source_cancel(v3);

  v4.receiver = self;
  v4.super_class = STSTimer;
  [(STSTimer *)&v4 dealloc];
}

- (void)startTimer:(double)a3 leeway:(double)a4
{
  if ([(STSTimer *)self monotonic])
  {
    v7 = 0x8000000000000000;
  }

  else
  {
    v7 = 0;
  }

  v8 = dispatch_time(v7, (a3 * 1000000000.0));
  if (dispatch_time_to_nsec())
  {
    [(STSTimer *)self setPopTimeInSeconds:0, 2];
  }

  dispatch_source_set_timer(self->_src, v8, 0xFFFFFFFFFFFFFFFFLL, (a4 * 1000000000.0));
}

- (void)stopTimer
{
  dispatch_source_set_timer(self->_src, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);

  [(STSTimer *)self setPopTimeInSeconds:0];
}

- (id)description
{
  if ([(STSTimer *)self popTimeInSeconds])
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"STSTimer: popTimeInSeconds: %llu", self->_popTimeInSeconds];
  }

  else
  {
    v3 = @"STSTimer: nil";
  }

  return v3;
}

@end