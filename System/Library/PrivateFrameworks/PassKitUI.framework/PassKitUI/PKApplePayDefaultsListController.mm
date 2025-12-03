@interface PKApplePayDefaultsListController
- (id)_passDetailsViewControllerForPass:(id)pass;
- (id)specifiers;
- (void)setSpecifier:(id)specifier;
- (void)settingsController:(id)controller requestsDetailViewControllerForPass:(id)pass animated:(BOOL)animated;
- (void)settingsControllerRequestsPresentPrivacyWithPresenter:(id)presenter;
@end

@implementation PKApplePayDefaultsListController

- (void)setSpecifier:(id)specifier
{
  specifierCopy = specifier;
  if (([*(&self->super.super.super.super.super.isa + *MEMORY[0x1E69C5808]) isEqual:specifierCopy] & 1) == 0)
  {
    v13.receiver = self;
    v13.super_class = PKApplePayDefaultsListController;
    [(PKApplePayDefaultsListController *)&v13 setSpecifier:specifierCopy];
    v5 = [specifierCopy objectForKeyedSubscript:@"contextKey"];
    if (!v5)
    {
      v6 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "No context provided when setting up PKApplePayDefaultsListController!", v12, 2u);
      }
    }

    integerValue = [v5 integerValue];
    v8 = [specifierCopy objectForKeyedSubscript:@"dataSourceKey"];
    v9 = v8;
    if (!v8)
    {
      v9 = objc_alloc_init(PKPassbookSettingsDefaultBehavior);
    }

    objc_storeStrong(&self->_settingsDataSource, v9);
    if (!v8)
    {
    }

    v10 = [[PKPassbookSettingsController alloc] initWithDelegate:self dataSource:self->_settingsDataSource context:integerValue];
    settingsController = self->_settingsController;
    self->_settingsController = v10;
  }
}

- (id)specifiers
{
  v3 = *MEMORY[0x1E69C57B8];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    applePayDefaultsSpecifiers = [(PKPassbookSettingsController *)self->_settingsController applePayDefaultsSpecifiers];
    v6 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = applePayDefaultsSpecifiers;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (id)_passDetailsViewControllerForPass:(id)pass
{
  if (pass)
  {
    settingsController = self->_settingsController;
    passCopy = pass;
    v6 = [(PKPassbookSettingsController *)settingsController rendererStateForPaymentPass:passCopy];
    v7 = [PKPaymentPassDetailViewController alloc];
    mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
    peerPaymentDataSource = [(PKPassbookSettingsDataSource *)self->_settingsDataSource peerPaymentDataSource];
    peerPaymentWebService = [peerPaymentDataSource peerPaymentWebService];
    passLibraryDataProvider = [(PKPassbookSettingsDataSource *)self->_settingsDataSource passLibraryDataProvider];
    paymentDataProvider = [(PKPassbookSettingsDataSource *)self->_settingsDataSource paymentDataProvider];
    v13 = [(PKPaymentPassDetailViewController *)v7 initWithPass:passCopy group:0 groupsController:0 webService:mEMORY[0x1E69B8EF8] peerPaymentWebService:peerPaymentWebService style:1 passLibraryDataProvider:passLibraryDataProvider paymentServiceDataProvider:paymentDataProvider rendererState:v6 context:0];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)settingsController:(id)controller requestsDetailViewControllerForPass:(id)pass animated:(BOOL)animated
{
  animatedCopy = animated;
  v7 = [(PKApplePayDefaultsListController *)self _passDetailsViewControllerForPass:pass];
  if (v7)
  {
    v8 = v7;
    [(PKApplePayDefaultsListController *)self showController:v7 animate:animatedCopy];
    v7 = v8;
  }
}

- (void)settingsControllerRequestsPresentPrivacyWithPresenter:(id)presenter
{
  presenterCopy = presenter;
  [presenterCopy setPresentingViewController:self];
  if ([(UIViewController *)self pkui_userInterfaceIdiomSupportsLargeLayouts])
  {
    [presenterCopy setModalPresentationStyle:2];
  }

  [presenterCopy present];
}

@end