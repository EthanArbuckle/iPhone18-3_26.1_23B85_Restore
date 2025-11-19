@interface PKApplyCannotResumeIDVViewController
- (void)_restartApplyFlow;
- (void)explanationViewDidSelectSetupLater:(id)a3;
@end

@implementation PKApplyCannotResumeIDVViewController

- (void)explanationViewDidSelectSetupLater:(id)a3
{
  v4 = [(PKApplyExplanationViewController *)self controller];
  [v4 endApplyFlow];

  [(PKApplyExplanationViewController *)self handleNextStep];
}

- (void)_restartApplyFlow
{
  [(PKApplyExplanationViewController *)self showNavigationBarSpinner:1];
  v3 = [(PKApplyExplanationViewController *)self controller];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __57__PKApplyCannotResumeIDVViewController__restartApplyFlow__block_invoke;
  v4[3] = &unk_1E8011D00;
  v4[4] = self;
  [v3 withdrawApplicationWithCompletion:v4];
}

void __57__PKApplyCannotResumeIDVViewController__restartApplyFlow__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = [*(a1 + 32) navigationController];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __57__PKApplyCannotResumeIDVViewController__restartApplyFlow__block_invoke_2;
    v12[3] = &unk_1E8011D28;
    v12[4] = *(a1 + 32);
    [v8 pk_presentPaymentSetupViewController:v5 animated:1 completion:v12];
  }

  else
  {
    if (!v6)
    {
      [*(a1 + 32) showNavigationBarSpinner:0];
      v10 = [*(a1 + 32) navigationController];
      [v10 _pk_popToViewControllerPresentationMarker:3 animated:1];

      goto LABEL_6;
    }

    v8 = PKAlertForDisplayableErrorWithHandlers(v6, 0, 0, 0);
    v9 = *(a1 + 32);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __57__PKApplyCannotResumeIDVViewController__restartApplyFlow__block_invoke_3;
    v11[3] = &unk_1E8010970;
    v11[4] = v9;
    [v9 presentViewController:v8 animated:1 completion:v11];
  }

LABEL_6:
}

uint64_t __57__PKApplyCannotResumeIDVViewController__restartApplyFlow__block_invoke_2(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 showNavigationBarSpinner:0];
  }

  else
  {
    return [v2 terminateSetupFlow];
  }
}

@end