@interface PUInteractiveSwipeDismissalController
- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (PUInteractiveSwipeDismissalController)init;
- (void)_handlePanGestureRecognizer:(id)recognizer;
- (void)dealloc;
- (void)updateGestureRecognizersWithHostingView:(id)view;
@end

@implementation PUInteractiveSwipeDismissalController

- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  _panGestureRecognizer = [(PUInteractiveSwipeDismissalController *)self _panGestureRecognizer];

  if (_panGestureRecognizer == recognizerCopy)
  {
    verticalSwipeGestureRecognizerHelper = [(PUInteractiveSwipeDismissalController *)self verticalSwipeGestureRecognizerHelper];
    v9 = [verticalSwipeGestureRecognizerHelper verticalSwipeGestureRecognizer:recognizerCopy shouldBeRequiredToFailByGestureRecognizer:gestureRecognizerCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  _panGestureRecognizer = [(PUInteractiveSwipeDismissalController *)self _panGestureRecognizer];

  if (_panGestureRecognizer == beginCopy)
  {
    verticalSwipeGestureRecognizerHelper = [(PUInteractiveSwipeDismissalController *)self verticalSwipeGestureRecognizerHelper];
    v6 = [verticalSwipeGestureRecognizerHelper verticalSwipeGestureRecognizerShouldBegin:beginCopy];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)_handlePanGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  state = [recognizerCopy state];
  _swipedDownTileTracker = [(PUInteractiveSwipeDismissalController *)self _swipedDownTileTracker];
  _dismissGestureDirectionValueFilter = [(PUInteractiveSwipeDismissalController *)self _dismissGestureDirectionValueFilter];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__PUInteractiveSwipeDismissalController__handlePanGestureRecognizer___block_invoke;
  aBlock[3] = &unk_1E7B78178;
  v8 = _swipedDownTileTracker;
  v41 = v8;
  v9 = _dismissGestureDirectionValueFilter;
  v42 = v9;
  v10 = _Block_copy(aBlock);
  if ((state - 3) >= 3)
  {
    if (state == 2)
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
          view = [recognizerCopy view];
          [recognizerCopy translationInView:view];
          v31 = v30;

          [(PUValueFilter *)v9 setInputValue:v31];
          v27 = v31 / 200.0;
        }

        [(PUInteractiveDismissalController *)self updateDismissalWithInteractionProgress:v10[2](v10) interactionWillFinish:v27];
      }
    }

    else if (state == 1 && ![(PUInteractiveSwipeDismissalController *)self _isHandlingPanGestureRecognizer])
    {
      [(PUInteractiveSwipeDismissalController *)self _setHandlingPanGestureRecognizer:1];
      v11 = +[PUWorkaroundSettings sharedInstance];
      shouldWorkAround54502886 = [v11 shouldWorkAround54502886];

      if (shouldWorkAround54502886)
      {
        delegate = [(PUInteractiveDismissalController *)self delegate];
        v14 = [delegate interactiveDismissalControllerViewController:self];

        viewIfLoaded = [v14 viewIfLoaded];
        [viewIfLoaded safeAreaInsets];
        v17 = v16;
        v19 = v18;

        presentingViewController = [v14 presentingViewController];
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        v23 = [v22 hasPrefix:@"CAM"];

        traitCollection = [v14 traitCollection];
        if ([traitCollection userInterfaceIdiom])
        {
          v25 = 0;
        }

        else
        {
          viewIfLoaded2 = [v14 viewIfLoaded];
          [viewIfLoaded2 window];
          v32 = v39 = v23;
          windowScene = [v32 windowScene];
          v25 = ([windowScene interfaceOrientation] - 3) < 2;

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

      tilingView = [(PUInteractiveDismissalController *)self tilingView];
      if (tilingView)
      {
        v35 = [[PUSwipedDownTileTracker alloc] initWithPanGestureRecognizer:recognizerCopy tilingView:tilingView];

        [(PUInteractiveSwipeDismissalController *)self _setSwipedDownTileTracker:v35];
        designatedTileController = [(PUInteractiveDismissalController *)self designatedTileController];
        [(PUSwipedDownTileTracker *)v35 setDesignatedTileController:designatedTileController];
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
        [recognizerCopy px_cancel];
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

- (void)updateGestureRecognizersWithHostingView:(id)view
{
  viewCopy = view;
  v10.receiver = self;
  v10.super_class = PUInteractiveSwipeDismissalController;
  [(PUInteractiveDismissalController *)&v10 updateGestureRecognizersWithHostingView:viewCopy];
  if (![(PUInteractiveSwipeDismissalController *)self _isHandlingPanGestureRecognizer])
  {
    _panGestureRecognizer = [(PUInteractiveSwipeDismissalController *)self _panGestureRecognizer];
    v6 = _panGestureRecognizer;
    if (viewCopy)
    {
      if (!_panGestureRecognizer)
      {
        v6 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:self action:sel__handlePanGestureRecognizer_];
        [v6 setDelegate:self];
        [v6 setAllowedScrollTypesMask:3];
        [(PUInteractiveSwipeDismissalController *)self _setPanGestureRecognizer:v6];
      }

      view = [v6 view];

      if (view != viewCopy)
      {
        view2 = [v6 view];
        [view2 removeGestureRecognizer:v6];

        [viewCopy addGestureRecognizer:v6];
      }
    }

    else if (_panGestureRecognizer)
    {
      view3 = [_panGestureRecognizer view];
      [view3 removeGestureRecognizer:v6];

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