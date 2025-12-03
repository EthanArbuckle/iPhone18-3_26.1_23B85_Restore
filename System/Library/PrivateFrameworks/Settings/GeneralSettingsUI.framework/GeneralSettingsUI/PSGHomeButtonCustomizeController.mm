@interface PSGHomeButtonCustomizeController
- (PSGHomeButtonCustomizeController)init;
- (PSGHomeButtonCustomizeControllerDelegate)delegate;
- (unint64_t)getForceFeel;
- (void)_makeConstraints;
- (void)_updateDetailText;
- (void)barButtonTapped;
- (void)consumeAnyPressEventForButtonKind:(int64_t)kind;
- (void)dealloc;
- (void)loadView;
- (void)segmentedControl:(id)control didSelectSegmentAtIndex:(unint64_t)index;
- (void)setForceFeel:(unint64_t)feel;
- (void)setListeningForHomeButtonPresses:(BOOL)presses;
- (void)setUsesDoneButton:(BOOL)button;
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
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel_willResignActive name:@"com.apple.PreferencesApp.willResignActive" object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v3 selector:sel_willBecomeActive name:@"com.apple.PreferencesApp.willBecomeActive" object:0];

    v3->_reachabilityEnabled = SBSIsReachabilityEnabled() != 0;
  }

  return v3;
}

- (void)dealloc
{
  [(PSGHomeButtonCustomizeController *)self setListeningForHomeButtonPresses:0];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

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
  mEMORY[0x277D66AA0] = [MEMORY[0x277D66AA0] sharedInstance];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__PSGHomeButtonCustomizeController_getForceFeel__block_invoke;
  v8[3] = &unk_278325660;
  v10 = &v11;
  v4 = v2;
  v9 = v4;
  [mEMORY[0x277D66AA0] fetchHapticTypeForButtonKind:1 completion:v8];

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

- (void)setForceFeel:(unint64_t)feel
{
  if (feel - 1 >= 3)
  {
    feelCopy = 0;
  }

  else
  {
    feelCopy = feel;
  }

  mEMORY[0x277D66AA0] = [MEMORY[0x277D66AA0] sharedInstance];
  [mEMORY[0x277D66AA0] setHapticType:feelCopy forButtonKind:1];
}

- (void)_updateDetailText
{
  detailTextLabel = [(BFFPaneHeaderView *)self->_headerView detailTextLabel];
  v2 = PSG_LocalizedStringForHomeButton(@"CUSTOMIZE_DESCRIPTION");
  [detailTextLabel setText:v2];
}

- (void)setUsesDoneButton:(BOOL)button
{
  buttonCopy = button;
  self->_usesDoneButton = button;
  v5 = objc_alloc(MEMORY[0x277D751E0]);
  v6 = v5;
  if (buttonCopy)
  {
    v9 = [v5 initWithBarButtonSystemItem:0 target:self action:sel_barButtonTapped];
  }

  else
  {
    v7 = PSG_LocalizedStringForHomeButton(@"NEXT");
    v9 = [v6 initWithTitle:v7 style:2 target:self action:sel_barButtonTapped];
  }

  navigationItem = [(PSGHomeButtonCustomizeController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v9];

  [(PSGHomeButtonCustomizeController *)self _updateDetailText];
}

- (void)loadView
{
  v28.receiver = self;
  v28.super_class = PSGHomeButtonCustomizeController;
  [(PSGHomeButtonCustomizeController *)&v28 loadView];
  view = [(PSGHomeButtonCustomizeController *)self view];
  sharedStyle = [getBFFStyleClass() sharedStyle];
  backgroundColor = [sharedStyle backgroundColor];
  [view setBackgroundColor:backgroundColor];

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
  detailTextLabel = [(BFFPaneHeaderView *)self->_headerView detailTextLabel];
  [detailTextLabel setAdjustsFontSizeToFitWidth:1];

  [(PSGHomeButtonCustomizeController *)self _updateDetailText];
  view2 = [(PSGHomeButtonCustomizeController *)self view];
  [view2 addSubview:self->_headerView];

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
  label = [(PSGCircleSegmentedControl *)self->_segmentedControl label];
  if (self->_usesDoneButton)
  {
    v23 = @"CUSTOMIZE_INSTRUCTIONS_DONE";
  }

  else
  {
    v23 = @"CUSTOMIZE_INSTRUCTIONS_NEXT";
  }

  v24 = PSG_LocalizedStringForHomeButton(v23);
  [label setText:v24];

  sharedStyle2 = [getBFFStyleClass() sharedStyle];
  label2 = [(PSGCircleSegmentedControl *)self->_segmentedControl label];
  [sharedStyle2 applyThemeToLabel:label2];

  [(PSGCircleSegmentedControl *)self->_segmentedControl setTranslatesAutoresizingMaskIntoConstraints:0];
  view3 = [(PSGHomeButtonCustomizeController *)self view];
  [view3 addSubview:self->_segmentedControl];

  [(PSGHomeButtonCustomizeController *)self _makeConstraints];
}

- (void)willBecomeActive
{
  if (self->_visible)
  {
    [(PSGHomeButtonCustomizeController *)self setListeningForHomeButtonPresses:1];
  }
}

- (void)setListeningForHomeButtonPresses:(BOOL)presses
{
  pressesCopy = presses;
  v18 = *MEMORY[0x277D85DE8];
  v5 = _PSGLoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v17[0] = 67109120;
    v17[1] = pressesCopy;
    _os_log_impl(&dword_21CF20000, v5, OS_LOG_TYPE_DEFAULT, "Now intercepting home button presses: %d", v17, 8u);
  }

  if (self->_reachabilityEnabled)
  {
    [*MEMORY[0x277D76620] _setReachabilitySupported:!pressesCopy];
  }

  if (pressesCopy)
  {
    if (self->_menuButtonRecognizer)
    {
      [PSGHomeButtonCustomizeController setListeningForHomeButtonPresses:];
    }

    v6 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self->_segmentedControl action:sel_menuButtonPressed];
    menuButtonRecognizer = self->_menuButtonRecognizer;
    self->_menuButtonRecognizer = v6;

    [(UITapGestureRecognizer *)self->_menuButtonRecognizer setAllowedPressTypes:&unk_282E8FDA0];
    view = [(PSGHomeButtonCustomizeController *)self view];
    window = [view window];
    [window addGestureRecognizer:self->_menuButtonRecognizer];

    mEMORY[0x277D66AA0] = [MEMORY[0x277D66AA0] sharedInstance];
    v11 = [mEMORY[0x277D66AA0] beginConsumingPressesForButtonKind:1 eventConsumer:self priority:0];
    eventConsumerToken = self->_eventConsumerToken;
    self->_eventConsumerToken = v11;
  }

  else
  {
    view2 = [(PSGHomeButtonCustomizeController *)self view];
    window2 = [view2 window];
    [window2 removeGestureRecognizer:self->_menuButtonRecognizer];

    v15 = self->_menuButtonRecognizer;
    self->_menuButtonRecognizer = 0;

    [(BSInvalidatable *)self->_eventConsumerToken invalidate];
    mEMORY[0x277D66AA0] = self->_eventConsumerToken;
    self->_eventConsumerToken = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)barButtonTapped
{
  delegate = [(PSGHomeButtonCustomizeController *)self delegate];
  [delegate homeButtonCustomizeControllerDidFinish:self];
}

- (void)_makeConstraints
{
  LODWORD(v2) = 1148846080;
  [(BFFPaneHeaderView *)self->_headerView setContentHuggingPriority:1 forAxis:v2];
  topAnchor = [(BFFPaneHeaderView *)self->_headerView topAnchor];
  view = [(PSGHomeButtonCustomizeController *)self view];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v8 = [topAnchor constraintEqualToSystemSpacingBelowAnchor:topAnchor2 multiplier:1.0];
  [v8 setActive:1];

  leadingAnchor = [(BFFPaneHeaderView *)self->_headerView leadingAnchor];
  view2 = [(PSGHomeButtonCustomizeController *)self view];
  layoutMarginsGuide = [view2 layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v13 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v13 setActive:1];

  trailingAnchor = [(BFFPaneHeaderView *)self->_headerView trailingAnchor];
  view3 = [(PSGHomeButtonCustomizeController *)self view];
  layoutMarginsGuide2 = [view3 layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
  v18 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v18 setActive:1];

  textLabel = [(BFFPaneHeaderView *)self->_headerView textLabel];
  [textLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  detailTextLabel = [(BFFPaneHeaderView *)self->_headerView detailTextLabel];
  [detailTextLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v20) = 1144750080;
  [textLabel setContentHuggingPriority:1 forAxis:v20];
  LODWORD(v21) = 1144750080;
  [textLabel setContentCompressionResistancePriority:1 forAxis:v21];
  sharedStyle = [getBFFStyleClass() sharedStyle];
  view4 = [(PSGHomeButtonCustomizeController *)self view];
  view5 = [(PSGHomeButtonCustomizeController *)self view];
  [view5 bounds];
  [sharedStyle horizontalInsetsForContainingInView:view4 width:v25];
  v27 = v26;

  traitCollection = [(PSGHomeButtonCustomizeController *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  LODWORD(view5) = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  topAnchor3 = [textLabel topAnchor];
  topAnchor4 = [(BFFPaneHeaderView *)self->_headerView topAnchor];
  v32 = 10.0;
  if (view5)
  {
    v32 = 0.0;
  }

  v33 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:v32];
  [v33 setActive:1];

  leadingAnchor3 = [textLabel leadingAnchor];
  leadingAnchor4 = [(BFFPaneHeaderView *)self->_headerView leadingAnchor];
  v36 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:v27];
  [v36 setActive:1];

  trailingAnchor3 = [textLabel trailingAnchor];
  trailingAnchor4 = [(BFFPaneHeaderView *)self->_headerView trailingAnchor];
  v39 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-v27];
  [v39 setActive:1];

  topAnchor5 = [detailTextLabel topAnchor];
  bottomAnchor = [textLabel bottomAnchor];
  v42 = [topAnchor5 constraintEqualToSystemSpacingBelowAnchor:bottomAnchor multiplier:1.0];
  [v42 setActive:1];

  leadingAnchor5 = [detailTextLabel leadingAnchor];
  leadingAnchor6 = [(BFFPaneHeaderView *)self->_headerView leadingAnchor];
  v45 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:v27];
  [v45 setActive:1];

  trailingAnchor5 = [detailTextLabel trailingAnchor];
  trailingAnchor6 = [(BFFPaneHeaderView *)self->_headerView trailingAnchor];
  v48 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-v27];
  [v48 setActive:1];

  bottomAnchor2 = [(BFFPaneHeaderView *)self->_headerView bottomAnchor];
  bottomAnchor3 = [detailTextLabel bottomAnchor];
  v51 = [bottomAnchor2 constraintEqualToSystemSpacingBelowAnchor:bottomAnchor3 multiplier:1.0];
  [v51 setActive:1];

  topAnchor6 = [(PSGCircleSegmentedControl *)self->_segmentedControl topAnchor];
  bottomAnchor4 = [(BFFPaneHeaderView *)self->_headerView bottomAnchor];
  v54 = [topAnchor6 constraintEqualToSystemSpacingBelowAnchor:bottomAnchor4 multiplier:1.0];
  [v54 setActive:1];

  centerXAnchor = [(PSGCircleSegmentedControl *)self->_segmentedControl centerXAnchor];
  view6 = [(PSGHomeButtonCustomizeController *)self view];
  centerXAnchor2 = [view6 centerXAnchor];
  v58 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v58 setActive:1];

  leadingAnchor7 = [(PSGCircleSegmentedControl *)self->_segmentedControl leadingAnchor];
  view7 = [(PSGHomeButtonCustomizeController *)self view];
  layoutMarginsGuide3 = [view7 layoutMarginsGuide];
  leadingAnchor8 = [layoutMarginsGuide3 leadingAnchor];
  v63 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
  [v63 setActive:1];

  trailingAnchor7 = [(PSGCircleSegmentedControl *)self->_segmentedControl trailingAnchor];
  view8 = [(PSGHomeButtonCustomizeController *)self view];
  layoutMarginsGuide4 = [view8 layoutMarginsGuide];
  trailingAnchor8 = [layoutMarginsGuide4 trailingAnchor];
  v68 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
  [v68 setActive:1];

  bottomAnchor5 = [(PSGCircleSegmentedControl *)self->_segmentedControl bottomAnchor];
  view9 = [(PSGHomeButtonCustomizeController *)self view];
  bottomAnchor6 = [view9 bottomAnchor];
  v72 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6 constant:-3.0];
  [v72 setActive:1];
}

- (void)segmentedControl:(id)control didSelectSegmentAtIndex:(unint64_t)index
{
  if (index < 3)
  {
    v5 = index + 1;
  }

  else
  {
    v5 = 0;
  }

  [(PSGHomeButtonCustomizeController *)self setForceFeel:v5];
  self->_forceFeelValueChanged = 1;
}

- (void)consumeAnyPressEventForButtonKind:(int64_t)kind
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