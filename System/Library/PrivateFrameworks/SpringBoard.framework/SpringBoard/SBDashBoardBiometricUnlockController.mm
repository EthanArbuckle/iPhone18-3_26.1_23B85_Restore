@interface SBDashBoardBiometricUnlockController
- (BOOL)biometricUnlockBehavior:(id)a3 requestsFeedback:(id)a4;
- (BOOL)biometricUnlockBehavior:(id)a3 requestsUnlock:(id)a4 withFeedback:(id)a5;
- (BOOL)handleEvent:(id)a3;
- (NSString)coverSheetIdentifier;
- (SBBiometricUnlockBehaviorDelegate)biometricUnlockBehaviorDelegate;
- (SBDashBoardBiometricUnlockController)initWithCoverSheetViewController:(id)a3;
- (id)_mesaUnlockBehavior;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)biometricUnlockBehaviorConfigurationDidChange:(id)a3;
- (void)dealloc;
- (void)noteLockButtonDown;
- (void)noteMenuButtonDown;
- (void)noteMenuButtonUp;
- (void)setAuthenticated:(BOOL)a3;
- (void)startRestToOpenCoachingWithCompletion:(id)a3;
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

- (SBDashBoardBiometricUnlockController)initWithCoverSheetViewController:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = SBDashBoardBiometricUnlockController;
  v6 = [(SBDashBoardBiometricUnlockController *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_coverSheetViewController, a3);
    [(CSCoverSheetViewController *)v7->_coverSheetViewController registerExternalEventHandler:v7];
    v8 = [SBDashBoardMesaUnlockBehaviorConfiguration alloc];
    v9 = +[SBLiftToWakeController sharedController];
    v10 = [MEMORY[0x277D67C98] sharedInstance];
    v11 = [MEMORY[0x277D02C20] rootSettings];
    v12 = [(SBDashBoardMesaUnlockBehaviorConfiguration *)v8 initWithLiftToWakeController:v9 biometricResource:v10 lockScreenPrototypeSettings:v11];
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
  v2 = [(SBDashBoardBiometricUnlockController *)self _mesaUnlockBehavior];
  [v2 menuButtonDown];
}

- (void)noteMenuButtonUp
{
  v2 = [(SBDashBoardBiometricUnlockController *)self _mesaUnlockBehavior];
  [v2 menuButtonUp];
}

- (void)setAuthenticated:(BOOL)a3
{
  v3 = a3;
  v4 = [(SBDashBoardBiometricUnlockController *)self _mesaUnlockBehavior];
  [v4 setAuthenticated:v3];
}

- (void)noteLockButtonDown
{
  v2 = [(SBDashBoardBiometricUnlockController *)self _mesaUnlockBehavior];
  [v2 lockButtonDown];
}

- (id)succinctDescription
{
  v2 = [(SBDashBoardBiometricUnlockController *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBDashBoardBiometricUnlockController *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBDashBoardBiometricUnlockController *)self succinctDescriptionBuilder];
  v5 = [v4 appendObject:self->_biometricUnlockBehavior withName:@"biometricUnlockBehavior"];
  v6 = [v4 appendObject:self->_biometricUnlockBehaviorConfiguration withName:@"biometricUnlockBehaviorConfiguration"];
  WeakRetained = objc_loadWeakRetained(&self->_biometricUnlockBehaviorDelegate);
  v8 = [v4 appendObject:WeakRetained withName:@"biometricUnlockBehaviorDelegate"];

  v9 = [v4 appendObject:self->_coverSheetViewController withName:@"coverSheetViewController"];

  return v4;
}

- (BOOL)biometricUnlockBehavior:(id)a3 requestsFeedback:(id)a4
{
  v5 = a4;
  v6 = [(SBDashBoardBiometricUnlockController *)self biometricUnlockBehaviorDelegate];
  v7 = [v6 biometricUnlockBehavior:self requestsFeedback:v5];

  if (v7)
  {
    if ([v5 hintFailureText])
    {
      [(CSCoverSheetViewController *)self->_coverSheetViewController updateCallToActionForMesaMatchFailure];
    }

    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 postNotificationName:@"SBBiometricEventTimestampNotificationTryAgain" object:0];
  }

  return v7;
}

- (BOOL)biometricUnlockBehavior:(id)a3 requestsUnlock:(id)a4 withFeedback:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(SBDashBoardBiometricUnlockController *)self biometricUnlockBehaviorDelegate];
  LOBYTE(self) = [v9 biometricUnlockBehavior:self requestsUnlock:v8 withFeedback:v7];

  return self;
}

- (NSString)coverSheetIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (BOOL)handleEvent:(id)a3
{
  v4 = [a3 type];
  switch(v4)
  {
    case 21:
      v5 = [(SBDashBoardBiometricUnlockController *)self _mesaUnlockBehavior];
      [v5 significantUserInteractionDidOccur];
      goto LABEL_7;
    case 25:
      v5 = [(SBDashBoardBiometricUnlockController *)self _mesaUnlockBehavior];
      [v5 screenOff];
      goto LABEL_7;
    case 24:
      v5 = [(SBDashBoardBiometricUnlockController *)self _mesaUnlockBehavior];
      [v5 screenOn];
LABEL_7:

      break;
  }

  return 0;
}

- (void)biometricUnlockBehaviorConfigurationDidChange:(id)a3
{
  biometricUnlockBehavior = self->_biometricUnlockBehavior;
  v5 = a3;
  [(SBBiometricUnlockBehavior *)biometricUnlockBehavior setBiometricUnlockBehaviorDelegate:0];
  v6 = [v5 newBehaviorForCurrentConfiguration];

  v7 = self->_biometricUnlockBehavior;
  self->_biometricUnlockBehavior = v6;

  v8 = self->_biometricUnlockBehavior;

  [(SBBiometricUnlockBehavior *)v8 setBiometricUnlockBehaviorDelegate:self];
}

- (void)startRestToOpenCoachingWithCompletion:(id)a3
{
  v4 = a3;
  coverSheetViewController = self->_coverSheetViewController;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __78__SBDashBoardBiometricUnlockController_startRestToOpenCoachingWithCompletion___block_invoke;
  v7[3] = &unk_2783A9C70;
  v8 = v4;
  v6 = v4;
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