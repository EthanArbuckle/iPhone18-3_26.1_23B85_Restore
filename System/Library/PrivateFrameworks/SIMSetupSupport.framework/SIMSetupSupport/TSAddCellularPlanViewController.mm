@interface TSAddCellularPlanViewController
- (TSAddCellularPlanViewController)initWithType:(unint64_t)type allowDismiss:(BOOL)dismiss;
- (TSSIMSetupFlowDelegate)delegate;
- (void)_cancelButtonTapped;
- (void)_doneButtonTapped;
- (void)viewDidLoad;
@end

@implementation TSAddCellularPlanViewController

- (TSAddCellularPlanViewController)initWithType:(unint64_t)type allowDismiss:(BOOL)dismiss
{
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = v7;
  v9 = @"FINISH_SETTING_UP_CELLULAR_PLAN_DESCRIPTION";
  v10 = @"FINISH_SETTING_UP_CELLULAR_PLAN_TITLE";
  if (type == 1)
  {
    v10 = @"SET_UP_CELLULAR";
    v9 = @"ADD_CELLULAR_PLAN_DETAIL";
  }

  if (type)
  {
    v11 = v10;
  }

  else
  {
    v11 = @"ADD_CELLULAR_PLAN_TITLE_ADD_PLAN";
  }

  if (type)
  {
    v12 = v9;
  }

  else
  {
    v12 = @"ADD_CELLULAR_PLAN_DETAIL_ADD_PLAN";
  }

  v13 = [v7 localizedStringForKey:v11 value:&stru_28753DF48 table:@"Localizable"];

  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:v12 value:&stru_28753DF48 table:@"Localizable"];

  v19.receiver = self;
  v19.super_class = TSAddCellularPlanViewController;
  v16 = [(TSAddCellularPlanViewController *)&v19 initWithTitle:v13 detailText:v15 icon:0];
  v17 = v16;
  if (v16)
  {
    v16->_allowDismiss = dismiss;
  }

  return v17;
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = TSAddCellularPlanViewController;
  [(TSOBWelcomeController *)&v9 viewDidLoad];
  boldButton = [MEMORY[0x277D37618] boldButton];
  [boldButton addTarget:self action:sel__doneButtonTapped forControlEvents:64];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"CONTINUE" value:&stru_28753DF48 table:@"Localizable"];
  [boldButton setTitle:v5 forState:0];

  buttonTray = [(TSAddCellularPlanViewController *)self buttonTray];
  [buttonTray addButton:boldButton];

  if (self->_allowDismiss)
  {
    v7 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__cancelButtonTapped];
    navigationItem = [(OBBaseWelcomeController *)self navigationItem];
    [navigationItem setLeftBarButtonItem:v7];
  }
}

- (void)_cancelButtonTapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained userDidTapCancel];
}

- (void)_doneButtonTapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained viewControllerDidComplete:self];
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end