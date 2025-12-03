@interface SBSUIBuddyMultitaskingFlow
- (OBWelcomeController)viewController;
- (SBSUIBuddyMultitaskingFlow)init;
- (SBSUIBuddyMultitaskingFlow)initWithDataSource:(id)source;
- (id)_packageURL;
- (id)buildViewController;
- (id)makeViewControllerWithCompletion:(id)completion;
- (void)_configureAndLayoutPackageView;
- (void)_handleContinueButtonAction;
- (void)_updateInitialSelectedOptionView;
- (void)setSelectedOption:(int64_t)option;
- (void)userDidTapOnMultitaskingOption:(int64_t)option;
@end

@implementation SBSUIBuddyMultitaskingFlow

- (SBSUIBuddyMultitaskingFlow)initWithDataSource:(id)source
{
  sourceCopy = source;
  v10.receiver = self;
  v10.super_class = SBSUIBuddyMultitaskingFlow;
  v6 = [(SBSUIBuddyMultitaskingFlow *)&v10 init];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.springboard"];
    sbDefaults = v6->_sbDefaults;
    v6->_sbDefaults = v7;

    objc_storeStrong(&v6->_dataSource, source);
  }

  return v6;
}

- (SBSUIBuddyMultitaskingFlow)init
{
  mEMORY[0x1E69D41F8] = [MEMORY[0x1E69D41F8] sharedInstance];
  v4 = [(SBSUIBuddyMultitaskingFlow *)self initWithDataSource:mEMORY[0x1E69D41F8]];

  return v4;
}

- (id)makeViewControllerWithCompletion:(id)completion
{
  [(SBSUIBuddyMultitaskingFlow *)self setCompletionHandler:completion];

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
  contentView = [v10 contentView];
  [contentView addSubview:self->_optionsStackView];

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
  boldButton = [v25 boldButton];
  continueButton = self->_continueButton;
  self->_continueButton = boldButton;

  v29 = self->_continueButton;
  isSelected = [(SBSUIBuddyMultitaskingFlowOptionView *)self->_fullScreenAppsOptionView isSelected]|| [(SBSUIBuddyMultitaskingFlowOptionView *)self->_windowedAppsOptionView isSelected];
  [(OBTrayButton *)v29 setEnabled:isSelected];
  v31 = self->_continueButton;
  v32 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v33 = [v32 localizedStringForKey:@"BUDDY_MULTITASKING_FLOW_CONTINUE_BUTTON_LABEL" value:&stru_1F1D7ED48 table:@"SpringBoardUIServices"];
  [(OBTrayButton *)v31 setTitle:v33 forState:0];

  [(OBTrayButton *)self->_continueButton addTarget:self action:sel__handleContinueButtonAction forControlEvents:64];
  buttonTray = [v10 buttonTray];
  [buttonTray addButton:self->_continueButton];

  array = [MEMORY[0x1E695DF70] array];
  leadingAnchor = [(UIStackView *)self->_optionsStackView leadingAnchor];
  contentView2 = [v10 contentView];
  leadingAnchor2 = [contentView2 leadingAnchor];
  v39 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [array addObject:v39];

  trailingAnchor = [(UIStackView *)self->_optionsStackView trailingAnchor];
  contentView3 = [v10 contentView];
  trailingAnchor2 = [contentView3 trailingAnchor];
  v43 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [array addObject:v43];

  bottomAnchor = [(UIStackView *)self->_optionsStackView bottomAnchor];
  contentView4 = [v10 contentView];
  bottomAnchor2 = [contentView4 bottomAnchor];
  v47 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [array addObject:v47];

  centerXAnchor = [(UIStackView *)self->_optionsStackView centerXAnchor];
  contentView5 = [v10 contentView];
  centerXAnchor2 = [contentView5 centerXAnchor];
  v51 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [array addObject:v51];

  heightAnchor = [(SBSUIBuddyMultitaskingFlowOptionView *)self->_fullScreenAppsOptionView heightAnchor];
  heightAnchor2 = [(SBSUIBuddyMultitaskingFlowOptionView *)self->_windowedAppsOptionView heightAnchor];
  v54 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
  [array addObject:v54];

  [MEMORY[0x1E696ACD8] activateConstraints:array];

  return v10;
}

- (void)_configureAndLayoutPackageView
{
  viewController = [(SBSUIBuddyMultitaskingFlow *)self viewController];
  packageView = self->_packageView;
  if (packageView)
  {
    [(SBCAAutoPlayingPackageView *)packageView removeFromSuperview];
  }

  v5 = [SBCAAutoPlayingPackageView alloc];
  _packageURL = [(SBSUIBuddyMultitaskingFlow *)self _packageURL];
  v7 = [(SBCAAutoPlayingPackageView *)v5 initWithURL:_packageURL startingState:@"start" endingState:@"return"];
  v8 = self->_packageView;
  self->_packageView = v7;

  [(SBCAAutoPlayingPackageView *)self->_packageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [viewController availableContentViewHeight];
  v10 = v9;
  [(UIStackView *)self->_optionsStackView frame];
  v12 = (v10 - v11) * 0.75;
  [(SBCAAutoPlayingPackageView *)self->_packageView frame];
  v14 = v12 / v13;
  layer = [(SBCAAutoPlayingPackageView *)self->_packageView layer];
  [layer setCornerRadius:v14 * 47.0];

  layer2 = [(SBCAAutoPlayingPackageView *)self->_packageView layer];
  [layer2 setMasksToBounds:1];

  traitCollection = [viewController traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  layer3 = [(SBCAAutoPlayingPackageView *)self->_packageView layer];
  v20 = layer3;
  v21 = MEMORY[0x1E6979CE8];
  if (userInterfaceStyle != 1)
  {
    v21 = MEMORY[0x1E6979CF8];
  }

  [layer3 setCompositingFilter:*v21];

  layer4 = [(SBCAAutoPlayingPackageView *)self->_packageView layer];
  if (userInterfaceStyle == 1)
  {
    [MEMORY[0x1E69DC888] blackColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }
  v23 = ;
  v24 = [v23 colorWithAlphaComponent:0.1];
  [layer4 setBorderColor:{objc_msgSend(v24, "cgColor")}];

  layer5 = [(SBCAAutoPlayingPackageView *)self->_packageView layer];
  [layer5 setBorderWidth:1.0];

  presentingViewController = [viewController presentingViewController];
  view = [presentingViewController view];
  effectiveUserInterfaceLayoutDirection = [view effectiveUserInterfaceLayoutDirection];

  if (effectiveUserInterfaceLayoutDirection == 1)
  {
    layer6 = [(SBCAAutoPlayingPackageView *)self->_packageView layer];
    CATransform3DMakeRotation(&v48, 3.14159265, 0.0, 1.0, 0.0);
    [layer6 setTransform:&v48];
  }

  contentView = [viewController contentView];
  [contentView addSubview:self->_packageView];

  topAnchor = [(SBCAAutoPlayingPackageView *)self->_packageView topAnchor];
  contentView2 = [viewController contentView];
  topAnchor2 = [contentView2 topAnchor];
  v34 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v34 setActive:1];

  bottomAnchor = [(SBCAAutoPlayingPackageView *)self->_packageView bottomAnchor];
  topAnchor3 = [(UIStackView *)self->_optionsStackView topAnchor];
  v37 = [bottomAnchor constraintEqualToAnchor:topAnchor3 constant:-25.0];
  [v37 setActive:1];

  centerXAnchor = [(SBCAAutoPlayingPackageView *)self->_packageView centerXAnchor];
  contentView3 = [viewController contentView];
  centerXAnchor2 = [contentView3 centerXAnchor];
  v41 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v41 setActive:1];

  heightAnchor = [(SBCAAutoPlayingPackageView *)self->_packageView heightAnchor];
  v43 = [heightAnchor constraintEqualToConstant:v12];
  [v43 setActive:1];

  [(SBCAAutoPlayingPackageView *)self->_packageView frame];
  v45 = v14 * v44;
  widthAnchor = [(SBCAAutoPlayingPackageView *)self->_packageView widthAnchor];
  v47 = [widthAnchor constraintEqualToConstant:v45];
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

  viewController = [(SBSUIBuddyMultitaskingFlow *)self viewController];
  traitCollection = [viewController traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle > 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = off_1E78A0680[userInterfaceStyle];
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
    selectedOption = [(SBSUIBuddyMultitaskingFlow *)self selectedOption];
    v5 = completionHandler[2];

    v5(completionHandler, selectedOption);
  }
}

- (void)_updateInitialSelectedOptionView
{
  userPreviouslySelectedMultitaskingOptionInViewController = [(SBSBuddyMultitaskingFlow *)self->_dataSource userPreviouslySelectedMultitaskingOptionInViewController];

  if (userPreviouslySelectedMultitaskingOptionInViewController)
  {
    userPreviouslySelectedMultitaskingOptionInViewController2 = [(SBSBuddyMultitaskingFlow *)self->_dataSource userPreviouslySelectedMultitaskingOptionInViewController];
    integerValue = [userPreviouslySelectedMultitaskingOptionInViewController2 integerValue];

LABEL_9:

    [(SBSUIBuddyMultitaskingFlow *)self setSelectedOption:integerValue];
    return;
  }

  v6 = [(NSUserDefaults *)self->_sbDefaults BOOLForKey:@"SBHasEverUsedMultiAppConfiguration"];
  [(SBSUIBuddyMultitaskingFlow *)self _currentDeviceMemorySizeInGigabytes];
  if (v7 >= 8.0 && v6)
  {
    integerValue = 1;
    goto LABEL_9;
  }
}

- (void)setSelectedOption:(int64_t)option
{
  self->_selectedOption = option;
  [(SBSUIBuddyMultitaskingFlowOptionView *)self->_fullScreenAppsOptionView setSelected:option == 0];
  windowedAppsOptionView = self->_windowedAppsOptionView;

  [(SBSUIBuddyMultitaskingFlowOptionView *)windowedAppsOptionView setSelected:option == 1];
}

- (void)userDidTapOnMultitaskingOption:(int64_t)option
{
  [(SBSUIBuddyMultitaskingFlow *)self setSelectedOption:option];
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