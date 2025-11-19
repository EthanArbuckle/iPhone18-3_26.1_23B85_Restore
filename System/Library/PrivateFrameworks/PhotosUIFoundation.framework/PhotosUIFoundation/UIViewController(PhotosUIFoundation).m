@interface UIViewController(PhotosUIFoundation)
- (BOOL)px_isVisible;
- (double)px_layoutMargins;
- (double)px_referenceSize;
- (double)px_safeAreaInsets;
- (double)px_windowReferenceSize;
- (id)px_descendantViewControllerWithClass:()PhotosUIFoundation;
- (id)px_screen;
- (id)px_topmostPresentedViewController;
- (uint64_t)px_containsViewControllerModalInPresentation;
- (uint64_t)px_setModalInPresentation:()PhotosUIFoundation;
- (void)px_addOrReplaceChildViewController:()PhotosUIFoundation activateConstraints:;
- (void)px_containedViewControllerModalStateChanged;
- (void)px_enumerateDescendantViewControllersWithOptions:()PhotosUIFoundation usingBlock:;
- (void)px_presentOverTopmostPresentedViewController:()PhotosUIFoundation animated:completion:;
@end

@implementation UIViewController(PhotosUIFoundation)

- (double)px_referenceSize
{
  if (![a1 isViewLoaded])
  {
    return INFINITY;
  }

  v2 = [a1 view];
  [v2 bounds];
  v4 = v3;

  return v4;
}

- (double)px_safeAreaInsets
{
  v1 = [a1 viewIfLoaded];
  [v1 px_safeAreaInsets];
  v3 = v2;

  return v3;
}

- (double)px_layoutMargins
{
  v1 = [a1 viewIfLoaded];
  [v1 px_layoutMargins];
  v3 = v2;

  return v3;
}

- (double)px_windowReferenceSize
{
  v1 = [a1 viewIfLoaded];
  [v1 px_windowReferenceSize];
  v3 = v2;

  return v3;
}

- (id)px_screen
{
  v1 = [a1 viewIfLoaded];
  v2 = [v1 px_screen];

  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = [MEMORY[0x1E69DCEB0] px_mainScreen];
  }

  v4 = v3;

  return v4;
}

- (uint64_t)px_containsViewControllerModalInPresentation
{
  if ([a1 isModalInPresentation])
  {
    return 1;
  }

  v3 = [a1 px_childViewControllersForModalInPresentation];
  v4 = PXExists(v3, &__block_literal_global_13054);

  return v4;
}

- (void)px_containedViewControllerModalStateChanged
{
  v2 = [a1 parentViewController];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [a1 presentingViewController];
  }

  v5 = v4;

  [v5 px_containedViewControllerModalStateChanged];
}

- (uint64_t)px_setModalInPresentation:()PhotosUIFoundation
{
  result = [a1 isModalInPresentation];
  if (result != a3)
  {
    [a1 setModalInPresentation:a3];

    return [a1 px_containedViewControllerModalStateChanged];
  }

  return result;
}

- (id)px_descendantViewControllerWithClass:()PhotosUIFoundation
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__13057;
  v10 = __Block_byref_object_dispose__13058;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __77__UIViewController_PhotosUIFoundation__px_descendantViewControllerWithClass___block_invoke;
  v5[3] = &unk_1E7BB76E0;
  v5[4] = &v6;
  v5[5] = a3;
  [a1 px_enumerateDescendantViewControllersWithOptions:0 usingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)px_enumerateDescendantViewControllersWithOptions:()PhotosUIFoundation usingBlock:
{
  v6 = a4;
  v7 = [MEMORY[0x1E695DF70] arrayWithObject:a1];
  v8 = [a1 childViewControllers];
  [v7 addObjectsFromArray:v8];

  v9 = [a1 presentedViewController];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 presentingViewController];
    v12 = v11;
    if (v11 == a1)
    {
      v13 = [v7 containsObject:v10];

      if ((v13 & 1) == 0)
      {
        [v7 addObject:v10];
      }
    }

    else
    {
    }
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __100__UIViewController_PhotosUIFoundation__px_enumerateDescendantViewControllersWithOptions_usingBlock___block_invoke;
  v15[3] = &unk_1E7BB76B8;
  v15[4] = a1;
  v16 = v6;
  v17 = a3;
  v14 = v6;
  [v7 enumerateObjectsWithOptions:a3 usingBlock:v15];
}

- (void)px_presentOverTopmostPresentedViewController:()PhotosUIFoundation animated:completion:
{
  v8 = a5;
  v13 = a3;
  v9 = [a1 px_topmostPresentedViewController];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = a1;
  }

  v12 = v11;

  [v12 presentViewController:v13 animated:a4 completion:v8];
}

- (id)px_topmostPresentedViewController
{
  v1 = [a1 presentedViewController];
  v2 = [v1 presentedViewController];

  if (v2)
  {
    do
    {
      v3 = [v1 presentedViewController];

      v4 = [v3 presentedViewController];

      v1 = v3;
    }

    while (v4);
  }

  else
  {
    v3 = v1;
  }

  return v3;
}

- (void)px_addOrReplaceChildViewController:()PhotosUIFoundation activateConstraints:
{
  v32[4] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [a1 childViewControllers];
  v9 = [v8 count];

  if (v9 >= 2)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:a1 file:@"UIViewController+PhotosUIFoundation.m" lineNumber:44 description:@"Only 0 or 1 child view controller is expected."];
  }

  v10 = [a1 childViewControllers];
  v11 = [v10 firstObject];

  if (v11)
  {
    [v11 willMoveToParentViewController:0];
    v12 = [v11 view];
    [v12 removeFromSuperview];

    [v11 removeFromParentViewController];
  }

  [a1 addChildViewController:v7];
  v13 = [a1 view];
  v14 = [v7 view];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v13 addSubview:v14];
  if (a4)
  {
    v26 = MEMORY[0x1E696ACD8];
    v31 = [v14 topAnchor];
    v30 = [v13 topAnchor];
    v29 = [v31 constraintEqualToAnchor:v30];
    v32[0] = v29;
    v28 = [v14 bottomAnchor];
    v27 = [v13 bottomAnchor];
    v25 = [v28 constraintEqualToAnchor:v27];
    v32[1] = v25;
    v24 = [v14 leadingAnchor];
    v23 = [v13 leadingAnchor];
    v15 = [v24 constraintEqualToAnchor:v23];
    v32[2] = v15;
    v16 = [v14 trailingAnchor];
    v17 = [v13 trailingAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
    v32[3] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:4];
    [v26 activateConstraints:v19];
  }

  else
  {
    [v13 bounds];
    [v14 setFrame:?];
  }

  [v7 didMoveToParentViewController:a1];
  v20 = [v7 contentScrollViewForEdge:1];
  v21 = [v7 contentScrollViewForEdge:4];
  [a1 setContentScrollView:v20 forEdge:1];
  [a1 setContentScrollView:v21 forEdge:4];
}

- (BOOL)px_isVisible
{
  if (![a1 isViewLoaded])
  {
    return 0;
  }

  v2 = [a1 view];
  v3 = [v2 window];
  v4 = v3 != 0;

  return v4;
}

@end