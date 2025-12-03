@interface WFProxyConfigViewController
- (WFProxyConfigViewController)initWithConfig:(id)config;
- (WFProxyConfigViewController)initWithConfig:(id)config appearanceProxy:(id)proxy;
- (WFTextFieldCell)passwordCell;
- (WFTextFieldCell)portCell;
- (WFTextFieldCell)serverCell;
- (WFTextFieldCell)urlCell;
- (WFTextFieldCell)userCell;
- (double)_configCellLeadingInset;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_changeProxyAuthentication:(id)authentication;
- (void)_setFirstResponderAfterCell:(id)cell;
- (void)_updateSaveEnabled;
- (void)save:(id)save;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation WFProxyConfigViewController

- (WFProxyConfigViewController)initWithConfig:(id)config
{
  configCopy = config;
  v5 = +[WFAppearanceProxy defaultAppearanceProxy];
  v6 = [(WFProxyConfigViewController *)self initWithConfig:configCopy appearanceProxy:v5];

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
  navigationItem = [(WFProxyConfigViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v5];

  navigationItem2 = [(WFProxyConfigViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem2 rightBarButtonItem];
  [rightBarButtonItem setEnabled:0];

  v9 = MEMORY[0x277D757B0];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v9 nibWithNibName:@"WFTextFieldCell" bundle:v10];

  tableView = [(WFProxyConfigViewController *)self tableView];
  [tableView registerNib:v11 forCellReuseIdentifier:@"kWFTextFieldCellIdentifier"];

  v13 = *MEMORY[0x277D76F30];
  tableView2 = [(WFProxyConfigViewController *)self tableView];
  [tableView2 setRowHeight:v13];

  tableView3 = [(WFProxyConfigViewController *)self tableView];
  [tableView3 setEstimatedRowHeight:44.0];

  tableView4 = [(WFProxyConfigViewController *)self tableView];
  [tableView4 setEstimatedSectionHeaderHeight:0.0];

  tableView5 = [(WFProxyConfigViewController *)self tableView];
  [tableView5 setEstimatedSectionFooterHeight:0.0];

  if ([MEMORY[0x277D75418] currentIsIPad])
  {
    tableView6 = [(WFProxyConfigViewController *)self tableView];
    [tableView6 _setSectionContentInset:{0.0, 20.0, 0.0, 20.0}];
  }
}

- (void)_updateSaveEnabled
{
  modifiedConfig = [(WFProxyConfigViewController *)self modifiedConfig];
  originalConfig = [(WFProxyConfigViewController *)self originalConfig];
  v5 = [modifiedConfig isEqual:originalConfig];

  if (v5)
  {
    validProxyConfiguration = 0;
  }

  else
  {
    modifiedConfig2 = [(WFProxyConfigViewController *)self modifiedConfig];
    validProxyConfiguration = [modifiedConfig2 validProxyConfiguration];
  }

  navigationItem = [(WFProxyConfigViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:validProxyConfiguration];
}

- (void)save:(id)save
{
  saveHandler = [(WFProxyConfigViewController *)self saveHandler];

  if (saveHandler)
  {
    saveHandler2 = [(WFProxyConfigViewController *)self saveHandler];
    modifiedConfig = [(WFProxyConfigViewController *)self modifiedConfig];
    (saveHandler2)[2](saveHandler2, modifiedConfig);
  }

  [(UIViewController *)self wf_popViewControllerAnimated:1];
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  modifiedConfig = [(WFProxyConfigViewController *)self modifiedConfig];
  if ([modifiedConfig httpProxyConfig] == 1)
  {

    return 2;
  }

  modifiedConfig2 = [(WFProxyConfigViewController *)self modifiedConfig];
  httpProxyConfig = [modifiedConfig2 httpProxyConfig];

  if (httpProxyConfig == 2)
  {
    return 2;
  }

  return 1;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  if (section)
  {
    if (section == 1)
    {
      modifiedConfig = [(WFProxyConfigViewController *)self modifiedConfig];
      httpProxyConfig = [modifiedConfig httpProxyConfig];

      modifiedConfig2 = [(WFProxyConfigViewController *)self modifiedConfig];
      v10 = modifiedConfig2;
      if (httpProxyConfig == 1)
      {
        httpProxyAuthenticationRequired = [modifiedConfig2 httpProxyAuthenticationRequired];

        if (httpProxyAuthenticationRequired)
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
        v12 = [modifiedConfig2 httpProxyConfig] == 2;
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  if (![pathCopy section])
  {
    v9 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:0];
    if ([pathCopy row])
    {
      if ([pathCopy row] == 1)
      {
        v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v11 = [v10 localizedStringForKey:@"kWFLocSettingsProxyConfigManualTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
        textLabel = [v9 textLabel];
        [textLabel setText:v11];

        modifiedConfig = [(WFProxyConfigViewController *)self modifiedConfig];
        v14 = [modifiedConfig httpProxyConfig] == 1;
      }

      else
      {
        if ([pathCopy row] != 2)
        {
          goto LABEL_30;
        }

        v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v21 = [v20 localizedStringForKey:@"kWFLocSettingsProxyConfigAutomaticTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
        textLabel2 = [v9 textLabel];
        [textLabel2 setText:v21];

        modifiedConfig = [(WFProxyConfigViewController *)self modifiedConfig];
        v14 = [modifiedConfig httpProxyConfig] == 2;
      }
    }

    else
    {
      v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v18 = [v17 localizedStringForKey:@"kWFLocSettingsProxyConfigOffTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      textLabel3 = [v9 textLabel];
      [textLabel3 setText:v18];

      modifiedConfig = [(WFProxyConfigViewController *)self modifiedConfig];
      v14 = [modifiedConfig httpProxyConfig] == 0;
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

  if ([pathCopy section] != 1)
  {
    goto LABEL_29;
  }

  modifiedConfig2 = [(WFProxyConfigViewController *)self modifiedConfig];
  httpProxyConfig = [modifiedConfig2 httpProxyConfig];

  if (httpProxyConfig != 2)
  {
    modifiedConfig3 = [(WFProxyConfigViewController *)self modifiedConfig];
    httpProxyConfig2 = [modifiedConfig3 httpProxyConfig];

    if (httpProxyConfig2 != 1)
    {
      goto LABEL_29;
    }

    if (![pathCopy row])
    {
      serverCell = [(WFProxyConfigViewController *)self serverCell];
      goto LABEL_22;
    }

    if ([pathCopy row] == 1)
    {
      serverCell = [(WFProxyConfigViewController *)self portCell];
      goto LABEL_22;
    }

    if ([pathCopy row] != 2)
    {
      if ([pathCopy row] == 3)
      {
        serverCell = [(WFProxyConfigViewController *)self userCell];
        goto LABEL_22;
      }

      if ([pathCopy row] == 4)
      {
        serverCell = [(WFProxyConfigViewController *)self passwordCell];
        goto LABEL_22;
      }

      goto LABEL_29;
    }

    v9 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:0];
    v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v25 = [v24 localizedStringForKey:@"kWFLocSettingsProxyAuthenticationCell" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
    textLabel4 = [v9 textLabel];
    [textLabel4 setText:v25];

    v27 = objc_alloc(MEMORY[0x277D75AE8]);
    modifiedConfig = [v27 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    modifiedConfig4 = [(WFProxyConfigViewController *)self modifiedConfig];
    [modifiedConfig setOn:{objc_msgSend(modifiedConfig4, "httpProxyAuthenticationRequired")}];

    [modifiedConfig addTarget:self action:sel__changeProxyAuthentication_ forControlEvents:4096];
    [v9 setAccessoryView:modifiedConfig];
    [v9 setSelectionStyle:0];
LABEL_20:

    goto LABEL_30;
  }

  if (![pathCopy row])
  {
    serverCell = [(WFProxyConfigViewController *)self urlCell];
LABEL_22:
    v9 = serverCell;
    goto LABEL_30;
  }

LABEL_29:
  v9 = 0;
LABEL_30:
  appearanceProxy = [(WFProxyConfigViewController *)self appearanceProxy];
  cellTextLabelFont = [appearanceProxy cellTextLabelFont];

  if (cellTextLabelFont)
  {
    appearanceProxy2 = [(WFProxyConfigViewController *)self appearanceProxy];
    cellTextLabelFont2 = [appearanceProxy2 cellTextLabelFont];
    textLabel5 = [v9 textLabel];
    [textLabel5 setFont:cellTextLabelFont2];
  }

  return v9;
}

- (void)_setFirstResponderAfterCell:(id)cell
{
  cellCopy = cell;
  serverCell = [(WFProxyConfigViewController *)self serverCell];

  portCell = [(WFProxyConfigViewController *)self portCell];
  v6 = cellCopy;
  if (serverCell != cellCopy)
  {

    if (portCell == cellCopy)
    {
      modifiedConfig = [(WFProxyConfigViewController *)self modifiedConfig];
      httpProxyAuthenticationRequired = [modifiedConfig httpProxyAuthenticationRequired];

      if (httpProxyAuthenticationRequired)
      {
        userCell = [(WFProxyConfigViewController *)self userCell];
LABEL_9:
        portCell = userCell;
        v6 = cellCopy;
        goto LABEL_10;
      }
    }

    else
    {
      userCell2 = [(WFProxyConfigViewController *)self userCell];

      portCell = [(WFProxyConfigViewController *)self passwordCell];
      v6 = cellCopy;
      if (userCell2 == cellCopy)
      {
        goto LABEL_10;
      }

      v6 = cellCopy;
      if (portCell != cellCopy)
      {
        goto LABEL_12;
      }
    }

    userCell = [(WFProxyConfigViewController *)self serverCell];
    goto LABEL_9;
  }

LABEL_10:
  if (portCell)
  {
    [portCell becomeFirstResponder];

    v6 = cellCopy;
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
    label = [(WFTextFieldCell *)v6 label];
    [label setText:v8];

    [(WFProxyConfigViewController *)self _configCellLeadingInset];
    [(WFTextFieldCell *)v6 setLayoutMargins:0.0, v10, 0.0, 0.0];
    textField = [(WFTextFieldCell *)v6 textField];
    [textField setTextAlignment:2];

    textField2 = [(WFTextFieldCell *)v6 textField];
    [textField2 setKeyboardType:3];

    modifiedConfig = [(WFProxyConfigViewController *)self modifiedConfig];
    httpProxyServerAddress = [modifiedConfig httpProxyServerAddress];
    textField3 = [(WFTextFieldCell *)v6 textField];
    [textField3 setText:httpProxyServerAddress];

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
    appearanceProxy = [(WFProxyConfigViewController *)self appearanceProxy];
    cellTextLabelFont = [appearanceProxy cellTextLabelFont];

    if (cellTextLabelFont)
    {
      appearanceProxy2 = [(WFProxyConfigViewController *)self appearanceProxy];
      cellTextLabelFont2 = [appearanceProxy2 cellTextLabelFont];
      textLabel = [(WFTextFieldCell *)v6 textLabel];
      [textLabel setFont:cellTextLabelFont2];
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
    label = [(WFTextFieldCell *)v6 label];
    [label setText:v8];

    [(WFProxyConfigViewController *)self _configCellLeadingInset];
    [(WFTextFieldCell *)v6 setLayoutMargins:0.0, v10, 0.0, 0.0];
    textField = [(WFTextFieldCell *)v6 textField];
    [textField setTextAlignment:2];

    modifiedConfig = [(WFProxyConfigViewController *)self modifiedConfig];
    httpProxyServerPort = [modifiedConfig httpProxyServerPort];
    textField2 = [(WFTextFieldCell *)v6 textField];
    [textField2 setText:httpProxyServerPort];

    textField3 = [(WFTextFieldCell *)v6 textField];
    [textField3 setKeyboardType:4];

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
    appearanceProxy = [(WFProxyConfigViewController *)self appearanceProxy];
    cellTextLabelFont = [appearanceProxy cellTextLabelFont];

    if (cellTextLabelFont)
    {
      appearanceProxy2 = [(WFProxyConfigViewController *)self appearanceProxy];
      cellTextLabelFont2 = [appearanceProxy2 cellTextLabelFont];
      textLabel = [(WFTextFieldCell *)v6 textLabel];
      [textLabel setFont:cellTextLabelFont2];
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
    label = [(WFTextFieldCell *)v6 label];
    [label setText:v8];

    [(WFProxyConfigViewController *)self _configCellLeadingInset];
    [(WFTextFieldCell *)v6 setLayoutMargins:0.0, v10, 0.0, 0.0];
    textField = [(WFTextFieldCell *)v6 textField];
    [textField setTextAlignment:2];

    textField2 = [(WFTextFieldCell *)v6 textField];
    [textField2 setTextContentType:*MEMORY[0x277D77090]];

    modifiedConfig = [(WFProxyConfigViewController *)self modifiedConfig];
    httpProxyUsername = [modifiedConfig httpProxyUsername];
    textField3 = [(WFTextFieldCell *)v6 textField];
    [textField3 setText:httpProxyUsername];

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
    appearanceProxy = [(WFProxyConfigViewController *)self appearanceProxy];
    cellTextLabelFont = [appearanceProxy cellTextLabelFont];

    if (cellTextLabelFont)
    {
      appearanceProxy2 = [(WFProxyConfigViewController *)self appearanceProxy];
      cellTextLabelFont2 = [appearanceProxy2 cellTextLabelFont];
      textLabel = [(WFTextFieldCell *)v6 textLabel];
      [textLabel setFont:cellTextLabelFont2];
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
    label = [(WFTextFieldCell *)v6 label];
    [label setText:v8];

    [(WFProxyConfigViewController *)self _configCellLeadingInset];
    [(WFTextFieldCell *)v6 setLayoutMargins:0.0, v10, 0.0, 0.0];
    textField = [(WFTextFieldCell *)v6 textField];
    [textField setTextAlignment:2];

    textField2 = [(WFTextFieldCell *)v6 textField];
    [textField2 setTextContentType:*MEMORY[0x277D77030]];

    modifiedConfig = [(WFProxyConfigViewController *)self modifiedConfig];
    httpProxyPassword = [modifiedConfig httpProxyPassword];
    textField3 = [(WFTextFieldCell *)v6 textField];
    [textField3 setText:httpProxyPassword];

    textField4 = [(WFTextFieldCell *)v6 textField];
    [textField4 setSecureTextEntry:1];

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
    appearanceProxy = [(WFProxyConfigViewController *)self appearanceProxy];
    cellTextLabelFont = [appearanceProxy cellTextLabelFont];

    if (cellTextLabelFont)
    {
      appearanceProxy2 = [(WFProxyConfigViewController *)self appearanceProxy];
      cellTextLabelFont2 = [appearanceProxy2 cellTextLabelFont];
      textLabel = [(WFTextFieldCell *)v6 textLabel];
      [textLabel setFont:cellTextLabelFont2];
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
    label = [(WFTextFieldCell *)v6 label];
    [label setText:v9];

    textField = [(WFTextFieldCell *)v6 textField];
    [textField setKeyboardType:3];

    textField2 = [(WFTextFieldCell *)v6 textField];
    [textField2 setTextAlignment:2];

    modifiedConfig = [(WFProxyConfigViewController *)self modifiedConfig];
    httpProxyConfigPAC = [modifiedConfig httpProxyConfigPAC];
    textField3 = [(WFTextFieldCell *)v6 textField];
    [textField3 setText:httpProxyConfigPAC];

    objc_initWeak(&location, self);
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __38__WFProxyConfigViewController_urlCell__block_invoke;
    v26 = &unk_279EC5418;
    objc_copyWeak(&v27, &location);
    [(WFTextFieldCell *)v6 setTextChangeHandler:&v23];
    v16 = [(WFProxyConfigViewController *)self appearanceProxy:v23];
    cellTextLabelFont = [v16 cellTextLabelFont];

    if (cellTextLabelFont)
    {
      appearanceProxy = [(WFProxyConfigViewController *)self appearanceProxy];
      cellTextLabelFont2 = [appearanceProxy cellTextLabelFont];
      textLabel = [(WFTextFieldCell *)v6 textLabel];
      [textLabel setFont:cellTextLabelFont2];
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

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v63[1] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  pathCopy = path;
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  if (![pathCopy section])
  {
    v9 = [pathCopy row];

    modifiedConfig = [(WFProxyConfigViewController *)self modifiedConfig];
    httpProxyConfig = [modifiedConfig httpProxyConfig];

    if (httpProxyConfig == v9)
    {
      goto LABEL_31;
    }

    modifiedConfig2 = [(WFProxyConfigViewController *)self modifiedConfig];
    httpProxyConfig2 = [modifiedConfig2 httpProxyConfig];

    modifiedConfig3 = [(WFProxyConfigViewController *)self modifiedConfig];
    httpProxyAuthenticationRequired = [modifiedConfig3 httpProxyAuthenticationRequired];

    modifiedConfig4 = [(WFProxyConfigViewController *)self modifiedConfig];
    [modifiedConfig4 setHttpProxyConfig:v9];

    if (httpProxyAuthenticationRequired && v9 != 1)
    {
      modifiedConfig5 = [(WFProxyConfigViewController *)self modifiedConfig];
      [modifiedConfig5 setHttpProxyAuthenticationRequired:0];
    }

    if (v9 == 2)
    {
      v36 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:0];
      v37 = [viewCopy cellForRowAtIndexPath:v36];
      [v37 setAccessoryType:0];

      v38 = [MEMORY[0x277CCAA70] indexPathForRow:1 inSection:0];
      v39 = [viewCopy cellForRowAtIndexPath:v38];
      [v39 setAccessoryType:0];

      v40 = [MEMORY[0x277CCAA70] indexPathForRow:2 inSection:0];
      v41 = [viewCopy cellForRowAtIndexPath:v40];
      [v41 setAccessoryType:3];

      if (httpProxyConfig2)
      {
        if (httpProxyConfig2 == 1)
        {
          [viewCopy beginUpdates];
          v42 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:1];
          v58 = v42;
          v43 = [MEMORY[0x277CBEA60] arrayWithObjects:&v58 count:1];
          [viewCopy reloadRowsAtIndexPaths:v43 withRowAnimation:0];

          v44 = [MEMORY[0x277CCAA70] indexPathForRow:1 inSection:1];
          v57[0] = v44;
          v45 = [MEMORY[0x277CCAA70] indexPathForRow:2 inSection:1];
          v57[1] = v45;
          v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:2];
          [viewCopy deleteRowsAtIndexPaths:v46 withRowAnimation:0];

          if (httpProxyAuthenticationRequired)
          {
            v47 = [MEMORY[0x277CCAA70] indexPathForRow:3 inSection:1];
            v56[0] = v47;
            v48 = [MEMORY[0x277CCAA70] indexPathForRow:4 inSection:1];
            v56[1] = v48;
            v49 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:2];
            [viewCopy deleteRowsAtIndexPaths:v49 withRowAnimation:0];
          }

          [viewCopy endUpdates];
          v50 = [MEMORY[0x277CCAA78] indexSetWithIndex:1];
          [viewCopy reloadSections:v50 withRowAnimation:5];
        }

        goto LABEL_30;
      }

      [viewCopy beginUpdates];
      v53 = [MEMORY[0x277CCAA78] indexSetWithIndex:1];
      [viewCopy insertSections:v53 withRowAnimation:0];

      v25 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:1];
      v55 = v25;
      v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v55 count:1];
      [viewCopy insertRowsAtIndexPaths:v26 withRowAnimation:0];
      goto LABEL_28;
    }

    if (v9 == 1)
    {
      v27 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:0];
      v28 = [viewCopy cellForRowAtIndexPath:v27];
      [v28 setAccessoryType:0];

      v29 = [MEMORY[0x277CCAA70] indexPathForRow:1 inSection:0];
      v30 = [viewCopy cellForRowAtIndexPath:v29];
      [v30 setAccessoryType:3];

      v31 = [MEMORY[0x277CCAA70] indexPathForRow:2 inSection:0];
      v32 = [viewCopy cellForRowAtIndexPath:v31];
      [v32 setAccessoryType:0];

      [viewCopy beginUpdates];
      if (httpProxyConfig2)
      {
        if (httpProxyConfig2 != 2)
        {
          goto LABEL_29;
        }

        v33 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:1];
        v61 = v33;
        v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v61 count:1];
        [viewCopy reloadRowsAtIndexPaths:v34 withRowAnimation:0];

        v25 = [MEMORY[0x277CCAA70] indexPathForRow:1 inSection:1];
        v60[0] = v25;
        v26 = [MEMORY[0x277CCAA70] indexPathForRow:2 inSection:1];
        v60[1] = v26;
        v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:2];
        [viewCopy insertRowsAtIndexPaths:v35 withRowAnimation:0];
LABEL_27:

        goto LABEL_28;
      }

      v51 = [MEMORY[0x277CCAA78] indexSetWithIndex:1];
      [viewCopy insertSections:v51 withRowAnimation:0];

      v25 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:1];
      v59[0] = v25;
      v26 = [MEMORY[0x277CCAA70] indexPathForRow:1 inSection:1];
      v59[1] = v26;
      v35 = [MEMORY[0x277CCAA70] indexPathForRow:2 inSection:1];
      v59[2] = v35;
      v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:3];
      [viewCopy insertRowsAtIndexPaths:v52 withRowAnimation:0];
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
      v19 = [viewCopy cellForRowAtIndexPath:v18];
      [v19 setAccessoryType:3];

      v20 = [MEMORY[0x277CCAA70] indexPathForRow:1 inSection:0];
      v21 = [viewCopy cellForRowAtIndexPath:v20];
      [v21 setAccessoryType:0];

      v22 = [MEMORY[0x277CCAA70] indexPathForRow:2 inSection:0];
      v23 = [viewCopy cellForRowAtIndexPath:v22];
      [v23 setAccessoryType:0];

      [viewCopy beginUpdates];
      v24 = [MEMORY[0x277CCAA78] indexSetWithIndex:1];
      [viewCopy deleteSections:v24 withRowAnimation:0];

      if (httpProxyConfig2 != 1)
      {
        if (httpProxyConfig2 == 2)
        {
          v25 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:1];
          v63[0] = v25;
          v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:1];
          [viewCopy deleteRowsAtIndexPaths:v26 withRowAnimation:0];
LABEL_28:
        }

LABEL_29:
        [viewCopy endUpdates];
        goto LABEL_30;
      }

      v25 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:1];
      v62[0] = v25;
      v26 = [MEMORY[0x277CCAA70] indexPathForRow:1 inSection:1];
      v62[1] = v26;
      v35 = [MEMORY[0x277CCAA70] indexPathForRow:2 inSection:1];
      v62[2] = v35;
      v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:3];
      [viewCopy deleteRowsAtIndexPaths:v52 withRowAnimation:0];
    }

    goto LABEL_27;
  }

  v8 = [viewCopy cellForRowAtIndexPath:pathCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v8 becomeFirstResponder];
  }

LABEL_31:
  v54 = *MEMORY[0x277D85DE8];
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  if (section == 1 && (-[WFProxyConfigViewController modifiedConfig](self, "modifiedConfig", view), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 httpProxyAuthenticationRequired], v4, v5))
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

- (void)_changeProxyAuthentication:(id)authentication
{
  v15[2] = *MEMORY[0x277D85DE8];
  isOn = [authentication isOn];
  modifiedConfig = [(WFProxyConfigViewController *)self modifiedConfig];
  v6 = modifiedConfig;
  if (isOn)
  {
    [modifiedConfig setHttpProxyAuthenticationRequired:1];

    tableView = [(WFProxyConfigViewController *)self tableView];
    v8 = [MEMORY[0x277CCAA70] indexPathForRow:3 inSection:1];
    v15[0] = v8;
    v9 = [MEMORY[0x277CCAA70] indexPathForRow:4 inSection:1];
    v15[1] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
    [tableView insertRowsAtIndexPaths:v10 withRowAnimation:0];
  }

  else
  {
    [modifiedConfig setHttpProxyAuthenticationRequired:0];

    tableView = [(WFProxyConfigViewController *)self tableView];
    v8 = [MEMORY[0x277CCAA70] indexPathForRow:3 inSection:1];
    v14[0] = v8;
    v9 = [MEMORY[0x277CCAA70] indexPathForRow:4 inSection:1];
    v14[1] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
    [tableView deleteRowsAtIndexPaths:v10 withRowAnimation:0];
  }

  [(WFProxyConfigViewController *)self _updateSaveEnabled];
  tableView2 = [(WFProxyConfigViewController *)self tableView];
  v12 = [MEMORY[0x277CCAA78] indexSetWithIndex:1];
  [tableView2 reloadSections:v12 withRowAnimation:5];

  v13 = *MEMORY[0x277D85DE8];
}

- (double)_configCellLeadingInset
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v4 = v3;

  mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen2 bounds];
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

- (WFProxyConfigViewController)initWithConfig:(id)config appearanceProxy:(id)proxy
{
  configCopy = config;
  proxyCopy = proxy;
  v16.receiver = self;
  v16.super_class = WFProxyConfigViewController;
  v9 = -[WFProxyConfigViewController initWithStyle:](&v16, sel_initWithStyle_, [proxyCopy tableViewStyle]);
  v10 = v9;
  if (configCopy)
  {
    if (v9)
    {
      objc_storeStrong(&v9->_originalConfig, config);
      v11 = [configCopy copy];
      modifiedConfig = v10->_modifiedConfig;
      v10->_modifiedConfig = v11;

      v13 = proxyCopy;
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