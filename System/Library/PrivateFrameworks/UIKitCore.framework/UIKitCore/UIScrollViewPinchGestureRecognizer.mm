@interface UIScrollViewPinchGestureRecognizer
- (UIScrollView)scrollView;
- (UIScrollViewPinchGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (_BYTE)_updateHysteresis;
- (void)_transformChangedWithEvent:(id)event;
- (void)removeTarget:(id)target action:(SEL)action;
- (void)setDelegate:(id)delegate;
- (void)setScrollView:(id)view;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation UIScrollViewPinchGestureRecognizer

- (UIScrollView)scrollView
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollView);

  return WeakRetained;
}

- (UIScrollViewPinchGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v10.receiver = self;
  v10.super_class = UIScrollViewPinchGestureRecognizer;
  v5 = [(UIPinchGestureRecognizer *)&v10 initWithTarget:target action:?];
  v6 = v5;
  if (v5)
  {
    if (action)
    {
      actionCopy = action;
    }

    else
    {
      actionCopy = 0;
    }

    v5->_scrollViewAction = actionCopy;
    v8 = v5;
  }

  return v6;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  scrollView = [(UIScrollViewPinchGestureRecognizer *)self scrollView];
  v6 = scrollView;
  if (scrollView && scrollView != delegateCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"UIScrollView's built-in pinch gesture recognizer must have its scroll view as its delegate."];
  }

  v7.receiver = self;
  v7.super_class = UIScrollViewPinchGestureRecognizer;
  [(UIGestureRecognizer *)&v7 setDelegate:delegateCopy];
}

- (void)setScrollView:(id)view
{
  obj = view;
  WeakRetained = objc_loadWeakRetained(&self->_scrollView);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_scrollView, obj);
    [(UIScrollViewPinchGestureRecognizer *)self _updateHysteresis];
    v5 = obj;
  }
}

- (_BYTE)_updateHysteresis
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  scrollView = [result scrollView];
  _parentScrollView = [scrollView _parentScrollView];
  if (!_parentScrollView)
  {

    goto LABEL_8;
  }

  v4 = v1[313];

  if (v4)
  {
LABEL_8:
    v5.receiver = v1;
    v5.super_class = UIScrollViewPinchGestureRecognizer;
    objc_msgSendSuper2(&v5, sel__hysteresis);
    return [v1 _setHysteresis:?];
  }

  return [v1 _setHysteresis:0.0];
}

- (void)removeTarget:(id)target action:(SEL)action
{
  targetCopy = target;
  scrollView = [(UIScrollViewPinchGestureRecognizer *)self scrollView];
  if (scrollView == targetCopy)
  {
    if (self->_scrollViewAction)
    {
      scrollViewAction = self->_scrollViewAction;
    }

    else
    {
      scrollViewAction = 0;
    }

    if (scrollViewAction == action)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"You can't remove a scroll view's target/action pair from its built-in pinch gesture recognizer."];
    }
  }

  else
  {
  }

  v9.receiver = self;
  v9.super_class = UIScrollViewPinchGestureRecognizer;
  [(UIGestureRecognizer *)&v9 removeTarget:targetCopy action:action];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  v8 = [(UIGestureRecognizer *)self _activeTouchesForEvent:eventCopy];
  v9 = [v8 count];

  if (v9 == 2)
  {
    scrollView = [(UIScrollViewPinchGestureRecognizer *)self scrollView];
    [scrollView zoomScale];
    v12 = v11;

    CGAffineTransformMakeScale(&v15, v12, v12);
    v14 = v15;
    [(UIPinchGestureRecognizer *)self setTransform:&v14];
  }

  v13.receiver = self;
  v13.super_class = UIScrollViewPinchGestureRecognizer;
  [(UIGestureRecognizer *)&v13 touchesBegan:beganCopy withEvent:eventCopy];
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  eventCopy = event;
  v10.receiver = self;
  v10.super_class = UIScrollViewPinchGestureRecognizer;
  [(UIGestureRecognizer *)&v10 touchesMoved:moved withEvent:eventCopy];
  if ([(UIGestureRecognizer *)self state]== UIGestureRecognizerStateBegan)
  {
    scrollView = [(UIScrollViewPinchGestureRecognizer *)self scrollView];
    v8 = [eventCopy touchesForGestureRecognizer:self];
    v9 = [scrollView _canCancelContentTouches:v8];

    if ((v9 & 1) == 0)
    {
      [(UIGestureRecognizer *)self _failWithReason:@"contentTouchDelivery"];
    }
  }
}

- (void)_transformChangedWithEvent:(id)event
{
  if ([event phase] == 1)
  {
    scrollView = [(UIScrollViewPinchGestureRecognizer *)self scrollView];
    [scrollView zoomScale];
    v6 = v5;

    CGAffineTransformMakeScale(&v8, v6, v6);
    v7 = v8;
    [(UIPinchGestureRecognizer *)self setTransform:&v7];
  }
}

@end