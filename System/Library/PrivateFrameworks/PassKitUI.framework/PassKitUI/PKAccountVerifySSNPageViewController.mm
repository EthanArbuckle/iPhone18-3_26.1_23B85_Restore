@interface PKAccountVerifySSNPageViewController
- (PKAccountVerifySSNPageViewController)initWithAccount:(id)a3 context:(int64_t)a4;
- (void)_cancelPressed;
- (void)_showSpinner:(BOOL)a3;
- (void)_terminateFlow;
- (void)handleNextButtonTapped:(id)a3;
- (void)viewDidLoad;
@end

@implementation PKAccountVerifySSNPageViewController

- (PKAccountVerifySSNPageViewController)initWithAccount:(id)a3 context:(int64_t)a4
{
  v26[1] = *MEMORY[0x1E69E9840];
  v19 = a3;
  v6 = [MEMORY[0x1E69B8DD0] paymentSetupFieldWithIdentifier:*MEMORY[0x1E69BC228]];
  v7 = [MEMORY[0x1E69B8DD0] paymentSetupFieldWithIdentifier:*MEMORY[0x1E69BC190]];
  v8 = [v6 identifier];
  v9 = objc_alloc(MEMORY[0x1E69B8E38]);
  v26[0] = v6;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  v23 = v7;
  v24 = v8;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
  v25 = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  v13 = [v9 initWithPaymentSetupFields:v10 footerFields:v12];

  v20.receiver = self;
  v20.super_class = PKAccountVerifySSNPageViewController;
  v14 = [(PKPaymentSetupFieldsViewController *)&v20 initWithWebService:0 context:a4 setupDelegate:0 setupFieldsModel:v13];
  if (v14)
  {
    v21 = v8;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
    v22 = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
    [(PKPaymentSetupFieldsViewController *)v14 setSectionIdentifiers:v16];

    objc_storeStrong(&v14->_account, a3);
  }

  return v14;
}

- (void)viewDidLoad
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = PKAccountVerifySSNPageViewController;
  [(PKPaymentSetupFieldsViewController *)&v5 viewDidLoad];
  [(PKPaymentSetupFieldsViewController *)self setHidesBackButton:1 animated:0];
  v3 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__cancelPressed];
  v6[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  [(PKPaymentSetupFieldsViewController *)self _setLeftBarButtonItems:v4 animated:0];

  [v3 setAccessibilityIdentifier:*MEMORY[0x1E69B9708]];
}

- (void)_showSpinner:(BOOL)a3
{
  v3 = a3;
  self->_isLoading = a3;
  v5 = [(PKPaymentSetupTableViewController *)self dockView];
  if (v3)
  {
    [(PKPaymentSetupFieldsViewController *)self showActivitySpinnerWithTitle:0 subtitle:0];
  }

  else
  {
    [(PKPaymentSetupFieldsViewController *)self hideActivitySpinner];
  }

  [v5 setButtonsEnabled:!v3];
}

- (void)handleNextButtonTapped:(id)a3
{
  [(PKAccountVerifySSNPageViewController *)self _showSpinner:1];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__PKAccountVerifySSNPageViewController_handleNextButtonTapped___block_invoke;
  aBlock[3] = &unk_1E8011D28;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  v5 = [MEMORY[0x1E69B8EF8] sharedService];
  v6 = objc_alloc_init(MEMORY[0x1E69B8488]);
  [v6 setDestination:3];
  v7 = [(PKAccount *)self->_account accountBaseURL];
  [v6 setBaseURL:v7];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__PKAccountVerifySSNPageViewController_handleNextButtonTapped___block_invoke_2;
  v10[3] = &unk_1E801C858;
  v11 = v5;
  v12 = v4;
  v10[4] = self;
  v8 = v5;
  v9 = v4;
  [v8 accountServiceCertificatesWithRequest:v6 completion:v10];
}

uint64_t __63__PKAccountVerifySSNPageViewController_handleNextButtonTapped___block_invoke(uint64_t a1, int a2)
{
  result = [*(a1 + 32) _showSpinner:0];
  if (a2)
  {
    v5 = *(a1 + 32);

    return [v5 _terminateFlow];
  }

  return result;
}

void __63__PKAccountVerifySSNPageViewController_handleNextButtonTapped___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__PKAccountVerifySSNPageViewController_handleNextButtonTapped___block_invoke_3;
    block[3] = &unk_1E8012300;
    v16 = v6;
    v17 = *(a1 + 32);
    v21 = v16;
    v22 = v17;
    v23 = *(a1 + 48);
    dispatch_async(MEMORY[0x1E69E96A0], block);

    v8 = v21;
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E69B8458]);
    v9 = [*(*(a1 + 32) + 1264) accountIdentifier];
    [v8 setAccountIdentifier:v9];

    v10 = [*(*(a1 + 32) + 1264) accountBaseURL];
    [v8 setBaseURL:v10];

    v11 = [*(a1 + 32) fieldForIdentifier:*MEMORY[0x1E69BC228]];
    v12 = [v11 submissionString];

    [v8 setSsn:v12];
    [v8 setFeatureIdentifier:{objc_msgSend(*(*(a1 + 32) + 1264), "feature")}];
    v13 = [v5 encryptionCertificates];
    [v8 setCertificates:v13];

    v14 = [v5 encryptionVersion];
    [v8 setEncryptionVersion:v14];

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __63__PKAccountVerifySSNPageViewController_handleNextButtonTapped___block_invoke_5;
    v18[3] = &unk_1E801C830;
    v15 = *(a1 + 40);
    v18[4] = *(a1 + 32);
    v19 = *(a1 + 48);
    [v15 accountUpdateUserInfoWithRequest:v8 completion:v18];
  }
}

void __63__PKAccountVerifySSNPageViewController_handleNextButtonTapped___block_invoke_3(uint64_t a1)
{
  v2 = PKAccountDisplayableError();
  v3 = PKAlertForDisplayableErrorWithHandlers(v2, 0, 0, 0);

  if (v3)
  {
    v4 = [*(a1 + 40) navigationController];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __63__PKAccountVerifySSNPageViewController_handleNextButtonTapped___block_invoke_4;
    v5[3] = &unk_1E8010B50;
    v6 = *(a1 + 48);
    [v4 presentViewController:v3 animated:1 completion:v5];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __63__PKAccountVerifySSNPageViewController_handleNextButtonTapped___block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__PKAccountVerifySSNPageViewController_handleNextButtonTapped___block_invoke_6;
    block[3] = &unk_1E8012300;
    v6 = v15;
    v7 = v4;
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v15[0] = v7;
    v15[1] = v8;
    v16 = v9;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v10 = [MEMORY[0x1E69B8400] sharedInstance];
    v11 = [*(*(a1 + 32) + 1264) accountIdentifier];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __63__PKAccountVerifySSNPageViewController_handleNextButtonTapped___block_invoke_8;
    v12[3] = &unk_1E801C808;
    v6 = &v13;
    v13 = *(a1 + 40);
    [v10 updateAccountUsersForAccountWithIdentifier:v11 completion:v12];
  }
}

void __63__PKAccountVerifySSNPageViewController_handleNextButtonTapped___block_invoke_6(uint64_t a1)
{
  v2 = PKAccountDisplayableError();
  v3 = PKAlertForDisplayableErrorWithHandlers(v2, 0, 0, 0);

  if (v3)
  {
    v4 = [*(a1 + 40) navigationController];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __63__PKAccountVerifySSNPageViewController_handleNextButtonTapped___block_invoke_7;
    v5[3] = &unk_1E8010B50;
    v6 = *(a1 + 48);
    [v4 presentViewController:v3 animated:1 completion:v5];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __63__PKAccountVerifySSNPageViewController_handleNextButtonTapped___block_invoke_8(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__PKAccountVerifySSNPageViewController_handleNextButtonTapped___block_invoke_9;
  block[3] = &unk_1E8010B50;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_cancelPressed
{
  v3 = [(PKPaymentSetupFieldsViewController *)self setupDelegate];
  v5 = v3;
  if (v3)
  {
    [v3 viewControllerDidCancelSetupFlow:self];
  }

  else
  {
    v4 = [(PKAccountVerifySSNPageViewController *)self presentingViewController];
    [v4 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_terminateFlow
{
  v3 = [(PKPaymentSetupFieldsViewController *)self setupDelegate];
  v5 = v3;
  if (v3)
  {
    [v3 viewControllerDidTerminateSetupFlow:self];
  }

  else
  {
    v4 = [(PKAccountVerifySSNPageViewController *)self presentingViewController];
    [v4 dismissViewControllerAnimated:1 completion:0];
  }
}

@end