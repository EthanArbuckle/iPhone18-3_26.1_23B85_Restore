@interface SBDashBoardIdleTimerController
- (BOOL)handleEvent:(id)event;
- (NSString)coverSheetIdentifier;
- (SBDashBoardIdleTimerController)initWithCoverSheetViewController:(id)controller;
- (SBIdleTimerCoordinating)idleTimerCoordinator;
- (id)dashBoardIdleTimerProvider:(id)provider didProposeBehavior:(id)behavior reason:(id)reason;
- (void)dealloc;
- (void)resetIdleTimerIfTopMost;
@end

@implementation SBDashBoardIdleTimerController

- (SBIdleTimerCoordinating)idleTimerCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_idleTimerCoordinator);

  return WeakRetained;
}

- (void)resetIdleTimerIfTopMost
{
  v3 = +[SBWorkspace mainWorkspace];
  transientOverlayPresentationManager = [v3 transientOverlayPresentationManager];
  hasActivePresentation = [transientOverlayPresentationManager hasActivePresentation];

  if (hasActivePresentation)
  {
    rootSettings = [MEMORY[0x277D02C20] rootSettings];
    idleTimerSettings = [rootSettings idleTimerSettings];
    increaseNotificationScrollLogging = [idleTimerSettings increaseNotificationScrollLogging];

    if (increaseNotificationScrollLogging)
    {
      v9 = SBLogIdleTimer();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "[IdleTimerController] Not frontmost, not resetting", v11, 2u);
      }
    }
  }

  else
  {
    dashBoardIdleTimerProvider = self->_dashBoardIdleTimerProvider;

    [(SBDashBoardIdleTimerProvider *)dashBoardIdleTimerProvider resetIdleTimer];
  }
}

- (SBDashBoardIdleTimerController)initWithCoverSheetViewController:(id)controller
{
  controllerCopy = controller;
  v11.receiver = self;
  v11.super_class = SBDashBoardIdleTimerController;
  v6 = [(SBDashBoardIdleTimerController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_coverSheetViewController, controller);
    v8 = [[SBDashBoardIdleTimerProvider alloc] initWithDelegate:v7];
    dashBoardIdleTimerProvider = v7->_dashBoardIdleTimerProvider;
    v7->_dashBoardIdleTimerProvider = v8;

    [(CSCoverSheetViewController *)v7->_coverSheetViewController registerExternalEventHandler:v7];
  }

  return v7;
}

- (void)dealloc
{
  [(CSCoverSheetViewController *)self->_coverSheetViewController unregisterExternalEventHandler:self];
  v3.receiver = self;
  v3.super_class = SBDashBoardIdleTimerController;
  [(SBDashBoardIdleTimerController *)&v3 dealloc];
}

- (NSString)coverSheetIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (BOOL)handleEvent:(id)event
{
  eventCopy = event;
  type = [eventCopy type];
  isConsumable = 0;
  if (type <= 23)
  {
    switch(type)
    {
      case 2:
        dashBoardIdleTimerProvider = self->_dashBoardIdleTimerProvider;
        activeBehavior = [(CSCoverSheetViewController *)self->_coverSheetViewController activeBehavior];
        [(SBDashBoardIdleTimerProvider *)dashBoardIdleTimerProvider updateIdleTimerWithIdleDimProvider:activeBehavior reason:@"BehaviorChanged"];

        goto LABEL_18;
      case 7:
        v9 = self->_dashBoardIdleTimerProvider;
        v10 = @"SBDashBoardIsDeactivated";
        goto LABEL_17;
      case 8:
        v7 = self->_dashBoardIdleTimerProvider;
        v8 = @"SBDashBoardIsDeactivated";
LABEL_14:
        [(SBDashBoardIdleTimerProvider *)v7 removeDisabledIdleTimerAssertionReason:v8];
LABEL_18:
        isConsumable = [eventCopy isConsumable];
        break;
    }
  }

  else
  {
    if (type <= 37)
    {
      if (type != 24)
      {
        if (type != 25)
        {
          goto LABEL_19;
        }

        goto LABEL_12;
      }

      goto LABEL_13;
    }

    if (type == 38)
    {
LABEL_13:
      v7 = self->_dashBoardIdleTimerProvider;
      v8 = @"SBDashBoardScreenOff";
      goto LABEL_14;
    }

    if (type == 39)
    {
LABEL_12:
      v9 = self->_dashBoardIdleTimerProvider;
      v10 = @"SBDashBoardScreenOff";
LABEL_17:
      [(SBDashBoardIdleTimerProvider *)v9 addDisabledIdleTimerAssertionReason:v10];
      goto LABEL_18;
    }
  }

LABEL_19:

  return isConsumable;
}

- (id)dashBoardIdleTimerProvider:(id)provider didProposeBehavior:(id)behavior reason:(id)reason
{
  behaviorCopy = behavior;
  reasonCopy = reason;
  idleTimerCoordinator = [(SBDashBoardIdleTimerController *)self idleTimerCoordinator];
  v10 = idleTimerCoordinator;
  if (idleTimerCoordinator)
  {
    v11 = [idleTimerCoordinator idleTimerProvider:self didProposeBehavior:behaviorCopy forReason:reasonCopy];
  }

  else
  {
    v11 = objc_alloc_init(SBDisabledIdleTimer);
  }

  v12 = v11;

  return v12;
}

@end