@interface SBBrightnessControl
+ (BOOL)handlesKeyCommandsForRoute:(int64_t)route;
- (BOOL)_HUDIsDisplayableWithReason:(id *)reason;
- (BOOL)elasticValueViewController:(id)controller updateCurrentValue:(float)value;
- (SBBrightnessControl)initWithHUDController:(id)controller;
- (float)elasticValueViewControllerCurrentValue:(id)value;
- (id)_controllerForRoute:(int64_t)route;
- (id)acquireBrightnessHUDHiddenAssertionForReason:(id)reason;
- (id)existingBrightnessHUDViewController;
- (id)presentedBrightnessHUDViewController;
- (int64_t)elasticBrightnessViewControllerBrightnessRouteType:(id)type;
- (void)_controlCenterWillPresent:(id)present;
- (void)_handleUpdateBrightnessIncrementKeyIsDown:(BOOL)down decrementKeyIsDown:(BOOL)isDown;
- (void)_presentOrUpdateBrightnessHUDAsNecessaryForBrightnessLevel:(float)level;
- (void)_resetIdleTimerForUserInteractionIfNecessary;
- (void)brightnessController:(id)controller performCoordinatedBrightnessChangeForIncrementKeyDown:(BOOL)down decrementKeyDown:(BOOL)keyDown;
- (void)cancelBrightnessKeyPressEvents;
- (void)elasticBrightnessViewControllerValueUpdatesDidEnd:(id)end;
- (void)elasticBrightnessViewControllerValueUpdatesWillBegin:(id)begin;
- (void)elasticHUDViewControllerRequestsDismissal:(id)dismissal;
- (void)handleBrightnessKeyPressEvent:(__IOHIDEvent *)event forRoute:(int64_t)route;
- (void)setActiveController:(id)controller;
- (void)setBrightnessLevel:(float)level forRoute:(int64_t)route;
@end

@implementation SBBrightnessControl

- (SBBrightnessControl)initWithHUDController:(id)controller
{
  controllerCopy = controller;
  if (!controllerCopy)
  {
    [(SBBrightnessControl *)a2 initWithHUDController:?];
  }

  v11.receiver = self;
  v11.super_class = SBBrightnessControl;
  v7 = [(SBBrightnessControl *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_HUDController, controller);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v8 selector:sel__controlCenterWillPresent_ name:@"SBControlCenterWillPresentNotification" object:0];
    [defaultCenter addObserver:v8 selector:sel__controlCenterWillDismiss_ name:@"SBControlCenterWillDismissNotification" object:0];
  }

  return v8;
}

+ (BOOL)handlesKeyCommandsForRoute:(int64_t)route
{
  if (route == 1)
  {
    v3 = off_27839FA70;
    return [(__objc2_class *)*v3 handlesKeyCommands];
  }

  if (route == 2)
  {
    v3 = off_2783A0810;
    return [(__objc2_class *)*v3 handlesKeyCommands];
  }

  return 0;
}

- (void)handleBrightnessKeyPressEvent:(__IOHIDEvent *)event forRoute:(int64_t)route
{
  v5 = [(SBBrightnessControl *)self _controllerForRoute:route];
  [v5 handleBrightnessKeyPressEvent:event];
}

- (void)setBrightnessLevel:(float)level forRoute:(int64_t)route
{
  v6 = [(SBBrightnessControl *)self _controllerForRoute:route];
  *&v5 = level;
  [v6 setBrightnessLevel:1 animated:v5];
}

- (void)cancelBrightnessKeyPressEvents
{
  [(SBKeyboardBrightnessController *)self->_keyboardBrightnessController cancelBrightnessKeyPressEvent];
  displayBrightnessController = self->_displayBrightnessController;

  [(SBDisplayBrightnessController *)displayBrightnessController cancelBrightnessKeyPressEvent];
}

- (id)acquireBrightnessHUDHiddenAssertionForReason:(id)reason
{
  reasonCopy = reason;
  [(SBBrightnessControl *)self cancelBrightnessKeyPressEvents];
  v5 = [(SBHUDController *)self->_HUDController acquireHUDHiddenAssertionForIdentifier:*MEMORY[0x277D67038] withReason:reasonCopy];

  return v5;
}

- (void)brightnessController:(id)controller performCoordinatedBrightnessChangeForIncrementKeyDown:(BOOL)down decrementKeyDown:(BOOL)keyDown
{
  keyDownCopy = keyDown;
  downCopy = down;
  controllerCopy = controller;
  [(SBBrightnessControl *)self setActiveController:?];
  [(SBBrightnessControl *)self _handleUpdateBrightnessIncrementKeyIsDown:downCopy decrementKeyIsDown:keyDownCopy];
  if (downCopy || keyDownCopy)
  {
    [controllerCopy brightnessLevel];
    v9 = *&v8 + -0.0625;
    if ((*&v8 + -0.0625) < 0.0)
    {
      v9 = 0.0;
    }

    v10 = fminf(*&v8 + 0.0625, 1.0);
    if (downCopy)
    {
      v11 = v10;
    }

    else
    {
      v11 = v9;
    }

    if (*&v8 != v11)
    {
      presentedBrightnessHUDViewController = [(SBBrightnessControl *)self presentedBrightnessHUDViewController];
      *&v13 = v11;
      [presentedBrightnessHUDViewController noteValueWillDeltaStepToValue:v13];
    }

    *&v8 = v11;
    [controllerCopy setBrightnessLevel:1 animated:v8];
    *&v14 = v11;
    [(SBBrightnessControl *)self _presentOrUpdateBrightnessHUDAsNecessaryForBrightnessLevel:v14];
  }
}

- (float)elasticValueViewControllerCurrentValue:(id)value
{
  activeDataSource = [(SBBrightnessControl *)self activeDataSource];
  [activeDataSource brightnessLevel];
  v5 = v4;

  return v5;
}

- (BOOL)elasticValueViewController:(id)controller updateCurrentValue:(float)value
{
  activeDataSource = [(SBBrightnessControl *)self activeDataSource];
  *&v6 = value;
  v7 = [activeDataSource setBrightnessLevel:0 animated:v6];

  return v7;
}

- (int64_t)elasticBrightnessViewControllerBrightnessRouteType:(id)type
{
  activeDataSource = [(SBBrightnessControl *)self activeDataSource];
  brightnessRouteType = [activeDataSource brightnessRouteType];

  return brightnessRouteType;
}

- (void)elasticBrightnessViewControllerValueUpdatesWillBegin:(id)begin
{
  activeDataSource = [(SBBrightnessControl *)self activeDataSource];
  [activeDataSource noteValueUpdatesWillBegin];
}

- (void)elasticBrightnessViewControllerValueUpdatesDidEnd:(id)end
{
  activeDataSource = [(SBBrightnessControl *)self activeDataSource];
  [activeDataSource noteValueUpdatesDidEnd];
}

- (void)elasticHUDViewControllerRequestsDismissal:(id)dismissal
{
  v3 = [(SBHUDController *)self->_HUDController presentedHUDControllerForIdentifier:*MEMORY[0x277D67038]];
  [v3 dismissAnimated:0];
}

- (void)_controlCenterWillPresent:(id)present
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
  hUDViewController = [v2 HUDViewController];

  return hUDViewController;
}

- (id)existingBrightnessHUDViewController
{
  v2 = [(SBHUDController *)self->_HUDController knownHUDControllerForIdentifier:*MEMORY[0x277D67038]];
  hUDViewController = [v2 HUDViewController];

  return hUDViewController;
}

- (void)_presentOrUpdateBrightnessHUDAsNecessaryForBrightnessLevel:(float)level
{
  if (![(SBBrightnessControl *)self _HUDIsDisplayable])
  {
    return;
  }

  v5 = *MEMORY[0x277D67038];
  v6 = [(SBHUDController *)self->_HUDController knownHUDControllerForIdentifier:*MEMORY[0x277D67038]];
  hUDViewController = [v6 HUDViewController];
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
    hUDViewController = v10;
  }

  v13 = v8;
  [v8 presentWithDismissalInterval:0 animated:60.0];
  *&v11 = level;
  [hUDViewController noteValueDidChange:v11];
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

    [hUDViewController noteButtonDownWasHit:1];
    if (self->_brightnessIncrementKeyIsDown)
    {
LABEL_12:
      [hUDViewController noteButtonUpWasHit:1];
    }
  }

LABEL_13:
}

- (BOOL)_HUDIsDisplayableWithReason:(id *)reason
{
  controlCenterIsPresented = self->_controlCenterIsPresented;
  if (reason && self->_controlCenterIsPresented)
  {
    *reason = @"Control Center is presented";
  }

  return !controlCenterIsPresented;
}

- (void)_handleUpdateBrightnessIncrementKeyIsDown:(BOOL)down decrementKeyIsDown:(BOOL)isDown
{
  isDownCopy = isDown;
  downCopy = down;
  presentedBrightnessHUDViewController = [(SBBrightnessControl *)self presentedBrightnessHUDViewController];
  brightnessIncrementKeyIsDown = self->_brightnessIncrementKeyIsDown;
  brightnessDecrementKeyIsDown = self->_brightnessDecrementKeyIsDown;
  v13 = presentedBrightnessHUDViewController;
  if (presentedBrightnessHUDViewController)
  {
    _HUDIsDisplayable = [(SBBrightnessControl *)self _HUDIsDisplayable];
    if (brightnessIncrementKeyIsDown != downCopy && (downCopy & 1) == 0)
    {
      [v13 noteButtonUpWasHit:0];
    }

    if (brightnessDecrementKeyIsDown != isDownCopy && (isDownCopy & 1) == 0)
    {
      [v13 noteButtonDownWasHit:0];
    }

    v11 = !_HUDIsDisplayable;
    if (brightnessIncrementKeyIsDown != downCopy && downCopy && !v11)
    {
      [v13 noteButtonUpWasHit:1];
    }

    if (brightnessDecrementKeyIsDown != isDownCopy && (isDownCopy & 1) != 0 && !v11)
    {
      [v13 noteButtonDownWasHit:1];
    }
  }

  if (brightnessIncrementKeyIsDown != downCopy || brightnessDecrementKeyIsDown != isDownCopy)
  {
    [(SBBrightnessControl *)self _resetIdleTimerForUserInteractionIfNecessary];
  }

  self->_brightnessIncrementKeyIsDown = downCopy;
  self->_brightnessDecrementKeyIsDown = isDownCopy;
}

- (void)setActiveController:(id)controller
{
  controllerCopy = controller;
  activeController = self->_activeController;
  if (activeController != controllerCopy)
  {
    v9 = controllerCopy;
    v7 = activeController;
    objc_storeStrong(&self->_activeController, controller);
    if (v7)
    {
      [(SBBrightnessRouteControlling *)v7 noteValueUpdatesDidEnd];
      existingBrightnessHUDViewController = [(SBBrightnessControl *)self existingBrightnessHUDViewController];
      [existingBrightnessHUDViewController reloadData];
    }

    controllerCopy = v9;
  }
}

- (id)_controllerForRoute:(int64_t)route
{
  selfCopy = self;
  switch(route)
  {
    case 2:
      keyboardBrightnessController = self->_keyboardBrightnessController;
      if (!keyboardBrightnessController)
      {
        v9 = [[SBKeyboardBrightnessController alloc] initWithCoordinator:self];
        v10 = selfCopy->_keyboardBrightnessController;
        selfCopy->_keyboardBrightnessController = v9;

        keyboardBrightnessController = selfCopy->_keyboardBrightnessController;
      }

      goto LABEL_11;
    case 1:
      keyboardBrightnessController = self->_displayBrightnessController;
      if (!keyboardBrightnessController)
      {
        v7 = [[SBDisplayBrightnessController alloc] initWithCoordinator:self];
        displayBrightnessController = selfCopy->_displayBrightnessController;
        selfCopy->_displayBrightnessController = v7;

        keyboardBrightnessController = selfCopy->_displayBrightnessController;
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
    lockScreenEnvironment = [v8 lockScreenEnvironment];
    backlightController = [lockScreenEnvironment backlightController];
    isInScreenOffMode = [backlightController isInScreenOffMode];

    if ((isInScreenOffMode & 1) == 0)
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