@interface WLPairingCodeViewController
- (WLPairingCodeViewController)initWithPairingCode:(id)a3 wifiPSK:(id)a4 ssid:(id)a5 welcomeController:(id)a6;
- (void)_appleInternalOptionsTapped:(id)a3;
- (void)_importLocalContent;
- (void)cancel;
- (void)showActivityIndicatorView;
- (void)viewDidLoad;
@end

@implementation WLPairingCodeViewController

- (WLPairingCodeViewController)initWithPairingCode:(id)a3 wifiPSK:(id)a4 ssid:(id)a5 welcomeController:(id)a6
{
  v63[4] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v61 = a5;
  v60 = a6;
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
    v59 = v11;
    objc_storeStrong(&v17->_wifiPSK, a4);
    objc_storeStrong(&v17->_ssid, a5);
    v18 = v17;
    objc_storeStrong(&v17->_welcomeController, a6);
    v19 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v10];
    if ([v10 length] != 1)
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

      while (v23 < [v10 length] - 1);
    }

    v26 = objc_alloc_init(MEMORY[0x277D756B8]);
    [v26 setAttributedText:v19];
    [v26 setNumberOfLines:0];
    v27 = [MEMORY[0x277D75348] labelColor];
    [v26 setTextColor:v27];

    v28 = [MEMORY[0x277D75348] systemBackgroundColor];
    [v26 setBackgroundColor:v28];

    v29 = [MEMORY[0x277D74300] monospacedSystemFontOfSize:32.0 weight:*MEMORY[0x277D74410]];
    [v26 setFont:v29];

    [v26 setTextAlignment:1];
    [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v26 setAccessibilityIdentifier:@"PairingCode"];
    v30 = v18;
    v31 = [(WLPairingCodeViewController *)v18 contentView];
    [v31 addSubview:v26];

    v50 = MEMORY[0x277CCAAD0];
    v57 = [v26 leadingAnchor];
    v58 = [(WLPairingCodeViewController *)v18 contentView];
    v56 = [v58 leadingAnchor];
    v55 = [v57 constraintEqualToAnchor:v56];
    v63[0] = v55;
    v53 = [v26 trailingAnchor];
    v54 = [(WLPairingCodeViewController *)v18 contentView];
    v52 = [v54 trailingAnchor];
    v51 = [v53 constraintEqualToAnchor:v52];
    v63[1] = v51;
    v48 = [v26 bottomAnchor];
    v49 = [(WLPairingCodeViewController *)v18 contentView];
    v47 = [v49 bottomAnchor];
    v46 = [v48 constraintEqualToAnchor:v47];
    v63[2] = v46;
    v32 = [v26 lastBaselineAnchor];
    v33 = [(WLPairingCodeViewController *)v18 contentView];
    v34 = [v33 topAnchor];
    v35 = [MEMORY[0x277D75418] currentDevice];
    v36 = [v35 userInterfaceIdiom];
    v37 = 96.0;
    if (v36 == 1)
    {
      v37 = 106.0;
    }

    v38 = [v32 constraintEqualToAnchor:v34 constant:v37];
    v63[3] = v38;
    v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:4];
    [v50 activateConstraints:v39];

    v40 = [v26 centerXAnchor];
    v41 = [(WLPairingCodeViewController *)v30 contentView];
    v42 = [v41 centerXAnchor];
    v43 = [v40 constraintEqualToAnchor:v42];
    [v43 setActive:1];

    v17 = v30;
    v11 = v59;
  }

  v44 = *MEMORY[0x277D85DE8];
  return v17;
}

- (void)_appleInternalOptionsTapped:(id)a3
{
  if ([MEMORY[0x277D7B890] isInternal])
  {
    v4 = [(WLPairingCodeViewController *)self getLocalImportOptionsHandler];

    if (v4)
    {
      [(OBLinkTrayButton *)self->_appleInternalOptionsButton setEnabled:0];
      v5 = [(WLPairingCodeViewController *)self getLocalImportOptionsHandler];
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __59__WLPairingCodeViewController__appleInternalOptionsTapped___block_invoke;
      v6[3] = &unk_279EB8DF0;
      v6[4] = self;
      (v5)[2](v5, v6);
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
  v3 = [(WLPairingCodeViewController *)self importLocalContentHandler];

  if (v3)
  {
    v4 = [(WLPairingCodeViewController *)self importLocalContentHandler];
    v4[2]();
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
    v4 = [(OBBaseWelcomeController *)self navigationItem];
    [v4 setLeftBarButtonItem:v3];
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
    v5 = [(WLPairingCodeViewController *)self navigationController];
    v4 = [v5 popViewControllerAnimated:1];
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
  v4 = [(OBBaseWelcomeController *)self navigationItem];
  [v4 setLeftBarButtonItem:v3];
}

@end