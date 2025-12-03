@interface WFAutoIncrementingProgress
- (WFAutoIncrementingProgress)initWithParent:(id)parent pendingUnitCount:(unint64_t)count duration:(double)duration;
- (void)cancel;
- (void)finish;
- (void)start;
@end

@implementation WFAutoIncrementingProgress

- (void)finish
{
  [(WFAutoIncrementingProgress *)self cancel];
  totalUnitCount = [(WFAutoIncrementingProgress *)self totalUnitCount];

  [(WFAutoIncrementingProgress *)self setCompletedUnitCount:totalUnitCount];
}

- (void)cancel
{
  timer = self->_timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
    v4 = self->_timer;
    self->_timer = 0;
  }

  progressTimer = self->_progressTimer;
  if (progressTimer)
  {
    dispatch_source_cancel(progressTimer);
    v6 = self->_progressTimer;
    self->_progressTimer = 0;
  }
}

- (void)start
{
  timer = [(WFAutoIncrementingProgress *)self timer];
  if (timer)
  {
  }

  else
  {
    [(WFAutoIncrementingProgress *)self duration];
    if (v4 != 0.0)
    {
      v5 = MEMORY[0x1E69E9710];
      v6 = MEMORY[0x1E69E96A0];
      v7 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
      dispatch_source_set_timer(v7, 0, 0x5F5E100uLL, 0x1DCD6500uLL);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __35__WFAutoIncrementingProgress_start__block_invoke;
      handler[3] = &unk_1E837FA70;
      handler[4] = self;
      dispatch_source_set_event_handler(v7, handler);
      v8 = dispatch_source_create(v5, 0, 0, v6);

      [(WFAutoIncrementingProgress *)self duration];
      v10 = dispatch_time(0, (v9 * 1000000000.0));
      dispatch_source_set_timer(v8, v10, 0xFFFFFFFFFFFFFFFFLL, 0x2FAF080uLL);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __35__WFAutoIncrementingProgress_start__block_invoke_2;
      v15[3] = &unk_1E837FA70;
      v15[4] = self;
      dispatch_source_set_event_handler(v8, v15);
      progressTimer = self->_progressTimer;
      self->_progressTimer = v7;
      v12 = v7;

      timer = self->_timer;
      self->_timer = v8;
      v14 = v8;

      dispatch_resume(v12);
      dispatch_resume(v14);
    }
  }
}

uint64_t __35__WFAutoIncrementingProgress_start__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 completedUnitCount] + 1;

  return [v1 setCompletedUnitCount:v2];
}

- (WFAutoIncrementingProgress)initWithParent:(id)parent pendingUnitCount:(unint64_t)count duration:(double)duration
{
  parentCopy = parent;
  v13.receiver = self;
  v13.super_class = WFAutoIncrementingProgress;
  v9 = [(WFAutoIncrementingProgress *)&v13 initWithParent:0 userInfo:0];
  v10 = v9;
  if (v9)
  {
    v9->_duration = duration;
    [(WFAutoIncrementingProgress *)v9 setTotalUnitCount:(duration / 0.1)];
    [parentCopy addChild:v10 withPendingUnitCount:count];
    v11 = v10;
  }

  return v10;
}

@end