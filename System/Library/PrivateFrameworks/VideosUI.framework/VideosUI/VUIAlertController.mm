@interface VUIAlertController
+ (id)vui_alertControllerWithTitle:(id)a3 message:(id)a4 accessibilityIdentifier:(id)a5 preferredStyle:(int64_t)a6;
- (BOOL)vui_isPresented;
- (void)viewDidDisappear:(BOOL)a3;
- (void)vui_addAction:(id)a3 isPreferred:(BOOL)a4;
- (void)vui_dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)vui_presentAlertFromPresentingController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)vui_setDismissalHandler:(id)a3;
@end

@implementation VUIAlertController

+ (id)vui_alertControllerWithTitle:(id)a3 message:(id)a4 accessibilityIdentifier:(id)a5 preferredStyle:(int64_t)a6
{
  v10 = a5;
  v11 = [a1 alertControllerWithTitle:a3 message:a4 preferredStyle:a6];
  v12 = v11;
  if (v10)
  {
    v13 = [v11 view];
    [v13 setAccessibilityIdentifier:v10];
  }

  return v12;
}

- (void)vui_addAction:(id)a3 isPreferred:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (+[VUIUtilities isSUIEnabled])
  {
    v7 = [(VUIAlertController *)self alertActions];

    if (!v7)
    {
      v8 = [MEMORY[0x1E695DF70] array];
      [(VUIAlertController *)self setAlertActions:v8];
    }

    v9 = [(VUIAlertController *)self alertActions];
    [v9 addObject:v6];
  }

  v10 = MEMORY[0x1E69DC648];
  v11 = [v6 title];
  v12 = [v6 style];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __48__VUIAlertController_vui_addAction_isPreferred___block_invoke;
  v16[3] = &unk_1E8730730;
  v13 = v6;
  v17 = v13;
  v14 = [v10 actionWithTitle:v11 style:v12 handler:v16];

  v15 = [v13 accessibilityIdentifier];
  [v14 setAccessibilityIdentifier:v15];

  [(VUIAlertController *)self addAction:v14];
  if (v4)
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

- (void)vui_presentAlertFromPresentingController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v20 = a3;
  v7 = a5;
  if (_os_feature_enabled_impl())
  {
    v8 = [(VUIAlertController *)self _attributedTitle];
    v9 = [v8 string];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [(VUIAlertController *)self title];
    }

    v12 = v11;

    v13 = [(VUIAlertController *)self _attributedMessage];
    v14 = [v13 string];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = [(VUIAlertController *)self message];
    }

    v17 = v16;

    if ((objc_opt_respondsToSelector() & 1) != 0 && [v20 vui_requiresLegacyPresentation])
    {
      [v20 presentViewController:self animated:1 completion:v7];
    }

    else
    {
      v18 = [(VUIAlertController *)self alertActions];
      v19 = [v18 copy];
      [v20 presentAlertWithTitle:v12 message:v17 actions:v19 animated:1];
    }
  }

  else
  {
    [v20 presentViewController:self animated:1 completion:v7];
  }
}

- (void)vui_setDismissalHandler:(id)a3
{
  v4 = _Block_copy(a3);
  dismissalHandler = self->_dismissalHandler;
  self->_dismissalHandler = v4;
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = VUIAlertController;
  [(VUIAlertController *)&v5 viewDidDisappear:a3];
  dismissalHandler = self->_dismissalHandler;
  if (dismissalHandler)
  {
    dismissalHandler[2]();
  }
}

- (void)vui_dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v8 = a4;
  if (+[VUIUtilities isSUIEnabled])
  {
    v6 = +[VUIInterfaceFactory sharedInstance];
    v7 = [v6 controllerPresenter];
    [v7 dismissViewControllerAnimated:v4 completion:v8];
  }

  else
  {
    [(VUIAlertController *)self dismissViewControllerAnimated:v4 completion:v8];
  }
}

- (BOOL)vui_isPresented
{
  if (+[VUIUtilities isSUIEnabled])
  {
    v3 = +[VUIInterfaceFactory sharedInstance];
    v4 = [v3 controllerPresenter];
    v5 = objc_opt_respondsToSelector();

    if ((v5 & 1) == 0)
    {
      return 0;
    }

    v6 = +[VUIInterfaceFactory sharedInstance];
    v7 = [v6 controllerPresenter];
    v8 = [v7 isPresentingAlert];
  }

  else
  {
    v6 = [(VUIAlertController *)self presentingViewController];
    v8 = v6 != 0;
  }

  return v8;
}

@end