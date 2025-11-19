@interface PKSavingsAccountDetailsViewController
- (PKSavingsAccountDetailsViewController)initWithConfiguration:(id)a3 showInterstitial:(BOOL)a4;
- (void)_addInterstitialViewController;
- (void)_addSavingsViewController;
- (void)_setupNavigationIcon;
- (void)loadView;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation PKSavingsAccountDetailsViewController

- (PKSavingsAccountDetailsViewController)initWithConfiguration:(id)a3 showInterstitial:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v12.receiver = self;
  v12.super_class = PKSavingsAccountDetailsViewController;
  v8 = [(PKSavingsAccountDetailsViewController *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_configuration, a3);
    if (v4)
    {
      [(PKSavingsAccountDetailsViewController *)v9 _addInterstitialViewController];
    }

    else
    {
      [(PKSavingsAccountDetailsViewController *)v9 _addSavingsViewController];
    }

    v10 = [(PKSavingsAccountDetailsViewController *)v9 navigationItem];
    [v10 setLargeTitleDisplayMode:2];
    [v10 setBackButtonDisplayMode:2];
  }

  return v9;
}

- (void)loadView
{
  v8.receiver = self;
  v8.super_class = PKSavingsAccountDetailsViewController;
  [(PKSavingsAccountDetailsViewController *)&v8 loadView];
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
    v7 = [(PKSavingsAccountDetailsViewController *)self view];
    [v7 addSubview:v5];

    [v4 didMoveToParentViewController:self];
  }
}

- (void)viewWillLayoutSubviews
{
  v7.receiver = self;
  v7.super_class = PKSavingsAccountDetailsViewController;
  [(PKSavingsAccountDetailsViewController *)&v7 viewWillLayoutSubviews];
  savingsViewController = self->_savingsViewController;
  if (!savingsViewController)
  {
    savingsViewController = self->_interstitialViewController;
  }

  v4 = savingsViewController;
  v5 = [v4 view];
  v6 = [(PKSavingsAccountDetailsViewController *)self view];

  [v6 bounds];
  [v5 setFrame:?];
}

- (void)viewDidAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = PKSavingsAccountDetailsViewController;
  [(PKSavingsAccountDetailsViewController *)&v8 viewDidAppear:a3];
  if (self->_interstitialViewController)
  {
    objc_initWeak(&location, self);
    interstitialViewController = self->_interstitialViewController;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __55__PKSavingsAccountDetailsViewController_viewDidAppear___block_invoke;
    v5[3] = &unk_1E8011180;
    objc_copyWeak(&v6, &location);
    [(PKSavingsInterstitialViewController *)interstitialViewController performAuthenticationWithCompletion:v5];
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }

  else if (self->_savingsViewController)
  {
    [(PKSavingsAccountDetailsViewController *)self _setupNavigationIcon];
  }
}

void __55__PKSavingsAccountDetailsViewController_viewDidAppear___block_invoke(uint64_t a1, char a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __55__PKSavingsAccountDetailsViewController_viewDidAppear___block_invoke_2;
  v2[3] = &unk_1E80111A8;
  v4 = a2;
  objc_copyWeak(&v3, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], v2);
  objc_destroyWeak(&v3);
}

void __55__PKSavingsAccountDetailsViewController_viewDidAppear___block_invoke_2(uint64_t a1)
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

- (void)_setupNavigationIcon
{
  if (!self->_titleIconView)
  {
    v3 = [(PKSavingsAccountDetailsViewController *)self navigationController];
    v4 = [v3 navigationBar];
    [v4 frame];
    v6 = v5;

    v7 = [[PKAnimatedNavigationBarTitleView alloc] initWithFrame:0.0, 0.0, v6, v6];
    titleIconView = self->_titleIconView;
    self->_titleIconView = v7;

    v9 = [(PKSavingsAccountDetailsViewController *)self navigationItem];
    [v9 pkui_setCenterAlignedTitleView:self->_titleIconView];

    v10 = PKPassKitUIBundle();
    v11 = [v10 URLForResource:@"SAVINGS_Icon" withExtension:@"pdf"];
    v12 = PKUIScreenScale();
    v16 = PKUIImageFromPDF(v11, v6, v6, v12);

    v13 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v16];
    titleIcon = self->_titleIcon;
    self->_titleIcon = v13;

    v15 = [(UIImageView *)self->_titleIcon layer];
    [v15 setCornerRadius:6.0];
    [v15 setMasksToBounds:1];
  }
}

- (void)_addInterstitialViewController
{
  if (!self->_interstitialViewController)
  {
    v3 = [[PKSavingsInterstitialViewController alloc] initWithConfiguration:self->_configuration];
    interstitialViewController = self->_interstitialViewController;
    self->_interstitialViewController = v3;

    [(PKSavingsAccountDetailsViewController *)self addChildViewController:self->_interstitialViewController];
    v5 = [(PKSavingsAccountDetailsViewController *)self viewIfLoaded];
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
    objc_initWeak(&location, self);
    v3 = [_PKAccountSavingsDetailsViewController alloc];
    configuration = self->_configuration;
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __66__PKSavingsAccountDetailsViewController__addSavingsViewController__block_invoke;
    v15 = &unk_1E8011180;
    objc_copyWeak(&v16, &location);
    v5 = [(_PKAccountSavingsDetailsViewController *)v3 initWithConfiguration:configuration setNavigationIconVisible:&v12];
    savingsViewController = self->_savingsViewController;
    self->_savingsViewController = v5;

    [(PKSavingsAccountDetailsViewController *)self addChildViewController:self->_savingsViewController, v12, v13, v14, v15];
    v7 = [(PKSavingsAccountDetailsViewController *)self viewIfLoaded];
    if (v7)
    {
      v8 = [(_PKAccountSavingsDetailsViewController *)self->_savingsViewController view];
      [v7 addSubview:v8];

      [(_PKAccountSavingsDetailsViewController *)self->_savingsViewController didMoveToParentViewController:self];
      [(PKSavingsAccountDetailsViewController *)self _setupNavigationIcon];
    }

    interstitialViewController = self->_interstitialViewController;
    if (interstitialViewController)
    {
      v10 = [(PKSavingsInterstitialViewController *)interstitialViewController view];
      [v10 removeFromSuperview];

      [(PKSavingsInterstitialViewController *)self->_interstitialViewController removeFromParentViewController];
      [(PKSavingsInterstitialViewController *)self->_interstitialViewController didMoveToParentViewController:0];
      v11 = self->_interstitialViewController;
      self->_interstitialViewController = 0;
    }

    [v7 setNeedsLayout];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

void __66__PKSavingsAccountDetailsViewController__addSavingsViewController__block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[126];
    v7 = v4;
    if (a2)
    {
      v6 = v4[127];
    }

    else
    {
      v6 = 0;
    }

    [v5 setTitleView:v6 animated:1];
    v4 = v7;
  }
}

@end