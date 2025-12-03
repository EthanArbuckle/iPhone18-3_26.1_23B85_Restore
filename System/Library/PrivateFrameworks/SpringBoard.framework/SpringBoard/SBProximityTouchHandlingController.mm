@interface SBProximityTouchHandlingController
- (SBProximityTouchHandlingController)initWithSettings:(id)settings touchHandlingDelegate:(id)delegate;
- (void)_createNewWindow;
- (void)invalidate;
- (void)setAbsorbTouchesBelowStatusBar:(BOOL)bar;
- (void)setStatusBarHeight:(double)height;
- (void)windowSceneDidConnect:(id)connect;
@end

@implementation SBProximityTouchHandlingController

- (SBProximityTouchHandlingController)initWithSettings:(id)settings touchHandlingDelegate:(id)delegate
{
  settingsCopy = settings;
  delegateCopy = delegate;
  v11.receiver = self;
  v11.super_class = SBProximityTouchHandlingController;
  v8 = [(SBProximityTouchHandlingController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(SBProximityTouchHandlingController *)v8 initWithSettings:delegateCopy touchHandlingDelegate:settingsCopy];
  }

  return v9;
}

- (void)invalidate
{
  [(UIWindow *)self->_proxTouchHandlingWindow setHidden:1];
  proxTouchHandlingWindow = self->_proxTouchHandlingWindow;
  self->_proxTouchHandlingWindow = 0;
}

- (void)windowSceneDidConnect:(id)connect
{
  connectCopy = connect;
  objc_storeStrong(&self->_windowScene, connect);
  proxTouchHandlingWindow = self->_proxTouchHandlingWindow;
  if (proxTouchHandlingWindow)
  {
    windowScene = [(UIWindow *)proxTouchHandlingWindow windowScene];

    if (windowScene != connectCopy)
    {
      [(UIWindow *)self->_proxTouchHandlingWindow setWindowScene:connectCopy];
    }
  }
}

- (void)setAbsorbTouchesBelowStatusBar:(BOOL)bar
{
  barCopy = bar;
  v16 = *MEMORY[0x277D85DE8];
  if (!self->_proxTouchHandlingWindow)
  {
    _createNewWindow = [(SBProximityTouchHandlingController *)self _createNewWindow];
    proxTouchHandlingWindow = self->_proxTouchHandlingWindow;
    self->_proxTouchHandlingWindow = _createNewWindow;
  }

  v5 = SBLogProximitySensor();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (!barCopy)
  {
    if (v6)
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Not absorbing touches", &v14, 2u);
    }

    [(UIWindow *)self->_proxTouchHandlingWindow setHidden:1];
    [(BSInvalidatable *)self->_suppressSystemGestures invalidate];
    suppressSystemGestures = self->_suppressSystemGestures;
    self->_suppressSystemGestures = 0;
    goto LABEL_12;
  }

  if (v6)
  {
    statusBarHeight = self->_statusBarHeight;
    v14 = 134217984;
    v15 = statusBarHeight;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Absorbing touches below y:%g", &v14, 0xCu);
  }

  [(UIWindow *)self->_proxTouchHandlingWindow setHidden:0];
  if (!self->_suppressSystemGestures && self->_statusBarHeight == 0.0)
  {
    BKSHIDServicesCancelTouchesOnMainDisplay();
    suppressSystemGestures = +[SBSystemGestureManager mainDisplayManager];
    v9 = +[SBSystemGestureManager deviceHardwareButtonGestureTypes];
    v10 = [suppressSystemGestures acquireSystemGestureDisableAssertionForReason:@"objectInProximity" exceptSystemGestureTypes:v9];
    v11 = self->_suppressSystemGestures;
    self->_suppressSystemGestures = v10;

LABEL_12:
  }
}

- (void)setStatusBarHeight:(double)height
{
  if (self->_statusBarHeight != height)
  {
    self->_statusBarHeight = height;
    [(_SBProximityTouchHandlingViewController *)self->_proxTouchHandlingViewController setStatusBarHeight:height];
  }
}

- (void)_createNewWindow
{
  if (self)
  {
    selfCopy = self;
    if (!self[4])
    {
      v3 = SBLogCommon();
      v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);

      if (v4)
      {
        NSLog(&cfstr_TryingToCreate.isa);
      }
    }

    self = [_SBProximityTouchHandlingWindow proximityTouchHandlingWindowWithScene:selfCopy[6] viewController:?];
    v1 = vars8;
  }

  return self;
}

- (uint64_t)initWithSettings:(void *)a3 touchHandlingDelegate:.cold.1(uint64_t a1, void *a2, void *a3)
{
  v6 = objc_alloc_init(_SBProximityTouchHandlingViewController);
  v7 = *(a1 + 48);
  *(a1 + 48) = v6;

  [(_SBProximityTouchHandlingViewController *)*(a1 + 48) setDelegate:a2];
  [(_SBProximityTouchHandlingViewController *)*(a1 + 48) setProximitySettings:a3];
  return BKSHIDServicesSetObjectInProximityIgnoresTouches();
}

@end