@interface SBCombinationHardwareButtonActions
- (void)performPresentPowerDownTransientOverlayAction;
- (void)performTakeScreenshotAction;
@end

@implementation SBCombinationHardwareButtonActions

- (void)performTakeScreenshotAction
{
  v2 = +[SBLockScreenManager sharedInstance];
  lockScreenEnvironment = [v2 lockScreenEnvironment];
  backlightController = [lockScreenEnvironment backlightController];
  isInScreenOffMode = [backlightController isInScreenOffMode];

  if ((isInScreenOffMode & 1) == 0)
  {
    v6 = SBApp;

    [v6 takeScreenshot];
  }
}

- (void)performPresentPowerDownTransientOverlayAction
{
  v2 = +[SBWorkspace mainWorkspace];
  [v2 presentPowerDownTransientOverlay];
}

@end