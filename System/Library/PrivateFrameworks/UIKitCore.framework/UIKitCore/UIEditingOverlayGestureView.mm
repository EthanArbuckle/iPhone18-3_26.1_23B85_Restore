@interface UIEditingOverlayGestureView
- (UIWindow)previousWindow;
- (id)_gestureRecognizersForEvent:(id)event;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)didMoveToWindow;
@end

@implementation UIEditingOverlayGestureView

- (UIWindow)previousWindow
{
  WeakRetained = objc_loadWeakRetained(&self->_previousWindow);

  return WeakRetained;
}

- (void)didMoveToWindow
{
  previousWindow = [(UIEditingOverlayGestureView *)self previousWindow];

  if (previousWindow)
  {
    v4 = UIApp;
    previousWindow2 = [(UIEditingOverlayGestureView *)self previousWindow];
    v6 = [v4 _touchesEventForWindow:previousWindow2];

    if (v6)
    {
      [v6[8] removeObject:self];
    }

    if (_os_feature_enabled_impl())
    {
      v7 = UIApp;
      previousWindow3 = [(UIEditingOverlayGestureView *)self previousWindow];
      v9 = [v7 _hoverEventForWindow:previousWindow3];

      if (v9)
      {
        [v9[8] removeObject:self];
      }
    }
  }

  window = [(UIView *)self window];

  if (window)
  {
    v11 = UIApp;
    window2 = [(UIView *)self window];
    v13 = [v11 _touchesEventForWindow:window2];

    [(UIEvent *)v13 _addEventObserver:?];
    if (_os_feature_enabled_impl())
    {
      v14 = UIApp;
      window3 = [(UIView *)self window];
      v16 = [v14 _hoverEventForWindow:window3];

      [(UIEvent *)v16 _addEventObserver:?];
    }
  }

  window4 = [(UIView *)self window];
  [(UIEditingOverlayGestureView *)self setPreviousWindow:window4];
}

- (id)_gestureRecognizersForEvent:(id)event
{
  v37 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  window = [(UIView *)self window];
  v6 = [window isMemberOfClass:objc_opt_class()];

  if (!v6)
  {
LABEL_11:
    window2 = [(UIView *)self window];
    windowScene = [window2 windowScene];
    activationState = [windowScene activationState];

    if (activationState > 1)
    {
      v13 = MEMORY[0x1E695E0F0];
      goto LABEL_26;
    }

    v13 = objc_opt_new();
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    gestureRecognizers = [(UIView *)self gestureRecognizers];
    v18 = [gestureRecognizers countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (!v18)
    {
      goto LABEL_24;
    }

    v19 = v18;
    v20 = *v28;
LABEL_14:
    v21 = 0;
    while (1)
    {
      if (*v28 != v20)
      {
        objc_enumerationMutation(gestureRecognizers);
      }

      v22 = *(*(&v27 + 1) + 8 * v21);
      _activeEvents = [v22 _activeEvents];
      if ([_activeEvents count])
      {
        _activeEvents2 = [v22 _activeEvents];
        v25 = [_activeEvents2 containsObject:eventCopy];

        if (!v25)
        {
          goto LABEL_22;
        }
      }

      else
      {
      }

      [v13 addObject:v22];
LABEL_22:
      if (v19 == ++v21)
      {
        v19 = [gestureRecognizers countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (!v19)
        {
          goto LABEL_24;
        }

        goto LABEL_14;
      }
    }
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  window3 = [(UIView *)self window];
  windowScene2 = [window3 windowScene];
  gestureRecognizers = [windowScene2 windows];

  v10 = [gestureRecognizers countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = v10;
  v12 = *v32;
  v13 = MEMORY[0x1E695E0F0];
LABEL_4:
  v14 = 0;
  while (1)
  {
    if (*v32 != v12)
    {
      objc_enumerationMutation(gestureRecognizers);
    }

    if ([*(*(&v31 + 1) + 8 * v14) isMemberOfClass:objc_opt_class()])
    {
      break;
    }

    if (v11 == ++v14)
    {
      v11 = [gestureRecognizers countByEnumeratingWithState:&v31 objects:v36 count:16];
      if (!v11)
      {
LABEL_10:

        goto LABEL_11;
      }

      goto LABEL_4;
    }
  }

LABEL_24:

LABEL_26:

  return v13;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  v8 = +[UIKeyShortcutHUDService _existingHUDService];
  [v8 handleTouchEvent:eventCopy];

  v12.receiver = self;
  v12.super_class = UIEditingOverlayGestureView;
  v9 = [(UIView *)&v12 hitTest:eventCopy withEvent:x, y];

  if (v9 == self)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  return v10;
}

@end