@interface _UIAlertControllerShimPresenter
+ (BOOL)_shouldPresentActionSheetsFullscreen;
+ (id)_currentFullScreenAlertPresenters;
+ (void)_addPresenter:(id)presenter;
+ (void)_cancelPendingTouchesIfAppropriateForWindow:(id)window;
+ (void)_removePresenter:(id)presenter;
- (UIAlertController)alertController;
- (UIPopoverControllerDelegate)popoverDelegate;
- (id)_popoverController;
- (void)_createWindowIfNecessaryWithScene:(id)scene;
- (void)_dismissAlertControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)_presentAlertControllerAnimated:(BOOL)animated hostingScene:(id)scene completion:(id)completion;
- (void)_presentAlertControllerFromBarButtonItem:(id)item animated:(BOOL)animated completion:(id)completion;
- (void)_presentAlertControllerFromRect:(CGRect)rect inView:(id)view direction:(unint64_t)direction animated:(BOOL)animated completion:(id)completion;
- (void)_tearDownInPopoverViewController;
- (void)dealloc;
- (void)setPopoverDelegate:(id)delegate;
@end

@implementation _UIAlertControllerShimPresenter

- (void)_presentAlertControllerAnimated:(BOOL)animated hostingScene:(id)scene completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  [(_UIAlertControllerShimPresenter *)self _createWindowIfNecessaryWithScene:scene];
  [(UIWindow *)self->_window makeKeyWindow];
  [_UIAlertControllerShimPresenter _cancelPendingTouchesIfAppropriateForWindow:self->_window];
  [_UIAlertControllerShimPresenter _addPresenter:self];
  alertController = [(_UIAlertControllerShimPresenter *)self alertController];
  [alertController _setDismissedFromShim:0];

  window = self->_window;
  alertController2 = [(_UIAlertControllerShimPresenter *)self alertController];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __91___UIAlertControllerShimPresenter__presentAlertControllerAnimated_hostingScene_completion___block_invoke;
  v13[3] = &unk_1E70F3608;
  v14 = completionCopy;
  v12 = completionCopy;
  [(_UIAlertControllerShimPresenterWindow *)window presentAlertController:alertController2 animated:animatedCopy completionBlock:v13];
}

- (void)_presentAlertControllerFromBarButtonItem:(id)item animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  view = [item view];
  [view bounds];
  [(_UIAlertControllerShimPresenter *)self _presentAlertControllerFromRect:view inView:15 direction:animatedCopy animated:completionCopy completion:?];
}

- (void)_presentAlertControllerFromRect:(CGRect)rect inView:(id)view direction:(unint64_t)direction animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  viewCopy = view;
  completionCopy = completion;
  window = [viewCopy window];
  [_UIAlertControllerShimPresenter _cancelPendingTouchesIfAppropriateForWindow:window];

  alertController = [(_UIAlertControllerShimPresenter *)self alertController];
  [alertController _setDismissedFromShim:0];

  v19 = [_UIPopoverView popoverViewContainingView:viewCopy];
  popoverController = [v19 popoverController];
  v21 = popoverController;
  if (v19)
  {
    _managingSplitViewController = [popoverController _managingSplitViewController];
    v23 = _managingSplitViewController == 0;
  }

  else
  {
    v23 = 0;
  }

  if (_UIAppUseModernRotationAndPresentationBehaviors())
  {
    _viewControllerForAncestor = [viewCopy _viewControllerForAncestor];
    if ([_viewControllerForAncestor _isInContextOfPresentationControllerOfClass:objc_opt_class() effective:0])
    {
      alertController2 = [(_UIAlertControllerShimPresenter *)self alertController];
      [_viewControllerForAncestor presentViewController:alertController2 animated:animatedCopy completion:completionCopy];

      goto LABEL_17;
    }
  }

  if (v23)
  {
    contentView = [v19 contentView];
    v27 = objc_alloc_init(UIViewController);
    inPopoverViewController = self->_inPopoverViewController;
    self->_inPopoverViewController = v27;

    view = [(UIViewController *)self->_inPopoverViewController view];
    [contentView bounds];
    [view setFrame:?];
    [contentView addSubview:view];
    v30 = self->_inPopoverViewController;
    alertController3 = [(_UIAlertControllerShimPresenter *)self alertController];
    [(UIViewController *)v30 presentViewController:alertController3 animated:animatedCopy completion:0];
  }

  else if (+[_UIAlertControllerShimPresenter _shouldPresentActionSheetsFullscreen])
  {
    [(_UIAlertControllerShimPresenter *)self _presentAlertControllerAnimated:animatedCopy completion:completionCopy];
  }

  else
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __104___UIAlertControllerShimPresenter__presentAlertControllerFromRect_inView_direction_animated_completion___block_invoke;
    aBlock[3] = &unk_1E70F3748;
    aBlock[4] = self;
    v43 = x;
    v44 = y;
    v45 = width;
    v46 = height;
    v32 = viewCopy;
    v41 = v32;
    directionCopy = direction;
    v48 = animatedCopy;
    v42 = completionCopy;
    v33 = _Block_copy(aBlock);
    if (_UIAppUseModernRotationAndPresentationBehaviors() && ([v32 _viewControllerForAncestor], v34 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v34, "transitionCoordinator"), v35 = objc_claimAutoreleasedReturnValue(), v35, v34, v35))
    {
      _viewControllerForAncestor2 = [v32 _viewControllerForAncestor];
      transitionCoordinator = [_viewControllerForAncestor2 transitionCoordinator];
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __104___UIAlertControllerShimPresenter__presentAlertControllerFromRect_inView_direction_animated_completion___block_invoke_2;
      v38[3] = &unk_1E70F3770;
      v39 = v33;
      [transitionCoordinator animateAlongsideTransition:0 completion:v38];
    }

    else
    {
      v33[2](v33);
    }
  }

LABEL_17:
}

- (void)_dismissAlertControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  alertController = [(_UIAlertControllerShimPresenter *)self alertController];
  [alertController _setDismissedFromShim:1];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __78___UIAlertControllerShimPresenter__dismissAlertControllerAnimated_completion___block_invoke;
  aBlock[3] = &unk_1E70F37C0;
  aBlock[4] = self;
  v8 = completionCopy;
  v25 = v8;
  v9 = _Block_copy(aBlock);
  popoverController = self->_popoverController;
  if (popoverController)
  {
    [(UIPopoverController *)popoverController dismissPopoverAnimated:animatedCopy];
    v9[2](v9);
  }

  else
  {
    alertController2 = [(_UIAlertControllerShimPresenter *)self alertController];
    presentingViewController = [alertController2 presentingViewController];

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __78___UIAlertControllerShimPresenter__dismissAlertControllerAnimated_completion___block_invoke_2;
    v20[3] = &unk_1E70F3798;
    v20[4] = self;
    v13 = presentingViewController;
    v21 = v13;
    v23 = animatedCopy;
    v14 = v9;
    v22 = v14;
    v15 = _Block_copy(v20);
    if (v13)
    {
      transitionCoordinator = [v13 transitionCoordinator];

      if (transitionCoordinator)
      {
        transitionCoordinator2 = [v13 transitionCoordinator];
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __78___UIAlertControllerShimPresenter__dismissAlertControllerAnimated_completion___block_invoke_3;
        v18[3] = &unk_1E70F3770;
        v19 = v15;
        [transitionCoordinator2 animateAlongsideTransition:0 completion:v18];
      }

      else
      {
        v15[2](v15);
      }
    }

    else
    {
      v14[2](v14);
    }
  }
}

- (id)_popoverController
{
  if (!self->_popoverController)
  {
    v3 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v3 userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v5 = [UIPopoverController alloc];
      alertController = [(_UIAlertControllerShimPresenter *)self alertController];
      v7 = [(UIPopoverController *)v5 initWithContentViewController:alertController];
      popoverController = self->_popoverController;
      self->_popoverController = v7;

      v9 = self->_popoverController;
      WeakRetained = objc_loadWeakRetained(&self->_popoverDelegate);
      [(UIPopoverController *)v9 setDelegate:WeakRetained];

      if (!_UIAppUseModernRotationAndPresentationBehaviors())
      {
        alertController2 = [(_UIAlertControllerShimPresenter *)self alertController];
        [alertController2 _setCompatibilityPopoverController:self->_popoverController];
      }
    }
  }

  v12 = self->_popoverController;

  return v12;
}

- (void)setPopoverDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeWeak(&self->_popoverDelegate, delegateCopy);
  popoverController = self->_popoverController;
  if (popoverController)
  {
    [(UIPopoverController *)popoverController setDelegate:delegateCopy];
  }
}

- (UIPopoverControllerDelegate)popoverDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_popoverDelegate);

  return WeakRetained;
}

- (void)_tearDownInPopoverViewController
{
  view = [(UIViewController *)self->_inPopoverViewController view];
  [view removeFromSuperview];

  inPopoverViewController = self->_inPopoverViewController;
  self->_inPopoverViewController = 0;
}

+ (BOOL)_shouldPresentActionSheetsFullscreen
{
  v2 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v2 userInterfaceIdiom];

  return (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1;
}

+ (void)_cancelPendingTouchesIfAppropriateForWindow:(id)window
{
  v3 = [UIApp _touchesEventForWindow:window];
  v4 = UIApp;

  [v4 _cancelUnfinishedTouchesForEvent:v3];
}

- (void)_createWindowIfNecessaryWithScene:(id)scene
{
  sceneCopy = scene;
  if (!self->_window)
  {
    v7 = sceneCopy;
    if (sceneCopy)
    {
      v5 = [[_UIAlertControllerShimPresenterWindow alloc] initWithWindowScene:sceneCopy];
    }

    else
    {
      v5 = objc_alloc_init(_UIAlertControllerShimPresenterWindow);
    }

    window = self->_window;
    self->_window = v5;

    sceneCopy = v7;
  }
}

- (void)dealloc
{
  [(_UIAlertControllerShimPresenter *)self _tearDownInPopoverViewController];
  alertController = [(_UIAlertControllerShimPresenter *)self alertController];
  [alertController _setCompatibilityPopoverController:0];

  [_UIAlertControllerShimPresenter _removePresenter:self];
  v4.receiver = self;
  v4.super_class = _UIAlertControllerShimPresenter;
  [(_UIAlertControllerShimPresenter *)&v4 dealloc];
}

+ (id)_currentFullScreenAlertPresenters
{
  v2 = __currentFullScreenAlertPresenters;
  if (!__currentFullScreenAlertPresenters)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4 = __currentFullScreenAlertPresenters;
    __currentFullScreenAlertPresenters = v3;

    v2 = __currentFullScreenAlertPresenters;
  }

  return v2;
}

+ (void)_addPresenter:(id)presenter
{
  v18 = *MEMORY[0x1E69E9840];
  presenterCopy = presenter;
  v4 = +[_UIAlertControllerShimPresenter _currentFullScreenAlertPresenters];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        window = [v9 window];
        [window setHidden:1];

        alertController = [v9 alertController];
        [alertController setTextFieldsCanBecomeFirstResponder:0];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  [v4 removeObject:presenterCopy];
  [v4 addObject:presenterCopy];
  window2 = [presenterCopy window];
  [window2 setHidden:0];
}

+ (void)_removePresenter:(id)presenter
{
  presenterCopy = presenter;
  window = [presenterCopy window];
  [window setHidden:1];

  v4 = +[_UIAlertControllerShimPresenter _currentFullScreenAlertPresenters];
  if ([v4 containsObject:presenterCopy])
  {
    [v4 removeObject:presenterCopy];
  }

  lastObject = [v4 lastObject];
  window2 = [lastObject window];
  [window2 setHidden:0];

  lastObject2 = [v4 lastObject];
  alertController = [lastObject2 alertController];
  [alertController setTextFieldsCanBecomeFirstResponder:1];
}

- (UIAlertController)alertController
{
  WeakRetained = objc_loadWeakRetained(&self->_alertController);

  return WeakRetained;
}

@end