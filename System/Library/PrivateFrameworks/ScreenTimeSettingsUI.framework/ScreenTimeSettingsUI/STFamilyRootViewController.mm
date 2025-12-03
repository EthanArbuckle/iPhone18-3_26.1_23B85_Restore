@interface STFamilyRootViewController
- (STFamilyRootViewController)initWithModalPresentation:(BOOL)presentation;
@end

@implementation STFamilyRootViewController

- (STFamilyRootViewController)initWithModalPresentation:(BOOL)presentation
{
  presentationCopy = presentation;
  v14[1] = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = STFamilyRootViewController;
  v4 = [(STListViewController *)&v13 init];
  if (v4)
  {
    v5 = objc_opt_new();
    coordinator = v4->_coordinator;
    v4->_coordinator = v5;

    v4->_presentedAsModal = presentationCopy;
    v7 = +[STScreenTimeSettingsUIBundle bundle];
    v8 = [v7 localizedStringForKey:@"ScreenTimeControllerTitle" value:&stru_28766E5A8 table:0];
    [(STFamilyRootViewController *)v4 setTitle:v8];

    coordinator = [(STFamilyRootViewController *)v4 coordinator];
    v10 = [STFamilyMemberGroupSpecifierProvider providerWithCoordinator:coordinator presentedAsModal:presentationCopy];
    v14[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    [(STListViewController *)v4 setSpecifierProviders:v11];
  }

  return v4;
}

@end