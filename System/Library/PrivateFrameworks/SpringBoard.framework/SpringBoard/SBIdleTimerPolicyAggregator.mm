@interface SBIdleTimerPolicyAggregator
- (SBIdleTimerPolicyAggregator)initWithBacklightController:(id)controller proximitySensorManager:(id)manager idleEventHandler:(id)handler;
- (id)_initWithBacklightController:(id)controller proximitySensorManager:(id)manager idleEventHandler:(id)handler globalStateMonitor:(id)monitor;
- (void)_setIdleTimer:(id)timer;
- (void)idleTimerDidExpire:(id)expire;
- (void)idleTimerDidRefresh:(id)refresh;
- (void)idleTimerDidResetForUserAttention:(id)attention;
- (void)idleTimerDidWarn:(id)warn;
- (void)idleTimerGlobalCoordinator:(id)coordinator didActivateIdleTimer:(id)timer;
@end

@implementation SBIdleTimerPolicyAggregator

- (SBIdleTimerPolicyAggregator)initWithBacklightController:(id)controller proximitySensorManager:(id)manager idleEventHandler:(id)handler
{
  handlerCopy = handler;
  managerCopy = manager;
  controllerCopy = controller;
  v11 = +[SBIdleTimerGlobalStateMonitor sharedInstance];
  v12 = [(SBIdleTimerPolicyAggregator *)self _initWithBacklightController:controllerCopy proximitySensorManager:managerCopy idleEventHandler:handlerCopy globalStateMonitor:v11];

  return v12;
}

- (id)_initWithBacklightController:(id)controller proximitySensorManager:(id)manager idleEventHandler:(id)handler globalStateMonitor:(id)monitor
{
  controllerCopy = controller;
  managerCopy = manager;
  handlerCopy = handler;
  monitorCopy = monitor;
  v18.receiver = self;
  v18.super_class = SBIdleTimerPolicyAggregator;
  v15 = [(SBIdleTimerPolicyAggregator *)&v18 init];
  p_isa = &v15->super.isa;
  if (v15)
  {
    objc_storeStrong(&v15->_backlightController, controller);
    objc_storeStrong(p_isa + 2, manager);
    objc_storeStrong(p_isa + 5, monitor);
    objc_storeStrong(p_isa + 4, handler);
  }

  return p_isa;
}

- (void)idleTimerDidRefresh:(id)refresh
{
  if ([(SBBacklightController *)self->_backlightController screenIsDim])
  {
    _backlightController = [(SBIdleTimerPolicyAggregator *)self _backlightController];
    [_backlightController _undimFromSource:8];
  }
}

- (void)idleTimerDidExpire:(id)expire
{
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([(SBIdleTimerIdleEventHandler *)self->_idleEventHandler handleIdleTimerDidExpire]& 1) == 0)
  {
    _SBSAutolockTimerPostExternalChangeNotification();
    _backlightController = [(SBIdleTimerPolicyAggregator *)self _backlightController];
    [_backlightController _startFadeOutAnimationFromLockSource:15];
  }
}

- (void)idleTimerDidResetForUserAttention:(id)attention
{
  if (((objc_opt_respondsToSelector() & 1) == 0 || ([(SBIdleTimerIdleEventHandler *)self->_idleEventHandler handleIdleTimerUserAttentionDidReset]& 1) == 0) && [(SBBacklightController *)self->_backlightController screenIsDim])
  {
    _backlightController = [(SBIdleTimerPolicyAggregator *)self _backlightController];
    [_backlightController _undimFromSource:8];
  }
}

- (void)idleTimerDidWarn:(id)warn
{
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([(SBIdleTimerIdleEventHandler *)self->_idleEventHandler handleIdleTimerDidWarn]& 1) == 0)
  {
    isObjectInProximity = [(SBProximitySensorManager *)self->_proximitySensorManager isObjectInProximity];
    backlightState = [(SBBacklightController *)self->_backlightController backlightState];
    if (!isObjectInProximity && backlightState == 1)
    {
      [(SBBacklightController *)self->_backlightController setBacklightState:2 source:8 animated:1 completion:0];

      _SBSAutolockTimerPostExternalChangeNotification();
    }
  }
}

- (void)idleTimerGlobalCoordinator:(id)coordinator didActivateIdleTimer:(id)timer
{
  [(SBIdleTimerPolicyAggregator *)self _setIdleTimer:timer];
  v5 = +[SBScreenLongevityController sharedInstanceIfExists];
  [v5 evaluateEnablement];

  if ([(SBBacklightController *)self->_backlightController screenIsDim])
  {
    _backlightController = [(SBIdleTimerPolicyAggregator *)self _backlightController];
    [_backlightController _undimFromSource:8];
  }
}

- (void)_setIdleTimer:(id)timer
{
  timerCopy = timer;
  [(SBIdleTimer *)self->_idleTimer removeIdleTimerObserver:self];
  idleTimer = self->_idleTimer;
  self->_idleTimer = timerCopy;
  v6 = timerCopy;

  [(SBIdleTimer *)v6 addIdleTimerObserver:self];
}

@end