@interface SBIdleTimerProxy
+ (id)disabledIdleTimerProxy;
- (SBIdleTimerProxy)initWithIdleTimerSource:(id)source;
- (void)_logExpirationTimeout:(double)timeout;
- (void)reset;
- (void)setActivated:(BOOL)activated;
- (void)setSourceTimer:(id)timer;
@end

@implementation SBIdleTimerProxy

- (void)reset
{
  v4.receiver = self;
  v4.super_class = SBIdleTimerProxy;
  [(SBIdleTimerBase *)&v4 reset];
  sourceTimer = [(SBIdleTimerProxy *)self sourceTimer];
  [sourceTimer reset];
}

+ (id)disabledIdleTimerProxy
{
  v2 = [self alloc];
  v3 = objc_alloc_init(SBDisabledIdleTimer);
  v4 = [v2 initWithIdleTimerSource:v3];

  return v4;
}

- (SBIdleTimerProxy)initWithIdleTimerSource:(id)source
{
  sourceCopy = source;
  v9.receiver = self;
  v9.super_class = SBIdleTimerProxy;
  v6 = [(SBIdleTimerProxy *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sourceTimer, source);
    [sourceCopy addIdleTimerObserver:v7];
  }

  return v7;
}

- (void)setSourceTimer:(id)timer
{
  timerCopy = timer;
  sourceTimer = self->_sourceTimer;
  if (sourceTimer)
  {
    [(SBIdleTimer *)sourceTimer removeIdleTimerObserver:self];
  }

  v6 = self->_sourceTimer;
  self->_sourceTimer = timerCopy;
  v7 = timerCopy;

  [(SBIdleTimer *)v7 addIdleTimerObserver:self];
}

- (void)setActivated:(BOOL)activated
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBIdleTimerProxy.m" lineNumber:85 description:@"SBIdleTimerProxy should never be activated."];
}

- (void)_logExpirationTimeout:(double)timeout
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBIdleTimerProxy.m" lineNumber:91 description:@"SBIdleTimerProxy should never log expiration timeout"];
}

@end