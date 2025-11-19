@interface PKPaymentSetupDismissibleNavigationController
- (PKPaymentSetupDismissibleNavigationController)initWithContext:(int64_t)a3;
- (id)navigationController:(id)a3 animationControllerForOperation:(int64_t)a4 fromViewController:(id)a5 toViewController:(id)a6;
- (unint64_t)supportedInterfaceOrientations;
- (void)_configureRootViewController;
- (void)cancelButtonPressed:(id)a3;
- (void)dealloc;
- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5;
- (void)useStandardPlatformPresentationStyle;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation PKPaymentSetupDismissibleNavigationController

- (PKPaymentSetupDismissibleNavigationController)initWithContext:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = PKPaymentSetupDismissibleNavigationController;
  result = [(PKNavigationController *)&v5 init];
  if (result)
  {
    result->_context = a3;
  }

  return result;
}

- (void)dealloc
{
  onDismiss = self->_onDismiss;
  if (onDismiss)
  {
    onDismiss[2](onDismiss, a2);
    v4 = self->_onDismiss;
    self->_onDismiss = 0;
  }

  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "PKPaymentSetupNavigationController: Calling didCompleteFlow for Buddy", buf, 2u);
  }

  v6 = objc_alloc_init(_MergedGlobals_3_7[0]());
  v7 = off_1EE9A1C78[0]();
  [v6 didCompleteFlow:v7];

  v8.receiver = self;
  v8.super_class = PKPaymentSetupDismissibleNavigationController;
  [(PKNavigationController *)&v8 dealloc];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = PKPaymentSetupDismissibleNavigationController;
  [(PKNavigationController *)&v3 viewDidLoad];
  PKPaymentSetupApplyContextAppearance(self->_context, self);
}

- (void)viewWillAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = PKPaymentSetupDismissibleNavigationController;
  [(PKPaymentSetupDismissibleNavigationController *)&v3 viewWillAppear:a3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = PKPaymentSetupDismissibleNavigationController;
  [(PKPaymentSetupDismissibleNavigationController *)&v6 viewDidDisappear:a3];
  if ([(PKPaymentSetupDismissibleNavigationController *)self isBeingDismissed])
  {
    onDismiss = self->_onDismiss;
    if (onDismiss)
    {
      onDismiss[2]();
      v5 = self->_onDismiss;
      self->_onDismiss = 0;
    }
  }
}

- (void)_configureRootViewController
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (!self->_configureRootViewController)
  {
    self->_configureRootViewController = 1;
    v3 = [(PKPaymentSetupDismissibleNavigationController *)self viewControllers];
    v4 = [v3 firstObject];

    v5 = [v4 navigationItem];
    if (objc_opt_respondsToSelector())
    {
      v6 = [v4 pkui_navigationCloseButtonBehavior];
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          [v5 setHidesBackButton:1];
          v7 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:24 target:self action:sel_cancelButtonPressed_];
          if (![v4 conformsToProtocol:&unk_1F3CE83F8])
          {
            [v5 setLeftBarButtonItem:v7];
            goto LABEL_16;
          }

          v16 = v7;
          v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
          [v4 _setLeftBarButtonItems:v8 animated:0];
          goto LABEL_15;
        }

        if (v6 == 1)
        {
          [v5 setHidesBackButton:1];
          v7 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:24 target:self action:sel_cancelButtonPressed_];
          if (![v4 conformsToProtocol:&unk_1F3CE83F8])
          {
            [v5 setRightBarButtonItem:v7];
            goto LABEL_16;
          }

          v17[0] = v7;
          v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
          [v4 _setRightBarButtonItems:v8 animated:0];
          goto LABEL_15;
        }

LABEL_17:

        return;
      }
    }

    else if (PKPaymentSetupContextIsSetupAssistant())
    {
      goto LABEL_17;
    }

    [v5 setHidesBackButton:1];
    v9 = [v5 leftBarButtonItems];
    v10 = [v5 rightBarButtonItems];
    v7 = [v9 arrayByAddingObjectsFromArray:v10];

    v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"systemItem == %d", 1];
    v12 = [v7 filteredArrayUsingPredicate:v11];
    v13 = [v12 count];

    if (v13)
    {
LABEL_16:

      goto LABEL_17;
    }

    v8 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_cancelButtonPressed_];
    if ([v4 conformsToProtocol:&unk_1F3CE83F8])
    {
      v15 = v8;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
      [v4 _setLeftBarButtonItems:v14 animated:0];
    }

    else
    {
      [v5 setLeftBarButtonItem:v8];
    }

LABEL_15:

    goto LABEL_16;
  }
}

- (void)useStandardPlatformPresentationStyle
{
  if ([(UIViewController *)self pkui_userInterfaceIdiomSupportsLargeLayouts])
  {

    [(PKNavigationController *)self setCustomFormSheetPresentationStyleForiPad];
  }

  else
  {

    [(PKPaymentSetupDismissibleNavigationController *)self setModalPresentationStyle:3];
  }
}

- (void)cancelButtonPressed:(id)a3
{
  onDismiss = self->_onDismiss;
  if (onDismiss)
  {
    onDismiss[2](onDismiss, a2, a3);
    v5 = self->_onDismiss;
    self->_onDismiss = 0;
  }

  [(PKPaymentSetupDismissibleNavigationController *)self dismissViewControllerAnimated:1 completion:0];
}

- (unint64_t)supportedInterfaceOrientations
{
  if ([(UIViewController *)self pkui_userInterfaceIdiomSupportsLargeLayouts])
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  [(PKPaymentSetupDismissibleNavigationController *)self _configureRootViewController];
  PKPaymentSetupApplyContextAppearance(self->_context, v8);
  v14.receiver = self;
  v14.super_class = PKPaymentSetupDismissibleNavigationController;
  [(PKNavigationController *)&v14 navigationController:v9 willShowViewController:v8 animated:v5];

  v10 = [(PKPaymentSetupDismissibleNavigationController *)self isModalInPresentation];
  v11 = [(PKPaymentSetupDismissibleNavigationController *)self viewControllers];
  v12 = [v11 count];

  v13 = v12 > 1;
  if (v10)
  {
    v13 = v12 == 1;
  }

  if (v13)
  {
    [(PKPaymentSetupDismissibleNavigationController *)self setModalInPresentation:(v12 > 1) & ~v10];
  }
}

- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(PKPaymentSetupDismissibleNavigationController *)self topViewController];
  v8 = [v7 conformsToProtocol:&unk_1F3D0D108];
  v9 = v8;
  if (v8 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v7 viewWillDismissModalView];
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __90__PKPaymentSetupDismissibleNavigationController_dismissViewControllerAnimated_completion___block_invoke;
  v13[3] = &unk_1E80150A8;
  v16 = v9;
  v14 = v7;
  v15 = v6;
  v12.receiver = self;
  v12.super_class = PKPaymentSetupDismissibleNavigationController;
  v10 = v6;
  v11 = v7;
  [(PKPaymentSetupDismissibleNavigationController *)&v12 dismissViewControllerAnimated:v4 completion:v13];
}

uint64_t __90__PKPaymentSetupDismissibleNavigationController_dismissViewControllerAnimated_completion___block_invoke(uint64_t a1)
{
  if (*(a1 + 48) == 1 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [*(a1 + 32) viewDidDismissModalView];
  }

  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (id)navigationController:(id)a3 animationControllerForOperation:(int64_t)a4 fromViewController:(id)a5 toViewController:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  if ([v10 conformsToProtocol:&unk_1F3CDF988] && (v12 = objc_opt_respondsToSelector(), v13 = v10, (v12 & 1) != 0) || objc_msgSend(v11, "conformsToProtocol:", &unk_1F3CDF988) && (v14 = objc_opt_respondsToSelector(), v13 = v11, (v14 & 1) != 0))
  {
    v15 = [v13 navigationController:v9 animationControllerForOperation:a4 fromViewController:v10 toViewController:v11];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end