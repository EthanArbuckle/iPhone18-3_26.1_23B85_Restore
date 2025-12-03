@interface SBDashBoardSetupController
- (BOOL)handleEvent:(id)event;
- (NSString)coverSheetIdentifier;
- (SBDashBoardSetupController)init;
- (SBDashBoardSetupController)initWithCoverSheetViewController:(id)controller setupManager:(id)manager;
- (int64_t)notificationBehavior;
- (int64_t)participantState;
- (unint64_t)restrictedCapabilities;
- (void)_addOrRemoveSetupViewIfNecessaryAnimated:(BOOL)animated;
- (void)_clearSetupViewIfNecessaryAnimated:(BOOL)animated;
- (void)_configureForCurrentSetupMode;
- (void)dealloc;
@end

@implementation SBDashBoardSetupController

- (int64_t)participantState
{
  if ([(SBSetupManager *)self->_setupManager isInSetupMode])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (SBDashBoardSetupController)init
{
  [(SBDashBoardSetupController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (SBDashBoardSetupController)initWithCoverSheetViewController:(id)controller setupManager:(id)manager
{
  controllerCopy = controller;
  managerCopy = manager;
  v13.receiver = self;
  v13.super_class = SBDashBoardSetupController;
  v9 = [(SBDashBoardSetupController *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_coverSheetViewController, controller);
    objc_storeStrong(&v10->_setupManager, manager);
    [(CSCoverSheetViewController *)v10->_coverSheetViewController registerExternalBehaviorProvider:v10];
    [(CSCoverSheetViewController *)v10->_coverSheetViewController registerExternalEventHandler:v10];
    [(SBDashBoardSetupController *)v10 _configureForCurrentSetupMode];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v10 selector:sel__setupModeChanged_ name:@"SBInBuddyModeDidChangeNotification" object:0];
  }

  return v10;
}

- (void)dealloc
{
  [(CSCoverSheetViewController *)self->_coverSheetViewController unregisterExternalBehaviorProvider:self];
  [(CSCoverSheetViewController *)self->_coverSheetViewController unregisterExternalEventHandler:self];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:@"SBInBuddyModeDidChangeNotification" object:0];

  v4.receiver = self;
  v4.super_class = SBDashBoardSetupController;
  [(SBDashBoardSetupController *)&v4 dealloc];
}

- (NSString)coverSheetIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (unint64_t)restrictedCapabilities
{
  v2 = +[SBApplicationController sharedInstance];
  setupApplication = [v2 setupApplication];

  if (setupApplication)
  {
    return 12199108;
  }

  else
  {
    return 12203260;
  }
}

- (int64_t)notificationBehavior
{
  if (SUSUIRequiresAlertPresentationAfterUpdate())
  {
    return 0;
  }

  else
  {
    return 3;
  }
}

- (BOOL)handleEvent:(id)event
{
  eventCopy = event;
  type = [eventCopy type];
  isConsumable = 0;
  if (type <= 7)
  {
    if (type != 3)
    {
      if (type != 6)
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }

LABEL_8:
    [(SBDashBoardSetupController *)self _configureForCurrentSetupMode];
    goto LABEL_9;
  }

  if (type == 8)
  {
    goto LABEL_8;
  }

  if (type == 9)
  {
LABEL_7:
    [(SBDashBoardSetupController *)self _clearSetupViewIfNecessaryAnimated:0];
LABEL_9:
    isConsumable = [eventCopy isConsumable];
  }

LABEL_10:

  return isConsumable;
}

- (void)_configureForCurrentSetupMode
{
  [(CSCoverSheetViewController *)self->_coverSheetViewController externalBehaviorProviderBehaviorChanged:self];

  [(SBDashBoardSetupController *)self _addOrRemoveSetupViewIfNecessaryAnimated:0];
}

- (void)_addOrRemoveSetupViewIfNecessaryAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(SBDashBoardSetupController *)self participantState]== 2 && (SUSUIRequiresAlertPresentationAfterUpdate() & 1) == 0 && [(SBSetupManager *)self->_setupManager shouldShowGreetingOnCoverSheet])
  {
    if (!self->_setupViewController)
    {
      v5 = [[SBDashBoardSetupViewController alloc] initWithCoverSheetViewController:self->_coverSheetViewController];
      setupViewController = self->_setupViewController;
      self->_setupViewController = v5;
    }

    mainPagePresentationViewController = [(CSCoverSheetViewController *)self->_coverSheetViewController mainPagePresentationViewController];
    [mainPagePresentationViewController presentContentViewController:self->_setupViewController animated:animatedCopy completion:0];
  }

  else
  {

    [(SBDashBoardSetupController *)self _clearSetupViewIfNecessaryAnimated:animatedCopy];
  }
}

- (void)_clearSetupViewIfNecessaryAnimated:(BOOL)animated
{
  if (self->_setupViewController)
  {
    animatedCopy = animated;
    mainPagePresentationViewController = [(CSCoverSheetViewController *)self->_coverSheetViewController mainPagePresentationViewController];
    setupViewController = self->_setupViewController;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __65__SBDashBoardSetupController__clearSetupViewIfNecessaryAnimated___block_invoke;
    v7[3] = &unk_2783A8C18;
    v7[4] = self;
    [mainPagePresentationViewController dismissContentViewController:setupViewController animated:animatedCopy completion:v7];
  }
}

void __65__SBDashBoardSetupController__clearSetupViewIfNecessaryAnimated___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  *(v1 + 24) = 0;
}

@end