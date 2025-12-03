@interface _UIFallbackPresentationViewController
- (void)_dismissViewControllerWithTransition:(int)transition from:(id)from completion:(id)completion;
- (void)_preparePresentationControllerForPresenting:(id)presenting;
- (void)_presentViewController:(id)controller sendingView:(id)view animated:(BOOL)animated;
- (void)_preserveInputViewsAnimated:(BOOL)animated;
- (void)_restoreInputViewsAnimated:(BOOL)animated;
- (void)viewDidLoad;
@end

@implementation _UIFallbackPresentationViewController

- (void)viewDidLoad
{
  view = [(UIViewController *)self view];
  v4 = +[UIColor clearColor];
  [view setBackgroundColor:v4];

  v5.receiver = self;
  v5.super_class = _UIFallbackPresentationViewController;
  [(UIViewController *)&v5 viewDidLoad];
}

- (void)_presentViewController:(id)controller sendingView:(id)view animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  viewCopy = view;
  v10 = VisibleViewController(controllerCopy);
  v11 = UIKeyboardAutomaticIsOnScreen();
  if (objc_opt_respondsToSelector())
  {
    [v10 setEnableRotation:1];
  }

  window = [viewCopy window];
  windowScene = [window windowScene];

  v14 = [(UIApplicationRotationFollowingWindow *)[_UIFallbackPresentationWindow alloc] initWithWindowScene:windowScene];
  presentationWindow = self->_presentationWindow;
  self->_presentationWindow = v14;

  v16 = +[UIWindow _applicationKeyWindow];
  [v16 windowLevel];
  v18 = v17 + 1.0;

  v19 = 100.0;
  if (v18 >= 100.0)
  {
    v19 = v18;
  }

  [(UIWindow *)self->_presentationWindow setWindowLevel:v19];
  view = [(UIViewController *)self view];
  [(UIView *)self->_presentationWindow bounds];
  [view setFrame:?];
  v21 = +[UIColor clearColor];
  [view setBackgroundColor:v21];

  [(UIWindow *)self->_presentationWindow setRootViewController:self];
  [(UIView *)self->_presentationWindow addSubview:view];
  [(UIWindow *)self->_presentationWindow makeKeyAndVisible];
  if (objc_opt_respondsToSelector())
  {
    dismissCompletionHandler = [v10 dismissCompletionHandler];
  }

  else
  {
    dismissCompletionHandler = 0;
  }

  [(_UIFallbackPresentationViewController *)self setHasDismissCompletionHandler:objc_opt_respondsToSelector() & 1];
  if ([(_UIFallbackPresentationViewController *)self hasDismissCompletionHandler])
  {
    v25 = windowScene;
    v33[0] = 0;
    v33[1] = v33;
    v33[2] = 0x3032000000;
    v33[3] = __Block_byref_object_copy__54;
    v33[4] = __Block_byref_object_dispose__54;
    selfCopy = self;
    v26 = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = __85___UIFallbackPresentationViewController__presentViewController_sendingView_animated___block_invoke;
    v29 = &unk_1E7103600;
    v30 = selfCopy;
    v32 = v33;
    v31 = dismissCompletionHandler;
    [v10 setDismissCompletionHandler:&v26];

    _Block_object_dispose(v33, 8);
  }

  if (v11)
  {
    [(_UIFallbackPresentationViewController *)self _preserveInputViewsAnimated:animatedCopy];
    windowScene2 = [(UIWindow *)self->_presentationWindow windowScene];
    keyboardSceneDelegate = [windowScene2 keyboardSceneDelegate];
    [keyboardSceneDelegate forceOrderOutAutomaticExceptAccessoryView];
  }

  [(UIViewController *)self presentViewController:controllerCopy animated:animatedCopy completion:0, v25, v26, v27, v28, v29, v30];
}

- (void)_dismissViewControllerWithTransition:(int)transition from:(id)from completion:(id)completion
{
  v6 = *&transition;
  fromCopy = from;
  completionCopy = completion;
  if (![(_UIFallbackPresentationViewController *)self hasDismissCompletionHandler])
  {
    [(_UIFallbackPresentationViewController *)self _restoreInputViewsAnimated:1];
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __94___UIFallbackPresentationViewController__dismissViewControllerWithTransition_from_completion___block_invoke;
  v13[3] = &unk_1E70F37C0;
  v14 = fromCopy;
  v15 = completionCopy;
  v12.receiver = self;
  v12.super_class = _UIFallbackPresentationViewController;
  v10 = completionCopy;
  v11 = fromCopy;
  [(UIViewController *)&v12 _dismissViewControllerWithTransition:v6 from:v11 completion:v13];
}

- (void)_preserveInputViewsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(_UIFallbackPresentationViewController *)self setHasPreservedKeyboardInputViews:1];
  windowScene = [(UIWindow *)self->_presentationWindow windowScene];
  keyboardSceneDelegate = [windowScene keyboardSceneDelegate];
  v6 = [MEMORY[0x1E696B098] valueWithPointer:self];
  [keyboardSceneDelegate _preserveInputViewsWithId:v6 animated:animatedCopy];
}

- (void)_restoreInputViewsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(_UIFallbackPresentationViewController *)self hasPreservedKeyboardInputViews])
  {
    windowScene = [(UIWindow *)self->_presentationWindow windowScene];
    keyboardSceneDelegate = [windowScene keyboardSceneDelegate];
    v6 = [MEMORY[0x1E696B098] valueWithPointer:self];
    [keyboardSceneDelegate _restoreInputViewsWithId:v6 animated:animatedCopy];
  }
}

- (void)_preparePresentationControllerForPresenting:(id)presenting
{
  presentingCopy = presenting;
  presentationPreparationBlock = self->_presentationPreparationBlock;
  if (presentationPreparationBlock)
  {
    v8 = presentingCopy;
    v6 = presentationPreparationBlock[2]();
    presentingCopy = v8;
    if (v6)
    {
      v7 = self->_presentationPreparationBlock;
      self->_presentationPreparationBlock = 0;

      presentingCopy = v8;
    }
  }
}

@end