@interface _UIScrollViewMockPinchGestureRecognizer
- (CGPoint)anchorPoint;
- (id)_activeTouchesForEvent:(id)a3;
- (id)forwardingTargetForSelector:(SEL)a3;
@end

@implementation _UIScrollViewMockPinchGestureRecognizer

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
    [v7 handleFailureInMethod:a2 object:self file:@"UIScrollView_UIApplicationTesting.m" lineNumber:156 description:{@"UIScrollView is calling %@ not implemented on _UIScrollViewMockPinchGestureRecognizer or UIScrollViewPanGestureRecognizer", v8}];
  }

  v6 = 0;
LABEL_6:

  return v6;
}

- (CGPoint)anchorPoint
{
  v2 = [(UIGestureRecognizer *)self->_gestureRecognizer view];
  [v2 center];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (id)_activeTouchesForEvent:(id)a3
{
  v3 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"fakeTouch1", @"fakeTouch2", 0}];

  return v3;
}

@end