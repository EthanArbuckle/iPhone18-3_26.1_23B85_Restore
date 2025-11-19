@interface PKFinancialLabPermissionController
- (PKFinancialLabPermissionController)initWithContext:(int64_t)a3;
- (PKFinancialLabPermissionController)initWithContext:(int64_t)a3 performSave:(BOOL)a4;
- (void)savePermission:(BOOL)a3;
- (void)showLoadingUI:(BOOL)a3 animated:(BOOL)a4;
- (void)viewDidLoad;
@end

@implementation PKFinancialLabPermissionController

- (PKFinancialLabPermissionController)initWithContext:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = PKFinancialLabPermissionController;
  v3 = [(PKExplanationViewController *)&v7 initWithContext:a3];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E6967DD0]);
    coordinator = v3->_coordinator;
    v3->_coordinator = v4;

    v3->_performSave = 1;
  }

  return v3;
}

- (PKFinancialLabPermissionController)initWithContext:(int64_t)a3 performSave:(BOOL)a4
{
  result = [(PKFinancialLabPermissionController *)self initWithContext:a3];
  if (result)
  {
    result->_performSave = a4;
  }

  return result;
}

- (void)viewDidLoad
{
  v16.receiver = self;
  v16.super_class = PKFinancialLabPermissionController;
  [(PKExplanationViewController *)&v16 viewDidLoad];
  v3 = [(PKExplanationViewController *)self explanationView];
  v4 = [(PKFinancialLabPermissionController *)self navigationItem];
  [v4 setHidesBackButton:1 animated:0];

  [(PKExplanationViewController *)self setShowCancelButton:0];
  v5 = [(FKBankConnectOfflineLabConsentCoordinator *)self->_coordinator localizedTitle];
  [v3 setTitleText:v5];

  v6 = [(FKBankConnectOfflineLabConsentCoordinator *)self->_coordinator localizedSubtitle];
  [v3 setBodyText:v6];

  v7 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:60.0];
  v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chart.bar.xaxis" withConfiguration:v7];
  [v3 setImage:v8];

  v9 = [v3 dockView];
  v10 = [v9 primaryButton];
  v11 = [(FKBankConnectOfflineLabConsentCoordinator *)self->_coordinator localizedOptInButtonTitle];
  [v10 setTitle:v11 forState:0];

  [v10 addTarget:self action:sel_primaryButtonTapped forControlEvents:64];
  v12 = [v9 footerView];
  v13 = [v12 skipCardButton];
  v14 = [(FKBankConnectOfflineLabConsentCoordinator *)self->_coordinator localizedOptOutButtonTitle];
  [v13 setTitle:v14 forState:0];

  [v13 addTarget:self action:sel_skipCardButtonTapped forControlEvents:64];
  [v3 setShowPrivacyView:1];
  v15 = [MEMORY[0x1E69B7D50] pk_privacyLinkForContext:512];
  [(PKExplanationViewController *)self setPrivacyLinkController:v15];
}

- (void)savePermission:(BOOL)a3
{
  v3 = a3;
  v13 = *MEMORY[0x1E69E9840];
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v12 = v3;
    _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Customer selected lab permissionGranted: %d", buf, 8u);
  }

  if (self->_continueHandler)
  {
    performSave = self->_performSave;
    v7 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (performSave)
    {
      if (v7)
      {
        *buf = 67109120;
        v12 = v3;
        _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Calling coordinator with permissionGranted: %d", buf, 8u);
      }

      coordinator = self->_coordinator;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __53__PKFinancialLabPermissionController_savePermission___block_invoke;
      v9[3] = &unk_1E801C0A8;
      v9[4] = self;
      v10 = v3;
      [(FKBankConnectOfflineLabConsentCoordinator *)coordinator saveOfflineLabSharingPermission:v3 withCompletion:v9];
    }

    else
    {
      if (v7)
      {
        *buf = 0;
        _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "WARNING: _performSave is false. Not calling coordinator.", buf, 2u);
      }

      (*(self->_continueHandler + 2))();
    }
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "No continue handler set. Returning", buf, 2u);
    }
  }
}

void __53__PKFinancialLabPermissionController_savePermission___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "Done calling coordinator. Error: %@", buf, 0xCu);
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__PKFinancialLabPermissionController_savePermission___block_invoke_25;
  v5[3] = &unk_1E8013F80;
  v5[4] = *(a1 + 32);
  v6 = *(a1 + 40);
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

- (void)showLoadingUI:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  v6 = [(PKFinancialLabPermissionController *)self view:a3];
  [v6 setUserInteractionEnabled:v4 ^ 1];

  v7 = [(PKExplanationViewController *)self explanationView];
  v9 = [v7 dockView];

  [v9 setButtonsEnabled:v4 ^ 1];
  v8 = [v9 primaryButton];
  [v8 setShowSpinner:v4];
}

@end