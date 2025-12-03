@interface SBSoftLockoutController
- (BOOL)isLocked;
- (BOOL)showPasscode;
- (BOOL)unlockFromSource:(int)source;
- (NSString)coverSheetIdentifier;
- (SBSoftLockoutController)initWithBiometricLockoutState:(unint64_t)state;
- (SBSoftLockoutController)initWithBiometricLockoutState:(unint64_t)state lockScreenManager:(id)manager;
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
  requiresLockout = [WeakRetained requiresLockout];

  return requiresLockout;
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

- (SBSoftLockoutController)initWithBiometricLockoutState:(unint64_t)state
{
  v5 = +[SBLockScreenManager sharedInstance];
  v6 = [(SBSoftLockoutController *)self initWithBiometricLockoutState:state lockScreenManager:v5];

  return v6;
}

- (SBSoftLockoutController)initWithBiometricLockoutState:(unint64_t)state lockScreenManager:(id)manager
{
  managerCopy = manager;
  v12.receiver = self;
  v12.super_class = SBSoftLockoutController;
  v8 = [(SBSoftLockoutController *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_lockScreenManager, manager);
    v9->_desiredBiometricLockoutState = state;
    coverSheetViewController = [(SBLockScreenManager *)v9->_lockScreenManager coverSheetViewController];
    [coverSheetViewController registerExternalLockProvider:v9];
    [coverSheetViewController addCoverSheetObserver:v9];
  }

  return v9;
}

- (void)dealloc
{
  coverSheetViewController = [(SBLockScreenManager *)self->_lockScreenManager coverSheetViewController];
  [coverSheetViewController removeCoverSheetObserver:self];
  [coverSheetViewController unregisterExternalLockProvider:self];
  [(SBSoftLockoutController *)self _clearPasscodeRequiredAssertion];

  v4.receiver = self;
  v4.super_class = SBSoftLockoutController;
  [(SBSoftLockoutController *)&v4 dealloc];
}

- (void)reload
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  requiresLockout = [WeakRetained requiresLockout];

  if ((requiresLockout & 1) == 0)
  {

    [(SBSoftLockoutController *)self _clearPasscodeRequiredAssertion];
  }
}

- (BOOL)showPasscode
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  requiresLockout = [WeakRetained requiresLockout];

  return requiresLockout;
}

- (BOOL)unlockFromSource:(int)source
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
    mEMORY[0x277D67C98] = [MEMORY[0x277D67C98] sharedInstance];
    desiredBiometricLockoutState = self->_desiredBiometricLockoutState;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [mEMORY[0x277D67C98] acquireSimulatedLockoutAssertionWithLockoutState:desiredBiometricLockoutState forReason:v6];
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