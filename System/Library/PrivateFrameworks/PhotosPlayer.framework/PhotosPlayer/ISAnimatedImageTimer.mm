@interface ISAnimatedImageTimer
+ (id)sharedTimer;
- (ISAnimatedImageTimer)init;
- (void)_animationTimerFired:(id)fired;
- (void)_fireTimerWithInterval:(double)interval;
- (void)_setTimestamp:(double)timestamp;
- (void)_updateDisplayLink;
- (void)dealloc;
- (void)hasObserversDidChange;
@end

@implementation ISAnimatedImageTimer

- (void)_animationTimerFired:(id)fired
{
  [fired timestamp];

  [(ISAnimatedImageTimer *)self _fireTimerWithInterval:?];
}

- (void)_setTimestamp:(double)timestamp
{
  if (self->_timestamp != timestamp)
  {
    self->_timestamp = timestamp;
    [(ISObservable *)self signalChange:1];
  }
}

- (void)_fireTimerWithInterval:(double)interval
{
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __47__ISAnimatedImageTimer__fireTimerWithInterval___block_invoke;
    v6[3] = &__block_descriptor_40_e30_v16__0__ISAnimatedImageTimer_8l;
    *&v6[4] = interval;
    [(ISObservable *)self performChanges:v6];
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__ISAnimatedImageTimer__fireTimerWithInterval___block_invoke_2;
    block[3] = &unk_279A2A410;
    block[4] = self;
    *&block[5] = interval;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

uint64_t __47__ISAnimatedImageTimer__fireTimerWithInterval___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __47__ISAnimatedImageTimer__fireTimerWithInterval___block_invoke_3;
  v3[3] = &__block_descriptor_40_e30_v16__0__ISAnimatedImageTimer_8l;
  v3[4] = *(a1 + 40);
  return [v1 performChanges:v3];
}

- (void)_updateDisplayLink
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__ISAnimatedImageTimer__updateDisplayLink__block_invoke;
  block[3] = &unk_279A2A180;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)hasObserversDidChange
{
  v3.receiver = self;
  v3.super_class = ISAnimatedImageTimer;
  [(ISObservable *)&v3 hasObserversDidChange];
  [(ISAnimatedImageTimer *)self _updateDisplayLink];
}

- (void)dealloc
{
  [(CADisplayLink *)self->_displayLink invalidate];
  displayLink = self->_displayLink;
  self->_displayLink = 0;

  v4.receiver = self;
  v4.super_class = ISAnimatedImageTimer;
  [(ISAnimatedImageTimer *)&v4 dealloc];
}

- (ISAnimatedImageTimer)init
{
  v6.receiver = self;
  v6.super_class = ISAnimatedImageTimer;
  v2 = [(ISObservable *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(_ISAnimatedImageTimerForwardingProxy);
    displayLinkProxy = v2->_displayLinkProxy;
    v2->_displayLinkProxy = v3;

    [(_ISAnimatedImageTimerForwardingProxy *)v2->_displayLinkProxy _setForwardingTarget:v2];
  }

  return v2;
}

+ (id)sharedTimer
{
  if (sharedTimer_onceToken != -1)
  {
    dispatch_once(&sharedTimer_onceToken, &__block_literal_global_2992);
  }

  v3 = sharedTimer__sharedTimer;

  return v3;
}

uint64_t __35__ISAnimatedImageTimer_sharedTimer__block_invoke()
{
  v0 = objc_alloc_init(ISAnimatedImageTimer);
  v1 = sharedTimer__sharedTimer;
  sharedTimer__sharedTimer = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end