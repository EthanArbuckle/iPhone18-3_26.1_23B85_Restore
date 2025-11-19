@interface SSCellularPlanCarrierAppsViewController
- (SSCellularPlanCarrierAppsViewController)initWithCarrierApps:(id)a3 country:(id)a4;
- (TSSIMSetupFlowDelegate)delegate;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_userDidTapCancel;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation SSCellularPlanCarrierAppsViewController

- (SSCellularPlanCarrierAppsViewController)initWithCarrierApps:(id)a3 country:(id)a4
{
  v20 = a3;
  v6 = MEMORY[0x277CCACA8];
  v7 = MEMORY[0x277CCA8D8];
  v8 = a4;
  v9 = [v7 bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"SET_UP_ESIM_TITLE_%@" value:&stru_28753DF48 table:@"Localizable"];
  v11 = [v6 stringWithFormat:v10, v8];

  v12 = MEMORY[0x277CCACA8];
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"SET_UP_ESIM_DETAIL_%@" value:&stru_28753DF48 table:@"Localizable"];
  v15 = [v12 stringWithFormat:v14, v8];

  v21.receiver = self;
  v21.super_class = SSCellularPlanCarrierAppsViewController;
  v16 = [(OBTableWelcomeController *)&v21 initWithTitle:v11 detailText:v15 symbolName:@"antenna.radiowaves.left.and.right" adoptTableViewScrollView:1];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_carrierApps, a3);
  }

  return v17;
}

- (void)viewDidLoad
{
  v23.receiver = self;
  v23.super_class = SSCellularPlanCarrierAppsViewController;
  [(TSOBTableWelcomeController *)&v23 viewDidLoad];
  if (!+[TSUtilities inBuddy])
  {
    v6 = [(SSCellularPlanCarrierAppsViewController *)self navigationController];
    v7 = [v6 viewControllers];
    if ([v7 count] < 2)
    {
    }

    else
    {
      v8 = [TSUtilities isBackAllowed:self];

      if (v8)
      {
        v3 = [(OBBaseWelcomeController *)self navigationItem];
        v4 = v3;
        v5 = 0;
        goto LABEL_7;
      }
    }

    v4 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__userDidTapCancel];
    v9 = [(OBBaseWelcomeController *)self navigationItem];
    [v9 setLeftBarButtonItem:v4];

    goto LABEL_10;
  }

  if (![TSUtilities isBackAllowed:self])
  {
    v3 = [(OBBaseWelcomeController *)self navigationItem];
    v4 = v3;
    v5 = 1;
LABEL_7:
    [v3 setHidesBackButton:v5 animated:0];
LABEL_10:
  }

  v10 = objc_alloc(MEMORY[0x277D75B40]);
  v11 = [v10 initWithFrame:2 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(OBTableWelcomeController *)self setTableView:v11];

  v12 = [(OBTableWelcomeController *)self tableView];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

  v13 = [(OBTableWelcomeController *)self tableView];
  [v13 setDirectionalLayoutMargins:{1.0, 1.0, 1.0, 1.0}];

  v14 = [(OBTableWelcomeController *)self tableView];
  v15 = [MEMORY[0x277D75348] clearColor];
  [v14 setBackgroundColor:v15];

  v16 = [(OBTableWelcomeController *)self tableView];
  [v16 setDataSource:self];

  v17 = [(OBTableWelcomeController *)self tableView];
  [v17 setDelegate:self];

  v18 = [(OBTableWelcomeController *)self tableView];
  [v18 setScrollEnabled:1];

  v19 = [(OBTableWelcomeController *)self tableView];
  [v19 setAllowsSelection:0];

  v20 = [(OBTableWelcomeController *)self tableView];
  [v20 reloadData];

  v21 = [(OBTableWelcomeController *)self tableView];
  [v21 layoutIfNeeded];

  v22 = [(OBTableWelcomeController *)self tableView];
  [v22 registerClass:objc_opt_class() forCellReuseIdentifier:@"AppCell"];
}

- (void)viewDidLayoutSubviews
{
  v3 = [(SSCellularPlanCarrierAppsViewController *)self view];
  [v3 layoutIfNeeded];

  v5.receiver = self;
  v5.super_class = SSCellularPlanCarrierAppsViewController;
  [(SSCellularPlanCarrierAppsViewController *)&v5 updateViewConstraints];
  v4.receiver = self;
  v4.super_class = SSCellularPlanCarrierAppsViewController;
  [(OBTableWelcomeController *)&v4 viewDidLayoutSubviews];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = [a4 row];
  v8 = [v6 dequeueReusableCellWithIdentifier:@"AppCell"];

  if (!v8)
  {
    v8 = [[SSRecommendedCarrierAppCell alloc] initWithStyle:0 reuseIdentifier:@"AppCell"];
  }

  v9 = [self->_carrierApps objectAtIndexedSubscript:v7];
  [(SSRecommendedCarrierAppCell *)v8 setLockupRequest:v9 withDelegate:self];

  return v8;
}

- (void)_userDidTapCancel
{
  v2 = [(SSCellularPlanCarrierAppsViewController *)self delegate];
  [v2 userDidTapCancel];
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end