@interface PXFloatingCardPresentationController
- (PXFloatingCardContainer)containerViewController;
- (PXFloatingCardPresentationController)initWithContainerViewController:(id)a3;
- (PXFloatingCardPresentationControllerDelegate)delegate;
- (PXFloatingCardViewController)cardViewController;
- (double)availableHeightForCardViewController:(id)a3;
- (void)_addChildViewController:(id)a3 toParentViewController:(id)a4;
- (void)_applyLayout;
- (void)_removeChildViewControllerFromParent:(id)a3;
- (void)cardViewController:(id)a3 didUpdateHeight:(double)a4;
- (void)cardViewController:(id)a3 didUpdatePosition:(unint64_t)a4;
- (void)dimAnimated:(BOOL)a3;
- (void)dismissAnimated:(BOOL)a3;
- (void)floatingCardViewControllerDismissTapped:(id)a3;
- (void)gestureCoordinatorDidBeginInteraction:(id)a3;
- (void)presentViewController:(id)a3 animated:(BOOL)a4;
- (void)setLayout:(id)a3 animated:(BOOL)a4;
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

- (void)floatingCardViewControllerDismissTapped:(id)a3
{
  v4 = a3;
  v5 = [(PXFloatingCardPresentationController *)self delegate];
  [v5 presentationController:self dismissTappedForViewController:v4];
}

- (void)cardViewController:(id)a3 didUpdatePosition:(unint64_t)a4
{
  v5 = [(PXFloatingCardPresentationController *)self layout];
  [v5 didUpdateCardPosition:a4];
}

- (void)cardViewController:(id)a3 didUpdateHeight:(double)a4
{
  v5 = [(PXFloatingCardPresentationController *)self layout];
  [v5 didUpdateCardHeight:a4];
}

- (void)gestureCoordinatorDidBeginInteraction:(id)a3
{
  v5 = [(PXFloatingCardPresentationController *)self containerViewController];
  v3 = [v5 view];
  v4 = [v3 window];
  [v4 endEditing:1];
}

- (double)availableHeightForCardViewController:(id)a3
{
  v3 = [(PXFloatingCardPresentationController *)self containerViewController];
  v4 = [v3 view];
  v5 = [v4 safeAreaLayoutGuide];

  [v5 layoutFrame];
  v7 = v6 + -30.0;

  return v7;
}

- (void)_removeChildViewControllerFromParent:(id)a3
{
  v4 = a3;
  [v4 willMoveToParentViewController:0];
  v3 = [v4 view];
  [v3 removeFromSuperview];

  [v4 removeFromParentViewController];
}

- (void)_addChildViewController:(id)a3 toParentViewController:(id)a4
{
  v5 = a4;
  v8 = a3;
  [v5 addChildViewController:v8];
  v6 = [v5 view];
  v7 = [v8 view];
  [v6 addSubview:v7];

  [v8 didMoveToParentViewController:v5];
}

- (void)setLayout:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if (self->_layout != v7)
  {
    objc_storeStrong(&self->_layout, a3);
    v8 = [(PXFloatingCardPresentationController *)self gestureCoordinator];
    [v8 setLayout:v7];

    if (v4)
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

- (void)dimAnimated:(BOOL)a3
{
  v3 = a3;
  v4 = [(PXFloatingCardPresentationController *)self cardViewController];
  v5 = v4;
  if (v4)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __52__PXFloatingCardPresentationController_dimAnimated___block_invoke;
    aBlock[3] = &unk_1E774C648;
    v12 = v4;
    v6 = _Block_copy(aBlock);
    v7 = v6;
    if (v3)
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

- (void)dismissAnimated:(BOOL)a3
{
  v3 = a3;
  if (![(PXFloatingCardPresentationController *)self isPresenting])
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"PXFloatingCardPresentationController.m" lineNumber:86 description:@"Attempting to dismiss a floating card while one is not presented."];
  }

  [(PXFloatingCardPresentationController *)self setIsPresenting:0];
  v6 = [(PXFloatingCardPresentationController *)self cardViewController];

  if (v6)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __56__PXFloatingCardPresentationController_dismissAnimated___block_invoke;
    aBlock[3] = &unk_1E774C648;
    aBlock[4] = self;
    v7 = _Block_copy(aBlock);
    v8 = v7;
    if (v3)
    {
      v9 = [(PXFloatingCardPresentationController *)self cardViewController];
      v10 = [v9 view];
      [v10 frame];
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
  v3 = [(PXFloatingCardPresentationController *)self layout];
  [v3 width];
  v5 = v4;
  [v3 initialHeight];
  v7 = v6;
  v8 = [(PXFloatingCardPresentationController *)self cardViewController];
  [v8 setSize:{v5, v7}];

  v9 = MEMORY[0x1E69DD250];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __52__PXFloatingCardPresentationController__applyLayout__block_invoke;
  v17 = &unk_1E774C620;
  v18 = self;
  v19 = v3;
  v10 = v3;
  [v9 performWithoutAnimation:&v14];
  v11 = [(PXFloatingCardPresentationController *)self cardViewController:v14];
  v12 = [v11 view];
  [v12 setAutoresizingMask:33];

  v13 = [(PXFloatingCardPresentationController *)self gestureCoordinator];
  [v13 layoutDidChange];
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

- (void)presentViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if ([(PXFloatingCardPresentationController *)self isPresenting])
  {
    v38 = [MEMORY[0x1E696AAA8] currentHandler];
    [v38 handleFailureInMethod:a2 object:self file:@"PXFloatingCardPresentationController.m" lineNumber:45 description:@"Attempting to present a floating card while one is already being presented."];
  }

  [(PXFloatingCardPresentationController *)self setIsPresenting:1];
  v8 = [[PXFloatingCardViewController alloc] initWithContentViewController:v7];
  [(PXFloatingCardViewController *)v8 setDelegate:self];
  [(PXFloatingCardPresentationController *)self setCardViewController:v8];
  if (v4)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = 1.0;
  }

  v10 = [(PXFloatingCardPresentationController *)self cardViewController];
  v11 = [v10 view];
  [v11 setAlpha:v9];

  v12 = [(PXFloatingCardPresentationController *)self containerViewController];
  [(PXFloatingCardPresentationController *)self _addChildViewController:v8 toParentViewController:v12];

  v13 = [v7 view];

  v14 = [v13 backgroundColor];
  v15 = [(PXFloatingCardPresentationController *)self cardViewController];
  v16 = [v15 grabberFooterView];
  [v16 setBackgroundColor:v14];

  v17 = [PXFloatingCardGestureCoordinator alloc];
  v18 = [(PXFloatingCardPresentationController *)self cardViewController];
  v19 = [(PXFloatingCardPresentationController *)self layout];
  v20 = [(PXFloatingCardGestureCoordinator *)v17 initWithCardViewController:v18 layout:v19];
  [(PXFloatingCardPresentationController *)self setGestureCoordinator:v20];

  v21 = [(PXFloatingCardPresentationController *)self gestureCoordinator];
  [v21 setDelegate:self];

  [(PXFloatingCardPresentationController *)self _applyLayout];
  if (v4)
  {
    v22 = [(PXFloatingCardPresentationController *)self cardViewController];
    v23 = [v22 view];
    [v23 frame];
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
    v36 = [(PXFloatingCardPresentationController *)self cardViewController];
    v37 = [v36 view];
    [v37 setFrame:{x, y, width, height}];

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

- (PXFloatingCardPresentationController)initWithContainerViewController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PXFloatingCardPresentationController;
  v5 = [(PXFloatingCardPresentationController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_containerViewController, v4);
  }

  return v6;
}

@end