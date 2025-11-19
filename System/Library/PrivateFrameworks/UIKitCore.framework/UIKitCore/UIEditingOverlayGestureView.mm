@interface UIEditingOverlayGestureView
- (UIWindow)previousWindow;
- (id)_gestureRecognizersForEvent:(id)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
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
  v3 = [(UIEditingOverlayGestureView *)self previousWindow];

  if (v3)
  {
    v4 = UIApp;
    v5 = [(UIEditingOverlayGestureView *)self previousWindow];
    v6 = [v4 _touchesEventForWindow:v5];

    if (v6)
    {
      [v6[8] removeObject:self];
    }

    if (_os_feature_enabled_impl())
    {
      v7 = UIApp;
      v8 = [(UIEditingOverlayGestureView *)self previousWindow];
      v9 = [v7 _hoverEventForWindow:v8];

      if (v9)
      {
        [v9[8] removeObject:self];
      }
    }
  }

  v10 = [(UIView *)self window];

  if (v10)
  {
    v11 = UIApp;
    v12 = [(UIView *)self window];
    v13 = [v11 _touchesEventForWindow:v12];

    [(UIEvent *)v13 _addEventObserver:?];
    if (_os_feature_enabled_impl())
    {
      v14 = UIApp;
      v15 = [(UIView *)self window];
      v16 = [v14 _hoverEventForWindow:v15];

      [(UIEvent *)v16 _addEventObserver:?];
    }
  }

  v17 = [(UIView *)self window];
  [(UIEditingOverlayGestureView *)self setPreviousWindow:v17];
}

- (id)_gestureRecognizersForEvent:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UIView *)self window];
  v6 = [v5 isMemberOfClass:objc_opt_class()];

  if (!v6)
  {
LABEL_11:
    v15 = [(UIView *)self window];
    v16 = [v15 windowScene];
    v17 = [v16 activationState];

    if (v17 > 1)
    {
      v13 = MEMORY[0x1E695E0F0];
      goto LABEL_26;
    }

    v13 = objc_opt_new();
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v9 = [(UIView *)self gestureRecognizers];
    v18 = [v9 countByEnumeratingWithState:&v27 objects:v35 count:16];
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
        objc_enumerationMutation(v9);
      }

      v22 = *(*(&v27 + 1) + 8 * v21);
      v23 = [v22 _activeEvents];
      if ([v23 count])
      {
        v24 = [v22 _activeEvents];
        v25 = [v24 containsObject:v4];

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
        v19 = [v9 countByEnumeratingWithState:&v27 objects:v35 count:16];
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
  v7 = [(UIView *)self window];
  v8 = [v7 windowScene];
  v9 = [v8 windows];

  v10 = [v9 countByEnumeratingWithState:&v31 objects:v36 count:16];
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
      objc_enumerationMutation(v9);
    }

    if ([*(*(&v31 + 1) + 8 * v14) isMemberOfClass:objc_opt_class()])
    {
      break;
    }

    if (v11 == ++v14)
    {
      v11 = [v9 countByEnumeratingWithState:&v31 objects:v36 count:16];
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

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = +[UIKeyShortcutHUDService _existingHUDService];
  [v8 handleTouchEvent:v7];

  v12.receiver = self;
  v12.super_class = UIEditingOverlayGestureView;
  v9 = [(UIView *)&v12 hitTest:v7 withEvent:x, y];

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