@interface TSTravelEducationExistingPlanViewController
- (TSSIMSetupFlowDelegate)delegate;
- (TSTravelEducationExistingPlanViewController)init;
- (void)_cancelButtonTapped;
- (void)_doneButtonTapped;
- (void)viewDidLoad;
@end

@implementation TSTravelEducationExistingPlanViewController

- (TSTravelEducationExistingPlanViewController)init
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"TRAVEL_EXISTING_PLAN_TITLE" value:&stru_28753DF48 table:@"Localizable"];

  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"TRAVEL_EXISTING_PLAN_BODY" value:&stru_28753DF48 table:@"Localizable"];

  v7 = dispatch_queue_create(@"Core Analytics", 0);
  v8 = [objc_alloc(MEMORY[0x277CC37B0]) initWithQueue:v7];
  client = self->_client;
  self->_client = v8;

  v12.receiver = self;
  v12.super_class = TSTravelEducationExistingPlanViewController;
  v10 = [(TSTravelEducationExistingPlanViewController *)&v12 initWithTitle:v4 detailText:v6 symbolName:@"antenna.radiowaves.left.and.right"];

  return v10;
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = TSTravelEducationExistingPlanViewController;
  [(TSOBWelcomeController *)&v11 viewDidLoad];
  boldButton = [MEMORY[0x277D37618] boldButton];
  [boldButton addTarget:self action:sel__doneButtonTapped forControlEvents:64];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"CONTINUE" value:&stru_28753DF48 table:@"Localizable"];
  [boldButton setTitle:v5 forState:0];

  buttonTray = [(TSTravelEducationExistingPlanViewController *)self buttonTray];
  [buttonTray addButton:boldButton];

  v7 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__cancelButtonTapped];
  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v7];

  navigationController = [(TSTravelEducationExistingPlanViewController *)self navigationController];
  navigationItem2 = [navigationController navigationItem];
  [navigationItem2 setHidesBackButton:0];
}

- (void)_cancelButtonTapped
{
  client = self->_client;
  v5 = 0;
  [(CoreTelephonyClient *)client sendTravelBuddyCAEvent:@"Existing Plan View Controller_Cancel" carrierName:&stru_28753DF48 error:&v5];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained userDidTapCancel];
}

- (void)_doneButtonTapped
{
  client = self->_client;
  v5 = 0;
  [(CoreTelephonyClient *)client sendTravelBuddyCAEvent:@"Existing Plan View Controller_Done" carrierName:&stru_28753DF48 error:&v5];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained viewControllerDidComplete:self];
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end