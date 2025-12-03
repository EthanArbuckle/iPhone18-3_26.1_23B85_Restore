@interface _TVNonFocusSwipeUpCapture
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (SEL)action;
- (_TVNonFocusSwipeUpCapture)initWithTarget:(id)target action:(SEL)action;
- (id)target;
- (void)_onPan:(id)pan;
@end

@implementation _TVNonFocusSwipeUpCapture

- (_TVNonFocusSwipeUpCapture)initWithTarget:(id)target action:(SEL)action
{
  targetCopy = target;
  v13.receiver = self;
  v13.super_class = _TVNonFocusSwipeUpCapture;
  v7 = [(_TVNonFocusSwipeUpCapture *)&v13 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_target, targetCopy);
    if (action)
    {
      actionCopy = action;
    }

    else
    {
      actionCopy = 0;
    }

    v8->_action = actionCopy;
    v10 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:v8 action:sel__onPan_];
    [(UIPanGestureRecognizer *)v10 setDelegate:v8];
    [(UIPanGestureRecognizer *)v10 setEnabled:0];
    gestureRecognizer = v8->_gestureRecognizer;
    v8->_gestureRecognizer = v10;
  }

  return v8;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  view = [recognizer view];
  view2 = [gestureRecognizerCopy view];

  LOBYTE(gestureRecognizerCopy) = [view isDescendantOfView:view2];
  return gestureRecognizerCopy;
}

- (void)_onPan:(id)pan
{
  panCopy = pan;
  view = [panCopy view];
  [panCopy translationInView:view];
  self->_translation.x = v6;
  p_translation = &self->_translation;
  self->_translation.y = v8;

  view2 = [panCopy view];
  [panCopy velocityInView:view2];
  self->_velocity.x = v10;
  self->_velocity.y = v11;
  p_velocity = &self->_velocity;

  state = [panCopy state];
  if (state == 3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_initiallyFocusedView);
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    focusedView = [mainScreen focusedView];

    if (WeakRetained != focusedView)
    {
      goto LABEL_17;
    }

    y = self->_translation.y;
    if (y > -500.0)
    {
      goto LABEL_17;
    }

    if (fabs(y) <= fabs(p_translation->x))
    {
      goto LABEL_17;
    }

    v19 = self->_velocity.y;
    if (v19 > -200.0 || fabs(v19) <= fabs(p_velocity->x))
    {
      goto LABEL_17;
    }

    target = [(_TVNonFocusSwipeUpCapture *)self target];
    v21 = [target methodSignatureForSelector:{-[_TVNonFocusSwipeUpCapture action](self, "action")}];

    target2 = [(_TVNonFocusSwipeUpCapture *)self target];
    v23 = [target2 methodForSelector:{-[_TVNonFocusSwipeUpCapture action](self, "action")}];

    if ([v21 numberOfArguments] == 2)
    {
      target3 = [(_TVNonFocusSwipeUpCapture *)self target];
      v23(target3, [(_TVNonFocusSwipeUpCapture *)self action]);
    }

    else
    {
      if ([v21 numberOfArguments] != 3)
      {
LABEL_16:

LABEL_17:
        objc_storeWeak(&self->_initiallyFocusedView, 0);
        v25 = *MEMORY[0x277CBF348];
        *p_translation = *MEMORY[0x277CBF348];
        *p_velocity = v25;
        return;
      }

      target3 = [(_TVNonFocusSwipeUpCapture *)self target];
      (v23)(target3, [(_TVNonFocusSwipeUpCapture *)self action], self);
    }

    goto LABEL_16;
  }

  if (state == 1)
  {
    mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
    focusedView2 = [mainScreen2 focusedView];
    objc_storeWeak(&self->_initiallyFocusedView, focusedView2);
  }
}

- (id)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

- (SEL)action
{
  if (self->_action)
  {
    return self->_action;
  }

  else
  {
    return 0;
  }
}

@end