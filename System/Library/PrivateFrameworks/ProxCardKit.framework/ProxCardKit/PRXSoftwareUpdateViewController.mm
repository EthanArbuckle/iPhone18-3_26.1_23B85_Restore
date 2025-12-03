@interface PRXSoftwareUpdateViewController
- (void)installSettingsIcon;
- (void)viewDidLoad;
@end

@implementation PRXSoftwareUpdateViewController

- (void)viewDidLoad
{
  v20.receiver = self;
  v20.super_class = PRXSoftwareUpdateViewController;
  [(PRXCardContentViewController *)&v20 viewDidLoad];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [mainBundle localizedStringForKey:@"SOFTWARE_UPDATE" value:&stru_2873787A8 table:0];
  [(PRXCardContentViewController *)self setTitle:v4];

  v5 = PRXIsPad();
  v6 = @"SOFTWARE_UPDATE_SUBTITLE_IOS";
  if (v5)
  {
    v6 = @"SOFTWARE_UPDATE_SUBTITLE_IPADOS";
  }

  v7 = v6;
  mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
  v9 = [mainBundle2 localizedStringForKey:v7 value:&stru_2873787A8 table:0];
  [(PRXCardContentViewController *)self setSubtitle:v9];

  [(PRXCardContentViewController *)self setDismissalType:3];
  objc_initWeak(&location, self);
  mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
  v11 = [mainBundle3 localizedStringForKey:@"CHECK_FOR_UPDATE" value:&stru_2873787A8 table:0];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __46__PRXSoftwareUpdateViewController_viewDidLoad__block_invoke;
  v17 = &unk_279ACC330;
  objc_copyWeak(&v18, &location);
  v12 = [PRXAction actionWithTitle:v11 style:0 handler:&v14];

  v13 = [(PRXCardContentViewController *)self addAction:v12, v14, v15, v16, v17];
  [(PRXSoftwareUpdateViewController *)self installSettingsIcon];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __46__PRXSoftwareUpdateViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:1 completion:&__block_literal_global_1];
}

void __46__PRXSoftwareUpdateViewController_viewDidLoad__block_invoke_2()
{
  v25[2] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=General&path=SOFTWARE_UPDATE_LINK&ShowDefaultAudiencePane=YES"];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v1 = getFBSOpenApplicationOptionKeyUnlockDeviceSymbolLoc_ptr;
  v22 = getFBSOpenApplicationOptionKeyUnlockDeviceSymbolLoc_ptr;
  if (!getFBSOpenApplicationOptionKeyUnlockDeviceSymbolLoc_ptr)
  {
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __getFBSOpenApplicationOptionKeyUnlockDeviceSymbolLoc_block_invoke;
    v17 = &unk_279ACC358;
    v18 = &v19;
    v2 = FrontBoardServicesLibrary();
    v20[3] = dlsym(v2, "FBSOpenApplicationOptionKeyUnlockDevice");
    getFBSOpenApplicationOptionKeyUnlockDeviceSymbolLoc_ptr = *(v18[1] + 24);
    v1 = v20[3];
  }

  _Block_object_dispose(&v19, 8);
  if (!v1)
  {
    goto LABEL_10;
  }

  v3 = *v1;
  v23 = v3;
  v4 = MEMORY[0x277CBEC38];
  v25[0] = MEMORY[0x277CBEC38];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v5 = getFBSOpenApplicationOptionKeyPromptUnlockDeviceSymbolLoc_ptr;
  v22 = getFBSOpenApplicationOptionKeyPromptUnlockDeviceSymbolLoc_ptr;
  if (!getFBSOpenApplicationOptionKeyPromptUnlockDeviceSymbolLoc_ptr)
  {
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __getFBSOpenApplicationOptionKeyPromptUnlockDeviceSymbolLoc_block_invoke;
    v17 = &unk_279ACC358;
    v18 = &v19;
    v6 = FrontBoardServicesLibrary();
    v20[3] = dlsym(v6, "FBSOpenApplicationOptionKeyPromptUnlockDevice");
    getFBSOpenApplicationOptionKeyPromptUnlockDeviceSymbolLoc_ptr = *(v18[1] + 24);
    v5 = v20[3];
  }

  _Block_object_dispose(&v19, 8);
  if (!v5)
  {
LABEL_10:
    __46__PRXSoftwareUpdateViewController_viewDidLoad__block_invoke_2_cold_1();
    __break(1u);
  }

  v24 = *v5;
  v25[1] = v4;
  v7 = MEMORY[0x277CBEAC0];
  v8 = v24;
  v9 = [v7 dictionaryWithObjects:v25 forKeys:&v23 count:2];

  v19 = 0;
  v20 = &v19;
  v21 = 0x2050000000;
  v10 = getLSApplicationWorkspaceClass_softClass;
  v22 = getLSApplicationWorkspaceClass_softClass;
  if (!getLSApplicationWorkspaceClass_softClass)
  {
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __getLSApplicationWorkspaceClass_block_invoke;
    v17 = &unk_279ACC358;
    v18 = &v19;
    __getLSApplicationWorkspaceClass_block_invoke(&v14);
    v10 = v20[3];
  }

  v11 = v10;
  _Block_object_dispose(&v19, 8);
  v12 = [v10 defaultWorkspace];
  v13 = 0;
  [v12 openSensitiveURL:v0 withOptions:v9 error:&v13];
}

- (void)installSettingsIcon
{
  v77[17] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D756D0]);
  contentView = [(PRXCardContentViewController *)self contentView];
  [contentView addLayoutGuide:v3];

  v76 = [MEMORY[0x277D755B8] imageNamed:@"Settings"];
  v5 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v76];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView2 = [(PRXCardContentViewController *)self contentView];
  [contentView2 addSubview:v5];

  v7 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  systemRedColor = [MEMORY[0x277D75348] systemRedColor];
  [v7 setBackgroundColor:systemRedColor];

  layer = [v7 layer];
  [layer setCornerRadius:19.0];

  contentView3 = [(PRXCardContentViewController *)self contentView];
  [contentView3 addSubview:v7];

  v11 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = [MEMORY[0x277CCABB8] localizedStringFromNumber:&unk_287381858 numberStyle:0];
  [v11 setText:v12];

  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [v11 setTextColor:whiteColor];

  [v11 setTextAlignment:1];
  v14 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76938]];
  v75 = [v14 fontDescriptorWithSymbolicTraits:{objc_msgSend(v14, "symbolicTraits") | 2}];

  v15 = [MEMORY[0x277D74300] fontWithDescriptor:v75 size:25.0];
  [v11 setFont:v15];

  [v7 addSubview:v11];
  if ([(PRXSoftwareUpdateViewController *)self offsetIcon])
  {
    v16 = 30.0 - 20.0;
  }

  else
  {
    v16 = 0.0;
  }

  contentView4 = [(PRXCardContentViewController *)self contentView];
  mainContentGuide = [contentView4 mainContentGuide];

  v51 = MEMORY[0x277CCAAD0];
  centerXAnchor = [v3 centerXAnchor];
  centerXAnchor2 = [mainContentGuide centerXAnchor];
  v72 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v77[0] = v72;
  topAnchor = [v3 topAnchor];
  v71 = mainContentGuide;
  topAnchor2 = [mainContentGuide topAnchor];
  v68 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v16];
  v77[1] = v68;
  bottomAnchor = [v3 bottomAnchor];
  bottomAnchor2 = [mainContentGuide bottomAnchor];
  v65 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
  v77[2] = v65;
  leadingAnchor = [v5 leadingAnchor];
  leadingAnchor2 = [v3 leadingAnchor];
  v62 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v77[3] = v62;
  trailingAnchor = [v5 trailingAnchor];
  trailingAnchor2 = [v3 trailingAnchor];
  v58 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-11.0];
  v77[4] = v58;
  topAnchor3 = [v5 topAnchor];
  topAnchor4 = [v3 topAnchor];
  v54 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:11.0];
  v77[5] = v54;
  v61 = v5;
  bottomAnchor3 = [v5 bottomAnchor];
  bottomAnchor4 = [v3 bottomAnchor];
  v50 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v77[6] = v50;
  widthAnchor = [v5 widthAnchor];
  v48 = [widthAnchor constraintEqualToConstant:104.0];
  v77[7] = v48;
  heightAnchor = [v5 heightAnchor];
  widthAnchor2 = [v5 widthAnchor];
  v45 = [heightAnchor constraintEqualToAnchor:widthAnchor2];
  v77[8] = v45;
  topAnchor5 = [v7 topAnchor];
  v57 = v3;
  topAnchor6 = [v3 topAnchor];
  v41 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  v77[9] = v41;
  v19 = v7;
  trailingAnchor3 = [v7 trailingAnchor];
  trailingAnchor4 = [v3 trailingAnchor];
  v38 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v77[10] = v38;
  widthAnchor3 = [v7 widthAnchor];
  v36 = [widthAnchor3 constraintEqualToConstant:38.0];
  v77[11] = v36;
  heightAnchor2 = [v7 heightAnchor];
  widthAnchor4 = [v7 widthAnchor];
  v33 = [heightAnchor2 constraintEqualToAnchor:widthAnchor4];
  v77[12] = v33;
  leadingAnchor3 = [v11 leadingAnchor];
  leadingAnchor4 = [v7 leadingAnchor];
  v30 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v77[13] = v30;
  topAnchor7 = [v11 topAnchor];
  topAnchor8 = [v7 topAnchor];
  v21 = [topAnchor7 constraintEqualToAnchor:topAnchor8];
  v77[14] = v21;
  v44 = v11;
  bottomAnchor5 = [v11 bottomAnchor];
  bottomAnchor6 = [v7 bottomAnchor];
  v24 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
  v77[15] = v24;
  trailingAnchor5 = [v11 trailingAnchor];
  trailingAnchor6 = [v19 trailingAnchor];
  v27 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v77[16] = v27;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v77 count:17];
  [v51 activateConstraints:v28];
}

uint64_t __46__PRXSoftwareUpdateViewController_viewDidLoad__block_invoke_2_cold_1()
{
  dlerror();
  abort_report_np();
  return __getLSApplicationWorkspaceClass_block_invoke_cold_1();
}

@end