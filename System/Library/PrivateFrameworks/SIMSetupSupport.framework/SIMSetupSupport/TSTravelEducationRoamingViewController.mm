@interface TSTravelEducationRoamingViewController
- (TSSIMSetupFlowDelegate)delegate;
- (TSTravelEducationRoamingViewController)init;
- (void)_cancelButtonTapped;
- (void)_doneButtonTapped;
- (void)_openRoamingSettings;
- (void)viewDidLoad;
@end

@implementation TSTravelEducationRoamingViewController

- (TSTravelEducationRoamingViewController)init
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"TRAVEL_ROAMING_TITLE" value:&stru_28753DF48 table:@"Localizable"];

  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"TRAVEL_ROAMING_BODY" value:&stru_28753DF48 table:@"Localizable"];

  v7 = dispatch_queue_create(@"Core Analytics", 0);
  v8 = [objc_alloc(MEMORY[0x277CC37B0]) initWithQueue:v7];
  client = self->_client;
  self->_client = v8;

  v12.receiver = self;
  v12.super_class = TSTravelEducationRoamingViewController;
  v10 = [(TSTravelEducationRoamingViewController *)&v12 initWithTitle:v4 detailText:v6 symbolName:@"antenna.radiowaves.left.and.right"];

  return v10;
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = TSTravelEducationRoamingViewController;
  [(TSOBWelcomeController *)&v11 viewDidLoad];
  boldButton = [MEMORY[0x277D37618] boldButton];
  [boldButton addTarget:self action:sel__doneButtonTapped forControlEvents:64];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"CONTINUE" value:&stru_28753DF48 table:@"Localizable"];
  [boldButton setTitle:v5 forState:0];

  buttonTray = [(TSTravelEducationRoamingViewController *)self buttonTray];
  [buttonTray addButton:boldButton];

  v7 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__cancelButtonTapped];
  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v7];

  navigationController = [(TSTravelEducationRoamingViewController *)self navigationController];
  navigationItem2 = [navigationController navigationItem];
  [navigationItem2 setHidesBackButton:0];
}

- (void)_cancelButtonTapped
{
  client = self->_client;
  v5 = 0;
  [(CoreTelephonyClient *)client sendTravelBuddyCAEvent:@"Roaming View Controller_Cancel" carrierName:&stru_28753DF48 error:&v5];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained userDidTapCancel];
}

- (void)_doneButtonTapped
{
  client = self->_client;
  v5 = 0;
  [(CoreTelephonyClient *)client sendTravelBuddyCAEvent:@"Roaming View Controller_Done" carrierName:&stru_28753DF48 error:&v5];
  [(TSTravelEducationRoamingViewController *)self _openRoamingSettings];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained viewControllerDidComplete:self];
}

- (void)_openRoamingSettings
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CC1E80]);
  v3 = MEMORY[0x277CBEBC0];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"TRAVEL_OPEN_ROAMING_URL" value:&stru_28753DF48 table:@"Localizable"];
  v6 = [v3 URLWithString:v5];

  v13 = 0;
  v7 = [v2 openSensitiveURL:v6 withOptions:0 error:&v13];
  v8 = v13;
  if (v8)
  {
    v9 = _TSLogDomain();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      localizedDescription = [v8 localizedDescription];
      uTF8String = [localizedDescription UTF8String];
      *buf = 136315650;
      v15 = uTF8String;
      v16 = 1024;
      v17 = v7;
      v18 = 2080;
      v19 = "[TSTravelEducationRoamingViewController _openRoamingSettings]";
      _os_log_impl(&dword_262AA8000, v9, OS_LOG_TYPE_DEFAULT, "launching data roaming settings failed with error: %s, isOpened:%d\n @%s", buf, 0x1Cu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end