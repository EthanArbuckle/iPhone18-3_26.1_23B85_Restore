@interface PUOneUpGestureRecognizerCoordinator
- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (PUOneUpGestureRecognizerCoordinatorDelegate)delegate;
- (PUTouchingGestureRecognizer)touchingGestureRecognizer;
- (id)longPressGestureRecognizer;
- (void)_updateGestureRecognizersIfNeeded;
- (void)addIrisGestureRecognizer:(id)a3;
- (void)invalidateViewHostingGestureRecognizers;
- (void)setDelegate:(id)a3;
@end

@implementation PUOneUpGestureRecognizerCoordinator

- (PUOneUpGestureRecognizerCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PUOneUpGestureRecognizerCoordinator *)self _irisGestureRecognizers];
  if ([v8 containsObject:v6])
  {
    v9 = 1;
  }

  else
  {
    v9 = [v8 containsObject:v7];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  v11 = [(PUOneUpGestureRecognizerCoordinator *)self oneUpBarsController];
  v12 = [v11 tapGestureRecognizer];
  if (v12 == v6)
  {
    v15 = 0;
  }

  else
  {
    v13 = [(PUOneUpGestureRecognizerCoordinator *)self oneUpBarsController];
    v14 = [v13 tapGestureRecognizer];
    v15 = v14 != v7;
  }

  v16 = [(PUOneUpGestureRecognizerCoordinator *)self browsingSession];
  v17 = [v16 viewModel];
  v18 = [v17 isScrubbing];

  return (isKindOfClass & (v15 | ~(isKindOfClass & v18)) | v9) & 1;
}

- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PUOneUpGestureRecognizerCoordinator *)self oneUpBarsController];
  v9 = [v8 tapGestureRecognizer];
  if (v9 == v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = [v6 view];
    v11 = [v7 view];

    if (v10 == v11)
    {
      isKindOfClass = 1;
      goto LABEL_16;
    }
  }

  else
  {
  }

  v13 = [(PUOneUpGestureRecognizerCoordinator *)self doubleTapZoomController];
  v14 = [v13 doubleTapGestureRecognizer];

  if (v14 == v6)
  {
    v15 = v7;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    v15 = [(PUOneUpGestureRecognizerCoordinator *)self oneUpBarsController];
    v16 = [v15 tapGestureRecognizer];
    if (v16 == v6)
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      if ([v18 isEqualToString:@"UITextTapRecognizer"])
      {
        isKindOfClass = [v7 numberOfTapsRequired] == 1;
      }

      else
      {
        isKindOfClass = 0;
      }
    }

    else
    {
      isKindOfClass = 0;
    }
  }

LABEL_16:
  return isKindOfClass & 1;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PUOneUpGestureRecognizerCoordinator *)self oneUpBarsController];
  v9 = [v8 tapGestureRecognizer];
  v10 = v9;
  if (v9 == v6)
  {
    v12 = [(PUOneUpGestureRecognizerCoordinator *)self doubleTapZoomController];
    v13 = [v12 doubleTapGestureRecognizer];

    if (v13 != v7)
    {
      v11 = 0;
      goto LABEL_6;
    }

    v8 = [(PUOneUpGestureRecognizerCoordinator *)self doubleTapZoomController];
    v11 = [v8 shouldDoubleTapBeginAtLocationFromProvider:v6];
  }

  else
  {

    v11 = 0;
  }

LABEL_6:
  return v11;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(PUOneUpGestureRecognizerCoordinator *)self doubleTapZoomController];
  v6 = [v5 doubleTapGestureRecognizer];

  if (v6 == v4)
  {
    v11 = [(PUOneUpGestureRecognizerCoordinator *)self doubleTapZoomController];
    v12 = [v11 shouldDoubleTapBeginAtLocationFromProvider:v4];
    goto LABEL_9;
  }

  v7 = [(PUOneUpGestureRecognizerCoordinator *)self oneUpBarsController];
  v8 = [v7 tapGestureRecognizer];

  if (v8 == v4)
  {
    v11 = [(PUOneUpGestureRecognizerCoordinator *)self oneUpBarsController];
    v12 = [v11 shouldTapBeginAtLocationFromProvider:v4];
    goto LABEL_9;
  }

  if (self->_delegateFlags.respondsToShouldAllowIrisGestureRecognizer)
  {
    v9 = [(PUOneUpGestureRecognizerCoordinator *)self _irisGestureRecognizers];
    v10 = [v9 containsObject:v4];

    if (v10)
    {
      v11 = [(PUOneUpGestureRecognizerCoordinator *)self delegate];
      v12 = [v11 oneUpGestureRecognizerCoordinator:self shouldAllowIrisGestureAtLocationFromProvider:v4];
LABEL_9:
      v13 = v12;

      goto LABEL_10;
    }
  }

  v13 = 1;
LABEL_10:

  return v13;
}

- (void)_updateGestureRecognizersIfNeeded
{
  if ([(PUOneUpGestureRecognizerCoordinator *)self _needsUpdateGestureRecognizers])
  {
    [(PUOneUpGestureRecognizerCoordinator *)self _setNeedsUpdateGestureRecognizers:0];
    if (self->_delegateFlags.respondsToViewHostingGestureRecognizers)
    {
      v3 = [(PUOneUpGestureRecognizerCoordinator *)self delegate];
      v7 = [v3 oneUpGestureRecognizerCoordinatorViewHostingTouchingGesture:self];
    }

    else
    {
      v7 = 0;
    }

    v4 = [(PUOneUpGestureRecognizerCoordinator *)self touchingGestureRecognizer];
    if (!v4)
    {
      v4 = [[PUTouchingGestureRecognizer alloc] initWithTarget:0 action:0];
      [(PUTouchingGestureRecognizer *)v4 setCancelsTouchesInView:0];
      [(PUTouchingGestureRecognizer *)v4 setDelaysTouchesBegan:0];
      [(PUTouchingGestureRecognizer *)v4 setDelaysTouchesEnded:0];
      objc_storeStrong(&self->_touchingGestureRecognizer, v4);
      [(PUTouchingGestureRecognizer *)v4 setDelegate:self];
    }

    v5 = [(PUTouchingGestureRecognizer *)v4 view];

    if (v7 != v5)
    {
      v6 = [(PUTouchingGestureRecognizer *)v4 view];
      [v6 removeGestureRecognizer:v4];

      [v7 addGestureRecognizer:v4];
    }
  }
}

- (void)invalidateViewHostingGestureRecognizers
{
  [(PUOneUpGestureRecognizerCoordinator *)self _invalidateGestureRecognizers];

  [(PUOneUpGestureRecognizerCoordinator *)self _updateGestureRecognizersIfNeeded];
}

- (id)longPressGestureRecognizer
{
  [(PUOneUpGestureRecognizerCoordinator *)self _updateGestureRecognizersIfNeeded];
  longPressGestureRecognizer = self->_longPressGestureRecognizer;

  return longPressGestureRecognizer;
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    self->_delegateFlags.respondsToViewHostingGestureRecognizers = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToShouldAllowIrisGestureRecognizer = objc_opt_respondsToSelector() & 1;
    [(PUOneUpGestureRecognizerCoordinator *)self _invalidateGestureRecognizers];
    [(PUOneUpGestureRecognizerCoordinator *)self _updateGestureRecognizersIfNeeded];
  }
}

- (PUTouchingGestureRecognizer)touchingGestureRecognizer
{
  [(PUOneUpGestureRecognizerCoordinator *)self _updateGestureRecognizersIfNeeded];
  touchingGestureRecognizer = self->_touchingGestureRecognizer;

  return touchingGestureRecognizer;
}

- (void)addIrisGestureRecognizer:(id)a3
{
  v5 = a3;
  v4 = [(PUOneUpGestureRecognizerCoordinator *)self _irisGestureRecognizers];
  if (!v4)
  {
    v4 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    [(PUOneUpGestureRecognizerCoordinator *)self _setIrisGestureRecognizers:v4];
  }

  [v4 addObject:v5];
}

@end