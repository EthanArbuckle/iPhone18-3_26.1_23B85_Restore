@interface UITrackingElementHostView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (int)textEffectsVisibilityLevel;
- (unint64_t)_clipCornersOfView:(id)view;
- (void)_didChangeKeyplaneWithContext:(id)context;
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
  placement = [_rootInputWindowController placement];
  isFloatingAssistantView = [placement isFloatingAssistantView];

  if (!isFloatingAssistantView)
  {
LABEL_9:
    v39.receiver = self;
    v39.super_class = UITrackingElementHostView;
    v35 = [(UIView *)&v39 hitTest:eventCopy withEvent:x, y];
    assistantViewController = v35;
    if (v35 == self)
    {
      layer = [(UIView *)self layer];
      animationKeys = [layer animationKeys];
      if ([animationKeys count])
      {
        superview = assistantViewController;
      }

      else
      {
        superview = 0;
      }
    }

    else
    {
      superview = v35;
    }

    goto LABEL_15;
  }

  inputViewSet = [_rootInputWindowController inputViewSet];
  assistantViewController = [inputViewSet assistantViewController];

  if (([assistantViewController isInputAssistantItemEmpty] & 1) == 0)
  {
    placement2 = [_rootInputWindowController placement];
    isCompactAssistantView = [placement2 isCompactAssistantView];

    if (!isCompactAssistantView)
    {
LABEL_8:

      goto LABEL_9;
    }
  }

  view = [assistantViewController view];
  superview = [view superview];

  v16Superview = [(UIView *)superview superview];

  if (v16Superview != self || ([assistantViewController barFrame], v19 = v18, v21 = v20, v23 = v22, v25 = v24, objc_msgSend(assistantViewController, "view"), v26 = objc_claimAutoreleasedReturnValue(), -[UIView convertRect:fromView:](self, "convertRect:fromView:", v26, v19, v21, v23, v25), v28 = v27, v30 = v29, v32 = v31, v34 = v33, v26, v43.origin.x = v28, v43.origin.y = v30, v43.size.width = v32, v43.size.height = v34, v44 = CGRectInset(v43, -v34, 0.0), v41.x = x, v41.y = y, !CGRectContainsPoint(v44, v41)) || (v45.origin.x = v28, v45.origin.y = v30, v45.size.width = v32, v45.size.height = v34, v42.x = x, v42.y = y, CGRectContainsPoint(v45, v42)))
  {

    goto LABEL_8;
  }

LABEL_15:

  return superview;
}

- (void)_didChangeKeyplaneWithContext:(id)context
{
  contextCopy = context;
  v4 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__UITrackingElementHostView__didChangeKeyplaneWithContext___block_invoke;
  v6[3] = &unk_1E7116330;
  v7 = contextCopy;
  v5 = contextCopy;
  [v4 performOnControllers:v6];
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