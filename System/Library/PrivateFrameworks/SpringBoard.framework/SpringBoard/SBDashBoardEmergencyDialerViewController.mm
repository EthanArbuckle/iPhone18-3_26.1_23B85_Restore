@interface SBDashBoardEmergencyDialerViewController
- (BOOL)handleEvent:(id)event;
- (void)_activateEmergencyDialerController;
- (void)_deactivateEmergencyDialerController;
- (void)_updateEmergencyCallMode:(id)mode;
- (void)aggregateAppearance:(id)appearance;
- (void)aggregateBehavior:(id)behavior;
- (void)dealloc;
- (void)emergencyDialer:(id)dialer willDeactivateWithError:(id)error;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SBDashBoardEmergencyDialerViewController

- (void)dealloc
{
  [(SBDashBoardEmergencyDialerViewController *)self _deactivateEmergencyDialerController];
  v3.receiver = self;
  v3.super_class = SBDashBoardEmergencyDialerViewController;
  [(CSCoverSheetViewControllerBase *)&v3 dealloc];
}

- (void)viewDidLoad
{
  [(SBDashBoardEmergencyDialerViewController *)self _activateEmergencyDialerController];
  v3.receiver = self;
  v3.super_class = SBDashBoardEmergencyDialerViewController;
  [(CSCoverSheetViewControllerBase *)&v3 viewDidLoad];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = SBDashBoardEmergencyDialerViewController;
  [(CSCoverSheetViewControllerBase *)&v4 viewWillAppear:appear];
  [(SBDashBoardEmergencyDialerViewController *)self _activateEmergencyDialerController];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(SBDashBoardEmergencyDialerViewController *)self _deactivateEmergencyDialerController];
  v5.receiver = self;
  v5.super_class = SBDashBoardEmergencyDialerViewController;
  [(CSCoverSheetViewControllerBase *)&v5 viewDidDisappear:disappearCopy];
}

- (BOOL)handleEvent:(id)event
{
  v15 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  type = [eventCopy type];
  if (type != 27)
  {
    if (type != 25)
    {
LABEL_7:
      v8 = 0;
LABEL_11:
      v12.receiver = self;
      v12.super_class = SBDashBoardEmergencyDialerViewController;
      v8 |= [(CSCoverSheetViewControllerBase *)&v12 handleEvent:eventCopy];
      goto LABEL_12;
    }

    if (self->_inEmergencyCallMode)
    {
      v6 = SBLogDashBoard();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        [eventCopy type];
        v7 = NSStringFromCoverSheetEventType();
        *buf = 138543362;
        v14 = v7;
        _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Ignoring dismiss from event %{public}@ because we are in emergency call mode.", buf, 0xCu);
      }

      goto LABEL_7;
    }
  }

  v9 = SBLogDashBoard();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    [eventCopy type];
    v10 = NSStringFromCoverSheetEventType();
    *buf = 138543362;
    v14 = v10;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Dismissing emergency dialer for event: %{public}@", buf, 0xCu);
  }

  [(CSCoverSheetViewControllerBase *)self dismiss];
  v8 = 1;
  if (([eventCopy isConsumable] & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_12:

  return v8;
}

- (void)aggregateAppearance:(id)appearance
{
  appearanceCopy = appearance;
  v39.receiver = self;
  v39.super_class = SBDashBoardEmergencyDialerViewController;
  [(CSCoverSheetViewControllerBase *)&v39 aggregateAppearance:appearanceCopy];
  background = [MEMORY[0x277D02BC8] background];
  v6 = [background priority:70];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  v8 = [v6 color:whiteColor];
  [appearanceCopy addComponent:v8];

  v9 = objc_alloc(MEMORY[0x277D760A8]);
  blackColor = [MEMORY[0x277D75348] blackColor];
  v11 = [v9 initWithStyle:2 contentColor:blackColor];
  [appearanceCopy setLegibilitySettings:v11];

  dateView = [MEMORY[0x277D02BC8] dateView];
  v13 = [dateView priority:70];
  v14 = [v13 hidden:1];
  [appearanceCopy addComponent:v14];

  backgroundContent = [MEMORY[0x277D02BC8] backgroundContent];
  v16 = [backgroundContent priority:70];
  v17 = [v16 hidden:1];
  [appearanceCopy addComponent:v17];

  pageContent = [MEMORY[0x277D02BC8] pageContent];
  v19 = [pageContent priority:70];
  v20 = [v19 hidden:1];
  [appearanceCopy addComponent:v20];

  whitePoint = [MEMORY[0x277D02BC8] whitePoint];
  v22 = [whitePoint priority:70];
  v23 = [v22 hidden:1];
  [appearanceCopy addComponent:v23];

  if (SBFEffectiveHomeButtonType() == 2)
  {
    v24 = objc_opt_new();
    v25 = [v24 priority:70];
    appearanceIdentifier = [(CSCoverSheetViewControllerBase *)self appearanceIdentifier];
    v27 = [v25 identifier:appearanceIdentifier];
    v28 = [v27 hidden:1];
    v29 = [v28 suppressTeachableMomentsAnimation:1];
    [appearanceCopy addComponent:v29];

    quickActions = [MEMORY[0x277D02BC8] quickActions];
    v31 = [quickActions priority:70];
    v32 = [v31 hidden:1];
    [appearanceCopy addComponent:v32];

    controlCenterGrabber = [MEMORY[0x277D02BC8] controlCenterGrabber];
    v34 = [controlCenterGrabber priority:70];
    v35 = [v34 hidden:1];
    [appearanceCopy addComponent:v35];

    proudLock = [MEMORY[0x277D02BC8] proudLock];
    v37 = [proudLock priority:70];
    v38 = [v37 hidden:1];
    [appearanceCopy addComponent:v38];
  }
}

- (void)aggregateBehavior:(id)behavior
{
  v7.receiver = self;
  v7.super_class = SBDashBoardEmergencyDialerViewController;
  behaviorCopy = behavior;
  [(CSCoverSheetViewControllerBase *)&v7 aggregateBehavior:behaviorCopy];
  if (self->_inEmergencyCallMode)
  {
    v5 = 18;
  }

  else
  {
    v5 = 9;
  }

  [behaviorCopy setIdleTimerDuration:{v5, v7.receiver, v7.super_class}];
  [behaviorCopy setIdleTimerMode:1];
  [behaviorCopy addRestrictedCapabilities:67113118];
  if (self->_inEmergencyCall)
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  [behaviorCopy setProximityDetectionMode:v6];
}

- (void)emergencyDialer:(id)dialer willDeactivateWithError:(id)error
{
  v13 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v6 = SBLogDashBoard();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (errorCopy)
  {
    if (v7)
    {
      v11 = 138543362;
      v12 = errorCopy;
      v8 = "Emergency dialer controller requested dismissal due to error: %{public}@";
      v9 = v6;
      v10 = 12;
LABEL_6:
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, v8, &v11, v10);
    }
  }

  else if (v7)
  {
    LOWORD(v11) = 0;
    v8 = "Emergency dialer controller requested dismissal";
    v9 = v6;
    v10 = 2;
    goto LABEL_6;
  }

  [(CSCoverSheetViewControllerBase *)self dismiss];
}

- (void)_activateEmergencyDialerController
{
  if (!self->_controller)
  {
    v3 = SBLogDashBoard();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Activating emergency dialer controller...", buf, 2u);
    }

    mEMORY[0x277D6EDF8] = [MEMORY[0x277D6EDF8] sharedInstance];
    callCenter = self->_callCenter;
    self->_callCenter = mEMORY[0x277D6EDF8];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel__updateEmergencyCallMode_ name:*MEMORY[0x277D6EFF0] object:0];
    [defaultCenter addObserver:self selector:sel__updateEmergencyCallMode_ name:*MEMORY[0x277D6F018] object:0];
    [defaultCenter addObserver:self selector:sel__updateEmergencyCallMode_ name:*MEMORY[0x277D6EFB0] object:0];
    v7 = objc_alloc_init(SBLockScreenEmergencyDialerController);
    controller = self->_controller;
    self->_controller = v7;

    [(SBLockScreenEmergencyDialerController *)self->_controller setDelegate:self];
    v9 = self->_controller;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __78__SBDashBoardEmergencyDialerViewController__activateEmergencyDialerController__block_invoke;
    v10[3] = &unk_2783A9398;
    v10[4] = self;
    [(SBLockScreenEmergencyDialerController *)v9 activateWithCompletion:v10];
    [(SBDashBoardEmergencyDialerViewController *)self _updateEmergencyCallMode:0];
  }
}

void __78__SBDashBoardEmergencyDialerViewController__activateEmergencyDialerController__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = SBLogDashBoard();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromBOOL();
    *buf = 138543362;
    v17 = v3;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "Emergency dialer controller activation complete; success = %{public}@.", buf, 0xCu);
  }

  v4 = [*(*(a1 + 32) + 1096) viewController];
  if (v4)
  {
    v5 = MEMORY[0x277CF0B70];
    v6 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
    v7 = [v5 settingsWithDuration:v6 timingFunction:0.4];

    v8 = [v4 view];
    [v8 setAlpha:0.0];
    v9 = *(a1 + 32);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __78__SBDashBoardEmergencyDialerViewController__activateEmergencyDialerController__block_invoke_23;
    v12[3] = &unk_2783B08F8;
    v13 = v8;
    v14 = v9;
    v15 = v7;
    v10 = v7;
    v11 = v8;
    [v9 bs_addChildViewController:v4 animated:1 transitionBlock:v12];
    [*(a1 + 32) _updateEmergencyCallMode:0];
  }

  else
  {
    [*(a1 + 32) _deactivateEmergencyDialerController];
    [*(a1 + 32) dismiss];
  }
}

void __78__SBDashBoardEmergencyDialerViewController__activateEmergencyDialerController__block_invoke_23(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) view];
  [v5 bounds];
  [v4 setFrame:?];

  v6 = MEMORY[0x277CF0D38];
  v7 = *(a1 + 48);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __78__SBDashBoardEmergencyDialerViewController__activateEmergencyDialerController__block_invoke_2;
  v11[3] = &unk_2783A8C18;
  v12 = *(a1 + 32);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __78__SBDashBoardEmergencyDialerViewController__activateEmergencyDialerController__block_invoke_3;
  v9[3] = &unk_2783A9C70;
  v10 = v3;
  v8 = v3;
  [v6 animateWithSettings:v7 actions:v11 completion:v9];
}

uint64_t __78__SBDashBoardEmergencyDialerViewController__activateEmergencyDialerController__block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_deactivateEmergencyDialerController
{
  if (self->_controller)
  {
    v3 = SBLogDashBoard();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Deactivating emergency dialer controller", v7, 2u);
    }

    [(SBLockScreenEmergencyDialerController *)self->_controller deactivate];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self name:*MEMORY[0x277D6EFF0] object:0];
    [defaultCenter removeObserver:self name:*MEMORY[0x277D6F018] object:0];
    [defaultCenter removeObserver:self name:*MEMORY[0x277D6EFB0] object:0];
    controller = self->_controller;
    self->_controller = 0;

    callCenter = self->_callCenter;
    self->_callCenter = 0;

    self->_inEmergencyCall = 0;
    self->_inEmergencyCallMode = 0;
  }
}

- (void)_updateEmergencyCallMode:(id)mode
{
  modeCopy = mode;
  v3 = modeCopy;
  BSDispatchMain();
}

uint64_t __69__SBDashBoardEmergencyDialerViewController__updateEmergencyCallMode___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = SBLogDashBoard();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [*(a1 + 32) name];
      v10 = 138412290;
      v11 = v3;
      _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_INFO, "Updating for notification: %@", &v10, 0xCu);
    }
  }

  v4 = [*(*(a1 + 40) + 1088) anyCallPassesTest:&__block_literal_global_189];
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = [MEMORY[0x277D6EDE8] isEmergencyCallbackModeEnabled];
  }

  if ((BSEqualBools() & 1) == 0 || (result = BSEqualBools(), (result & 1) == 0))
  {
    *(*(a1 + 40) + 1104) = v4;
    *(*(a1 + 40) + 1105) = v5;
    v7 = SBLogDashBoard();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = NSStringFromBOOL();
      v9 = NSStringFromBOOL();
      v10 = 138543618;
      v11 = v8;
      v12 = 2114;
      v13 = v9;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Now in emergency call mode: %{public}@; call active: %{public}@", &v10, 0x16u);
    }

    return [*(a1 + 40) rebuildBehavior];
  }

  return result;
}

@end