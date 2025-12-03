@interface LTUIErrorViewController
- (LTUIErrorViewController)initWithError:(id)error;
- (void)_updateBackground;
- (void)drawCloseButton;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation LTUIErrorViewController

- (LTUIErrorViewController)initWithError:(id)error
{
  v37[3] = *MEMORY[0x277D85DE8];
  v35.receiver = self;
  v35.super_class = LTUIErrorViewController;
  v3 = [(LTUIErrorViewController *)&v35 initWithNibName:0 bundle:0];
  if (v3)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    view = [(LTUIErrorViewController *)v3 view];
    [view setBackgroundColor:clearColor];

    v6 = [objc_alloc(MEMORY[0x277D75D28]) initWithNibName:0 bundle:0];
    v7 = objc_alloc(MEMORY[0x277D756B8]);
    v8 = [v7 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v8 setNumberOfLines:0];
    [v8 setTextAlignment:1];
    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [v8 setTextColor:secondaryLabelColor];

    v10 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [v8 setFont:v10];

    [v8 setMaximumContentSizeCategory:*MEMORY[0x277D76820]];
    v34 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v34 localizedStringForKey:@"UNAVAILABLE_ERROR" value:&stru_287F854E0 table:0];
    [v8 setText:v11];

    view2 = [v6 view];
    [view2 addSubview:v8];

    v27 = MEMORY[0x277CCAAD0];
    leadingAnchor = [v8 leadingAnchor];
    view3 = [v6 view];
    safeAreaLayoutGuide = [view3 safeAreaLayoutGuide];
    leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
    v29 = [leadingAnchor constraintEqualToSystemSpacingAfterAnchor:leadingAnchor2 multiplier:1.0];
    v37[0] = v29;
    v26 = v6;
    view4 = [v6 view];
    safeAreaLayoutGuide2 = [view4 safeAreaLayoutGuide];
    trailingAnchor = [safeAreaLayoutGuide2 trailingAnchor];
    trailingAnchor2 = [v8 trailingAnchor];
    v15 = [trailingAnchor constraintEqualToSystemSpacingAfterAnchor:trailingAnchor2 multiplier:1.0];
    v37[1] = v15;
    centerYAnchor = [v8 centerYAnchor];
    view5 = [v6 view];
    centerYAnchor2 = [view5 centerYAnchor];
    v19 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v37[2] = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:3];
    [v27 activateConstraints:v20];

    v36 = v26;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
    [(LTUIErrorViewController *)v3 setViewControllers:v21];

    [(LTUIErrorViewController *)v3 _updateBackground];
    v22 = v3;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)_updateBackground
{
  v31[4] = *MEMORY[0x277D85DE8];
  viewControllers = [(LTUIErrorViewController *)self viewControllers];
  firstObject = [viewControllers firstObject];

  if (firstObject)
  {
    view = [firstObject view];
    subviews = [view subviews];
    firstObject2 = [subviews firstObject];

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ([(LTUIErrorViewController *)self _isInPopoverPresentation]& 1) != 0 || (isKindOfClass)
    {
      if ((isKindOfClass & 1) != 0 && [(LTUIErrorViewController *)self _isInPopoverPresentation])
      {
        [firstObject2 removeFromSuperview];
      }
    }

    else
    {
      v30 = [MEMORY[0x277D75210] effectWithStyle:9];
      v9 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v30];
      [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
      view2 = [firstObject view];
      [view2 insertSubview:v9 atIndex:0];

      v22 = MEMORY[0x277CCAAD0];
      topAnchor = [v9 topAnchor];
      view3 = [firstObject view];
      topAnchor2 = [view3 topAnchor];
      v26 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v31[0] = v26;
      bottomAnchor = [v9 bottomAnchor];
      view4 = [firstObject view];
      bottomAnchor2 = [view4 bottomAnchor];
      v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v31[1] = v21;
      leadingAnchor = [v9 leadingAnchor];
      view5 = [firstObject view];
      leadingAnchor2 = [view5 leadingAnchor];
      v12 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v31[2] = v12;
      trailingAnchor = [v9 trailingAnchor];
      view6 = [firstObject view];
      trailingAnchor2 = [view6 trailingAnchor];
      v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v31[3] = v16;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:4];
      [v22 activateConstraints:v17];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)viewDidAppear:(BOOL)appear
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __41__LTUIErrorViewController_viewDidAppear___block_invoke;
  v3[3] = &unk_279DD8628;
  v3[4] = self;
  [MEMORY[0x277D75D18] performWithoutAnimation:v3];
}

- (void)drawCloseButton
{
  if (([(LTUIErrorViewController *)self _isInPopoverPresentation]& 1) != 0)
  {
    viewControllers = [(LTUIErrorViewController *)self viewControllers];
    firstObject = [viewControllers firstObject];
    navigationItem = [firstObject navigationItem];
    [navigationItem setRightBarButtonItem:0];
  }

  else
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __42__LTUIErrorViewController_drawCloseButton__block_invoke;
    v11[3] = &unk_279DD8650;
    v11[4] = self;
    v5 = [MEMORY[0x277D750C8] actionWithHandler:v11];
    v6 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:24 primaryAction:v5];
    viewControllers2 = [(LTUIErrorViewController *)self viewControllers];
    firstObject2 = [viewControllers2 firstObject];
    navigationItem2 = [firstObject2 navigationItem];
    [navigationItem2 setRightBarButtonItem:v6];
  }
}

void __42__LTUIErrorViewController_drawCloseButton__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) presentingViewController];
  [v1 dismissViewControllerAnimated:1 completion:0];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v6.receiver = self;
  v6.super_class = LTUIErrorViewController;
  [(LTUIErrorViewController *)&v6 viewWillTransitionToSize:coordinator withTransitionCoordinator:size.width, size.height];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __78__LTUIErrorViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v5[3] = &unk_279DD8628;
  v5[4] = self;
  [MEMORY[0x277D75D18] performWithoutAnimation:v5];
}

uint64_t __78__LTUIErrorViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  [*(a1 + 32) drawCloseButton];
  v2 = *(a1 + 32);

  return [v2 _updateBackground];
}

@end