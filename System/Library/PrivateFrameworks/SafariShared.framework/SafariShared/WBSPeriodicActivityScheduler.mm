@interface WBSPeriodicActivityScheduler
- (WBSPeriodicActivityScheduler)initWithInterval:(double)interval minimumDelay:(double)delay lastFireDate:(id)date block:(id)block;
- (void)_performActivity;
- (void)_scheduleActivityWithInterval:(double)interval;
- (void)invalidate;
@end

@implementation WBSPeriodicActivityScheduler

- (WBSPeriodicActivityScheduler)initWithInterval:(double)interval minimumDelay:(double)delay lastFireDate:(id)date block:(id)block
{
  dateCopy = date;
  blockCopy = block;
  v23.receiver = self;
  v23.super_class = WBSPeriodicActivityScheduler;
  v12 = [(WBSPeriodicActivityScheduler *)&v23 init];
  if (v12)
  {
    v13 = dispatch_queue_create("com.apple.SafariShared.WBSPeriodicActivityScheduler", 0);
    queue = v12->_queue;
    v12->_queue = v13;

    v12->_interval = interval;
    v15 = MEMORY[0x1BFB13CE0](blockCopy);
    block = v12->_block;
    v12->_block = v15;

    if (!dateCopy)
    {
      dateCopy = [MEMORY[0x1E695DF00] distantPast];
    }

    [dateCopy timeIntervalSinceNow];
    v18 = v17 + interval;
    delayCopy = 0.0;
    if (v18 > 0.0)
    {
      [dateCopy timeIntervalSinceNow];
      delayCopy = v20 + interval;
    }

    if (delayCopy < delay)
    {
      delayCopy = delay;
    }

    [(WBSPeriodicActivityScheduler *)v12 _scheduleActivityWithInterval:delayCopy];
    v21 = v12;
  }

  return v12;
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__WBSPeriodicActivityScheduler_invalidate__block_invoke;
  block[3] = &unk_1E7FB6D90;
  block[4] = self;
  dispatch_async(queue, block);
}

void __42__WBSPeriodicActivityScheduler_invalidate__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 40) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  *(*(a1 + 32) + 16) = 1;
}

- (void)_scheduleActivityWithInterval:(double)interval
{
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __62__WBSPeriodicActivityScheduler__scheduleActivityWithInterval___block_invoke;
  v4[3] = &unk_1E7FB74E0;
  v4[4] = self;
  *&v4[5] = interval;
  dispatch_async(queue, v4);
}

void __62__WBSPeriodicActivityScheduler__scheduleActivityWithInterval___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 16) & 1) == 0)
  {
    v4 = fmin(*(a1 + 40) * 0.5, 3600.0);
    [*(v2 + 40) invalidate];
    v9 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:*(a1 + 40)];
    v5 = [objc_alloc(MEMORY[0x1E695DFF0]) initWithFireDate:v9 interval:*(a1 + 32) target:sel__timerDidFire_ selector:0 userInfo:0 repeats:0.0];
    v6 = *(a1 + 32);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    [*(*(a1 + 32) + 40) setTolerance:v4];
    v8 = [MEMORY[0x1E695DFD0] mainRunLoop];
    [v8 addTimer:*(*(a1 + 32) + 40) forMode:*MEMORY[0x1E695DA28]];
  }
}

- (void)_performActivity
{
  v3 = dispatch_get_global_queue(9, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__WBSPeriodicActivityScheduler__performActivity__block_invoke;
  block[3] = &unk_1E7FB6D90;
  block[4] = self;
  dispatch_async(v3, block);
}

uint64_t __48__WBSPeriodicActivityScheduler__performActivity__block_invoke(uint64_t a1)
{
  (*(*(*(a1 + 32) + 8) + 16))();
  v2 = *(a1 + 32);
  v3 = v2[3];

  return [v2 _scheduleActivityWithInterval:v3];
}

@end