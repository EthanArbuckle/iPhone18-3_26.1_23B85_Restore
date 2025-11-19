@interface WFProxyConfigViewController
- (WFProxyConfigViewController)initWithConfig:(id)a3;
- (WFProxyConfigViewController)initWithConfig:(id)a3 appearanceProxy:(id)a4;
- (WFTextFieldCell)passwordCell;
- (WFTextFieldCell)portCell;
- (WFTextFieldCell)serverCell;
- (WFTextFieldCell)urlCell;
- (WFTextFieldCell)userCell;
- (double)_configCellLeadingInset;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_changeProxyAuthentication:(id)a3;
- (void)_setFirstResponderAfterCell:(id)a3;
- (void)_updateSaveEnabled;
- (void)save:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation WFProxyConfigViewController

- (WFProxyConfigViewController)initWithConfig:(id)a3
{
  v4 = a3;
  v5 = +[WFAppearanceProxy defaultAppearanceProxy];
  v6 = [(WFProxyConfigViewController *)self initWithConfig:v4 appearanceProxy:v5];

  return v6;
}

- (void)viewDidLoad
{
  v19.receiver = self;
  v19.super_class = WFProxyConfigViewController;
  [(WFProxyConfigViewController *)&v19 viewDidLoad];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"kWFLocSettingsProxyConfigureTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  [(WFProxyConfigViewController *)self setTitle:v4];

  v5 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:3 target:self action:sel_save_];
  v6 = [(WFProxyConfigViewController *)self navigationItem];
  [v6 setRightBarButtonItem:v5];

  v7 = [(WFProxyConfigViewController *)self navigationItem];
  v8 = [v7 rightBarButtonItem];
  [v8 setEnabled:0];

  v9 = MEMORY[0x277D757B0];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v9 nibWithNibName:@"WFTextFieldCell" bundle:v10];

  v12 = [(WFProxyConfigViewController *)self tableView];
  [v12 registerNib:v11 forCellReuseIdentifier:@"kWFTextFieldCellIdentifier"];

  v13 = *MEMORY[0x277D76F30];
  v14 = [(WFProxyConfigViewController *)self tableView];
  [v14 setRowHeight:v13];

  v15 = [(WFProxyConfigViewController *)self tableView];
  [v15 setEstimatedRowHeight:44.0];

  v16 = [(WFProxyConfigViewController *)self tableView];
  [v16 setEstimatedSectionHeaderHeight:0.0];

  v17 = [(WFProxyConfigViewController *)self tableView];
  [v17 setEstimatedSectionFooterHeight:0.0];

  if ([MEMORY[0x277D75418] currentIsIPad])
  {
    v18 = [(WFProxyConfigViewController *)self tableView];
    [v18 _setSectionContentInset:{0.0, 20.0, 0.0, 20.0}];
  }
}

- (void)_updateSaveEnabled
{
  v3 = [(WFProxyConfigViewController *)self modifiedConfig];
  v4 = [(WFProxyConfigViewController *)self originalConfig];
  v5 = [v3 isEqual:v4];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v7 = [(WFProxyConfigViewController *)self modifiedConfig];
    v6 = [v7 validProxyConfiguration];
  }

  v9 = [(WFProxyConfigViewController *)self navigationItem];
  v8 = [v9 rightBarButtonItem];
  [v8 setEnabled:v6];
}

- (void)save:(id)a3
{
  v4 = [(WFProxyConfigViewController *)self saveHandler];

  if (v4)
  {
    v5 = [(WFProxyConfigViewController *)self saveHandler];
    v6 = [(WFProxyConfigViewController *)self modifiedConfig];
    (v5)[2](v5, v6);
  }

  [(UIViewController *)self wf_popViewControllerAnimated:1];
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v4 = [(WFProxyConfigViewController *)self modifiedConfig];
  if ([v4 httpProxyConfig] == 1)
  {

    return 2;
  }

  v5 = [(WFProxyConfigViewController *)self modifiedConfig];
  v6 = [v5 httpProxyConfig];

  if (v6 == 2)
  {
    return 2;
  }

  return 1;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  if (a4)
  {
    if (a4 == 1)
    {
      v7 = [(WFProxyConfigViewController *)self modifiedConfig];
      v8 = [v7 httpProxyConfig];

      v9 = [(WFProxyConfigViewController *)self modifiedConfig];
      v10 = v9;
      if (v8 == 1)
      {
        v11 = [v9 httpProxyAuthenticationRequired];

        if (v11)
        {
          v12 = 5;
        }

        else
        {
          v12 = 3;
        }
      }

      else
      {
        v12 = [v9 httpProxyConfig] == 2;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 3;
  }

  return v12;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  if (![v5 section])
  {
    v9 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:0];
    if ([v5 row])
    {
      if ([v5 row] == 1)
      {
        v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v11 = [v10 localizedStringForKey:@"kWFLocSettingsProxyConfigManualTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
        v12 = [v9 textLabel];
        [v12 setText:v11];

        v13 = [(WFProxyConfigViewController *)self modifiedConfig];
        v14 = [v13 httpProxyConfig] == 1;
      }

      else
      {
        if ([v5 row] != 2)
        {
          goto LABEL_30;
        }

        v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v21 = [v20 localizedStringForKey:@"kWFLocSettingsProxyConfigAutomaticTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
        v22 = [v9 textLabel];
        [v22 setText:v21];

        v13 = [(WFProxyConfigViewController *)self modifiedConfig];
        v14 = [v13 httpProxyConfig] == 2;
      }
    }

    else
    {
      v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v18 = [v17 localizedStringForKey:@"kWFLocSettingsProxyConfigOffTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      v19 = [v9 textLabel];
      [v19 setText:v18];

      v13 = [(WFProxyConfigViewController *)self modifiedConfig];
      v14 = [v13 httpProxyConfig] == 0;
    }

    if (v14)
    {
      v23 = 3;
    }

    else
    {
      v23 = 0;
    }

    [v9 setAccessoryType:v23];
    goto LABEL_20;
  }

  if ([v5 section] != 1)
  {
    goto LABEL_29;
  }

  v6 = [(WFProxyConfigViewController *)self modifiedConfig];
  v7 = [v6 httpProxyConfig];

  if (v7 != 2)
  {
    v15 = [(WFProxyConfigViewController *)self modifiedConfig];
    v16 = [v15 httpProxyConfig];

    if (v16 != 1)
    {
      goto LABEL_29;
    }

    if (![v5 row])
    {
      v8 = [(WFProxyConfigViewController *)self serverCell];
      goto LABEL_22;
    }

    if ([v5 row] == 1)
    {
      v8 = [(WFProxyConfigViewController *)self portCell];
      goto LABEL_22;
    }

    if ([v5 row] != 2)
    {
      if ([v5 row] == 3)
      {
        v8 = [(WFProxyConfigViewController *)self userCell];
        goto LABEL_22;
      }

      if ([v5 row] == 4)
      {
        v8 = [(WFProxyConfigViewController *)self passwordCell];
        goto LABEL_22;
      }

      goto LABEL_29;
    }

    v9 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:0];
    v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v25 = [v24 localizedStringForKey:@"kWFLocSettingsProxyAuthenticationCell" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
    v26 = [v9 textLabel];
    [v26 setText:v25];

    v27 = objc_alloc(MEMORY[0x277D75AE8]);
    v13 = [v27 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v28 = [(WFProxyConfigViewController *)self modifiedConfig];
    [v13 setOn:{objc_msgSend(v28, "httpProxyAuthenticationRequired")}];

    [v13 addTarget:self action:sel__changeProxyAuthentication_ forControlEvents:4096];
    [v9 setAccessoryView:v13];
    [v9 setSelectionStyle:0];
LABEL_20:

    goto LABEL_30;
  }

  if (![v5 row])
  {
    v8 = [(WFProxyConfigViewController *)self urlCell];
LABEL_22:
    v9 = v8;
    goto LABEL_30;
  }

LABEL_29:
  v9 = 0;
LABEL_30:
  v29 = [(WFProxyConfigViewController *)self appearanceProxy];
  v30 = [v29 cellTextLabelFont];

  if (v30)
  {
    v31 = [(WFProxyConfigViewController *)self appearanceProxy];
    v32 = [v31 cellTextLabelFont];
    v33 = [v9 textLabel];
    [v33 setFont:v32];
  }

  return v9;
}

- (void)_setFirstResponderAfterCell:(id)a3
{
  v11 = a3;
  v4 = [(WFProxyConfigViewController *)self serverCell];

  v5 = [(WFProxyConfigViewController *)self portCell];
  v6 = v11;
  if (v4 != v11)
  {

    if (v5 == v11)
    {
      v8 = [(WFProxyConfigViewController *)self modifiedConfig];
      v9 = [v8 httpProxyAuthenticationRequired];

      if (v9)
      {
        v10 = [(WFProxyConfigViewController *)self userCell];
LABEL_9:
        v5 = v10;
        v6 = v11;
        goto LABEL_10;
      }
    }

    else
    {
      v7 = [(WFProxyConfigViewController *)self userCell];

      v5 = [(WFProxyConfigViewController *)self passwordCell];
      v6 = v11;
      if (v7 == v11)
      {
        goto LABEL_10;
      }

      v6 = v11;
      if (v5 != v11)
      {
        goto LABEL_12;
      }
    }

    v10 = [(WFProxyConfigViewController *)self serverCell];
    goto LABEL_9;
  }

LABEL_10:
  if (v5)
  {
    [v5 becomeFirstResponder];

    v6 = v11;
  }

LABEL_12:
}

- (WFTextFieldCell)serverCell
{
  serverCell = self->_serverCell;
  if (!serverCell)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 loadNibNamed:@"WFTextFieldCell" owner:self options:0];
    v6 = [v5 objectAtIndex:0];

    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"kWFLocSettingsProxyServerCell" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
    v9 = [(WFTextFieldCell *)v6 label];
    [v9 setText:v8];

    [(WFProxyConfigViewController *)self _configCellLeadingInset];
    [(WFTextFieldCell *)v6 setLayoutMargins:0.0, v10, 0.0, 0.0];
    v11 = [(WFTextFieldCell *)v6 textField];
    [v11 setTextAlignment:2];

    v12 = [(WFTextFieldCell *)v6 textField];
    [v12 setKeyboardType:3];

    v13 = [(WFProxyConfigViewController *)self modifiedConfig];
    v14 = [v13 httpProxyServerAddress];
    v15 = [(WFTextFieldCell *)v6 textField];
    [v15 setText:v14];

    objc_initWeak(&location, self);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __41__WFProxyConfigViewController_serverCell__block_invoke;
    v25[3] = &unk_279EC5418;
    objc_copyWeak(&v26, &location);
    [(WFTextFieldCell *)v6 setTextChangeHandler:v25];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __41__WFProxyConfigViewController_serverCell__block_invoke_2;
    v23[3] = &unk_279EC5D70;
    objc_copyWeak(&v24, &location);
    [(WFTextFieldCell *)v6 setReturnKeyHandler:v23];
    v16 = [(WFProxyConfigViewController *)self appearanceProxy];
    v17 = [v16 cellTextLabelFont];

    if (v17)
    {
      v18 = [(WFProxyConfigViewController *)self appearanceProxy];
      v19 = [v18 cellTextLabelFont];
      v20 = [(WFTextFieldCell *)v6 textLabel];
      [v20 setFont:v19];
    }

    v21 = self->_serverCell;
    self->_serverCell = v6;

    objc_destroyWeak(&v24);
    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
    serverCell = self->_serverCell;
  }

  return serverCell;
}

void __41__WFProxyConfigViewController_serverCell__block_invoke(uint64_t a1, void *a2)
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
  [v5 setHttpProxyServerAddress:v4];

  [WeakRetained _updateSaveEnabled];
}

void __41__WFProxyConfigViewController_serverCell__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setFirstResponderAfterCell:v3];
}

- (WFTextFieldCell)portCell
{
  portCell = self->_portCell;
  if (!portCell)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 loadNibNamed:@"WFTextFieldCell" owner:self options:0];
    v6 = [v5 objectAtIndex:0];

    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"kWFLocSettingsProxyPortCell" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
    v9 = [(WFTextFieldCell *)v6 label];
    [v9 setText:v8];

    [(WFProxyConfigViewController *)self _configCellLeadingInset];
    [(WFTextFieldCell *)v6 setLayoutMargins:0.0, v10, 0.0, 0.0];
    v11 = [(WFTextFieldCell *)v6 textField];
    [v11 setTextAlignment:2];

    v12 = [(WFProxyConfigViewController *)self modifiedConfig];
    v13 = [v12 httpProxyServerPort];
    v14 = [(WFTextFieldCell *)v6 textField];
    [v14 setText:v13];

    v15 = [(WFTextFieldCell *)v6 textField];
    [v15 setKeyboardType:4];

    objc_initWeak(&location, self);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __39__WFProxyConfigViewController_portCell__block_invoke;
    v25[3] = &unk_279EC5418;
    objc_copyWeak(&v26, &location);
    [(WFTextFieldCell *)v6 setTextChangeHandler:v25];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __39__WFProxyConfigViewController_portCell__block_invoke_2;
    v23[3] = &unk_279EC5D70;
    objc_copyWeak(&v24, &location);
    [(WFTextFieldCell *)v6 setReturnKeyHandler:v23];
    v16 = [(WFProxyConfigViewController *)self appearanceProxy];
    v17 = [v16 cellTextLabelFont];

    if (v17)
    {
      v18 = [(WFProxyConfigViewController *)self appearanceProxy];
      v19 = [v18 cellTextLabelFont];
      v20 = [(WFTextFieldCell *)v6 textLabel];
      [v20 setFont:v19];
    }

    v21 = self->_portCell;
    self->_portCell = v6;

    objc_destroyWeak(&v24);
    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
    portCell = self->_portCell;
  }

  return portCell;
}

void __39__WFProxyConfigViewController_portCell__block_invoke(uint64_t a1, void *a2)
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
  [v5 setHttpProxyServerPort:v4];

  [WeakRetained _updateSaveEnabled];
}

void __39__WFProxyConfigViewController_portCell__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setFirstResponderAfterCell:v3];
}

- (WFTextFieldCell)userCell
{
  userCell = self->_userCell;
  if (!userCell)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 loadNibNamed:@"WFTextFieldCell" owner:self options:0];
    v6 = [v5 objectAtIndex:0];

    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"kWFLocSettingsProxyUsernameCell" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
    v9 = [(WFTextFieldCell *)v6 label];
    [v9 setText:v8];

    [(WFProxyConfigViewController *)self _configCellLeadingInset];
    [(WFTextFieldCell *)v6 setLayoutMargins:0.0, v10, 0.0, 0.0];
    v11 = [(WFTextFieldCell *)v6 textField];
    [v11 setTextAlignment:2];

    v12 = [(WFTextFieldCell *)v6 textField];
    [v12 setTextContentType:*MEMORY[0x277D77090]];

    v13 = [(WFProxyConfigViewController *)self modifiedConfig];
    v14 = [v13 httpProxyUsername];
    v15 = [(WFTextFieldCell *)v6 textField];
    [v15 setText:v14];

    objc_initWeak(&location, self);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __39__WFProxyConfigViewController_userCell__block_invoke;
    v25[3] = &unk_279EC5418;
    objc_copyWeak(&v26, &location);
    [(WFTextFieldCell *)v6 setTextChangeHandler:v25];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __39__WFProxyConfigViewController_userCell__block_invoke_2;
    v23[3] = &unk_279EC5D70;
    objc_copyWeak(&v24, &location);
    [(WFTextFieldCell *)v6 setReturnKeyHandler:v23];
    v16 = [(WFProxyConfigViewController *)self appearanceProxy];
    v17 = [v16 cellTextLabelFont];

    if (v17)
    {
      v18 = [(WFProxyConfigViewController *)self appearanceProxy];
      v19 = [v18 cellTextLabelFont];
      v20 = [(WFTextFieldCell *)v6 textLabel];
      [v20 setFont:v19];
    }

    v21 = self->_userCell;
    self->_userCell = v6;

    objc_destroyWeak(&v24);
    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
    userCell = self->_userCell;
  }

  return userCell;
}

void __39__WFProxyConfigViewController_userCell__block_invoke(uint64_t a1, void *a2)
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
  [v5 setHttpProxyUsername:v4];

  [WeakRetained _updateSaveEnabled];
}

void __39__WFProxyConfigViewController_userCell__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setFirstResponderAfterCell:v3];
}

- (WFTextFieldCell)passwordCell
{
  passwordCell = self->_passwordCell;
  if (!passwordCell)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 loadNibNamed:@"WFTextFieldCell" owner:self options:0];
    v6 = [v5 objectAtIndex:0];

    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"kWFLocSettingsProxyPasswordCell" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
    v9 = [(WFTextFieldCell *)v6 label];
    [v9 setText:v8];

    [(WFProxyConfigViewController *)self _configCellLeadingInset];
    [(WFTextFieldCell *)v6 setLayoutMargins:0.0, v10, 0.0, 0.0];
    v11 = [(WFTextFieldCell *)v6 textField];
    [v11 setTextAlignment:2];

    v12 = [(WFTextFieldCell *)v6 textField];
    [v12 setTextContentType:*MEMORY[0x277D77030]];

    v13 = [(WFProxyConfigViewController *)self modifiedConfig];
    v14 = [v13 httpProxyPassword];
    v15 = [(WFTextFieldCell *)v6 textField];
    [v15 setText:v14];

    v16 = [(WFTextFieldCell *)v6 textField];
    [v16 setSecureTextEntry:1];

    objc_initWeak(&location, self);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __43__WFProxyConfigViewController_passwordCell__block_invoke;
    v26[3] = &unk_279EC5418;
    objc_copyWeak(&v27, &location);
    [(WFTextFieldCell *)v6 setTextChangeHandler:v26];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __43__WFProxyConfigViewController_passwordCell__block_invoke_2;
    v24[3] = &unk_279EC5D70;
    objc_copyWeak(&v25, &location);
    [(WFTextFieldCell *)v6 setReturnKeyHandler:v24];
    v17 = [(WFProxyConfigViewController *)self appearanceProxy];
    v18 = [v17 cellTextLabelFont];

    if (v18)
    {
      v19 = [(WFProxyConfigViewController *)self appearanceProxy];
      v20 = [v19 cellTextLabelFont];
      v21 = [(WFTextFieldCell *)v6 textLabel];
      [v21 setFont:v20];
    }

    v22 = self->_passwordCell;
    self->_passwordCell = v6;

    objc_destroyWeak(&v25);
    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
    passwordCell = self->_passwordCell;
  }

  return passwordCell;
}

void __43__WFProxyConfigViewController_passwordCell__block_invoke(uint64_t a1, void *a2)
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
  [v5 setHttpProxyPassword:v4];

  [WeakRetained _updateSaveEnabled];
}

void __43__WFProxyConfigViewController_passwordCell__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setFirstResponderAfterCell:v3];
}

- (WFTextFieldCell)urlCell
{
  urlCell = self->_urlCell;
  if (!urlCell)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 loadNibNamed:@"WFTextFieldCell" owner:self options:0];
    v6 = [v5 objectAtIndex:0];

    [(WFProxyConfigViewController *)self _configCellLeadingInset];
    [(WFTextFieldCell *)v6 setLayoutMargins:0.0, v7, 0.0, 0.0];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"kWFLocSettingsProxyURLCell" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
    v10 = [(WFTextFieldCell *)v6 label];
    [v10 setText:v9];

    v11 = [(WFTextFieldCell *)v6 textField];
    [v11 setKeyboardType:3];

    v12 = [(WFTextFieldCell *)v6 textField];
    [v12 setTextAlignment:2];

    v13 = [(WFProxyConfigViewController *)self modifiedConfig];
    v14 = [v13 httpProxyConfigPAC];
    v15 = [(WFTextFieldCell *)v6 textField];
    [v15 setText:v14];

    objc_initWeak(&location, self);
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __38__WFProxyConfigViewController_urlCell__block_invoke;
    v26 = &unk_279EC5418;
    objc_copyWeak(&v27, &location);
    [(WFTextFieldCell *)v6 setTextChangeHandler:&v23];
    v16 = [(WFProxyConfigViewController *)self appearanceProxy:v23];
    v17 = [v16 cellTextLabelFont];

    if (v17)
    {
      v18 = [(WFProxyConfigViewController *)self appearanceProxy];
      v19 = [v18 cellTextLabelFont];
      v20 = [(WFTextFieldCell *)v6 textLabel];
      [v20 setFont:v19];
    }

    v21 = self->_urlCell;
    self->_urlCell = v6;

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
    urlCell = self->_urlCell;
  }

  return urlCell;
}

void __38__WFProxyConfigViewController_urlCell__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained modifiedConfig];
  [v4 setHttpProxyConfigPAC:v3];

  [WeakRetained _updateSaveEnabled];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v63[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [v6 deselectRowAtIndexPath:v7 animated:1];
  if (![v7 section])
  {
    v9 = [v7 row];

    v10 = [(WFProxyConfigViewController *)self modifiedConfig];
    v11 = [v10 httpProxyConfig];

    if (v11 == v9)
    {
      goto LABEL_31;
    }

    v12 = [(WFProxyConfigViewController *)self modifiedConfig];
    v13 = [v12 httpProxyConfig];

    v14 = [(WFProxyConfigViewController *)self modifiedConfig];
    v15 = [v14 httpProxyAuthenticationRequired];

    v16 = [(WFProxyConfigViewController *)self modifiedConfig];
    [v16 setHttpProxyConfig:v9];

    if (v15 && v9 != 1)
    {
      v17 = [(WFProxyConfigViewController *)self modifiedConfig];
      [v17 setHttpProxyAuthenticationRequired:0];
    }

    if (v9 == 2)
    {
      v36 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:0];
      v37 = [v6 cellForRowAtIndexPath:v36];
      [v37 setAccessoryType:0];

      v38 = [MEMORY[0x277CCAA70] indexPathForRow:1 inSection:0];
      v39 = [v6 cellForRowAtIndexPath:v38];
      [v39 setAccessoryType:0];

      v40 = [MEMORY[0x277CCAA70] indexPathForRow:2 inSection:0];
      v41 = [v6 cellForRowAtIndexPath:v40];
      [v41 setAccessoryType:3];

      if (v13)
      {
        if (v13 == 1)
        {
          [v6 beginUpdates];
          v42 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:1];
          v58 = v42;
          v43 = [MEMORY[0x277CBEA60] arrayWithObjects:&v58 count:1];
          [v6 reloadRowsAtIndexPaths:v43 withRowAnimation:0];

          v44 = [MEMORY[0x277CCAA70] indexPathForRow:1 inSection:1];
          v57[0] = v44;
          v45 = [MEMORY[0x277CCAA70] indexPathForRow:2 inSection:1];
          v57[1] = v45;
          v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:2];
          [v6 deleteRowsAtIndexPaths:v46 withRowAnimation:0];

          if (v15)
          {
            v47 = [MEMORY[0x277CCAA70] indexPathForRow:3 inSection:1];
            v56[0] = v47;
            v48 = [MEMORY[0x277CCAA70] indexPathForRow:4 inSection:1];
            v56[1] = v48;
            v49 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:2];
            [v6 deleteRowsAtIndexPaths:v49 withRowAnimation:0];
          }

          [v6 endUpdates];
          v50 = [MEMORY[0x277CCAA78] indexSetWithIndex:1];
          [v6 reloadSections:v50 withRowAnimation:5];
        }

        goto LABEL_30;
      }

      [v6 beginUpdates];
      v53 = [MEMORY[0x277CCAA78] indexSetWithIndex:1];
      [v6 insertSections:v53 withRowAnimation:0];

      v25 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:1];
      v55 = v25;
      v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v55 count:1];
      [v6 insertRowsAtIndexPaths:v26 withRowAnimation:0];
      goto LABEL_28;
    }

    if (v9 == 1)
    {
      v27 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:0];
      v28 = [v6 cellForRowAtIndexPath:v27];
      [v28 setAccessoryType:0];

      v29 = [MEMORY[0x277CCAA70] indexPathForRow:1 inSection:0];
      v30 = [v6 cellForRowAtIndexPath:v29];
      [v30 setAccessoryType:3];

      v31 = [MEMORY[0x277CCAA70] indexPathForRow:2 inSection:0];
      v32 = [v6 cellForRowAtIndexPath:v31];
      [v32 setAccessoryType:0];

      [v6 beginUpdates];
      if (v13)
      {
        if (v13 != 2)
        {
          goto LABEL_29;
        }

        v33 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:1];
        v61 = v33;
        v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v61 count:1];
        [v6 reloadRowsAtIndexPaths:v34 withRowAnimation:0];

        v25 = [MEMORY[0x277CCAA70] indexPathForRow:1 inSection:1];
        v60[0] = v25;
        v26 = [MEMORY[0x277CCAA70] indexPathForRow:2 inSection:1];
        v60[1] = v26;
        v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:2];
        [v6 insertRowsAtIndexPaths:v35 withRowAnimation:0];
LABEL_27:

        goto LABEL_28;
      }

      v51 = [MEMORY[0x277CCAA78] indexSetWithIndex:1];
      [v6 insertSections:v51 withRowAnimation:0];

      v25 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:1];
      v59[0] = v25;
      v26 = [MEMORY[0x277CCAA70] indexPathForRow:1 inSection:1];
      v59[1] = v26;
      v35 = [MEMORY[0x277CCAA70] indexPathForRow:2 inSection:1];
      v59[2] = v35;
      v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:3];
      [v6 insertRowsAtIndexPaths:v52 withRowAnimation:0];
    }

    else
    {
      if (v9)
      {
LABEL_30:
        [(WFProxyConfigViewController *)self _updateSaveEnabled];
        goto LABEL_31;
      }

      v18 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:0];
      v19 = [v6 cellForRowAtIndexPath:v18];
      [v19 setAccessoryType:3];

      v20 = [MEMORY[0x277CCAA70] indexPathForRow:1 inSection:0];
      v21 = [v6 cellForRowAtIndexPath:v20];
      [v21 setAccessoryType:0];

      v22 = [MEMORY[0x277CCAA70] indexPathForRow:2 inSection:0];
      v23 = [v6 cellForRowAtIndexPath:v22];
      [v23 setAccessoryType:0];

      [v6 beginUpdates];
      v24 = [MEMORY[0x277CCAA78] indexSetWithIndex:1];
      [v6 deleteSections:v24 withRowAnimation:0];

      if (v13 != 1)
      {
        if (v13 == 2)
        {
          v25 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:1];
          v63[0] = v25;
          v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:1];
          [v6 deleteRowsAtIndexPaths:v26 withRowAnimation:0];
LABEL_28:
        }

LABEL_29:
        [v6 endUpdates];
        goto LABEL_30;
      }

      v25 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:1];
      v62[0] = v25;
      v26 = [MEMORY[0x277CCAA70] indexPathForRow:1 inSection:1];
      v62[1] = v26;
      v35 = [MEMORY[0x277CCAA70] indexPathForRow:2 inSection:1];
      v62[2] = v35;
      v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:3];
      [v6 deleteRowsAtIndexPaths:v52 withRowAnimation:0];
    }

    goto LABEL_27;
  }

  v8 = [v6 cellForRowAtIndexPath:v7];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v8 becomeFirstResponder];
  }

LABEL_31:
  v54 = *MEMORY[0x277D85DE8];
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  if (a4 == 1 && (-[WFProxyConfigViewController modifiedConfig](self, "modifiedConfig", a3), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 httpProxyAuthenticationRequired], v4, v5))
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"kWFLocProxyAuthenticationWarningFooter" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_changeProxyAuthentication:(id)a3
{
  v15[2] = *MEMORY[0x277D85DE8];
  v4 = [a3 isOn];
  v5 = [(WFProxyConfigViewController *)self modifiedConfig];
  v6 = v5;
  if (v4)
  {
    [v5 setHttpProxyAuthenticationRequired:1];

    v7 = [(WFProxyConfigViewController *)self tableView];
    v8 = [MEMORY[0x277CCAA70] indexPathForRow:3 inSection:1];
    v15[0] = v8;
    v9 = [MEMORY[0x277CCAA70] indexPathForRow:4 inSection:1];
    v15[1] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
    [v7 insertRowsAtIndexPaths:v10 withRowAnimation:0];
  }

  else
  {
    [v5 setHttpProxyAuthenticationRequired:0];

    v7 = [(WFProxyConfigViewController *)self tableView];
    v8 = [MEMORY[0x277CCAA70] indexPathForRow:3 inSection:1];
    v14[0] = v8;
    v9 = [MEMORY[0x277CCAA70] indexPathForRow:4 inSection:1];
    v14[1] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
    [v7 deleteRowsAtIndexPaths:v10 withRowAnimation:0];
  }

  [(WFProxyConfigViewController *)self _updateSaveEnabled];
  v11 = [(WFProxyConfigViewController *)self tableView];
  v12 = [MEMORY[0x277CCAA78] indexSetWithIndex:1];
  [v11 reloadSections:v12 withRowAnimation:5];

  v13 = *MEMORY[0x277D85DE8];
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

- (WFProxyConfigViewController)initWithConfig:(id)a3 appearanceProxy:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = WFProxyConfigViewController;
  v9 = -[WFProxyConfigViewController initWithStyle:](&v16, sel_initWithStyle_, [v8 tableViewStyle]);
  v10 = v9;
  if (v7)
  {
    if (v9)
    {
      objc_storeStrong(&v9->_originalConfig, a3);
      v11 = [v7 copy];
      modifiedConfig = v10->_modifiedConfig;
      v10->_modifiedConfig = v11;

      v13 = v8;
      appearanceProxy = v10->_appearanceProxy;
      v10->_appearanceProxy = v13;
    }

    else
    {
      appearanceProxy = 0;
    }
  }

  else
  {
    appearanceProxy = v9;
    v10 = 0;
  }

  return v10;
}

@end