@interface PKApplePayDefaultsListController
- (id)_passDetailsViewControllerForPass:(id)a3;
- (id)specifiers;
- (void)setSpecifier:(id)a3;
- (void)settingsController:(id)a3 requestsDetailViewControllerForPass:(id)a4 animated:(BOOL)a5;
- (void)settingsControllerRequestsPresentPrivacyWithPresenter:(id)a3;
@end

@implementation PKApplePayDefaultsListController

- (void)setSpecifier:(id)a3
{
  v4 = a3;
  if (([*(&self->super.super.super.super.super.isa + *MEMORY[0x1E69C5808]) isEqual:v4] & 1) == 0)
  {
    v13.receiver = self;
    v13.super_class = PKApplePayDefaultsListController;
    [(PKApplePayDefaultsListController *)&v13 setSpecifier:v4];
    v5 = [v4 objectForKeyedSubscript:@"contextKey"];
    if (!v5)
    {
      v6 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "No context provided when setting up PKApplePayDefaultsListController!", v12, 2u);
      }
    }

    v7 = [v5 integerValue];
    v8 = [v4 objectForKeyedSubscript:@"dataSourceKey"];
    v9 = v8;
    if (!v8)
    {
      v9 = objc_alloc_init(PKPassbookSettingsDefaultBehavior);
    }

    objc_storeStrong(&self->_settingsDataSource, v9);
    if (!v8)
    {
    }

    v10 = [[PKPassbookSettingsController alloc] initWithDelegate:self dataSource:self->_settingsDataSource context:v7];
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
    v5 = [(PKPassbookSettingsController *)self->_settingsController applePayDefaultsSpecifiers];
    v6 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v5;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (id)_passDetailsViewControllerForPass:(id)a3
{
  if (a3)
  {
    settingsController = self->_settingsController;
    v5 = a3;
    v6 = [(PKPassbookSettingsController *)settingsController rendererStateForPaymentPass:v5];
    v7 = [PKPaymentPassDetailViewController alloc];
    v8 = [MEMORY[0x1E69B8EF8] sharedService];
    v9 = [(PKPassbookSettingsDataSource *)self->_settingsDataSource peerPaymentDataSource];
    v10 = [v9 peerPaymentWebService];
    v11 = [(PKPassbookSettingsDataSource *)self->_settingsDataSource passLibraryDataProvider];
    v12 = [(PKPassbookSettingsDataSource *)self->_settingsDataSource paymentDataProvider];
    v13 = [(PKPaymentPassDetailViewController *)v7 initWithPass:v5 group:0 groupsController:0 webService:v8 peerPaymentWebService:v10 style:1 passLibraryDataProvider:v11 paymentServiceDataProvider:v12 rendererState:v6 context:0];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)settingsController:(id)a3 requestsDetailViewControllerForPass:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v7 = [(PKApplePayDefaultsListController *)self _passDetailsViewControllerForPass:a4];
  if (v7)
  {
    v8 = v7;
    [(PKApplePayDefaultsListController *)self showController:v7 animate:v5];
    v7 = v8;
  }
}

- (void)settingsControllerRequestsPresentPrivacyWithPresenter:(id)a3
{
  v4 = a3;
  [v4 setPresentingViewController:self];
  if ([(UIViewController *)self pkui_userInterfaceIdiomSupportsLargeLayouts])
  {
    [v4 setModalPresentationStyle:2];
  }

  [v4 present];
}

@end