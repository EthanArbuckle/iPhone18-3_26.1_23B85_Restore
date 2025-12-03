@interface ICQInternetPrivacySheetPresenter
+ (id)presenterWithIdentifier:(id)identifier viewModel:(id)model;
- (void)present;
@end

@implementation ICQInternetPrivacySheetPresenter

+ (id)presenterWithIdentifier:(id)identifier viewModel:(id)model
{
  modelCopy = model;
  identifierCopy = identifier;
  v7 = objc_opt_new();
  v8 = [[ICQInternetPrivacySheet alloc] initWithIdentifier:identifierCopy viewModel:modelCopy];

  [v7 setSheet:v8];
  v9 = objc_alloc(MEMORY[0x277D757A0]);
  sheet = [v7 sheet];
  v11 = [v9 initWithRootViewController:sheet];
  [v7 setNavigationController:v11];

  navigationController = [v7 navigationController];
  [navigationController setModalPresentationStyle:2];

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