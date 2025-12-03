@interface SSCellularSetupMultiSIMActivatingViewController
- (BOOL)isPlanInstalledAndNotEnabled:(unint64_t)enabled item:(id)item;
- (SSCellularSetupMultiSIMActivatingViewController)initWithPlanInfos:(id)infos;
- (TSSIMSetupFlowDelegate)delegate;
- (id)_statusDescription:(unint64_t)description info:(id)info;
- (id)accessoryViewForStatus:(id)status;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_setupTableView;
- (void)prepare:(id)prepare;
- (void)updateInstallationStatus:(unint64_t)status forPlanID:(id)d;
- (void)viewDidLoad;
@end

@implementation SSCellularSetupMultiSIMActivatingViewController

- (SSCellularSetupMultiSIMActivatingViewController)initWithPlanInfos:(id)infos
{
  v31 = *MEMORY[0x277D85DE8];
  infosCopy = infos;
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"SETTING_UP_CELLULAR" value:&stru_28753DF48 table:@"Localizable"];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"ACTIVATE_SPINNER_DETAIL" value:&stru_28753DF48 table:@"Localizable"];
  v27.receiver = self;
  v27.super_class = SSCellularSetupMultiSIMActivatingViewController;
  v10 = [(OBTableWelcomeController *)&v27 initWithTitle:v7 detailText:v9 symbolName:@"antenna.radiowaves.left.and.right" adoptTableViewScrollView:1];

  if (v10)
  {
    objc_storeStrong(&v10->_plans, infos);
    v11 = objc_opt_new();
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v12 = infosCopy;
    v13 = [v12 countByEnumeratingWithState:&v23 objects:v30 count:16];
    if (!v13)
    {
      goto LABEL_15;
    }

    v14 = v13;
    v15 = *v24;
    while (1)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v23 + 1) + 8 * i);
        identifier = [v17 identifier];
        if ([identifier length])
        {
          v19 = -[SSCellularSetupMultiSIMActivatingViewController _statusDescription:info:](v10, "_statusDescription:info:", [v17 status], v17);
          [(NSMutableDictionary *)v11 setObject:v19 forKeyedSubscript:identifier];
        }

        else
        {
          if ([v12 count] == 1)
          {
            goto LABEL_13;
          }

          v19 = _TSLogDomain();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
          {
            [(SSCellularSetupMultiSIMActivatingViewController *)buf initWithPlanInfos:v19];
          }
        }

LABEL_13:
      }

      v14 = [v12 countByEnumeratingWithState:&v23 objects:v30 count:16];
      if (!v14)
      {
LABEL_15:

        planStatusDescriptions = v10->_planStatusDescriptions;
        v10->_planStatusDescriptions = v11;

        break;
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)updateInstallationStatus:(unint64_t)status forPlanID:(id)d
{
  dCopy = d;
  v7 = findPlanInfoWithPlanID(self->_plans, dCopy);
  if (v7)
  {
    if (status != 10002 && status != 10001 && status != 10003)
    {
      v10 = [(SSCellularSetupMultiSIMActivatingViewController *)self _statusDescription:status info:v7];
      v11 = [(NSMutableDictionary *)self->_planStatusDescriptions objectForKeyedSubscript:dCopy];
      if (([v10 isEqualToString:v11] & 1) == 0)
      {
        [(NSMutableDictionary *)self->_planStatusDescriptions setObject:v10 forKeyedSubscript:dCopy];
        tableView = [(OBTableWelcomeController *)self tableView];
        [tableView reloadData];
      }
    }
  }

  else
  {
    v13 = _TSLogDomain();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [SSCellularSetupMultiSIMActivatingViewController updateInstallationStatus:dCopy forPlanID:v13];
    }
  }
}

- (BOOL)isPlanInstalledAndNotEnabled:(unint64_t)enabled item:(id)item
{
  itemCopy = item;
  v6 = itemCopy;
  if (itemCopy && (enabled == 14 || enabled == 10004))
  {
    v7 = [itemCopy isSelected] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (id)accessoryViewForStatus:(id)status
{
  status = [status status];
  if (status == 10004)
  {
    goto LABEL_4;
  }

  v4 = 0;
  if (status > 0xE)
  {
    goto LABEL_5;
  }

  if (((1 << status) & 0x339E) != 0)
  {
LABEL_4:
    v4 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    [v4 startAnimating];
    goto LABEL_5;
  }

  if (((1 << status) & 0xC20) != 0)
  {
    v6 = [MEMORY[0x277D755B8] systemImageNamed:@"exclamationmark.triangle"];
    v4 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v6];
    systemYellowColor = [MEMORY[0x277D75348] systemYellowColor];
    [v4 setTintColor:systemYellowColor];
  }

  else
  {
    if (status != 14)
    {
      goto LABEL_5;
    }

    v6 = [MEMORY[0x277D755B8] systemImageNamed:@"checkmark"];
    v4 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v6];
  }

LABEL_5:

  return v4;
}

- (id)_statusDescription:(unint64_t)description info:(id)info
{
  infoCopy = info;
  displayPlan = [infoCopy displayPlan];
  if (displayPlan)
  {
    displayPlan2 = [infoCopy displayPlan];
    plan = [displayPlan2 plan];
  }

  else
  {
    plan = 0;
  }

  planItem = [infoCopy planItem];
  v11 = [(SSCellularSetupMultiSIMActivatingViewController *)self isPlanInstalledAndNotEnabled:description item:planItem];

  if (v11)
  {
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = v12;
    v14 = @"AVAILABLE";
LABEL_16:
    v15 = [(__CFString *)v12 localizedStringForKey:v14 value:&stru_28753DF48 table:@"Localizable"];
LABEL_17:

    v13 = v15;
    goto LABEL_18;
  }

  if (description == 10004)
  {
LABEL_7:
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = v12;
    v14 = @"CONNECTING_TO_NETWORK";
    goto LABEL_16;
  }

  v13 = &stru_28753DF48;
  if (description <= 6)
  {
    if (description > 4)
    {
      if (description == 5)
      {
LABEL_29:
        installError = [infoCopy installError];
        v13 = [TSUtilities getErrorDescription:installError];

        if (![(__CFString *)v13 length])
        {
          if (plan && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v19 = v18;
            v20 = @"TRANSFER_FAILED";
          }

          else
          {
            v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v19 = v18;
            v20 = @"SETUP_FAILED";
          }

          v15 = [v18 localizedStringForKey:v20 value:&stru_28753DF48 table:@"Localizable"];

          goto LABEL_17;
        }

        goto LABEL_18;
      }
    }

    else
    {
      if (description - 1 < 4)
      {
LABEL_15:
        v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v13 = v12;
        v14 = @"ACTIVATING";
        goto LABEL_16;
      }

      if (description)
      {
        goto LABEL_18;
      }
    }

    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = v12;
    v14 = @"WAITING";
    goto LABEL_16;
  }

  if (description <= 10)
  {
    if (description - 7 >= 3)
    {
      if (description != 10)
      {
        goto LABEL_18;
      }

      v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v13 = v12;
      v14 = @"TRANSFER_FAILED";
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (description <= 12)
  {
    if (description != 11)
    {
      goto LABEL_15;
    }

    goto LABEL_29;
  }

  if (description == 13)
  {
    goto LABEL_7;
  }

  if (description == 14)
  {
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = v12;
    v14 = @"READY";
    goto LABEL_16;
  }

LABEL_18:

  return v13;
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = SSCellularSetupMultiSIMActivatingViewController;
  [(TSOBTableWelcomeController *)&v3 viewDidLoad];
  [(SSCellularSetupMultiSIMActivatingViewController *)self _setupTableView];
}

- (void)_setupTableView
{
  v3 = objc_alloc(MEMORY[0x277D75B40]);
  v4 = [v3 initWithFrame:2 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(OBTableWelcomeController *)self setTableView:v4];

  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView setTranslatesAutoresizingMaskIntoConstraints:0];

  tableView2 = [(OBTableWelcomeController *)self tableView];
  [tableView2 setRowHeight:*MEMORY[0x277D76F30]];

  tableView3 = [(OBTableWelcomeController *)self tableView];
  [tableView3 setEstimatedRowHeight:1.0];

  tableView4 = [(OBTableWelcomeController *)self tableView];
  [tableView4 setAllowsMultipleSelection:0];

  tableView5 = [(OBTableWelcomeController *)self tableView];
  [tableView5 setScrollEnabled:1];

  tableView6 = [(OBTableWelcomeController *)self tableView];
  [tableView6 setShowsVerticalScrollIndicator:0];

  tableView7 = [(OBTableWelcomeController *)self tableView];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [tableView7 setBackgroundColor:clearColor];

  tableView8 = [(OBTableWelcomeController *)self tableView];
  [tableView8 setDataSource:self];

  tableView9 = [(OBTableWelcomeController *)self tableView];
  [tableView9 reloadData];

  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem setHidesBackButton:1];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [pathCopy row];
  if (v6 >= [(NSArray *)self->_plans count])
  {
    v17 = _TSLogDomain();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      [SSCellularSetupMultiSIMActivatingViewController(UITableViewDataSource) tableView:v17 cellForRowAtIndexPath:?];
    }

    v9 = 0;
  }

  else
  {
    v7 = -[NSArray objectAtIndexedSubscript:](self->_plans, "objectAtIndexedSubscript:", [pathCopy row]);
    identifier = [v7 identifier];
    v9 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:3 reuseIdentifier:identifier];
    defaultConfig = [v9 defaultConfig];
    text = [v7 text];
    [defaultConfig setText:text];

    v12 = [(NSMutableDictionary *)self->_planStatusDescriptions objectForKeyedSubscript:identifier];
    [defaultConfig setSecondaryText:v12];

    v13 = MEMORY[0x277D755B8];
    imageName = [v7 imageName];
    v15 = [v13 systemImageNamed:imageName];
    [defaultConfig setImage:v15];

    [v9 setContentConfiguration:defaultConfig];
    v16 = [(SSCellularSetupMultiSIMActivatingViewController *)self accessoryViewForStatus:v7];
    [v9 setAccessoryView:v16];
  }

  return v9;
}

- (void)prepare:(id)prepare
{
  v12 = *MEMORY[0x277D85DE8];
  prepareCopy = prepare;
  if ([(NSArray *)self->_plans count]> 1)
  {
    prepareCopy[2](prepareCopy, 1);
  }

  else
  {
    v5 = _TSLogDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(NSArray *)self->_plans count];
      v8 = 134218242;
      v9 = v6;
      v10 = 2080;
      v11 = "[SSCellularSetupMultiSIMActivatingViewController(TSSetupFlowItem) prepare:]";
      _os_log_impl(&dword_262AA8000, v5, OS_LOG_TYPE_DEFAULT, "skip. count : %lu @%s", &v8, 0x16u);
    }

    prepareCopy[2](prepareCopy, 0);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithPlanInfos:(os_log_t)log .cold.1(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "[SSCellularSetupMultiSIMActivatingViewController initWithPlanInfos:]";
  _os_log_fault_impl(&dword_262AA8000, log, OS_LOG_TYPE_FAULT, "[F]invalid plan identifier @%s", buf, 0xCu);
}

- (void)updateInstallationStatus:(uint64_t)a1 forPlanID:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2080;
  v6 = "[SSCellularSetupMultiSIMActivatingViewController updateInstallationStatus:forPlanID:]";
  _os_log_fault_impl(&dword_262AA8000, a2, OS_LOG_TYPE_FAULT, "[F]cannot find plan id : %@ @%s", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end