@interface PSGHomeButtonCustomizeController
- (PSGHomeButtonCustomizeController)init;
- (PSGHomeButtonCustomizeControllerDelegate)delegate;
- (unint64_t)getForceFeel;
- (void)_makeConstraints;
- (void)_updateDetailText;
- (void)barButtonTapped;
- (void)consumeAnyPressEventForButtonKind:(int64_t)a3;
- (void)dealloc;
- (void)loadView;
- (void)segmentedControl:(id)a3 didSelectSegmentAtIndex:(unint64_t)a4;
- (void)setForceFeel:(unint64_t)a3;
- (void)setListeningForHomeButtonPresses:(BOOL)a3;
- (void)setUsesDoneButton:(BOOL)a3;
- (void)willBecomeActive;
@end

@implementation PSGHomeButtonCustomizeController

- (PSGHomeButtonCustomizeController)init
{
  v7.receiver = self;
  v7.super_class = PSGHomeButtonCustomizeController;
  v2 = [(PSGHomeButtonCustomizeController *)&v7 init];
  v3 = v2;
  if (v2)
  {
    [(PSGHomeButtonCustomizeController *)v2 setUsesDoneButton:0];
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 addObserver:v3 selector:sel_willResignActive name:@"com.apple.PreferencesApp.willResignActive" object:0];

    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 addObserver:v3 selector:sel_willBecomeActive name:@"com.apple.PreferencesApp.willBecomeActive" object:0];

    v3->_reachabilityEnabled = SBSIsReachabilityEnabled() != 0;
  }

  return v3;
}

- (void)dealloc
{
  [(PSGHomeButtonCustomizeController *)self setListeningForHomeButtonPresses:0];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PSGHomeButtonCustomizeController;
  [(PSGHomeButtonCustomizeController *)&v4 dealloc];
}

- (unint64_t)getForceFeel
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v2 = dispatch_group_create();
  dispatch_group_enter(v2);
  v3 = [MEMORY[0x277D66AA0] sharedInstance];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__PSGHomeButtonCustomizeController_getForceFeel__block_invoke;
  v8[3] = &unk_278325660;
  v10 = &v11;
  v4 = v2;
  v9 = v4;
  [v3 fetchHapticTypeForButtonKind:1 completion:v8];

  v5 = dispatch_time(0, 5000000000);
  dispatch_group_wait(v4, v5);
  if ((v12[3] - 1) >= 3)
  {
    v6 = 2;
  }

  else
  {
    v6 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  return v6;
}

- (void)setForceFeel:(unint64_t)a3
{
  if (a3 - 1 >= 3)
  {
    v3 = 0;
  }

  else
  {
    v3 = a3;
  }

  v4 = [MEMORY[0x277D66AA0] sharedInstance];
  [v4 setHapticType:v3 forButtonKind:1];
}

- (void)_updateDetailText
{
  v3 = [(BFFPaneHeaderView *)self->_headerView detailTextLabel];
  v2 = PSG_LocalizedStringForHomeButton(@"CUSTOMIZE_DESCRIPTION");
  [v3 setText:v2];
}

- (void)setUsesDoneButton:(BOOL)a3
{
  v3 = a3;
  self->_usesDoneButton = a3;
  v5 = objc_alloc(MEMORY[0x277D751E0]);
  v6 = v5;
  if (v3)
  {
    v9 = [v5 initWithBarButtonSystemItem:0 target:self action:sel_barButtonTapped];
  }

  else
  {
    v7 = PSG_LocalizedStringForHomeButton(@"NEXT");
    v9 = [v6 initWithTitle:v7 style:2 target:self action:sel_barButtonTapped];
  }

  v8 = [(PSGHomeButtonCustomizeController *)self navigationItem];
  [v8 setRightBarButtonItem:v9];

  [(PSGHomeButtonCustomizeController *)self _updateDetailText];
}

- (void)loadView
{
  v28.receiver = self;
  v28.super_class = PSGHomeButtonCustomizeController;
  [(PSGHomeButtonCustomizeController *)&v28 loadView];
  v3 = [(PSGHomeButtonCustomizeController *)self view];
  v4 = [getBFFStyleClass() sharedStyle];
  v5 = [v4 backgroundColor];
  [v3 setBackgroundColor:v5];

  v30 = 0;
  v31 = &v30;
  v32 = 0x2050000000;
  v6 = getBFFPaneHeaderViewClass_softClass;
  v33 = getBFFPaneHeaderViewClass_softClass;
  if (!getBFFPaneHeaderViewClass_softClass)
  {
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __getBFFPaneHeaderViewClass_block_invoke;
    v29[3] = &unk_278325308;
    v29[4] = &v30;
    __getBFFPaneHeaderViewClass_block_invoke(v29);
    v6 = v31[3];
  }

  v7 = v6;
  _Block_object_dispose(&v30, 8);
  v8 = objc_opt_new();
  headerView = self->_headerView;
  self->_headerView = v8;

  v10 = self->_headerView;
  v11 = PSG_LocalizedStringForHomeButton(@"CHOOSE_YOUR_CLICK_FEEL");
  [(BFFPaneHeaderView *)v10 setTitleText:v11];

  [(BFFPaneHeaderView *)self->_headerView setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = [(BFFPaneHeaderView *)self->_headerView detailTextLabel];
  [v12 setAdjustsFontSizeToFitWidth:1];

  [(PSGHomeButtonCustomizeController *)self _updateDetailText];
  v13 = [(PSGHomeButtonCustomizeController *)self view];
  [v13 addSubview:self->_headerView];

  v14 = objc_opt_new();
  segmentedControl = self->_segmentedControl;
  self->_segmentedControl = v14;

  v16 = self->_segmentedControl;
  v17 = [MEMORY[0x277CCABB8] localizedStringFromNumber:&unk_282E8FF68 numberStyle:1];
  [(PSGCircleSegmentedControl *)v16 addSegmentWithTitle:v17];

  v18 = self->_segmentedControl;
  v19 = [MEMORY[0x277CCABB8] localizedStringFromNumber:&unk_282E8FF80 numberStyle:1];
  [(PSGCircleSegmentedControl *)v18 addSegmentWithTitle:v19];

  v20 = self->_segmentedControl;
  v21 = [MEMORY[0x277CCABB8] localizedStringFromNumber:&unk_282E8FF98 numberStyle:1];
  [(PSGCircleSegmentedControl *)v20 addSegmentWithTitle:v21];

  [(PSGCircleSegmentedControl *)self->_segmentedControl setDelegate:self];
  v22 = [(PSGCircleSegmentedControl *)self->_segmentedControl label];
  if (self->_usesDoneButton)
  {
    v23 = @"CUSTOMIZE_INSTRUCTIONS_DONE";
  }

  else
  {
    v23 = @"CUSTOMIZE_INSTRUCTIONS_NEXT";
  }

  v24 = PSG_LocalizedStringForHomeButton(v23);
  [v22 setText:v24];

  v25 = [getBFFStyleClass() sharedStyle];
  v26 = [(PSGCircleSegmentedControl *)self->_segmentedControl label];
  [v25 applyThemeToLabel:v26];

  [(PSGCircleSegmentedControl *)self->_segmentedControl setTranslatesAutoresizingMaskIntoConstraints:0];
  v27 = [(PSGHomeButtonCustomizeController *)self view];
  [v27 addSubview:self->_segmentedControl];

  [(PSGHomeButtonCustomizeController *)self _makeConstraints];
}

- (void)willBecomeActive
{
  if (self->_visible)
  {
    [(PSGHomeButtonCustomizeController *)self setListeningForHomeButtonPresses:1];
  }
}

- (void)setListeningForHomeButtonPresses:(BOOL)a3
{
  v3 = a3;
  v18 = *MEMORY[0x277D85DE8];
  v5 = _PSGLoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v17[0] = 67109120;
    v17[1] = v3;
    _os_log_impl(&dword_21CF20000, v5, OS_LOG_TYPE_DEFAULT, "Now intercepting home button presses: %d", v17, 8u);
  }

  if (self->_reachabilityEnabled)
  {
    [*MEMORY[0x277D76620] _setReachabilitySupported:!v3];
  }

  if (v3)
  {
    if (self->_menuButtonRecognizer)
    {
      [PSGHomeButtonCustomizeController setListeningForHomeButtonPresses:];
    }

    v6 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self->_segmentedControl action:sel_menuButtonPressed];
    menuButtonRecognizer = self->_menuButtonRecognizer;
    self->_menuButtonRecognizer = v6;

    [(UITapGestureRecognizer *)self->_menuButtonRecognizer setAllowedPressTypes:&unk_282E8FDA0];
    v8 = [(PSGHomeButtonCustomizeController *)self view];
    v9 = [v8 window];
    [v9 addGestureRecognizer:self->_menuButtonRecognizer];

    v10 = [MEMORY[0x277D66AA0] sharedInstance];
    v11 = [v10 beginConsumingPressesForButtonKind:1 eventConsumer:self priority:0];
    eventConsumerToken = self->_eventConsumerToken;
    self->_eventConsumerToken = v11;
  }

  else
  {
    v13 = [(PSGHomeButtonCustomizeController *)self view];
    v14 = [v13 window];
    [v14 removeGestureRecognizer:self->_menuButtonRecognizer];

    v15 = self->_menuButtonRecognizer;
    self->_menuButtonRecognizer = 0;

    [(BSInvalidatable *)self->_eventConsumerToken invalidate];
    v10 = self->_eventConsumerToken;
    self->_eventConsumerToken = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)barButtonTapped
{
  v3 = [(PSGHomeButtonCustomizeController *)self delegate];
  [v3 homeButtonCustomizeControllerDidFinish:self];
}

- (void)_makeConstraints
{
  LODWORD(v2) = 1148846080;
  [(BFFPaneHeaderView *)self->_headerView setContentHuggingPriority:1 forAxis:v2];
  v4 = [(BFFPaneHeaderView *)self->_headerView topAnchor];
  v5 = [(PSGHomeButtonCustomizeController *)self view];
  v6 = [v5 safeAreaLayoutGuide];
  v7 = [v6 topAnchor];
  v8 = [v4 constraintEqualToSystemSpacingBelowAnchor:v7 multiplier:1.0];
  [v8 setActive:1];

  v9 = [(BFFPaneHeaderView *)self->_headerView leadingAnchor];
  v10 = [(PSGHomeButtonCustomizeController *)self view];
  v11 = [v10 layoutMarginsGuide];
  v12 = [v11 leadingAnchor];
  v13 = [v9 constraintEqualToAnchor:v12];
  [v13 setActive:1];

  v14 = [(BFFPaneHeaderView *)self->_headerView trailingAnchor];
  v15 = [(PSGHomeButtonCustomizeController *)self view];
  v16 = [v15 layoutMarginsGuide];
  v17 = [v16 trailingAnchor];
  v18 = [v14 constraintEqualToAnchor:v17];
  [v18 setActive:1];

  v73 = [(BFFPaneHeaderView *)self->_headerView textLabel];
  [v73 setTranslatesAutoresizingMaskIntoConstraints:0];
  v19 = [(BFFPaneHeaderView *)self->_headerView detailTextLabel];
  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v20) = 1144750080;
  [v73 setContentHuggingPriority:1 forAxis:v20];
  LODWORD(v21) = 1144750080;
  [v73 setContentCompressionResistancePriority:1 forAxis:v21];
  v22 = [getBFFStyleClass() sharedStyle];
  v23 = [(PSGHomeButtonCustomizeController *)self view];
  v24 = [(PSGHomeButtonCustomizeController *)self view];
  [v24 bounds];
  [v22 horizontalInsetsForContainingInView:v23 width:v25];
  v27 = v26;

  v28 = [(PSGHomeButtonCustomizeController *)self traitCollection];
  v29 = [v28 preferredContentSizeCategory];
  LODWORD(v24) = UIContentSizeCategoryIsAccessibilityCategory(v29);

  v30 = [v73 topAnchor];
  v31 = [(BFFPaneHeaderView *)self->_headerView topAnchor];
  v32 = 10.0;
  if (v24)
  {
    v32 = 0.0;
  }

  v33 = [v30 constraintEqualToAnchor:v31 constant:v32];
  [v33 setActive:1];

  v34 = [v73 leadingAnchor];
  v35 = [(BFFPaneHeaderView *)self->_headerView leadingAnchor];
  v36 = [v34 constraintEqualToAnchor:v35 constant:v27];
  [v36 setActive:1];

  v37 = [v73 trailingAnchor];
  v38 = [(BFFPaneHeaderView *)self->_headerView trailingAnchor];
  v39 = [v37 constraintEqualToAnchor:v38 constant:-v27];
  [v39 setActive:1];

  v40 = [v19 topAnchor];
  v41 = [v73 bottomAnchor];
  v42 = [v40 constraintEqualToSystemSpacingBelowAnchor:v41 multiplier:1.0];
  [v42 setActive:1];

  v43 = [v19 leadingAnchor];
  v44 = [(BFFPaneHeaderView *)self->_headerView leadingAnchor];
  v45 = [v43 constraintEqualToAnchor:v44 constant:v27];
  [v45 setActive:1];

  v46 = [v19 trailingAnchor];
  v47 = [(BFFPaneHeaderView *)self->_headerView trailingAnchor];
  v48 = [v46 constraintEqualToAnchor:v47 constant:-v27];
  [v48 setActive:1];

  v49 = [(BFFPaneHeaderView *)self->_headerView bottomAnchor];
  v50 = [v19 bottomAnchor];
  v51 = [v49 constraintEqualToSystemSpacingBelowAnchor:v50 multiplier:1.0];
  [v51 setActive:1];

  v52 = [(PSGCircleSegmentedControl *)self->_segmentedControl topAnchor];
  v53 = [(BFFPaneHeaderView *)self->_headerView bottomAnchor];
  v54 = [v52 constraintEqualToSystemSpacingBelowAnchor:v53 multiplier:1.0];
  [v54 setActive:1];

  v55 = [(PSGCircleSegmentedControl *)self->_segmentedControl centerXAnchor];
  v56 = [(PSGHomeButtonCustomizeController *)self view];
  v57 = [v56 centerXAnchor];
  v58 = [v55 constraintEqualToAnchor:v57];
  [v58 setActive:1];

  v59 = [(PSGCircleSegmentedControl *)self->_segmentedControl leadingAnchor];
  v60 = [(PSGHomeButtonCustomizeController *)self view];
  v61 = [v60 layoutMarginsGuide];
  v62 = [v61 leadingAnchor];
  v63 = [v59 constraintEqualToAnchor:v62];
  [v63 setActive:1];

  v64 = [(PSGCircleSegmentedControl *)self->_segmentedControl trailingAnchor];
  v65 = [(PSGHomeButtonCustomizeController *)self view];
  v66 = [v65 layoutMarginsGuide];
  v67 = [v66 trailingAnchor];
  v68 = [v64 constraintEqualToAnchor:v67];
  [v68 setActive:1];

  v69 = [(PSGCircleSegmentedControl *)self->_segmentedControl bottomAnchor];
  v70 = [(PSGHomeButtonCustomizeController *)self view];
  v71 = [v70 bottomAnchor];
  v72 = [v69 constraintEqualToAnchor:v71 constant:-3.0];
  [v72 setActive:1];
}

- (void)segmentedControl:(id)a3 didSelectSegmentAtIndex:(unint64_t)a4
{
  if (a4 < 3)
  {
    v5 = a4 + 1;
  }

  else
  {
    v5 = 0;
  }

  [(PSGHomeButtonCustomizeController *)self setForceFeel:v5];
  self->_forceFeelValueChanged = 1;
}

- (void)consumeAnyPressEventForButtonKind:(int64_t)a3
{
  v3 = _PSGLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21CF20000, v3, OS_LOG_TYPE_DEFAULT, "Consuming home button press", v4, 2u);
  }
}

- (PSGHomeButtonCustomizeControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end