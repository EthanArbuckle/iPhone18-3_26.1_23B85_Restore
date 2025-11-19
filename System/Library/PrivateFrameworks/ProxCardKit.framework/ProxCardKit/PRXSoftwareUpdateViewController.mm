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
  v3 = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [v3 localizedStringForKey:@"SOFTWARE_UPDATE" value:&stru_2873787A8 table:0];
  [(PRXCardContentViewController *)self setTitle:v4];

  v5 = PRXIsPad();
  v6 = @"SOFTWARE_UPDATE_SUBTITLE_IOS";
  if (v5)
  {
    v6 = @"SOFTWARE_UPDATE_SUBTITLE_IPADOS";
  }

  v7 = v6;
  v8 = [MEMORY[0x277CCA8D8] mainBundle];
  v9 = [v8 localizedStringForKey:v7 value:&stru_2873787A8 table:0];
  [(PRXCardContentViewController *)self setSubtitle:v9];

  [(PRXCardContentViewController *)self setDismissalType:3];
  objc_initWeak(&location, self);
  v10 = [MEMORY[0x277CCA8D8] mainBundle];
  v11 = [v10 localizedStringForKey:@"CHECK_FOR_UPDATE" value:&stru_2873787A8 table:0];
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
  v4 = [(PRXCardContentViewController *)self contentView];
  [v4 addLayoutGuide:v3];

  v76 = [MEMORY[0x277D755B8] imageNamed:@"Settings"];
  v5 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v76];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = [(PRXCardContentViewController *)self contentView];
  [v6 addSubview:v5];

  v7 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [MEMORY[0x277D75348] systemRedColor];
  [v7 setBackgroundColor:v8];

  v9 = [v7 layer];
  [v9 setCornerRadius:19.0];

  v10 = [(PRXCardContentViewController *)self contentView];
  [v10 addSubview:v7];

  v11 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = [MEMORY[0x277CCABB8] localizedStringFromNumber:&unk_287381858 numberStyle:0];
  [v11 setText:v12];

  v13 = [MEMORY[0x277D75348] whiteColor];
  [v11 setTextColor:v13];

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

  v17 = [(PRXCardContentViewController *)self contentView];
  v18 = [v17 mainContentGuide];

  v51 = MEMORY[0x277CCAAD0];
  v74 = [v3 centerXAnchor];
  v73 = [v18 centerXAnchor];
  v72 = [v74 constraintEqualToAnchor:v73];
  v77[0] = v72;
  v70 = [v3 topAnchor];
  v71 = v18;
  v69 = [v18 topAnchor];
  v68 = [v70 constraintEqualToAnchor:v69 constant:v16];
  v77[1] = v68;
  v67 = [v3 bottomAnchor];
  v66 = [v18 bottomAnchor];
  v65 = [v67 constraintLessThanOrEqualToAnchor:v66];
  v77[2] = v65;
  v64 = [v5 leadingAnchor];
  v63 = [v3 leadingAnchor];
  v62 = [v64 constraintEqualToAnchor:v63];
  v77[3] = v62;
  v60 = [v5 trailingAnchor];
  v59 = [v3 trailingAnchor];
  v58 = [v60 constraintEqualToAnchor:v59 constant:-11.0];
  v77[4] = v58;
  v56 = [v5 topAnchor];
  v55 = [v3 topAnchor];
  v54 = [v56 constraintEqualToAnchor:v55 constant:11.0];
  v77[5] = v54;
  v61 = v5;
  v53 = [v5 bottomAnchor];
  v52 = [v3 bottomAnchor];
  v50 = [v53 constraintEqualToAnchor:v52];
  v77[6] = v50;
  v49 = [v5 widthAnchor];
  v48 = [v49 constraintEqualToConstant:104.0];
  v77[7] = v48;
  v47 = [v5 heightAnchor];
  v46 = [v5 widthAnchor];
  v45 = [v47 constraintEqualToAnchor:v46];
  v77[8] = v45;
  v43 = [v7 topAnchor];
  v57 = v3;
  v42 = [v3 topAnchor];
  v41 = [v43 constraintEqualToAnchor:v42];
  v77[9] = v41;
  v19 = v7;
  v40 = [v7 trailingAnchor];
  v39 = [v3 trailingAnchor];
  v38 = [v40 constraintEqualToAnchor:v39];
  v77[10] = v38;
  v37 = [v7 widthAnchor];
  v36 = [v37 constraintEqualToConstant:38.0];
  v77[11] = v36;
  v35 = [v7 heightAnchor];
  v34 = [v7 widthAnchor];
  v33 = [v35 constraintEqualToAnchor:v34];
  v77[12] = v33;
  v32 = [v11 leadingAnchor];
  v31 = [v7 leadingAnchor];
  v30 = [v32 constraintEqualToAnchor:v31];
  v77[13] = v30;
  v29 = [v11 topAnchor];
  v20 = [v7 topAnchor];
  v21 = [v29 constraintEqualToAnchor:v20];
  v77[14] = v21;
  v44 = v11;
  v22 = [v11 bottomAnchor];
  v23 = [v7 bottomAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];
  v77[15] = v24;
  v25 = [v11 trailingAnchor];
  v26 = [v19 trailingAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];
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