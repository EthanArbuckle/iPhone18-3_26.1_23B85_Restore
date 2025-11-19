@interface UIKeyboardHiddenViewController
- (BOOL)shouldPresentAsPopover;
- (CGSize)sizeForChildContentContainer:(id)a3 withParentContainerSize:(CGSize)a4;
- (UIKeyboardHiddenViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5;
- (void)_localAuthenticationUIDismissed;
- (void)_localAuthenticationUIPresented;
- (void)_sceneDidChange;
- (void)dealloc;
- (void)passwordViewControllerDidFinish:(id)a3;
- (void)presentAutofillVCWithAnimation:(BOOL)a3;
- (void)presentSelfWithAnimation:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation UIKeyboardHiddenViewController

- (UIKeyboardHiddenViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v9.receiver = self;
  v9.super_class = UIKeyboardHiddenViewController;
  v4 = [(UIViewController *)&v9 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v4, UIKBLADarwinUIPresented, @"com.apple.LocalAuthentication.ui.presented", 0, 0);
    v6 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v6, v4, UIKBLADarwinUIDismissed, @"com.apple.LocalAuthentication.ui.dismissed", 0, 0);
    objc_storeStrong(&__UIKBCurrentHiddenViewController, v4);
    [(UIViewController *)v4 setModalPresentationStyle:4];
    autofillVC = v4->_autofillVC;
    v4->_autofillVC = 0;
  }

  return v4;
}

- (void)dealloc
{
  v3 = __UIKBCurrentHiddenViewController;
  if (__UIKBCurrentHiddenViewController == self)
  {
    __UIKBCurrentHiddenViewController = 0;
  }

  if (self->_presentedAutofill)
  {
    v4 = +[UIPeripheralHost activeInstance];
    [v4 setDeactivatedKeyboard:0 forScene:0];

    self->_presentedAutofill = 0;
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.LocalAuthentication.ui.presented", 0);
  v6 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v6, self, @"com.apple.LocalAuthentication.ui.dismissed", 0);
  v7.receiver = self;
  v7.super_class = UIKeyboardHiddenViewController;
  [(UIViewController *)&v7 dealloc];
}

- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5
{
  v6 = a4;
  v7 = a3;
  v8 = [(UIPresentationController *)[UIKeyboardVCPresentationController alloc] initWithPresentedViewController:v7 presentingViewController:v6];

  return v8;
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  if (!self->_presentedAutofill)
  {
    if (![UIApp isSuspended] || (+[UIKeyboardSceneDelegate activeKeyboardSceneDelegate](UIKeyboardSceneDelegate, "activeKeyboardSceneDelegate"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "containerWindow"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "_isHostedInAnotherProcess"), v6, v5, v7))
    {
      self->_presentedAutofill = 1;
      v8 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      v9 = [MEMORY[0x1E696B098] valueWithPointer:self];
      [v8 _preserveInputViewsWithId:v9 animated:1];

      v10 = +[UIPeripheralHost activeInstance];
      [v10 setDeactivatedKeyboard:1 forScene:0];
    }
  }

  v11 = [MEMORY[0x1E696AD88] defaultCenter];
  [v11 addObserver:self selector:sel__deviceWillLock_ name:@"UIApplicationProtectedDataWillBecomeUnavailable" object:0];

  v12.receiver = self;
  v12.super_class = UIKeyboardHiddenViewController;
  [(UIViewController *)&v12 viewWillAppear:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 removeObserver:self name:@"UIApplicationProtectedDataWillBecomeUnavailable" object:0];

  v6.receiver = self;
  v6.super_class = UIKeyboardHiddenViewController;
  [(UIViewController *)&v6 viewWillDisappear:v3];
}

- (void)_localAuthenticationUIPresented
{
  if (!self->_presentedAutofill && !+[UIKeyboard usesInputSystemUI])
  {
    v3 = +[UIPeripheralHost activeInstance];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __65__UIKeyboardHiddenViewController__localAuthenticationUIPresented__block_invoke;
    v4[3] = &unk_1E70F3590;
    v4[4] = self;
    [v3 performWithoutDeactivation:v4];
  }
}

void __65__UIKeyboardHiddenViewController__localAuthenticationUIPresented__block_invoke(uint64_t a1)
{
  v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v2 = [MEMORY[0x1E696B098] valueWithPointer:*(a1 + 32)];
  [v3 _preserveInputViewsWithId:v2 animated:1];
}

- (void)_localAuthenticationUIDismissed
{
  if (!self->_presentedAutofill)
  {
    v3 = +[UIPeripheralHost activeInstance];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __65__UIKeyboardHiddenViewController__localAuthenticationUIDismissed__block_invoke;
    v4[3] = &unk_1E70F3590;
    v4[4] = self;
    [v3 performWithoutDeactivation:v4];
  }
}

void __65__UIKeyboardHiddenViewController__localAuthenticationUIDismissed__block_invoke(uint64_t a1)
{
  v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v2 = [MEMORY[0x1E696B098] valueWithPointer:*(a1 + 32)];
  [v3 _restoreInputViewsWithId:v2 animated:1];
}

- (void)passwordViewControllerDidFinish:(id)a3
{
  v4 = [UITextEffectsWindow sharedTextEffectsWindowForWindowScene:0];
  v5 = [v4 rootViewController];

  [v5 setDontDismissKeyboardOnScrolling:0];
  if (self->_presentedAutofill)
  {
    v6 = +[UIPeripheralHost activeInstance];
    [v6 setDeactivatedKeyboard:0 forScene:0];

    self->_presentedAutofill = 0;
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__UIKeyboardHiddenViewController_passwordViewControllerDidFinish___block_invoke;
  v7[3] = &unk_1E70F3590;
  v7[4] = self;
  _AttemptDismiss(self, v7);
}

void __66__UIKeyboardHiddenViewController_passwordViewControllerDidFinish___block_invoke(uint64_t a1)
{
  v2 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v3 = [MEMORY[0x1E696B098] valueWithPointer:*(a1 + 32)];
  v4 = [v2 _restoreInputViewsWithId:v3 animated:1];

  if ((v4 & 1) == 0)
  {
    v5 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
    [v5 restorePreservedInputViewsIfNecessary];
  }
}

- (BOOL)shouldPresentAsPopover
{
  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    return 0;
  }

  v2 = +[UIWindow _applicationKeyWindow];
  v3 = [v2 traitCollection];
  v4 = [v3 horizontalSizeClass] != 1;

  return v4;
}

- (void)presentSelfWithAnimation:(BOOL)a3
{
  [(UIViewController *)self setTransitioningDelegate:self];
  v5 = [UITextEffectsWindow sharedTextEffectsWindowForWindowScene:0];
  v6 = [v5 rootViewController];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__UIKeyboardHiddenViewController_presentSelfWithAnimation___block_invoke;
  v7[3] = &unk_1E70F35E0;
  v7[4] = self;
  v8 = a3;
  [v6 presentViewController:self animated:0 completion:v7];
}

uint64_t __59__UIKeyboardHiddenViewController_presentSelfWithAnimation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _window];
  v3 = [v2 _isHostedInAnotherProcess];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = s_presentations;
    if (!s_presentations)
    {
      v6 = [MEMORY[0x1E695DF70] array];
      v7 = s_presentations;
      s_presentations = v6;

      v5 = s_presentations;
    }

    [v5 addObject:v4];
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);

  return [v8 presentAutofillVCWithAnimation:v9];
}

- (void)presentAutofillVCWithAnimation:(BOOL)a3
{
  v3 = a3;
  v5 = [UITextEffectsWindow sharedTextEffectsWindowForWindowScene:0];
  v6 = [v5 rootViewController];

  [v6 setDontDismissKeyboardOnScrolling:1];
  [(_SFPasswordViewController *)self->_autofillVC setModalPresentationStyle:3];
  [(UIViewController *)self setDefinesPresentationContext:1];
  [(UIKeyboardHiddenViewController *)self presentViewController:v3];
}

- (void)_sceneDidChange
{
  v3 = [(UIViewController *)self presentingViewController];

  if (v3)
  {
    if (!self->_processingSceneDidChange)
    {
      self->_processingSceneDidChange = 1;
      v4 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
      v5 = [v4 snapshotting] ^ 1;

      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __49__UIKeyboardHiddenViewController__sceneDidChange__block_invoke;
      v6[3] = &unk_1E70F35E0;
      v7 = v5;
      v6[4] = self;
      _AttemptDismiss(self, v6);
    }
  }
}

uint64_t __49__UIKeyboardHiddenViewController__sceneDidChange__block_invoke(uint64_t result)
{
  v1 = result;
  if (*(result + 40) == 1)
  {
    result = [*(result + 32) presentSelfWithAnimation:0];
  }

  *(*(v1 + 32) + 1001) = 0;
  return result;
}

- (CGSize)sizeForChildContentContainer:(id)a3 withParentContainerSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  if ([(UIKeyboardHiddenViewController *)self shouldPresentAsPopover])
  {
    v8 = [(UIViewController *)self presentationController];
    [v8 sizeForChildContentContainer:v7 withParentContainerSize:{width, height}];
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v17.receiver = self;
    v17.super_class = UIKeyboardHiddenViewController;
    [(UIViewController *)&v17 sizeForChildContentContainer:v7 withParentContainerSize:width, height];
    v10 = v13;
    v12 = v14;
  }

  v15 = v10;
  v16 = v12;
  result.height = v16;
  result.width = v15;
  return result;
}

void __65__UIKeyboardHiddenViewController_Autofill_presentViewController___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    if (v3 && v3[14])
    {
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __65__UIKeyboardHiddenViewController_Autofill_presentViewController___block_invoke_2;
      v5[3] = &unk_1E70F5AF0;
      v5[4] = *(a1 + 40);
      v6 = v3;
      v7 = *(a1 + 48);
      _AttemptDismiss(v6, v5);
    }

    else
    {
      v4 = *(a1 + 40);

      [v4 presentViewController:? animated:? completion:?];
    }
  }
}

void __59__UIKeyboardHiddenViewController_Autofill_isValidedString___block_invoke()
{
  v0 = [MEMORY[0x1E696AD48] illegalCharacterSet];
  v1 = _MergedGlobals_1219;
  _MergedGlobals_1219 = v0;

  v2 = _MergedGlobals_1219;
  v3 = [MEMORY[0x1E696AB08] controlCharacterSet];
  [v2 formUnionWithCharacterSet:v3];

  v4 = _MergedGlobals_1219;
  v5 = [MEMORY[0x1E696AB08] newlineCharacterSet];
  [v4 formUnionWithCharacterSet:v5];
}

@end