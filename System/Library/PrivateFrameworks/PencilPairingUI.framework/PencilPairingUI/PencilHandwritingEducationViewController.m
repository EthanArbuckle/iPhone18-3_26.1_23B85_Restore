@interface PencilHandwritingEducationViewController
+ (id)localizedTitle;
- (BOOL)isAnimating;
- (PencilHandwritingEducationViewControllerDelegate)delegate;
- (double)calculateFittingHeightByTemporarilyAdjustingFrameForWidth:(double)a3;
- (id)traitCollection;
- (void)_configureViewControllersIfNecessary;
- (void)addControllerToContainer:(id)a3;
- (void)dealloc;
- (void)elementControllerShouldDismiss:(id)a3;
- (void)setDisplayedController:(id)a3;
- (void)updateButtonTray:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation PencilHandwritingEducationViewController

+ (id)localizedTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:a1];
  v3 = [v2 localizedStringForKey:@"HANDWRITING_EDUCATION_PANEL_TITLE" value:&stru_286FDFDB8 table:@"PencilSettings"];

  return v3;
}

- (double)calculateFittingHeightByTemporarilyAdjustingFrameForWidth:(double)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [(PencilHandwritingEducationViewController *)self viewControllers];
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(v5);
        }

        [*(*(&v19 + 1) + 8 * i) calculateFittingHeightByTemporarilyAdjustingFrameForWidth:a3];
        if (v9 < v11)
        {
          v9 = v11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  else
  {
    v9 = 0.0;
  }

  v12 = [(PencilHandwritingEducationViewController *)self view];
  [v12 bounds];
  v14 = v13;
  v15 = [(PencilHandwritingEducationViewController *)self containerView];
  [v15 bounds];
  v17 = v16;

  return v9 + v14 - v17;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PencilHandwritingEducationViewController;
  [(PencilHandwritingEducationViewController *)&v4 dealloc];
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = PencilHandwritingEducationViewController;
  [(PencilHandwritingEducationViewController *)&v6 viewDidAppear:a3];
  if (![(PencilHandwritingEducationViewController *)self didRunInitialAppearActions]|| [(PencilHandwritingEducationViewController *)self didDisappear])
  {
    v4 = [MEMORY[0x277CBEAA8] date];
    [(PencilHandwritingEducationViewController *)self setAppearDate:v4];

    [(PencilHandwritingEducationViewController *)self setDidRunInitialAppearActions:1];
    [(PencilHandwritingEducationViewController *)self setDidDisappear:0];
    v5 = [(PencilHandwritingEducationViewController *)self displayedController];
    [(PencilHandwritingEducationViewController *)self beginAnimationIfNecessaryForElementController:v5 delay:0.5];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = PencilHandwritingEducationViewController;
  [(PencilHandwritingEducationViewController *)&v10 viewDidDisappear:a3];
  v4 = [(PencilHandwritingEducationViewController *)self appearDate];

  if (v4)
  {
    v5 = [MEMORY[0x277CBEAA8] date];
    v6 = [(PencilHandwritingEducationViewController *)self appearDate];
    [v5 timeIntervalSinceDate:v6];
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
  v3 = [(PencilHandwritingEducationViewController *)self view];
  v4 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 addSubview:v4];
  v20 = MEMORY[0x277CCAAD0];
  v27 = [v4 widthAnchor];
  v26 = [v27 constraintLessThanOrEqualToConstant:448.0];
  v30[0] = v26;
  v25 = [v4 leadingAnchor];
  v24 = [v3 leadingAnchor];
  v23 = [v25 constraintGreaterThanOrEqualToAnchor:v24 constant:8.0];
  v30[1] = v23;
  v22 = [v4 trailingAnchor];
  v21 = [v3 trailingAnchor];
  v19 = [v22 constraintLessThanOrEqualToAnchor:v21 constant:-8.0];
  v30[2] = v19;
  v18 = [v4 centerXAnchor];
  v17 = [v3 centerXAnchor];
  v16 = [v18 constraintEqualToAnchor:v17];
  v30[3] = v16;
  v15 = [v4 topAnchor];
  v5 = [v3 safeAreaLayoutGuide];
  v6 = [v5 topAnchor];
  v7 = [v15 constraintEqualToAnchor:v6];
  v30[4] = v7;
  v8 = [v4 bottomAnchor];
  v9 = [v3 safeAreaLayoutGuide];
  v10 = [v9 bottomAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  v30[5] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:6];
  [v20 activateConstraints:v12];

  [(PencilHandwritingEducationViewController *)self setContainerView:v4];
  v13 = [(PencilHandwritingEducationViewController *)self viewControllers];
  v14 = [v13 objectAtIndexedSubscript:0];
  [(PencilHandwritingEducationViewController *)self setDisplayedController:v14];

  [(PencilHandwritingEducationViewController *)self setSetupComplete:1];
}

- (id)traitCollection
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = PencilHandwritingEducationViewController;
  v2 = [(PencilHandwritingEducationViewController *)&v9 traitCollection];
  v3 = [v2 preferredContentSizeCategory];
  if (([v3 isEqualToString:*MEMORY[0x277D76800]] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x277D767F8]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x277D767F0]) & 1) != 0 || objc_msgSend(v3, "isEqualToString:", *MEMORY[0x277D767E8]))
  {
    v4 = MEMORY[0x277D75C80];
    v10[0] = v2;
    v5 = [MEMORY[0x277D75C80] traitCollectionWithPreferredContentSizeCategory:*MEMORY[0x277D76820]];
    v10[1] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
    v7 = [v4 traitCollectionWithTraitsFromCollections:v6];

    v2 = v7;
  }

  return v2;
}

- (void)setDisplayedController:(id)a3
{
  v5 = a3;
  displayedController = self->_displayedController;
  if (displayedController != v5)
  {
    if (displayedController)
    {
      v7 = displayedController;
      objc_storeStrong(&self->_displayedController, a3);
      v8 = [(PencilHandwritingEducationElementViewController *)v5 view];
      [v8 setAlpha:0.0];

      v9 = [(PencilHandwritingEducationViewController *)self displayedController];
      v10 = [(PencilHandwritingEducationViewController *)self delegate];
      v11 = [v10 educationControllerButtonTray:self];
      [v9 updateButtonTray:v11];

      [(PencilHandwritingEducationViewController *)self addControllerToContainer:v5];
      v12 = MEMORY[0x277D75D18];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __67__PencilHandwritingEducationViewController_setDisplayedController___block_invoke;
      v19[3] = &unk_279A0A1F0;
      v20 = v7;
      v21 = v5;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __67__PencilHandwritingEducationViewController_setDisplayedController___block_invoke_2;
      v16[3] = &unk_279A0A218;
      v17 = v20;
      v18 = self;
      v13 = v20;
      [v12 animateWithDuration:v19 animations:v16 completion:0.25];
    }

    else
    {
      objc_storeStrong(&self->_displayedController, a3);
      [(PencilHandwritingEducationViewController *)self addControllerToContainer:self->_displayedController];
      v14 = [(PencilHandwritingEducationViewController *)self displayedController];
      [(PencilHandwritingEducationViewController *)self beginAnimationIfNecessaryForElementController:v14 delay:0.5];

      v15 = [(PencilHandwritingEducationViewController *)self delegate];
      [v15 educationControllerDidChangePanel:self];
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

- (void)addControllerToContainer:(id)a3
{
  v4 = a3;
  [(PencilHandwritingEducationViewController *)self addChildViewController:v4];
  v18 = [v4 view];

  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [(PencilHandwritingEducationViewController *)self containerView];
  [v5 addSubview:v18];
  v6 = [v5 leadingAnchor];
  v7 = [v18 leadingAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];
  [v8 setActive:1];

  v9 = [v5 trailingAnchor];
  v10 = [v18 trailingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  [v11 setActive:1];

  v12 = [v5 topAnchor];
  v13 = [v18 topAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  [v14 setActive:1];

  v15 = [v5 bottomAnchor];
  v16 = [v18 bottomAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];
  [v17 setActive:1];
}

- (void)updateButtonTray:(id)a3
{
  v4 = a3;
  v5 = [(PencilHandwritingEducationViewController *)self displayedController];
  [v5 updateButtonTray:v4];
}

- (BOOL)isAnimating
{
  v2 = [(PencilHandwritingEducationViewController *)self displayedController];
  v3 = [v2 animationInProgress];

  return v3;
}

- (void)_configureViewControllersIfNecessary
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(PencilHandwritingEducationViewController *)self viewControllers];
  v4 = [v3 count];

  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(PencilHandwritingEducationViewController *)self setViewControllers:v5];

    v6 = [MEMORY[0x277CD9698] sharedSettings];
    v7 = [v6 recognitionLocaleIdentifier];

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

          v12 = +[PencilHandwritingEducationElementData elementDataForType:languageID:](PencilHandwritingEducationElementData, "elementDataForType:languageID:", [*(*(&v15 + 1) + 8 * v11) integerValue], v7);
          v13 = [[PencilHandwritingEducationElementViewController alloc] initWithElementData:v12];
          [(PencilHandwritingEducationElementViewController *)v13 setDelegate:self];
          v14 = [(PencilHandwritingEducationViewController *)self viewControllers];
          [v14 addObject:v13];

          ++v11;
        }

        while (v9 != v11);
        v9 = [&unk_286FED338 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }
}

- (void)elementControllerShouldDismiss:(id)a3
{
  v4 = [(PencilHandwritingEducationViewController *)self delegate];
  [v4 educationControllerRequestedDismissal:self];
}

- (PencilHandwritingEducationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end