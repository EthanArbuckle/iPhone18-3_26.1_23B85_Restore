@interface WFIPConfigViewController
- (WFIPConfigViewController)initWithConfig:(id)a3 ipType:(int64_t)a4;
- (WFIPConfigViewController)initWithConfig:(id)a3 ipType:(int64_t)a4 appearanceProxy:(id)a5;
- (WFTextFieldCell)clientIDCell;
- (WFTextFieldCell)ipAddressCell;
- (WFTextFieldCell)prefixCell;
- (WFTextFieldCell)routerCell;
- (WFTextFieldCell)subnetMaskCell;
- (double)_configCellLeadingInset;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_setFirstResponderAfterCell:(id)a3;
- (void)_updateSaveEnabled;
- (void)didReceiveMemoryWarning;
- (void)save:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation WFIPConfigViewController

- (WFIPConfigViewController)initWithConfig:(id)a3 ipType:(int64_t)a4
{
  v6 = a3;
  v7 = +[WFAppearanceProxy defaultAppearanceProxy];
  v8 = [(WFIPConfigViewController *)self initWithConfig:v6 ipType:a4 appearanceProxy:v7];

  return v8;
}

- (WFIPConfigViewController)initWithConfig:(id)a3 ipType:(int64_t)a4 appearanceProxy:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v18.receiver = self;
  v18.super_class = WFIPConfigViewController;
  v10 = -[WFIPConfigViewController initWithStyle:](&v18, sel_initWithStyle_, [a5 tableViewStyle]);
  v11 = v10;
  if (v9 && v10)
  {
    objc_storeStrong(&v10->_originalConfig, a3);
    v12 = [v9 copy];
    modifiedConfig = v11->_modifiedConfig;
    v11->_modifiedConfig = v12;

    if (!a4 && [(WFNetworkSettingsConfig *)v11->_modifiedConfig ipv4Config]== -1)
    {
      v14 = WFLogForCategory(0);
      v15 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && v14 && os_log_type_enabled(v14, v15))
      {
        *buf = 136315138;
        v20 = "[WFIPConfigViewController initWithConfig:ipType:appearanceProxy:]";
        _os_log_impl(&dword_273FB9000, v14, v15, "%s: previous ipv4Config is unknown", buf, 0xCu);
      }

      [(WFNetworkSettingsConfig *)v11->_modifiedConfig setIpv4Config:0];
    }

    v11->_type = a4;
  }

  else
  {

    v11 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)viewDidLoad
{
  v15.receiver = self;
  v15.super_class = WFIPConfigViewController;
  [(WFIPConfigViewController *)&v15 viewDidLoad];
  if ([(WFIPConfigViewController *)self type])
  {
    if ([(WFIPConfigViewController *)self type]!= 1)
    {
      goto LABEL_6;
    }

    v3 = @"kWFLocSettingsIPV6ConfigureTitle";
  }

  else
  {
    v3 = @"kWFLocSettingsIPV4ConfigureTitle";
  }

  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:v3 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  [(WFIPConfigViewController *)self setTitle:v5];

LABEL_6:
  v6 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:3 target:self action:sel_save_];
  v7 = [(WFIPConfigViewController *)self navigationItem];
  [v7 setRightBarButtonItem:v6];

  v8 = [(WFIPConfigViewController *)self navigationItem];
  v9 = [v8 rightBarButtonItem];
  [v9 setEnabled:0];

  v10 = *MEMORY[0x277D76F30];
  v11 = [(WFIPConfigViewController *)self tableView];
  [v11 setRowHeight:v10];

  v12 = [(WFIPConfigViewController *)self tableView];
  [v12 setEstimatedRowHeight:44.0];

  v13 = [(WFIPConfigViewController *)self tableView];
  [v13 setEstimatedSectionHeaderHeight:0.0];

  if ([MEMORY[0x277D75418] currentIsIPad])
  {
    v14 = [(WFIPConfigViewController *)self tableView];
    [v14 _setSectionContentInset:{0.0, 20.0, 0.0, 20.0}];
  }

  [(WFIPConfigViewController *)self _updateSaveEnabled];
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = WFIPConfigViewController;
  [(WFIPConfigViewController *)&v2 didReceiveMemoryWarning];
}

- (void)_updateSaveEnabled
{
  v3 = [(WFIPConfigViewController *)self modifiedConfig];
  v4 = [(WFIPConfigViewController *)self originalConfig];
  v5 = [v3 isEqual:v4];

  if (v5)
  {
    v6 = 0;
    goto LABEL_9;
  }

  if (![(WFIPConfigViewController *)self type])
  {
    v7 = [(WFIPConfigViewController *)self modifiedConfig];
    v8 = [v7 validIPv4Configuration];
    goto LABEL_7;
  }

  if ([(WFIPConfigViewController *)self type]== 1)
  {
    v7 = [(WFIPConfigViewController *)self modifiedConfig];
    v8 = [v7 validIPv6Configuration];
LABEL_7:
    v6 = v8;

    goto LABEL_9;
  }

  v6 = 1;
LABEL_9:
  v10 = [(WFIPConfigViewController *)self navigationItem];
  v9 = [v10 rightBarButtonItem];
  [v9 setEnabled:v6];
}

- (void)save:(id)a3
{
  v4 = [(WFIPConfigViewController *)self saveHandler];

  if (v4)
  {
    v5 = [(WFIPConfigViewController *)self saveHandler];
    v6 = [(WFIPConfigViewController *)self modifiedConfig];
    (v5)[2](v5, v6);
  }

  [(UIViewController *)self wf_popViewControllerAnimated:1];
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  if ([(WFIPConfigViewController *)self type])
  {
    if ([(WFIPConfigViewController *)self type]== 1)
    {
      v4 = [(WFIPConfigViewController *)self modifiedConfig];
      v5 = [v4 ipv6Config];

      if (v5 == 1)
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v7 = [(WFIPConfigViewController *)self modifiedConfig];
    if ([v7 ipv4Config] == 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  return v6;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  if (a4 != 1)
  {
    if (!a4)
    {
      if ([(WFIPConfigViewController *)self type])
      {
        v7 = [(WFIPConfigViewController *)self type]== 1;
        goto LABEL_8;
      }

LABEL_13:
      v10 = 3;
      goto LABEL_17;
    }

LABEL_16:
    v10 = 0;
    goto LABEL_17;
  }

  if (![(WFIPConfigViewController *)self type])
  {
    v11 = [(WFIPConfigViewController *)self modifiedConfig];
    v12 = [v11 ipv4Config];

    if (!v12)
    {
      v10 = 1;
      goto LABEL_17;
    }

    v13 = [(WFIPConfigViewController *)self modifiedConfig];
    v14 = [v13 ipv4Config];

    if (v14 == 2)
    {
      goto LABEL_13;
    }

    v15 = [(WFIPConfigViewController *)self modifiedConfig];
    [v15 ipv4Config];

    goto LABEL_16;
  }

  if ([(WFIPConfigViewController *)self type]!= 1)
  {
    goto LABEL_16;
  }

  v8 = [(WFIPConfigViewController *)self modifiedConfig];
  v9 = [v8 ipv6Config];

  v7 = v9 == 1;
LABEL_8:
  if (v7)
  {
    v10 = 3;
  }

  else
  {
    v10 = 0;
  }

LABEL_17:

  return v10;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  if ([v5 section])
  {
    if ([v5 section] == 1)
    {
      if ([(WFIPConfigViewController *)self type])
      {
        if ([(WFIPConfigViewController *)self type]== 1)
        {
          v6 = [(WFIPConfigViewController *)self modifiedConfig];
          v7 = [v6 ipv6Config];

          if (v7 == 1)
          {
            if ([v5 row])
            {
              if ([v5 row] == 1)
              {
                v8 = [(WFIPConfigViewController *)self prefixCell];
LABEL_39:
                v9 = v8;
                goto LABEL_41;
              }

LABEL_37:
              if ([v5 row] == 2)
              {
                v8 = [(WFIPConfigViewController *)self routerCell];
                goto LABEL_39;
              }

              goto LABEL_40;
            }

            goto LABEL_36;
          }
        }
      }

      else
      {
        v20 = [(WFIPConfigViewController *)self modifiedConfig];
        v21 = [v20 ipv4Config];

        if (!v21)
        {
          if (![v5 row])
          {
            v8 = [(WFIPConfigViewController *)self clientIDCell];
            goto LABEL_39;
          }

          goto LABEL_40;
        }

        v22 = [(WFIPConfigViewController *)self modifiedConfig];
        v23 = [v22 ipv4Config];

        if (v23 == 2)
        {
          if ([v5 row])
          {
            if ([v5 row] == 1)
            {
              v8 = [(WFIPConfigViewController *)self subnetMaskCell];
              goto LABEL_39;
            }

            goto LABEL_37;
          }

LABEL_36:
          v8 = [(WFIPConfigViewController *)self ipAddressCell];
          goto LABEL_39;
        }
      }
    }

LABEL_40:
    v9 = 0;
    goto LABEL_41;
  }

  v9 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:0];
  [v9 setAccessoryType:0];
  if ([(WFIPConfigViewController *)self type])
  {
    if ([(WFIPConfigViewController *)self type]!= 1)
    {
      goto LABEL_41;
    }

    if ([v5 row])
    {
      if ([v5 row] == 1)
      {
        v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v11 = [v10 localizedStringForKey:@"kWFLocSettingsIPV6ConfigureManual" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
        v12 = [v9 textLabel];
        [v12 setText:v11];

        v13 = [(WFIPConfigViewController *)self modifiedConfig];
        v14 = [v13 ipv6Config];
        goto LABEL_28;
      }

      if ([v5 row] != 2)
      {
        goto LABEL_41;
      }

      v37 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v38 = [v37 localizedStringForKey:@"kWFLocSettingsIPV6ConfigureLinkLocal" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      v39 = [v9 textLabel];
      [v39 setText:v38];

      v18 = [(WFIPConfigViewController *)self modifiedConfig];
      v19 = [v18 ipv6Config];
LABEL_34:
      v40 = v19;

      if (v40 != 2)
      {
        goto LABEL_41;
      }

      goto LABEL_35;
    }

    v29 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v30 = [v29 localizedStringForKey:@"kWFLocSettingsIPV6ConfigureAutomatic" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
    v31 = [v9 textLabel];
    [v31 setText:v30];

    v27 = [(WFIPConfigViewController *)self modifiedConfig];
    v28 = [v27 ipv6Config];
LABEL_24:
    v32 = v28;

    if (v32)
    {
      goto LABEL_41;
    }

    goto LABEL_35;
  }

  if (![v5 row])
  {
    v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v25 = [v24 localizedStringForKey:@"kWFLocSettingsIPV4ConfigureAutomatic" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
    v26 = [v9 textLabel];
    [v26 setText:v25];

    v27 = [(WFIPConfigViewController *)self modifiedConfig];
    v28 = [v27 ipv4Config];
    goto LABEL_24;
  }

  if ([v5 row] == 1)
  {
    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"kWFLocSettingsIPV4ConfigureManual" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
    v17 = [v9 textLabel];
    [v17 setText:v16];

    v18 = [(WFIPConfigViewController *)self modifiedConfig];
    v19 = [v18 ipv4Config];
    goto LABEL_34;
  }

  if ([v5 row] != 2)
  {
    goto LABEL_41;
  }

  v33 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v34 = [v33 localizedStringForKey:@"kWFLocSettingsIPV4ConfigureBootP" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  v35 = [v9 textLabel];
  [v35 setText:v34];

  v13 = [(WFIPConfigViewController *)self modifiedConfig];
  v14 = [v13 ipv4Config];
LABEL_28:
  v36 = v14;

  if (v36 == 1)
  {
LABEL_35:
    [v9 setAccessoryType:3];
  }

LABEL_41:
  v41 = [(WFIPConfigViewController *)self appearanceProxy];
  v42 = [v41 cellTextLabelFont];

  if (v42)
  {
    v43 = [(WFIPConfigViewController *)self appearanceProxy];
    v44 = [v43 cellTextLabelFont];
    v45 = [v9 textLabel];
    [v45 setFont:v44];
  }

  return v9;
}

- (void)_setFirstResponderAfterCell:(id)a3
{
  v10 = a3;
  v4 = [(WFIPConfigViewController *)self ipAddressCell];

  if (v4 == v10)
  {
    if ([(WFIPConfigViewController *)self type])
    {
      if ([(WFIPConfigViewController *)self type]!= 1)
      {
        goto LABEL_14;
      }

      v8 = [(WFIPConfigViewController *)self prefixCell];
    }

    else
    {
      v8 = [(WFIPConfigViewController *)self subnetMaskCell];
    }
  }

  else
  {
    v5 = [(WFIPConfigViewController *)self prefixCell];
    if (v5 == v10)
    {
    }

    else
    {
      v6 = [(WFIPConfigViewController *)self subnetMaskCell];

      if (v6 != v10)
      {
        v7 = [(WFIPConfigViewController *)self routerCell];

        if (v7 != v10)
        {
          goto LABEL_14;
        }

        v8 = [(WFIPConfigViewController *)self ipAddressCell];
        goto LABEL_12;
      }
    }

    v8 = [(WFIPConfigViewController *)self routerCell];
  }

LABEL_12:
  v9 = v8;
  if (v8)
  {
    [v8 becomeFirstResponder];
  }

LABEL_14:
}

- (WFTextFieldCell)ipAddressCell
{
  ipAddressCell = self->_ipAddressCell;
  if (ipAddressCell)
  {
    goto LABEL_12;
  }

  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 loadNibNamed:@"WFTextFieldCell" owner:self options:0];
  v6 = [v5 objectAtIndex:0];

  v7 = [(WFTextFieldCell *)v6 textField];
  [v7 setTextAlignment:2];

  objc_initWeak(&location, self);
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __41__WFIPConfigViewController_ipAddressCell__block_invoke;
  v45[3] = &unk_279EC5D70;
  objc_copyWeak(&v46, &location);
  [(WFTextFieldCell *)v6 setReturnKeyHandler:v45];
  if (![(WFIPConfigViewController *)self type])
  {
    v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v24 = [v23 localizedStringForKey:@"kWFLocSettingsIPV4AddressCell" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
    v25 = [(WFTextFieldCell *)v6 label];
    [v25 setText:v24];

    v26 = [(WFIPConfigViewController *)self modifiedConfig];
    v27 = [v26 ipv4AddressManual];
    v28 = [(WFTextFieldCell *)v6 textField];
    [v28 setText:v27];

    [(WFIPConfigViewController *)self _configCellLeadingInset];
    [(WFTextFieldCell *)v6 setLayoutMargins:0.0, v29, 0.0, 0.0];
    v30 = [(WFTextFieldCell *)v6 textField];
    [v30 setKeyboardType:2];

    objc_initWeak(&from, self);
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __41__WFIPConfigViewController_ipAddressCell__block_invoke_2;
    v42[3] = &unk_279EC5418;
    objc_copyWeak(&v43, &from);
    [(WFTextFieldCell *)v6 setTextChangeHandler:v42];
    v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d.%d.%d.%d", 0, 0, 0, 0];
    v32 = [(WFTextFieldCell *)v6 textField];
    [v32 setPlaceholder:v31];

    v22 = &v43;
LABEL_8:
    objc_destroyWeak(v22);
    objc_destroyWeak(&from);
    goto LABEL_9;
  }

  if ([(WFIPConfigViewController *)self type]== 1)
  {
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"kWFLocSettingsIPV6AddressCell" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
    v10 = [(WFTextFieldCell *)v6 label];
    [v10 setText:v9];

    v11 = [(WFIPConfigViewController *)self modifiedConfig];
    v12 = [v11 ipv6AddressManual];
    v13 = [(WFTextFieldCell *)v6 textField];
    [v13 setText:v12];

    [(WFIPConfigViewController *)self _configCellLeadingInset];
    [(WFTextFieldCell *)v6 setLayoutMargins:0.0, v14, 0.0, 0.0];
    v15 = [(WFIPConfigViewController *)self modifiedConfig];
    v16 = [v15 ipv6Addresses];
    v17 = [v16 count];

    if (v17)
    {
      v18 = [(WFIPConfigViewController *)self modifiedConfig];
      v19 = [v18 ipv6Addresses];
      v20 = [v19 objectAtIndexedSubscript:0];
      v21 = [(WFTextFieldCell *)v6 textField];
      [v21 setPlaceholder:v20];
    }

    objc_initWeak(&from, self);
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __41__WFIPConfigViewController_ipAddressCell__block_invoke_3;
    v40[3] = &unk_279EC5418;
    objc_copyWeak(&v41, &from);
    [(WFTextFieldCell *)v6 setTextChangeHandler:v40];
    v22 = &v41;
    goto LABEL_8;
  }

LABEL_9:
  v33 = [(WFIPConfigViewController *)self appearanceProxy];
  v34 = [v33 cellTextLabelFont];

  if (v34)
  {
    v35 = [(WFIPConfigViewController *)self appearanceProxy];
    v36 = [v35 cellTextLabelFont];
    v37 = [(WFTextFieldCell *)v6 textLabel];
    [v37 setFont:v36];
  }

  v38 = self->_ipAddressCell;
  self->_ipAddressCell = v6;

  objc_destroyWeak(&v46);
  objc_destroyWeak(&location);
  ipAddressCell = self->_ipAddressCell;
LABEL_12:

  return ipAddressCell;
}

void __41__WFIPConfigViewController_ipAddressCell__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setFirstResponderAfterCell:v3];
}

void __41__WFIPConfigViewController_ipAddressCell__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([v3 length])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = [WeakRetained modifiedConfig];
  [v5 setIpv4AddressManual:v4];

  [WeakRetained _updateSaveEnabled];
}

void __41__WFIPConfigViewController_ipAddressCell__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([v3 length])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = [WeakRetained modifiedConfig];
  [v5 setIpv6AddressManual:v4];

  [WeakRetained _updateSaveEnabled];
}

- (WFTextFieldCell)subnetMaskCell
{
  subnetMaskCell = self->_subnetMaskCell;
  if (!subnetMaskCell)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 loadNibNamed:@"WFTextFieldCell" owner:self options:0];
    v6 = [v5 objectAtIndex:0];

    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"kWFLocSettingsSubnetMaskCell" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
    v9 = [(WFTextFieldCell *)v6 label];
    [v9 setText:v8];

    [(WFIPConfigViewController *)self _configCellLeadingInset];
    [(WFTextFieldCell *)v6 setLayoutMargins:0.0, v10, 0.0, 0.0];
    v11 = [(WFTextFieldCell *)v6 textField];
    [v11 setTextAlignment:2];

    v12 = [(WFIPConfigViewController *)self modifiedConfig];
    v13 = [v12 ipv4SubnetMaskManual];
    v14 = [(WFTextFieldCell *)v6 textField];
    [v14 setText:v13];

    v15 = [(WFTextFieldCell *)v6 textField];
    [v15 setKeyboardType:2];

    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d.%d.%d.%d", 255, 255, 0, 0];
    v17 = [(WFTextFieldCell *)v6 textField];
    [v17 setPlaceholder:v16];

    objc_initWeak(&location, self);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __42__WFIPConfigViewController_subnetMaskCell__block_invoke;
    v27[3] = &unk_279EC5418;
    objc_copyWeak(&v28, &location);
    [(WFTextFieldCell *)v6 setTextChangeHandler:v27];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __42__WFIPConfigViewController_subnetMaskCell__block_invoke_2;
    v25[3] = &unk_279EC5D70;
    objc_copyWeak(&v26, &location);
    [(WFTextFieldCell *)v6 setReturnKeyHandler:v25];
    v18 = [(WFIPConfigViewController *)self appearanceProxy];
    v19 = [v18 cellTextLabelFont];

    if (v19)
    {
      v20 = [(WFIPConfigViewController *)self appearanceProxy];
      v21 = [v20 cellTextLabelFont];
      v22 = [(WFTextFieldCell *)v6 textLabel];
      [v22 setFont:v21];
    }

    v23 = self->_subnetMaskCell;
    self->_subnetMaskCell = v6;

    objc_destroyWeak(&v26);
    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
    subnetMaskCell = self->_subnetMaskCell;
  }

  return subnetMaskCell;
}

void __42__WFIPConfigViewController_subnetMaskCell__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([v3 length])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = [WeakRetained modifiedConfig];
  [v5 setIpv4SubnetMaskManual:v4];

  [WeakRetained _updateSaveEnabled];
}

void __42__WFIPConfigViewController_subnetMaskCell__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setFirstResponderAfterCell:v3];
}

- (WFTextFieldCell)prefixCell
{
  prefixCell = self->_prefixCell;
  if (!prefixCell)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 loadNibNamed:@"WFTextFieldCell" owner:self options:0];
    v6 = [v5 objectAtIndex:0];

    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"kWFLocSettingsIPV6ConfigurePrefixLength" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
    v9 = [(WFTextFieldCell *)v6 label];
    [v9 setText:v8];

    [(WFIPConfigViewController *)self _configCellLeadingInset];
    [(WFTextFieldCell *)v6 setLayoutMargins:0.0, v10, 0.0, 0.0];
    v11 = [(WFTextFieldCell *)v6 textField];
    [v11 setTextAlignment:2];

    v12 = [(WFIPConfigViewController *)self modifiedConfig];
    v13 = [v12 ipv6PrefixLengthManual];
    v14 = [(WFTextFieldCell *)v6 textField];
    [v14 setText:v13];

    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", 64];
    v16 = [(WFTextFieldCell *)v6 textField];
    [v16 setPlaceholder:v15];

    objc_initWeak(&location, self);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __38__WFIPConfigViewController_prefixCell__block_invoke;
    v26[3] = &unk_279EC5418;
    objc_copyWeak(&v27, &location);
    [(WFTextFieldCell *)v6 setTextChangeHandler:v26];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __38__WFIPConfigViewController_prefixCell__block_invoke_2;
    v24[3] = &unk_279EC5D70;
    objc_copyWeak(&v25, &location);
    [(WFTextFieldCell *)v6 setReturnKeyHandler:v24];
    v17 = [(WFIPConfigViewController *)self appearanceProxy];
    v18 = [v17 cellTextLabelFont];

    if (v18)
    {
      v19 = [(WFIPConfigViewController *)self appearanceProxy];
      v20 = [v19 cellTextLabelFont];
      v21 = [(WFTextFieldCell *)v6 textLabel];
      [v21 setFont:v20];
    }

    v22 = self->_prefixCell;
    self->_prefixCell = v6;

    objc_destroyWeak(&v25);
    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
    prefixCell = self->_prefixCell;
  }

  return prefixCell;
}

void __38__WFIPConfigViewController_prefixCell__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([v3 length])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = [WeakRetained modifiedConfig];
  [v5 setIpv6PrefixLengthManual:v4];

  [WeakRetained _updateSaveEnabled];
}

void __38__WFIPConfigViewController_prefixCell__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setFirstResponderAfterCell:v3];
}

- (WFTextFieldCell)routerCell
{
  routerCell = self->_routerCell;
  if (routerCell)
  {
    goto LABEL_10;
  }

  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 loadNibNamed:@"WFTextFieldCell" owner:self options:0];
  v6 = [v5 objectAtIndex:0];

  v7 = [(WFTextFieldCell *)v6 textField];
  [v7 setTextAlignment:2];

  [(WFIPConfigViewController *)self _configCellLeadingInset];
  [(WFTextFieldCell *)v6 setLayoutMargins:0.0, v8, 0.0, 0.0];
  objc_initWeak(&location, self);
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __38__WFIPConfigViewController_routerCell__block_invoke;
  v39[3] = &unk_279EC5D70;
  objc_copyWeak(&v40, &location);
  [(WFTextFieldCell *)v6 setReturnKeyHandler:v39];
  if (![(WFIPConfigViewController *)self type])
  {
    v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:@"kWFLocSettingsIPV4RouterCell" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
    v21 = [(WFTextFieldCell *)v6 label];
    [v21 setText:v20];

    v22 = [(WFIPConfigViewController *)self modifiedConfig];
    v23 = [v22 ipv4RouterAddressManual];
    v24 = [(WFTextFieldCell *)v6 textField];
    [v24 setText:v23];

    v25 = [(WFTextFieldCell *)v6 textField];
    [v25 setKeyboardType:2];

    v26 = [(WFTextFieldCell *)v6 textField];
    [v26 setPlaceholder:&stru_288308678];

    objc_initWeak(&from, self);
    v18 = v36;
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __38__WFIPConfigViewController_routerCell__block_invoke_2;
    v36[3] = &unk_279EC5418;
    objc_copyWeak(&v37, &from);
    [(WFTextFieldCell *)v6 setTextChangeHandler:v36];
    goto LABEL_6;
  }

  if ([(WFIPConfigViewController *)self type]== 1)
  {
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"kWFLocSettingsIPV6RouterCell" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
    v11 = [(WFTextFieldCell *)v6 label];
    [v11 setText:v10];

    v12 = [(WFIPConfigViewController *)self modifiedConfig];
    v13 = [v12 ipv6RouterAddressManual];
    v14 = [(WFTextFieldCell *)v6 textField];
    [v14 setText:v13];

    v15 = [(WFIPConfigViewController *)self modifiedConfig];
    v16 = [v15 ipv6RouterAddress];
    v17 = [(WFTextFieldCell *)v6 textField];
    [v17 setPlaceholder:v16];

    objc_initWeak(&from, self);
    v18 = v34;
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __38__WFIPConfigViewController_routerCell__block_invoke_3;
    v34[3] = &unk_279EC5418;
    objc_copyWeak(&v35, &from);
    [(WFTextFieldCell *)v6 setTextChangeHandler:v34];
LABEL_6:
    objc_destroyWeak(v18 + 4);
    objc_destroyWeak(&from);
  }

  v27 = [(WFIPConfigViewController *)self appearanceProxy];
  v28 = [v27 cellTextLabelFont];

  if (v28)
  {
    v29 = [(WFIPConfigViewController *)self appearanceProxy];
    v30 = [v29 cellTextLabelFont];
    v31 = [(WFTextFieldCell *)v6 textLabel];
    [v31 setFont:v30];
  }

  v32 = self->_routerCell;
  self->_routerCell = v6;

  objc_destroyWeak(&v40);
  objc_destroyWeak(&location);
  routerCell = self->_routerCell;
LABEL_10:

  return routerCell;
}

void __38__WFIPConfigViewController_routerCell__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setFirstResponderAfterCell:v3];
}

void __38__WFIPConfigViewController_routerCell__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([v3 length])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = [WeakRetained modifiedConfig];
  [v5 setIpv4RouterAddressManual:v4];

  [WeakRetained _updateSaveEnabled];
}

void __38__WFIPConfigViewController_routerCell__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([v3 length])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = [WeakRetained modifiedConfig];
  [v5 setIpv6RouterAddressManual:v4];

  [WeakRetained _updateSaveEnabled];
}

- (WFTextFieldCell)clientIDCell
{
  clientIDCell = self->_clientIDCell;
  if (!clientIDCell)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 loadNibNamed:@"WFTextFieldCell" owner:self options:0];
    v6 = [v5 objectAtIndex:0];

    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"kWFLocSettingsClientIDCell" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
    v9 = [(WFTextFieldCell *)v6 label];
    [v9 setText:v8];

    [(WFIPConfigViewController *)self _configCellLeadingInset];
    [(WFTextFieldCell *)v6 setLayoutMargins:0.0, v10, 0.0, 0.0];
    v11 = [(WFTextFieldCell *)v6 textField];
    [v11 setTextAlignment:2];

    v12 = [(WFIPConfigViewController *)self modifiedConfig];
    v13 = [v12 dhcpClientID];
    v14 = [(WFTextFieldCell *)v6 textField];
    [v14 setText:v13];

    objc_initWeak(&location, self);
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __40__WFIPConfigViewController_clientIDCell__block_invoke;
    v25 = &unk_279EC5418;
    objc_copyWeak(&v26, &location);
    [(WFTextFieldCell *)v6 setTextChangeHandler:&v22];
    v15 = [(WFIPConfigViewController *)self appearanceProxy:v22];
    v16 = [v15 cellTextLabelFont];

    if (v16)
    {
      v17 = [(WFIPConfigViewController *)self appearanceProxy];
      v18 = [v17 cellTextLabelFont];
      v19 = [(WFTextFieldCell *)v6 textLabel];
      [v19 setFont:v18];
    }

    v20 = self->_clientIDCell;
    self->_clientIDCell = v6;

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
    clientIDCell = self->_clientIDCell;
  }

  return clientIDCell;
}

void __40__WFIPConfigViewController_clientIDCell__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([v3 length])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = [WeakRetained modifiedConfig];
  [v5 setDhcpClientID:v4];

  [WeakRetained _updateSaveEnabled];
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  if (a4 == 1 && !-[WFIPConfigViewController type](self, "type", a3) && (-[WFIPConfigViewController modifiedConfig](self, "modifiedConfig"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 ipv4Config], v5, v6 == 2))
  {
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"kWFLocSettingsIPV4ConfigureManualSectionHeader" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v59[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [v6 deselectRowAtIndexPath:v7 animated:1];
  if ([v7 section])
  {
    v8 = [v6 cellForRowAtIndexPath:v7];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 becomeFirstResponder];
    }

    goto LABEL_5;
  }

  if ([(WFIPConfigViewController *)self type])
  {
    if ([(WFIPConfigViewController *)self type]!= 1)
    {
      goto LABEL_5;
    }

    if (![v7 row])
    {
      goto LABEL_20;
    }

    if ([v7 row] == 1)
    {
      v10 = 0;
      v11 = 0;
      v12 = 1;
      v13 = 1;
      goto LABEL_21;
    }

    if ([v7 row] == 2)
    {
      v12 = 0;
      v10 = 0;
      v11 = 1;
      v13 = 2;
    }

    else
    {
LABEL_20:
      v12 = 0;
      v11 = 0;
      v13 = 0;
      v10 = 1;
    }

LABEL_21:
    v21 = [(WFIPConfigViewController *)self modifiedConfig];
    v22 = [v21 ipv6Config];

    if (v13 == v22)
    {
      goto LABEL_5;
    }

    v23 = [(WFIPConfigViewController *)self modifiedConfig];
    v24 = [v23 ipv6Config];

    v25 = [(WFIPConfigViewController *)self modifiedConfig];
    [v25 setIpv6Config:v13];

    if (v12)
    {
      v26 = [(WFIPConfigViewController *)self tableView];
      [v26 beginUpdates];

      v27 = [(WFIPConfigViewController *)self tableView];
      v28 = [MEMORY[0x277CCAA78] indexSetWithIndex:1];
      [v27 insertSections:v28 withRowAnimation:0];

      v29 = [(WFIPConfigViewController *)self tableView];
      v30 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:1];
      v59[0] = v30;
      v31 = [MEMORY[0x277CCAA70] indexPathForRow:1 inSection:1];
      v59[1] = v31;
      v32 = [MEMORY[0x277CCAA70] indexPathForRow:2 inSection:1];
      v59[2] = v32;
      [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:3];
      LODWORD(v27) = v10;
      v34 = v33 = v11;
      [v29 insertRowsAtIndexPaths:v34 withRowAnimation:0];

      v11 = v33;
      v10 = v27;
      v35 = 3;

      v36 = [(WFIPConfigViewController *)self tableView];
      [v36 endUpdates];

      v37 = [(WFIPConfigViewController *)self ipAddressCell];
      [v37 becomeFirstResponder];
    }

    else
    {
      v35 = 0;
      if ((v10 | v11) != 1 || v24 != 1)
      {
LABEL_28:
        if (v10)
        {
          v46 = 3;
        }

        else
        {
          v46 = 0;
        }

        v47 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:0];
        v48 = [v6 cellForRowAtIndexPath:v47];
        [v48 setAccessoryType:v46];

        v49 = [MEMORY[0x277CCAA70] indexPathForRow:1 inSection:0];
        v50 = [v6 cellForRowAtIndexPath:v49];
        [v50 setAccessoryType:v35];

        if (v11)
        {
          v51 = 3;
        }

        else
        {
          v51 = 0;
        }

        v52 = [MEMORY[0x277CCAA70] indexPathForRow:2 inSection:0];
        v53 = [v6 cellForRowAtIndexPath:v52];
        [v53 setAccessoryType:v51];

        goto LABEL_5;
      }

      v38 = [(WFIPConfigViewController *)self tableView];
      [v38 beginUpdates];

      v39 = [(WFIPConfigViewController *)self tableView];
      v40 = [MEMORY[0x277CCAA78] indexSetWithIndex:1];
      [v39 deleteSections:v40 withRowAnimation:0];

      v41 = [(WFIPConfigViewController *)self tableView];
      v42 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:1];
      v58[0] = v42;
      v43 = [MEMORY[0x277CCAA70] indexPathForRow:1 inSection:1];
      v58[1] = v43;
      v44 = [MEMORY[0x277CCAA70] indexPathForRow:2 inSection:1];
      v58[2] = v44;
      v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:3];
      [v41 deleteRowsAtIndexPaths:v45 withRowAnimation:0];

      v37 = [(WFIPConfigViewController *)self tableView];
      [v37 endUpdates];
      v35 = 0;
    }

    goto LABEL_28;
  }

  if ([v7 row])
  {
    if ([v7 row] == 1)
    {
      v14 = 2;
    }

    else
    {
      v14 = [v7 row] == 2;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = [(WFIPConfigViewController *)self modifiedConfig];
  v16 = [v15 ipv4Config];

  if (v14 != v16)
  {
    v17 = [(WFIPConfigViewController *)self modifiedConfig];
    v18 = [v17 ipv4Config];

    v19 = [(WFIPConfigViewController *)self modifiedConfig];
    [v19 setIpv4Config:v14];

    v20 = [(WFIPConfigViewController *)self tableView];
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __62__WFIPConfigViewController_tableView_didSelectRowAtIndexPath___block_invoke;
    v54[3] = &unk_279EC5E08;
    v56 = v14;
    v57 = v18;
    v54[4] = self;
    v55 = v6;
    [v20 performBatchUpdates:v54 completion:&__block_literal_global_3];
  }

LABEL_5:
  [(WFIPConfigViewController *)self _updateSaveEnabled];

  v9 = *MEMORY[0x277D85DE8];
}

void __62__WFIPConfigViewController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1)
{
  v57[3] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  switch(v2)
  {
    case 0:
      v13 = *(a1 + 56);
      if (v13 == 2)
      {
        v17 = [*(a1 + 32) tableView];
        v18 = [MEMORY[0x277CCAA70] indexPathForRow:1 inSection:1];
        v53[0] = v18;
        v19 = [MEMORY[0x277CCAA70] indexPathForRow:2 inSection:1];
        v53[1] = v19;
        v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:2];
        [v17 deleteRowsAtIndexPaths:v20 withRowAnimation:0];

        v21 = [*(a1 + 32) tableView];
        v22 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:1];
        v52 = v22;
        v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v52 count:1];
        [v21 reloadRowsAtIndexPaths:v23 withRowAnimation:5];

        v11 = [*(a1 + 32) tableView];
        v12 = [MEMORY[0x277CCAA78] indexSetWithIndex:1];
        [v11 _reloadSectionHeaderFooters:v12 withRowAnimation:0];
      }

      else
      {
        if (v13 != 1)
        {
          break;
        }

        v14 = [*(a1 + 32) tableView];
        v15 = [MEMORY[0x277CCAA78] indexSetWithIndex:1];
        [v14 insertSections:v15 withRowAnimation:0];

        v11 = [*(a1 + 32) tableView];
        v12 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:1];
        v54 = v12;
        v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v54 count:1];
        [v11 insertRowsAtIndexPaths:v16 withRowAnimation:0];
      }

LABEL_15:

      break;
    case 1:
      v11 = [*(a1 + 32) tableView];
      v12 = [MEMORY[0x277CCAA78] indexSetWithIndex:1];
      [v11 deleteSections:v12 withRowAnimation:0];
      goto LABEL_15;
    case 2:
      v3 = *(a1 + 56);
      if (v3)
      {
        if (v3 != 1)
        {
LABEL_14:
          v11 = [*(a1 + 32) ipAddressCell];
          v12 = [v11 textField];
          [v12 performSelector:sel_becomeFirstResponder withObject:0 afterDelay:0.1];
          goto LABEL_15;
        }

        v4 = [*(a1 + 32) tableView];
        v5 = [MEMORY[0x277CCAA78] indexSetWithIndex:1];
        [v4 insertSections:v5 withRowAnimation:0];

        v6 = [*(a1 + 32) tableView];
        v7 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:1];
        v57[0] = v7;
        v8 = [MEMORY[0x277CCAA70] indexPathForRow:1 inSection:1];
        v57[1] = v8;
        v9 = [MEMORY[0x277CCAA70] indexPathForRow:2 inSection:1];
        v57[2] = v9;
        v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:3];
        [v6 insertRowsAtIndexPaths:v10 withRowAnimation:0];
      }

      else
      {
        v24 = [*(a1 + 32) tableView];
        v25 = [MEMORY[0x277CCAA70] indexPathForRow:1 inSection:1];
        v56[0] = v25;
        v26 = [MEMORY[0x277CCAA70] indexPathForRow:2 inSection:1];
        v56[1] = v26;
        v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:2];
        [v24 insertRowsAtIndexPaths:v27 withRowAnimation:0];

        v6 = [*(a1 + 32) tableView];
        v7 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:1];
        v55 = v7;
        v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v55 count:1];
        [v6 reloadRowsAtIndexPaths:v8 withRowAnimation:5];
      }

      goto LABEL_14;
  }

  v28 = WFLogForCategory(0);
  v29 = OSLogForWFLogLevel(4uLL);
  if (WFCurrentLogLevel() >= 4 && v28 && os_log_type_enabled(v28, v29))
  {
    v31 = *(a1 + 48);
    v30 = *(a1 + 56);
    v46 = 136315650;
    v47 = "[WFIPConfigViewController tableView:didSelectRowAtIndexPath:]_block_invoke";
    v48 = 2048;
    v49 = v30;
    v50 = 2048;
    v51 = v31;
    _os_log_impl(&dword_273FB9000, v28, v29, "%s: IP Config -- previous config: %ld new config: %ld.", &v46, 0x20u);
  }

  v32 = *(a1 + 40);
  if (*(a1 + 48))
  {
    v33 = 0;
  }

  else
  {
    v33 = 3;
  }

  v34 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:0];
  v35 = [v32 cellForRowAtIndexPath:v34];
  [v35 setAccessoryType:v33];

  v36 = *(a1 + 40);
  if (*(a1 + 48) == 2)
  {
    v37 = 3;
  }

  else
  {
    v37 = 0;
  }

  v38 = [MEMORY[0x277CCAA70] indexPathForRow:1 inSection:0];
  v39 = [v36 cellForRowAtIndexPath:v38];
  [v39 setAccessoryType:v37];

  v41 = a1 + 40;
  v40 = *(a1 + 40);
  if (*(v41 + 8) == 1)
  {
    v42 = 3;
  }

  else
  {
    v42 = 0;
  }

  v43 = [MEMORY[0x277CCAA70] indexPathForRow:2 inSection:0];
  v44 = [v40 cellForRowAtIndexPath:v43];
  [v44 setAccessoryType:v42];

  v45 = *MEMORY[0x277D85DE8];
}

void __62__WFIPConfigViewController_tableView_didSelectRowAtIndexPath___block_invoke_80()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = WFLogForCategory(0);
  v1 = OSLogForWFLogLevel(4uLL);
  if (WFCurrentLogLevel() >= 4 && v0 && os_log_type_enabled(v0, v1))
  {
    v3 = 136315138;
    v4 = "[WFIPConfigViewController tableView:didSelectRowAtIndexPath:]_block_invoke";
    _os_log_impl(&dword_273FB9000, v0, v1, "%s: Finished inserting and deleting cells for IP Config.", &v3, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

- (double)_configCellLeadingInset
{
  v2 = [MEMORY[0x277D759A0] mainScreen];
  [v2 bounds];
  v4 = v3;

  v5 = [MEMORY[0x277D759A0] mainScreen];
  [v5 bounds];
  v7 = v6;

  if (v4 >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v4;
  }

  v9 = v8 >= 414.0 && v8 <= 440.0;
  result = 20.0;
  if (!v9)
  {
    return 16.0;
  }

  return result;
}

@end