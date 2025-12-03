@interface _UIFocusSwipeTest
- (UIWindow)window;
- (_UIFocusSwipeTest)initWithIdentifier:(id)identifier;
- (void)main;
- (void)prepareWithCompletionHandler:(id)handler;
@end

@implementation _UIFocusSwipeTest

- (_UIFocusSwipeTest)initWithIdentifier:(id)identifier
{
  v4.receiver = self;
  v4.super_class = _UIFocusSwipeTest;
  result = [(_UIFocusTest *)&v4 initWithIdentifier:identifier];
  if (result)
  {
    result->_swipeAxis = 1;
  }

  return result;
}

- (void)prepareWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  window = [(_UIFocusSwipeTest *)self window];

  if (!window)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusSwipeTest.m" lineNumber:63 description:@"Focus swipe test must have a window in order to start."];
  }

  if (![(_UIFocusSwipeTest *)self swipeAxis])
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIFocusSwipeTest.m" lineNumber:64 description:@"Focus swipe test must have a swipe axis in order to start."];
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
  handlerCopy[2]();
}

- (void)main
{
  v3 = objc_alloc_init(_UIFocusEngineFakePanGestureRecognizer);
  window = [(_UIFocusSwipeTest *)self window];
  _focusEventRecognizer = [window _focusEventRecognizer];

  _uiktest_panGestureRecognizer = [_focusEventRecognizer _uiktest_panGestureRecognizer];
  [_focusEventRecognizer _uiktest_setPanGestureRecognizer:v3];
  v7 = dispatch_queue_create("_UIFocusSwipeTest", 0);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __25___UIFocusSwipeTest_main__block_invoke;
  v11[3] = &unk_1E70F6B40;
  v11[4] = self;
  v12 = v3;
  v13 = _focusEventRecognizer;
  v14 = _uiktest_panGestureRecognizer;
  v8 = _uiktest_panGestureRecognizer;
  v9 = _focusEventRecognizer;
  v10 = v3;
  dispatch_async(v7, v11);
}

- (UIWindow)window
{
  WeakRetained = objc_loadWeakRetained(&self->_window);

  return WeakRetained;
}

@end