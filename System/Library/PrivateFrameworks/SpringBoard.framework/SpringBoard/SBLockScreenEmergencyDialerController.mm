@interface SBLockScreenEmergencyDialerController
- (SBLockScreenEmergencyDialerDelegate)delegate;
- (void)activateWithCompletion:(id)a3;
- (void)deactivate;
- (void)dismissEmergencyCallViewController:(id)a3;
- (void)emergencyCallViewController:(id)a3 didExitWithError:(id)a4;
@end

@implementation SBLockScreenEmergencyDialerController

- (void)activateWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__SBLockScreenEmergencyDialerController_activateWithCompletion___block_invoke;
  v6[3] = &unk_2783C4048;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(SBUIEmergencyCallHostViewController *)SBLockScreenEmergencyCallViewController requestEmergencyCallControllerWithCompletion:v6];
}

void __64__SBLockScreenEmergencyDialerController_activateWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  v6 = *(a1 + 32);
  if ((*(v6 + 16) & 1) == 0)
  {
    v8 = v4;
    if (v4)
    {
      *(v6 + 16) = 1;
      objc_storeStrong((*(a1 + 32) + 8), a2);
      [*(*(a1 + 32) + 8) setDelegate:?];
      v5 = v8;
    }

    v7 = *(a1 + 40);
    if (v7)
    {
      (*(v7 + 16))(v7, *(*(a1 + 32) + 8) != 0);
      v5 = v8;
    }
  }
}

- (void)deactivate
{
  if (self->_active)
  {
    self->_active = 0;
    [(SBLockScreenEmergencyCallViewController *)self->_viewController setDelegate:0];
    viewController = self->_viewController;
    self->_viewController = 0;
  }
}

- (void)dismissEmergencyCallViewController:(id)a3
{
  if (self->_active)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained emergencyDialer:self willDeactivateWithError:0];
  }
}

- (void)emergencyCallViewController:(id)a3 didExitWithError:(id)a4
{
  if (self->_active)
  {
    v6 = a4;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained emergencyDialer:self willDeactivateWithError:v6];
  }
}

- (SBLockScreenEmergencyDialerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end