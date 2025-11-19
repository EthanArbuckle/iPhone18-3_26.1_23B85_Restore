@interface WFDiagnosticsViewController
- (WFDiagnosticsViewController)initWithNANUI:(BOOL)a3;
- (id)_defaultSections;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (void)setSaving:(BOOL)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation WFDiagnosticsViewController

- (WFDiagnosticsViewController)initWithNANUI:(BOOL)a3
{
  v4 = [(WFDiagnosticsViewController *)self initWithStyle:1];
  v4->_showNANUI = a3;
  v5 = MEMORY[0x277CBEB70];
  v6 = [(WFDiagnosticsViewController *)v4 _defaultSections];
  v7 = [v5 orderedSetWithArray:v6];
  sections = v4->_sections;
  v4->_sections = v7;

  return v4;
}

- (void)viewDidLoad
{
  v15.receiver = self;
  v15.super_class = WFDiagnosticsViewController;
  [(WFDiagnosticsViewController *)&v15 viewDidLoad];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"kWFLocWiFiDiagnosticsTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  [(WFDiagnosticsViewController *)self setTitle:v4];

  v5 = MEMORY[0x277D757B0];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v5 nibWithNibName:@"WFTextFieldCell" bundle:v6];

  v8 = [(WFDiagnosticsViewController *)self tableView];
  [v8 registerNib:v7 forCellReuseIdentifier:@"kWFTextFieldCellIdentifier"];

  v9 = [(WFDiagnosticsViewController *)self tableView];
  [v9 setCellLayoutMarginsFollowReadableWidth:0];

  v10 = *MEMORY[0x277D76F30];
  v11 = [(WFDiagnosticsViewController *)self tableView];
  [v11 setRowHeight:v10];

  v12 = [(WFDiagnosticsViewController *)self tableView];
  [v12 setEstimatedRowHeight:44.0];

  v13 = [(WFDiagnosticsViewController *)self tableView];
  [v13 setEstimatedSectionHeaderHeight:0.0];

  v14 = [(WFDiagnosticsViewController *)self tableView];
  [v14 setEstimatedSectionFooterHeight:0.0];
}

- (void)setSaving:(BOOL)a3
{
  v7[1] = *MEMORY[0x277D85DE8];
  self->_saving = a3;
  v3 = [(WFDiagnosticsViewController *)self tableView];
  v4 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:1];
  v7[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [v3 reloadRowsAtIndexPaths:v5 withRowAnimation:100];

  v6 = *MEMORY[0x277D85DE8];
}

- (id)_defaultSections
{
  if ([(WFDiagnosticsViewController *)self showNANUI])
  {
    return &unk_288322B70;
  }

  else
  {
    return &unk_288322B88;
  }
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(WFDiagnosticsViewController *)self sections];
  v4 = [v3 count];

  return v4;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WFDiagnosticsViewController *)self sections];
  v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v7, "section")}];
  v10 = [v9 unsignedIntegerValue];

  switch(v10)
  {
    case 2:
      if (![(WFDiagnosticsViewController *)self showNANUI])
      {
LABEL_15:
        v11 = 0;
        goto LABEL_19;
      }

      v25 = WFCurrentDeviceCapability();
      IsChinaDevice = WFCapabilityIsChinaDevice(v25);
      v11 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:0];
      v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v28 = v27;
      if (IsChinaDevice)
      {
        v29 = @"kWFLocDiagnosticsNAN_CH";
      }

      else
      {
        v29 = @"kWFLocDiagnosticsNAN";
      }

      v30 = [v27 localizedStringForKey:v29 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      v31 = [v11 textLabel];
      [v31 setText:v30];

      [v11 setAccessoryType:1];
      v32 = v11;
      v33 = 1;
      break;
    case 1:
      v11 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:0];
      v19 = [(WFDiagnosticsViewController *)self saving];
      v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v21 = v20;
      if (v19)
      {
        v22 = @"kWFLocDiagnosticsSavingInProgressTitle";
      }

      else
      {
        v22 = @"kWFLocDiagnosticsSaveLogTitle";
      }

      v23 = [v20 localizedStringForKey:v22 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      v24 = [v11 textLabel];
      [v24 setText:v23];

      if ([(WFDiagnosticsViewController *)self saving])
      {
        [MEMORY[0x277D75348] systemGrayColor];
      }

      else
      {
        [MEMORY[0x277D75348] systemBlueColor];
      }
      v34 = ;
      v35 = [v11 textLabel];
      [v35 setTextColor:v34];

      v33 = [(WFDiagnosticsViewController *)self saving]^ 1;
      v32 = v11;
      break;
    case 0:
      v11 = [v6 dequeueReusableCellWithIdentifier:@"kWFTextFieldCellIdentifier" forIndexPath:v7];
      v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v13 = [v12 localizedStringForKey:@"kWFLocDiagnosticsCommentTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      v14 = [v11 label];
      [v14 setText:v13];

      v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v16 = [v15 localizedStringForKey:@"kWFLocDiagnosticsCommentPlaceholder" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      v17 = [v11 textField];
      [v17 setPlaceholder:v16];

      v18 = [v11 textField];
      [v18 setTextAlignment:0];

      objc_initWeak(&location, self);
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __63__WFDiagnosticsViewController_tableView_cellForRowAtIndexPath___block_invoke;
      v37[3] = &unk_279EC5418;
      objc_copyWeak(&v38, &location);
      [v11 setTextChangeHandler:v37];
      objc_destroyWeak(&v38);
      objc_destroyWeak(&location);
      goto LABEL_19;
    default:
      goto LABEL_15;
  }

  [v32 setSelectionStyle:v33];
LABEL_19:

  return v11;
}

void __63__WFDiagnosticsViewController_tableView_cellForRowAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setComment:v3];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(WFDiagnosticsViewController *)self sections];
  v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v7, "section")}];
  v10 = [v9 unsignedIntegerValue];

  if (v10 == 2)
  {
    v17 = WFLogForCategory(0);
    v18 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v17 && os_log_type_enabled(v17, v18))
    {
      v23 = 136315138;
      v24 = "[WFDiagnosticsViewController tableView:didSelectRowAtIndexPath:]";
      _os_log_impl(&dword_273FB9000, v17, v18, "%s: tapped on NAN row", &v23, 0xCu);
    }

    v19 = objc_alloc_init(WFNANTableViewController);
    [(UIViewController *)self wf_pushViewController:v19 animated:1];
    goto LABEL_21;
  }

  if (!v10 && ![(WFDiagnosticsViewController *)self saving])
  {
    v11 = WFLogForCategory(0);
    v12 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v11)
    {
      v13 = v11;
      if (os_log_type_enabled(v13, v12))
      {
        v14 = [(WFDiagnosticsViewController *)self comment];
        v15 = [v14 length];
        if (v15)
        {
          v16 = [(WFDiagnosticsViewController *)self comment];
        }

        else
        {
          v16 = @"<nil>";
        }

        v23 = 138412290;
        v24 = v16;
        _os_log_impl(&dword_273FB9000, v13, v12, "Saving logs with comment %@", &v23, 0xCu);
        if (v15)
        {
        }
      }
    }

    v20 = [(WFDiagnosticsViewController *)self saveHandler];

    if (v20)
    {
      v19 = [(WFDiagnosticsViewController *)self saveHandler];
      v21 = [(WFDiagnosticsViewController *)self comment];
      (v19->super.super.super._overrideTransitioningDelegate)(v19, v21);

LABEL_21:
    }
  }

  [v6 deselectRowAtIndexPath:v7 animated:1];

  v22 = *MEMORY[0x277D85DE8];
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v5 = [(WFDiagnosticsViewController *)self sections];
  v6 = [v5 objectAtIndexedSubscript:a4];
  v7 = [v6 unsignedIntegerValue];

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v9 localizedStringForKey:@"kWFLocDiagnosticsCommentFooter" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  }

  return v8;
}

@end