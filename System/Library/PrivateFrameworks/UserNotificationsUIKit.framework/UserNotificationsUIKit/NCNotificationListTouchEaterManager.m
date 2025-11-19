@interface NCNotificationListTouchEaterManager
- (BOOL)_isPointInWindowSpace:(CGPoint)a3 insideView:(id)a4;
- (BOOL)_shouldReceiveTouch:(id)a3 forGestureRecognizer:(id)a4;
- (NCNotificationListCoalescingControlsHandler)coalescingControlsHandlerInClearState;
- (NCNotificationListSectionHeaderView)headerViewInClearState;
- (PLSwipeInteraction)swipeInteractionInRevealedState;
- (id)initForView:(id)a3;
- (void)_handleEatenTouch:(id)a3;
- (void)_handleEatenTouchBeginStateForGestureRecognizer:(id)a3;
- (void)_handleEatenTouchEndStateForGestureRecognizer:(id)a3;
- (void)removeTouchGestureRecognizer;
- (void)setCoalescingControlsHandlerInClearState:(id)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setHeaderViewInClearState:(id)a3;
- (void)setSwipeInteractionInRevealedState:(id)a3;
- (void)setTouchEaterEnabled:(BOOL)a3;
@end

@implementation NCNotificationListTouchEaterManager

- (PLSwipeInteraction)swipeInteractionInRevealedState
{
  WeakRetained = objc_loadWeakRetained(&self->_swipeInteractionInRevealedState);

  return WeakRetained;
}

- (void)removeTouchGestureRecognizer
{
  v3 = [(NCTouchEaterGestureRecognizer *)self->_touchEater view];
  [v3 removeGestureRecognizer:self->_touchEater];
}

- (id)initForView:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = NCNotificationListTouchEaterManager;
  v5 = [(NCNotificationListTouchEaterManager *)&v13 init];
  if (v5)
  {
    v6 = [v4 window];
    v7 = v6;
    touchEater = v5->_touchEater;
    if (touchEater)
    {
      v9 = 1;
    }

    else
    {
      v9 = v6 == 0;
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

- (void)setHeaderViewInClearState:(id)a3
{
  obj = a3;
  v4 = [(NCNotificationListTouchEaterManager *)self headerViewInClearState];
  if (v4 != obj)
  {
    [v4 resetClearButtonStateAnimated:1];
    objc_storeWeak(&self->_headerViewInClearState, obj);
  }

  [(NCNotificationListTouchEaterManager *)self setTouchEaterEnabled:obj != 0];
}

- (void)setCoalescingControlsHandlerInClearState:(id)a3
{
  obj = a3;
  v4 = [(NCNotificationListTouchEaterManager *)self coalescingControlsHandlerInClearState];
  if (v4 != obj)
  {
    [v4 resetClearButtonStateAnimated:1];
    objc_storeWeak(&self->_coalescingControlsHandlerInClearState, obj);
  }

  [(NCNotificationListTouchEaterManager *)self setTouchEaterEnabled:obj != 0];
}

- (void)setSwipeInteractionInRevealedState:(id)a3
{
  obj = a3;
  v4 = [(NCNotificationListTouchEaterManager *)self swipeInteractionInRevealedState];
  v5 = obj;
  v6 = v4;
  if (v4 != obj)
  {
    if (obj)
    {
      [v4 hideActionsAnimated:1 fastAnimation:0 completion:0];
    }

    objc_storeWeak(&self->_swipeInteractionInRevealedState, obj);
    v5 = obj;
  }

  [(NCNotificationListTouchEaterManager *)self setTouchEaterEnabled:v5 != 0];
}

- (void)setTouchEaterEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(NCNotificationListTouchEaterManager *)self touchEater];
  [v4 setEnabled:v3];
}

- (void)setEnabled:(BOOL)a3
{
  if (a3)
  {
    v4 = [(NCNotificationListTouchEaterManager *)self swipeInteractionInRevealedState];
    if (v4)
    {
      v5 = 1;
    }

    else
    {
      v6 = [(NCNotificationListTouchEaterManager *)self headerViewInClearState];
      if (v6)
      {
        v5 = 1;
      }

      else
      {
        v7 = [(NCNotificationListTouchEaterManager *)self coalescingControlsHandlerInClearState];
        v5 = v7 != 0;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v8 = [(NCNotificationListTouchEaterManager *)self touchEater];
  [v8 setEnabled:v5];
}

- (void)_handleEatenTouch:(id)a3
{
  v4 = a3;
  if ([v4 state] == 3)
  {
    [(NCNotificationListTouchEaterManager *)self _handleEatenTouchBeginStateForGestureRecognizer:v4];
  }

  [(NCNotificationListTouchEaterManager *)self _handleEatenTouchEndStateForGestureRecognizer:v4];
}

- (BOOL)_isPointInWindowSpace:(CGPoint)a3 insideView:(id)a4
{
  y = a3.y;
  x = a3.x;
  v6 = a4;
  [v6 bounds];
  [v6 convertRect:0 toView:?];
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

- (BOOL)_shouldReceiveTouch:(id)a3 forGestureRecognizer:(id)a4
{
  v5 = a3;
  v6 = [(NCNotificationListTouchEaterManager *)self swipeInteractionInRevealedState];
  if (v6)
  {
    [v5 locationInView:0];
    v8 = v7;
    v10 = v9;
    v11 = [v6 view];
    v12 = [(NCNotificationListTouchEaterManager *)self _isPointInWindowSpace:v11 insideView:v8, v10];

    if (!v12)
    {
      [v6 hideActionsAnimated:1 fastAnimation:0 completion:0];
    }
  }

  v13 = [(NCNotificationListTouchEaterManager *)self coalescingControlsHandlerInClearState];
  [v5 locationInView:0];
  v16 = v14;
  v17 = v15;
  if (v13 && ([v13 shouldReceiveTouchAtPointInWindowSpace:{v14, v15}] & 1) == 0)
  {
    [v13 resetClearButtonStateAnimated:1];
  }

  WeakRetained = objc_loadWeakRetained(&self->_headerViewInClearState);
  v19 = WeakRetained;
  if (WeakRetained)
  {
    v20 = [WeakRetained clearButton];
    [v20 convertPoint:0 fromView:{v16, v17}];
    if (([v20 pointInside:0 withEvent:?] & 1) == 0)
    {
      [v19 resetClearButtonStateAnimated:1];
    }
  }

  return 0;
}

- (void)_handleEatenTouchBeginStateForGestureRecognizer:(id)a3
{
  v4 = [(NCNotificationListTouchEaterManager *)self swipeInteractionInRevealedState];
  [v4 hideActionsAnimated:1 fastAnimation:0 completion:0];

  v5 = [(NCNotificationListTouchEaterManager *)self headerViewInClearState];
  [v5 resetClearButtonStateAnimated:1];

  v6 = [(NCNotificationListTouchEaterManager *)self coalescingControlsHandlerInClearState];
  [v6 resetClearButtonStateAnimated:1];
}

- (void)_handleEatenTouchEndStateForGestureRecognizer:(id)a3
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