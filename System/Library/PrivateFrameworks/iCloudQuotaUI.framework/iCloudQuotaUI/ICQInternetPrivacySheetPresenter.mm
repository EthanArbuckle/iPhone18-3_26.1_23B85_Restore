@interface ICQInternetPrivacySheetPresenter
+ (id)presenterWithIdentifier:(id)a3 viewModel:(id)a4;
- (void)present;
@end

@implementation ICQInternetPrivacySheetPresenter

+ (id)presenterWithIdentifier:(id)a3 viewModel:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  v8 = [[ICQInternetPrivacySheet alloc] initWithIdentifier:v6 viewModel:v5];

  [v7 setSheet:v8];
  v9 = objc_alloc(MEMORY[0x277D757A0]);
  v10 = [v7 sheet];
  v11 = [v9 initWithRootViewController:v10];
  [v7 setNavigationController:v11];

  v12 = [v7 navigationController];
  [v12 setModalPresentationStyle:2];

  return v7;
}

- (void)present
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[ICQInternetPrivacySheetPresenter present]";
  _os_log_error_impl(&dword_275623000, log, OS_LOG_TYPE_ERROR, "presentingViewController is nil in %s!", &v1, 0xCu);
}

@end