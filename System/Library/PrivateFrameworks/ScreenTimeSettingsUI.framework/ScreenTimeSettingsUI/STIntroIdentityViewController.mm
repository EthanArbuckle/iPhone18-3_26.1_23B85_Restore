@interface STIntroIdentityViewController
- (STIntroIdentityViewController)initWithIntroductionModel:(id)model continueHandler:(id)handler;
- (void)_myChildsDevice:(id)device;
- (void)_myDevice:(id)device;
- (void)loadView;
@end

@implementation STIntroIdentityViewController

- (STIntroIdentityViewController)initWithIntroductionModel:(id)model continueHandler:(id)handler
{
  modelCopy = model;
  handlerCopy = handler;
  v8 = +[STScreenTimeSettingsUIBundle bundle];
  v9 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"IntroIdentityTitle"];
  v10 = [v8 localizedStringForKey:v9 value:&stru_28766E5A8 table:0];

  v11 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"IntroIdentityDetail"];
  v12 = [v8 localizedStringForKey:v11 value:&stru_28766E5A8 table:0];

  v19.receiver = self;
  v19.super_class = STIntroIdentityViewController;
  v13 = [(STIntroIdentityViewController *)&v19 initWithTitle:v10 detailText:v12 symbolName:@"person.2.fill" contentLayout:2];
  model = v13->_model;
  v13->_model = modelCopy;
  v15 = modelCopy;

  v16 = [handlerCopy copy];
  continueHandler = v13->_continueHandler;
  v13->_continueHandler = v16;

  return v13;
}

- (void)loadView
{
  v11.receiver = self;
  v11.super_class = STIntroIdentityViewController;
  [(OBBaseWelcomeController *)&v11 loadView];
  v3 = +[STScreenTimeSettingsUIBundle bundle];
  buttonTray = [(STIntroIdentityViewController *)self buttonTray];
  boldButton = [MEMORY[0x277D37618] boldButton];
  v6 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"IntroIdentityButtonMyDevice"];
  v7 = [v3 localizedStringForKey:v6 value:&stru_28766E5A8 table:0];

  [boldButton setTitle:v7 forState:0];
  [boldButton addTarget:self action:sel__myDevice_ forControlEvents:0x2000];
  [buttonTray addButton:boldButton];
  linkButton = [MEMORY[0x277D37650] linkButton];
  v9 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"IntroIdentityButtonMyChildsDevice"];
  v10 = [v3 localizedStringForKey:v9 value:&stru_28766E5A8 table:0];

  [linkButton setTitle:v10 forState:0];
  [linkButton addTarget:self action:sel__myChildsDevice_ forControlEvents:0x2000];
  [buttonTray addButton:linkButton];
}

- (void)_myDevice:(id)device
{
  model = [(STIntroIdentityViewController *)self model];
  [model setDeviceForChild:0];

  continueHandler = [(STIntroIdentityViewController *)self continueHandler];
  continueHandler[2]();
}

- (void)_myChildsDevice:(id)device
{
  model = [(STIntroIdentityViewController *)self model];
  [model setDeviceForChild:1];

  continueHandler = [(STIntroIdentityViewController *)self continueHandler];
  continueHandler[2]();
}

@end