@interface SBSoftLockoutController
- (BOOL)isLocked;
- (BOOL)showPasscode;
- (BOOL)unlockFromSource:(int)a3;
- (NSString)coverSheetIdentifier;
- (SBSoftLockoutController)initWithBiometricLockoutState:(unint64_t)a3;
- (SBSoftLockoutController)initWithBiometricLockoutState:(unint64_t)a3 lockScreenManager:(id)a4;
- (SBSoftLockoutControllerDelegate)delegate;
- (void)_clearPasscodeRequiredAssertion;
- (void)_createPasscodeRequiredAssertion;
- (void)dealloc;
- (void)reload;
@end

@implementation SBSoftLockoutController

- (BOOL)isLocked
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = [WeakRetained requiresLockout];

  return v3;
}

- (void)_clearPasscodeRequiredAssertion
{
  passcodeRequiredAssertion = self->_passcodeRequiredAssertion;
  if (passcodeRequiredAssertion)
  {
    [(BSInvalidatable *)passcodeRequiredAssertion invalidate];
    v4 = self->_passcodeRequiredAssertion;
    self->_passcodeRequiredAssertion = 0;
  }
}

- (SBSoftLockoutController)initWithBiometricLockoutState:(unint64_t)a3
{
  v5 = +[SBLockScreenManager sharedInstance];
  v6 = [(SBSoftLockoutController *)self initWithBiometricLockoutState:a3 lockScreenManager:v5];

  return v6;
}

- (SBSoftLockoutController)initWithBiometricLockoutState:(unint64_t)a3 lockScreenManager:(id)a4
{
  v7 = a4;
  v12.receiver = self;
  v12.super_class = SBSoftLockoutController;
  v8 = [(SBSoftLockoutController *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_lockScreenManager, a4);
    v9->_desiredBiometricLockoutState = a3;
    v10 = [(SBLockScreenManager *)v9->_lockScreenManager coverSheetViewController];
    [v10 registerExternalLockProvider:v9];
    [v10 addCoverSheetObserver:v9];
  }

  return v9;
}

- (void)dealloc
{
  v3 = [(SBLockScreenManager *)self->_lockScreenManager coverSheetViewController];
  [v3 removeCoverSheetObserver:self];
  [v3 unregisterExternalLockProvider:self];
  [(SBSoftLockoutController *)self _clearPasscodeRequiredAssertion];

  v4.receiver = self;
  v4.super_class = SBSoftLockoutController;
  [(SBSoftLockoutController *)&v4 dealloc];
}

- (void)reload
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained requiresLockout];

  if ((v4 & 1) == 0)
  {

    [(SBSoftLockoutController *)self _clearPasscodeRequiredAssertion];
  }
}

- (BOOL)showPasscode
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = [WeakRetained requiresLockout];

  return v3;
}

- (BOOL)unlockFromSource:(int)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([WeakRetained consumePendingUnlock] & 1) != 0 || !objc_msgSend(WeakRetained, "requiresLockout"))
  {
    v5 = 1;
  }

  else
  {
    [(SBSoftLockoutController *)self _createPasscodeRequiredAssertion];
    [(SBLockScreenManager *)self->_lockScreenManager setPasscodeVisible:1 animated:1];
    v5 = 0;
  }

  return v5;
}

- (NSString)coverSheetIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)_createPasscodeRequiredAssertion
{
  if (!self->_passcodeRequiredAssertion)
  {
    v9 = [MEMORY[0x277D67C98] sharedInstance];
    desiredBiometricLockoutState = self->_desiredBiometricLockoutState;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [v9 acquireSimulatedLockoutAssertionWithLockoutState:desiredBiometricLockoutState forReason:v6];
    passcodeRequiredAssertion = self->_passcodeRequiredAssertion;
    self->_passcodeRequiredAssertion = v7;
  }
}

- (SBSoftLockoutControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end