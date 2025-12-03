@interface UIScrollViewDelayedTouchesBeganGestureRecognizer
- (id)_clientView;
- (void)_resetGestureRecognizer;
- (void)clearTimer;
- (void)dealloc;
- (void)sendDelayedTouches;
- (void)sendTouchesShouldBeginForDelayedTouches:(id)touches;
- (void)sendTouchesShouldBeginForTouches:(id)touches withEvent:(id)event;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
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
    view = [(UIGestureRecognizer *)self view];
    if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      v5 = objc_opt_respondsToSelector();

      if (v5)
      {
        WeakRetained = view;
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

- (void)sendTouchesShouldBeginForTouches:(id)touches withEvent:(id)event
{
  v26 = *MEMORY[0x1E69E9840];
  touchesCopy = touches;
  eventCopy = event;
  [(UIScrollViewDelayedTouchesBeganGestureRecognizer *)self clearTimer];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = touchesCopy;
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
      view = [v13 view];
      _clientView = [(UIScrollViewDelayedTouchesBeganGestureRecognizer *)self _clientView];
      ShouldBegin = _UIViewTouchShouldBegin(v13, eventCopy, view, _clientView);

      if (ShouldBegin)
      {
        v17 = UIApp;
        window = [v13 window];
        v19 = [v17 _touchesEventForWindow:window];

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

- (void)sendTouchesShouldBeginForDelayedTouches:(id)touches
{
  v29 = *MEMORY[0x1E69E9840];
  touchesCopy = touches;
  [(UIScrollViewDelayedTouchesBeganGestureRecognizer *)self clearTimer];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = touchesCopy;
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
      view = [v13 view];
      _clientView = [(UIScrollViewDelayedTouchesBeganGestureRecognizer *)self _clientView];
      ShouldBegin = _UIViewTouchShouldBegin(v10, v11, view, _clientView);

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

- (void)touchesBegan:(id)began withEvent:(id)event
{
  eventCopy = event;
  beganCopy = began;
  [(UIScrollViewDelayedTouchesBeganGestureRecognizer *)self clearTimer];
  _clientView = [(UIScrollViewDelayedTouchesBeganGestureRecognizer *)self _clientView];
  delaysContentTouches = [_clientView delaysContentTouches];

  if (delaysContentTouches)
  {
    v9 = [(UIScrollViewDelayedTouchesBeganGestureRecognizer *)self _shouldMakeTimerForDelayedContentTouches:beganCopy];

    if (v9)
    {
      v10 = [UIDelayedAction alloc];
      _clientView2 = [(UIScrollViewDelayedTouchesBeganGestureRecognizer *)self _clientView];
      [_clientView2 _touchDelayForScrollDetection];
      v12 = [(UIDelayedAction *)v10 initWithTarget:self action:sel_sendDelayedTouches userInfo:0 delay:*MEMORY[0x1E695DA28] mode:?];
      touchDelay = self->_touchDelay;
      self->_touchDelay = v12;
    }

    beganCopy = [(UIGestureRecognizer *)self _activeTouchesForEvent:eventCopy];
    [(UIGestureRecognizer *)self _centroidOfTouches:beganCopy excludingEnded:0];
    self->_startSceneReferenceLocation.x = v14;
    self->_startSceneReferenceLocation.y = v15;
  }

  else
  {
    [(UIScrollViewDelayedTouchesBeganGestureRecognizer *)self sendTouchesShouldBeginForTouches:beganCopy withEvent:eventCopy];
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  v39 = *MEMORY[0x1E69E9840];
  movedCopy = moved;
  eventCopy = event;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v8 = movedCopy;
  v9 = [v8 countByEnumeratingWithState:&v34 objects:v38 count:16];
  _clientView = v8;
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

        view = [*(*(&v34 + 1) + 8 * i) view];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {

          _clientView = [(UIScrollViewDelayedTouchesBeganGestureRecognizer *)self _clientView];
          [_clientView _scrollHysteresis];
          v17 = v16;
          _canScrollX = [_clientView _canScrollX];
          _canScrollY = [_clientView _canScrollY];
          v20 = [(UIGestureRecognizer *)self _activeTouchesForEvent:eventCopy];
          [(UIGestureRecognizer *)self _centroidOfTouches:v20 excludingEnded:0];
          v22 = v21;
          v24 = v23;

          v25 = v22 - self->_startSceneReferenceLocation.x;
          v26 = v24 - self->_startSceneReferenceLocation.y;
          view2 = [(UIGestureRecognizer *)self view];
          window = [view2 window];
          if (window)
          {
            window2 = [view2 window];
            [window2 _convertOffsetFromSceneReferenceSpace:{v25, v26}];
            v25 = [(UIView *)view2 _convertOffset:v30 fromView:v31];
            v26 = v32;
          }

          v33 = v17;
          if ((_canScrollX & 1) == 0 && fabs(v25) > v33 || (_canScrollY & 1) == 0 && fabs(v26) > v33)
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

    _clientView = v8;
  }

LABEL_18:
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  if ([(UIGestureRecognizer *)self state:ended]== UIGestureRecognizerStateBegan)
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

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  [(UIScrollViewDelayedTouchesBeganGestureRecognizer *)self clearTimer:cancelled];

  [(UIGestureRecognizer *)self _failWithReason:@"touchesCancelled"];
}

@end