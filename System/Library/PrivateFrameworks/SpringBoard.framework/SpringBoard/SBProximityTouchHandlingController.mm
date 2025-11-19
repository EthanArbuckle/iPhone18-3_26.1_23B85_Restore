@interface SBProximityTouchHandlingController
- (SBProximityTouchHandlingController)initWithSettings:(id)a3 touchHandlingDelegate:(id)a4;
- (void)_createNewWindow;
- (void)invalidate;
- (void)setAbsorbTouchesBelowStatusBar:(BOOL)a3;
- (void)setStatusBarHeight:(double)a3;
- (void)windowSceneDidConnect:(id)a3;
@end

@implementation SBProximityTouchHandlingController

- (SBProximityTouchHandlingController)initWithSettings:(id)a3 touchHandlingDelegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = SBProximityTouchHandlingController;
  v8 = [(SBProximityTouchHandlingController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(SBProximityTouchHandlingController *)v8 initWithSettings:v7 touchHandlingDelegate:v6];
  }

  return v9;
}

- (void)invalidate
{
  [(UIWindow *)self->_proxTouchHandlingWindow setHidden:1];
  proxTouchHandlingWindow = self->_proxTouchHandlingWindow;
  self->_proxTouchHandlingWindow = 0;
}

- (void)windowSceneDidConnect:(id)a3
{
  v7 = a3;
  objc_storeStrong(&self->_windowScene, a3);
  proxTouchHandlingWindow = self->_proxTouchHandlingWindow;
  if (proxTouchHandlingWindow)
  {
    v6 = [(UIWindow *)proxTouchHandlingWindow windowScene];

    if (v6 != v7)
    {
      [(UIWindow *)self->_proxTouchHandlingWindow setWindowScene:v7];
    }
  }
}

- (void)setAbsorbTouchesBelowStatusBar:(BOOL)a3
{
  v3 = a3;
  v16 = *MEMORY[0x277D85DE8];
  if (!self->_proxTouchHandlingWindow)
  {
    v12 = [(SBProximityTouchHandlingController *)self _createNewWindow];
    proxTouchHandlingWindow = self->_proxTouchHandlingWindow;
    self->_proxTouchHandlingWindow = v12;
  }

  v5 = SBLogProximitySensor();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (!v3)
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

- (void)setStatusBarHeight:(double)a3
{
  if (self->_statusBarHeight != a3)
  {
    self->_statusBarHeight = a3;
    [(_SBProximityTouchHandlingViewController *)self->_proxTouchHandlingViewController setStatusBarHeight:a3];
  }
}

- (void)_createNewWindow
{
  if (a1)
  {
    v2 = a1;
    if (!a1[4])
    {
      v3 = SBLogCommon();
      v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);

      if (v4)
      {
        NSLog(&cfstr_TryingToCreate.isa);
      }
    }

    a1 = [_SBProximityTouchHandlingWindow proximityTouchHandlingWindowWithScene:v2[6] viewController:?];
    v1 = vars8;
  }

  return a1;
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