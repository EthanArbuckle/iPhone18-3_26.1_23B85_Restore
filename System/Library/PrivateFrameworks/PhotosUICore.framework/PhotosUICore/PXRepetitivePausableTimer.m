@interface PXRepetitivePausableTimer
- (PXRepetitivePausableTimer)initWithRepeatedInterval:(double)a3 initialTrigger:(BOOL)a4 target:(id)a5;
- (void)_startTimer;
- (void)_stopTimer;
- (void)_unpauseWithReasons:(int)a3;
- (void)pause;
- (void)reset;
@end

@implementation PXRepetitivePausableTimer

- (void)reset
{
  [(PXRepetitivePausableTimer *)self _stopTimer];

  [(PXRepetitivePausableTimer *)self _startTimer];
}

- (void)_unpauseWithReasons:(int)a3
{
  v3 = self->_reasonsToPause - a3;
  self->_reasonsToPause = v3;
  if (!v3)
  {
    [(PXRepetitivePausableTimer *)self _startTimer];
  }
}

- (void)pause
{
  [(PXRepetitivePausableTimer *)self _stopTimer];

  [(PXRepetitivePausableTimer *)self _pauseWithReasons:1];
}

- (void)_startTimer
{
  v3 = [MEMORY[0x1E695DFF0] px_scheduledTimerWithTimeInterval:self weakTarget:sel__handleTimer_ selector:0 userInfo:1 repeats:self->_repetitiveInterval];
  timer = self->_timer;
  self->_timer = v3;
}

- (void)_stopTimer
{
  timer = self->_timer;
  if (timer)
  {
    [(NSTimer *)timer invalidate];
    v4 = self->_timer;
    self->_timer = 0;
  }
}

- (PXRepetitivePausableTimer)initWithRepeatedInterval:(double)a3 initialTrigger:(BOOL)a4 target:(id)a5
{
  v7 = a5;
  v14.receiver = self;
  v14.super_class = PXRepetitivePausableTimer;
  v8 = [(PXRepetitivePausableTimer *)&v14 init];
  v9 = v8;
  if (v8)
  {
    v8->_repetitiveInterval = a3;
    v10 = _Block_copy(v7);
    callBlock = v9->_callBlock;
    v9->_callBlock = v10;

    v9->_reasonsToPause = 0;
    v12 = [MEMORY[0x1E695DFF0] px_scheduledTimerWithTimeInterval:v9 weakTarget:sel__handleTimer_ selector:0 userInfo:0 repeats:0.0];
    [(PXRepetitivePausableTimer *)v9 _startTimer];
  }

  return v9;
}

@end