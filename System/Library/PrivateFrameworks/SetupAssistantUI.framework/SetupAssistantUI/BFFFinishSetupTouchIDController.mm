@interface BFFFinishSetupTouchIDController
+ (id)finishSetupTouchIDController;
- (BFFFinishSetupTouchIDController)init;
- (id)createViewControllerWithPasscode:(id)passcode completion:(id)completion;
@end

@implementation BFFFinishSetupTouchIDController

+ (id)finishSetupTouchIDController
{
  v2 = objc_alloc_init(BFFFinishSetupTouchIDController);

  return v2;
}

- (BFFFinishSetupTouchIDController)init
{
  v2 = *MEMORY[0x277D4D9C8];
  v4.receiver = self;
  v4.super_class = BFFFinishSetupTouchIDController;
  return [(BFFFinishSetupBiometricAndPasscodeController *)&v4 initWithFlowSkipIdentifier:v2];
}

- (id)createViewControllerWithPasscode:(id)passcode completion:(id)completion
{
  passcodeCopy = passcode;
  completionCopy = completion;
  v8 = objc_alloc_init(BFFFinishSetupTouchIDViewController);
  [(BFFFinishSetupTouchIDViewController *)v8 setPasscode:passcodeCopy];
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __79__BFFFinishSetupTouchIDController_createViewControllerWithPasscode_completion___block_invoke;
  v11[3] = &unk_279BB4C58;
  objc_copyWeak(&v13, &location);
  v9 = completionCopy;
  v12 = v9;
  [(BFFFinishSetupTouchIDViewController *)v8 setCompletion:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v8;
}

void __79__BFFFinishSetupTouchIDController_createViewControllerWithPasscode_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  CFPreferencesSetValue(@"Mesa2Presented", *MEMORY[0x277CBED28], *MEMORY[0x277D4D9E0], *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained paneFeatureAnalyticsManager];
    v8 = [MEMORY[0x277CCABB0] numberWithInt:a3 == 0];
    [v7 recordActionWithValue:v8 forFeature:12];
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v10, a3);
  }
}

@end