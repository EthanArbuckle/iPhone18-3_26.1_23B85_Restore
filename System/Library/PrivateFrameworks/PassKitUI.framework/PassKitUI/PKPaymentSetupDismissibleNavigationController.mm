@interface PKPaymentSetupDismissibleNavigationController
- (PKPaymentSetupDismissibleNavigationController)initWithContext:(int64_t)context;
- (id)navigationController:(id)controller animationControllerForOperation:(int64_t)operation fromViewController:(id)viewController toViewController:(id)toViewController;
- (unint64_t)supportedInterfaceOrientations;
- (void)_configureRootViewController;
- (void)cancelButtonPressed:(id)pressed;
- (void)dealloc;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)useStandardPlatformPresentationStyle;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PKPaymentSetupDismissibleNavigationController

- (PKPaymentSetupDismissibleNavigationController)initWithContext:(int64_t)context
{
  v5.receiver = self;
  v5.super_class = PKPaymentSetupDismissibleNavigationController;
  result = [(PKNavigationController *)&v5 init];
  if (result)
  {
    result->_context = context;
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

- (void)viewWillAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = PKPaymentSetupDismissibleNavigationController;
  [(PKPaymentSetupDismissibleNavigationController *)&v3 viewWillAppear:appear];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = PKPaymentSetupDismissibleNavigationController;
  [(PKPaymentSetupDismissibleNavigationController *)&v6 viewDidDisappear:disappear];
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
    viewControllers = [(PKPaymentSetupDismissibleNavigationController *)self viewControllers];
    firstObject = [viewControllers firstObject];

    navigationItem = [firstObject navigationItem];
    if (objc_opt_respondsToSelector())
    {
      pkui_navigationCloseButtonBehavior = [firstObject pkui_navigationCloseButtonBehavior];
      if (pkui_navigationCloseButtonBehavior != 3)
      {
        if (pkui_navigationCloseButtonBehavior == 2)
        {
          [navigationItem setHidesBackButton:1];
          v7 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:24 target:self action:sel_cancelButtonPressed_];
          if (![firstObject conformsToProtocol:&unk_1F3CE83F8])
          {
            [navigationItem setLeftBarButtonItem:v7];
            goto LABEL_16;
          }

          v16 = v7;
          v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
          [firstObject _setLeftBarButtonItems:v8 animated:0];
          goto LABEL_15;
        }

        if (pkui_navigationCloseButtonBehavior == 1)
        {
          [navigationItem setHidesBackButton:1];
          v7 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:24 target:self action:sel_cancelButtonPressed_];
          if (![firstObject conformsToProtocol:&unk_1F3CE83F8])
          {
            [navigationItem setRightBarButtonItem:v7];
            goto LABEL_16;
          }

          v17[0] = v7;
          v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
          [firstObject _setRightBarButtonItems:v8 animated:0];
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

    [navigationItem setHidesBackButton:1];
    leftBarButtonItems = [navigationItem leftBarButtonItems];
    rightBarButtonItems = [navigationItem rightBarButtonItems];
    v7 = [leftBarButtonItems arrayByAddingObjectsFromArray:rightBarButtonItems];

    v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"systemItem == %d", 1];
    v12 = [v7 filteredArrayUsingPredicate:v11];
    v13 = [v12 count];

    if (v13)
    {
LABEL_16:

      goto LABEL_17;
    }

    v8 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_cancelButtonPressed_];
    if ([firstObject conformsToProtocol:&unk_1F3CE83F8])
    {
      v15 = v8;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
      [firstObject _setLeftBarButtonItems:v14 animated:0];
    }

    else
    {
      [navigationItem setLeftBarButtonItem:v8];
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

- (void)cancelButtonPressed:(id)pressed
{
  onDismiss = self->_onDismiss;
  if (onDismiss)
  {
    onDismiss[2](onDismiss, a2, pressed);
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

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  animatedCopy = animated;
  viewControllerCopy = viewController;
  controllerCopy = controller;
  [(PKPaymentSetupDismissibleNavigationController *)self _configureRootViewController];
  PKPaymentSetupApplyContextAppearance(self->_context, viewControllerCopy);
  v14.receiver = self;
  v14.super_class = PKPaymentSetupDismissibleNavigationController;
  [(PKNavigationController *)&v14 navigationController:controllerCopy willShowViewController:viewControllerCopy animated:animatedCopy];

  isModalInPresentation = [(PKPaymentSetupDismissibleNavigationController *)self isModalInPresentation];
  viewControllers = [(PKPaymentSetupDismissibleNavigationController *)self viewControllers];
  v12 = [viewControllers count];

  v13 = v12 > 1;
  if (isModalInPresentation)
  {
    v13 = v12 == 1;
  }

  if (v13)
  {
    [(PKPaymentSetupDismissibleNavigationController *)self setModalInPresentation:(v12 > 1) & ~isModalInPresentation];
  }
}

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  topViewController = [(PKPaymentSetupDismissibleNavigationController *)self topViewController];
  v8 = [topViewController conformsToProtocol:&unk_1F3D0D108];
  v9 = v8;
  if (v8 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [topViewController viewWillDismissModalView];
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __90__PKPaymentSetupDismissibleNavigationController_dismissViewControllerAnimated_completion___block_invoke;
  v13[3] = &unk_1E80150A8;
  v16 = v9;
  v14 = topViewController;
  v15 = completionCopy;
  v12.receiver = self;
  v12.super_class = PKPaymentSetupDismissibleNavigationController;
  v10 = completionCopy;
  v11 = topViewController;
  [(PKPaymentSetupDismissibleNavigationController *)&v12 dismissViewControllerAnimated:animatedCopy completion:v13];
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

- (id)navigationController:(id)controller animationControllerForOperation:(int64_t)operation fromViewController:(id)viewController toViewController:(id)toViewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  toViewControllerCopy = toViewController;
  if ([viewControllerCopy conformsToProtocol:&unk_1F3CDF988] && (v12 = objc_opt_respondsToSelector(), v13 = viewControllerCopy, (v12 & 1) != 0) || objc_msgSend(toViewControllerCopy, "conformsToProtocol:", &unk_1F3CDF988) && (v14 = objc_opt_respondsToSelector(), v13 = toViewControllerCopy, (v14 & 1) != 0))
  {
    v15 = [v13 navigationController:controllerCopy animationControllerForOperation:operation fromViewController:viewControllerCopy toViewController:toViewControllerCopy];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end