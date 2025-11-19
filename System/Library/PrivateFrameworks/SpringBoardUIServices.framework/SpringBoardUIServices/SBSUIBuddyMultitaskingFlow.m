@interface SBSUIBuddyMultitaskingFlow
- (OBWelcomeController)viewController;
- (SBSUIBuddyMultitaskingFlow)init;
- (SBSUIBuddyMultitaskingFlow)initWithDataSource:(id)a3;
- (id)_packageURL;
- (id)buildViewController;
- (id)makeViewControllerWithCompletion:(id)a3;
- (void)_configureAndLayoutPackageView;
- (void)_handleContinueButtonAction;
- (void)_updateInitialSelectedOptionView;
- (void)setSelectedOption:(int64_t)a3;
- (void)userDidTapOnMultitaskingOption:(int64_t)a3;
@end

@implementation SBSUIBuddyMultitaskingFlow

- (SBSUIBuddyMultitaskingFlow)initWithDataSource:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = SBSUIBuddyMultitaskingFlow;
  v6 = [(SBSUIBuddyMultitaskingFlow *)&v10 init];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.springboard"];
    sbDefaults = v6->_sbDefaults;
    v6->_sbDefaults = v7;

    objc_storeStrong(&v6->_dataSource, a3);
  }

  return v6;
}

- (SBSUIBuddyMultitaskingFlow)init
{
  v3 = [MEMORY[0x1E69D41F8] sharedInstance];
  v4 = [(SBSUIBuddyMultitaskingFlow *)self initWithDataSource:v3];

  return v4;
}

- (id)makeViewControllerWithCompletion:(id)a3
{
  [(SBSUIBuddyMultitaskingFlow *)self setCompletionHandler:a3];

  return [(SBSUIBuddyMultitaskingFlow *)self buildViewController];
}

- (id)buildViewController
{
  v67[2] = *MEMORY[0x1E69E9840];
  [(SBSUIBuddyMultitaskingFlow *)self viewController];
  if (objc_claimAutoreleasedReturnValue())
  {
    [SBSUIBuddyMultitaskingFlow buildViewController];
  }

  v62 = 0;
  v63 = &v62;
  v64 = 0x2050000000;
  v3 = getOBWelcomeControllerClass_softClass;
  v65 = getOBWelcomeControllerClass_softClass;
  if (!getOBWelcomeControllerClass_softClass)
  {
    v57 = MEMORY[0x1E69E9820];
    v58 = 3221225472;
    v59 = __getOBWelcomeControllerClass_block_invoke;
    v60 = &unk_1E789DA88;
    v61 = &v62;
    __getOBWelcomeControllerClass_block_invoke(&v57);
    v3 = v63[3];
  }

  v4 = v3;
  _Block_object_dispose(&v62, 8);
  v5 = [v3 alloc];
  v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"BUDDY_MULTITASKING_FLOW_TITLE" value:&stru_1F1D7ED48 table:@"SpringBoardUIServices"];
  v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"BUDDY_MULTITASKING_FLOW_DESCRIPTION" value:&stru_1F1D7ED48 table:@"SpringBoardUIServices"];
  v10 = [v5 initWithTitle:v7 detailText:v9 icon:0 contentLayout:2];

  [(SBSUIBuddyMultitaskingFlow *)self setViewController:v10];
  v11 = objc_opt_self();
  v67[0] = v11;
  v12 = objc_opt_self();
  v67[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:2];
  v14 = [v10 registerForTraitChanges:v13 withTarget:self action:sel__traitCollectionDidChange];

  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __49__SBSUIBuddyMultitaskingFlow_buildViewController__block_invoke;
  v56[3] = &unk_1E78A0630;
  v56[4] = self;
  [v10 setCallbackForLifeCyclePhase:5 callback:v56];
  v15 = [[SBSUIBuddyMultitaskingFlowOptionView alloc] initWithMultitaskingOption:0];
  fullScreenAppsOptionView = self->_fullScreenAppsOptionView;
  self->_fullScreenAppsOptionView = v15;

  [(SBSUIBuddyMultitaskingFlowOptionView *)self->_fullScreenAppsOptionView setDelegate:self];
  v17 = [[SBSUIBuddyMultitaskingFlowOptionView alloc] initWithMultitaskingOption:1];
  windowedAppsOptionView = self->_windowedAppsOptionView;
  self->_windowedAppsOptionView = v17;

  [(SBSUIBuddyMultitaskingFlowOptionView *)self->_windowedAppsOptionView setDelegate:self];
  [(SBSUIBuddyMultitaskingFlow *)self _updateInitialSelectedOptionView];
  v19 = objc_alloc(MEMORY[0x1E69DCF90]);
  v20 = self->_windowedAppsOptionView;
  v66[0] = self->_fullScreenAppsOptionView;
  v66[1] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:2];
  v22 = [v19 initWithArrangedSubviews:v21];
  optionsStackView = self->_optionsStackView;
  self->_optionsStackView = v22;

  [(UIStackView *)self->_optionsStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_optionsStackView setAxis:0];
  [(UIStackView *)self->_optionsStackView setAlignment:3];
  [(UIStackView *)self->_optionsStackView setDistribution:1];
  [(UIStackView *)self->_optionsStackView setSpacing:1.17549435e-38];
  v24 = [v10 contentView];
  [v24 addSubview:self->_optionsStackView];

  v62 = 0;
  v63 = &v62;
  v64 = 0x2050000000;
  v25 = getOBBoldTrayButtonClass_softClass;
  v65 = getOBBoldTrayButtonClass_softClass;
  if (!getOBBoldTrayButtonClass_softClass)
  {
    v57 = MEMORY[0x1E69E9820];
    v58 = 3221225472;
    v59 = __getOBBoldTrayButtonClass_block_invoke;
    v60 = &unk_1E789DA88;
    v61 = &v62;
    __getOBBoldTrayButtonClass_block_invoke(&v57);
    v25 = v63[3];
  }

  v26 = v25;
  _Block_object_dispose(&v62, 8);
  v27 = [v25 boldButton];
  continueButton = self->_continueButton;
  self->_continueButton = v27;

  v29 = self->_continueButton;
  v30 = [(SBSUIBuddyMultitaskingFlowOptionView *)self->_fullScreenAppsOptionView isSelected]|| [(SBSUIBuddyMultitaskingFlowOptionView *)self->_windowedAppsOptionView isSelected];
  [(OBTrayButton *)v29 setEnabled:v30];
  v31 = self->_continueButton;
  v32 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v33 = [v32 localizedStringForKey:@"BUDDY_MULTITASKING_FLOW_CONTINUE_BUTTON_LABEL" value:&stru_1F1D7ED48 table:@"SpringBoardUIServices"];
  [(OBTrayButton *)v31 setTitle:v33 forState:0];

  [(OBTrayButton *)self->_continueButton addTarget:self action:sel__handleContinueButtonAction forControlEvents:64];
  v34 = [v10 buttonTray];
  [v34 addButton:self->_continueButton];

  v35 = [MEMORY[0x1E695DF70] array];
  v36 = [(UIStackView *)self->_optionsStackView leadingAnchor];
  v37 = [v10 contentView];
  v38 = [v37 leadingAnchor];
  v39 = [v36 constraintEqualToAnchor:v38];
  [v35 addObject:v39];

  v40 = [(UIStackView *)self->_optionsStackView trailingAnchor];
  v41 = [v10 contentView];
  v42 = [v41 trailingAnchor];
  v43 = [v40 constraintEqualToAnchor:v42];
  [v35 addObject:v43];

  v44 = [(UIStackView *)self->_optionsStackView bottomAnchor];
  v45 = [v10 contentView];
  v46 = [v45 bottomAnchor];
  v47 = [v44 constraintEqualToAnchor:v46];
  [v35 addObject:v47];

  v48 = [(UIStackView *)self->_optionsStackView centerXAnchor];
  v49 = [v10 contentView];
  v50 = [v49 centerXAnchor];
  v51 = [v48 constraintEqualToAnchor:v50];
  [v35 addObject:v51];

  v52 = [(SBSUIBuddyMultitaskingFlowOptionView *)self->_fullScreenAppsOptionView heightAnchor];
  v53 = [(SBSUIBuddyMultitaskingFlowOptionView *)self->_windowedAppsOptionView heightAnchor];
  v54 = [v52 constraintEqualToAnchor:v53];
  [v35 addObject:v54];

  [MEMORY[0x1E696ACD8] activateConstraints:v35];

  return v10;
}

- (void)_configureAndLayoutPackageView
{
  v3 = [(SBSUIBuddyMultitaskingFlow *)self viewController];
  packageView = self->_packageView;
  if (packageView)
  {
    [(SBCAAutoPlayingPackageView *)packageView removeFromSuperview];
  }

  v5 = [SBCAAutoPlayingPackageView alloc];
  v6 = [(SBSUIBuddyMultitaskingFlow *)self _packageURL];
  v7 = [(SBCAAutoPlayingPackageView *)v5 initWithURL:v6 startingState:@"start" endingState:@"return"];
  v8 = self->_packageView;
  self->_packageView = v7;

  [(SBCAAutoPlayingPackageView *)self->_packageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 availableContentViewHeight];
  v10 = v9;
  [(UIStackView *)self->_optionsStackView frame];
  v12 = (v10 - v11) * 0.75;
  [(SBCAAutoPlayingPackageView *)self->_packageView frame];
  v14 = v12 / v13;
  v15 = [(SBCAAutoPlayingPackageView *)self->_packageView layer];
  [v15 setCornerRadius:v14 * 47.0];

  v16 = [(SBCAAutoPlayingPackageView *)self->_packageView layer];
  [v16 setMasksToBounds:1];

  v17 = [v3 traitCollection];
  v18 = [v17 userInterfaceStyle];

  v19 = [(SBCAAutoPlayingPackageView *)self->_packageView layer];
  v20 = v19;
  v21 = MEMORY[0x1E6979CE8];
  if (v18 != 1)
  {
    v21 = MEMORY[0x1E6979CF8];
  }

  [v19 setCompositingFilter:*v21];

  v22 = [(SBCAAutoPlayingPackageView *)self->_packageView layer];
  if (v18 == 1)
  {
    [MEMORY[0x1E69DC888] blackColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }
  v23 = ;
  v24 = [v23 colorWithAlphaComponent:0.1];
  [v22 setBorderColor:{objc_msgSend(v24, "cgColor")}];

  v25 = [(SBCAAutoPlayingPackageView *)self->_packageView layer];
  [v25 setBorderWidth:1.0];

  v26 = [v3 presentingViewController];
  v27 = [v26 view];
  v28 = [v27 effectiveUserInterfaceLayoutDirection];

  if (v28 == 1)
  {
    v29 = [(SBCAAutoPlayingPackageView *)self->_packageView layer];
    CATransform3DMakeRotation(&v48, 3.14159265, 0.0, 1.0, 0.0);
    [v29 setTransform:&v48];
  }

  v30 = [v3 contentView];
  [v30 addSubview:self->_packageView];

  v31 = [(SBCAAutoPlayingPackageView *)self->_packageView topAnchor];
  v32 = [v3 contentView];
  v33 = [v32 topAnchor];
  v34 = [v31 constraintEqualToAnchor:v33];
  [v34 setActive:1];

  v35 = [(SBCAAutoPlayingPackageView *)self->_packageView bottomAnchor];
  v36 = [(UIStackView *)self->_optionsStackView topAnchor];
  v37 = [v35 constraintEqualToAnchor:v36 constant:-25.0];
  [v37 setActive:1];

  v38 = [(SBCAAutoPlayingPackageView *)self->_packageView centerXAnchor];
  v39 = [v3 contentView];
  v40 = [v39 centerXAnchor];
  v41 = [v38 constraintEqualToAnchor:v40];
  [v41 setActive:1];

  v42 = [(SBCAAutoPlayingPackageView *)self->_packageView heightAnchor];
  v43 = [v42 constraintEqualToConstant:v12];
  [v43 setActive:1];

  [(SBCAAutoPlayingPackageView *)self->_packageView frame];
  v45 = v14 * v44;
  v46 = [(SBCAAutoPlayingPackageView *)self->_packageView widthAnchor];
  v47 = [v46 constraintEqualToConstant:v45];
  [v47 setActive:1];
}

- (id)_packageURL
{
  v3 = [(SBSUIBuddyMultitaskingFlow *)self selectedOption]+ 1;
  if (v3 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_1E78A0668[v3];
  }

  v5 = [(SBSUIBuddyMultitaskingFlow *)self viewController];
  v6 = [v5 traitCollection];
  v7 = [v6 userInterfaceStyle];

  if (v7 > 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = off_1E78A0680[v7];
  }

  v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", v4, v8];
  v11 = [v9 URLForResource:v10 withExtension:@"ca"];

  return v11;
}

- (void)_handleContinueButtonAction
{
  [(NSUserDefaults *)self->_sbDefaults setBool:0 forKey:@"SBChamoisWindowingEnabled"];
  [(NSUserDefaults *)self->_sbDefaults setBool:[(SBSUIBuddyMultitaskingFlow *)self selectedOption]== 1 forKey:@"SBMedusaMultitaskingEnabled"];
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    v4 = [(SBSUIBuddyMultitaskingFlow *)self selectedOption];
    v5 = completionHandler[2];

    v5(completionHandler, v4);
  }
}

- (void)_updateInitialSelectedOptionView
{
  v3 = [(SBSBuddyMultitaskingFlow *)self->_dataSource userPreviouslySelectedMultitaskingOptionInViewController];

  if (v3)
  {
    v4 = [(SBSBuddyMultitaskingFlow *)self->_dataSource userPreviouslySelectedMultitaskingOptionInViewController];
    v5 = [v4 integerValue];

LABEL_9:

    [(SBSUIBuddyMultitaskingFlow *)self setSelectedOption:v5];
    return;
  }

  v6 = [(NSUserDefaults *)self->_sbDefaults BOOLForKey:@"SBHasEverUsedMultiAppConfiguration"];
  [(SBSUIBuddyMultitaskingFlow *)self _currentDeviceMemorySizeInGigabytes];
  if (v7 >= 8.0 && v6)
  {
    v5 = 1;
    goto LABEL_9;
  }
}

- (void)setSelectedOption:(int64_t)a3
{
  self->_selectedOption = a3;
  [(SBSUIBuddyMultitaskingFlowOptionView *)self->_fullScreenAppsOptionView setSelected:a3 == 0];
  windowedAppsOptionView = self->_windowedAppsOptionView;

  [(SBSUIBuddyMultitaskingFlowOptionView *)windowedAppsOptionView setSelected:a3 == 1];
}

- (void)userDidTapOnMultitaskingOption:(int64_t)a3
{
  [(SBSUIBuddyMultitaskingFlow *)self setSelectedOption:a3];
  [(SBSUIBuddyMultitaskingFlow *)self _configureAndLayoutPackageView];
  dataSource = self->_dataSource;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[SBSUIBuddyMultitaskingFlow selectedOption](self, "selectedOption")}];
  [(SBSBuddyMultitaskingFlow *)dataSource setUserPreviouslySelectedMultitaskingOptionInViewController:v5];

  continueButton = self->_continueButton;

  [(OBTrayButton *)continueButton setEnabled:1];
}

- (OBWelcomeController)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

@end