@interface UIInputSetHostView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (int)textEffectsVisibilityLevel;
- (unint64_t)_clipCornersOfView:(id)view;
- (void)_didChangeKeyplaneWithContext:(id)context;
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
    _rootInputWindowController = [(UIView *)self _rootInputWindowController];
    bottomEdgeView = [_rootInputWindowController bottomEdgeView];

    if (bottomEdgeView == self)
    {
      _rootInputWindowController2 = [(UIView *)self _rootInputWindowController];
      [_rootInputWindowController2 updateSupportsDockViewController];
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
    _rootInputWindowController = [(UIView *)self _rootInputWindowController];
    [_rootInputWindowController _forcePreLayoutHostViewFrame];
  }

  if (+[UIKeyboard usesInputSystemUI])
  {
    v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    remoteInputViewHost = [v4 remoteInputViewHost];

    inputViewSet = [remoteInputViewHost inputViewSet];
    hostedCustomInputView = [inputViewSet hostedCustomInputView];

    if (hostedCustomInputView)
    {
      inputViewWindow = [remoteInputViewHost inputViewWindow];
      [inputViewWindow layoutIfNeeded];
    }
  }

  v9.receiver = self;
  v9.super_class = UIInputSetHostView;
  [(UIView *)&v9 layoutIfNeeded];
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  v22 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  _rootInputWindowController = [(UIView *)self _rootInputWindowController];
  [_rootInputWindowController clearKeyboardSnapshot];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  subviews = [(UIView *)self subviews];
  v10 = [subviews countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(subviews);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        if ([v14 isUserInteractionEnabled])
        {
          [(UIView *)self convertPoint:v14 toView:x, y];
          if ([v14 pointInside:eventCopy withEvent:?])
          {
            v15 = 1;
            goto LABEL_12;
          }
        }
      }

      v11 = [subviews countByEnumeratingWithState:&v17 objects:v21 count:16];
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

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  _rootInputWindowController = [(UIView *)self _rootInputWindowController];
  if (![objc_opt_class() _shouldHitTestInputViewFirst])
  {
    placement = [_rootInputWindowController placement];
    isFloatingAssistantView = [placement isFloatingAssistantView];

    if (isFloatingAssistantView)
    {
      inputViewSet = [_rootInputWindowController inputViewSet];
      assistantViewController = [inputViewSet assistantViewController];

      if (([assistantViewController isInputAssistantItemEmpty] & 1) != 0 || (objc_msgSend(_rootInputWindowController, "placement"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "isCompactAssistantView"), v21, v22))
      {
        view = [assistantViewController view];
        superview = [view superview];

        v24Superview = [(UIView *)superview superview];

        if (v24Superview == self)
        {
          [assistantViewController barFrame];
          v27 = v26;
          v29 = v28;
          v31 = v30;
          v33 = v32;
          view2 = [assistantViewController view];
          [(UIView *)self convertRect:view2 fromView:v27, v29, v31, v33];
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
    assistantViewController = 0;
LABEL_17:
    v47.receiver = self;
    v47.super_class = UIInputSetHostView;
    v17 = [(UIView *)&v47 hitTest:eventCopy withEvent:x, y];
    goto LABEL_18;
  }

  inputViewSet2 = [_rootInputWindowController inputViewSet];
  isInputViewPlaceholder = [inputViewSet2 isInputViewPlaceholder];

  if (isInputViewPlaceholder)
  {
    goto LABEL_16;
  }

  inputViewSet3 = [_rootInputWindowController inputViewSet];
  assistantViewController = [inputViewSet3 inputView];

  if (+[UIKeyboard usesInputSystemUI](UIKeyboard, "usesInputSystemUI") && ([assistantViewController isDescendantOfView:self] & 1) == 0)
  {
LABEL_15:

    goto LABEL_16;
  }

  [(UIView *)self convertPoint:assistantViewController toView:x, y];
  if (!assistantViewController)
  {
    goto LABEL_17;
  }

  v15 = v13;
  v16 = v14;
  if (![assistantViewController pointInside:eventCopy withEvent:?])
  {
    goto LABEL_17;
  }

  v17 = [assistantViewController hitTest:eventCopy withEvent:{v15, v16}];
LABEL_18:
  v43 = v17;
  if (v17 == self)
  {
    layer = [(UIView *)self layer];
    animationKeys = [layer animationKeys];
    if ([animationKeys count])
    {
      superview = v43;
    }

    else
    {
      superview = 0;
    }
  }

  else
  {
    superview = v17;
  }

LABEL_25:

  return superview;
}

- (void)_didChangeKeyplaneWithContext:(id)context
{
  contextCopy = context;
  targetPlacement = [contextCopy targetPlacement];

  if (targetPlacement)
  {
    v5 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __52__UIInputSetHostView__didChangeKeyplaneWithContext___block_invoke;
    v10[3] = &unk_1E7108360;
    v11 = contextCopy;
    v6 = +[UIInputViewAnimationStyle animationStyleImmediate];
    [v5 performMultipleOperations:v10 withAnimationStyle:v6];
  }

  if (([contextCopy updatePlacementOnly] & 1) == 0)
  {
    v7 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __52__UIInputSetHostView__didChangeKeyplaneWithContext___block_invoke_2;
    v8[3] = &unk_1E7116330;
    v9 = contextCopy;
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

- (unint64_t)_clipCornersOfView:(id)view
{
  if (!view)
  {
    return -1;
  }

  viewCopy = view;
  _rootInputWindowController = [(UIView *)self _rootInputWindowController];
  v6 = [_rootInputWindowController _clipCornersOfView:viewCopy];

  return v6;
}

@end