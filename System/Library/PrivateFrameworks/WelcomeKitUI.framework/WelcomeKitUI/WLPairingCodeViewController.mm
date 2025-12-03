@interface WLPairingCodeViewController
- (WLPairingCodeViewController)initWithPairingCode:(id)code wifiPSK:(id)k ssid:(id)ssid welcomeController:(id)controller;
- (void)_appleInternalOptionsTapped:(id)tapped;
- (void)_importLocalContent;
- (void)cancel;
- (void)showActivityIndicatorView;
- (void)viewDidLoad;
@end

@implementation WLPairingCodeViewController

- (WLPairingCodeViewController)initWithPairingCode:(id)code wifiPSK:(id)k ssid:(id)ssid welcomeController:(id)controller
{
  v63[4] = *MEMORY[0x277D85DE8];
  codeCopy = code;
  kCopy = k;
  ssidCopy = ssid;
  controllerCopy = controller;
  v12 = WLLocalizedString();
  v13 = WLLocalizedString();
  v14 = MEMORY[0x277D755B8];
  v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v16 = [v14 imageNamed:@"MoveToiOS" inBundle:v15];
  v62.receiver = self;
  v62.super_class = WLPairingCodeViewController;
  v17 = [(WLPairingCodeViewController *)&v62 initWithTitle:v12 detailText:v13 icon:v16 contentLayout:2];

  if (v17)
  {
    v59 = kCopy;
    objc_storeStrong(&v17->_wifiPSK, k);
    objc_storeStrong(&v17->_ssid, ssid);
    v18 = v17;
    objc_storeStrong(&v17->_welcomeController, controller);
    v19 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:codeCopy];
    if ([codeCopy length] != 1)
    {
      v20 = 0;
      v21 = *MEMORY[0x277D740D0];
      v22 = 1;
      do
      {
        v23 = v20 + 1;
        if (3 * (v22 / 3) - 1 == v20)
        {
          v24 = 20.0;
        }

        else
        {
          v24 = 5.0;
        }

        v25 = [MEMORY[0x277CCABB0] numberWithDouble:v24];
        [v19 addAttribute:v21 value:v25 range:{v20, 1}];

        ++v22;
        ++v20;
      }

      while (v23 < [codeCopy length] - 1);
    }

    v26 = objc_alloc_init(MEMORY[0x277D756B8]);
    [v26 setAttributedText:v19];
    [v26 setNumberOfLines:0];
    labelColor = [MEMORY[0x277D75348] labelColor];
    [v26 setTextColor:labelColor];

    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [v26 setBackgroundColor:systemBackgroundColor];

    v29 = [MEMORY[0x277D74300] monospacedSystemFontOfSize:32.0 weight:*MEMORY[0x277D74410]];
    [v26 setFont:v29];

    [v26 setTextAlignment:1];
    [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v26 setAccessibilityIdentifier:@"PairingCode"];
    v30 = v18;
    contentView = [(WLPairingCodeViewController *)v18 contentView];
    [contentView addSubview:v26];

    v50 = MEMORY[0x277CCAAD0];
    leadingAnchor = [v26 leadingAnchor];
    contentView2 = [(WLPairingCodeViewController *)v18 contentView];
    leadingAnchor2 = [contentView2 leadingAnchor];
    v55 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v63[0] = v55;
    trailingAnchor = [v26 trailingAnchor];
    contentView3 = [(WLPairingCodeViewController *)v18 contentView];
    trailingAnchor2 = [contentView3 trailingAnchor];
    v51 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v63[1] = v51;
    bottomAnchor = [v26 bottomAnchor];
    contentView4 = [(WLPairingCodeViewController *)v18 contentView];
    bottomAnchor2 = [contentView4 bottomAnchor];
    v46 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v63[2] = v46;
    lastBaselineAnchor = [v26 lastBaselineAnchor];
    contentView5 = [(WLPairingCodeViewController *)v18 contentView];
    topAnchor = [contentView5 topAnchor];
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];
    v37 = 96.0;
    if (userInterfaceIdiom == 1)
    {
      v37 = 106.0;
    }

    v38 = [lastBaselineAnchor constraintEqualToAnchor:topAnchor constant:v37];
    v63[3] = v38;
    v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:4];
    [v50 activateConstraints:v39];

    centerXAnchor = [v26 centerXAnchor];
    contentView6 = [(WLPairingCodeViewController *)v30 contentView];
    centerXAnchor2 = [contentView6 centerXAnchor];
    v43 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v43 setActive:1];

    v17 = v30;
    kCopy = v59;
  }

  v44 = *MEMORY[0x277D85DE8];
  return v17;
}

- (void)_appleInternalOptionsTapped:(id)tapped
{
  if ([MEMORY[0x277D7B890] isInternal])
  {
    getLocalImportOptionsHandler = [(WLPairingCodeViewController *)self getLocalImportOptionsHandler];

    if (getLocalImportOptionsHandler)
    {
      [(OBLinkTrayButton *)self->_appleInternalOptionsButton setEnabled:0];
      getLocalImportOptionsHandler2 = [(WLPairingCodeViewController *)self getLocalImportOptionsHandler];
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __59__WLPairingCodeViewController__appleInternalOptionsTapped___block_invoke;
      v6[3] = &unk_279EB8DF0;
      v6[4] = self;
      (getLocalImportOptionsHandler2)[2](getLocalImportOptionsHandler2, v6);
    }
  }
}

void __59__WLPairingCodeViewController__appleInternalOptionsTapped___block_invoke(uint64_t a1, char a2, char a3)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __59__WLPairingCodeViewController__appleInternalOptionsTapped___block_invoke_2;
  v3[3] = &unk_279EB8DC8;
  v3[4] = *(a1 + 32);
  v4 = a3;
  v5 = a2;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

void __59__WLPairingCodeViewController__appleInternalOptionsTapped___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x277D75110];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"SSID: %@\nPSK: %@", *(*(a1 + 32) + 1232), *(*(a1 + 32) + 1224)];
  v4 = [v2 alertControllerWithTitle:@"WiFi Info" message:v3 preferredStyle:1];

  v5 = [MEMORY[0x277D750F8] actionWithTitle:@"OK" style:0 handler:0];
  [v4 addAction:v5];

  v6 = MEMORY[0x277D750F8];
  if (*(a1 + 40) == 1)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __59__WLPairingCodeViewController__appleInternalOptionsTapped___block_invoke_3;
    v13[3] = &unk_279EB8DA0;
    v13[4] = *(a1 + 32);
    v7 = @"Don't Build Local Content";
    v8 = v13;
LABEL_5:
    v10 = [v6 actionWithTitle:v7 style:0 handler:v8];
    [v4 addAction:v10];

    goto LABEL_6;
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __59__WLPairingCodeViewController__appleInternalOptionsTapped___block_invoke_4;
  v12[3] = &unk_279EB8DA0;
  v12[4] = *(a1 + 32);
  v9 = [MEMORY[0x277D750F8] actionWithTitle:@"Build Local Content" style:0 handler:v12];
  [v4 addAction:v9];

  if (*(a1 + 41) == 1)
  {
    v6 = MEMORY[0x277D750F8];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __59__WLPairingCodeViewController__appleInternalOptionsTapped___block_invoke_5;
    v11[3] = &unk_279EB8DA0;
    v11[4] = *(a1 + 32);
    v7 = @"Import Local Content";
    v8 = v11;
    goto LABEL_5;
  }

LABEL_6:
  [*(a1 + 32) presentViewController:v4 animated:1 completion:0];
  [*(*(a1 + 32) + 1248) setEnabled:1];
}

- (void)_importLocalContent
{
  importLocalContentHandler = [(WLPairingCodeViewController *)self importLocalContentHandler];

  if (importLocalContentHandler)
  {
    importLocalContentHandler2 = [(WLPairingCodeViewController *)self importLocalContentHandler];
    importLocalContentHandler2[2]();
  }
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = WLPairingCodeViewController;
  [(WLOnboardingViewController *)&v5 viewDidLoad];
  if (self->_showCancelButton)
  {
    v3 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancel];
    navigationItem = [(OBBaseWelcomeController *)self navigationItem];
    [navigationItem setLeftBarButtonItem:v3];
  }
}

- (void)cancel
{
  if (self->_cancellationBlock)
  {
    objc_initWeak(&location, self);
    cancellationBlock = self->_cancellationBlock;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __37__WLPairingCodeViewController_cancel__block_invoke;
    v6[3] = &unk_279EB8E18;
    objc_copyWeak(&v7, &location);
    cancellationBlock[2](cancellationBlock, v6);
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }

  else
  {
    navigationController = [(WLPairingCodeViewController *)self navigationController];
    v4 = [navigationController popViewControllerAnimated:1];
  }
}

void __37__WLPairingCodeViewController_cancel__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained showActivityIndicatorView];
}

- (void)showActivityIndicatorView
{
  v5 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  [v5 startAnimating];
  v3 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v5];
  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v3];
}

@end