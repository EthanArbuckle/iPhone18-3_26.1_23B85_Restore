@interface _UIScrollViewMockPinchGestureRecognizer
- (CGPoint)anchorPoint;
- (id)_activeTouchesForEvent:(id)event;
- (id)forwardingTargetForSelector:(SEL)selector;
@end

@implementation _UIScrollViewMockPinchGestureRecognizer

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
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIScrollView_UIApplicationTesting.m" lineNumber:156 description:{@"UIScrollView is calling %@ not implemented on _UIScrollViewMockPinchGestureRecognizer or UIScrollViewPanGestureRecognizer", v8}];
  }

  v6 = 0;
LABEL_6:

  return v6;
}

- (CGPoint)anchorPoint
{
  view = [(UIGestureRecognizer *)self->_gestureRecognizer view];
  [view center];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (id)_activeTouchesForEvent:(id)event
{
  v3 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"fakeTouch1", @"fakeTouch2", 0}];

  return v3;
}

@end