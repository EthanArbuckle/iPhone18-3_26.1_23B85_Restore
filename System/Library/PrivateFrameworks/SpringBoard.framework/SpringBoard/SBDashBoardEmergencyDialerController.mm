@interface SBDashBoardEmergencyDialerController
- (BOOL)isMakingEmergencyCall;
- (SBDashBoardEmergencyDialerController)initWithCoverSheetViewController:(id)a3;
- (void)dealloc;
- (void)exitEmergencyDialerAnimated:(BOOL)a3;
- (void)launchEmergencyDialerAnimated:(BOOL)a3;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
@end

@implementation SBDashBoardEmergencyDialerController

- (BOOL)isMakingEmergencyCall
{
  WeakRetained = objc_loadWeakRetained(&self->_emergencyDialerViewController);
  v3 = [WeakRetained bs_isAppearingOrAppeared];

  return v3;
}

- (SBDashBoardEmergencyDialerController)initWithCoverSheetViewController:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = SBDashBoardEmergencyDialerController;
  v6 = [(SBDashBoardEmergencyDialerController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_coverSheetViewController, a3);
    v8 = [MEMORY[0x277D02C20] rootSettings];
    [v8 addKeyObserver:v7];
  }

  return v7;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277D02C20] rootSettings];
  [v3 removeKeyObserver:self];

  v4.receiver = self;
  v4.super_class = SBDashBoardEmergencyDialerController;
  [(SBDashBoardEmergencyDialerController *)&v4 dealloc];
}

- (void)launchEmergencyDialerAnimated:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_emergencyDialerViewController);

  if (!WeakRetained)
  {
    v6 = objc_alloc_init(SBDashBoardEmergencyDialerViewController);
    objc_storeWeak(&self->_emergencyDialerViewController, v6);
    v7 = +[SBCoverSheetPresentationManager sharedInstance];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __70__SBDashBoardEmergencyDialerController_launchEmergencyDialerAnimated___block_invoke;
    v12[3] = &unk_2783A97D8;
    v12[4] = self;
    v8 = v6;
    v13 = v8;
    v14 = v3;
    v9 = MEMORY[0x223D6F7F0](v12);
    if ([v7 isCoverSheetHostingAnApp])
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __70__SBDashBoardEmergencyDialerController_launchEmergencyDialerAnimated___block_invoke_2;
      v10[3] = &unk_2783A9348;
      v11 = v9;
      [v7 setCoverSheetPresented:1 animated:v3 dismissModalPresentation:1 withCompletion:v10];
    }

    else
    {
      v9[2](v9);
    }
  }
}

- (void)exitEmergencyDialerAnimated:(BOOL)a3
{
  v3 = a3;
  coverSheetViewController = self->_coverSheetViewController;
  WeakRetained = objc_loadWeakRetained(&self->_emergencyDialerViewController);
  [(CSCoverSheetViewController *)coverSheetViewController _dismissModalViewController:WeakRetained animated:v3 completion:0];
}

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  v5 = MEMORY[0x277D02C20];
  v6 = a4;
  v7 = [v5 rootSettings];
  LODWORD(v5) = [v6 isEqualToString:@"showEmergencyDialer"];

  if (v5)
  {
    if ([v7 showEmergencyDialer])
    {
      [(SBDashBoardEmergencyDialerController *)self launchEmergencyDialer];
    }

    else
    {
      [(SBDashBoardEmergencyDialerController *)self exitEmergencyDialerAnimated:1];
    }
  }
}

@end