@interface STSetupAssistantViewController
+ (id)new;
- (STSetupAssistantViewController)initWithScreenTimeState:(int64_t)state passcode:(BOOL)passcode;
- (STSetupAssistantViewControllerDelegate)delegate;
- (void)_continue:(id)_continue;
- (void)_setUpLater:(id)later;
- (void)viewDidLoad;
@end

@implementation STSetupAssistantViewController

+ (id)new
{
  v2 = [self alloc];

  return [v2 initWithScreenTimeState:1 passcode:0];
}

- (STSetupAssistantViewController)initWithScreenTimeState:(int64_t)state passcode:(BOOL)passcode
{
  v7 = +[STScreenTimeSettingsUIBundle bundle];
  v8 = [v7 localizedStringForKey:@"SetupAssistantTitle" value:&stru_28766E5A8 table:0];
  if (state == 2 && passcode)
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
  v11->_state = state;
  v11->_hasRestrictionsPasscode = passcode;

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

  instantiateInitialViewController = [v5 instantiateInitialViewController];
  [(STSetupAssistantViewController *)self addChildViewController:instantiateInitialViewController];
  view = [instantiateInitialViewController view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(STSetupAssistantViewController *)self contentView];
  [contentView addSubview:view];

  v9 = _NSDictionaryOfVariableBindings(&cfstr_Poseddevicevie.isa, view, 0);
  v10 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[posedDeviceView]|" options:0 metrics:0 views:v9];
  v11 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[posedDeviceView]|" options:0 metrics:0 views:v9];
  v12 = MEMORY[0x277CCAAD0];
  v25 = v11;
  v26 = v10;
  v13 = [v10 arrayByAddingObjectsFromArray:?];
  [v12 activateConstraints:v13];

  [instantiateInitialViewController didMoveToParentViewController:self];
  v14 = +[STScreenTimeSettingsUIBundle bundle];
  buttonTray = [(STSetupAssistantViewController *)self buttonTray];
  boldButton = [MEMORY[0x277D37618] boldButton];
  v17 = [v14 localizedStringForKey:@"SetupAssistantContinue" value:&stru_28766E5A8 table:0];
  [boldButton setTitle:v17 forState:0];
  [boldButton addTarget:self action:sel__continue_ forControlEvents:0x2000];
  v27 = buttonTray;
  [buttonTray addButton:boldButton];
  if (![(STSetupAssistantViewController *)self hasRestrictionsPasscode]|| [(STSetupAssistantViewController *)self state]!= 2)
  {
    linkButton = [MEMORY[0x277D37650] linkButton];
    [v14 localizedStringForKey:@"SetupAssistantSetUpLater" value:&stru_28766E5A8 table:0];
    v19 = v17;
    v20 = view;
    v21 = instantiateInitialViewController;
    v22 = v9;
    v24 = v23 = v5;
    [linkButton setTitle:v24 forState:0];
    [linkButton addTarget:self action:sel__setUpLater_ forControlEvents:0x2000];
    [v27 addButton:linkButton];

    v5 = v23;
    v9 = v22;
    instantiateInitialViewController = v21;
    view = v20;
    v17 = v19;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STSetupAssistantViewController.viewDidLoad", buf, 2u);
  }
}

- (void)_continue:(id)_continue
{
  delegate = [(STSetupAssistantViewController *)self delegate];
  [delegate continueSetup];
}

- (void)_setUpLater:(id)later
{
  delegate = [(STSetupAssistantViewController *)self delegate];
  [delegate setupSkipped];
}

- (STSetupAssistantViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end