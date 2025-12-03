@interface _UIFeedbackGeneratorGestureRecognizerCompletedTouch
+ (id)completedTouchFromTouch:(id)touch;
- (CGPoint)locationInView:(id)view;
- (CGPoint)locationInWindow;
- (UIWindow)window;
@end

@implementation _UIFeedbackGeneratorGestureRecognizerCompletedTouch

+ (id)completedTouchFromTouch:(id)touch
{
  touchCopy = touch;
  v5 = objc_alloc_init(self);
  *(v5 + 2) = [touchCopy type];
  *(v5 + 8) = [touchCopy _isPointerTouch];
  *(v5 + 4) = [touchCopy _pointerSenderID];
  *(v5 + 3) = [touchCopy _senderID];
  window = [touchCopy window];
  objc_storeWeak(v5 + 5, window);

  v7 = [(UITouch *)touchCopy _locationInWindow:?];
  v9 = v8;

  *(v5 + 6) = v7;
  *(v5 + 7) = v9;

  return v5;
}

- (CGPoint)locationInView:(id)view
{
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_window);
  [viewCopy convertPoint:WeakRetained fromView:{self->_locationInWindow.x, self->_locationInWindow.y}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (CGPoint)locationInWindow
{
  x = self->_locationInWindow.x;
  y = self->_locationInWindow.y;
  result.y = y;
  result.x = x;
  return result;
}

- (UIWindow)window
{
  WeakRetained = objc_loadWeakRetained(&self->_window);

  return WeakRetained;
}

@end