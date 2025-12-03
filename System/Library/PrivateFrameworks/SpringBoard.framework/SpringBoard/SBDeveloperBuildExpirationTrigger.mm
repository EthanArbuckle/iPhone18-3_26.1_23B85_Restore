@interface SBDeveloperBuildExpirationTrigger
- (id)_initWithAlertItemsController:(id)controller eventSource:(id)source expirationDate:(id)date;
- (void)_coverSheetDidDismiss:(id)dismiss;
- (void)dealloc;
- (void)eventSource:(id)source didFinishTransitionToMode:(int64_t)mode withLayoutState:(id)state activatingElement:(id)element triggeredBy:(int64_t)by;
- (void)showDeveloperBuildExpirationAlertIfNecessaryFromLockscreen:(BOOL)lockscreen toLauncher:(BOOL)launcher;
@end

@implementation SBDeveloperBuildExpirationTrigger

- (id)_initWithAlertItemsController:(id)controller eventSource:(id)source expirationDate:(id)date
{
  controllerCopy = controller;
  sourceCopy = source;
  dateCopy = date;
  v13 = dateCopy;
  if (controllerCopy)
  {
    if (!dateCopy)
    {
LABEL_8:
      selfCopy = 0;
      goto LABEL_9;
    }
  }

  else
  {
    [SBDeveloperBuildExpirationTrigger _initWithAlertItemsController:a2 eventSource:self expirationDate:?];
    if (!v13)
    {
      goto LABEL_8;
    }
  }

  v18.receiver = self;
  v18.super_class = SBDeveloperBuildExpirationTrigger;
  v14 = [(SBDeveloperBuildExpirationTrigger *)&v18 init];
  self = v14;
  if (!v14)
  {
    goto LABEL_8;
  }

  objc_storeStrong(&v14->_expirationDate, date);
  objc_storeStrong(&self->_alertItemsController, controller);
  if (sourceCopy)
  {
    objc_storeStrong(&self->_eventSource, source);
    [(SBAppInteractionEventSourceProviding *)self->_eventSource addObserver:self];
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__coverSheetDidDismiss_ name:@"SBCoverSheetDidDismissNotification" object:0];

  self = self;
  selfCopy = self;
LABEL_9:

  return selfCopy;
}

- (void)dealloc
{
  eventSource = self->_eventSource;
  if (eventSource)
  {
    [(SBAppInteractionEventSourceProviding *)eventSource removeObserver:self];
  }

  v4.receiver = self;
  v4.super_class = SBDeveloperBuildExpirationTrigger;
  [(SBDeveloperBuildExpirationTrigger *)&v4 dealloc];
}

- (void)showDeveloperBuildExpirationAlertIfNecessaryFromLockscreen:(BOOL)lockscreen toLauncher:(BOOL)launcher
{
  launcherCopy = launcher;
  lockscreenCopy = lockscreen;
  date = [MEMORY[0x277CBEAA8] date];
  if (self->_expirationDate)
  {
    v22 = date;
    v8 = [date isAfterDate:?];
    if ((v8 & 1) != 0 || !launcherCopy)
    {
      v18 = v8 & lockscreenCopy;
      date = v22;
      if (v18 != 1)
      {
        goto LABEL_25;
      }

      v17 = objc_alloc_init(SBDeveloperBuildExpirationAlert);
    }

    else
    {
      currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
      timeZone = [currentCalendar timeZone];
      secondsFromGMT = [timeZone secondsFromGMT];

      v12 = [(NSDate *)self->_expirationDate dateByAddingTimeInterval:-secondsFromGMT];
      v13 = +[SBDefaults localDefaults];
      softwareUpdateDefaults = [v13 softwareUpdateDefaults];

      LOBYTE(v13) = [softwareUpdateDefaults hasDeveloperInstallBrickAlertShown7DayWarning];
      hasDeveloperInstallBrickAlertShown3DayWarning = [softwareUpdateDefaults hasDeveloperInstallBrickAlertShown3DayWarning];
      hasDeveloperInstallBrickAlertShownTomorrowWarning = [softwareUpdateDefaults hasDeveloperInstallBrickAlertShownTomorrowWarning];
      if (v13)
      {
        v17 = 0;
      }

      else
      {
        v19 = [v22 bs_dateByAddingDays:7];
        if ([currentCalendar date:v19 isSameDayAsDate:v12])
        {
          v17 = objc_alloc_init(SBDeveloperBuildExpirationAlert);
          [softwareUpdateDefaults setDeveloperInstallBrickAlertShown7DayWarning:1];
        }

        else
        {
          v17 = 0;
        }
      }

      if (!((v17 != 0) | hasDeveloperInstallBrickAlertShown3DayWarning & 1))
      {
        v20 = [v22 bs_dateByAddingDays:3];
        if ([currentCalendar date:v20 isSameDayAsDate:v12])
        {
          v17 = objc_alloc_init(SBDeveloperBuildExpirationAlert);
          [softwareUpdateDefaults setDeveloperInstallBrickAlertShown3DayWarning:1];
        }

        else
        {
          v17 = 0;
        }
      }

      if (!((v17 != 0) | hasDeveloperInstallBrickAlertShownTomorrowWarning & 1))
      {
        v21 = [v22 bs_dateByAddingDays:1];
        if ([currentCalendar date:v21 isSameDayAsDate:v12])
        {
          v17 = objc_alloc_init(SBDeveloperBuildExpirationAlert);
          [softwareUpdateDefaults setDeveloperInstallBrickAlertShownTomorrowWarning:1];
        }

        else
        {
          v17 = 0;
        }
      }
    }

    date = v22;
    if (v17)
    {
      [(SBAlertItemsController *)self->_alertItemsController deactivateAlertItemsOfClass:objc_opt_class()];
      [(SBAlertItemsController *)self->_alertItemsController activateAlertItem:v17];

      date = v22;
    }
  }

LABEL_25:
}

- (void)eventSource:(id)source didFinishTransitionToMode:(int64_t)mode withLayoutState:(id)state activatingElement:(id)element triggeredBy:(int64_t)by
{
  if (mode == 1)
  {
    [(SBDeveloperBuildExpirationTrigger *)self showDeveloperBuildExpirationAlertIfNecessaryFromLockscreen:0 toLauncher:1, state, element, by];
  }
}

- (void)_coverSheetDidDismiss:(id)dismiss
{
  v4 = +[SBMainSwitcherControllerCoordinator _shim_activeSwitcherController];
  -[SBDeveloperBuildExpirationTrigger showDeveloperBuildExpirationAlertIfNecessaryFromLockscreen:toLauncher:](self, "showDeveloperBuildExpirationAlertIfNecessaryFromLockscreen:toLauncher:", 1, [v4 unlockedEnvironmentMode] == 3);
}

- (void)_initWithAlertItemsController:(uint64_t)a1 eventSource:(uint64_t)a2 expirationDate:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBDeveloperBuildExpirationTrigger.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"alertItemsController"}];
}

@end