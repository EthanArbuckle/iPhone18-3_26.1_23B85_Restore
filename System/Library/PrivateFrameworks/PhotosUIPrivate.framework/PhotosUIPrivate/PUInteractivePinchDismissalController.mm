@interface PUInteractivePinchDismissalController
- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (id)pinchedTiledTracker:(id)tracker finalLayoutInfoForInitialLayoutInfo:(id)info;
- (void)_handlePinchGestureRecognizer:(id)recognizer;
- (void)dealloc;
- (void)updateGestureRecognizersWithHostingView:(id)view;
@end

@implementation PUInteractivePinchDismissalController

- (id)pinchedTiledTracker:(id)tracker finalLayoutInfoForInitialLayoutInfo:(id)info
{
  infoCopy = info;
  tilingViewControllerTransition = [(PUInteractiveDismissalController *)self tilingViewControllerTransition];
  if ([tilingViewControllerTransition hasStarted])
  {
    tilingView = [(PUInteractiveDismissalController *)self tilingView];
    layout = [tilingView layout];
    indexPath = [infoCopy indexPath];
    tileKind = [infoCopy tileKind];
    v11 = [layout layoutInfoForTileWithIndexPath:indexPath kind:tileKind];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  recognizerCopy = recognizer;
  _pinchGestureRecognizer = [(PUInteractivePinchDismissalController *)self _pinchGestureRecognizer];

  if (_pinchGestureRecognizer != recognizerCopy)
  {

LABEL_7:
    LOBYTE(v10) = 0;
    goto LABEL_8;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_7;
  }

  v17 = 0;
  v10 = [gestureRecognizerCopy px_isPinchGestureRecognizerOfScrollView:&v17];
  v11 = v17;
  v12 = v11;
  if (v10)
  {
    [v11 minimumZoomScale];
    v14 = v13;
    [v12 zoomScale];
    LOBYTE(v10) = v15 <= v14;
  }

LABEL_8:
  return v10;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  _pinchGestureRecognizer = [(PUInteractivePinchDismissalController *)self _pinchGestureRecognizer];

  if (_pinchGestureRecognizer == beginCopy)
  {
    if ([(PUInteractiveDismissalController *)self canBeginDismissalAtLocationFromProvider:_pinchGestureRecognizer])
    {
      [_pinchGestureRecognizer velocity];
      v6 = v7 < 0.0;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)_handlePinchGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  state = [recognizerCopy state];
  _pinchedTileTracker = [(PUInteractivePinchDismissalController *)self _pinchedTileTracker];
  _scaleDirectionValueFilter = [(PUInteractivePinchDismissalController *)self _scaleDirectionValueFilter];
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __71__PUInteractivePinchDismissalController__handlePinchGestureRecognizer___block_invoke;
  v21 = &unk_1E7B78178;
  v8 = _pinchedTileTracker;
  v22 = v8;
  v9 = _scaleDirectionValueFilter;
  v23 = v9;
  v10 = _Block_copy(&v18);
  if ((state - 3) >= 3)
  {
    if (state == 2)
    {
      if ([(PUInteractivePinchDismissalController *)self _isHandlingPinchGestureRecognizer:v18])
      {
        if (v8)
        {
          [(PUInteractiveTileTracker *)v8 update];
          [(PUInteractiveTileTracker *)v8 progress];
          v14 = v13;
        }

        else
        {
          [recognizerCopy scale];
          v16 = v15;
          [(PUValueFilter *)v9 setInputValue:?];
          v14 = 1.0 - v16 + 1.0 - v16;
        }

        [(PUInteractiveDismissalController *)self updateDismissalWithInteractionProgress:v10[2](v10) interactionWillFinish:v14];
      }
    }

    else if (state == 1 && ![(PUInteractivePinchDismissalController *)self _isHandlingPinchGestureRecognizer:v18])
    {
      [(PUInteractivePinchDismissalController *)self _setHandlingPinchGestureRecognizer:1];
      tilingView = [(PUInteractiveDismissalController *)self tilingView];
      if (tilingView)
      {
        v12 = [[PUPinchedTileTracker alloc] initWithPinchGestureRecognizer:recognizerCopy tilingView:tilingView direction:2];

        [(PUPinchedTileTracker *)v12 setDelegate:self];
        [(PUInteractivePinchDismissalController *)self _setPinchedTileTracker:v12];
        [(PUInteractiveTileTracker *)v12 update];
        v8 = v12;
      }

      else
      {
        v17 = objc_alloc_init(PUChangeDirectionValueFilter);

        [(PUChangeDirectionValueFilter *)v17 setMinimumChangeValue:0.05];
        [(PUInteractivePinchDismissalController *)self _setScaleDirectionValueFilter:v17];
        v9 = v17;
      }

      [(PUInteractiveDismissalController *)self beginDismissal];
    }
  }

  else if ([(PUInteractivePinchDismissalController *)self _isHandlingPinchGestureRecognizer:v18])
  {
    [(PUInteractivePinchDismissalController *)self _setHandlingPinchGestureRecognizer:0];
    if (v8)
    {
      [(PUInteractiveTileTracker *)v8 update];
      [(PUInteractivePinchDismissalController *)self _setPinchedTileTracker:0];
    }

    else
    {
      [(PUInteractivePinchDismissalController *)self _setScaleDirectionValueFilter:0];
    }

    [(PUInteractiveDismissalController *)self endDismissal:v10[2](v10)];
  }
}

uint64_t __71__PUInteractivePinchDismissalController__handlePinchGestureRecognizer___block_invoke(uint64_t a1)
{
  v4 = *(a1 + 32);
  if (v4)
  {

    return [v4 shouldFinish];
  }

  else
  {
    [*(a1 + 40) outputValue];
    return v6 <= 0.0;
  }
}

- (void)updateGestureRecognizersWithHostingView:(id)view
{
  viewCopy = view;
  v10.receiver = self;
  v10.super_class = PUInteractivePinchDismissalController;
  [(PUInteractiveDismissalController *)&v10 updateGestureRecognizersWithHostingView:viewCopy];
  if (![(PUInteractivePinchDismissalController *)self _isHandlingPinchGestureRecognizer])
  {
    _pinchGestureRecognizer = [(PUInteractivePinchDismissalController *)self _pinchGestureRecognizer];
    v6 = _pinchGestureRecognizer;
    if (viewCopy)
    {
      if (!_pinchGestureRecognizer)
      {
        v6 = [objc_alloc(MEMORY[0x1E69DCD80]) initWithTarget:self action:sel__handlePinchGestureRecognizer_];
        [v6 setDelegate:self];
        [(PUInteractivePinchDismissalController *)self _setPinchGestureRecognizer:v6];
      }

      view = [v6 view];

      if (view != viewCopy)
      {
        view2 = [v6 view];
        [view2 removeGestureRecognizer:v6];

        [viewCopy addGestureRecognizer:v6];
      }
    }

    else if (_pinchGestureRecognizer)
    {
      view3 = [_pinchGestureRecognizer view];
      [view3 removeGestureRecognizer:v6];

      [(PUInteractivePinchDismissalController *)self _setPinchGestureRecognizer:0];
    }
  }
}

- (void)dealloc
{
  [(UIPinchGestureRecognizer *)self->__pinchGestureRecognizer setDelegate:0];
  v3.receiver = self;
  v3.super_class = PUInteractivePinchDismissalController;
  [(PUInteractivePinchDismissalController *)&v3 dealloc];
}

@end