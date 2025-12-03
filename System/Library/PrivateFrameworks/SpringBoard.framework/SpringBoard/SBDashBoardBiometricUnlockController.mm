@interface SBDashBoardBiometricUnlockController
- (BOOL)biometricUnlockBehavior:(id)behavior requestsFeedback:(id)feedback;
- (BOOL)biometricUnlockBehavior:(id)behavior requestsUnlock:(id)unlock withFeedback:(id)feedback;
- (BOOL)handleEvent:(id)event;
- (NSString)coverSheetIdentifier;
- (SBBiometricUnlockBehaviorDelegate)biometricUnlockBehaviorDelegate;
- (SBDashBoardBiometricUnlockController)initWithCoverSheetViewController:(id)controller;
- (id)_mesaUnlockBehavior;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)biometricUnlockBehaviorConfigurationDidChange:(id)change;
- (void)dealloc;
- (void)noteLockButtonDown;
- (void)noteMenuButtonDown;
- (void)noteMenuButtonUp;
- (void)setAuthenticated:(BOOL)authenticated;
- (void)startRestToOpenCoachingWithCompletion:(id)completion;
@end

@implementation SBDashBoardBiometricUnlockController

- (id)_mesaUnlockBehavior
{
  biometricUnlockBehavior = self->_biometricUnlockBehavior;
  v3 = objc_opt_class();
  v4 = biometricUnlockBehavior;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v3 = v4;
    }

    else
    {
      v3 = 0;
    }
  }

  v5 = v3;

  return v3;
}

- (SBDashBoardBiometricUnlockController)initWithCoverSheetViewController:(id)controller
{
  controllerCopy = controller;
  v15.receiver = self;
  v15.super_class = SBDashBoardBiometricUnlockController;
  v6 = [(SBDashBoardBiometricUnlockController *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_coverSheetViewController, controller);
    [(CSCoverSheetViewController *)v7->_coverSheetViewController registerExternalEventHandler:v7];
    v8 = [SBDashBoardMesaUnlockBehaviorConfiguration alloc];
    v9 = +[SBLiftToWakeController sharedController];
    mEMORY[0x277D67C98] = [MEMORY[0x277D67C98] sharedInstance];
    rootSettings = [MEMORY[0x277D02C20] rootSettings];
    v12 = [(SBDashBoardMesaUnlockBehaviorConfiguration *)v8 initWithLiftToWakeController:v9 biometricResource:mEMORY[0x277D67C98] lockScreenPrototypeSettings:rootSettings];
    biometricUnlockBehaviorConfiguration = v7->_biometricUnlockBehaviorConfiguration;
    v7->_biometricUnlockBehaviorConfiguration = v12;

    [(SBBiometricUnlockBehaviorConfiguration *)v7->_biometricUnlockBehaviorConfiguration setDelegate:v7];
    [(SBDashBoardBiometricUnlockController *)v7 biometricUnlockBehaviorConfigurationDidChange:v7->_biometricUnlockBehaviorConfiguration];
  }

  return v7;
}

- (void)dealloc
{
  [(CSCoverSheetViewController *)self->_coverSheetViewController unregisterExternalEventHandler:self];
  v3.receiver = self;
  v3.super_class = SBDashBoardBiometricUnlockController;
  [(SBDashBoardBiometricUnlockController *)&v3 dealloc];
}

- (void)noteMenuButtonDown
{
  _mesaUnlockBehavior = [(SBDashBoardBiometricUnlockController *)self _mesaUnlockBehavior];
  [_mesaUnlockBehavior menuButtonDown];
}

- (void)noteMenuButtonUp
{
  _mesaUnlockBehavior = [(SBDashBoardBiometricUnlockController *)self _mesaUnlockBehavior];
  [_mesaUnlockBehavior menuButtonUp];
}

- (void)setAuthenticated:(BOOL)authenticated
{
  authenticatedCopy = authenticated;
  _mesaUnlockBehavior = [(SBDashBoardBiometricUnlockController *)self _mesaUnlockBehavior];
  [_mesaUnlockBehavior setAuthenticated:authenticatedCopy];
}

- (void)noteLockButtonDown
{
  _mesaUnlockBehavior = [(SBDashBoardBiometricUnlockController *)self _mesaUnlockBehavior];
  [_mesaUnlockBehavior lockButtonDown];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBDashBoardBiometricUnlockController *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBDashBoardBiometricUnlockController *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBDashBoardBiometricUnlockController *)self succinctDescriptionBuilder];
  v5 = [succinctDescriptionBuilder appendObject:self->_biometricUnlockBehavior withName:@"biometricUnlockBehavior"];
  v6 = [succinctDescriptionBuilder appendObject:self->_biometricUnlockBehaviorConfiguration withName:@"biometricUnlockBehaviorConfiguration"];
  WeakRetained = objc_loadWeakRetained(&self->_biometricUnlockBehaviorDelegate);
  v8 = [succinctDescriptionBuilder appendObject:WeakRetained withName:@"biometricUnlockBehaviorDelegate"];

  v9 = [succinctDescriptionBuilder appendObject:self->_coverSheetViewController withName:@"coverSheetViewController"];

  return succinctDescriptionBuilder;
}

- (BOOL)biometricUnlockBehavior:(id)behavior requestsFeedback:(id)feedback
{
  feedbackCopy = feedback;
  biometricUnlockBehaviorDelegate = [(SBDashBoardBiometricUnlockController *)self biometricUnlockBehaviorDelegate];
  v7 = [biometricUnlockBehaviorDelegate biometricUnlockBehavior:self requestsFeedback:feedbackCopy];

  if (v7)
  {
    if ([feedbackCopy hintFailureText])
    {
      [(CSCoverSheetViewController *)self->_coverSheetViewController updateCallToActionForMesaMatchFailure];
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"SBBiometricEventTimestampNotificationTryAgain" object:0];
  }

  return v7;
}

- (BOOL)biometricUnlockBehavior:(id)behavior requestsUnlock:(id)unlock withFeedback:(id)feedback
{
  feedbackCopy = feedback;
  unlockCopy = unlock;
  biometricUnlockBehaviorDelegate = [(SBDashBoardBiometricUnlockController *)self biometricUnlockBehaviorDelegate];
  LOBYTE(self) = [biometricUnlockBehaviorDelegate biometricUnlockBehavior:self requestsUnlock:unlockCopy withFeedback:feedbackCopy];

  return self;
}

- (NSString)coverSheetIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (BOOL)handleEvent:(id)event
{
  type = [event type];
  switch(type)
  {
    case 21:
      _mesaUnlockBehavior = [(SBDashBoardBiometricUnlockController *)self _mesaUnlockBehavior];
      [_mesaUnlockBehavior significantUserInteractionDidOccur];
      goto LABEL_7;
    case 25:
      _mesaUnlockBehavior = [(SBDashBoardBiometricUnlockController *)self _mesaUnlockBehavior];
      [_mesaUnlockBehavior screenOff];
      goto LABEL_7;
    case 24:
      _mesaUnlockBehavior = [(SBDashBoardBiometricUnlockController *)self _mesaUnlockBehavior];
      [_mesaUnlockBehavior screenOn];
LABEL_7:

      break;
  }

  return 0;
}

- (void)biometricUnlockBehaviorConfigurationDidChange:(id)change
{
  biometricUnlockBehavior = self->_biometricUnlockBehavior;
  changeCopy = change;
  [(SBBiometricUnlockBehavior *)biometricUnlockBehavior setBiometricUnlockBehaviorDelegate:0];
  newBehaviorForCurrentConfiguration = [changeCopy newBehaviorForCurrentConfiguration];

  v7 = self->_biometricUnlockBehavior;
  self->_biometricUnlockBehavior = newBehaviorForCurrentConfiguration;

  v8 = self->_biometricUnlockBehavior;

  [(SBBiometricUnlockBehavior *)v8 setBiometricUnlockBehaviorDelegate:self];
}

- (void)startRestToOpenCoachingWithCompletion:(id)completion
{
  completionCopy = completion;
  coverSheetViewController = self->_coverSheetViewController;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __78__SBDashBoardBiometricUnlockController_startRestToOpenCoachingWithCompletion___block_invoke;
  v7[3] = &unk_2783A9C70;
  v8 = completionCopy;
  v6 = completionCopy;
  [(CSCoverSheetViewController *)coverSheetViewController startRestToOpenCoachingWithCompletion:v7];
}

uint64_t __78__SBDashBoardBiometricUnlockController_startRestToOpenCoachingWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (SBBiometricUnlockBehaviorDelegate)biometricUnlockBehaviorDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_biometricUnlockBehaviorDelegate);

  return WeakRetained;
}

@end