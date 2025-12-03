@interface TSCellularSetupActivatingViewController
- (TSCellularSetupActivatingViewController)initWithTitle:(id)title details:(id)details symbolName:(id)name plans:(id)plans skip:(BOOL)skip;
- (TSCellularSetupActivatingViewController)initWithTransferOutPlan:(id)plan;
- (TSSIMSetupFlowDelegate)delegate;
- (void)setTransferStarted;
- (void)viewDidLoad;
@end

@implementation TSCellularSetupActivatingViewController

- (TSCellularSetupActivatingViewController)initWithTitle:(id)title details:(id)details symbolName:(id)name plans:(id)plans skip:(BOOL)skip
{
  skipCopy = skip;
  v29 = *MEMORY[0x277D85DE8];
  plansCopy = plans;
  v20.receiver = self;
  v20.super_class = TSCellularSetupActivatingViewController;
  v13 = [(OBTableWelcomeController *)&v20 initWithTitle:title detailText:details symbolName:name adoptTableViewScrollView:0];
  if (v13)
  {
    v14 = !skipCopy && [plansCopy count] < 2;
    v13->_needShow = v14;
    v15 = _TSLogDomain();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      needShow = v13->_needShow;
      v17 = [plansCopy count];
      *buf = 67109890;
      v22 = needShow;
      v23 = 1024;
      v24 = skipCopy;
      v25 = 2048;
      v26 = v17;
      v27 = 2080;
      v28 = "[TSCellularSetupActivatingViewController initWithTitle:details:symbolName:plans:skip:]";
      _os_log_impl(&dword_262AA8000, v15, OS_LOG_TYPE_DEFAULT, "show : %{BOOL}d, skip : %{BOOL} d, count : %lu @%s", buf, 0x22u);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return v13;
}

- (TSCellularSetupActivatingViewController)initWithTransferOutPlan:(id)plan
{
  v4 = MEMORY[0x277CCA8D8];
  planCopy = plan;
  v6 = [v4 bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"CROSSPLATFORM_TRANSFER_ONGOING_TITLE" value:&stru_28753DF48 table:@"Localizable"];

  if (+[TSUtilities isPad])
  {
    carrierName = [planCopy carrierName];
  }

  else
  {
    phoneNumber = [planCopy phoneNumber];

    carrierName = [phoneNumber formattedPhoneNumber];
    planCopy = phoneNumber;
  }

  v10 = MEMORY[0x277CCACA8];
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"CROSSPLATFORM_TRANSFER_ONGOING_DETAIL_%@" value:&stru_28753DF48 table:@"Localizable"];
  v13 = [v10 stringWithFormat:v12, carrierName];

  self->_needShow = 1;
  v14 = [(TSCellularSetupActivatingViewController *)self initWithTitle:v7 details:v13 symbolName:@"antenna.radiowaves.left.and.right" plans:0 skip:0];

  return v14;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = TSCellularSetupActivatingViewController;
  [(TSOBTableWelcomeController *)&v4 viewDidLoad];
  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem setHidesBackButton:1 animated:0];
}

- (void)setTransferStarted
{
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v4 localizedStringForKey:@"TRANSFERING" value:&stru_28753DF48 table:@"Localizable"];
  [(OBWelcomeController *)self _showButtonTraySpinnerWithBusyText:v3];
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end