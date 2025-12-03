@interface SSCellularPlanCarrierAppsViewController
- (SSCellularPlanCarrierAppsViewController)initWithCarrierApps:(id)apps country:(id)country;
- (TSSIMSetupFlowDelegate)delegate;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_userDidTapCancel;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation SSCellularPlanCarrierAppsViewController

- (SSCellularPlanCarrierAppsViewController)initWithCarrierApps:(id)apps country:(id)country
{
  appsCopy = apps;
  v6 = MEMORY[0x277CCACA8];
  v7 = MEMORY[0x277CCA8D8];
  countryCopy = country;
  v9 = [v7 bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"SET_UP_ESIM_TITLE_%@" value:&stru_28753DF48 table:@"Localizable"];
  countryCopy = [v6 stringWithFormat:v10, countryCopy];

  v12 = MEMORY[0x277CCACA8];
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"SET_UP_ESIM_DETAIL_%@" value:&stru_28753DF48 table:@"Localizable"];
  countryCopy2 = [v12 stringWithFormat:v14, countryCopy];

  v21.receiver = self;
  v21.super_class = SSCellularPlanCarrierAppsViewController;
  v16 = [(OBTableWelcomeController *)&v21 initWithTitle:countryCopy detailText:countryCopy2 symbolName:@"antenna.radiowaves.left.and.right" adoptTableViewScrollView:1];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_carrierApps, apps);
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
    navigationController = [(SSCellularPlanCarrierAppsViewController *)self navigationController];
    viewControllers = [navigationController viewControllers];
    if ([viewControllers count] < 2)
    {
    }

    else
    {
      v8 = [TSUtilities isBackAllowed:self];

      if (v8)
      {
        navigationItem = [(OBBaseWelcomeController *)self navigationItem];
        v4 = navigationItem;
        v5 = 0;
        goto LABEL_7;
      }
    }

    v4 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__userDidTapCancel];
    navigationItem2 = [(OBBaseWelcomeController *)self navigationItem];
    [navigationItem2 setLeftBarButtonItem:v4];

    goto LABEL_10;
  }

  if (![TSUtilities isBackAllowed:self])
  {
    navigationItem = [(OBBaseWelcomeController *)self navigationItem];
    v4 = navigationItem;
    v5 = 1;
LABEL_7:
    [navigationItem setHidesBackButton:v5 animated:0];
LABEL_10:
  }

  v10 = objc_alloc(MEMORY[0x277D75B40]);
  v11 = [v10 initWithFrame:2 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(OBTableWelcomeController *)self setTableView:v11];

  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView setTranslatesAutoresizingMaskIntoConstraints:0];

  tableView2 = [(OBTableWelcomeController *)self tableView];
  [tableView2 setDirectionalLayoutMargins:{1.0, 1.0, 1.0, 1.0}];

  tableView3 = [(OBTableWelcomeController *)self tableView];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [tableView3 setBackgroundColor:clearColor];

  tableView4 = [(OBTableWelcomeController *)self tableView];
  [tableView4 setDataSource:self];

  tableView5 = [(OBTableWelcomeController *)self tableView];
  [tableView5 setDelegate:self];

  tableView6 = [(OBTableWelcomeController *)self tableView];
  [tableView6 setScrollEnabled:1];

  tableView7 = [(OBTableWelcomeController *)self tableView];
  [tableView7 setAllowsSelection:0];

  tableView8 = [(OBTableWelcomeController *)self tableView];
  [tableView8 reloadData];

  tableView9 = [(OBTableWelcomeController *)self tableView];
  [tableView9 layoutIfNeeded];

  tableView10 = [(OBTableWelcomeController *)self tableView];
  [tableView10 registerClass:objc_opt_class() forCellReuseIdentifier:@"AppCell"];
}

- (void)viewDidLayoutSubviews
{
  view = [(SSCellularPlanCarrierAppsViewController *)self view];
  [view layoutIfNeeded];

  v5.receiver = self;
  v5.super_class = SSCellularPlanCarrierAppsViewController;
  [(SSCellularPlanCarrierAppsViewController *)&v5 updateViewConstraints];
  v4.receiver = self;
  v4.super_class = SSCellularPlanCarrierAppsViewController;
  [(OBTableWelcomeController *)&v4 viewDidLayoutSubviews];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  v7 = [path row];
  v8 = [viewCopy dequeueReusableCellWithIdentifier:@"AppCell"];

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
  delegate = [(SSCellularPlanCarrierAppsViewController *)self delegate];
  [delegate userDidTapCancel];
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end