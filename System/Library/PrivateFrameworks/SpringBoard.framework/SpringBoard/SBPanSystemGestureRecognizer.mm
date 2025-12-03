@interface SBPanSystemGestureRecognizer
- (SBPanSystemGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)dealloc;
- (void)invalidateNoHysterisisCancellationTimer;
- (void)reset;
- (void)setState:(int64_t)state;
- (void)setupNoHysterisisCancellationTimerIfNeeded;
- (void)touchesBegan:(id)began withEvent:(id)event;
@end

@implementation SBPanSystemGestureRecognizer

- (SBPanSystemGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v5.receiver = self;
  v5.super_class = SBPanSystemGestureRecognizer;
  result = [(SBPanSystemGestureRecognizer *)&v5 initWithTarget:target action:action];
  if (result)
  {
    result->_failsPastMaximumPressDurationWithoutHysteresis = 0;
    result->_maximumPressDuration = 2.0;
    result->_initialTouchReceivedTime = -1.79769313e308;
  }

  return result;
}

- (void)dealloc
{
  [(SBPanSystemGestureRecognizer *)self invalidateNoHysterisisCancellationTimer];
  v3.receiver = self;
  v3.super_class = SBPanSystemGestureRecognizer;
  [(SBPanSystemGestureRecognizer *)&v3 dealloc];
}

- (void)reset
{
  v3.receiver = self;
  v3.super_class = SBPanSystemGestureRecognizer;
  [(SBPanSystemGestureRecognizer *)&v3 reset];
  [(SBPanSystemGestureRecognizer *)self invalidateNoHysterisisCancellationTimer];
  self->_initialTouchReceived = 0;
}

- (void)setState:(int64_t)state
{
  failsPastMaximumPressDurationWithoutHysteresis = [(SBPanSystemGestureRecognizer *)self failsPastMaximumPressDurationWithoutHysteresis];
  if (state == 1 && failsPastMaximumPressDurationWithoutHysteresis)
  {
    BSContinuousMachTimeNow();
    v7 = v6 - self->_initialTouchReceivedTime;
    [(SBPanSystemGestureRecognizer *)self maximumPressDuration];
    if (v7 >= v8)
    {
      state = 5;
    }

    else
    {
      state = 1;
    }
  }

  noHysterisisCancellationTimer = self->_noHysterisisCancellationTimer;
  if (noHysterisisCancellationTimer)
  {
    [(NSTimer *)noHysterisisCancellationTimer invalidate];
    v10 = self->_noHysterisisCancellationTimer;
    self->_noHysterisisCancellationTimer = 0;
  }

  v11.receiver = self;
  v11.super_class = SBPanSystemGestureRecognizer;
  [(SBPanSystemGestureRecognizer *)&v11 setState:state];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  v10.receiver = self;
  v10.super_class = SBPanSystemGestureRecognizer;
  [(SBPanSystemGestureRecognizer *)&v10 touchesBegan:beganCopy withEvent:event];
  if (!self->_initialTouchReceived)
  {
    self->_initialTouchReceived = 1;
    BSContinuousMachTimeNow();
    self->_initialTouchReceivedTime = v7;
    [(SBPanSystemGestureRecognizer *)self setupNoHysterisisCancellationTimerIfNeeded];
    delegate = [(SBPanSystemGestureRecognizer *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      anyObject = [beganCopy anyObject];
      [delegate panSystemGestureRecognizer:self didReceiveInitialTouch:anyObject];
    }
  }
}

- (void)setupNoHysterisisCancellationTimerIfNeeded
{
  if ([(SBPanSystemGestureRecognizer *)self failsPastMaximumPressDurationWithoutHysteresis])
  {
    [(SBPanSystemGestureRecognizer *)self invalidateNoHysterisisCancellationTimer];
    objc_initWeak(&location, self);
    v3 = MEMORY[0x277CBEBB8];
    [(SBPanSystemGestureRecognizer *)self maximumPressDuration];
    v5 = v4;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __74__SBPanSystemGestureRecognizer_setupNoHysterisisCancellationTimerIfNeeded__block_invoke;
    v9[3] = &unk_2783AF5B0;
    objc_copyWeak(&v10, &location);
    v9[4] = self;
    v6 = [v3 timerWithTimeInterval:0 repeats:v9 block:v5];
    noHysterisisCancellationTimer = self->_noHysterisisCancellationTimer;
    self->_noHysterisisCancellationTimer = v6;

    currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
    [currentRunLoop addTimer:self->_noHysterisisCancellationTimer forMode:*MEMORY[0x277CBE738]];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __74__SBPanSystemGestureRecognizer_setupNoHysterisisCancellationTimerIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [*(a1 + 32) state];
    WeakRetained = v4;
    if (!v3)
    {
      [*(a1 + 32) setState:5];
      WeakRetained = v4;
    }
  }
}

- (void)invalidateNoHysterisisCancellationTimer
{
  noHysterisisCancellationTimer = self->_noHysterisisCancellationTimer;
  if (noHysterisisCancellationTimer)
  {
    [(NSTimer *)noHysterisisCancellationTimer invalidate];
    v4 = self->_noHysterisisCancellationTimer;
    self->_noHysterisisCancellationTimer = 0;
  }
}

@end