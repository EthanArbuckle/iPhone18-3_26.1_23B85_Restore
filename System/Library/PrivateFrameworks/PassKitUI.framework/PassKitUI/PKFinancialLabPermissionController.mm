@interface PKFinancialLabPermissionController
- (PKFinancialLabPermissionController)initWithContext:(int64_t)context;
- (PKFinancialLabPermissionController)initWithContext:(int64_t)context performSave:(BOOL)save;
- (void)savePermission:(BOOL)permission;
- (void)showLoadingUI:(BOOL)i animated:(BOOL)animated;
- (void)viewDidLoad;
@end

@implementation PKFinancialLabPermissionController

- (PKFinancialLabPermissionController)initWithContext:(int64_t)context
{
  v7.receiver = self;
  v7.super_class = PKFinancialLabPermissionController;
  v3 = [(PKExplanationViewController *)&v7 initWithContext:context];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E6967DD0]);
    coordinator = v3->_coordinator;
    v3->_coordinator = v4;

    v3->_performSave = 1;
  }

  return v3;
}

- (PKFinancialLabPermissionController)initWithContext:(int64_t)context performSave:(BOOL)save
{
  result = [(PKFinancialLabPermissionController *)self initWithContext:context];
  if (result)
  {
    result->_performSave = save;
  }

  return result;
}

- (void)viewDidLoad
{
  v16.receiver = self;
  v16.super_class = PKFinancialLabPermissionController;
  [(PKExplanationViewController *)&v16 viewDidLoad];
  explanationView = [(PKExplanationViewController *)self explanationView];
  navigationItem = [(PKFinancialLabPermissionController *)self navigationItem];
  [navigationItem setHidesBackButton:1 animated:0];

  [(PKExplanationViewController *)self setShowCancelButton:0];
  localizedTitle = [(FKBankConnectOfflineLabConsentCoordinator *)self->_coordinator localizedTitle];
  [explanationView setTitleText:localizedTitle];

  localizedSubtitle = [(FKBankConnectOfflineLabConsentCoordinator *)self->_coordinator localizedSubtitle];
  [explanationView setBodyText:localizedSubtitle];

  v7 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:60.0];
  v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chart.bar.xaxis" withConfiguration:v7];
  [explanationView setImage:v8];

  dockView = [explanationView dockView];
  primaryButton = [dockView primaryButton];
  localizedOptInButtonTitle = [(FKBankConnectOfflineLabConsentCoordinator *)self->_coordinator localizedOptInButtonTitle];
  [primaryButton setTitle:localizedOptInButtonTitle forState:0];

  [primaryButton addTarget:self action:sel_primaryButtonTapped forControlEvents:64];
  footerView = [dockView footerView];
  skipCardButton = [footerView skipCardButton];
  localizedOptOutButtonTitle = [(FKBankConnectOfflineLabConsentCoordinator *)self->_coordinator localizedOptOutButtonTitle];
  [skipCardButton setTitle:localizedOptOutButtonTitle forState:0];

  [skipCardButton addTarget:self action:sel_skipCardButtonTapped forControlEvents:64];
  [explanationView setShowPrivacyView:1];
  v15 = [MEMORY[0x1E69B7D50] pk_privacyLinkForContext:512];
  [(PKExplanationViewController *)self setPrivacyLinkController:v15];
}

- (void)savePermission:(BOOL)permission
{
  permissionCopy = permission;
  v13 = *MEMORY[0x1E69E9840];
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v12 = permissionCopy;
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
        v12 = permissionCopy;
        _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Calling coordinator with permissionGranted: %d", buf, 8u);
      }

      coordinator = self->_coordinator;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __53__PKFinancialLabPermissionController_savePermission___block_invoke;
      v9[3] = &unk_1E801C0A8;
      v9[4] = self;
      v10 = permissionCopy;
      [(FKBankConnectOfflineLabConsentCoordinator *)coordinator saveOfflineLabSharingPermission:permissionCopy withCompletion:v9];
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

- (void)showLoadingUI:(BOOL)i animated:(BOOL)animated
{
  iCopy = i;
  v6 = [(PKFinancialLabPermissionController *)self view:i];
  [v6 setUserInteractionEnabled:iCopy ^ 1];

  explanationView = [(PKExplanationViewController *)self explanationView];
  dockView = [explanationView dockView];

  [dockView setButtonsEnabled:iCopy ^ 1];
  primaryButton = [dockView primaryButton];
  [primaryButton setShowSpinner:iCopy];
}

@end