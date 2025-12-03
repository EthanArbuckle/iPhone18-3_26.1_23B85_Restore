@interface PUOneUpGestureRecognizerCoordinator
- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (PUOneUpGestureRecognizerCoordinatorDelegate)delegate;
- (PUTouchingGestureRecognizer)touchingGestureRecognizer;
- (id)longPressGestureRecognizer;
- (void)_updateGestureRecognizersIfNeeded;
- (void)addIrisGestureRecognizer:(id)recognizer;
- (void)invalidateViewHostingGestureRecognizers;
- (void)setDelegate:(id)delegate;
@end

@implementation PUOneUpGestureRecognizerCoordinator

- (PUOneUpGestureRecognizerCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  _irisGestureRecognizers = [(PUOneUpGestureRecognizerCoordinator *)self _irisGestureRecognizers];
  if ([_irisGestureRecognizers containsObject:recognizerCopy])
  {
    v9 = 1;
  }

  else
  {
    v9 = [_irisGestureRecognizers containsObject:gestureRecognizerCopy];
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

  oneUpBarsController = [(PUOneUpGestureRecognizerCoordinator *)self oneUpBarsController];
  tapGestureRecognizer = [oneUpBarsController tapGestureRecognizer];
  if (tapGestureRecognizer == recognizerCopy)
  {
    v15 = 0;
  }

  else
  {
    oneUpBarsController2 = [(PUOneUpGestureRecognizerCoordinator *)self oneUpBarsController];
    tapGestureRecognizer2 = [oneUpBarsController2 tapGestureRecognizer];
    v15 = tapGestureRecognizer2 != gestureRecognizerCopy;
  }

  browsingSession = [(PUOneUpGestureRecognizerCoordinator *)self browsingSession];
  viewModel = [browsingSession viewModel];
  isScrubbing = [viewModel isScrubbing];

  return (isKindOfClass & (v15 | ~(isKindOfClass & isScrubbing)) | v9) & 1;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  oneUpBarsController = [(PUOneUpGestureRecognizerCoordinator *)self oneUpBarsController];
  tapGestureRecognizer = [oneUpBarsController tapGestureRecognizer];
  if (tapGestureRecognizer == recognizerCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    view = [recognizerCopy view];
    view2 = [gestureRecognizerCopy view];

    if (view == view2)
    {
      isKindOfClass = 1;
      goto LABEL_16;
    }
  }

  else
  {
  }

  doubleTapZoomController = [(PUOneUpGestureRecognizerCoordinator *)self doubleTapZoomController];
  doubleTapGestureRecognizer = [doubleTapZoomController doubleTapGestureRecognizer];

  if (doubleTapGestureRecognizer == recognizerCopy)
  {
    oneUpBarsController2 = gestureRecognizerCopy;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    oneUpBarsController2 = [(PUOneUpGestureRecognizerCoordinator *)self oneUpBarsController];
    tapGestureRecognizer2 = [oneUpBarsController2 tapGestureRecognizer];
    if (tapGestureRecognizer2 == recognizerCopy)
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      if ([v18 isEqualToString:@"UITextTapRecognizer"])
      {
        isKindOfClass = [gestureRecognizerCopy numberOfTapsRequired] == 1;
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

- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  oneUpBarsController = [(PUOneUpGestureRecognizerCoordinator *)self oneUpBarsController];
  tapGestureRecognizer = [oneUpBarsController tapGestureRecognizer];
  v10 = tapGestureRecognizer;
  if (tapGestureRecognizer == recognizerCopy)
  {
    doubleTapZoomController = [(PUOneUpGestureRecognizerCoordinator *)self doubleTapZoomController];
    doubleTapGestureRecognizer = [doubleTapZoomController doubleTapGestureRecognizer];

    if (doubleTapGestureRecognizer != gestureRecognizerCopy)
    {
      v11 = 0;
      goto LABEL_6;
    }

    oneUpBarsController = [(PUOneUpGestureRecognizerCoordinator *)self doubleTapZoomController];
    v11 = [oneUpBarsController shouldDoubleTapBeginAtLocationFromProvider:recognizerCopy];
  }

  else
  {

    v11 = 0;
  }

LABEL_6:
  return v11;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  doubleTapZoomController = [(PUOneUpGestureRecognizerCoordinator *)self doubleTapZoomController];
  doubleTapGestureRecognizer = [doubleTapZoomController doubleTapGestureRecognizer];

  if (doubleTapGestureRecognizer == beginCopy)
  {
    doubleTapZoomController2 = [(PUOneUpGestureRecognizerCoordinator *)self doubleTapZoomController];
    v12 = [doubleTapZoomController2 shouldDoubleTapBeginAtLocationFromProvider:beginCopy];
    goto LABEL_9;
  }

  oneUpBarsController = [(PUOneUpGestureRecognizerCoordinator *)self oneUpBarsController];
  tapGestureRecognizer = [oneUpBarsController tapGestureRecognizer];

  if (tapGestureRecognizer == beginCopy)
  {
    doubleTapZoomController2 = [(PUOneUpGestureRecognizerCoordinator *)self oneUpBarsController];
    v12 = [doubleTapZoomController2 shouldTapBeginAtLocationFromProvider:beginCopy];
    goto LABEL_9;
  }

  if (self->_delegateFlags.respondsToShouldAllowIrisGestureRecognizer)
  {
    _irisGestureRecognizers = [(PUOneUpGestureRecognizerCoordinator *)self _irisGestureRecognizers];
    v10 = [_irisGestureRecognizers containsObject:beginCopy];

    if (v10)
    {
      doubleTapZoomController2 = [(PUOneUpGestureRecognizerCoordinator *)self delegate];
      v12 = [doubleTapZoomController2 oneUpGestureRecognizerCoordinator:self shouldAllowIrisGestureAtLocationFromProvider:beginCopy];
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
      delegate = [(PUOneUpGestureRecognizerCoordinator *)self delegate];
      v7 = [delegate oneUpGestureRecognizerCoordinatorViewHostingTouchingGesture:self];
    }

    else
    {
      v7 = 0;
    }

    touchingGestureRecognizer = [(PUOneUpGestureRecognizerCoordinator *)self touchingGestureRecognizer];
    if (!touchingGestureRecognizer)
    {
      touchingGestureRecognizer = [[PUTouchingGestureRecognizer alloc] initWithTarget:0 action:0];
      [(PUTouchingGestureRecognizer *)touchingGestureRecognizer setCancelsTouchesInView:0];
      [(PUTouchingGestureRecognizer *)touchingGestureRecognizer setDelaysTouchesBegan:0];
      [(PUTouchingGestureRecognizer *)touchingGestureRecognizer setDelaysTouchesEnded:0];
      objc_storeStrong(&self->_touchingGestureRecognizer, touchingGestureRecognizer);
      [(PUTouchingGestureRecognizer *)touchingGestureRecognizer setDelegate:self];
    }

    view = [(PUTouchingGestureRecognizer *)touchingGestureRecognizer view];

    if (v7 != view)
    {
      view2 = [(PUTouchingGestureRecognizer *)touchingGestureRecognizer view];
      [view2 removeGestureRecognizer:touchingGestureRecognizer];

      [v7 addGestureRecognizer:touchingGestureRecognizer];
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

- (void)setDelegate:(id)delegate
{
  obj = delegate;
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

- (void)addIrisGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  _irisGestureRecognizers = [(PUOneUpGestureRecognizerCoordinator *)self _irisGestureRecognizers];
  if (!_irisGestureRecognizers)
  {
    _irisGestureRecognizers = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    [(PUOneUpGestureRecognizerCoordinator *)self _setIrisGestureRecognizers:_irisGestureRecognizers];
  }

  [_irisGestureRecognizers addObject:recognizerCopy];
}

@end