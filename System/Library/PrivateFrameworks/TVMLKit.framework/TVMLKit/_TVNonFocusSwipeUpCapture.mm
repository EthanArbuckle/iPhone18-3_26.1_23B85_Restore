@interface _TVNonFocusSwipeUpCapture
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (SEL)action;
- (_TVNonFocusSwipeUpCapture)initWithTarget:(id)a3 action:(SEL)a4;
- (id)target;
- (void)_onPan:(id)a3;
@end

@implementation _TVNonFocusSwipeUpCapture

- (_TVNonFocusSwipeUpCapture)initWithTarget:(id)a3 action:(SEL)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = _TVNonFocusSwipeUpCapture;
  v7 = [(_TVNonFocusSwipeUpCapture *)&v13 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_target, v6);
    if (a4)
    {
      v9 = a4;
    }

    else
    {
      v9 = 0;
    }

    v8->_action = v9;
    v10 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:v8 action:sel__onPan_];
    [(UIPanGestureRecognizer *)v10 setDelegate:v8];
    [(UIPanGestureRecognizer *)v10 setEnabled:0];
    gestureRecognizer = v8->_gestureRecognizer;
    v8->_gestureRecognizer = v10;
  }

  return v8;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v5 = a4;
  v6 = [a3 view];
  v7 = [v5 view];

  LOBYTE(v5) = [v6 isDescendantOfView:v7];
  return v5;
}

- (void)_onPan:(id)a3
{
  v4 = a3;
  v5 = [v4 view];
  [v4 translationInView:v5];
  self->_translation.x = v6;
  p_translation = &self->_translation;
  self->_translation.y = v8;

  v9 = [v4 view];
  [v4 velocityInView:v9];
  self->_velocity.x = v10;
  self->_velocity.y = v11;
  p_velocity = &self->_velocity;

  v13 = [v4 state];
  if (v13 == 3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_initiallyFocusedView);
    v16 = [MEMORY[0x277D759A0] mainScreen];
    v17 = [v16 focusedView];

    if (WeakRetained != v17)
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

    v20 = [(_TVNonFocusSwipeUpCapture *)self target];
    v21 = [v20 methodSignatureForSelector:{-[_TVNonFocusSwipeUpCapture action](self, "action")}];

    v22 = [(_TVNonFocusSwipeUpCapture *)self target];
    v23 = [v22 methodForSelector:{-[_TVNonFocusSwipeUpCapture action](self, "action")}];

    if ([v21 numberOfArguments] == 2)
    {
      v24 = [(_TVNonFocusSwipeUpCapture *)self target];
      v23(v24, [(_TVNonFocusSwipeUpCapture *)self action]);
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

      v24 = [(_TVNonFocusSwipeUpCapture *)self target];
      (v23)(v24, [(_TVNonFocusSwipeUpCapture *)self action], self);
    }

    goto LABEL_16;
  }

  if (v13 == 1)
  {
    v26 = [MEMORY[0x277D759A0] mainScreen];
    v14 = [v26 focusedView];
    objc_storeWeak(&self->_initiallyFocusedView, v14);
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