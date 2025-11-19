@interface UIScrollViewPinchGestureRecognizer
- (UIScrollView)scrollView;
- (UIScrollViewPinchGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (_BYTE)_updateHysteresis;
- (void)_transformChangedWithEvent:(id)a3;
- (void)removeTarget:(id)a3 action:(SEL)a4;
- (void)setDelegate:(id)a3;
- (void)setScrollView:(id)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation UIScrollViewPinchGestureRecognizer

- (UIScrollView)scrollView
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollView);

  return WeakRetained;
}

- (UIScrollViewPinchGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v10.receiver = self;
  v10.super_class = UIScrollViewPinchGestureRecognizer;
  v5 = [(UIPinchGestureRecognizer *)&v10 initWithTarget:a3 action:?];
  v6 = v5;
  if (v5)
  {
    if (a4)
    {
      v7 = a4;
    }

    else
    {
      v7 = 0;
    }

    v5->_scrollViewAction = v7;
    v8 = v5;
  }

  return v6;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v5 = [(UIScrollViewPinchGestureRecognizer *)self scrollView];
  v6 = v5;
  if (v5 && v5 != v4)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"UIScrollView's built-in pinch gesture recognizer must have its scroll view as its delegate."];
  }

  v7.receiver = self;
  v7.super_class = UIScrollViewPinchGestureRecognizer;
  [(UIGestureRecognizer *)&v7 setDelegate:v4];
}

- (void)setScrollView:(id)a3
{
  obj = a3;
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
  v2 = [result scrollView];
  v3 = [v2 _parentScrollView];
  if (!v3)
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

- (void)removeTarget:(id)a3 action:(SEL)a4
{
  v6 = a3;
  v7 = [(UIScrollViewPinchGestureRecognizer *)self scrollView];
  if (v7 == v6)
  {
    if (self->_scrollViewAction)
    {
      scrollViewAction = self->_scrollViewAction;
    }

    else
    {
      scrollViewAction = 0;
    }

    if (scrollViewAction == a4)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"You can't remove a scroll view's target/action pair from its built-in pinch gesture recognizer."];
    }
  }

  else
  {
  }

  v9.receiver = self;
  v9.super_class = UIScrollViewPinchGestureRecognizer;
  [(UIGestureRecognizer *)&v9 removeTarget:v6 action:a4];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UIGestureRecognizer *)self _activeTouchesForEvent:v7];
  v9 = [v8 count];

  if (v9 == 2)
  {
    v10 = [(UIScrollViewPinchGestureRecognizer *)self scrollView];
    [v10 zoomScale];
    v12 = v11;

    CGAffineTransformMakeScale(&v15, v12, v12);
    v14 = v15;
    [(UIPinchGestureRecognizer *)self setTransform:&v14];
  }

  v13.receiver = self;
  v13.super_class = UIScrollViewPinchGestureRecognizer;
  [(UIGestureRecognizer *)&v13 touchesBegan:v6 withEvent:v7];
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = UIScrollViewPinchGestureRecognizer;
  [(UIGestureRecognizer *)&v10 touchesMoved:a3 withEvent:v6];
  if ([(UIGestureRecognizer *)self state]== UIGestureRecognizerStateBegan)
  {
    v7 = [(UIScrollViewPinchGestureRecognizer *)self scrollView];
    v8 = [v6 touchesForGestureRecognizer:self];
    v9 = [v7 _canCancelContentTouches:v8];

    if ((v9 & 1) == 0)
    {
      [(UIGestureRecognizer *)self _failWithReason:@"contentTouchDelivery"];
    }
  }
}

- (void)_transformChangedWithEvent:(id)a3
{
  if ([a3 phase] == 1)
  {
    v4 = [(UIScrollViewPinchGestureRecognizer *)self scrollView];
    [v4 zoomScale];
    v6 = v5;

    CGAffineTransformMakeScale(&v8, v6, v6);
    v7 = v8;
    [(UIPinchGestureRecognizer *)self setTransform:&v7];
  }
}

@end