@interface WFDNSConfigViewController
- (BOOL)_isChinaDevice;
- (WFDNSConfigViewController)initWithConfig:(id)a3;
- (WFDNSConfigViewController)initWithConfig:(id)a3 appearanceProxy:(id)a4;
- (double)_configCellLeadingInset;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_addDomainAtIndexPath:(id)a3;
- (void)_addServerAtIndexPath:(id)a3;
- (void)_updateSaveEnabled;
- (void)save:(id)a3;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation WFDNSConfigViewController

- (WFDNSConfigViewController)initWithConfig:(id)a3
{
  v4 = a3;
  v5 = +[WFAppearanceProxy defaultAppearanceProxy];
  v6 = [(WFDNSConfigViewController *)self initWithConfig:v4 appearanceProxy:v5];

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

  v6 = [(WFDNSConfigViewController *)self saveButton];
  [v6 setEnabled:0];

  v7 = [(WFDNSConfigViewController *)self saveButton];
  v8 = [(WFDNSConfigViewController *)self navigationItem];
  [v8 setRightBarButtonItem:v7];

  v9 = MEMORY[0x277D757B0];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v9 nibWithNibName:@"WFTextFieldCell" bundle:v10];

  v12 = [(WFDNSConfigViewController *)self tableView];
  [v12 registerNib:v11 forCellReuseIdentifier:@"kWFTextFieldCellIdentifier"];

  v13 = [(WFDNSConfigViewController *)self tableView];
  [v13 setAllowsSelectionDuringEditing:1];

  v14 = *MEMORY[0x277D76F30];
  v15 = [(WFDNSConfigViewController *)self tableView];
  [v15 setRowHeight:v14];

  v16 = [(WFDNSConfigViewController *)self tableView];
  [v16 setEstimatedRowHeight:44.0];

  v17 = [(WFDNSConfigViewController *)self tableView];
  [v17 setEstimatedSectionHeaderHeight:0.0];

  v18 = [(WFDNSConfigViewController *)self tableView];
  [v18 setEstimatedSectionFooterHeight:0.0];

  if ([(WFDNSConfigViewController *)self dnsConfig]== 1)
  {
    [(WFDNSConfigViewController *)self setEditing:1];
  }

  if ([MEMORY[0x277D75418] currentIsIPad])
  {
    v19 = [(WFDNSConfigViewController *)self tableView];
    [v19 _setSectionContentInset:{0.0, 20.0, 0.0, 20.0}];
  }
}

- (void)save:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = [(WFDNSConfigViewController *)self saveHandler];

  if (v4)
  {
    v5 = [(WFDNSConfigViewController *)self servers];
    if ([v5 count])
    {
      v6 = [(WFDNSConfigViewController *)self servers];
      v7 = [v6 arrayAfterFilteringOutEmptyStrings];
    }

    else
    {
      v7 = 0;
    }

    v8 = [(WFDNSConfigViewController *)self domains];
    if ([v8 count])
    {
      v9 = [(WFDNSConfigViewController *)self domains];
      v10 = [v9 arrayAfterFilteringOutEmptyStrings];
    }

    else
    {
      v10 = 0;
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

    v19 = [(WFDNSConfigViewController *)self saveHandler];
    (v19)[2](v19, [(WFDNSConfigViewController *)self dnsConfig], v7, v10);
  }

  [(UIViewController *)self wf_popViewControllerAnimated:1];
  v20 = *MEMORY[0x277D85DE8];
}

- (void)_updateSaveEnabled
{
  v3 = [(WFDNSConfigViewController *)self originalServers];
  v4 = [(WFDNSConfigViewController *)self servers];
  if ([v3 isEqualToArray:v4] && (v5 = -[WFDNSConfigViewController dnsConfig](self, "dnsConfig"), v5 == -[WFDNSConfigViewController originalDNSConfig](self, "originalDNSConfig")))
  {
    v6 = [(WFDNSConfigViewController *)self originalDomains];
    v7 = [(WFDNSConfigViewController *)self domains];
    if ([v6 isEqualToArray:v7])
    {
      v8 = 0;
    }

    else
    {
      v9 = [(WFDNSConfigViewController *)self originalDomains];
      if (v9)
      {
        v8 = 1;
      }

      else
      {
        v10 = [(WFDNSConfigViewController *)self domains];
        v8 = [v10 count] != 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  v11 = [(WFDNSConfigViewController *)self saveButton];
  [v11 setEnabled:v8];
}

- (int64_t)numberOfSectionsInTableView:(id)a3
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

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = [(WFDNSConfigViewController *)self sectionForSectionNumber:a4];
  v7 = [(WFDNSConfigViewController *)self sectionNumberForSection:1];
  if (v6 == 3)
  {
    v9 = [(WFDNSConfigViewController *)self domains];
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

    v9 = [(WFDNSConfigViewController *)self servers];
  }

  v10 = v9;
  v8 = [v9 count];

LABEL_9:
  v11 = [(WFDNSConfigViewController *)self isEditing];
  if (v7 < a4)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  return v8 + v12;
}

- (BOOL)_isChinaDevice
{
  v2 = [(WFDNSConfigViewController *)self deviceCapability];

  return WFCapabilityIsChinaDevice(v2);
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 row];
  v9 = -[WFDNSConfigViewController sectionForSectionNumber:](self, "sectionForSectionNumber:", [v7 section]);
  switch(v9)
  {
    case 3:
      v23 = [(WFDNSConfigViewController *)self domains];
      if (v8 >= [v23 count])
      {
        v31 = [(WFDNSConfigViewController *)self isEditing];

        if (v31)
        {
          v10 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:0];
          [v10 setAccessoryType:0];
          [(WFDNSConfigViewController *)self _configCellLeadingInset];
          v33 = v32;
          [(WFDNSConfigViewController *)self _configCellTrailingInset];
          [v10 setLayoutMargins:{0.0, v33, 0.0, v34}];
          v35 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v36 = [v35 localizedStringForKey:@"kWFLocSettingsDNSAddSearchDomain" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
          v37 = [v10 textLabel];
          [v37 setText:v36];

          [v10 setSelectionStyle:1];
          [v10 setIndentationLevel:5];
          break;
        }
      }

      else
      {
      }

      v10 = [v6 dequeueReusableCellWithIdentifier:@"kWFTextFieldCellIdentifier" forIndexPath:v7];
      [v10 setHideLabel:1];
      [v10 setEditable:{-[WFDNSConfigViewController isEditing](self, "isEditing")}];
      v38 = [(WFDNSConfigViewController *)self domains];
      v39 = [v38 objectAtIndexedSubscript:v8];
      v40 = [v10 textField];
      [v40 setText:v39];

      v41 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v42 = [v41 localizedStringForKey:@"kWFLocSettingsDNSSearchDomainPlaceholder" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      v43 = [v10 textField];
      [v43 setPlaceholder:v42];

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
      v16 = [(WFDNSConfigViewController *)self servers];
      if (v8 >= [v16 count] && -[WFDNSConfigViewController isEditing](self, "isEditing"))
      {
        v10 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:0];
        [v10 setAccessoryType:0];
        v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v18 = [v17 localizedStringForKey:@"kWFLocSettingsDNSAddServer" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
        v19 = [v10 textLabel];
        [v19 setText:v18];

        [v10 setSelectionStyle:1];
        [(WFDNSConfigViewController *)self _configCellLeadingInset];
        v21 = v20;
        [(WFDNSConfigViewController *)self _configCellTrailingInset];
        [v10 setLayoutMargins:{0.0, v21, 0.0, v22}];
        [v10 setIndentationLevel:5];
      }

      else
      {
        v10 = [v6 dequeueReusableCellWithIdentifier:@"kWFTextFieldCellIdentifier" forIndexPath:v7];
        [v10 setHideLabel:1];
        [v10 setEditable:{-[WFDNSConfigViewController isEditing](self, "isEditing")}];
        v24 = [v16 objectAtIndexedSubscript:v8];
        v25 = [v10 textField];
        [v25 setText:v24];

        v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d.%d.%d.%d", 0, 0, 0, 0];
        v27 = [v10 textField];
        [v27 setPlaceholder:v26];

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
      if ([v7 row])
      {
        if ([v7 row] != 1)
        {
          break;
        }

        v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v12 = [v11 localizedStringForKey:@"kWFLocSettingsDNSConfigureManual" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
        v13 = [v10 textLabel];
        [v13 setText:v12];

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
        v49 = [v10 textLabel];
        [v49 setText:v48];

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

  v52 = [(WFDNSConfigViewController *)self appearanceProxy];
  v53 = [v52 cellTextLabelFont];

  if (v53)
  {
    v54 = [(WFDNSConfigViewController *)self appearanceProxy];
    v55 = [v54 cellTextLabelFont];
    v56 = [v10 textLabel];
    [v56 setFont:v55];
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

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v18[1] = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = -[WFDNSConfigViewController sectionForSectionNumber:](self, "sectionForSectionNumber:", [v7 section]);
  if (a4 != 2)
  {
    if (a4 != 1)
    {
      goto LABEL_17;
    }

    if (v8 == 3)
    {
      v9 = [(WFDNSConfigViewController *)self domains];
    }

    else
    {
      if (v8 != 2)
      {
LABEL_11:
        v11 = v7;
        v12 = [(WFDNSConfigViewController *)self tableView];
        v13 = [v12 numberOfRowsInSection:{objc_msgSend(v11, "section")}];

        if (v13 >= 1)
        {
          if ([v11 row] >= v13)
          {
            v14 = [MEMORY[0x277CCAA70] indexPathForRow:v13 - 1 inSection:{objc_msgSend(v11, "section")}];

            v11 = v14;
          }

          v15 = [(WFDNSConfigViewController *)self tableView];
          v18[0] = v11;
          v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
          [v15 deleteRowsAtIndexPaths:v16 withRowAnimation:100];

          [(WFDNSConfigViewController *)self _updateSaveEnabled];
        }

        goto LABEL_17;
      }

      v9 = [(WFDNSConfigViewController *)self servers];
    }

    v10 = v9;
    [v9 removeObjectAtIndex:{objc_msgSend(v7, "row")}];

    goto LABEL_11;
  }

  if (v8 == 3)
  {
    [(WFDNSConfigViewController *)self _addDomainAtIndexPath:v7];
  }

  else if (v8 == 2)
  {
    [(WFDNSConfigViewController *)self _addServerAtIndexPath:v7];
  }

LABEL_17:

  v17 = *MEMORY[0x277D85DE8];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v110 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [v6 deselectRowAtIndexPath:v7 animated:1];
  v8 = WFLogForCategory(0);
  v9 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v8)
  {
    v10 = v8;
    if (os_log_type_enabled(v10, v9))
    {
      *buf = 134218240;
      v107 = [v7 section];
      v108 = 2048;
      v109 = [v7 row];
      _os_log_impl(&dword_273FB9000, v10, v9, "tapped DNS config s=%ld r=%ld", buf, 0x16u);
    }
  }

  v11 = -[WFDNSConfigViewController sectionForSectionNumber:](self, "sectionForSectionNumber:", [v7 section]);
  v12 = [v7 row];
  v13 = [(WFDNSConfigViewController *)self sectionNumberForSection:1];
  v14 = [(WFDNSConfigViewController *)self sectionNumberForSection:2];
  v15 = [(WFDNSConfigViewController *)self sectionNumberForSection:3];
  if (v11 != 1)
  {
    v30 = [(WFDNSConfigViewController *)self servers];
    if (v12 >= [v30 count] && -[WFDNSConfigViewController isEditing](self, "isEditing"))
    {
      v31 = [v7 section];

      if (v31 == v14)
      {
        [(WFDNSConfigViewController *)self _addServerAtIndexPath:v7];
        goto LABEL_47;
      }
    }

    else
    {
    }

    v32 = [(WFDNSConfigViewController *)self domains];
    if (v12 >= [v32 count] && -[WFDNSConfigViewController isEditing](self, "isEditing"))
    {
      v33 = [v7 section];

      if (v33 == v15)
      {
        [(WFDNSConfigViewController *)self _addDomainAtIndexPath:v7];
        goto LABEL_47;
      }
    }

    else
    {
    }

    v34 = [v6 cellForRowAtIndexPath:v7];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v34 becomeFirstResponder];
    }

    goto LABEL_46;
  }

  if (v12 != [(WFDNSConfigViewController *)self dnsConfig])
  {
    v16 = [(WFDNSConfigViewController *)self tableView];
    [v16 beginUpdates];

    if (v12)
    {
      if ([v7 row] != 1)
      {
LABEL_45:
        [(WFDNSConfigViewController *)self _updateSaveEnabled];
        v34 = [(WFDNSConfigViewController *)self tableView];
        [v34 endUpdates];
LABEL_46:

        goto LABEL_47;
      }

      [(WFDNSConfigViewController *)self setDnsConfig:1];
      [(WFDNSConfigViewController *)self setEditing:1 animated:1];
      v17 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:v13];
      v18 = [v6 cellForRowAtIndexPath:v17];
      [v18 setAccessoryType:0];

      v19 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:v13];
      v20 = [v6 cellForRowAtIndexPath:v19];
      [v20 setEditingAccessoryType:0];

      v21 = [v6 cellForRowAtIndexPath:v7];
      [v21 setAccessoryType:3];

      v22 = [v6 cellForRowAtIndexPath:v7];
      [v22 setEditingAccessoryType:3];

      v23 = MEMORY[0x277CCAA70];
      v24 = [(WFDNSConfigViewController *)self servers];
      v25 = [v23 indexPathForRow:objc_msgSend(v24 inSection:{"count"), v14}];
      v26 = MEMORY[0x277CCAA70];
      v27 = [(WFDNSConfigViewController *)self domains];
      v28 = [v26 indexPathForRow:objc_msgSend(v27 inSection:{"count"), v15}];
      v100[1] = v28;
      v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v100 count:2];
      [v6 insertRowsAtIndexPaths:v29 withRowAnimation:100];
    }

    else
    {
      [(WFDNSConfigViewController *)self setDnsConfig:0];
      [(WFDNSConfigViewController *)self setEditing:0 animated:1];
      v35 = [(WFDNSConfigViewController *)self tableView];
      [v35 beginUpdates];

      v36 = [v6 cellForRowAtIndexPath:v7];
      [v36 setAccessoryType:3];

      v37 = [v6 cellForRowAtIndexPath:v7];
      [v37 setEditingAccessoryType:3];

      v38 = [MEMORY[0x277CCAA70] indexPathForRow:1 inSection:v13];
      v39 = [v6 cellForRowAtIndexPath:v38];
      [v39 setAccessoryType:0];

      v40 = [MEMORY[0x277CCAA70] indexPathForRow:1 inSection:v13];
      v41 = [v6 cellForRowAtIndexPath:v40];
      [v41 setEditingAccessoryType:0];

      v42 = MEMORY[0x277CCAA70];
      v43 = [(WFDNSConfigViewController *)self servers];
      v44 = [v42 indexPathForRow:objc_msgSend(v43 inSection:{"count"), v14}];
      v105[0] = v44;
      v45 = MEMORY[0x277CCAA70];
      v46 = [(WFDNSConfigViewController *)self domains];
      v47 = [v45 indexPathForRow:objc_msgSend(v46 inSection:{"count"), v15}];
      v105[1] = v47;
      v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v105 count:2];
      [v6 deleteRowsAtIndexPaths:v48 withRowAnimation:100];

      v49 = [(WFDNSConfigViewController *)self servers];
      v50 = [v49 count];
      v51 = [(WFDNSConfigViewController *)self originalServers];
      v52 = [v51 count];

      if (v50 <= v52)
      {
        v61 = [(WFDNSConfigViewController *)self servers];
        v62 = [v61 count];
        v63 = [(WFDNSConfigViewController *)self originalServers];
        v64 = [v63 count];

        if (v62 < v64)
        {
          v65 = [(WFDNSConfigViewController *)self servers];
          v66 = [v65 count];

          while (1)
          {
            v67 = [(WFDNSConfigViewController *)self originalServers];
            v68 = [v67 count];

            if (v66 >= v68)
            {
              break;
            }

            v69 = [MEMORY[0x277CCAA70] indexPathForRow:v66 inSection:v14];
            v103 = v69;
            v70 = [MEMORY[0x277CBEA60] arrayWithObjects:&v103 count:1];
            [v6 insertRowsAtIndexPaths:v70 withRowAnimation:0];

            ++v66;
          }
        }
      }

      else
      {
        v53 = [(WFDNSConfigViewController *)self originalServers];
        v54 = [v53 count];

        v55 = [(WFDNSConfigViewController *)self servers];
        v56 = [v55 count];

        if (v54 < v56)
        {
          do
          {
            v57 = [MEMORY[0x277CCAA70] indexPathForRow:v54 inSection:v14];
            v104 = v57;
            v58 = [MEMORY[0x277CBEA60] arrayWithObjects:&v104 count:1];
            [v6 deleteRowsAtIndexPaths:v58 withRowAnimation:0];

            ++v54;
            v59 = [(WFDNSConfigViewController *)self servers];
            v60 = [v59 count];
          }

          while (v54 < v60);
        }
      }

      v71 = [(WFDNSConfigViewController *)self domains];
      v72 = [v71 count];
      v73 = [(WFDNSConfigViewController *)self originalDomains];
      v74 = [v73 count];

      if (v72 <= v74)
      {
        v81 = [(WFDNSConfigViewController *)self domains];
        v82 = [v81 count];
        v83 = [(WFDNSConfigViewController *)self originalDomains];
        v84 = [v83 count];

        if (v82 < v84)
        {
          v85 = [(WFDNSConfigViewController *)self domains];
          v86 = [v85 count];

          while (1)
          {
            v87 = [(WFDNSConfigViewController *)self originalDomains];
            v88 = [v87 count];

            if (v86 >= v88)
            {
              break;
            }

            v89 = [MEMORY[0x277CCAA70] indexPathForRow:v86 inSection:v15];
            v101 = v89;
            v90 = [MEMORY[0x277CBEA60] arrayWithObjects:&v101 count:1];
            [v6 insertRowsAtIndexPaths:v90 withRowAnimation:0];

            ++v86;
          }
        }
      }

      else
      {
        v75 = [(WFDNSConfigViewController *)self originalDomains];
        v76 = [v75 count];

        while (1)
        {
          v77 = [(WFDNSConfigViewController *)self domains];
          v78 = [v77 count];

          if (v76 >= v78)
          {
            break;
          }

          v79 = [MEMORY[0x277CCAA70] indexPathForRow:v76 inSection:v15];
          v102 = v79;
          v80 = [MEMORY[0x277CBEA60] arrayWithObjects:&v102 count:1];
          [v6 deleteRowsAtIndexPaths:v80 withRowAnimation:0];

          ++v76;
        }
      }

      v91 = [(WFDNSConfigViewController *)self originalServers];
      v92 = [v91 mutableCopy];
      [(WFDNSConfigViewController *)self setServers:v92];

      v93 = [(WFDNSConfigViewController *)self servers];

      if (!v93)
      {
        v94 = [MEMORY[0x277CBEB18] array];
        [(WFDNSConfigViewController *)self setServers:v94];
      }

      v95 = [(WFDNSConfigViewController *)self originalDomains];
      v96 = [v95 mutableCopy];
      [(WFDNSConfigViewController *)self setDomains:v96];

      v97 = [(WFDNSConfigViewController *)self domains];

      if (!v97)
      {
        v98 = [MEMORY[0x277CBEB18] array];
        [(WFDNSConfigViewController *)self setDomains:v98];
      }

      v24 = [(WFDNSConfigViewController *)self tableView];
      [v24 endUpdates];
    }

    goto LABEL_45;
  }

LABEL_47:

  v99 = *MEMORY[0x277D85DE8];
}

- (void)_addServerAtIndexPath:(id)a3
{
  v18[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WFDNSConfigViewController *)self servers];
  v6 = [v5 lastObject];
  v7 = [v6 isEqualToString:&stru_288308678];

  if (v7)
  {
    v17 = [MEMORY[0x277CCAA70] indexPathForRow:objc_msgSend(v4 inSection:{"row") - 1, objc_msgSend(v4, "section")}];

    v8 = [(WFDNSConfigViewController *)self tableView];
    v9 = [v8 cellForRowAtIndexPath:v17];

    if (v9)
    {
      [v9 becomeFirstResponder];
    }

    v10 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v11 = [(WFDNSConfigViewController *)self servers];
    [v11 addObject:&stru_288308678];

    v12 = [(WFDNSConfigViewController *)self tableView];
    v18[0] = v4;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
    [v12 insertRowsAtIndexPaths:v13 withRowAnimation:100];

    [(WFDNSConfigViewController *)self _updateSaveEnabled];
    v14 = [(WFDNSConfigViewController *)self tableView];
    v15 = [v14 cellForRowAtIndexPath:v4];

    [v15 becomeFirstResponder];
    v16 = *MEMORY[0x277D85DE8];
  }
}

- (void)_addDomainAtIndexPath:(id)a3
{
  v18[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WFDNSConfigViewController *)self domains];
  v6 = [v5 lastObject];
  v7 = [v6 isEqualToString:&stru_288308678];

  if (v7)
  {
    v17 = [MEMORY[0x277CCAA70] indexPathForRow:objc_msgSend(v4 inSection:{"row") - 1, objc_msgSend(v4, "section")}];

    v8 = [(WFDNSConfigViewController *)self tableView];
    v9 = [v8 cellForRowAtIndexPath:v17];

    [v9 becomeFirstResponder];
    v10 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v11 = [(WFDNSConfigViewController *)self domains];
    [v11 addObject:&stru_288308678];

    v12 = [(WFDNSConfigViewController *)self tableView];
    v18[0] = v4;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
    [v12 insertRowsAtIndexPaths:v13 withRowAnimation:100];

    [(WFDNSConfigViewController *)self _updateSaveEnabled];
    v14 = [(WFDNSConfigViewController *)self tableView];
    v15 = [v14 cellForRowAtIndexPath:v4];

    [v15 becomeFirstResponder];
    v16 = *MEMORY[0x277D85DE8];
  }
}

- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = -[WFDNSConfigViewController sectionForSectionNumber:](self, "sectionForSectionNumber:", [v5 section]);
  if (v6 == 1 || (v7 = v6, ![(WFDNSConfigViewController *)self isEditing]))
  {
    v11 = 0;
  }

  else if (v7 == 3)
  {
    v13 = [v5 row];
    v14 = [(WFDNSConfigViewController *)self domains];
    v15 = [v14 count];

    if (v13 < v15)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }
  }

  else if (v7 == 2 && (v8 = [v5 row], -[WFDNSConfigViewController servers](self, "servers"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "count"), v9, v8 >= v10))
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  if ([(WFDNSConfigViewController *)self sectionForSectionNumber:a4])
  {
    v5 = 0;
  }

  else
  {
    v6 = [(WFDNSConfigViewController *)self _isChinaDevice];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = v7;
    if (v6)
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

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v4 = [(WFDNSConfigViewController *)self sectionForSectionNumber:a4];
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

- (WFDNSConfigViewController)initWithConfig:(id)a3 appearanceProxy:(id)a4
{
  v50 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v47.receiver = self;
  v47.super_class = WFDNSConfigViewController;
  v8 = -[WFDNSConfigViewController initWithStyle:](&v47, sel_initWithStyle_, [v7 tableViewStyle]);
  v9 = v8;
  if (v6)
  {
    if (v8)
    {
      v8->_originalDNSConfig = [v6 dnsConfig];
      v9->_dnsConfig = [v6 dnsConfig];
      v9->_deviceCapability = WFCurrentDeviceCapability();
      if ([v6 privacyProxyTierStatus] == 2)
      {
        v10 = [v6 privacyProxyEnabled];
      }

      else
      {
        v10 = 0;
      }

      v9->_shouldShowPrivacyRelayHeader = v10;
      v11 = [v6 dnsServerAddresses];
      originalServers = v9->_originalServers;
      v9->_originalServers = v11;

      v13 = [v6 dnsServerAddresses];
      v14 = [v13 mutableCopy];
      servers = v9->_servers;
      v9->_servers = v14;

      if (!v9->_servers)
      {
        v16 = [MEMORY[0x277CBEB18] array];
        v17 = v9->_servers;
        v9->_servers = v16;
      }

      v18 = [v6 dnsSearchDomains];
      originalDomains = v9->_originalDomains;
      v9->_originalDomains = v18;

      v20 = [v6 dnsSearchDomains];
      v21 = [v20 mutableCopy];
      domains = v9->_domains;
      v9->_domains = v21;

      if (!v9->_domains)
      {
        v23 = [MEMORY[0x277CBEB18] array];
        v24 = v9->_domains;
        v9->_domains = v23;
      }

      objc_storeStrong(&v9->_appearanceProxy, a4);
      v25 = WFLogForCategory(0);
      v26 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && v25)
      {
        v27 = v25;
        if (os_log_type_enabled(v27, v26))
        {
          v28 = [v6 ssid];
          *buf = 138412290;
          v49 = v28;
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