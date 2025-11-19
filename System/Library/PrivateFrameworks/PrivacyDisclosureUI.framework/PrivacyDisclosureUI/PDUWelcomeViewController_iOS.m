@interface PDUWelcomeViewController_iOS
- (OBTrayButton)continueButton;
- (PDUWelcomeViewControllerDelegate)delegate;
- (PDUWelcomeViewController_iOS)initWithApplicationIdentity:(id)a3 consentStore:(id)a4;
- (id)_requestIconForApplication:(id)a3;
- (int64_t)preferredUserInterfaceStyle;
- (void)_updateContinueButtonConfiguration;
- (void)cancelPressed;
- (void)continuePressed;
- (void)learnMorePressed;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
@end

@implementation PDUWelcomeViewController_iOS

- (PDUWelcomeViewController_iOS)initWithApplicationIdentity:(id)a3 consentStore:(id)a4
{
  v7 = a3;
  v8 = a4;
  v19 = 0;
  v9 = [v7 findApplicationRecordWithError:&v19];
  v10 = v19;
  v11 = PDUWelcomeTitleTextForAppRecord(v9);
  v12 = PDUWelcomeDetailTextForAppRecord(v9);
  v13 = [(PDUWelcomeViewController_iOS *)self _requestIconForApplication:v9];
  v18.receiver = self;
  v18.super_class = PDUWelcomeViewController_iOS;
  v14 = [(PDUWelcomeViewController_iOS *)&v18 initWithTitle:v11 detailText:v12 icon:v13 contentLayout:2];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_applicationIdentity, a3);
    objc_storeStrong(&v15->_applicationRecord, v9);
    objc_storeStrong(&v15->_consentStore, a4);
    v16 = v15;
  }

  return v15;
}

- (id)_requestIconForApplication:(id)a3
{
  v4 = MEMORY[0x277D1B1A8];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v5 bundleIdentifier];

  v8 = [v6 initWithBundleIdentifier:v7];
  v9 = [MEMORY[0x277D1B1C8] imageDescriptorNamed:*MEMORY[0x277D1B220]];
  [v9 setDrawBorder:1];
  v10 = [MEMORY[0x277D755B8] imageWithCGImage:{objc_msgSend(v8, "CGImageForDescriptor:", v9)}];
  objc_initWeak(&location, self);
  v11 = dispatch_get_global_queue(21, 0);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __59__PDUWelcomeViewController_iOS__requestIconForApplication___block_invoke;
  v15[3] = &unk_279AA2768;
  v16 = v8;
  v17 = v9;
  v12 = v9;
  v13 = v8;
  objc_copyWeak(&v18, &location);
  dispatch_async(v11, v15);

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);

  return v10;
}

- (void)viewDidLoad
{
  v56[4] = *MEMORY[0x277D85DE8];
  applicationIdentity = self->_applicationIdentity;
  v55 = 0;
  v4 = [(PDCApplicationIdentity *)applicationIdentity findApplicationRecordWithError:&v55];
  v5 = v55;
  v6 = PDULocalizedNameForAppRecord(v4);
  v7 = PDUWelcomeTintColorForApplicationRecord(v4);
  if (v7)
  {
    v8 = [(PDUWelcomeViewController_iOS *)self view];
    [v8 setTintColor:v7];
  }

  v9 = [MEMORY[0x277D37618] boldButton];
  v10 = PDULocalizedString(@"WELCOME_CONTINUE");
  [v9 setTitle:v10 forState:0];

  [v9 addTarget:self action:sel_continuePressed forControlEvents:64];
  [v9 setAccessibilityIdentifier:@"continue-button"];
  v11 = [(PDUWelcomeViewController_iOS *)self buttonTray];
  [v11 addButton:v9];

  v53 = [v7 convertedToRGB];
  if (v53)
  {
    v12 = [v9 titleLabel];
    v13 = [v12 textColor];
    v14 = [v13 convertedToRGB];
    v15 = [v14 isEqual:v53];

    if (v15)
    {
      v16 = [v9 configuration];
      v17 = [v16 baseForegroundColor];
      [(PDUWelcomeViewController_iOS *)self setContinueButtonOriginalTextColor:v17];

      v18 = [MEMORY[0x277D75348] blackColor];
      [v16 setBaseForegroundColor:v18];

      [v9 setConfiguration:v16];
      [v9 setNeedsUpdateConfiguration];
    }
  }

  v52 = v7;
  [(PDUWelcomeViewController_iOS *)self setContinueButton:v9];
  v19 = [MEMORY[0x277D37650] linkButton];
  v20 = PDULocalizedString(@"WELCOME_CLOSE");
  v21 = [MEMORY[0x277CCACA8] stringWithFormat:v20, v6];
  [v19 setTitle:v21 forState:0];

  [v19 addTarget:self action:sel_cancelPressed forControlEvents:64];
  [v19 setAccessibilityIdentifier:@"cancel-button"];
  v22 = [(PDUWelcomeViewController_iOS *)self buttonTray];
  [v22 addButton:v19];

  if (PDUShouldShowLearnMoreScreen(v4))
  {
    [MEMORY[0x277D75220] buttonWithType:1];
    v23 = v50 = v6;
    v24 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76920] variant:0];
    [v23 titleLabel];
    v25 = v49 = v20;
    [v25 setFont:v24];

    v26 = [v23 titleLabel];
    [v26 setAdjustsFontForContentSizeCategory:1];

    v27 = PDULocalizedString(@"WELCOME_LEARN_MORE");
    [v23 setTitle:v27 forState:0];

    v28 = [MEMORY[0x277D755B8] systemImageNamed:@"info.circle.fill"];
    [v23 setImage:v28 forState:0];

    [v23 addTarget:self action:sel_learnMorePressed forControlEvents:64];
    [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
    v29 = [(PDUWelcomeViewController_iOS *)self contentView];
    [v29 setTranslatesAutoresizingMaskIntoConstraints:0];

    v30 = [(PDUWelcomeViewController_iOS *)self contentView];
    [v30 addSubview:v23];

    v31 = MEMORY[0x277CCAAD0];
    v32 = [(PDUWelcomeViewController_iOS *)self contentView];
    v33 = [v31 constraintWithItem:v23 attribute:3 relatedBy:0 toItem:v32 attribute:3 multiplier:1.0 constant:0.0];

    v34 = MEMORY[0x277CCAAD0];
    v35 = [(PDUWelcomeViewController_iOS *)self contentView];
    v36 = [v34 constraintWithItem:v23 attribute:1 relatedBy:0 toItem:v35 attribute:1 multiplier:1.0 constant:0.0];

    v37 = MEMORY[0x277CCAAD0];
    [(PDUWelcomeViewController_iOS *)self contentView];
    v38 = v51 = v5;
    v39 = [v37 constraintWithItem:v38 attribute:7 relatedBy:1 toItem:v23 attribute:7 multiplier:1.0 constant:0.0];

    v40 = MEMORY[0x277CCAAD0];
    [(PDUWelcomeViewController_iOS *)self contentView];
    v41 = v48 = v4;
    v42 = [v40 constraintWithItem:v41 attribute:8 relatedBy:0 toItem:v23 attribute:8 multiplier:1.0 constant:0.0];

    v43 = [(PDUWelcomeViewController_iOS *)self contentView];
    v56[0] = v33;
    v56[1] = v36;
    v56[2] = v42;
    v56[3] = v39;
    v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:4];
    [v43 addConstraints:v44];

    v4 = v48;
    v5 = v51;

    v20 = v49;
    v6 = v50;
  }

  v45 = [(PDUWelcomeViewController_iOS *)self view];
  [v45 setAccessibilityIdentifier:@"pdui-welcome-view"];

  v46 = [(PDUWelcomeViewController_iOS *)self contentView];
  [v46 layoutIfNeeded];

  v54.receiver = self;
  v54.super_class = PDUWelcomeViewController_iOS;
  [(OBBaseWelcomeController *)&v54 viewDidLoad];

  v47 = *MEMORY[0x277D85DE8];
}

- (void)continuePressed
{
  v3 = [(PDUWelcomeViewController_iOS *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v8 = [(PDCApplicationRecord *)self->_applicationRecord regulatoryPrivacyDisclosureVersion];
    v5 = [(PDCApplicationRecord *)self->_applicationRecord bundleIdentifier];
    v6 = [(PDCConsentStore *)self->_consentStore writeUserConsentedRegulatoryDisclosureVersion:v8 forBundleIdentifier:v5];
    v7 = [(PDUWelcomeViewController_iOS *)self delegate];
    [v7 welcomeViewController:self didDismissWithUserResponse:1];
  }
}

- (void)cancelPressed
{
  v3 = [(PDUWelcomeViewController_iOS *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(PDUWelcomeViewController_iOS *)self delegate];
    [v5 welcomeViewController:self didDismissWithUserResponse:0];
  }
}

- (void)learnMorePressed
{
  v3 = MEMORY[0x277CCA8D8];
  v4 = [(PDCApplicationRecord *)self->_applicationRecord URL];
  v13 = [v3 bundleWithURL:v4];

  v5 = [[PDUDisclosureReviewViewController_iOS alloc] initWithBundle:v13 variant:0];
  [(PDUDisclosureReviewViewController_iOS *)v5 setDelegate:self];
  v6 = [(PDUWelcomeViewController_iOS *)self view];
  v7 = [v6 tintColor];
  v8 = [(PDUDisclosureReviewViewController_iOS *)v5 view];
  [v8 setTintColor:v7];

  v9 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v5];
  v10 = [(PDUWelcomeViewController_iOS *)self view];
  v11 = [v10 tintColor];
  v12 = [v9 view];
  [v12 setTintColor:v11];

  [v9 setOverrideUserInterfaceStyle:{-[PDUWelcomeViewController_iOS preferredUserInterfaceStyle](self, "preferredUserInterfaceStyle")}];
  [(PDUWelcomeViewController_iOS *)self presentViewController:v9 animated:1 completion:0];
}

- (int64_t)preferredUserInterfaceStyle
{
  v3 = [PDUAppDisclosureStyle styleWithApplication:self->_applicationRecord];
  v4 = [v3 interfaceStyle];

  if (!v4)
  {
    v6.receiver = self;
    v6.super_class = PDUWelcomeViewController_iOS;
    return [(PDUWelcomeViewController_iOS *)&v6 preferredUserInterfaceStyle];
  }

  return v4;
}

- (void)_updateContinueButtonConfiguration
{
  v3 = [(PDUWelcomeViewController_iOS *)self view];
  v16 = [v3 tintColor];

  v4 = [(PDUWelcomeViewController_iOS *)self continueButton];
  v5 = [v4 configuration];

  v6 = [v16 convertedToRGB];
  if (!v6)
  {
    goto LABEL_4;
  }

  v7 = [(PDUWelcomeViewController_iOS *)self continueButton];
  v8 = [v7 titleLabel];
  v9 = [v8 textColor];
  v10 = [v9 convertedToRGB];
  v11 = [v10 isEqual:v6];

  if (v11)
  {
    v12 = [MEMORY[0x277D75348] blackColor];
  }

  else
  {
LABEL_4:
    v12 = [(PDUWelcomeViewController_iOS *)self continueButtonOriginalTextColor];
  }

  v13 = v12;
  [v5 setBaseForegroundColor:v12];

  v14 = [(PDUWelcomeViewController_iOS *)self continueButton];
  [v14 setConfiguration:v5];

  v15 = [(PDUWelcomeViewController_iOS *)self continueButton];
  [v15 setNeedsUpdateConfiguration];
}

- (void)traitCollectionDidChange:(id)a3
{
  v7.receiver = self;
  v7.super_class = PDUWelcomeViewController_iOS;
  v4 = a3;
  [(PDUWelcomeViewController_iOS *)&v7 traitCollectionDidChange:v4];
  v5 = [(PDUWelcomeViewController_iOS *)self traitCollection:v7.receiver];
  v6 = [v5 hasDifferentColorAppearanceComparedToTraitCollection:v4];

  if (v6)
  {
    [(PDUWelcomeViewController_iOS *)self _updateContinueButtonConfiguration];
  }
}

- (PDUWelcomeViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (OBTrayButton)continueButton
{
  WeakRetained = objc_loadWeakRetained(&self->_continueButton);

  return WeakRetained;
}

@end