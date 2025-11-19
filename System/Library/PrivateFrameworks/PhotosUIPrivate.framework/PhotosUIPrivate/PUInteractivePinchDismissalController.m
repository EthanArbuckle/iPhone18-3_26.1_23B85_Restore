@interface PUInteractivePinchDismissalController
- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (id)pinchedTiledTracker:(id)a3 finalLayoutInfoForInitialLayoutInfo:(id)a4;
- (void)_handlePinchGestureRecognizer:(id)a3;
- (void)dealloc;
- (void)updateGestureRecognizersWithHostingView:(id)a3;
@end

@implementation PUInteractivePinchDismissalController

- (id)pinchedTiledTracker:(id)a3 finalLayoutInfoForInitialLayoutInfo:(id)a4
{
  v5 = a4;
  v6 = [(PUInteractiveDismissalController *)self tilingViewControllerTransition];
  if ([v6 hasStarted])
  {
    v7 = [(PUInteractiveDismissalController *)self tilingView];
    v8 = [v7 layout];
    v9 = [v5 indexPath];
    v10 = [v5 tileKind];
    v11 = [v8 layoutInfoForTileWithIndexPath:v9 kind:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PUInteractivePinchDismissalController *)self _pinchGestureRecognizer];

  if (v8 != v7)
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
  v10 = [v6 px_isPinchGestureRecognizerOfScrollView:&v17];
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

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(PUInteractivePinchDismissalController *)self _pinchGestureRecognizer];

  if (v5 == v4)
  {
    if ([(PUInteractiveDismissalController *)self canBeginDismissalAtLocationFromProvider:v5])
    {
      [v5 velocity];
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

- (void)_handlePinchGestureRecognizer:(id)a3
{
  v4 = a3;
  v5 = [v4 state];
  v6 = [(PUInteractivePinchDismissalController *)self _pinchedTileTracker];
  v7 = [(PUInteractivePinchDismissalController *)self _scaleDirectionValueFilter];
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __71__PUInteractivePinchDismissalController__handlePinchGestureRecognizer___block_invoke;
  v21 = &unk_1E7B78178;
  v8 = v6;
  v22 = v8;
  v9 = v7;
  v23 = v9;
  v10 = _Block_copy(&v18);
  if ((v5 - 3) >= 3)
  {
    if (v5 == 2)
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
          [v4 scale];
          v16 = v15;
          [(PUValueFilter *)v9 setInputValue:?];
          v14 = 1.0 - v16 + 1.0 - v16;
        }

        [(PUInteractiveDismissalController *)self updateDismissalWithInteractionProgress:v10[2](v10) interactionWillFinish:v14];
      }
    }

    else if (v5 == 1 && ![(PUInteractivePinchDismissalController *)self _isHandlingPinchGestureRecognizer:v18])
    {
      [(PUInteractivePinchDismissalController *)self _setHandlingPinchGestureRecognizer:1];
      v11 = [(PUInteractiveDismissalController *)self tilingView];
      if (v11)
      {
        v12 = [[PUPinchedTileTracker alloc] initWithPinchGestureRecognizer:v4 tilingView:v11 direction:2];

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

- (void)updateGestureRecognizersWithHostingView:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PUInteractivePinchDismissalController;
  [(PUInteractiveDismissalController *)&v10 updateGestureRecognizersWithHostingView:v4];
  if (![(PUInteractivePinchDismissalController *)self _isHandlingPinchGestureRecognizer])
  {
    v5 = [(PUInteractivePinchDismissalController *)self _pinchGestureRecognizer];
    v6 = v5;
    if (v4)
    {
      if (!v5)
      {
        v6 = [objc_alloc(MEMORY[0x1E69DCD80]) initWithTarget:self action:sel__handlePinchGestureRecognizer_];
        [v6 setDelegate:self];
        [(PUInteractivePinchDismissalController *)self _setPinchGestureRecognizer:v6];
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