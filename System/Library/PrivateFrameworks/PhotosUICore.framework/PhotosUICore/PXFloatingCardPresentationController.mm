@interface PXFloatingCardPresentationController
- (PXFloatingCardContainer)containerViewController;
- (PXFloatingCardPresentationController)initWithContainerViewController:(id)controller;
- (PXFloatingCardPresentationControllerDelegate)delegate;
- (PXFloatingCardViewController)cardViewController;
- (double)availableHeightForCardViewController:(id)controller;
- (void)_addChildViewController:(id)controller toParentViewController:(id)viewController;
- (void)_applyLayout;
- (void)_removeChildViewControllerFromParent:(id)parent;
- (void)cardViewController:(id)controller didUpdateHeight:(double)height;
- (void)cardViewController:(id)controller didUpdatePosition:(unint64_t)position;
- (void)dimAnimated:(BOOL)animated;
- (void)dismissAnimated:(BOOL)animated;
- (void)floatingCardViewControllerDismissTapped:(id)tapped;
- (void)gestureCoordinatorDidBeginInteraction:(id)interaction;
- (void)presentViewController:(id)controller animated:(BOOL)animated;
- (void)setLayout:(id)layout animated:(BOOL)animated;
@end

@implementation PXFloatingCardPresentationController

- (PXFloatingCardViewController)cardViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_cardViewController);

  return WeakRetained;
}

- (PXFloatingCardContainer)containerViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);

  return WeakRetained;
}

- (PXFloatingCardPresentationControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)floatingCardViewControllerDismissTapped:(id)tapped
{
  tappedCopy = tapped;
  delegate = [(PXFloatingCardPresentationController *)self delegate];
  [delegate presentationController:self dismissTappedForViewController:tappedCopy];
}

- (void)cardViewController:(id)controller didUpdatePosition:(unint64_t)position
{
  layout = [(PXFloatingCardPresentationController *)self layout];
  [layout didUpdateCardPosition:position];
}

- (void)cardViewController:(id)controller didUpdateHeight:(double)height
{
  layout = [(PXFloatingCardPresentationController *)self layout];
  [layout didUpdateCardHeight:height];
}

- (void)gestureCoordinatorDidBeginInteraction:(id)interaction
{
  containerViewController = [(PXFloatingCardPresentationController *)self containerViewController];
  view = [containerViewController view];
  window = [view window];
  [window endEditing:1];
}

- (double)availableHeightForCardViewController:(id)controller
{
  containerViewController = [(PXFloatingCardPresentationController *)self containerViewController];
  view = [containerViewController view];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];

  [safeAreaLayoutGuide layoutFrame];
  v7 = v6 + -30.0;

  return v7;
}

- (void)_removeChildViewControllerFromParent:(id)parent
{
  parentCopy = parent;
  [parentCopy willMoveToParentViewController:0];
  view = [parentCopy view];
  [view removeFromSuperview];

  [parentCopy removeFromParentViewController];
}

- (void)_addChildViewController:(id)controller toParentViewController:(id)viewController
{
  viewControllerCopy = viewController;
  controllerCopy = controller;
  [viewControllerCopy addChildViewController:controllerCopy];
  view = [viewControllerCopy view];
  view2 = [controllerCopy view];
  [view addSubview:view2];

  [controllerCopy didMoveToParentViewController:viewControllerCopy];
}

- (void)setLayout:(id)layout animated:(BOOL)animated
{
  animatedCopy = animated;
  layoutCopy = layout;
  if (self->_layout != layoutCopy)
  {
    objc_storeStrong(&self->_layout, layout);
    gestureCoordinator = [(PXFloatingCardPresentationController *)self gestureCoordinator];
    [gestureCoordinator setLayout:layoutCopy];

    if (animatedCopy)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __59__PXFloatingCardPresentationController_setLayout_animated___block_invoke;
      v9[3] = &unk_1E774C648;
      v9[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:0 delay:v9 options:0 animations:0.25 completion:0.0];
    }

    else
    {
      [(PXFloatingCardPresentationController *)self _applyLayout];
    }
  }
}

- (void)dimAnimated:(BOOL)animated
{
  animatedCopy = animated;
  cardViewController = [(PXFloatingCardPresentationController *)self cardViewController];
  v5 = cardViewController;
  if (cardViewController)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __52__PXFloatingCardPresentationController_dimAnimated___block_invoke;
    aBlock[3] = &unk_1E774C648;
    v12 = cardViewController;
    v6 = _Block_copy(aBlock);
    v7 = v6;
    if (animatedCopy)
    {
      v8 = MEMORY[0x1E69DD250];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __52__PXFloatingCardPresentationController_dimAnimated___block_invoke_2;
      v9[3] = &unk_1E774C250;
      v10 = v6;
      [v8 animateWithDuration:v9 animations:0.25];
    }

    else
    {
      v6[2](v6);
    }
  }
}

void __52__PXFloatingCardPresentationController_dimAnimated___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) contentView];
  [v1 setAlpha:0.699999988];
}

- (void)dismissAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if (![(PXFloatingCardPresentationController *)self isPresenting])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXFloatingCardPresentationController.m" lineNumber:86 description:@"Attempting to dismiss a floating card while one is not presented."];
  }

  [(PXFloatingCardPresentationController *)self setIsPresenting:0];
  cardViewController = [(PXFloatingCardPresentationController *)self cardViewController];

  if (cardViewController)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __56__PXFloatingCardPresentationController_dismissAnimated___block_invoke;
    aBlock[3] = &unk_1E774C648;
    aBlock[4] = self;
    v7 = _Block_copy(aBlock);
    v8 = v7;
    if (animatedCopy)
    {
      cardViewController2 = [(PXFloatingCardPresentationController *)self cardViewController];
      view = [cardViewController2 view];
      [view frame];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;

      v19 = MEMORY[0x1E69DD250];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __56__PXFloatingCardPresentationController_dismissAnimated___block_invoke_2;
      v23[3] = &unk_1E7747168;
      v23[4] = self;
      v23[5] = v12;
      *&v23[6] = v14 + -15.0;
      v23[7] = v16;
      v23[8] = v18;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __56__PXFloatingCardPresentationController_dismissAnimated___block_invoke_3;
      v21[3] = &unk_1E77464C0;
      v22 = v8;
      [v19 animateWithDuration:0 delay:v23 options:v21 animations:0.25 completion:0.0];
    }

    else
    {
      (*(v7 + 2))(v7);
    }
  }
}

uint64_t __56__PXFloatingCardPresentationController_dismissAnimated___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 cardViewController];
  [v2 _removeChildViewControllerFromParent:v3];

  [*(a1 + 32) setCardViewController:0];
  v4 = *(a1 + 32);

  return [v4 setGestureCoordinator:0];
}

void __56__PXFloatingCardPresentationController_dismissAnimated___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) cardViewController];
  v3 = [v2 view];
  [v3 setAlpha:0.0];

  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v9 = [*(a1 + 32) cardViewController];
  v8 = [v9 view];
  [v8 setFrame:{v4, v5, v6, v7}];
}

- (void)_applyLayout
{
  layout = [(PXFloatingCardPresentationController *)self layout];
  [layout width];
  v5 = v4;
  [layout initialHeight];
  v7 = v6;
  cardViewController = [(PXFloatingCardPresentationController *)self cardViewController];
  [cardViewController setSize:{v5, v7}];

  v9 = MEMORY[0x1E69DD250];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __52__PXFloatingCardPresentationController__applyLayout__block_invoke;
  v17 = &unk_1E774C620;
  selfCopy = self;
  v19 = layout;
  v10 = layout;
  [v9 performWithoutAnimation:&v14];
  v11 = [(PXFloatingCardPresentationController *)self cardViewController:v14];
  view = [v11 view];
  [view setAutoresizingMask:33];

  gestureCoordinator = [(PXFloatingCardPresentationController *)self gestureCoordinator];
  [gestureCoordinator layoutDidChange];
}

void __52__PXFloatingCardPresentationController__applyLayout__block_invoke(uint64_t a1)
{
  v8 = [*(a1 + 32) gestureCoordinator];
  [v8 centerPointForPosition:{objc_msgSend(*(a1 + 40), "initialPosition")}];
  v3 = v2;
  v5 = v4;
  v6 = [*(a1 + 32) cardViewController];
  v7 = [v6 view];
  [v7 setCenter:{v3, v5}];
}

- (void)presentViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  if ([(PXFloatingCardPresentationController *)self isPresenting])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXFloatingCardPresentationController.m" lineNumber:45 description:@"Attempting to present a floating card while one is already being presented."];
  }

  [(PXFloatingCardPresentationController *)self setIsPresenting:1];
  v8 = [[PXFloatingCardViewController alloc] initWithContentViewController:controllerCopy];
  [(PXFloatingCardViewController *)v8 setDelegate:self];
  [(PXFloatingCardPresentationController *)self setCardViewController:v8];
  if (animatedCopy)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = 1.0;
  }

  cardViewController = [(PXFloatingCardPresentationController *)self cardViewController];
  view = [cardViewController view];
  [view setAlpha:v9];

  containerViewController = [(PXFloatingCardPresentationController *)self containerViewController];
  [(PXFloatingCardPresentationController *)self _addChildViewController:v8 toParentViewController:containerViewController];

  view2 = [controllerCopy view];

  backgroundColor = [view2 backgroundColor];
  cardViewController2 = [(PXFloatingCardPresentationController *)self cardViewController];
  grabberFooterView = [cardViewController2 grabberFooterView];
  [grabberFooterView setBackgroundColor:backgroundColor];

  v17 = [PXFloatingCardGestureCoordinator alloc];
  cardViewController3 = [(PXFloatingCardPresentationController *)self cardViewController];
  layout = [(PXFloatingCardPresentationController *)self layout];
  v20 = [(PXFloatingCardGestureCoordinator *)v17 initWithCardViewController:cardViewController3 layout:layout];
  [(PXFloatingCardPresentationController *)self setGestureCoordinator:v20];

  gestureCoordinator = [(PXFloatingCardPresentationController *)self gestureCoordinator];
  [gestureCoordinator setDelegate:self];

  [(PXFloatingCardPresentationController *)self _applyLayout];
  if (animatedCopy)
  {
    cardViewController4 = [(PXFloatingCardPresentationController *)self cardViewController];
    view3 = [cardViewController4 view];
    [view3 frame];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;

    v40.origin.x = v25;
    v40.origin.y = v27;
    v40.size.width = v29;
    v40.size.height = v31;
    v41 = CGRectOffset(v40, 0.0, -15.0);
    x = v41.origin.x;
    y = v41.origin.y;
    width = v41.size.width;
    height = v41.size.height;
    cardViewController5 = [(PXFloatingCardPresentationController *)self cardViewController];
    view4 = [cardViewController5 view];
    [view4 setFrame:{x, y, width, height}];

    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __71__PXFloatingCardPresentationController_presentViewController_animated___block_invoke;
    v39[3] = &unk_1E7747168;
    v39[4] = self;
    *&v39[5] = v25;
    *&v39[6] = v27;
    *&v39[7] = v29;
    *&v39[8] = v31;
    [MEMORY[0x1E69DD250] animateWithDuration:0 delay:v39 options:0 animations:0.25 completion:0.0];
  }
}

void __71__PXFloatingCardPresentationController_presentViewController_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cardViewController];
  v3 = [v2 view];
  [v3 setAlpha:1.0];

  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v9 = [*(a1 + 32) cardViewController];
  v8 = [v9 view];
  [v8 setFrame:{v4, v5, v6, v7}];
}

- (PXFloatingCardPresentationController)initWithContainerViewController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = PXFloatingCardPresentationController;
  v5 = [(PXFloatingCardPresentationController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_containerViewController, controllerCopy);
  }

  return v6;
}

@end