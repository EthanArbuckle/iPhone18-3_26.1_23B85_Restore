@interface PUInteractiveSwipeDismissalController
- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (PUInteractiveSwipeDismissalController)init;
- (void)_handlePanGestureRecognizer:(id)a3;
- (void)dealloc;
- (void)updateGestureRecognizersWithHostingView:(id)a3;
@end

@implementation PUInteractiveSwipeDismissalController

- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PUInteractiveSwipeDismissalController *)self _panGestureRecognizer];

  if (v8 == v6)
  {
    v10 = [(PUInteractiveSwipeDismissalController *)self verticalSwipeGestureRecognizerHelper];
    v9 = [v10 verticalSwipeGestureRecognizer:v6 shouldBeRequiredToFailByGestureRecognizer:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(PUInteractiveSwipeDismissalController *)self _panGestureRecognizer];

  if (v5 == v4)
  {
    v7 = [(PUInteractiveSwipeDismissalController *)self verticalSwipeGestureRecognizerHelper];
    v6 = [v7 verticalSwipeGestureRecognizerShouldBegin:v4];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)_handlePanGestureRecognizer:(id)a3
{
  v4 = a3;
  v5 = [v4 state];
  v6 = [(PUInteractiveSwipeDismissalController *)self _swipedDownTileTracker];
  v7 = [(PUInteractiveSwipeDismissalController *)self _dismissGestureDirectionValueFilter];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__PUInteractiveSwipeDismissalController__handlePanGestureRecognizer___block_invoke;
  aBlock[3] = &unk_1E7B78178;
  v8 = v6;
  v41 = v8;
  v9 = v7;
  v42 = v9;
  v10 = _Block_copy(aBlock);
  if ((v5 - 3) >= 3)
  {
    if (v5 == 2)
    {
      if ([(PUInteractiveSwipeDismissalController *)self _isHandlingPanGestureRecognizer])
      {
        if (v8)
        {
          [(PUInteractiveTileTracker *)v8 update];
          [(PUInteractiveTileTracker *)v8 progress];
          v27 = v26;
        }

        else
        {
          v29 = [v4 view];
          [v4 translationInView:v29];
          v31 = v30;

          [(PUValueFilter *)v9 setInputValue:v31];
          v27 = v31 / 200.0;
        }

        [(PUInteractiveDismissalController *)self updateDismissalWithInteractionProgress:v10[2](v10) interactionWillFinish:v27];
      }
    }

    else if (v5 == 1 && ![(PUInteractiveSwipeDismissalController *)self _isHandlingPanGestureRecognizer])
    {
      [(PUInteractiveSwipeDismissalController *)self _setHandlingPanGestureRecognizer:1];
      v11 = +[PUWorkaroundSettings sharedInstance];
      v12 = [v11 shouldWorkAround54502886];

      if (v12)
      {
        v13 = [(PUInteractiveDismissalController *)self delegate];
        v14 = [v13 interactiveDismissalControllerViewController:self];

        v15 = [v14 viewIfLoaded];
        [v15 safeAreaInsets];
        v17 = v16;
        v19 = v18;

        v20 = [v14 presentingViewController];
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        v23 = [v22 hasPrefix:@"CAM"];

        v24 = [v14 traitCollection];
        if ([v24 userInterfaceIdiom])
        {
          v25 = 0;
        }

        else
        {
          v38 = [v14 viewIfLoaded];
          [v38 window];
          v32 = v39 = v23;
          v33 = [v32 windowScene];
          v25 = ([v33 interfaceOrientation] - 3) < 2;

          v23 = v39;
        }

        if (fmax(v17, v19) > 0.0)
        {
          v28 = v23 & v25;
        }

        else
        {
          v28 = 0;
        }
      }

      else
      {
        v28 = 0;
      }

      v34 = [(PUInteractiveDismissalController *)self tilingView];
      if (v34)
      {
        v35 = [[PUSwipedDownTileTracker alloc] initWithPanGestureRecognizer:v4 tilingView:v34];

        [(PUInteractiveSwipeDismissalController *)self _setSwipedDownTileTracker:v35];
        v36 = [(PUInteractiveDismissalController *)self designatedTileController];
        [(PUSwipedDownTileTracker *)v35 setDesignatedTileController:v36];
        [(PUInteractiveTileTracker *)v35 update];

        v8 = v35;
      }

      else
      {
        v37 = objc_alloc_init(PUChangeDirectionValueFilter);

        [(PUChangeDirectionValueFilter *)v37 setMinimumChangeValue:5.0];
        [(PUInteractiveSwipeDismissalController *)self _setDismissGestureDirectionValueFilter:v37];
        v9 = v37;
      }

      [(PUInteractiveDismissalController *)self beginDismissal];
      if (v28)
      {
        [v4 px_cancel];
      }
    }
  }

  else if ([(PUInteractiveSwipeDismissalController *)self _isHandlingPanGestureRecognizer])
  {
    [(PUInteractiveSwipeDismissalController *)self _setHandlingPanGestureRecognizer:0];
    if (v8)
    {
      [(PUInteractiveTileTracker *)v8 update];
      [(PUInteractiveSwipeDismissalController *)self _setSwipedDownTileTracker:0];
    }

    else
    {
      [(PUInteractiveSwipeDismissalController *)self _setDismissGestureDirectionValueFilter:0];
    }

    [(PUInteractiveDismissalController *)self endDismissal:v10[2](v10)];
  }
}

uint64_t __69__PUInteractiveSwipeDismissalController__handlePanGestureRecognizer___block_invoke(uint64_t a1)
{
  v4 = *(a1 + 32);
  if (v4)
  {

    return [v4 shouldFinish];
  }

  else
  {
    [*(a1 + 40) outputValue];
    return v6 >= 0.0;
  }
}

- (void)updateGestureRecognizersWithHostingView:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PUInteractiveSwipeDismissalController;
  [(PUInteractiveDismissalController *)&v10 updateGestureRecognizersWithHostingView:v4];
  if (![(PUInteractiveSwipeDismissalController *)self _isHandlingPanGestureRecognizer])
  {
    v5 = [(PUInteractiveSwipeDismissalController *)self _panGestureRecognizer];
    v6 = v5;
    if (v4)
    {
      if (!v5)
      {
        v6 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:self action:sel__handlePanGestureRecognizer_];
        [v6 setDelegate:self];
        [v6 setAllowedScrollTypesMask:3];
        [(PUInteractiveSwipeDismissalController *)self _setPanGestureRecognizer:v6];
      }

      v7 = [v6 view];

      if (v7 != v4)
      {
        v8 = [v6 view];
        [v8 removeGestureRecognizer:v6];

        [v4 addGestureRecognizer:v6];
      }
    }

    else if (v5)
    {
      v9 = [v5 view];
      [v9 removeGestureRecognizer:v6];

      [(PUInteractiveSwipeDismissalController *)self _setPanGestureRecognizer:0];
    }
  }
}

- (void)dealloc
{
  [(UIPanGestureRecognizer *)self->__panGestureRecognizer setDelegate:0];
  v3.receiver = self;
  v3.super_class = PUInteractiveSwipeDismissalController;
  [(PUInteractiveSwipeDismissalController *)&v3 dealloc];
}

- (PUInteractiveSwipeDismissalController)init
{
  v6.receiver = self;
  v6.super_class = PUInteractiveSwipeDismissalController;
  v2 = [(PUInteractiveSwipeDismissalController *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69C3C40]);
    verticalSwipeGestureRecognizerHelper = v2->_verticalSwipeGestureRecognizerHelper;
    v2->_verticalSwipeGestureRecognizerHelper = v3;

    [(PXVerticalSwipeGestureRecognizerHelper *)v2->_verticalSwipeGestureRecognizerHelper setDelegate:v2];
  }

  return v2;
}

@end