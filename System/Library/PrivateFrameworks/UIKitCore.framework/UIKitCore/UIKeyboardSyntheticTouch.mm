@interface UIKeyboardSyntheticTouch
+ (id)syntheticTouchWithPoint:(CGPoint)point timestamp:(double)timestamp window:(id)window;
- (CGPoint)getLocationInWindow;
- (CGPoint)locationInView:(id)view;
- (CGPoint)locationInWindow;
- (CGPoint)previousLocationInView:(id)view;
- (UIKeyboardSyntheticTouch)initWithPoint:(CGPoint)point timestamp:(double)timestamp window:(id)window;
@end

@implementation UIKeyboardSyntheticTouch

+ (id)syntheticTouchWithPoint:(CGPoint)point timestamp:(double)timestamp window:(id)window
{
  y = point.y;
  x = point.x;
  windowCopy = window;
  timestamp = [[UIKeyboardSyntheticTouch alloc] initWithPoint:windowCopy timestamp:x window:y, timestamp];

  return timestamp;
}

- (UIKeyboardSyntheticTouch)initWithPoint:(CGPoint)point timestamp:(double)timestamp window:(id)window
{
  y = point.y;
  x = point.x;
  windowCopy = window;
  v14.receiver = self;
  v14.super_class = UIKeyboardSyntheticTouch;
  v11 = [(UIKeyboardSyntheticTouch *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->timestamp = timestamp;
    objc_storeStrong(&v11->window, window);
    v12->locationInWindow.x = x;
    v12->locationInWindow.y = y;
    *&v12->phase = xmmword_18A64C520;
  }

  return v12;
}

- (CGPoint)locationInView:(id)view
{
  viewCopy = view;
  window = [(UIKeyboardSyntheticTouch *)self window];
  [viewCopy convertPoint:window fromView:{self->locationInWindow.x, self->locationInWindow.y}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (CGPoint)previousLocationInView:(id)view
{
  viewCopy = view;
  window = [(UIKeyboardSyntheticTouch *)self window];
  [viewCopy convertPoint:window fromView:{self->locationInWindow.x, self->locationInWindow.y}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (CGPoint)getLocationInWindow
{
  x = self->locationInWindow.x;
  y = self->locationInWindow.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)locationInWindow
{
  x = self->locationInWindow.x;
  y = self->locationInWindow.y;
  result.y = y;
  result.x = x;
  return result;
}

@end