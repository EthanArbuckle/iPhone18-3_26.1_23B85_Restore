@interface SBIdleTimerPolicyAggregator
- (SBIdleTimerPolicyAggregator)initWithBacklightController:(id)a3 proximitySensorManager:(id)a4 idleEventHandler:(id)a5;
- (id)_initWithBacklightController:(id)a3 proximitySensorManager:(id)a4 idleEventHandler:(id)a5 globalStateMonitor:(id)a6;
- (void)_setIdleTimer:(id)a3;
- (void)idleTimerDidExpire:(id)a3;
- (void)idleTimerDidRefresh:(id)a3;
- (void)idleTimerDidResetForUserAttention:(id)a3;
- (void)idleTimerDidWarn:(id)a3;
- (void)idleTimerGlobalCoordinator:(id)a3 didActivateIdleTimer:(id)a4;
@end

@implementation SBIdleTimerPolicyAggregator

- (SBIdleTimerPolicyAggregator)initWithBacklightController:(id)a3 proximitySensorManager:(id)a4 idleEventHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = +[SBIdleTimerGlobalStateMonitor sharedInstance];
  v12 = [(SBIdleTimerPolicyAggregator *)self _initWithBacklightController:v10 proximitySensorManager:v9 idleEventHandler:v8 globalStateMonitor:v11];

  return v12;
}

- (id)_initWithBacklightController:(id)a3 proximitySensorManager:(id)a4 idleEventHandler:(id)a5 globalStateMonitor:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = SBIdleTimerPolicyAggregator;
  v15 = [(SBIdleTimerPolicyAggregator *)&v18 init];
  p_isa = &v15->super.isa;
  if (v15)
  {
    objc_storeStrong(&v15->_backlightController, a3);
    objc_storeStrong(p_isa + 2, a4);
    objc_storeStrong(p_isa + 5, a6);
    objc_storeStrong(p_isa + 4, a5);
  }

  return p_isa;
}

- (void)idleTimerDidRefresh:(id)a3
{
  if ([(SBBacklightController *)self->_backlightController screenIsDim])
  {
    v4 = [(SBIdleTimerPolicyAggregator *)self _backlightController];
    [v4 _undimFromSource:8];
  }
}

- (void)idleTimerDidExpire:(id)a3
{
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([(SBIdleTimerIdleEventHandler *)self->_idleEventHandler handleIdleTimerDidExpire]& 1) == 0)
  {
    _SBSAutolockTimerPostExternalChangeNotification();
    v4 = [(SBIdleTimerPolicyAggregator *)self _backlightController];
    [v4 _startFadeOutAnimationFromLockSource:15];
  }
}

- (void)idleTimerDidResetForUserAttention:(id)a3
{
  if (((objc_opt_respondsToSelector() & 1) == 0 || ([(SBIdleTimerIdleEventHandler *)self->_idleEventHandler handleIdleTimerUserAttentionDidReset]& 1) == 0) && [(SBBacklightController *)self->_backlightController screenIsDim])
  {
    v4 = [(SBIdleTimerPolicyAggregator *)self _backlightController];
    [v4 _undimFromSource:8];
  }
}

- (void)idleTimerDidWarn:(id)a3
{
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([(SBIdleTimerIdleEventHandler *)self->_idleEventHandler handleIdleTimerDidWarn]& 1) == 0)
  {
    v4 = [(SBProximitySensorManager *)self->_proximitySensorManager isObjectInProximity];
    v5 = [(SBBacklightController *)self->_backlightController backlightState];
    if (!v4 && v5 == 1)
    {
      [(SBBacklightController *)self->_backlightController setBacklightState:2 source:8 animated:1 completion:0];

      _SBSAutolockTimerPostExternalChangeNotification();
    }
  }
}

- (void)idleTimerGlobalCoordinator:(id)a3 didActivateIdleTimer:(id)a4
{
  [(SBIdleTimerPolicyAggregator *)self _setIdleTimer:a4];
  v5 = +[SBScreenLongevityController sharedInstanceIfExists];
  [v5 evaluateEnablement];

  if ([(SBBacklightController *)self->_backlightController screenIsDim])
  {
    v6 = [(SBIdleTimerPolicyAggregator *)self _backlightController];
    [v6 _undimFromSource:8];
  }
}

- (void)_setIdleTimer:(id)a3
{
  v4 = a3;
  [(SBIdleTimer *)self->_idleTimer removeIdleTimerObserver:self];
  idleTimer = self->_idleTimer;
  self->_idleTimer = v4;
  v6 = v4;

  [(SBIdleTimer *)v6 addIdleTimerObserver:self];
}

@end