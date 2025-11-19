@interface UIScrollViewDelayedTouchesBeganGestureRecognizer
- (id)_clientView;
- (void)_resetGestureRecognizer;
- (void)clearTimer;
- (void)dealloc;
- (void)sendDelayedTouches;
- (void)sendTouchesShouldBeginForDelayedTouches:(id)a3;
- (void)sendTouchesShouldBeginForTouches:(id)a3 withEvent:(id)a4;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation UIScrollViewDelayedTouchesBeganGestureRecognizer

- (void)_resetGestureRecognizer
{
  [(UIScrollViewDelayedTouchesBeganGestureRecognizer *)self clearTimer];
  v3.receiver = self;
  v3.super_class = UIScrollViewDelayedTouchesBeganGestureRecognizer;
  [(UIGestureRecognizer *)&v3 _resetGestureRecognizer];
}

- (void)clearTimer
{
  [(UIDelayedAction *)self->_touchDelay unschedule];
  touchDelay = self->_touchDelay;
  self->_touchDelay = 0;
}

- (void)dealloc
{
  [(UIScrollViewDelayedTouchesBeganGestureRecognizer *)self clearTimer];
  v3.receiver = self;
  v3.super_class = UIScrollViewDelayedTouchesBeganGestureRecognizer;
  [(UIGestureRecognizer *)&v3 dealloc];
}

- (id)_clientView
{
  WeakRetained = objc_loadWeakRetained(&self->_client);
  if (!WeakRetained)
  {
    v4 = [(UIGestureRecognizer *)self view];
    if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      v5 = objc_opt_respondsToSelector();

      if (v5)
      {
        WeakRetained = v4;
        objc_storeWeak(&self->_client, WeakRetained);
LABEL_11:

        goto LABEL_12;
      }
    }

    else
    {
    }

    WeakRetained = 0;
    goto LABEL_11;
  }

LABEL_12:

  return WeakRetained;
}

- (void)sendDelayedTouches
{
  if (self)
  {
    v3 = [(NSMutableArray *)self->super._delayedTouches copy];
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [(UIScrollViewDelayedTouchesBeganGestureRecognizer *)self sendTouchesShouldBeginForDelayedTouches:v3];
}

- (void)sendTouchesShouldBeginForTouches:(id)a3 withEvent:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [(UIScrollViewDelayedTouchesBeganGestureRecognizer *)self clearTimer];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (!v9)
  {

LABEL_14:
    [(UIGestureRecognizer *)self _failWithReason:@"touchesDenied"];
    goto LABEL_15;
  }

  v10 = v9;
  v11 = *v22;
  v20 = 5;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v22 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v21 + 1) + 8 * i);
      v14 = [v13 view];
      v15 = [(UIScrollViewDelayedTouchesBeganGestureRecognizer *)self _clientView];
      ShouldBegin = _UIViewTouchShouldBegin(v13, v7, v14, v15);

      if (ShouldBegin)
      {
        v17 = UIApp;
        v18 = [v13 window];
        v19 = [v17 _touchesEventForWindow:v18];

        [(UIGestureRecognizer *)self ignoreTouch:v13 forEvent:v19];
      }

      else
      {
        v20 = 3;
      }
    }

    v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  }

  while (v10);

  if (v20 == 5)
  {
    goto LABEL_14;
  }

  [(UIGestureRecognizer *)self setState:?];
LABEL_15:
}

- (void)sendTouchesShouldBeginForDelayedTouches:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(UIScrollViewDelayedTouchesBeganGestureRecognizer *)self clearTimer];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (!v6)
  {

LABEL_21:
    [(UIGestureRecognizer *)self _failWithReason:@"delayedTouchesDenied"];
    goto LABEL_22;
  }

  v7 = v6;
  obj = v5;
  v23 = *v25;
  v21 = 5;
  do
  {
    v8 = 0;
    do
    {
      if (*v25 != v23)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v24 + 1) + 8 * v8);
      if (v9)
      {
        v10 = *(v9 + 24);
        v11 = *(v9 + 48);
        v12 = *(v9 + 32);
      }

      else
      {
        v11 = 0;
        v10 = 0;
        v12 = 0;
      }

      v13 = v12;
      v14 = [v13 view];
      v15 = [(UIScrollViewDelayedTouchesBeganGestureRecognizer *)self _clientView];
      ShouldBegin = _UIViewTouchShouldBegin(v10, v11, v14, v15);

      if (ShouldBegin)
      {
        if (v9)
        {
          v17 = *(v9 + 24);
          v18 = *(v9 + 48);
        }

        else
        {
          v17 = 0;
          v18 = 0;
        }

        v19 = v18;
        [(UIGestureRecognizer *)self ignoreTouch:v17 forEvent:v19];
      }

      else
      {
        v21 = 3;
      }

      ++v8;
    }

    while (v7 != v8);
    v5 = obj;
    v20 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    v7 = v20;
  }

  while (v20);

  if (v21 == 5)
  {
    goto LABEL_21;
  }

  [(UIGestureRecognizer *)self setState:?];
LABEL_22:
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v16 = a4;
  v6 = a3;
  [(UIScrollViewDelayedTouchesBeganGestureRecognizer *)self clearTimer];
  v7 = [(UIScrollViewDelayedTouchesBeganGestureRecognizer *)self _clientView];
  v8 = [v7 delaysContentTouches];

  if (v8)
  {
    v9 = [(UIScrollViewDelayedTouchesBeganGestureRecognizer *)self _shouldMakeTimerForDelayedContentTouches:v6];

    if (v9)
    {
      v10 = [UIDelayedAction alloc];
      v11 = [(UIScrollViewDelayedTouchesBeganGestureRecognizer *)self _clientView];
      [v11 _touchDelayForScrollDetection];
      v12 = [(UIDelayedAction *)v10 initWithTarget:self action:sel_sendDelayedTouches userInfo:0 delay:*MEMORY[0x1E695DA28] mode:?];
      touchDelay = self->_touchDelay;
      self->_touchDelay = v12;
    }

    v6 = [(UIGestureRecognizer *)self _activeTouchesForEvent:v16];
    [(UIGestureRecognizer *)self _centroidOfTouches:v6 excludingEnded:0];
    self->_startSceneReferenceLocation.x = v14;
    self->_startSceneReferenceLocation.y = v15;
  }

  else
  {
    [(UIScrollViewDelayedTouchesBeganGestureRecognizer *)self sendTouchesShouldBeginForTouches:v6 withEvent:v16];
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v34 objects:v38 count:16];
  v10 = v8;
  if (v9)
  {
    v11 = v9;
    v12 = *v35;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v35 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = [*(*(&v34 + 1) + 8 * i) view];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {

          v10 = [(UIScrollViewDelayedTouchesBeganGestureRecognizer *)self _clientView];
          [v10 _scrollHysteresis];
          v17 = v16;
          v18 = [v10 _canScrollX];
          v19 = [v10 _canScrollY];
          v20 = [(UIGestureRecognizer *)self _activeTouchesForEvent:v7];
          [(UIGestureRecognizer *)self _centroidOfTouches:v20 excludingEnded:0];
          v22 = v21;
          v24 = v23;

          v25 = v22 - self->_startSceneReferenceLocation.x;
          v26 = v24 - self->_startSceneReferenceLocation.y;
          v27 = [(UIGestureRecognizer *)self view];
          v28 = [v27 window];
          if (v28)
          {
            v29 = [v27 window];
            [v29 _convertOffsetFromSceneReferenceSpace:{v25, v26}];
            v25 = [(UIView *)v27 _convertOffset:v30 fromView:v31];
            v26 = v32;
          }

          v33 = v17;
          if ((v18 & 1) == 0 && fabs(v25) > v33 || (v19 & 1) == 0 && fabs(v26) > v33)
          {
            [(UIScrollViewDelayedTouchesBeganGestureRecognizer *)self sendDelayedTouches];
          }

          goto LABEL_18;
        }
      }

      v11 = [v8 countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }

    v10 = v8;
  }

LABEL_18:
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  if ([(UIGestureRecognizer *)self state:a3]== UIGestureRecognizerStateBegan)
  {

    [(UIGestureRecognizer *)self setState:3];
  }

  else if (self->_touchDelay)
  {
    v5 = [(NSMutableArray *)self->super._delayedTouches copy];
    [(UIScrollViewDelayedTouchesBeganGestureRecognizer *)self sendTouchesShouldBeginForDelayedTouches:v5];
  }

  else
  {

    [(UIGestureRecognizer *)self _failWithReason:@"touchesEnded"];
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  [(UIScrollViewDelayedTouchesBeganGestureRecognizer *)self clearTimer:a3];

  [(UIGestureRecognizer *)self _failWithReason:@"touchesCancelled"];
}

@end