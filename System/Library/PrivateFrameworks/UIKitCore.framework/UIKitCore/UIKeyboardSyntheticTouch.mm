@interface UIKeyboardSyntheticTouch
+ (id)syntheticTouchWithPoint:(CGPoint)a3 timestamp:(double)a4 window:(id)a5;
- (CGPoint)getLocationInWindow;
- (CGPoint)locationInView:(id)a3;
- (CGPoint)locationInWindow;
- (CGPoint)previousLocationInView:(id)a3;
- (UIKeyboardSyntheticTouch)initWithPoint:(CGPoint)a3 timestamp:(double)a4 window:(id)a5;
@end

@implementation UIKeyboardSyntheticTouch

+ (id)syntheticTouchWithPoint:(CGPoint)a3 timestamp:(double)a4 window:(id)a5
{
  y = a3.y;
  x = a3.x;
  v8 = a5;
  v9 = [[UIKeyboardSyntheticTouch alloc] initWithPoint:v8 timestamp:x window:y, a4];

  return v9;
}

- (UIKeyboardSyntheticTouch)initWithPoint:(CGPoint)a3 timestamp:(double)a4 window:(id)a5
{
  y = a3.y;
  x = a3.x;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = UIKeyboardSyntheticTouch;
  v11 = [(UIKeyboardSyntheticTouch *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->timestamp = a4;
    objc_storeStrong(&v11->window, a5);
    v12->locationInWindow.x = x;
    v12->locationInWindow.y = y;
    *&v12->phase = xmmword_18A64C520;
  }

  return v12;
}

- (CGPoint)locationInView:(id)a3
{
  v4 = a3;
  v5 = [(UIKeyboardSyntheticTouch *)self window];
  [v4 convertPoint:v5 fromView:{self->locationInWindow.x, self->locationInWindow.y}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (CGPoint)previousLocationInView:(id)a3
{
  v4 = a3;
  v5 = [(UIKeyboardSyntheticTouch *)self window];
  [v4 convertPoint:v5 fromView:{self->locationInWindow.x, self->locationInWindow.y}];
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