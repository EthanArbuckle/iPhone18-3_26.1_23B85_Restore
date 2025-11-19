@interface SBIdleTimerInfo
- (SBIdleTimerInfo)initWithProvider:(id)a3 behavior:(id)a4 reason:(id)a5 idleTimerProxy:(id)a6;
- (SBIdleTimerProviding)provider;
@end

@implementation SBIdleTimerInfo

- (SBIdleTimerInfo)initWithProvider:(id)a3 behavior:(id)a4 reason:(id)a5 idleTimerProxy:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = SBIdleTimerInfo;
  v14 = [(SBIdleTimerInfo *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_provider, v10);
    objc_storeStrong(&v15->_behavior, a4);
    objc_storeStrong(&v15->_reason, a5);
    objc_storeStrong(&v15->_idleTimerProxy, a6);
  }

  return v15;
}

- (SBIdleTimerProviding)provider
{
  WeakRetained = objc_loadWeakRetained(&self->_provider);

  return WeakRetained;
}

@end