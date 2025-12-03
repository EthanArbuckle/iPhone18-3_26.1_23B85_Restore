@interface NCNotificationListTouchEaterManager
- (BOOL)_isPointInWindowSpace:(CGPoint)space insideView:(id)view;
- (BOOL)_shouldReceiveTouch:(id)touch forGestureRecognizer:(id)recognizer;
- (NCNotificationListCoalescingControlsHandler)coalescingControlsHandlerInClearState;
- (NCNotificationListSectionHeaderView)headerViewInClearState;
- (PLSwipeInteraction)swipeInteractionInRevealedState;
- (id)initForView:(id)view;
- (void)_handleEatenTouch:(id)touch;
- (void)_handleEatenTouchBeginStateForGestureRecognizer:(id)recognizer;
- (void)_handleEatenTouchEndStateForGestureRecognizer:(id)recognizer;
- (void)removeTouchGestureRecognizer;
- (void)setCoalescingControlsHandlerInClearState:(id)state;
- (void)setEnabled:(BOOL)enabled;
- (void)setHeaderViewInClearState:(id)state;
- (void)setSwipeInteractionInRevealedState:(id)state;
- (void)setTouchEaterEnabled:(BOOL)enabled;
@end

@implementation NCNotificationListTouchEaterManager

- (PLSwipeInteraction)swipeInteractionInRevealedState
{
  WeakRetained = objc_loadWeakRetained(&self->_swipeInteractionInRevealedState);

  return WeakRetained;
}

- (void)removeTouchGestureRecognizer
{
  view = [(NCTouchEaterGestureRecognizer *)self->_touchEater view];
  [view removeGestureRecognizer:self->_touchEater];
}

- (id)initForView:(id)view
{
  viewCopy = view;
  v13.receiver = self;
  v13.super_class = NCNotificationListTouchEaterManager;
  v5 = [(NCNotificationListTouchEaterManager *)&v13 init];
  if (v5)
  {
    window = [viewCopy window];
    v7 = window;
    touchEater = v5->_touchEater;
    if (touchEater)
    {
      v9 = 1;
    }

    else
    {
      v9 = window == 0;
    }

    if (!v9)
    {
      v10 = [[NCTouchEaterGestureRecognizer alloc] initWithTarget:v5 action:sel__handleEatenTouch_];
      v11 = v5->_touchEater;
      v5->_touchEater = v10;

      [(NCTouchEaterGestureRecognizer *)v5->_touchEater setDelegate:v5];
      [(NCTouchEaterGestureRecognizer *)v5->_touchEater setEnabled:0];
      touchEater = v5->_touchEater;
    }

    [v7 addGestureRecognizer:touchEater];
  }

  return v5;
}

- (void)setHeaderViewInClearState:(id)state
{
  obj = state;
  headerViewInClearState = [(NCNotificationListTouchEaterManager *)self headerViewInClearState];
  if (headerViewInClearState != obj)
  {
    [headerViewInClearState resetClearButtonStateAnimated:1];
    objc_storeWeak(&self->_headerViewInClearState, obj);
  }

  [(NCNotificationListTouchEaterManager *)self setTouchEaterEnabled:obj != 0];
}

- (void)setCoalescingControlsHandlerInClearState:(id)state
{
  obj = state;
  coalescingControlsHandlerInClearState = [(NCNotificationListTouchEaterManager *)self coalescingControlsHandlerInClearState];
  if (coalescingControlsHandlerInClearState != obj)
  {
    [coalescingControlsHandlerInClearState resetClearButtonStateAnimated:1];
    objc_storeWeak(&self->_coalescingControlsHandlerInClearState, obj);
  }

  [(NCNotificationListTouchEaterManager *)self setTouchEaterEnabled:obj != 0];
}

- (void)setSwipeInteractionInRevealedState:(id)state
{
  obj = state;
  swipeInteractionInRevealedState = [(NCNotificationListTouchEaterManager *)self swipeInteractionInRevealedState];
  v5 = obj;
  v6 = swipeInteractionInRevealedState;
  if (swipeInteractionInRevealedState != obj)
  {
    if (obj)
    {
      [swipeInteractionInRevealedState hideActionsAnimated:1 fastAnimation:0 completion:0];
    }

    objc_storeWeak(&self->_swipeInteractionInRevealedState, obj);
    v5 = obj;
  }

  [(NCNotificationListTouchEaterManager *)self setTouchEaterEnabled:v5 != 0];
}

- (void)setTouchEaterEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  touchEater = [(NCNotificationListTouchEaterManager *)self touchEater];
  [touchEater setEnabled:enabledCopy];
}

- (void)setEnabled:(BOOL)enabled
{
  if (enabled)
  {
    swipeInteractionInRevealedState = [(NCNotificationListTouchEaterManager *)self swipeInteractionInRevealedState];
    if (swipeInteractionInRevealedState)
    {
      v5 = 1;
    }

    else
    {
      headerViewInClearState = [(NCNotificationListTouchEaterManager *)self headerViewInClearState];
      if (headerViewInClearState)
      {
        v5 = 1;
      }

      else
      {
        coalescingControlsHandlerInClearState = [(NCNotificationListTouchEaterManager *)self coalescingControlsHandlerInClearState];
        v5 = coalescingControlsHandlerInClearState != 0;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  touchEater = [(NCNotificationListTouchEaterManager *)self touchEater];
  [touchEater setEnabled:v5];
}

- (void)_handleEatenTouch:(id)touch
{
  touchCopy = touch;
  if ([touchCopy state] == 3)
  {
    [(NCNotificationListTouchEaterManager *)self _handleEatenTouchBeginStateForGestureRecognizer:touchCopy];
  }

  [(NCNotificationListTouchEaterManager *)self _handleEatenTouchEndStateForGestureRecognizer:touchCopy];
}

- (BOOL)_isPointInWindowSpace:(CGPoint)space insideView:(id)view
{
  y = space.y;
  x = space.x;
  viewCopy = view;
  [viewCopy bounds];
  [viewCopy convertRect:0 toView:?];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  v19 = x;
  v20 = y;

  return CGRectContainsPoint(*&v15, *&v19);
}

- (BOOL)_shouldReceiveTouch:(id)touch forGestureRecognizer:(id)recognizer
{
  touchCopy = touch;
  swipeInteractionInRevealedState = [(NCNotificationListTouchEaterManager *)self swipeInteractionInRevealedState];
  if (swipeInteractionInRevealedState)
  {
    [touchCopy locationInView:0];
    v8 = v7;
    v10 = v9;
    view = [swipeInteractionInRevealedState view];
    v12 = [(NCNotificationListTouchEaterManager *)self _isPointInWindowSpace:view insideView:v8, v10];

    if (!v12)
    {
      [swipeInteractionInRevealedState hideActionsAnimated:1 fastAnimation:0 completion:0];
    }
  }

  coalescingControlsHandlerInClearState = [(NCNotificationListTouchEaterManager *)self coalescingControlsHandlerInClearState];
  [touchCopy locationInView:0];
  v16 = v14;
  v17 = v15;
  if (coalescingControlsHandlerInClearState && ([coalescingControlsHandlerInClearState shouldReceiveTouchAtPointInWindowSpace:{v14, v15}] & 1) == 0)
  {
    [coalescingControlsHandlerInClearState resetClearButtonStateAnimated:1];
  }

  WeakRetained = objc_loadWeakRetained(&self->_headerViewInClearState);
  v19 = WeakRetained;
  if (WeakRetained)
  {
    clearButton = [WeakRetained clearButton];
    [clearButton convertPoint:0 fromView:{v16, v17}];
    if (([clearButton pointInside:0 withEvent:?] & 1) == 0)
    {
      [v19 resetClearButtonStateAnimated:1];
    }
  }

  return 0;
}

- (void)_handleEatenTouchBeginStateForGestureRecognizer:(id)recognizer
{
  swipeInteractionInRevealedState = [(NCNotificationListTouchEaterManager *)self swipeInteractionInRevealedState];
  [swipeInteractionInRevealedState hideActionsAnimated:1 fastAnimation:0 completion:0];

  headerViewInClearState = [(NCNotificationListTouchEaterManager *)self headerViewInClearState];
  [headerViewInClearState resetClearButtonStateAnimated:1];

  coalescingControlsHandlerInClearState = [(NCNotificationListTouchEaterManager *)self coalescingControlsHandlerInClearState];
  [coalescingControlsHandlerInClearState resetClearButtonStateAnimated:1];
}

- (void)_handleEatenTouchEndStateForGestureRecognizer:(id)recognizer
{
  [(NCNotificationListTouchEaterManager *)self setSwipeInteractionInRevealedState:0];
  [(NCNotificationListTouchEaterManager *)self setHeaderViewInClearState:0];

  [(NCNotificationListTouchEaterManager *)self setCoalescingControlsHandlerInClearState:0];
}

- (NCNotificationListSectionHeaderView)headerViewInClearState
{
  WeakRetained = objc_loadWeakRetained(&self->_headerViewInClearState);

  return WeakRetained;
}

- (NCNotificationListCoalescingControlsHandler)coalescingControlsHandlerInClearState
{
  WeakRetained = objc_loadWeakRetained(&self->_coalescingControlsHandlerInClearState);

  return WeakRetained;
}

@end