@interface _UIPreviewInteractionCompatibilityTouchForceProvider
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (CGPoint)locationInCoordinateSpace:(id)space;
- (UIView)view;
- (_UIPreviewInteractionCompatibilityTouchForceProvider)initWithView:(id)view;
- (void)_handleTouchObservingGestureRecognizer:(id)recognizer;
- (void)cancelInteraction;
- (void)dealloc;
@end

@implementation _UIPreviewInteractionCompatibilityTouchForceProvider

- (_UIPreviewInteractionCompatibilityTouchForceProvider)initWithView:(id)view
{
  viewCopy = view;
  if (!viewCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIPreviewInteractionCompatibilityTouchForceProvider.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"view"}];
  }

  v15.receiver = self;
  v15.super_class = _UIPreviewInteractionCompatibilityTouchForceProvider;
  v6 = [(_UIPreviewInteractionCompatibilityTouchForceProvider *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_view, viewCopy);
    v8 = +[UIDevice currentDevice];
    _supportsForceTouch = [v8 _supportsForceTouch];

    if (_supportsForceTouch)
    {
      v10 = objc_alloc_init(_UITouchesObservingGestureRecognizer);
      [(UIGestureRecognizer *)v10 setAllowedTouchTypes:&unk_1EFE2D198];
      [(UIGestureRecognizer *)v10 setCancelsTouchesInView:0];
      [(UIGestureRecognizer *)v10 setDelegate:v7];
      [(UIGestureRecognizer *)v10 addTarget:v7 action:sel__handleTouchObservingGestureRecognizer_];
      [viewCopy addGestureRecognizer:v10];
      gestureRecognizer = v7->_gestureRecognizer;
      v7->_gestureRecognizer = v10;
    }

    v12 = v7;
  }

  return v7;
}

- (void)dealloc
{
  view = [(UIGestureRecognizer *)self->_gestureRecognizer view];
  [view removeGestureRecognizer:self->_gestureRecognizer];

  v4.receiver = self;
  v4.super_class = _UIPreviewInteractionCompatibilityTouchForceProvider;
  [(_UIPreviewInteractionCompatibilityTouchForceProvider *)&v4 dealloc];
}

- (CGPoint)locationInCoordinateSpace:(id)space
{
  spaceCopy = space;
  currentTouch = self->_currentTouch;
  if (currentTouch)
  {
    WeakRetained = objc_loadWeakRetained(&self->_view);
    [(UITouch *)currentTouch locationInView:WeakRetained];
    v8 = v7;
    v10 = v9;

    if (spaceCopy)
    {
      v11 = objc_loadWeakRetained(&self->_view);

      if (v11 != spaceCopy)
      {
        v12 = objc_loadWeakRetained(&self->_view);
        [v12 convertPoint:spaceCopy toCoordinateSpace:{v8, v10}];
        v8 = v13;
        v10 = v14;
      }
    }
  }

  else
  {
    v10 = 1.79769313e308;
    v8 = 1.79769313e308;
  }

  v15 = v8;
  v16 = v10;
  result.y = v16;
  result.x = v15;
  return result;
}

- (void)cancelInteraction
{
  [(UIGestureRecognizer *)self->_gestureRecognizer setEnabled:0];
  gestureRecognizer = self->_gestureRecognizer;

  [(UIGestureRecognizer *)gestureRecognizer setEnabled:1];
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  touchCopy = touch;
  if (([(UITouch *)touchCopy _mightBeConsideredForForceSystemGesture]& 1) != 0)
  {
    v6 = 0;
  }

  else
  {
    currentTouch = self->_currentTouch;
    if (currentTouch)
    {
      v8 = currentTouch == touchCopy;
    }

    else
    {
      v8 = 1;
    }

    v6 = v8;
  }

  return v6;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  view = [begin view];
  v4 = _UIPreviewInteractionAllowedToBeginForView(view);

  return v4;
}

- (void)_handleTouchObservingGestureRecognizer:(id)recognizer
{
  v18 = *MEMORY[0x1E69E9840];
  recognizerCopy = recognizer;
  if ([recognizerCopy state] == 1 || objc_msgSend(recognizerCopy, "state") == 2)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    touches = [recognizerCopy touches];
    v6 = [touches countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      while (2)
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(touches);
          }

          if ([(UITouch *)*(*(&v13 + 1) + 8 * v9) _mightBeConsideredForForceSystemGesture])
          {
            [(_UIPreviewInteractionCompatibilityTouchForceProvider *)self cancelInteraction];
            goto LABEL_19;
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [touches countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

  if ([recognizerCopy state] == 1)
  {
    touches2 = [recognizerCopy touches];
    anyObject = [touches2 anyObject];
    currentTouch = self->_currentTouch;
    self->_currentTouch = anyObject;

    [(_UIPreviewInteractionCompatibilityTouchForceProvider *)self setActive:1];
  }

  if ([recognizerCopy state] == 3 || objc_msgSend(recognizerCopy, "state") == 4 || objc_msgSend(recognizerCopy, "state") == 5)
  {
    [(_UIPreviewInteractionCompatibilityTouchForceProvider *)self setActive:0];
    touches = self->_currentTouch;
    self->_currentTouch = 0;
LABEL_19:
  }
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

@end