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
  if (![self isViewLoaded])
  {
    return INFINITY;
  }

  view = [self view];
  [view bounds];
  v4 = v3;

  return v4;
}

- (double)px_safeAreaInsets
{
  viewIfLoaded = [self viewIfLoaded];
  [viewIfLoaded px_safeAreaInsets];
  v3 = v2;

  return v3;
}

- (double)px_layoutMargins
{
  viewIfLoaded = [self viewIfLoaded];
  [viewIfLoaded px_layoutMargins];
  v3 = v2;

  return v3;
}

- (double)px_windowReferenceSize
{
  viewIfLoaded = [self viewIfLoaded];
  [viewIfLoaded px_windowReferenceSize];
  v3 = v2;

  return v3;
}

- (id)px_screen
{
  viewIfLoaded = [self viewIfLoaded];
  px_screen = [viewIfLoaded px_screen];

  if (px_screen)
  {
    px_mainScreen = px_screen;
  }

  else
  {
    px_mainScreen = [MEMORY[0x1E69DCEB0] px_mainScreen];
  }

  v4 = px_mainScreen;

  return v4;
}

- (uint64_t)px_containsViewControllerModalInPresentation
{
  if ([self isModalInPresentation])
  {
    return 1;
  }

  px_childViewControllersForModalInPresentation = [self px_childViewControllersForModalInPresentation];
  v4 = PXExists(px_childViewControllersForModalInPresentation, &__block_literal_global_13054);

  return v4;
}

- (void)px_containedViewControllerModalStateChanged
{
  parentViewController = [self parentViewController];
  v3 = parentViewController;
  if (parentViewController)
  {
    presentingViewController = parentViewController;
  }

  else
  {
    presentingViewController = [self presentingViewController];
  }

  v5 = presentingViewController;

  [v5 px_containedViewControllerModalStateChanged];
}

- (uint64_t)px_setModalInPresentation:()PhotosUIFoundation
{
  result = [self isModalInPresentation];
  if (result != a3)
  {
    [self setModalInPresentation:a3];

    return [self px_containedViewControllerModalStateChanged];
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
  [self px_enumerateDescendantViewControllersWithOptions:0 usingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)px_enumerateDescendantViewControllersWithOptions:()PhotosUIFoundation usingBlock:
{
  v6 = a4;
  v7 = [MEMORY[0x1E695DF70] arrayWithObject:self];
  childViewControllers = [self childViewControllers];
  [v7 addObjectsFromArray:childViewControllers];

  presentedViewController = [self presentedViewController];
  v10 = presentedViewController;
  if (presentedViewController)
  {
    presentingViewController = [presentedViewController presentingViewController];
    v12 = presentingViewController;
    if (presentingViewController == self)
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
  v15[4] = self;
  v16 = v6;
  v17 = a3;
  v14 = v6;
  [v7 enumerateObjectsWithOptions:a3 usingBlock:v15];
}

- (void)px_presentOverTopmostPresentedViewController:()PhotosUIFoundation animated:completion:
{
  v8 = a5;
  v13 = a3;
  px_topmostPresentedViewController = [self px_topmostPresentedViewController];
  v10 = px_topmostPresentedViewController;
  if (px_topmostPresentedViewController)
  {
    selfCopy = px_topmostPresentedViewController;
  }

  else
  {
    selfCopy = self;
  }

  v12 = selfCopy;

  [v12 presentViewController:v13 animated:a4 completion:v8];
}

- (id)px_topmostPresentedViewController
{
  presentedViewController = [self presentedViewController];
  v1PresentedViewController = [presentedViewController presentedViewController];

  if (v1PresentedViewController)
  {
    do
    {
      v1PresentedViewController2 = [presentedViewController presentedViewController];

      v3PresentedViewController = [v1PresentedViewController2 presentedViewController];

      presentedViewController = v1PresentedViewController2;
    }

    while (v3PresentedViewController);
  }

  else
  {
    v1PresentedViewController2 = presentedViewController;
  }

  return v1PresentedViewController2;
}

- (void)px_addOrReplaceChildViewController:()PhotosUIFoundation activateConstraints:
{
  v32[4] = *MEMORY[0x1E69E9840];
  v7 = a3;
  childViewControllers = [self childViewControllers];
  v9 = [childViewControllers count];

  if (v9 >= 2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIViewController+PhotosUIFoundation.m" lineNumber:44 description:@"Only 0 or 1 child view controller is expected."];
  }

  childViewControllers2 = [self childViewControllers];
  firstObject = [childViewControllers2 firstObject];

  if (firstObject)
  {
    [firstObject willMoveToParentViewController:0];
    view = [firstObject view];
    [view removeFromSuperview];

    [firstObject removeFromParentViewController];
  }

  [self addChildViewController:v7];
  view2 = [self view];
  view3 = [v7 view];
  [view3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [view2 addSubview:view3];
  if (a4)
  {
    v26 = MEMORY[0x1E696ACD8];
    topAnchor = [view3 topAnchor];
    topAnchor2 = [view2 topAnchor];
    v29 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v32[0] = v29;
    bottomAnchor = [view3 bottomAnchor];
    bottomAnchor2 = [view2 bottomAnchor];
    v25 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v32[1] = v25;
    leadingAnchor = [view3 leadingAnchor];
    leadingAnchor2 = [view2 leadingAnchor];
    v15 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v32[2] = v15;
    trailingAnchor = [view3 trailingAnchor];
    trailingAnchor2 = [view2 trailingAnchor];
    v18 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v32[3] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:4];
    [v26 activateConstraints:v19];
  }

  else
  {
    [view2 bounds];
    [view3 setFrame:?];
  }

  [v7 didMoveToParentViewController:self];
  v20 = [v7 contentScrollViewForEdge:1];
  v21 = [v7 contentScrollViewForEdge:4];
  [self setContentScrollView:v20 forEdge:1];
  [self setContentScrollView:v21 forEdge:4];
}

- (BOOL)px_isVisible
{
  if (![self isViewLoaded])
  {
    return 0;
  }

  view = [self view];
  window = [view window];
  v4 = window != 0;

  return v4;
}

@end