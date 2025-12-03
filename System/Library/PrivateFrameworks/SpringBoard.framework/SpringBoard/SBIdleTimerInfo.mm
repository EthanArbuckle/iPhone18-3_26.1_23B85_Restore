@interface SBIdleTimerInfo
- (SBIdleTimerInfo)initWithProvider:(id)provider behavior:(id)behavior reason:(id)reason idleTimerProxy:(id)proxy;
- (SBIdleTimerProviding)provider;
@end

@implementation SBIdleTimerInfo

- (SBIdleTimerInfo)initWithProvider:(id)provider behavior:(id)behavior reason:(id)reason idleTimerProxy:(id)proxy
{
  providerCopy = provider;
  behaviorCopy = behavior;
  reasonCopy = reason;
  proxyCopy = proxy;
  v17.receiver = self;
  v17.super_class = SBIdleTimerInfo;
  v14 = [(SBIdleTimerInfo *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_provider, providerCopy);
    objc_storeStrong(&v15->_behavior, behavior);
    objc_storeStrong(&v15->_reason, reason);
    objc_storeStrong(&v15->_idleTimerProxy, proxy);
  }

  return v15;
}

- (SBIdleTimerProviding)provider
{
  WeakRetained = objc_loadWeakRetained(&self->_provider);

  return WeakRetained;
}

@end