@interface BFFFinishSetupFaceIDController
+ (id)finishSetupFaceIDController;
- (BFFFinishSetupFaceIDController)init;
- (id)createViewControllerWithPasscode:(id)a3 completion:(id)a4;
- (void)performExtendedInitializationWithCompletion:(id)a3;
@end

@implementation BFFFinishSetupFaceIDController

+ (id)finishSetupFaceIDController
{
  v2 = objc_alloc_init(BFFFinishSetupFaceIDController);

  return v2;
}

- (BFFFinishSetupFaceIDController)init
{
  v2 = *MEMORY[0x277D4D9B0];
  v4.receiver = self;
  v4.super_class = BFFFinishSetupFaceIDController;
  return [(BFFFinishSetupBiometricAndPasscodeController *)&v4 initWithFlowSkipIdentifier:v2];
}

- (void)performExtendedInitializationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(BFFFinishSetupFaceIDViewController);
  viewController = self->_viewController;
  self->_viewController = v5;

  v7 = self->_viewController;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __78__BFFFinishSetupFaceIDController_performExtendedInitializationWithCompletion___block_invoke;
  v9[3] = &unk_279BB4F60;
  v10 = v4;
  v8 = v4;
  [(BFFFaceIDViewController *)v7 performExtendedInitializationWithCompletion:v9];
}

void __78__BFFFinishSetupFaceIDController_performExtendedInitializationWithCompletion___block_invoke(uint64_t a1, int a2)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 32);

    v3(v4, 1, 0);
  }

  else
  {
    v6[0] = *MEMORY[0x277D4D9B0];
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
    (*(v2 + 16))(v2, 0, v5);
  }
}

- (id)createViewControllerWithPasscode:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(BFFFinishSetupFaceIDViewController *)self->_viewController setPasscode:v6];
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __78__BFFFinishSetupFaceIDController_createViewControllerWithPasscode_completion___block_invoke;
  v11[3] = &unk_279BB4C58;
  objc_copyWeak(&v13, &location);
  v8 = v7;
  v12 = v8;
  [(BFFFinishSetupFaceIDViewController *)self->_viewController setCompletion:v11];
  v9 = self->_viewController;

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v9;
}

void __78__BFFFinishSetupFaceIDController_createViewControllerWithPasscode_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    if (a3)
    {
      v7 = &unk_287767D58;
    }

    else
    {
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(WeakRetained[7], "enrollmentConfiguration") + 1000}];
    }

    v8 = [v6 paneFeatureAnalyticsManager];
    [v8 recordActionWithValue:v7 forFeature:13];
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v10, a3);
  }
}

@end