@interface UIScrollViewPagingSwipeGestureRecognizer
- (UIScrollView)scrollView;
- (void)_processNewLocation:(CGPoint)location;
- (void)_resetGestureRecognizer;
- (void)clearTimer;
- (void)dealloc;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation UIScrollViewPagingSwipeGestureRecognizer

- (void)_resetGestureRecognizer
{
  [(UIScrollViewPagingSwipeGestureRecognizer *)self clearTimer];
  self->_directionalFailureCount = 0;
  v3.receiver = self;
  v3.super_class = UIScrollViewPagingSwipeGestureRecognizer;
  [(UIGestureRecognizer *)&v3 _resetGestureRecognizer];
}

- (void)clearTimer
{
  [(UIDelayedAction *)self->_swipeFailureDelay unschedule];
  swipeFailureDelay = self->_swipeFailureDelay;
  self->_swipeFailureDelay = 0;
}

- (UIScrollView)scrollView
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollView);

  return WeakRetained;
}

- (void)dealloc
{
  [(UIScrollViewPagingSwipeGestureRecognizer *)self clearTimer];
  v3.receiver = self;
  v3.super_class = UIScrollViewPagingSwipeGestureRecognizer;
  [(UIGestureRecognizer *)&v3 dealloc];
}

- (void)_processNewLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  scrollView = [(UIScrollViewPagingSwipeGestureRecognizer *)self scrollView];
  view = [(UIGestureRecognizer *)self view];
  v7 = CACurrentMediaTime();
  window = [view window];
  [window _convertOffsetFromSceneReferenceSpace:{x - self->_lastLocation.x, y - self->_lastLocation.y}];
  v11 = [(UIView *)view _convertOffset:v9 fromView:v10];
  v13 = v12;

  v14 = self->_lastTime - v7;
  [scrollView _horizontalVelocity];
  v16 = fabs(v15);
  [scrollView _verticalVelocity];
  if (v16 < 1.0 && fabs(v11 / v14 / 1000.0) >= v16 || (v18 = fabs(v17), v18 < 1.0) && fabs(v13 / v14 / 1000.0) >= v18)
  {
    v20 = @"exceededVelocity";
    goto LABEL_16;
  }

  if ([scrollView _pagingLeft] && v11 < 0.0 || objc_msgSend(scrollView, "_pagingRight") && v11 > 0.0 || objc_msgSend(scrollView, "_pagingUp") && v13 < 0.0 || objc_msgSend(scrollView, "_pagingDown") && v13 > 0.0)
  {
    directionalFailureCount = self->_directionalFailureCount;
    if (directionalFailureCount >= 1)
    {
      v20 = @"directionFailure";
LABEL_16:
      [(UIGestureRecognizer *)self _failWithReason:v20];
      goto LABEL_18;
    }

    self->_directionalFailureCount = directionalFailureCount + 1;
    [(UIDelayedAction *)self->_swipeFailureDelay touch];
  }

  else
  {
    [(UIDelayedAction *)self->_swipeFailureDelay touch];
    self->_directionalFailureCount = 0;
  }

LABEL_18:
  self->_lastLocation.x = x;
  self->_lastLocation.y = y;
  self->_lastTime = v7;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  scrollView = [(UIScrollViewPagingSwipeGestureRecognizer *)self scrollView];
  [(UIScrollViewPagingSwipeGestureRecognizer *)self clearTimer];
  if (([scrollView _pagingLeft] & 1) == 0 && (objc_msgSend(scrollView, "_pagingRight") & 1) == 0 && (objc_msgSend(scrollView, "_pagingUp") & 1) == 0 && (objc_msgSend(scrollView, "_pagingDown") & 1) == 0)
  {
    v8 = @"pagingIsIdle";
    goto LABEL_9;
  }

  if ([beganCopy count] != 1)
  {
    v8 = @"tooManyTouches";
    goto LABEL_9;
  }

  if (self->_swipeFailureDelay)
  {
    v8 = @"swipeIsTooFast";
LABEL_9:
    [(UIGestureRecognizer *)self _failWithReason:v8];
    goto LABEL_10;
  }

  v9 = [UIDelayedAction alloc];
  v10 = [(UIDelayedAction *)v9 initWithTarget:self action:sel_enoughTimeElapsed_ userInfo:0 delay:*MEMORY[0x1E695DA28] mode:0.0833333333];
  swipeFailureDelay = self->_swipeFailureDelay;
  self->_swipeFailureDelay = v10;

  v12 = [eventCopy touchesForGestureRecognizer:self];
  [(UIGestureRecognizer *)self _centroidOfTouches:v12 excludingEnded:0];
  self->_startLocation.x = v13;
  self->_startLocation.y = v14;

  self->_lastLocation = self->_startLocation;
  self->_lastTime = CACurrentMediaTime();
LABEL_10:
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  v5 = [event touchesForGestureRecognizer:self];
  [(UIGestureRecognizer *)self _centroidOfTouches:v5 excludingEnded:0];
  v7 = v6;
  v9 = v8;

  if (self->_lastLocation.x != v7 || self->_lastLocation.y != v9)
  {

    [(UIScrollViewPagingSwipeGestureRecognizer *)self _processNewLocation:v7, v9];
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  eventCopy = event;
  view = [(UIGestureRecognizer *)self view];
  v6 = [eventCopy touchesForGestureRecognizer:self];

  [(UIGestureRecognizer *)self _centroidOfTouches:v6 excludingEnded:0];
  v8 = v7;
  v10 = v9;

  window = [view window];
  [window _convertOffsetFromSceneReferenceSpace:{v8 - self->_startLocation.x, v10 - self->_startLocation.y}];
  v14 = [(UIView *)view _convertOffset:v12 fromView:v13];
  v16 = v15;

  [(UIScrollViewPagingSwipeGestureRecognizer *)self _processNewLocation:v8, v10];
  if (self->_swipeFailureDelay)
  {
    if ([(UIGestureRecognizer *)self state]== UIGestureRecognizerStateFailed)
    {
      goto LABEL_11;
    }

    v17 = fabs(v16);
    if (fabs(v14) > 50.0 || v17 > 50.0)
    {
      [(UIGestureRecognizer *)self setState:3, 50.0, v17];
      goto LABEL_11;
    }

    v19 = @"notEnoughMovement";
  }

  else
  {
    v19 = @"delayMustBeTracked";
  }

  [(UIGestureRecognizer *)self _failWithReason:v19];
LABEL_11:
  [(UIScrollViewPagingSwipeGestureRecognizer *)self clearTimer];
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  [(UIScrollViewPagingSwipeGestureRecognizer *)self clearTimer:cancelled];

  [(UIGestureRecognizer *)self _failWithReason:@"touchesCancelled"];
}

@end