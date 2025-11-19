@interface STIntroCommunicationSafetyViewController
- (STIntroCommunicationSafetyViewController)initWithIntroductionModel:(id)a3 childName:(id)a4 continueHandler:(id)a5;
- (void)_notNow:(id)a3;
- (void)_openCommunicationSafetyLearnMoreLink;
- (void)_turnOnCommunicationSafety:(id)a3;
- (void)loadView;
@end

@implementation STIntroCommunicationSafetyViewController

- (STIntroCommunicationSafetyViewController)initWithIntroductionModel:(id)a3 childName:(id)a4 continueHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = +[STScreenTimeSettingsUIBundle bundle];
  v10 = [v9 localizedStringForKey:@"IntroCommunicationSafetyTitle" value:&stru_28766E5A8 table:0];
  v11 = [v9 localizedStringForKey:@"CommunicationSafetyEDUFeatureDetails" value:&stru_28766E5A8 table:0];
  v18.receiver = self;
  v18.super_class = STIntroCommunicationSafetyViewController;
  v12 = [(STIntroCommunicationSafetyViewController *)&v18 initWithTitle:v10 detailText:v11 symbolName:@"bubble.left.and.exclamationmark.bubble.right.fill" contentLayout:2];
  model = v12->_model;
  v12->_model = v7;
  v14 = v7;

  v15 = [v8 copy];
  continueHandler = v12->_continueHandler;
  v12->_continueHandler = v15;

  return v12;
}

- (void)loadView
{
  v16.receiver = self;
  v16.super_class = STIntroCommunicationSafetyViewController;
  [(OBBaseWelcomeController *)&v16 loadView];
  v3 = +[STScreenTimeSettingsUIBundle bundle];
  v4 = [(STIntroCommunicationSafetyViewController *)self buttonTray];
  v5 = [MEMORY[0x277D37638] accessoryButton];
  v6 = [v3 localizedStringForKey:@"IntroCommunicationSafetyLearnMoreButton" value:&stru_28766E5A8 table:0];
  [v5 setAccessibilityIdentifier:@"IntroCommunicationSafetyLearnMoreButton"];
  [v5 setTitle:v6 forState:0];
  [v5 addTarget:self action:sel__openCommunicationSafetyLearnMoreLink forControlEvents:64];
  v7 = [(STIntroCommunicationSafetyViewController *)self headerView];
  [v7 addAccessoryButton:v5];

  v8 = [(STIntroductionViewModel *)self->_model communicationSafetyEnabled];
  v9 = [v8 BOOLValue];

  if (v9)
  {
    v10 = @"IntroCommunicationSafetyContinueButton";
  }

  else
  {
    v10 = @"IntroCommunicationSafetyTurnOnButton";
  }

  if (v9)
  {
    v11 = @"IntroCommunicationSafetyTurnOffButton";
  }

  else
  {
    v11 = @"IntroCommunicationSafetyNotNowButton";
  }

  v12 = [v3 localizedStringForKey:v10 value:&stru_28766E5A8 table:0];
  v13 = [v3 localizedStringForKey:v11 value:&stru_28766E5A8 table:0];
  v14 = [MEMORY[0x277D37618] boldButton];
  [v14 setAccessibilityIdentifier:@"IntroCommunicationSafetyTurnOnButton"];
  [v14 setTitle:v12 forState:0];
  [v14 addTarget:self action:sel__turnOnCommunicationSafety_ forControlEvents:0x2000];
  [v4 addButton:v14];
  v15 = [MEMORY[0x277D37650] linkButton];
  [v15 setAccessibilityIdentifier:@"IntroCommunicationSafetyNotNowButton"];
  [v15 setTitle:v13 forState:0];
  [v15 addTarget:self action:sel__notNow_ forControlEvents:0x2000];
  [v4 addButton:v15];
}

- (void)_turnOnCommunicationSafety:(id)a3
{
  v4 = [(STIntroCommunicationSafetyViewController *)self model];
  [v4 setCommunicationSafetyEnabled:MEMORY[0x277CBEC38]];

  v5 = [(STIntroCommunicationSafetyViewController *)self continueHandler];
  v5[2]();
}

- (void)_notNow:(id)a3
{
  v4 = [(STIntroCommunicationSafetyViewController *)self model];
  [v4 setCommunicationSafetyEnabled:MEMORY[0x277CBEC28]];

  v5 = [(STIntroCommunicationSafetyViewController *)self continueHandler];
  v5[2]();
}

- (void)_openCommunicationSafetyLearnMoreLink
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEBC0] URLWithString:@"https://support.apple.com/kb/HT212850"];
  v4 = objc_alloc_init(MEMORY[0x277CDB708]);
  [v4 setEntersReaderIfAvailable:0];
  v5 = [objc_alloc(MEMORY[0x277CDB700]) initWithURL:v3 configuration:v4];
  [v5 setModalPresentationStyle:1];
  v6 = [MEMORY[0x277D75A28] largeDetent];
  v9[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v8 = [v5 sheetPresentationController];
  [v8 setDetents:v7];

  [(STIntroCommunicationSafetyViewController *)self presentViewController:v5 animated:1 completion:0];
}

@end