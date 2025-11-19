@interface WFDiagnosticsTableViewController
- (WFDiagnosticsTableViewController)initWithDiagnosticsContext:(id)a3 detailsProviderContext:(id)a4;
- (WFDiagnosticsTableViewController)initWithDiagnosticsContext:(id)a3 detailsProviderContext:(id)a4 appearanceProxy:(id)a5;
- (WFHyperlinkFooterView)linkFooterView;
- (WFHyperlinkFooterView)networkQualityFooterView;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_fillNetworkQualityCell:(id)a3;
- (void)_networkQualityOpenURL;
- (void)_openNetworkQualityDetails:(id)a3;
- (void)_refresh;
- (void)_reloadNetworkQualityCell;
- (void)_runNetworkQuality;
- (void)_updateNetworkQualityFooterText;
- (void)donePressed;
- (void)viewDidLoad;
@end

@implementation WFDiagnosticsTableViewController

- (WFDiagnosticsTableViewController)initWithDiagnosticsContext:(id)a3 detailsProviderContext:(id)a4
{
  v6 = MEMORY[0x277D7B980];
  v7 = a4;
  v8 = a3;
  v9 = [v6 defaultAppearanceProxy];
  v10 = [(WFDiagnosticsTableViewController *)self initWithDiagnosticsContext:v8 detailsProviderContext:v7 appearanceProxy:v9];

  return v10;
}

- (WFDiagnosticsTableViewController)initWithDiagnosticsContext:(id)a3 detailsProviderContext:(id)a4 appearanceProxy:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v25.receiver = self;
  v25.super_class = WFDiagnosticsTableViewController;
  v12 = -[WFDiagnosticsTableViewController initWithStyle:](&v25, sel_initWithStyle_, [v11 tableViewStyle]);
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_context, a3);
    objc_storeStrong(&v13->_detailsContext, a4);
    objc_initWeak(&location, v13);
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __102__WFDiagnosticsTableViewController_initWithDiagnosticsContext_detailsProviderContext_appearanceProxy___block_invoke;
    v22 = &unk_279EBCEA0;
    objc_copyWeak(&v23, &location);
    [(WFDiagnosticsProviderContext *)v13->_context setRefreshHandler:&v19];
    v14 = MEMORY[0x277CBEB70];
    v15 = [(WFDiagnosticsTableViewController *)v13 _defaultSections:v19];
    v16 = [v14 orderedSetWithArray:v15];
    sections = v13->_sections;
    v13->_sections = v16;

    objc_storeStrong(&v13->_appearanceProxy, a5);
    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  return v13;
}

void __102__WFDiagnosticsTableViewController_initWithDiagnosticsContext_detailsProviderContext_appearanceProxy___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _refresh];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = WFDiagnosticsTableViewController;
  [(WFDiagnosticsTableViewController *)&v6 viewDidLoad];
  [(WFDiagnosticsTableViewController *)self setTitle:@"Diagnostics"];
  v3 = [WFNetworkSettingsCellFactory alloc];
  v4 = [(WFDiagnosticsTableViewController *)self tableView];
  v5 = [(WFNetworkSettingsCellFactory *)v3 initWithTableView:v4];
  [(WFDiagnosticsTableViewController *)self setCellFactory:v5];
}

- (void)_refresh
{
  v2 = [(WFDiagnosticsTableViewController *)self tableView];
  [v2 reloadData];
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(WFDiagnosticsTableViewController *)self sections];
  v4 = [v3 count];

  return v4;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(WFDiagnosticsTableViewController *)self sections];
  v6 = [v5 objectAtIndexedSubscript:a4];
  v7 = [v6 unsignedIntegerValue];

  if (v7 > 5)
  {
    return 0;
  }

  else
  {
    return qword_273F75CE0[v7];
  }
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v5 = [(WFDiagnosticsTableViewController *)self sections];
  v6 = [v5 objectAtIndexedSubscript:a4];
  v7 = [v6 unsignedIntegerValue];

  if ((v7 - 3) > 2)
  {
    v10 = 0;
  }

  else
  {
    v8 = off_279EBE710[v7 - 3];
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:v8 value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
  }

  return v10;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v6 = [(WFDiagnosticsTableViewController *)self sections];
  v7 = [v6 objectAtIndexedSubscript:a4];
  v8 = [v7 unsignedIntegerValue];

  switch(v8)
  {
    case 5:
      v9 = [(WFDiagnosticsTableViewController *)self context];
      v10 = [v9 coexFooter];
      goto LABEL_7;
    case 3:
      v9 = [(WFDiagnosticsTableViewController *)self context];
      v10 = [v9 probeFooter];
      goto LABEL_7;
    case 1:
      v9 = [(WFDiagnosticsTableViewController *)self context];
      v10 = [v9 cca];
LABEL_7:
      v11 = v10;

      goto LABEL_9;
  }

  v11 = 0;
LABEL_9:

  return v11;
}

- (WFHyperlinkFooterView)networkQualityFooterView
{
  v31 = *MEMORY[0x277D85DE8];
  if (self->_networkQualityFooterView)
  {
    v3 = [(WFDiagnosticsTableViewController *)self context];
    v4 = [v3 networkQualityDate];
    if (!v4)
    {

      goto LABEL_16;
    }

    v5 = v4;
    if (self->_networkQualityFooterDate)
    {
      v6 = [(WFDiagnosticsTableViewController *)self context];
      v7 = [v6 networkQualityDate];
      v8 = [v7 isEqual:self->_networkQualityFooterDate];

      if (v8)
      {
        goto LABEL_16;
      }
    }

    else
    {
    }
  }

  v9 = WFLogForCategory(0);
  v10 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v9)
  {
    v11 = v9;
    if (os_log_type_enabled(v11, v10))
    {
      v12 = [(WFDiagnosticsTableViewController *)self context];
      v13 = [v12 networkQualityDate];
      v14 = [(WFDiagnosticsTableViewController *)self context];
      [v14 networkQualityResponsiveness];
      networkQualityFooterView = self->_networkQualityFooterView;
      v17 = "YES";
      networkQualityFooterDate = self->_networkQualityFooterDate;
      *&v24[4] = "[WFDiagnosticsTableViewController networkQualityFooterView]";
      *v24 = 136316162;
      *&v24[12] = 2112;
      if (!networkQualityFooterView)
      {
        v17 = "NO";
      }

      *&v24[14] = v13;
      v25 = 2048;
      v26 = v15;
      v27 = 2080;
      v28 = v17;
      v29 = 2112;
      v30 = networkQualityFooterDate;
      _os_log_impl(&dword_273ECD000, v11, v10, "NetQuality: %s: Date is %@, responsiveness %.3f, existing view? %s existing date? %@", v24, 0x34u);
    }
  }

  v19 = objc_alloc_init(WFHyperlinkFooterView);
  v20 = self->_networkQualityFooterView;
  self->_networkQualityFooterView = v19;

LABEL_16:
  [(WFDiagnosticsTableViewController *)self _updateNetworkQualityFooterText];
  v21 = self->_networkQualityFooterView;
  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (void)_networkQualityOpenURL
{
  v6 = [MEMORY[0x277D75128] sharedApplication];
  v2 = MEMORY[0x277CBEBC0];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"kWFLocNetworkQualityKBURL" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
  v5 = [v2 URLWithString:v4];
  [v6 openURL:v5 options:MEMORY[0x277CBEC10] completionHandler:0];
}

- (void)_openNetworkQualityDetails:(id)a3
{
  v4 = objc_alloc(MEMORY[0x277D37688]);
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"kWFLocNetworkQualityLearnMoreTitle" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
  v29 = [v4 initWithTitle:v6 detailText:0 symbolName:0 contentLayout:2];

  WFCurrentDeviceCapability();
  LODWORD(v5) = WFCapabilityIsChinaDevice();
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"kWFLocNetworkQualityLearnMoreSection1Title" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = v9;
  if (v5)
  {
    v11 = @"kWFLocNetworkQualityLearnMoreSection1TextCH";
  }

  else
  {
    v11 = @"kWFLocNetworkQualityLearnMoreSection1Text";
  }

  v12 = [v9 localizedStringForKey:v11 value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
  [v29 addSectionWithHeader:v8 content:v12];

  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"kWFLocNetworkQualityLearnMoreSection2Title" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
  v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"kWFLocNetworkQualityLearnMoreSection2Text" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
  [v29 addSectionWithHeader:v14 content:v16];

  v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v18 = [v17 localizedStringForKey:@"kWFLocNetworkQualityLearnMoreSection3Title" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
  v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v20 = [v19 localizedStringForKey:@"kWFLocNetworkQualityLearnMoreSection3Text" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
  [v29 addSectionWithHeader:v18 content:v20];

  v21 = [MEMORY[0x277D37680] accessoryButton];
  v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v23 = [v22 localizedStringForKey:@"kWFLocNetworkQualityKBURL" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
  [v21 setTitle:v23 forState:0];

  [v21 addTarget:self action:sel__networkQualityOpenURL forControlEvents:64];
  v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v25 = [v24 localizedStringForKey:@"kWFLocNetworkQualityLearnMoreSection4Text" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
  [v29 addSectionWithHeader:0 content:v25 accessoryButton:v21];

  v26 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_donePressed];
  v27 = [v29 navigationItem];
  [v27 setRightBarButtonItem:v26];

  v28 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v29];
  [(WFDiagnosticsTableViewController *)self presentViewController:v28 animated:1 completion:0];
}

- (void)donePressed
{
  v2 = [(WFDiagnosticsTableViewController *)self presentedViewController];
  [v2 dismissViewControllerAnimated:1 completion:0];
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v6 = [(WFDiagnosticsTableViewController *)self sections];
  v7 = [v6 objectAtIndexedSubscript:a4];
  v8 = [v7 unsignedIntegerValue];

  if (v8 == 3)
  {
    v9 = [(WFDiagnosticsTableViewController *)self networkQualityFooterView];
  }

  else if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = [(WFDiagnosticsTableViewController *)self linkFooterView];
  }

  return v9;
}

- (WFHyperlinkFooterView)linkFooterView
{
  linkFooterView = self->_linkFooterView;
  if (!linkFooterView)
  {
    v4 = objc_alloc_init(WFHyperlinkFooterView);
    v5 = self->_linkFooterView;
    self->_linkFooterView = v4;

    [(WFHyperlinkFooterView *)self->_linkFooterView setText:@"File a radar here."];
    -[WFHyperlinkFooterView setLinkRange:](self->_linkFooterView, "setLinkRange:", 0, [@"File a radar here." length]);
    [(WFHyperlinkFooterView *)self->_linkFooterView setTarget:self];
    linkFooterView = self->_linkFooterView;
  }

  return linkFooterView;
}

- (void)_reloadNetworkQualityCell
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = [(WFDiagnosticsTableViewController *)self sections];
  v4 = [v3 indexOfObject:&unk_288304E40];

  v5 = [(WFDiagnosticsTableViewController *)self tableView];
  v6 = [MEMORY[0x277CCAA70] indexPathForRow:2 inSection:v4];
  v9[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  [v5 reloadRowsAtIndexPaths:v7 withRowAnimation:5];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_updateNetworkQualityFooterText
{
  v3 = [(WFDiagnosticsTableViewController *)self context];
  v4 = [v3 networkQualityDate];

  if (v4)
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v22 = [v5 localizedStringForKey:@"kWFLocNetworkQualityFooterKnown" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];

    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"kWFLocNetworkQualityFooterLink" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];

    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"kWFLocNetworkQualityFooterLastChecked" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];

    v10 = objc_opt_new();
    [v10 setDateStyle:1];
    [v10 setTimeStyle:1];
    [v10 setDoesRelativeDateFormatting:1];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v22, v7];
    v12 = MEMORY[0x277CCACA8];
    v13 = [(WFDiagnosticsTableViewController *)self context];
    v14 = [v13 networkQualityDate];
    v15 = [v10 stringFromDate:v14];
    v16 = [v12 stringWithFormat:@"%@\n%@ %@", v11, v9, v15];

    v17 = [(WFDiagnosticsTableViewController *)self context];
    v18 = [v17 networkQualityDate];
    v19 = [v18 copy];
    networkQualityFooterDate = self->_networkQualityFooterDate;
    self->_networkQualityFooterDate = v19;

    [(WFHyperlinkFooterView *)self->_networkQualityFooterView setText:v16];
    -[WFHyperlinkFooterView setLinkRange:](self->_networkQualityFooterView, "setLinkRange:", [v11 length] - objc_msgSend(v7, "length"), objc_msgSend(v7, "length"));
    [(WFHyperlinkFooterView *)self->_networkQualityFooterView setTarget:self];
    [(WFHyperlinkFooterView *)self->_networkQualityFooterView setAction:sel__openNetworkQualityDetails_];
  }

  else
  {
    networkQualityFooterView = self->_networkQualityFooterView;

    [(WFHyperlinkFooterView *)networkQualityFooterView setText:0];
  }
}

- (void)_runNetworkQuality
{
  v20 = *MEMORY[0x277D85DE8];
  if (![(WFDiagnosticsTableViewController *)self networkQualitySpinning])
  {
    v3 = WFLogForCategory(0);
    v4 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v3 && os_log_type_enabled(v3, v4))
    {
      *buf = 136315138;
      v19 = "[WFDiagnosticsTableViewController _runNetworkQuality]";
      _os_log_impl(&dword_273ECD000, v3, v4, "NetQuality: %s: User scheduled a run", buf, 0xCu);
    }

    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"kWFLocSettingNetworkQualityAlertTitle" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];

    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"kWFLocSettingNetworkQualityAlertText" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];

    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"kWFLocSettingNetworkQualityAlertContinue" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];

    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"kWFLocSettingNetworkQualityAlertCancel" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];

    v13 = [MEMORY[0x277D75110] alertControllerWithTitle:v6 message:v8 preferredStyle:1];
    v14 = [MEMORY[0x277D750F8] actionWithTitle:v12 style:1 handler:&__block_literal_global_9];
    [v13 addAction:v14];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __54__WFDiagnosticsTableViewController__runNetworkQuality__block_invoke_113;
    v17[3] = &unk_279EBE6F0;
    v17[4] = self;
    v15 = [MEMORY[0x277D750F8] actionWithTitle:v10 style:0 handler:v17];
    [v13 addAction:v15];
    [v13 setPreferredAction:v15];
    [v13 setPreferredAction:v15];
    [(WFDiagnosticsTableViewController *)self presentViewController:v13 animated:1 completion:0];
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __54__WFDiagnosticsTableViewController__runNetworkQuality__block_invoke()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = WFLogForCategory(0);
  v1 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v0 && os_log_type_enabled(v0, v1))
  {
    v3 = 136315138;
    v4 = "[WFDiagnosticsTableViewController _runNetworkQuality]_block_invoke";
    _os_log_impl(&dword_273ECD000, v0, v1, "NetQuality: %s: User canceled test-run", &v3, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

void __54__WFDiagnosticsTableViewController__runNetworkQuality__block_invoke_113(uint64_t a1)
{
  [*(a1 + 32) setNetworkQualitySpinning:1];
  [*(a1 + 32) _reloadNetworkQualityCell];
  v2 = [*(a1 + 32) detailsContext];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __54__WFDiagnosticsTableViewController__runNetworkQuality__block_invoke_2;
  v3[3] = &unk_279EBE6C8;
  v3[4] = *(a1 + 32);
  [v2 runNetworkQualityWithCompletionHandler:v3];
}

void __54__WFDiagnosticsTableViewController__runNetworkQuality__block_invoke_2(uint64_t a1, int a2, void *a3, double a4)
{
  v4 = a2;
  if (a2)
  {
    v7 = *(a1 + 32);
    v8 = a3;
    v9 = [v7 context];
    [v9 setNetworkQualityResponsiveness:a4];

    v10 = [*(a1 + 32) context];
    [v10 setNetworkQualityDate:v8];
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __54__WFDiagnosticsTableViewController__runNetworkQuality__block_invoke_3;
  v11[3] = &unk_279EBDF00;
  v12 = v4;
  v11[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], v11);
}

uint64_t __54__WFDiagnosticsTableViewController__runNetworkQuality__block_invoke_3(uint64_t a1)
{
  if ((*(a1 + 40) & 1) == 0 && [*(a1 + 32) networkQualitySpinning])
  {
    v2 = *(a1 + 32);
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = [v3 localizedStringForKey:@"kWFLocSettingNetworkQualityFailureTitle" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];

    v5 = *(a1 + 32);
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"kWFLocSettingNetworkQualityFailureText" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];

    v8 = *(a1 + 32);
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"kWFLocSettingNetworkQualityFailureOK" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];

    v11 = [MEMORY[0x277D75110] alertControllerWithTitle:v4 message:v7 preferredStyle:1];
    v12 = [MEMORY[0x277D750F8] actionWithTitle:v10 style:0 handler:0];
    [v11 addAction:v12];
    [v11 setPreferredAction:v12];
    [*(a1 + 32) presentViewController:v11 animated:1 completion:0];
  }

  [*(a1 + 32) setNetworkQualitySpinning:0];
  [*(a1 + 32) _updateNetworkQualityFooterText];
  v13 = *(a1 + 32);

  return [v13 _reloadNetworkQualityCell];
}

- (void)_fillNetworkQualityCell:(id)a3
{
  v4 = a3;
  if ([(WFDiagnosticsTableViewController *)self networkQualitySpinning])
  {
    v25 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    [v4 setAccessoryView:v25];

    [v25 startAnimating];
  }

  else
  {
    v5 = [(WFDiagnosticsTableViewController *)self context];
    [v5 networkQualityResponsiveness];
    v7 = v6;

    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = v8;
    if (v7 == 0.0)
    {
      v25 = [v8 localizedStringForKey:@"kWFLocSettingNetworkQualityNoData" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
      v10 = v9;
    }

    else
    {
      v10 = [v8 localizedStringForKey:@"kWFLocSettingNetworkQualityRPM" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];

      v11 = MEMORY[0x277D2C9B8];
      v12 = [(WFDiagnosticsTableViewController *)self context];
      [v12 networkQualityResponsiveness];
      v14 = [v11 ratingForResponsivenessScore:v13];

      if (v14 > 2)
      {
        v17 = 0;
      }

      else
      {
        v15 = off_279EBE728[v14];
        v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v17 = [v16 localizedStringForKey:v15 value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
      }

      v18 = MEMORY[0x277CCACA8];
      v19 = [(WFDiagnosticsTableViewController *)self context];
      [v19 networkQualityResponsiveness];
      v25 = [v18 stringWithFormat:@"%@ (%u %@)", v17, v20, v10];
    }

    v21 = [MEMORY[0x277D75220] buttonWithType:1];
    [v21 setTitle:v25 forState:0];
    [v4 setAccessoryView:v21];
    v22 = [v4 textLabel];

    v23 = [v22 font];
    v24 = [v21 titleLabel];
    [v24 setFont:v23];

    [v21 sizeToFit];
    [v21 addTarget:self action:sel__runNetworkQuality forControlEvents:64];
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v113 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(WFDiagnosticsTableViewController *)self sections];
  v7 = [v6 objectAtIndexedSubscript:{objc_msgSend(v5, "section")}];
  v8 = [v7 unsignedIntegerValue];

  v9 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:0];
  [v9 setSelectionStyle:0];
  if (v8 <= 2)
  {
    if (!v8)
    {
      v24 = [(WFDiagnosticsTableViewController *)self cellFactory];
      v25 = [v24 recommendationCellAtIndexPath:v5];

      v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v27 = [v26 localizedStringForKey:@"kWFLocDiagnosticsDiagnosis" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
      v28 = [v25 titleLabel];
      [v28 setText:v27];

      v29 = [(WFDiagnosticsTableViewController *)self context];
      v30 = [v29 adviceString];
      v31 = [v25 descriptionLabel];
      [v31 setText:v30];

      v9 = v25;
      goto LABEL_63;
    }

    if (v8 != 1)
    {
      if (v8 != 2)
      {
        goto LABEL_63;
      }

      if ([v5 row])
      {
        if ([v5 row] == 1)
        {
          v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v11 = [v10 localizedStringForKey:@"kWFLocDiagnosticsCaptive" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
          v12 = [v9 textLabel];
          [v12 setText:v11];

          v13 = [(WFDiagnosticsTableViewController *)self context];
          LODWORD(v11) = [v13 captive];
          v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v15 = v14;
          if (v11)
          {
            v16 = @"kWFLocDiagnosticsIsCaptive";
          }

          else
          {
            v16 = @"kWFLocDiagnosticsIsNotCaptive";
          }

          v17 = [v14 localizedStringForKey:v16 value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
          v18 = [v9 detailTextLabel];
          [v18 setText:v17];

          goto LABEL_63;
        }

        if ([v5 row] == 2)
        {
          v77 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v78 = [v77 localizedStringForKey:@"kWFLocDiagnosticsDeployment" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
          v79 = [v9 textLabel];
          [v79 setText:v78];

          v22 = [(WFDiagnosticsTableViewController *)self context];
          v23 = [v22 deployment];
        }

        else
        {
          if ([v5 row] != 3)
          {
            goto LABEL_63;
          }

          v99 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v100 = [v99 localizedStringForKey:@"kWFLocDiagnosticsMotion" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
          v101 = [v9 textLabel];
          [v101 setText:v100];

          v22 = [(WFDiagnosticsTableViewController *)self context];
          v23 = [v22 motion];
        }
      }

      else
      {
        v54 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v55 = [v54 localizedStringForKey:@"kWFLocDiagnosticsSecurity" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
        v56 = [v9 textLabel];
        [v56 setText:v55];

        v22 = [(WFDiagnosticsTableViewController *)self context];
        v23 = [v22 security];
      }

      goto LABEL_61;
    }

    if (![v5 row])
    {
      v60 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v61 = [v60 localizedStringForKey:@"kWFLocDiagnosticsBSSID" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
      v62 = [v9 textLabel];
      [v62 setText:v61];

      v22 = [(WFDiagnosticsTableViewController *)self context];
      v23 = [v22 BSSID];
      goto LABEL_61;
    }

    if ([v5 row] == 1)
    {
      v42 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v43 = [v42 localizedStringForKey:@"kWFLocDiagnosticsChannel" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
      v44 = [v9 textLabel];
      [v44 setText:v43];

      v22 = [(WFDiagnosticsTableViewController *)self context];
      v23 = [v22 channelString];
LABEL_61:
      v98 = v23;
      v102 = [v9 detailTextLabel];
      [v102 setText:v98];

      goto LABEL_62;
    }

    if ([v5 row] != 2)
    {
      goto LABEL_63;
    }

    v83 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v84 = [v83 localizedStringForKey:@"kWFLocDiagnosticsSignalStrength" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
    v85 = [v9 textLabel];
    [v85 setText:v84];

    v86 = [(WFDiagnosticsTableViewController *)self context];
    v87 = [v86 rssi];
    v88 = [v9 detailTextLabel];
    [v88 setText:v87];

    v89 = [(WFDiagnosticsTableViewController *)self context];
    v90 = [v89 rssi];
    LODWORD(v88) = [v90 containsString:@"Weak"];

    v91 = MEMORY[0x277D75348];
    if (v88)
    {
      goto LABEL_57;
    }

LABEL_55:
    v97 = [v91 systemGreenColor];
LABEL_58:
    v22 = v97;
    v98 = [v9 detailTextLabel];
    [v98 setTextColor:v22];
LABEL_62:

    goto LABEL_63;
  }

  if (v8 != 3)
  {
    if (v8 == 4)
    {
      if ([v5 row])
      {
        if ([v5 row] == 1)
        {
          v45 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v46 = [v45 localizedStringForKey:@"kWFLocDiagnosticsTransmitPER" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
          v47 = [v9 textLabel];
          [v47 setText:v46];

          v22 = [(WFDiagnosticsTableViewController *)self context];
          v23 = [v22 transmitPER];
        }

        else
        {
          if ([v5 row] != 2)
          {
            goto LABEL_63;
          }

          v92 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v93 = [v92 localizedStringForKey:@"kWFLocDiagnosticsReceivedFrames" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
          v94 = [v9 textLabel];
          [v94 setText:v93];

          v22 = [(WFDiagnosticsTableViewController *)self context];
          v23 = [v22 recvFrames];
        }
      }

      else
      {
        v63 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v64 = [v63 localizedStringForKey:@"kWFLocDiagnosticsBeaconPER" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
        v65 = [v9 textLabel];
        [v65 setText:v64];

        v22 = [(WFDiagnosticsTableViewController *)self context];
        v23 = [v22 beaconPER];
      }
    }

    else
    {
      if (v8 != 5)
      {
        goto LABEL_63;
      }

      if ([v5 row])
      {
        if ([v5 row] == 1)
        {
          v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v20 = [v19 localizedStringForKey:@"kWFLocDiagnosticsBluetooth" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
          v21 = [v9 textLabel];
          [v21 setText:v20];

          v22 = [(WFDiagnosticsTableViewController *)self context];
          v23 = [v22 bluetooth];
        }

        else
        {
          if ([v5 row] != 2)
          {
            goto LABEL_63;
          }

          v80 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v81 = [v80 localizedStringForKey:@"kWFLocDiagnosticsScan" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
          v82 = [v9 textLabel];
          [v82 setText:v81];

          v22 = [(WFDiagnosticsTableViewController *)self context];
          v23 = [v22 scan];
        }
      }

      else
      {
        v57 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v58 = [v57 localizedStringForKey:@"kWFLocDiagnosticsAWDLMode" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
        v59 = [v9 textLabel];
        [v59 setText:v58];

        v22 = [(WFDiagnosticsTableViewController *)self context];
        v23 = [v22 awdl];
      }
    }

    goto LABEL_61;
  }

  if (![v5 row])
  {
    v48 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v49 = [v48 localizedStringForKey:@"kWFLocDiagnosticsGateway" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
    v50 = [v9 textLabel];
    [v50 setText:v49];

    v51 = [(WFDiagnosticsTableViewController *)self context];
    v52 = [v51 gateway];
    v53 = [v9 detailTextLabel];
    [v53 setText:v52];

    v38 = [(WFDiagnosticsTableViewController *)self context];
    v39 = [v38 gateway];
    if (![v39 containsString:@"Fast"])
    {
      v40 = [(WFDiagnosticsTableViewController *)self context];
      v41 = [v40 gateway];
LABEL_53:
      v95 = v41;
      v96 = [v41 containsString:@"Expected"];

      if (!v96)
      {
        v91 = MEMORY[0x277D75348];
LABEL_57:
        v97 = [v91 systemRedColor];
        goto LABEL_58;
      }

      goto LABEL_54;
    }

LABEL_29:

LABEL_54:
    v91 = MEMORY[0x277D75348];
    goto LABEL_55;
  }

  if ([v5 row] == 1)
  {
    v32 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v33 = [v32 localizedStringForKey:@"kWFLocDiagnosticsInternet" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
    v34 = [v9 textLabel];
    [v34 setText:v33];

    v35 = [(WFDiagnosticsTableViewController *)self context];
    v36 = [v35 internet];
    v37 = [v9 detailTextLabel];
    [v37 setText:v36];

    v38 = [(WFDiagnosticsTableViewController *)self context];
    v39 = [v38 internet];
    if (![v39 containsString:@"Fast"])
    {
      v40 = [(WFDiagnosticsTableViewController *)self context];
      v41 = [v40 internet];
      goto LABEL_53;
    }

    goto LABEL_29;
  }

  if ([v5 row] == 2)
  {
    v66 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v67 = [v66 localizedStringForKey:@"kWFLocSettingNetworkQualityText" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
    v68 = [v9 textLabel];
    [v68 setText:v67];

    v69 = WFLogForCategory(0);
    v70 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v69)
    {
      v71 = v69;
      if (os_log_type_enabled(v71, v70))
      {
        v72 = [(WFDiagnosticsTableViewController *)self context];
        [v72 networkQualityResponsiveness];
        v74 = v73;
        v75 = [(WFDiagnosticsTableViewController *)self networkQualitySpinning];
        v76 = "NO";
        *&v110[4] = "[WFDiagnosticsTableViewController tableView:cellForRowAtIndexPath:]";
        *v110 = 136315650;
        if (v75)
        {
          v76 = "YES";
        }

        *&v110[12] = 2048;
        *&v110[14] = v74;
        v111 = 2080;
        v112 = v76;
        _os_log_impl(&dword_273ECD000, v71, v70, "NetQuality: %s: Responsiveness is %.1f, execution running? %s", v110, 0x20u);
      }
    }

    [(WFDiagnosticsTableViewController *)self _fillNetworkQualityCell:v9];
  }

LABEL_63:
  v103 = [(WFDiagnosticsTableViewController *)self appearanceProxy];
  v104 = [v103 cellTextLabelFont];

  if (v104)
  {
    v105 = [(WFDiagnosticsTableViewController *)self appearanceProxy];
    v106 = [v105 cellTextLabelFont];
    v107 = [v9 textLabel];
    [v107 setFont:v106];
  }

  v108 = *MEMORY[0x277D85DE8];

  return v9;
}

@end