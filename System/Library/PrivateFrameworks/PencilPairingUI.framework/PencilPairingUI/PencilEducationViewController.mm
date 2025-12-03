@interface PencilEducationViewController
+ (id)localizedTitle;
- (BOOL)isAnimating;
- (BOOL)shouldBeginAnimationForElementController:(id)controller;
- (PencilEducationViewControllerDelegate)delegate;
- (double)calculateFittingHeightByTemporarilyAdjustingFrameForWidth:(double)width;
- (id)traitCollection;
- (void)_configureViewControllersIfNecessary;
- (void)addControllerToContainer:(id)container;
- (void)beginAnimationIfNecessaryForElementController:(id)controller delay:(double)delay;
- (void)cancelScheduledAnimations;
- (void)dealloc;
- (void)elementControllerDidAppear:(id)appear;
- (void)elementControllerWillReplay:(id)replay;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)segmentedControlDidChange:(id)change;
- (void)setDisplayedController:(id)controller;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PencilEducationViewController

+ (id)localizedTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:self];
  v3 = [v2 localizedStringForKey:@"EDUCATION_PANEL_TITLE" value:&stru_286FDFDB8 table:@"PencilSettings"];

  return v3;
}

- (double)calculateFittingHeightByTemporarilyAdjustingFrameForWidth:(double)width
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  viewControllers = [(PencilEducationViewController *)self viewControllers];
  v6 = [viewControllers countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    v9 = 0.0;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(viewControllers);
        }

        [*(*(&v19 + 1) + 8 * i) calculateFittingHeightByTemporarilyAdjustingFrameForWidth:width];
        if (v9 < v11)
        {
          v9 = v11;
        }
      }

      v7 = [viewControllers countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  else
  {
    v9 = 0.0;
  }

  view = [(PencilEducationViewController *)self view];
  [view bounds];
  v14 = v13;
  containerView = [(PencilEducationViewController *)self containerView];
  [containerView bounds];
  v17 = v16;

  return v9 + v14 - v17;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  [(PencilEducationViewController *)self removeObserver:self forKeyPath:@"displayedController.animationInProgress"];
  v4.receiver = self;
  v4.super_class = PencilEducationViewController;
  [(PencilEducationViewController *)&v4 dealloc];
}

- (void)viewDidAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = PencilEducationViewController;
  [(PencilEducationViewController *)&v7 viewDidAppear:appear];
  if (![(PencilEducationViewController *)self didRunInitialAppearActions]|| [(PencilEducationViewController *)self didDisappear])
  {
    date = [MEMORY[0x277CBEAA8] date];
    [(PencilEducationViewController *)self setAppearDate:date];

    [(PencilEducationViewController *)self setDidRunInitialAppearActions:1];
    [(PencilEducationViewController *)self setDidDisappear:0];
    displayedController = [(PencilEducationViewController *)self displayedController];
    [(PencilEducationViewController *)self beginAnimationIfNecessaryForElementController:displayedController delay:0.5];
  }

  mEMORY[0x277CD9698] = [MEMORY[0x277CD9698] sharedSettings];
  [mEMORY[0x277CD9698] setForceUserTextInputSettingEnabled:1];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v11.receiver = self;
  v11.super_class = PencilEducationViewController;
  [(PencilEducationViewController *)&v11 viewDidDisappear:disappear];
  appearDate = [(PencilEducationViewController *)self appearDate];

  if (appearDate)
  {
    date = [MEMORY[0x277CBEAA8] date];
    appearDate2 = [(PencilEducationViewController *)self appearDate];
    [date timeIntervalSinceDate:appearDate2];
    v8 = v7;

    v9 = +[PencilSettingsStatisticsManager sharedInstance];
    [v9 recordEducationPencilDidShow:v8];
  }

  [(PencilEducationViewController *)self setDidDisappear:1];
  mEMORY[0x277CD9698] = [MEMORY[0x277CD9698] sharedSettings];
  [mEMORY[0x277CD9698] setForceUserTextInputSettingEnabled:0];
}

- (void)viewDidLoad
{
  v45.receiver = self;
  v45.super_class = PencilEducationViewController;
  [(PencilEducationViewController *)&v45 viewDidLoad];
  [(PencilEducationViewController *)self _configureViewControllersIfNecessary];
  view = [(PencilEducationViewController *)self view];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = objc_alloc_init(MEMORY[0x277D75A08]);
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = [v4 localizedStringForKey:@"HANDWRITE_SEGMENT_TITLE" value:&stru_286FDFDB8 table:@"PencilSettings"];
  [v5 addSegmentWithTitle:v6];

  v7 = [v4 localizedStringForKey:@"DELETE_SEGMENT_TITLE" value:&stru_286FDFDB8 table:@"PencilSettings"];
  [v5 addSegmentWithTitle:v7];

  v8 = [v4 localizedStringForKey:@"SELECT_SEGMENT_TITLE" value:&stru_286FDFDB8 table:@"PencilSettings"];
  [v5 addSegmentWithTitle:v8];

  v9 = [v4 localizedStringForKey:@"INSERT_SEGMENT_TITLE" value:&stru_286FDFDB8 table:@"PencilSettings"];
  [v5 addSegmentWithTitle:v9];

  v10 = [v4 localizedStringForKey:@"JOIN_SEGMENT_TITLE" value:&stru_286FDFDB8 table:@"PencilSettings"];
  [v5 addSegmentWithTitle:v10];

  [v5 setApportionsSegmentWidthsByContent:1];
  [v5 _setAutosizeText:1];
  [v5 selectSegment:0];
  [v5 addTarget:self action:sel_segmentedControlDidChange_ forControlEvents:4096];
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  centerXAnchor = [v5 centerXAnchor];
  centerXAnchor2 = [view centerXAnchor];
  v14 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v11 addObject:v14];

  topAnchor = [v5 topAnchor];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v18 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
  [v11 addObject:v18];

  widthAnchor = [v5 widthAnchor];
  v20 = [widthAnchor constraintEqualToConstant:448.0];
  segmentedControlWidthConstraint = self->_segmentedControlWidthConstraint;
  self->_segmentedControlWidthConstraint = v20;

  [v11 addObject:self->_segmentedControlWidthConstraint];
  LODWORD(v22) = 1148846080;
  [v5 setContentHuggingPriority:1 forAxis:v22];
  v23 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
  widthAnchor2 = [v23 widthAnchor];
  v25 = [widthAnchor2 constraintEqualToConstant:448.0];
  containerViewWidthConstraint = self->_containerViewWidthConstraint;
  self->_containerViewWidthConstraint = v25;

  [v11 addObject:self->_containerViewWidthConstraint];
  centerXAnchor3 = [v23 centerXAnchor];
  centerXAnchor4 = [view centerXAnchor];
  v29 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  [v11 addObject:v29];

  topAnchor3 = [v23 topAnchor];
  bottomAnchor = [v5 bottomAnchor];
  v32 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
  [v11 addObject:v32];

  bottomAnchor2 = [v23 bottomAnchor];
  safeAreaLayoutGuide2 = [view safeAreaLayoutGuide];
  bottomAnchor3 = [safeAreaLayoutGuide2 bottomAnchor];
  v36 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  [v11 addObject:v36];

  [v5 sizeThatFits:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
  if (v37 > 0.0)
  {
    v38 = v37;
    heightAnchor = [v5 heightAnchor];
    v40 = [heightAnchor constraintEqualToConstant:v38];
    [v11 addObject:v40];
  }

  [view addSubview:v23];
  [view addSubview:v5];
  [MEMORY[0x277CCAAD0] activateConstraints:v11];
  [(PencilEducationViewController *)self setContainerView:v23];
  [(PencilEducationViewController *)self setSegmentedControl:v5];
  segmentedControl = [(PencilEducationViewController *)self segmentedControl];
  [segmentedControl setSelectedSegment:0];

  segmentedControl2 = [(PencilEducationViewController *)self segmentedControl];
  [(PencilEducationViewController *)self segmentedControlDidChange:segmentedControl2];

  v43 = objc_alloc_init(MEMORY[0x277CD9660]);
  [v43 setDelegate:self];
  view2 = [(PencilEducationViewController *)self view];
  [view2 addInteraction:v43];

  [(PencilEducationViewController *)self addObserver:self forKeyPath:@"displayedController.animationInProgress" options:0 context:0];
  [(PencilEducationViewController *)self setSetupComplete:1];
}

- (void)viewDidLayoutSubviews
{
  v9.receiver = self;
  v9.super_class = PencilEducationViewController;
  [(PencilEducationViewController *)&v9 viewDidLayoutSubviews];
  view = [(PencilEducationViewController *)self view];
  [view frame];
  v5 = v4;

  if (v5 >= 488.0)
  {
    v8 = 448.0;
  }

  else
  {
    view2 = [(PencilEducationViewController *)self view];
    [view2 frame];
    v8 = v7 + -40.0;
  }

  [(NSLayoutConstraint *)self->_segmentedControlWidthConstraint setConstant:v8];
  [(NSLayoutConstraint *)self->_containerViewWidthConstraint setConstant:v8];
}

- (id)traitCollection
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = PencilEducationViewController;
  traitCollection = [(PencilEducationViewController *)&v9 traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  if (([preferredContentSizeCategory isEqualToString:*MEMORY[0x277D76800]] & 1) != 0 || (objc_msgSend(preferredContentSizeCategory, "isEqualToString:", *MEMORY[0x277D767F8]) & 1) != 0 || (objc_msgSend(preferredContentSizeCategory, "isEqualToString:", *MEMORY[0x277D767F0]) & 1) != 0 || objc_msgSend(preferredContentSizeCategory, "isEqualToString:", *MEMORY[0x277D767E8]))
  {
    v4 = MEMORY[0x277D75C80];
    v10[0] = traitCollection;
    v5 = [MEMORY[0x277D75C80] traitCollectionWithPreferredContentSizeCategory:*MEMORY[0x277D76820]];
    v10[1] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
    v7 = [v4 traitCollectionWithTraitsFromCollections:v6];

    traitCollection = v7;
  }

  return traitCollection;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if ([path isEqualToString:{@"displayedController.animationInProgress", object, change, context}])
  {
    delegate = [(PencilEducationViewController *)self delegate];
    [delegate educationController:self didChangeAnimationState:{-[PencilEducationViewController isAnimating](self, "isAnimating")}];
  }
}

- (void)segmentedControlDidChange:(id)change
{
  selectedSegment = [change selectedSegment];
  viewControllers = [(PencilEducationViewController *)self viewControllers];
  v6 = [viewControllers objectAtIndexedSubscript:selectedSegment];
  [(PencilEducationViewController *)self setDisplayedController:v6];

  if ([(PencilEducationViewController *)self setupComplete])
  {
    v7 = +[PencilSettingsStatisticsManager sharedInstance];
    [v7 recordEducationPanelChanged:selectedSegment];
  }
}

- (void)setDisplayedController:(id)controller
{
  controllerCopy = controller;
  displayedController = self->_displayedController;
  if (displayedController != controllerCopy)
  {
    if (displayedController)
    {
      v7 = displayedController;
      objc_storeStrong(&self->_displayedController, controller);
      view = [(PencilEducationElementViewController *)controllerCopy view];
      [view setAlpha:0.0];

      [(PencilEducationViewController *)self addControllerToContainer:controllerCopy];
      v9 = MEMORY[0x277D75D18];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __56__PencilEducationViewController_setDisplayedController___block_invoke;
      v16[3] = &unk_279A0A1F0;
      v17 = v7;
      v18 = controllerCopy;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __56__PencilEducationViewController_setDisplayedController___block_invoke_2;
      v13[3] = &unk_279A0A218;
      v14 = v17;
      selfCopy = self;
      v10 = v17;
      [v9 animateWithDuration:v16 animations:v13 completion:0.25];
    }

    else
    {
      objc_storeStrong(&self->_displayedController, controller);
      [(PencilEducationViewController *)self addControllerToContainer:self->_displayedController];
      displayedController = [(PencilEducationViewController *)self displayedController];
      [(PencilEducationViewController *)self beginAnimationIfNecessaryForElementController:displayedController delay:0.5];

      delegate = [(PencilEducationViewController *)self delegate];
      [delegate educationControllerDidChangePanel:self];
    }
  }
}

void __56__PencilEducationViewController_setDisplayedController___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setAlpha:0.0];

  v3 = [*(a1 + 40) view];
  [v3 setAlpha:1.0];
}

void __56__PencilEducationViewController_setDisplayedController___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 removeFromSuperview];

  [*(a1 + 40) removeChildViewController:*(a1 + 32)];
  v3 = *(a1 + 40);
  v4 = [v3 displayedController];
  [v3 beginAnimationIfNecessaryForElementController:v4 delay:0.5];

  v5 = [*(a1 + 40) delegate];
  [v5 educationControllerDidChangePanel:*(a1 + 40)];
}

- (void)addControllerToContainer:(id)container
{
  containerCopy = container;
  [(PencilEducationViewController *)self addChildViewController:containerCopy];
  view = [containerCopy view];

  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  containerView = [(PencilEducationViewController *)self containerView];
  [containerView addSubview:view];
  leadingAnchor = [containerView leadingAnchor];
  leadingAnchor2 = [view leadingAnchor];
  v8 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v8 setActive:1];

  trailingAnchor = [containerView trailingAnchor];
  trailingAnchor2 = [view trailingAnchor];
  v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v11 setActive:1];

  topAnchor = [containerView topAnchor];
  topAnchor2 = [view topAnchor];
  v14 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v14 setActive:1];

  bottomAnchor = [containerView bottomAnchor];
  bottomAnchor2 = [view bottomAnchor];
  v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v17 setActive:1];
}

- (BOOL)isAnimating
{
  displayedController = [(PencilEducationViewController *)self displayedController];
  animationInProgress = [displayedController animationInProgress];

  return animationInProgress;
}

- (void)_configureViewControllersIfNecessary
{
  v20 = *MEMORY[0x277D85DE8];
  viewControllers = [(PencilEducationViewController *)self viewControllers];
  v4 = [viewControllers count];

  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(PencilEducationViewController *)self setViewControllers:v5];

    mEMORY[0x277CD9698] = [MEMORY[0x277CD9698] sharedSettings];
    recognitionLocaleIdentifier = [mEMORY[0x277CD9698] recognitionLocaleIdentifier];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [&unk_286FED410 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        v11 = 0;
        do
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(&unk_286FED410);
          }

          v12 = +[PencilEducationElementData elementDataForType:languageID:](PencilEducationElementData, "elementDataForType:languageID:", [*(*(&v15 + 1) + 8 * v11) integerValue], recognitionLocaleIdentifier);
          v13 = [[PencilEducationElementViewController alloc] initWithElementData:v12];
          [(PencilEducationElementViewController *)v13 setDelegate:self];
          viewControllers2 = [(PencilEducationViewController *)self viewControllers];
          [viewControllers2 addObject:v13];

          ++v11;
        }

        while (v9 != v11);
        v9 = [&unk_286FED410 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }
}

- (void)beginAnimationIfNecessaryForElementController:(id)controller delay:(double)delay
{
  controllerCopy = controller;
  v7 = ([(PencilEducationViewController *)self animationBeginRequestIndex]+ 1);
  [(PencilEducationViewController *)self setAnimationBeginRequestIndex:v7];
  objc_initWeak(&location, self);
  v8 = dispatch_time(0, (delay * 1000000000.0));
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __85__PencilEducationViewController_beginAnimationIfNecessaryForElementController_delay___block_invoke;
  v10[3] = &unk_279A0A300;
  objc_copyWeak(v12, &location);
  v12[1] = v7;
  v11 = controllerCopy;
  v9 = controllerCopy;
  dispatch_after(v8, MEMORY[0x277D85CD0], v10);

  objc_destroyWeak(v12);
  objc_destroyWeak(&location);
}

void __85__PencilEducationViewController_beginAnimationIfNecessaryForElementController_delay___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained animationBeginRequestIndex];
  v4 = *(a1 + 48);

  if (v3 == v4)
  {
    v5 = objc_loadWeakRetained((a1 + 40));
    v6 = [v5 shouldBeginAnimationForElementController:*(a1 + 32)];

    if (v6)
    {
      v7 = *(a1 + 32);

      [v7 beginAnimation];
    }
  }
}

- (BOOL)shouldBeginAnimationForElementController:(id)controller
{
  controllerCopy = controller;
  view = [(PencilEducationViewController *)self view];
  window = [view window];
  if (window && !-[PencilEducationViewController isAnimating](self, "isAnimating") && [controllerCopy hasRemainingAnimation])
  {
    _appearState = [controllerCopy _appearState];

    if (_appearState != 2)
    {
      v16 = 0;
      goto LABEL_8;
    }

    view = [(PencilEducationViewController *)self view];
    [view bounds];
    [view convertRect:0 toView:?];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    window = [view window];
    [window bounds];
    v19.origin.x = v9;
    v19.origin.y = v11;
    v19.size.width = v13;
    v19.size.height = v15;
    v16 = CGRectContainsRect(v18, v19);
  }

  else
  {
    v16 = 0;
  }

LABEL_8:
  return v16;
}

- (void)cancelScheduledAnimations
{
  displayedController = [(PencilEducationViewController *)self displayedController];
  [displayedController cancelScheduledAnimations];
}

- (void)elementControllerWillReplay:(id)replay
{
  delegate = [(PencilEducationViewController *)self delegate];
  [delegate educationControllerWillReplay:self];
}

- (void)elementControllerDidAppear:(id)appear
{
  displayedController = [(PencilEducationViewController *)self displayedController];
  [(PencilEducationViewController *)self beginAnimationIfNecessaryForElementController:displayedController delay:0.5];
}

- (PencilEducationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end