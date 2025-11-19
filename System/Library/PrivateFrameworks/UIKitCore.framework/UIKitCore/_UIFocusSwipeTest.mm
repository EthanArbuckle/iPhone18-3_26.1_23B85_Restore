@interface _UIFocusSwipeTest
- (UIWindow)window;
- (_UIFocusSwipeTest)initWithIdentifier:(id)a3;
- (void)main;
- (void)prepareWithCompletionHandler:(id)a3;
@end

@implementation _UIFocusSwipeTest

- (_UIFocusSwipeTest)initWithIdentifier:(id)a3
{
  v4.receiver = self;
  v4.super_class = _UIFocusSwipeTest;
  result = [(_UIFocusTest *)&v4 initWithIdentifier:a3];
  if (result)
  {
    result->_swipeAxis = 1;
  }

  return result;
}

- (void)prepareWithCompletionHandler:(id)a3
{
  v9 = a3;
  v5 = [(_UIFocusSwipeTest *)self window];

  if (!v5)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"_UIFocusSwipeTest.m" lineNumber:63 description:@"Focus swipe test must have a window in order to start."];
  }

  if (![(_UIFocusSwipeTest *)self swipeAxis])
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"_UIFocusSwipeTest.m" lineNumber:64 description:@"Focus swipe test must have a swipe axis in order to start."];
  }

  if ([(_UIFocusSwipeTest *)self swipeAxis]== 1)
  {
    self->_eventCount = 57;
    v6 = &horizontalSwipingEvents;
  }

  else if ([(_UIFocusSwipeTest *)self swipeAxis]== 2)
  {
    self->_eventCount = 46;
    v6 = &verticalSwipingEvents;
  }

  else
  {
    v6 = 0;
    self->_eventCount = 0;
  }

  self->_events = v6;
  v9[2]();
}

- (void)main
{
  v3 = objc_alloc_init(_UIFocusEngineFakePanGestureRecognizer);
  v4 = [(_UIFocusSwipeTest *)self window];
  v5 = [v4 _focusEventRecognizer];

  v6 = [v5 _uiktest_panGestureRecognizer];
  [v5 _uiktest_setPanGestureRecognizer:v3];
  v7 = dispatch_queue_create("_UIFocusSwipeTest", 0);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __25___UIFocusSwipeTest_main__block_invoke;
  v11[3] = &unk_1E70F6B40;
  v11[4] = self;
  v12 = v3;
  v13 = v5;
  v14 = v6;
  v8 = v6;
  v9 = v5;
  v10 = v3;
  dispatch_async(v7, v11);
}

- (UIWindow)window
{
  WeakRetained = objc_loadWeakRetained(&self->_window);

  return WeakRetained;
}

@end