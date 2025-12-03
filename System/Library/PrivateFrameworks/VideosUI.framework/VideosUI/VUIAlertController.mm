@interface VUIAlertController
+ (id)vui_alertControllerWithTitle:(id)title message:(id)message accessibilityIdentifier:(id)identifier preferredStyle:(int64_t)style;
- (BOOL)vui_isPresented;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)vui_addAction:(id)action isPreferred:(BOOL)preferred;
- (void)vui_dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)vui_presentAlertFromPresentingController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)vui_setDismissalHandler:(id)handler;
@end

@implementation VUIAlertController

+ (id)vui_alertControllerWithTitle:(id)title message:(id)message accessibilityIdentifier:(id)identifier preferredStyle:(int64_t)style
{
  identifierCopy = identifier;
  v11 = [self alertControllerWithTitle:title message:message preferredStyle:style];
  v12 = v11;
  if (identifierCopy)
  {
    view = [v11 view];
    [view setAccessibilityIdentifier:identifierCopy];
  }

  return v12;
}

- (void)vui_addAction:(id)action isPreferred:(BOOL)preferred
{
  preferredCopy = preferred;
  actionCopy = action;
  if (+[VUIUtilities isSUIEnabled])
  {
    alertActions = [(VUIAlertController *)self alertActions];

    if (!alertActions)
    {
      array = [MEMORY[0x1E695DF70] array];
      [(VUIAlertController *)self setAlertActions:array];
    }

    alertActions2 = [(VUIAlertController *)self alertActions];
    [alertActions2 addObject:actionCopy];
  }

  v10 = MEMORY[0x1E69DC648];
  title = [actionCopy title];
  style = [actionCopy style];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __48__VUIAlertController_vui_addAction_isPreferred___block_invoke;
  v16[3] = &unk_1E8730730;
  v13 = actionCopy;
  v17 = v13;
  v14 = [v10 actionWithTitle:title style:style handler:v16];

  accessibilityIdentifier = [v13 accessibilityIdentifier];
  [v14 setAccessibilityIdentifier:accessibilityIdentifier];

  [(VUIAlertController *)self addAction:v14];
  if (preferredCopy)
  {
    [(VUIAlertController *)self setPreferredAction:v14];
  }
}

void __48__VUIAlertController_vui_addAction_isPreferred___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) handler];

  if (v2)
  {
    v3 = [*(a1 + 32) handler];
    v3[2](v3, *(a1 + 32));
  }
}

- (void)vui_presentAlertFromPresentingController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  if (_os_feature_enabled_impl())
  {
    _attributedTitle = [(VUIAlertController *)self _attributedTitle];
    string = [_attributedTitle string];
    v10 = string;
    if (string)
    {
      title = string;
    }

    else
    {
      title = [(VUIAlertController *)self title];
    }

    v12 = title;

    _attributedMessage = [(VUIAlertController *)self _attributedMessage];
    string2 = [_attributedMessage string];
    v15 = string2;
    if (string2)
    {
      message = string2;
    }

    else
    {
      message = [(VUIAlertController *)self message];
    }

    v17 = message;

    if ((objc_opt_respondsToSelector() & 1) != 0 && [controllerCopy vui_requiresLegacyPresentation])
    {
      [controllerCopy presentViewController:self animated:1 completion:completionCopy];
    }

    else
    {
      alertActions = [(VUIAlertController *)self alertActions];
      v19 = [alertActions copy];
      [controllerCopy presentAlertWithTitle:v12 message:v17 actions:v19 animated:1];
    }
  }

  else
  {
    [controllerCopy presentViewController:self animated:1 completion:completionCopy];
  }
}

- (void)vui_setDismissalHandler:(id)handler
{
  v4 = _Block_copy(handler);
  dismissalHandler = self->_dismissalHandler;
  self->_dismissalHandler = v4;
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = VUIAlertController;
  [(VUIAlertController *)&v5 viewDidDisappear:disappear];
  dismissalHandler = self->_dismissalHandler;
  if (dismissalHandler)
  {
    dismissalHandler[2]();
  }
}

- (void)vui_dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  if (+[VUIUtilities isSUIEnabled])
  {
    v6 = +[VUIInterfaceFactory sharedInstance];
    controllerPresenter = [v6 controllerPresenter];
    [controllerPresenter dismissViewControllerAnimated:animatedCopy completion:completionCopy];
  }

  else
  {
    [(VUIAlertController *)self dismissViewControllerAnimated:animatedCopy completion:completionCopy];
  }
}

- (BOOL)vui_isPresented
{
  if (+[VUIUtilities isSUIEnabled])
  {
    v3 = +[VUIInterfaceFactory sharedInstance];
    controllerPresenter = [v3 controllerPresenter];
    v5 = objc_opt_respondsToSelector();

    if ((v5 & 1) == 0)
    {
      return 0;
    }

    presentingViewController = +[VUIInterfaceFactory sharedInstance];
    controllerPresenter2 = [presentingViewController controllerPresenter];
    isPresentingAlert = [controllerPresenter2 isPresentingAlert];
  }

  else
  {
    presentingViewController = [(VUIAlertController *)self presentingViewController];
    isPresentingAlert = presentingViewController != 0;
  }

  return isPresentingAlert;
}

@end