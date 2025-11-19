@interface _UIScrollViewMockPanGestureRecognizer
- (CGPoint)locationInView:(id)a3;
- (CGPoint)translationInView:(id)a3;
- (CGPoint)velocityInView:(id)a3;
- (id)forwardingTargetForSelector:(SEL)a3;
- (void)setTranslation:(CGPoint)a3 inView:(id)a4;
@end

@implementation _UIScrollViewMockPanGestureRecognizer

- (id)forwardingTargetForSelector:(SEL)a3
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = self->_gestureRecognizer;
      goto LABEL_6;
    }

    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = NSStringFromSelector(a3);
    [v7 handleFailureInMethod:a2 object:self file:@"UIScrollView_UIApplicationTesting.m" lineNumber:81 description:{@"UIScrollView is calling %@ not implemented on _UIScrollViewMockPanGestureRecognizer or UIScrollViewPanGestureRecognizer", v8}];
  }

  v6 = 0;
LABEL_6:

  return v6;
}

- (CGPoint)translationInView:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = [(UIGestureRecognizer *)self->_gestureRecognizer view];

    if (v6 != v5)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      [v7 handleFailureInMethod:a2 object:self file:@"UIScrollView_UIApplicationTesting.m" lineNumber:98 description:@"expected different view"];
    }
  }

  x = self->_translation.x;
  y = self->_translation.y;

  v10 = x;
  v11 = y;
  result.y = v11;
  result.x = v10;
  return result;
}

- (void)setTranslation:(CGPoint)a3 inView:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  if (v8)
  {
    v11 = v8;
    v9 = [(UIGestureRecognizer *)self->_gestureRecognizer view];

    v8 = v11;
    if (v9 != v11)
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      [v10 handleFailureInMethod:a2 object:self file:@"UIScrollView_UIApplicationTesting.m" lineNumber:104 description:@"expected different view"];

      v8 = v11;
    }
  }

  self->_translation.x = x;
  self->_translation.y = y;
}

- (CGPoint)velocityInView:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = [(UIGestureRecognizer *)self->_gestureRecognizer view];

    if (v6 != v5)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      [v7 handleFailureInMethod:a2 object:self file:@"UIScrollView_UIApplicationTesting.m" lineNumber:110 description:@"expected different view"];
    }
  }

  x = self->_velocity.x;
  y = self->_velocity.y;

  v10 = x;
  v11 = y;
  result.y = v11;
  result.x = v10;
  return result;
}

- (CGPoint)locationInView:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = [(UIGestureRecognizer *)self->_gestureRecognizer view];

    if (v6 != v5)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      [v7 handleFailureInMethod:a2 object:self file:@"UIScrollView_UIApplicationTesting.m" lineNumber:116 description:@"expected different view"];
    }
  }

  [v5 frame];
  x = v22.origin.x;
  y = v22.origin.y;
  width = v22.size.width;
  height = v22.size.height;
  MidX = CGRectGetMidX(v22);
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  MidY = CGRectGetMidY(v23);
  v14 = [v5 superview];
  [v5 convertPoint:v14 fromView:{MidX, MidY}];
  v16 = v15;
  v18 = v17;

  v19 = v16;
  v20 = v18;
  result.y = v20;
  result.x = v19;
  return result;
}

@end