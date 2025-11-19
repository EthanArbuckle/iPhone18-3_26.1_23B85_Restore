@interface PKApplyActionExplanationViewController
- (void)_configureAppleCardIcon;
- (void)_handleCancelTapped;
- (void)_terminateFlow;
- (void)_withdrawApplicationTapped;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation PKApplyActionExplanationViewController

- (void)viewDidLoad
{
  v15.receiver = self;
  v15.super_class = PKApplyActionExplanationViewController;
  [(PKApplyExplanationViewController *)&v15 viewDidLoad];
  objc_initWeak(&location, self);
  v3 = [(PKApplyExplanationViewController *)self controller];
  v4 = [(PKApplyExplanationViewController *)self controller];
  v5 = [v4 featureApplication];

  if ([v5 feature] == 2 || objc_msgSend(v3, "featureIdentifier") == 2)
  {
    v6 = [v3 featureApplication];
    v7 = [v6 applicationState];

    if (v7 == 7)
    {
      [(PKApplyActionExplanationViewController *)self _configureAppleCardIcon];
      v8 = [(PKExplanationViewController *)self explanationView];
      [v8 setBodyButtonNumberOfLines:2];
    }

    else if ([v3 applicationType] == 2)
    {
      [(PKApplyActionExplanationViewController *)self _configureAppleCardIcon];
    }
  }

  v9 = [(PKExplanationViewController *)self explanationView];
  [v9 setBodyButtonUsesLearnMoreStyle:1];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __53__PKApplyActionExplanationViewController_viewDidLoad__block_invoke;
  v12[3] = &unk_1E80131F8;
  objc_copyWeak(&v13, &location);
  [(PKApplyExplanationViewController *)self setContinueAction:v12];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__PKApplyActionExplanationViewController_viewDidLoad__block_invoke_3;
  v10[3] = &unk_1E80131F8;
  objc_copyWeak(&v11, &location);
  [(PKApplyExplanationViewController *)self setAuxiliaryAction:v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);

  objc_destroyWeak(&location);
}

uint64_t __53__PKApplyActionExplanationViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained showNavigationBarSpinner:1];
    v3 = [v2 currentPage];
    v4 = [v2 controller];
    v5 = [v3 primaryActionIdentifier];
    v6 = [v3 footerContent];
    v7 = [v6 termsIdentifiers];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __53__PKApplyActionExplanationViewController_viewDidLoad__block_invoke_2;
    v9[3] = &unk_1E8011D00;
    v10 = v2;
    [v4 submitActionIdentifier:v5 termsIdentifiers:v7 odiAttributesDictionary:0 completion:v9];
  }

  return 0;
}

uint64_t __53__PKApplyActionExplanationViewController_viewDidLoad__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained showNavigationBarSpinner:1];
    v3 = [v2 currentPage];
    v4 = [v2 controller];
    v5 = [v3 secondaryActionIdentifier];
    v6 = [v3 footerContent];
    v7 = [v6 termsIdentifiers];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __53__PKApplyActionExplanationViewController_viewDidLoad__block_invoke_4;
    v9[3] = &unk_1E8011D00;
    v10 = v2;
    [v4 submitActionIdentifier:v5 termsIdentifiers:v7 odiAttributesDictionary:0 completion:v9];
  }

  return 0;
}

- (void)viewDidAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = PKApplyActionExplanationViewController;
  [(PKApplyExplanationViewController *)&v8 viewDidAppear:a3];
  v4 = [(PKApplyExplanationViewController *)self controller];
  v5 = [v4 featureApplication];
  v6 = [v5 declineDetails];
  v7 = [v6 declinedTermsIdentifier];

  if ([v5 applicationState] == 7 && objc_msgSend(v7, "length"))
  {
    [v4 termsShownWithIdentifier:v7];
  }
}

- (void)_configureAppleCardIcon
{
  v3 = [(PKApplyExplanationViewController *)self controller];
  v5 = PKFeatureApplicationHeaderImageWithImage([v3 featureIdentifier], 0);

  v4 = [(PKExplanationViewController *)self explanationView];
  [v4 setImage:v5];
  [v4 setTopMargin:30.0];
}

- (void)_handleCancelTapped
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__PKApplyActionExplanationViewController__handleCancelTapped__block_invoke;
  aBlock[3] = &unk_1E8010970;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v4 = [(PKApplyExplanationViewController *)self controller];
  v5 = [v4 cancelAlertWithContinueAction:v3];

  if (v5)
  {
    v6 = [(PKApplyActionExplanationViewController *)self navigationController];
    [v6 presentViewController:v5 animated:1 completion:0];
  }

  else
  {
    v3[2](v3);
  }
}

uint64_t __61__PKApplyActionExplanationViewController__handleCancelTapped__block_invoke(uint64_t a1)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) controller];
  v3 = [*(a1 + 32) currentPage];
  v4 = [*(a1 + 32) analyticsPageTag];
  v5 = *MEMORY[0x1E69BA440];
  v9[0] = *MEMORY[0x1E69BA680];
  v9[1] = v5;
  v6 = *MEMORY[0x1E69BA448];
  v10[0] = *MEMORY[0x1E69BA6F0];
  v10[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  [v2 reportAnalyticsDictionaryForPage:v3 pageTag:v4 additionalValues:v7];

  return [*(a1 + 32) _withdrawApplicationTapped];
}

- (void)_withdrawApplicationTapped
{
  [(PKApplyExplanationViewController *)self showNavigationBarSpinner:1];
  objc_initWeak(&location, self);
  v3 = [(PKApplyExplanationViewController *)self controller];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __68__PKApplyActionExplanationViewController__withdrawApplicationTapped__block_invoke;
  v4[3] = &unk_1E80162F0;
  objc_copyWeak(&v5, &location);
  [v3 withdrawApplicationWithCompletion:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __68__PKApplyActionExplanationViewController__withdrawApplicationTapped__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (v5)
    {
      v9 = [WeakRetained navigationController];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __68__PKApplyActionExplanationViewController__withdrawApplicationTapped__block_invoke_2;
      v13[3] = &unk_1E8011D28;
      v14 = v8;
      [v9 pk_presentPaymentSetupViewController:v5 animated:1 completion:v13];
    }

    else
    {
      [WeakRetained showNavigationBarSpinner:0];
      if (v6)
      {
        v10 = PKAlertForDisplayableErrorWithHandlers(v6, 0, 0, 0);
        v11 = [v8 navigationController];
        [v11 presentViewController:v10 animated:1 completion:0];
      }

      else
      {
        v12 = [v8 controller];
        [v12 endApplyFlow];

        [v8 _terminateFlow];
      }
    }
  }
}

uint64_t __68__PKApplyActionExplanationViewController__withdrawApplicationTapped__block_invoke_2(uint64_t a1, char a2)
{
  result = [*(a1 + 32) showNavigationBarSpinner:0];
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 32);

    return [v5 _terminateFlow];
  }

  return result;
}

- (void)_terminateFlow
{
  v3 = [(PKApplyExplanationViewController *)self setupDelegate];
  v5 = v3;
  if (v3)
  {
    [v3 viewControllerDidTerminateSetupFlow:self];
  }

  else
  {
    v4 = [(PKApplyActionExplanationViewController *)self presentingViewController];
    [v4 dismissViewControllerAnimated:1 completion:0];
  }
}

@end