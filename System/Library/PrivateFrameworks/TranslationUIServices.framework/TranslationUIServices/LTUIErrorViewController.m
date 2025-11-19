@interface LTUIErrorViewController
- (LTUIErrorViewController)initWithError:(id)a3;
- (void)_updateBackground;
- (void)drawCloseButton;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation LTUIErrorViewController

- (LTUIErrorViewController)initWithError:(id)a3
{
  v37[3] = *MEMORY[0x277D85DE8];
  v35.receiver = self;
  v35.super_class = LTUIErrorViewController;
  v3 = [(LTUIErrorViewController *)&v35 initWithNibName:0 bundle:0];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] clearColor];
    v5 = [(LTUIErrorViewController *)v3 view];
    [v5 setBackgroundColor:v4];

    v6 = [objc_alloc(MEMORY[0x277D75D28]) initWithNibName:0 bundle:0];
    v7 = objc_alloc(MEMORY[0x277D756B8]);
    v8 = [v7 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v8 setNumberOfLines:0];
    [v8 setTextAlignment:1];
    v9 = [MEMORY[0x277D75348] secondaryLabelColor];
    [v8 setTextColor:v9];

    v10 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [v8 setFont:v10];

    [v8 setMaximumContentSizeCategory:*MEMORY[0x277D76820]];
    v34 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v34 localizedStringForKey:@"UNAVAILABLE_ERROR" value:&stru_287F854E0 table:0];
    [v8 setText:v11];

    v12 = [v6 view];
    [v12 addSubview:v8];

    v27 = MEMORY[0x277CCAAD0];
    v32 = [v8 leadingAnchor];
    v33 = [v6 view];
    v31 = [v33 safeAreaLayoutGuide];
    v30 = [v31 leadingAnchor];
    v29 = [v32 constraintEqualToSystemSpacingAfterAnchor:v30 multiplier:1.0];
    v37[0] = v29;
    v26 = v6;
    v28 = [v6 view];
    v25 = [v28 safeAreaLayoutGuide];
    v13 = [v25 trailingAnchor];
    v14 = [v8 trailingAnchor];
    v15 = [v13 constraintEqualToSystemSpacingAfterAnchor:v14 multiplier:1.0];
    v37[1] = v15;
    v16 = [v8 centerYAnchor];
    v17 = [v6 view];
    v18 = [v17 centerYAnchor];
    v19 = [v16 constraintEqualToAnchor:v18];
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
  v3 = [(LTUIErrorViewController *)self viewControllers];
  v4 = [v3 firstObject];

  if (v4)
  {
    v5 = [v4 view];
    v6 = [v5 subviews];
    v7 = [v6 firstObject];

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ([(LTUIErrorViewController *)self _isInPopoverPresentation]& 1) != 0 || (isKindOfClass)
    {
      if ((isKindOfClass & 1) != 0 && [(LTUIErrorViewController *)self _isInPopoverPresentation])
      {
        [v7 removeFromSuperview];
      }
    }

    else
    {
      v30 = [MEMORY[0x277D75210] effectWithStyle:9];
      v9 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v30];
      [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
      v10 = [v4 view];
      [v10 insertSubview:v9 atIndex:0];

      v22 = MEMORY[0x277CCAAD0];
      v28 = [v9 topAnchor];
      v29 = [v4 view];
      v27 = [v29 topAnchor];
      v26 = [v28 constraintEqualToAnchor:v27];
      v31[0] = v26;
      v24 = [v9 bottomAnchor];
      v25 = [v4 view];
      v23 = [v25 bottomAnchor];
      v21 = [v24 constraintEqualToAnchor:v23];
      v31[1] = v21;
      v19 = [v9 leadingAnchor];
      v20 = [v4 view];
      v11 = [v20 leadingAnchor];
      v12 = [v19 constraintEqualToAnchor:v11];
      v31[2] = v12;
      v13 = [v9 trailingAnchor];
      v14 = [v4 view];
      v15 = [v14 trailingAnchor];
      v16 = [v13 constraintEqualToAnchor:v15];
      v31[3] = v16;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:4];
      [v22 activateConstraints:v17];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)viewDidAppear:(BOOL)a3
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
    v10 = [(LTUIErrorViewController *)self viewControllers];
    v3 = [v10 firstObject];
    v4 = [v3 navigationItem];
    [v4 setRightBarButtonItem:0];
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
    v7 = [(LTUIErrorViewController *)self viewControllers];
    v8 = [v7 firstObject];
    v9 = [v8 navigationItem];
    [v9 setRightBarButtonItem:v6];
  }
}

void __42__LTUIErrorViewController_drawCloseButton__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) presentingViewController];
  [v1 dismissViewControllerAnimated:1 completion:0];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v6.receiver = self;
  v6.super_class = LTUIErrorViewController;
  [(LTUIErrorViewController *)&v6 viewWillTransitionToSize:a4 withTransitionCoordinator:a3.width, a3.height];
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