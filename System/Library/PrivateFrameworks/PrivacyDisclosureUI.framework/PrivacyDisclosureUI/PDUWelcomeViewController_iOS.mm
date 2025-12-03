@interface PDUWelcomeViewController_iOS
- (OBTrayButton)continueButton;
- (PDUWelcomeViewControllerDelegate)delegate;
- (PDUWelcomeViewController_iOS)initWithApplicationIdentity:(id)identity consentStore:(id)store;
- (id)_requestIconForApplication:(id)application;
- (int64_t)preferredUserInterfaceStyle;
- (void)_updateContinueButtonConfiguration;
- (void)cancelPressed;
- (void)continuePressed;
- (void)learnMorePressed;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
@end

@implementation PDUWelcomeViewController_iOS

- (PDUWelcomeViewController_iOS)initWithApplicationIdentity:(id)identity consentStore:(id)store
{
  identityCopy = identity;
  storeCopy = store;
  v19 = 0;
  v9 = [identityCopy findApplicationRecordWithError:&v19];
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
    objc_storeStrong(&v14->_applicationIdentity, identity);
    objc_storeStrong(&v15->_applicationRecord, v9);
    objc_storeStrong(&v15->_consentStore, store);
    v16 = v15;
  }

  return v15;
}

- (id)_requestIconForApplication:(id)application
{
  v4 = MEMORY[0x277D1B1A8];
  applicationCopy = application;
  v6 = [v4 alloc];
  bundleIdentifier = [applicationCopy bundleIdentifier];

  v8 = [v6 initWithBundleIdentifier:bundleIdentifier];
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
    view = [(PDUWelcomeViewController_iOS *)self view];
    [view setTintColor:v7];
  }

  boldButton = [MEMORY[0x277D37618] boldButton];
  v10 = PDULocalizedString(@"WELCOME_CONTINUE");
  [boldButton setTitle:v10 forState:0];

  [boldButton addTarget:self action:sel_continuePressed forControlEvents:64];
  [boldButton setAccessibilityIdentifier:@"continue-button"];
  buttonTray = [(PDUWelcomeViewController_iOS *)self buttonTray];
  [buttonTray addButton:boldButton];

  convertedToRGB = [v7 convertedToRGB];
  if (convertedToRGB)
  {
    titleLabel = [boldButton titleLabel];
    textColor = [titleLabel textColor];
    convertedToRGB2 = [textColor convertedToRGB];
    v15 = [convertedToRGB2 isEqual:convertedToRGB];

    if (v15)
    {
      configuration = [boldButton configuration];
      baseForegroundColor = [configuration baseForegroundColor];
      [(PDUWelcomeViewController_iOS *)self setContinueButtonOriginalTextColor:baseForegroundColor];

      blackColor = [MEMORY[0x277D75348] blackColor];
      [configuration setBaseForegroundColor:blackColor];

      [boldButton setConfiguration:configuration];
      [boldButton setNeedsUpdateConfiguration];
    }
  }

  v52 = v7;
  [(PDUWelcomeViewController_iOS *)self setContinueButton:boldButton];
  linkButton = [MEMORY[0x277D37650] linkButton];
  v20 = PDULocalizedString(@"WELCOME_CLOSE");
  v21 = [MEMORY[0x277CCACA8] stringWithFormat:v20, v6];
  [linkButton setTitle:v21 forState:0];

  [linkButton addTarget:self action:sel_cancelPressed forControlEvents:64];
  [linkButton setAccessibilityIdentifier:@"cancel-button"];
  buttonTray2 = [(PDUWelcomeViewController_iOS *)self buttonTray];
  [buttonTray2 addButton:linkButton];

  if (PDUShouldShowLearnMoreScreen(v4))
  {
    [MEMORY[0x277D75220] buttonWithType:1];
    v23 = v50 = v6;
    v24 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76920] variant:0];
    [v23 titleLabel];
    v25 = v49 = v20;
    [v25 setFont:v24];

    titleLabel2 = [v23 titleLabel];
    [titleLabel2 setAdjustsFontForContentSizeCategory:1];

    v27 = PDULocalizedString(@"WELCOME_LEARN_MORE");
    [v23 setTitle:v27 forState:0];

    v28 = [MEMORY[0x277D755B8] systemImageNamed:@"info.circle.fill"];
    [v23 setImage:v28 forState:0];

    [v23 addTarget:self action:sel_learnMorePressed forControlEvents:64];
    [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(PDUWelcomeViewController_iOS *)self contentView];
    [contentView setTranslatesAutoresizingMaskIntoConstraints:0];

    contentView2 = [(PDUWelcomeViewController_iOS *)self contentView];
    [contentView2 addSubview:v23];

    v31 = MEMORY[0x277CCAAD0];
    contentView3 = [(PDUWelcomeViewController_iOS *)self contentView];
    v33 = [v31 constraintWithItem:v23 attribute:3 relatedBy:0 toItem:contentView3 attribute:3 multiplier:1.0 constant:0.0];

    v34 = MEMORY[0x277CCAAD0];
    contentView4 = [(PDUWelcomeViewController_iOS *)self contentView];
    v36 = [v34 constraintWithItem:v23 attribute:1 relatedBy:0 toItem:contentView4 attribute:1 multiplier:1.0 constant:0.0];

    v37 = MEMORY[0x277CCAAD0];
    [(PDUWelcomeViewController_iOS *)self contentView];
    v38 = v51 = v5;
    v39 = [v37 constraintWithItem:v38 attribute:7 relatedBy:1 toItem:v23 attribute:7 multiplier:1.0 constant:0.0];

    v40 = MEMORY[0x277CCAAD0];
    [(PDUWelcomeViewController_iOS *)self contentView];
    v41 = v48 = v4;
    v42 = [v40 constraintWithItem:v41 attribute:8 relatedBy:0 toItem:v23 attribute:8 multiplier:1.0 constant:0.0];

    contentView5 = [(PDUWelcomeViewController_iOS *)self contentView];
    v56[0] = v33;
    v56[1] = v36;
    v56[2] = v42;
    v56[3] = v39;
    v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:4];
    [contentView5 addConstraints:v44];

    v4 = v48;
    v5 = v51;

    v20 = v49;
    v6 = v50;
  }

  view2 = [(PDUWelcomeViewController_iOS *)self view];
  [view2 setAccessibilityIdentifier:@"pdui-welcome-view"];

  contentView6 = [(PDUWelcomeViewController_iOS *)self contentView];
  [contentView6 layoutIfNeeded];

  v54.receiver = self;
  v54.super_class = PDUWelcomeViewController_iOS;
  [(OBBaseWelcomeController *)&v54 viewDidLoad];

  v47 = *MEMORY[0x277D85DE8];
}

- (void)continuePressed
{
  delegate = [(PDUWelcomeViewController_iOS *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    regulatoryPrivacyDisclosureVersion = [(PDCApplicationRecord *)self->_applicationRecord regulatoryPrivacyDisclosureVersion];
    bundleIdentifier = [(PDCApplicationRecord *)self->_applicationRecord bundleIdentifier];
    v6 = [(PDCConsentStore *)self->_consentStore writeUserConsentedRegulatoryDisclosureVersion:regulatoryPrivacyDisclosureVersion forBundleIdentifier:bundleIdentifier];
    delegate2 = [(PDUWelcomeViewController_iOS *)self delegate];
    [delegate2 welcomeViewController:self didDismissWithUserResponse:1];
  }
}

- (void)cancelPressed
{
  delegate = [(PDUWelcomeViewController_iOS *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(PDUWelcomeViewController_iOS *)self delegate];
    [delegate2 welcomeViewController:self didDismissWithUserResponse:0];
  }
}

- (void)learnMorePressed
{
  v3 = MEMORY[0x277CCA8D8];
  v4 = [(PDCApplicationRecord *)self->_applicationRecord URL];
  v13 = [v3 bundleWithURL:v4];

  v5 = [[PDUDisclosureReviewViewController_iOS alloc] initWithBundle:v13 variant:0];
  [(PDUDisclosureReviewViewController_iOS *)v5 setDelegate:self];
  view = [(PDUWelcomeViewController_iOS *)self view];
  tintColor = [view tintColor];
  view2 = [(PDUDisclosureReviewViewController_iOS *)v5 view];
  [view2 setTintColor:tintColor];

  v9 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v5];
  view3 = [(PDUWelcomeViewController_iOS *)self view];
  tintColor2 = [view3 tintColor];
  view4 = [v9 view];
  [view4 setTintColor:tintColor2];

  [v9 setOverrideUserInterfaceStyle:{-[PDUWelcomeViewController_iOS preferredUserInterfaceStyle](self, "preferredUserInterfaceStyle")}];
  [(PDUWelcomeViewController_iOS *)self presentViewController:v9 animated:1 completion:0];
}

- (int64_t)preferredUserInterfaceStyle
{
  v3 = [PDUAppDisclosureStyle styleWithApplication:self->_applicationRecord];
  interfaceStyle = [v3 interfaceStyle];

  if (!interfaceStyle)
  {
    v6.receiver = self;
    v6.super_class = PDUWelcomeViewController_iOS;
    return [(PDUWelcomeViewController_iOS *)&v6 preferredUserInterfaceStyle];
  }

  return interfaceStyle;
}

- (void)_updateContinueButtonConfiguration
{
  view = [(PDUWelcomeViewController_iOS *)self view];
  tintColor = [view tintColor];

  continueButton = [(PDUWelcomeViewController_iOS *)self continueButton];
  configuration = [continueButton configuration];

  convertedToRGB = [tintColor convertedToRGB];
  if (!convertedToRGB)
  {
    goto LABEL_4;
  }

  continueButton2 = [(PDUWelcomeViewController_iOS *)self continueButton];
  titleLabel = [continueButton2 titleLabel];
  textColor = [titleLabel textColor];
  convertedToRGB2 = [textColor convertedToRGB];
  v11 = [convertedToRGB2 isEqual:convertedToRGB];

  if (v11)
  {
    blackColor = [MEMORY[0x277D75348] blackColor];
  }

  else
  {
LABEL_4:
    blackColor = [(PDUWelcomeViewController_iOS *)self continueButtonOriginalTextColor];
  }

  v13 = blackColor;
  [configuration setBaseForegroundColor:blackColor];

  continueButton3 = [(PDUWelcomeViewController_iOS *)self continueButton];
  [continueButton3 setConfiguration:configuration];

  continueButton4 = [(PDUWelcomeViewController_iOS *)self continueButton];
  [continueButton4 setNeedsUpdateConfiguration];
}

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = PDUWelcomeViewController_iOS;
  changeCopy = change;
  [(PDUWelcomeViewController_iOS *)&v7 traitCollectionDidChange:changeCopy];
  v5 = [(PDUWelcomeViewController_iOS *)self traitCollection:v7.receiver];
  v6 = [v5 hasDifferentColorAppearanceComparedToTraitCollection:changeCopy];

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