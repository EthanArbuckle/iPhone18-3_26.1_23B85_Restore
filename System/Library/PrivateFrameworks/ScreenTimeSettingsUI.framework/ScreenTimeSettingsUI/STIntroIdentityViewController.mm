@interface STIntroIdentityViewController
- (STIntroIdentityViewController)initWithIntroductionModel:(id)a3 continueHandler:(id)a4;
- (void)_myChildsDevice:(id)a3;
- (void)_myDevice:(id)a3;
- (void)loadView;
@end

@implementation STIntroIdentityViewController

- (STIntroIdentityViewController)initWithIntroductionModel:(id)a3 continueHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[STScreenTimeSettingsUIBundle bundle];
  v9 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"IntroIdentityTitle"];
  v10 = [v8 localizedStringForKey:v9 value:&stru_28766E5A8 table:0];

  v11 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"IntroIdentityDetail"];
  v12 = [v8 localizedStringForKey:v11 value:&stru_28766E5A8 table:0];

  v19.receiver = self;
  v19.super_class = STIntroIdentityViewController;
  v13 = [(STIntroIdentityViewController *)&v19 initWithTitle:v10 detailText:v12 symbolName:@"person.2.fill" contentLayout:2];
  model = v13->_model;
  v13->_model = v6;
  v15 = v6;

  v16 = [v7 copy];
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
  v4 = [(STIntroIdentityViewController *)self buttonTray];
  v5 = [MEMORY[0x277D37618] boldButton];
  v6 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"IntroIdentityButtonMyDevice"];
  v7 = [v3 localizedStringForKey:v6 value:&stru_28766E5A8 table:0];

  [v5 setTitle:v7 forState:0];
  [v5 addTarget:self action:sel__myDevice_ forControlEvents:0x2000];
  [v4 addButton:v5];
  v8 = [MEMORY[0x277D37650] linkButton];
  v9 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"IntroIdentityButtonMyChildsDevice"];
  v10 = [v3 localizedStringForKey:v9 value:&stru_28766E5A8 table:0];

  [v8 setTitle:v10 forState:0];
  [v8 addTarget:self action:sel__myChildsDevice_ forControlEvents:0x2000];
  [v4 addButton:v8];
}

- (void)_myDevice:(id)a3
{
  v4 = [(STIntroIdentityViewController *)self model];
  [v4 setDeviceForChild:0];

  v5 = [(STIntroIdentityViewController *)self continueHandler];
  v5[2]();
}

- (void)_myChildsDevice:(id)a3
{
  v4 = [(STIntroIdentityViewController *)self model];
  [v4 setDeviceForChild:1];

  v5 = [(STIntroIdentityViewController *)self continueHandler];
  v5[2]();
}

@end