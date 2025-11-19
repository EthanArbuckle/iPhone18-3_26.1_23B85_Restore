@interface _UIPreviewInteractionCompatibilityTouchForceProvider
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (CGPoint)locationInCoordinateSpace:(id)a3;
- (UIView)view;
- (_UIPreviewInteractionCompatibilityTouchForceProvider)initWithView:(id)a3;
- (void)_handleTouchObservingGestureRecognizer:(id)a3;
- (void)cancelInteraction;
- (void)dealloc;
@end

@implementation _UIPreviewInteractionCompatibilityTouchForceProvider

- (_UIPreviewInteractionCompatibilityTouchForceProvider)initWithView:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"_UIPreviewInteractionCompatibilityTouchForceProvider.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"view"}];
  }

  v15.receiver = self;
  v15.super_class = _UIPreviewInteractionCompatibilityTouchForceProvider;
  v6 = [(_UIPreviewInteractionCompatibilityTouchForceProvider *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_view, v5);
    v8 = +[UIDevice currentDevice];
    v9 = [v8 _supportsForceTouch];

    if (v9)
    {
      v10 = objc_alloc_init(_UITouchesObservingGestureRecognizer);
      [(UIGestureRecognizer *)v10 setAllowedTouchTypes:&unk_1EFE2D198];
      [(UIGestureRecognizer *)v10 setCancelsTouchesInView:0];
      [(UIGestureRecognizer *)v10 setDelegate:v7];
      [(UIGestureRecognizer *)v10 addTarget:v7 action:sel__handleTouchObservingGestureRecognizer_];
      [v5 addGestureRecognizer:v10];
      gestureRecognizer = v7->_gestureRecognizer;
      v7->_gestureRecognizer = v10;
    }

    v12 = v7;
  }

  return v7;
}

- (void)dealloc
{
  v3 = [(UIGestureRecognizer *)self->_gestureRecognizer view];
  [v3 removeGestureRecognizer:self->_gestureRecognizer];

  v4.receiver = self;
  v4.super_class = _UIPreviewInteractionCompatibilityTouchForceProvider;
  [(_UIPreviewInteractionCompatibilityTouchForceProvider *)&v4 dealloc];
}

- (CGPoint)locationInCoordinateSpace:(id)a3
{
  v4 = a3;
  currentTouch = self->_currentTouch;
  if (currentTouch)
  {
    WeakRetained = objc_loadWeakRetained(&self->_view);
    [(UITouch *)currentTouch locationInView:WeakRetained];
    v8 = v7;
    v10 = v9;

    if (v4)
    {
      v11 = objc_loadWeakRetained(&self->_view);

      if (v11 != v4)
      {
        v12 = objc_loadWeakRetained(&self->_view);
        [v12 convertPoint:v4 toCoordinateSpace:{v8, v10}];
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

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v5 = a4;
  if (([(UITouch *)v5 _mightBeConsideredForForceSystemGesture]& 1) != 0)
  {
    v6 = 0;
  }

  else
  {
    currentTouch = self->_currentTouch;
    if (currentTouch)
    {
      v8 = currentTouch == v5;
    }

    else
    {
      v8 = 1;
    }

    v6 = v8;
  }

  return v6;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v3 = [a3 view];
  v4 = _UIPreviewInteractionAllowedToBeginForView(v3);

  return v4;
}

- (void)_handleTouchObservingGestureRecognizer:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 state] == 1 || objc_msgSend(v4, "state") == 2)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [v4 touches];
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(v5);
          }

          if ([(UITouch *)*(*(&v13 + 1) + 8 * v9) _mightBeConsideredForForceSystemGesture])
          {
            [(_UIPreviewInteractionCompatibilityTouchForceProvider *)self cancelInteraction];
            goto LABEL_19;
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

  if ([v4 state] == 1)
  {
    v10 = [v4 touches];
    v11 = [v10 anyObject];
    currentTouch = self->_currentTouch;
    self->_currentTouch = v11;

    [(_UIPreviewInteractionCompatibilityTouchForceProvider *)self setActive:1];
  }

  if ([v4 state] == 3 || objc_msgSend(v4, "state") == 4 || objc_msgSend(v4, "state") == 5)
  {
    [(_UIPreviewInteractionCompatibilityTouchForceProvider *)self setActive:0];
    v5 = self->_currentTouch;
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