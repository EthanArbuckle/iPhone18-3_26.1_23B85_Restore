@interface TSTransferredViewController
- (TSSIMSetupFlowDelegate)delegate;
- (TSTransferredViewController)initWithTransferredPlan:(id)a3;
- (void)_doneButtonTapped;
- (void)_skipButtonTapped;
- (void)viewDidLoad;
@end

@implementation TSTransferredViewController

- (TSTransferredViewController)initWithTransferredPlan:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"planItem"];
  v6 = [v5 phoneNumber];
  v7 = [v6 formattedPhoneNumber];

  v8 = [v4 objectForKeyedSubscript:@"deviceInfo"];
  v9 = [v8 deviceName];

  v10 = _TSLogDomain();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [(TSTransferredViewController *)v4 initWithTransferredPlan:v10];
  }

  if ([v7 length])
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"PLAN_TRANSFERRED_DETAIL_%@" value:&stru_28753DF48 table:@"Localizable"];
    v14 = [v11 stringWithFormat:v13, v7];
  }

  else
  {
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [v12 localizedStringForKey:@"PLAN_TRANSFERRED_DETAIL" value:&stru_28753DF48 table:@"Localizable"];
  }

  v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"PLAN_TRANSFERRED_TITLE" value:&stru_28753DF48 table:@"Localizable"];
  v19.receiver = self;
  v19.super_class = TSTransferredViewController;
  v17 = [(TSTransferredViewController *)&v19 initWithTitle:v16 detailText:v14 icon:0];

  return v17;
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = TSTransferredViewController;
  [(TSOBWelcomeController *)&v11 viewDidLoad];
  v3 = [MEMORY[0x277D37618] boldButton];
  [v3 addTarget:self action:sel__doneButtonTapped forControlEvents:64];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"CONTINUE" value:&stru_28753DF48 table:@"Localizable"];
  [v3 setTitle:v5 forState:0];

  v6 = [(TSTransferredViewController *)self buttonTray];
  [v6 addButton:v3];

  v7 = [MEMORY[0x277D37650] linkButton];
  [v7 addTarget:self action:sel__skipButtonTapped forControlEvents:64];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"NOT_NOW" value:&stru_28753DF48 table:@"Localizable"];
  [v7 setTitle:v9 forState:0];

  v10 = [(TSTransferredViewController *)self buttonTray];
  [v10 addButton:v7];
}

- (void)_skipButtonTapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained viewControllerDidComplete:self];
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

- (void)initWithTransferredPlan:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2080;
  v6 = "[TSTransferredViewController initWithTransferredPlan:]";
  _os_log_debug_impl(&dword_262AA8000, a2, OS_LOG_TYPE_DEBUG, "[Db] transferred plan: %@ @%s", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end