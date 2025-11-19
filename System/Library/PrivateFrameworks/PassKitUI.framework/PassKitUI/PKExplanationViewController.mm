@interface PKExplanationViewController
- (PKExplanationViewController)initWithContext:(int64_t)a3;
- (PKExplanationViewControllerDelegate)explanationViewControllerDelegate;
- (void)_cancelAction;
- (void)_donePressed;
- (void)_setNavigationBarEnabled:(BOOL)a3;
- (void)_updateNavigationItemPlacement;
- (void)loadView;
- (void)setPrivacyLinkController:(id)a3;
- (void)setShowCancelButton:(BOOL)a3;
- (void)setShowCloseButton:(BOOL)a3;
- (void)setShowDoneButton:(BOOL)a3;
- (void)showNavigationBarSpinner:(BOOL)a3;
- (void)showSpinner:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation PKExplanationViewController

- (PKExplanationViewController)initWithContext:(int64_t)a3
{
  v11.receiver = self;
  v11.super_class = PKExplanationViewController;
  v4 = [(PKExplanationViewController *)&v11 initWithNibName:0 bundle:0];
  v5 = v4;
  if (v4)
  {
    v4->_context = a3;
    v6 = [[PKExplanationView alloc] initWithContext:v4->_context delegate:v4];
    explanationView = v5->_explanationView;
    v5->_explanationView = v6;

    [(PKExplanationViewController *)v5 setShowCancelButton:1];
    [(PKExplanationViewController *)v5 setShowDoneButton:0];
    v8 = [MEMORY[0x1E69B7D50] pk_privacyLinkForContext:1];
    [(PKExplanationViewController *)v5 setPrivacyLinkController:v8];

    if ((_UISolariumEnabled() & 1) == 0)
    {
      v9 = [(PKExplanationViewController *)v5 navigationItem];
      [v9 pkui_setupScrollEdgeChromelessAppearance];
      [v9 pkui_enableManualScrollEdgeAppearanceWithInitialProgress:0.0];
    }
  }

  return v5;
}

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = PKExplanationViewController;
  [(PKExplanationViewController *)&v5 loadView];
  v3 = [(PKExplanationViewController *)self view];
  v4 = PKProvisioningBackgroundColor();
  [v3 setBackgroundColor:v4];

  [v3 addSubview:self->_explanationView];
  [(PKExplanationViewController *)self _updateNavigationItemPlacement];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = PKExplanationViewController;
  [(PKExplanationViewController *)&v5 viewDidLoad];
  v3 = [(OBPrivacyLinkController *)self->_privacyLinkController view];
  v4 = [MEMORY[0x1E69DC888] systemBlueColor];
  [v3 setTintColor:v4];

  PKPaymentSetupApplyContextAppearance(self->_context, self);
}

- (void)viewWillLayoutSubviews
{
  v16.receiver = self;
  v16.super_class = PKExplanationViewController;
  [(PKExplanationViewController *)&v16 viewWillLayoutSubviews];
  v3 = [(PKExplanationViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v3 safeAreaInsets];
  [(PKExplanationView *)self->_explanationView setFrame:v5 + v12, v7 + 0.0, v9 - (v12 + v13), v11];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v14 = [(PKExplanationView *)self->_explanationView scrollView];
    v15 = [(PKExplanationViewController *)self navigationItem];
    [v14 pkui_adjustManualScrollEdgeAppearanceProgressForNavigationItem:v15];
  }
}

- (void)_cancelAction
{
  WeakRetained = objc_loadWeakRetained(&self->_explanationViewControllerDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained explanationViewControllerDidSelectCancel:self];
  }

  else
  {
    [(PKExplanationViewController *)self _dismissViewController];
  }
}

- (void)_donePressed
{
  WeakRetained = objc_loadWeakRetained(&self->_explanationViewControllerDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained explanationViewControllerDidSelectDone:self];
  }

  else
  {
    [(PKExplanationViewController *)self _dismissViewController];
  }
}

- (void)setShowDoneButton:(BOOL)a3
{
  self->_showDoneButton = a3;
  if (a3 && !self->_doneItem)
  {
    objc_initWeak(&location, self);
    v4 = MEMORY[0x1E69DC628];
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __49__PKExplanationViewController_setShowDoneButton___block_invoke;
    v12 = &unk_1E8010A60;
    objc_copyWeak(&v13, &location);
    v5 = [v4 actionWithHandler:&v9];
    v6 = objc_alloc(MEMORY[0x1E69DC708]);
    v7 = [v6 initWithBarButtonSystemItem:0 primaryAction:{v5, v9, v10, v11, v12}];
    doneItem = self->_doneItem;
    self->_doneItem = v7;

    [(UIBarButtonItem *)self->_doneItem setAccessibilityIdentifier:*MEMORY[0x1E69B9D30]];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  [(PKExplanationViewController *)self _updateNavigationItemPlacement];
}

void __49__PKExplanationViewController_setShowDoneButton___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _donePressed];
}

- (void)setShowCancelButton:(BOOL)a3
{
  self->_showCancelButton = a3;
  if (a3 && !self->_cancelItem)
  {
    objc_initWeak(&location, self);
    v4 = MEMORY[0x1E69DC628];
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __51__PKExplanationViewController_setShowCancelButton___block_invoke;
    v12 = &unk_1E8010A60;
    objc_copyWeak(&v13, &location);
    v5 = [v4 actionWithHandler:&v9];
    v6 = objc_alloc(MEMORY[0x1E69DC708]);
    v7 = [v6 initWithBarButtonSystemItem:1 primaryAction:{v5, v9, v10, v11, v12}];
    cancelItem = self->_cancelItem;
    self->_cancelItem = v7;

    [(UIBarButtonItem *)self->_cancelItem setAccessibilityIdentifier:*MEMORY[0x1E69B98E0]];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  [(PKExplanationViewController *)self _updateNavigationItemPlacement];
}

void __51__PKExplanationViewController_setShowCancelButton___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cancelAction];
}

- (void)setShowCloseButton:(BOOL)a3
{
  self->_showCloseButton = a3;
  if (a3 && !self->_closeItem)
  {
    objc_initWeak(&location, self);
    v4 = MEMORY[0x1E69DC628];
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __50__PKExplanationViewController_setShowCloseButton___block_invoke;
    v12 = &unk_1E8010A60;
    objc_copyWeak(&v13, &location);
    v5 = [v4 actionWithHandler:&v9];
    v6 = objc_alloc(MEMORY[0x1E69DC708]);
    v7 = [v6 initWithBarButtonSystemItem:24 primaryAction:{v5, v9, v10, v11, v12}];
    closeItem = self->_closeItem;
    self->_closeItem = v7;

    [(UIBarButtonItem *)self->_closeItem setAccessibilityIdentifier:*MEMORY[0x1E69B9708]];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  [(PKExplanationViewController *)self _updateNavigationItemPlacement];
}

void __50__PKExplanationViewController_setShowCloseButton___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cancelAction];
}

- (void)_updateNavigationItemPlacement
{
  if (![(PKExplanationViewController *)self isViewLoaded])
  {
    return;
  }

  v3 = [(PKExplanationViewController *)self navigationItem];
  v4 = [(PKExplanationViewController *)self navigationController];
  v5 = [v4 viewControllers];
  if ([v5 count] == 1)
  {

    if (self->_showDoneButton)
    {
      v6 = 1;
      goto LABEL_6;
    }
  }

  else
  {
    v6 = [v3 hidesBackButton];

    if (self->_showDoneButton)
    {
LABEL_6:
      v7 = self->_doneItem;
      if (!self->_showCloseButton || v6 == 0)
      {
        closeItem = 0;
      }

      else
      {
        closeItem = self->_closeItem;
      }

      if ((self->_showCancelButton & v6 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_20;
    }

    if (!v6)
    {
      if (self->_showCloseButton)
      {
        closeItem = self->_closeItem;
      }

      else
      {
        closeItem = 0;
      }

      v10 = 0;
      if (self->_showCancelButton)
      {
        closeItem = self->_cancelItem;
      }

      v7 = closeItem;
      goto LABEL_23;
    }
  }

  if (self->_showCloseButton)
  {
    closeItem = self->_closeItem;
  }

  else
  {
    closeItem = 0;
  }

  if (!self->_showCancelButton)
  {
    v7 = 0;
    goto LABEL_22;
  }

  v7 = 0;
LABEL_20:
  closeItem = self->_cancelItem;
LABEL_22:
  v10 = closeItem;
LABEL_23:
  v11 = closeItem;
  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = [v3 rightBarButtonItems];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __61__PKExplanationViewController__updateNavigationItemPlacement__block_invoke;
  v25[3] = &unk_1E801CC20;
  v25[4] = self;
  v15 = [v14 pk_objectsPassingTest:v25];
  v16 = [v15 mutableCopy];

  v17 = [v3 leftBarButtonItems];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __61__PKExplanationViewController__updateNavigationItemPlacement__block_invoke_2;
  v24[3] = &unk_1E801CC20;
  v24[4] = self;
  v18 = [v17 pk_objectsPassingTest:v24];
  v19 = [v18 mutableCopy];

  if (v16)
  {
    v20 = v16;
  }

  else
  {
    v20 = v12;
  }

  v21 = v20;

  if (v19)
  {
    v22 = v19;
  }

  else
  {
    v22 = v13;
  }

  v23 = v22;

  [v21 safelyAddObject:v7];
  [v3 setRightBarButtonItems:v21];
  [v23 safelyAddObject:v10];
  [v3 setLeftBarButtonItems:v23];
}

BOOL __61__PKExplanationViewController__updateNavigationItemPlacement__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v4[126] != v3 && v4[125] != v3 && v4[124] != v3;

  return v5;
}

BOOL __61__PKExplanationViewController__updateNavigationItemPlacement__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v4[126] != v3 && v4[125] != v3 && v4[124] != v3;

  return v5;
}

- (void)showNavigationBarSpinner:(BOOL)a3
{
  if (self->_showingSpinner != a3)
  {
    v3 = a3;
    self->_showingSpinner = a3;
    v5 = [(PKExplanationViewController *)self navigationController];
    v6 = [v5 view];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [(PKExplanationViewController *)self view];
    }

    v21 = v8;

    [v21 setUserInteractionEnabled:!v3];
    v9 = [(PKExplanationView *)self->_explanationView dockView];
    [v9 setButtonsEnabled:!v3];

    v10 = [(PKExplanationViewController *)self navigationItem];
    v11 = v10;
    if (self->_showingSpinner)
    {
      self->_wasBackHidden = [v10 hidesBackButton];
      v12 = [v11 rightBarButtonItem];
      hiddenRightBarButtonItem = self->_hiddenRightBarButtonItem;
      self->_hiddenRightBarButtonItem = v12;

      if (!self->_spinningItem)
      {
        v17 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
        activityIndicatorView = self->_activityIndicatorView;
        self->_activityIndicatorView = v17;

        v19 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:self->_activityIndicatorView];
        spinningItem = self->_spinningItem;
        self->_spinningItem = v19;
      }

      [(UIActivityIndicatorView *)self->_activityIndicatorView startAnimating];
      [v11 setRightBarButtonItem:self->_spinningItem];
      wasBackHidden = 1;
    }

    else
    {
      [(UIActivityIndicatorView *)self->_activityIndicatorView stopAnimating];
      v14 = [v11 rightBarButtonItem];
      v15 = self->_spinningItem;

      if (v14 == v15)
      {
        [v11 setRightBarButtonItem:self->_hiddenRightBarButtonItem];
      }

      wasBackHidden = self->_wasBackHidden;
    }

    [v11 setHidesBackButton:wasBackHidden];
    [(PKExplanationViewController *)self _setNavigationBarEnabled:!v3];
    [v21 setNeedsLayout];
  }
}

- (void)showSpinner:(BOOL)a3
{
  if (self->_showingSpinner != a3)
  {
    v4 = a3;
    self->_showingSpinner = a3;
    v7 = [(PKExplanationView *)self->_explanationView dockView];
    if ([v7 hasPrimaryButton])
    {
      v6 = [v7 primaryButton];
      [v6 setShowSpinner:v4];
    }

    else
    {
      [(PKExplanationViewController *)self showNavigationBarSpinner:v4];
    }

    [v7 setButtonsEnabled:v4 ^ 1];
  }
}

- (void)_setNavigationBarEnabled:(BOOL)a3
{
  v3 = a3;
  v10 = [(PKExplanationViewController *)self navigationController];
  v5 = [v10 navigationBar];
  [v5 setUserInteractionEnabled:v3];

  v6 = [v10 interactivePopGestureRecognizer];
  [v6 setEnabled:v3];

  v7 = [(PKExplanationViewController *)self navigationItem];
  v8 = [v7 leftBarButtonItem];
  [v8 setEnabled:v3];

  v9 = [v7 rightBarButtonItem];
  [v9 setEnabled:v3];
}

- (void)setPrivacyLinkController:(id)a3
{
  v8 = a3;
  if ((PKEqualObjects() & 1) == 0)
  {
    privacyLinkController = self->_privacyLinkController;
    if (privacyLinkController)
    {
      [(OBPrivacyLinkController *)privacyLinkController willMoveToParentViewController:0];
      v6 = [(OBPrivacyLinkController *)self->_privacyLinkController view];
      [v6 removeFromSuperview];

      [(OBPrivacyLinkController *)self->_privacyLinkController removeFromParentViewController];
    }

    objc_storeStrong(&self->_privacyLinkController, a3);
    v7 = self->_privacyLinkController;
    if (v7)
    {
      [(PKExplanationViewController *)self addChildViewController:?];
      v7 = self->_privacyLinkController;
    }

    [(PKExplanationView *)self->_explanationView setPrivacyLink:v7];
    [(OBPrivacyLinkController *)self->_privacyLinkController didMoveToParentViewController:self];
  }
}

- (PKExplanationViewControllerDelegate)explanationViewControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_explanationViewControllerDelegate);

  return WeakRetained;
}

@end