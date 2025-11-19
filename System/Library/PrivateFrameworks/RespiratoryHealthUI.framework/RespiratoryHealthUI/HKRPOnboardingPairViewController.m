@interface HKRPOnboardingPairViewController
- (BPSSetupMiniFlowControllerDelegate)miniFlowDelegate;
- (HKRPOnboardingPairViewController)initWithSettings:(id)a3 onboardingManager:(id)a4;
- (id)_localizedStringForKey:(id)a3;
- (id)detailString;
- (void)_makeHeroView;
- (void)_onboardWithCompletion:(id)a3;
- (void)_presentOnboardingError:(id)a3 completion:(id)a4;
- (void)alternateButtonPressed:(id)a3;
- (void)suggestedButtonPressed:(id)a3;
- (void)viewDidLoad;
@end

@implementation HKRPOnboardingPairViewController

- (HKRPOnboardingPairViewController)initWithSettings:(id)a3 onboardingManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HKRPOnboardingPairViewController;
  v9 = [(BPSWelcomeOptinViewController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_settings, a3);
    objc_storeStrong(&v10->_onboardingManager, a4);
    [(BPSWelcomeOptinViewController *)v10 setStyle:74];
  }

  return v10;
}

- (id)detailString
{
  v2 = [(HKRPOnboardingPairViewController *)self settings];
  v3 = [v2 recordingInactiveDescription];

  return v3;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = HKRPOnboardingPairViewController;
  [(BPSWelcomeOptinViewController *)&v3 viewDidLoad];
  [(HKRPOnboardingPairViewController *)self _makeHeroView];
}

- (void)_makeHeroView
{
  v7 = *MEMORY[0x277D85DE8];
  v5 = 138543362;
  v6 = objc_opt_class();
  v3 = v6;
  _os_log_error_impl(&dword_262098000, a2, OS_LOG_TYPE_ERROR, "[%{public}@] illustratedWatchView is nil", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (id)_localizedStringForKey:(id)a3
{
  v3 = MEMORY[0x277CCA8D8];
  v4 = a3;
  v5 = [v3 bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:v4 value:&stru_28749E498 table:@"RespiratoryHealthUI"];

  return v6;
}

- (void)suggestedButtonPressed:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __59__HKRPOnboardingPairViewController_suggestedButtonPressed___block_invoke;
  v3[3] = &unk_279B0F020;
  v3[4] = self;
  [(HKRPOnboardingPairViewController *)self _onboardWithCompletion:v3];
}

void __59__HKRPOnboardingPairViewController_suggestedButtonPressed___block_invoke(uint64_t a1, char a2)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __59__HKRPOnboardingPairViewController_suggestedButtonPressed___block_invoke_2;
  v2[3] = &unk_279B0EFF8;
  v3 = a2;
  v2[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

void __59__HKRPOnboardingPairViewController_suggestedButtonPressed___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v3 = [*(a1 + 32) miniFlowDelegate];
    [v3 miniFlowStepComplete:*(a1 + 32)];
  }
}

- (void)_onboardWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HKRPOnboardingPairViewController *)self onboardingManager];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__HKRPOnboardingPairViewController__onboardWithCompletion___block_invoke;
  v7[3] = &unk_279B0F098;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 onboardWithCompletion:v7];
}

void __59__HKRPOnboardingPairViewController__onboardWithCompletion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__HKRPOnboardingPairViewController__onboardWithCompletion___block_invoke_2;
    block[3] = &unk_279B0F070;
    block[4] = *(a1 + 32);
    v8 = v5;
    v9 = *(a1 + 40);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __59__HKRPOnboardingPairViewController__onboardWithCompletion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __59__HKRPOnboardingPairViewController__onboardWithCompletion___block_invoke_3;
  v3[3] = &unk_279B0F048;
  v4 = *(a1 + 48);
  [v1 _presentOnboardingError:v2 completion:v3];
}

- (void)_presentOnboardingError:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = v7;
  v10 = [v8 domain];
  v11 = *MEMORY[0x277CCBDB0];
  if (([v10 isEqualToString:*MEMORY[0x277CCBDB0]] & 1) == 0)
  {

LABEL_5:
    v16 = v8;
    v17 = [v16 domain];
    if ([v17 isEqualToString:v11])
    {
      v18 = [v16 code];

      if (v18 == 110)
      {
        v14 = 0;
        v15 = @"RESPIRATORY_HEALTH_ONBOARDING_ALERT_LOCATION_UNAPPROVED_ERROR";
        goto LABEL_10;
      }
    }

    else
    {
    }

    v14 = 0;
    v15 = @"RESPIRATORY_HEALTH_ONBOARDING_ALERT_COMPLETION_UNKNOWN_ERROR";
    goto LABEL_10;
  }

  v12 = [v8 code];

  if (v12 != 109)
  {
    goto LABEL_5;
  }

  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"RESPIRATORY_HEALTH_ONBOARDING_ALERT_LOCATION_NOT_FOUND_ERROR_TITLE" value:&stru_28749E498 table:@"RespiratoryHealthUI"];

  v15 = @"RESPIRATORY_HEALTH_ONBOARDING_ALERT_LOCATION_NOT_FOUND_ERROR_BODY";
LABEL_10:
  v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v20 = [v19 localizedStringForKey:v15 value:&stru_28749E498 table:@"RespiratoryHealthUI"];

  v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v22 = [v21 localizedStringForKey:@"OK" value:&stru_28749E498 table:@"RespiratoryHealthUI"];

  v23 = [MEMORY[0x277D75110] alertControllerWithTitle:v14 message:v20 preferredStyle:1];
  v24 = MEMORY[0x277D750F8];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __alertControllerForOnboardingError_block_invoke;
  v27[3] = &unk_279B0F0C0;
  v28 = v9;
  v25 = v9;
  v26 = [v24 actionWithTitle:v22 style:0 handler:v27];
  [v23 addAction:v26];

  [(HKRPOnboardingPairViewController *)self presentViewController:v23 animated:1 completion:0];
}

- (void)alternateButtonPressed:(id)a3
{
  v4 = [(HKRPOnboardingPairViewController *)self miniFlowDelegate];
  [v4 miniFlowStepComplete:self];
}

- (BPSSetupMiniFlowControllerDelegate)miniFlowDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->miniFlowDelegate);

  return WeakRetained;
}

@end