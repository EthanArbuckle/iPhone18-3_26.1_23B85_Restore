@interface PencilHandwritingEducationViewController
+ (id)localizedTitle;
- (BOOL)isAnimating;
- (PencilHandwritingEducationViewControllerDelegate)delegate;
- (double)calculateFittingHeightByTemporarilyAdjustingFrameForWidth:(double)width;
- (id)traitCollection;
- (void)_configureViewControllersIfNecessary;
- (void)addControllerToContainer:(id)container;
- (void)dealloc;
- (void)elementControllerShouldDismiss:(id)dismiss;
- (void)setDisplayedController:(id)controller;
- (void)updateButtonTray:(id)tray;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation PencilHandwritingEducationViewController

+ (id)localizedTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:self];
  v3 = [v2 localizedStringForKey:@"HANDWRITING_EDUCATION_PANEL_TITLE" value:&stru_286FDFDB8 table:@"PencilSettings"];

  return v3;
}

- (double)calculateFittingHeightByTemporarilyAdjustingFrameForWidth:(double)width
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  viewControllers = [(PencilHandwritingEducationViewController *)self viewControllers];
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

  view = [(PencilHandwritingEducationViewController *)self view];
  [view bounds];
  v14 = v13;
  containerView = [(PencilHandwritingEducationViewController *)self containerView];
  [containerView bounds];
  v17 = v16;

  return v9 + v14 - v17;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = PencilHandwritingEducationViewController;
  [(PencilHandwritingEducationViewController *)&v4 dealloc];
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = PencilHandwritingEducationViewController;
  [(PencilHandwritingEducationViewController *)&v6 viewDidAppear:appear];
  if (![(PencilHandwritingEducationViewController *)self didRunInitialAppearActions]|| [(PencilHandwritingEducationViewController *)self didDisappear])
  {
    date = [MEMORY[0x277CBEAA8] date];
    [(PencilHandwritingEducationViewController *)self setAppearDate:date];

    [(PencilHandwritingEducationViewController *)self setDidRunInitialAppearActions:1];
    [(PencilHandwritingEducationViewController *)self setDidDisappear:0];
    displayedController = [(PencilHandwritingEducationViewController *)self displayedController];
    [(PencilHandwritingEducationViewController *)self beginAnimationIfNecessaryForElementController:displayedController delay:0.5];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v10.receiver = self;
  v10.super_class = PencilHandwritingEducationViewController;
  [(PencilHandwritingEducationViewController *)&v10 viewDidDisappear:disappear];
  appearDate = [(PencilHandwritingEducationViewController *)self appearDate];

  if (appearDate)
  {
    date = [MEMORY[0x277CBEAA8] date];
    appearDate2 = [(PencilHandwritingEducationViewController *)self appearDate];
    [date timeIntervalSinceDate:appearDate2];
    v8 = v7;

    v9 = +[PencilSettingsStatisticsManager sharedInstance];
    [v9 recordEducationPencilDidShow:v8];
  }

  [(PencilHandwritingEducationViewController *)self setDidDisappear:1];
}

- (void)viewDidLoad
{
  v30[6] = *MEMORY[0x277D85DE8];
  v29.receiver = self;
  v29.super_class = PencilHandwritingEducationViewController;
  [(PencilHandwritingEducationViewController *)&v29 viewDidLoad];
  [(PencilHandwritingEducationViewController *)self _configureViewControllersIfNecessary];
  view = [(PencilHandwritingEducationViewController *)self view];
  v4 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [view addSubview:v4];
  v20 = MEMORY[0x277CCAAD0];
  widthAnchor = [v4 widthAnchor];
  v26 = [widthAnchor constraintLessThanOrEqualToConstant:448.0];
  v30[0] = v26;
  leadingAnchor = [v4 leadingAnchor];
  leadingAnchor2 = [view leadingAnchor];
  v23 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2 constant:8.0];
  v30[1] = v23;
  trailingAnchor = [v4 trailingAnchor];
  trailingAnchor2 = [view trailingAnchor];
  v19 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2 constant:-8.0];
  v30[2] = v19;
  centerXAnchor = [v4 centerXAnchor];
  centerXAnchor2 = [view centerXAnchor];
  v16 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v30[3] = v16;
  topAnchor = [v4 topAnchor];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v7 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v30[4] = v7;
  bottomAnchor = [v4 bottomAnchor];
  safeAreaLayoutGuide2 = [view safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide2 bottomAnchor];
  v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v30[5] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:6];
  [v20 activateConstraints:v12];

  [(PencilHandwritingEducationViewController *)self setContainerView:v4];
  viewControllers = [(PencilHandwritingEducationViewController *)self viewControllers];
  v14 = [viewControllers objectAtIndexedSubscript:0];
  [(PencilHandwritingEducationViewController *)self setDisplayedController:v14];

  [(PencilHandwritingEducationViewController *)self setSetupComplete:1];
}

- (id)traitCollection
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = PencilHandwritingEducationViewController;
  traitCollection = [(PencilHandwritingEducationViewController *)&v9 traitCollection];
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
      view = [(PencilHandwritingEducationElementViewController *)controllerCopy view];
      [view setAlpha:0.0];

      displayedController = [(PencilHandwritingEducationViewController *)self displayedController];
      delegate = [(PencilHandwritingEducationViewController *)self delegate];
      v11 = [delegate educationControllerButtonTray:self];
      [displayedController updateButtonTray:v11];

      [(PencilHandwritingEducationViewController *)self addControllerToContainer:controllerCopy];
      v12 = MEMORY[0x277D75D18];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __67__PencilHandwritingEducationViewController_setDisplayedController___block_invoke;
      v19[3] = &unk_279A0A1F0;
      v20 = v7;
      v21 = controllerCopy;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __67__PencilHandwritingEducationViewController_setDisplayedController___block_invoke_2;
      v16[3] = &unk_279A0A218;
      v17 = v20;
      selfCopy = self;
      v13 = v20;
      [v12 animateWithDuration:v19 animations:v16 completion:0.25];
    }

    else
    {
      objc_storeStrong(&self->_displayedController, controller);
      [(PencilHandwritingEducationViewController *)self addControllerToContainer:self->_displayedController];
      displayedController2 = [(PencilHandwritingEducationViewController *)self displayedController];
      [(PencilHandwritingEducationViewController *)self beginAnimationIfNecessaryForElementController:displayedController2 delay:0.5];

      delegate2 = [(PencilHandwritingEducationViewController *)self delegate];
      [delegate2 educationControllerDidChangePanel:self];
    }
  }
}

void __67__PencilHandwritingEducationViewController_setDisplayedController___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setAlpha:0.0];

  v3 = [*(a1 + 40) view];
  [v3 setAlpha:1.0];
}

void __67__PencilHandwritingEducationViewController_setDisplayedController___block_invoke_2(uint64_t a1)
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
  [(PencilHandwritingEducationViewController *)self addChildViewController:containerCopy];
  view = [containerCopy view];

  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  containerView = [(PencilHandwritingEducationViewController *)self containerView];
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

- (void)updateButtonTray:(id)tray
{
  trayCopy = tray;
  displayedController = [(PencilHandwritingEducationViewController *)self displayedController];
  [displayedController updateButtonTray:trayCopy];
}

- (BOOL)isAnimating
{
  displayedController = [(PencilHandwritingEducationViewController *)self displayedController];
  animationInProgress = [displayedController animationInProgress];

  return animationInProgress;
}

- (void)_configureViewControllersIfNecessary
{
  v20 = *MEMORY[0x277D85DE8];
  viewControllers = [(PencilHandwritingEducationViewController *)self viewControllers];
  v4 = [viewControllers count];

  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(PencilHandwritingEducationViewController *)self setViewControllers:v5];

    mEMORY[0x277CD9698] = [MEMORY[0x277CD9698] sharedSettings];
    recognitionLocaleIdentifier = [mEMORY[0x277CD9698] recognitionLocaleIdentifier];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [&unk_286FED338 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(&unk_286FED338);
          }

          v12 = +[PencilHandwritingEducationElementData elementDataForType:languageID:](PencilHandwritingEducationElementData, "elementDataForType:languageID:", [*(*(&v15 + 1) + 8 * v11) integerValue], recognitionLocaleIdentifier);
          v13 = [[PencilHandwritingEducationElementViewController alloc] initWithElementData:v12];
          [(PencilHandwritingEducationElementViewController *)v13 setDelegate:self];
          viewControllers2 = [(PencilHandwritingEducationViewController *)self viewControllers];
          [viewControllers2 addObject:v13];

          ++v11;
        }

        while (v9 != v11);
        v9 = [&unk_286FED338 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }
}

- (void)elementControllerShouldDismiss:(id)dismiss
{
  delegate = [(PencilHandwritingEducationViewController *)self delegate];
  [delegate educationControllerRequestedDismissal:self];
}

- (PencilHandwritingEducationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end