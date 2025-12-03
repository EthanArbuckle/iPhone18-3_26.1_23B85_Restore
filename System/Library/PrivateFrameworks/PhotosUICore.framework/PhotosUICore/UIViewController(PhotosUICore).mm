@interface UIViewController(PhotosUICore)
+ (id)px_windowContainingViewController:()PhotosUICore;
- (BOOL)px_isDescendantOfOrPresentedByViewController:()PhotosUICore;
- (BOOL)px_isDescendantOfViewController:()PhotosUICore;
- (PXStatusBarHiddenViewController)px_createViewControllerWithHiddenStatusBarForMainViewController:()PhotosUICore;
- (id)px_nextViewControllerInNavigationController;
- (uint64_t)px_canPresentViewControllerAnimated:()PhotosUICore;
- (uint64_t)px_dismissViewControllerIfAllowedAnimated:()PhotosUICore forced:;
- (uint64_t)px_isDelayingPresentation;
- (void)px_adjustAdditionalSafeAreaInsetsToKeepContentStableRegardlessOfStatusBarVisibility;
@end

@implementation UIViewController(PhotosUICore)

- (void)px_adjustAdditionalSafeAreaInsetsToKeepContentStableRegardlessOfStatusBarVisibility
{
  v2 = +[PXWorkaroundSettings sharedInstance];
  shouldWorkAround128269285 = [v2 shouldWorkAround128269285];

  if (shouldWorkAround128269285)
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    if ([currentDevice userInterfaceIdiom] == 1)
    {
      presentingViewController = [self presentingViewController];
      v6 = presentingViewController != 0;
    }

    else
    {
      v6 = 0;
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __117__UIViewController_PhotosUICore__px_adjustAdditionalSafeAreaInsetsToKeepContentStableRegardlessOfStatusBarVisibility__block_invoke;
    aBlock[3] = &unk_1E773AF88;
    aBlock[4] = self;
    v7 = _Block_copy(aBlock);
    v8 = *(MEMORY[0x1E69DDCE0] + 8);
    v9 = *(MEMORY[0x1E69DDCE0] + 16);
    v10 = *(MEMORY[0x1E69DDCE0] + 24);
    v11 = 0.0;
    if (v6)
    {
      if ([self prefersStatusBarHidden])
      {
        v11 = v7[2](v7);
      }
    }

    [self setAdditionalSafeAreaInsets:{v11, v8, v9, v10}];
  }
}

- (id)px_nextViewControllerInNavigationController
{
  navigationController = [self navigationController];
  viewControllers = [navigationController viewControllers];

  v4 = [viewControllers indexOfObject:self];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL || (v5 = v4 + 1, v4 + 1 >= [viewControllers count]))
  {
    v6 = 0;
  }

  else
  {
    v6 = [viewControllers objectAtIndexedSubscript:v5];
  }

  return v6;
}

- (BOOL)px_isDescendantOfOrPresentedByViewController:()PhotosUICore
{
  v4 = a3;
  selfCopy = self;
  v6 = selfCopy;
  v7 = selfCopy != 0;
  if (selfCopy == v4 || !selfCopy)
  {
    v11 = selfCopy;
  }

  else
  {
    do
    {
      parentViewController = [v6 parentViewController];
      v9 = parentViewController;
      if (parentViewController)
      {
        presentingViewController = parentViewController;
      }

      else
      {
        presentingViewController = [v6 presentingViewController];
      }

      v11 = presentingViewController;

      v7 = v11 != 0;
      if (v11 == v4)
      {
        break;
      }

      v6 = v11;
    }

    while (v11);
  }

  return v7;
}

- (BOOL)px_isDescendantOfViewController:()PhotosUICore
{
  v4 = a3;
  if (v4)
  {
    selfCopy = self;
    parentViewController = selfCopy;
    for (i = selfCopy != 0; parentViewController != v4 && parentViewController; i = parentViewController != 0)
    {
      v8 = parentViewController;
      parentViewController = [parentViewController parentViewController];
    }
  }

  else
  {
    i = 0;
  }

  return i;
}

- (uint64_t)px_canPresentViewControllerAnimated:()PhotosUICore
{
  if (a3 && ![self px_isVisible])
  {
    goto LABEL_8;
  }

  presentedViewController = [self presentedViewController];
  v6 = presentedViewController;
  if (!presentedViewController || ([presentedViewController isBeingDismissed] & 1) != 0 || (objc_msgSend(self, "navigationItem"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "searchController"), v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v6 == v8))
  {

    goto LABEL_10;
  }

  if (([self _mayForwardPresentationsToPresentedViewController] & 1) == 0)
  {
    v10 = 0;
LABEL_14:

    return v10 & 1;
  }

  v9 = [v6 px_canPresentViewControllerAnimated:a3];

  if (v9)
  {
LABEL_10:
    navigationController = [self navigationController];
    v6 = navigationController;
    if (navigationController)
    {
      topViewController = [navigationController topViewController];
      v10 = [self px_isDescendantOfViewController:topViewController];
    }

    else
    {
      v10 = 1;
    }

    goto LABEL_14;
  }

LABEL_8:
  v10 = 0;
  return v10 & 1;
}

- (PXStatusBarHiddenViewController)px_createViewControllerWithHiddenStatusBarForMainViewController:()PhotosUICore
{
  v29[4] = *MEMORY[0x1E69E9840];
  v27 = a3;
  v3 = objc_alloc_init(PXStatusBarHiddenViewController);
  [(PXStatusBarHiddenViewController *)v3 addChildViewController:v27];
  view = [v27 view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  view2 = [(PXStatusBarHiddenViewController *)v3 view];
  [view2 addSubview:view];

  v19 = MEMORY[0x1E696ACD8];
  topAnchor = [view topAnchor];
  view3 = [(PXStatusBarHiddenViewController *)v3 view];
  topAnchor2 = [view3 topAnchor];
  v23 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v29[0] = v23;
  bottomAnchor = [view bottomAnchor];
  view4 = [(PXStatusBarHiddenViewController *)v3 view];
  bottomAnchor2 = [view4 bottomAnchor];
  v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v29[1] = v18;
  leadingAnchor = [view leadingAnchor];
  view5 = [(PXStatusBarHiddenViewController *)v3 view];
  leadingAnchor2 = [view5 leadingAnchor];
  v8 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v29[2] = v8;
  trailingAnchor = [view trailingAnchor];
  view6 = [(PXStatusBarHiddenViewController *)v3 view];
  trailingAnchor2 = [view6 trailingAnchor];
  v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v29[3] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:4];
  [v19 activateConstraints:v13];

  [v27 didMoveToParentViewController:self];
  v14 = [v27 contentScrollViewForEdge:1];
  v15 = [v27 contentScrollViewForEdge:4];

  [(PXStatusBarHiddenViewController *)v3 setContentScrollView:v14 forEdge:1];
  [(PXStatusBarHiddenViewController *)v3 setContentScrollView:v15 forEdge:4];

  return v3;
}

- (uint64_t)px_dismissViewControllerIfAllowedAnimated:()PhotosUICore forced:
{
  presentedViewController = [self presentedViewController];
  if (!presentedViewController)
  {
    presentedViewController2 = 0;
LABEL_12:
    [self dismissViewControllerAnimated:a3 completion:0];
    v13 = 1;
    goto LABEL_13;
  }

  v8 = presentedViewController;
  do
  {
    if (objc_opt_respondsToSelector())
    {
      v9 = [v8 prepareForDismissingForced:a4] | a4;
    }

    else
    {
      v9 = 1;
    }

    v10 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      [v8 setActive:0];
    }

    presentedViewController2 = [v8 presentedViewController];

    v8 = presentedViewController2;
  }

  while (((presentedViewController2 != 0) & v9) != 0);
  if (v9)
  {
    goto LABEL_12;
  }

  v13 = 0;
LABEL_13:

  return v13;
}

- (uint64_t)px_isDelayingPresentation
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [self _isDelayingPresentation];
}

+ (id)px_windowContainingViewController:()PhotosUICore
{
  viewIfLoaded = [a3 viewIfLoaded];
  window = [viewIfLoaded window];

  if (!window)
  {
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    window = [mEMORY[0x1E69DC668] px_firstKeyWindow];
  }

  return window;
}

@end