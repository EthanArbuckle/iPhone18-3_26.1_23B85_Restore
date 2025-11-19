@interface SBIdleTimerProxy
+ (id)disabledIdleTimerProxy;
- (SBIdleTimerProxy)initWithIdleTimerSource:(id)a3;
- (void)_logExpirationTimeout:(double)a3;
- (void)reset;
- (void)setActivated:(BOOL)a3;
- (void)setSourceTimer:(id)a3;
@end

@implementation SBIdleTimerProxy

- (void)reset
{
  v4.receiver = self;
  v4.super_class = SBIdleTimerProxy;
  [(SBIdleTimerBase *)&v4 reset];
  v3 = [(SBIdleTimerProxy *)self sourceTimer];
  [v3 reset];
}

+ (id)disabledIdleTimerProxy
{
  v2 = [a1 alloc];
  v3 = objc_alloc_init(SBDisabledIdleTimer);
  v4 = [v2 initWithIdleTimerSource:v3];

  return v4;
}

- (SBIdleTimerProxy)initWithIdleTimerSource:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBIdleTimerProxy;
  v6 = [(SBIdleTimerProxy *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sourceTimer, a3);
    [v5 addIdleTimerObserver:v7];
  }

  return v7;
}

- (void)setSourceTimer:(id)a3
{
  v4 = a3;
  sourceTimer = self->_sourceTimer;
  if (sourceTimer)
  {
    [(SBIdleTimer *)sourceTimer removeIdleTimerObserver:self];
  }

  v6 = self->_sourceTimer;
  self->_sourceTimer = v4;
  v7 = v4;

  [(SBIdleTimer *)v7 addIdleTimerObserver:self];
}

- (void)setActivated:(BOOL)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"SBIdleTimerProxy.m" lineNumber:85 description:@"SBIdleTimerProxy should never be activated."];
}

- (void)_logExpirationTimeout:(double)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"SBIdleTimerProxy.m" lineNumber:91 description:@"SBIdleTimerProxy should never log expiration timeout"];
}

@end