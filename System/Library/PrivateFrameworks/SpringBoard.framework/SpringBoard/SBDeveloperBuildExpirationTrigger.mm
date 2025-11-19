@interface SBDeveloperBuildExpirationTrigger
- (id)_initWithAlertItemsController:(id)a3 eventSource:(id)a4 expirationDate:(id)a5;
- (void)_coverSheetDidDismiss:(id)a3;
- (void)dealloc;
- (void)eventSource:(id)a3 didFinishTransitionToMode:(int64_t)a4 withLayoutState:(id)a5 activatingElement:(id)a6 triggeredBy:(int64_t)a7;
- (void)showDeveloperBuildExpirationAlertIfNecessaryFromLockscreen:(BOOL)a3 toLauncher:(BOOL)a4;
@end

@implementation SBDeveloperBuildExpirationTrigger

- (id)_initWithAlertItemsController:(id)a3 eventSource:(id)a4 expirationDate:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (v10)
  {
    if (!v12)
    {
LABEL_8:
      v16 = 0;
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

  objc_storeStrong(&v14->_expirationDate, a5);
  objc_storeStrong(&self->_alertItemsController, a3);
  if (v11)
  {
    objc_storeStrong(&self->_eventSource, a4);
    [(SBAppInteractionEventSourceProviding *)self->_eventSource addObserver:self];
  }

  v15 = [MEMORY[0x277CCAB98] defaultCenter];
  [v15 addObserver:self selector:sel__coverSheetDidDismiss_ name:@"SBCoverSheetDidDismissNotification" object:0];

  self = self;
  v16 = self;
LABEL_9:

  return v16;
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

- (void)showDeveloperBuildExpirationAlertIfNecessaryFromLockscreen:(BOOL)a3 toLauncher:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [MEMORY[0x277CBEAA8] date];
  if (self->_expirationDate)
  {
    v22 = v7;
    v8 = [v7 isAfterDate:?];
    if ((v8 & 1) != 0 || !v4)
    {
      v18 = v8 & v5;
      v7 = v22;
      if (v18 != 1)
      {
        goto LABEL_25;
      }

      v17 = objc_alloc_init(SBDeveloperBuildExpirationAlert);
    }

    else
    {
      v9 = [MEMORY[0x277CBEA80] currentCalendar];
      v10 = [v9 timeZone];
      v11 = [v10 secondsFromGMT];

      v12 = [(NSDate *)self->_expirationDate dateByAddingTimeInterval:-v11];
      v13 = +[SBDefaults localDefaults];
      v14 = [v13 softwareUpdateDefaults];

      LOBYTE(v13) = [v14 hasDeveloperInstallBrickAlertShown7DayWarning];
      v15 = [v14 hasDeveloperInstallBrickAlertShown3DayWarning];
      v16 = [v14 hasDeveloperInstallBrickAlertShownTomorrowWarning];
      if (v13)
      {
        v17 = 0;
      }

      else
      {
        v19 = [v22 bs_dateByAddingDays:7];
        if ([v9 date:v19 isSameDayAsDate:v12])
        {
          v17 = objc_alloc_init(SBDeveloperBuildExpirationAlert);
          [v14 setDeveloperInstallBrickAlertShown7DayWarning:1];
        }

        else
        {
          v17 = 0;
        }
      }

      if (!((v17 != 0) | v15 & 1))
      {
        v20 = [v22 bs_dateByAddingDays:3];
        if ([v9 date:v20 isSameDayAsDate:v12])
        {
          v17 = objc_alloc_init(SBDeveloperBuildExpirationAlert);
          [v14 setDeveloperInstallBrickAlertShown3DayWarning:1];
        }

        else
        {
          v17 = 0;
        }
      }

      if (!((v17 != 0) | v16 & 1))
      {
        v21 = [v22 bs_dateByAddingDays:1];
        if ([v9 date:v21 isSameDayAsDate:v12])
        {
          v17 = objc_alloc_init(SBDeveloperBuildExpirationAlert);
          [v14 setDeveloperInstallBrickAlertShownTomorrowWarning:1];
        }

        else
        {
          v17 = 0;
        }
      }
    }

    v7 = v22;
    if (v17)
    {
      [(SBAlertItemsController *)self->_alertItemsController deactivateAlertItemsOfClass:objc_opt_class()];
      [(SBAlertItemsController *)self->_alertItemsController activateAlertItem:v17];

      v7 = v22;
    }
  }

LABEL_25:
}

- (void)eventSource:(id)a3 didFinishTransitionToMode:(int64_t)a4 withLayoutState:(id)a5 activatingElement:(id)a6 triggeredBy:(int64_t)a7
{
  if (a4 == 1)
  {
    [(SBDeveloperBuildExpirationTrigger *)self showDeveloperBuildExpirationAlertIfNecessaryFromLockscreen:0 toLauncher:1, a5, a6, a7];
  }
}

- (void)_coverSheetDidDismiss:(id)a3
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