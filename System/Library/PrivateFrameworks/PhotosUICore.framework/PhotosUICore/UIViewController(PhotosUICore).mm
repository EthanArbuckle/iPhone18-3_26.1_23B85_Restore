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
  v3 = [v2 shouldWorkAround128269285];

  if (v3)
  {
    v4 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v4 userInterfaceIdiom] == 1)
    {
      v5 = [a1 presentingViewController];
      v6 = v5 != 0;
    }

    else
    {
      v6 = 0;
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __117__UIViewController_PhotosUICore__px_adjustAdditionalSafeAreaInsetsToKeepContentStableRegardlessOfStatusBarVisibility__block_invoke;
    aBlock[3] = &unk_1E773AF88;
    aBlock[4] = a1;
    v7 = _Block_copy(aBlock);
    v8 = *(MEMORY[0x1E69DDCE0] + 8);
    v9 = *(MEMORY[0x1E69DDCE0] + 16);
    v10 = *(MEMORY[0x1E69DDCE0] + 24);
    v11 = 0.0;
    if (v6)
    {
      if ([a1 prefersStatusBarHidden])
      {
        v11 = v7[2](v7);
      }
    }

    [a1 setAdditionalSafeAreaInsets:{v11, v8, v9, v10}];
  }
}

- (id)px_nextViewControllerInNavigationController
{
  v2 = [a1 navigationController];
  v3 = [v2 viewControllers];

  v4 = [v3 indexOfObject:a1];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL || (v5 = v4 + 1, v4 + 1 >= [v3 count]))
  {
    v6 = 0;
  }

  else
  {
    v6 = [v3 objectAtIndexedSubscript:v5];
  }

  return v6;
}

- (BOOL)px_isDescendantOfOrPresentedByViewController:()PhotosUICore
{
  v4 = a3;
  v5 = a1;
  v6 = v5;
  v7 = v5 != 0;
  if (v5 == v4 || !v5)
  {
    v11 = v5;
  }

  else
  {
    do
    {
      v8 = [v6 parentViewController];
      v9 = v8;
      if (v8)
      {
        v10 = v8;
      }

      else
      {
        v10 = [v6 presentingViewController];
      }

      v11 = v10;

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
    v5 = a1;
    v6 = v5;
    for (i = v5 != 0; v6 != v4 && v6; i = v6 != 0)
    {
      v8 = v6;
      v6 = [v6 parentViewController];
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
  if (a3 && ![a1 px_isVisible])
  {
    goto LABEL_8;
  }

  v5 = [a1 presentedViewController];
  v6 = v5;
  if (!v5 || ([v5 isBeingDismissed] & 1) != 0 || (objc_msgSend(a1, "navigationItem"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "searchController"), v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v6 == v8))
  {

    goto LABEL_10;
  }

  if (([a1 _mayForwardPresentationsToPresentedViewController] & 1) == 0)
  {
    v10 = 0;
LABEL_14:

    return v10 & 1;
  }

  v9 = [v6 px_canPresentViewControllerAnimated:a3];

  if (v9)
  {
LABEL_10:
    v11 = [a1 navigationController];
    v6 = v11;
    if (v11)
    {
      v12 = [v11 topViewController];
      v10 = [a1 px_isDescendantOfViewController:v12];
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
  v4 = [v27 view];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [(PXStatusBarHiddenViewController *)v3 view];
  [v5 addSubview:v4];

  v19 = MEMORY[0x1E696ACD8];
  v25 = [v4 topAnchor];
  v26 = [(PXStatusBarHiddenViewController *)v3 view];
  v24 = [v26 topAnchor];
  v23 = [v25 constraintEqualToAnchor:v24];
  v29[0] = v23;
  v21 = [v4 bottomAnchor];
  v22 = [(PXStatusBarHiddenViewController *)v3 view];
  v20 = [v22 bottomAnchor];
  v18 = [v21 constraintEqualToAnchor:v20];
  v29[1] = v18;
  v17 = [v4 leadingAnchor];
  v6 = [(PXStatusBarHiddenViewController *)v3 view];
  v7 = [v6 leadingAnchor];
  v8 = [v17 constraintEqualToAnchor:v7];
  v29[2] = v8;
  v9 = [v4 trailingAnchor];
  v10 = [(PXStatusBarHiddenViewController *)v3 view];
  v11 = [v10 trailingAnchor];
  v12 = [v9 constraintEqualToAnchor:v11];
  v29[3] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:4];
  [v19 activateConstraints:v13];

  [v27 didMoveToParentViewController:a1];
  v14 = [v27 contentScrollViewForEdge:1];
  v15 = [v27 contentScrollViewForEdge:4];

  [(PXStatusBarHiddenViewController *)v3 setContentScrollView:v14 forEdge:1];
  [(PXStatusBarHiddenViewController *)v3 setContentScrollView:v15 forEdge:4];

  return v3;
}

- (uint64_t)px_dismissViewControllerIfAllowedAnimated:()PhotosUICore forced:
{
  v7 = [a1 presentedViewController];
  if (!v7)
  {
    v12 = 0;
LABEL_12:
    [a1 dismissViewControllerAnimated:a3 completion:0];
    v13 = 1;
    goto LABEL_13;
  }

  v8 = v7;
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

    v12 = [v8 presentedViewController];

    v8 = v12;
  }

  while (((v12 != 0) & v9) != 0);
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

  return [a1 _isDelayingPresentation];
}

+ (id)px_windowContainingViewController:()PhotosUICore
{
  v3 = [a3 viewIfLoaded];
  v4 = [v3 window];

  if (!v4)
  {
    v5 = [MEMORY[0x1E69DC668] sharedApplication];
    v4 = [v5 px_firstKeyWindow];
  }

  return v4;
}

@end