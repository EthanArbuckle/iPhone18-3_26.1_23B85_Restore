@interface SBBrightnessControl
+ (BOOL)handlesKeyCommandsForRoute:(int64_t)a3;
- (BOOL)_HUDIsDisplayableWithReason:(id *)a3;
- (BOOL)elasticValueViewController:(id)a3 updateCurrentValue:(float)a4;
- (SBBrightnessControl)initWithHUDController:(id)a3;
- (float)elasticValueViewControllerCurrentValue:(id)a3;
- (id)_controllerForRoute:(int64_t)a3;
- (id)acquireBrightnessHUDHiddenAssertionForReason:(id)a3;
- (id)existingBrightnessHUDViewController;
- (id)presentedBrightnessHUDViewController;
- (int64_t)elasticBrightnessViewControllerBrightnessRouteType:(id)a3;
- (void)_controlCenterWillPresent:(id)a3;
- (void)_handleUpdateBrightnessIncrementKeyIsDown:(BOOL)a3 decrementKeyIsDown:(BOOL)a4;
- (void)_presentOrUpdateBrightnessHUDAsNecessaryForBrightnessLevel:(float)a3;
- (void)_resetIdleTimerForUserInteractionIfNecessary;
- (void)brightnessController:(id)a3 performCoordinatedBrightnessChangeForIncrementKeyDown:(BOOL)a4 decrementKeyDown:(BOOL)a5;
- (void)cancelBrightnessKeyPressEvents;
- (void)elasticBrightnessViewControllerValueUpdatesDidEnd:(id)a3;
- (void)elasticBrightnessViewControllerValueUpdatesWillBegin:(id)a3;
- (void)elasticHUDViewControllerRequestsDismissal:(id)a3;
- (void)handleBrightnessKeyPressEvent:(__IOHIDEvent *)a3 forRoute:(int64_t)a4;
- (void)setActiveController:(id)a3;
- (void)setBrightnessLevel:(float)a3 forRoute:(int64_t)a4;
@end

@implementation SBBrightnessControl

- (SBBrightnessControl)initWithHUDController:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [(SBBrightnessControl *)a2 initWithHUDController:?];
  }

  v11.receiver = self;
  v11.super_class = SBBrightnessControl;
  v7 = [(SBBrightnessControl *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_HUDController, a3);
    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    [v9 addObserver:v8 selector:sel__controlCenterWillPresent_ name:@"SBControlCenterWillPresentNotification" object:0];
    [v9 addObserver:v8 selector:sel__controlCenterWillDismiss_ name:@"SBControlCenterWillDismissNotification" object:0];
  }

  return v8;
}

+ (BOOL)handlesKeyCommandsForRoute:(int64_t)a3
{
  if (a3 == 1)
  {
    v3 = off_27839FA70;
    return [(__objc2_class *)*v3 handlesKeyCommands];
  }

  if (a3 == 2)
  {
    v3 = off_2783A0810;
    return [(__objc2_class *)*v3 handlesKeyCommands];
  }

  return 0;
}

- (void)handleBrightnessKeyPressEvent:(__IOHIDEvent *)a3 forRoute:(int64_t)a4
{
  v5 = [(SBBrightnessControl *)self _controllerForRoute:a4];
  [v5 handleBrightnessKeyPressEvent:a3];
}

- (void)setBrightnessLevel:(float)a3 forRoute:(int64_t)a4
{
  v6 = [(SBBrightnessControl *)self _controllerForRoute:a4];
  *&v5 = a3;
  [v6 setBrightnessLevel:1 animated:v5];
}

- (void)cancelBrightnessKeyPressEvents
{
  [(SBKeyboardBrightnessController *)self->_keyboardBrightnessController cancelBrightnessKeyPressEvent];
  displayBrightnessController = self->_displayBrightnessController;

  [(SBDisplayBrightnessController *)displayBrightnessController cancelBrightnessKeyPressEvent];
}

- (id)acquireBrightnessHUDHiddenAssertionForReason:(id)a3
{
  v4 = a3;
  [(SBBrightnessControl *)self cancelBrightnessKeyPressEvents];
  v5 = [(SBHUDController *)self->_HUDController acquireHUDHiddenAssertionForIdentifier:*MEMORY[0x277D67038] withReason:v4];

  return v5;
}

- (void)brightnessController:(id)a3 performCoordinatedBrightnessChangeForIncrementKeyDown:(BOOL)a4 decrementKeyDown:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v15 = a3;
  [(SBBrightnessControl *)self setActiveController:?];
  [(SBBrightnessControl *)self _handleUpdateBrightnessIncrementKeyIsDown:v6 decrementKeyIsDown:v5];
  if (v6 || v5)
  {
    [v15 brightnessLevel];
    v9 = *&v8 + -0.0625;
    if ((*&v8 + -0.0625) < 0.0)
    {
      v9 = 0.0;
    }

    v10 = fminf(*&v8 + 0.0625, 1.0);
    if (v6)
    {
      v11 = v10;
    }

    else
    {
      v11 = v9;
    }

    if (*&v8 != v11)
    {
      v12 = [(SBBrightnessControl *)self presentedBrightnessHUDViewController];
      *&v13 = v11;
      [v12 noteValueWillDeltaStepToValue:v13];
    }

    *&v8 = v11;
    [v15 setBrightnessLevel:1 animated:v8];
    *&v14 = v11;
    [(SBBrightnessControl *)self _presentOrUpdateBrightnessHUDAsNecessaryForBrightnessLevel:v14];
  }
}

- (float)elasticValueViewControllerCurrentValue:(id)a3
{
  v3 = [(SBBrightnessControl *)self activeDataSource];
  [v3 brightnessLevel];
  v5 = v4;

  return v5;
}

- (BOOL)elasticValueViewController:(id)a3 updateCurrentValue:(float)a4
{
  v5 = [(SBBrightnessControl *)self activeDataSource];
  *&v6 = a4;
  v7 = [v5 setBrightnessLevel:0 animated:v6];

  return v7;
}

- (int64_t)elasticBrightnessViewControllerBrightnessRouteType:(id)a3
{
  v3 = [(SBBrightnessControl *)self activeDataSource];
  v4 = [v3 brightnessRouteType];

  return v4;
}

- (void)elasticBrightnessViewControllerValueUpdatesWillBegin:(id)a3
{
  v3 = [(SBBrightnessControl *)self activeDataSource];
  [v3 noteValueUpdatesWillBegin];
}

- (void)elasticBrightnessViewControllerValueUpdatesDidEnd:(id)a3
{
  v3 = [(SBBrightnessControl *)self activeDataSource];
  [v3 noteValueUpdatesDidEnd];
}

- (void)elasticHUDViewControllerRequestsDismissal:(id)a3
{
  v3 = [(SBHUDController *)self->_HUDController presentedHUDControllerForIdentifier:*MEMORY[0x277D67038]];
  [v3 dismissAnimated:0];
}

- (void)_controlCenterWillPresent:(id)a3
{
  if (!self->_controlCenterIsPresented)
  {
    self->_controlCenterIsPresented = 1;
    v4 = [(SBHUDController *)self->_HUDController knownHUDControllerForIdentifier:*MEMORY[0x277D67038]];
    [v4 dismissAnimated:1];
  }
}

- (id)presentedBrightnessHUDViewController
{
  v2 = [(SBHUDController *)self->_HUDController presentedHUDControllerForIdentifier:*MEMORY[0x277D67038]];
  v3 = [v2 HUDViewController];

  return v3;
}

- (id)existingBrightnessHUDViewController
{
  v2 = [(SBHUDController *)self->_HUDController knownHUDControllerForIdentifier:*MEMORY[0x277D67038]];
  v3 = [v2 HUDViewController];

  return v3;
}

- (void)_presentOrUpdateBrightnessHUDAsNecessaryForBrightnessLevel:(float)a3
{
  if (![(SBBrightnessControl *)self _HUDIsDisplayable])
  {
    return;
  }

  v5 = *MEMORY[0x277D67038];
  v6 = [(SBHUDController *)self->_HUDController knownHUDControllerForIdentifier:*MEMORY[0x277D67038]];
  v7 = [v6 HUDViewController];
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [SBElasticValueViewControllerFactory factoryWithBrightnessDataSource:self];
    v10 = [[SBElasticHUDViewController alloc] initWithFactory:v9];

    [(SBElasticHUDViewController *)v10 setDelegate:self];
    v12 = [(SBHUDController *)self->_HUDController HUDSessionForViewController:v10 identifier:v5];

    v8 = v12;
    v7 = v10;
  }

  v13 = v8;
  [v8 presentWithDismissalInterval:0 animated:60.0];
  *&v11 = a3;
  [v7 noteValueDidChange:v11];
  if (!v6)
  {
    if (self->_brightnessIncrementKeyIsDown)
    {
      if (!self->_brightnessDecrementKeyIsDown)
      {
        goto LABEL_12;
      }
    }

    else if (!self->_brightnessDecrementKeyIsDown)
    {
      goto LABEL_13;
    }

    [v7 noteButtonDownWasHit:1];
    if (self->_brightnessIncrementKeyIsDown)
    {
LABEL_12:
      [v7 noteButtonUpWasHit:1];
    }
  }

LABEL_13:
}

- (BOOL)_HUDIsDisplayableWithReason:(id *)a3
{
  controlCenterIsPresented = self->_controlCenterIsPresented;
  if (a3 && self->_controlCenterIsPresented)
  {
    *a3 = @"Control Center is presented";
  }

  return !controlCenterIsPresented;
}

- (void)_handleUpdateBrightnessIncrementKeyIsDown:(BOOL)a3 decrementKeyIsDown:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(SBBrightnessControl *)self presentedBrightnessHUDViewController];
  brightnessIncrementKeyIsDown = self->_brightnessIncrementKeyIsDown;
  brightnessDecrementKeyIsDown = self->_brightnessDecrementKeyIsDown;
  v13 = v7;
  if (v7)
  {
    v10 = [(SBBrightnessControl *)self _HUDIsDisplayable];
    if (brightnessIncrementKeyIsDown != v5 && (v5 & 1) == 0)
    {
      [v13 noteButtonUpWasHit:0];
    }

    if (brightnessDecrementKeyIsDown != v4 && (v4 & 1) == 0)
    {
      [v13 noteButtonDownWasHit:0];
    }

    v11 = !v10;
    if (brightnessIncrementKeyIsDown != v5 && v5 && !v11)
    {
      [v13 noteButtonUpWasHit:1];
    }

    if (brightnessDecrementKeyIsDown != v4 && (v4 & 1) != 0 && !v11)
    {
      [v13 noteButtonDownWasHit:1];
    }
  }

  if (brightnessIncrementKeyIsDown != v5 || brightnessDecrementKeyIsDown != v4)
  {
    [(SBBrightnessControl *)self _resetIdleTimerForUserInteractionIfNecessary];
  }

  self->_brightnessIncrementKeyIsDown = v5;
  self->_brightnessDecrementKeyIsDown = v4;
}

- (void)setActiveController:(id)a3
{
  v5 = a3;
  activeController = self->_activeController;
  if (activeController != v5)
  {
    v9 = v5;
    v7 = activeController;
    objc_storeStrong(&self->_activeController, a3);
    if (v7)
    {
      [(SBBrightnessRouteControlling *)v7 noteValueUpdatesDidEnd];
      v8 = [(SBBrightnessControl *)self existingBrightnessHUDViewController];
      [v8 reloadData];
    }

    v5 = v9;
  }
}

- (id)_controllerForRoute:(int64_t)a3
{
  v3 = self;
  switch(a3)
  {
    case 2:
      keyboardBrightnessController = self->_keyboardBrightnessController;
      if (!keyboardBrightnessController)
      {
        v9 = [[SBKeyboardBrightnessController alloc] initWithCoordinator:self];
        v10 = v3->_keyboardBrightnessController;
        v3->_keyboardBrightnessController = v9;

        keyboardBrightnessController = v3->_keyboardBrightnessController;
      }

      goto LABEL_11;
    case 1:
      keyboardBrightnessController = self->_displayBrightnessController;
      if (!keyboardBrightnessController)
      {
        v7 = [[SBDisplayBrightnessController alloc] initWithCoordinator:self];
        displayBrightnessController = v3->_displayBrightnessController;
        v3->_displayBrightnessController = v7;

        keyboardBrightnessController = v3->_displayBrightnessController;
      }

LABEL_11:
      self = keyboardBrightnessController;
      break;
    case 0:
      v4 = SBLogCommon();
      v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);

      if (v5)
      {
        NSLog(&cfstr_AttemptingToCo_1.isa);
      }

      self = 0;
      break;
  }

  return self;
}

- (void)_resetIdleTimerForUserInteractionIfNecessary
{
  v8 = +[SBLockScreenManager sharedInstanceIfExists];
  if ([v8 isUILocked])
  {
    v2 = [v8 lockScreenEnvironment];
    v3 = [v2 backlightController];
    v4 = [v3 isInScreenOffMode];

    if ((v4 & 1) == 0)
    {
      v5 = +[SBIdleTimerGlobalCoordinator sharedInstanceIfExists];
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      [v5 resetIdleTimerForReason:v7];
    }
  }
}

- (void)initWithHUDController:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBBrightnessControl.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"HUDController"}];
}

@end