@interface UIInputSetHostView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (int)textEffectsVisibilityLevel;
- (unint64_t)_clipCornersOfView:(id)a3;
- (void)_didChangeKeyplaneWithContext:(id)a3;
- (void)_updateSafeAreaInsets;
- (void)layoutIfNeeded;
@end

@implementation UIInputSetHostView

- (void)_updateSafeAreaInsets
{
  [(UIView *)self safeAreaInsets];
  v4 = v3;
  v9.receiver = self;
  v9.super_class = UIInputSetHostView;
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

- (void)layoutIfNeeded
{
  if ([objc_opt_class() _notifyOnExplicitLayout])
  {
    v3 = [(UIView *)self _rootInputWindowController];
    [v3 _forcePreLayoutHostViewFrame];
  }

  if (+[UIKeyboard usesInputSystemUI])
  {
    v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v5 = [v4 remoteInputViewHost];

    v6 = [v5 inputViewSet];
    v7 = [v6 hostedCustomInputView];

    if (v7)
    {
      v8 = [v5 inputViewWindow];
      [v8 layoutIfNeeded];
    }
  }

  v9.receiver = self;
  v9.super_class = UIInputSetHostView;
  [(UIView *)&v9 layoutIfNeeded];
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
  if (![objc_opt_class() _shouldHitTestInputViewFirst])
  {
    v18 = [v8 placement];
    v19 = [v18 isFloatingAssistantView];

    if (v19)
    {
      v20 = [v8 inputViewSet];
      v12 = [v20 assistantViewController];

      if (([v12 isInputAssistantItemEmpty] & 1) != 0 || (objc_msgSend(v8, "placement"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "isCompactAssistantView"), v21, v22))
      {
        v23 = [v12 view];
        v24 = [v23 superview];

        v25 = [(UIView *)v24 superview];

        if (v25 == self)
        {
          [v12 barFrame];
          v27 = v26;
          v29 = v28;
          v31 = v30;
          v33 = v32;
          v34 = [v12 view];
          [(UIView *)self convertRect:v34 fromView:v27, v29, v31, v33];
          v36 = v35;
          v38 = v37;
          v40 = v39;
          v42 = v41;

          v51.origin.x = v36;
          v51.origin.y = v38;
          v51.size.width = v40;
          v51.size.height = v42;
          v52 = CGRectInset(v51, -v42, 0.0);
          v49.x = x;
          v49.y = y;
          if (CGRectContainsPoint(v52, v49))
          {
            v53.origin.x = v36;
            v53.origin.y = v38;
            v53.size.width = v40;
            v53.size.height = v42;
            v50.x = x;
            v50.y = y;
            if (!CGRectContainsPoint(v53, v50))
            {
              goto LABEL_25;
            }
          }
        }
      }

      goto LABEL_15;
    }

LABEL_16:
    v12 = 0;
LABEL_17:
    v47.receiver = self;
    v47.super_class = UIInputSetHostView;
    v17 = [(UIView *)&v47 hitTest:v7 withEvent:x, y];
    goto LABEL_18;
  }

  v9 = [v8 inputViewSet];
  v10 = [v9 isInputViewPlaceholder];

  if (v10)
  {
    goto LABEL_16;
  }

  v11 = [v8 inputViewSet];
  v12 = [v11 inputView];

  if (+[UIKeyboard usesInputSystemUI](UIKeyboard, "usesInputSystemUI") && ([v12 isDescendantOfView:self] & 1) == 0)
  {
LABEL_15:

    goto LABEL_16;
  }

  [(UIView *)self convertPoint:v12 toView:x, y];
  if (!v12)
  {
    goto LABEL_17;
  }

  v15 = v13;
  v16 = v14;
  if (![v12 pointInside:v7 withEvent:?])
  {
    goto LABEL_17;
  }

  v17 = [v12 hitTest:v7 withEvent:{v15, v16}];
LABEL_18:
  v43 = v17;
  if (v17 == self)
  {
    v44 = [(UIView *)self layer];
    v45 = [v44 animationKeys];
    if ([v45 count])
    {
      v24 = v43;
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = v17;
  }

LABEL_25:

  return v24;
}

- (void)_didChangeKeyplaneWithContext:(id)a3
{
  v3 = a3;
  v4 = [v3 targetPlacement];

  if (v4)
  {
    v5 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __52__UIInputSetHostView__didChangeKeyplaneWithContext___block_invoke;
    v10[3] = &unk_1E7108360;
    v11 = v3;
    v6 = +[UIInputViewAnimationStyle animationStyleImmediate];
    [v5 performMultipleOperations:v10 withAnimationStyle:v6];
  }

  if (([v3 updatePlacementOnly] & 1) == 0)
  {
    v7 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __52__UIInputSetHostView__didChangeKeyplaneWithContext___block_invoke_2;
    v8[3] = &unk_1E7116330;
    v9 = v3;
    [v7 performOnControllers:v8];
  }
}

void __52__UIInputSetHostView__didChangeKeyplaneWithContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 targetPlacement];
  [v3 setPlacement:v4];
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