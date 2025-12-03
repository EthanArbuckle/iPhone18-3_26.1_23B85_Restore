@interface STIntroCommunicationSafetyViewController
- (STIntroCommunicationSafetyViewController)initWithIntroductionModel:(id)model childName:(id)name continueHandler:(id)handler;
- (void)_notNow:(id)now;
- (void)_openCommunicationSafetyLearnMoreLink;
- (void)_turnOnCommunicationSafety:(id)safety;
- (void)loadView;
@end

@implementation STIntroCommunicationSafetyViewController

- (STIntroCommunicationSafetyViewController)initWithIntroductionModel:(id)model childName:(id)name continueHandler:(id)handler
{
  modelCopy = model;
  handlerCopy = handler;
  v9 = +[STScreenTimeSettingsUIBundle bundle];
  v10 = [v9 localizedStringForKey:@"IntroCommunicationSafetyTitle" value:&stru_28766E5A8 table:0];
  v11 = [v9 localizedStringForKey:@"CommunicationSafetyEDUFeatureDetails" value:&stru_28766E5A8 table:0];
  v18.receiver = self;
  v18.super_class = STIntroCommunicationSafetyViewController;
  v12 = [(STIntroCommunicationSafetyViewController *)&v18 initWithTitle:v10 detailText:v11 symbolName:@"bubble.left.and.exclamationmark.bubble.right.fill" contentLayout:2];
  model = v12->_model;
  v12->_model = modelCopy;
  v14 = modelCopy;

  v15 = [handlerCopy copy];
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
  buttonTray = [(STIntroCommunicationSafetyViewController *)self buttonTray];
  accessoryButton = [MEMORY[0x277D37638] accessoryButton];
  v6 = [v3 localizedStringForKey:@"IntroCommunicationSafetyLearnMoreButton" value:&stru_28766E5A8 table:0];
  [accessoryButton setAccessibilityIdentifier:@"IntroCommunicationSafetyLearnMoreButton"];
  [accessoryButton setTitle:v6 forState:0];
  [accessoryButton addTarget:self action:sel__openCommunicationSafetyLearnMoreLink forControlEvents:64];
  headerView = [(STIntroCommunicationSafetyViewController *)self headerView];
  [headerView addAccessoryButton:accessoryButton];

  communicationSafetyEnabled = [(STIntroductionViewModel *)self->_model communicationSafetyEnabled];
  bOOLValue = [communicationSafetyEnabled BOOLValue];

  if (bOOLValue)
  {
    v10 = @"IntroCommunicationSafetyContinueButton";
  }

  else
  {
    v10 = @"IntroCommunicationSafetyTurnOnButton";
  }

  if (bOOLValue)
  {
    v11 = @"IntroCommunicationSafetyTurnOffButton";
  }

  else
  {
    v11 = @"IntroCommunicationSafetyNotNowButton";
  }

  v12 = [v3 localizedStringForKey:v10 value:&stru_28766E5A8 table:0];
  v13 = [v3 localizedStringForKey:v11 value:&stru_28766E5A8 table:0];
  boldButton = [MEMORY[0x277D37618] boldButton];
  [boldButton setAccessibilityIdentifier:@"IntroCommunicationSafetyTurnOnButton"];
  [boldButton setTitle:v12 forState:0];
  [boldButton addTarget:self action:sel__turnOnCommunicationSafety_ forControlEvents:0x2000];
  [buttonTray addButton:boldButton];
  linkButton = [MEMORY[0x277D37650] linkButton];
  [linkButton setAccessibilityIdentifier:@"IntroCommunicationSafetyNotNowButton"];
  [linkButton setTitle:v13 forState:0];
  [linkButton addTarget:self action:sel__notNow_ forControlEvents:0x2000];
  [buttonTray addButton:linkButton];
}

- (void)_turnOnCommunicationSafety:(id)safety
{
  model = [(STIntroCommunicationSafetyViewController *)self model];
  [model setCommunicationSafetyEnabled:MEMORY[0x277CBEC38]];

  continueHandler = [(STIntroCommunicationSafetyViewController *)self continueHandler];
  continueHandler[2]();
}

- (void)_notNow:(id)now
{
  model = [(STIntroCommunicationSafetyViewController *)self model];
  [model setCommunicationSafetyEnabled:MEMORY[0x277CBEC28]];

  continueHandler = [(STIntroCommunicationSafetyViewController *)self continueHandler];
  continueHandler[2]();
}

- (void)_openCommunicationSafetyLearnMoreLink
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEBC0] URLWithString:@"https://support.apple.com/kb/HT212850"];
  v4 = objc_alloc_init(MEMORY[0x277CDB708]);
  [v4 setEntersReaderIfAvailable:0];
  v5 = [objc_alloc(MEMORY[0x277CDB700]) initWithURL:v3 configuration:v4];
  [v5 setModalPresentationStyle:1];
  largeDetent = [MEMORY[0x277D75A28] largeDetent];
  v9[0] = largeDetent;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  sheetPresentationController = [v5 sheetPresentationController];
  [sheetPresentationController setDetents:v7];

  [(STIntroCommunicationSafetyViewController *)self presentViewController:v5 animated:1 completion:0];
}

@end