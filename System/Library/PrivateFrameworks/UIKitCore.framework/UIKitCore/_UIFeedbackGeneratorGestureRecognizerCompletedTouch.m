@interface _UIFeedbackGeneratorGestureRecognizerCompletedTouch
+ (id)completedTouchFromTouch:(id)a3;
- (CGPoint)locationInView:(id)a3;
- (CGPoint)locationInWindow;
- (UIWindow)window;
@end

@implementation _UIFeedbackGeneratorGestureRecognizerCompletedTouch

+ (id)completedTouchFromTouch:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  *(v5 + 2) = [v4 type];
  *(v5 + 8) = [v4 _isPointerTouch];
  *(v5 + 4) = [v4 _pointerSenderID];
  *(v5 + 3) = [v4 _senderID];
  v6 = [v4 window];
  objc_storeWeak(v5 + 5, v6);

  v7 = [(UITouch *)v4 _locationInWindow:?];
  v9 = v8;

  *(v5 + 6) = v7;
  *(v5 + 7) = v9;

  return v5;
}

- (CGPoint)locationInView:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_window);
  [v4 convertPoint:WeakRetained fromView:{self->_locationInWindow.x, self->_locationInWindow.y}];
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