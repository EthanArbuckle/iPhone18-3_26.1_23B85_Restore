@interface SSCellularSetupMultiSIMActivatingViewController
- (BOOL)isPlanInstalledAndNotEnabled:(unint64_t)a3 item:(id)a4;
- (SSCellularSetupMultiSIMActivatingViewController)initWithPlanInfos:(id)a3;
- (TSSIMSetupFlowDelegate)delegate;
- (id)_statusDescription:(unint64_t)a3 info:(id)a4;
- (id)accessoryViewForStatus:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_setupTableView;
- (void)prepare:(id)a3;
- (void)updateInstallationStatus:(unint64_t)a3 forPlanID:(id)a4;
- (void)viewDidLoad;
@end

@implementation SSCellularSetupMultiSIMActivatingViewController

- (SSCellularSetupMultiSIMActivatingViewController)initWithPlanInfos:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"SETTING_UP_CELLULAR" value:&stru_28753DF48 table:@"Localizable"];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"ACTIVATE_SPINNER_DETAIL" value:&stru_28753DF48 table:@"Localizable"];
  v27.receiver = self;
  v27.super_class = SSCellularSetupMultiSIMActivatingViewController;
  v10 = [(OBTableWelcomeController *)&v27 initWithTitle:v7 detailText:v9 symbolName:@"antenna.radiowaves.left.and.right" adoptTableViewScrollView:1];

  if (v10)
  {
    objc_storeStrong(&v10->_plans, a3);
    v11 = objc_opt_new();
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v12 = v5;
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
        v18 = [v17 identifier];
        if ([v18 length])
        {
          v19 = -[SSCellularSetupMultiSIMActivatingViewController _statusDescription:info:](v10, "_statusDescription:info:", [v17 status], v17);
          [(NSMutableDictionary *)v11 setObject:v19 forKeyedSubscript:v18];
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

- (void)updateInstallationStatus:(unint64_t)a3 forPlanID:(id)a4
{
  v6 = a4;
  v7 = findPlanInfoWithPlanID(self->_plans, v6);
  if (v7)
  {
    if (a3 != 10002 && a3 != 10001 && a3 != 10003)
    {
      v10 = [(SSCellularSetupMultiSIMActivatingViewController *)self _statusDescription:a3 info:v7];
      v11 = [(NSMutableDictionary *)self->_planStatusDescriptions objectForKeyedSubscript:v6];
      if (([v10 isEqualToString:v11] & 1) == 0)
      {
        [(NSMutableDictionary *)self->_planStatusDescriptions setObject:v10 forKeyedSubscript:v6];
        v12 = [(OBTableWelcomeController *)self tableView];
        [v12 reloadData];
      }
    }
  }

  else
  {
    v13 = _TSLogDomain();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [SSCellularSetupMultiSIMActivatingViewController updateInstallationStatus:v6 forPlanID:v13];
    }
  }
}

- (BOOL)isPlanInstalledAndNotEnabled:(unint64_t)a3 item:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (v5 && (a3 == 14 || a3 == 10004))
  {
    v7 = [v5 isSelected] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (id)accessoryViewForStatus:(id)a3
{
  v3 = [a3 status];
  if (v3 == 10004)
  {
    goto LABEL_4;
  }

  v4 = 0;
  if (v3 > 0xE)
  {
    goto LABEL_5;
  }

  if (((1 << v3) & 0x339E) != 0)
  {
LABEL_4:
    v4 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    [v4 startAnimating];
    goto LABEL_5;
  }

  if (((1 << v3) & 0xC20) != 0)
  {
    v6 = [MEMORY[0x277D755B8] systemImageNamed:@"exclamationmark.triangle"];
    v4 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v6];
    v7 = [MEMORY[0x277D75348] systemYellowColor];
    [v4 setTintColor:v7];
  }

  else
  {
    if (v3 != 14)
    {
      goto LABEL_5;
    }

    v6 = [MEMORY[0x277D755B8] systemImageNamed:@"checkmark"];
    v4 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v6];
  }

LABEL_5:

  return v4;
}

- (id)_statusDescription:(unint64_t)a3 info:(id)a4
{
  v6 = a4;
  v7 = [v6 displayPlan];
  if (v7)
  {
    v8 = [v6 displayPlan];
    v9 = [v8 plan];
  }

  else
  {
    v9 = 0;
  }

  v10 = [v6 planItem];
  v11 = [(SSCellularSetupMultiSIMActivatingViewController *)self isPlanInstalledAndNotEnabled:a3 item:v10];

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

  if (a3 == 10004)
  {
LABEL_7:
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = v12;
    v14 = @"CONNECTING_TO_NETWORK";
    goto LABEL_16;
  }

  v13 = &stru_28753DF48;
  if (a3 <= 6)
  {
    if (a3 > 4)
    {
      if (a3 == 5)
      {
LABEL_29:
        v17 = [v6 installError];
        v13 = [TSUtilities getErrorDescription:v17];

        if (![(__CFString *)v13 length])
        {
          if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
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
      if (a3 - 1 < 4)
      {
LABEL_15:
        v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v13 = v12;
        v14 = @"ACTIVATING";
        goto LABEL_16;
      }

      if (a3)
      {
        goto LABEL_18;
      }
    }

    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = v12;
    v14 = @"WAITING";
    goto LABEL_16;
  }

  if (a3 <= 10)
  {
    if (a3 - 7 >= 3)
    {
      if (a3 != 10)
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

  if (a3 <= 12)
  {
    if (a3 != 11)
    {
      goto LABEL_15;
    }

    goto LABEL_29;
  }

  if (a3 == 13)
  {
    goto LABEL_7;
  }

  if (a3 == 14)
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

  v5 = [(OBTableWelcomeController *)self tableView];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(OBTableWelcomeController *)self tableView];
  [v6 setRowHeight:*MEMORY[0x277D76F30]];

  v7 = [(OBTableWelcomeController *)self tableView];
  [v7 setEstimatedRowHeight:1.0];

  v8 = [(OBTableWelcomeController *)self tableView];
  [v8 setAllowsMultipleSelection:0];

  v9 = [(OBTableWelcomeController *)self tableView];
  [v9 setScrollEnabled:1];

  v10 = [(OBTableWelcomeController *)self tableView];
  [v10 setShowsVerticalScrollIndicator:0];

  v11 = [(OBTableWelcomeController *)self tableView];
  v12 = [MEMORY[0x277D75348] clearColor];
  [v11 setBackgroundColor:v12];

  v13 = [(OBTableWelcomeController *)self tableView];
  [v13 setDataSource:self];

  v14 = [(OBTableWelcomeController *)self tableView];
  [v14 reloadData];

  v15 = [(OBBaseWelcomeController *)self navigationItem];
  [v15 setHidesBackButton:1];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [v5 row];
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
    v7 = -[NSArray objectAtIndexedSubscript:](self->_plans, "objectAtIndexedSubscript:", [v5 row]);
    v8 = [v7 identifier];
    v9 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:3 reuseIdentifier:v8];
    v10 = [v9 defaultConfig];
    v11 = [v7 text];
    [v10 setText:v11];

    v12 = [(NSMutableDictionary *)self->_planStatusDescriptions objectForKeyedSubscript:v8];
    [v10 setSecondaryText:v12];

    v13 = MEMORY[0x277D755B8];
    v14 = [v7 imageName];
    v15 = [v13 systemImageNamed:v14];
    [v10 setImage:v15];

    [v9 setContentConfiguration:v10];
    v16 = [(SSCellularSetupMultiSIMActivatingViewController *)self accessoryViewForStatus:v7];
    [v9 setAccessoryView:v16];
  }

  return v9;
}

- (void)prepare:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(NSArray *)self->_plans count]> 1)
  {
    v4[2](v4, 1);
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

    v4[2](v4, 0);
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