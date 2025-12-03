@interface WFDiagnosticsTableViewController
- (WFDiagnosticsTableViewController)initWithDiagnosticsContext:(id)context detailsProviderContext:(id)providerContext;
- (WFDiagnosticsTableViewController)initWithDiagnosticsContext:(id)context detailsProviderContext:(id)providerContext appearanceProxy:(id)proxy;
- (WFHyperlinkFooterView)linkFooterView;
- (WFHyperlinkFooterView)networkQualityFooterView;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_fillNetworkQualityCell:(id)cell;
- (void)_networkQualityOpenURL;
- (void)_openNetworkQualityDetails:(id)details;
- (void)_refresh;
- (void)_reloadNetworkQualityCell;
- (void)_runNetworkQuality;
- (void)_updateNetworkQualityFooterText;
- (void)donePressed;
- (void)viewDidLoad;
@end

@implementation WFDiagnosticsTableViewController

- (WFDiagnosticsTableViewController)initWithDiagnosticsContext:(id)context detailsProviderContext:(id)providerContext
{
  providerContextCopy = providerContext;
  contextCopy = context;
  v8 = +[WFAppearanceProxy defaultAppearanceProxy];
  v9 = [(WFDiagnosticsTableViewController *)self initWithDiagnosticsContext:contextCopy detailsProviderContext:providerContextCopy appearanceProxy:v8];

  return v9;
}

- (WFDiagnosticsTableViewController)initWithDiagnosticsContext:(id)context detailsProviderContext:(id)providerContext appearanceProxy:(id)proxy
{
  contextCopy = context;
  providerContextCopy = providerContext;
  proxyCopy = proxy;
  v25.receiver = self;
  v25.super_class = WFDiagnosticsTableViewController;
  v12 = -[WFDiagnosticsTableViewController initWithStyle:](&v25, sel_initWithStyle_, [proxyCopy tableViewStyle]);
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_context, context);
    objc_storeStrong(&v13->_detailsContext, providerContext);
    objc_initWeak(&location, v13);
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __102__WFDiagnosticsTableViewController_initWithDiagnosticsContext_detailsProviderContext_appearanceProxy___block_invoke;
    v22 = &unk_279EC59C0;
    objc_copyWeak(&v23, &location);
    [(WFDiagnosticsProviderContext *)v13->_context setRefreshHandler:&v19];
    v14 = MEMORY[0x277CBEB70];
    v15 = [(WFDiagnosticsTableViewController *)v13 _defaultSections:v19];
    v16 = [v14 orderedSetWithArray:v15];
    sections = v13->_sections;
    v13->_sections = v16;

    objc_storeStrong(&v13->_appearanceProxy, proxy);
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
  tableView = [(WFDiagnosticsTableViewController *)self tableView];
  v5 = [(WFNetworkSettingsCellFactory *)v3 initWithTableView:tableView];
  [(WFDiagnosticsTableViewController *)self setCellFactory:v5];
}

- (void)_refresh
{
  tableView = [(WFDiagnosticsTableViewController *)self tableView];
  [tableView reloadData];
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  sections = [(WFDiagnosticsTableViewController *)self sections];
  v4 = [sections count];

  return v4;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  sections = [(WFDiagnosticsTableViewController *)self sections];
  v6 = [sections objectAtIndexedSubscript:section];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  if (unsignedIntegerValue > 5)
  {
    return 0;
  }

  else
  {
    return qword_274059210[unsignedIntegerValue];
  }
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  sections = [(WFDiagnosticsTableViewController *)self sections];
  v6 = [sections objectAtIndexedSubscript:section];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  if ((unsignedIntegerValue - 3) > 2)
  {
    v10 = 0;
  }

  else
  {
    v8 = off_279EC5A58[unsignedIntegerValue - 3];
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:v8 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  }

  return v10;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  sections = [(WFDiagnosticsTableViewController *)self sections];
  v7 = [sections objectAtIndexedSubscript:section];
  unsignedIntegerValue = [v7 unsignedIntegerValue];

  switch(unsignedIntegerValue)
  {
    case 5:
      context = [(WFDiagnosticsTableViewController *)self context];
      coexFooter = [context coexFooter];
      goto LABEL_7;
    case 3:
      context = [(WFDiagnosticsTableViewController *)self context];
      coexFooter = [context probeFooter];
      goto LABEL_7;
    case 1:
      context = [(WFDiagnosticsTableViewController *)self context];
      coexFooter = [context cca];
LABEL_7:
      v11 = coexFooter;

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
    context = [(WFDiagnosticsTableViewController *)self context];
    networkQualityDate = [context networkQualityDate];
    if (!networkQualityDate)
    {

      goto LABEL_16;
    }

    v5 = networkQualityDate;
    if (self->_networkQualityFooterDate)
    {
      context2 = [(WFDiagnosticsTableViewController *)self context];
      networkQualityDate2 = [context2 networkQualityDate];
      v8 = [networkQualityDate2 isEqual:self->_networkQualityFooterDate];

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
      context3 = [(WFDiagnosticsTableViewController *)self context];
      networkQualityDate3 = [context3 networkQualityDate];
      context4 = [(WFDiagnosticsTableViewController *)self context];
      [context4 networkQualityResponsiveness];
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

      *&v24[14] = networkQualityDate3;
      v25 = 2048;
      v26 = v15;
      v27 = 2080;
      v28 = v17;
      v29 = 2112;
      v30 = networkQualityFooterDate;
      _os_log_impl(&dword_273FB9000, v11, v10, "NetQuality: %s: Date is %@, responsiveness %.3f, existing view? %s existing date? %@", v24, 0x34u);
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
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  v2 = MEMORY[0x277CBEBC0];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"kWFLocNetworkQualityKBURL" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  v5 = [v2 URLWithString:v4];
  [mEMORY[0x277D75128] openURL:v5 options:MEMORY[0x277CBEC10] completionHandler:0];
}

- (void)_openNetworkQualityDetails:(id)details
{
  v4 = objc_alloc(MEMORY[0x277D37688]);
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"kWFLocNetworkQualityLearnMoreTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  v30 = [v4 initWithTitle:v6 detailText:0 symbolName:0 contentLayout:2];

  v7 = WFCurrentDeviceCapability();
  LODWORD(v5) = WFCapabilityIsChinaDevice(v7);
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"kWFLocNetworkQualityLearnMoreSection1Title" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = v10;
  if (v5)
  {
    v12 = @"kWFLocNetworkQualityLearnMoreSection1TextCH";
  }

  else
  {
    v12 = @"kWFLocNetworkQualityLearnMoreSection1Text";
  }

  v13 = [v10 localizedStringForKey:v12 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  [v30 addSectionWithHeader:v9 content:v13];

  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"kWFLocNetworkQualityLearnMoreSection2Title" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"kWFLocNetworkQualityLearnMoreSection2Text" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  [v30 addSectionWithHeader:v15 content:v17];

  v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v19 = [v18 localizedStringForKey:@"kWFLocNetworkQualityLearnMoreSection3Title" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v21 = [v20 localizedStringForKey:@"kWFLocNetworkQualityLearnMoreSection3Text" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  [v30 addSectionWithHeader:v19 content:v21];

  accessoryButton = [MEMORY[0x277D37680] accessoryButton];
  v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v24 = [v23 localizedStringForKey:@"kWFLocNetworkQualityKBURL" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  [accessoryButton setTitle:v24 forState:0];

  [accessoryButton addTarget:self action:sel__networkQualityOpenURL forControlEvents:64];
  v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v26 = [v25 localizedStringForKey:@"kWFLocNetworkQualityLearnMoreSection4Text" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  [v30 addSectionWithHeader:0 content:v26 accessoryButton:accessoryButton];

  v27 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_donePressed];
  navigationItem = [v30 navigationItem];
  [navigationItem setRightBarButtonItem:v27];

  v29 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v30];
  [(WFDiagnosticsTableViewController *)self presentViewController:v29 animated:1 completion:0];
}

- (void)donePressed
{
  presentedViewController = [(WFDiagnosticsTableViewController *)self presentedViewController];
  [presentedViewController dismissViewControllerAnimated:1 completion:0];
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  sections = [(WFDiagnosticsTableViewController *)self sections];
  v7 = [sections objectAtIndexedSubscript:section];
  unsignedIntegerValue = [v7 unsignedIntegerValue];

  if (unsignedIntegerValue == 3)
  {
    networkQualityFooterView = [(WFDiagnosticsTableViewController *)self networkQualityFooterView];
  }

  else if (unsignedIntegerValue)
  {
    networkQualityFooterView = 0;
  }

  else
  {
    networkQualityFooterView = [(WFDiagnosticsTableViewController *)self linkFooterView];
  }

  return networkQualityFooterView;
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
  sections = [(WFDiagnosticsTableViewController *)self sections];
  v4 = [sections indexOfObject:&unk_2883225B8];

  tableView = [(WFDiagnosticsTableViewController *)self tableView];
  v6 = [MEMORY[0x277CCAA70] indexPathForRow:2 inSection:v4];
  v9[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  [tableView reloadRowsAtIndexPaths:v7 withRowAnimation:5];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_updateNetworkQualityFooterText
{
  context = [(WFDiagnosticsTableViewController *)self context];
  networkQualityDate = [context networkQualityDate];

  if (networkQualityDate)
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v22 = [v5 localizedStringForKey:@"kWFLocNetworkQualityFooterKnown" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"kWFLocNetworkQualityFooterLink" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"kWFLocNetworkQualityFooterLastChecked" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

    v10 = objc_opt_new();
    [v10 setDateStyle:1];
    [v10 setTimeStyle:1];
    [v10 setDoesRelativeDateFormatting:1];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v22, v7];
    v12 = MEMORY[0x277CCACA8];
    context2 = [(WFDiagnosticsTableViewController *)self context];
    networkQualityDate2 = [context2 networkQualityDate];
    v15 = [v10 stringFromDate:networkQualityDate2];
    v16 = [v12 stringWithFormat:@"%@\n%@ %@", v11, v9, v15];

    context3 = [(WFDiagnosticsTableViewController *)self context];
    networkQualityDate3 = [context3 networkQualityDate];
    v19 = [networkQualityDate3 copy];
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
      _os_log_impl(&dword_273FB9000, v3, v4, "NetQuality: %s: User scheduled a run", buf, 0xCu);
    }

    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"kWFLocSettingNetworkQualityAlertTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"kWFLocSettingNetworkQualityAlertText" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"kWFLocSettingNetworkQualityAlertContinue" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"kWFLocSettingNetworkQualityAlertCancel" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

    v13 = [MEMORY[0x277D75110] alertControllerWithTitle:v6 message:v8 preferredStyle:1];
    v14 = [MEMORY[0x277D750F8] actionWithTitle:v12 style:1 handler:&__block_literal_global_2];
    [v13 addAction:v14];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __54__WFDiagnosticsTableViewController__runNetworkQuality__block_invoke_113;
    v17[3] = &unk_279EC5A38;
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
    _os_log_impl(&dword_273FB9000, v0, v1, "NetQuality: %s: User canceled test-run", &v3, 0xCu);
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
  v3[3] = &unk_279EC5A10;
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
  v11[3] = &unk_279EC59E8;
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
    v4 = [v3 localizedStringForKey:@"kWFLocSettingNetworkQualityFailureTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

    v5 = *(a1 + 32);
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"kWFLocSettingNetworkQualityFailureText" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

    v8 = *(a1 + 32);
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"kWFLocSettingNetworkQualityFailureOK" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

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

- (void)_fillNetworkQualityCell:(id)cell
{
  cellCopy = cell;
  if ([(WFDiagnosticsTableViewController *)self networkQualitySpinning])
  {
    v25 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    [cellCopy setAccessoryView:v25];

    [v25 startAnimating];
  }

  else
  {
    context = [(WFDiagnosticsTableViewController *)self context];
    [context networkQualityResponsiveness];
    v7 = v6;

    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = v8;
    if (v7 == 0.0)
    {
      v25 = [v8 localizedStringForKey:@"kWFLocSettingNetworkQualityNoData" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      v10 = v9;
    }

    else
    {
      v10 = [v8 localizedStringForKey:@"kWFLocSettingNetworkQualityRPM" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

      v11 = MEMORY[0x277D2C9B8];
      context2 = [(WFDiagnosticsTableViewController *)self context];
      [context2 networkQualityResponsiveness];
      v14 = [v11 ratingForResponsivenessScore:v13];

      if (v14 > 2)
      {
        v17 = 0;
      }

      else
      {
        v15 = off_279EC5A70[v14];
        v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v17 = [v16 localizedStringForKey:v15 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      }

      v18 = MEMORY[0x277CCACA8];
      context3 = [(WFDiagnosticsTableViewController *)self context];
      [context3 networkQualityResponsiveness];
      v25 = [v18 stringWithFormat:@"%@ (%u %@)", v17, v20, v10];
    }

    v21 = [MEMORY[0x277D75220] buttonWithType:1];
    [v21 setTitle:v25 forState:0];
    [cellCopy setAccessoryView:v21];
    textLabel = [cellCopy textLabel];

    font = [textLabel font];
    titleLabel = [v21 titleLabel];
    [titleLabel setFont:font];

    [v21 sizeToFit];
    [v21 addTarget:self action:sel__runNetworkQuality forControlEvents:64];
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v113 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  sections = [(WFDiagnosticsTableViewController *)self sections];
  v7 = [sections objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];
  unsignedIntegerValue = [v7 unsignedIntegerValue];

  v9 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:0];
  [v9 setSelectionStyle:0];
  if (unsignedIntegerValue <= 2)
  {
    if (!unsignedIntegerValue)
    {
      cellFactory = [(WFDiagnosticsTableViewController *)self cellFactory];
      v25 = [cellFactory recommendationCellAtIndexPath:pathCopy];

      v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v27 = [v26 localizedStringForKey:@"kWFLocDiagnosticsDiagnosis" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      titleLabel = [v25 titleLabel];
      [titleLabel setText:v27];

      context = [(WFDiagnosticsTableViewController *)self context];
      adviceString = [context adviceString];
      descriptionLabel = [v25 descriptionLabel];
      [descriptionLabel setText:adviceString];

      v9 = v25;
      goto LABEL_63;
    }

    if (unsignedIntegerValue != 1)
    {
      if (unsignedIntegerValue != 2)
      {
        goto LABEL_63;
      }

      if ([pathCopy row])
      {
        if ([pathCopy row] == 1)
        {
          v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v11 = [v10 localizedStringForKey:@"kWFLocDiagnosticsCaptive" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
          textLabel = [v9 textLabel];
          [textLabel setText:v11];

          context2 = [(WFDiagnosticsTableViewController *)self context];
          LODWORD(v11) = [context2 captive];
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

          v17 = [v14 localizedStringForKey:v16 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
          detailTextLabel = [v9 detailTextLabel];
          [detailTextLabel setText:v17];

          goto LABEL_63;
        }

        if ([pathCopy row] == 2)
        {
          v77 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v78 = [v77 localizedStringForKey:@"kWFLocDiagnosticsDeployment" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
          textLabel2 = [v9 textLabel];
          [textLabel2 setText:v78];

          context3 = [(WFDiagnosticsTableViewController *)self context];
          deployment = [context3 deployment];
        }

        else
        {
          if ([pathCopy row] != 3)
          {
            goto LABEL_63;
          }

          v99 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v100 = [v99 localizedStringForKey:@"kWFLocDiagnosticsMotion" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
          textLabel3 = [v9 textLabel];
          [textLabel3 setText:v100];

          context3 = [(WFDiagnosticsTableViewController *)self context];
          deployment = [context3 motion];
        }
      }

      else
      {
        v54 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v55 = [v54 localizedStringForKey:@"kWFLocDiagnosticsSecurity" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
        textLabel4 = [v9 textLabel];
        [textLabel4 setText:v55];

        context3 = [(WFDiagnosticsTableViewController *)self context];
        deployment = [context3 security];
      }

      goto LABEL_61;
    }

    if (![pathCopy row])
    {
      v60 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v61 = [v60 localizedStringForKey:@"kWFLocDiagnosticsBSSID" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      textLabel5 = [v9 textLabel];
      [textLabel5 setText:v61];

      context3 = [(WFDiagnosticsTableViewController *)self context];
      deployment = [context3 BSSID];
      goto LABEL_61;
    }

    if ([pathCopy row] == 1)
    {
      v42 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v43 = [v42 localizedStringForKey:@"kWFLocDiagnosticsChannel" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      textLabel6 = [v9 textLabel];
      [textLabel6 setText:v43];

      context3 = [(WFDiagnosticsTableViewController *)self context];
      deployment = [context3 channelString];
LABEL_61:
      detailTextLabel4 = deployment;
      detailTextLabel2 = [v9 detailTextLabel];
      [detailTextLabel2 setText:detailTextLabel4];

      goto LABEL_62;
    }

    if ([pathCopy row] != 2)
    {
      goto LABEL_63;
    }

    v83 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v84 = [v83 localizedStringForKey:@"kWFLocDiagnosticsSignalStrength" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
    textLabel7 = [v9 textLabel];
    [textLabel7 setText:v84];

    context4 = [(WFDiagnosticsTableViewController *)self context];
    rssi = [context4 rssi];
    detailTextLabel3 = [v9 detailTextLabel];
    [detailTextLabel3 setText:rssi];

    context5 = [(WFDiagnosticsTableViewController *)self context];
    rssi2 = [context5 rssi];
    LODWORD(detailTextLabel3) = [rssi2 containsString:@"Weak"];

    v91 = MEMORY[0x277D75348];
    if (detailTextLabel3)
    {
      goto LABEL_57;
    }

LABEL_55:
    systemGreenColor = [v91 systemGreenColor];
LABEL_58:
    context3 = systemGreenColor;
    detailTextLabel4 = [v9 detailTextLabel];
    [detailTextLabel4 setTextColor:context3];
LABEL_62:

    goto LABEL_63;
  }

  if (unsignedIntegerValue != 3)
  {
    if (unsignedIntegerValue == 4)
    {
      if ([pathCopy row])
      {
        if ([pathCopy row] == 1)
        {
          v45 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v46 = [v45 localizedStringForKey:@"kWFLocDiagnosticsTransmitPER" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
          textLabel8 = [v9 textLabel];
          [textLabel8 setText:v46];

          context3 = [(WFDiagnosticsTableViewController *)self context];
          deployment = [context3 transmitPER];
        }

        else
        {
          if ([pathCopy row] != 2)
          {
            goto LABEL_63;
          }

          v92 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v93 = [v92 localizedStringForKey:@"kWFLocDiagnosticsReceivedFrames" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
          textLabel9 = [v9 textLabel];
          [textLabel9 setText:v93];

          context3 = [(WFDiagnosticsTableViewController *)self context];
          deployment = [context3 recvFrames];
        }
      }

      else
      {
        v63 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v64 = [v63 localizedStringForKey:@"kWFLocDiagnosticsBeaconPER" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
        textLabel10 = [v9 textLabel];
        [textLabel10 setText:v64];

        context3 = [(WFDiagnosticsTableViewController *)self context];
        deployment = [context3 beaconPER];
      }
    }

    else
    {
      if (unsignedIntegerValue != 5)
      {
        goto LABEL_63;
      }

      if ([pathCopy row])
      {
        if ([pathCopy row] == 1)
        {
          v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v20 = [v19 localizedStringForKey:@"kWFLocDiagnosticsBluetooth" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
          textLabel11 = [v9 textLabel];
          [textLabel11 setText:v20];

          context3 = [(WFDiagnosticsTableViewController *)self context];
          deployment = [context3 bluetooth];
        }

        else
        {
          if ([pathCopy row] != 2)
          {
            goto LABEL_63;
          }

          v80 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v81 = [v80 localizedStringForKey:@"kWFLocDiagnosticsScan" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
          textLabel12 = [v9 textLabel];
          [textLabel12 setText:v81];

          context3 = [(WFDiagnosticsTableViewController *)self context];
          deployment = [context3 scan];
        }
      }

      else
      {
        v57 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v58 = [v57 localizedStringForKey:@"kWFLocDiagnosticsAWDLMode" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
        textLabel13 = [v9 textLabel];
        [textLabel13 setText:v58];

        context3 = [(WFDiagnosticsTableViewController *)self context];
        deployment = [context3 awdl];
      }
    }

    goto LABEL_61;
  }

  if (![pathCopy row])
  {
    v48 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v49 = [v48 localizedStringForKey:@"kWFLocDiagnosticsGateway" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
    textLabel14 = [v9 textLabel];
    [textLabel14 setText:v49];

    context6 = [(WFDiagnosticsTableViewController *)self context];
    gateway = [context6 gateway];
    detailTextLabel5 = [v9 detailTextLabel];
    [detailTextLabel5 setText:gateway];

    context7 = [(WFDiagnosticsTableViewController *)self context];
    gateway2 = [context7 gateway];
    if (![gateway2 containsString:@"Fast"])
    {
      context8 = [(WFDiagnosticsTableViewController *)self context];
      gateway3 = [context8 gateway];
LABEL_53:
      v95 = gateway3;
      v96 = [gateway3 containsString:@"Expected"];

      if (!v96)
      {
        v91 = MEMORY[0x277D75348];
LABEL_57:
        systemGreenColor = [v91 systemRedColor];
        goto LABEL_58;
      }

      goto LABEL_54;
    }

LABEL_29:

LABEL_54:
    v91 = MEMORY[0x277D75348];
    goto LABEL_55;
  }

  if ([pathCopy row] == 1)
  {
    v32 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v33 = [v32 localizedStringForKey:@"kWFLocDiagnosticsInternet" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
    textLabel15 = [v9 textLabel];
    [textLabel15 setText:v33];

    context9 = [(WFDiagnosticsTableViewController *)self context];
    internet = [context9 internet];
    detailTextLabel6 = [v9 detailTextLabel];
    [detailTextLabel6 setText:internet];

    context7 = [(WFDiagnosticsTableViewController *)self context];
    gateway2 = [context7 internet];
    if (![gateway2 containsString:@"Fast"])
    {
      context8 = [(WFDiagnosticsTableViewController *)self context];
      gateway3 = [context8 internet];
      goto LABEL_53;
    }

    goto LABEL_29;
  }

  if ([pathCopy row] == 2)
  {
    v66 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v67 = [v66 localizedStringForKey:@"kWFLocSettingNetworkQualityText" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
    textLabel16 = [v9 textLabel];
    [textLabel16 setText:v67];

    v69 = WFLogForCategory(0);
    v70 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v69)
    {
      v71 = v69;
      if (os_log_type_enabled(v71, v70))
      {
        context10 = [(WFDiagnosticsTableViewController *)self context];
        [context10 networkQualityResponsiveness];
        v74 = v73;
        networkQualitySpinning = [(WFDiagnosticsTableViewController *)self networkQualitySpinning];
        v76 = "NO";
        *&v110[4] = "[WFDiagnosticsTableViewController tableView:cellForRowAtIndexPath:]";
        *v110 = 136315650;
        if (networkQualitySpinning)
        {
          v76 = "YES";
        }

        *&v110[12] = 2048;
        *&v110[14] = v74;
        v111 = 2080;
        v112 = v76;
        _os_log_impl(&dword_273FB9000, v71, v70, "NetQuality: %s: Responsiveness is %.1f, execution running? %s", v110, 0x20u);
      }
    }

    [(WFDiagnosticsTableViewController *)self _fillNetworkQualityCell:v9];
  }

LABEL_63:
  appearanceProxy = [(WFDiagnosticsTableViewController *)self appearanceProxy];
  cellTextLabelFont = [appearanceProxy cellTextLabelFont];

  if (cellTextLabelFont)
  {
    appearanceProxy2 = [(WFDiagnosticsTableViewController *)self appearanceProxy];
    cellTextLabelFont2 = [appearanceProxy2 cellTextLabelFont];
    textLabel17 = [v9 textLabel];
    [textLabel17 setFont:cellTextLabelFont2];
  }

  v108 = *MEMORY[0x277D85DE8];

  return v9;
}

@end