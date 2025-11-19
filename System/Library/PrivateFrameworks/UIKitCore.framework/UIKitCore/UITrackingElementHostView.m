@interface UITrackingElementHostView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (int)textEffectsVisibilityLevel;
- (unint64_t)_clipCornersOfView:(id)a3;
- (void)_didChangeKeyplaneWithContext:(id)a3;
- (void)_updateSafeAreaInsets;
@end

@implementation UITrackingElementHostView

- (void)_updateSafeAreaInsets
{
  [(UIView *)self safeAreaInsets];
  v4 = v3;
  v9.receiver = self;
  v9.super_class = UITrackingElementHostView;
  [(UIView *)&v9 _updateSafeAreaInsets];
  [(UIView *)self safeAreaInsets];
  if (v4 != v5)
  {
    v6 = [(UIView *)self _rootInputWindowController];
    v7 = [v6 bottomEdgeView];

    if (v7 == self)
    {
      v8 = [(UIView *)self _rootInputWindowController];
      [v8 updateSupportsDockViewController];
    }
  }
}

- (int)textEffectsVisibilityLevel
{
  v2 = +[UIKeyboardImpl activeInstance];
  if ([v2 isEmojiPopoverPresented] && (objc_msgSend(v2, "_showsScribbleIconsInAssistantView") & 1) != 0)
  {
    v3 = 301;
  }

  else
  {
    v3 = 10;
  }

  return v3;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v22 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = [(UIView *)self _rootInputWindowController];
  [v8 clearKeyboardSnapshot];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = [(UIView *)self subviews];
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        if ([v14 isUserInteractionEnabled])
        {
          [(UIView *)self convertPoint:v14 toView:x, y];
          if ([v14 pointInside:v7 withEvent:?])
          {
            v15 = 1;
            goto LABEL_12;
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_12:

  return v15;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(UIView *)self _rootInputWindowController];
  v9 = [v8 placement];
  v10 = [v9 isFloatingAssistantView];

  if (!v10)
  {
LABEL_9:
    v39.receiver = self;
    v39.super_class = UITrackingElementHostView;
    v35 = [(UIView *)&v39 hitTest:v7 withEvent:x, y];
    v12 = v35;
    if (v35 == self)
    {
      v36 = [(UIView *)self layer];
      v37 = [v36 animationKeys];
      if ([v37 count])
      {
        v16 = v12;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = v35;
    }

    goto LABEL_15;
  }

  v11 = [v8 inputViewSet];
  v12 = [v11 assistantViewController];

  if (([v12 isInputAssistantItemEmpty] & 1) == 0)
  {
    v13 = [v8 placement];
    v14 = [v13 isCompactAssistantView];

    if (!v14)
    {
LABEL_8:

      goto LABEL_9;
    }
  }

  v15 = [v12 view];
  v16 = [v15 superview];

  v17 = [(UIView *)v16 superview];

  if (v17 != self || ([v12 barFrame], v19 = v18, v21 = v20, v23 = v22, v25 = v24, objc_msgSend(v12, "view"), v26 = objc_claimAutoreleasedReturnValue(), -[UIView convertRect:fromView:](self, "convertRect:fromView:", v26, v19, v21, v23, v25), v28 = v27, v30 = v29, v32 = v31, v34 = v33, v26, v43.origin.x = v28, v43.origin.y = v30, v43.size.width = v32, v43.size.height = v34, v44 = CGRectInset(v43, -v34, 0.0), v41.x = x, v41.y = y, !CGRectContainsPoint(v44, v41)) || (v45.origin.x = v28, v45.origin.y = v30, v45.size.width = v32, v45.size.height = v34, v42.x = x, v42.y = y, CGRectContainsPoint(v45, v42)))
  {

    goto LABEL_8;
  }

LABEL_15:

  return v16;
}

- (void)_didChangeKeyplaneWithContext:(id)a3
{
  v3 = a3;
  v4 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__UITrackingElementHostView__didChangeKeyplaneWithContext___block_invoke;
  v6[3] = &unk_1E7116330;
  v7 = v3;
  v5 = v3;
  [v4 performOnControllers:v6];
}

- (unint64_t)_clipCornersOfView:(id)a3
{
  if (!a3)
  {
    return -1;
  }

  v4 = a3;
  v5 = [(UIView *)self _rootInputWindowController];
  v6 = [v5 _clipCornersOfView:v4];

  return v6;
}

@end