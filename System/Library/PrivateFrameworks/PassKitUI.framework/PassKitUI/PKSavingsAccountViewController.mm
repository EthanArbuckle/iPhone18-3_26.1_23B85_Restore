@interface PKSavingsAccountViewController
- (PKSavingsAccountViewController)initWithConfiguration:(id)a3 showInterstitial:(BOOL)a4;
- (void)_addInterstitialViewController;
- (void)_addSavingsViewController;
- (void)loadView;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation PKSavingsAccountViewController

- (PKSavingsAccountViewController)initWithConfiguration:(id)a3 showInterstitial:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PKSavingsAccountViewController;
  v8 = [(PKSavingsAccountViewController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_configuration, a3);
    if (v4)
    {
      [(PKSavingsAccountViewController *)v9 _addInterstitialViewController];
    }

    else
    {
      [(PKSavingsAccountViewController *)v9 _addSavingsViewController];
    }
  }

  return v9;
}

- (void)loadView
{
  v8.receiver = self;
  v8.super_class = PKSavingsAccountViewController;
  [(PKSavingsAccountViewController *)&v8 loadView];
  savingsViewController = self->_savingsViewController;
  if (!savingsViewController)
  {
    savingsViewController = self->_interstitialViewController;
  }

  v4 = savingsViewController;
  v5 = [v4 view];
  v6 = [v5 superview];

  if (!v6)
  {
    v7 = [(PKSavingsAccountViewController *)self view];
    [v7 addSubview:v5];

    [v4 didMoveToParentViewController:self];
  }
}

- (void)viewWillLayoutSubviews
{
  v7.receiver = self;
  v7.super_class = PKSavingsAccountViewController;
  [(PKSavingsAccountViewController *)&v7 viewWillLayoutSubviews];
  savingsViewController = self->_savingsViewController;
  if (!savingsViewController)
  {
    savingsViewController = self->_interstitialViewController;
  }

  v4 = savingsViewController;
  v5 = [v4 view];
  v6 = [(PKSavingsAccountViewController *)self view];

  [v6 bounds];
  [v5 setFrame:?];
}

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = PKSavingsAccountViewController;
  [(PKSavingsAccountViewController *)&v7 viewWillAppear:a3];
  v4 = [(PKSavingsAccountViewController *)self navigationController];
  v5 = [v4 navigationBar];
  [v5 setPrefersLargeTitles:1];

  v6 = [(PKSavingsAccountViewController *)self navigationItem];
  [v6 setBackButtonDisplayMode:2];
}

- (void)viewDidAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = PKSavingsAccountViewController;
  [(PKSavingsAccountViewController *)&v8 viewDidAppear:a3];
  if (self->_interstitialViewController)
  {
    objc_initWeak(&location, self);
    interstitialViewController = self->_interstitialViewController;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __48__PKSavingsAccountViewController_viewDidAppear___block_invoke;
    v5[3] = &unk_1E8011180;
    objc_copyWeak(&v6, &location);
    [(PKSavingsInterstitialViewController *)interstitialViewController performAuthenticationWithCompletion:v5];
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void __48__PKSavingsAccountViewController_viewDidAppear___block_invoke(uint64_t a1, char a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __48__PKSavingsAccountViewController_viewDidAppear___block_invoke_2;
  v2[3] = &unk_1E80111A8;
  v4 = a2;
  objc_copyWeak(&v3, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], v2);
  objc_destroyWeak(&v3);
}

void __48__PKSavingsAccountViewController_viewDidAppear___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (v1 == 1)
  {
    [WeakRetained _addSavingsViewController];
    v3 = v6;
  }

  else
  {
    v4 = [WeakRetained navigationController];

    if ([v4 pk_settings_useStateDrivenNavigation])
    {
      [v4 pk_settings_popViewController];
    }

    else
    {
      v5 = [v4 popViewControllerAnimated:1];
    }

    v3 = v4;
  }
}

- (void)_addInterstitialViewController
{
  if (!self->_interstitialViewController)
  {
    v3 = [[PKSavingsInterstitialViewController alloc] initWithConfiguration:self->_configuration];
    interstitialViewController = self->_interstitialViewController;
    self->_interstitialViewController = v3;

    [(PKSavingsAccountViewController *)self addChildViewController:self->_interstitialViewController];
    v5 = [(PKSavingsAccountViewController *)self viewIfLoaded];
    if (v5)
    {
      v7 = v5;
      v6 = [(PKSavingsInterstitialViewController *)self->_interstitialViewController view];
      [v7 addSubview:v6];

      [(PKSavingsInterstitialViewController *)self->_interstitialViewController didMoveToParentViewController:self];
      v5 = v7;
    }
  }
}

- (void)_addSavingsViewController
{
  if (!self->_savingsViewController)
  {
    v3 = [[_PKAccountSavingsViewController alloc] initWithConfiguration:self->_configuration];
    savingsViewController = self->_savingsViewController;
    self->_savingsViewController = v3;

    [(PKSavingsAccountViewController *)self addChildViewController:self->_savingsViewController];
    v21 = [(PKSavingsAccountViewController *)self viewIfLoaded];
    if (v21)
    {
      v5 = [(_PKAccountSavingsViewController *)self->_savingsViewController view];
      [v21 addSubview:v5];

      [(_PKAccountSavingsViewController *)self->_savingsViewController didMoveToParentViewController:self];
    }

    interstitialViewController = self->_interstitialViewController;
    if (interstitialViewController)
    {
      v7 = [(PKSavingsInterstitialViewController *)interstitialViewController view];
      [v7 removeFromSuperview];

      [(PKSavingsInterstitialViewController *)self->_interstitialViewController removeFromParentViewController];
      [(PKSavingsInterstitialViewController *)self->_interstitialViewController didMoveToParentViewController:0];
      v8 = self->_interstitialViewController;
      self->_interstitialViewController = 0;
    }

    v9 = [(PKSavingsAccountViewController *)self navigationItem];
    v10 = PKLocalizedFeatureString();
    [v9 setTitle:v10];

    [v9 setLargeTitleDisplayMode:1];
    [v9 setBackButtonDisplayMode:2];
    v11 = PKUIInfoButtonImageWithDefaultConfiguration();
    v12 = objc_alloc_init(PKDashboardMoreMenuFactory);
    moreMenuFactory = self->_moreMenuFactory;
    self->_moreMenuFactory = v12;

    v14 = self->_moreMenuFactory;
    v15 = [(PKAccountViewInterfaceConfiguration *)self->_configuration account];
    [(PKDashboardMoreMenuFactory *)v14 setAccount:v15];

    [(PKDashboardMoreMenuFactory *)self->_moreMenuFactory setViewController:self];
    v16 = objc_alloc(MEMORY[0x1E69DC708]);
    v17 = PKLocalizedString(&cfstr_More.isa);
    v18 = [(PKDashboardMoreMenuFactory *)self->_moreMenuFactory moreMenu];
    v19 = [v16 initWithTitle:v17 image:v11 target:0 action:0 menu:v18];

    [v19 setAccessibilityIdentifier:*MEMORY[0x1E69B9970]];
    v20 = [MEMORY[0x1E69DC888] labelColor];
    [v19 setTintColor:v20];

    [v9 setRightBarButtonItem:v19];
    [v21 setNeedsLayout];
  }
}

@end