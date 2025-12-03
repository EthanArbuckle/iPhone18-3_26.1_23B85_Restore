@interface PKSavingsAccountViewController
- (PKSavingsAccountViewController)initWithConfiguration:(id)configuration showInterstitial:(BOOL)interstitial;
- (void)_addInterstitialViewController;
- (void)_addSavingsViewController;
- (void)loadView;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation PKSavingsAccountViewController

- (PKSavingsAccountViewController)initWithConfiguration:(id)configuration showInterstitial:(BOOL)interstitial
{
  interstitialCopy = interstitial;
  configurationCopy = configuration;
  v11.receiver = self;
  v11.super_class = PKSavingsAccountViewController;
  v8 = [(PKSavingsAccountViewController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_configuration, configuration);
    if (interstitialCopy)
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
  view = [v4 view];
  superview = [view superview];

  if (!superview)
  {
    view2 = [(PKSavingsAccountViewController *)self view];
    [view2 addSubview:view];

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
  view = [v4 view];
  view2 = [(PKSavingsAccountViewController *)self view];

  [view2 bounds];
  [view setFrame:?];
}

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = PKSavingsAccountViewController;
  [(PKSavingsAccountViewController *)&v7 viewWillAppear:appear];
  navigationController = [(PKSavingsAccountViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar setPrefersLargeTitles:1];

  navigationItem = [(PKSavingsAccountViewController *)self navigationItem];
  [navigationItem setBackButtonDisplayMode:2];
}

- (void)viewDidAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = PKSavingsAccountViewController;
  [(PKSavingsAccountViewController *)&v8 viewDidAppear:appear];
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
    viewIfLoaded = [(PKSavingsAccountViewController *)self viewIfLoaded];
    if (viewIfLoaded)
    {
      v7 = viewIfLoaded;
      view = [(PKSavingsInterstitialViewController *)self->_interstitialViewController view];
      [v7 addSubview:view];

      [(PKSavingsInterstitialViewController *)self->_interstitialViewController didMoveToParentViewController:self];
      viewIfLoaded = v7;
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
    viewIfLoaded = [(PKSavingsAccountViewController *)self viewIfLoaded];
    if (viewIfLoaded)
    {
      view = [(_PKAccountSavingsViewController *)self->_savingsViewController view];
      [viewIfLoaded addSubview:view];

      [(_PKAccountSavingsViewController *)self->_savingsViewController didMoveToParentViewController:self];
    }

    interstitialViewController = self->_interstitialViewController;
    if (interstitialViewController)
    {
      view2 = [(PKSavingsInterstitialViewController *)interstitialViewController view];
      [view2 removeFromSuperview];

      [(PKSavingsInterstitialViewController *)self->_interstitialViewController removeFromParentViewController];
      [(PKSavingsInterstitialViewController *)self->_interstitialViewController didMoveToParentViewController:0];
      v8 = self->_interstitialViewController;
      self->_interstitialViewController = 0;
    }

    navigationItem = [(PKSavingsAccountViewController *)self navigationItem];
    v10 = PKLocalizedFeatureString();
    [navigationItem setTitle:v10];

    [navigationItem setLargeTitleDisplayMode:1];
    [navigationItem setBackButtonDisplayMode:2];
    v11 = PKUIInfoButtonImageWithDefaultConfiguration();
    v12 = objc_alloc_init(PKDashboardMoreMenuFactory);
    moreMenuFactory = self->_moreMenuFactory;
    self->_moreMenuFactory = v12;

    v14 = self->_moreMenuFactory;
    account = [(PKAccountViewInterfaceConfiguration *)self->_configuration account];
    [(PKDashboardMoreMenuFactory *)v14 setAccount:account];

    [(PKDashboardMoreMenuFactory *)self->_moreMenuFactory setViewController:self];
    v16 = objc_alloc(MEMORY[0x1E69DC708]);
    v17 = PKLocalizedString(&cfstr_More.isa);
    moreMenu = [(PKDashboardMoreMenuFactory *)self->_moreMenuFactory moreMenu];
    v19 = [v16 initWithTitle:v17 image:v11 target:0 action:0 menu:moreMenu];

    [v19 setAccessibilityIdentifier:*MEMORY[0x1E69B9970]];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [v19 setTintColor:labelColor];

    [navigationItem setRightBarButtonItem:v19];
    [viewIfLoaded setNeedsLayout];
  }
}

@end