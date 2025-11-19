@interface STSetupAssistantViewController
+ (id)new;
- (STSetupAssistantViewController)initWithScreenTimeState:(int64_t)a3 passcode:(BOOL)a4;
- (STSetupAssistantViewControllerDelegate)delegate;
- (void)_continue:(id)a3;
- (void)_setUpLater:(id)a3;
- (void)viewDidLoad;
@end

@implementation STSetupAssistantViewController

+ (id)new
{
  v2 = [a1 alloc];

  return [v2 initWithScreenTimeState:1 passcode:0];
}

- (STSetupAssistantViewController)initWithScreenTimeState:(int64_t)a3 passcode:(BOOL)a4
{
  v7 = +[STScreenTimeSettingsUIBundle bundle];
  v8 = [v7 localizedStringForKey:@"SetupAssistantTitle" value:&stru_28766E5A8 table:0];
  if (a3 == 2 && a4)
  {
    v9 = @"SetupAssistantDetailAccountExist";
  }

  else
  {
    v9 = @"SetupAssistantDetail";
  }

  v10 = [v7 localizedStringForKey:v9 value:&stru_28766E5A8 table:0];
  v13.receiver = self;
  v13.super_class = STSetupAssistantViewController;
  v11 = [(STSetupAssistantViewController *)&v13 initWithTitle:v8 detailText:v10 icon:0 contentLayout:1];
  v11->_state = a3;
  v11->_hasRestrictionsPasscode = a4;

  return v11;
}

- (void)viewDidLoad
{
  v29.receiver = self;
  v29.super_class = STSetupAssistantViewController;
  [(OBBaseWelcomeController *)&v29 viewDidLoad];
  v3 = MEMORY[0x277D75AC8];
  v4 = +[STScreenTimeSettingsUIBundle bundle];
  v5 = [v3 storyboardWithName:@"STSetupAssistantPosedDeviceViewController" bundle:v4];

  v6 = [v5 instantiateInitialViewController];
  [(STSetupAssistantViewController *)self addChildViewController:v6];
  v7 = [v6 view];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [(STSetupAssistantViewController *)self contentView];
  [v8 addSubview:v7];

  v9 = _NSDictionaryOfVariableBindings(&cfstr_Poseddevicevie.isa, v7, 0);
  v10 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[posedDeviceView]|" options:0 metrics:0 views:v9];
  v11 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[posedDeviceView]|" options:0 metrics:0 views:v9];
  v12 = MEMORY[0x277CCAAD0];
  v25 = v11;
  v26 = v10;
  v13 = [v10 arrayByAddingObjectsFromArray:?];
  [v12 activateConstraints:v13];

  [v6 didMoveToParentViewController:self];
  v14 = +[STScreenTimeSettingsUIBundle bundle];
  v15 = [(STSetupAssistantViewController *)self buttonTray];
  v16 = [MEMORY[0x277D37618] boldButton];
  v17 = [v14 localizedStringForKey:@"SetupAssistantContinue" value:&stru_28766E5A8 table:0];
  [v16 setTitle:v17 forState:0];
  [v16 addTarget:self action:sel__continue_ forControlEvents:0x2000];
  v27 = v15;
  [v15 addButton:v16];
  if (![(STSetupAssistantViewController *)self hasRestrictionsPasscode]|| [(STSetupAssistantViewController *)self state]!= 2)
  {
    v18 = [MEMORY[0x277D37650] linkButton];
    [v14 localizedStringForKey:@"SetupAssistantSetUpLater" value:&stru_28766E5A8 table:0];
    v19 = v17;
    v20 = v7;
    v21 = v6;
    v22 = v9;
    v24 = v23 = v5;
    [v18 setTitle:v24 forState:0];
    [v18 addTarget:self action:sel__setUpLater_ forControlEvents:0x2000];
    [v27 addButton:v18];

    v5 = v23;
    v9 = v22;
    v6 = v21;
    v7 = v20;
    v17 = v19;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STSetupAssistantViewController.viewDidLoad", buf, 2u);
  }
}

- (void)_continue:(id)a3
{
  v3 = [(STSetupAssistantViewController *)self delegate];
  [v3 continueSetup];
}

- (void)_setUpLater:(id)a3
{
  v3 = [(STSetupAssistantViewController *)self delegate];
  [v3 setupSkipped];
}

- (STSetupAssistantViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end