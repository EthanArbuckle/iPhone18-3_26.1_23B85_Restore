@interface WFDNSConfigViewController
- (BOOL)_isChinaDevice;
- (WFDNSConfigViewController)initWithConfig:(id)config;
- (WFDNSConfigViewController)initWithConfig:(id)config appearanceProxy:(id)proxy;
- (double)_configCellLeadingInset;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_addDomainAtIndexPath:(id)path;
- (void)_addServerAtIndexPath:(id)path;
- (void)_updateSaveEnabled;
- (void)save:(id)save;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation WFDNSConfigViewController

- (WFDNSConfigViewController)initWithConfig:(id)config
{
  configCopy = config;
  v5 = +[WFAppearanceProxy defaultAppearanceProxy];
  v6 = [(WFDNSConfigViewController *)self initWithConfig:configCopy appearanceProxy:v5];

  return v6;
}

- (void)viewDidLoad
{
  v20.receiver = self;
  v20.super_class = WFDNSConfigViewController;
  [(WFDNSConfigViewController *)&v20 viewDidLoad];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"kWFLocSettingsDNSConfigureTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  [(WFDNSConfigViewController *)self setTitle:v4];

  v5 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:3 target:self action:sel_save_];
  [(WFDNSConfigViewController *)self setSaveButton:v5];

  saveButton = [(WFDNSConfigViewController *)self saveButton];
  [saveButton setEnabled:0];

  saveButton2 = [(WFDNSConfigViewController *)self saveButton];
  navigationItem = [(WFDNSConfigViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:saveButton2];

  v9 = MEMORY[0x277D757B0];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v9 nibWithNibName:@"WFTextFieldCell" bundle:v10];

  tableView = [(WFDNSConfigViewController *)self tableView];
  [tableView registerNib:v11 forCellReuseIdentifier:@"kWFTextFieldCellIdentifier"];

  tableView2 = [(WFDNSConfigViewController *)self tableView];
  [tableView2 setAllowsSelectionDuringEditing:1];

  v14 = *MEMORY[0x277D76F30];
  tableView3 = [(WFDNSConfigViewController *)self tableView];
  [tableView3 setRowHeight:v14];

  tableView4 = [(WFDNSConfigViewController *)self tableView];
  [tableView4 setEstimatedRowHeight:44.0];

  tableView5 = [(WFDNSConfigViewController *)self tableView];
  [tableView5 setEstimatedSectionHeaderHeight:0.0];

  tableView6 = [(WFDNSConfigViewController *)self tableView];
  [tableView6 setEstimatedSectionFooterHeight:0.0];

  if ([(WFDNSConfigViewController *)self dnsConfig]== 1)
  {
    [(WFDNSConfigViewController *)self setEditing:1];
  }

  if ([MEMORY[0x277D75418] currentIsIPad])
  {
    tableView7 = [(WFDNSConfigViewController *)self tableView];
    [tableView7 _setSectionContentInset:{0.0, 20.0, 0.0, 20.0}];
  }
}

- (void)save:(id)save
{
  v23 = *MEMORY[0x277D85DE8];
  saveHandler = [(WFDNSConfigViewController *)self saveHandler];

  if (saveHandler)
  {
    servers = [(WFDNSConfigViewController *)self servers];
    if ([servers count])
    {
      servers2 = [(WFDNSConfigViewController *)self servers];
      arrayAfterFilteringOutEmptyStrings = [servers2 arrayAfterFilteringOutEmptyStrings];
    }

    else
    {
      arrayAfterFilteringOutEmptyStrings = 0;
    }

    domains = [(WFDNSConfigViewController *)self domains];
    if ([domains count])
    {
      domains2 = [(WFDNSConfigViewController *)self domains];
      arrayAfterFilteringOutEmptyStrings2 = [domains2 arrayAfterFilteringOutEmptyStrings];
    }

    else
    {
      arrayAfterFilteringOutEmptyStrings2 = 0;
    }

    v11 = WFLogForCategory(0);
    v12 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v11 && os_log_type_enabled(v11, v12))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_273FB9000, v11, v12, "saving DNS servers and domains", &v21, 2u);
    }

    v13 = WFLogForCategory(0);
    v14 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v13 && os_log_type_enabled(v13, v14))
    {
      servers = self->_servers;
      v21 = 138412290;
      v22 = servers;
      _os_log_impl(&dword_273FB9000, v13, v14, "DNS servers='%@'", &v21, 0xCu);
    }

    v16 = WFLogForCategory(0);
    v17 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v16 && os_log_type_enabled(v16, v17))
    {
      domains = self->_domains;
      v21 = 138412290;
      v22 = domains;
      _os_log_impl(&dword_273FB9000, v16, v17, "DNS domains='%@'", &v21, 0xCu);
    }

    saveHandler2 = [(WFDNSConfigViewController *)self saveHandler];
    (saveHandler2)[2](saveHandler2, [(WFDNSConfigViewController *)self dnsConfig], arrayAfterFilteringOutEmptyStrings, arrayAfterFilteringOutEmptyStrings2);
  }

  [(UIViewController *)self wf_popViewControllerAnimated:1];
  v20 = *MEMORY[0x277D85DE8];
}

- (void)_updateSaveEnabled
{
  originalServers = [(WFDNSConfigViewController *)self originalServers];
  servers = [(WFDNSConfigViewController *)self servers];
  if ([originalServers isEqualToArray:servers] && (v5 = -[WFDNSConfigViewController dnsConfig](self, "dnsConfig"), v5 == -[WFDNSConfigViewController originalDNSConfig](self, "originalDNSConfig")))
  {
    originalDomains = [(WFDNSConfigViewController *)self originalDomains];
    domains = [(WFDNSConfigViewController *)self domains];
    if ([originalDomains isEqualToArray:domains])
    {
      v8 = 0;
    }

    else
    {
      originalDomains2 = [(WFDNSConfigViewController *)self originalDomains];
      if (originalDomains2)
      {
        v8 = 1;
      }

      else
      {
        domains2 = [(WFDNSConfigViewController *)self domains];
        v8 = [domains2 count] != 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  saveButton = [(WFDNSConfigViewController *)self saveButton];
  [saveButton setEnabled:v8];
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  if (self->_shouldShowPrivacyRelayHeader)
  {
    return 4;
  }

  else
  {
    return 3;
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v6 = [(WFDNSConfigViewController *)self sectionForSectionNumber:section];
  v7 = [(WFDNSConfigViewController *)self sectionNumberForSection:1];
  if (v6 == 3)
  {
    domains = [(WFDNSConfigViewController *)self domains];
  }

  else
  {
    if (v6 != 2)
    {
      if (v6 == 1)
      {
        v8 = 2;
      }

      else
      {
        v8 = 0;
      }

      goto LABEL_9;
    }

    domains = [(WFDNSConfigViewController *)self servers];
  }

  v10 = domains;
  v8 = [domains count];

LABEL_9:
  isEditing = [(WFDNSConfigViewController *)self isEditing];
  if (v7 < section)
  {
    v12 = isEditing;
  }

  else
  {
    v12 = 0;
  }

  return v8 + v12;
}

- (BOOL)_isChinaDevice
{
  deviceCapability = [(WFDNSConfigViewController *)self deviceCapability];

  return WFCapabilityIsChinaDevice(deviceCapability);
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [pathCopy row];
  v9 = -[WFDNSConfigViewController sectionForSectionNumber:](self, "sectionForSectionNumber:", [pathCopy section]);
  switch(v9)
  {
    case 3:
      domains = [(WFDNSConfigViewController *)self domains];
      if (v8 >= [domains count])
      {
        isEditing = [(WFDNSConfigViewController *)self isEditing];

        if (isEditing)
        {
          v10 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:0];
          [v10 setAccessoryType:0];
          [(WFDNSConfigViewController *)self _configCellLeadingInset];
          v33 = v32;
          [(WFDNSConfigViewController *)self _configCellTrailingInset];
          [v10 setLayoutMargins:{0.0, v33, 0.0, v34}];
          v35 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v36 = [v35 localizedStringForKey:@"kWFLocSettingsDNSAddSearchDomain" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
          textLabel = [v10 textLabel];
          [textLabel setText:v36];

          [v10 setSelectionStyle:1];
          [v10 setIndentationLevel:5];
          break;
        }
      }

      else
      {
      }

      v10 = [viewCopy dequeueReusableCellWithIdentifier:@"kWFTextFieldCellIdentifier" forIndexPath:pathCopy];
      [v10 setHideLabel:1];
      [v10 setEditable:{-[WFDNSConfigViewController isEditing](self, "isEditing")}];
      domains2 = [(WFDNSConfigViewController *)self domains];
      v39 = [domains2 objectAtIndexedSubscript:v8];
      textField = [v10 textField];
      [textField setText:v39];

      v41 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v42 = [v41 localizedStringForKey:@"kWFLocSettingsDNSSearchDomainPlaceholder" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      textField2 = [v10 textField];
      [textField2 setPlaceholder:v42];

      [(WFDNSConfigViewController *)self _configCellLeadingInset];
      v45 = v44;
      [(WFDNSConfigViewController *)self _configCellTrailingInset];
      [v10 setLayoutMargins:{0.0, v45, 0.0, v46}];
      objc_initWeak(&location, self);
      v58[0] = MEMORY[0x277D85DD0];
      v58[1] = 3221225472;
      v58[2] = __61__WFDNSConfigViewController_tableView_cellForRowAtIndexPath___block_invoke_2;
      v58[3] = &unk_279EC5C88;
      objc_copyWeak(v59, &location);
      v59[1] = v8;
      [v10 setTextChangeHandler:v58];
      objc_destroyWeak(v59);
      objc_destroyWeak(&location);
      break;
    case 2:
      servers = [(WFDNSConfigViewController *)self servers];
      if (v8 >= [servers count] && -[WFDNSConfigViewController isEditing](self, "isEditing"))
      {
        v10 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:0];
        [v10 setAccessoryType:0];
        v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v18 = [v17 localizedStringForKey:@"kWFLocSettingsDNSAddServer" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
        textLabel2 = [v10 textLabel];
        [textLabel2 setText:v18];

        [v10 setSelectionStyle:1];
        [(WFDNSConfigViewController *)self _configCellLeadingInset];
        v21 = v20;
        [(WFDNSConfigViewController *)self _configCellTrailingInset];
        [v10 setLayoutMargins:{0.0, v21, 0.0, v22}];
        [v10 setIndentationLevel:5];
      }

      else
      {
        v10 = [viewCopy dequeueReusableCellWithIdentifier:@"kWFTextFieldCellIdentifier" forIndexPath:pathCopy];
        [v10 setHideLabel:1];
        [v10 setEditable:{-[WFDNSConfigViewController isEditing](self, "isEditing")}];
        v24 = [servers objectAtIndexedSubscript:v8];
        textField3 = [v10 textField];
        [textField3 setText:v24];

        v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d.%d.%d.%d", 0, 0, 0, 0];
        textField4 = [v10 textField];
        [textField4 setPlaceholder:v26];

        [(WFDNSConfigViewController *)self _configCellLeadingInset];
        v29 = v28;
        [(WFDNSConfigViewController *)self _configCellTrailingInset];
        [v10 setLayoutMargins:{0.0, v29, 0.0, v30}];
        objc_initWeak(&location, self);
        v60[0] = MEMORY[0x277D85DD0];
        v60[1] = 3221225472;
        v60[2] = __61__WFDNSConfigViewController_tableView_cellForRowAtIndexPath___block_invoke;
        v60[3] = &unk_279EC5C88;
        objc_copyWeak(v61, &location);
        v61[1] = v8;
        [v10 setTextChangeHandler:v60];
        objc_destroyWeak(v61);
        objc_destroyWeak(&location);
      }

      break;
    case 1:
      v10 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:0];
      if ([pathCopy row])
      {
        if ([pathCopy row] != 1)
        {
          break;
        }

        v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v12 = [v11 localizedStringForKey:@"kWFLocSettingsDNSConfigureManual" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
        textLabel3 = [v10 textLabel];
        [textLabel3 setText:v12];

        if ([(WFDNSConfigViewController *)self dnsConfig]== 1)
        {
          v14 = 3;
        }

        else
        {
          v14 = 0;
        }

        [v10 setAccessoryType:v14];
        v15 = [(WFDNSConfigViewController *)self dnsConfig]== 1;
      }

      else
      {
        v47 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v48 = [v47 localizedStringForKey:@"kWFLocSettingsDNSConfigureAutomatic" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
        textLabel4 = [v10 textLabel];
        [textLabel4 setText:v48];

        if ([(WFDNSConfigViewController *)self dnsConfig])
        {
          v50 = 0;
        }

        else
        {
          v50 = 3;
        }

        [v10 setAccessoryType:v50];
        v15 = [(WFDNSConfigViewController *)self dnsConfig]== 0;
      }

      if (v15)
      {
        v51 = 3;
      }

      else
      {
        v51 = 0;
      }

      [v10 setEditingAccessoryType:v51];
      break;
    default:
      v10 = 0;
      break;
  }

  appearanceProxy = [(WFDNSConfigViewController *)self appearanceProxy];
  cellTextLabelFont = [appearanceProxy cellTextLabelFont];

  if (cellTextLabelFont)
  {
    appearanceProxy2 = [(WFDNSConfigViewController *)self appearanceProxy];
    cellTextLabelFont2 = [appearanceProxy2 cellTextLabelFont];
    textLabel5 = [v10 textLabel];
    [textLabel5 setFont:cellTextLabelFont2];
  }

  return v10;
}

void __61__WFDNSConfigViewController_tableView_cellForRowAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = *(a1 + 40);
  v5 = [WeakRetained servers];
  v6 = [v5 count];

  v7 = [WeakRetained servers];
  v8 = v7;
  if (v4 >= v6)
  {
    [v7 addObject:v3];
  }

  else
  {
    [v7 setObject:v3 atIndexedSubscript:*(a1 + 40)];
  }

  [WeakRetained _updateSaveEnabled];
}

void __61__WFDNSConfigViewController_tableView_cellForRowAtIndexPath___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained domains];
  [v4 setObject:v3 atIndexedSubscript:*(a1 + 40)];

  [WeakRetained _updateSaveEnabled];
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  v18[1] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v8 = -[WFDNSConfigViewController sectionForSectionNumber:](self, "sectionForSectionNumber:", [pathCopy section]);
  if (style != 2)
  {
    if (style != 1)
    {
      goto LABEL_17;
    }

    if (v8 == 3)
    {
      domains = [(WFDNSConfigViewController *)self domains];
    }

    else
    {
      if (v8 != 2)
      {
LABEL_11:
        v11 = pathCopy;
        tableView = [(WFDNSConfigViewController *)self tableView];
        v13 = [tableView numberOfRowsInSection:{objc_msgSend(v11, "section")}];

        if (v13 >= 1)
        {
          if ([v11 row] >= v13)
          {
            v14 = [MEMORY[0x277CCAA70] indexPathForRow:v13 - 1 inSection:{objc_msgSend(v11, "section")}];

            v11 = v14;
          }

          tableView2 = [(WFDNSConfigViewController *)self tableView];
          v18[0] = v11;
          v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
          [tableView2 deleteRowsAtIndexPaths:v16 withRowAnimation:100];

          [(WFDNSConfigViewController *)self _updateSaveEnabled];
        }

        goto LABEL_17;
      }

      domains = [(WFDNSConfigViewController *)self servers];
    }

    v10 = domains;
    [domains removeObjectAtIndex:{objc_msgSend(pathCopy, "row")}];

    goto LABEL_11;
  }

  if (v8 == 3)
  {
    [(WFDNSConfigViewController *)self _addDomainAtIndexPath:pathCopy];
  }

  else if (v8 == 2)
  {
    [(WFDNSConfigViewController *)self _addServerAtIndexPath:pathCopy];
  }

LABEL_17:

  v17 = *MEMORY[0x277D85DE8];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v110 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  pathCopy = path;
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  v8 = WFLogForCategory(0);
  v9 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v8)
  {
    v10 = v8;
    if (os_log_type_enabled(v10, v9))
    {
      *buf = 134218240;
      section = [pathCopy section];
      v108 = 2048;
      v109 = [pathCopy row];
      _os_log_impl(&dword_273FB9000, v10, v9, "tapped DNS config s=%ld r=%ld", buf, 0x16u);
    }
  }

  v11 = -[WFDNSConfigViewController sectionForSectionNumber:](self, "sectionForSectionNumber:", [pathCopy section]);
  v12 = [pathCopy row];
  v13 = [(WFDNSConfigViewController *)self sectionNumberForSection:1];
  v14 = [(WFDNSConfigViewController *)self sectionNumberForSection:2];
  v15 = [(WFDNSConfigViewController *)self sectionNumberForSection:3];
  if (v11 != 1)
  {
    servers = [(WFDNSConfigViewController *)self servers];
    if (v12 >= [servers count] && -[WFDNSConfigViewController isEditing](self, "isEditing"))
    {
      section2 = [pathCopy section];

      if (section2 == v14)
      {
        [(WFDNSConfigViewController *)self _addServerAtIndexPath:pathCopy];
        goto LABEL_47;
      }
    }

    else
    {
    }

    domains = [(WFDNSConfigViewController *)self domains];
    if (v12 >= [domains count] && -[WFDNSConfigViewController isEditing](self, "isEditing"))
    {
      section3 = [pathCopy section];

      if (section3 == v15)
      {
        [(WFDNSConfigViewController *)self _addDomainAtIndexPath:pathCopy];
        goto LABEL_47;
      }
    }

    else
    {
    }

    tableView2 = [viewCopy cellForRowAtIndexPath:pathCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [tableView2 becomeFirstResponder];
    }

    goto LABEL_46;
  }

  if (v12 != [(WFDNSConfigViewController *)self dnsConfig])
  {
    tableView = [(WFDNSConfigViewController *)self tableView];
    [tableView beginUpdates];

    if (v12)
    {
      if ([pathCopy row] != 1)
      {
LABEL_45:
        [(WFDNSConfigViewController *)self _updateSaveEnabled];
        tableView2 = [(WFDNSConfigViewController *)self tableView];
        [tableView2 endUpdates];
LABEL_46:

        goto LABEL_47;
      }

      [(WFDNSConfigViewController *)self setDnsConfig:1];
      [(WFDNSConfigViewController *)self setEditing:1 animated:1];
      v17 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:v13];
      v18 = [viewCopy cellForRowAtIndexPath:v17];
      [v18 setAccessoryType:0];

      v19 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:v13];
      v20 = [viewCopy cellForRowAtIndexPath:v19];
      [v20 setEditingAccessoryType:0];

      v21 = [viewCopy cellForRowAtIndexPath:pathCopy];
      [v21 setAccessoryType:3];

      v22 = [viewCopy cellForRowAtIndexPath:pathCopy];
      [v22 setEditingAccessoryType:3];

      v23 = MEMORY[0x277CCAA70];
      servers2 = [(WFDNSConfigViewController *)self servers];
      v25 = [v23 indexPathForRow:objc_msgSend(servers2 inSection:{"count"), v14}];
      v26 = MEMORY[0x277CCAA70];
      domains2 = [(WFDNSConfigViewController *)self domains];
      v28 = [v26 indexPathForRow:objc_msgSend(domains2 inSection:{"count"), v15}];
      v100[1] = v28;
      v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v100 count:2];
      [viewCopy insertRowsAtIndexPaths:v29 withRowAnimation:100];
    }

    else
    {
      [(WFDNSConfigViewController *)self setDnsConfig:0];
      [(WFDNSConfigViewController *)self setEditing:0 animated:1];
      tableView3 = [(WFDNSConfigViewController *)self tableView];
      [tableView3 beginUpdates];

      v36 = [viewCopy cellForRowAtIndexPath:pathCopy];
      [v36 setAccessoryType:3];

      v37 = [viewCopy cellForRowAtIndexPath:pathCopy];
      [v37 setEditingAccessoryType:3];

      v38 = [MEMORY[0x277CCAA70] indexPathForRow:1 inSection:v13];
      v39 = [viewCopy cellForRowAtIndexPath:v38];
      [v39 setAccessoryType:0];

      v40 = [MEMORY[0x277CCAA70] indexPathForRow:1 inSection:v13];
      v41 = [viewCopy cellForRowAtIndexPath:v40];
      [v41 setEditingAccessoryType:0];

      v42 = MEMORY[0x277CCAA70];
      servers3 = [(WFDNSConfigViewController *)self servers];
      v44 = [v42 indexPathForRow:objc_msgSend(servers3 inSection:{"count"), v14}];
      v105[0] = v44;
      v45 = MEMORY[0x277CCAA70];
      domains3 = [(WFDNSConfigViewController *)self domains];
      v47 = [v45 indexPathForRow:objc_msgSend(domains3 inSection:{"count"), v15}];
      v105[1] = v47;
      v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v105 count:2];
      [viewCopy deleteRowsAtIndexPaths:v48 withRowAnimation:100];

      servers4 = [(WFDNSConfigViewController *)self servers];
      v50 = [servers4 count];
      originalServers = [(WFDNSConfigViewController *)self originalServers];
      v52 = [originalServers count];

      if (v50 <= v52)
      {
        servers5 = [(WFDNSConfigViewController *)self servers];
        v62 = [servers5 count];
        originalServers2 = [(WFDNSConfigViewController *)self originalServers];
        v64 = [originalServers2 count];

        if (v62 < v64)
        {
          servers6 = [(WFDNSConfigViewController *)self servers];
          v66 = [servers6 count];

          while (1)
          {
            originalServers3 = [(WFDNSConfigViewController *)self originalServers];
            v68 = [originalServers3 count];

            if (v66 >= v68)
            {
              break;
            }

            v69 = [MEMORY[0x277CCAA70] indexPathForRow:v66 inSection:v14];
            v103 = v69;
            v70 = [MEMORY[0x277CBEA60] arrayWithObjects:&v103 count:1];
            [viewCopy insertRowsAtIndexPaths:v70 withRowAnimation:0];

            ++v66;
          }
        }
      }

      else
      {
        originalServers4 = [(WFDNSConfigViewController *)self originalServers];
        v54 = [originalServers4 count];

        servers7 = [(WFDNSConfigViewController *)self servers];
        v56 = [servers7 count];

        if (v54 < v56)
        {
          do
          {
            v57 = [MEMORY[0x277CCAA70] indexPathForRow:v54 inSection:v14];
            v104 = v57;
            v58 = [MEMORY[0x277CBEA60] arrayWithObjects:&v104 count:1];
            [viewCopy deleteRowsAtIndexPaths:v58 withRowAnimation:0];

            ++v54;
            servers8 = [(WFDNSConfigViewController *)self servers];
            v60 = [servers8 count];
          }

          while (v54 < v60);
        }
      }

      domains4 = [(WFDNSConfigViewController *)self domains];
      v72 = [domains4 count];
      originalDomains = [(WFDNSConfigViewController *)self originalDomains];
      v74 = [originalDomains count];

      if (v72 <= v74)
      {
        domains5 = [(WFDNSConfigViewController *)self domains];
        v82 = [domains5 count];
        originalDomains2 = [(WFDNSConfigViewController *)self originalDomains];
        v84 = [originalDomains2 count];

        if (v82 < v84)
        {
          domains6 = [(WFDNSConfigViewController *)self domains];
          v86 = [domains6 count];

          while (1)
          {
            originalDomains3 = [(WFDNSConfigViewController *)self originalDomains];
            v88 = [originalDomains3 count];

            if (v86 >= v88)
            {
              break;
            }

            v89 = [MEMORY[0x277CCAA70] indexPathForRow:v86 inSection:v15];
            v101 = v89;
            v90 = [MEMORY[0x277CBEA60] arrayWithObjects:&v101 count:1];
            [viewCopy insertRowsAtIndexPaths:v90 withRowAnimation:0];

            ++v86;
          }
        }
      }

      else
      {
        originalDomains4 = [(WFDNSConfigViewController *)self originalDomains];
        v76 = [originalDomains4 count];

        while (1)
        {
          domains7 = [(WFDNSConfigViewController *)self domains];
          v78 = [domains7 count];

          if (v76 >= v78)
          {
            break;
          }

          v79 = [MEMORY[0x277CCAA70] indexPathForRow:v76 inSection:v15];
          v102 = v79;
          v80 = [MEMORY[0x277CBEA60] arrayWithObjects:&v102 count:1];
          [viewCopy deleteRowsAtIndexPaths:v80 withRowAnimation:0];

          ++v76;
        }
      }

      originalServers5 = [(WFDNSConfigViewController *)self originalServers];
      v92 = [originalServers5 mutableCopy];
      [(WFDNSConfigViewController *)self setServers:v92];

      servers9 = [(WFDNSConfigViewController *)self servers];

      if (!servers9)
      {
        array = [MEMORY[0x277CBEB18] array];
        [(WFDNSConfigViewController *)self setServers:array];
      }

      originalDomains5 = [(WFDNSConfigViewController *)self originalDomains];
      v96 = [originalDomains5 mutableCopy];
      [(WFDNSConfigViewController *)self setDomains:v96];

      domains8 = [(WFDNSConfigViewController *)self domains];

      if (!domains8)
      {
        array2 = [MEMORY[0x277CBEB18] array];
        [(WFDNSConfigViewController *)self setDomains:array2];
      }

      servers2 = [(WFDNSConfigViewController *)self tableView];
      [servers2 endUpdates];
    }

    goto LABEL_45;
  }

LABEL_47:

  v99 = *MEMORY[0x277D85DE8];
}

- (void)_addServerAtIndexPath:(id)path
{
  v18[1] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  servers = [(WFDNSConfigViewController *)self servers];
  lastObject = [servers lastObject];
  v7 = [lastObject isEqualToString:&stru_288308678];

  if (v7)
  {
    v17 = [MEMORY[0x277CCAA70] indexPathForRow:objc_msgSend(pathCopy inSection:{"row") - 1, objc_msgSend(pathCopy, "section")}];

    tableView = [(WFDNSConfigViewController *)self tableView];
    v9 = [tableView cellForRowAtIndexPath:v17];

    if (v9)
    {
      [v9 becomeFirstResponder];
    }

    v10 = *MEMORY[0x277D85DE8];
  }

  else
  {
    servers2 = [(WFDNSConfigViewController *)self servers];
    [servers2 addObject:&stru_288308678];

    tableView2 = [(WFDNSConfigViewController *)self tableView];
    v18[0] = pathCopy;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
    [tableView2 insertRowsAtIndexPaths:v13 withRowAnimation:100];

    [(WFDNSConfigViewController *)self _updateSaveEnabled];
    tableView3 = [(WFDNSConfigViewController *)self tableView];
    v15 = [tableView3 cellForRowAtIndexPath:pathCopy];

    [v15 becomeFirstResponder];
    v16 = *MEMORY[0x277D85DE8];
  }
}

- (void)_addDomainAtIndexPath:(id)path
{
  v18[1] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  domains = [(WFDNSConfigViewController *)self domains];
  lastObject = [domains lastObject];
  v7 = [lastObject isEqualToString:&stru_288308678];

  if (v7)
  {
    v17 = [MEMORY[0x277CCAA70] indexPathForRow:objc_msgSend(pathCopy inSection:{"row") - 1, objc_msgSend(pathCopy, "section")}];

    tableView = [(WFDNSConfigViewController *)self tableView];
    v9 = [tableView cellForRowAtIndexPath:v17];

    [v9 becomeFirstResponder];
    v10 = *MEMORY[0x277D85DE8];
  }

  else
  {
    domains2 = [(WFDNSConfigViewController *)self domains];
    [domains2 addObject:&stru_288308678];

    tableView2 = [(WFDNSConfigViewController *)self tableView];
    v18[0] = pathCopy;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
    [tableView2 insertRowsAtIndexPaths:v13 withRowAnimation:100];

    [(WFDNSConfigViewController *)self _updateSaveEnabled];
    tableView3 = [(WFDNSConfigViewController *)self tableView];
    v15 = [tableView3 cellForRowAtIndexPath:pathCopy];

    [v15 becomeFirstResponder];
    v16 = *MEMORY[0x277D85DE8];
  }
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = -[WFDNSConfigViewController sectionForSectionNumber:](self, "sectionForSectionNumber:", [pathCopy section]);
  if (v6 == 1 || (v7 = v6, ![(WFDNSConfigViewController *)self isEditing]))
  {
    v11 = 0;
  }

  else if (v7 == 3)
  {
    v13 = [pathCopy row];
    domains = [(WFDNSConfigViewController *)self domains];
    v15 = [domains count];

    if (v13 < v15)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }
  }

  else if (v7 == 2 && (v8 = [pathCopy row], -[WFDNSConfigViewController servers](self, "servers"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "count"), v9, v8 >= v10))
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  if ([(WFDNSConfigViewController *)self sectionForSectionNumber:section])
  {
    v5 = 0;
  }

  else
  {
    _isChinaDevice = [(WFDNSConfigViewController *)self _isChinaDevice];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = v7;
    if (_isChinaDevice)
    {
      v9 = @"kWFLocSettingsDNSPrivateRelayFooterCH";
    }

    else
    {
      v9 = @"kWFLocSettingsDNSPrivateRelayFooter";
    }

    v5 = [v7 localizedStringForKey:v9 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  }

  return v5;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v4 = [(WFDNSConfigViewController *)self sectionForSectionNumber:section];
  if (v4 == 2)
  {
    v5 = @"kWFLocSettingsDNSSectionHeader";
    goto LABEL_5;
  }

  if (v4 == 3)
  {
    v5 = @"kWFLocSettingsSearchDomainsSectionHeader";
LABEL_5:
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:v5 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
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

- (WFDNSConfigViewController)initWithConfig:(id)config appearanceProxy:(id)proxy
{
  v50 = *MEMORY[0x277D85DE8];
  configCopy = config;
  proxyCopy = proxy;
  v47.receiver = self;
  v47.super_class = WFDNSConfigViewController;
  v8 = -[WFDNSConfigViewController initWithStyle:](&v47, sel_initWithStyle_, [proxyCopy tableViewStyle]);
  v9 = v8;
  if (configCopy)
  {
    if (v8)
    {
      v8->_originalDNSConfig = [configCopy dnsConfig];
      v9->_dnsConfig = [configCopy dnsConfig];
      v9->_deviceCapability = WFCurrentDeviceCapability();
      if ([configCopy privacyProxyTierStatus] == 2)
      {
        privacyProxyEnabled = [configCopy privacyProxyEnabled];
      }

      else
      {
        privacyProxyEnabled = 0;
      }

      v9->_shouldShowPrivacyRelayHeader = privacyProxyEnabled;
      dnsServerAddresses = [configCopy dnsServerAddresses];
      originalServers = v9->_originalServers;
      v9->_originalServers = dnsServerAddresses;

      dnsServerAddresses2 = [configCopy dnsServerAddresses];
      v14 = [dnsServerAddresses2 mutableCopy];
      servers = v9->_servers;
      v9->_servers = v14;

      if (!v9->_servers)
      {
        array = [MEMORY[0x277CBEB18] array];
        v17 = v9->_servers;
        v9->_servers = array;
      }

      dnsSearchDomains = [configCopy dnsSearchDomains];
      originalDomains = v9->_originalDomains;
      v9->_originalDomains = dnsSearchDomains;

      dnsSearchDomains2 = [configCopy dnsSearchDomains];
      v21 = [dnsSearchDomains2 mutableCopy];
      domains = v9->_domains;
      v9->_domains = v21;

      if (!v9->_domains)
      {
        array2 = [MEMORY[0x277CBEB18] array];
        v24 = v9->_domains;
        v9->_domains = array2;
      }

      objc_storeStrong(&v9->_appearanceProxy, proxy);
      v25 = WFLogForCategory(0);
      v26 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && v25)
      {
        v27 = v25;
        if (os_log_type_enabled(v27, v26))
        {
          ssid = [configCopy ssid];
          *buf = 138412290;
          v49 = ssid;
          _os_log_impl(&dword_273FB9000, v27, v26, "show DNS config view controller for network='%@'", buf, 0xCu);
        }
      }

      v29 = WFLogForCategory(0);
      v30 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && v29 && os_log_type_enabled(v29, v30))
      {
        HIDWORD(v49) = HIDWORD(v9->_servers);
        OUTLINED_FUNCTION_0_1(&dword_273FB9000, v31, v32, "DNS servers='%@'", v33, v34, v35, v36, v47.receiver, v47.super_class, 2u);
      }

      p_super = WFLogForCategory(0);
      v38 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && p_super && os_log_type_enabled(p_super, v38))
      {
        HIDWORD(v49) = HIDWORD(v9->_domains);
        OUTLINED_FUNCTION_0_1(&dword_273FB9000, v39, v40, "DNS domains='%@'", v41, v42, v43, v44, v47.receiver, v47.super_class, 2u);
      }
    }

    else
    {
      p_super = 0;
    }
  }

  else
  {
    p_super = &v8->super.super.super.super.super;
    v9 = 0;
  }

  v45 = *MEMORY[0x277D85DE8];
  return v9;
}

@end