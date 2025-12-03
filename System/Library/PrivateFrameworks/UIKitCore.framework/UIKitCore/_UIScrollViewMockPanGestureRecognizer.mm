@interface _UIScrollViewMockPanGestureRecognizer
- (CGPoint)locationInView:(id)view;
- (CGPoint)translationInView:(id)view;
- (CGPoint)velocityInView:(id)view;
- (id)forwardingTargetForSelector:(SEL)selector;
- (void)setTranslation:(CGPoint)translation inView:(id)view;
@end

@implementation _UIScrollViewMockPanGestureRecognizer

- (id)forwardingTargetForSelector:(SEL)selector
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = self->_gestureRecognizer;
      goto LABEL_6;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = NSStringFromSelector(selector);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIScrollView_UIApplicationTesting.m" lineNumber:81 description:{@"UIScrollView is calling %@ not implemented on _UIScrollViewMockPanGestureRecognizer or UIScrollViewPanGestureRecognizer", v8}];
  }

  v6 = 0;
LABEL_6:

  return v6;
}

- (CGPoint)translationInView:(id)view
{
  viewCopy = view;
  if (viewCopy)
  {
    view = [(UIGestureRecognizer *)self->_gestureRecognizer view];

    if (view != viewCopy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UIScrollView_UIApplicationTesting.m" lineNumber:98 description:@"expected different view"];
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

- (void)setTranslation:(CGPoint)translation inView:(id)view
{
  y = translation.y;
  x = translation.x;
  viewCopy = view;
  if (viewCopy)
  {
    v11 = viewCopy;
    view = [(UIGestureRecognizer *)self->_gestureRecognizer view];

    viewCopy = v11;
    if (view != v11)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UIScrollView_UIApplicationTesting.m" lineNumber:104 description:@"expected different view"];

      viewCopy = v11;
    }
  }

  self->_translation.x = x;
  self->_translation.y = y;
}

- (CGPoint)velocityInView:(id)view
{
  viewCopy = view;
  if (viewCopy)
  {
    view = [(UIGestureRecognizer *)self->_gestureRecognizer view];

    if (view != viewCopy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UIScrollView_UIApplicationTesting.m" lineNumber:110 description:@"expected different view"];
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

- (CGPoint)locationInView:(id)view
{
  viewCopy = view;
  if (viewCopy)
  {
    view = [(UIGestureRecognizer *)self->_gestureRecognizer view];

    if (view != viewCopy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UIScrollView_UIApplicationTesting.m" lineNumber:116 description:@"expected different view"];
    }
  }

  [viewCopy frame];
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
  superview = [viewCopy superview];
  [viewCopy convertPoint:superview fromView:{MidX, MidY}];
  v16 = v15;
  v18 = v17;

  v19 = v16;
  v20 = v18;
  result.y = v20;
  result.x = v19;
  return result;
}

@end